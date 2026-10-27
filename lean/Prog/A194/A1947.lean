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
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C001
import Seq.B006.C001
import Seq.B007.C000
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
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A194700: D-toothpick sequence of the third kind (see Comments lines for definition).

The programs for A194700, there is no canonical definition to state claims against.
-/

/-! ## A194700.P13973649338981343893

`∑[A194701(n)]`
-/

namespace A194700.P13973649338981343893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194701 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194700.P13973649338981343893

/-! ## A194700.P978645928236096280

`A194270(n)+A184955(n)²`
-/

namespace A194700.P978645928236096280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194270 n + A184955 n ^ 2

end

end A194700.P978645928236096280

/-! ## A194700.P8947546012388581069

`A194270(n)+Δ[A326455(n)]`
-/

namespace A194700.P8947546012388581069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326455 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194270 n + (f1 (n + 1) - f1 n)

end

end A194700.P8947546012388581069

/-! ## A194700.P15203076974497770263

`A326455(n+1)+A194270(n)`
-/

namespace A194700.P15203076974497770263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326455 (n + 1) + A194270 n

end

end A194700.P15203076974497770263

/-! ## A194700.P769706379025344095

`A194270(n)+and(16, A061579(n))`
-/

namespace A194700.P769706379025344095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194270 n + Int.land 16 (A061579 n)

end

end A194700.P769706379025344095

/-!
# A194701: Number of toothpicks or D-toothpicks added at n-th stage to the structure of A194700.

The programs for A194701, there is no canonical definition to state claims against.
-/

/-! ## A194701.P8548016706165390930

`Δ[A194700(log2(ceil(2^(n-1))))]`
-/

namespace A194701.P8548016706165390930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194700 (SequenceMachineLib.roundAway (Real.logb 2 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194701.P8548016706165390930

/-! ## A194701.P1936542321813131268

`A194271(n)+Δ[A326455(n)]`
-/

namespace A194701.P1936542321813131268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326455 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194271 n + (f1 (n + 1) - f1 n)

end

end A194701.P1936542321813131268

/-! ## A194701.P13974630646752011288

`A326455(n+1)+A194271(n)`
-/

namespace A194701.P13974630646752011288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326455 (n + 1) + A194271 n

end

end A194701.P13974630646752011288

/-! ## A194701.P929829718156799720

`Δ[A194270(log2(ceil(2^(n-1))))]+Δ[A326455(n)]`
-/

namespace A194701.P929829718156799720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194270 (SequenceMachineLib.roundAway (Real.logb 2 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℝ))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326455 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (f2 (n + 1) - f2 n)

end

end A194701.P929829718156799720

/-! ## A194701.P17173955946759687580

`A194700(n)-A194700(log2(A011782(n)))`
-/

namespace A194701.P17173955946759687580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194700 n - A194700 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A194701.P17173955946759687580

/-!
# A194702: Triangle read by rows: T(k,m) = number of occurrences of k in the last section of the set of partitions of (2 + m).

The programs for A194702, there is no canonical definition to state claims against.
-/

/-! ## A194702.P17986169167885018299

`C(a(A025581(n)), 2)` with `a(0)=2, a(1)=0, a(2)=2`
-/

namespace A194702.P17986169167885018299
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 0, 2] fun n a =>
  Nat.choose (a (A025581 n).toNat) 2

end

end A194702.P17986169167885018299

/-! ## A194702.P5518710317577972901

`C(a(A004736(n+1)-1), 2)` with `a(0)=2, a(1)=0, a(2)=2`
-/

namespace A194702.P5518710317577972901
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 0, 2] fun n a =>
  Nat.choose (a (A004736 (n + 1) - 1).toNat) 2

end

end A194702.P5518710317577972901

/-! ## A194702.P12819386059485524574

`A002262(a(A025581(n)))` with `a(0)=2, a(1)=0, a(2)=2`
-/

namespace A194702.P12819386059485524574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 0, 2] fun n a =>
  A002262 (a (A025581 n).toNat).toNat

end

end A194702.P12819386059485524574

/-! ## A194702.P14504322428040804286

`A048881(a(A025581(n)))` with `a(0)=2, a(1)=0, a(2)=2`
-/

namespace A194702.P14504322428040804286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 0, 2] fun n a =>
  A048881 (a (A025581 n).toNat).toNat

end

end A194702.P14504322428040804286

/-! ## A194702.P3552941042787127624

`A083920(a(A025581(n)))` with `a(0)=2, a(1)=0, a(2)=2`
-/

namespace A194702.P3552941042787127624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 0, 2] fun n a =>
  A083920 (a (A025581 n).toNat).toNat

end

end A194702.P3552941042787127624

/-! ## A194702.P17173158236391162725

`A089068(a(A025581(n)))` with `a(0)=2, a(1)=0, a(2)=2`
-/

namespace A194702.P17173158236391162725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 0, 2] fun n a =>
  A089068 (a (A025581 n).toNat).toNat

end

end A194702.P17173158236391162725

/-! ## A194702.P8930276129531281903

`A142150(a(A025581(n)))` with `a(0)=2, a(1)=0, a(2)=2`
-/

namespace A194702.P8930276129531281903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 0, 2] fun n a =>
  A142150 (a (A025581 n).toNat).toNat

end

end A194702.P8930276129531281903

/-! ## A194702.P6208339327154538873

`A324660(a(A025581(n)))` with `a(0)=2, a(1)=0, a(2)=2`
-/

namespace A194702.P6208339327154538873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 0, 2] fun n a =>
  A324660 (a (A025581 n).toNat).toNat

end

end A194702.P6208339327154538873

/-! ## A194702.P2367938637733160262

`A001221(a(A025581(n))!)` with `a(0)=2, a(1)=0, a(2)=2`
-/

namespace A194702.P2367938637733160262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 0, 2] fun n a =>
  A001221 (Nat.factorial (a (A025581 n).toNat).toNat)

end

end A194702.P2367938637733160262

/-!
# A194703: Triangle read by rows: T(k,m) = number of occurrences of k in the last section of the set of partitions of (3 + m).

The programs for A194703, there is no canonical definition to state claims against.
-/

/-! ## A194703.P13387684636071220854

`val(A270205(A033954(3*n+2)), A125980(n+2))`
-/

namespace A194703.P13387684636071220854
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A270205 (A033954 (3 * n + 2)).toNat).toNat (A125980 (n + 2)).toNat

end

end A194703.P13387684636071220854

/-! ## A194703.P8399113694332185958

`A080859(ceil(2^(n-1)))%A106655(n)`
-/

namespace A194703.P8399113694332185958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080859 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat) (A106655 n)

end

end A194703.P8399113694332185958

/-! ## A194703.P3581382456089754491

`A001359(A106643(n))%A106655(n)`
-/

namespace A194703.P3581382456089754491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001359 (A106643 n).toNat) (A106655 n)

end

end A194703.P3581382456089754491

/-! ## A194703.P691305083768936526

`A089316(A061885(n))%A106655(n)`
-/

namespace A194703.P691305083768936526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089316 (A061885 n).toNat) (A106655 n)

end

end A194703.P691305083768936526

/-!
# A194711: Triangle read by rows: T(n,k) = number of partitions or zones in the last section of the set of partitions of n that contains k as a part.

The programs for A194711, there is no canonical definition to state claims against.
-/

/-! ## A194711.P9953103129814987785

`A194543(n)-A001221(A052509(n))`
-/

namespace A194711.P9953103129814987785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194543 n - A001221 (A052509 n).toNat

end

end A194711.P9953103129814987785

/-! ## A194711.P6805297463554141699

`A327051(A244372(n+1))+A026794(n+1)`
-/

namespace A194711.P6805297463554141699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327051 (A244372 (n + 1)).toNat + A026794 (n + 1)

end

end A194711.P6805297463554141699

/-! ## A194711.P5235854418275070996

`A117707(A089606(n+1))-A001221(A052509(n))`
-/

namespace A194711.P5235854418275070996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (A089606 (n + 1)).toNat - A001221 (A052509 n).toNat

end

end A194711.P5235854418275070996

/-! ## A194711.P12996003493304923917

`or(A026794(n+1), A092078(∑[round(sqrt(2*n))]+1))`
-/

namespace A194711.P12996003493304923917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A026794 (n + 1)) (A092078 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat)

end

end A194711.P12996003493304923917

/-! ## A194711.P8875624204595934347

`or(A026794(n+1), A092079(∑[round(sqrt(2*n))]+1))`
-/

namespace A194711.P8875624204595934347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A026794 (n + 1)) (A092079 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat)

end

end A194711.P8875624204595934347

/-!
# A194712: Numbers L such that cyclotomic polynomial Phi(L,m) < Phi(j,m) for any j > L and m >= 2.

The programs for A194712, there is no canonical definition to state claims against.
-/

/-! ## A194712.P9740923931453007372

`record[A206225(n+1)]`
-/

namespace A194712.P9740923931453007372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206225 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194712.P9740923931453007372

/-! ## A194712.P8436339461117789027

`record[A206225(A008619(n))-n%2]`
-/

namespace A194712.P8436339461117789027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206225 (A008619 n).toNat - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194712.P8436339461117789027

/-! ## A194712.P10064453009817896697

`record[A206225(A008619(n))-A000035(n)]`
-/

namespace A194712.P10064453009817896697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206225 (A008619 n).toNat - A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194712.P10064453009817896697

/-! ## A194712.P8025225585853058376

`record[A206225(A008619(n))-A243831(n)]`
-/

namespace A194712.P8025225585853058376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206225 (A008619 n).toNat - A243831 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194712.P8025225585853058376

/-! ## A194712.P10102217544924451742

`record[((-1)^A007318(n))²*A206225(A008619(n))]`
-/

namespace A194712.P10102217544924451742
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1 : ℚ) ^ (A007318 n : ℤ)) ^ 2 * (A206225 (A008619 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194712.P10102217544924451742

/-!
# A194713: 13 times hexagonal numbers: a(n) = 13*n*(2*n-1).

The programs for A194713, the canonical program `A194713.P3858004928101857164` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194713 has offset 0).

The definition of A194713 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `13*n*(2*n-1)` (program `A194713.P3858004928101857164`, by `A194713.P3858004928101857164.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A194713.P14075017402810505790

`26*n²-13*n`
-/

namespace A194713.P14075017402810505790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (26 * n ^ 2 : ℤ) - (13 * n : ℤ)

end

end A194713.P14075017402810505790

namespace A194713

/-- `26*n²-13*n` -/
def P14075017402810505790.Spec : Prop :=
  ∀ n, P14075017402810505790.a n = A194713 n

theorem P14075017402810505790.correct : P14075017402810505790.Spec := by
  intro n
  simp only [A194713, Nat.add_sub_cancel, A194713.P14075017402810505790.a, A194713.P3858004928101857164.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A194713

/-! ## A194713.P3858004928101857164

`13*n*(2*n-1)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A194713

/-- `13*n*(2*n-1)` -/
def P3858004928101857164.Spec : Prop :=
  ∀ n, P3858004928101857164.a n = A194713 n

theorem P3858004928101857164.correct : P3858004928101857164.Spec := by
  intro n
  simp only [A194713]

end A194713

/-! ## A194713.P16528083188293733191

`13*A002939(n)/2`
-/

namespace A194713.P16528083188293733191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (13 * A002939 n : ℚ) / 2

end

end A194713.P16528083188293733191

namespace A194713

/-- `13*A002939(n)/2` -/
def P16528083188293733191.Spec : Prop :=
  ∀ n, P16528083188293733191.a n = (A194713 n : ℚ)

theorem P16528083188293733191.correct : P16528083188293733191.Spec := by
  intro n
  simp only [A194713, Nat.add_sub_cancel, A194713.P16528083188293733191.a, A194713.P3858004928101857164.a, A002939, A002939.P11095602872349887610.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A194713

/-! ## A194713.P620885322836923304

`A152741(A004273(n))`
-/

namespace A194713.P620885322836923304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152741 (A004273 n).toNat

end

end A194713.P620885322836923304

namespace A194713

/-- `A152741(A004273(n))` -/
def P620885322836923304.Spec : Prop :=
  ∀ n, P620885322836923304.a n = A194713 n

end A194713

/-! ## A194713.P9509723428639589756

`A008595(C(2*n, 2))`
-/

namespace A194713.P9509723428639589756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008595 (Nat.choose (2 * n) 2)

end

end A194713.P9509723428639589756

namespace A194713

/-- `A008595(C(2*n, 2))` -/
def P9509723428639589756.Spec : Prop :=
  ∀ n, P9509723428639589756.a n = A194713 n

theorem P9509723428639589756.correct : P9509723428639589756.Spec := by
  intro n
  simp only [A194713, Nat.add_sub_cancel, A194713.P9509723428639589756.a, A194713.P3858004928101857164.a, A008595, A008595.P16021929412859907016.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A194713

/-! ## A194713.P17557269438294736760

`A008595(A000384(n))`
-/

namespace A194713.P17557269438294736760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008595 (A000384 n).toNat

end

end A194713.P17557269438294736760

namespace A194713

/-- `A008595(A000384(n))` -/
def P17557269438294736760.Spec : Prop :=
  ∀ n, P17557269438294736760.a n = A194713 n

end A194713

/-! ## A194713.P3642680382454576580

`A008595(A001105(n)-n)`
-/

namespace A194713.P3642680382454576580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008595 (A001105 n - (n : ℤ)).toNat

end

end A194713.P3642680382454576580

namespace A194713

/-- `A008595(A001105(n)-n)` -/
def P3642680382454576580.Spec : Prop :=
  ∀ n, P3642680382454576580.a n = A194713 n

end A194713

/-! ## A194713.P6624438166142838620

`A008595(A388428(2*n)-1)`
-/

namespace A194713.P6624438166142838620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008595 (A388428 (2 * n) - 1).toNat

end

end A194713.P6624438166142838620

namespace A194713

/-- `A008595(A388428(2*n)-1)` -/
def P6624438166142838620.Spec : Prop :=
  ∀ n, P6624438166142838620.a n = A194713 n

end A194713

/-! ## A194713.P5358717500574209284

`A008595(A268759(n*(2*n+1)))`
-/

namespace A194713.P5358717500574209284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008595 (A268759 (n * (2 * n + 1))).toNat

end

end A194713.P5358717500574209284

namespace A194713

/-- `A008595(A268759(n*(2*n+1)))` -/
def P5358717500574209284.Spec : Prop :=
  ∀ n, P5358717500574209284.a n = A194713 n

end A194713

/-! ## A194713.P16652308473580260999

`A112653(A002939(n))`
-/

namespace A194713.P16652308473580260999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112653 (A002939 n).toNat

end

end A194713.P16652308473580260999

namespace A194713

/-- `A112653(A002939(n))` -/
def P16652308473580260999.Spec : Prop :=
  ∀ n, P16652308473580260999.a n = A194713 n

end A194713

/-!
# A194714: Sum of all odd-indexed parts minus the sum of all even-indexed parts of all partitions of n, with the parts written in nondecreasing order.

The programs for A194714, there is no canonical definition to state claims against.
-/

/-! ## A194714.P1992899237663792547

`record[and(A052382(n+1), A271585(n+1))]`
-/

namespace A194714.P1992899237663792547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052382 (n + 1)) (A271585 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194714.P1992899237663792547

/-! ## A194714.P15229854717616793393

`A157477(A052955(n))+∑{d}[n+1, 2%#/2]`
-/

namespace A194714.P15229854717616793393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157477 (A052955 n).toNat : ℚ) + ∑ d ∈ Nat.divisors (f1 n), ((2 % d : ℕ) : ℚ) / 2

end

end A194714.P15229854717616793393

/-! ## A194714.P9847469773333711298

`A024936(or(A056045(n+1), A132453(n+1)))`
-/

namespace A194714.P9847469773333711298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024936 (Int.lor (A056045 (n + 1)) (A132453 (n + 1))).toNat

end

end A194714.P9847469773333711298

/-!
# A194715: 15 times triangular numbers.

The programs for A194715, the canonical program `A194715.P15023860286483774250` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194715 has offset 0).

The definition of A194715 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A194715.P16901033654323981493

`15*n*(n+1)/2`
-/

namespace A194715.P16901033654323981493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (15 * n * (n + 1) : ℚ) / 2

end

end A194715.P16901033654323981493

namespace A194715

/-- `15*n*(n+1)/2` -/
def P16901033654323981493.Spec : Prop :=
  ∀ n, P16901033654323981493.a n = (A194715 n : ℚ)

theorem P16901033654323981493.correct : P16901033654323981493.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A194715, Nat.add_sub_cancel, A194715.P16901033654323981493.a, A194715.P15023860286483774250.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A194715, Nat.add_sub_cancel, A194715.P16901033654323981493.a, A194715.P15023860286483774250.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A194715

/-! ## A194715.P15023860286483774250

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=0, a(1)=15, a(2)=45`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A194715

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P15023860286483774250.Spec : Prop :=
  ∀ n, P15023860286483774250.a n = A194715 n

theorem P15023860286483774250.correct : P15023860286483774250.Spec := by
  intro n
  simp only [A194715]

end A194715

/-! ## A194715.P4053705020718739667

`3*A028895(n)`
-/

namespace A194715.P4053705020718739667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A028895 n

end

end A194715.P4053705020718739667

namespace A194715

/-- `3*A028895(n)` -/
def P4053705020718739667.Spec : Prop :=
  ∀ n, P4053705020718739667.a n = A194715 n

end A194715

/-! ## A194715.P4348883443721656514

`5*A045943(n)`
-/

namespace A194715.P4348883443721656514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A045943 n

end

end A194715.P4348883443721656514

namespace A194715

/-- `5*A045943(n)` -/
def P4348883443721656514.Spec : Prop :=
  ∀ n, P4348883443721656514.a n = A194715 n

end A194715

/-! ## A194715.P16010738399850627180

`15*A000217(n)`
-/

namespace A194715.P16010738399850627180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  15 * A000217 n

end

end A194715.P16010738399850627180

namespace A194715

/-- `15*A000217(n)` -/
def P16010738399850627180.Spec : Prop :=
  ∀ n, P16010738399850627180.a n = A194715 n

end A194715

/-! ## A194715.P9104037012103266016

`A069128(n+1)-1`
-/

namespace A194715.P9104037012103266016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069128 (n + 1) - 1

end

end A194715.P9104037012103266016

namespace A194715

/-- `A069128(n+1)-1` -/
def P9104037012103266016.Spec : Prop :=
  ∀ n, P9104037012103266016.a n = A194715 n

end A194715

/-! ## A194715.P16650986350363559097

`15*C(n+1, 2)`
-/

namespace A194715.P16650986350363559097
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15 * Nat.choose (n + 1) 2

end

end A194715.P16650986350363559097

namespace A194715

/-- `15*C(n+1, 2)` -/
def P16650986350363559097.Spec : Prop :=
  ∀ n, (P16650986350363559097.a n : ℤ) = A194715 n

end A194715

/-! ## A194715.P14758916319889926228

`∑[a(n-1)+15]` with `a(0)=0`
-/

namespace A194715.P14758916319889926228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + 15

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194715.P14758916319889926228

namespace A194715

/-- `∑[a(n-1)+15]` -/
def P14758916319889926228.Spec : Prop :=
  ∀ n, (P14758916319889926228.a n : ℤ) = A194715 n

end A194715

/-! ## A194715.P16741305272817731762

`∑[ogf(15x/(1-2x+x^2))]`
-/

namespace A194715.P16741305272817731762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 15] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194715.P16741305272817731762

namespace A194715

/-- `∑[ogf(15x/(1-2x+x^2))]` -/
def P16741305272817731762.Spec : Prop :=
  ∀ n, P16741305272817731762.a n = A194715 n

end A194715

/-! ## A194715.P13294750672430859996

`ogf(15x/(1-3x+3x^2-x^3))`
-/

namespace A194715.P13294750672430859996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 15] [1, -3, 3, -1] n

end

end A194715.P13294750672430859996

namespace A194715

/-- `ogf(15x/(1-3x+3x^2-x^3))` -/
def P13294750672430859996.Spec : Prop :=
  ∀ n, P13294750672430859996.a n = A194715 n

end A194715

/-! ## A194715.P5760469694691078829

`15*n+a(n-1)` with `a(0)=0`
-/

namespace A194715.P5760469694691078829
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  15 * n + a (n - 1)

end

end A194715.P5760469694691078829

namespace A194715

/-- `15*n+a(n-1)` -/
def P5760469694691078829.Spec : Prop :=
  ∀ n, (P5760469694691078829.a n : ℤ) = A194715 n

end A194715

/-! ## A194715.P6990244434082372869

`16*n-(n-a(n-1))` with `a(0)=0`
-/

namespace A194715.P6990244434082372869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (16 * n : ℤ) - ((n : ℤ) - a (n - 1))

end

end A194715.P6990244434082372869

namespace A194715

/-- `16*n-(n-a(n-1))` -/
def P6990244434082372869.Spec : Prop :=
  ∀ n, P6990244434082372869.a n = A194715 n

end A194715

/-! ## A194715.P11944721163789755914

`Δ[5*A158842(n)]`
-/

namespace A194715.P11944721163789755914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A158842 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194715.P11944721163789755914

namespace A194715

/-- `Δ[5*A158842(n)]` -/
def P11944721163789755914.Spec : Prop :=
  ∀ n, P11944721163789755914.a n = A194715 n

end A194715

/-! ## A194715.P15740475410663364700

`A163756(n)+∑[n]`
-/

namespace A194715.P15740475410663364700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163756 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A194715.P15740475410663364700

namespace A194715

/-- `A163756(n)+∑[n]` -/
def P15740475410663364700.Spec : Prop :=
  ∀ n, P15740475410663364700.a n = A194715 n

end A194715

/-! ## A194715.P5862783697107482444

`A035008(n)-∑[n]`
-/

namespace A194715.P5862783697107482444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035008 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A194715.P5862783697107482444

namespace A194715

/-- `A035008(n)-∑[n]` -/
def P5862783697107482444.Spec : Prop :=
  ∀ n, P5862783697107482444.a n = A194715 n

end A194715

/-! ## A194715.P9788419629516610911

`3*(A005891(n)-1)`
-/

namespace A194715.P9788419629516610911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A005891 n - 1)

end

end A194715.P9788419629516610911

namespace A194715

/-- `3*(A005891(n)-1)` -/
def P9788419629516610911.Spec : Prop :=
  ∀ n, P9788419629516610911.a n = A194715 n

end A194715

/-! ## A194715.P4152237380830815219

`3/2*A124080(n)`
-/

namespace A194715.P4152237380830815219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A124080 n : ℚ)

end

end A194715.P4152237380830815219

namespace A194715

/-- `3/2*A124080(n)` -/
def P4152237380830815219.Spec : Prop :=
  ∀ n, P4152237380830815219.a n = (A194715 n : ℚ)

theorem P4152237380830815219.correct : P4152237380830815219.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A194715, Nat.add_sub_cancel, A194715.P4152237380830815219.a, A194715.P15023860286483774250.a, A124080, A124080.P13908832204994963490.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A194715, Nat.add_sub_cancel, A194715.P4152237380830815219.a, A194715.P15023860286483774250.a, A124080, A124080.P13908832204994963490.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A194715

/-! ## A194715.P14654916517748551285

`5/2*A028896(n)`
-/

namespace A194715.P14654916517748551285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 2 * (A028896 n : ℚ)

end

end A194715.P14654916517748551285

namespace A194715

/-- `5/2*A028896(n)` -/
def P14654916517748551285.Spec : Prop :=
  ∀ n, P14654916517748551285.a n = (A194715 n : ℚ)

theorem P14654916517748551285.correct : P14654916517748551285.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A194715, Nat.add_sub_cancel, A194715.P14654916517748551285.a, A194715.P15023860286483774250.a, A028896, A028896.P3776891904721443318.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A194715, Nat.add_sub_cancel, A194715.P14654916517748551285.a, A194715.P15023860286483774250.a, A028896, A028896.P3776891904721443318.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A194715

/-! ## A194715.P16668444140370373306

`3/4*A163761(n)`
-/

namespace A194715.P16668444140370373306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 4 * (A163761 n : ℚ)

end

end A194715.P16668444140370373306

namespace A194715

/-- `3/4*A163761(n)` -/
def P16668444140370373306.Spec : Prop :=
  ∀ n, P16668444140370373306.a n = (A194715 n : ℚ)

theorem P16668444140370373306.correct : P16668444140370373306.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A194715, Nat.add_sub_cancel, A194715.P16668444140370373306.a, A194715.P15023860286483774250.a, A163761, A163761.P557953753826643866.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A194715, Nat.add_sub_cancel, A194715.P16668444140370373306.a, A194715.P15023860286483774250.a, A163761, A163761.P557953753826643866.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A194715

/-! ## A194715.P7406895350050400837

`5/3*A027468(n)`
-/

namespace A194715.P7406895350050400837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 3 * (A027468 n : ℚ)

end

end A194715.P7406895350050400837

namespace A194715

/-- `5/3*A027468(n)` -/
def P7406895350050400837.Spec : Prop :=
  ∀ n, P7406895350050400837.a n = (A194715 n : ℚ)

end A194715

/-!
# A194716: Number of n-ary words beginning with the first character of the alphabet, that can be built by inserting four doublets into the initially empty word.

The programs for A194716, there is no canonical definition to state claims against.
-/

/-! ## A194716.P8502609257659638133

`A183134(eq[4, A002262(n)])`
-/

namespace A194716.P8502609257659638133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183134 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194716.P8502609257659638133

/-! ## A194716.P5090046087907648918

`A183134(eq[16, A059268(n)])`
-/

namespace A194716.P5090046087907648918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183134 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194716.P5090046087907648918

/-! ## A194716.P15653070776821249315

`record[A183134(A000096(n)+5)]`
-/

namespace A194716.P15653070776821249315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183134 (A000096 n + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194716.P15653070776821249315

/-! ## A194716.P12930875000697496639

`A183134(A167614(n+3)+1)`
-/

namespace A194716.P12930875000697496639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183134 (A167614 (n + 3) + 1).toNat

end

end A194716.P12930875000697496639

/-! ## A194716.P10298162123214957298

`A183134(A000124(n+4)+3)`
-/

namespace A194716.P10298162123214957298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183134 (A000124 (n + 4) + 3).toNat

end

end A194716.P10298162123214957298

/-! ## A194716.P12705592339805262173

`A183134(A000096(n+3)+5)`
-/

namespace A194716.P12705592339805262173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183134 (A000096 (n + 3) + 5).toNat

end

end A194716.P12705592339805262173

/-! ## A194716.P3490471359187168369

`A183134(A000217(n+4)+4)`
-/

namespace A194716.P3490471359187168369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183134 (A000217 (n + 4) + 4).toNat

end

end A194716.P3490471359187168369

/-! ## A194716.P777554635331392031

`A183134(A027379(n+2)+7)`
-/

namespace A194716.P777554635331392031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183134 (A027379 (n + 2) + 7).toNat

end

end A194716.P777554635331392031

/-! ## A194716.P18013445237513330692

`record[A183134(A152950(n+2)+1)]`
-/

namespace A194716.P18013445237513330692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183134 (A152950 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194716.P18013445237513330692

/-! ## A194716.P9900639330002437055

`A183134(eq[2, A144328(n+1)-2])`
-/

namespace A194716.P9900639330002437055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183134 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194716.P9900639330002437055

/-!
# A194717: Number of n-ary words beginning with the first character of the alphabet, that can be built by inserting five doublets into the initially empty word.

The programs for A194717, there is no canonical definition to state claims against.
-/

/-! ## A194717.P4234136838620624563

`A183134(A167499(n+4))`
-/

namespace A194717.P4234136838620624563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183134 (A167499 (n + 4)).toNat

end

end A194717.P4234136838620624563

/-! ## A194717.P14835283889252329130

`record[A183134(A000124(n)+4)]`
-/

namespace A194717.P14835283889252329130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183134 (A000124 n + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194717.P14835283889252329130

/-! ## A194717.P4136126105784999356

`record[A183134(A000217(n)+5)]`
-/

namespace A194717.P4136126105784999356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183134 (A000217 n + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194717.P4136126105784999356

/-! ## A194717.P2003307600794678699

`A183134(A000124(n+5)+4)`
-/

namespace A194717.P2003307600794678699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183134 (A000124 (n + 5) + 4).toNat

end

end A194717.P2003307600794678699

/-! ## A194717.P1738537875975702801

`A183134(eq[5, A144328(n+1)])`
-/

namespace A194717.P1738537875975702801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183134 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194717.P1738537875975702801

/-! ## A194717.P14526637212782253796

`record[A183134(A152950(n+1)+2)]`
-/

namespace A194717.P14526637212782253796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183134 (A152950 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194717.P14526637212782253796

/-! ## A194717.P17899905098020817197

`A183134(A000217(n+6)-(n+1))`
-/

namespace A194717.P17899905098020817197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183134 (A000217 (n + 6) - (n + 1 : ℤ)).toNat

end

end A194717.P17899905098020817197

/-!
# A194718: Number of n-ary words beginning with the first character of the alphabet, that can be built by inserting six doublets into the initially empty word.

The programs for A194718, there is no canonical definition to state claims against.
-/

/-! ## A194718.P5837295919099100730

`A183134(eq[6, A002262(n)])`
-/

namespace A194718.P5837295919099100730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183134 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194718.P5837295919099100730

/-! ## A194718.P10058625686511110755

`A183134(eq[64, A059268(n)])`
-/

namespace A194718.P10058625686511110755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183134 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194718.P10058625686511110755

/-! ## A194718.P14061937772795136826

`A183134(A167614(n+5)+3)`
-/

namespace A194718.P14061937772795136826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183134 (A167614 (n + 5) + 3).toNat

end

end A194718.P14061937772795136826

/-! ## A194718.P8761552496765641026

`A183134(eq[7, A002260(n+1)])`
-/

namespace A194718.P8761552496765641026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183134 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194718.P8761552496765641026

/-! ## A194718.P3958872996078914571

`A183134(eq[8, A245093(n+1)])`
-/

namespace A194718.P3958872996078914571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183134 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194718.P3958872996078914571

/-! ## A194718.P12339968674622287054

`A183134(eq[17, A037126(n+1)])`
-/

namespace A194718.P12339968674622287054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183134 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194718.P12339968674622287054

/-!
# A194719: Number of n-ary words beginning with the first character of the alphabet, that can be built by inserting seven doublets into the initially empty word.

The programs for A194719, there is no canonical definition to state claims against.
-/

/-! ## A194719.P10885060925425609505

`A183134(eq[7, A002262(n)])`
-/

namespace A194719.P10885060925425609505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183134 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194719.P10885060925425609505

/-! ## A194719.P4793696215887083828

`A183134(A000217(n+7)+7)`
-/

namespace A194719.P4793696215887083828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183134 (A000217 (n + 7) + 7).toNat

end

end A194719.P4793696215887083828

/-! ## A194719.P2840178824704803604

`A183134(A055998(n+5)+10)`
-/

namespace A194719.P2840178824704803604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183134 (A055998 (n + 5) + 10).toNat

end

end A194719.P2840178824704803604

/-! ## A194719.P5669968851769144749

`A183134(eq[7, A144328(n+1)])`
-/

namespace A194719.P5669968851769144749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183134 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194719.P5669968851769144749

/-! ## A194719.P422161256853860139

`A183134(eq[8, A002260(n+1)])`
-/

namespace A194719.P422161256853860139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183134 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194719.P422161256853860139

/-!
# A194720: Number of n-ary words beginning with the first character of the alphabet, that can be built by inserting eight doublets into the initially empty word.

The programs for A194720, there is no canonical definition to state claims against.
-/

/-! ## A194720.P4421656797065068731

`A183134(eq[8, A002262(n)])`
-/

namespace A194720.P4421656797065068731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183134 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194720.P4421656797065068731

/-! ## A194720.P13894604706251318566

`A183134(eq[7, A327844(n+1)])`
-/

namespace A194720.P13894604706251318566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183134 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194720.P13894604706251318566

/-! ## A194720.P13070261374963644149

`A183134(eq[8, A144328(n+1)])`
-/

namespace A194720.P13070261374963644149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183134 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194720.P13070261374963644149

/-! ## A194720.P7915019905663688019

`A183134(eq[9, A002260(n+1)])`
-/

namespace A194720.P7915019905663688019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183134 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194720.P7915019905663688019

/-! ## A194720.P10787265731005435141

`A183134(eq[9, A134868(n+1)])`
-/

namespace A194720.P10787265731005435141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183134 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194720.P10787265731005435141

/-! ## A194720.P11687878187552870765

`A183134(eq[13, A245093(n+1)])`
-/

namespace A194720.P11687878187552870765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183134 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194720.P11687878187552870765

/-!
# A194721: Number of n-ary words beginning with the first character of the alphabet, that can be built by inserting nine doublets into the initially empty word.

The programs for A194721, there is no canonical definition to state claims against.
-/

/-! ## A194721.P13067662182251892096

`A183134(eq[9, A002262(n)])`
-/

namespace A194721.P13067662182251892096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183134 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194721.P13067662182251892096

/-! ## A194721.P14607780641815373430

`A183134(eq[9, A144328(n+1)])`
-/

namespace A194721.P14607780641815373430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183134 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194721.P14607780641815373430

/-! ## A194721.P10700495871843726378

`A183134(eq[10, A002260(n+1)])`
-/

namespace A194721.P10700495871843726378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183134 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194721.P10700495871843726378

/-! ## A194721.P5519984284038519689

`A183134(eq[10, A134868(n+1)])`
-/

namespace A194721.P5519984284038519689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183134 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194721.P5519984284038519689

/-! ## A194721.P3242389037588366834

`A183134(eq[29, A037126(n+1)])`
-/

namespace A194721.P3242389037588366834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183134 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194721.P3242389037588366834

/-!
# A194722: Number of n-ary words beginning with the first character of the alphabet, that can be built by inserting ten doublets into the initially empty word.

The programs for A194722, there is no canonical definition to state claims against.
-/

/-! ## A194722.P2568524953317415684

`A183134(eq[10, A002262(n)])`
-/

namespace A194722.P2568524953317415684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183134 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194722.P2568524953317415684

/-! ## A194722.P931872756930546473

`A183134(eq[10, A144328(n+1)])`
-/

namespace A194722.P931872756930546473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183134 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194722.P931872756930546473

/-! ## A194722.P17069189623654149473

`A183134(eq[11, A002260(n+1)])`
-/

namespace A194722.P17069189623654149473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183134 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194722.P17069189623654149473

/-! ## A194722.P9596966957872755545

`A183134(eq[11, A134868(n+1)])`
-/

namespace A194722.P9596966957872755545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183134 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194722.P9596966957872755545

/-! ## A194722.P11767699550002385750

`A183134(eq[11, A133232(n+1)])`
-/

namespace A194722.P11767699550002385750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133232 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183134 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194722.P11767699550002385750

/-!
# A194723: Number of ternary words either empty or beginning with the first character of the alphabet, that can be built by inserting n doublets into the initially empty word.

The programs for A194723, there is no canonical definition to state claims against.
-/

/-! ## A194723.P7774875116052044458

`A126087(A004273(n))`
-/

namespace A194723.P7774875116052044458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126087 (A004273 n).toNat

end

end A194723.P7774875116052044458

/-! ## A194723.P7065306462214640787

`A126087(record[A026741(n)])`
-/

namespace A194723.P7065306462214640787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126087 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A194723.P7065306462214640787

/-! ## A194723.P748853092473576102

`A126087(A014681(2*n))`
-/

namespace A194723.P748853092473576102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126087 (A014681 (2 * n)).toNat

end

end A194723.P748853092473576102

/-! ## A194723.P14125040319011959572

`A126087(eq[n, A022998(n)])`
-/

namespace A194723.P14125040319011959572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126087 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194723.P14125040319011959572

/-! ## A194723.P18441114613378120234

`A126087(eq[n, A026741(n)])`
-/

namespace A194723.P18441114613378120234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126087 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194723.P18441114613378120234

/-! ## A194723.P805757286314764005

`A126087(record[n*A000035(n)])`
-/

namespace A194723.P805757286314764005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126087 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A194723.P805757286314764005

/-! ## A194723.P11953963143490259521

`A126087(A063198(A016777(n)))`
-/

namespace A194723.P11953963143490259521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126087 (A063198 (A016777 n).toNat).toNat

end

end A194723.P11953963143490259521

/-! ## A194723.P11990108455470222082

`A126087(eq[A008619(n), A062828(n+1)])`
-/

namespace A194723.P11990108455470222082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062828 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126087 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A194723.P11990108455470222082

/-! ## A194723.P2725381182815276012

`ceil(A126087(2*n)/3)`
-/

namespace A194723.P2725381182815276012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A126087 (2 * n) : ℚ) / 3⌉

end

end A194723.P2725381182815276012

/-! ## A194723.P1002386468947181605

`A089022(n)/and(3, A089022(n))`
-/

namespace A194723.P1002386468947181605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089022 n : ℚ) / (Int.land 3 (A089022 n) : ℚ)

end

end A194723.P1002386468947181605

/-! ## A194723.P13871581056643426893

`A089022(n)/3%A247653(n+1)`
-/

namespace A194723.P13871581056643426893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089022 n : ℚ) / (Int.tmod 3 (A247653 (n + 1)) : ℚ)

end

end A194723.P13871581056643426893

/-!
# A194724: Number of quaternary words either empty or beginning with the first character of the alphabet, that can be built by inserting n doublets into the initially empty word.

The programs for A194724, the canonical program `A194724.P3196686011333993397` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194724 has offset 0).

The definition of A194724 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A194724.P3196686011333993397

`((28*n-18)*a(n-1)-(192*n-288)*a(n-2))/n` with `a(0)=1, a(1)=1, a(2)=7`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A194724

/-- `((28*n-18)*a(n-1)-(192*n-288)*a(n-2))/n` -/
def P3196686011333993397.Spec : Prop :=
  ∀ n, P3196686011333993397.a n = (A194724 n : ℚ)

end A194724

/-! ## A194724.P3582720120213173451

`A128386(A004273(n))`
-/

namespace A194724.P3582720120213173451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128386 (A004273 n).toNat

end

end A194724.P3582720120213173451

namespace A194724

/-- `A128386(A004273(n))` -/
def P3582720120213173451.Spec : Prop :=
  ∀ n, P3582720120213173451.a n = A194724 n

end A194724

/-! ## A194724.P9512632642794702217

`A035610(A028310(n))/4`
-/

namespace A194724.P9512632642794702217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035610 (A028310 n).toNat : ℚ) / 4

end

end A194724.P9512632642794702217

namespace A194724

/-- `A035610(A028310(n))/4` -/
def P9512632642794702217.Spec : Prop :=
  ∀ n, P9512632642794702217.a n = (A194724 n : ℚ)

end A194724

/-! ## A194724.P11867019989989710035

`A128386(lt[A126120(n+2), 2])`
-/

namespace A194724.P11867019989989710035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128386 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A194724.P11867019989989710035

namespace A194724

/-- `A128386(lt[A126120(n+2), 2])` -/
def P11867019989989710035.Spec : Prop :=
  ∀ n, P11867019989989710035.a n = A194724 n

end A194724

/-! ## A194724.P13802997851302166648

`A183134(A052905(n+2))`
-/

namespace A194724.P13802997851302166648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183134 (A052905 (n + 2)).toNat

end

end A194724.P13802997851302166648

namespace A194724

/-- `A183134(A052905(n+2))` -/
def P13802997851302166648.Spec : Prop :=
  ∀ n, P13802997851302166648.a n = A194724 n

end A194724

/-! ## A194724.P15590879116808158879

`A183134(eq[4, A025581(n)])`
-/

namespace A194724.P15590879116808158879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183134 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194724.P15590879116808158879

namespace A194724

/-- `A183134(eq[4, A025581(n)])` -/
def P15590879116808158879.Spec : Prop :=
  ∀ n, P15590879116808158879.a n = A194724 n

end A194724

/-! ## A194724.P16607701311386614930

`A183134(A027379(n+3)-2)`
-/

namespace A194724.P16607701311386614930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183134 (A027379 (n + 3) - 2).toNat

end

end A194724.P16607701311386614930

namespace A194724

/-- `A183134(A027379(n+3)-2)` -/
def P16607701311386614930.Spec : Prop :=
  ∀ n, P16607701311386614930.a n = A194724 n

end A194724

/-! ## A194724.P18426099620035038239

`A183134(A055998(n+3)-2)`
-/

namespace A194724.P18426099620035038239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183134 (A055998 (n + 3) - 2).toNat

end

end A194724.P18426099620035038239

namespace A194724

/-- `A183134(A055998(n+3)-2)` -/
def P18426099620035038239.Spec : Prop :=
  ∀ n, P18426099620035038239.a n = A194724 n

end A194724

/-! ## A194724.P3291967524449693536

`A183134(A000096(n+4)-4)`
-/

namespace A194724.P3291967524449693536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183134 (A000096 (n + 4) - 4).toNat

end

end A194724.P3291967524449693536

namespace A194724

/-- `A183134(A000096(n+4)-4)` -/
def P3291967524449693536.Spec : Prop :=
  ∀ n, P3291967524449693536.a n = A194724 n

end A194724

/-! ## A194724.P8905646787583962431

`A183134(A000217(n+5)-5)`
-/

namespace A194724.P8905646787583962431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183134 (A000217 (n + 5) - 5).toNat

end

end A194724.P8905646787583962431

namespace A194724

/-- `A183134(A000217(n+5)-5)` -/
def P8905646787583962431.Spec : Prop :=
  ∀ n, P8905646787583962431.a n = A194724 n

end A194724

/-!
# A194725: Number of 5-ary words either empty or beginning with the first character of the alphabet, that can be built by inserting n doublets into the initially empty word.

The programs for A194725, the canonical program `A194725.P9403145709537876152` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194725 has offset 0).

The definition of A194725 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A194725.P9403145709537876152

`((41*n-24)*a(n-1)+(600-400*n)*a(n-2))/n` with `a(0)=1, a(1)=1, a(2)=9`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A194725

/-- `((41*n-24)*a(n-1)+(600-400*n)*a(n-2))/n` -/
def P9403145709537876152.Spec : Prop :=
  ∀ n, P9403145709537876152.a n = (A194725 n : ℚ)

end A194725

/-! ## A194725.P16517142723607839072

`ceil(A130976(n)/5)`
-/

namespace A194725.P16517142723607839072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A130976 n : ℚ) / 5⌉

end

end A194725.P16517142723607839072

namespace A194725

/-- `ceil(A130976(n)/5)` -/
def P16517142723607839072.Spec : Prop :=
  ∀ n, P16517142723607839072.a n = A194725 n

end A194725

/-! ## A194725.P17000076001559388117

`A130976(floor(acot(n)+n))/5`
-/

namespace A194725.P17000076001559388117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130976 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat : ℚ) / 5

end

end A194725.P17000076001559388117

namespace A194725

/-- `A130976(floor(acot(n)+n))/5` -/
def P17000076001559388117.Spec : Prop :=
  ∀ n, P17000076001559388117.a n = (A194725 n : ℚ)

end A194725

/-! ## A194725.P459390681511795725

`A130976(xor(n, floor(acot(n))))/5`
-/

namespace A194725.P459390681511795725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130976 (Int.xor (n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat : ℚ) / 5

end

end A194725.P459390681511795725

namespace A194725

/-- `A130976(xor(n, floor(acot(n))))/5` -/
def P459390681511795725.Spec : Prop :=
  ∀ n, P459390681511795725.a n = (A194725 n : ℚ)

end A194725

/-! ## A194725.P17108737495878022733

`A121724(A004273(n))`
-/

namespace A194725.P17108737495878022733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121724 (A004273 n).toNat

end

end A194725.P17108737495878022733

namespace A194725

/-- `A121724(A004273(n))` -/
def P17108737495878022733.Spec : Prop :=
  ∀ n, P17108737495878022733.a n = A194725 n

end A194725

/-! ## A194725.P161039406302086888

`A121724(record[A026741(n)])`
-/

namespace A194725.P161039406302086888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121724 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A194725.P161039406302086888

namespace A194725

/-- `A121724(record[A026741(n)])` -/
def P161039406302086888.Spec : Prop :=
  ∀ n, P161039406302086888.a n = A194725 n

end A194725

/-! ## A194725.P2154466706180183979

`A121724(A014681(2*n))`
-/

namespace A194725.P2154466706180183979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121724 (A014681 (2 * n)).toNat

end

end A194725.P2154466706180183979

namespace A194725

/-- `A121724(A014681(2*n))` -/
def P2154466706180183979.Spec : Prop :=
  ∀ n, P2154466706180183979.a n = A194725 n

end A194725

/-! ## A194725.P1856750460005015799

`A130976(A028310(n))/5`
-/

namespace A194725.P1856750460005015799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130976 (A028310 n).toNat : ℚ) / 5

end

end A194725.P1856750460005015799

namespace A194725

/-- `A130976(A028310(n))/5` -/
def P1856750460005015799.Spec : Prop :=
  ∀ n, P1856750460005015799.a n = (A194725 n : ℚ)

end A194725

/-! ## A194725.P4046547358994573878

`A121724(eq[n, A026741(n)])`
-/

namespace A194725.P4046547358994573878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121724 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194725.P4046547358994573878

namespace A194725

/-- `A121724(eq[n, A026741(n)])` -/
def P4046547358994573878.Spec : Prop :=
  ∀ n, P4046547358994573878.a n = A194725 n

end A194725

/-! ## A194725.P1726618775281228945

`A121724(eq[n, A317321(n)])`
-/

namespace A194725.P1726618775281228945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121724 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194725.P1726618775281228945

namespace A194725

/-- `A121724(eq[n, A317321(n)])` -/
def P1726618775281228945.Spec : Prop :=
  ∀ n, P1726618775281228945.a n = A194725 n

end A194725

/-!
# A194726: Number of 6-ary words either empty or beginning with the first character of the alphabet, that can be built by inserting n doublets into the initially empty word.

The programs for A194726, there is no canonical definition to state claims against.
-/

/-! ## A194726.P14891007518477987551

`ceil(A130977(n)/6)`
-/

namespace A194726.P14891007518477987551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A130977 n : ℚ) / 6⌉

end

end A194726.P14891007518477987551

/-! ## A194726.P767141458645935712

`A128387(comp[2*(n+1)])`
-/

namespace A194726.P767141458645935712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128387 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A194726.P767141458645935712

/-! ## A194726.P13613009828101770496

`A130977(A028310(n))/6`
-/

namespace A194726.P13613009828101770496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130977 (A028310 n).toNat : ℚ) / 6

end

end A194726.P13613009828101770496

/-! ## A194726.P13768029358738995912

`A130977(n^((A000010(n+1)+1)%2))/6`
-/

namespace A194726.P13768029358738995912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130977 (SequenceMachineLib.roundAway ((n : ℚ) ^ (Int.tmod (A000010 (n + 1) + 1) 2 : ℤ))).toNat : ℚ) / 6

end

end A194726.P13768029358738995912

/-! ## A194726.P17150220008246600750

`A130977(n^((A055932(n+1)+1)%2))/6`
-/

namespace A194726.P17150220008246600750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130977 (SequenceMachineLib.roundAway ((n : ℚ) ^ (Int.tmod (A055932 (n + 1) + 1) 2 : ℤ))).toNat : ℚ) / 6

end

end A194726.P17150220008246600750

/-! ## A194726.P10396801524179710067

`A130977(gcd(n, A000142(n)))/6`
-/

namespace A194726.P10396801524179710067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130977 (Int.gcd (n : ℤ) (A000142 n)) : ℚ) / 6

end

end A194726.P10396801524179710067

/-! ## A194726.P9450245259969778487

`A183134(eq[7, A004736(n+1)])`
-/

namespace A194726.P9450245259969778487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183134 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194726.P9450245259969778487

/-! ## A194726.P6256307180676097826

`A183134(A083744(n+8)-n)`
-/

namespace A194726.P6256307180676097826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183134 (A083744 (n + 8) - (n : ℤ)).toNat

end

end A194726.P6256307180676097826

/-! ## A194726.P1532604183176869970

`A183134(n+3+A027379(n+4))`
-/

namespace A194726.P1532604183176869970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183134 ((n + 3 : ℤ) + A027379 (n + 4)).toNat

end

end A194726.P1532604183176869970

/-! ## A194726.P17141213671693104813

`A183134(A004767(n+3)+A000217(n+3))`
-/

namespace A194726.P17141213671693104813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183134 (A004767 (n + 3) + A000217 (n + 3)).toNat

end

end A194726.P17141213671693104813

/-!
# A194727: Number of 7-ary words either empty or beginning with the first character of the alphabet, that can be built by inserting n doublets into the initially empty word.

The programs for A194727, there is no canonical definition to state claims against.
-/

/-! ## A194727.P1327442301756786856

`A132373(A004273(n))`
-/

namespace A194727.P1327442301756786856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132373 (A004273 n).toNat

end

end A194727.P1327442301756786856

/-! ## A194727.P4023100465896068648

`ceil(A130978(n)/7)`
-/

namespace A194727.P4023100465896068648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A130978 n : ℚ) / 7⌉

end

end A194727.P4023100465896068648

/-! ## A194727.P13150576800978885654

`A183134(A155212(n+4))`
-/

namespace A194727.P13150576800978885654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183134 (A155212 (n + 4)).toNat

end

end A194727.P13150576800978885654

/-! ## A194727.P16538283996956457562

`A183134(eq[7, A025581(n)])`
-/

namespace A194727.P16538283996956457562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183134 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194727.P16538283996956457562

/-! ## A194727.P17553661798344906283

`A183134(eq[5, A219347(n+1)])`
-/

namespace A194727.P17553661798344906283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183134 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194727.P17553661798344906283

/-! ## A194727.P7420147013642874185

`A183134(eq[5, A219347(n)]-1)`
-/

namespace A194727.P7420147013642874185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183134 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 1)

end

end A194727.P7420147013642874185

/-! ## A194727.P6680839675089614265

`A183134(eq[7, A193592(n+1)])`
-/

namespace A194727.P6680839675089614265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183134 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194727.P6680839675089614265

/-! ## A194727.P5919055377130460958

`A183134(eq[8, A004736(n+1)])`
-/

namespace A194727.P5919055377130460958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183134 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194727.P5919055377130460958

/-!
# A194728: Number of 8-ary words either empty or beginning with the first character of the alphabet, that can be built by inserting n doublets into the initially empty word.

The programs for A194728, there is no canonical definition to state claims against.
-/

/-! ## A194728.P7013401914616457151

`ceil(A130979(n)/8)`
-/

namespace A194728.P7013401914616457151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A130979 n : ℚ) / 8⌉

end

end A194728.P7013401914616457151

/-! ## A194728.P582924486881322308

`A132374(A004273(n))`
-/

namespace A194728.P582924486881322308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132374 (A004273 n).toNat

end

end A194728.P582924486881322308

/-! ## A194728.P10853909449595732653

`A130979(A028310(n))/8`
-/

namespace A194728.P10853909449595732653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130979 (A028310 n).toNat : ℚ) / 8

end

end A194728.P10853909449595732653

/-! ## A194728.P9515473246177803076

`A132374(lt[A126120(n+2), 2])`
-/

namespace A194728.P9515473246177803076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132374 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A194728.P9515473246177803076

/-! ## A194728.P512270487870968692

`A183134(eq[8, A025581(n)])`
-/

namespace A194728.P512270487870968692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183134 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194728.P512270487870968692

/-! ## A194728.P15492869235892920973

`A183134(eq[6, A219347(n+1)])`
-/

namespace A194728.P15492869235892920973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183134 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194728.P15492869235892920973

/-! ## A194728.P11742432935637300627

`A183134(eq[6, A219347(n)]-1)`
-/

namespace A194728.P11742432935637300627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183134 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 1)

end

end A194728.P11742432935637300627

/-! ## A194728.P6271260052230199814

`A183134(eq[8, A193592(n+1)])`
-/

namespace A194728.P6271260052230199814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183134 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194728.P6271260052230199814

/-! ## A194728.P1997622522271320194

`A183134(eq[9, A004736(n+1)])`
-/

namespace A194728.P1997622522271320194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183134 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194728.P1997622522271320194

/-!
# A194729: Number of 9-ary words either empty or beginning with the first character of the alphabet, that can be built by inserting n doublets into the initially empty word.

The programs for A194729, there is no canonical definition to state claims against.
-/

/-! ## A194729.P1746649255265496725

`ceil(A130980(n)/9)`
-/

namespace A194729.P1746649255265496725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A130980 n : ℚ) / 9⌉

end

end A194729.P1746649255265496725

/-! ## A194729.P17385404850565360447

`A132375(A123539(n²))`
-/

namespace A194729.P17385404850565360447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132375 (A123539 (n ^ 2)).toNat

end

end A194729.P17385404850565360447

/-! ## A194729.P11673244268327704588

`A183134(A056000(n+6))`
-/

namespace A194729.P11673244268327704588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183134 (A056000 (n + 6)).toNat

end

end A194729.P11673244268327704588

/-! ## A194729.P14889311236148754623

`A183134(eq[9, A025581(n)])`
-/

namespace A194729.P14889311236148754623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183134 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194729.P14889311236148754623

/-! ## A194729.P221099623423979661

`A183134(eq[10, A193739(n)])`
-/

namespace A194729.P221099623423979661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183134 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194729.P221099623423979661

/-! ## A194729.P8118317715274010424

`A183134(eq[10, A004736(n+1)])`
-/

namespace A194729.P8118317715274010424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183134 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194729.P8118317715274010424

/-!
# A194730: Number of 10-ary words either empty or beginning with the first character of the alphabet, that can be built by inserting n doublets into the initially empty word.

The programs for A194730, there is no canonical definition to state claims against.
-/

/-! ## A194730.P1566402665251634609

`ceil(A131521(n)/10)`
-/

namespace A194730.P1566402665251634609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A131521 n : ℚ) / 10⌉

end

end A194730.P1566402665251634609

/-! ## A194730.P749697466741242834

`A121725(abs(1-2*n))`
-/

namespace A194730.P749697466741242834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121725 |1 - (2 * n : ℤ)|.toNat

end

end A194730.P749697466741242834

/-! ## A194730.P15809120778733322407

`A183134(eq[10, A025581(n)])`
-/

namespace A194730.P15809120778733322407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183134 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194730.P15809120778733322407

/-! ## A194730.P3188263149997790493

`A183134(A055998(n+9)-8)`
-/

namespace A194730.P3188263149997790493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183134 (A055998 (n + 9) - 8).toNat

end

end A194730.P3188263149997790493

/-! ## A194730.P10247900202210140526

`A183134(eq[11, A004736(n+1)])`
-/

namespace A194730.P10247900202210140526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183134 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194730.P10247900202210140526

/-!
# A194731: Digital roots of the nonzero octagonal numbers.

The programs for A194731, the canonical program `A194731.P18794824431885544` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194731 has offset 1).

The definition of A194731 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A194731.P18794824431885544

`dr((n+1)*(3*(n+1)-2))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A194731

/-- `dr((n+1)*(3*(n+1)-2))` -/
def P18794824431885544.Spec : Prop :=
  ∀ n, (P18794824431885544.a n : ℤ) = A194731 (n + 1)

theorem P18794824431885544.correct : P18794824431885544.Spec := by
  intro n
  simp only [A194731, Nat.add_sub_cancel]

end A194731

/-!
# A194732: Units' digits of the nonzero octagonal numbers.

The programs for A194732, the canonical program `A194732.P2934321626699126570` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194732 has offset 1).

The definition of A194732 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A194732.P2934321626699126570

`((n+1)*(3*(n+1)-2))%10`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A194732

/-- `((n+1)*(3*(n+1)-2))%10` -/
def P2934321626699126570.Spec : Prop :=
  ∀ n, P2934321626699126570.a n = A194732 (n + 1)

theorem P2934321626699126570.correct : P2934321626699126570.Spec := by
  intro n
  simp only [A194732, Nat.add_sub_cancel]

end A194732

/-!
# A194733: Number of k < n such that {k*r} > {n*r}, where { } = fractional part, r = (1+sqrt(5))/2 (the golden ratio).

The programs for A194733, the canonical program `A194733.P5079887994713995928` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194733 has offset 1).

The definition of A194733 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194733.P8239149658196231645

`n-(2*∑[ceil(ϕ*(n+1))])%(n+2)`
-/

namespace A194733.P8239149658196231645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n + 1 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod (2 * (∑ j ∈ Finset.range (n + 1), f1 j)) (n + 2 : ℤ)

end

end A194733.P8239149658196231645

namespace A194733

/-- `n-(2*∑[ceil(ϕ*(n+1))])%(n+2)` -/
def P8239149658196231645.Spec : Prop :=
  ∀ n, P8239149658196231645.a n = A194733 (n + 1)

end A194733

/-! ## A194733.P17683465176188437898

`A019588(n+1)-1`
-/

namespace A194733.P17683465176188437898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019588 (n + 1) - 1

end

end A194733.P17683465176188437898

namespace A194733

/-- `A019588(n+1)-1` -/
def P17683465176188437898.Spec : Prop :=
  ∀ n, P17683465176188437898.a n = A194733 (n + 1)

theorem P17683465176188437898.correct : P17683465176188437898.Spec := by
  intro n
  simp only [A194733, Nat.add_sub_cancel, A194733.P17683465176188437898.a, A194733.P5079887994713995928.a, A019587, A019587.P7183734736030190447.f1, A019587.P7183734736030190447.a, A019588, A019588.P12494804011733207949.a, A001468, A001468.P12360075344960480253.a, A026351, A026351.P16838321733923579855.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A194733

/-! ## A194733.P16069968611331598509

`n-A194734(n+1)`
-/

namespace A194733.P16069968611331598509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A194734 (n + 1)

end

end A194733.P16069968611331598509

namespace A194733

/-- `n-A194734(n+1)` -/
def P16069968611331598509.Spec : Prop :=
  ∀ n, P16069968611331598509.a n = A194733 (n + 1)

theorem P16069968611331598509.correct : P16069968611331598509.Spec := by
  intro n
  simp only [A194733, Nat.add_sub_cancel, A194733.P16069968611331598509.a, A194733.P5079887994713995928.a, A019587, A019587.P7183734736030190447.f1, A019587.P7183734736030190447.a, A194734, A194734.P3466795351290559112.a, A001468, A001468.P12360075344960480253.a, A026351, A026351.P16838321733923579855.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A194733

/-! ## A194733.P5079887994713995928

`1-A019587(n+1)+n`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A194733

/-- `1-A019587(n+1)+n` -/
def P5079887994713995928.Spec : Prop :=
  ∀ n, P5079887994713995928.a n = A194733 (n + 1)

theorem P5079887994713995928.correct : P5079887994713995928.Spec := by
  intro n
  simp only [A194733, Nat.add_sub_cancel]

end A194733

/-! ## A194733.P6392760660599967241

`∑[n+1]-A054067(n+1)`
-/

namespace A194733.P6392760660599967241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A054067 (n + 1)

end

end A194733.P6392760660599967241

namespace A194733

/-- `∑[n+1]-A054067(n+1)` -/
def P6392760660599967241.Spec : Prop :=
  ∀ n, P6392760660599967241.a n = A194733 (n + 1)

end A194733

/-! ## A194733.P3611985866465277186

`(n*∑[A005206(n)])%(n+2)`
-/

namespace A194733.P3611985866465277186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)) (n + 2 : ℤ)

end

end A194733.P3611985866465277186

namespace A194733

/-- `(n*∑[A005206(n)])%(n+2)` -/
def P3611985866465277186.Spec : Prop :=
  ∀ n, P3611985866465277186.a n = A194733 (n + 1)

end A194733

/-! ## A194733.P6367026101889777519

`A019594(n+1)%(n+2)-1`
-/

namespace A194733.P6367026101889777519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A019594 (n + 1)) (n + 2 : ℤ) - 1

end

end A194733.P6367026101889777519

namespace A194733

/-- `A019594(n+1)%(n+2)-1` -/
def P6367026101889777519.Spec : Prop :=
  ∀ n, P6367026101889777519.a n = A194733 (n + 1)

end A194733

/-! ## A194733.P12185631274340120278

`A023443(A019588(n+1))`
-/

namespace A194733.P12185631274340120278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A019588 (n + 1)).toNat

end

end A194733.P12185631274340120278

namespace A194733

/-- `A023443(A019588(n+1))` -/
def P12185631274340120278.Spec : Prop :=
  ∀ n, P12185631274340120278.a n = A194733 (n + 1)

end A194733

/-! ## A194733.P1232588072603216390

`A019594(n)-(A005206(n)+1)`
-/

namespace A194733.P1232588072603216390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019594 n - (A005206 n + 1)

end

end A194733.P1232588072603216390

namespace A194733

/-- `A019594(n)-(A005206(n)+1)` -/
def P1232588072603216390.Spec : Prop :=
  ∀ n, P1232588072603216390.a n = A194733 (n + 1)

end A194733

/-! ## A194733.P6456316494146230548

`A019594(n)-A019446(n+1)`
-/

namespace A194733.P6456316494146230548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019594 n - A019446 (n + 1)

end

end A194733.P6456316494146230548

namespace A194733

/-- `A019594(n)-A019446(n+1)` -/
def P6456316494146230548.Spec : Prop :=
  ∀ n, P6456316494146230548.a n = A194733 (n + 1)

end A194733

/-! ## A194733.P10980944027075980256

`n-A023443(A019587(n+1))`
-/

namespace A194733.P10980944027075980256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 (A019587 (n + 1)).toNat

end

end A194733.P10980944027075980256

namespace A194733

/-- `n-A023443(A019587(n+1))` -/
def P10980944027075980256.Spec : Prop :=
  ∀ n, P10980944027075980256.a n = A194733 (n + 1)

end A194733

/-! ## A194733.P15163787660814779423

`A253145(n)%A054067(n+1)`
-/

namespace A194733.P15163787660814779423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253145 n) (A054067 (n + 1))

end

end A194733.P15163787660814779423

namespace A194733

/-- `A253145(n)%A054067(n+1)` -/
def P15163787660814779423.Spec : Prop :=
  ∀ n, P15163787660814779423.a n = A194733 (n + 1)

end A194733

/-! ## A194733.P1447503197759051220

`A019594(n)-A000201(n+1)+n`
-/

namespace A194733.P1447503197759051220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019594 n - A000201 (n + 1) + (n : ℤ)

end

end A194733.P1447503197759051220

namespace A194733

/-- `A019594(n)-A000201(n+1)+n` -/
def P1447503197759051220.Spec : Prop :=
  ∀ n, P1447503197759051220.a n = A194733 (n + 1)

end A194733

/-! ## A194733.P14532837015439291939

`A000124(n)-A054067(n+1)+n`
-/

namespace A194733.P14532837015439291939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - A054067 (n + 1) + (n : ℤ)

end

end A194733.P14532837015439291939

namespace A194733

/-- `A000124(n)-A054067(n+1)+n` -/
def P14532837015439291939.Spec : Prop :=
  ∀ n, P14532837015439291939.a n = A194733 (n + 1)

end A194733

/-! ## A194733.P6578068411117400285

`A194734(A004956(n+1))`
-/

namespace A194733.P6578068411117400285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194734 (A004956 (n + 1)).toNat

end

end A194733.P6578068411117400285

namespace A194733

/-- `A194734(A004956(n+1))` -/
def P6578068411117400285.Spec : Prop :=
  ∀ n, P6578068411117400285.a n = A194733 (n + 1)

end A194733

/-! ## A194733.P6541724231363917161

`A194734(A026351(n+1))`
-/

namespace A194733.P6541724231363917161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194734 (A026351 (n + 1)).toNat

end

end A194733.P6541724231363917161

namespace A194733

/-- `A194734(A026351(n+1))` -/
def P6541724231363917161.Spec : Prop :=
  ∀ n, P6541724231363917161.a n = A194733 (n + 1)

end A194733

/-! ## A194733.P16986411010803740203

`A194734(A000201(n+1)+1)`
-/

namespace A194733.P16986411010803740203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194734 (A000201 (n + 1) + 1).toNat

end

end A194733.P16986411010803740203

namespace A194733

/-- `A194734(A000201(n+1)+1)` -/
def P16986411010803740203.Spec : Prop :=
  ∀ n, P16986411010803740203.a n = A194733 (n + 1)

end A194733

/-! ## A194733.P6902410688264003678

`A295540(A001950(n+1))-1`
-/

namespace A194733.P6902410688264003678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295540 (A001950 (n + 1)).toNat - 1

end

end A194733.P6902410688264003678

namespace A194733

/-- `A295540(A001950(n+1))-1` -/
def P6902410688264003678.Spec : Prop :=
  ∀ n, P6902410688264003678.a n = A194733 (n + 1)

end A194733

/-! ## A194733.P12716649793530448711

`A080844(A003623(n+1))`
-/

namespace A194733.P12716649793530448711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080844 (A003623 (n + 1)).toNat

end

end A194733.P12716649793530448711

namespace A194733

/-- `A080844(A003623(n+1))` -/
def P12716649793530448711.Spec : Prop :=
  ∀ n, P12716649793530448711.a n = A194733 (n + 1)

end A194733

/-! ## A194733.P703164591258807640

`A194734(A101868(n+1))`
-/

namespace A194733.P703164591258807640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194734 (A101868 (n + 1)).toNat

end

end A194733.P703164591258807640

namespace A194733

/-- `A194734(A101868(n+1))` -/
def P703164591258807640.Spec : Prop :=
  ∀ n, P703164591258807640.a n = A194733 (n + 1)

end A194733

/-!
# A194734: Number of k such that {-k*r} > {-n*r}, where { } = fractional part, r = (1+sqrt(5))/2 (the golden ratio).

The programs for A194734, the canonical program `A194734.P3466795351290559112` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194734 has offset 1).

The definition of A194734 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194734.P17088861840183746925

`(2*∑[ceil(ϕ*(n+1))])%(n+2)`
-/

namespace A194734.P17088861840183746925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n + 1 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * (∑ j ∈ Finset.range (n + 1), f1 j)) (n + 2 : ℤ)

end

end A194734.P17088861840183746925

namespace A194734

/-- `(2*∑[ceil(ϕ*(n+1))])%(n+2)` -/
def P17088861840183746925.Spec : Prop :=
  ∀ n, P17088861840183746925.a n = A194734 (n + 1)

end A194734

/-! ## A194734.P3466795351290559112

`A019587(n+1)-1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A194734

/-- `A019587(n+1)-1` -/
def P3466795351290559112.Spec : Prop :=
  ∀ n, P3466795351290559112.a n = A194734 (n + 1)

theorem P3466795351290559112.correct : P3466795351290559112.Spec := by
  intro n
  simp only [A194734, Nat.add_sub_cancel]

end A194734

/-! ## A194734.P5471746536895748692

`n-A194733(n+1)`
-/

namespace A194734.P5471746536895748692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A194733 (n + 1)

end

end A194734.P5471746536895748692

namespace A194734

/-- `n-A194733(n+1)` -/
def P5471746536895748692.Spec : Prop :=
  ∀ n, P5471746536895748692.a n = A194734 (n + 1)

theorem P5471746536895748692.correct : P5471746536895748692.Spec := by
  intro n
  simp only [A194734, Nat.add_sub_cancel, A194734.P5471746536895748692.a, A194734.P3466795351290559112.a, A019587, A019587.P7183734736030190447.f1, A019587.P7183734736030190447.a, A194733, A194733.P5079887994713995928.a, A001468, A001468.P12360075344960480253.a, A026351, A026351.P16838321733923579855.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A194734

/-! ## A194734.P2898225289505489319

`1-A019588(n+1)+n`
-/

namespace A194734.P2898225289505489319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A019588 (n + 1) + (n : ℤ)

end

end A194734.P2898225289505489319

namespace A194734

/-- `1-A019588(n+1)+n` -/
def P2898225289505489319.Spec : Prop :=
  ∀ n, P2898225289505489319.a n = A194734 (n + 1)

theorem P2898225289505489319.correct : P2898225289505489319.Spec := by
  intro n
  simp only [A194734, Nat.add_sub_cancel, A194734.P2898225289505489319.a, A194734.P3466795351290559112.a, A019587, A019587.P7183734736030190447.f1, A019587.P7183734736030190447.a, A019588, A019588.P12494804011733207949.a, A001468, A001468.P12360075344960480253.a, A026351, A026351.P16838321733923579855.a, A194733, A194733.P5079887994713995928.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A194734

/-! ## A194734.P3237656726122130530

`A054067(n+1)-(∑[n]+1)`
-/

namespace A194734.P3237656726122130530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054067 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)

end

end A194734.P3237656726122130530

namespace A194734

/-- `A054067(n+1)-(∑[n]+1)` -/
def P3237656726122130530.Spec : Prop :=
  ∀ n, P3237656726122130530.a n = A194734 (n + 1)

theorem P3237656726122130530.correct : P3237656726122130530.Spec := by
  intro n
  simp only [A194734, Nat.add_sub_cancel, A194734.P3237656726122130530.f1, A194734.P3237656726122130530.a, A194734.P3466795351290559112.a, A019587, A019587.P7183734736030190447.f1, A019587.P7183734736030190447.a, A054067, A054067.P7097243798565487157.f1, A054067.P7097243798565487157.a, A001468, A001468.P12360075344960480253.a, A026351, A026351.P16838321733923579855.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A194734

/-! ## A194734.P6534532838650885844

`ϕ²-(ϕ-n)-A019588(ϕ²-(ϕ-n))`
-/

namespace A194734.P6534532838650885844
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)) - (A019588 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat : ℝ)

end

end A194734.P6534532838650885844

namespace A194734

/-- `ϕ²-(ϕ-n)-A019588(ϕ²-(ϕ-n))` -/
def P6534532838650885844.Spec : Prop :=
  ∀ n, P6534532838650885844.a n = (A194734 (n + 1) : ℝ)

end A194734

/-! ## A194734.P3756037633974184027

`A023443(A019587(n+1))`
-/

namespace A194734.P3756037633974184027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A019587 (n + 1)).toNat

end

end A194734.P3756037633974184027

namespace A194734

/-- `A023443(A019587(n+1))` -/
def P3756037633974184027.Spec : Prop :=
  ∀ n, P3756037633974184027.a n = A194734 (n + 1)

end A194734

/-! ## A194734.P11467391909530092858

`A000201(n+1)-A019594(n)`
-/

namespace A194734.P11467391909530092858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (n + 1) - A019594 n

end

end A194734.P11467391909530092858

namespace A194734

/-- `A000201(n+1)-A019594(n)` -/
def P11467391909530092858.Spec : Prop :=
  ∀ n, P11467391909530092858.a n = A194734 (n + 1)

end A194734

/-! ## A194734.P16025247187587922624

`n-A023443(A019588(n+1))`
-/

namespace A194734.P16025247187587922624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 (A019588 (n + 1)).toNat

end

end A194734.P16025247187587922624

namespace A194734

/-- `n-A023443(A019588(n+1))` -/
def P16025247187587922624.Spec : Prop :=
  ∀ n, P16025247187587922624.a n = A194734 (n + 1)

end A194734

/-! ## A194734.P12960089271396338918

`A019446(n+1)+n-A019594(n)`
-/

namespace A194734.P12960089271396338918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019446 (n + 1) + ((n : ℤ) - A019594 n)

end

end A194734.P12960089271396338918

namespace A194734

/-- `A019446(n+1)+n-A019594(n)` -/
def P12960089271396338918.Spec : Prop :=
  ∀ n, P12960089271396338918.a n = A194734 (n + 1)

end A194734

/-! ## A194734.P13953319884531540885

`A194733(floor(ϕ*(n+1)))`
-/

namespace A194734.P13953319884531540885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194733 ⌊Real.goldenRatio * (n + 1 : ℝ)⌋.toNat

end

end A194734.P13953319884531540885

namespace A194734

/-- `A194733(floor(ϕ*(n+1)))` -/
def P13953319884531540885.Spec : Prop :=
  ∀ n, P13953319884531540885.a n = A194734 (n + 1)

end A194734

/-! ## A194734.P18206920541854997590

`A019588(A066096(n+1))-1`
-/

namespace A194734.P18206920541854997590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019588 (A066096 (n + 1)).toNat - 1

end

end A194734.P18206920541854997590

namespace A194734

/-- `A019588(A066096(n+1))-1` -/
def P18206920541854997590.Spec : Prop :=
  ∀ n, P18206920541854997590.a n = A194734 (n + 1)

end A194734

/-! ## A194734.P3382619504507261758

`A295540(A003622(n+1))-1`
-/

namespace A194734.P3382619504507261758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295540 (A003622 (n + 1)).toNat - 1

end

end A194734.P3382619504507261758

namespace A194734

/-- `A295540(A003622(n+1))-1` -/
def P3382619504507261758.Spec : Prop :=
  ∀ n, P3382619504507261758.a n = A194734 (n + 1)

end A194734

/-! ## A194734.P12510099681235855299

`n+1-A295540(A001950(n+1))`
-/

namespace A194734.P12510099681235855299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A295540 (A001950 (n + 1)).toNat

end

end A194734.P12510099681235855299

namespace A194734

/-- `n+1-A295540(A001950(n+1))` -/
def P12510099681235855299.Spec : Prop :=
  ∀ n, P12510099681235855299.a n = A194734 (n + 1)

end A194734

/-! ## A194734.P4116650562207071191

`n-A080844(A003623(n+1))`
-/

namespace A194734.P4116650562207071191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A080844 (A003623 (n + 1)).toNat

end

end A194734.P4116650562207071191

namespace A194734

/-- `n-A080844(A003623(n+1))` -/
def P4116650562207071191.Spec : Prop :=
  ∀ n, P4116650562207071191.a n = A194734 (n + 1)

end A194734

/-! ## A194734.P15050132837221621524

`A080844(A035337(n))`
-/

namespace A194734.P15050132837221621524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080844 (A035337 n).toNat

end

end A194734.P15050132837221621524

namespace A194734

/-- `A080844(A035337(n))` -/
def P15050132837221621524.Spec : Prop :=
  ∀ n, P15050132837221621524.a n = A194734 (n + 1)

end A194734

/-! ## A194734.P6226752844343803193

`A054347(n+1)-A255977(A000201(n+1))`
-/

namespace A194734.P6226752844343803193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054347 (n + 1) - A255977 (A000201 (n + 1)).toNat

end

end A194734.P6226752844343803193

namespace A194734

/-- `A054347(n+1)-A255977(A000201(n+1))` -/
def P6226752844343803193.Spec : Prop :=
  ∀ n, P6226752844343803193.a n = A194734 (n + 1)

end A194734

/-! ## A194734.P3320767717931034993

`A000217(n+1)-A194833(A000217(n+1))`
-/

namespace A194734.P3320767717931034993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) - A194833 (A000217 (n + 1)).toNat

end

end A194734.P3320767717931034993

namespace A194734

/-- `A000217(n+1)-A194833(A000217(n+1))` -/
def P3320767717931034993.Spec : Prop :=
  ∀ n, P3320767717931034993.a n = A194734 (n + 1)

end A194734

/-!
# A194735: Number of positive integers k <= n such that {k*sqrt(2)} > {n*sqrt(2)}, where { } = fractional part.

The programs for A194735, the canonical program `A194735.P10653237601226367426` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194735 has offset 1).

The definition of A194735 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194735.P7748610103680426392

`A194736(n+1)-1`
-/

namespace A194735.P7748610103680426392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194736 (n + 1) - 1

end

end A194735.P7748610103680426392

namespace A194735

/-- `A194736(n+1)-1` -/
def P7748610103680426392.Spec : Prop :=
  ∀ n, P7748610103680426392.a n = A194735 (n + 1)

end A194735

/-! ## A194735.P13728086500986054620

`n-A194737(n+1)`
-/

namespace A194735.P13728086500986054620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A194737 (n + 1)

end

end A194735.P13728086500986054620

namespace A194735

/-- `n-A194737(n+1)` -/
def P13728086500986054620.Spec : Prop :=
  ∀ n, P13728086500986054620.a n = A194735 (n + 1)

end A194735

/-! ## A194735.P6592526199890376420

`1-A054072(n+1)+n`
-/

namespace A194735.P6592526199890376420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A054072 (n + 1) + (n : ℤ)

end

end A194735.P6592526199890376420

namespace A194735

/-- `1-A054072(n+1)+n` -/
def P6592526199890376420.Spec : Prop :=
  ∀ n, P6592526199890376420.a n = A194735 (n + 1)

end A194735

/-! ## A194735.P10455344792224744451

`∑[n+1]-A054075(n+1)`
-/

namespace A194735.P10455344792224744451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A054075 (n + 1)

end

end A194735.P10455344792224744451

namespace A194735

/-- `∑[n+1]-A054075(n+1)` -/
def P10455344792224744451.Spec : Prop :=
  ∀ n, P10455344792224744451.a n = A194735 (n + 1)

end A194735

/-! ## A194735.P10653237601226367426

`(n*A194138(n+1))%(n+2)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A194735

/-- `(n*A194138(n+1))%(n+2)` -/
def P10653237601226367426.Spec : Prop :=
  ∀ n, P10653237601226367426.a n = A194735 (n + 1)

theorem P10653237601226367426.correct : P10653237601226367426.Spec := by
  intro n
  simp only [A194735, Nat.add_sub_cancel]

end A194735

/-! ## A194735.P16547293673673828429

`A023443(A194736(n+1))`
-/

namespace A194735.P16547293673673828429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A194736 (n + 1)).toNat

end

end A194735.P16547293673673828429

namespace A194735

/-- `A023443(A194736(n+1))` -/
def P16547293673673828429.Spec : Prop :=
  ∀ n, P16547293673673828429.a n = A194735 (n + 1)

end A194735

/-! ## A194735.P1299419403947953277

`n-A023443(A054072(n+1))`
-/

namespace A194735.P1299419403947953277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 (A054072 (n + 1)).toNat

end

end A194735.P1299419403947953277

namespace A194735

/-- `n-A023443(A054072(n+1))` -/
def P1299419403947953277.Spec : Prop :=
  ∀ n, P1299419403947953277.a n = A194735 (n + 1)

end A194735

/-! ## A194735.P16812479071512218676

`A253145(n)%A054075(n+1)`
-/

namespace A194735.P16812479071512218676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253145 n) (A054075 (n + 1))

end

end A194735.P16812479071512218676

namespace A194735

/-- `A253145(n)%A054075(n+1)` -/
def P16812479071512218676.Spec : Prop :=
  ∀ n, P16812479071512218676.a n = A194735 (n + 1)

end A194735

/-! ## A194735.P1454839121341683590

`A000124(n)-A054075(n+1)+n`
-/

namespace A194735.P1454839121341683590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - A054075 (n + 1) + (n : ℤ)

end

end A194735.P1454839121341683590

namespace A194735

/-- `A000124(n)-A054075(n+1)+n` -/
def P1454839121341683590.Spec : Prop :=
  ∀ n, P1454839121341683590.a n = A194735 (n + 1)

end A194735

/-! ## A194735.P12187718868271495554

`∑[n*A188037(n+1)-A097508(n)]`
-/

namespace A194735.P12187718868271495554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A188037 (n + 1) - A097508 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194735.P12187718868271495554

namespace A194735

/-- `∑[n*A188037(n+1)-A097508(n)]` -/
def P12187718868271495554.Spec : Prop :=
  ∀ n, P12187718868271495554.a n = A194735 (n + 1)

end A194735

/-! ## A194735.P7909101387377820496

`A054074(n+2)-(A054075(n+1)+A054071(n+2))`
-/

namespace A194735.P7909101387377820496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054074 (n + 2) - (A054075 (n + 1) + A054071 (n + 2))

end

end A194735.P7909101387377820496

namespace A194735

/-- `A054074(n+2)-(A054075(n+1)+A054071(n+2))` -/
def P7909101387377820496.Spec : Prop :=
  ∀ n, P7909101387377820496.a n = A194735 (n + 1)

end A194735

/-! ## A194735.P1290970866655787420

`A194737(comp[floor(n*sqrt(2))]-n)`
-/

namespace A194735.P1290970866655787420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194737 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n - n)

end

end A194735.P1290970866655787420

namespace A194735

/-- `A194737(comp[floor(n*sqrt(2))]-n)` -/
def P1290970866655787420.Spec : Prop :=
  ∀ n, P1290970866655787420.a n = A194735 (n + 1)

end A194735

/-! ## A194735.P11174753086674397547

`A054072(A080754(n+1))-1`
-/

namespace A194735.P11174753086674397547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054072 (A080754 (n + 1)).toNat - 1

end

end A194735.P11174753086674397547

namespace A194735

/-- `A054072(A080754(n+1))-1` -/
def P11174753086674397547.Spec : Prop :=
  ∀ n, P11174753086674397547.a n = A194735 (n + 1)

end A194735

/-! ## A194735.P13840429045650367641

`A070198(n)%A194736(n+1)`
-/

namespace A194735.P13840429045650367641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A194736 (n + 1))

end

end A194735.P13840429045650367641

namespace A194735

/-- `A070198(n)%A194736(n+1)` -/
def P13840429045650367641.Spec : Prop :=
  ∀ n, P13840429045650367641.a n = A194735 (n + 1)

end A194735

/-! ## A194735.P7832355888092981420

`A079782(n+1)%A194736(n+1)`
-/

namespace A194735.P7832355888092981420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A194736 (n + 1))

end

end A194735.P7832355888092981420

namespace A194735

/-- `A079782(n+1)%A194736(n+1)` -/
def P7832355888092981420.Spec : Prop :=
  ∀ n, P7832355888092981420.a n = A194735 (n + 1)

end A194735

/-! ## A194735.P12274645480009773500

`A083685(n+1)%A194736(n+1)`
-/

namespace A194735.P12274645480009773500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A194736 (n + 1))

end

end A194735.P12274645480009773500

namespace A194735

/-- `A083685(n+1)%A194736(n+1)` -/
def P12274645480009773500.Spec : Prop :=
  ∀ n, P12274645480009773500.a n = A194735 (n + 1)

end A194735

/-! ## A194735.P13897272295856701328

`A121934(n+1)%A194736(n+1)`
-/

namespace A194735.P13897272295856701328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A194736 (n + 1))

end

end A194735.P13897272295856701328

namespace A194735

/-- `A121934(n+1)%A194736(n+1)` -/
def P13897272295856701328.Spec : Prop :=
  ∀ n, P13897272295856701328.a n = A194735 (n + 1)

end A194735

/-! ## A194735.P14006871240017351332

`A054068(A054066(n+1))-A054075(n+1)+n`
-/

namespace A194735.P14006871240017351332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054068 (A054066 (n + 1)).toNat - A054075 (n + 1) + (n : ℤ)

end

end A194735.P14006871240017351332

namespace A194735

/-- `A054068(A054066(n+1))-A054075(n+1)+n` -/
def P14006871240017351332.Spec : Prop :=
  ∀ n, P14006871240017351332.a n = A194735 (n + 1)

end A194735

/-! ## A194735.P4155692009207788079

`A000217(n+1)-A054077(A000217(n+1))`
-/

namespace A194735.P4155692009207788079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) - A054077 (A000217 (n + 1)).toNat

end

end A194735.P4155692009207788079

namespace A194735

/-- `A000217(n+1)-A054077(A000217(n+1))` -/
def P4155692009207788079.Spec : Prop :=
  ∀ n, P4155692009207788079.a n = A194735 (n + 1)

end A194735

/-! ## A194735.P1200059367971541798

`A008795(2*n)-A054077(A008795(2*n))`
-/

namespace A194735.P1200059367971541798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008795 (2 * n) - A054077 (A008795 (2 * n)).toNat

end

end A194735.P1200059367971541798

namespace A194735

/-- `A008795(2*n)-A054077(A008795(2*n))` -/
def P1200059367971541798.Spec : Prop :=
  ∀ n, P1200059367971541798.a n = A194735 (n + 1)

end A194735

/-!
# A194736: Number of k such that {-k*sqrt(2)} < {-n*sqrt(2)}, where { } = fractional part.

The programs for A194736, the canonical program `A194736.P10753671586819030676` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194736 has offset 1).

The definition of A194736 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194736.P10753671586819030676

`1-A194737(n+1)+n`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A194736

/-- `1-A194737(n+1)+n` -/
def P10753671586819030676.Spec : Prop :=
  ∀ n, P10753671586819030676.a n = A194736 (n + 1)

theorem P10753671586819030676.correct : P10753671586819030676.Spec := by
  intro n
  simp only [A194736, Nat.add_sub_cancel]

end A194736

/-! ## A194736.P6183652019213107818

`2-A054072(n+1)+n`
-/

namespace A194736.P6183652019213107818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A054072 (n + 1) + (n : ℤ)

end

end A194736.P6183652019213107818

namespace A194736

/-- `2-A054072(n+1)+n` -/
def P6183652019213107818.Spec : Prop :=
  ∀ n, P6183652019213107818.a n = A194736 (n + 1)

theorem P6183652019213107818.correct : P6183652019213107818.Spec := by
  intro n
  simp only [A194736, Nat.add_sub_cancel, A194736.P6183652019213107818.a, A194736.P10753671586819030676.a, A054072, A054072.P9099250148289974949.a, A194737, A194737.P6700911541422964777.f1, A194737.P6700911541422964777.a, A001951, A001951.P3206377842744091648.a, A000196, A000196.P15434771586934192083.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A194736

/-! ## A194736.P12550191934425843645

`2-(A054075(n+1)-∑[n])+n`
-/

namespace A194736.P12550191934425843645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A054075 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) + (n : ℤ)

end

end A194736.P12550191934425843645

namespace A194736

/-- `2-(A054075(n+1)-∑[n])+n` -/
def P12550191934425843645.Spec : Prop :=
  ∀ n, P12550191934425843645.a n = A194736 (n + 1)

theorem P12550191934425843645.correct : P12550191934425843645.Spec := by
  intro n
  simp only [A194736, Nat.add_sub_cancel, A194736.P12550191934425843645.f1, A194736.P12550191934425843645.a, A194736.P10753671586819030676.a, A054075, A054075.P9880067483023913226.f1, A054075.P9880067483023913226.a, A194737, A194737.P6700911541422964777.f1, A194737.P6700911541422964777.a, A001951, A001951.P3206377842744091648.a, A054072, A054072.P9099250148289974949.a, A000196, A000196.P15434771586934192083.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A194736

/-! ## A194736.P13508996511277259701

`∑[(n+1)*A097509(n)-A003151(n+1)]`
-/

namespace A194736.P13508996511277259701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A097509 n - A003151 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194736.P13508996511277259701

namespace A194736

/-- `∑[(n+1)*A097509(n)-A003151(n+1)]` -/
def P13508996511277259701.Spec : Prop :=
  ∀ n, P13508996511277259701.a n = A194736 (n + 1)

end A194736

/-! ## A194736.P1965346317158539543

`A000124(n+1)-A054075(n+1)`
-/

namespace A194736.P1965346317158539543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (n + 1) - A054075 (n + 1)

end

end A194736.P1965346317158539543

namespace A194736

/-- `A000124(n+1)-A054075(n+1)` -/
def P1965346317158539543.Spec : Prop :=
  ∀ n, P1965346317158539543.a n = A194736 (n + 1)

end A194736

/-! ## A194736.P8985680356742366776

`A194735(n+1)+1`
-/

namespace A194736.P8985680356742366776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194735 (n + 1) + 1

end

end A194736.P8985680356742366776

namespace A194736

/-- `A194735(n+1)+1` -/
def P8985680356742366776.Spec : Prop :=
  ∀ n, P8985680356742366776.a n = A194736 (n + 1)

end A194736

/-! ## A194736.P11367282132526705621

`A054072(A080754(n+1))`
-/

namespace A194736.P11367282132526705621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054072 (A080754 (n + 1)).toNat

end

end A194736.P11367282132526705621

namespace A194736

/-- `A054072(A080754(n+1))` -/
def P11367282132526705621.Spec : Prop :=
  ∀ n, P11367282132526705621.a n = A194736 (n + 1)

end A194736

/-! ## A194736.P17818493594649725615

`A054072(A054071(n+1)+2*(n+1))`
-/

namespace A194736.P17818493594649725615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054072 (A054071 (n + 1) + (2 * (n + 1) : ℤ)).toNat

end

end A194736.P17818493594649725615

namespace A194736

/-- `A054072(A054071(n+1)+2*(n+1))` -/
def P17818493594649725615.Spec : Prop :=
  ∀ n, P17818493594649725615.a n = A194736 (n + 1)

end A194736

/-! ## A194736.P8899522927686118874

`A004736(A054075(n+1))`
-/

namespace A194736.P8899522927686118874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A054075 (n + 1)).toNat

end

end A194736.P8899522927686118874

namespace A194736

/-- `A004736(A054075(n+1))` -/
def P8899522927686118874.Spec : Prop :=
  ∀ n, P8899522927686118874.a n = A194736 (n + 1)

end A194736

/-!
# A194737: Number of k such that {-k*sqrt(2)} > {-n*sqrt(2)}, where { } = fractional part.

The programs for A194737, the canonical program `A194737.P6700911541422964777` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194737 has offset 1).

The definition of A194737 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194737.P9572367877653652197

`A054072(n+1)-1`
-/

namespace A194737.P9572367877653652197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054072 (n + 1) - 1

end

end A194737.P9572367877653652197

namespace A194737

/-- `A054072(n+1)-1` -/
def P9572367877653652197.Spec : Prop :=
  ∀ n, P9572367877653652197.a n = A194737 (n + 1)

theorem P9572367877653652197.correct : P9572367877653652197.Spec := by
  intro n
  simp only [A194737, Nat.add_sub_cancel, A194737.P9572367877653652197.a, A194737.P6700911541422964777.f1, A194737.P6700911541422964777.a, A001951, A001951.P3206377842744091648.a, A054072, A054072.P9099250148289974949.a, A000196, A000196.P15434771586934192083.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A194737

/-! ## A194737.P17965360421434410824

`1-A194736(n+1)+n`
-/

namespace A194737.P17965360421434410824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A194736 (n + 1) + (n : ℤ)

end

end A194737.P17965360421434410824

namespace A194737

/-- `1-A194736(n+1)+n` -/
def P17965360421434410824.Spec : Prop :=
  ∀ n, P17965360421434410824.a n = A194737 (n + 1)

theorem P17965360421434410824.correct : P17965360421434410824.Spec := by
  intro n
  simp only [A194737, Nat.add_sub_cancel, A194737.P17965360421434410824.a, A194737.P6700911541422964777.f1, A194737.P6700911541422964777.a, A001951, A001951.P3206377842744091648.a, A194736, A194736.P10753671586819030676.a, A000196, A000196.P15434771586934192083.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A194737

/-! ## A194737.P16196446525326381896

`A054075(n+1)-(∑[n]+1)`
-/

namespace A194737.P16196446525326381896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054075 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)

end

end A194737.P16196446525326381896

namespace A194737

/-- `A054075(n+1)-(∑[n]+1)` -/
def P16196446525326381896.Spec : Prop :=
  ∀ n, P16196446525326381896.a n = A194737 (n + 1)

theorem P16196446525326381896.correct : P16196446525326381896.Spec := by
  intro n
  simp only [A194737, Nat.add_sub_cancel, A194737.P16196446525326381896.f1, A194737.P16196446525326381896.a, A194737.P6700911541422964777.f1, A194737.P6700911541422964777.a, A001951, A001951.P3206377842744091648.a, A054075, A054075.P9880067483023913226.f1, A054075.P9880067483023913226.a, A000196, A000196.P15434771586934192083.a, A054072, A054072.P9099250148289974949.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A194737

/-! ## A194737.P6700911541422964777

`∑[2*(A001951(n+1)+1)]%(n+2)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A194737

/-- `∑[2*(A001951(n+1)+1)]%(n+2)` -/
def P6700911541422964777.Spec : Prop :=
  ∀ n, P6700911541422964777.a n = A194737 (n + 1)

theorem P6700911541422964777.correct : P6700911541422964777.Spec := by
  intro n
  simp only [A194737, Nat.add_sub_cancel]

end A194737

/-! ## A194737.P2959103360078638698

`A023443(A054072(n+1))`
-/

namespace A194737.P2959103360078638698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A054072 (n + 1)).toNat

end

end A194737.P2959103360078638698

namespace A194737

/-- `A023443(A054072(n+1))` -/
def P2959103360078638698.Spec : Prop :=
  ∀ n, P2959103360078638698.a n = A194737 (n + 1)

end A194737

/-! ## A194737.P16976924397384175838

`n-A023443(A194736(n+1))`
-/

namespace A194737.P16976924397384175838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 (A194736 (n + 1)).toNat

end

end A194737.P16976924397384175838

namespace A194737

/-- `n-A023443(A194736(n+1))` -/
def P16976924397384175838.Spec : Prop :=
  ∀ n, P16976924397384175838.a n = A194737 (n + 1)

end A194737

/-! ## A194737.P7951036449580971914

`A054075(n+1)%A000124(n)`
-/

namespace A194737.P7951036449580971914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054075 (n + 1)) (A000124 n)

end

end A194737.P7951036449580971914

namespace A194737

/-- `A054075(n+1)%A000124(n)` -/
def P7951036449580971914.Spec : Prop :=
  ∀ n, P7951036449580971914.a n = A194737 (n + 1)

end A194737

/-! ## A194737.P14779656400605389117

`A008619(2*n)-A194736(A008619(2*n))`
-/

namespace A194737.P14779656400605389117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) - A194736 (A008619 (2 * n)).toNat

end

end A194737.P14779656400605389117

namespace A194737

/-- `A008619(2*n)-A194736(A008619(2*n))` -/
def P14779656400605389117.Spec : Prop :=
  ∀ n, P14779656400605389117.a n = A194737 (n + 1)

end A194737

/-! ## A194737.P9415242828265825358

`n-A194735(n+1)`
-/

namespace A194737.P9415242828265825358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A194735 (n + 1)

end

end A194737.P9415242828265825358

namespace A194737

/-- `n-A194735(n+1)` -/
def P9415242828265825358.Spec : Prop :=
  ∀ n, P9415242828265825358.a n = A194737 (n + 1)

end A194737

/-! ## A194737.P17453252277218747422

`A194736(A003151(n+1))-1`
-/

namespace A194737.P17453252277218747422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194736 (A003151 (n + 1)).toNat - 1

end

end A194737.P17453252277218747422

namespace A194737

/-- `A194736(A003151(n+1))-1` -/
def P17453252277218747422.Spec : Prop :=
  ∀ n, P17453252277218747422.a n = A194737 (n + 1)

end A194737

/-! ## A194737.P11907540907441093561

`A194735(A003151(n+1))`
-/

namespace A194737.P11907540907441093561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194735 (A003151 (n + 1)).toNat

end

end A194737.P11907540907441093561

namespace A194737

/-- `A194735(A003151(n+1))` -/
def P11907540907441093561.Spec : Prop :=
  ∀ n, P11907540907441093561.a n = A194737 (n + 1)

end A194737

/-! ## A194737.P11168435095905577193

`A194735(A054071(n+1)+2*n+1)`
-/

namespace A194737.P11168435095905577193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194735 (A054071 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A194737.P11168435095905577193

namespace A194737

/-- `A194735(A054071(n+1)+2*n+1)` -/
def P11168435095905577193.Spec : Prop :=
  ∀ n, P11168435095905577193.a n = A194737 (n + 1)

end A194737

/-! ## A194737.P18005464462598511176

`A194736(A187975(n+1))-1`
-/

namespace A194737.P18005464462598511176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194736 (A187975 (n + 1)).toNat - 1

end

end A194737.P18005464462598511176

namespace A194737

/-- `A194736(A187975(n+1))-1` -/
def P18005464462598511176.Spec : Prop :=
  ∀ n, P18005464462598511176.a n = A194737 (n + 1)

end A194737

/-! ## A194737.P3970680643803733408

`A194735(A187975(n+1))`
-/

namespace A194737.P3970680643803733408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194735 (A187975 (n + 1)).toNat

end

end A194737.P3970680643803733408

namespace A194737

/-- `A194735(A187975(n+1))` -/
def P3970680643803733408.Spec : Prop :=
  ∀ n, P3970680643803733408.a n = A194737 (n + 1)

end A194737

/-! ## A194737.P8456076353252731953

`A070198(n)%A054072(n+1)`
-/

namespace A194737.P8456076353252731953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A054072 (n + 1))

end

end A194737.P8456076353252731953

namespace A194737

/-- `A070198(n)%A054072(n+1)` -/
def P8456076353252731953.Spec : Prop :=
  ∀ n, P8456076353252731953.a n = A194737 (n + 1)

end A194737

/-! ## A194737.P7628629417028649473

`A079782(n+1)%A054072(n+1)`
-/

namespace A194737.P7628629417028649473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A054072 (n + 1))

end

end A194737.P7628629417028649473

namespace A194737

/-- `A079782(n+1)%A054072(n+1)` -/
def P7628629417028649473.Spec : Prop :=
  ∀ n, P7628629417028649473.a n = A194737 (n + 1)

end A194737

/-! ## A194737.P8767663377528788915

`A083685(n+1)%A054072(n+1)`
-/

namespace A194737.P8767663377528788915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A054072 (n + 1))

end

end A194737.P8767663377528788915

namespace A194737

/-- `A083685(n+1)%A054072(n+1)` -/
def P8767663377528788915.Spec : Prop :=
  ∀ n, P8767663377528788915.a n = A194737 (n + 1)

end A194737

/-! ## A194737.P4022248617751798451

`A121934(n+1)%A054072(n+1)`
-/

namespace A194737.P4022248617751798451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A054072 (n + 1))

end

end A194737.P4022248617751798451

namespace A194737

/-- `A121934(n+1)%A054072(n+1)` -/
def P4022248617751798451.Spec : Prop :=
  ∀ n, P4022248617751798451.a n = A194737 (n + 1)

end A194737

/-! ## A194737.P15997257714749451275

`A005408(n)-(A004736(A054075(n+1))+n)`
-/

namespace A194737.P15997257714749451275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - (A004736 (A054075 (n + 1)).toNat + (n : ℤ))

end

end A194737.P15997257714749451275

namespace A194737

/-- `A005408(n)-(A004736(A054075(n+1))+n)` -/
def P15997257714749451275.Spec : Prop :=
  ∀ n, P15997257714749451275.a n = A194737 (n + 1)

end A194737

/-! ## A194737.P1450309846853484835

`n+2-A004736(A054075(n+1)+n+1)`
-/

namespace A194737.P1450309846853484835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A004736 (A054075 (n + 1) + (n : ℤ) + 1).toNat

end

end A194737.P1450309846853484835

namespace A194737

/-- `n+2-A004736(A054075(n+1)+n+1)` -/
def P1450309846853484835.Spec : Prop :=
  ∀ n, P1450309846853484835.a n = A194737 (n + 1)

end A194737

/-!
# A194738: Number of k such that {k*sqrt(3)} < {n*sqrt(3)}, where { } = fractional part.

The programs for A194738, the canonical program `A194738.P10040233235958943936` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194738 has offset 1).

The definition of A194738 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194738.P974350647265465017

`A194741(n+1)+1`
-/

namespace A194738.P974350647265465017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194741 (n + 1) + 1

end

end A194738.P974350647265465017

namespace A194738

/-- `A194741(n+1)+1` -/
def P974350647265465017.Spec : Prop :=
  ∀ n, P974350647265465017.a n = A194738 (n + 1)

theorem P974350647265465017.correct : P974350647265465017.Spec := by
  intro n
  simp only [A194738, Nat.add_sub_cancel, A194738.P974350647265465017.a, A194738.P10040233235958943936.f1, A194738.P10040233235958943936.a, A194741, A194741.P14653812947197566281.a, A198081, A198081.P4251584572868697765.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A194738

/-! ## A194738.P4000216009027874100

`1-A194739(n+1)+n`
-/

namespace A194738.P4000216009027874100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A194739 (n + 1) + (n : ℤ)

end

end A194738.P4000216009027874100

namespace A194738

/-- `1-A194739(n+1)+n` -/
def P4000216009027874100.Spec : Prop :=
  ∀ n, P4000216009027874100.a n = A194738 (n + 1)

theorem P4000216009027874100.correct : P4000216009027874100.Spec := by
  intro n
  simp only [A194738, Nat.add_sub_cancel, A194738.P4000216009027874100.a, A194738.P10040233235958943936.f1, A194738.P10040233235958943936.a, A194739, A194739.P17582938423262329083.a, A198081, A198081.P4251584572868697765.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A194738

/-! ## A194738.P16714310855505192796

`2-A194740(n+1)+n`
-/

namespace A194738.P16714310855505192796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A194740 (n + 1) + (n : ℤ)

end

end A194738.P16714310855505192796

namespace A194738

/-- `2-A194740(n+1)+n` -/
def P16714310855505192796.Spec : Prop :=
  ∀ n, P16714310855505192796.a n = A194738 (n + 1)

theorem P16714310855505192796.correct : P16714310855505192796.Spec := by
  intro n
  simp only [A194738, Nat.add_sub_cancel, A194738.P16714310855505192796.a, A194738.P10040233235958943936.f1, A194738.P10040233235958943936.a, A194740, A194740.P1783803332448557360.a, A198081, A198081.P4251584572868697765.a, A194739, A194739.P17582938423262329083.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A194738

/-! ## A194738.P10040233235958943936

`∑[2*A198081(n+1)]%(n+2)+1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A194738

/-- `∑[2*A198081(n+1)]%(n+2)+1` -/
def P10040233235958943936.Spec : Prop :=
  ∀ n, P10040233235958943936.a n = A194738 (n + 1)

theorem P10040233235958943936.correct : P10040233235958943936.Spec := by
  intro n
  simp only [A194738, Nat.add_sub_cancel]

end A194738

/-! ## A194738.P5245190016289725753

`1-(n-2*n)-A194739(1-(n-2*n))`
-/

namespace A194738.P5245190016289725753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n : ℤ) - (2 * n : ℤ)) - A194739 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat

end

end A194738.P5245190016289725753

namespace A194738

/-- `1-(n-2*n)-A194739(1-(n-2*n))` -/
def P5245190016289725753.Spec : Prop :=
  ∀ n, P5245190016289725753.a n = A194738 (n + 1)

end A194738

/-! ## A194738.P7348170805581668304

`A022958(A194740(n+1))+n`
-/

namespace A194738.P7348170805581668304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022958 (A194740 (n + 1)).toNat + (n : ℤ)

end

end A194738.P7348170805581668304

namespace A194738

/-- `A022958(A194740(n+1))+n` -/
def P7348170805581668304.Spec : Prop :=
  ∀ n, P7348170805581668304.a n = A194738 (n + 1)

end A194738

/-! ## A194738.P4766761006558228961

`A024000(A194739(n+1))+n`
-/

namespace A194738.P4766761006558228961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A194739 (n + 1)).toNat + (n : ℤ)

end

end A194738.P4766761006558228961

namespace A194738

/-- `A024000(A194739(n+1))+n` -/
def P4766761006558228961.Spec : Prop :=
  ∀ n, P4766761006558228961.a n = A194738 (n + 1)

end A194738

/-! ## A194738.P3622230931493980234

`∑[2*A188069(n+2)]%(n+2)+1`
-/

namespace A194738.P3622230931493980234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A188069 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 2 : ℤ) + 1

end

end A194738.P3622230931493980234

namespace A194738

/-- `∑[2*A188069(n+2)]%(n+2)+1` -/
def P3622230931493980234.Spec : Prop :=
  ∀ n, P3622230931493980234.a n = A194738 (n + 1)

end A194738

/-! ## A194738.P1990280485625794051

`∑[A005408(A022838(n+1))]%(n+2)`
-/

namespace A194738.P1990280485625794051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A022838 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 2 : ℤ)

end

end A194738.P1990280485625794051

namespace A194738

/-- `∑[A005408(A022838(n+1))]%(n+2)` -/
def P1990280485625794051.Spec : Prop :=
  ∀ n, P1990280485625794051.a n = A194738 (n + 1)

end A194738

/-! ## A194738.P12638215098312017970

`A004736(A194740(n+1)+A000217(n))`
-/

namespace A194738.P12638215098312017970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A194740 (n + 1) + A000217 n).toNat

end

end A194738.P12638215098312017970

namespace A194738

/-- `A004736(A194740(n+1)+A000217(n))` -/
def P12638215098312017970.Spec : Prop :=
  ∀ n, P12638215098312017970.a n = A194738 (n + 1)

end A194738

/-!
# A194739: Number of k such that {k*sqrt(3)} > {n*sqrt(3)}, where { } = fractional part.

The programs for A194739, the canonical program `A194739.P17582938423262329083` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194739 has offset 1).

The definition of A194739 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194739.P322646480219583491

`A194740(n+1)-1`
-/

namespace A194739.P322646480219583491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194740 (n + 1) - 1

end

end A194739.P322646480219583491

namespace A194739

/-- `A194740(n+1)-1` -/
def P322646480219583491.Spec : Prop :=
  ∀ n, P322646480219583491.a n = A194739 (n + 1)

theorem P322646480219583491.correct : P322646480219583491.Spec := by
  intro n
  simp only [A194739, Nat.add_sub_cancel, A194739.P322646480219583491.a, A194739.P17582938423262329083.a, A194738, A194738.P10040233235958943936.f1, A194738.P10040233235958943936.a, A194740, A194740.P1783803332448557360.a, A198081, A198081.P4251584572868697765.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A194739

/-! ## A194739.P4371697371240118429

`n-A194741(n+1)`
-/

namespace A194739.P4371697371240118429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A194741 (n + 1)

end

end A194739.P4371697371240118429

namespace A194739

/-- `n-A194741(n+1)` -/
def P4371697371240118429.Spec : Prop :=
  ∀ n, P4371697371240118429.a n = A194739 (n + 1)

theorem P4371697371240118429.correct : P4371697371240118429.Spec := by
  intro n
  simp only [A194739, Nat.add_sub_cancel, A194739.P4371697371240118429.a, A194739.P17582938423262329083.a, A194738, A194738.P10040233235958943936.f1, A194738.P10040233235958943936.a, A194741, A194741.P14653812947197566281.a, A198081, A198081.P4251584572868697765.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A194739

/-! ## A194739.P17582938423262329083

`1-A194738(n+1)+n`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A194739

/-- `1-A194738(n+1)+n` -/
def P17582938423262329083.Spec : Prop :=
  ∀ n, P17582938423262329083.a n = A194739 (n + 1)

theorem P17582938423262329083.correct : P17582938423262329083.Spec := by
  intro n
  simp only [A194739, Nat.add_sub_cancel]

end A194739

/-! ## A194739.P6269229675884991561

`abs(A194740(n-or(n, -1))-1)`
-/

namespace A194739.P6269229675884991561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A194740 ((n : ℤ) - Int.lor (n : ℤ) (-1)).toNat - 1|

end

end A194739.P6269229675884991561

namespace A194739

/-- `abs(A194740(n-or(n, -1))-1)` -/
def P6269229675884991561.Spec : Prop :=
  ∀ n, P6269229675884991561.a n = A194739 (n + 1)

end A194739

/-! ## A194739.P7422403294473940588

`∑[2*A195120(n+1)]%(n+2)`
-/

namespace A194739.P7422403294473940588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A195120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 2 : ℤ)

end

end A194739.P7422403294473940588

namespace A194739

/-- `∑[2*A195120(n+1)]%(n+2)` -/
def P7422403294473940588.Spec : Prop :=
  ∀ n, P7422403294473940588.a n = A194739 (n + 1)

end A194739

/-! ## A194739.P1112189812523176423

`(n*∑[A182778(n+1)])%(n+2)`
-/

namespace A194739.P1112189812523176423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)) (n + 2 : ℤ)

end

end A194739.P1112189812523176423

namespace A194739

/-- `(n*∑[A182778(n+1)])%(n+2)` -/
def P1112189812523176423.Spec : Prop :=
  ∀ n, P1112189812523176423.a n = A194739 (n + 1)

end A194739

/-! ## A194739.P2495425449493283307

`n-∑[2*A198081(n+1)]%(n+2)`
-/

namespace A194739.P2495425449493283307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A198081 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 2 : ℤ)

end

end A194739.P2495425449493283307

namespace A194739

/-- `n-∑[2*A198081(n+1)]%(n+2)` -/
def P2495425449493283307.Spec : Prop :=
  ∀ n, P2495425449493283307.a n = A194739 (n + 1)

theorem P2495425449493283307.correct : P2495425449493283307.Spec := by
  intro n
  simp only [A194739, Nat.add_sub_cancel, A194739.P2495425449493283307.f1, A194739.P2495425449493283307.a, A194739.P17582938423262329083.a, A194738, A194738.P10040233235958943936.f1, A194738.P10040233235958943936.a, A198081, A198081.P4251584572868697765.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A194739

/-! ## A194739.P10257014016701177347

`1-(n-2*n)-A194738(1-(n-2*n))`
-/

namespace A194739.P10257014016701177347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n : ℤ) - (2 * n : ℤ)) - A194738 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat

end

end A194739.P10257014016701177347

namespace A194739

/-- `1-(n-2*n)-A194738(1-(n-2*n))` -/
def P10257014016701177347.Spec : Prop :=
  ∀ n, P10257014016701177347.a n = A194739 (n + 1)

end A194739

/-! ## A194739.P2054801709587767448

`A023443(A194740(n+1))`
-/

namespace A194739.P2054801709587767448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A194740 (n + 1)).toNat

end

end A194739.P2054801709587767448

namespace A194739

/-- `A023443(A194740(n+1))` -/
def P2054801709587767448.Spec : Prop :=
  ∀ n, P2054801709587767448.a n = A194739 (n + 1)

end A194739

/-! ## A194739.P12234474931095158760

`n-A023443(A194738(n+1))`
-/

namespace A194739.P12234474931095158760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 (A194738 (n + 1)).toNat

end

end A194739.P12234474931095158760

namespace A194739

/-- `n-A023443(A194738(n+1))` -/
def P12234474931095158760.Spec : Prop :=
  ∀ n, P12234474931095158760.a n = A194739 (n + 1)

end A194739

/-! ## A194739.P11882218506770244644

`n-∑[2*A188069(n+2)]%(n+2)`
-/

namespace A194739.P11882218506770244644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A188069 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 2 : ℤ)

end

end A194739.P11882218506770244644

namespace A194739

/-- `n-∑[2*A188069(n+2)]%(n+2)` -/
def P11882218506770244644.Spec : Prop :=
  ∀ n, P11882218506770244644.a n = A194739 (n + 1)

end A194739

/-! ## A194739.P8389426053792351714

`A070198(n)%A194740(n+1)`
-/

namespace A194739.P8389426053792351714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A194740 (n + 1))

end

end A194739.P8389426053792351714

namespace A194739

/-- `A070198(n)%A194740(n+1)` -/
def P8389426053792351714.Spec : Prop :=
  ∀ n, P8389426053792351714.a n = A194739 (n + 1)

end A194739

/-! ## A194739.P13647774807710256270

`A079782(n+1)%A194740(n+1)`
-/

namespace A194739.P13647774807710256270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A194740 (n + 1))

end

end A194739.P13647774807710256270

namespace A194739

/-- `A079782(n+1)%A194740(n+1)` -/
def P13647774807710256270.Spec : Prop :=
  ∀ n, P13647774807710256270.a n = A194739 (n + 1)

end A194739

/-! ## A194739.P6716195930293739364

`A083685(n+1)%A194740(n+1)`
-/

namespace A194739.P6716195930293739364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A194740 (n + 1))

end

end A194739.P6716195930293739364

namespace A194739

/-- `A083685(n+1)%A194740(n+1)` -/
def P6716195930293739364.Spec : Prop :=
  ∀ n, P6716195930293739364.a n = A194739 (n + 1)

end A194739

/-! ## A194739.P2406038505608569509

`A121934(n+1)%A194740(n+1)`
-/

namespace A194739.P2406038505608569509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A194740 (n + 1))

end

end A194739.P2406038505608569509

namespace A194739

/-- `A121934(n+1)%A194740(n+1)` -/
def P2406038505608569509.Spec : Prop :=
  ∀ n, P2406038505608569509.a n = A194739 (n + 1)

end A194739

/-!
# A194740: Number of k such that {-k*sqrt(3)} < {-n*sqrt(3)}, where { } = fractional part.

The programs for A194740, the canonical program `A194740.P1783803332448557360` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194740 has offset 1).

The definition of A194740 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194740.P1783803332448557360

`A194739(n+1)+1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A194740

/-- `A194739(n+1)+1` -/
def P1783803332448557360.Spec : Prop :=
  ∀ n, P1783803332448557360.a n = A194740 (n + 1)

theorem P1783803332448557360.correct : P1783803332448557360.Spec := by
  intro n
  simp only [A194740, Nat.add_sub_cancel]

end A194740

/-! ## A194740.P1414697119114324135

`1-A194741(n+1)+n`
-/

namespace A194740.P1414697119114324135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A194741 (n + 1) + (n : ℤ)

end

end A194740.P1414697119114324135

namespace A194740

/-- `1-A194741(n+1)+n` -/
def P1414697119114324135.Spec : Prop :=
  ∀ n, P1414697119114324135.a n = A194740 (n + 1)

theorem P1414697119114324135.correct : P1414697119114324135.Spec := by
  intro n
  simp only [A194740, Nat.add_sub_cancel, A194740.P1414697119114324135.a, A194740.P1783803332448557360.a, A194739, A194739.P17582938423262329083.a, A194741, A194741.P14653812947197566281.a, A194738, A194738.P10040233235958943936.f1, A194738.P10040233235958943936.a, A198081, A198081.P4251584572868697765.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A194740

/-! ## A194740.P8074149403392073989

`2-A194738(n+1)+n`
-/

namespace A194740.P8074149403392073989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A194738 (n + 1) + (n : ℤ)

end

end A194740.P8074149403392073989

namespace A194740

/-- `2-A194738(n+1)+n` -/
def P8074149403392073989.Spec : Prop :=
  ∀ n, P8074149403392073989.a n = A194740 (n + 1)

theorem P8074149403392073989.correct : P8074149403392073989.Spec := by
  intro n
  simp only [A194740, Nat.add_sub_cancel, A194740.P8074149403392073989.a, A194740.P1783803332448557360.a, A194738, A194738.P10040233235958943936.f1, A194738.P10040233235958943936.a, A194739, A194739.P17582938423262329083.a, A198081, A198081.P4251584572868697765.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A194740

/-! ## A194740.P16961860255240937173

`∑[2*A195120(n+1)]%(n+2)+1`
-/

namespace A194740.P16961860255240937173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A195120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 2 : ℤ) + 1

end

end A194740.P16961860255240937173

namespace A194740

/-- `∑[2*A195120(n+1)]%(n+2)+1` -/
def P16961860255240937173.Spec : Prop :=
  ∀ n, P16961860255240937173.a n = A194740 (n + 1)

end A194740

/-! ## A194740.P4421265949617651788

`n-log2(1/2)-A194741(n-log2(1/2))`
-/

namespace A194740.P4421265949617651788
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ) - (A194741 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat : ℝ)

end

end A194740.P4421265949617651788

namespace A194740

/-- `n-log2(1/2)-A194741(n-log2(1/2))` -/
def P4421265949617651788.Spec : Prop :=
  ∀ n, P4421265949617651788.a n = (A194740 (n + 1) : ℝ)

end A194740

/-! ## A194740.P8656391073809370800

`n+1-∑[2*A198081(n+1)]%(n+2)`
-/

namespace A194740.P8656391073809370800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A198081 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 2 : ℤ)

end

end A194740.P8656391073809370800

namespace A194740

/-- `n+1-∑[2*A198081(n+1)]%(n+2)` -/
def P8656391073809370800.Spec : Prop :=
  ∀ n, P8656391073809370800.a n = A194740 (n + 1)

theorem P8656391073809370800.correct : P8656391073809370800.Spec := by
  intro n
  simp only [A194740, Nat.add_sub_cancel, A194740.P8656391073809370800.f1, A194740.P8656391073809370800.a, A194740.P1783803332448557360.a, A194739, A194739.P17582938423262329083.a, A198081, A198081.P4251584572868697765.a, A194738, A194738.P10040233235958943936.f1, A194738.P10040233235958943936.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A194740

/-! ## A194740.P2077902158764569861

`A022958(A194738(n+1))+n`
-/

namespace A194740.P2077902158764569861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022958 (A194738 (n + 1)).toNat + (n : ℤ)

end

end A194740.P2077902158764569861

namespace A194740

/-- `A022958(A194738(n+1))+n` -/
def P2077902158764569861.Spec : Prop :=
  ∀ n, P2077902158764569861.a n = A194740 (n + 1)

end A194740

/-! ## A194740.P9272818032972875083

`A024000(A194741(n+1))+n`
-/

namespace A194740.P9272818032972875083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A194741 (n + 1)).toNat + (n : ℤ)

end

end A194740.P9272818032972875083

namespace A194740

/-- `A024000(A194741(n+1))+n` -/
def P9272818032972875083.Spec : Prop :=
  ∀ n, P9272818032972875083.a n = A194740 (n + 1)

end A194740

/-! ## A194740.P13369245303964100292

`1-∑[2*A188069(n+2)]%(n+2)+n`
-/

namespace A194740.P13369245303964100292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A188069 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 2 : ℤ) + (n : ℤ)

end

end A194740.P13369245303964100292

namespace A194740

/-- `1-∑[2*A188069(n+2)]%(n+2)+n` -/
def P13369245303964100292.Spec : Prop :=
  ∀ n, P13369245303964100292.a n = A194740 (n + 1)

end A194740

/-! ## A194740.P1504565550049697133

`A004736(A194738(n+1)+∑[n])`
-/

namespace A194740.P1504565550049697133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A194738 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A194740.P1504565550049697133

namespace A194740

/-- `A004736(A194738(n+1)+∑[n])` -/
def P1504565550049697133.Spec : Prop :=
  ∀ n, P1504565550049697133.a n = A194740 (n + 1)

end A194740

/-!
# A194741: Number of k such that {-k*sqrt(3)} > {-n*sqrt(3)}, where { } = fractional part.

The programs for A194741, the canonical program `A194741.P14653812947197566281` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194741 has offset 1).

The definition of A194741 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194741.P14653812947197566281

`A194738(n+1)-1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A194741

/-- `A194738(n+1)-1` -/
def P14653812947197566281.Spec : Prop :=
  ∀ n, P14653812947197566281.a n = A194741 (n + 1)

theorem P14653812947197566281.correct : P14653812947197566281.Spec := by
  intro n
  simp only [A194741, Nat.add_sub_cancel]

end A194741

/-! ## A194741.P2886618107476101156

`n-A194739(n+1)`
-/

namespace A194741.P2886618107476101156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A194739 (n + 1)

end

end A194741.P2886618107476101156

namespace A194741

/-- `n-A194739(n+1)` -/
def P2886618107476101156.Spec : Prop :=
  ∀ n, P2886618107476101156.a n = A194741 (n + 1)

theorem P2886618107476101156.correct : P2886618107476101156.Spec := by
  intro n
  simp only [A194741, Nat.add_sub_cancel, A194741.P2886618107476101156.a, A194741.P14653812947197566281.a, A194738, A194738.P10040233235958943936.f1, A194738.P10040233235958943936.a, A194739, A194739.P17582938423262329083.a, A198081, A198081.P4251584572868697765.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A194741

/-! ## A194741.P14591426107052616448

`1-A194740(n+1)+n`
-/

namespace A194741.P14591426107052616448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A194740 (n + 1) + (n : ℤ)

end

end A194741.P14591426107052616448

namespace A194741

/-- `1-A194740(n+1)+n` -/
def P14591426107052616448.Spec : Prop :=
  ∀ n, P14591426107052616448.a n = A194741 (n + 1)

theorem P14591426107052616448.correct : P14591426107052616448.Spec := by
  intro n
  simp only [A194741, Nat.add_sub_cancel, A194741.P14591426107052616448.a, A194741.P14653812947197566281.a, A194738, A194738.P10040233235958943936.f1, A194738.P10040233235958943936.a, A194740, A194740.P1783803332448557360.a, A194739, A194739.P17582938423262329083.a, A198081, A198081.P4251584572868697765.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A194741

/-! ## A194741.P13824769925701844528

`∑[2*A198081(n+1)]%(n+2)`
-/

namespace A194741.P13824769925701844528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A198081 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 2 : ℤ)

end

end A194741.P13824769925701844528

namespace A194741

/-- `∑[2*A198081(n+1)]%(n+2)` -/
def P13824769925701844528.Spec : Prop :=
  ∀ n, P13824769925701844528.a n = A194741 (n + 1)

theorem P13824769925701844528.correct : P13824769925701844528.Spec := by
  intro n
  simp only [A194741, Nat.add_sub_cancel, A194741.P13824769925701844528.f1, A194741.P13824769925701844528.a, A194741.P14653812947197566281.a, A194738, A194738.P10040233235958943936.f1, A194738.P10040233235958943936.a, A198081, A198081.P4251584572868697765.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A194741

/-! ## A194741.P8969331747132662522

`n-∑[2*A195120(n+1)]%(n+2)`
-/

namespace A194741.P8969331747132662522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A195120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 2 : ℤ)

end

end A194741.P8969331747132662522

namespace A194741

/-- `n-∑[2*A195120(n+1)]%(n+2)` -/
def P8969331747132662522.Spec : Prop :=
  ∀ n, P8969331747132662522.a n = A194741 (n + 1)

end A194741

/-! ## A194741.P2535988535712197497

`A023443(A194738(n+1))`
-/

namespace A194741.P2535988535712197497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A194738 (n + 1)).toNat

end

end A194741.P2535988535712197497

namespace A194741

/-- `A023443(A194738(n+1))` -/
def P2535988535712197497.Spec : Prop :=
  ∀ n, P2535988535712197497.a n = A194741 (n + 1)

end A194741

/-! ## A194741.P636335056503390077

`n-A023443(A194740(n+1))`
-/

namespace A194741.P636335056503390077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 (A194740 (n + 1)).toNat

end

end A194741.P636335056503390077

namespace A194741

/-- `n-A023443(A194740(n+1))` -/
def P636335056503390077.Spec : Prop :=
  ∀ n, P636335056503390077.a n = A194741 (n + 1)

end A194741

/-! ## A194741.P2365528730394253084

`∑[A198081(n)-n*Δ[A198081(n)]]`
-/

namespace A194741.P2365528730394253084
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198081 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198081 n - (n : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194741.P2365528730394253084

namespace A194741

/-- `∑[A198081(n)-n*Δ[A198081(n)]]` -/
def P2365528730394253084.Spec : Prop :=
  ∀ n, P2365528730394253084.a n = A194741 (n + 1)

end A194741

/-! ## A194741.P5078898723109810816

`∑[2*A188069(n+2)]%(n+2)`
-/

namespace A194741.P5078898723109810816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A188069 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 2 : ℤ)

end

end A194741.P5078898723109810816

namespace A194741

/-- `∑[2*A188069(n+2)]%(n+2)` -/
def P5078898723109810816.Spec : Prop :=
  ∀ n, P5078898723109810816.a n = A194741 (n + 1)

end A194741

/-! ## A194741.P9950903334097717801

`∑[A215781(n+1)+A215781(n)]%(n+1)`
-/

namespace A194741.P9950903334097717801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215781 (n + 1) + A215781 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A194741.P9950903334097717801

namespace A194741

/-- `∑[A215781(n+1)+A215781(n)]%(n+1)` -/
def P9950903334097717801.Spec : Prop :=
  ∀ n, P9950903334097717801.a n = A194741 (n + 1)

end A194741

/-! ## A194741.P11802033741377751896

`∑[A005408(A022838(n+1))]%(n+2)-1`
-/

namespace A194741.P11802033741377751896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A022838 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 2 : ℤ) - 1

end

end A194741.P11802033741377751896

namespace A194741

/-- `∑[A005408(A022838(n+1))]%(n+2)-1` -/
def P11802033741377751896.Spec : Prop :=
  ∀ n, P11802033741377751896.a n = A194741 (n + 1)

end A194741

/-! ## A194741.P9231666873798524797

`∑[A004273(A198081(n))]%A022838(n+1)`
-/

namespace A194741.P9231666873798524797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A198081 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A022838 (n + 1))

end

end A194741.P9231666873798524797

namespace A194741

/-- `∑[A004273(A198081(n))]%A022838(n+1)` -/
def P9231666873798524797.Spec : Prop :=
  ∀ n, P9231666873798524797.a n = A194741 (n + 1)

end A194741

/-! ## A194741.P14842003595625055263

`∑[A103517(A182778(n+1))]%(n+2)`
-/

namespace A194741.P14842003595625055263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A182778 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 2 : ℤ)

end

end A194741.P14842003595625055263

namespace A194741

/-- `∑[A103517(A182778(n+1))]%(n+2)` -/
def P14842003595625055263.Spec : Prop :=
  ∀ n, P14842003595625055263.a n = A194741 (n + 1)

end A194741

/-! ## A194741.P13374573252280956723

`A070198(n)%A194738(n+1)`
-/

namespace A194741.P13374573252280956723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A194738 (n + 1))

end

end A194741.P13374573252280956723

namespace A194741

/-- `A070198(n)%A194738(n+1)` -/
def P13374573252280956723.Spec : Prop :=
  ∀ n, P13374573252280956723.a n = A194741 (n + 1)

end A194741

/-! ## A194741.P13388557693886194212

`A079782(n+1)%A194738(n+1)`
-/

namespace A194741.P13388557693886194212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A194738 (n + 1))

end

end A194741.P13388557693886194212

namespace A194741

/-- `A079782(n+1)%A194738(n+1)` -/
def P13388557693886194212.Spec : Prop :=
  ∀ n, P13388557693886194212.a n = A194741 (n + 1)

end A194741

/-! ## A194741.P12528632104300231336

`A083685(n+1)%A194738(n+1)`
-/

namespace A194741.P12528632104300231336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A194738 (n + 1))

end

end A194741.P12528632104300231336

namespace A194741

/-- `A083685(n+1)%A194738(n+1)` -/
def P12528632104300231336.Spec : Prop :=
  ∀ n, P12528632104300231336.a n = A194741 (n + 1)

end A194741

/-! ## A194741.P3646078064405932617

`A121934(n+1)%A194738(n+1)`
-/

namespace A194741.P3646078064405932617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A194738 (n + 1))

end

end A194741.P3646078064405932617

namespace A194741

/-- `A121934(n+1)%A194738(n+1)` -/
def P3646078064405932617.Spec : Prop :=
  ∀ n, P3646078064405932617.a n = A194741 (n + 1)

end A194741

/-! ## A194741.P16766122456187117692

`∑[n+1]-A194842(∑[n+1])`
-/

namespace A194741.P16766122456187117692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A194842 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A194741.P16766122456187117692

namespace A194741

/-- `∑[n+1]-A194842(∑[n+1])` -/
def P16766122456187117692.Spec : Prop :=
  ∀ n, P16766122456187117692.a n = A194741 (n + 1)

end A194741

/-! ## A194741.P1329271267020075379

`A002260(A194839(∑[n+1]))-1`
-/

namespace A194741.P1329271267020075379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A194839 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat - 1

end

end A194741.P1329271267020075379

namespace A194741

/-- `A002260(A194839(∑[n+1]))-1` -/
def P1329271267020075379.Spec : Prop :=
  ∀ n, P1329271267020075379.a n = A194741 (n + 1)

end A194741

/-!
# A194742: Number of k such that {k*sqrt(5)} < {n*sqrt(5)}, where { } = fractional part.

The programs for A194742, the canonical program `A194742.P14049241962855359563` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194742 has offset 1).

The definition of A194742 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194742.P7629716885223665047

`A194745(n+1)+1`
-/

namespace A194742.P7629716885223665047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194745 (n + 1) + 1

end

end A194742.P7629716885223665047

namespace A194742

/-- `A194745(n+1)+1` -/
def P7629716885223665047.Spec : Prop :=
  ∀ n, P7629716885223665047.a n = A194742 (n + 1)

theorem P7629716885223665047.correct : P7629716885223665047.Spec := by
  intro n
  simp only [A194742, Nat.add_sub_cancel, A194742.P7629716885223665047.a, A194742.P14049241962855359563.a, A194110, A194110.P16949318337987914830.f1, A194110.P16949318337987914830.a, A194745, A194745.P9191396942374646438.a, A022839, A022839.P1029373569643495419.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A194742

/-! ## A194742.P5041254881854041597

`1-A194743(n+1)+n`
-/

namespace A194742.P5041254881854041597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A194743 (n + 1) + (n : ℤ)

end

end A194742.P5041254881854041597

namespace A194742

/-- `1-A194743(n+1)+n` -/
def P5041254881854041597.Spec : Prop :=
  ∀ n, P5041254881854041597.a n = A194742 (n + 1)

theorem P5041254881854041597.correct : P5041254881854041597.Spec := by
  intro n
  simp only [A194742, Nat.add_sub_cancel, A194742.P5041254881854041597.a, A194742.P14049241962855359563.a, A194110, A194110.P16949318337987914830.f1, A194110.P16949318337987914830.a, A194743, A194743.P6637608899086095242.a, A022839, A022839.P1029373569643495419.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A194742

/-! ## A194742.P3271749237029158742

`2-A194744(n+1)+n`
-/

namespace A194742.P3271749237029158742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A194744 (n + 1) + (n : ℤ)

end

end A194742.P3271749237029158742

namespace A194742

/-- `2-A194744(n+1)+n` -/
def P3271749237029158742.Spec : Prop :=
  ∀ n, P3271749237029158742.a n = A194742 (n + 1)

theorem P3271749237029158742.correct : P3271749237029158742.Spec := by
  intro n
  simp only [A194742, Nat.add_sub_cancel, A194742.P3271749237029158742.a, A194742.P14049241962855359563.a, A194110, A194110.P16949318337987914830.f1, A194110.P16949318337987914830.a, A194744, A194744.P9313095797038209416.a, A022839, A022839.P1029373569643495419.a, A194743, A194743.P6637608899086095242.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A194742

/-! ## A194742.P14049241962855359563

`n+1-(n*A194110(n+1))%(n+2)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A194742

/-- `n+1-(n*A194110(n+1))%(n+2)` -/
def P14049241962855359563.Spec : Prop :=
  ∀ n, P14049241962855359563.a n = A194742 (n + 1)

theorem P14049241962855359563.correct : P14049241962855359563.Spec := by
  intro n
  simp only [A194742, Nat.add_sub_cancel]

end A194742

/-! ## A194742.P2284490530083898380

`A024000(A194743(n+1))+n`
-/

namespace A194742.P2284490530083898380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A194743 (n + 1)).toNat + (n : ℤ)

end

end A194742.P2284490530083898380

namespace A194742

/-- `A024000(A194743(n+1))+n` -/
def P2284490530083898380.Spec : Prop :=
  ∀ n, P2284490530083898380.a n = A194742 (n + 1)

end A194742

/-! ## A194742.P1371981147000031316

`∑[2*A300763(n+1)]%(n+2)+1`
-/

namespace A194742.P1371981147000031316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A300763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 2 : ℤ) + 1

end

end A194742.P1371981147000031316

namespace A194742

/-- `∑[2*A300763(n+1)]%(n+2)+1` -/
def P1371981147000031316.Spec : Prop :=
  ∀ n, P1371981147000031316.a n = A194742 (n + 1)

end A194742

/-! ## A194742.P1709264560604529161

`∑[A284625(2*(n+1))]%(n+2)+1`
-/

namespace A194742.P1709264560604529161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284625 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 2 : ℤ) + 1

end

end A194742.P1709264560604529161

namespace A194742

/-- `∑[A284625(2*(n+1))]%(n+2)+1` -/
def P1709264560604529161.Spec : Prop :=
  ∀ n, P1709264560604529161.a n = A194742 (n + 1)

end A194742

/-! ## A194742.P5648911579949554689

`∑[A284621(2*n+3)]%(n+2)`
-/

namespace A194742.P5648911579949554689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284621 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 2 : ℤ)

end

end A194742.P5648911579949554689

namespace A194742

/-- `∑[A284621(2*n+3)]%(n+2)` -/
def P5648911579949554689.Spec : Prop :=
  ∀ n, P5648911579949554689.a n = A194742 (n + 1)

end A194742

/-! ## A194742.P5303683527461723289

`A194744(A004976(n+1))`
-/

namespace A194742.P5303683527461723289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194744 (A004976 (n + 1)).toNat

end

end A194742.P5303683527461723289

namespace A194742

/-- `A194744(A004976(n+1))` -/
def P5303683527461723289.Spec : Prop :=
  ∀ n, P5303683527461723289.a n = A194742 (n + 1)

end A194742

/-! ## A194742.P10226112951843423146

`A004736(A194744(n+1)+∑[n])`
-/

namespace A194742.P10226112951843423146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A194744 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A194742.P10226112951843423146

namespace A194742

/-- `A004736(A194744(n+1)+∑[n])` -/
def P10226112951843423146.Spec : Prop :=
  ∀ n, P10226112951843423146.a n = A194742 (n + 1)

end A194742

/-!
# A194743: Number of k such that {k*sqrt(5)} > {n*sqrt(5)}, where { } = fractional part.

The programs for A194743, the canonical program `A194743.P6637608899086095242` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194743 has offset 1).

The definition of A194743 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194743.P13182303092627220150

`A194744(n+1)-1`
-/

namespace A194743.P13182303092627220150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194744 (n + 1) - 1

end

end A194743.P13182303092627220150

namespace A194743

/-- `A194744(n+1)-1` -/
def P13182303092627220150.Spec : Prop :=
  ∀ n, P13182303092627220150.a n = A194743 (n + 1)

theorem P13182303092627220150.correct : P13182303092627220150.Spec := by
  intro n
  simp only [A194743, Nat.add_sub_cancel, A194743.P13182303092627220150.a, A194743.P6637608899086095242.a, A194742, A194742.P14049241962855359563.a, A194744, A194744.P9313095797038209416.a, A194110, A194110.P16949318337987914830.f1, A194110.P16949318337987914830.a, A022839, A022839.P1029373569643495419.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A194743

/-! ## A194743.P13849502429464587410

`n-A194745(n+1)`
-/

namespace A194743.P13849502429464587410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A194745 (n + 1)

end

end A194743.P13849502429464587410

namespace A194743

/-- `n-A194745(n+1)` -/
def P13849502429464587410.Spec : Prop :=
  ∀ n, P13849502429464587410.a n = A194743 (n + 1)

theorem P13849502429464587410.correct : P13849502429464587410.Spec := by
  intro n
  simp only [A194743, Nat.add_sub_cancel, A194743.P13849502429464587410.a, A194743.P6637608899086095242.a, A194742, A194742.P14049241962855359563.a, A194745, A194745.P9191396942374646438.a, A194110, A194110.P16949318337987914830.f1, A194110.P16949318337987914830.a, A022839, A022839.P1029373569643495419.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A194743

/-! ## A194743.P6637608899086095242

`1-A194742(n+1)+n`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A194743

/-- `1-A194742(n+1)+n` -/
def P6637608899086095242.Spec : Prop :=
  ∀ n, P6637608899086095242.a n = A194743 (n + 1)

theorem P6637608899086095242.correct : P6637608899086095242.Spec := by
  intro n
  simp only [A194743, Nat.add_sub_cancel]

end A194743

/-! ## A194743.P10032956124955224546

`(n*A194110(n+1))%(n+2)`
-/

namespace A194743.P10032956124955224546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A194110 (n + 1)) (n + 2 : ℤ)

end

end A194743.P10032956124955224546

namespace A194743

/-- `(n*A194110(n+1))%(n+2)` -/
def P10032956124955224546.Spec : Prop :=
  ∀ n, P10032956124955224546.a n = A194743 (n + 1)

theorem P10032956124955224546.correct : P10032956124955224546.Spec := by
  intro n
  simp only [A194743, Nat.add_sub_cancel, A194743.P10032956124955224546.a, A194743.P6637608899086095242.a, A194110, A194110.P16949318337987914830.f1, A194110.P16949318337987914830.a, A194742, A194742.P14049241962855359563.a, A022839, A022839.P1029373569643495419.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A194743

/-! ## A194743.P12024523974506533235

`(n*∑[A001961(n+1)])%(n+2)`
-/

namespace A194743.P12024523974506533235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)) (n + 2 : ℤ)

end

end A194743.P12024523974506533235

namespace A194743

/-- `(n*∑[A001961(n+1)])%(n+2)` -/
def P12024523974506533235.Spec : Prop :=
  ∀ n, P12024523974506533235.a n = A194743 (n + 1)

end A194743

/-! ## A194743.P7239128989956513714

`∑[∑[6-A188189(n+1)]]%(n+1)`
-/

namespace A194743.P7239128989956513714
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - A188189 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A194743.P7239128989956513714

namespace A194743

/-- `∑[∑[6-A188189(n+1)]]%(n+1)` -/
def P7239128989956513714.Spec : Prop :=
  ∀ n, P7239128989956513714.a n = A194743 (n + 1)

end A194743

/-! ## A194743.P6135464029920633614

`(n*∑[A005206(2*n+1)])%(n+2)`
-/

namespace A194743.P6135464029920633614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)) (n + 2 : ℤ)

end

end A194743.P6135464029920633614

namespace A194743

/-- `(n*∑[A005206(2*n+1)])%(n+2)` -/
def P6135464029920633614.Spec : Prop :=
  ∀ n, P6135464029920633614.a n = A194743 (n + 1)

end A194743

/-! ## A194743.P4425014840239474045

`A023443(A194744(n+1))`
-/

namespace A194743.P4425014840239474045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A194744 (n + 1)).toNat

end

end A194743.P4425014840239474045

namespace A194743

/-- `A023443(A194744(n+1))` -/
def P4425014840239474045.Spec : Prop :=
  ∀ n, P4425014840239474045.a n = A194743 (n + 1)

end A194743

/-! ## A194743.P15508422364603297560

`∑[A195172(n)-n*Δ[A195172(n)]]`
-/

namespace A194743.P15508422364603297560
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195172 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195172 n - (n : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194743.P15508422364603297560

namespace A194743

/-- `∑[A195172(n)-n*Δ[A195172(n)]]` -/
def P15508422364603297560.Spec : Prop :=
  ∀ n, P15508422364603297560.a n = A194743 (n + 1)

end A194743

/-! ## A194743.P697834583956443493

`∑[A195173(n)-n*Δ[A195173(n)]]`
-/

namespace A194743.P697834583956443493
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195173 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195173 n - (n : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194743.P697834583956443493

namespace A194743

/-- `∑[A195173(n)-n*Δ[A195173(n)]]` -/
def P697834583956443493.Spec : Prop :=
  ∀ n, P697834583956443493.a n = A194743 (n + 1)

end A194743

/-! ## A194743.P16717421004072728480

`n-∑[2*A300763(n+1)]%(n+2)`
-/

namespace A194743.P16717421004072728480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A300763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 2 : ℤ)

end

end A194743.P16717421004072728480

namespace A194743

/-- `n-∑[2*A300763(n+1)]%(n+2)` -/
def P16717421004072728480.Spec : Prop :=
  ∀ n, P16717421004072728480.a n = A194743 (n + 1)

end A194743

/-! ## A194743.P12920320622991253248

`∑[n*Δ[A004976(n)]-A004976(n)]`
-/

namespace A194743.P12920320622991253248
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004976 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f2 (n + 1) - f2 n) - A004976 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194743.P12920320622991253248

namespace A194743

/-- `∑[n*Δ[A004976(n)]-A004976(n)]` -/
def P12920320622991253248.Spec : Prop :=
  ∀ n, P12920320622991253248.a n = A194743 (n + 1)

end A194743

/-! ## A194743.P10152483791923598237

`n-∑[A284625(2*(n+1))]%(n+2)`
-/

namespace A194743.P10152483791923598237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284625 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 2 : ℤ)

end

end A194743.P10152483791923598237

namespace A194743

/-- `n-∑[A284625(2*(n+1))]%(n+2)` -/
def P10152483791923598237.Spec : Prop :=
  ∀ n, P10152483791923598237.a n = A194743 (n + 1)

end A194743

/-! ## A194743.P7271781735752821245

`A194745(A004958(n+1))`
-/

namespace A194743.P7271781735752821245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194745 (A004958 (n + 1)).toNat

end

end A194743.P7271781735752821245

namespace A194743

/-- `A194745(A004958(n+1))` -/
def P7271781735752821245.Spec : Prop :=
  ∀ n, P7271781735752821245.a n = A194743 (n + 1)

end A194743

/-! ## A194743.P7076448555951064711

`A070198(n)%A194744(n+1)`
-/

namespace A194743.P7076448555951064711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A194744 (n + 1))

end

end A194743.P7076448555951064711

namespace A194743

/-- `A070198(n)%A194744(n+1)` -/
def P7076448555951064711.Spec : Prop :=
  ∀ n, P7076448555951064711.a n = A194743 (n + 1)

end A194743

/-! ## A194743.P135537229137662844

`A079782(n+1)%A194744(n+1)`
-/

namespace A194743.P135537229137662844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A194744 (n + 1))

end

end A194743.P135537229137662844

namespace A194743

/-- `A079782(n+1)%A194744(n+1)` -/
def P135537229137662844.Spec : Prop :=
  ∀ n, P135537229137662844.a n = A194743 (n + 1)

end A194743

/-! ## A194743.P1638113216285736075

`A083685(n+1)%A194744(n+1)`
-/

namespace A194743.P1638113216285736075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A194744 (n + 1))

end

end A194743.P1638113216285736075

namespace A194743

/-- `A083685(n+1)%A194744(n+1)` -/
def P1638113216285736075.Spec : Prop :=
  ∀ n, P1638113216285736075.a n = A194743 (n + 1)

end A194743

/-! ## A194743.P4903781528458143760

`A121934(n+1)%A194744(n+1)`
-/

namespace A194743.P4903781528458143760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A194744 (n + 1))

end

end A194743.P4903781528458143760

namespace A194743

/-- `A121934(n+1)%A194744(n+1)` -/
def P4903781528458143760.Spec : Prop :=
  ∀ n, P4903781528458143760.a n = A194743 (n + 1)

end A194743

/-! ## A194743.P2422787123796401686

`A025581(A194745(n+1)+∑[n])`
-/

namespace A194743.P2422787123796401686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A194745 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A194743.P2422787123796401686

namespace A194743

/-- `A025581(A194745(n+1)+∑[n])` -/
def P2422787123796401686.Spec : Prop :=
  ∀ n, P2422787123796401686.a n = A194743 (n + 1)

end A194743

/-! ## A194743.P1883620156653051533

`∑[n+1]-A194845(∑[n+1])`
-/

namespace A194743.P1883620156653051533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A194845 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A194743.P1883620156653051533

namespace A194743

/-- `∑[n+1]-A194845(∑[n+1])` -/
def P1883620156653051533.Spec : Prop :=
  ∀ n, P1883620156653051533.a n = A194743 (n + 1)

end A194743

/-!
# A194744: Number of k such that {-k*sqrt(5)} < {-n*sqrt(5)}, where { } = fractional part.

The programs for A194744, the canonical program `A194744.P9313095797038209416` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194744 has offset 1).

The definition of A194744 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194744.P9313095797038209416

`A194743(n+1)+1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A194744

/-- `A194743(n+1)+1` -/
def P9313095797038209416.Spec : Prop :=
  ∀ n, P9313095797038209416.a n = A194744 (n + 1)

theorem P9313095797038209416.correct : P9313095797038209416.Spec := by
  intro n
  simp only [A194744, Nat.add_sub_cancel]

end A194744

/-! ## A194744.P101762739635132571

`1-A194745(n+1)+n`
-/

namespace A194744.P101762739635132571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A194745 (n + 1) + (n : ℤ)

end

end A194744.P101762739635132571

namespace A194744

/-- `1-A194745(n+1)+n` -/
def P101762739635132571.Spec : Prop :=
  ∀ n, P101762739635132571.a n = A194744 (n + 1)

theorem P101762739635132571.correct : P101762739635132571.Spec := by
  intro n
  simp only [A194744, Nat.add_sub_cancel, A194744.P101762739635132571.a, A194744.P9313095797038209416.a, A194743, A194743.P6637608899086095242.a, A194745, A194745.P9191396942374646438.a, A194742, A194742.P14049241962855359563.a, A194110, A194110.P16949318337987914830.f1, A194110.P16949318337987914830.a, A022839, A022839.P1029373569643495419.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A194744

/-! ## A194744.P18329754808284617901

`2-A194742(n+1)+n`
-/

namespace A194744.P18329754808284617901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A194742 (n + 1) + (n : ℤ)

end

end A194744.P18329754808284617901

namespace A194744

/-- `2-A194742(n+1)+n` -/
def P18329754808284617901.Spec : Prop :=
  ∀ n, P18329754808284617901.a n = A194744 (n + 1)

theorem P18329754808284617901.correct : P18329754808284617901.Spec := by
  intro n
  simp only [A194744, Nat.add_sub_cancel, A194744.P18329754808284617901.a, A194744.P9313095797038209416.a, A194742, A194742.P14049241962855359563.a, A194743, A194743.P6637608899086095242.a, A194110, A194110.P16949318337987914830.f1, A194110.P16949318337987914830.a, A022839, A022839.P1029373569643495419.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A194744

/-! ## A194744.P13155414922300079075

`(n*A194110(n+1)+1)%(n+2)`
-/

namespace A194744.P13155414922300079075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A194110 (n + 1) + 1) (n + 2 : ℤ)

end

end A194744.P13155414922300079075

namespace A194744

/-- `(n*A194110(n+1)+1)%(n+2)` -/
def P13155414922300079075.Spec : Prop :=
  ∀ n, P13155414922300079075.a n = A194744 (n + 1)

end A194744

/-! ## A194744.P13119843125840573041

`(n*∑[A001961(n+1)])%(n+2)+1`
-/

namespace A194744.P13119843125840573041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)) (n + 2 : ℤ) + 1

end

end A194744.P13119843125840573041

namespace A194744

/-- `(n*∑[A001961(n+1)])%(n+2)+1` -/
def P13119843125840573041.Spec : Prop :=
  ∀ n, P13119843125840573041.a n = A194744 (n + 1)

end A194744

/-! ## A194744.P3369140799852101813

`n-log2(1/2)-A194745(n-log2(1/2))`
-/

namespace A194744.P3369140799852101813
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ) - (A194745 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat : ℝ)

end

end A194744.P3369140799852101813

namespace A194744

/-- `n-log2(1/2)-A194745(n-log2(1/2))` -/
def P3369140799852101813.Spec : Prop :=
  ∀ n, P3369140799852101813.a n = (A194744 (n + 1) : ℝ)

end A194744

/-! ## A194744.P8950158666911690594

`∑[∑[6-A188189(n+1)]]%(n+1)+1`
-/

namespace A194744.P8950158666911690594
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - A188189 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ) + 1

end

end A194744.P8950158666911690594

namespace A194744

/-- `∑[∑[6-A188189(n+1)]]%(n+1)+1` -/
def P8950158666911690594.Spec : Prop :=
  ∀ n, P8950158666911690594.a n = A194744 (n + 1)

end A194744

/-! ## A194744.P7406648354443086145

`A024000(A194745(n+1))+n`
-/

namespace A194744.P7406648354443086145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A194745 (n + 1)).toNat + (n : ℤ)

end

end A194744.P7406648354443086145

namespace A194744

/-- `A024000(A194745(n+1))+n` -/
def P7406648354443086145.Spec : Prop :=
  ∀ n, P7406648354443086145.a n = A194744 (n + 1)

end A194744

/-! ## A194744.P2129377605848489676

`A004174(gcd(n, n+1))*A194745(n+1)+n+1`
-/

namespace A194744.P2129377605848489676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004174 (Nat.gcd n (n + 1)) * A194745 (n + 1) + (n + 1 : ℤ)

end

end A194744.P2129377605848489676

namespace A194744

/-- `A004174(gcd(n, n+1))*A194745(n+1)+n+1` -/
def P2129377605848489676.Spec : Prop :=
  ∀ n, P2129377605848489676.a n = A194744 (n + 1)

end A194744

/-! ## A194744.P9137354020014308255

`A194742(A004958(n+1))`
-/

namespace A194744.P9137354020014308255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194742 (A004958 (n + 1)).toNat

end

end A194744.P9137354020014308255

namespace A194744

/-- `A194742(A004958(n+1))` -/
def P9137354020014308255.Spec : Prop :=
  ∀ n, P9137354020014308255.a n = A194744 (n + 1)

end A194744

/-! ## A194744.P1366873021311977263

`∑[n+1]-A194845(∑[n+1])+1`
-/

namespace A194744.P1366873021311977263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A194845 (∑ j ∈ Finset.range (n + 1), f2 j) + 1

end

end A194744.P1366873021311977263

namespace A194744

/-- `∑[n+1]-A194845(∑[n+1])+1` -/
def P1366873021311977263.Spec : Prop :=
  ∀ n, P1366873021311977263.a n = A194744 (n + 1)

end A194744

/-! ## A194744.P10836362514786916271

`A025581(A194745(n+1)+∑[n+1])`
-/

namespace A194744.P10836362514786916271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A194745 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A194744.P10836362514786916271

namespace A194744

/-- `A025581(A194745(n+1)+∑[n+1])` -/
def P10836362514786916271.Spec : Prop :=
  ∀ n, P10836362514786916271.a n = A194744 (n + 1)

end A194744

/-!
# A194745: Number of k such that {-k*sqrt(5)} > {-n*sqrt(5)}, where { } = fractional part.

The programs for A194745, the canonical program `A194745.P9191396942374646438` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194745 has offset 1).

The definition of A194745 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194745.P9191396942374646438

`A194742(n+1)-1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A194745

/-- `A194742(n+1)-1` -/
def P9191396942374646438.Spec : Prop :=
  ∀ n, P9191396942374646438.a n = A194745 (n + 1)

theorem P9191396942374646438.correct : P9191396942374646438.Spec := by
  intro n
  simp only [A194745, Nat.add_sub_cancel]

end A194745

/-! ## A194745.P3748487034600373489

`n-A194743(n+1)`
-/

namespace A194745.P3748487034600373489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A194743 (n + 1)

end

end A194745.P3748487034600373489

namespace A194745

/-- `n-A194743(n+1)` -/
def P3748487034600373489.Spec : Prop :=
  ∀ n, P3748487034600373489.a n = A194745 (n + 1)

theorem P3748487034600373489.correct : P3748487034600373489.Spec := by
  intro n
  simp only [A194745, Nat.add_sub_cancel, A194745.P3748487034600373489.a, A194745.P9191396942374646438.a, A194742, A194742.P14049241962855359563.a, A194743, A194743.P6637608899086095242.a, A194110, A194110.P16949318337987914830.f1, A194110.P16949318337987914830.a, A022839, A022839.P1029373569643495419.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A194745

/-! ## A194745.P9448744884207195629

`1-A194744(n+1)+n`
-/

namespace A194745.P9448744884207195629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A194744 (n + 1) + (n : ℤ)

end

end A194745.P9448744884207195629

namespace A194745

/-- `1-A194744(n+1)+n` -/
def P9448744884207195629.Spec : Prop :=
  ∀ n, P9448744884207195629.a n = A194745 (n + 1)

theorem P9448744884207195629.correct : P9448744884207195629.Spec := by
  intro n
  simp only [A194745, Nat.add_sub_cancel, A194745.P9448744884207195629.a, A194745.P9191396942374646438.a, A194742, A194742.P14049241962855359563.a, A194744, A194744.P9313095797038209416.a, A194110, A194110.P16949318337987914830.f1, A194110.P16949318337987914830.a, A194743, A194743.P6637608899086095242.a, A022839, A022839.P1029373569643495419.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A194745

/-! ## A194745.P11532999699917944746

`n-(n*A194110(n+1))%(n+2)`
-/

namespace A194745.P11532999699917944746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod ((n : ℤ) * A194110 (n + 1)) (n + 2 : ℤ)

end

end A194745.P11532999699917944746

namespace A194745

/-- `n-(n*A194110(n+1))%(n+2)` -/
def P11532999699917944746.Spec : Prop :=
  ∀ n, P11532999699917944746.a n = A194745 (n + 1)

theorem P11532999699917944746.correct : P11532999699917944746.Spec := by
  intro n
  simp only [A194745, Nat.add_sub_cancel, A194745.P11532999699917944746.a, A194745.P9191396942374646438.a, A194110, A194110.P16949318337987914830.f1, A194110.P16949318337987914830.a, A194742, A194742.P14049241962855359563.a, A022839, A022839.P1029373569643495419.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A194745

/-! ## A194745.P12061098270083230656

`1-(n-2*n)-A194744(1-(n-2*n))`
-/

namespace A194745.P12061098270083230656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n : ℤ) - (2 * n : ℤ)) - A194744 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat

end

end A194745.P12061098270083230656

namespace A194745

/-- `1-(n-2*n)-A194744(1-(n-2*n))` -/
def P12061098270083230656.Spec : Prop :=
  ∀ n, P12061098270083230656.a n = A194745 (n + 1)

end A194745

/-! ## A194745.P15016139733024155706

`n-A023443(A194744(n+1))`
-/

namespace A194745.P15016139733024155706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 (A194744 (n + 1)).toNat

end

end A194745.P15016139733024155706

namespace A194745

/-- `n-A023443(A194744(n+1))` -/
def P15016139733024155706.Spec : Prop :=
  ∀ n, P15016139733024155706.a n = A194745 (n + 1)

end A194745

/-! ## A194745.P12742925981866316575

`abs(A194743(n+1)+A001489(n))`
-/

namespace A194745.P12742925981866316575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A194743 (n + 1) + A001489 n|

end

end A194745.P12742925981866316575

namespace A194745

/-- `abs(A194743(n+1)+A001489(n))` -/
def P12742925981866316575.Spec : Prop :=
  ∀ n, P12742925981866316575.a n = A194745 (n + 1)

end A194745

/-! ## A194745.P3412627087792072190

`A024000(A194743(n+1)+1)+n`
-/

namespace A194745.P3412627087792072190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A194743 (n + 1) + 1).toNat + (n : ℤ)

end

end A194745.P3412627087792072190

namespace A194745

/-- `A024000(A194743(n+1)+1)+n` -/
def P3412627087792072190.Spec : Prop :=
  ∀ n, P3412627087792072190.a n = A194745 (n + 1)

end A194745

/-! ## A194745.P5721771054650275086

`∑[2*A300763(n+1)]%(n+2)`
-/

namespace A194745.P5721771054650275086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A300763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 2 : ℤ)

end

end A194745.P5721771054650275086

namespace A194745

/-- `∑[2*A300763(n+1)]%(n+2)` -/
def P5721771054650275086.Spec : Prop :=
  ∀ n, P5721771054650275086.a n = A194745 (n + 1)

end A194745

/-! ## A194745.P15070858985767600879

`∑[A284625(2*(n+1))]%(n+2)`
-/

namespace A194745.P15070858985767600879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284625 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 2 : ℤ)

end

end A194745.P15070858985767600879

namespace A194745

/-- `∑[A284625(2*(n+1))]%(n+2)` -/
def P15070858985767600879.Spec : Prop :=
  ∀ n, P15070858985767600879.a n = A194745 (n + 1)

end A194745

/-! ## A194745.P13248324920062278489

`A194743(A004976(n+1))`
-/

namespace A194745.P13248324920062278489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194743 (A004976 (n + 1)).toNat

end

end A194745.P13248324920062278489

namespace A194745

/-- `A194743(A004976(n+1))` -/
def P13248324920062278489.Spec : Prop :=
  ∀ n, P13248324920062278489.a n = A194745 (n + 1)

end A194745

/-! ## A194745.P9988627990058110269

`A070198(n)%A194742(n+1)`
-/

namespace A194745.P9988627990058110269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A194742 (n + 1))

end

end A194745.P9988627990058110269

namespace A194745

/-- `A070198(n)%A194742(n+1)` -/
def P9988627990058110269.Spec : Prop :=
  ∀ n, P9988627990058110269.a n = A194745 (n + 1)

end A194745

/-! ## A194745.P2256480205087309499

`A079782(n+1)%A194742(n+1)`
-/

namespace A194745.P2256480205087309499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A194742 (n + 1))

end

end A194745.P2256480205087309499

namespace A194745

/-- `A079782(n+1)%A194742(n+1)` -/
def P2256480205087309499.Spec : Prop :=
  ∀ n, P2256480205087309499.a n = A194745 (n + 1)

end A194745

/-! ## A194745.P7427494873328127215

`A083685(n+1)%A194742(n+1)`
-/

namespace A194745.P7427494873328127215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A194742 (n + 1))

end

end A194745.P7427494873328127215

namespace A194745

/-- `A083685(n+1)%A194742(n+1)` -/
def P7427494873328127215.Spec : Prop :=
  ∀ n, P7427494873328127215.a n = A194745 (n + 1)

end A194745

/-! ## A194745.P8959873139825389183

`A121934(n+1)%A194742(n+1)`
-/

namespace A194745.P8959873139825389183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A194742 (n + 1))

end

end A194745.P8959873139825389183

namespace A194745

/-- `A121934(n+1)%A194742(n+1)` -/
def P8959873139825389183.Spec : Prop :=
  ∀ n, P8959873139825389183.a n = A194745 (n + 1)

end A194745

/-!
# A194746: Number of k such that {k*sqrt(6)} < {n*sqrt(6)}, where { } = fractional part.

The programs for A194746, there is no canonical definition to state claims against.
-/

/-! ## A194746.P2897513488484215987

`A194749(n+1)+1`
-/

namespace A194746.P2897513488484215987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194749 (n + 1) + 1

end

end A194746.P2897513488484215987

/-! ## A194746.P1801463095136017422

`1-A194747(n+1)+n`
-/

namespace A194746.P1801463095136017422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A194747 (n + 1) + (n : ℤ)

end

end A194746.P1801463095136017422

/-! ## A194746.P9223318115431839657

`2-A194748(n+1)+n`
-/

namespace A194746.P9223318115431839657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A194748 (n + 1) + (n : ℤ)

end

end A194746.P9223318115431839657

/-! ## A194746.P15649396149133375512

`n-log2(1/2)-A194747(n-log2(1/2))`
-/

namespace A194746.P15649396149133375512
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ) - (A194747 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat : ℝ)

end

end A194746.P15649396149133375512

/-! ## A194746.P18384917791526502078

`A024000(A194747(n+1))+n`
-/

namespace A194746.P18384917791526502078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A194747 (n + 1)).toNat + (n : ℤ)

end

end A194746.P18384917791526502078

/-! ## A194746.P6744668496160220951

`abs(A194747(n+1)+A001478(n+1))`
-/

namespace A194746.P6744668496160220951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A194747 (n + 1) + A001478 (n + 1)|

end

end A194746.P6744668496160220951

/-! ## A194746.P7190433439014699054

`abs(A194747(n+1)+A001489(n))+1`
-/

namespace A194746.P7190433439014699054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A194747 (n + 1) + A001489 n| + 1

end

end A194746.P7190433439014699054

/-! ## A194746.P1948877853417205848

`∑[A005408(floor((n+1)*sqrt(6)))]%(n+2)`
-/

namespace A194746.P1948877853417205848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 ⌊(n + 1 : ℝ) * Real.sqrt (6 : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 2 : ℤ)

end

end A194746.P1948877853417205848

/-! ## A194746.P3791392070560827475

`1-(n*A022789(n+2))%(n+2)+n`
-/

namespace A194746.P3791392070560827475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod ((n : ℤ) * A022789 (n + 2)) (n + 2 : ℤ) + (n : ℤ)

end

end A194746.P3791392070560827475

/-! ## A194746.P17019580432694558229

`A004273(∑[A022840(n+1)])%(n+2)`
-/

namespace A194746.P17019580432694558229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022840 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004273 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) (n + 2 : ℤ)

end

end A194746.P17019580432694558229

/-!
# A194747: Number of k such that {k*sqrt(6)} > {n*sqrt(6)}, where { } = fractional part.

The programs for A194747, there is no canonical definition to state claims against.
-/

/-! ## A194747.P15603695402029933097

`A194748(n+1)-1`
-/

namespace A194747.P15603695402029933097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194748 (n + 1) - 1

end

end A194747.P15603695402029933097

/-! ## A194747.P17847319105270511034

`n-A194749(n+1)`
-/

namespace A194747.P17847319105270511034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A194749 (n + 1)

end

end A194747.P17847319105270511034

/-! ## A194747.P9909992197521186902

`1-A194746(n+1)+n`
-/

namespace A194747.P9909992197521186902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A194746 (n + 1) + (n : ℤ)

end

end A194747.P9909992197521186902

/-! ## A194747.P16204551808704574211

`n-log2(1/2)-A194746(n-log2(1/2))`
-/

namespace A194747.P16204551808704574211
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ) - (A194746 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat : ℝ)

end

end A194747.P16204551808704574211

/-! ## A194747.P11689892971227729188

`A023443(A194748(n+1))`
-/

namespace A194747.P11689892971227729188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A194748 (n + 1)).toNat

end

end A194747.P11689892971227729188

/-! ## A194747.P11300737955891813061

`A024000(A194746(n+1))+n`
-/

namespace A194747.P11300737955891813061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A194746 (n + 1)).toNat + (n : ℤ)

end

end A194747.P11300737955891813061

/-! ## A194747.P4077341242667431679

`abs(A194749(n+1)+A001489(n))`
-/

namespace A194747.P4077341242667431679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A194749 (n + 1) + A001489 n|

end

end A194747.P4077341242667431679

/-! ## A194747.P16016250685316688749

`A022958(A194746(n+1)+1)+n`
-/

namespace A194747.P16016250685316688749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022958 (A194746 (n + 1) + 1).toNat + (n : ℤ)

end

end A194747.P16016250685316688749

/-! ## A194747.P17843060237230126494

`A024000(A194749(n+1)+1)+n`
-/

namespace A194747.P17843060237230126494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A194749 (n + 1) + 1).toNat + (n : ℤ)

end

end A194747.P17843060237230126494

/-! ## A194747.P12864451970960093809

`n+1-∑[A005408(floor((n+1)*sqrt(6)))]%(n+2)`
-/

namespace A194747.P12864451970960093809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 ⌊(n + 1 : ℝ) * Real.sqrt (6 : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 2 : ℤ)

end

end A194747.P12864451970960093809

/-! ## A194747.P8983554340876914101

`(n*A022789(n+2))%(n+2)`
-/

namespace A194747.P8983554340876914101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A022789 (n + 2)) (n + 2 : ℤ)

end

end A194747.P8983554340876914101

/-! ## A194747.P12839810425907473990

`A070198(n)%A194748(n+1)`
-/

namespace A194747.P12839810425907473990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A194748 (n + 1))

end

end A194747.P12839810425907473990

/-! ## A194747.P17840763757787573638

`A079782(n+1)%A194748(n+1)`
-/

namespace A194747.P17840763757787573638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A194748 (n + 1))

end

end A194747.P17840763757787573638

/-! ## A194747.P2044256035321996595

`A083685(n+1)%A194748(n+1)`
-/

namespace A194747.P2044256035321996595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A194748 (n + 1))

end

end A194747.P2044256035321996595

/-! ## A194747.P1276433687560171196

`A121934(n+1)%A194748(n+1)`
-/

namespace A194747.P1276433687560171196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A194748 (n + 1))

end

end A194747.P1276433687560171196

/-! ## A194747.P4581092975693971629

`A025581(A194749(n+1)+∑[n])`
-/

namespace A194747.P4581092975693971629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A194749 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A194747.P4581092975693971629

/-!
# A194748: Number of k such that {-k*sqrt(6)} < {-n*sqrt(6)}, where { } = fractional part.

The programs for A194748, there is no canonical definition to state claims against.
-/

/-! ## A194748.P9424655356622771364

`A194747(n+1)+1`
-/

namespace A194748.P9424655356622771364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194747 (n + 1) + 1

end

end A194748.P9424655356622771364

/-! ## A194748.P2683731671432947062

`1-A194749(n+1)+n`
-/

namespace A194748.P2683731671432947062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A194749 (n + 1) + (n : ℤ)

end

end A194748.P2683731671432947062

/-! ## A194748.P15493238871252185893

`2-A194746(n+1)+n`
-/

namespace A194748.P15493238871252185893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A194746 (n + 1) + (n : ℤ)

end

end A194748.P15493238871252185893

/-! ## A194748.P14396607649527498539

`A022958(A194746(n+1))+n`
-/

namespace A194748.P14396607649527498539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022958 (A194746 (n + 1)).toNat + (n : ℤ)

end

end A194748.P14396607649527498539

/-! ## A194748.P9395860810392143539

`A024000(A194749(n+1))+n`
-/

namespace A194748.P9395860810392143539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A194749 (n + 1)).toNat + (n : ℤ)

end

end A194748.P9395860810392143539

/-! ## A194748.P4499392226823567848

`abs(A194749(n+1)+A001478(n+1))`
-/

namespace A194748.P4499392226823567848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A194749 (n + 1) + A001478 (n + 1)|

end

end A194748.P4499392226823567848

/-! ## A194748.P8116238471726527430

`abs(A194749(n+1)+A001489(n))+1`
-/

namespace A194748.P8116238471726527430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A194749 (n + 1) + A001489 n| + 1

end

end A194748.P8116238471726527430

/-! ## A194748.P172629344396363065

`(n*A022789(n+2)+1)%(n+2)`
-/

namespace A194748.P172629344396363065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A022789 (n + 2) + 1) (n + 2 : ℤ)

end

end A194748.P172629344396363065

/-! ## A194748.P2658288624531421005

`A004736(A194746(n+1)+∑[n])`
-/

namespace A194748.P2658288624531421005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A194746 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A194748.P2658288624531421005

/-! ## A194748.P16075769716087359545

`A002260(A194875(∑[n+1]))`
-/

namespace A194748.P16075769716087359545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A194875 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A194748.P16075769716087359545

/-!
# A194749: Number of k such that {-k*sqrt(6)} > {-n*sqrt(6)}, where { } = fractional part.

The programs for A194749, there is no canonical definition to state claims against.
-/

/-! ## A194749.P11470859897550057268

`A194746(n+1)-1`
-/

namespace A194749.P11470859897550057268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194746 (n + 1) - 1

end

end A194749.P11470859897550057268

/-! ## A194749.P15323947385583734472

`n-A194747(n+1)`
-/

namespace A194749.P15323947385583734472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A194747 (n + 1)

end

end A194749.P15323947385583734472

/-! ## A194749.P1324518420215045135

`1-A194748(n+1)+n`
-/

namespace A194749.P1324518420215045135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A194748 (n + 1) + (n : ℤ)

end

end A194749.P1324518420215045135

/-! ## A194749.P4037286413461129904

`n-log2(1/2)-A194747(n-log2(1/2))-1`
-/

namespace A194749.P4037286413461129904
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ) - (A194747 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat : ℝ) - 1

end

end A194749.P4037286413461129904

/-! ## A194749.P7729045103857457380

`n-floor(n-log2(1/2)-A194746(n-log2(1/2)))`
-/

namespace A194749.P7729045103857457380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌊(n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ) - (A194746 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat : ℝ)⌋

end

end A194749.P7729045103857457380

/-! ## A194749.P3566099273424138602

`A023443(A194746(n+1))`
-/

namespace A194749.P3566099273424138602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A194746 (n + 1)).toNat

end

end A194749.P3566099273424138602

/-! ## A194749.P10479410426409665463

`A023444(A194746(n+1)+1)`
-/

namespace A194749.P10479410426409665463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A194746 (n + 1) + 1).toNat

end

end A194749.P10479410426409665463

/-! ## A194749.P14954579101554711101

`n-A023443(A194748(n+1))`
-/

namespace A194749.P14954579101554711101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 (A194748 (n + 1)).toNat

end

end A194749.P14954579101554711101

/-! ## A194749.P8181310545975462436

`∑[A005408(floor((n+1)*sqrt(6)))]%(n+2)-1`
-/

namespace A194749.P8181310545975462436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 ⌊(n + 1 : ℝ) * Real.sqrt (6 : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 2 : ℤ) - 1

end

end A194749.P8181310545975462436

/-! ## A194749.P16825630162403066408

`A059169(4*A194746(n+1))`
-/

namespace A194749.P16825630162403066408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (4 * A194746 (n + 1)).toNat

end

end A194749.P16825630162403066408

/-! ## A194749.P8856831836074224269

`n-(n*A022789(n+2))%(n+2)`
-/

namespace A194749.P8856831836074224269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod ((n : ℤ) * A022789 (n + 2)) (n + 2 : ℤ)

end

end A194749.P8856831836074224269

/-! ## A194749.P15063150448167406719

`A070198(n)%A194746(n+1)`
-/

namespace A194749.P15063150448167406719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A194746 (n + 1))

end

end A194749.P15063150448167406719

/-! ## A194749.P1811780087218027512

`A079782(n+1)%A194746(n+1)`
-/

namespace A194749.P1811780087218027512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A194746 (n + 1))

end

end A194749.P1811780087218027512

/-! ## A194749.P5681431622120147482

`A083685(n+1)%A194746(n+1)`
-/

namespace A194749.P5681431622120147482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A194746 (n + 1))

end

end A194749.P5681431622120147482

/-! ## A194749.P4143430905364215784

`A121934(n+1)%A194746(n+1)`
-/

namespace A194749.P4143430905364215784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A194746 (n + 1))

end

end A194749.P4143430905364215784

/-!
# A194750: Number of k such that {k*e} < {n*e}, where { } = fractional part.

The programs for A194750, the canonical program `A194750.P9373428447892605913` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194750 has offset 1).

The definition of A194750 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194750.P9412386758226816185

`A194753(n+1)+1`
-/

namespace A194750.P9412386758226816185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194753 (n + 1) + 1

end

end A194750.P9412386758226816185

namespace A194750

/-- `A194753(n+1)+1` -/
def P9412386758226816185.Spec : Prop :=
  ∀ n, P9412386758226816185.a n = A194750 (n + 1)

theorem P9412386758226816185.correct : P9412386758226816185.Spec := by
  intro n
  simp only [A194750, Nat.add_sub_cancel, A194750.P9412386758226816185.a, A194750.P9373428447892605913.f1, A194750.P9373428447892605913.a, A022843, A022843.P5357273111751487291.a, A194753, A194753.P14497429391237450864.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A194750

/-! ## A194750.P3078624947851306491

`1-A194751(n+1)+n`
-/

namespace A194750.P3078624947851306491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A194751 (n + 1) + (n : ℤ)

end

end A194750.P3078624947851306491

namespace A194750

/-- `1-A194751(n+1)+n` -/
def P3078624947851306491.Spec : Prop :=
  ∀ n, P3078624947851306491.a n = A194750 (n + 1)

theorem P3078624947851306491.correct : P3078624947851306491.Spec := by
  intro n
  simp only [A194750, Nat.add_sub_cancel, A194750.P3078624947851306491.a, A194750.P9373428447892605913.f1, A194750.P9373428447892605913.a, A022843, A022843.P5357273111751487291.a, A194751, A194751.P13904899455516874814.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A194750

/-! ## A194750.P14449388585102904555

`2-A194752(n+1)+n`
-/

namespace A194750.P14449388585102904555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A194752 (n + 1) + (n : ℤ)

end

end A194750.P14449388585102904555

namespace A194750

/-- `2-A194752(n+1)+n` -/
def P14449388585102904555.Spec : Prop :=
  ∀ n, P14449388585102904555.a n = A194750 (n + 1)

theorem P14449388585102904555.correct : P14449388585102904555.Spec := by
  intro n
  simp only [A194750, Nat.add_sub_cancel, A194750.P14449388585102904555.a, A194750.P9373428447892605913.f1, A194750.P9373428447892605913.a, A022843, A022843.P5357273111751487291.a, A194752, A194752.P8535250005586994287.a, A194751, A194751.P13904899455516874814.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A194750

/-! ## A194750.P13927378936244298189

`2-(A194752(n-log2(1/2))-n)`
-/

namespace A194750.P13927378936244298189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A194752 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat - (n : ℤ))

end

end A194750.P13927378936244298189

namespace A194750

/-- `2-(A194752(n-log2(1/2))-n)` -/
def P13927378936244298189.Spec : Prop :=
  ∀ n, P13927378936244298189.a n = A194750 (n + 1)

end A194750

/-! ## A194750.P4431703841513508893

`n-log2(1/2)-A194751(n-log2(1/2))`
-/

namespace A194750.P4431703841513508893
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ) - (A194751 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat : ℝ)

end

end A194750.P4431703841513508893

namespace A194750

/-- `n-log2(1/2)-A194751(n-log2(1/2))` -/
def P4431703841513508893.Spec : Prop :=
  ∀ n, P4431703841513508893.a n = (A194750 (n + 1) : ℝ)

end A194750

/-! ## A194750.P9373428447892605913

`n-(n*∑[A022843(n+1)])%(n+2)+1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A194750

/-- `n-(n*∑[A022843(n+1)])%(n+2)+1` -/
def P9373428447892605913.Spec : Prop :=
  ∀ n, P9373428447892605913.a n = A194750 (n + 1)

theorem P9373428447892605913.correct : P9373428447892605913.Spec := by
  intro n
  simp only [A194750, Nat.add_sub_cancel]

end A194750

/-! ## A194750.P2274936509392448233

`A022958(A194752(n+1))+n`
-/

namespace A194750.P2274936509392448233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022958 (A194752 (n + 1)).toNat + (n : ℤ)

end

end A194750.P2274936509392448233

namespace A194750

/-- `A022958(A194752(n+1))+n` -/
def P2274936509392448233.Spec : Prop :=
  ∀ n, P2274936509392448233.a n = A194750 (n + 1)

end A194750

/-! ## A194750.P2260757792852491931

`A024000(A194751(n+1))+n`
-/

namespace A194750.P2260757792852491931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A194751 (n + 1)).toNat + (n : ℤ)

end

end A194750.P2260757792852491931

namespace A194750

/-- `A024000(A194751(n+1))+n` -/
def P2260757792852491931.Spec : Prop :=
  ∀ n, P2260757792852491931.a n = A194750 (n + 1)

end A194750

/-! ## A194750.P13504463348959591032

`A004736(A194752(n+1)+∑[n])`
-/

namespace A194750.P13504463348959591032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A194752 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A194750.P13504463348959591032

namespace A194750

/-- `A004736(A194752(n+1)+∑[n])` -/
def P13504463348959591032.Spec : Prop :=
  ∀ n, P13504463348959591032.a n = A194750 (n + 1)

end A194750

/-! ## A194750.P8985381427471840726

`A004273(A184976(n+1))%(n+2)`
-/

namespace A194750.P8985381427471840726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004273 (A184976 (n + 1)).toNat) (n + 2 : ℤ)

end

end A194750.P8985381427471840726

namespace A194750

/-- `A004273(A184976(n+1))%(n+2)` -/
def P8985381427471840726.Spec : Prop :=
  ∀ n, P8985381427471840726.a n = A194750 (n + 1)

end A194750

/-!
# A194751: Number of k such that {k*e} > {n*e}, where { } = fractional part.

The programs for A194751, the canonical program `A194751.P13904899455516874814` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194751 has offset 1).

The definition of A194751 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194751.P13470362796368943354

`A194752(n+1)-1`
-/

namespace A194751.P13470362796368943354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194752 (n + 1) - 1

end

end A194751.P13470362796368943354

namespace A194751

/-- `A194752(n+1)-1` -/
def P13470362796368943354.Spec : Prop :=
  ∀ n, P13470362796368943354.a n = A194751 (n + 1)

theorem P13470362796368943354.correct : P13470362796368943354.Spec := by
  intro n
  simp only [A194751, Nat.add_sub_cancel, A194751.P13470362796368943354.a, A194751.P13904899455516874814.a, A194750, A194750.P9373428447892605913.f1, A194750.P9373428447892605913.a, A194752, A194752.P8535250005586994287.a, A022843, A022843.P5357273111751487291.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A194751

/-! ## A194751.P2736027356714939187

`n-A194753(n+1)`
-/

namespace A194751.P2736027356714939187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A194753 (n + 1)

end

end A194751.P2736027356714939187

namespace A194751

/-- `n-A194753(n+1)` -/
def P2736027356714939187.Spec : Prop :=
  ∀ n, P2736027356714939187.a n = A194751 (n + 1)

theorem P2736027356714939187.correct : P2736027356714939187.Spec := by
  intro n
  simp only [A194751, Nat.add_sub_cancel, A194751.P2736027356714939187.a, A194751.P13904899455516874814.a, A194750, A194750.P9373428447892605913.f1, A194750.P9373428447892605913.a, A194753, A194753.P14497429391237450864.a, A022843, A022843.P5357273111751487291.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A194751

/-! ## A194751.P13904899455516874814

`1-A194750(n+1)+n`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A194751

/-- `1-A194750(n+1)+n` -/
def P13904899455516874814.Spec : Prop :=
  ∀ n, P13904899455516874814.a n = A194751 (n + 1)

theorem P13904899455516874814.correct : P13904899455516874814.Spec := by
  intro n
  simp only [A194751, Nat.add_sub_cancel]

end A194751

/-! ## A194751.P1090801358074418786

`abs(1-A194752(n-log2(1/2)))`
-/

namespace A194751.P1090801358074418786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A194752 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat|

end

end A194751.P1090801358074418786

namespace A194751

/-- `abs(1-A194752(n-log2(1/2)))` -/
def P1090801358074418786.Spec : Prop :=
  ∀ n, P1090801358074418786.a n = A194751 (n + 1)

end A194751

/-! ## A194751.P15828864849459909188

`(n*∑[A022843(n+1)])%(n+2)`
-/

namespace A194751.P15828864849459909188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)) (n + 2 : ℤ)

end

end A194751.P15828864849459909188

namespace A194751

/-- `(n*∑[A022843(n+1)])%(n+2)` -/
def P15828864849459909188.Spec : Prop :=
  ∀ n, P15828864849459909188.a n = A194751 (n + 1)

theorem P15828864849459909188.correct : P15828864849459909188.Spec := by
  intro n
  simp only [A194751, Nat.add_sub_cancel, A194751.P15828864849459909188.f1, A194751.P15828864849459909188.a, A194751.P13904899455516874814.a, A022843, A022843.P5357273111751487291.a, A194750, A194750.P9373428447892605913.f1, A194750.P9373428447892605913.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A194751

/-! ## A194751.P14929818372056137298

`n-abs(A194752(ϕ²-(ϕ-n))%comp[∑[n]]-1-n)`
-/

namespace A194751.P14929818372056137298
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - |Int.tmod (A194752 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat) (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - 1 - (n : ℤ)|

end

end A194751.P14929818372056137298

namespace A194751

/-- `n-abs(A194752(ϕ²-(ϕ-n))%comp[∑[n]]-1-n)` -/
def P14929818372056137298.Spec : Prop :=
  ∀ n, P14929818372056137298.a n = A194751 (n + 1)

end A194751

/-! ## A194751.P5716396322232095799

`A023443(A194752(n+1))`
-/

namespace A194751.P5716396322232095799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A194752 (n + 1)).toNat

end

end A194751.P5716396322232095799

namespace A194751

/-- `A023443(A194752(n+1))` -/
def P5716396322232095799.Spec : Prop :=
  ∀ n, P5716396322232095799.a n = A194751 (n + 1)

end A194751

/-! ## A194751.P2258795128661347826

`A023444(A194752(n+1)+1)`
-/

namespace A194751.P2258795128661347826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A194752 (n + 1) + 1).toNat

end

end A194751.P2258795128661347826

namespace A194751

/-- `A023444(A194752(n+1)+1)` -/
def P2258795128661347826.Spec : Prop :=
  ∀ n, P2258795128661347826.a n = A194751 (n + 1)

end A194751

/-! ## A194751.P13353969073688637598

`A289207(A194752(n+1)+1)`
-/

namespace A194751.P13353969073688637598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A194752 (n + 1) + 1).toNat

end

end A194751.P13353969073688637598

namespace A194751

/-- `A289207(A194752(n+1)+1)` -/
def P13353969073688637598.Spec : Prop :=
  ∀ n, P13353969073688637598.a n = A194751 (n + 1)

end A194751

/-! ## A194751.P15427213650371928176

`n-A023443(A194750(n+1))`
-/

namespace A194751.P15427213650371928176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 (A194750 (n + 1)).toNat

end

end A194751.P15427213650371928176

namespace A194751

/-- `n-A023443(A194750(n+1))` -/
def P15427213650371928176.Spec : Prop :=
  ∀ n, P15427213650371928176.a n = A194751 (n + 1)

end A194751

/-! ## A194751.P7746811356750884835

`A070198(n)%A194752(n+1)`
-/

namespace A194751.P7746811356750884835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A194752 (n + 1))

end

end A194751.P7746811356750884835

namespace A194751

/-- `A070198(n)%A194752(n+1)` -/
def P7746811356750884835.Spec : Prop :=
  ∀ n, P7746811356750884835.a n = A194751 (n + 1)

end A194751

/-! ## A194751.P5992203507747875963

`A079782(n+1)%A194752(n+1)`
-/

namespace A194751.P5992203507747875963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A194752 (n + 1))

end

end A194751.P5992203507747875963

namespace A194751

/-- `A079782(n+1)%A194752(n+1)` -/
def P5992203507747875963.Spec : Prop :=
  ∀ n, P5992203507747875963.a n = A194751 (n + 1)

end A194751

/-! ## A194751.P16779743802789143898

`A083685(n+1)%A194752(n+1)`
-/

namespace A194751.P16779743802789143898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A194752 (n + 1))

end

end A194751.P16779743802789143898

namespace A194751

/-- `A083685(n+1)%A194752(n+1)` -/
def P16779743802789143898.Spec : Prop :=
  ∀ n, P16779743802789143898.a n = A194751 (n + 1)

end A194751

/-! ## A194751.P10932070908141984064

`A121934(n+1)%A194752(n+1)`
-/

namespace A194751.P10932070908141984064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A194752 (n + 1))

end

end A194751.P10932070908141984064

namespace A194751

/-- `A121934(n+1)%A194752(n+1)` -/
def P10932070908141984064.Spec : Prop :=
  ∀ n, P10932070908141984064.a n = A194751 (n + 1)

end A194751

/-! ## A194751.P5858643407445338960

`A057918(A194752(n+1)²)`
-/

namespace A194751.P5858643407445338960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A194752 (n + 1) ^ 2).toNat

end

end A194751.P5858643407445338960

namespace A194751

/-- `A057918(A194752(n+1)²)` -/
def P5858643407445338960.Spec : Prop :=
  ∀ n, P5858643407445338960.a n = A194751 (n + 1)

end A194751

/-! ## A194751.P10140194372129970871

`A259361(A194752(n+1)²)`
-/

namespace A194751.P10140194372129970871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A194752 (n + 1) ^ 2).toNat

end

end A194751.P10140194372129970871

namespace A194751

/-- `A259361(A194752(n+1)²)` -/
def P10140194372129970871.Spec : Prop :=
  ∀ n, P10140194372129970871.a n = A194751 (n + 1)

end A194751

/-!
# A194752: Number of k such that {-k*e} < {-n*e}, where { } = fractional part.

The programs for A194752, the canonical program `A194752.P8535250005586994287` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194752 has offset 1).

The definition of A194752 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194752.P8535250005586994287

`A194751(n+1)+1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A194752

/-- `A194751(n+1)+1` -/
def P8535250005586994287.Spec : Prop :=
  ∀ n, P8535250005586994287.a n = A194752 (n + 1)

theorem P8535250005586994287.correct : P8535250005586994287.Spec := by
  intro n
  simp only [A194752, Nat.add_sub_cancel]

end A194752

/-! ## A194752.P11909420907753203350

`1-A194753(n+1)+n`
-/

namespace A194752.P11909420907753203350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A194753 (n + 1) + (n : ℤ)

end

end A194752.P11909420907753203350

namespace A194752

/-- `1-A194753(n+1)+n` -/
def P11909420907753203350.Spec : Prop :=
  ∀ n, P11909420907753203350.a n = A194752 (n + 1)

theorem P11909420907753203350.correct : P11909420907753203350.Spec := by
  intro n
  simp only [A194752, Nat.add_sub_cancel, A194752.P11909420907753203350.a, A194752.P8535250005586994287.a, A194751, A194751.P13904899455516874814.a, A194753, A194753.P14497429391237450864.a, A194750, A194750.P9373428447892605913.f1, A194750.P9373428447892605913.a, A022843, A022843.P5357273111751487291.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A194752

/-! ## A194752.P3777055781576396680

`2-A194750(n+1)+n`
-/

namespace A194752.P3777055781576396680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A194750 (n + 1) + (n : ℤ)

end

end A194752.P3777055781576396680

namespace A194752

/-- `2-A194750(n+1)+n` -/
def P3777055781576396680.Spec : Prop :=
  ∀ n, P3777055781576396680.a n = A194752 (n + 1)

theorem P3777055781576396680.correct : P3777055781576396680.Spec := by
  intro n
  simp only [A194752, Nat.add_sub_cancel, A194752.P3777055781576396680.a, A194752.P8535250005586994287.a, A194750, A194750.P9373428447892605913.f1, A194750.P9373428447892605913.a, A194751, A194751.P13904899455516874814.a, A022843, A022843.P5357273111751487291.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A194752

/-! ## A194752.P11243435285259709508

`(n*∑[A022843(n+1)])%(n+2)+1`
-/

namespace A194752.P11243435285259709508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)) (n + 2 : ℤ) + 1

end

end A194752.P11243435285259709508

namespace A194752

/-- `(n*∑[A022843(n+1)])%(n+2)+1` -/
def P11243435285259709508.Spec : Prop :=
  ∀ n, P11243435285259709508.a n = A194752 (n + 1)

theorem P11243435285259709508.correct : P11243435285259709508.Spec := by
  intro n
  simp only [A194752, Nat.add_sub_cancel, A194752.P11243435285259709508.f1, A194752.P11243435285259709508.a, A194752.P8535250005586994287.a, A022843, A022843.P5357273111751487291.a, A194751, A194751.P13904899455516874814.a, A194750, A194750.P9373428447892605913.f1, A194750.P9373428447892605913.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A194752

/-! ## A194752.P10810404315468009635

`A022958(A194750(n+1))+n`
-/

namespace A194752.P10810404315468009635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022958 (A194750 (n + 1)).toNat + (n : ℤ)

end

end A194752.P10810404315468009635

namespace A194752

/-- `A022958(A194750(n+1))+n` -/
def P10810404315468009635.Spec : Prop :=
  ∀ n, P10810404315468009635.a n = A194752 (n + 1)

end A194752

/-! ## A194752.P3646727174154929524

`A024000(A194753(n+1))+n`
-/

namespace A194752.P3646727174154929524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A194753 (n + 1)).toNat + (n : ℤ)

end

end A194752.P3646727174154929524

namespace A194752

/-- `A024000(A194753(n+1))+n` -/
def P3646727174154929524.Spec : Prop :=
  ∀ n, P3646727174154929524.a n = A194752 (n + 1)

end A194752

/-! ## A194752.P13874992112050062821

`abs(A194753(n+1)+A001478(n+1))`
-/

namespace A194752.P13874992112050062821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A194753 (n + 1) + A001478 (n + 1)|

end

end A194752.P13874992112050062821

namespace A194752

/-- `abs(A194753(n+1)+A001478(n+1))` -/
def P13874992112050062821.Spec : Prop :=
  ∀ n, P13874992112050062821.a n = A194752 (n + 1)

end A194752

/-! ## A194752.P309801102931026911

`A004736(A194750(n+1)+A000217(n))`
-/

namespace A194752.P309801102931026911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A194750 (n + 1) + A000217 n).toNat

end

end A194752.P309801102931026911

namespace A194752

/-- `A004736(A194750(n+1)+A000217(n))` -/
def P309801102931026911.Spec : Prop :=
  ∀ n, P309801102931026911.a n = A194752 (n + 1)

end A194752

/-! ## A194752.P10269283867081034091

`A004736(A194753(n+1)+∑[n+3]+7)`
-/

namespace A194752.P10269283867081034091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A194753 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j + 7 : ℕ) : ℤ)).toNat

end

end A194752.P10269283867081034091

namespace A194752

/-- `A004736(A194753(n+1)+∑[n+3]+7)` -/
def P10269283867081034091.Spec : Prop :=
  ∀ n, P10269283867081034091.a n = A194752 (n + 1)

end A194752

/-! ## A194752.P2512141889423696760

`2-A004273(A184976(n+1))%(n+2)+n`
-/

namespace A194752.P2512141889423696760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.tmod (A004273 (A184976 (n + 1)).toNat) (n + 2 : ℤ) + (n : ℤ)

end

end A194752.P2512141889423696760

namespace A194752

/-- `2-A004273(A184976(n+1))%(n+2)+n` -/
def P2512141889423696760.Spec : Prop :=
  ∀ n, P2512141889423696760.a n = A194752 (n + 1)

end A194752

/-!
# A194753: Number of k such that {-k*e} > {-n*e}, where { } = fractional part.

The programs for A194753, the canonical program `A194753.P14497429391237450864` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194753 has offset 1).

The definition of A194753 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194753.P14497429391237450864

`A194750(n+1)-1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A194753

/-- `A194750(n+1)-1` -/
def P14497429391237450864.Spec : Prop :=
  ∀ n, P14497429391237450864.a n = A194753 (n + 1)

theorem P14497429391237450864.correct : P14497429391237450864.Spec := by
  intro n
  simp only [A194753, Nat.add_sub_cancel]

end A194753

/-! ## A194753.P16501667085312194751

`n-A194751(n+1)`
-/

namespace A194753.P16501667085312194751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A194751 (n + 1)

end

end A194753.P16501667085312194751

namespace A194753

/-- `n-A194751(n+1)` -/
def P16501667085312194751.Spec : Prop :=
  ∀ n, P16501667085312194751.a n = A194753 (n + 1)

theorem P16501667085312194751.correct : P16501667085312194751.Spec := by
  intro n
  simp only [A194753, Nat.add_sub_cancel, A194753.P16501667085312194751.a, A194753.P14497429391237450864.a, A194750, A194750.P9373428447892605913.f1, A194750.P9373428447892605913.a, A194751, A194751.P13904899455516874814.a, A022843, A022843.P5357273111751487291.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A194753

/-! ## A194753.P15353266836603351296

`1-A194752(n+1)+n`
-/

namespace A194753.P15353266836603351296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A194752 (n + 1) + (n : ℤ)

end

end A194753.P15353266836603351296

namespace A194753

/-- `1-A194752(n+1)+n` -/
def P15353266836603351296.Spec : Prop :=
  ∀ n, P15353266836603351296.a n = A194753 (n + 1)

theorem P15353266836603351296.correct : P15353266836603351296.Spec := by
  intro n
  simp only [A194753, Nat.add_sub_cancel, A194753.P15353266836603351296.a, A194753.P14497429391237450864.a, A194750, A194750.P9373428447892605913.f1, A194750.P9373428447892605913.a, A194752, A194752.P8535250005586994287.a, A022843, A022843.P5357273111751487291.a, A194751, A194751.P13904899455516874814.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A194753

/-! ## A194753.P12295177974438020872

`1-(A194752(n-log2(1/2))-n)`
-/

namespace A194753.P12295177974438020872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A194752 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat - (n : ℤ))

end

end A194753.P12295177974438020872

namespace A194753

/-- `1-(A194752(n-log2(1/2))-n)` -/
def P12295177974438020872.Spec : Prop :=
  ∀ n, P12295177974438020872.a n = A194753 (n + 1)

end A194753

/-! ## A194753.P16168266037581719066

`n-(n*∑[A022843(n+1)])%(n+2)`
-/

namespace A194753.P16168266037581719066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod ((n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)) (n + 2 : ℤ)

end

end A194753.P16168266037581719066

namespace A194753

/-- `n-(n*∑[A022843(n+1)])%(n+2)` -/
def P16168266037581719066.Spec : Prop :=
  ∀ n, P16168266037581719066.a n = A194753 (n + 1)

theorem P16168266037581719066.correct : P16168266037581719066.Spec := by
  intro n
  simp only [A194753, Nat.add_sub_cancel, A194753.P16168266037581719066.f1, A194753.P16168266037581719066.a, A194753.P14497429391237450864.a, A022843, A022843.P5357273111751487291.a, A194750, A194750.P9373428447892605913.f1, A194750.P9373428447892605913.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A194753

/-! ## A194753.P1160123186461925947

`abs(A194752(ϕ²-(ϕ-n))%comp[∑[n]]-1-n)`
-/

namespace A194753.P1160123186461925947
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A194752 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat) (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - 1 - (n : ℤ)|

end

end A194753.P1160123186461925947

namespace A194753

/-- `abs(A194752(ϕ²-(ϕ-n))%comp[∑[n]]-1-n)` -/
def P1160123186461925947.Spec : Prop :=
  ∀ n, P1160123186461925947.a n = A194753 (n + 1)

end A194753

/-! ## A194753.P5042904955341894230

`A023443(A194750(n+1))`
-/

namespace A194753.P5042904955341894230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A194750 (n + 1)).toNat

end

end A194753.P5042904955341894230

namespace A194753

/-- `A023443(A194750(n+1))` -/
def P5042904955341894230.Spec : Prop :=
  ∀ n, P5042904955341894230.a n = A194753 (n + 1)

end A194753

/-! ## A194753.P14315835693975346416

`A023446(A194750(n+1)+3)`
-/

namespace A194753.P14315835693975346416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A194750 (n + 1) + 3).toNat

end

end A194753.P14315835693975346416

namespace A194753

/-- `A023446(A194750(n+1)+3)` -/
def P14315835693975346416.Spec : Prop :=
  ∀ n, P14315835693975346416.a n = A194753 (n + 1)

end A194753

/-! ## A194753.P8107828665517856371

`n-A023443(A194752(n+1))`
-/

namespace A194753.P8107828665517856371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 (A194752 (n + 1)).toNat

end

end A194753.P8107828665517856371

namespace A194753

/-- `n-A023443(A194752(n+1))` -/
def P8107828665517856371.Spec : Prop :=
  ∀ n, P8107828665517856371.a n = A194753 (n + 1)

end A194753

/-! ## A194753.P17434770558642538921

`A070198(n)%A194750(n+1)`
-/

namespace A194753.P17434770558642538921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A194750 (n + 1))

end

end A194753.P17434770558642538921

namespace A194753

/-- `A070198(n)%A194750(n+1)` -/
def P17434770558642538921.Spec : Prop :=
  ∀ n, P17434770558642538921.a n = A194753 (n + 1)

end A194753

/-! ## A194753.P2640493539776708081

`A079782(n+1)%A194750(n+1)`
-/

namespace A194753.P2640493539776708081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A194750 (n + 1))

end

end A194753.P2640493539776708081

namespace A194753

/-- `A079782(n+1)%A194750(n+1)` -/
def P2640493539776708081.Spec : Prop :=
  ∀ n, P2640493539776708081.a n = A194753 (n + 1)

end A194753

/-! ## A194753.P14551147704995638384

`A083685(n+1)%A194750(n+1)`
-/

namespace A194753.P14551147704995638384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A194750 (n + 1))

end

end A194753.P14551147704995638384

namespace A194753

/-- `A083685(n+1)%A194750(n+1)` -/
def P14551147704995638384.Spec : Prop :=
  ∀ n, P14551147704995638384.a n = A194753 (n + 1)

end A194753

/-! ## A194753.P9945295980199533662

`A121934(n+1)%A194750(n+1)`
-/

namespace A194753.P9945295980199533662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A194750 (n + 1))

end

end A194753.P9945295980199533662

namespace A194753

/-- `A121934(n+1)%A194750(n+1)` -/
def P9945295980199533662.Spec : Prop :=
  ∀ n, P9945295980199533662.a n = A194753 (n + 1)

end A194753

/-! ## A194753.P15621152853314931361

`A057918(A194750(n+1)²)`
-/

namespace A194753.P15621152853314931361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A194750 (n + 1) ^ 2).toNat

end

end A194753.P15621152853314931361

namespace A194753

/-- `A057918(A194750(n+1)²)` -/
def P15621152853314931361.Spec : Prop :=
  ∀ n, P15621152853314931361.a n = A194753 (n + 1)

end A194753

/-! ## A194753.P11483001814441186004

`A259361(A194750(n+1)²)`
-/

namespace A194753.P11483001814441186004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A194750 (n + 1) ^ 2).toNat

end

end A194753.P11483001814441186004

namespace A194753

/-- `A259361(A194750(n+1)²)` -/
def P11483001814441186004.Spec : Prop :=
  ∀ n, P11483001814441186004.a n = A194753 (n + 1)

end A194753

/-!
# A194754: Number of integers k in 1..n such that {k*Pi} < {n*Pi}, where { } = fractional part.

The programs for A194754, there is no canonical definition to state claims against.
-/

/-! ## A194754.P15600247266996013483

`A194757(n+1)+1`
-/

namespace A194754.P15600247266996013483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194757 (n + 1) + 1

end

end A194754.P15600247266996013483

/-! ## A194754.P6727285870132319185

`1-A194755(n+1)+n`
-/

namespace A194754.P6727285870132319185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A194755 (n + 1) + (n : ℤ)

end

end A194754.P6727285870132319185

/-! ## A194754.P10518315854630408845

`2-A194756(n+1)+n`
-/

namespace A194754.P10518315854630408845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A194756 (n + 1) + (n : ℤ)

end

end A194754.P10518315854630408845

/-! ## A194754.P12273074755087017446

`1-(n-2*n)-A194755(1-(n-2*n))`
-/

namespace A194754.P12273074755087017446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n : ℤ) - (2 * n : ℤ)) - A194755 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat

end

end A194754.P12273074755087017446

/-! ## A194754.P9611526479260836802

`n-A023443(A194755(n+1))`
-/

namespace A194754.P9611526479260836802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 (A194755 (n + 1)).toNat

end

end A194754.P9611526479260836802

/-!
# A194755: Number of integers k in 1..n such that {k*Pi} > {n*Pi}, where { } = fractional part.

The programs for A194755, there is no canonical definition to state claims against.
-/

/-! ## A194755.P11828317041110565968

`A194756(n+1)-1`
-/

namespace A194755.P11828317041110565968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194756 (n + 1) - 1

end

end A194755.P11828317041110565968

/-! ## A194755.P17596708196758500380

`n-A194757(n+1)`
-/

namespace A194755.P17596708196758500380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A194757 (n + 1)

end

end A194755.P17596708196758500380

/-! ## A194755.P7798212574514710970

`1-A194754(n+1)+n`
-/

namespace A194755.P7798212574514710970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A194754 (n + 1) + (n : ℤ)

end

end A194755.P7798212574514710970

/-! ## A194755.P4531167415595209903

`A023443(A194756(n+1))`
-/

namespace A194755.P4531167415595209903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A194756 (n + 1)).toNat

end

end A194755.P4531167415595209903

/-! ## A194755.P12052663789716954209

`n-A023443(A194754(n+1))`
-/

namespace A194755.P12052663789716954209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 (A194754 (n + 1)).toNat

end

end A194755.P12052663789716954209

/-! ## A194755.P13341667898177757594

`A070198(n)%A194756(n+1)`
-/

namespace A194755.P13341667898177757594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A194756 (n + 1))

end

end A194755.P13341667898177757594

/-! ## A194755.P667526953241278917

`A079782(n+1)%A194756(n+1)`
-/

namespace A194755.P667526953241278917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A194756 (n + 1))

end

end A194755.P667526953241278917

/-! ## A194755.P1855313757580910944

`A083685(n+1)%A194756(n+1)`
-/

namespace A194755.P1855313757580910944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A194756 (n + 1))

end

end A194755.P1855313757580910944

/-! ## A194755.P5198643756615042352

`A121934(n+1)%A194756(n+1)`
-/

namespace A194755.P5198643756615042352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A194756 (n + 1))

end

end A194755.P5198643756615042352

/-!
# A194756: Number of k such that {-k*Pi} < {-n*Pi}, where { } = fractional part.

The programs for A194756, there is no canonical definition to state claims against.
-/

/-! ## A194756.P15259662417536212827

`A194755(n+1)+1`
-/

namespace A194756.P15259662417536212827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194755 (n + 1) + 1

end

end A194756.P15259662417536212827

/-! ## A194756.P8821748403440601588

`1-A194757(n+1)+n`
-/

namespace A194756.P8821748403440601588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A194757 (n + 1) + (n : ℤ)

end

end A194756.P8821748403440601588

/-! ## A194756.P246722444319602431

`2-A194754(n+1)+n`
-/

namespace A194756.P246722444319602431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A194754 (n + 1) + (n : ℤ)

end

end A194756.P246722444319602431

/-! ## A194756.P5159922128436179893

`A008683(A051698(n))*A194757(n+1)+1+n`
-/

namespace A194756.P5159922128436179893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A051698 n).toNat * A194757 (n + 1) + 1 + (n : ℤ)

end

end A194756.P5159922128436179893

/-! ## A194756.P15950472051516040165

`A194832(A194833(A194909(A000217(n+1))))`
-/

namespace A194756.P15950472051516040165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194832 (A194833 (A194909 (A000217 (n + 1)).toNat).toNat).toNat

end

end A194756.P15950472051516040165

/-!
# A194757: Number of k such that {-k*Pi} > {-n*Pi}, where { } = fractional part.

The programs for A194757, there is no canonical definition to state claims against.
-/

/-! ## A194757.P8845864023379018154

`A194754(n+1)-1`
-/

namespace A194757.P8845864023379018154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194754 (n + 1) - 1

end

end A194757.P8845864023379018154

/-! ## A194757.P13975552431236828205

`n-A194755(n+1)`
-/

namespace A194757.P13975552431236828205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A194755 (n + 1)

end

end A194757.P13975552431236828205

/-! ## A194757.P7102072604791729602

`1-A194756(n+1)+n`
-/

namespace A194757.P7102072604791729602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A194756 (n + 1) + (n : ℤ)

end

end A194757.P7102072604791729602

/-! ## A194757.P17676893536497864112

`A023443(A194754(n+1))`
-/

namespace A194757.P17676893536497864112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A194754 (n + 1)).toNat

end

end A194757.P17676893536497864112

/-! ## A194757.P12049451120766836558

`n-A023443(A194756(n+1))`
-/

namespace A194757.P12049451120766836558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 (A194756 (n + 1)).toNat

end

end A194757.P12049451120766836558

/-! ## A194757.P11737489089251572449

`A070198(n)%A194754(n+1)`
-/

namespace A194757.P11737489089251572449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A194754 (n + 1))

end

end A194757.P11737489089251572449

/-! ## A194757.P8653297845238712882

`A079782(n+1)%A194754(n+1)`
-/

namespace A194757.P8653297845238712882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A194754 (n + 1))

end

end A194757.P8653297845238712882

/-! ## A194757.P15918747488348045668

`A083685(n+1)%A194754(n+1)`
-/

namespace A194757.P15918747488348045668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A194754 (n + 1))

end

end A194757.P15918747488348045668

/-! ## A194757.P17612304475991180527

`A121934(n+1)%A194754(n+1)`
-/

namespace A194757.P17612304475991180527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A194754 (n + 1))

end

end A194757.P17612304475991180527

/-! ## A194757.P3510054899457526248

`A000217(n+1)-A194909(A000217(n+1))`
-/

namespace A194757.P3510054899457526248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) - A194909 (A000217 (n + 1)).toNat

end

end A194757.P3510054899457526248

/-!
# A194758: Number of k such that {k*log(2)} < {n*log(2)}, where { } = fractional part.

The programs for A194758, there is no canonical definition to state claims against.
-/

/-! ## A194758.P2796524184252439350

`A194761(n+1)+1`
-/

namespace A194758.P2796524184252439350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194761 (n + 1) + 1

end

end A194758.P2796524184252439350

/-! ## A194758.P13228409265089471404

`1-A194759(n+1)+n`
-/

namespace A194758.P13228409265089471404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A194759 (n + 1) + (n : ℤ)

end

end A194758.P13228409265089471404

/-! ## A194758.P9478457430517200196

`2-A194760(n+1)+n`
-/

namespace A194758.P9478457430517200196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A194760 (n + 1) + (n : ℤ)

end

end A194758.P9478457430517200196

/-! ## A194758.P2971203875955065790

`A022958(A194760(n+1))+n`
-/

namespace A194758.P2971203875955065790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022958 (A194760 (n + 1)).toNat + (n : ℤ)

end

end A194758.P2971203875955065790

/-! ## A194758.P6191695472193406253

`A024000(A194759(n+1))+n`
-/

namespace A194758.P6191695472193406253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A194759 (n + 1)).toNat + (n : ℤ)

end

end A194758.P6191695472193406253

/-! ## A194758.P3825915623642250310

`abs(A194759(n+1)+A001478(n+1))`
-/

namespace A194758.P3825915623642250310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A194759 (n + 1) + A001478 (n + 1)|

end

end A194758.P3825915623642250310

/-! ## A194758.P2324644377651696698

`abs(A194759(n+1)+A001489(n))+1`
-/

namespace A194758.P2324644377651696698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A194759 (n + 1) + A001489 n| + 1

end

end A194758.P2324644377651696698

/-! ## A194758.P8625815904468200944

`A004736(A194760(n+1)+∑[n])`
-/

namespace A194758.P8625815904468200944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A194760 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A194758.P8625815904468200944

/-!
# A194759: Number of k such that {k*log(2)} > {n*log(2)}, where { } = fractional part.

The programs for A194759, there is no canonical definition to state claims against.
-/

/-! ## A194759.P9844301507052202486

`A194760(n+1)-1`
-/

namespace A194759.P9844301507052202486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194760 (n + 1) - 1

end

end A194759.P9844301507052202486

/-! ## A194759.P16382084327572048242

`n-A194761(n+1)`
-/

namespace A194759.P16382084327572048242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A194761 (n + 1)

end

end A194759.P16382084327572048242

/-! ## A194759.P9771355903103832225

`1-A194758(n+1)+n`
-/

namespace A194759.P9771355903103832225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A194758 (n + 1) + (n : ℤ)

end

end A194759.P9771355903103832225

/-! ## A194759.P13059373306301234216

`abs(1-A194760(n-log2(1/2)))`
-/

namespace A194759.P13059373306301234216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A194760 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat|

end

end A194759.P13059373306301234216

/-! ## A194759.P6408113811889436722

`A023443(A194760(n+1))`
-/

namespace A194759.P6408113811889436722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A194760 (n + 1)).toNat

end

end A194759.P6408113811889436722

/-! ## A194759.P3551446117053195514

`A023445(A194760(n+1)+2)`
-/

namespace A194759.P3551446117053195514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A194760 (n + 1) + 2).toNat

end

end A194759.P3551446117053195514

/-! ## A194759.P7548565883950132365

`n-A023443(A194758(n+1))`
-/

namespace A194759.P7548565883950132365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 (A194758 (n + 1)).toNat

end

end A194759.P7548565883950132365

/-! ## A194759.P6433456869599305262

`A070198(n)%A194760(n+1)`
-/

namespace A194759.P6433456869599305262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A194760 (n + 1))

end

end A194759.P6433456869599305262

/-! ## A194759.P10870760549791918631

`A079782(n+1)%A194760(n+1)`
-/

namespace A194759.P10870760549791918631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A194760 (n + 1))

end

end A194759.P10870760549791918631

/-! ## A194759.P9862708611192749373

`A083685(n+1)%A194760(n+1)`
-/

namespace A194759.P9862708611192749373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A194760 (n + 1))

end

end A194759.P9862708611192749373

/-! ## A194759.P890019067537147328

`A121934(n+1)%A194760(n+1)`
-/

namespace A194759.P890019067537147328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A194760 (n + 1))

end

end A194759.P890019067537147328

/-! ## A194759.P6680091227760787598

`A214526(A194760(n+1)²)`
-/

namespace A194759.P6680091227760787598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214526 (A194760 (n + 1) ^ 2).toNat

end

end A194759.P6680091227760787598

/-! ## A194759.P10320794094803118471

`A057918(A194760(n+1)²)`
-/

namespace A194759.P10320794094803118471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A194760 (n + 1) ^ 2).toNat

end

end A194759.P10320794094803118471

/-! ## A194759.P10432124733965306703

`A088226(A194760(n+1)²)`
-/

namespace A194759.P10432124733965306703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088226 (A194760 (n + 1) ^ 2).toNat

end

end A194759.P10432124733965306703

/-! ## A194759.P10462422468119540579

`A259361(A194760(n+1)²)`
-/

namespace A194759.P10462422468119540579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A194760 (n + 1) ^ 2).toNat

end

end A194759.P10462422468119540579

/-!
# A194760: Number of k such that {-k*log(2)} < {-n*log(2)}, where { } = fractional part.

The programs for A194760, there is no canonical definition to state claims against.
-/

/-! ## A194760.P8047945253262996549

`A194759(n+1)+1`
-/

namespace A194760.P8047945253262996549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194759 (n + 1) + 1

end

end A194760.P8047945253262996549

/-! ## A194760.P13686543913318086263

`1-A194761(n+1)+n`
-/

namespace A194760.P13686543913318086263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A194761 (n + 1) + (n : ℤ)

end

end A194760.P13686543913318086263

/-! ## A194760.P15956435281098297252

`2-A194758(n+1)+n`
-/

namespace A194760.P15956435281098297252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A194758 (n + 1) + (n : ℤ)

end

end A194760.P15956435281098297252

/-! ## A194760.P4754021540093338376

`-xor(n-A194761(-xor(n, -1)), -1)`
-/

namespace A194760.P4754021540093338376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor ((n : ℤ) - A194761 (-Int.xor (n : ℤ) (-1)).toNat) (-1)

end

end A194760.P4754021540093338376

/-! ## A194760.P4862854271437829328

`A022958(A194758(n+1))+n`
-/

namespace A194760.P4862854271437829328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022958 (A194758 (n + 1)).toNat + (n : ℤ)

end

end A194760.P4862854271437829328

/-! ## A194760.P11170249757920547838

`n-A023443(A194761(n+1))`
-/

namespace A194760.P11170249757920547838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 (A194761 (n + 1)).toNat

end

end A194760.P11170249757920547838

/-! ## A194760.P1903001997509586791

`abs(xor(-1, A194759(2-A024000(n))))`
-/

namespace A194760.P1903001997509586791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (-1) (A194759 (2 - A024000 n).toNat)|

end

end A194760.P1903001997509586791

/-! ## A194760.P2583325812979109632

`abs(A194761(n+1)+A001478(n+1))`
-/

namespace A194760.P2583325812979109632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A194761 (n + 1) + A001478 (n + 1)|

end

end A194760.P2583325812979109632

/-! ## A194760.P2706566343487577072

`A004736(A194758(n+1)+∑[n])`
-/

namespace A194760.P2706566343487577072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A194758 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A194760.P2706566343487577072

/-! ## A194760.P17996499773217246417

`A025581(A194758(n+1)+A000096(n))`
-/

namespace A194760.P17996499773217246417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A194758 (n + 1) + A000096 n).toNat

end

end A194760.P17996499773217246417

/-!
# A194761: Number of k such that {-k*log(2)} > {-n*log(2)}, where { } = fractional part.

The programs for A194761, there is no canonical definition to state claims against.
-/

/-! ## A194761.P7155163082943969563

`A194758(n+1)-1`
-/

namespace A194761.P7155163082943969563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194758 (n + 1) - 1

end

end A194761.P7155163082943969563

/-! ## A194761.P14560034889522751889

`n-A194759(n+1)`
-/

namespace A194761.P14560034889522751889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A194759 (n + 1)

end

end A194761.P14560034889522751889

/-! ## A194761.P2341007338133476435

`1-A194760(n+1)+n`
-/

namespace A194761.P2341007338133476435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A194760 (n + 1) + (n : ℤ)

end

end A194761.P2341007338133476435

/-! ## A194761.P16883700740757772666

`1-(A194760(n-log2(1/2))-n)`
-/

namespace A194761.P16883700740757772666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A194760 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat - (n : ℤ))

end

end A194761.P16883700740757772666

/-! ## A194761.P14473444688811450400

`A023443(A194758(n+1))`
-/

namespace A194761.P14473444688811450400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A194758 (n + 1)).toNat

end

end A194761.P14473444688811450400

/-! ## A194761.P5949598525822800900

`n-A023443(A194760(n+1))`
-/

namespace A194761.P5949598525822800900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 (A194760 (n + 1)).toNat

end

end A194761.P5949598525822800900

/-! ## A194761.P4608055936151394278

`A059169(4*A194758(n+1))`
-/

namespace A194761.P4608055936151394278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (4 * A194758 (n + 1)).toNat

end

end A194761.P4608055936151394278

/-! ## A194761.P18069971621679105775

`A070198(n)%A194758(n+1)`
-/

namespace A194761.P18069971621679105775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A194758 (n + 1))

end

end A194761.P18069971621679105775

/-! ## A194761.P5701211640689814786

`A079782(n+1)%A194758(n+1)`
-/

namespace A194761.P5701211640689814786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A194758 (n + 1))

end

end A194761.P5701211640689814786

/-! ## A194761.P10962824608869881465

`A083685(n+1)%A194758(n+1)`
-/

namespace A194761.P10962824608869881465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A194758 (n + 1))

end

end A194761.P10962824608869881465

/-! ## A194761.P63943835115458231

`A121934(n+1)%A194758(n+1)`
-/

namespace A194761.P63943835115458231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A194758 (n + 1))

end

end A194761.P63943835115458231

/-! ## A194761.P4402185292014084139

`A214526(A194758(n+1)²)`
-/

namespace A194761.P4402185292014084139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214526 (A194758 (n + 1) ^ 2).toNat

end

end A194761.P4402185292014084139

/-! ## A194761.P13180707072699998895

`A259361(A194758(n+1)²)`
-/

namespace A194761.P13180707072699998895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A194758 (n + 1) ^ 2).toNat

end

end A194761.P13180707072699998895

/-!
# A194762: Number of k such that {k*2^(1/3)} < {n*2^(1/3)}, where { } = fractional part.

The programs for A194762, there is no canonical definition to state claims against.
-/

/-! ## A194762.P1310259734033630847

`A194765(n+1)+1`
-/

namespace A194762.P1310259734033630847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194765 (n + 1) + 1

end

end A194762.P1310259734033630847

/-! ## A194762.P1182924801115249052

`1-A194763(n+1)+n`
-/

namespace A194762.P1182924801115249052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A194763 (n + 1) + (n : ℤ)

end

end A194762.P1182924801115249052

/-! ## A194762.P6042256750158764793

`2-A194764(n+1)+n`
-/

namespace A194762.P6042256750158764793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A194764 (n + 1) + (n : ℤ)

end

end A194762.P6042256750158764793

/-! ## A194762.P10946057972777191582

`n-(abs(1-A194764(1-(n-2*n)))-1)`
-/

namespace A194762.P10946057972777191582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (|1 - A194764 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat| - 1)

end

end A194762.P10946057972777191582

/-! ## A194762.P14107062108357535607

`A022958(A194764(n+1))+n`
-/

namespace A194762.P14107062108357535607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022958 (A194764 (n + 1)).toNat + (n : ℤ)

end

end A194762.P14107062108357535607

/-! ## A194762.P4917021119408112713

`A024000(A194763(n+1))+n`
-/

namespace A194762.P4917021119408112713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A194763 (n + 1)).toNat + (n : ℤ)

end

end A194762.P4917021119408112713

/-! ## A194762.P3760740394788801748

`abs(A194763(n+1)+A001478(n+1))`
-/

namespace A194762.P3760740394788801748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A194763 (n + 1) + A001478 (n + 1)|

end

end A194762.P3760740394788801748

/-! ## A194762.P11282935645200767606

`A004736(A194764(n+1)+∑[n])`
-/

namespace A194762.P11282935645200767606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A194764 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A194762.P11282935645200767606

/-!
# A194763: Number of k < n such that {k*2^(1/3)} > {n*2^(1/3)}, where { } = fractional part.

The programs for A194763, there is no canonical definition to state claims against.
-/

/-! ## A194763.P6109032376419457072

`A194764(n+1)-1`
-/

namespace A194763.P6109032376419457072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194764 (n + 1) - 1

end

end A194763.P6109032376419457072

/-! ## A194763.P6002210760520638495

`n-A194765(n+1)`
-/

namespace A194763.P6002210760520638495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A194765 (n + 1)

end

end A194763.P6002210760520638495

/-! ## A194763.P8909239239124072892

`1-A194762(n+1)+n`
-/

namespace A194763.P8909239239124072892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A194762 (n + 1) + (n : ℤ)

end

end A194763.P8909239239124072892

/-! ## A194763.P7548177614629457285

`abs(1-A194764(1-(n-2*n)))`
-/

namespace A194763.P7548177614629457285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A194764 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat|

end

end A194763.P7548177614629457285

/-! ## A194763.P14692583155589452428

`n-abs(ϕ²-(ϕ-n)-A194764(ϕ²-(ϕ-n)))`
-/

namespace A194763.P14692583155589452428
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) - |Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)) - (A194764 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat : ℝ)|

end

end A194763.P14692583155589452428

/-! ## A194763.P4349800369982379925

`A023443(A194764(n+1))`
-/

namespace A194763.P4349800369982379925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A194764 (n + 1)).toNat

end

end A194763.P4349800369982379925

/-! ## A194763.P10388461778736086231

`A023444(A194764(n+1)+1)`
-/

namespace A194763.P10388461778736086231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A194764 (n + 1) + 1).toNat

end

end A194763.P10388461778736086231

/-! ## A194763.P2734334064950519052

`A289207(A194764(n+1)+1)`
-/

namespace A194763.P2734334064950519052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A194764 (n + 1) + 1).toNat

end

end A194763.P2734334064950519052

/-! ## A194763.P6563026103988818587

`n-A023443(A194762(n+1))`
-/

namespace A194763.P6563026103988818587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 (A194762 (n + 1)).toNat

end

end A194763.P6563026103988818587

/-! ## A194763.P14974886136104672577

`A065423(2*A194764(n+1))`
-/

namespace A194763.P14974886136104672577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (2 * A194764 (n + 1)).toNat

end

end A194763.P14974886136104672577

/-! ## A194763.P10405243878992221394

`A070198(n)%A194764(n+1)`
-/

namespace A194763.P10405243878992221394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A194764 (n + 1))

end

end A194763.P10405243878992221394

/-! ## A194763.P5770104181264410803

`A079782(n+1)%A194764(n+1)`
-/

namespace A194763.P5770104181264410803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A194764 (n + 1))

end

end A194763.P5770104181264410803

/-! ## A194763.P13819396489253929765

`A083685(n+1)%A194764(n+1)`
-/

namespace A194763.P13819396489253929765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A194764 (n + 1))

end

end A194763.P13819396489253929765

/-! ## A194763.P18347654146729768032

`A121934(n+1)%A194764(n+1)`
-/

namespace A194763.P18347654146729768032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A194764 (n + 1))

end

end A194763.P18347654146729768032

/-! ## A194763.P595008457543111897

`A259361(A194764(n+1)²)`
-/

namespace A194763.P595008457543111897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A194764 (n + 1) ^ 2).toNat

end

end A194763.P595008457543111897

/-!
# A194764: Number of k such that {-k*2^(1/3)} < {-n*2^(1/3)}, where { } = fractional part.

The programs for A194764, there is no canonical definition to state claims against.
-/

/-! ## A194764.P13789660252142544323

`A194763(n+1)+1`
-/

namespace A194764.P13789660252142544323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194763 (n + 1) + 1

end

end A194764.P13789660252142544323

/-! ## A194764.P4537261236665988946

`1-A194765(n+1)+n`
-/

namespace A194764.P4537261236665988946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A194765 (n + 1) + (n : ℤ)

end

end A194764.P4537261236665988946

/-! ## A194764.P17105368014187713888

`2-A194762(n+1)+n`
-/

namespace A194764.P17105368014187713888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A194762 (n + 1) + (n : ℤ)

end

end A194764.P17105368014187713888

/-! ## A194764.P4873919319988217390

`A022958(A194762(n+1))+n`
-/

namespace A194764.P4873919319988217390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022958 (A194762 (n + 1)).toNat + (n : ℤ)

end

end A194764.P4873919319988217390

/-! ## A194764.P13970447684415513183

`A024000(A194765(n+1))+n`
-/

namespace A194764.P13970447684415513183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A194765 (n + 1)).toNat + (n : ℤ)

end

end A194764.P13970447684415513183

/-! ## A194764.P3432232635706714388

`A001489(A194765(n+1))+A000027(n+1)`
-/

namespace A194764.P3432232635706714388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (A194765 (n + 1)).toNat + A000027 (n + 1)

end

end A194764.P3432232635706714388

/-! ## A194764.P17185430129424577388

`A004736(A194762(n+1)+∑[n])`
-/

namespace A194764.P17185430129424577388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A194762 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A194764.P17185430129424577388

/-!
# A194765: Number of k such that {-k*2^(1/3)} > {-n*2^(1/3)}, where { } = fractional part.

The programs for A194765, there is no canonical definition to state claims against.
-/

/-! ## A194765.P11788345518350903668

`A194762(n+1)-1`
-/

namespace A194765.P11788345518350903668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194762 (n + 1) - 1

end

end A194765.P11788345518350903668

/-! ## A194765.P9496747331907977792

`n-A194763(n+1)`
-/

namespace A194765.P9496747331907977792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A194763 (n + 1)

end

end A194765.P9496747331907977792

/-! ## A194765.P2912613490851028685

`1-A194764(n+1)+n`
-/

namespace A194765.P2912613490851028685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A194764 (n + 1) + (n : ℤ)

end

end A194765.P2912613490851028685

/-! ## A194765.P4692588421574081847

`n-abs(1-A194764(1-(n-2*n)))`
-/

namespace A194765.P4692588421574081847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - |1 - A194764 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat|

end

end A194765.P4692588421574081847

/-! ## A194765.P15806689589302608454

`ϕ²-(ϕ-n)-A194764(ϕ²-(ϕ-n))`
-/

namespace A194765.P15806689589302608454
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)) - (A194764 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat : ℝ)

end

end A194765.P15806689589302608454

/-! ## A194765.P13659372987481453876

`A023443(A194762(n+1))`
-/

namespace A194765.P13659372987481453876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A194762 (n + 1)).toNat

end

end A194765.P13659372987481453876

/-! ## A194765.P711005101017145257

`n-A023443(A194764(n+1))`
-/

namespace A194765.P711005101017145257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 (A194764 (n + 1)).toNat

end

end A194765.P711005101017145257

/-! ## A194765.P10860442522938870812

`A022958(A194764(n+1)+1)+n`
-/

namespace A194765.P10860442522938870812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022958 (A194764 (n + 1) + 1).toNat + (n : ℤ)

end

end A194765.P10860442522938870812

/-! ## A194765.P17887143937934419294

`A024000(A194763(n+1)+1)+n`
-/

namespace A194765.P17887143937934419294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A194763 (n + 1) + 1).toNat + (n : ℤ)

end

end A194765.P17887143937934419294

/-! ## A194765.P4607711718724337240

`A070198(n)%A194762(n+1)`
-/

namespace A194765.P4607711718724337240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A194762 (n + 1))

end

end A194765.P4607711718724337240

/-! ## A194765.P8650496830746573814

`A079782(n+1)%A194762(n+1)`
-/

namespace A194765.P8650496830746573814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A194762 (n + 1))

end

end A194765.P8650496830746573814

/-! ## A194765.P10259109508162402723

`A083685(n+1)%A194762(n+1)`
-/

namespace A194765.P10259109508162402723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A194762 (n + 1))

end

end A194765.P10259109508162402723

/-! ## A194765.P14632187322948407188

`A121934(n+1)%A194762(n+1)`
-/

namespace A194765.P14632187322948407188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A194762 (n + 1))

end

end A194765.P14632187322948407188

/-!
# A194766: Numbers which can be written using their digits in order and only multiplication and squaring operators.

The programs for A194766, there is no canonical definition to state claims against.
-/

/-! ## A194766.P3235803319266084800

`A059405(eq[A052374(n), A121937(n+1)])`
-/

namespace A194766.P3235803319266084800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052374 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121937 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059405 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A194766.P3235803319266084800

/-!
# A194767: Denominator of the fourth increasing diagonal of the autosequence of second kind from (-1)^n / (n+1).

The programs for A194767, the canonical program `A194767.P17340196967710499818` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194767 has offset 0).

The definition of A194767 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A194767.P17340196967710499818

`(n+1)*A051176(n+2)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A194767

/-- `(n+1)*A051176(n+2)` -/
def P17340196967710499818.Spec : Prop :=
  ∀ n, P17340196967710499818.a n = A194767 n

theorem P17340196967710499818.correct : P17340196967710499818.Spec := by
  intro n
  simp only [A194767]

end A194767

/-! ## A194767.P15321782127008598910

`(n+1)*lcm(3, n+2)/3`
-/

namespace A194767.P15321782127008598910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((Nat.lcm 3 (n + 2) : ℚ) / 3)

end

end A194767.P15321782127008598910

namespace A194767

/-- `(n+1)*lcm(3, n+2)/3` -/
def P15321782127008598910.Spec : Prop :=
  ∀ n, P15321782127008598910.a n = (A194767 n : ℚ)

end A194767

/-! ## A194767.P16344094117612137873

`(n+1)*gcd(n+2, ∑[∑[n]])`
-/

namespace A194767.P16344094117612137873
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.gcd (n + 2) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A194767.P16344094117612137873

namespace A194767

/-- `(n+1)*gcd(n+2, ∑[∑[n]])` -/
def P16344094117612137873.Spec : Prop :=
  ∀ n, (P16344094117612137873.a n : ℤ) = A194767 n

end A194767

/-! ## A194767.P18227753274359979733

`(n+1)*(n+2)/gcd(3, 1-n)`
-/

namespace A194767.P18227753274359979733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((n + 2 : ℚ) / (Int.gcd 3 (1 - (n : ℤ)) : ℚ))

end

end A194767.P18227753274359979733

namespace A194767

/-- `(n+1)*(n+2)/gcd(3, 1-n)` -/
def P18227753274359979733.Spec : Prop :=
  ∀ n, P18227753274359979733.a n = (A194767 n : ℚ)

end A194767

/-! ## A194767.P11108547668660814227

`gcd((n+1)*(n+2), C((n+1)², 3))`
-/

namespace A194767.P11108547668660814227
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd ((n + 1) * (n + 2)) (Nat.choose ((n + 1) ^ 2) 3)

end

end A194767.P11108547668660814227

namespace A194767

/-- `gcd((n+1)*(n+2), C((n+1)², 3))` -/
def P11108547668660814227.Spec : Prop :=
  ∀ n, (P11108547668660814227.a n : ℤ) = A194767 n

end A194767

/-! ## A194767.P1820115550453255885

`(n+2)*(n+1)/gcd(6, 2*n+1)`
-/

namespace A194767.P1820115550453255885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2) * (n + 1) : ℚ) / (Nat.gcd 6 (2 * n + 1) : ℚ)

end

end A194767.P1820115550453255885

namespace A194767

/-- `(n+2)*(n+1)/gcd(6, 2*n+1)` -/
def P1820115550453255885.Spec : Prop :=
  ∀ n, P1820115550453255885.a n = (A194767 n : ℚ)

end A194767

/-! ## A194767.P17523619430870300313

`lcm(n+1, (n+2)/gcd(n-1, Δ[n²]))`
-/

namespace A194767.P17523619430870300313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (SequenceMachineLib.roundAway ((n + 2 : ℚ) / (Int.gcd ((n : ℤ) - 1) ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℚ)))

end

end A194767.P17523619430870300313

namespace A194767

/-- `lcm(n+1, (n+2)/gcd(n-1, Δ[n²]))` -/
def P17523619430870300313.Spec : Prop :=
  ∀ n, (P17523619430870300313.a n : ℤ) = A194767 n

end A194767

/-! ## A194767.P11883691118752975585

`(n+1)*A145064(n)`
-/

namespace A194767.P11883691118752975585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A145064 n

end

end A194767.P11883691118752975585

namespace A194767

/-- `(n+1)*A145064(n)` -/
def P11883691118752975585.Spec : Prop :=
  ∀ n, P11883691118752975585.a n = A194767 n

end A194767

/-! ## A194767.P1546890923053628300

`A146535(n+1)+A130770(n)`
-/

namespace A194767.P1546890923053628300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146535 (n + 1) + A130770 n

end

end A194767.P1546890923053628300

namespace A194767

/-- `A146535(n+1)+A130770(n)` -/
def P1546890923053628300.Spec : Prop :=
  ∀ n, P1546890923053628300.a n = A194767 n

end A194767

/-! ## A194767.P11555829644086092775

`gcd(A100431(n), A213820(n+1))`
-/

namespace A194767.P11555829644086092775
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A100431 n) (A213820 (n + 1))

end

end A194767.P11555829644086092775

namespace A194767

/-- `gcd(A100431(n), A213820(n+1))` -/
def P11555829644086092775.Spec : Prop :=
  ∀ n, (P11555829644086092775.a n : ℤ) = A194767 n

end A194767

/-! ## A194767.P16170898502041829413

`lcm(A000027(n+1), A145064(n))`
-/

namespace A194767.P16170898502041829413
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000027 (n + 1)) (A145064 n)

end

end A194767.P16170898502041829413

namespace A194767

/-- `lcm(A000027(n+1), A145064(n))` -/
def P16170898502041829413.Spec : Prop :=
  ∀ n, (P16170898502041829413.a n : ℤ) = A194767 n

end A194767

/-! ## A194767.P10501458327138466222

`gcd(A098077(n+1), A114364(n+1))`
-/

namespace A194767.P10501458327138466222
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A098077 (n + 1)) (A114364 (n + 1))

end

end A194767.P10501458327138466222

namespace A194767

/-- `gcd(A098077(n+1), A114364(n+1))` -/
def P10501458327138466222.Spec : Prop :=
  ∀ n, (P10501458327138466222.a n : ℤ) = A194767 n

end A194767

/-! ## A194767.P17284855336270791230

`gcd(A120054(n+1), A269468(n+1))`
-/

namespace A194767.P17284855336270791230
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A120054 (n + 1)) (A269468 (n + 1))

end

end A194767.P17284855336270791230

namespace A194767

/-- `gcd(A120054(n+1), A269468(n+1))` -/
def P17284855336270791230.Spec : Prop :=
  ∀ n, (P17284855336270791230.a n : ℤ) = A194767 n

end A194767

/-! ## A194767.P662040627696324010

`gcd(A130810(n+4), A269469(n+1))`
-/

namespace A194767.P662040627696324010
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A130810 (n + 4)) (A269469 (n + 1))

end

end A194767.P662040627696324010

namespace A194767

/-- `gcd(A130810(n+4), A269469(n+1))` -/
def P662040627696324010.Spec : Prop :=
  ∀ n, (P662040627696324010.a n : ℤ) = A194767 n

end A194767

/-! ## A194767.P16791877410549188073

`(n+1)/2*A068217(n+2)`
-/

namespace A194767.P16791877410549188073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A068217 (n + 2) : ℚ)

end

end A194767.P16791877410549188073

namespace A194767

/-- `(n+1)/2*A068217(n+2)` -/
def P16791877410549188073.Spec : Prop :=
  ∀ n, P16791877410549188073.a n = (A194767 n : ℚ)

end A194767

/-! ## A194767.P8357953875736038116

`gcd(∑[A006331(n)], A002378(n+1))`
-/

namespace A194767.P8357953875736038116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006331 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A002378 (n + 1))

end

end A194767.P8357953875736038116

namespace A194767

/-- `gcd(∑[A006331(n)], A002378(n+1))` -/
def P8357953875736038116.Spec : Prop :=
  ∀ n, (P8357953875736038116.a n : ℤ) = A194767 n

end A194767

/-! ## A194767.P14110674870859284648

`A060789(n+2)*A109043(n+1)`
-/

namespace A194767.P14110674870859284648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060789 (n + 2) * A109043 (n + 1)

end

end A194767.P14110674870859284648

namespace A194767

/-- `A060789(n+2)*A109043(n+1)` -/
def P14110674870859284648.Spec : Prop :=
  ∀ n, P14110674870859284648.a n = A194767 n

end A194767

/-! ## A194767.P8120037767639738330

`2*A234041(n)*A109007(n+1)`
-/

namespace A194767.P8120037767639738330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A234041 n * A109007 (n + 1)

end

end A194767.P8120037767639738330

namespace A194767

/-- `2*A234041(n)*A109007(n+1)` -/
def P8120037767639738330.Spec : Prop :=
  ∀ n, P8120037767639738330.a n = A194767 n

end A194767

/-! ## A194767.P17378389412904349545

`2*A026741(n+1)*A060789(n+2)`
-/

namespace A194767.P17378389412904349545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A026741 (n + 1) * A060789 (n + 2))

end

end A194767.P17378389412904349545

namespace A194767

/-- `2*A026741(n+1)*A060789(n+2)` -/
def P17378389412904349545.Spec : Prop :=
  ∀ n, P17378389412904349545.a n = A194767 n

end A194767

/-! ## A194767.P14774660985635114959

`(n+1)/3*A109044(n+2)`
-/

namespace A194767.P14774660985635114959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 3 * (A109044 (n + 2) : ℚ)

end

end A194767.P14774660985635114959

namespace A194767

/-- `(n+1)/3*A109044(n+2)` -/
def P14774660985635114959.Spec : Prop :=
  ∀ n, P14774660985635114959.a n = (A194767 n : ℚ)

end A194767

/-!
# A194768: Sum of distinct positive fifth powers.

The programs for A194768, there is no canonical definition to state claims against.
-/

/-! ## A194768.P2365999344400233720

`A055014(A048794(n+1))`
-/

namespace A194768.P2365999344400233720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055014 (A048794 (n + 1)).toNat

end

end A194768.P2365999344400233720

/-! ## A194768.P16110169917014788125

`A055014(A063013(n+1))`
-/

namespace A194768.P16110169917014788125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055014 (A063013 (n + 1)).toNat

end

end A194768.P16110169917014788125

/-!
# A194769: Sum of distinct nonzero sixth powers.

The programs for A194769, there is no canonical definition to state claims against.
-/

/-! ## A194769.P2285723307987191465

`∑{digits}[A063013(n+1), A001014(#)]`
-/

namespace A194769.P2285723307987191465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063013 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A001014 x).sum

end

end A194769.P2285723307987191465

/-! ## A194769.P17161145527062732071

`∑{digits}[A063013(n+1), A055015(#)]`
-/

namespace A194769.P17161145527062732071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063013 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A055015 x).sum

end

end A194769.P17161145527062732071

/-! ## A194769.P6962255618503620017

`A055015(A048794(n+1))`
-/

namespace A194769.P6962255618503620017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055015 (A048794 (n + 1)).toNat

end

end A194769.P6962255618503620017

/-! ## A194769.P1050003760803435873

`A055015(A063013(n+1))`
-/

namespace A194769.P1050003760803435873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055015 (A063013 (n + 1)).toNat

end

end A194769.P1050003760803435873

/-!
# A194770: E.g.f. 2*sqrt(3)/3*arctan(sqrt(3)*x/(x+2)).

The programs for A194770, there is no canonical definition to state claims against.
-/

/-! ## A194770.P1312766453915602118

`((n+2)%3-1)*n!`
-/

namespace A194770.P1312766453915602118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((n + 2) % 3 : ℕ) : ℤ) - 1) * (Nat.factorial n : ℤ)

end

end A194770.P1312766453915602118

/-! ## A194770.P16296527516239071933

`(1-(2*n)%3)*n!`
-/

namespace A194770.P16296527516239071933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((2 * n % 3 : ℕ) : ℤ)) * (Nat.factorial n : ℤ)

end

end A194770.P16296527516239071933

/-! ## A194770.P17999436727800566317

`n!*A049347(n)`
-/

namespace A194770.P17999436727800566317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A049347 n

end

end A194770.P17999436727800566317

/-! ## A194770.P7165104846472328220

`(A010872(n+2)-1)*n!`
-/

namespace A194770.P7165104846472328220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010872 (n + 2) - 1) * (Nat.factorial n : ℤ)

end

end A194770.P7165104846472328220

/-! ## A194770.P6222512213512816181

`(A064429(n+1)-(n+1))*n!`
-/

namespace A194770.P6222512213512816181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A064429 (n + 1) - (n + 1 : ℤ)) * (Nat.factorial n : ℤ)

end

end A194770.P6222512213512816181

/-! ## A194770.P5301218065689079607

`A000142(n)*A049347(n)`
-/

namespace A194770.P5301218065689079607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A049347 n

end

end A194770.P5301218065689079607

/-! ## A194770.P3053557191271189073

`A010892(n)*A133942(n)`
-/

namespace A194770.P3053557191271189073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n * A133942 n

end

end A194770.P3053557191271189073

/-! ## A194770.P8359788763053459950

`∏[A028310(n)]*A049347(n)`
-/

namespace A194770.P8359788763053459950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A049347 n

end

end A194770.P8359788763053459950

/-! ## A194770.P2058728968366516528

`A000142(n)*A057078(2*n)`
-/

namespace A194770.P2058728968366516528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A057078 (2 * n)

end

end A194770.P2058728968366516528

/-! ## A194770.P1908077314710468541

`(A236348(n)-n)*A000142(n)`
-/

namespace A194770.P1908077314710468541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A236348 n - (n : ℤ)) * A000142 n

end

end A194770.P1908077314710468541

/-!
# A194771: Even numbers that divide the sum of their even divisors.

The programs for A194771, there is no canonical definition to state claims against.
-/

/-! ## A194771.P1177716260544451383

`2*A007691(n+1)`
-/

namespace A194771.P1177716260544451383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007691 (n + 1)

end

end A194771.P1177716260544451383

/-! ## A194771.P3570615611872447536

`2*lcm(A098204(n+1), A320024(n+1))`
-/

namespace A194771.P3570615611872447536
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Int.lcm (A098204 (n + 1)) (A320024 (n + 1))

end

end A194771.P3570615611872447536

/-! ## A194771.P11227655315823542659

`2*∪[A166069(n+1), A325025(n+1)]`
-/

namespace A194771.P11227655315823542659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166069 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A194771.P11227655315823542659

/-! ## A194771.P3586219904186311524

`2*∪[A325023(n+1), A354073(n+1)]`
-/

namespace A194771.P3586219904186311524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325023 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A194771.P3586219904186311524

/-! ## A194771.P5937693119605075315

`2*∪[A325025(n+1), A354073(n+1)]`
-/

namespace A194771.P5937693119605075315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A194771.P5937693119605075315

/-!
# A194772: Number of lower triangles of an (n+2) X (n+2) 0..2 array with new values introduced in row major order 0..2 and no element unequal to more than one horizontal or vertical neighbor.

The programs for A194772, the canonical program `A194772.P10562854013703021002` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194772 has offset 1).

The definition of A194772 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194772.P10562854013703021002

`or(1, A073371(n+2))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A194772

/-- `or(1, A073371(n+2))` -/
def P10562854013703021002.Spec : Prop :=
  ∀ n, P10562854013703021002.a n = A194772 (n + 1)

theorem P10562854013703021002.correct : P10562854013703021002.Spec := by
  intro n
  simp only [A194772, Nat.add_sub_cancel]

end A194772

/-! ## A194772.P3946987870996148937

`A073371(n+2)+A000035(n)`
-/

namespace A194772.P3946987870996148937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073371 (n + 2) + A000035 n

end

end A194772.P3946987870996148937

namespace A194772

/-- `A073371(n+2)+A000035(n)` -/
def P3946987870996148937.Spec : Prop :=
  ∀ n, P3946987870996148937.a n = A194772 (n + 1)

end A194772

/-! ## A194772.P5306626417182494290

`A073371(A020725(n+1))+n%2`
-/

namespace A194772.P5306626417182494290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073371 (A020725 (n + 1)).toNat + ((n % 2 : ℕ) : ℤ)

end

end A194772.P5306626417182494290

namespace A194772

/-- `A073371(A020725(n+1))+n%2` -/
def P5306626417182494290.Spec : Prop :=
  ∀ n, P5306626417182494290.a n = A194772 (n + 1)

end A194772

/-! ## A194772.P14408528181874244964

`A175656(n+2)+∑[A102713(n+1)]`
-/

namespace A194772.P14408528181874244964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102713 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175656 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194772.P14408528181874244964

namespace A194772

/-- `A175656(n+2)+∑[A102713(n+1)]` -/
def P14408528181874244964.Spec : Prop :=
  ∀ n, P14408528181874244964.a n = A194772 (n + 1)

end A194772

/-! ## A194772.P6373372789314270584

`A001045(n+4)+∑[A095977(n+1)]`
-/

namespace A194772.P6373372789314270584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095977 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 4) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194772.P6373372789314270584

namespace A194772

/-- `A001045(n+4)+∑[A095977(n+1)]` -/
def P6373372789314270584.Spec : Prop :=
  ∀ n, P6373372789314270584.a n = A194772 (n + 1)

end A194772

/-! ## A194772.P1295029975415779079

`A073371(n+2)+char[A003961(n+1)]`
-/

namespace A194772.P1295029975415779079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073371 (n + 2) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A194772.P1295029975415779079

namespace A194772

/-- `A073371(n+2)+char[A003961(n+1)]` -/
def P1295029975415779079.Spec : Prop :=
  ∀ n, P1295029975415779079.a n = A194772 (n + 1)

end A194772

/-! ## A194772.P4667048783872657672

`3*a(n-1)+a(n-2)-7*a(n-3)+4*a(n-5)` with `a(0)=7, a(1)=17, a(2)=41, a(3)=95, a(4)=219`
-/

namespace A194772.P4667048783872657672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7, 17, 41, 95, 219] fun n a =>
  3 * a (n - 1) + a (n - 2) - 7 * a (n - 3) + 4 * a (n - 5)

end

end A194772.P4667048783872657672

namespace A194772

/-- `3*a(n-1)+a(n-2)-7*a(n-3)+4*a(n-5)` -/
def P4667048783872657672.Spec : Prop :=
  ∀ n, P4667048783872657672.a n = A194772 (n + 1)

end A194772

/-!
# A194773: Number of lower triangles of an (n+4) X (n+4) 0..3 array with new values introduced in row major order 0..3 and no element unequal to more than one horizontal or vertical neighbor.

The programs for A194773, there is no canonical definition to state claims against.
-/

/-! ## A194773.P13425011230587708994

`A194778(∑[n+3]+1)`
-/

namespace A194773.P13425011230587708994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194778 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A194773.P13425011230587708994

/-! ## A194773.P9448970367644181587

`or(1, A194778(A034856(n+2)))`
-/

namespace A194773.P9448970367644181587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A194778 (A034856 (n + 2)).toNat)

end

end A194773.P9448970367644181587

/-! ## A194773.P7316593073700055832

`A096811(n)*A194778(A027379(n+1)+1)`
-/

namespace A194773.P7316593073700055832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096811 n * A194778 (A027379 (n + 1) + 1).toNat

end

end A194773.P7316593073700055832

/-! ## A194773.P12536800390197823575

`A194778(A034856(n+2))%A194772(3*n+5)`
-/

namespace A194773.P12536800390197823575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194778 (A034856 (n + 2)).toNat) (A194772 (3 * n + 5))

end

end A194773.P12536800390197823575

/-! ## A194773.P2353380239763693234

`A007318(C(n+2, 2))*A194778(A027379(n+1)+1)`
-/

namespace A194773.P2353380239763693234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose (n + 2) 2) * A194778 (A027379 (n + 1) + 1).toNat

end

end A194773.P2353380239763693234

/-!
# A194774: Number of lower triangles of an (n+6)X(n+6) 0..4 array with new values introduced in row major order 0..4 and no element unequal to more than one horizontal or vertical neighbor.

The programs for A194774, there is no canonical definition to state claims against.
-/

/-! ## A194774.P14563199676734732295

`A194778(∑[n+4]+3)`
-/

namespace A194774.P14563199676734732295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194778 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A194774.P14563199676734732295

/-!
# A194775: Number of lower triangles of an (n+8) X (n+8) 0..5 array with new values introduced in row major order 0..5 and no element unequal to more than one horizontal or vertical neighbor.

The programs for A194775, there is no canonical definition to state claims against.
-/

/-! ## A194775.P11732114167823177267

`A194778(∑[n+5]+6)`
-/

namespace A194775.P11732114167823177267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194778 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A194775.P11732114167823177267

/-!
# A194776: Number of lower triangles of an (n+10) X (n+10) 0..6 array with new values introduced in row major order 0..6 and no element unequal to more than one horizontal or vertical neighbor.

The programs for A194776, there is no canonical definition to state claims against.
-/

/-! ## A194776.P11132450403413665708

`A194778(A052905(n+3))`
-/

namespace A194776.P11132450403413665708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194778 (A052905 (n + 3)).toNat

end

end A194776.P11132450403413665708

/-! ## A194776.P2718900408244059295

`A194778(A302537(n)+15)`
-/

namespace A194776.P2718900408244059295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194778 (A302537 n + 15).toNat

end

end A194776.P2718900408244059295

/-! ## A194776.P3761976923200427810

`A194778(eq[3, A219347(n)])`
-/

namespace A194776.P3761976923200427810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194778 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194776.P3761976923200427810

/-! ## A194776.P5109089811371754212

`A194778(eq[5, A193592(n)])`
-/

namespace A194776.P5109089811371754212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194778 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194776.P5109089811371754212

/-! ## A194776.P3863598777875248289

`A194778(eq[8, A258709(n)])`
-/

namespace A194776.P3863598777875248289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194778 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194776.P3863598777875248289

/-!
# A194777: Number of lower triangles of an (n+12) X (n+12) 0..7 array with new values introduced in row major order 0..7 and no element unequal to more than one horizontal or vertical neighbor.

The programs for A194777, there is no canonical definition to state claims against.
-/

/-! ## A194777.P4484538684888516191

`A194778(A055999(n+4))`
-/

namespace A194777.P4484538684888516191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194778 (A055999 (n + 4)).toNat

end

end A194777.P4484538684888516191

/-! ## A194777.P14383457972430799158

`A194778(A168106(n)-6)`
-/

namespace A194777.P14383457972430799158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194778 (A168106 n - 6).toNat

end

end A194777.P14383457972430799158

/-! ## A194777.P15480386565736889073

`A194778(eq[4, A219347(n)])`
-/

namespace A194777.P15480386565736889073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194778 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194777.P15480386565736889073

/-! ## A194777.P10485437406010754766

`A194778(eq[5, A332954(n)])`
-/

namespace A194777.P10485437406010754766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194778 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194777.P10485437406010754766

/-! ## A194777.P18248740073453855024

`A194778(eq[6, A193592(n)])`
-/

namespace A194777.P18248740073453855024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194778 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194777.P18248740073453855024

/-!
# A194779: Number of lower triangles of a (2n-1)X(2n-1) 0..n array with new values introduced in row major order 0..n and no element unequal to more than one horizontal or vertical neighbor.

The programs for A194779, there is no canonical definition to state claims against.
-/

/-! ## A194779.P16203337304859787735

`A194778(∑[n]+1)`
-/

namespace A194779.P16203337304859787735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194778 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A194779.P16203337304859787735

/-! ## A194779.P9623438378922067021

`record[A194778(n+1)]`
-/

namespace A194779.P9623438378922067021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194779.P9623438378922067021

/-! ## A194779.P3213386067720245349

`A194778(A000124(n))+char[15]`
-/

namespace A194779.P3213386067720245349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194778 (A000124 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A194779.P3213386067720245349

/-! ## A194779.P9782463017817654803

`A096811(n)*A194778(A000124(n))`
-/

namespace A194779.P9782463017817654803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096811 n * A194778 (A000124 n).toNat

end

end A194779.P9782463017817654803

/-! ## A194779.P15102508698035356527

`A194778(A000124(n))*A365426(n)`
-/

namespace A194779.P15102508698035356527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194778 (A000124 n).toNat * A365426 n

end

end A194779.P15102508698035356527

/-!
# A194780: Number of lower triangles of a (2n)X(2n) 0..n array with new values introduced in row major order 0..n and no element unequal to more than one horizontal or vertical neighbor.

The programs for A194780, there is no canonical definition to state claims against.
-/

/-! ## A194780.P10016012932580048449

`A194778(∑[n+1]+2)`
-/

namespace A194780.P10016012932580048449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194778 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A194780.P10016012932580048449

/-! ## A194780.P3737535474452087487

`record[A194778(A014132(n+1)+1)]`
-/

namespace A194780.P3737535474452087487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194778 (A014132 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194780.P3737535474452087487

/-! ## A194780.P6954047740389851103

`record[A194778(A007401(n+1)+2)]`
-/

namespace A194780.P6954047740389851103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194778 (A007401 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194780.P6954047740389851103

/-! ## A194780.P4764960206798804205

`record[gcd(A086800(n+1), A194778(n+3))]`
-/

namespace A194780.P4764960206798804205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A086800 (n + 1)) (A194778 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194780.P4764960206798804205

/-! ## A194780.P14170419271227441023

`A194778(A133263(n+1))+A034432(n+1)`
-/

namespace A194780.P14170419271227441023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194778 (A133263 (n + 1)).toNat + A034432 (n + 1)

end

end A194780.P14170419271227441023

/-!
# A194781: Number of lower triangles of a (2n+1)X(2n+1) 0..n array with new values introduced in row major order 0..n and no element unequal to more than one horizontal or vertical neighbor.

The programs for A194781, there is no canonical definition to state claims against.
-/

/-! ## A194781.P12147414468262248929

`A194778(∑[n+2]+4)`
-/

namespace A194781.P12147414468262248929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194778 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A194781.P12147414468262248929

/-! ## A194781.P12705622271506252213

`A194779(n+2)-(n+1)`
-/

namespace A194781.P12705622271506252213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194779 (n + 2) - (n + 1 : ℤ)

end

end A194781.P12705622271506252213

/-! ## A194781.P1966272311486774869

`record[A194778(n+2)]-(n+1)`
-/

namespace A194781.P1966272311486774869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194778 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n + 1 : ℤ)

end

end A194781.P1966272311486774869

/-! ## A194781.P15806391957945690611

`and(-1, A194778(A167614(n+1)))`
-/

namespace A194781.P15806391957945690611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A194778 (A167614 (n + 1)).toNat)

end

end A194781.P15806391957945690611

/-! ## A194781.P15554751583348938422

`record[A194778(n+2)-A051340(n)]`
-/

namespace A194781.P15554751583348938422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194778 (n + 2) - A051340 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194781.P15554751583348938422

/-!
# A194782: Number of lower triangles of a (2n+2)X(2n+2) 0..n array with new values introduced in row major order 0..n and no element unequal to more than one horizontal or vertical neighbor.

The programs for A194782, there is no canonical definition to state claims against.
-/

/-! ## A194782.P7717723901893342287

`A194778(A141214(n)+7)`
-/

namespace A194782.P7717723901893342287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194778 (A141214 n + 7).toNat

end

end A194782.P7717723901893342287

/-! ## A194782.P8619307759810795331

`A194778(A052905(n)+9)`
-/

namespace A194782.P8619307759810795331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194778 (A052905 n + 9).toNat

end

end A194782.P8619307759810795331

/-! ## A194782.P15886724819182358197

`A194778(A055999(n)+10)`
-/

namespace A194782.P15886724819182358197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194778 (A055999 n + 10).toNat

end

end A194782.P15886724819182358197

/-! ## A194782.P8727945806009514403

`A194778(eq[5, A066657(n)])`
-/

namespace A194782.P8727945806009514403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194778 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194782.P8727945806009514403

/-! ## A194782.P8307427237728026056

`A194778(A167614(n+2)+1)`
-/

namespace A194782.P8307427237728026056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194778 (A167614 (n + 2) + 1).toNat

end

end A194782.P8307427237728026056

/-!
# A194783: Number of lower triangles of a (2n+3)X(2n+3) 0..n array with new values introduced in row major order 0..n and no element unequal to more than one horizontal or vertical neighbor.

The programs for A194783, there is no canonical definition to state claims against.
-/

/-! ## A194783.P7023049387364259063

`A194778(∑[n+4]+11)`
-/

namespace A194783.P7023049387364259063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194778 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A194783.P7023049387364259063

/-!
# A194784: Number of lower triangles of a (2n+4)X(2n+4) 0..n array with new values introduced in row major order 0..n and no element unequal to more than one horizontal or vertical neighbor.

The programs for A194784, there is no canonical definition to state claims against.
-/

/-! ## A194784.P1838179873178858483

`A194778(A056115(n)+21)`
-/

namespace A194784.P1838179873178858483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194778 (A056115 n + 21).toNat

end

end A194784.P1838179873178858483

/-! ## A194784.P5032952898110882935

`A194778(Δ[A264443(n)]+10)`
-/

namespace A194784.P5032952898110882935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194778 (f1 (n + 1) - f1 n + 10).toNat

end

end A194784.P5032952898110882935

/-! ## A194784.P8672090170889316454

`A194778(A167499(n+4)+1)`
-/

namespace A194784.P8672090170889316454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194778 (A167499 (n + 4) + 1).toNat

end

end A194784.P8672090170889316454

/-! ## A194784.P5188447502841403789

`A194778(A167614(n+4)+3)`
-/

namespace A194784.P5188447502841403789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194778 (A167614 (n + 4) + 3).toNat

end

end A194784.P5188447502841403789

/-! ## A194784.P63985748657897551

`A194778(A000124(n+5)+5)`
-/

namespace A194784.P63985748657897551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194778 (A000124 (n + 5) + 5).toNat

end

end A194784.P63985748657897551

/-!
# A194785: Number of lower triangles of a (2n+5)X(2n+5) 0..n array with new values introduced in row major order 0..n and no element unequal to more than one horizontal or vertical neighbor.

The programs for A194785, there is no canonical definition to state claims against.
-/

/-! ## A194785.P15534838079383931611

`A194778(A056119(n)+28)`
-/

namespace A194785.P15534838079383931611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194778 (A056119 n + 28).toNat

end

end A194785.P15534838079383931611

/-! ## A194785.P17188580902795373704

`A194778(eq[11, A066657(n)])`
-/

namespace A194785.P17188580902795373704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194778 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194785.P17188580902795373704

/-! ## A194785.P18198230552633421818

`A194778(A168106(n)-n)`
-/

namespace A194785.P18198230552633421818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194778 (A168106 n - (n : ℤ)).toNat

end

end A194785.P18198230552633421818

/-! ## A194785.P17758801382800635266

`A194778(A166136(n+5)+1)`
-/

namespace A194785.P17758801382800635266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194778 (A166136 (n + 5) + 1).toNat

end

end A194785.P17758801382800635266

/-! ## A194785.P8616867410721306310

`A194778(A000096(n+5)+8)`
-/

namespace A194785.P8616867410721306310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194778 (A000096 (n + 5) + 8).toNat

end

end A194785.P8616867410721306310

/-!
# A194786: E.g.f. satisfies: A(x) = 1 + x*A(x)^A(x).

The programs for A194786, there is no canonical definition to state claims against.
-/

/-! ## A194786.P3758561204774235037

`A065033(n*A133316(n))`
-/

namespace A194786.P3758561204774235037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 ((n : ℤ) * A133316 n).toNat

end

end A194786.P3758561204774235037

/-! ## A194786.P15589040721508621873

`A130921(round(sqrt(A214687(n))))`
-/

namespace A194786.P15589040721508621873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130921 (SequenceMachineLib.roundAway (Real.sqrt (A214687 n : ℝ))).toNat

end

end A194786.P15589040721508621873

/-!
# A194787: E.g.f. A(x) = G(x)^G(x) where G(x) = 1 + x*G(x)^G(x) is the e.g.f. of A194786.

The programs for A194787, there is no canonical definition to state claims against.
-/

/-! ## A194787.P8401684508132618272

`A194786(n+1)/(n+1)`
-/

namespace A194787.P8401684508132618272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194786 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A194787.P8401684508132618272

/-! ## A194787.P16131859062951083728

`A286448(2*A155805(n))`
-/

namespace A194787.P16131859062951083728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286448 (2 * A155805 n).toNat

end

end A194787.P16131859062951083728

/-!
# A194790: Number of lower triangles of an (n+1)X(n+1) 0..4 array with new values introduced in row major order 0..4 and no element equal to any horizontal, diagonal, antidiagonal or vertical neighbor.

The programs for A194790, there is no canonical definition to state claims against.
-/

/-! ## A194790.P3106324417973617970

`A194794(A141214(n+1))`
-/

namespace A194790.P3106324417973617970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194794 (A141214 (n + 1)).toNat

end

end A194790.P3106324417973617970

/-! ## A194790.P508902024474085211

`A194794(A155212(n)+5)`
-/

namespace A194790.P508902024474085211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194794 (A155212 n + 5).toNat

end

end A194790.P508902024474085211

/-! ## A194790.P4479499063793597009

`A194794(eq[4, A140996(n)])`
-/

namespace A194790.P4479499063793597009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194794 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194790.P4479499063793597009

/-! ## A194790.P15343123926195638458

`A194794(eq[2, A185782(n+1)-2])`
-/

namespace A194790.P15343123926195638458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194794 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194790.P15343123926195638458

/-! ## A194790.P7623736611878388142

`A194794(eq[2, A200370(n+1)-2])`
-/

namespace A194790.P7623736611878388142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194794 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194790.P7623736611878388142

/-!
# A194791: Number of lower triangles of an (n+1)X(n+1) 0..5 array with new values introduced in row major order 0..5 and no element equal to any horizontal, diagonal, antidiagonal or vertical neighbor.

The programs for A194791, there is no canonical definition to state claims against.
-/

/-! ## A194791.P3730100108715446979

`A194794(eq[2, A092921(n)])`
-/

namespace A194791.P3730100108715446979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194794 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194791.P3730100108715446979

/-! ## A194791.P11413261368194168923

`A194794(eq[8, A140996(n)])`
-/

namespace A194791.P11413261368194168923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194794 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194791.P11413261368194168923

/-! ## A194791.P1804363830567832299

`A194794(Δ[A023545(n+1)])`
-/

namespace A194791.P1804363830567832299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194794 (f1 (n + 1) - f1 n).toNat

end

end A194791.P1804363830567832299

/-! ## A194791.P14095373285421253450

`A194794(eq[2, A108947(n+1)])`
-/

namespace A194791.P14095373285421253450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194794 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194791.P14095373285421253450

/-! ## A194791.P15623687575690995060

`A194794(eq[5, A200370(n+1)])`
-/

namespace A194791.P15623687575690995060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194794 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194791.P15623687575690995060

/-!
# A194792: Number of lower triangles of an (n+1)X(n+1) 0..6 array with new values introduced in row major order 0..6 and no element equal to any horizontal, diagonal, antidiagonal or vertical neighbor.

The programs for A194792, there is no canonical definition to state claims against.
-/

/-! ## A194792.P702991880490529828

`A194794(eq[8, A258709(n)])`
-/

namespace A194792.P702991880490529828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194794 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194792.P702991880490529828

/-! ## A194792.P10177196461482791658

`A194794(A046691(n+4)-1)`
-/

namespace A194792.P10177196461482791658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194794 (A046691 (n + 4) - 1).toNat

end

end A194792.P10177196461482791658

/-! ## A194792.P13916540546995253790

`A194794(Δ[A023545(n+2)]-1)`
-/

namespace A194792.P13916540546995253790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194794 (f1 (n + 1) - f1 n - 1).toNat

end

end A194792.P13916540546995253790

/-! ## A194792.P591547650559912798

`A194794(eq[6, A195079(n+1)])`
-/

namespace A194792.P591547650559912798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194794 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194792.P591547650559912798

/-!
# A194793: Number of lower triangles of an (n+1)X(n+1) 0..7 array with new values introduced in row major order 0..7 and no element equal to any horizontal, diagonal, antidiagonal or vertical neighbor.

The programs for A194793, there is no canonical definition to state claims against.
-/

/-! ## A194793.P15839737489140877128

`A194794(A055999(n+4))`
-/

namespace A194793.P15839737489140877128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194794 (A055999 (n + 4)).toNat

end

end A194793.P15839737489140877128

/-! ## A194793.P11773523363058672150

`A194794(eq[7, A200370(n+1)])`
-/

namespace A194793.P11773523363058672150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194794 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194793.P11773523363058672150

/-!
# A194794: T(n,k)=Number of lower triangles of an (n+1)X(n+1) 0..k array with new values introduced in row major order 0..k and no element equal to any horizontal, diagonal, antidiagonal or vertical neighbor.

The programs for A194794, there is no canonical definition to state claims against.
-/

/-! ## A194794.P2662699716311697752

`and(A010445(n+1), A074586(n+1))`
-/

namespace A194794.P2662699716311697752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010445 (n + 1)) (A074586 (n + 1))

end

end A194794.P2662699716311697752

/-! ## A194794.P1517241679191061846

`A259697(n)%A000032(A281446(n))`
-/

namespace A194794.P1517241679191061846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259697 n) (A000032 (A281446 n).toNat)

end

end A194794.P1517241679191061846

/-! ## A194794.P17651281107462441496

`A098132(n+1)%A000032(A281446(n))`
-/

namespace A194794.P17651281107462441496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098132 (n + 1)) (A000032 (A281446 n).toNat)

end

end A194794.P17651281107462441496

/-! ## A194794.P10191894096606125818

`A078615(A087427(3*(n+2)))%A014682(2*(n+1))`
-/

namespace A194794.P10191894096606125818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078615 (A087427 (3 * (n + 2))).toNat) (A014682 (2 * (n + 1)))

end

end A194794.P10191894096606125818

/-! ## A194794.P15555103999164751436

`A219486(A370432(n))`
-/

namespace A194794.P15555103999164751436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219486 (A370432 n).toNat

end

end A194794.P15555103999164751436

/-!
# A194795: Imbalance of the number of partitions of n.

The programs for A194795, there is no canonical definition to state claims against.
-/

/-! ## A194795.P18227134677774716718

`(-1)^(n+2)*(A240690(n+2)-A240690(n+1))-1`
-/

namespace A194795.P18227134677774716718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 2) * (A240690 (n + 2) - A240690 (n + 1)) - 1

end

end A194795.P18227134677774716718

/-! ## A194795.P8648259956504997560

`∑[(-1)^n*A002865(n+1)]`
-/

namespace A194795.P8648259956504997560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A002865 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194795.P8648259956504997560

/-! ## A194795.P13479765626632563388

`∑[A002865(n+1)*A033999(n)]`
-/

namespace A194795.P13479765626632563388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (n + 1) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194795.P13479765626632563388

/-! ## A194795.P8404595025086115975

`Δ[A087787(n)]*A033999(n)+1`
-/

namespace A194795.P8404595025086115975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087787 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A033999 n + 1

end

end A194795.P8404595025086115975

/-! ## A194795.P16744436035452875212

`∑[(-1)^n*Δ[A000041(n)]]`
-/

namespace A194795.P16744436035452875212
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194795.P16744436035452875212

/-! ## A194795.P12401021892374172068

`(-1)^(n+1)*(A000041(n)-A000041(n+1))+a(n-1)` with `a(0)=0`
-/

namespace A194795.P12401021892374172068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (-1) ^ (n + 1) * (A000041 n - A000041 (n + 1)) + a (n - 1)

end

end A194795.P12401021892374172068

/-! ## A194795.P8957664120871304624

`∑[Δ[A000041(n)]*A131738(n)/(n+1)]`
-/

namespace A194795.P8957664120871304624
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) - f2 n) * A131738 n : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194795.P8957664120871304624

/-! ## A194795.P1992620693282308190

`∑[A002865(n+1)*A087960(2*n)]`
-/

namespace A194795.P1992620693282308190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (n + 1) * A087960 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194795.P1992620693282308190

/-! ## A194795.P14573983350895083652

`∑[A002865(n+1)*A010815(A001318(2*n))]`
-/

namespace A194795.P14573983350895083652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (n + 1) * A010815 (A001318 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194795.P14573983350895083652

/-!
# A194796: Imbalance of the number of parts of all partitions of n.

The programs for A194796, there is no canonical definition to state claims against.
-/

/-! ## A194796.P8050840288757279061

`∑[A033999(n)*A138135(n+1)]`
-/

namespace A194796.P8050840288757279061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A138135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194796.P8050840288757279061

/-! ## A194796.P2546729689569573240

`∑[(A004442(n)-n)*A138135(n+1)]`
-/

namespace A194796.P2546729689569573240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * A138135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194796.P2546729689569573240

/-! ## A194796.P9578400452630356230

`∑[A112347(2*n+1)*A138135(n+1)]`
-/

namespace A194796.P9578400452630356230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112347 (2 * n + 1) * A138135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194796.P9578400452630356230

/-! ## A194796.P10160011985001696999

`∑[A010892(A008486(n))*A138135(n+1)]`
-/

namespace A194796.P10160011985001696999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A008486 n).toNat * A138135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194796.P10160011985001696999

/-! ## A194796.P18339997092136115420

`∑[(A000041(n+1)+A182699(n+1)-A000041(n))*(-1)^n]`
-/

namespace A194796.P18339997092136115420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000041 (n + 1) + (A182699 (n + 1) - A000041 n)) * (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194796.P18339997092136115420

/-!
# A194797: Imbalance of the sum of parts of all partitions of n.

The programs for A194797, there is no canonical definition to state claims against.
-/

/-! ## A194797.P16103160307116824411

`(n+1)*(-1)^(n+1)*(A000041(n)-A000041(n+1))+a(n-1)` with `a(0)=0`
-/

namespace A194797.P16103160307116824411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n + 1 : ℤ) * (-1) ^ (n + 1) * (A000041 n - A000041 (n + 1)) + a (n - 1)

end

end A194797.P16103160307116824411

/-! ## A194797.P9038549333983971242

`∑[Δ[A000041(n)]*A131738(n)]`
-/

namespace A194797.P9038549333983971242
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A131738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194797.P9038549333983971242

/-! ## A194797.P17895769902479786529

`∑[Δ[A000065(n)]*A131738(n)]`
-/

namespace A194797.P17895769902479786529
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A131738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194797.P17895769902479786529

/-! ## A194797.P15336197171884392553

`∑[A131738(n)*A187219(n+1)]`
-/

namespace A194797.P15336197171884392553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131738 n * A187219 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194797.P15336197171884392553

/-! ## A194797.P16994428122409266897

`∑[Δ[A000041(n)]*A181983(n+1)]`
-/

namespace A194797.P16994428122409266897
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A181983 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194797.P16994428122409266897

/-! ## A194797.P11011775760263410664

`∑[A128834(3*n+1)*A138880(n+1)]`
-/

namespace A194797.P11011775760263410664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 (3 * n + 1) * A138880 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194797.P11011775760263410664

/-! ## A194797.P6156657787413540822

`∑[Δ[A000041(n)]*A329116((n+1)²)]`
-/

namespace A194797.P6156657787413540822
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A329116 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194797.P6156657787413540822

/-! ## A194797.P4336829573628045804

`∑[A002865(n+1)*A329116((n+1)²)]`
-/

namespace A194797.P4336829573628045804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (n + 1) * A329116 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194797.P4336829573628045804

/-!
# A194798: Numbers k having the same parity as the number of partitions of k.

The programs for A194798, there is no canonical definition to state claims against.
-/

/-! ## A194798.P10405604793360691925

`comp[A209920(n+1)]`
-/

namespace A194798.P10405604793360691925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A194798.P10405604793360691925

/-! ## A194798.P17971570306212979635

`eq[2, gcd(2, A133041(n))]`
-/

namespace A194798.P17971570306212979635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A133041 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A194798.P17971570306212979635

/-! ## A194798.P18129030835482448796

`eq[and(1, n), A040051(n)]`
-/

namespace A194798.P18129030835482448796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A194798.P18129030835482448796

/-! ## A194798.P13121687713716546540

`lt[(A000041(n)+n)%2, 1]`
-/

namespace A194798.P13121687713716546540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 n + (n : ℤ)) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A194798.P13121687713716546540

/-! ## A194798.P5612916766296281598

`eq[n%2, A000700(n)%2]`
-/

namespace A194798.P5612916766296281598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000700 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A194798.P5612916766296281598

/-! ## A194798.P6485850780056639268

`eq[A000035(n), A040051(n)]`
-/

namespace A194798.P6485850780056639268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A194798.P6485850780056639268

/-! ## A194798.P13352335752515066538

`eq[1, A000034(A040051(n)+n)]`
-/

namespace A194798.P13352335752515066538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A040051 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A194798.P13352335752515066538

/-! ## A194798.P16093153289894703751

`eq[1, A010684(A040051(n)+n)]`
-/

namespace A194798.P16093153289894703751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 (A040051 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A194798.P16093153289894703751

/-! ## A194798.P8919774360505415477

`eq[1, A010685(A040051(n)+n)]`
-/

namespace A194798.P8919774360505415477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 (A040051 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A194798.P8919774360505415477

/-! ## A194798.P1700484664205743012

`eq[1, A010686(A040051(n)+n)]`
-/

namespace A194798.P1700484664205743012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010686 (A040051 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A194798.P1700484664205743012

/-! ## A194798.P16706673272527434462

`eq[1, A010687(A040051(n)+n)]`
-/

namespace A194798.P16706673272527434462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010687 (A040051 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A194798.P16706673272527434462

/-! ## A194798.P6437021344102380020

`eq[1, A010688(A040051(n)+n)]`
-/

namespace A194798.P6437021344102380020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010688 (A040051 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A194798.P6437021344102380020

/-! ## A194798.P6471040947887242362

`eq[1, A010689(A040051(n)+n)]`
-/

namespace A194798.P6471040947887242362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010689 (A040051 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A194798.P6471040947887242362

/-! ## A194798.P9922886977897758058

`eq[1, A010690(A040051(n)+n)]`
-/

namespace A194798.P9922886977897758058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010690 (A040051 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A194798.P9922886977897758058

/-! ## A194798.P12981280060252120581

`eq[1, A010691(A040051(n)+n)]`
-/

namespace A194798.P12981280060252120581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010691 (A040051 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A194798.P12981280060252120581

/-! ## A194798.P7051554418835597079

`eq[1, A019303(A040051(n)+n)]`
-/

namespace A194798.P7051554418835597079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019303 (A040051 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A194798.P7051554418835597079

/-! ## A194798.P6228783065554402737

`eq[1, A019304(A040051(n)+n)]`
-/

namespace A194798.P6228783065554402737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019304 (A040051 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A194798.P6228783065554402737

/-! ## A194798.P16605184723029422628

`eq[1, A028920(A040051(n)+n)]`
-/

namespace A194798.P16605184723029422628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028920 (A040051 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A194798.P16605184723029422628

/-! ## A194798.P14861800717649322605

`eq[1, A033999(A040051(n)+n)]`
-/

namespace A194798.P14861800717649322605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A040051 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A194798.P14861800717649322605

/-! ## A194798.P9896125741303857544

`eq[1, A053381(A040051(n)+n)]`
-/

namespace A194798.P9896125741303857544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053381 (A040051 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A194798.P9896125741303857544

/-!
# A194799: Triangle read by rows: T(n,k) = number of partitions of n that are formed by k sections, k >= 1.

The programs for A194799, there is no canonical definition to state claims against.
-/

/-! ## A194799.P9385265708509267483

`A187219(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A194799.P9385265708509267483
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187219 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)

end

end A194799.P9385265708509267483

/-! ## A194799.P1619517426130778476

`A083751(C(comp[∑[n]]-n, 2)-n)+1`
-/

namespace A194799.P1619517426130778476
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083751 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n) + 1

end

end A194799.P1619517426130778476

/-! ## A194799.P10820875176168703702

`A187219(A004736(n+1))`
-/

namespace A194799.P10820875176168703702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187219 (A004736 (n + 1)).toNat

end

end A194799.P10820875176168703702

/-! ## A194799.P5721859880130696330

`A187219(A025581(n)+1)`
-/

namespace A194799.P5721859880130696330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187219 (A025581 n + 1).toNat

end

end A194799.P5721859880130696330

/-! ## A194799.P3291027026248666016

`A002865(ceil(log2(A130330(n))))`
-/

namespace A194799.P3291027026248666016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 ⌈Real.logb 2 (A130330 n : ℝ)⌉.toNat

end

end A194799.P3291027026248666016

/-! ## A194799.P11557431907675429969

`A002865(round(log2(A130330(n))))`
-/

namespace A194799.P11557431907675429969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (SequenceMachineLib.roundAway (Real.logb 2 (A130330 n : ℝ))).toNat

end

end A194799.P11557431907675429969

/-! ## A194799.P10608092533915958826

`A002865(A193592(n+1)+1)`
-/

namespace A194799.P10608092533915958826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (A193592 (n + 1) + 1).toNat

end

end A194799.P10608092533915958826

/-! ## A194799.P3358767767046265977

`A116598(comp[∑[n-2]]+1)`
-/

namespace A194799.P3358767767046265977
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A194799.P3358767767046265977

