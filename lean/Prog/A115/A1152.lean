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
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B009.C001
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A115201: Number of even parts of partitions of n in the Abramowitz-Stegun (A-St) order.

The programs for A115201, there is no canonical definition to state claims against.
-/

/-! ## A115201.P13766897898448868583

`A257992(A185974(n+1))`
-/

namespace A115201.P13766897898448868583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257992 (A185974 (n + 1)).toNat

end

end A115201.P13766897898448868583

/-! ## A115201.P2381112821699290298

`A257992(A334438(n+1))`
-/

namespace A115201.P2381112821699290298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257992 (A334438 (n + 1)).toNat

end

end A115201.P2381112821699290298

/-! ## A115201.P9742738908962622726

`∑{e}[A036035(n+1), (#+1)%2]`
-/

namespace A115201.P9742738908962622726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036035 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1) % 2

end

end A115201.P9742738908962622726

/-! ## A115201.P11754912209653490432

`∑{e}[A036035(n+1), A160382(A144771(#))]`
-/

namespace A115201.P11754912209653490432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A160382 (A144771 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A115201.P11754912209653490432

/-! ## A115201.P10730994493344091936

`A350847(A334434(n+1))`
-/

namespace A115201.P10730994493344091936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350847 (A334434 (n + 1)).toNat

end

end A115201.P10730994493344091936

/-!
# A115202: Fifth column of triangle A115193 (called C(1,2)).

The programs for A115202, there is no canonical definition to state claims against.
-/

/-! ## A115202.P3152878361225467181

`A115193(eq[4, A002262(n)])`
-/

namespace A115202.P3152878361225467181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115193 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A115202.P3152878361225467181

/-! ## A115202.P974195012259527356

`A115193(eq[16, A059268(n)])`
-/

namespace A115202.P974195012259527356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115193 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A115202.P974195012259527356

/-! ## A115202.P8665029893717165883

`A115193(A133263(n+4)+2)`
-/

namespace A115202.P8665029893717165883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115193 (A133263 (n + 4) + 2).toNat

end

end A115202.P8665029893717165883

/-! ## A115202.P5550485329333154040

`A115193(A000217(n+4)+4)`
-/

namespace A115202.P5550485329333154040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115193 (A000217 (n + 4) + 4).toNat

end

end A115202.P5550485329333154040

/-! ## A115202.P8594868840853858749

`A115193(eq[5, A002260(n+1)])`
-/

namespace A115202.P8594868840853858749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115193 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A115202.P8594868840853858749

/-!
# A115203: Sixth column of triangle A115193 (called C(1,2)).

The programs for A115203, the canonical program `A115203.P5519273001455559311` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115203 has offset 0).

The definition of A115203 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115203.P5519273001455559311

`A064062(n+3)-A000257(n+3)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A115203

/-- `A064062(n+3)-A000257(n+3)` -/
def P5519273001455559311.Spec : Prop :=
  ∀ n, P5519273001455559311.a n = A115203 n

theorem P5519273001455559311.correct : P5519273001455559311.Spec := by
  intro n
  simp only [A115203]

end A115203

/-! ## A115203.P17109068316880256694

`A115193(A167499(n+4))`
-/

namespace A115203.P17109068316880256694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115193 (A167499 (n + 4)).toNat

end

end A115203.P17109068316880256694

namespace A115203

/-- `A115193(A167499(n+4))` -/
def P17109068316880256694.Spec : Prop :=
  ∀ n, P17109068316880256694.a n = A115203 n

end A115203

/-! ## A115203.P15828806711523567627

`A115193(A166136(n+4)-1)`
-/

namespace A115203.P15828806711523567627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115193 (A166136 (n + 4) - 1).toNat

end

end A115203.P15828806711523567627

namespace A115203

/-- `A115193(A166136(n+4)-1)` -/
def P15828806711523567627.Spec : Prop :=
  ∀ n, P15828806711523567627.a n = A115203 n

end A115203

/-! ## A115203.P8370608087324200890

`A115193(A000124(n+5)+4)`
-/

namespace A115203.P8370608087324200890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115193 (A000124 (n + 5) + 4).toNat

end

end A115203.P8370608087324200890

namespace A115203

/-- `A115193(A000124(n+5)+4)` -/
def P8370608087324200890.Spec : Prop :=
  ∀ n, P8370608087324200890.a n = A115203 n

end A115203

/-! ## A115203.P14241802283756097016

`A115193(A000096(n+4)+6)`
-/

namespace A115203.P14241802283756097016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115193 (A000096 (n + 4) + 6).toNat

end

end A115203.P14241802283756097016

namespace A115203

/-- `A115193(A000096(n+4)+6)` -/
def P14241802283756097016.Spec : Prop :=
  ∀ n, P14241802283756097016.a n = A115203 n

end A115203

/-! ## A115203.P122693173583687475

`A115193(A000217(n+6)-(n+1))`
-/

namespace A115203.P122693173583687475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115193 (A000217 (n + 6) - (n + 1 : ℤ)).toNat

end

end A115203.P122693173583687475

namespace A115203

/-- `A115193(A000217(n+6)-(n+1))` -/
def P122693173583687475.Spec : Prop :=
  ∀ n, P122693173583687475.a n = A115203 n

end A115203

/-! ## A115203.P12021351860087123644

`A115193(A027379(n+5)-A004274(n+4))`
-/

namespace A115203.P12021351860087123644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115193 (A027379 (n + 5) - A004274 (n + 4)).toNat

end

end A115203.P12021351860087123644

namespace A115203

/-- `A115193(A027379(n+5)-A004274(n+4))` -/
def P12021351860087123644.Spec : Prop :=
  ∀ n, P12021351860087123644.a n = A115203 n

end A115203

/-!
# A115204: Seventh column of triangle A115193 (called C(1,2)).

The programs for A115204, there is no canonical definition to state claims against.
-/

/-! ## A115204.P18056339726228147029

`A115193(eq[6, A002262(n)])`
-/

namespace A115204.P18056339726228147029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115193 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A115204.P18056339726228147029

/-! ## A115204.P1487900243783783553

`A115193(A167499(n+5)+1)`
-/

namespace A115204.P1487900243783783553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115193 (A167499 (n + 5) + 1).toNat

end

end A115204.P1487900243783783553

/-! ## A115204.P1069635148536463748

`A115193(A000124(n+6)+5)`
-/

namespace A115204.P1069635148536463748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115193 (A000124 (n + 6) + 5).toNat

end

end A115204.P1069635148536463748

/-! ## A115204.P13453440102505415095

`A115193(A000217(n+6)+6)`
-/

namespace A115204.P13453440102505415095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115193 (A000217 (n + 6) + 6).toNat

end

end A115204.P13453440102505415095

/-! ## A115204.P5542899613198057160

`A115193(eq[7, A002260(n+1)])`
-/

namespace A115204.P5542899613198057160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115193 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A115204.P5542899613198057160

/-!
# A115205: a(n) = binomial(n, 9) + 1.

The programs for A115205, the canonical program `A115205.P18109322668786232172` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115205 has offset 0).

The definition of A115205 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n, 9)+1` (program `A115205.P18109322668786232172`, by `A115205.P18109322668786232172.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A115205.P15000478265774390524

`1+C(n, 9)`
-/

namespace A115205.P15000478265774390524
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + Nat.choose n 9

end

end A115205.P15000478265774390524

namespace A115205

/-- `1+C(n, 9)` -/
def P15000478265774390524.Spec : Prop :=
  ∀ n, (P15000478265774390524.a n : ℤ) = A115205 n

theorem P15000478265774390524.correct : P15000478265774390524.Spec := by
  intro n
  simp only [A115205, Nat.add_sub_cancel, A115205.P15000478265774390524.a, A115205.P18109322668786232172.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A115205

/-! ## A115205.P18109322668786232172

`C(n, 9)+1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A115205

/-- `C(n, 9)+1` -/
def P18109322668786232172.Spec : Prop :=
  ∀ n, (P18109322668786232172.a n : ℤ) = A115205 n

theorem P18109322668786232172.correct : P18109322668786232172.Spec := by
  intro n
  simp only [A115205]

end A115205

/-! ## A115205.P6806305944405007614

`-xor(-1, C(n, 9))`
-/

namespace A115205.P6806305944405007614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (-1) (Nat.choose n 9 : ℤ)

end

end A115205.P6806305944405007614

namespace A115205

/-- `-xor(-1, C(n, 9))` -/
def P6806305944405007614.Spec : Prop :=
  ∀ n, P6806305944405007614.a n = A115205 n

end A115205

/-! ## A115205.P5573132825610699367

`1-Δ[-C(n, 10)]`
-/

namespace A115205.P5573132825610699367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.choose n 10 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A115205.P5573132825610699367

namespace A115205

/-- `1-Δ[-C(n, 10)]` -/
def P5573132825610699367.Spec : Prop :=
  ∀ n, P5573132825610699367.a n = A115205 n

end A115205

/-! ## A115205.P10991349846640299439

`A008862(n)-A116690(n)`
-/

namespace A115205.P10991349846640299439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008862 n - A116690 n

end

end A115205.P10991349846640299439

namespace A115205

/-- `A008862(n)-A116690(n)` -/
def P10991349846640299439.Spec : Prop :=
  ∀ n, P10991349846640299439.a n = A115205 n

end A115205

/-! ## A115205.P5663728325575477882

`A008862(n)+1-A008861(n)`
-/

namespace A115205.P5663728325575477882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008862 n + (1 - A008861 n)

end

end A115205.P5663728325575477882

namespace A115205

/-- `A008862(n)+1-A008861(n)` -/
def P5663728325575477882.Spec : Prop :=
  ∀ n, P5663728325575477882.a n = A115205 n

end A115205

/-! ## A115205.P3474445094108180761

`A362197(n)+1-A362196(n)`
-/

namespace A115205.P3474445094108180761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362197 n + (1 - A362196 n)

end

end A115205.P3474445094108180761

namespace A115205

/-- `A362197(n)+1-A362196(n)` -/
def P3474445094108180761.Spec : Prop :=
  ∀ n, P3474445094108180761.a n = A115205 n

end A115205

/-! ## A115205.P10880232522906686597

`A035041(n)+1-A035042(n)`
-/

namespace A115205.P10880232522906686597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035041 n + (1 - A035042 n)

end

end A115205.P10880232522906686597

namespace A115205

/-- `A035041(n)+1-A035042(n)` -/
def P10880232522906686597.Spec : Prop :=
  ∀ n, P10880232522906686597.a n = A115205 n

end A115205

/-!
# A115206: Least number d such that prime(n) - /+ 2d form a prime pair; prime(n) being the n-th prime.

The programs for A115206, there is no canonical definition to state claims against.
-/

/-! ## A115206.P13408609668289983440

`A078611(n+3)/2`
-/

namespace A115206.P13408609668289983440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078611 (n + 3) : ℚ) / 2

end

end A115206.P13408609668289983440

/-! ## A115206.P9975248468701006598

`A001281(A078611(n+3))`
-/

namespace A115206.P9975248468701006598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A078611 (n + 3)).toNat

end

end A115206.P9975248468701006598

/-! ## A115206.P6820140019488653659

`A004524(A078611(n+3)+1)`
-/

namespace A115206.P6820140019488653659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A078611 (n + 3) + 1).toNat

end

end A115206.P6820140019488653659

/-! ## A115206.P15163390469009776495

`A004526(A078611(n+3)+1)`
-/

namespace A115206.P15163390469009776495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A078611 (n + 3) + 1).toNat

end

end A115206.P15163390469009776495

/-! ## A115206.P547723673927577467

`A028242(A078611(n+3)+1)`
-/

namespace A115206.P547723673927577467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A078611 (n + 3) + 1).toNat

end

end A115206.P547723673927577467

/-! ## A115206.P4686176986526328047

`A000463(A078611(n+3)-1)`
-/

namespace A115206.P4686176986526328047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A078611 (n + 3) - 1).toNat

end

end A115206.P4686176986526328047

/-! ## A115206.P12336910124327267490

`A082467(p?[2*n+5])/2`
-/

namespace A115206.P12336910124327267490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082467 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℚ) / 2

end

end A115206.P12336910124327267490

/-! ## A115206.P10146115751689676498

`A082467(A215848(n+1))/2`
-/

namespace A115206.P10146115751689676498
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082467 (A215848 (n + 1)).toNat : ℚ) / 2

end

end A115206.P10146115751689676498

/-! ## A115206.P10690450094994743554

`A057554(A078611(n+3)²)`
-/

namespace A115206.P10690450094994743554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057554 (A078611 (n + 3) ^ 2).toNat

end

end A115206.P10690450094994743554

/-! ## A115206.P10205474036631218538

`A274923(A078611(n+3)²)`
-/

namespace A115206.P10205474036631218538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274923 (A078611 (n + 3) ^ 2).toNat

end

end A115206.P10205474036631218538

/-!
# A115208: a(1)=0. a(n) = number of earlier terms of the sequence which when added to n produce a composite number.

The programs for A115208, there is no canonical definition to state claims against.
-/

/-! ## A115208.P11296431121569689474

`A057353(A187829(n+1)-A049084(n+1))`
-/

namespace A115208.P11296431121569689474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (A187829 (n + 1) - A049084 (n + 1)).toNat

end

end A115208.P11296431121569689474

/-! ## A115208.P3081021615459196471

`A187329(A187829(n+1)-A049084(n+1))`
-/

namespace A115208.P3081021615459196471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187329 (A187829 (n + 1) - A049084 (n + 1)).toNat

end

end A115208.P3081021615459196471

/-!
# A115211: Number of ones in binary representation of A113504(n) for n>0, a(0)=1.

The programs for A115211, there is no canonical definition to state claims against.
-/

/-! ## A115211.P9294368213079988878

`A000120(A113504(n))`
-/

namespace A115211.P9294368213079988878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A113504 n).toNat

end

end A115211.P9294368213079988878

/-! ## A115211.P6577561202780080470

`A265337(A113504(n)²)`
-/

namespace A115211.P6577561202780080470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265337 (A113504 n ^ 2).toNat

end

end A115211.P6577561202780080470

/-! ## A115211.P906038707274361573

`A316997(A113504(n)²)`
-/

namespace A115211.P906038707274361573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316997 (A113504 n ^ 2).toNat

end

end A115211.P906038707274361573

/-! ## A115211.P3649119305329139062

`A048881(2*A113504(n))`
-/

namespace A115211.P3649119305329139062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (2 * A113504 n).toNat

end

end A115211.P3649119305329139062

/-! ## A115211.P3031529590938649667

`A124769(2*A113504(n))`
-/

namespace A115211.P3031529590938649667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124769 (2 * A113504 n).toNat

end

end A115211.P3031529590938649667

/-! ## A115211.P5384985599069173088

`A265337(2*A113504(n))`
-/

namespace A115211.P5384985599069173088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265337 (2 * A113504 n).toNat

end

end A115211.P5384985599069173088

/-! ## A115211.P1778094509664536329

`A329320(3*A113504(n))`
-/

namespace A115211.P1778094509664536329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329320 (3 * A113504 n).toNat

end

end A115211.P1778094509664536329

/-! ## A115211.P5425006269784986522

`A048881(lcm(2, A113504(n)))`
-/

namespace A115211.P5425006269784986522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (Int.lcm 2 (A113504 n))

end

end A115211.P5425006269784986522

/-! ## A115211.P3987400608039393669

`A090001(33*A113504(n))`
-/

namespace A115211.P3987400608039393669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090001 (33 * A113504 n).toNat

end

end A115211.P3987400608039393669

/-! ## A115211.P16711369927136346547

`A048881(A113504(n)+63)`
-/

namespace A115211.P16711369927136346547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (A113504 n + 63).toNat

end

end A115211.P16711369927136346547

/-! ## A115211.P14647000404457933613

`A007307(round(sqrt(A113504(n))))`
-/

namespace A115211.P14647000404457933613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007307 (SequenceMachineLib.roundAway (Real.sqrt (A113504 n : ℝ))).toNat

end

end A115211.P14647000404457933613

/-! ## A115211.P16397977855016243498

`∑{e}[A001316(2*A113504(n)), #]`
-/

namespace A115211.P16397977855016243498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (2 * A113504 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A115211.P16397977855016243498

/-! ## A115211.P18282564629645782722

`∑{d}[A001316(A113504(n)), A001221(#)]`
-/

namespace A115211.P18282564629645782722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A113504 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001221 d

end

end A115211.P18282564629645782722

/-! ## A115211.P5645181637104713331

`∑{e}[A001316(A113504(n)), A005117(#)]`
-/

namespace A115211.P5645181637104713331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A113504 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A005117 (Nat.factorization (f1 n).natAbs p)

end

end A115211.P5645181637104713331

/-! ## A115211.P5481284377047149656

`∑{e}[A001316(A113504(n)), A006530(#)]`
-/

namespace A115211.P5481284377047149656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A113504 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A006530 (Nat.factorization (f1 n).natAbs p)

end

end A115211.P5481284377047149656

/-! ## A115211.P8232538609778688809

`∑{e}[A001316(A113504(n)), A014963(#)]`
-/

namespace A115211.P8232538609778688809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A113504 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A014963 (Nat.factorization (f1 n).natAbs p)

end

end A115211.P8232538609778688809

/-! ## A115211.P1045789893217838421

`∑{e}[A001316(A113504(n)), A020639(#)]`
-/

namespace A115211.P1045789893217838421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A113504 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A020639 (Nat.factorization (f1 n).natAbs p)

end

end A115211.P1045789893217838421

/-! ## A115211.P7136654148276601960

`∑{e}[A001316(A113504(n)), A115212(#)]`
-/

namespace A115211.P7136654148276601960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A113504 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A115212 (Nat.factorization (f1 n).natAbs p)

end

end A115211.P7136654148276601960

/-! ## A115211.P10761276990648212875

`∑{digits}[A001316(A113504(n)), A001222(#)]`
-/

namespace A115211.P10761276990648212875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A113504 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A001222 x).sum

end

end A115211.P10761276990648212875

/-! ## A115211.P6599529514545009114

`A001222(A001316(A113504(n)+A113504(n)))`
-/

namespace A115211.P6599529514545009114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001316 (A113504 n + A113504 n).toNat).toNat

end

end A115211.P6599529514545009114

/-!
# A115212: Record values in A113504.

The programs for A115212, there is no canonical definition to state claims against.
-/

/-! ## A115212.P5448804859436807869

`record[A113504(n)]`
-/

namespace A115212.P5448804859436807869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115212.P5448804859436807869

/-! ## A115212.P18157192817668704652

`A113504(A115213(n+1))`
-/

namespace A115212.P18157192817668704652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113504 (A115213 (n + 1)).toNat

end

end A115212.P18157192817668704652

/-! ## A115212.P12073798848597277480

`A113504(∑{p}[4^n, #^n])`
-/

namespace A115212.P12073798848597277480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113504 (∑ p ∈ Nat.primeFactors (f1 n), p ^ n)

end

end A115212.P12073798848597277480

/-! ## A115212.P16937076607111456251

`A113504(A103662(n))`
-/

namespace A115212.P16937076607111456251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113504 (A103662 n).toNat

end

end A115212.P16937076607111456251

/-!
# A115213: Where record values occur in A113504.

The programs for A115213, there is no canonical definition to state claims against.
-/

/-! ## A115213.P16037207139219270087

`record[and(A337257(n), A341972(n))]`
-/

namespace A115213.P16037207139219270087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A337257 n) (A341972 (n + 10))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115213.P16037207139219270087

/-! ## A115213.P15802521829836110719

`record[A163000(∑[A179445(n+1)])]`
-/

namespace A115213.P15802521829836110719
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179445 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163000 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115213.P15802521829836110719

/-! ## A115213.P3578512379577954320

`record[lcm(A347447(n+1), A348676(n))]`
-/

namespace A115213.P3578512379577954320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A347447 (n + 1)) (A348676 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115213.P3578512379577954320

/-! ## A115213.P14361350362537183487

`record[and(A263832(n+1), A366606(n))]`
-/

namespace A115213.P14361350362537183487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A263832 (n + 1)) (A366606 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115213.P14361350362537183487

/-! ## A115213.P5477599836558109832

`record[and(A047219(n+1), A063375(2*n+5))]`
-/

namespace A115213.P5477599836558109832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A047219 (n + 1)) (A063375 (2 * n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115213.P5477599836558109832

/-!
# A115214: Numbers n such that p(12n) is prime, where p(n) is the number of partitions of n.

The programs for A115214, there is no canonical definition to state claims against.
-/

/-! ## A115214.P8374346186755857994

`record[A273943(A111036(n+2))]`
-/

namespace A115214.P8374346186755857994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A111036 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115214.P8374346186755857994

/-! ## A115214.P2664021619165915923

`eq[1, A085561(12*n)]`
-/

namespace A115214.P2664021619165915923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085561 (12 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A115214.P2664021619165915923

/-! ## A115214.P6176540078940119869

`eq[2, A085543(12*n)]`
-/

namespace A115214.P6176540078940119869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085543 (12 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A115214.P6176540078940119869

/-! ## A115214.P17464076852644786027

`eq[2, A278241(12*n)]`
-/

namespace A115214.P17464076852644786027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278241 (12 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A115214.P17464076852644786027

/-! ## A115214.P3641892301881359377

`∩[2*n, A111036(n+1)]/2`
-/

namespace A115214.P3641892301881359377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111036 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A115214.P3641892301881359377

/-!
# A115215: Sequence obtained by reading the triangles shown below by diagonals.

The programs for A115215, there is no canonical definition to state claims against.
-/

/-! ## A115215.P5295234371727986284

`A000005(A245325(n+1)^A064989(n+1))`
-/

namespace A115215.P5295234371727986284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A245325 (n + 1) : ℚ) ^ (A064989 (n + 1) : ℤ))).toNat

end

end A115215.P5295234371727986284

/-! ## A115215.P12637933298347383108

`A000005(A245325(n+1)^A250470(n+1))`
-/

namespace A115215.P12637933298347383108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A245325 (n + 1) : ℚ) ^ (A250470 (n + 1) : ℤ))).toNat

end

end A115215.P12637933298347383108

/-! ## A115215.P9211548155430821311

`A132881(A039739(n+2)^A064989(n+1))`
-/

namespace A115215.P9211548155430821311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132881 (SequenceMachineLib.roundAway ((A039739 (n + 2) : ℚ) ^ (A064989 (n + 1) : ℤ))).toNat

end

end A115215.P9211548155430821311

/-!
# A115216: "Correlation triangle" for 2^n.

The programs for A115216, the canonical program `A115216.P6610770942830742809` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115216 has offset 0).

The definition of A115216 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115216.P6610770942830742809

`A001045(A003057(n+2))-A001045(A049581(n))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A115216

/-- `A001045(A003057(n+2))-A001045(A049581(n))` -/
def P6610770942830742809.Spec : Prop :=
  ∀ n, P6610770942830742809.a n = A115216 n

theorem P6610770942830742809.correct : P6610770942830742809.Spec := by
  intro n
  simp only [A115216]

end A115216

/-! ## A115216.P4395064754244838874

`A001045(A002024(n+1)+1)-A001045(A049581(n))`
-/

namespace A115216.P4395064754244838874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (A002024 (n + 1) + 1).toNat - A001045 (A049581 n).toNat

end

end A115216.P4395064754244838874

namespace A115216

/-- `A001045(A002024(n+1)+1)-A001045(A049581(n))` -/
def P4395064754244838874.Spec : Prop :=
  ∀ n, P4395064754244838874.a n = A115216 n

end A115216

/-! ## A115216.P5271586882226123579

`A181666(A128282(n))`
-/

namespace A115216.P5271586882226123579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181666 (A128282 n).toNat

end

end A115216.P5271586882226123579

namespace A115216

/-- `A181666(A128282(n))` -/
def P5271586882226123579.Spec : Prop :=
  ∀ n, P5271586882226123579.a n = A115216 n

end A115216

/-! ## A115216.P17263665098612899177

`A181666(A344646(n)+1)`
-/

namespace A115216.P17263665098612899177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181666 (A344646 n + 1).toNat

end

end A115216.P17263665098612899177

namespace A115216

/-- `A181666(A344646(n)+1)` -/
def P17263665098612899177.Spec : Prop :=
  ∀ n, P17263665098612899177.a n = A115216 n

end A115216

/-! ## A115216.P8788598561319898413

`A137241(2^(comp[∑[n]]-n)-A116588(n))`
-/

namespace A115216.P8788598561319898413
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137241 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) : ℤ) - (A116588 n : ℚ))).toNat

end

end A115216.P8788598561319898413

namespace A115216

/-- `A137241(2^(comp[∑[n]]-n)-A116588(n))` -/
def P8788598561319898413.Spec : Prop :=
  ∀ n, P8788598561319898413.a n = A115216 n

end A115216

/-! ## A115216.P11879634348418291614

`A179821(A140642(n))`
-/

namespace A115216.P11879634348418291614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179821 (A140642 n).toNat

end

end A115216.P11879634348418291614

namespace A115216

/-- `A179821(A140642(n))` -/
def P11879634348418291614.Spec : Prop :=
  ∀ n, P11879634348418291614.a n = A115216 n

end A115216

/-! ## A115216.P12535048519161968186

`A229762(∑[A140957(n)])`
-/

namespace A115216.P12535048519161968186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140957 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229762 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A115216.P12535048519161968186

namespace A115216

/-- `A229762(∑[A140957(n)])` -/
def P12535048519161968186.Spec : Prop :=
  ∀ n, P12535048519161968186.a n = A115216 n

end A115216

/-! ## A115216.P8612212608484377976

`A296062(∑[A140957(n)])`
-/

namespace A115216.P8612212608484377976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140957 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296062 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A115216.P8612212608484377976

namespace A115216

/-- `A296062(∑[A140957(n)])` -/
def P8612212608484377976.Spec : Prop :=
  ∀ n, P8612212608484377976.a n = A115216 n

end A115216

/-!
# A115217: Diagonal sums of "correlation triangle" for 2^n.

The programs for A115217, the canonical program `A115217.P6601270936601965785` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115217 has offset 0).

The definition of A115217 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115217.P7152919769066281015

`∑[ogf(1/(1-x-3x^2+2x^4+4x^5))]`
-/

namespace A115217.P7152919769066281015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -1, -3, 0, 2, 4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115217.P7152919769066281015

namespace A115217

/-- `∑[ogf(1/(1-x-3x^2+2x^4+4x^5))]` -/
def P7152919769066281015.Spec : Prop :=
  ∀ n, P7152919769066281015.a n = A115217 n

end A115217

/-! ## A115217.P6601270936601965785

`A122746(n)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=6`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A115217

/-- `A122746(n)+a(n-3)` -/
def P6601270936601965785.Spec : Prop :=
  ∀ n, P6601270936601965785.a n = A115217 n

theorem P6601270936601965785.correct : P6601270936601965785.Spec := by
  intro n
  simp only [A115217]

end A115217

/-! ## A115217.P10613855437126018669

`∑[A033138(n+1)-A155803(A052938(n))]`
-/

namespace A115217.P10613855437126018669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033138 (n + 1) - A155803 (A052938 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115217.P10613855437126018669

namespace A115217

/-- `∑[A033138(n+1)-A155803(A052938(n))]` -/
def P10613855437126018669.Spec : Prop :=
  ∀ n, P10613855437126018669.a n = A115217 n

end A115217

/-! ## A115217.P7177537159987585643

`or(A309714(A004903(n+1)+1), A309728(n))`
-/

namespace A115217.P7177537159987585643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A309714 (A004903 (n + 1) + 1).toNat) (A309728 n)

end

end A115217.P7177537159987585643

namespace A115217

/-- `or(A309714(A004903(n+1)+1), A309728(n))` -/
def P7177537159987585643.Spec : Prop :=
  ∀ n, P7177537159987585643.a n = A115217 n

end A115217

/-!
# A115218: Triangle read by rows: zeroth row is 0; to get row n >= 1, append next 2^n numbers to end of previous row.

The programs for A115218, the canonical program `A115218.P16102747875881407431` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115218 has offset 0).

The definition of A115218 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115218.P17621577375154443423

`n-A000295(∑[char[A000295(n)]])`
-/

namespace A115218.P17621577375154443423
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000295 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A115218.P17621577375154443423

namespace A115218

/-- `n-A000295(∑[char[A000295(n)]])` -/
def P17621577375154443423.Spec : Prop :=
  ∀ n, P17621577375154443423.a n = A115218 n

end A115218

/-! ## A115218.P16102747875881407431

`and(A062289(n+1), A092323(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A115218

/-- `and(A062289(n+1), A092323(n+1))` -/
def P16102747875881407431.Spec : Prop :=
  ∀ n, P16102747875881407431.a n = A115218 n

theorem P16102747875881407431.correct : P16102747875881407431.Spec := by
  intro n
  simp only [A115218]

end A115218

/-! ## A115218.P4426591376184248490

`A062289(n+1)%A000010(3*A053644(n+1))`
-/

namespace A115218.P4426591376184248490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062289 (n + 1)) (A000010 (3 * A053644 (n + 1)).toNat)

end

end A115218.P4426591376184248490

namespace A115218

/-- `A062289(n+1)%A000010(3*A053644(n+1))` -/
def P4426591376184248490.Spec : Prop :=
  ∀ n, P4426591376184248490.a n = A115218 n

end A115218

/-! ## A115218.P8908143883402801371

`A062289(n+1)-A000079(A062289(n+1)-(n+1))`
-/

namespace A115218.P8908143883402801371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062289 (n + 1) - A000079 (A062289 (n + 1) - (n + 1 : ℤ)).toNat

end

end A115218.P8908143883402801371

namespace A115218

/-- `A062289(n+1)-A000079(A062289(n+1)-(n+1))` -/
def P8908143883402801371.Spec : Prop :=
  ∀ n, P8908143883402801371.a n = A115218 n

end A115218

/-! ## A115218.P7040432729997788053

`and(A000225(A062289(n+1)-(n+1)), A062289(n+1))`
-/

namespace A115218.P7040432729997788053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 (A062289 (n + 1) - (n + 1 : ℤ)).toNat) (A062289 (n + 1))

end

end A115218.P7040432729997788053

namespace A115218

/-- `and(A000225(A062289(n+1)-(n+1)), A062289(n+1))` -/
def P7040432729997788053.Spec : Prop :=
  ∀ n, P7040432729997788053.a n = A115218 n

end A115218

/-! ## A115218.P8954039408764782276

`A053645(comp[or(n, a(n-1))])` with `a(0)=0`
-/

namespace A115218.P8954039408764782276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  Nat.lor n (f1 (n - 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A115218.P8954039408764782276

namespace A115218

/-- `A053645(comp[or(n, a(n-1))])` -/
def P8954039408764782276.Spec : Prop :=
  ∀ n, P8954039408764782276.a n = A115218 n

end A115218

/-! ## A115218.P10146797026350738113

`A053645(lt[and(n+1, -(n+1)), n])`
-/

namespace A115218.P10146797026350738113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A115218.P10146797026350738113

namespace A115218

/-- `A053645(lt[and(n+1, -(n+1)), n])` -/
def P10146797026350738113.Spec : Prop :=
  ∀ n, P10146797026350738113.a n = A115218 n

end A115218

/-! ## A115218.P3722430045558226462

`A053645(comp[A003817(n)])`
-/

namespace A115218.P3722430045558226462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A115218.P3722430045558226462

namespace A115218

/-- `A053645(comp[A003817(n)])` -/
def P3722430045558226462.Spec : Prop :=
  ∀ n, P3722430045558226462.a n = A115218 n

end A115218

/-! ## A115218.P4178533159568163871

`A053645(A062289(n+1))`
-/

namespace A115218.P4178533159568163871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A062289 (n + 1)).toNat

end

end A115218.P4178533159568163871

namespace A115218

/-- `A053645(A062289(n+1))` -/
def P4178533159568163871.Spec : Prop :=
  ∀ n, P4178533159568163871.a n = A115218 n

end A115218

/-! ## A115218.P10752338847324796059

`A053645(lt[0, A055941(n)])`
-/

namespace A115218.P10752338847324796059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055941 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A115218.P10752338847324796059

namespace A115218

/-- `A053645(lt[0, A055941(n)])` -/
def P10752338847324796059.Spec : Prop :=
  ∀ n, P10752338847324796059.a n = A115218 n

end A115218

/-! ## A115218.P9638111110245379108

`A053645(comp[record[A006068(n)]])`
-/

namespace A115218.P9638111110245379108
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A115218.P9638111110245379108

namespace A115218

/-- `A053645(comp[record[A006068(n)]])` -/
def P9638111110245379108.Spec : Prop :=
  ∀ n, P9638111110245379108.a n = A115218 n

end A115218

/-! ## A115218.P3636208758227058733

`A053645(comp[2*(n-A053645(n+1))]+1)`
-/

namespace A115218.P3636208758227058733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) - A053645 (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A115218.P3636208758227058733

namespace A115218

/-- `A053645(comp[2*(n-A053645(n+1))]+1)` -/
def P3636208758227058733.Spec : Prop :=
  ∀ n, P3636208758227058733.a n = A115218 n

end A115218

/-! ## A115218.P15733056993704543883

`A053645(lt[A241816(n), n])`
-/

namespace A115218.P15733056993704543883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241816 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A115218.P15733056993704543883

namespace A115218

/-- `A053645(lt[A241816(n), n])` -/
def P15733056993704543883.Spec : Prop :=
  ∀ n, P15733056993704543883.a n = A115218 n

end A115218

/-! ## A115218.P15533043427702260536

`A053645(lt[0, A053645(n+1)])`
-/

namespace A115218.P15533043427702260536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A115218.P15533043427702260536

namespace A115218

/-- `A053645(lt[0, A053645(n+1)])` -/
def P15533043427702260536.Spec : Prop :=
  ∀ n, P15533043427702260536.a n = A115218 n

end A115218

/-! ## A115218.P15864435234001863939

`A062289(n+1)-A053644(A062289(n+1)+1)`
-/

namespace A115218.P15864435234001863939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062289 (n + 1) - A053644 (A062289 (n + 1) + 1).toNat

end

end A115218.P15864435234001863939

namespace A115218

/-- `A062289(n+1)-A053644(A062289(n+1)+1)` -/
def P15864435234001863939.Spec : Prop :=
  ∀ n, P15864435234001863939.a n = A115218 n

end A115218

/-! ## A115218.P11981105703374090278

`A053645(comp[n-A053645(n+1)])`
-/

namespace A115218.P11981105703374090278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A053645 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A115218.P11981105703374090278

namespace A115218

/-- `A053645(comp[n-A053645(n+1)])` -/
def P11981105703374090278.Spec : Prop :=
  ∀ n, P11981105703374090278.a n = A115218 n

end A115218

/-! ## A115218.P6598866383330636293

`A164089(2*lt[A080079(n+1), n])`
-/

namespace A115218.P6598866383330636293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080079 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164089 (2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A115218.P6598866383330636293

namespace A115218

/-- `A164089(2*lt[A080079(n+1), n])` -/
def P6598866383330636293.Spec : Prop :=
  ∀ n, P6598866383330636293.a n = A115218 n

end A115218

/-! ## A115218.P499220101067791169

`A053645(comp[A072376(n)]-1)`
-/

namespace A115218.P499220101067791169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072376 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n - 1)

end

end A115218.P499220101067791169

namespace A115218

/-- `A053645(comp[A072376(n)]-1)` -/
def P499220101067791169.Spec : Prop :=
  ∀ n, P499220101067791169.a n = A115218 n

end A115218

/-! ## A115218.P35808106084234495

`A053645(comp[n-A153152(n)])`
-/

namespace A115218.P35808106084234495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A153152 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A115218.P35808106084234495

namespace A115218

/-- `A053645(comp[n-A153152(n)])` -/
def P35808106084234495.Spec : Prop :=
  ∀ n, P35808106084234495.a n = A115218 n

end A115218

/-! ## A115218.P5423100590673445404

`A053645(comp[record[A153141(n)]])`
-/

namespace A115218.P5423100590673445404
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153141 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A115218.P5423100590673445404

namespace A115218

/-- `A053645(comp[record[A153141(n)]])` -/
def P5423100590673445404.Spec : Prop :=
  ∀ n, P5423100590673445404.a n = A115218 n

end A115218

/-!
# A115219: Expansion of 2*x^2*(1-x)/(1-3*x+2*x^2-2*x^3).

The programs for A115219, the canonical program `A115219.P2862890205262087747` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115219 has offset 0).

The definition of A115219 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((2x^2-2x^3)/(1-3x+2x^2-2x^3))` (program `A115219.P2862890205262087747`, by `A115219.P2862890205262087747.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A115219.P2862890205262087747

`ogf((2x^2-2x^3)/(1-3x+2x^2-2x^3))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A115219

/-- `ogf((2x^2-2x^3)/(1-3x+2x^2-2x^3))` -/
def P2862890205262087747.Spec : Prop :=
  ∀ n, P2862890205262087747.a n = A115219 n

theorem P2862890205262087747.correct : P2862890205262087747.Spec := by
  intro n
  simp only [A115219]

end A115219

/-! ## A115219.P762342703263469257

`Δ[A111281(n+1)]%∑[A111281(n)]`
-/

namespace A115219.P762342703263469257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111281 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A115219.P762342703263469257

namespace A115219

/-- `Δ[A111281(n+1)]%∑[A111281(n)]` -/
def P762342703263469257.Spec : Prop :=
  ∀ n, P762342703263469257.a n = A115219 n

end A115219

/-! ## A115219.P9306007664460330870

`(A111281(n+1)+A111281(n+2))%A120925(n)`
-/

namespace A115219.P9306007664460330870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A111281 (n + 1) + A111281 (n + 2)) (A120925 n)

end

end A115219.P9306007664460330870

namespace A115219

/-- `(A111281(n+1)+A111281(n+2))%A120925(n)` -/
def P9306007664460330870.Spec : Prop :=
  ∀ n, P9306007664460330870.a n = A115219 n

end A115219

/-! ## A115219.P17952223013646476531

`A108602(A149784(n))`
-/

namespace A115219.P17952223013646476531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108602 (A149784 n).toNat

end

end A115219.P17952223013646476531

namespace A115219

/-- `A108602(A149784(n))` -/
def P17952223013646476531.Spec : Prop :=
  ∀ n, P17952223013646476531.a n = A115219 n

end A115219

/-!
# A115220: Expansion of x^4*(1-2*x-2*x^2)/(1-4*x+x^4-2*x^5-2*x^6).

The programs for A115220, the canonical program `A115220.P8839568710122780583` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115220 has offset 0).

The definition of A115220 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x^4-2x^5-2x^6)/(1-4x+x^4-2x^5-2x^6))` (program `A115220.P8839568710122780583`, by `A115220.P8839568710122780583.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A115220.P8839568710122780583

`ogf((x^4-2x^5-2x^6)/(1-4x+x^4-2x^5-2x^6))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A115220

/-- `ogf((x^4-2x^5-2x^6)/(1-4x+x^4-2x^5-2x^6))` -/
def P8839568710122780583.Spec : Prop :=
  ∀ n, P8839568710122780583.a n = A115220 n

theorem P8839568710122780583.correct : P8839568710122780583.Spec := by
  intro n
  simp only [A115220]

end A115220

/-! ## A115220.P8867324682566529228

`4*a(n-1)-a(n-4)+2*a(n-5)+2*a(n-6)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=1, a(5)=2, a(6)=6`
-/

namespace A115220.P8867324682566529228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 0, 1, 2, 6] fun n a =>
  4 * a (n - 1) - a (n - 4) + 2 * a (n - 5) + 2 * a (n - 6)

end

end A115220.P8867324682566529228

namespace A115220

/-- `4*a(n-1)-a(n-4)+2*a(n-5)+2*a(n-6)` -/
def P8867324682566529228.Spec : Prop :=
  ∀ n, P8867324682566529228.a n = A115220 n

end A115220

/-! ## A115220.P37846533524866825

`A343609(10*A107243(n))`
-/

namespace A115220.P37846533524866825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 (10 * A107243 n).toNat

end

end A115220.P37846533524866825

namespace A115220

/-- `A343609(10*A107243(n))` -/
def P37846533524866825.Spec : Prop :=
  ∀ n, P37846533524866825.a n = A115220 n

end A115220

/-! ## A115220.P5875261487438737005

`A008618(or(A052709(n), A255918(n+1)))`
-/

namespace A115220.P5875261487438737005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (Int.lor (A052709 n) (A255918 (n + 1))).toNat

end

end A115220.P5875261487438737005

namespace A115220

/-- `A008618(or(A052709(n), A255918(n+1)))` -/
def P5875261487438737005.Spec : Prop :=
  ∀ n, P5875261487438737005.a n = A115220 n

end A115220

/-! ## A115220.P8410053588843576233

`A165190(round(A199543(n)/A199410(n+2)))`
-/

namespace A115220.P8410053588843576233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 (SequenceMachineLib.roundAway ((A199543 n : ℚ) / (A199410 (n + 2) : ℚ))).toNat

end

end A115220.P8410053588843576233

namespace A115220

/-- `A165190(round(A199543(n)/A199410(n+2)))` -/
def P8410053588843576233.Spec : Prop :=
  ∀ n, P8410053588843576233.a n = A115220 n

end A115220

/-!
# A115221: Number of 3 X 3 matrices over Z(n) having determinant 0.

The programs for A115221, there is no canonical definition to state claims against.
-/

/-! ## A115221.P12868005519542328943

`(n+1)^9-A115222(n+1)`
-/

namespace A115221.P12868005519542328943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 9 : ℤ) - A115222 (n + 1)

end

end A115221.P12868005519542328943

/-! ## A115221.P17400242462078816400

`A064767(n+1)+A065499(n+1)-A115222(n+1)`
-/

namespace A115221.P17400242462078816400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064767 (n + 1) + (A065499 (n + 1) - A115222 (n + 1))

end

end A115221.P17400242462078816400

/-!
# A115222: Number of 3 X 3 matrices over Z(n) having nonzero determinant.

The programs for A115222, there is no canonical definition to state claims against.
-/

/-! ## A115222.P5796956910990517402

`(n+1)^9-A115221(n+1)`
-/

namespace A115222.P5796956910990517402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 9 : ℤ) - A115221 (n + 1)

end

end A115222.P5796956910990517402

/-! ## A115222.P15592395820621696274

`A064767(n+1)+A065499(n+1)-A115221(n+1)`
-/

namespace A115222.P15592395820621696274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064767 (n + 1) + (A065499 (n + 1) - A115221 (n + 1))

end

end A115222.P15592395820621696274

/-!
# A115223: Number of 3 X 3 symmetric matrices over Z(n) having determinant 0.

The programs for A115223, there is no canonical definition to state claims against.
-/

/-! ## A115223.P3165963314482263101

`(n+1)^6-A115225(n+1)`
-/

namespace A115223.P3165963314482263101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 6 : ℤ) - A115225 (n + 1)

end

end A115223.P3165963314482263101

/-!
# A115224: Number of 3 X 3 symmetric matrices over Z(n) having determinant 1.

The programs for A115224, the canonical program `A115224.P1763659109622953996` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115224 has offset 1).

The definition of A115224 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059376, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A115224.P1763659109622953996

`(n+1)²*A059376(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A115224

/-- `(n+1)²*A059376(n+1)` -/
def P1763659109622953996.Spec : Prop :=
  ∀ n, P1763659109622953996.a n = A115224 (n + 1)

theorem P1763659109622953996.correct : P1763659109622953996.Spec := by
  intro n
  simp only [A115224, Nat.add_sub_cancel]

end A115224

/-! ## A115224.P11240466068116722750

`A011785(n+1)/A000056(n+1)`
-/

namespace A115224.P11240466068116722750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011785 (n + 1) : ℚ) / (A000056 (n + 1) : ℚ)

end

end A115224.P11240466068116722750

namespace A115224

/-- `A011785(n+1)/A000056(n+1)` -/
def P11240466068116722750.Spec : Prop :=
  ∀ n, P11240466068116722750.a n = (A115224 (n + 1) : ℚ)

end A115224

/-! ## A115224.P7475185731772012001

`A059376((n+1)²)/(n+1)`
-/

namespace A115224.P7475185731772012001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059376 ((n + 1) ^ 2) : ℚ) / (n + 1 : ℚ)

end

end A115224.P7475185731772012001

namespace A115224

/-- `A059376((n+1)²)/(n+1)` -/
def P7475185731772012001.Spec : Prop :=
  ∀ n, P7475185731772012001.a n = (A115224 (n + 1) : ℚ)

end A115224

/-! ## A115224.P17461801513217084641

`A115226(n+1)/Δ[A005728(n)]`
-/

namespace A115224.P17461801513217084641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115226 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A115224.P17461801513217084641

namespace A115224

/-- `A115226(n+1)/Δ[A005728(n)]` -/
def P17461801513217084641.Spec : Prop :=
  ∀ n, P17461801513217084641.a n = (A115224 (n + 1) : ℚ)

end A115224

/-! ## A115224.P1051451748495027010

`A053191(n+1)*A160889(n+1)`
-/

namespace A115224.P1051451748495027010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053191 (n + 1) * A160889 (n + 1)

end

end A115224.P1051451748495027010

namespace A115224

/-- `A053191(n+1)*A160889(n+1)` -/
def P1051451748495027010.Spec : Prop :=
  ∀ n, P1051451748495027010.a n = A115224 (n + 1)

end A115224

/-! ## A115224.P2578398763159705914

`A064767(n+1)/A000252(n+1)`
-/

namespace A115224.P2578398763159705914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064767 (n + 1) : ℚ) / (A000252 (n + 1) : ℚ)

end

end A115224.P2578398763159705914

namespace A115224

/-- `A064767(n+1)/A000252(n+1)` -/
def P2578398763159705914.Spec : Prop :=
  ∀ n, P2578398763159705914.a n = (A115224 (n + 1) : ℚ)

end A115224

/-! ## A115224.P15020157891743297359

`A115226(n+1)/A000010(n+1)`
-/

namespace A115224.P15020157891743297359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115226 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A115224.P15020157891743297359

namespace A115224

/-- `A115226(n+1)/A000010(n+1)` -/
def P15020157891743297359.Spec : Prop :=
  ∀ n, P15020157891743297359.a n = (A115224 (n + 1) : ℚ)

end A115224

/-! ## A115224.P3292298422834648527

`A011786(n+1)/A364771(n+1)`
-/

namespace A115224.P3292298422834648527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011786 (n + 1) : ℚ) / (A364771 (n + 1) : ℚ)

end

end A115224.P3292298422834648527

namespace A115224

/-- `A011786(n+1)/A364771(n+1)` -/
def P3292298422834648527.Spec : Prop :=
  ∀ n, P3292298422834648527.a n = (A115224 (n + 1) : ℚ)

end A115224

/-! ## A115224.P16957666393147496425

`A305186(n+1)/A294705(n+1)`
-/

namespace A115224.P16957666393147496425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305186 (n + 1) : ℚ) / (A294705 (n + 1) : ℚ)

end

end A115224.P16957666393147496425

namespace A115224

/-- `A305186(n+1)/A294705(n+1)` -/
def P16957666393147496425.Spec : Prop :=
  ∀ n, P16957666393147496425.a n = (A115224 (n + 1) : ℚ)

end A115224

/-! ## A115224.P12722337074934202520

`A115226(n+1)/Δ[A100449(n)/4]`
-/

namespace A115224.P12722337074934202520
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100449 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115226 (n + 1) : ℚ) / (f1 (n + 1) - f1 n)

end

end A115224.P12722337074934202520

namespace A115224

/-- `A115226(n+1)/Δ[A100449(n)/4]` -/
def P12722337074934202520.Spec : Prop :=
  ∀ n, P12722337074934202520.a n = (A115224 (n + 1) : ℚ)

end A115224

/-! ## A115224.P1323700685298103511

`A115226(n+1)/(A109606(n+1)+1)`
-/

namespace A115224.P1323700685298103511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115226 (n + 1) : ℚ) / (A109606 (n + 1) + 1 : ℚ)

end

end A115224.P1323700685298103511

namespace A115224

/-- `A115226(n+1)/(A109606(n+1)+1)` -/
def P1323700685298103511.Spec : Prop :=
  ∀ n, P1323700685298103511.a n = (A115224 (n + 1) : ℚ)

end A115224

/-! ## A115224.P8386909701307914627

`A115226(n+1)/(A039649(n+1)-1)`
-/

namespace A115224.P8386909701307914627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115226 (n + 1) : ℚ) / (A039649 (n + 1) - 1 : ℚ)

end

end A115224.P8386909701307914627

namespace A115224

/-- `A115226(n+1)/(A039649(n+1)-1)` -/
def P8386909701307914627.Spec : Prop :=
  ∀ n, P8386909701307914627.a n = (A115224 (n + 1) : ℚ)

end A115224

/-! ## A115224.P14125829613380271478

`∑{d}[n+1, A001160(#)*A053822((n+1)/#)]`
-/

namespace A115224.P14125829613380271478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001160 d * A053822 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A115224.P14125829613380271478

namespace A115224

/-- `∑{d}[n+1, A001160(#)*A053822((n+1)/#)]` -/
def P14125829613380271478.Spec : Prop :=
  ∀ n, P14125829613380271478.a n = A115224 (n + 1)

end A115224

/-! ## A115224.P2020596749098766803

`∑{d}[n+1, A046970(#)*A059378((n+1)/#)]`
-/

namespace A115224.P2020596749098766803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046970 d * A059378 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A115224.P2020596749098766803

namespace A115224

/-- `∑{d}[n+1, A046970(#)*A059378((n+1)/#)]` -/
def P2020596749098766803.Spec : Prop :=
  ∀ n, P2020596749098766803.a n = A115224 (n + 1)

end A115224

/-! ## A115224.P1050224113714390227

`∑{d}[n+1, A008683(#)*A372962((n+1)/#)]`
-/

namespace A115224.P1050224113714390227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A372962 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A115224.P1050224113714390227

namespace A115224

/-- `∑{d}[n+1, A008683(#)*A372962((n+1)/#)]` -/
def P1050224113714390227.Spec : Prop :=
  ∀ n, P1050224113714390227.a n = A115224 (n + 1)

end A115224

/-! ## A115224.P13940321005713401930

`∑{d}[n+1, A238533(#)*A379833((n+1)/#)]`
-/

namespace A115224.P13940321005713401930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A238533 d * A379833 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A115224.P13940321005713401930

namespace A115224

/-- `∑{d}[n+1, A238533(#)*A379833((n+1)/#)]` -/
def P13940321005713401930.Spec : Prop :=
  ∀ n, P13940321005713401930.a n = A115224 (n + 1)

end A115224

/-! ## A115224.P3322865036789698661

`∑{d}[n+1, A328639(#)*A351300((n+1)/#)]`
-/

namespace A115224.P3322865036789698661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328639 d * A351300 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A115224.P3322865036789698661

namespace A115224

/-- `∑{d}[n+1, A328639(#)*A351300((n+1)/#)]` -/
def P3322865036789698661.Spec : Prop :=
  ∀ n, P3322865036789698661.a n = A115224 (n + 1)

end A115224

/-! ## A115224.P18297210482768312451

`∑{d}[n+1, A343499(#)*A351654((n+1)/#)]`
-/

namespace A115224.P18297210482768312451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A343499 d * A351654 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A115224.P18297210482768312451

namespace A115224

/-- `∑{d}[n+1, A343499(#)*A351654((n+1)/#)]` -/
def P18297210482768312451.Spec : Prop :=
  ∀ n, P18297210482768312451.a n = A115224 (n + 1)

end A115224

/-! ## A115224.P10622485913121687011

`∑{d}[n+1, A328502(#)*A372961((n+1)/#)]`
-/

namespace A115224.P10622485913121687011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328502 d * A372961 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A115224.P10622485913121687011

namespace A115224

/-- `∑{d}[n+1, A328502(#)*A372961((n+1)/#)]` -/
def P10622485913121687011.Spec : Prop :=
  ∀ n, P10622485913121687011.a n = A115224 (n + 1)

end A115224

/-! ## A115224.P7165061547799309173

`(n+1)²*A160889(n+1)*A000010(n+1)`
-/

namespace A115224.P7165061547799309173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A160889 (n + 1) * A000010 (n + 1)

end

end A115224.P7165061547799309173

namespace A115224

/-- `(n+1)²*A160889(n+1)*A000010(n+1)` -/
def P7165061547799309173.Spec : Prop :=
  ∀ n, P7165061547799309173.a n = A115224 (n + 1)

end A115224

/-!
# A115225: Number of 3 X 3 symmetric matrices over Z(n) having nonzero determinant.

The programs for A115225, there is no canonical definition to state claims against.
-/

/-! ## A115225.P13179567362627711838

`(n+1)^6-A115223(n+1)`
-/

namespace A115225.P13179567362627711838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 6 : ℤ) - A115223 (n + 1)

end

end A115225.P13179567362627711838

/-!
# A115226: Order of the group of invertible 3 X 3 symmetric matrices over Z(n).

The programs for A115226, the canonical program `A115226.P2780584315718374276` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115226 has offset 1).

The definition of A115226 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000056, A064767, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A115226.P2780584315718374276

`A064767(n+1)/A000056(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A115226

/-- `A064767(n+1)/A000056(n+1)` -/
def P2780584315718374276.Spec : Prop :=
  ∀ n, P2780584315718374276.a n = (A115226 (n + 1) : ℚ)

end A115226

/-! ## A115226.P3242078158421173801

`A053191(n+1)*A059376(n+1)`
-/

namespace A115226.P3242078158421173801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053191 (n + 1) * A059376 (n + 1)

end

end A115226.P3242078158421173801

namespace A115226

/-- `A053191(n+1)*A059376(n+1)` -/
def P3242078158421173801.Spec : Prop :=
  ∀ n, P3242078158421173801.a n = A115226 (n + 1)

end A115226

/-! ## A115226.P7714248515917778783

`A000010(n+1)*A115224(n+1)`
-/

namespace A115226.P7714248515917778783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A115224 (n + 1)

end

end A115226.P7714248515917778783

namespace A115226

/-- `A000010(n+1)*A115224(n+1)` -/
def P7714248515917778783.Spec : Prop :=
  ∀ n, P7714248515917778783.a n = A115226 (n + 1)

end A115226

/-! ## A115226.P16377260810208541979

`A011785(n+1)/A000082(n+1)`
-/

namespace A115226.P16377260810208541979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011785 (n + 1) : ℚ) / (A000082 (n + 1) : ℚ)

end

end A115226.P16377260810208541979

namespace A115226

/-- `A011785(n+1)/A000082(n+1)` -/
def P16377260810208541979.Spec : Prop :=
  ∀ n, P16377260810208541979.a n = (A115226 (n + 1) : ℚ)

end A115226

/-! ## A115226.P12575432681169064739

`A305186(n+1)/A364771(n+1)`
-/

namespace A115226.P12575432681169064739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305186 (n + 1) : ℚ) / (A364771 (n + 1) : ℚ)

end

end A115226.P12575432681169064739

namespace A115226

/-- `A305186(n+1)/A364771(n+1)` -/
def P12575432681169064739.Spec : Prop :=
  ∀ n, P12575432681169064739.a n = (A115226 (n + 1) : ℚ)

end A115226

/-! ## A115226.P4571978147869840325

`A064767(n+1)/((n+1)*A007434(n+1))`
-/

namespace A115226.P4571978147869840325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064767 (n + 1) : ℚ) / ((n + 1 : ℤ) * A007434 (n + 1) : ℚ)

end

end A115226.P4571978147869840325

namespace A115226

/-- `A064767(n+1)/((n+1)*A007434(n+1))` -/
def P4571978147869840325.Spec : Prop :=
  ∀ n, P4571978147869840325.a n = (A115226 (n + 1) : ℚ)

end A115226

/-! ## A115226.P9698562788904604017

`A000010(n+1)*(n+1)²*A059376(n+1)`
-/

namespace A115226.P9698562788904604017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * ((n + 1) ^ 2 : ℤ) * A059376 (n + 1)

end

end A115226.P9698562788904604017

namespace A115226

/-- `A000010(n+1)*(n+1)²*A059376(n+1)` -/
def P9698562788904604017.Spec : Prop :=
  ∀ n, P9698562788904604017.a n = A115226 (n + 1)

end A115226

/-! ## A115226.P4776759739594624545

`A000010(n+1)/A000056(n+1)*A011785(n+1)`
-/

namespace A115226.P4776759739594624545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A000056 (n + 1) : ℚ) * (A011785 (n + 1) : ℚ)

end

end A115226.P4776759739594624545

namespace A115226

/-- `A000010(n+1)/A000056(n+1)*A011785(n+1)` -/
def P4776759739594624545.Spec : Prop :=
  ∀ n, P4776759739594624545.a n = (A115226 (n + 1) : ℚ)

end A115226

/-! ## A115226.P18176770262660691626

`A000010(n+1)/A000252(n+1)*A064767(n+1)`
-/

namespace A115226.P18176770262660691626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A000252 (n + 1) : ℚ) * (A064767 (n + 1) : ℚ)

end

end A115226.P18176770262660691626

namespace A115226

/-- `A000010(n+1)/A000252(n+1)*A064767(n+1)` -/
def P18176770262660691626.Spec : Prop :=
  ∀ n, P18176770262660691626.a n = (A115226 (n + 1) : ℚ)

end A115226

/-! ## A115226.P17667006731794505382

`A064767(n+1)/(A001615(n+1)*A002618(n+1))`
-/

namespace A115226.P17667006731794505382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064767 (n + 1) : ℚ) / (A001615 (n + 1) * A002618 (n + 1) : ℚ)

end

end A115226.P17667006731794505382

namespace A115226

/-- `A064767(n+1)/(A001615(n+1)*A002618(n+1))` -/
def P17667006731794505382.Spec : Prop :=
  ∀ n, P17667006731794505382.a n = (A115226 (n + 1) : ℚ)

end A115226

/-! ## A115226.P403916720698194182

`A000252(n+1)/A000056(n+1)*A115224(n+1)`
-/

namespace A115226.P403916720698194182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000252 (n + 1) : ℚ) / (A000056 (n + 1) : ℚ) * (A115224 (n + 1) : ℚ)

end

end A115226.P403916720698194182

namespace A115226

/-- `A000252(n+1)/A000056(n+1)*A115224(n+1)` -/
def P403916720698194182.Spec : Prop :=
  ∀ n, P403916720698194182.a n = (A115226 (n + 1) : ℚ)

end A115226

/-! ## A115226.P16668173020144301502

`A064767(n+1)/A011785(n+1)*A115224(n+1)`
-/

namespace A115226.P16668173020144301502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064767 (n + 1) : ℚ) / (A011785 (n + 1) : ℚ) * (A115224 (n + 1) : ℚ)

end

end A115226.P16668173020144301502

namespace A115226

/-- `A064767(n+1)/A011785(n+1)*A115224(n+1)` -/
def P16668173020144301502.Spec : Prop :=
  ∀ n, P16668173020144301502.a n = (A115226 (n + 1) : ℚ)

end A115226

/-! ## A115226.P1318165724080399448

`A064767(n+1)/(A062570(n+1)*A070732(n+1))`
-/

namespace A115226.P1318165724080399448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064767 (n + 1) : ℚ) / (A062570 (n + 1) * A070732 (n + 1) : ℚ)

end

end A115226.P1318165724080399448

namespace A115226

/-- `A064767(n+1)/(A062570(n+1)*A070732(n+1))` -/
def P1318165724080399448.Spec : Prop :=
  ∀ n, P1318165724080399448.a n = (A115226 (n + 1) : ℚ)

end A115226

/-! ## A115226.P8663928065127150898

`A064767(n+1)/(A060594(n+1)*A300915(n+1))`
-/

namespace A115226.P8663928065127150898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064767 (n + 1) : ℚ) / (A060594 (n + 1) * A300915 (n + 1) : ℚ)

end

end A115226.P8663928065127150898

namespace A115226

/-- `A064767(n+1)/(A060594(n+1)*A300915(n+1))` -/
def P8663928065127150898.Spec : Prop :=
  ∀ n, P8663928065127150898.a n = (A115226 (n + 1) : ℚ)

end A115226

/-! ## A115226.P3206966306787462806

`A115224(n+1)/A011786(n+1)*A305186(n+1)`
-/

namespace A115226.P3206966306787462806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115224 (n + 1) : ℚ) / (A011786 (n + 1) : ℚ) * (A305186 (n + 1) : ℚ)

end

end A115226.P3206966306787462806

namespace A115226

/-- `A115224(n+1)/A011786(n+1)*A305186(n+1)` -/
def P3206966306787462806.Spec : Prop :=
  ∀ n, P3206966306787462806.a n = (A115226 (n + 1) : ℚ)

end A115226

/-! ## A115226.P3396498920856014698

`A000010(n+1)²/A000252(n+1)*A011785(n+1)`
-/

namespace A115226.P3396498920856014698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) ^ 2 : ℚ) / (A000252 (n + 1) : ℚ) * (A011785 (n + 1) : ℚ)

end

end A115226.P3396498920856014698

namespace A115226

/-- `A000010(n+1)²/A000252(n+1)*A011785(n+1)` -/
def P3396498920856014698.Spec : Prop :=
  ∀ n, P3396498920856014698.a n = (A115226 (n + 1) : ℚ)

end A115226

/-! ## A115226.P2491987493421074072

`A000252(n+1)/A000056(n+1)²*A011785(n+1)`
-/

namespace A115226.P2491987493421074072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000252 (n + 1) : ℚ) / (A000056 (n + 1) ^ 2 : ℚ) * (A011785 (n + 1) : ℚ)

end

end A115226.P2491987493421074072

namespace A115226

/-- `A000252(n+1)/A000056(n+1)²*A011785(n+1)` -/
def P2491987493421074072.Spec : Prop :=
  ∀ n, P2491987493421074072.a n = (A115226 (n + 1) : ℚ)

end A115226

/-! ## A115226.P9218238466395764932

`A064767(n+1)²/(A000252(n+1)*A011785(n+1))`
-/

namespace A115226.P9218238466395764932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064767 (n + 1) ^ 2 : ℚ) / (A000252 (n + 1) * A011785 (n + 1) : ℚ)

end

end A115226.P9218238466395764932

namespace A115226

/-- `A064767(n+1)²/(A000252(n+1)*A011785(n+1))` -/
def P9218238466395764932.Spec : Prop :=
  ∀ n, P9218238466395764932.a n = (A115226 (n + 1) : ℚ)

end A115226

/-! ## A115226.P9611745784209067463

`A064767(n+1)/(A000010(2*(n+1))*A070732(n+1))`
-/

namespace A115226.P9611745784209067463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064767 (n + 1) : ℚ) / (A000010 (2 * (n + 1)) * A070732 (n + 1) : ℚ)

end

end A115226.P9611745784209067463

namespace A115226

/-- `A064767(n+1)/(A000010(2*(n+1))*A070732(n+1))` -/
def P9611745784209067463.Spec : Prop :=
  ∀ n, P9611745784209067463.a n = (A115226 (n + 1) : ℚ)

end A115226

/-! ## A115226.P8728602408910586824

`A064767(n+1)/((n+1)*A000010(n+1)*A001615(n+1))`
-/

namespace A115226.P8728602408910586824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064767 (n + 1) : ℚ) / ((n + 1 : ℤ) * A000010 (n + 1) * A001615 (n + 1) : ℚ)

end

end A115226.P8728602408910586824

namespace A115226

/-- `A064767(n+1)/((n+1)*A000010(n+1)*A001615(n+1))` -/
def P8728602408910586824.Spec : Prop :=
  ∀ n, P8728602408910586824.a n = (A115226 (n + 1) : ℚ)

end A115226

/-!
# A115228: Nonsquarefree numbers n such that 2n+1 is also nonsquarefree (A013929).

The programs for A115228, the canonical program `A115228.P599005106752154386` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115228 has offset 1).

The definition of A115228 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3272 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115228.P599005106752154386

`lt[A007913(2*n+1), A105570(n)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A115228

/-- `lt[A007913(2*n+1), A105570(n)]` -/
def P599005106752154386.Spec : Prop :=
  ∀ n, (P599005106752154386.a n : ℤ) = A115228 (n + 1)

theorem P599005106752154386.correct : P599005106752154386.Spec := by
  intro n
  simp only [A115228, Nat.add_sub_cancel]

end A115228

/-! ## A115228.P15505939869778663359

`lt[A083346(2*n+1), A105570(n)]`
-/

namespace A115228.P15505939869778663359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083346 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A115228.P15505939869778663359

namespace A115228

/-- `lt[A083346(2*n+1), A105570(n)]` -/
def P15505939869778663359.Spec : Prop :=
  ∀ n, (P15505939869778663359.a n : ℤ) = A115228 (n + 1)

end A115228

/-! ## A115228.P2733787662373827505

`record[A105570(lt[1, A105570(2*n+1)])]`
-/

namespace A115228.P2733787662373827505
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115228.P2733787662373827505

namespace A115228

/-- `record[A105570(lt[1, A105570(2*n+1)])]` -/
def P2733787662373827505.Spec : Prop :=
  ∀ n, P2733787662373827505.a n = A115228 (n + 1)

end A115228

/-! ## A115228.P4979081428435097939

`eq[A105597(2*n)+A105570(2*n), A105570(2*n+1)]`
-/

namespace A115228.P4979081428435097939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105597 (2 * n) + A105570 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115228.P4979081428435097939

namespace A115228

/-- `eq[A105597(2*n)+A105570(2*n), A105570(2*n+1)]` -/
def P4979081428435097939.Spec : Prop :=
  ∀ n, (P4979081428435097939.a n : ℤ) = A115228 (n + 1)

end A115228

/-! ## A115228.P1195901450322568288

`eq[A099990(n), A383546(n+1)]`
-/

namespace A115228.P1195901450322568288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099990 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383546 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115228.P1195901450322568288

namespace A115228

/-- `eq[A099990(n), A383546(n+1)]` -/
def P1195901450322568288.Spec : Prop :=
  ∀ n, (P1195901450322568288.a n : ℤ) = A115228 (n + 1)

end A115228

/-! ## A115228.P7508000167596892052

`eq[A005408(A105570(n)), A105570(2*n+1)]`
-/

namespace A115228.P7508000167596892052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A105570 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115228.P7508000167596892052

namespace A115228

/-- `eq[A005408(A105570(n)), A105570(2*n+1)]` -/
def P7508000167596892052.Spec : Prop :=
  ∀ n, (P7508000167596892052.a n : ℤ) = A115228 (n + 1)

end A115228

/-! ## A115228.P12804998329031867106

`eq[A087049(n), A096226(2*n+1)]`
-/

namespace A115228.P12804998329031867106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096226 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115228.P12804998329031867106

namespace A115228

/-- `eq[A087049(n), A096226(2*n+1)]` -/
def P12804998329031867106.Spec : Prop :=
  ∀ n, (P12804998329031867106.a n : ℤ) = A115228 (n + 1)

end A115228

/-! ## A115228.P7498817368090368362

`lt[A225245(2*n+1), A087049(n)]`
-/

namespace A115228.P7498817368090368362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225245 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A115228.P7498817368090368362

namespace A115228

/-- `lt[A225245(2*n+1), A087049(n)]` -/
def P7498817368090368362.Spec : Prop :=
  ∀ n, (P7498817368090368362.a n : ℤ) = A115228 (n + 1)

end A115228

/-! ## A115228.P5857804950846972310

`eq[2, A249442(2*n+1)+A249442(n)]`
-/

namespace A115228.P5857804950846972310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249442 (2 * n + 1) + A249442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A115228.P5857804950846972310

namespace A115228

/-- `eq[2, A249442(2*n+1)+A249442(n)]` -/
def P5857804950846972310.Spec : Prop :=
  ∀ n, (P5857804950846972310.a n : ℤ) = A115228 (n + 1)

end A115228

/-! ## A115228.P3848620322993209087

`eq[A008966(n+1), A100112(2*n+3)]+1`
-/

namespace A115228.P3848620322993209087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100112 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A115228.P3848620322993209087

namespace A115228

/-- `eq[A008966(n+1), A100112(2*n+3)]+1` -/
def P3848620322993209087.Spec : Prop :=
  ∀ n, (P3848620322993209087.a n : ℤ) = A115228 (n + 1)

end A115228

/-! ## A115228.P7334389192895420816

`eq[A100112(2*n+3), A100112(n+1)]+1`
-/

namespace A115228.P7334389192895420816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100112 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100112 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A115228.P7334389192895420816

namespace A115228

/-- `eq[A100112(2*n+3), A100112(n+1)]+1` -/
def P7334389192895420816.Spec : Prop :=
  ∀ n, (P7334389192895420816.a n : ℤ) = A115228 (n + 1)

end A115228

/-! ## A115228.P15459775684896520787

`record[A105570(A025480(A068781(n+1)))]`
-/

namespace A115228.P15459775684896520787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (A025480 (A068781 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115228.P15459775684896520787

namespace A115228

/-- `record[A105570(A025480(A068781(n+1)))]` -/
def P15459775684896520787.Spec : Prop :=
  ∀ n, P15459775684896520787.a n = A115228 (n + 1)

end A115228

/-! ## A115228.P8165254026253862895

`eq[A013586(2*n+1)², A013586(A065033(2*n))]`
-/

namespace A115228.P8165254026253862895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013586 (2 * n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013586 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115228.P8165254026253862895

namespace A115228

/-- `eq[A013586(2*n+1)², A013586(A065033(2*n))]` -/
def P8165254026253862895.Spec : Prop :=
  ∀ n, (P8165254026253862895.a n : ℤ) = A115228 (n + 1)

end A115228

/-!
# A115230: Let p = prime(n); a(n) = number of ways to write p = 2^i + q^j where i >= 0, j >= 1, q = odd prime.

The programs for A115230, there is no canonical definition to state claims against.
-/

/-! ## A115230.P15022812725933067587

`A095840(A024620(n+1))`
-/

namespace A115230.P15022812725933067587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095840 (A024620 (n + 1)).toNat

end

end A115230.P15022812725933067587

/-! ## A115230.P6823528603199560473

`A071330(p?[xor(1, n)])`
-/

namespace A115230.P6823528603199560473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071330 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A115230.P6823528603199560473

/-! ## A115230.P787349310447301225

`A071330(p?[round(2*(4*n+7)/7)])`
-/

namespace A115230.P787349310447301225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 * ((4 * n + 7 : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071330 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A115230.P787349310447301225

/-! ## A115230.P18093454727463423255

`A071330(Δ[A007504(n)])`
-/

namespace A115230.P18093454727463423255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071330 (f1 (n + 1) - f1 n).toNat

end

end A115230.P18093454727463423255

/-! ## A115230.P13783010404536453981

`A071330(record[A051698(n)])`
-/

namespace A115230.P13783010404536453981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071330 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A115230.P13783010404536453981

/-! ## A115230.P16046529441772919182

`A071330(A000040(n+1))`
-/

namespace A115230.P16046529441772919182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071330 (A000040 (n + 1)).toNat

end

end A115230.P16046529441772919182

/-! ## A115230.P13119833113827893903

`A071330(A008578(n+2))`
-/

namespace A115230.P13119833113827893903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071330 (A008578 (n + 2)).toNat

end

end A115230.P13119833113827893903

/-! ## A115230.P1709494878205347881

`A071330(A182986(n+2))`
-/

namespace A115230.P1709494878205347881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071330 (A182986 (n + 2)).toNat

end

end A115230.P1709494878205347881

/-! ## A115230.P3358463716258416215

`A071330(eq[1, A003415(n)])`
-/

namespace A115230.P3358463716258416215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071330 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A115230.P3358463716258416215

/-! ## A115230.P7195140656297050181

`A071330(sqrt(A001248(n+1)))`
-/

namespace A115230.P7195140656297050181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071330 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

end

end A115230.P7195140656297050181

/-! ## A115230.P6265844300025781070

`A071330(record[A006530(n+2)])`
-/

namespace A115230.P6265844300025781070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071330 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A115230.P6265844300025781070

/-! ## A115230.P8707744286827479096

`A071330(record[A014963(n+2)])`
-/

namespace A115230.P8707744286827479096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071330 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A115230.P8707744286827479096

/-! ## A115230.P4080731418481797815

`A071330(record[A020639(n+2)])`
-/

namespace A115230.P4080731418481797815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071330 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A115230.P4080731418481797815

/-! ## A115230.P13574303783280692606

`A071330(A040976(n+1)+2)`
-/

namespace A115230.P13574303783280692606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071330 (A040976 (n + 1) + 2).toNat

end

end A115230.P13574303783280692606

/-! ## A115230.P4377063360429765060

`A071330(eq[2, A000005(n+1)]+1)`
-/

namespace A115230.P4377063360429765060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071330 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A115230.P4377063360429765060

/-! ## A115230.P8355615396853341693

`A071330(lt[A000005(n+2), 3]+2)`
-/

namespace A115230.P8355615396853341693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071330 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2)

end

end A115230.P8355615396853341693

/-! ## A115230.P8244153233264846331

`A071330(lt[n, A000010(n+2)]+2)`
-/

namespace A115230.P8244153233264846331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071330 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2)

end

end A115230.P8244153233264846331

/-! ## A115230.P11106340774524644083

`A071330(∑{p}[p?[round(8*n/7)]², #])`
-/

namespace A115230.P11106340774524644083
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071330 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A115230.P11106340774524644083

/-! ## A115230.P15633889875395116547

`A071330(∏{p}[p?[round(8*n/7)]², #])`
-/

namespace A115230.P15633889875395116547
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071330 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A115230.P15633889875395116547

/-!
# A115231: Primes p which cannot be written in the form 2^i + q^j where i >= 0, j >= 1, q = odd prime.

The programs for A115231, there is no canonical definition to state claims against.
-/

/-! ## A115231.P4462587183587139020

`p?[eq[0, A307726(n)]]`
-/

namespace A115231.P4462587183587139020
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307726 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A115231.P4462587183587139020

/-! ## A115231.P16531854593225306340

`p?[eq[0, A280242(n)]]`
-/

namespace A115231.P16531854593225306340
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280242 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A115231.P16531854593225306340

/-! ## A115231.P9761768933899815268

`p?[(A280242(n)+1)*A028310(n)]`
-/

namespace A115231.P9761768933899815268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A280242 n + 1) * A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A115231.P9761768933899815268

/-! ## A115231.P12125085060742885657

`p?[n*A123108(2*A280242(n))]`
-/

namespace A115231.P12125085060742885657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A123108 (2 * A280242 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A115231.P12125085060742885657

/-!
# A115232: Primes p which can be written in the form 2^i + q^j where i >= 0, j >= 1, q = odd prime.

The programs for A115232, there is no canonical definition to state claims against.
-/

/-! ## A115232.P1246545860206020930

`p?[4*gcd(29, n)+n]`
-/

namespace A115232.P1246545860206020930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.gcd 29 n + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A115232.P1246545860206020930

/-! ## A115232.P17321419516701965510

`p?[floor(n/28)+n+5]`
-/

namespace A115232.P17321419516701965510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 28⌋ + (n + 5 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A115232.P17321419516701965510

/-! ## A115232.P9856963925220505555

`A065091(comp[33*n]+1)`
-/

namespace A115232.P9856963925220505555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  33 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A115232.P9856963925220505555

/-! ## A115232.P10813075737878683133

`A000040(comp[33*n]+2)`
-/

namespace A115232.P10813075737878683133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  33 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2)

end

end A115232.P10813075737878683133

/-! ## A115232.P15260617700325191090

`A008578(comp[33*n]+3)`
-/

namespace A115232.P15260617700325191090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  33 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 3)

end

end A115232.P15260617700325191090

/-! ## A115232.P16923400026217863342

`record[p?[A089247(n+2)+2]]`
-/

namespace A115232.P16923400026217863342
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089247 (n + 2) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115232.P16923400026217863342

/-! ## A115232.P13644315774904682915

`filter[A103838(n), A080545(#)]`
-/

namespace A115232.P13644315774904682915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103838 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A115232.P13644315774904682915

/-! ## A115232.P11264664862548499019

`filter[A103838(n), A171387(#)]`
-/

namespace A115232.P11264664862548499019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103838 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A115232.P11264664862548499019

/-! ## A115232.P11362930433892306815

`filter[A103838(n), A257531(#)]`
-/

namespace A115232.P11362930433892306815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103838 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257531 (f1 j).toNat = 1) n)

end

end A115232.P11362930433892306815

/-! ## A115232.P14828863156205820508

`record[A006530(A103838(n+2))]`
-/

namespace A115232.P14828863156205820508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A103838 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115232.P14828863156205820508

/-!
# A115233: Primes p which have a unique representation as p = 2^i + q^j where i >= 0, j >= 1, q = odd prime.

The programs for A115233, there is no canonical definition to state claims against.
-/

/-! ## A115233.P9275096428044021845

`p?[eq[1, A307726(n)]]`
-/

namespace A115233.P9275096428044021845
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307726 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A115233.P9275096428044021845

/-! ## A115233.P775952736017353352

`p?[A095841(n+2)+floor(acot(n)²)]`
-/

namespace A115233.P775952736017353352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095841 (n + 2) + ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A115233.P775952736017353352

/-! ## A115233.P9886160505353976722

`eq[A217668(n), A307726(n)]`
-/

namespace A115233.P9886160505353976722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217668 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307726 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115233.P9886160505353976722

/-! ## A115233.P6901947514312788383

`eq[A280242(n), A326486(n)]`
-/

namespace A115233.P6901947514312788383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280242 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326486 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115233.P6901947514312788383

/-! ## A115233.P15485935323404178662

`eq[A280242(n), A327859(n)]`
-/

namespace A115233.P15485935323404178662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280242 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327859 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115233.P15485935323404178662

/-! ## A115233.P11748466366256790058

`eq[A307726(n), A327642(n)]`
-/

namespace A115233.P11748466366256790058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307726 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115233.P11748466366256790058

/-! ## A115233.P12534612371627986287

`eq[A280242(n), A398023(n)]`
-/

namespace A115233.P12534612371627986287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280242 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398023 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115233.P12534612371627986287

/-! ## A115233.P15292200143363632921

`p?[n*A307726(A028310(n))]`
-/

namespace A115233.P15292200143363632921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A307726 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A115233.P15292200143363632921

/-! ## A115233.P16238454816842485445

`p?[lcm(A028310(n), A307726(n))]`
-/

namespace A115233.P16238454816842485445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A028310 n) (A307726 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A115233.P16238454816842485445

/-! ## A115233.P9284628543359489644

`record[A006530(5*A095841(n+1))]`
-/

namespace A115233.P9284628543359489644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (5 * A095841 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115233.P9284628543359489644

/-!
# A115235: Expansion of eta(q)^2*eta(q^9)*eta(q^18)/(eta(q^2)*eta(q^3)) in powers of q.

The programs for A115235, the canonical program `A115235.P5512606317749080234` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115235 has offset 1).

The definition of A115235 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115235.P11532329357750391336

`(n+1)%3*A093829(n+1)`
-/

namespace A115235.P11532329357750391336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) % 3 : ℕ) : ℤ) * A093829 (n + 1)

end

end A115235.P11532329357750391336

namespace A115235

/-- `(n+1)%3*A093829(n+1)` -/
def P11532329357750391336.Spec : Prop :=
  ∀ n, P11532329357750391336.a n = A115235 (n + 1)

end A115235

/-! ## A115235.P2651602653723950285

`A049347(n)*A123331(n+1)`
-/

namespace A115235.P2651602653723950285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n * A123331 (n + 1)

end

end A115235.P2651602653723950285

namespace A115235

/-- `A049347(n)*A123331(n+1)` -/
def P2651602653723950285.Spec : Prop :=
  ∀ n, P2651602653723950285.a n = A115235 (n + 1)

end A115235

/-! ## A115235.P14601544702432755608

`A057079(n)*A123863(n+1)`
-/

namespace A115235.P14601544702432755608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 n * A123863 (n + 1)

end

end A115235.P14601544702432755608

namespace A115235

/-- `A057079(n)*A123863(n+1)` -/
def P14601544702432755608.Spec : Prop :=
  ∀ n, P14601544702432755608.a n = A115235 (n + 1)

end A115235

/-! ## A115235.P5512606317749080234

`A113448(n+1)*A131713(n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A115235

/-- `A113448(n+1)*A131713(n)` -/
def P5512606317749080234.Spec : Prop :=
  ∀ n, P5512606317749080234.a n = A115235 (n + 1)

theorem P5512606317749080234.correct : P5512606317749080234.Spec := by
  intro n
  simp only [A115235, Nat.add_sub_cancel]

end A115235

/-! ## A115235.P7667286823979294527

`A123863(n+1)*A132954(n)`
-/

namespace A115235.P7667286823979294527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123863 (n + 1) * A132954 n

end

end A115235.P7667286823979294527

namespace A115235

/-- `A123863(n+1)*A132954(n)` -/
def P7667286823979294527.Spec : Prop :=
  ∀ n, P7667286823979294527.a n = A115235 (n + 1)

end A115235

/-! ## A115235.P11669580056336601472

`abs(A010892(n))*A122860(n+1)`
-/

namespace A115235.P11669580056336601472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A010892 n| * A122860 (n + 1)

end

end A115235.P11669580056336601472

namespace A115235

/-- `abs(A010892(n))*A122860(n+1)` -/
def P11669580056336601472.Spec : Prop :=
  ∀ n, P11669580056336601472.a n = A115235 (n + 1)

end A115235

/-! ## A115235.P12642235052373392822

`Δ[A117966(n)]*A113448(n+1)`
-/

namespace A115235.P12642235052373392822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A113448 (n + 1)

end

end A115235.P12642235052373392822

namespace A115235

/-- `Δ[A117966(n)]*A113448(n+1)` -/
def P12642235052373392822.Spec : Prop :=
  ∀ n, P12642235052373392822.a n = A115235 (n + 1)

end A115235

/-! ## A115235.P12920477589409941295

`char[A032766(n)]*A122860(n+1)`
-/

namespace A115235.P12920477589409941295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A122860 (n + 1)

end

end A115235.P12920477589409941295

namespace A115235

/-- `char[A032766(n)]*A122860(n+1)` -/
def P12920477589409941295.Spec : Prop :=
  ∀ n, P12920477589409941295.a n = A115235 (n + 1)

end A115235

/-! ## A115235.P15765597020710902520

`A093829(n+1)-A193426(n+1)`
-/

namespace A115235.P15765597020710902520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093829 (n + 1) - A193426 (n + 1)

end

end A115235.P15765597020710902520

namespace A115235

/-- `A093829(n+1)-A193426(n+1)` -/
def P15765597020710902520.Spec : Prop :=
  ∀ n, P15765597020710902520.a n = A115235 (n + 1)

end A115235

/-! ## A115235.P16723708316692734986

`(A102283(n)+1)*A093829(n+1)`
-/

namespace A115235.P16723708316692734986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A102283 n + 1) * A093829 (n + 1)

end

end A115235.P16723708316692734986

namespace A115235

/-- `(A102283(n)+1)*A093829(n+1)` -/
def P16723708316692734986.Spec : Prop :=
  ∀ n, P16723708316692734986.a n = A115235 (n + 1)

end A115235

/-! ## A115235.P17602520376307594874

`A099544(n+1)*A122860(n+1)`
-/

namespace A115235.P17602520376307594874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099544 (n + 1) * A122860 (n + 1)

end

end A115235.P17602520376307594874

namespace A115235

/-- `A099544(n+1)*A122860(n+1)` -/
def P17602520376307594874.Spec : Prop :=
  ∀ n, P17602520376307594874.a n = A115235 (n + 1)

end A115235

/-! ## A115235.P16866931725315434796

`A105931(n+1)*A123863(n+1)`
-/

namespace A115235.P16866931725315434796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105931 (n + 1) * A123863 (n + 1)

end

end A115235.P16866931725315434796

namespace A115235

/-- `A105931(n+1)*A123863(n+1)` -/
def P16866931725315434796.Spec : Prop :=
  ∀ n, P16866931725315434796.a n = A115235 (n + 1)

end A115235

/-! ## A115235.P7125637607129498160

`∑{d}[n+1, A123863(#)*A154269((n+1)/#)]`
-/

namespace A115235.P7125637607129498160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A123863 d * A154269 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A115235.P7125637607129498160

namespace A115235

/-- `∑{d}[n+1, A123863(#)*A154269((n+1)/#)]` -/
def P7125637607129498160.Spec : Prop :=
  ∀ n, P7125637607129498160.a n = A115235 (n + 1)

end A115235

/-! ## A115235.P1579783867803001758

`∑{d}[n+1, A230074(#)*A259024((n+1)/#)]`
-/

namespace A115235.P1579783867803001758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A230074 d * A259024 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A115235.P1579783867803001758

namespace A115235

/-- `∑{d}[n+1, A230074(#)*A259024((n+1)/#)]` -/
def P1579783867803001758.Spec : Prop :=
  ∀ n, P1579783867803001758.a n = A115235 (n + 1)

end A115235

/-! ## A115235.P1326341965931516182

`Δ[A130481(n)]*A093829(n+1)`
-/

namespace A115235.P1326341965931516182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130481 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A093829 (n + 1)

end

end A115235.P1326341965931516182

namespace A115235

/-- `Δ[A130481(n)]*A093829(n+1)` -/
def P1326341965931516182.Spec : Prop :=
  ∀ n, P1326341965931516182.a n = A115235 (n + 1)

end A115235

/-! ## A115235.P14199684508589939389

`A102283(n+1)/2*A123330(n+1)`
-/

namespace A115235.P14199684508589939389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102283 (n + 1) : ℚ) / 2 * (A123330 (n + 1) : ℚ)

end

end A115235.P14199684508589939389

namespace A115235

/-- `A102283(n+1)/2*A123330(n+1)` -/
def P14199684508589939389.Spec : Prop :=
  ∀ n, P14199684508589939389.a n = (A115235 (n + 1) : ℚ)

end A115235

/-! ## A115235.P14839110675423190340

`(A128834(2*n)+1)*A113447(2*(n+1))`
-/

namespace A115235.P14839110675423190340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A128834 (2 * n) + 1) * A113447 (2 * (n + 1))

end

end A115235.P14839110675423190340

namespace A115235

/-- `(A128834(2*n)+1)*A113447(2*(n+1))` -/
def P14839110675423190340.Spec : Prop :=
  ∀ n, P14839110675423190340.a n = A115235 (n + 1)

end A115235

/-! ## A115235.P695725157101021700

`(A131736(2*n+1)-1)*A093829(2*(n+1))`
-/

namespace A115235.P695725157101021700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A131736 (2 * n + 1) - 1) * A093829 (2 * (n + 1))

end

end A115235.P695725157101021700

namespace A115235

/-- `(A131736(2*n+1)-1)*A093829(2*(n+1))` -/
def P695725157101021700.Spec : Prop :=
  ∀ n, P695725157101021700.a n = A115235 (n + 1)

end A115235

/-! ## A115235.P5853204436772376850

`(A099544(2*n+1)-2)*A112848(2*(n+1))`
-/

namespace A115235.P5853204436772376850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A099544 (2 * n + 1) - 2) * A112848 (2 * (n + 1))

end

end A115235.P5853204436772376850

namespace A115235

/-- `(A099544(2*n+1)-2)*A112848(2*(n+1))` -/
def P5853204436772376850.Spec : Prop :=
  ∀ n, P5853204436772376850.a n = A115235 (n + 1)

end A115235

/-! ## A115235.P14373657767771803349

`A080425(2*(n+1))*A113447(2*(n+1))`
-/

namespace A115235.P14373657767771803349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (2 * (n + 1)) * A113447 (2 * (n + 1))

end

end A115235.P14373657767771803349

namespace A115235

/-- `A080425(2*(n+1))*A113447(2*(n+1))` -/
def P14373657767771803349.Spec : Prop :=
  ∀ n, P14373657767771803349.a n = A115235 (n + 1)

end A115235

/-!
# A115236: Matrix inverse of triangle A003983.

The programs for A115236, the canonical program `A115236.P4359800970134517995` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115236 has offset 0).

The definition of A115236 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115236.P4359800970134517995

`Δ[-A111967(n)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A115236

/-- `Δ[-A111967(n)]` -/
def P4359800970134517995.Spec : Prop :=
  ∀ n, P4359800970134517995.a n = A115236 n

theorem P4359800970134517995.correct : P4359800970134517995.Spec := by
  intro n
  simp only [A115236]

end A115236

/-! ## A115236.P1690184323841361984

`A111967(n)-A111967(n+1)`
-/

namespace A115236.P1690184323841361984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111967 n - A111967 (n + 1)

end

end A115236.P1690184323841361984

namespace A115236

/-- `A111967(n)-A111967(n+1)` -/
def P1690184323841361984.Spec : Prop :=
  ∀ n, P1690184323841361984.a n = A115236 n

theorem P1690184323841361984.correct : P1690184323841361984.Spec := by
  intro n
  simp only [A115236, Nat.add_sub_cancel, A115236.P1690184323841361984.a, A115236.P4359800970134517995.f1, A115236.P4359800970134517995.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A115236

/-! ## A115236.P17874290150712803926

`Δ[dr(A001504(n))-A111967(n)]`
-/

namespace A115236.P17874290150712803926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A001504 n) : ℤ) - A111967 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A115236.P17874290150712803926

namespace A115236

/-- `Δ[dr(A001504(n))-A111967(n)]` -/
def P17874290150712803926.Spec : Prop :=
  ∀ n, P17874290150712803926.a n = A115236 n

end A115236

/-! ## A115236.P1555405492790706123

`Δ[dr(A001538(n))-A111967(n)]`
-/

namespace A115236.P1555405492790706123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A001538 n) : ℤ) - A111967 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A115236.P1555405492790706123

namespace A115236

/-- `Δ[dr(A001538(n))-A111967(n)]` -/
def P1555405492790706123.Spec : Prop :=
  ∀ n, P1555405492790706123.a n = A115236 n

end A115236

/-! ## A115236.P3558196554992634858

`Δ[A007318(C(2, n))-A111967(n)]`
-/

namespace A115236.P3558196554992634858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) - A111967 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A115236.P3558196554992634858

namespace A115236

/-- `Δ[A007318(C(2, n))-A111967(n)]` -/
def P3558196554992634858.Spec : Prop :=
  ∀ n, P3558196554992634858.a n = A115236 n

end A115236

/-! ## A115236.P13673086576144133287

`Δ[A007318(and(2, n-2))-A111967(n)]`
-/

namespace A115236.P13673086576144133287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 2 ((n : ℤ) - 2)).toNat - A111967 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A115236.P13673086576144133287

namespace A115236

/-- `Δ[A007318(and(2, n-2))-A111967(n)]` -/
def P13673086576144133287.Spec : Prop :=
  ∀ n, P13673086576144133287.a n = A115236 n

end A115236

/-! ## A115236.P3117273432943980997

`A008683(Δ[(2*n)²])-Δ[A111967(n)]`
-/

namespace A115236.P3117273432943980997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111967 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (f2 (n + 1) - f2 n)

end

end A115236.P3117273432943980997

namespace A115236

/-- `A008683(Δ[(2*n)²])-Δ[A111967(n)]` -/
def P3117273432943980997.Spec : Prop :=
  ∀ n, P3117273432943980997.a n = A115236 n

end A115236

/-! ## A115236.P16048577220326617284

`Δ[(A000041(n)%2)!-A111967(n)]`
-/

namespace A115236.P16048577220326617284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A000041 n) 2).toNat : ℤ) - A111967 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A115236.P16048577220326617284

namespace A115236

/-- `Δ[(A000041(n)%2)!-A111967(n)]` -/
def P16048577220326617284.Spec : Prop :=
  ∀ n, P16048577220326617284.a n = A115236 n

end A115236

/-! ## A115236.P16611812867495520464

`Δ[-A115717(A185868(n+1)-1)%3]`
-/

namespace A115236.P16611812867495520464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (A115717 (A185868 (n + 1) - 1).toNat) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A115236.P16611812867495520464

namespace A115236

/-- `Δ[-A115717(A185868(n+1)-1)%3]` -/
def P16611812867495520464.Spec : Prop :=
  ∀ n, P16611812867495520464.a n = A115236 n

end A115236

/-!
# A115238: Row sums of triangle A115237.

The programs for A115238, the canonical program `A115238.P2948525728618905682` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115238 has offset 0).

The definition of A115238 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115238.P2948525728618905682

`∑[A002623(n)-A173196(A080513(n))]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A115238

/-- `∑[A002623(n)-A173196(A080513(n))]` -/
def P2948525728618905682.Spec : Prop :=
  ∀ n, P2948525728618905682.a n = A115238 n

theorem P2948525728618905682.correct : P2948525728618905682.Spec := by
  intro n
  simp only [A115238]

end A115238

/-! ## A115238.P4900260131873129987

`∑[A173196(n+2)-A173196(A008619(n+1))]`
-/

namespace A115238.P4900260131873129987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173196 (n + 2) - A173196 (A008619 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115238.P4900260131873129987

namespace A115238

/-- `∑[A173196(n+2)-A173196(A008619(n+1))]` -/
def P4900260131873129987.Spec : Prop :=
  ∀ n, P4900260131873129987.a n = A115238 n

end A115238

/-! ## A115238.P5755546319645782471

`∑[A173196(n+2)-A173196(A110654(n)+1)]`
-/

namespace A115238.P5755546319645782471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173196 (n + 2) - A173196 (A110654 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115238.P5755546319645782471

namespace A115238

/-- `∑[A173196(n+2)-A173196(A110654(n)+1)]` -/
def P5755546319645782471.Spec : Prop :=
  ∀ n, P5755546319645782471.a n = A115238 n

end A115238

/-! ## A115238.P5297127770770149330

`∑[A173196(n+2)-A173196(A004526(n+3))]`
-/

namespace A115238.P5297127770770149330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173196 (n + 2) - A173196 (A004526 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115238.P5297127770770149330

namespace A115238

/-- `∑[A173196(n+2)-A173196(A004526(n+3))]` -/
def P5297127770770149330.Spec : Prop :=
  ∀ n, P5297127770770149330.a n = A115238 n

end A115238

/-! ## A115238.P6486008248287823179

`∑[A023855(n+1)-A133610(A008795(n))]`
-/

namespace A115238.P6486008248287823179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023855 (n + 1) - A133610 (A008795 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115238.P6486008248287823179

namespace A115238

/-- `∑[A023855(n+1)-A133610(A008795(n))]` -/
def P6486008248287823179.Spec : Prop :=
  ∀ n, P6486008248287823179.a n = A115238 n

end A115238

/-!
# A115239: a(1) = floor(Pi) = 3; a(n+1) = floor(a(n)*Pi).

The programs for A115239, the canonical program `A115239.P6290209763607101392` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115239 has offset 1).

The definition of A115239 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115239.P4824898244395398076

`floor(π*a(n-1))` with `a(0)=3`
-/

namespace A115239.P4824898244395398076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ⌊Real.pi * (a (n - 1) : ℝ)⌋

end

end A115239.P4824898244395398076

namespace A115239

/-- `floor(π*a(n-1))` -/
def P4824898244395398076.Spec : Prop :=
  ∀ n, P4824898244395398076.a n = A115239 (n + 1)

end A115239

/-! ## A115239.P3659048306279549911

`ceil(π*a(n-1))-1` with `a(0)=3`
-/

namespace A115239.P3659048306279549911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ⌈Real.pi * (a (n - 1) : ℝ)⌉ - 1

end

end A115239.P3659048306279549911

namespace A115239

/-- `ceil(π*a(n-1))-1` -/
def P3659048306279549911.Spec : Prop :=
  ∀ n, P3659048306279549911.a n = A115239 (n + 1)

end A115239

/-! ## A115239.P14715629081918082681

`floor(3*a(n-1)*atan(sqrt(3)))` with `a(0)=3`
-/

namespace A115239.P14715629081918082681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ⌊(3 * a (n - 1) : ℝ) * Real.arctan (Real.sqrt (3 : ℝ))⌋

end

end A115239.P14715629081918082681

namespace A115239

/-- `floor(3*a(n-1)*atan(sqrt(3)))` -/
def P14715629081918082681.Spec : Prop :=
  ∀ n, P14715629081918082681.a n = A115239 (n + 1)

end A115239

/-! ## A115239.P6290209763607101392

`A134915(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A115239

/-- `A134915(n+1)` -/
def P6290209763607101392.Spec : Prop :=
  ∀ n, P6290209763607101392.a n = A115239 (n + 1)

theorem P6290209763607101392.correct : P6290209763607101392.Spec := by
  intro n
  simp only [A115239, Nat.add_sub_cancel]

end A115239

/-! ## A115239.P9466945435041830936

`record[A134915(abs(1-n))]`
-/

namespace A115239.P9466945435041830936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134915 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115239.P9466945435041830936

namespace A115239

/-- `record[A134915(abs(1-n))]` -/
def P9466945435041830936.Spec : Prop :=
  ∀ n, P9466945435041830936.a n = A115239 (n + 1)

end A115239

/-! ## A115239.P17775767600991778335

`A001672(n+1)-A115240(n+1)`
-/

namespace A115239.P17775767600991778335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001672 (n + 1) - A115240 (n + 1)

end

end A115239.P17775767600991778335

namespace A115239

/-- `A001672(n+1)-A115240(n+1)` -/
def P17775767600991778335.Spec : Prop :=
  ∀ n, P17775767600991778335.a n = A115239 (n + 1)

end A115239

/-! ## A115239.P5323748832457097661

`A117882(n+1)-(A117882(n)+A115240(n+1))`
-/

namespace A115239.P5323748832457097661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117882 (n + 1) - (A117882 n + A115240 (n + 1))

end

end A115239.P5323748832457097661

namespace A115239

/-- `A117882(n+1)-(A117882(n)+A115240(n+1))` -/
def P5323748832457097661.Spec : Prop :=
  ∀ n, P5323748832457097661.a n = A115239 (n + 1)

end A115239

/-!
# A115240: a(n) = A001672(n) - A115239(n).

The programs for A115240, the canonical program `A115240.P2043430779647816061` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115240 has offset 1).

The definition of A115240 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001672, A115239, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A115240.P2043430779647816061

`A001672(n+1)-A115239(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A115240

/-- `A001672(n+1)-A115239(n+1)` -/
def P2043430779647816061.Spec : Prop :=
  ∀ n, P2043430779647816061.a n = A115240 (n + 1)

theorem P2043430779647816061.correct : P2043430779647816061.Spec := by
  intro n
  simp only [A115240, Nat.add_sub_cancel]

end A115240

/-! ## A115240.P7577598423216276033

`A001672(n+1)-A134915(n+1)`
-/

namespace A115240.P7577598423216276033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001672 (n + 1) - A134915 (n + 1)

end

end A115240.P7577598423216276033

namespace A115240

/-- `A001672(n+1)-A134915(n+1)` -/
def P7577598423216276033.Spec : Prop :=
  ∀ n, P7577598423216276033.a n = A115240 (n + 1)

end A115240

/-! ## A115240.P11745784019917293969

`A001672(A000027(n+1))%A115239(n+1)`
-/

namespace A115240.P11745784019917293969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001672 (A000027 (n + 1)).toNat) (A115239 (n + 1))

end

end A115240.P11745784019917293969

namespace A115240

/-- `A001672(A000027(n+1))%A115239(n+1)` -/
def P11745784019917293969.Spec : Prop :=
  ∀ n, P11745784019917293969.a n = A115240 (n + 1)

end A115240

/-! ## A115240.P14949729301482350908

`Δ[A117882(n)]-A115239(n+1)`
-/

namespace A115240.P14949729301482350908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117882 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A115239 (n + 1)

end

end A115240.P14949729301482350908

namespace A115240

/-- `Δ[A117882(n)]-A115239(n+1)` -/
def P14949729301482350908.Spec : Prop :=
  ∀ n, P14949729301482350908.a n = A115240 (n + 1)

end A115240

/-! ## A115240.P12253538668746064211

`A117882(n+1)-(A117882(n)+A115239(n+1))`
-/

namespace A115240.P12253538668746064211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117882 (n + 1) - (A117882 n + A115239 (n + 1))

end

end A115240.P12253538668746064211

namespace A115240

/-- `A117882(n+1)-(A117882(n)+A115239(n+1))` -/
def P12253538668746064211.Spec : Prop :=
  ∀ n, P12253538668746064211.a n = A115240 (n + 1)

end A115240

/-!
# A115241: Square array read by antidiagonals: T(n,p) is the number of linearly independent, homogeneous harmonic polynomials of degree n in p variables (n,p>=1).

The programs for A115241, the canonical program `A115241.P10239762916805987824` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115241 has offset 1).

The definition of A115241 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115241.P48171801050384370

`ratio[A046899(n)]*A071919(n)`
-/

namespace A115241.P48171801050384370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A071919 n : ℚ)

end

end A115241.P48171801050384370

namespace A115241

/-- `ratio[A046899(n)]*A071919(n)` -/
def P48171801050384370.Spec : Prop :=
  ∀ n, P48171801050384370.a n = (A115241 (n + 1) : ℚ)

end A115241

/-! ## A115241.P3318114316714177224

`A209561(n+1)+A037012(n)`
-/

namespace A115241.P3318114316714177224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209561 (n + 1) + A037012 n

end

end A115241.P3318114316714177224

namespace A115241

/-- `A209561(n+1)+A037012(n)` -/
def P3318114316714177224.Spec : Prop :=
  ∀ n, P3318114316714177224.a n = A115241 (n + 1)

end A115241

/-! ## A115241.P16492808985555083864

`A209561(n+1)-A008482(n)`
-/

namespace A115241.P16492808985555083864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209561 (n + 1) - A008482 n

end

end A115241.P16492808985555083864

namespace A115241

/-- `A209561(n+1)-A008482(n)` -/
def P16492808985555083864.Spec : Prop :=
  ∀ n, P16492808985555083864.a n = A115241 (n + 1)

end A115241

/-! ## A115241.P6475476475841600926

`ceil((A110813(n)-A008482(n))/2)`
-/

namespace A115241.P6475476475841600926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A110813 n - A008482 n : ℚ) / 2⌉

end

end A115241.P6475476475841600926

namespace A115241

/-- `ceil((A110813(n)-A008482(n))/2)` -/
def P6475476475841600926.Spec : Prop :=
  ∀ n, P6475476475841600926.a n = A115241 (n + 1)

end A115241

/-! ## A115241.P6263038505791263773

`round((A110813(n)+A037012(n))/2)`
-/

namespace A115241.P6263038505791263773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A110813 n + A037012 n : ℚ) / 2)

end

end A115241.P6263038505791263773

namespace A115241

/-- `round((A110813(n)+A037012(n))/2)` -/
def P6263038505791263773.Spec : Prop :=
  ∀ n, P6263038505791263773.a n = A115241 (n + 1)

end A115241

/-! ## A115241.P10239762916805987824

`A071919(n)-(A007318(n)-A074909(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A115241

/-- `A071919(n)-(A007318(n)-A074909(n+1))` -/
def P10239762916805987824.Spec : Prop :=
  ∀ n, P10239762916805987824.a n = A115241 (n + 1)

theorem P10239762916805987824.correct : P10239762916805987824.Spec := by
  intro n
  simp only [A115241, Nat.add_sub_cancel]

end A115241

/-! ## A115241.P9281888643378933730

`A007318(A014132(n+1))+A071919(n)-A007318(n)`
-/

namespace A115241.P9281888643378933730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A014132 (n + 1)).toNat + (A071919 n - A007318 n)

end

end A115241.P9281888643378933730

namespace A115241

/-- `A007318(A014132(n+1))+A071919(n)-A007318(n)` -/
def P9281888643378933730.Spec : Prop :=
  ∀ n, P9281888643378933730.a n = A115241 (n + 1)

end A115241

/-! ## A115241.P9581943820553257183

`A206735(n+1)+A071919(n)`
-/

namespace A115241.P9581943820553257183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206735 (n + 1) + A071919 n

end

end A115241.P9581943820553257183

namespace A115241

/-- `A206735(n+1)+A071919(n)` -/
def P9581943820553257183.Spec : Prop :=
  ∀ n, P9581943820553257183.a n = A115241 (n + 1)

end A115241

/-! ## A115241.P13515498706548058223

`A029635(n+1)-char[A000096(n+1)]`
-/

namespace A115241.P13515498706548058223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A115241.P13515498706548058223

namespace A115241

/-- `A029635(n+1)-char[A000096(n+1)]` -/
def P13515498706548058223.Spec : Prop :=
  ∀ n, P13515498706548058223.a n = A115241 (n + 1)

end A115241

/-! ## A115241.P6659721192786888807

`A206735(n+1)+A206735(A271439(n))`
-/

namespace A115241.P6659721192786888807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206735 (n + 1) + A206735 (A271439 n).toNat

end

end A115241.P6659721192786888807

namespace A115241

/-- `A206735(n+1)+A206735(A271439(n))` -/
def P6659721192786888807.Spec : Prop :=
  ∀ n, P6659721192786888807.a n = A115241 (n + 1)

end A115241

/-! ## A115241.P8081368940646843289

`A135278(n)-(A159854(n+1)+A159854(n))`
-/

namespace A115241.P8081368940646843289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 n - (A159854 (n + 1) + A159854 n)

end

end A115241.P8081368940646843289

namespace A115241

/-- `A135278(n)-(A159854(n+1)+A159854(n))` -/
def P8081368940646843289.Spec : Prop :=
  ∀ n, P8081368940646843289.a n = A115241 (n + 1)

end A115241

/-! ## A115241.P4385121854484939027

`A071919(comp[∑[n]])+A071919(n)`
-/

namespace A115241.P4385121854484939027
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071919 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + A071919 n

end

end A115241.P4385121854484939027

namespace A115241

/-- `A071919(comp[∑[n]])+A071919(n)` -/
def P4385121854484939027.Spec : Prop :=
  ∀ n, P4385121854484939027.a n = A115241 (n + 1)

end A115241

/-! ## A115241.P1441464007590310510

`A029635(n+1)%A162975(n+2)`
-/

namespace A115241.P1441464007590310510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029635 (n + 1)) (A162975 (n + 2))

end

end A115241.P1441464007590310510

namespace A115241

/-- `A029635(n+1)%A162975(n+2)` -/
def P1441464007590310510.Spec : Prop :=
  ∀ n, P1441464007590310510.a n = A115241 (n + 1)

end A115241

/-! ## A115241.P14399755203571416206

`A038572(A110813(n)+A008482(n))-A008482(n)`
-/

namespace A115241.P14399755203571416206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A110813 n + A008482 n).toNat - A008482 n

end

end A115241.P14399755203571416206

namespace A115241

/-- `A038572(A110813(n)+A008482(n))-A008482(n)` -/
def P14399755203571416206.Spec : Prop :=
  ∀ n, P14399755203571416206.a n = A115241 (n + 1)

end A115241

/-! ## A115241.P15640561717350349582

`A038572(A110813(n)-A008482(n))`
-/

namespace A115241.P15640561717350349582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A110813 n - A008482 n).toNat

end

end A115241.P15640561717350349582

namespace A115241

/-- `A038572(A110813(n)-A008482(n))` -/
def P15640561717350349582.Spec : Prop :=
  ∀ n, P15640561717350349582.a n = A115241 (n + 1)

end A115241

/-! ## A115241.P6607884192338370129

`A004525(A110813(n)+A008482(n))-A008482(n)`
-/

namespace A115241.P6607884192338370129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A110813 n + A008482 n).toNat - A008482 n

end

end A115241.P6607884192338370129

namespace A115241

/-- `A004525(A110813(n)+A008482(n))-A008482(n)` -/
def P6607884192338370129.Spec : Prop :=
  ∀ n, P6607884192338370129.a n = A115241 (n + 1)

end A115241

/-! ## A115241.P5302575307882959094

`A026741(A110813(n)+A008482(n))-A008482(n)`
-/

namespace A115241.P5302575307882959094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A110813 n + A008482 n).toNat - A008482 n

end

end A115241.P5302575307882959094

namespace A115241

/-- `A026741(A110813(n)+A008482(n))-A008482(n)` -/
def P5302575307882959094.Spec : Prop :=
  ∀ n, P5302575307882959094.a n = A115241 (n + 1)

end A115241

/-! ## A115241.P13392231498847389523

`A037012(n)+A004525(A110813(n)-A037012(n))`
-/

namespace A115241.P13392231498847389523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037012 n + A004525 (A110813 n - A037012 n).toNat

end

end A115241.P13392231498847389523

namespace A115241

/-- `A037012(n)+A004525(A110813(n)-A037012(n))` -/
def P13392231498847389523.Spec : Prop :=
  ∀ n, P13392231498847389523.a n = A115241 (n + 1)

end A115241

/-! ## A115241.P17362123298839283119

`A037012(n)+A026741(A110813(n)-A037012(n))`
-/

namespace A115241.P17362123298839283119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037012 n + A026741 (A110813 n - A037012 n).toNat

end

end A115241.P17362123298839283119

namespace A115241

/-- `A037012(n)+A026741(A110813(n)-A037012(n))` -/
def P17362123298839283119.Spec : Prop :=
  ∀ n, P17362123298839283119.a n = A115241 (n + 1)

end A115241

/-! ## A115241.P4238419529731740669

`A004525(A110813(n)+A037012(n))`
-/

namespace A115241.P4238419529731740669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A110813 n + A037012 n).toNat

end

end A115241.P4238419529731740669

namespace A115241

/-- `A004525(A110813(n)+A037012(n))` -/
def P4238419529731740669.Spec : Prop :=
  ∀ n, P4238419529731740669.a n = A115241 (n + 1)

end A115241

/-!
# A115243: G.f.: (4*x^2 + 2*x)/(4*x^3 - x^2 - 4*x + 1).

The programs for A115243, the canonical program `A115243.P5117556878311839363` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115243 has offset 0).

The definition of A115243 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A115243.P5117556878311839363

`4*a(n-1)+3+(-1)^n` with `a(0)=0`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A115243

/-- `4*a(n-1)+3+(-1)^n` -/
def P5117556878311839363.Spec : Prop :=
  ∀ n, P5117556878311839363.a n = A115243 n

theorem P5117556878311839363.correct : P5117556878311839363.Spec := by
  intro n
  simp only [A115243]

end A115243

/-! ## A115243.P16157454317511137253

`4*a(n-1)+a(n-2)-4*a(n-3)` with `a(0)=0, a(1)=2, a(2)=12`
-/

namespace A115243.P16157454317511137253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 12] fun n a =>
  4 * a (n - 1) + a (n - 2) - 4 * a (n - 3)

end

end A115243.P16157454317511137253

namespace A115243

/-- `4*a(n-1)+a(n-2)-4*a(n-3)` -/
def P16157454317511137253.Spec : Prop :=
  ∀ n, P16157454317511137253.a n = A115243 n

end A115243

/-! ## A115243.P13335853458720769387

`(4^(n+1)+(-1)^n)/5-1`
-/

namespace A115243.P13335853458720769387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 ^ (n + 1) : ℤ) + (-1) ^ n : ℚ) / 5 - 1

end

end A115243.P13335853458720769387

namespace A115243

/-- `(4^(n+1)+(-1)^n)/5-1` -/
def P13335853458720769387.Spec : Prop :=
  ∀ n, P13335853458720769387.a n = (A115243 n : ℚ)

theorem P13335853458720769387.correct : P13335853458720769387.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A115243, Nat.add_sub_cancel, A115243.P13335853458720769387.a, A115243.P5117556878311839363.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A115243, Nat.add_sub_cancel, A115243.P13335853458720769387.a, A115243.P5117556878311839363.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A115243

/-! ## A115243.P7086146215461251825

`xor(1, abs(∑[(-4)^n]))`
-/

namespace A115243.P7086146215461251825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-4) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A115243.P7086146215461251825

namespace A115243

/-- `xor(1, abs(∑[(-4)^n]))` -/
def P7086146215461251825.Spec : Prop :=
  ∀ n, P7086146215461251825.a n = A115243 n

end A115243

/-! ## A115243.P13825584967554566451

`ogf((2x+4x^2)/(1-4x-x^2+4x^3))`
-/

namespace A115243.P13825584967554566451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 4] [1, -4, -1, 4] n

end

end A115243.P13825584967554566451

namespace A115243

/-- `ogf((2x+4x^2)/(1-4x-x^2+4x^3))` -/
def P13825584967554566451.Spec : Prop :=
  ∀ n, P13825584967554566451.a n = A115243 n

end A115243

/-! ## A115243.P16538681707572829048

`abs(2-(4^n-a(n-1)))` with `a(0)=0`
-/

namespace A115243.P16538681707572829048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  |2 - ((4 ^ n : ℤ) - a (n - 1))|

end

end A115243.P16538681707572829048

namespace A115243

/-- `abs(2-(4^n-a(n-1)))` -/
def P16538681707572829048.Spec : Prop :=
  ∀ n, P16538681707572829048.a n = A115243 n

end A115243

/-! ## A115243.P832403797068750963

`record[-2*(a(n-1)-log2(gcd(4, n)))]` with `a(0)=0`
-/

namespace A115243.P832403797068750963
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [0] fun n f1 =>
  -(2 * (f1 (n - 1) - Real.logb 2 (Nat.gcd 4 n : ℝ)))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115243.P832403797068750963

namespace A115243

/-- `record[-2*(a(n-1)-log2(gcd(4, n)))]` -/
def P832403797068750963.Spec : Prop :=
  ∀ n, P832403797068750963.a n = (A115243 n : ℝ)

end A115243

/-! ## A115243.P9249967916670103267

`2*A037481(n)`
-/

namespace A115243.P9249967916670103267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037481 n

end

end A115243.P9249967916670103267

namespace A115243

/-- `2*A037481(n)` -/
def P9249967916670103267.Spec : Prop :=
  ∀ n, P9249967916670103267.a n = A115243 n

end A115243

/-! ## A115243.P13610376335341335916

`2*(A363773(n)-1)`
-/

namespace A115243.P13610376335341335916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A363773 n - 1)

end

end A115243.P13610376335341335916

namespace A115243

/-- `2*(A363773(n)-1)` -/
def P13610376335341335916.Spec : Prop :=
  ∀ n, P13610376335341335916.a n = A115243 n

end A115243

/-! ## A115243.P5975127927834294116

`abs(A015521(n+1)-1)`
-/

namespace A115243.P5975127927834294116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A015521 (n + 1) - 1|

end

end A115243.P5975127927834294116

namespace A115243

/-- `abs(A015521(n+1)-1)` -/
def P5975127927834294116.Spec : Prop :=
  ∀ n, P5975127927834294116.a n = A115243 n

end A115243

/-! ## A115243.P17380041976956107651

`Δ[2*A368346(2*n)]`
-/

namespace A115243.P17380041976956107651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A368346 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A115243.P17380041976956107651

namespace A115243

/-- `Δ[2*A368346(2*n)]` -/
def P17380041976956107651.Spec : Prop :=
  ∀ n, P17380041976956107651.a n = A115243 n

end A115243

/-! ## A115243.P2237958773378640874

`abs(4^n-1-A015521(n))`
-/

namespace A115243.P2237958773378640874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(4 ^ n : ℤ) - 1 - A015521 n|

end

end A115243.P2237958773378640874

namespace A115243

/-- `abs(4^n-1-A015521(n))` -/
def P2237958773378640874.Spec : Prop :=
  ∀ n, P2237958773378640874.a n = A115243 n

end A115243

/-! ## A115243.P18305365571698327450

`2*(A256494(2*(n+1))-1)`
-/

namespace A115243.P18305365571698327450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A256494 (2 * (n + 1)) - 1)

end

end A115243.P18305365571698327450

namespace A115243

/-- `2*(A256494(2*(n+1))-1)` -/
def P18305365571698327450.Spec : Prop :=
  ∀ n, P18305365571698327450.a n = A115243 n

end A115243

/-! ## A115243.P4779461125325467435

`lcm(A037481(n), A040003(n))`
-/

namespace A115243.P4779461125325467435
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A037481 n) (A040003 n)

end

end A115243.P4779461125325467435

namespace A115243

/-- `lcm(A037481(n), A040003(n))` -/
def P4779461125325467435.Spec : Prop :=
  ∀ n, (P4779461125325467435.a n : ℤ) = A115243 n

end A115243

/-! ## A115243.P16396418326133503563

`floor(A141725(n)/5)`
-/

namespace A115243.P16396418326133503563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A141725 n : ℚ) / 5⌋

end

end A115243.P16396418326133503563

namespace A115243

/-- `floor(A141725(n)/5)` -/
def P16396418326133503563.Spec : Prop :=
  ∀ n, P16396418326133503563.a n = A115243 n

end A115243

/-! ## A115243.P9409525555129171764

`floor(A000918(2*(n+1))/5)`
-/

namespace A115243.P9409525555129171764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000918 (2 * (n + 1)) : ℚ) / 5⌋

end

end A115243.P9409525555129171764

namespace A115243

/-- `floor(A000918(2*(n+1))/5)` -/
def P9409525555129171764.Spec : Prop :=
  ∀ n, P9409525555129171764.a n = A115243 n

end A115243

/-! ## A115243.P15530580181534805847

`2*floor(A081294(n+1)/5)`
-/

namespace A115243.P15530580181534805847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(A081294 (n + 1) : ℚ) / 5⌋

end

end A115243.P15530580181534805847

namespace A115243

/-- `2*floor(A081294(n+1)/5)` -/
def P15530580181534805847.Spec : Prop :=
  ∀ n, P15530580181534805847.a n = A115243 n

end A115243

/-! ## A115243.P7966736718902773073

`floor((A155559(n+1)²-3)/5)`
-/

namespace A115243.P7966736718902773073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A155559 (n + 1) ^ 2 - 3 : ℚ) / 5⌋

end

end A115243.P7966736718902773073

namespace A115243

/-- `floor((A155559(n+1)²-3)/5)` -/
def P7966736718902773073.Spec : Prop :=
  ∀ n, P7966736718902773073.a n = A115243 n

end A115243

/-! ## A115243.P10585921799361063856

`A083420(n)%A108981(n)`
-/

namespace A115243.P10585921799361063856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083420 n) (A108981 n)

end

end A115243.P10585921799361063856

namespace A115243

/-- `A083420(n)%A108981(n)` -/
def P10585921799361063856.Spec : Prop :=
  ∀ n, P10585921799361063856.a n = A115243 n

end A115243

/-! ## A115243.P2563094112225676882

`A083597(n)%A117614(n)`
-/

namespace A115243.P2563094112225676882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083597 n) (A117614 n)

end

end A115243.P2563094112225676882

namespace A115243

/-- `A083597(n)%A117614(n)` -/
def P2563094112225676882.Spec : Prop :=
  ∀ n, P2563094112225676882.a n = A115243 n

end A115243

/-!
# A115244: Indices of primes generated by Fung and Ruby's prime generating polynomial A050268.

The programs for A115244, there is no canonical definition to state claims against.
-/

/-! ## A115244.P10404742212167412661

`A000720(p?[abs(A117081(n))])`
-/

namespace A115244.P10404742212167412661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A117081 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A115244.P10404742212167412661

/-! ## A115244.P5671869185348078787

`A061395(p?[abs(A117081(n))])`
-/

namespace A115244.P5671869185348078787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A117081 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A115244.P5671869185348078787

/-! ## A115244.P13886949170453720442

`A066328(p?[abs(A117081(n))])`
-/

namespace A115244.P13886949170453720442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A117081 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A115244.P13886949170453720442

/-! ## A115244.P14387289116284839294

`A297109(p?[abs(A117081(n))])`
-/

namespace A115244.P14387289116284839294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A117081 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297109 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A115244.P14387289116284839294

/-! ## A115244.P13673185012560951162

`A000720(∏{d}[A117081(n), #])`
-/

namespace A115244.P13673185012560951162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117081 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A115244.P13673185012560951162

/-!
# A115245: Partial sums of A011764.

The programs for A115245, there is no canonical definition to state claims against.
-/

/-! ## A115245.P15421978091106444146

`∑[3^2^n]`
-/

namespace A115245.P15421978091106444146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ 2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115245.P15421978091106444146

/-! ## A115245.P2396764502861082784

`∑{d}[2^n, 3^#]`
-/

namespace A115245.P2396764502861082784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), 3 ^ d

end

end A115245.P2396764502861082784

/-! ## A115245.P8437867802344129314

`floor(∑[a(n-1)²])` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A115245.P8437867802344129314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115245.P8437867802344129314

/-! ## A115245.P675194489428149194

`ceil(∑[a(n-1)²])` with `a(0)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A115245.P675194489428149194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115245.P675194489428149194

/-!
# A115247: 2^a(n) divides A001935(n) but 2^(a(n)+1) does not.

The programs for A115247, the canonical program `A115247.P17353346864210788674` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115247 has offset 0).

The definition of A115247 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115247.P9351334589748914054

`val(A001935(n), 2)`
-/

namespace A115247.P9351334589748914054
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001935 n).toNat 2

end

end A115247.P9351334589748914054

namespace A115247

/-- `val(A001935(n), 2)` -/
def P9351334589748914054.Spec : Prop :=
  ∀ n, (P9351334589748914054.a n : ℤ) = A115247 n

end A115247

/-! ## A115247.P1949506870968391971

`val(abs(A083365(n)), 2)`
-/

namespace A115247.P1949506870968391971
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation |A083365 n|.toNat 2

end

end A115247.P1949506870968391971

namespace A115247

/-- `val(abs(A083365(n)), 2)` -/
def P1949506870968391971.Spec : Prop :=
  ∀ n, (P1949506870968391971.a n : ℤ) = A115247 n

end A115247

/-! ## A115247.P10410034052824036916

`val(∑[A117275(n)], 2)`
-/

namespace A115247.P10410034052824036916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117275 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A115247.P10410034052824036916

namespace A115247

/-- `val(∑[A117275(n)], 2)` -/
def P10410034052824036916.Spec : Prop :=
  ∀ n, (P10410034052824036916.a n : ℤ) = A115247 n

end A115247

/-! ## A115247.P2149531483838736326

`val(Δ[A117276(n)], 2)`
-/

namespace A115247.P2149531483838736326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117276 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat 2

end

end A115247.P2149531483838736326

namespace A115247

/-- `val(Δ[A117276(n)], 2)` -/
def P2149531483838736326.Spec : Prop :=
  ∀ n, (P2149531483838736326.a n : ℤ) = A115247 n

end A115247

/-! ## A115247.P17353346864210788674

`val(A113417(4*n), 2)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A115247

/-- `val(A113417(4*n), 2)` -/
def P17353346864210788674.Spec : Prop :=
  ∀ n, (P17353346864210788674.a n : ℤ) = A115247 n

theorem P17353346864210788674.correct : P17353346864210788674.Spec := by
  intro n
  simp only [A115247]

end A115247

/-! ## A115247.P3332445363509061157

`val(A113419(4*n), 2)`
-/

namespace A115247.P3332445363509061157
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A113419 (4 * n)).toNat 2

end

end A115247.P3332445363509061157

namespace A115247

/-- `val(A113419(4*n), 2)` -/
def P3332445363509061157.Spec : Prop :=
  ∀ n, (P3332445363509061157.a n : ℤ) = A115247 n

end A115247

/-! ## A115247.P6906581117933668044

`val(A187154(4*n), 2)`
-/

namespace A115247.P6906581117933668044
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A187154 (4 * n)).toNat 2

end

end A115247.P6906581117933668044

namespace A115247

/-- `val(A187154(4*n), 2)` -/
def P6906581117933668044.Spec : Prop :=
  ∀ n, (P6906581117933668044.a n : ℤ) = A115247 n

end A115247

/-! ## A115247.P9497855261026795649

`val(Δ[A014605(n+3)], 2)`
-/

namespace A115247.P9497855261026795649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014605 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat 2

end

end A115247.P9497855261026795649

namespace A115247

/-- `val(Δ[A014605(n+3)], 2)` -/
def P9497855261026795649.Spec : Prop :=
  ∀ n, (P9497855261026795649.a n : ℤ) = A115247 n

end A115247

/-! ## A115247.P15629357625758708289

`A007814(A113417(4*n))`
-/

namespace A115247.P15629357625758708289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A113417 (4 * n)).toNat

end

end A115247.P15629357625758708289

namespace A115247

/-- `A007814(A113417(4*n))` -/
def P15629357625758708289.Spec : Prop :=
  ∀ n, P15629357625758708289.a n = A115247 n

end A115247

/-! ## A115247.P16221647729757328110

`A007814(A113419(4*n))`
-/

namespace A115247.P16221647729757328110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A113419 (4 * n)).toNat

end

end A115247.P16221647729757328110

namespace A115247

/-- `A007814(A113419(4*n))` -/
def P16221647729757328110.Spec : Prop :=
  ∀ n, P16221647729757328110.a n = A115247 n

end A115247

/-! ## A115247.P11167256188059922899

`A007814(A209940(4*n))`
-/

namespace A115247.P11167256188059922899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A209940 (4 * n)).toNat

end

end A115247.P11167256188059922899

namespace A115247

/-- `A007814(A209940(4*n))` -/
def P11167256188059922899.Spec : Prop :=
  ∀ n, P11167256188059922899.a n = A115247 n

end A115247

/-! ## A115247.P1914695257154955460

`val(A117000(A017077(n)), 2)`
-/

namespace A115247.P1914695257154955460
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A117000 (A017077 n).toNat).toNat 2

end

end A115247.P1914695257154955460

namespace A115247

/-- `val(A117000(A017077(n)), 2)` -/
def P1914695257154955460.Spec : Prop :=
  ∀ n, (P1914695257154955460.a n : ℤ) = A115247 n

end A115247

/-! ## A115247.P5571738634226626298

`log2(gcd(A083365(n), A143095(n)))`
-/

namespace A115247.P5571738634226626298
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd (A083365 n) (A143095 n) : ℝ)

end

end A115247.P5571738634226626298

namespace A115247

/-- `log2(gcd(A083365(n), A143095(n)))` -/
def P5571738634226626298.Spec : Prop :=
  ∀ n, P5571738634226626298.a n = (A115247 n : ℝ)

end A115247

/-! ## A115247.P16657969830227260229

`A001222(gcd(A001935(n), A016116(n)))`
-/

namespace A115247.P16657969830227260229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A001935 n) (A016116 n))

end

end A115247.P16657969830227260229

namespace A115247

/-- `A001222(gcd(A001935(n), A016116(n)))` -/
def P16657969830227260229.Spec : Prop :=
  ∀ n, P16657969830227260229.a n = A115247 n

end A115247

/-! ## A115247.P2641529500915011707

`A001222(and(-A001935(n), A001935(n)))`
-/

namespace A115247.P2641529500915011707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.land (-A001935 n) (A001935 n)).toNat

end

end A115247.P2641529500915011707

namespace A115247

/-- `A001222(and(-A001935(n), A001935(n)))` -/
def P2641529500915011707.Spec : Prop :=
  ∀ n, P2641529500915011707.a n = A115247 n

end A115247

/-!
# A115248: Values such that A115247(a(n))=1. Values such that A001935(a(n))==2 (mod 4).

The programs for A115248, there is no canonical definition to state claims against.
-/

/-! ## A115248.P11664368331495583619

`eq[2, abs(A030204(n))]`
-/

namespace A115248.P11664368331495583619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A030204 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A115248.P11664368331495583619

/-! ## A115248.P279797193248760194

`eq[2, abs(A083650(n))]`
-/

namespace A115248.P279797193248760194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A083650 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A115248.P279797193248760194

/-! ## A115248.P326338611568660841

`eq[2, abs(A138514(n))]`
-/

namespace A115248.P326338611568660841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A138514 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A115248.P326338611568660841

/-! ## A115248.P14946176607124570653

`eq[1, val(A001935(n), 2)]`
-/

namespace A115248.P14946176607124570653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001935 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115248.P14946176607124570653

/-! ## A115248.P11197072726888493649

`eq[2, A022568(n)%4]`
-/

namespace A115248.P11197072726888493649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022568 n) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A115248.P11197072726888493649

/-! ## A115248.P12033723152506945665

`eq[1, val(A000005(8*n+1), 2)]`
-/

namespace A115248.P12033723152506945665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000005 (8 * n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115248.P12033723152506945665

/-! ## A115248.P15458057696727374200

`eq[1, val(A000203(8*n+1), 2)]`
-/

namespace A115248.P15458057696727374200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000203 (8 * n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115248.P15458057696727374200

/-! ## A115248.P10042262686944023708

`eq[2, and(3, A000203(32*n+4))]`
-/

namespace A115248.P10042262686944023708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A000203 (32 * n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A115248.P10042262686944023708

/-! ## A115248.P2589259159096199572

`eq[2, A000005(8*n+9)%4]+1`
-/

namespace A115248.P2589259159096199572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (8 * n + 9)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A115248.P2589259159096199572

/-! ## A115248.P14728560247926497934

`eq[2, A262175(A083650(n)²)]`
-/

namespace A115248.P14728560247926497934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262175 (A083650 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A115248.P14728560247926497934

/-!
# A115249: Values in A115248 that are not in A005123.

The programs for A115249, there is no canonical definition to state claims against.
-/

/-! ## A115249.P9968143907678204348

`lt[A211487(A000005(8*n+1)+2), 1]`
-/

namespace A115249.P9968143907678204348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211487 (A000005 (8 * n + 1) + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A115249.P9968143907678204348

/-! ## A115249.P1984875935096894406

`eq[3, A179926(A017077(n))]`
-/

namespace A115249.P1984875935096894406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179926 (A017077 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A115249.P1984875935096894406

/-! ## A115249.P15410398682159738944

`eq[A158478(A325824(n+1))+3, A000005(8*n+1)]`
-/

namespace A115249.P15410398682159738944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158478 (A325824 (n + 1)).toNat + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (8 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115249.P15410398682159738944

/-!
# A115250: Least inverse of A115247, or -1 if no inverse exists.

The programs for A115250, there is no canonical definition to state claims against.
-/

/-! ## A115250.P10665639056694313540

`A018611(n+1)%∑[A018598(3*n+1)]`
-/

namespace A115250.P10665639056694313540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018598 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018611 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A115250.P10665639056694313540

/-!
# A115251: Least inverse of A114912, or -1 if no inverse exists.

The programs for A115251, there is no canonical definition to state claims against.
-/

/-! ## A115251.P761710621185817506

`or(A131579(n), A174381(n!))`
-/

namespace A115251.P761710621185817506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A131579 n) (A174381 (Nat.factorial n))

end

end A115251.P761710621185817506

/-!
# A115253: "Correlation triangle" for Catalan numbers.

The programs for A115253, there is no canonical definition to state claims against.
-/

/-! ## A115253.P12446736088106091152

`A167743(A227550(n))`
-/

namespace A115253.P12446736088106091152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167743 (A227550 n).toNat

end

end A115253.P12446736088106091152

/-! ## A115253.P16597397088641931586

`A056556(A227550(n)²)`
-/

namespace A115253.P16597397088641931586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A227550 n ^ 2).toNat

end

end A115253.P16597397088641931586

/-! ## A115253.P1850324545176476728

`A243113(A084867(n)^3)`
-/

namespace A115253.P1850324545176476728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243113 (A084867 n ^ 3).toNat

end

end A115253.P1850324545176476728

/-! ## A115253.P14120716434653457143

`A085516(A144155(n)+A034852(n))`
-/

namespace A115253.P14120716434653457143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085516 (A144155 n + A034852 n).toNat

end

end A115253.P14120716434653457143

/-!
# A115254: Diagonal sums of correlation triangle for Catalan numbers.

The programs for A115254, there is no canonical definition to state claims against.
-/

/-! ## A115254.P5737140160338994222

`A161006(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A115254.P5737140160338994222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A161006 n + a (n - 3)

end

end A115254.P5737140160338994222

/-! ## A115254.P17233861842506920281

`A257639(∑[∏[comp[∑[n-1]]]])`
-/

namespace A115254.P17233861842506920281
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A115254.P17233861842506920281

/-! ## A115254.P11699182962178567480

`A156689(A148973(n))`
-/

namespace A115254.P11699182962178567480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156689 (A148973 n).toNat

end

end A115254.P11699182962178567480

/-!
# A115255: "Correlation triangle" of central binomial coefficients A000984.

The programs for A115255, there is no canonical definition to state claims against.
-/

/-! ## A115255.P1255774095498453753

`A171824(n)-A059318(A178166(n))`
-/

namespace A115255.P1255774095498453753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171824 n - A059318 (A178166 n).toNat

end

end A115255.P1255774095498453753

/-! ## A115255.P9704864418543983218

`A171824(n)-A039963(A278610(n+1))`
-/

namespace A115255.P9704864418543983218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171824 n - A039963 (A278610 (n + 1)).toNat

end

end A115255.P9704864418543983218

/-! ## A115255.P8249988512454329097

`A171824(n)-A283437(A054359(n+1))`
-/

namespace A115255.P8249988512454329097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171824 n - A283437 (A054359 (n + 1)).toNat

end

end A115255.P8249988512454329097

/-!
# A115256: Diagonal sums of correlation triangle of central binomial coefficients.

The programs for A115256, there is no canonical definition to state claims against.
-/

/-! ## A115256.P17265857276735511454

`A106183(n)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=8`
-/

namespace A115256.P17265857276735511454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 8] fun n a =>
  A106183 n + a (n - 3)

end

end A115256.P17265857276735511454

/-! ## A115256.P11666974873753386676

`A000110(n)*A186188(A096477(3*n+2))`
-/

namespace A115256.P11666974873753386676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n * A186188 (A096477 (3 * n + 2)).toNat

end

end A115256.P11666974873753386676

/-!
# A115257: Partial sums of binomial(2n,n)^2.

The programs for A115257, there is no canonical definition to state claims against.
-/

/-! ## A115257.P4255519064045613164

`∑[C(2*n, n)²]`
-/

namespace A115257.P4255519064045613164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115257.P4255519064045613164

/-! ## A115257.P12372121107744578796

`∑[C(2*n, n)^2]`
-/

namespace A115257.P12372121107744578796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115257.P12372121107744578796

/-! ## A115257.P9384899102712976426

`a(n-1)+C(2*n, n)²` with `a(0)=1`
-/

namespace A115257.P9384899102712976426
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.choose (2 * n) n ^ 2

end

end A115257.P9384899102712976426

/-! ## A115257.P10892538744338258271

`∑[(2/n-4)²*a(n-1)]` with `a(0)=1`
-/

namespace A115257.P10892538744338258271
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (2 / (n : ℚ) - 4) ^ 2 * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115257.P10892538744338258271

/-! ## A115257.P11646844806989006571

`∑[record[C(n, floor(n/2))²/(-1)^n]]`
-/

namespace A115257.P11646844806989006571
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose n ⌊(n : ℚ) / 2⌋.toNat ^ 2 : ℚ) / ((-1) ^ n : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115257.P11646844806989006571

/-! ## A115257.P10168257967672534928

`∑[record[a(n-1)/(floor(n/2)/n-1)]²]` with `a(0)=1`
-/

namespace A115257.P10168257967672534928
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) / ((⌊(n : ℚ) / 2⌋ : ℚ) / (n : ℚ) - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115257.P10168257967672534928

/-! ## A115257.P2489316461282032219

`∑[A002894(n)]`
-/

namespace A115257.P2489316461282032219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002894 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115257.P2489316461282032219

/-! ## A115257.P10953846934809906337

`∑[A000984(n)²]`
-/

namespace A115257.P10953846934809906337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115257.P10953846934809906337

/-! ## A115257.P8819225604796637161

`∑[A018224(2*n)]`
-/

namespace A115257.P8819225604796637161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018224 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115257.P8819225604796637161

/-! ## A115257.P14656198534439819799

`∑[A092266(2*n)]`
-/

namespace A115257.P14656198534439819799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092266 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115257.P14656198534439819799

/-!
# A115258: Isolated primes in Ulam's lattice (1, 2, ... in spiral).

The programs for A115258, there is no canonical definition to state claims against.
-/

/-! ## A115258.P4179436696797665869

`A073523(A105681(2*(n+2))+∑[char[1]+1+n])`
-/

namespace A115258.P4179436696797665869
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073523 (A105681 (2 * (n + 2)) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A115258.P4179436696797665869

/-!
# A115259: Difference between the sum of digits in odd positions and the sum of digits in even positions of prime numbers.

The programs for A115259, the canonical program `A115259.P8985701988596292915` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115259 has offset 1).

The definition of A115259 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A055017, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A115259.P8985701988596292915

`A055017(A000040(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A115259

/-- `A055017(A000040(n+1))` -/
def P8985701988596292915.Spec : Prop :=
  ∀ n, P8985701988596292915.a n = A115259 (n + 1)

theorem P8985701988596292915.correct : P8985701988596292915.Spec := by
  intro n
  simp only [A115259, Nat.add_sub_cancel]

end A115259

/-! ## A115259.P5345384961761872973

`A055017(p?[comp[n²]])`
-/

namespace A115259.P5345384961761872973
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A115259.P5345384961761872973

namespace A115259

/-- `A055017(p?[comp[n²]])` -/
def P5345384961761872973.Spec : Prop :=
  ∀ n, P5345384961761872973.a n = A115259 (n + 1)

end A115259

/-! ## A115259.P13952373095765016555

`A055017(Δ[A007504(n)])`
-/

namespace A115259.P13952373095765016555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (f1 (n + 1) - f1 n).toNat

end

end A115259.P13952373095765016555

namespace A115259

/-- `A055017(Δ[A007504(n)])` -/
def P13952373095765016555.Spec : Prop :=
  ∀ n, P13952373095765016555.a n = A115259 (n + 1)

end A115259

/-! ## A115259.P12330717915883322496

`A055017(record[A051698(n)])`
-/

namespace A115259.P12330717915883322496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A115259.P12330717915883322496

namespace A115259

/-- `A055017(record[A051698(n)])` -/
def P12330717915883322496.Spec : Prop :=
  ∀ n, P12330717915883322496.a n = A115259 (n + 1)

end A115259

/-! ## A115259.P15745978276962284034

`A225693(A004087(n+1))`
-/

namespace A115259.P15745978276962284034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225693 (A004087 (n + 1)).toNat

end

end A115259.P15745978276962284034

namespace A115259

/-- `A225693(A004087(n+1))` -/
def P15745978276962284034.Spec : Prop :=
  ∀ n, P15745978276962284034.a n = A115259 (n + 1)

end A115259

/-! ## A115259.P16016448169817191142

`A055017(A008578(n+2))`
-/

namespace A115259.P16016448169817191142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (A008578 (n + 2)).toNat

end

end A115259.P16016448169817191142

namespace A115259

/-- `A055017(A008578(n+2))` -/
def P16016448169817191142.Spec : Prop :=
  ∀ n, P16016448169817191142.a n = A115259 (n + 1)

end A115259

/-! ## A115259.P5724727102083917532

`A055017(A182986(n+2))`
-/

namespace A115259.P5724727102083917532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (A182986 (n + 2)).toNat

end

end A115259.P5724727102083917532

namespace A115259

/-- `A055017(A182986(n+2))` -/
def P5724727102083917532.Spec : Prop :=
  ∀ n, P5724727102083917532.a n = A115259 (n + 1)

end A115259

/-! ## A115259.P621559134008159842

`A055017(eq[2, A322366(n)])`
-/

namespace A115259.P621559134008159842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322366 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A115259.P621559134008159842

namespace A115259

/-- `A055017(eq[2, A322366(n)])` -/
def P621559134008159842.Spec : Prop :=
  ∀ n, P621559134008159842.a n = A115259 (n + 1)

end A115259

/-! ## A115259.P9192434013927264939

`A055017(record[A006530(n+2)])`
-/

namespace A115259.P9192434013927264939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A115259.P9192434013927264939

namespace A115259

/-- `A055017(record[A006530(n+2)])` -/
def P9192434013927264939.Spec : Prop :=
  ∀ n, P9192434013927264939.a n = A115259 (n + 1)

end A115259

/-! ## A115259.P7831105008321744654

`A055017(record[A014963(n+2)])`
-/

namespace A115259.P7831105008321744654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A115259.P7831105008321744654

namespace A115259

/-- `A055017(record[A014963(n+2)])` -/
def P7831105008321744654.Spec : Prop :=
  ∀ n, P7831105008321744654.a n = A115259 (n + 1)

end A115259

/-! ## A115259.P13858441244041198972

`A055017(record[A020639(n+2)])`
-/

namespace A115259.P13858441244041198972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A115259.P13858441244041198972

namespace A115259

/-- `A055017(record[A020639(n+2)])` -/
def P13858441244041198972.Spec : Prop :=
  ∀ n, P13858441244041198972.a n = A115259 (n + 1)

end A115259

/-! ## A115259.P6365137901599487475

`A055017(A006093(n+1)+1)`
-/

namespace A115259.P6365137901599487475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (A006093 (n + 1) + 1).toNat

end

end A115259.P6365137901599487475

namespace A115259

/-- `A055017(A006093(n+1)+1)` -/
def P6365137901599487475.Spec : Prop :=
  ∀ n, P6365137901599487475.a n = A115259 (n + 1)

end A115259

/-! ## A115259.P17880096609799023280

`A055017(A008864(n+1)-1)`
-/

namespace A115259.P17880096609799023280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (A008864 (n + 1) - 1).toNat

end

end A115259.P17880096609799023280

namespace A115259

/-- `A055017(A008864(n+1)-1)` -/
def P17880096609799023280.Spec : Prop :=
  ∀ n, P17880096609799023280.a n = A115259 (n + 1)

end A115259

/-! ## A115259.P12928321617508039285

`A055017(A007504(n+1)-A007504(n))`
-/

namespace A115259.P12928321617508039285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (A007504 (n + 1) - A007504 n).toNat

end

end A115259.P12928321617508039285

namespace A115259

/-- `A055017(A007504(n+1)-A007504(n))` -/
def P12928321617508039285.Spec : Prop :=
  ∀ n, P12928321617508039285.a n = A115259 (n + 1)

end A115259

/-! ## A115259.P2761902418618359232

`A055017(eq[2, A007012(n)])`
-/

namespace A115259.P2761902418618359232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A115259.P2761902418618359232

namespace A115259

/-- `A055017(eq[2, A007012(n)])` -/
def P2761902418618359232.Spec : Prop :=
  ∀ n, P2761902418618359232.a n = A115259 (n + 1)

end A115259

/-! ## A115259.P2695985584182876445

`A055017(record[A055023(n+2)])`
-/

namespace A115259.P2695985584182876445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055023 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A115259.P2695985584182876445

namespace A115259

/-- `A055017(record[A055023(n+2)])` -/
def P2695985584182876445.Spec : Prop :=
  ∀ n, P2695985584182876445.a n = A115259 (n + 1)

end A115259

/-!
# A115260: Prime numbers in the sequence of the absolute difference of the sum of digits in odd positions and the sum of digits in even positions of prime numbers.

The programs for A115260, the canonical program `A115260.P9883255391846930332` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115260 has offset 1).

The definition of A115260 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 592 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115260.P8200085876025111960

`abs(A055017(A115261(n+1)))`
-/

namespace A115260.P8200085876025111960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055017 (A115261 (n + 1)).toNat|

end

end A115260.P8200085876025111960

namespace A115260

/-- `abs(A055017(A115261(n+1)))` -/
def P8200085876025111960.Spec : Prop :=
  ∀ n, P8200085876025111960.a n = A115260 (n + 1)

end A115260

/-! ## A115260.P9883255391846930332

`p?[abs(A055017(A000040(n+1)))]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A115260

/-- `p?[abs(A055017(A000040(n+1)))]` -/
def P9883255391846930332.Spec : Prop :=
  ∀ n, P9883255391846930332.a n = A115260 (n + 1)

theorem P9883255391846930332.correct : P9883255391846930332.Spec := by
  intro n
  simp only [A115260, Nat.add_sub_cancel]

end A115260

/-! ## A115260.P12125355919515721879

`p?[abs(A055017(A004087(n+1)))]`
-/

namespace A115260.P12125355919515721879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055017 (A004087 (n + 1)).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A115260.P12125355919515721879

namespace A115260

/-- `p?[abs(A055017(A004087(n+1)))]` -/
def P12125355919515721879.Spec : Prop :=
  ∀ n, P12125355919515721879.a n = A115260 (n + 1)

end A115260

/-! ## A115260.P15617624485281710067

`p?[abs(A055017(A008578(n+1)))]`
-/

namespace A115260.P15617624485281710067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055017 (A008578 (n + 1)).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A115260.P15617624485281710067

namespace A115260

/-- `p?[abs(A055017(A008578(n+1)))]` -/
def P15617624485281710067.Spec : Prop :=
  ∀ n, P15617624485281710067.a n = A115260 (n + 1)

end A115260

/-! ## A115260.P190514964729778227

`p?[abs(A055017(A046022(n+1)))]`
-/

namespace A115260.P190514964729778227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055017 (A046022 (n + 1)).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A115260.P190514964729778227

namespace A115260

/-- `p?[abs(A055017(A046022(n+1)))]` -/
def P190514964729778227.Spec : Prop :=
  ∀ n, P190514964729778227.a n = A115260 (n + 1)

end A115260

/-! ## A115260.P100828592079228428

`p?[abs(A225693(A061397(n+1)))]`
-/

namespace A115260.P100828592079228428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A225693 (A061397 (n + 1)).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A115260.P100828592079228428

namespace A115260

/-- `p?[abs(A225693(A061397(n+1)))]` -/
def P100828592079228428.Spec : Prop :=
  ∀ n, P100828592079228428.a n = A115260 (n + 1)

end A115260

/-! ## A115260.P10902723656037879485

`abs(A225693(p?[A115261(n+1)]))`
-/

namespace A115260.P10902723656037879485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A225693 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat|

end

end A115260.P10902723656037879485

namespace A115260

/-- `abs(A225693(p?[A115261(n+1)]))` -/
def P10902723656037879485.Spec : Prop :=
  ∀ n, P10902723656037879485.a n = A115260 (n + 1)

end A115260

/-! ## A115260.P16937219495336099721

`p?[abs(A225693(A008578(n+2)))]`
-/

namespace A115260.P16937219495336099721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A225693 (A008578 (n + 2)).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A115260.P16937219495336099721

namespace A115260

/-- `p?[abs(A225693(A008578(n+2)))]` -/
def P16937219495336099721.Spec : Prop :=
  ∀ n, P16937219495336099721.a n = A115260 (n + 1)

end A115260

/-! ## A115260.P14316827198717185653

`p?[abs(A055017(A008864(n+1)-1))]`
-/

namespace A115260.P14316827198717185653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055017 (A008864 (n + 1) - 1).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A115260.P14316827198717185653

namespace A115260

/-- `p?[abs(A055017(A008864(n+1)-1))]` -/
def P14316827198717185653.Spec : Prop :=
  ∀ n, P14316827198717185653.a n = A115260 (n + 1)

end A115260

/-! ## A115260.P13820979619618333426

`∏{p}[A225693(∏{p}[A115261(n+1), #]), #]`
-/

namespace A115260.P13820979619618333426
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115261 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225693 (∏ p ∈ Nat.primeFactors (f2 n).natAbs, p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A115260.P13820979619618333426

namespace A115260

/-- `∏{p}[A225693(∏{p}[A115261(n+1), #]), #]` -/
def P13820979619618333426.Spec : Prop :=
  ∀ n, (P13820979619618333426.a n : ℤ) = A115260 (n + 1)

end A115260

/-! ## A115260.P9364352529439877572

`A014963(abs(A225693(A115261(n+1))))`
-/

namespace A115260.P9364352529439877572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 |A225693 (A115261 (n + 1)).toNat|.toNat

end

end A115260.P9364352529439877572

namespace A115260

/-- `A014963(abs(A225693(A115261(n+1))))` -/
def P9364352529439877572.Spec : Prop :=
  ∀ n, P9364352529439877572.a n = A115260 (n + 1)

end A115260

/-! ## A115260.P2737994629243627811

`∏{p}[A225693(A115261(n+1)), A004185(#)]`
-/

namespace A115260.P2737994629243627811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225693 (A115261 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A004185 p

end

end A115260.P2737994629243627811

namespace A115260

/-- `∏{p}[A225693(A115261(n+1)), A004185(#)]` -/
def P2737994629243627811.Spec : Prop :=
  ∀ n, P2737994629243627811.a n = A115260 (n + 1)

end A115260

/-! ## A115260.P5433537673146988282

`∏{p}[A225693(A115261(n+1)), A014963(#)]`
-/

namespace A115260.P5433537673146988282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225693 (A115261 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A014963 p

end

end A115260.P5433537673146988282

namespace A115260

/-- `∏{p}[A225693(A115261(n+1)), A014963(#)]` -/
def P5433537673146988282.Spec : Prop :=
  ∀ n, P5433537673146988282.a n = A115260 (n + 1)

end A115260

/-! ## A115260.P8915514876256514923

`p?[abs(A115259(n+1))]`
-/

namespace A115260.P8915514876256514923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A115259 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A115260.P8915514876256514923

namespace A115260

/-- `p?[abs(A115259(n+1))]` -/
def P8915514876256514923.Spec : Prop :=
  ∀ n, P8915514876256514923.a n = A115260 (n + 1)

end A115260

/-!
# A115261: Prime numbers such that the absolute difference of the sum of their digits in odd positions and the sum of their digits in even positions is also a prime.

The programs for A115261, there is no canonical definition to state claims against.
-/

/-! ## A115261.P14442554640736825572

`A078705(A158281(n+1)²)`
-/

namespace A115261.P14442554640736825572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078705 (A158281 (n + 1) ^ 2).toNat

end

end A115261.P14442554640736825572

/-! ## A115261.P3571548650709312662

`A109395(A158281(n+1)²)`
-/

namespace A115261.P3571548650709312662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109395 (A158281 (n + 1) ^ 2).toNat

end

end A115261.P3571548650709312662

/-! ## A115261.P12313745477124400579

`A158281(n+1)%A227473(n)`
-/

namespace A115261.P12313745477124400579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158281 (n + 1)) (A227473 n)

end

end A115261.P12313745477124400579

/-! ## A115261.P4800415778341328306

`∩[A122090(n+1), A158281(n+1)]`
-/

namespace A115261.P4800415778341328306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158281 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115261.P4800415778341328306

/-! ## A115261.P15554911550098231201

`∩[A158281(n+1), A166155(n+1)]`
-/

namespace A115261.P15554911550098231201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158281 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166155 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115261.P15554911550098231201

/-!
# A115262: Correlation triangle for n+1.

The programs for A115262, there is no canonical definition to state claims against.
-/

/-! ## A115262.P15409857449607009890

`A271916(n+1)+A003991(n+1)`
-/

namespace A115262.P15409857449607009890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271916 (n + 1) + A003991 (n + 1)

end

end A115262.P15409857449607009890

/-! ## A115262.P7058156486494618073

`A271916(n+1)+A098352(n+1)/4`
-/

namespace A115262.P7058156486494618073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271916 (n + 1) : ℚ) + (A098352 (n + 1) : ℚ) / 4

end

end A115262.P7058156486494618073

/-! ## A115262.P3598581665587127681

`A271916(n+1)+A049627(n)+A049615(n)`
-/

namespace A115262.P3598581665587127681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271916 (n + 1) + (A049627 n + A049615 n)

end

end A115262.P3598581665587127681

/-! ## A115262.P8459828662527006735

`A271916(n+1)+A002260(n+1)*A004736(n+1)`
-/

namespace A115262.P8459828662527006735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271916 (n + 1) + A002260 (n + 1) * A004736 (n + 1)

end

end A115262.P8459828662527006735

/-! ## A115262.P4899005079321809389

`A271916(A014132(A014132(n+1)+1))`
-/

namespace A115262.P4899005079321809389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271916 (A014132 (A014132 (n + 1) + 1).toNat).toNat

end

end A115262.P4899005079321809389

/-! ## A115262.P9220496081400824655

`A271916(lt[1, A002262(n)])`
-/

namespace A115262.P9220496081400824655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271916 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A115262.P9220496081400824655

/-! ## A115262.P5411421744764815504

`A271916(n+1)+A243866(A185871(n+1))`
-/

namespace A115262.P5411421744764815504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271916 (n + 1) + A243866 (A185871 (n + 1)).toNat

end

end A115262.P5411421744764815504

/-! ## A115262.P9740353464622779158

`A003991(n+1)+A107985(n)-A185958(n+1)`
-/

namespace A115262.P9740353464622779158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) + (A107985 n - A185958 (n + 1))

end

end A115262.P9740353464622779158

/-! ## A115262.P680748538297799729

`∑{d}[A036561(n), val(#, 6)+1]`
-/

namespace A115262.P680748538297799729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (SequenceMachineLib.valuation d 6 + 1)

end

end A115262.P680748538297799729

/-! ## A115262.P9817576050320761596

`A271916(n+1)+A000005(A036561(n))`
-/

namespace A115262.P9817576050320761596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271916 (n + 1) + A000005 (A036561 n).toNat

end

end A115262.P9817576050320761596

/-!
# A115263: Correlation triangle for floor((n+2)/2).

The programs for A115263, there is no canonical definition to state claims against.
-/

/-! ## A115263.P15929239877949888209

`∑{d}[A036561(n), A320655(#)]`
-/

namespace A115263.P15929239877949888209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A320655 d

end

end A115263.P15929239877949888209

/-! ## A115263.P12907444105117621404

`∑{d}[A175840(n), A320655(#)]`
-/

namespace A115263.P12907444105117621404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A320655 d

end

end A115263.P12907444105117621404

/-! ## A115263.P2388505776210094185

`∑{d}[A120027(n), A320655(#)]`
-/

namespace A115263.P2388505776210094185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120027 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A320655 d

end

end A115263.P2388505776210094185

/-! ## A115263.P14689757871265842870

`∑{d}[A036565(n), A320655(#)]`
-/

namespace A115263.P14689757871265842870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A320655 d

end

end A115263.P14689757871265842870

/-! ## A115263.P10627573422779579677

`A062362(A320371(n+1))`
-/

namespace A115263.P10627573422779579677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062362 (A320371 (n + 1)).toNat

end

end A115263.P10627573422779579677

/-!
# A115264: Diagonal sums of correlation triangle for floor((n+2)/2).

The programs for A115264, the canonical program `A115264.P18287277985517715313` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115264 has offset 0).

The definition of A115264 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115264.P15246177186425671182

`∑[A254594(n)]`
-/

namespace A115264.P15246177186425671182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254594 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115264.P15246177186425671182

namespace A115264

/-- `∑[A254594(n)]` -/
def P15246177186425671182.Spec : Prop :=
  ∀ n, P15246177186425671182.a n = A115264 n

end A115264

/-! ## A115264.P18287277985517715313

`A002621(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A115264

/-- `A002621(n)-a(n-1)` -/
def P18287277985517715313.Spec : Prop :=
  ∀ n, P18287277985517715313.a n = A115264 n

theorem P18287277985517715313.correct : P18287277985517715313.Spec := by
  intro n
  simp only [A115264]

end A115264

/-! ## A115264.P9841381407473944576

`A001400(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A115264.P9841381407473944576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A001400 n + a (n - 2)

end

end A115264.P9841381407473944576

namespace A115264

/-- `A001400(n)+a(n-2)` -/
def P9841381407473944576.Spec : Prop :=
  ∀ n, P9841381407473944576.a n = A115264 n

end A115264

/-! ## A115264.P7228627935889634306

`∑[A181120(A052938(n+1))]`
-/

namespace A115264.P7228627935889634306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181120 (A052938 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115264.P7228627935889634306

namespace A115264

/-- `∑[A181120(A052938(n+1))]` -/
def P7228627935889634306.Spec : Prop :=
  ∀ n, P7228627935889634306.a n = A115264 n

end A115264

/-! ## A115264.P6070759555198215564

`∑[A254708(n)-A165188(n+1)]`
-/

namespace A115264.P6070759555198215564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254708 n - A165188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115264.P6070759555198215564

namespace A115264

/-- `∑[A254708(n)-A165188(n+1)]` -/
def P6070759555198215564.Spec : Prop :=
  ∀ n, P6070759555198215564.a n = A115264 n

end A115264

/-! ## A115264.P7333157858108487423

`A002621(n+1)+A139672(n+1)-A139672(n+2)`
-/

namespace A115264.P7333157858108487423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002621 (n + 1) + (A139672 (n + 1) - A139672 (n + 2))

end

end A115264.P7333157858108487423

namespace A115264

/-- `A002621(n+1)+A139672(n+1)-A139672(n+2)` -/
def P7333157858108487423.Spec : Prop :=
  ∀ n, P7333157858108487423.a n = A115264 n

end A115264

/-! ## A115264.P16548614864036994402

`A210631(n+12)`
-/

namespace A115264.P16548614864036994402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210631 (n + 12)

end

end A115264.P16548614864036994402

namespace A115264

/-- `A210631(n+12)` -/
def P16548614864036994402.Spec : Prop :=
  ∀ n, P16548614864036994402.a n = A115264 n

end A115264

/-! ## A115264.P6023208769415016678

`∑[A029223(3*n)]`
-/

namespace A115264.P6023208769415016678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029223 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115264.P6023208769415016678

namespace A115264

/-- `∑[A029223(3*n)]` -/
def P6023208769415016678.Spec : Prop :=
  ∀ n, P6023208769415016678.a n = A115264 n

end A115264

/-! ## A115264.P2470182556607252376

`∑[A029268(A136320(n))]`
-/

namespace A115264.P2470182556607252376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029268 (A136320 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115264.P2470182556607252376

namespace A115264

/-- `∑[A029268(A136320(n))]` -/
def P2470182556607252376.Spec : Prop :=
  ∀ n, P2470182556607252376.a n = A115264 n

end A115264

/-! ## A115264.P13496761301203030658

`∑[A029268(A047270(n+1))]`
-/

namespace A115264.P13496761301203030658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029268 (A047270 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115264.P13496761301203030658

namespace A115264

/-- `∑[A029268(A047270(n+1))]` -/
def P13496761301203030658.Spec : Prop :=
  ∀ n, P13496761301203030658.a n = A115264 n

end A115264

/-!
# A115265: Correlation triangle for floor((n+3)/3).

The programs for A115265, there is no canonical definition to state claims against.
-/

/-! ## A115265.P3644189729167744804

`A143977(n+1)+A058840(A223227(n+1))`
-/

namespace A115265.P3644189729167744804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143977 (n + 1) + A058840 (A223227 (n + 1)).toNat

end

end A115265.P3644189729167744804

/-! ## A115265.P17268910071041817490

`or(A055641(A087348(n+1)), A143977(n+1))`
-/

namespace A115265.P17268910071041817490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A055641 (A087348 (n + 1)).toNat) (A143977 (n + 1))

end

end A115265.P17268910071041817490

/-! ## A115265.P13067433252363751177

`A324758(A143977(n+1))%A106429(n+1)`
-/

namespace A115265.P13067433252363751177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324758 (A143977 (n + 1)).toNat) (A106429 (n + 1))

end

end A115265.P13067433252363751177

/-! ## A115265.P8630732736423869851

`A001399(gcd(A143977(n+1), A177710(n+1)))`
-/

namespace A115265.P8630732736423869851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (Int.gcd (A143977 (n + 1)) (A177710 (n + 1)))

end

end A115265.P8630732736423869851

/-! ## A115265.P6830282968700548072

`A324832(A352830(2*n+3))+A143977(n+1)`
-/

namespace A115265.P6830282968700548072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324832 (A352830 (2 * n + 3)).toNat + A143977 (n + 1)

end

end A115265.P6830282968700548072

/-!
# A115266: Row sums of correlation triangle for floor((n+3)/3).

The programs for A115266, the canonical program `A115266.P11944870568603553215` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115266 has offset 0).

The definition of A115266 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A115266.P11944870568603553215

`2*a(n-1)-3*a(n-4)+3*a(n-6)-2*a(n-9)+a(n-10)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=13, a(5)=20, a(6)=31, a(7)=44, a(8)=61, a(9)=84`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A115266

/-- `2*a(n-1)-3*a(n-4)+3*a(n-6)-2*a(n-9)+a(n-10)` -/
def P11944870568603553215.Spec : Prop :=
  ∀ n, P11944870568603553215.a n = A115266 n

theorem P11944870568603553215.correct : P11944870568603553215.Spec := by
  intro n
  simp only [A115266]

end A115266

/-! ## A115266.P9800636078740795429

`∑[A028289(n)]`
-/

namespace A115266.P9800636078740795429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028289 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115266.P9800636078740795429

namespace A115266

/-- `∑[A028289(n)]` -/
def P9800636078740795429.Spec : Prop :=
  ∀ n, P9800636078740795429.a n = A115266 n

end A115266

/-! ## A115266.P11857187846680620510

`A011779(n)-a(n-1)` with `a(0)=1`
-/

namespace A115266.P11857187846680620510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A011779 n - a (n - 1)

end

end A115266.P11857187846680620510

namespace A115266

/-- `A011779(n)-a(n-1)` -/
def P11857187846680620510.Spec : Prop :=
  ∀ n, P11857187846680620510.a n = A115266 n

end A115266

/-! ## A115266.P4051020339748301189

`A144677(n)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A115266.P4051020339748301189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A144677 n + a (n - 2)

end

end A115266.P4051020339748301189

namespace A115266

/-- `A144677(n)+a(n-2)` -/
def P4051020339748301189.Spec : Prop :=
  ∀ n, P4051020339748301189.a n = A115266 n

end A115266

/-! ## A115266.P2488226023855765710

`A000601(n)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A115266.P2488226023855765710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  A000601 n + a (n - 3)

end

end A115266.P2488226023855765710

namespace A115266

/-- `A000601(n)+a(n-3)` -/
def P2488226023855765710.Spec : Prop :=
  ∀ n, P2488226023855765710.a n = A115266 n

end A115266

/-! ## A115266.P3363051196804066310

`∑[A001399(n)+a(n-3)]` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A115266.P3363051196804066310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n f1 =>
  A001399 n + f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115266.P3363051196804066310

namespace A115266

/-- `∑[A001399(n)+a(n-3)]` -/
def P3363051196804066310.Spec : Prop :=
  ∀ n, P3363051196804066310.a n = A115266 n

end A115266

/-! ## A115266.P3048892321303767267

`∑[∑[A002620(A008611(n)+1)]]`
-/

namespace A115266.P3048892321303767267
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A008611 n + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115266.P3048892321303767267

namespace A115266

/-- `∑[∑[A002620(A008611(n)+1)]]` -/
def P3048892321303767267.Spec : Prop :=
  ∀ n, P3048892321303767267.a n = A115266 n

end A115266

/-! ## A115266.P15522065072717406044

`∑[A001399(n)+∑[A307018(n)]]`
-/

namespace A115266.P15522065072717406044
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307018 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115266.P15522065072717406044

namespace A115266

/-- `∑[A001399(n)+∑[A307018(n)]]` -/
def P15522065072717406044.Spec : Prop :=
  ∀ n, P15522065072717406044.a n = A115266 n

end A115266

/-! ## A115266.P6494573118168337547

`∑[2*A213042(n)]-A213042(n)`
-/

namespace A115266.P6494573118168337547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213042 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A213042 n

end

end A115266.P6494573118168337547

namespace A115266

/-- `∑[2*A213042(n)]-A213042(n)` -/
def P6494573118168337547.Spec : Prop :=
  ∀ n, P6494573118168337547.a n = A115266 n

end A115266

/-! ## A115266.P3853798487815247120

`∑[A307872(n+3)]`
-/

namespace A115266.P3853798487815247120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307872 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115266.P3853798487815247120

namespace A115266

/-- `∑[A307872(n+3)]` -/
def P3853798487815247120.Spec : Prop :=
  ∀ n, P3853798487815247120.a n = A115266 n

end A115266

/-! ## A115266.P1816390523016950153

`∑[∑[A307018(n+3)]]`
-/

namespace A115266.P1816390523016950153
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307018 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115266.P1816390523016950153

namespace A115266

/-- `∑[∑[A307018(n+3)]]` -/
def P1816390523016950153.Spec : Prop :=
  ∀ n, P1816390523016950153.a n = A115266 n

end A115266

/-! ## A115266.P14428767108064976035

`∑[A029136(2*n)]`
-/

namespace A115266.P14428767108064976035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029136 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115266.P14428767108064976035

namespace A115266

/-- `∑[A029136(2*n)]` -/
def P14428767108064976035.Spec : Prop :=
  ∀ n, P14428767108064976035.a n = A115266 n

end A115266

/-! ## A115266.P7126423403273651324

`∑[A029046(2*n)]`
-/

namespace A115266.P7126423403273651324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029046 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115266.P7126423403273651324

namespace A115266

/-- `∑[A029046(2*n)]` -/
def P7126423403273651324.Spec : Prop :=
  ∀ n, P7126423403273651324.a n = A115266 n

end A115266

/-! ## A115266.P10304071926595778886

`∑[∑[A025828(2*n)]]`
-/

namespace A115266.P10304071926595778886
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025828 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115266.P10304071926595778886

namespace A115266

/-- `∑[∑[A025828(2*n)]]` -/
def P10304071926595778886.Spec : Prop :=
  ∀ n, P10304071926595778886.a n = A115266 n

end A115266

/-! ## A115266.P5618671353972305377

`∑[∑[A024165(2*n+1)+A008612(2*n)]]`
-/

namespace A115266.P5618671353972305377
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024165 (2 * n + 1) + A008612 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115266.P5618671353972305377

namespace A115266

/-- `∑[∑[A024165(2*n+1)+A008612(2*n)]]` -/
def P5618671353972305377.Spec : Prop :=
  ∀ n, P5618671353972305377.a n = A115266 n

end A115266

/-! ## A115266.P7557360499550987370

`A025801(2*n)+∑[∑[A025801(2*n+1)]]`
-/

namespace A115266.P7557360499550987370
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025801 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025801 (2 * n) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115266.P7557360499550987370

namespace A115266

/-- `A025801(2*n)+∑[∑[A025801(2*n+1)]]` -/
def P7557360499550987370.Spec : Prop :=
  ∀ n, P7557360499550987370.a n = A115266 n

end A115266

/-! ## A115266.P2199133810205296366

`A363370(2*n+3)`
-/

namespace A115266.P2199133810205296366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363370 (2 * n + 3)

end

end A115266.P2199133810205296366

namespace A115266

/-- `A363370(2*n+3)` -/
def P2199133810205296366.Spec : Prop :=
  ∀ n, P2199133810205296366.a n = A115266 n

end A115266

/-! ## A115266.P1085140750481202922

`∑[A029171(2*n+1)+Δ[A037145(2*n+1)]]`
-/

namespace A115266.P1085140750481202922
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037145 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029171 (2 * n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115266.P1085140750481202922

namespace A115266

/-- `∑[A029171(2*n+1)+Δ[A037145(2*n+1)]]` -/
def P1085140750481202922.Spec : Prop :=
  ∀ n, P1085140750481202922.a n = A115266 n

end A115266

/-! ## A115266.P11243899426818603507

`∑[A029265(4*n)]`
-/

namespace A115266.P11243899426818603507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029265 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115266.P11243899426818603507

namespace A115266

/-- `∑[A029265(4*n)]` -/
def P11243899426818603507.Spec : Prop :=
  ∀ n, P11243899426818603507.a n = A115266 n

end A115266

/-! ## A115266.P11198998094853240859

`∑[record[A029265(n+1)]]+1`
-/

namespace A115266.P11198998094853240859
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029265 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A115266.P11198998094853240859

namespace A115266

/-- `∑[record[A029265(n+1)]]+1` -/
def P11198998094853240859.Spec : Prop :=
  ∀ n, P11198998094853240859.a n = A115266 n

end A115266

/-!
# A115267: Primes of the form p*q*r-2, where p, q and r are distinct primes.

The programs for A115267, the canonical program `A115267.P1462664793311631896` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115267 has offset 1).

The definition of A115267 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115267.P8794271177884747079

`p?[A176687(n+1)-1]`
-/

namespace A115267.P8794271177884747079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176687 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A115267.P8794271177884747079

namespace A115267

/-- `p?[A176687(n+1)-1]` -/
def P8794271177884747079.Spec : Prop :=
  ∀ n, P8794271177884747079.a n = A115267 (n + 1)

end A115267

/-! ## A115267.P11278634337728209585

`p?[A007304(n+1)-2]`
-/

namespace A115267.P11278634337728209585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A115267.P11278634337728209585

namespace A115267

/-- `p?[A007304(n+1)-2]` -/
def P11278634337728209585.Spec : Prop :=
  ∀ n, P11278634337728209585.a n = A115267 (n + 1)

end A115267

/-! ## A115267.P1462664793311631896

`p?[A046389(n+1)-2]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A115267

/-- `p?[A046389(n+1)-2]` -/
def P1462664793311631896.Spec : Prop :=
  ∀ n, P1462664793311631896.a n = A115267 (n + 1)

theorem P1462664793311631896.correct : P1462664793311631896.Spec := by
  intro n
  simp only [A115267, Nat.add_sub_cancel]

end A115267

/-! ## A115267.P18295588924927211452

`record[A006530(A046389(n+1)-2)]`
-/

namespace A115267.P18295588924927211452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A046389 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115267.P18295588924927211452

namespace A115267

/-- `record[A006530(A046389(n+1)-2)]` -/
def P18295588924927211452.Spec : Prop :=
  ∀ n, P18295588924927211452.a n = A115267 (n + 1)

end A115267

/-! ## A115267.P16476042630747561349

`record[A020639(A046389(n+1)-2)]`
-/

namespace A115267.P16476042630747561349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A046389 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115267.P16476042630747561349

namespace A115267

/-- `record[A020639(A046389(n+1)-2)]` -/
def P16476042630747561349.Spec : Prop :=
  ∀ n, P16476042630747561349.a n = A115267 (n + 1)

end A115267

/-! ## A115267.P15462444794658283599

`∩[A049233(n+1), A063641(n+1)]`
-/

namespace A115267.P15462444794658283599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049233 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115267.P15462444794658283599

namespace A115267

/-- `∩[A049233(n+1), A063641(n+1)]` -/
def P15462444794658283599.Spec : Prop :=
  ∀ n, (P15462444794658283599.a n : ℤ) = A115267 (n + 1)

end A115267

/-! ## A115267.P5306047506426475098

`∩[A000040(n+1), A046389(n+1)-2]`
-/

namespace A115267.P5306047506426475098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046389 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115267.P5306047506426475098

namespace A115267

/-- `∩[A000040(n+1), A046389(n+1)-2]` -/
def P5306047506426475098.Spec : Prop :=
  ∀ n, (P5306047506426475098.a n : ℤ) = A115267 (n + 1)

end A115267

/-! ## A115267.P13533358108207128365

`record[A006530(A046386(n+1)-A176170(n+1)²)]`
-/

namespace A115267.P13533358108207128365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A046386 (n + 1) - A176170 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115267.P13533358108207128365

namespace A115267

/-- `record[A006530(A046386(n+1)-A176170(n+1)²)]` -/
def P13533358108207128365.Spec : Prop :=
  ∀ n, P13533358108207128365.a n = A115267 (n + 1)

end A115267

/-! ## A115267.P11756025280682702563

`∩[A063641(n+1), A074820(n+1)]`
-/

namespace A115267.P11756025280682702563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074820 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115267.P11756025280682702563

namespace A115267

/-- `∩[A063641(n+1), A074820(n+1)]` -/
def P11756025280682702563.Spec : Prop :=
  ∀ n, (P11756025280682702563.a n : ℤ) = A115267 (n + 1)

end A115267

/-! ## A115267.P9644942354846800956

`∩[A063641(n+1), A069977(n+1)]`
-/

namespace A115267.P9644942354846800956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115267.P9644942354846800956

namespace A115267

/-- `∩[A063641(n+1), A069977(n+1)]` -/
def P9644942354846800956.Spec : Prop :=
  ∀ n, (P9644942354846800956.a n : ℤ) = A115267 (n + 1)

end A115267

/-! ## A115267.P9807881242921893702

`record[A014963(A046389(n+1)-2)]`
-/

namespace A115267.P9807881242921893702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A046389 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115267.P9807881242921893702

namespace A115267

/-- `record[A014963(A046389(n+1)-2)]` -/
def P9807881242921893702.Spec : Prop :=
  ∀ n, P9807881242921893702.a n = A115267 (n + 1)

end A115267

/-! ## A115267.P17372072722391518256

`p?[A080305(n+1)-(A089026(n+1)+1)]`
-/

namespace A115267.P17372072722391518256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080305 (n + 1) - (A089026 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A115267.P17372072722391518256

namespace A115267

/-- `p?[A080305(n+1)-(A089026(n+1)+1)]` -/
def P17372072722391518256.Spec : Prop :=
  ∀ n, P17372072722391518256.a n = A115267 (n + 1)

end A115267

/-! ## A115267.P7989132448607090237

`p?[(A014963(n+1)-n)*A008683(n+1)]`
-/

namespace A115267.P7989132448607090237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014963 (n + 1) - (n : ℤ)) * A008683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A115267.P7989132448607090237

namespace A115267

/-- `p?[(A014963(n+1)-n)*A008683(n+1)]` -/
def P7989132448607090237.Spec : Prop :=
  ∀ n, P7989132448607090237.a n = A115267 (n + 1)

end A115267

/-!
# A115268: Correlation triangle for floor((n+4)/4).

The programs for A115268, there is no canonical definition to state claims against.
-/

/-! ## A115268.P14568934327412841250

`A002265(A004197(n))+A001876(A036561(n))`
-/

namespace A115268.P14568934327412841250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A004197 n).toNat + A001876 (A036561 n).toNat

end

end A115268.P14568934327412841250

/-! ## A115268.P1599667114945323407

`A002265(A004197(n))+A001876(A175840(n))`
-/

namespace A115268.P1599667114945323407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A004197 n).toNat + A001876 (A175840 n).toNat

end

end A115268.P1599667114945323407

/-! ## A115268.P16970596338817331389

`A002265(A334348(n))+A001876(A175840(n))`
-/

namespace A115268.P16970596338817331389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A334348 n).toNat + A001876 (A175840 n).toNat

end

end A115268.P16970596338817331389

/-! ## A115268.P5739953054140167038

`A188300(A285577(n+1))+A001876(A175840(n))`
-/

namespace A115268.P5739953054140167038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188300 (A285577 (n + 1)).toNat + A001876 (A175840 n).toNat

end

end A115268.P5739953054140167038

/-! ## A115268.P17246943775350585145

`A001876(A036561(n))%∑[A120729(n)]`
-/

namespace A115268.P17246943775350585145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120729 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001876 (A036561 n).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A115268.P17246943775350585145

/-!
# A115269: Row sums of correlation triangle for floor((n+4)/4).

The programs for A115269, the canonical program `A115269.P7151196633504775575` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115269 has offset 0).

The definition of A115269 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115269.P1598092424191945512

`A189376(n)-a(n-1)` with `a(0)=1`
-/

namespace A115269.P1598092424191945512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A189376 n - a (n - 1)

end

end A115269.P1598092424191945512

namespace A115269

/-- `A189376(n)-a(n-1)` -/
def P1598092424191945512.Spec : Prop :=
  ∀ n, P1598092424191945512.a n = A115269 n

end A115269

/-! ## A115269.P7151196633504775575

`∑[A006918(∑[(n+1)%2])]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A115269

/-- `∑[A006918(∑[(n+1)%2])]` -/
def P7151196633504775575.Spec : Prop :=
  ∀ n, P7151196633504775575.a n = A115269 n

theorem P7151196633504775575.correct : P7151196633504775575.Spec := by
  intro n
  simp only [A115269]

end A115269

/-! ## A115269.P16906569157474275205

`∑[A006918(∑[1-n%2])]`
-/

namespace A115269.P16906569157474275205
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n % 2 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115269.P16906569157474275205

namespace A115269

/-- `∑[A006918(∑[1-n%2])]` -/
def P16906569157474275205.Spec : Prop :=
  ∀ n, P16906569157474275205.a n = A115269 n

end A115269

/-! ## A115269.P15012632549576195082

`A144678(n)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A115269.P15012632549576195082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A144678 n + a (n - 2)

end

end A115269.P15012632549576195082

namespace A115269

/-- `A144678(n)+a(n-2)` -/
def P15012632549576195082.Spec : Prop :=
  ∀ n, P15012632549576195082.a n = A115269 n

end A115269

/-! ## A115269.P8084945399072791836

`∑[A006918(∑[1-a(n-1)])]` with `a(0)=1`
-/

namespace A115269.P8084945399072791836
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  1 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115269.P8084945399072791836

namespace A115269

/-- `∑[A006918(∑[1-a(n-1)])]` -/
def P8084945399072791836.Spec : Prop :=
  ∀ n, P8084945399072791836.a n = A115269 n

end A115269

/-! ## A115269.P13149931579373662459

`∑[A006918(A008619(n))]`
-/

namespace A115269.P13149931579373662459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115269.P13149931579373662459

namespace A115269

/-- `∑[A006918(A008619(n))]` -/
def P13149931579373662459.Spec : Prop :=
  ∀ n, P13149931579373662459.a n = A115269 n

end A115269

/-! ## A115269.P5091888922998269969

`∑[A006918(∑[A059841(n)])]`
-/

namespace A115269.P5091888922998269969
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115269.P5091888922998269969

namespace A115269

/-- `∑[A006918(∑[A059841(n)])]` -/
def P5091888922998269969.Spec : Prop :=
  ∀ n, P5091888922998269969.a n = A115269 n

end A115269

/-! ## A115269.P15961855641163744651

`∑[A006918(A004526(n)+1)]`
-/

namespace A115269.P15961855641163744651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 (A004526 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115269.P15961855641163744651

namespace A115269

/-- `∑[A006918(A004526(n)+1)]` -/
def P15961855641163744651.Spec : Prop :=
  ∀ n, P15961855641163744651.a n = A115269 n

end A115269

/-! ## A115269.P13877355607211297257

`∑[A006918(∑[1-A000035(n)])]`
-/

namespace A115269.P13877355607211297257
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000035 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115269.P13877355607211297257

namespace A115269

/-- `∑[A006918(∑[1-A000035(n)])]` -/
def P13877355607211297257.Spec : Prop :=
  ∀ n, P13877355607211297257.a n = A115269 n

end A115269

/-! ## A115269.P14262103927559232010

`∑[A006918(∑[2-A000034(n)])]`
-/

namespace A115269.P14262103927559232010
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A000034 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115269.P14262103927559232010

namespace A115269

/-- `∑[A006918(∑[2-A000034(n)])]` -/
def P14262103927559232010.Spec : Prop :=
  ∀ n, P14262103927559232010.a n = A115269 n

end A115269

/-! ## A115269.P7036240097369114998

`∪[A032091(n+6), A001752(n)]`
-/

namespace A115269.P7036240097369114998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032091 (n + 6)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001752 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A115269.P7036240097369114998

namespace A115269

/-- `∪[A032091(n+6), A001752(n)]` -/
def P7036240097369114998.Spec : Prop :=
  ∀ n, (P7036240097369114998.a n : ℤ) = A115269 n

end A115269

/-! ## A115269.P8357594279207004985

`∑[A006918(∑[A040001(n)]-n)]`
-/

namespace A115269.P8357594279207004985
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 (∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115269.P8357594279207004985

namespace A115269

/-- `∑[A006918(∑[A040001(n)]-n)]` -/
def P8357594279207004985.Spec : Prop :=
  ∀ n, P8357594279207004985.a n = A115269 n

end A115269

/-! ## A115269.P12508578238645898828

`∑[∑[A000217(A008621(n))-a(n-1)]]` with `a(0)=1`
-/

namespace A115269.P12508578238645898828
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A000217 (A008621 n).toNat - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115269.P12508578238645898828

namespace A115269

/-- `∑[∑[A000217(A008621(n))-a(n-1)]]` -/
def P12508578238645898828.Spec : Prop :=
  ∀ n, P12508578238645898828.a n = A115269 n

end A115269

/-! ## A115269.P5730271309636048958

`∑[A006918(A065033(n+1))]`
-/

namespace A115269.P5730271309636048958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 (A065033 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115269.P5730271309636048958

namespace A115269

/-- `∑[A006918(A065033(n+1))]` -/
def P5730271309636048958.Spec : Prop :=
  ∀ n, P5730271309636048958.a n = A115269 n

end A115269

/-! ## A115269.P1231745727564224386

`A002621(n)-A308733(n+1)`
-/

namespace A115269.P1231745727564224386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002621 n - A308733 (n + 1)

end

end A115269.P1231745727564224386

namespace A115269

/-- `A002621(n)-A308733(n+1)` -/
def P1231745727564224386.Spec : Prop :=
  ∀ n, P1231745727564224386.a n = A115269 n

end A115269

/-! ## A115269.P5417809953489427726

`∑[A006918(∑[A000035(n+1)])]`
-/

namespace A115269.P5417809953489427726
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115269.P5417809953489427726

namespace A115269

/-- `∑[A006918(∑[A000035(n+1)])]` -/
def P5417809953489427726.Spec : Prop :=
  ∀ n, P5417809953489427726.a n = A115269 n

end A115269

/-! ## A115269.P17615099583873843456

`∑[A006918(A123108(n+2))]`
-/

namespace A115269.P17615099583873843456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 (A123108 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115269.P17615099583873843456

namespace A115269

/-- `∑[A006918(A123108(n+2))]` -/
def P17615099583873843456.Spec : Prop :=
  ∀ n, P17615099583873843456.a n = A115269 n

end A115269

/-! ## A115269.P18260970320996929

`∑[A006918(∑[A003815(2*n+1)])]`
-/

namespace A115269.P18260970320996929
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003815 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115269.P18260970320996929

namespace A115269

/-- `∑[A006918(∑[A003815(2*n+1)])]` -/
def P18260970320996929.Spec : Prop :=
  ∀ n, P18260970320996929.a n = A115269 n

end A115269

/-! ## A115269.P15308840106222738015

`∑[A029256(3*n)]`
-/

namespace A115269.P15308840106222738015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029256 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115269.P15308840106222738015

namespace A115269

/-- `∑[A029256(3*n)]` -/
def P15308840106222738015.Spec : Prop :=
  ∀ n, P15308840106222738015.a n = A115269 n

end A115269

/-! ## A115269.P270292461923325487

`∑[A006918(A008612(3*n))]`
-/

namespace A115269.P270292461923325487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 (A008612 (3 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115269.P270292461923325487

namespace A115269

/-- `∑[A006918(A008612(3*n))]` -/
def P270292461923325487.Spec : Prop :=
  ∀ n, P270292461923325487.a n = A115269 n

end A115269

/-!
# A115270: Diagonal sums of correlation triangle for floor((n+4)/4).

The programs for A115270, the canonical program `A115270.P1071988571996701648` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115270 has offset 0).

The definition of A115270 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115270.P1071988571996701648

`∑[A029138(n)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A115270

/-- `∑[A029138(n)]` -/
def P1071988571996701648.Spec : Prop :=
  ∀ n, P1071988571996701648.a n = A115270 n

theorem P1071988571996701648.correct : P1071988571996701648.Spec := by
  intro n
  simp only [A115270]

end A115270

/-! ## A115270.P9619785918859034146

`A029034(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A115270.P9619785918859034146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A029034 n + a (n - 2)

end

end A115270.P9619785918859034146

namespace A115270

/-- `A029034(n)+a(n-2)` -/
def P9619785918859034146.Spec : Prop :=
  ∀ n, P9619785918859034146.a n = A115270 n

end A115270

/-! ## A115270.P681391483265103760

`A008643(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A115270.P681391483265103760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A008643 n + a (n - 3)

end

end A115270.P681391483265103760

namespace A115270

/-- `A008643(n)+a(n-3)` -/
def P681391483265103760.Spec : Prop :=
  ∀ n, P681391483265103760.a n = A115270 n

end A115270

/-! ## A115270.P9170351752579304914

`∑[A026810(A028242(n)+3)]`
-/

namespace A115270.P9170351752579304914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (A028242 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115270.P9170351752579304914

namespace A115270

/-- `∑[A026810(A028242(n)+3)]` -/
def P9170351752579304914.Spec : Prop :=
  ∀ n, P9170351752579304914.a n = A115270 n

end A115270

/-! ## A115270.P5923068360180811048

`∑[A029253(n-∑[n%2]+n)]`
-/

namespace A115270.P5923068360180811048
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029253 ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115270.P5923068360180811048

namespace A115270

/-- `∑[A029253(n-∑[n%2]+n)]` -/
def P5923068360180811048.Spec : Prop :=
  ∀ n, P5923068360180811048.a n = A115270 n

end A115270

/-! ## A115270.P9996153673700522362

`∑[A029167(A032766(n))]`
-/

namespace A115270.P9996153673700522362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029167 (A032766 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115270.P9996153673700522362

namespace A115270

/-- `∑[A029167(A032766(n))]` -/
def P9996153673700522362.Spec : Prop :=
  ∀ n, P9996153673700522362.a n = A115270 n

end A115270

/-! ## A115270.P3343049003411735542

`∑[A029253(A008619(n)+n-1)]`
-/

namespace A115270.P3343049003411735542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029253 (A008619 n + ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115270.P3343049003411735542

namespace A115270

/-- `∑[A029253(A008619(n)+n-1)]` -/
def P3343049003411735542.Spec : Prop :=
  ∀ n, P3343049003411735542.a n = A115270 n

end A115270

/-! ## A115270.P2402989406279432749

`∑[A029425(3*n)]`
-/

namespace A115270.P2402989406279432749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029425 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115270.P2402989406279432749

namespace A115270

/-- `∑[A029425(3*n)]` -/
def P2402989406279432749.Spec : Prop :=
  ∀ n, P2402989406279432749.a n = A115270 n

end A115270

/-!
# A115271: Partial sums of floor((n+4)/4)^2.

The programs for A115271, the canonical program `A115271.P10537020290417271628` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115271 has offset 0).

The definition of A115271 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115271.P9496853957667877108

`∑[∑[char[4*n]]²]`
-/

namespace A115271.P9496853957667877108
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115271.P9496853957667877108

namespace A115271

/-- `∑[∑[char[4*n]]²]` -/
def P9496853957667877108.Spec : Prop :=
  ∀ n, (P9496853957667877108.a n : ℤ) = A115271 n

end A115271

/-! ## A115271.P1977447047560664160

`∑[∑[2%gcd(4, n)]²]/4`
-/

namespace A115271.P1977447047560664160
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 % Nat.gcd 4 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 4

end

end A115271.P1977447047560664160

namespace A115271

/-- `∑[∑[2%gcd(4, n)]²]/4` -/
def P1977447047560664160.Spec : Prop :=
  ∀ n, P1977447047560664160.a n = (A115271 n : ℚ)

end A115271

/-! ## A115271.P10537020290417271628

`or(C(2, n), ∑[round((n+2)/4)²])`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A115271

/-- `or(C(2, n), ∑[round((n+2)/4)²])` -/
def P10537020290417271628.Spec : Prop :=
  ∀ n, P10537020290417271628.a n = A115271 n

theorem P10537020290417271628.correct : P10537020290417271628.Spec := by
  intro n
  simp only [A115271]

end A115271

/-! ## A115271.P15147456281283126667

`floor(∑[∑[a(n-4)²]²])` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A115271.P15147456281283126667
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 0] fun n f2 =>
  f2 (n - 4) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115271.P15147456281283126667

namespace A115271

/-- `floor(∑[∑[a(n-4)²]²])` -/
def P15147456281283126667.Spec : Prop :=
  ∀ n, (P15147456281283126667.a n : ℤ) = A115271 n

end A115271

/-! ## A115271.P4835867292826653314

`a(n-1)+(floor(n/4)+1)²` with `a(0)=1`
-/

namespace A115271.P4835867292826653314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (⌊(n : ℚ) / 4⌋ + 1) ^ 2

end

end A115271.P4835867292826653314

namespace A115271

/-- `a(n-1)+(floor(n/4)+1)²` -/
def P4835867292826653314.Spec : Prop :=
  ∀ n, P4835867292826653314.a n = A115271 n

end A115271

/-! ## A115271.P1413382290162286963

`and(log2(1/2), ∑[ceil((n+1)/4)²])`
-/

namespace A115271.P1413382290162286963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / 4⌉ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway (Real.logb 2 ((1 : ℚ) / 2 : ℝ))) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A115271.P1413382290162286963

namespace A115271

/-- `and(log2(1/2), ∑[ceil((n+1)/4)²])` -/
def P1413382290162286963.Spec : Prop :=
  ∀ n, P1413382290162286963.a n = A115271 n

end A115271

/-! ## A115271.P18324986638791084704

`gcd(C(2, n+2), ∑[ceil((n+1)/4)²])`
-/

namespace A115271.P18324986638791084704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / 4⌉ ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose 2 (n + 2) : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A115271.P18324986638791084704

namespace A115271

/-- `gcd(C(2, n+2), ∑[ceil((n+1)/4)²])` -/
def P18324986638791084704.Spec : Prop :=
  ∀ n, (P18324986638791084704.a n : ℤ) = A115271 n

end A115271

/-! ## A115271.P5535100145927723732

`∑[2*(A002265(n)+1)²]/2`
-/

namespace A115271.P5535100145927723732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A002265 n + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A115271.P5535100145927723732

namespace A115271

/-- `∑[2*(A002265(n)+1)²]/2` -/
def P5535100145927723732.Spec : Prop :=
  ∀ n, P5535100145927723732.a n = (A115271 n : ℚ)

end A115271

/-! ## A115271.P9859622369647837649

`A000290(∑[char[4*n]])+a(n-1)` with `a(0)=1`
-/

namespace A115271.P9859622369647837649
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000290 (∑ j ∈ Finset.range (n + 1), f1 j) + a (n - 1)

end

end A115271.P9859622369647837649

namespace A115271

/-- `A000290(∑[char[4*n]])+a(n-1)` -/
def P9859622369647837649.Spec : Prop :=
  ∀ n, P9859622369647837649.a n = A115271 n

end A115271

/-! ## A115271.P11357843363628100857

`A144678(n)+A144678(n)-A001972(n)`
-/

namespace A115271.P11357843363628100857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144678 n + (A144678 n - A001972 n)

end

end A115271.P11357843363628100857

namespace A115271

/-- `A144678(n)+A144678(n)-A001972(n)` -/
def P11357843363628100857.Spec : Prop :=
  ∀ n, P11357843363628100857.a n = A115271 n

end A115271

/-! ## A115271.P4307815156021832425

`A000027(∑[(A002265(n)+1)²])`
-/

namespace A115271.P4307815156021832425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002265 n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A115271.P4307815156021832425

namespace A115271

/-- `A000027(∑[(A002265(n)+1)²])` -/
def P4307815156021832425.Spec : Prop :=
  ∀ n, P4307815156021832425.a n = A115271 n

end A115271

/-! ## A115271.P14134331658988226952

`∑[(A002265(n)+1)²]%A037643(n+1)`
-/

namespace A115271.P14134331658988226952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002265 n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A037643 (n + 1))

end

end A115271.P14134331658988226952

namespace A115271

/-- `∑[(A002265(n)+1)²]%A037643(n+1)` -/
def P14134331658988226952.Spec : Prop :=
  ∀ n, P14134331658988226952.a n = A115271 n

end A115271

/-!
# A115273: a(n) = floor(n/3)*(n mod 3).

The programs for A115273, the canonical program `A115273.P722177767062452780` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115273 has offset 0).

The definition of A115273 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A115273.P722177767062452780

`floor(n/3)*n%3`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A115273

/-- `floor(n/3)*n%3` -/
def P722177767062452780.Spec : Prop :=
  ∀ n, P722177767062452780.a n = A115273 n

theorem P722177767062452780.correct : P722177767062452780.Spec := by
  intro n
  simp only [A115273]

end A115273

/-! ## A115273.P11643277389790382997

`ceil((3-n)*(floor(n/3)-n/3))`
-/

namespace A115273.P11643277389790382997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 - (n : ℤ) : ℚ) * ((⌊(n : ℚ) / 3⌋ : ℚ) - (n : ℚ) / 3)⌉

end

end A115273.P11643277389790382997

namespace A115273

/-- `ceil((3-n)*(floor(n/3)-n/3))` -/
def P11643277389790382997.Spec : Prop :=
  ∀ n, P11643277389790382997.a n = A115273 n

end A115273

/-! ## A115273.P8182537608729307346

`A010872(n)+a(n-3)` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A115273.P8182537608729307346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  A010872 n + a (n - 3)

end

end A115273.P8182537608729307346

namespace A115273

/-- `A010872(n)+a(n-3)` -/
def P8182537608729307346.Spec : Prop :=
  ∀ n, P8182537608729307346.a n = A115273 n

end A115273

/-! ## A115273.P13076273157434571213

`A002264(n)*A010872(n)`
-/

namespace A115273.P13076273157434571213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 n * A010872 n

end

end A115273.P13076273157434571213

namespace A115273

/-- `A002264(n)*A010872(n)` -/
def P13076273157434571213.Spec : Prop :=
  ∀ n, P13076273157434571213.a n = A115273 n

end A115273

/-! ## A115273.P17500301226473183564

`A211628(n)%A028310(n)`
-/

namespace A115273.P17500301226473183564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211628 n) (A028310 n)

end

end A115273.P17500301226473183564

namespace A115273

/-- `A211628(n)%A028310(n)` -/
def P17500301226473183564.Spec : Prop :=
  ∀ n, P17500301226473183564.a n = A115273 n

end A115273

/-! ## A115273.P7345881356064670131

`A270743(n+1)-A177702(n)`
-/

namespace A115273.P7345881356064670131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270743 (n + 1) - A177702 n

end

end A115273.P7345881356064670131

namespace A115273

/-- `A270743(n+1)-A177702(n)` -/
def P7345881356064670131.Spec : Prop :=
  ∀ n, P7345881356064670131.a n = A115273 n

end A115273

/-! ## A115273.P14459989067840879941

`(A010882(n)-1)*A002264(n)`
-/

namespace A115273.P14459989067840879941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010882 n - 1) * A002264 n

end

end A115273.P14459989067840879941

namespace A115273

/-- `(A010882(n)-1)*A002264(n)` -/
def P14459989067840879941.Spec : Prop :=
  ∀ n, P14459989067840879941.a n = A115273 n

end A115273

/-! ## A115273.P12690396043225671903

`(A008620(n)-1)*A010872(n)`
-/

namespace A115273.P12690396043225671903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008620 n - 1) * A010872 n

end

end A115273.P12690396043225671903

namespace A115273

/-- `(A008620(n)-1)*A010872(n)` -/
def P12690396043225671903.Spec : Prop :=
  ∀ n, P12690396043225671903.a n = A115273 n

end A115273

/-! ## A115273.P8073333971946530173

`(1-A057078(n))*A002264(n)`
-/

namespace A115273.P8073333971946530173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A057078 n) * A002264 n

end

end A115273.P8073333971946530173

namespace A115273

/-- `(1-A057078(n))*A002264(n)` -/
def P8073333971946530173.Spec : Prop :=
  ∀ n, P8073333971946530173.a n = A115273 n

end A115273

/-! ## A115273.P1732737639956622643

`A173773(n)%A270743(n+1)`
-/

namespace A115273.P1732737639956622643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173773 n) (A270743 (n + 1))

end

end A115273.P1732737639956622643

namespace A115273

/-- `A173773(n)%A270743(n+1)` -/
def P1732737639956622643.Spec : Prop :=
  ∀ n, P1732737639956622643.a n = A115273 n

end A115273

/-! ## A115273.P15517569783397901815

`A265667(n)%A270743(n+1)`
-/

namespace A115273.P15517569783397901815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265667 n) (A270743 (n + 1))

end

end A115273.P15517569783397901815

namespace A115273

/-- `A265667(n)%A270743(n+1)` -/
def P15517569783397901815.Spec : Prop :=
  ∀ n, P15517569783397901815.a n = A115273 n

end A115273

/-! ## A115273.P12077118857289089501

`A062781(n+1)-A000326(comp[or(3, n)]-n)`
-/

namespace A115273.P12077118857289089501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062781 (n + 1) - A000326 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n)

end

end A115273.P12077118857289089501

namespace A115273

/-- `A062781(n+1)-A000326(comp[or(3, n)]-n)` -/
def P12077118857289089501.Spec : Prop :=
  ∀ n, P12077118857289089501.a n = A115273 n

end A115273

/-! ## A115273.P16738694395251996416

`A242669(n)-A033428(A002264(n))`
-/

namespace A115273.P16738694395251996416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242669 n - A033428 (A002264 n).toNat

end

end A115273.P16738694395251996416

namespace A115273

/-- `A242669(n)-A033428(A002264(n))` -/
def P16738694395251996416.Spec : Prop :=
  ∀ n, P16738694395251996416.a n = A115273 n

end A115273

/-! ## A115273.P17678814814578022096

`A004526(A004396(n))*A010872(n)`
-/

namespace A115273.P17678814814578022096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004396 n).toNat * A010872 n

end

end A115273.P17678814814578022096

namespace A115273

/-- `A004526(A004396(n))*A010872(n)` -/
def P17678814814578022096.Spec : Prop :=
  ∀ n, P17678814814578022096.a n = A115273 n

end A115273

/-! ## A115273.P14966900996147822825

`A004526(A004523(n))*A010872(n)`
-/

namespace A115273.P14966900996147822825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004523 n).toNat * A010872 n

end

end A115273.P14966900996147822825

namespace A115273

/-- `A004526(A004523(n))*A010872(n)` -/
def P14966900996147822825.Spec : Prop :=
  ∀ n, P14966900996147822825.a n = A115273 n

end A115273

/-! ## A115273.P11042082375178997884

`A002264(n)*A010873(A047429(n+1))`
-/

namespace A115273.P11042082375178997884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 n * A010873 (A047429 (n + 1)).toNat

end

end A115273.P11042082375178997884

namespace A115273

/-- `A002264(n)*A010873(A047429(n+1))` -/
def P11042082375178997884.Spec : Prop :=
  ∀ n, P11042082375178997884.a n = A115273 n

end A115273

/-! ## A115273.P2360370133045723185

`A002264(n)*A010873(A002264(n)+n)`
-/

namespace A115273.P2360370133045723185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 n * A010873 (A002264 n + (n : ℤ)).toNat

end

end A115273.P2360370133045723185

namespace A115273

/-- `A002264(n)*A010873(A002264(n)+n)` -/
def P2360370133045723185.Spec : Prop :=
  ∀ n, P2360370133045723185.a n = A115273 n

end A115273

/-! ## A115273.P14263356137213217025

`(A004526(n)-A008615(n))*A010872(n)`
-/

namespace A115273.P14263356137213217025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004526 n - A008615 n) * A010872 n

end

end A115273.P14263356137213217025

namespace A115273

/-- `(A004526(n)-A008615(n))*A010872(n)` -/
def P14263356137213217025.Spec : Prop :=
  ∀ n, P14263356137213217025.a n = A115273 n

end A115273

/-!
# A115274: a(n) = n + A115273(n), where A115273(n) = 0 for n = 1..3.

The programs for A115274, the canonical program `A115274.P4148337915604075008` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115274 has offset 1).

The definition of A115274 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A115274.P2691419098734167667

`2*a(n-3)-a(n-6)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5, a(4)=7, a(5)=6`
-/

namespace A115274.P2691419098734167667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 5, 7, 6] fun n a =>
  2 * a (n - 3) - a (n - 6)

end

end A115274.P2691419098734167667

namespace A115274

/-- `2*a(n-3)-a(n-6)` -/
def P2691419098734167667.Spec : Prop :=
  ∀ n, P2691419098734167667.a n = A115274 (n + 1)

end A115274

/-! ## A115274.P4148337915604075008

`n+1+A115273(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A115274

/-- `n+1+A115273(n+1)` -/
def P4148337915604075008.Spec : Prop :=
  ∀ n, P4148337915604075008.a n = A115274 (n + 1)

theorem P4148337915604075008.correct : P4148337915604075008.Spec := by
  intro n
  simp only [A115274, Nat.add_sub_cancel]

end A115274

/-! ## A115274.P9880782740598737386

`(n+1)%3+a(n-3)+3` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A115274.P9880782740598737386
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  (n + 1) % 3 + (a (n - 3) + 3)

end

end A115274.P9880782740598737386

namespace A115274

/-- `(n+1)%3+a(n-3)+3` -/
def P9880782740598737386.Spec : Prop :=
  ∀ n, (P9880782740598737386.a n : ℤ) = A115274 (n + 1)

end A115274

/-! ## A115274.P8821328736507768353

`(n+1)%3*A002264(n)+n+1`
-/

namespace A115274.P8821328736507768353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) % 3 : ℕ) : ℤ) * A002264 n + (n + 1 : ℤ)

end

end A115274.P8821328736507768353

namespace A115274

/-- `(n+1)%3*A002264(n)+n+1` -/
def P8821328736507768353.Spec : Prop :=
  ∀ n, P8821328736507768353.a n = A115274 (n + 1)

end A115274

/-! ## A115274.P14300224943129453422

`A029579(A092942(n))+n`
-/

namespace A115274.P14300224943129453422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (A092942 n).toNat + (n : ℤ)

end

end A115274.P14300224943129453422

namespace A115274

/-- `A029579(A092942(n))+n` -/
def P14300224943129453422.Spec : Prop :=
  ∀ n, P14300224943129453422.a n = A115274 (n + 1)

end A115274

/-! ## A115274.P7988325549726524081

`A168056(n)+A131358(n)`
-/

namespace A115274.P7988325549726524081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168056 n + A131358 n

end

end A115274.P7988325549726524081

namespace A115274

/-- `A168056(n)+A131358(n)` -/
def P7988325549726524081.Spec : Prop :=
  ∀ n, P7988325549726524081.a n = A115274 (n + 1)

end A115274

/-! ## A115274.P2111299200595889356

`A032765(n+1)-n*A002264(n+1)`
-/

namespace A115274.P2111299200595889356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032765 (n + 1) - (n : ℤ) * A002264 (n + 1)

end

end A115274.P2111299200595889356

namespace A115274

/-- `A032765(n+1)-n*A002264(n+1)` -/
def P2111299200595889356.Spec : Prop :=
  ∀ n, P2111299200595889356.a n = A115274 (n + 1)

end A115274

/-! ## A115274.P17783949204908076058

`A029578(gcd(A004396(n), A004523(n+1)))+n+1`
-/

namespace A115274.P17783949204908076058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (Int.gcd (A004396 n) (A004523 (n + 1))) + (n + 1 : ℤ)

end

end A115274.P17783949204908076058

namespace A115274

/-- `A029578(gcd(A004396(n), A004523(n+1)))+n+1` -/
def P17783949204908076058.Spec : Prop :=
  ∀ n, P17783949204908076058.a n = A115274 (n + 1)

end A115274

/-! ## A115274.P12798799956664406529

`A002264(n*Δ[A130481(n)])+n+1`
-/

namespace A115274.P12798799956664406529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130481 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 ((n : ℤ) * (f1 (n + 1) - f1 n)).toNat + (n + 1 : ℤ)

end

end A115274.P12798799956664406529

namespace A115274

/-- `A002264(n*Δ[A130481(n)])+n+1` -/
def P12798799956664406529.Spec : Prop :=
  ∀ n, P12798799956664406529.a n = A115274 (n + 1)

end A115274

/-! ## A115274.P8089535949812112966

`xor(A087508(2*n), A092092(n+2))+n`
-/

namespace A115274.P8089535949812112966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A087508 (2 * n)) (A092092 (n + 2)) + (n : ℤ)

end

end A115274.P8089535949812112966

namespace A115274

/-- `xor(A087508(2*n), A092092(n+2))+n` -/
def P8089535949812112966.Spec : Prop :=
  ∀ n, P8089535949812112966.a n = A115274 (n + 1)

end A115274

/-! ## A115274.P1666306701120375155

`A092092(n+2)-A128615(2*n)+n`
-/

namespace A115274.P1666306701120375155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092092 (n + 2) - A128615 (2 * n) + (n : ℤ)

end

end A115274.P1666306701120375155

namespace A115274

/-- `A092092(n+2)-A128615(2*n)+n` -/
def P1666306701120375155.Spec : Prop :=
  ∀ n, P1666306701120375155.a n = A115274 (n + 1)

end A115274

/-! ## A115274.P16380529271124231100

`A008810(2*n+1)-n*A004396(2*n)`
-/

namespace A115274.P16380529271124231100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008810 (2 * n + 1) - (n : ℤ) * A004396 (2 * n)

end

end A115274.P16380529271124231100

namespace A115274

/-- `A008810(2*n+1)-n*A004396(2*n)` -/
def P16380529271124231100.Spec : Prop :=
  ∀ n, P16380529271124231100.a n = A115274 (n + 1)

end A115274

/-! ## A115274.P4672846959617212065

`A007980(n)-A174709(A047240(n+2))`
-/

namespace A115274.P4672846959617212065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007980 n - A174709 (A047240 (n + 2)).toNat

end

end A115274.P4672846959617212065

namespace A115274

/-- `A007980(n)-A174709(A047240(n+2))` -/
def P4672846959617212065.Spec : Prop :=
  ∀ n, P4672846959617212065.a n = A115274 (n + 1)

end A115274

/-! ## A115274.P3016243300676513646

`A001399(2*n)-A008615(2*n+1)*A289207(n+1)`
-/

namespace A115274.P3016243300676513646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (2 * n) - A008615 (2 * n + 1) * A289207 (n + 1)

end

end A115274.P3016243300676513646

namespace A115274

/-- `A001399(2*n)-A008615(2*n+1)*A289207(n+1)` -/
def P3016243300676513646.Spec : Prop :=
  ∀ n, P3016243300676513646.a n = A115274 (n + 1)

end A115274

/-! ## A115274.P11741232765341926842

`A257846(2*(n+1))/2+n+1`
-/

namespace A115274.P11741232765341926842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257846 (2 * (n + 1)) : ℚ) / 2 + (n + 1 : ℚ)

end

end A115274.P11741232765341926842

namespace A115274

/-- `A257846(2*(n+1))/2+n+1` -/
def P11741232765341926842.Spec : Prop :=
  ∀ n, P11741232765341926842.a n = (A115274 (n + 1) : ℚ)

end A115274

/-! ## A115274.P1594615507130912972

`A008611(n*A164360(2*n+1))`
-/

namespace A115274.P1594615507130912972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 ((n : ℤ) * A164360 (2 * n + 1)).toNat

end

end A115274.P1594615507130912972

namespace A115274

/-- `A008611(n*A164360(2*n+1))` -/
def P1594615507130912972.Spec : Prop :=
  ∀ n, P1594615507130912972.a n = A115274 (n + 1)

end A115274

/-! ## A115274.P97097827021709856

`A008620(n*Δ[A047267(2*(n+1))])`
-/

namespace A115274.P97097827021709856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047267 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 ((n : ℤ) * (f1 (n + 1) - f1 n)).toNat

end

end A115274.P97097827021709856

namespace A115274

/-- `A008620(n*Δ[A047267(2*(n+1))])` -/
def P97097827021709856.Spec : Prop :=
  ∀ n, P97097827021709856.a n = A115274 (n + 1)

end A115274

/-!
# A115275: Number of partitions of {1,...,n} into blocks such that no block size is repeated more than 3 times.

The programs for A115275, there is no canonical definition to state claims against.
-/

/-! ## A115275.P16006390339746267431

`A109950(A018179(n))`
-/

namespace A115275.P16006390339746267431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109950 (A018179 n).toNat

end

end A115275.P16006390339746267431

/-! ## A115275.P4646008436172801696

`A063677(A340911(n))`
-/

namespace A115275.P4646008436172801696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063677 (A340911 n).toNat

end

end A115275.P4646008436172801696

/-! ## A115275.P7725822659273465506

`A109950(A000072(n+1))`
-/

namespace A115275.P7725822659273465506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109950 (A000072 (n + 1)).toNat

end

end A115275.P7725822659273465506

/-!
# A115276: Number of partitions of {1,...,n} into block sizes not a multiple of 4.

The programs for A115276, there is no canonical definition to state claims against.
-/

/-! ## A115276.P7945178788986874486

`A343664(n)-A023443(A309862(n))`
-/

namespace A115276.P7945178788986874486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343664 n - A023443 (A309862 n).toNat

end

end A115276.P7945178788986874486

/-! ## A115276.P8254896378011690182

`A343747(A343805(n))+A343664(n)`
-/

namespace A115276.P8254896378011690182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343747 (A343805 n).toNat + A343664 n

end

end A115276.P8254896378011690182

/-! ## A115276.P12839725175011331558

`A343664(n)-A025466(A000110(n))`
-/

namespace A115276.P12839725175011331558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343664 n - A025466 (A000110 n).toNat

end

end A115276.P12839725175011331558

/-! ## A115276.P4508087064408803235

`A343664(n)-A025465(A001353(n))`
-/

namespace A115276.P4508087064408803235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343664 n - A025465 (A001353 n).toNat

end

end A115276.P4508087064408803235

/-! ## A115276.P3381286091767464995

`A028310(A343664(n)-A018793(n))`
-/

namespace A115276.P3381286091767464995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A343664 n - A018793 n).toNat

end

end A115276.P3381286091767464995

/-!
# A115277: Number of partitions of {1,...,n} into blocks such that no even sized block is repeated.

The programs for A115277, there is no canonical definition to state claims against.
-/

/-! ## A115277.P15410047948580597553

`A081123(n)+A034973(A307412(n))`
-/

namespace A115277.P15410047948580597553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081123 n + A034973 (A307412 n).toNat

end

end A115277.P15410047948580597553

/-! ## A115277.P11569141164034001813

`n*a(n-1)-A010459(a(n-1))` with `a(0)=1`
-/

namespace A115277.P11569141164034001813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * a (n - 1) - A010459 (a (n - 1)).toNat

end

end A115277.P11569141164034001813

/-! ## A115277.P8510175926848223830

`A244970(a(n-1))+1+n-(2*a(floor(n/2))-n%2)` with `a(0)=1, a(1)=1`
-/

namespace A115277.P8510175926848223830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A244970 (a (n - 1)).toNat + 1 + (n : ℤ) - (2 * a ⌊(n : ℚ) / 2⌋.toNat - ((n % 2 : ℕ) : ℤ))

end

end A115277.P8510175926848223830

/-!
# A115278: Number of partitions of {1,...,2*n} into even sized blocks such that no block size is repeated.

The programs for A115278, there is no canonical definition to state claims against.
-/

/-! ## A115278.P1216874183654718719

`A125230(log2(gcd(2, n))+2*n²)`
-/

namespace A115278.P1216874183654718719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125230 (SequenceMachineLib.roundAway (Real.logb 2 (Nat.gcd 2 n : ℝ) + (2 * n ^ 2 : ℝ))).toNat

end

end A115278.P1216874183654718719

/-! ## A115278.P6522442075200287187

`and((n+1)^(n-1), A068232(3*n+2))`
-/

namespace A115278.P6522442075200287187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) (A068232 (3 * n + 2))

end

end A115278.P6522442075200287187

/-!
# A115279: Ordered hypotenuses of primitive Pythagorean triangles having each of three sides with same number of decimal digits.

The programs for A115279, there is no canonical definition to state claims against.
-/

/-! ## A115279.P12431456002731655589

`A020882(lt[A260829(n+1), A349262(n+1)])`
-/

namespace A115279.P12431456002731655589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349262 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020882 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A115279.P12431456002731655589

/-! ## A115279.P14685624880916660662

`A020882(lt[A000586(2*(n+2)), A218789(n)])`
-/

namespace A115279.P14685624880916660662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000586 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020882 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A115279.P14685624880916660662

/-! ## A115279.P442114144288549632

`A020882(lt[A351016(2*(n+1)), A349262(n+1)])`
-/

namespace A115279.P442114144288549632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351016 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349262 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020882 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A115279.P442114144288549632

/-! ## A115279.P10011655041471730652

`A020882(comp[A001221(n+1)*A152837(n)+n])`
-/

namespace A115279.P10011655041471730652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) * A152837 n + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020882 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A115279.P10011655041471730652

/-!
# A115281: Correlation triangle for the sequence 2-0^n.

The programs for A115281, the canonical program `A115281.P9615937288782899719` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115281 has offset 0).

The definition of A115281 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115281.P9615937288782899719

`A042963(A157458(n)+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A115281

/-- `A042963(A157458(n)+1)` -/
def P9615937288782899719.Spec : Prop :=
  ∀ n, P9615937288782899719.a n = A115281 n

theorem P9615937288782899719.correct : P9615937288782899719.Spec := by
  intro n
  simp only [A115281]

end A115281

/-! ## A115281.P16208123971637727108

`A116966(2*A157458(n))`
-/

namespace A115281.P16208123971637727108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116966 (2 * A157458 n).toNat

end

end A115281.P16208123971637727108

namespace A115281

/-- `A116966(2*A157458(n))` -/
def P16208123971637727108.Spec : Prop :=
  ∀ n, P16208123971637727108.a n = A115281 n

end A115281

/-! ## A115281.P15734575130639990637

`A014601(A157458(n)+1)-2`
-/

namespace A115281.P15734575130639990637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 (A157458 n + 1).toNat - 2

end

end A115281.P15734575130639990637

namespace A115281

/-- `A014601(A157458(n)+1)-2` -/
def P15734575130639990637.Spec : Prop :=
  ∀ n, P15734575130639990637.a n = A115281 n

end A115281

/-! ## A115281.P514149106968606951

`A289133(2*(A115282(n)+1))`
-/

namespace A115281.P514149106968606951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289133 (2 * (A115282 n + 1)).toNat

end

end A115281.P514149106968606951

namespace A115281

/-- `A289133(2*(A115282(n)+1))` -/
def P514149106968606951.Spec : Prop :=
  ∀ n, P514149106968606951.a n = A115281 n

end A115281

/-! ## A115281.P5038152521645503515

`A157458(n)+A157454(n+1)`
-/

namespace A115281.P5038152521645503515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157458 n + A157454 (n + 1)

end

end A115281.P5038152521645503515

namespace A115281

/-- `A157458(n)+A157454(n+1)` -/
def P5038152521645503515.Spec : Prop :=
  ∀ n, P5038152521645503515.a n = A115281 n

end A115281

/-! ## A115281.P15303376312015930243

`A003982(n)+2*A157458(n)`
-/

namespace A115281.P15303376312015930243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n + 2 * A157458 n

end

end A115281.P15303376312015930243

namespace A115281

/-- `A003982(n)+2*A157458(n)` -/
def P15303376312015930243.Spec : Prop :=
  ∀ n, P15303376312015930243.a n = A115281 n

end A115281

/-! ## A115281.P5980471491811066023

`2*A157454(n+1)-A003982(n)`
-/

namespace A115281.P5980471491811066023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A157454 (n + 1) - A003982 n

end

end A115281.P5980471491811066023

namespace A115281

/-- `2*A157454(n+1)-A003982(n)` -/
def P5980471491811066023.Spec : Prop :=
  ∀ n, P5980471491811066023.a n = A115281 n

end A115281

/-! ## A115281.P11476494775106997110

`2*A157454(n+1)-char[A046092(n)]`
-/

namespace A115281.P11476494775106997110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A157454 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A115281.P11476494775106997110

namespace A115281

/-- `2*A157454(n+1)-char[A046092(n)]` -/
def P11476494775106997110.Spec : Prop :=
  ∀ n, P11476494775106997110.a n = A115281 n

end A115281

/-! ## A115281.P6419138005194805365

`A289133(A115282(n)+A115282(n)+2)`
-/

namespace A115281.P6419138005194805365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289133 (A115282 n + (A115282 n + 2)).toNat

end

end A115281.P6419138005194805365

namespace A115281

/-- `A289133(A115282(n)+A115282(n)+2)` -/
def P6419138005194805365.Spec : Prop :=
  ∀ n, P6419138005194805365.a n = A115281 n

end A115281

/-! ## A115281.P3925782708154215574

`A003983(n+1)+A157458(n)+A004197(n)`
-/

namespace A115281.P3925782708154215574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003983 (n + 1) + (A157458 n + A004197 n)

end

end A115281.P3925782708154215574

namespace A115281

/-- `A003983(n+1)+A157458(n)+A004197(n)` -/
def P3925782708154215574.Spec : Prop :=
  ∀ n, P3925782708154215574.a n = A115281 n

end A115281

/-! ## A115281.P7535913450768866427

`2*A157454(n+1)-A000007(A204016(n+1))`
-/

namespace A115281.P7535913450768866427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A157454 (n + 1) - A000007 (A204016 (n + 1)).toNat

end

end A115281.P7535913450768866427

namespace A115281

/-- `2*A157454(n+1)-A000007(A204016(n+1))` -/
def P7535913450768866427.Spec : Prop :=
  ∀ n, P7535913450768866427.a n = A115281 n

end A115281

/-! ## A115281.P13233821931459443339

`A194959(n+1)+A210535(n+1)-1`
-/

namespace A115281.P13233821931459443339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194959 (n + 1) + (A210535 (n + 1) - 1)

end

end A115281.P13233821931459443339

namespace A115281

/-- `A194959(n+1)+A210535(n+1)-1` -/
def P13233821931459443339.Spec : Prop :=
  ∀ n, P13233821931459443339.a n = A115281 n

end A115281

/-! ## A115281.P3952044457757040570

`A210535(A014132(n+1))+A210535(n+1)-2`
-/

namespace A115281.P3952044457757040570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210535 (A014132 (n + 1)).toNat + (A210535 (n + 1) - 2)

end

end A115281.P3952044457757040570

namespace A115281

/-- `A210535(A014132(n+1))+A210535(n+1)-2` -/
def P3952044457757040570.Spec : Prop :=
  ∀ n, P3952044457757040570.a n = A115281 n

end A115281

/-! ## A115281.P1713405423398987286

`A004741(2*(n+1))-and(1, A004741(2*n+1))`
-/

namespace A115281.P1713405423398987286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004741 (2 * (n + 1)) - Int.land 1 (A004741 (2 * n + 1))

end

end A115281.P1713405423398987286

namespace A115281

/-- `A004741(2*(n+1))-and(1, A004741(2*n+1))` -/
def P1713405423398987286.Spec : Prop :=
  ∀ n, P1713405423398987286.a n = A115281 n

end A115281

/-! ## A115281.P9766956406667951639

`A004741(2*(n+1))-A000035(A004741(2*n+1))`
-/

namespace A115281.P9766956406667951639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004741 (2 * (n + 1)) - A000035 (A004741 (2 * n + 1)).toNat

end

end A115281.P9766956406667951639

namespace A115281

/-- `A004741(2*(n+1))-A000035(A004741(2*n+1))` -/
def P9766956406667951639.Spec : Prop :=
  ∀ n, P9766956406667951639.a n = A115281 n

end A115281

/-! ## A115281.P6438208296235210124

`A253580(2*n+1)+1-A118175(2*n)`
-/

namespace A115281.P6438208296235210124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253580 (2 * n + 1) + (1 - A118175 (2 * n))

end

end A115281.P6438208296235210124

namespace A115281

/-- `A253580(2*n+1)+1-A118175(2*n)` -/
def P6438208296235210124.Spec : Prop :=
  ∀ n, P6438208296235210124.a n = A115281 n

end A115281

/-! ## A115281.P11721846773070099172

`A004739(2*n+1)+A004739(2*(n+1))-1`
-/

namespace A115281.P11721846773070099172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004739 (2 * n + 1) + (A004739 (2 * (n + 1)) - 1)

end

end A115281.P11721846773070099172

namespace A115281

/-- `A004739(2*n+1)+A004739(2*(n+1))-1` -/
def P11721846773070099172.Spec : Prop :=
  ∀ n, P11721846773070099172.a n = A115281 n

end A115281

/-! ## A115281.P13792886281024142362

`A079813(2*n+1)+A004741(2*(n+1))-1`
-/

namespace A115281.P13792886281024142362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079813 (2 * n + 1) + (A004741 (2 * (n + 1)) - 1)

end

end A115281.P13792886281024142362

namespace A115281

/-- `A079813(2*n+1)+A004741(2*(n+1))-1` -/
def P13792886281024142362.Spec : Prop :=
  ∀ n, P13792886281024142362.a n = A115281 n

end A115281

/-! ## A115281.P9877275861011551884

`2*A053615(2*n+1)-A010052(2*n+1)`
-/

namespace A115281.P9877275861011551884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053615 (2 * n + 1) - A010052 (2 * n + 1)

end

end A115281.P9877275861011551884

namespace A115281

/-- `2*A053615(2*n+1)-A010052(2*n+1)` -/
def P9877275861011551884.Spec : Prop :=
  ∀ n, P9877275861011551884.a n = A115281 n

end A115281

/-! ## A115281.P8613722755574817771

`A049581(A007606(Δ[n²]))`
-/

namespace A115281.P8613722755574817771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049581 (A007606 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A115281.P8613722755574817771

namespace A115281

/-- `A049581(A007606(Δ[n²]))` -/
def P8613722755574817771.Spec : Prop :=
  ∀ n, P8613722755574817771.a n = A115281 n

end A115281

/-!
# A115282: Correlation triangle for the sequence 3-2*0^n.

The programs for A115282, the canonical program `A115282.P2219859297434796690` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115282 has offset 0).

The definition of A115282 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115282.P2219859297434796690

`A055264(A115281(n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A115282

/-- `A055264(A115281(n))` -/
def P2219859297434796690.Spec : Prop :=
  ∀ n, P2219859297434796690.a n = A115282 n

theorem P2219859297434796690.correct : P2219859297434796690.Spec := by
  intro n
  simp only [A115282]

end A115282

/-! ## A115282.P13325661128484944403

`A028835(A115281(n)+1)-2`
-/

namespace A115282.P13325661128484944403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028835 (A115281 n + 1).toNat - 2

end

end A115282.P13325661128484944403

namespace A115282

/-- `A028835(A115281(n)+1)-2` -/
def P13325661128484944403.Spec : Prop :=
  ∀ n, P13325661128484944403.a n = A115282 n

end A115282

/-! ## A115282.P1344978741806506737

`A004273(A115281(n))+A004197(n)`
-/

namespace A115282.P1344978741806506737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A115281 n).toNat + A004197 n

end

end A115282.P1344978741806506737

namespace A115282

/-- `A004273(A115281(n))+A004197(n)` -/
def P1344978741806506737.Spec : Prop :=
  ∀ n, P1344978741806506737.a n = A115282 n

end A115282

/-! ## A115282.P9175253588712441354

`A157458(n)+A047294(A115281(n))`
-/

namespace A115282.P9175253588712441354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157458 n + A047294 (A115281 n).toNat

end

end A115282.P9175253588712441354

namespace A115282

/-- `A157458(n)+A047294(A115281(n))` -/
def P9175253588712441354.Spec : Prop :=
  ∀ n, P9175253588712441354.a n = A115282 n

end A115282

/-! ## A115282.P1569068252675449884

`A028835(A115281(n))-A003982(n)`
-/

namespace A115282.P1569068252675449884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028835 (A115281 n).toNat - A003982 n

end

end A115282.P1569068252675449884

namespace A115282

/-- `A028835(A115281(n))-A003982(n)` -/
def P1569068252675449884.Spec : Prop :=
  ∀ n, P1569068252675449884.a n = A115282 n

end A115282

/-! ## A115282.P3854754838887426347

`A242660(A115281(n))+A140685(n+1)`
-/

namespace A115282.P3854754838887426347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242660 (A115281 n).toNat + A140685 (n + 1)

end

end A115282.P3854754838887426347

namespace A115282

/-- `A242660(A115281(n))+A140685(n+1)` -/
def P3854754838887426347.Spec : Prop :=
  ∀ n, P3854754838887426347.a n = A115282 n

end A115282

/-!
# A115283: Diagonal sums of correlation triangle for 3-2*0^n.

The programs for A115283, the canonical program `A115283.P15241228515829670334` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115283 has offset 0).

The definition of A115283 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115283.P15241228515829670334

`∑[n+1]+3*round(n²/12)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A115283

/-- `∑[n+1]+3*round(n²/12)` -/
def P15241228515829670334.Spec : Prop :=
  ∀ n, P15241228515829670334.a n = A115283 n

theorem P15241228515829670334.correct : P15241228515829670334.Spec := by
  intro n
  simp only [A115283]

end A115283

/-! ## A115283.P12188748668735547733

`∑[∑[∑[ogf((1+2x+2x^2+4x^3)/(1+2x+2x^2+x^3))]]]`
-/

namespace A115283.P12188748668735547733
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 2, 4] [1, 2, 2, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115283.P12188748668735547733

namespace A115283

/-- `∑[∑[∑[ogf((1+2x+2x^2+4x^3)/(1+2x+2x^2+x^3))]]]` -/
def P12188748668735547733.Spec : Prop :=
  ∀ n, P12188748668735547733.a n = A115283 n

end A115283

/-! ## A115283.P1411094904055046248

`∑[A236348(n)+A030451(n)]`
-/

namespace A115283.P1411094904055046248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236348 n + A030451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115283.P1411094904055046248

namespace A115283

/-- `∑[A236348(n)+A030451(n)]` -/
def P1411094904055046248.Spec : Prop :=
  ∀ n, P1411094904055046248.a n = A115283 n

end A115283

/-! ## A115283.P6814214170404688217

`∑[A168237(A008611(n))+n+1]`
-/

namespace A115283.P6814214170404688217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168237 (A008611 n).toNat + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115283.P6814214170404688217

namespace A115283

/-- `∑[A168237(A008611(n))+n+1]` -/
def P6814214170404688217.Spec : Prop :=
  ∀ n, P6814214170404688217.a n = A115283 n

end A115283

/-! ## A115283.P5404937585957092313

`∑[A168056(n)+A028242(A008611(n))]`
-/

namespace A115283.P5404937585957092313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168056 n + A028242 (A008611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115283.P5404937585957092313

namespace A115283

/-- `∑[A168056(n)+A028242(A008611(n))]` -/
def P5404937585957092313.Spec : Prop :=
  ∀ n, P5404937585957092313.a n = A115283 n

end A115283

/-! ## A115283.P6017353706539609895

`∑[A047279(2*(n+1))-A047258(n+1)]`
-/

namespace A115283.P6017353706539609895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047279 (2 * (n + 1)) - A047258 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115283.P6017353706539609895

namespace A115283

/-- `∑[A047279(2*(n+1))-A047258(n+1)]` -/
def P6017353706539609895.Spec : Prop :=
  ∀ n, P6017353706539609895.a n = A115283 n

end A115283

/-! ## A115283.P11007099340932480707

`∑[A049347(n)+A028242(3*n+1)]`
-/

namespace A115283.P11007099340932480707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n + A028242 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115283.P11007099340932480707

namespace A115283

/-- `∑[A049347(n)+A028242(3*n+1)]` -/
def P11007099340932480707.Spec : Prop :=
  ∀ n, P11007099340932480707.a n = A115283 n

end A115283

/-!
# A115285: Diagonal sums of correlation triangle for 1,3,4,4,4,...(A113311).

The programs for A115285, the canonical program `A115285.P14604426576752564491` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115285 has offset 0).

The definition of A115285 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115285.P17496978350994634900

`ceil(atan(n+1)+(2*n)²/3)`
-/

namespace A115285.P17496978350994634900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (n + 1 : ℝ) + (((2 * n) ^ 2 : ℚ) / 3 : ℝ)⌉

end

end A115285.P17496978350994634900

namespace A115285

/-- `ceil(atan(n+1)+(2*n)²/3)` -/
def P17496978350994634900.Spec : Prop :=
  ∀ n, P17496978350994634900.a n = A115285 n

end A115285

/-! ## A115285.P14604426576752564491

`∑[∑[floor(a(n-3))]]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=2, a(5)=3`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A115285

/-- `∑[∑[floor(a(n-3))]]` -/
def P14604426576752564491.Spec : Prop :=
  ∀ n, (P14604426576752564491.a n : ℤ) = A115285 n

theorem P14604426576752564491.correct : P14604426576752564491.Spec := by
  intro n
  simp only [A115285]

end A115285

/-! ## A115285.P11913334830739051951

`ceil((Δ[n²]-n/(n+1))²/3)`
-/

namespace A115285.P11913334830739051951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) - (n : ℚ) / (n + 1 : ℚ)) ^ 2 / 3⌉

end

end A115285.P11913334830739051951

namespace A115285

/-- `ceil((Δ[n²]-n/(n+1))²/3)` -/
def P11913334830739051951.Spec : Prop :=
  ∀ n, P11913334830739051951.a n = A115285 n

end A115285

/-! ## A115285.P13660761072538503039

`∑[a(n-3)+2]+n²` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=2`
-/

namespace A115285.P13660761072538503039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 2, 2] fun n f1 =>
  f1 (n - 3) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n ^ 2

end

end A115285.P13660761072538503039

namespace A115285

/-- `∑[a(n-3)+2]+n²` -/
def P13660761072538503039.Spec : Prop :=
  ∀ n, (P13660761072538503039.a n : ℤ) = A115285 n

end A115285

/-! ## A115285.P1561637526614438171

`floor(A299259(n)/2)+1`
-/

namespace A115285.P1561637526614438171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A299259 n : ℚ) / 2⌋ + 1

end

end A115285.P1561637526614438171

namespace A115285

/-- `floor(A299259(n)/2)+1` -/
def P1561637526614438171.Spec : Prop :=
  ∀ n, P1561637526614438171.a n = A115285 n

end A115285

/-! ## A115285.P12076748393199922851

`A299255(n)-(2*n)²`
-/

namespace A115285.P12076748393199922851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299255 n - ((2 * n) ^ 2 : ℤ)

end

end A115285.P12076748393199922851

namespace A115285

/-- `A299255(n)-(2*n)²` -/
def P12076748393199922851.Spec : Prop :=
  ∀ n, P12076748393199922851.a n = A115285 n

end A115285

/-! ## A115285.P1696355698956379461

`A047537(n)+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A115285.P1696355698956379461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A047537 n + a (n - 1)

end

end A115285.P1696355698956379461

namespace A115285

/-- `A047537(n)+a(n-1)` -/
def P1696355698956379461.Spec : Prop :=
  ∀ n, P1696355698956379461.a n = A115285 n

end A115285

/-! ## A115285.P2207913520569518756

`round((xor(1, A004277(n)²)+4)/3)`
-/

namespace A115285.P2207913520569518756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.xor 1 (A004277 n ^ 2) + 4 : ℚ) / 3)

end

end A115285.P2207913520569518756

namespace A115285

/-- `round((xor(1, A004277(n)²)+4)/3)` -/
def P2207913520569518756.Spec : Prop :=
  ∀ n, P2207913520569518756.a n = A115285 n

end A115285

/-! ## A115285.P3538553421467495438

`∑[comp[floor(A016873(n+1)/2)]+n]+1`
-/

namespace A115285.P3538553421467495438
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A016873 (n + 1) : ℚ) / 2⌋

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A115285.P3538553421467495438

namespace A115285

/-- `∑[comp[floor(A016873(n+1)/2)]+n]+1` -/
def P3538553421467495438.Spec : Prop :=
  ∀ n, (P3538553421467495438.a n : ℤ) = A115285 n

end A115285

/-! ## A115285.P9820389038003311136

`A010000(n)+A000212(n)`
-/

namespace A115285.P9820389038003311136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010000 n + A000212 n

end

end A115285.P9820389038003311136

namespace A115285

/-- `A010000(n)+A000212(n)` -/
def P9820389038003311136.Spec : Prop :=
  ∀ n, P9820389038003311136.a n = A115285 n

end A115285

/-! ## A115285.P5544743220526970167

`A071619(n)+A053799(n)`
-/

namespace A115285.P5544743220526970167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071619 n + A053799 n

end

end A115285.P5544743220526970167

namespace A115285

/-- `A071619(n)+A053799(n)` -/
def P5544743220526970167.Spec : Prop :=
  ∀ n, P5544743220526970167.a n = A115285 n

end A115285

/-! ## A115285.P14240697111790238877

`A147623(n)+A100063(n)`
-/

namespace A115285.P14240697111790238877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147623 n + A100063 n

end

end A115285.P14240697111790238877

namespace A115285

/-- `A147623(n)+A100063(n)` -/
def P14240697111790238877.Spec : Prop :=
  ∀ n, P14240697111790238877.a n = A115285 n

end A115285

/-! ## A115285.P14932548161252005233

`A005893(n)-A071619(n)`
-/

namespace A115285.P14932548161252005233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 n - A071619 n

end

end A115285.P14932548161252005233

namespace A115285

/-- `A005893(n)-A071619(n)` -/
def P14932548161252005233.Spec : Prop :=
  ∀ n, P14932548161252005233.a n = A115285 n

end A115285

/-! ## A115285.P8244198950901570541

`A005918(n)-A113422(n)`
-/

namespace A115285.P8244198950901570541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005918 n - A113422 n

end

end A115285.P8244198950901570541

namespace A115285

/-- `A005918(n)-A113422(n)` -/
def P8244198950901570541.Spec : Prop :=
  ∀ n, P8244198950901570541.a n = A115285 n

end A115285

/-! ## A115285.P18389831908442909306

`A299259(n)-A147623(n)`
-/

namespace A115285.P18389831908442909306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299259 n - A147623 n

end

end A115285.P18389831908442909306

namespace A115285

/-- `A299259(n)-A147623(n)` -/
def P18389831908442909306.Spec : Prop :=
  ∀ n, P18389831908442909306.a n = A115285 n

end A115285

/-! ## A115285.P1810924878054653397

`A397972(n)+A089071(n+1)`
-/

namespace A115285.P1810924878054653397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397972 n + A089071 (n + 1)

end

end A115285.P1810924878054653397

namespace A115285

/-- `A397972(n)+A089071(n+1)` -/
def P1810924878054653397.Spec : Prop :=
  ∀ n, P1810924878054653397.a n = A115285 n

end A115285

/-! ## A115285.P17767397226129386974

`A238705(n+1)-A004273(n)`
-/

namespace A115285.P17767397226129386974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238705 (n + 1) - A004273 n

end

end A115285.P17767397226129386974

namespace A115285

/-- `A238705(n+1)-A004273(n)` -/
def P17767397226129386974.Spec : Prop :=
  ∀ n, P17767397226129386974.a n = A115285 n

end A115285

/-! ## A115285.P1181626141180646699

`A100063(n)+2*A071619(n)`
-/

namespace A115285.P1181626141180646699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100063 n + 2 * A071619 n

end

end A115285.P1181626141180646699

namespace A115285

/-- `A100063(n)+2*A071619(n)` -/
def P1181626141180646699.Spec : Prop :=
  ∀ n, P1181626141180646699.a n = A115285 n

end A115285

/-! ## A115285.P15867772586996585556

`(A053799(n)+A005893(n))/2`
-/

namespace A115285.P15867772586996585556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053799 n + A005893 n : ℚ) / 2

end

end A115285.P15867772586996585556

namespace A115285

/-- `(A053799(n)+A005893(n))/2` -/
def P15867772586996585556.Spec : Prop :=
  ∀ n, P15867772586996585556.a n = (A115285 n : ℚ)

end A115285

/-!
# A115286: a(n) = (1/6)*(n^6+3*n^4+12*n^3+8*n^2).

The programs for A115286, the canonical program `A115286.P3481391759451168798` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115286 has offset 0).

The definition of A115286 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A115286.P3481391759451168798

`1/6*(n^6+3*n^4+12*n^3+8*n²)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A115286

/-- `1/6*(n^6+3*n^4+12*n^3+8*n²)` -/
def P3481391759451168798.Spec : Prop :=
  ∀ n, P3481391759451168798.a n = (A115286 n : ℚ)

end A115286

/-! ## A115286.P14714137845782352781

`C(n², 3)+∑[2*n]²`
-/

namespace A115286.P14714137845782352781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n ^ 2) 3 + (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A115286.P14714137845782352781

namespace A115286

/-- `C(n², 3)+∑[2*n]²` -/
def P14714137845782352781.Spec : Prop :=
  ∀ n, (P14714137845782352781.a n : ℤ) = A115286 n

end A115286

/-! ## A115286.P8311926913830820790

`8*A047780(n)/2`
-/

namespace A115286.P8311926913830820790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 * A047780 n : ℚ) / 2

end

end A115286.P8311926913830820790

namespace A115286

/-- `8*A047780(n)/2` -/
def P8311926913830820790.Spec : Prop :=
  ∀ n, P8311926913830820790.a n = (A115286 n : ℚ)

end A115286

/-! ## A115286.P8145857664244838995

`A099721(n)+C(n²+2, 3)`
-/

namespace A115286.P8145857664244838995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099721 n + (Nat.choose (n ^ 2 + 2) 3 : ℤ)

end

end A115286.P8145857664244838995

namespace A115286

/-- `A099721(n)+C(n²+2, 3)` -/
def P8145857664244838995.Spec : Prop :=
  ∀ n, P8145857664244838995.a n = A115286 n

end A115286

/-! ## A115286.P10810605957438331786

`(4*A047780(n))%A100789(n)`
-/

namespace A115286.P10810605957438331786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (4 * A047780 n) (A100789 n)

end

end A115286.P10810605957438331786

namespace A115286

/-- `(4*A047780(n))%A100789(n)` -/
def P10810605957438331786.Spec : Prop :=
  ∀ n, P10810605957438331786.a n = A115286 n

end A115286

/-! ## A115286.P8953247417570373064

`A099721(n)+A000292(n²)`
-/

namespace A115286.P8953247417570373064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099721 n + A000292 (n ^ 2)

end

end A115286.P8953247417570373064

namespace A115286

/-- `A099721(n)+A000292(n²)` -/
def P8953247417570373064.Spec : Prop :=
  ∀ n, P8953247417570373064.a n = A115286 n

end A115286

/-! ## A115286.P459838635506220002

`A000292(n²)+n*A014105(n)`
-/

namespace A115286.P459838635506220002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n ^ 2) + (n : ℤ) * A014105 n

end

end A115286.P459838635506220002

namespace A115286

/-- `A000292(n²)+n*A014105(n)` -/
def P459838635506220002.Spec : Prop :=
  ∀ n, P459838635506220002.a n = A115286 n

end A115286

/-!
# A115288: a(n) is the smallest number representable in exactly n ways as a sum of 2 triangular numbers and one square (each of them >= 0).

The programs for A115288, there is no canonical definition to state claims against.
-/

/-! ## A115288.P2178425118520324817

`A103634(A192147(n+1)+1)`
-/

namespace A115288.P2178425118520324817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103634 (A192147 (n + 1) + 1).toNat

end

end A115288.P2178425118520324817

/-! ## A115288.P1682450263595302931

`A192147(n+1)+A111915(A000244(n))`
-/

namespace A115288.P1682450263595302931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192147 (n + 1) + A111915 (A000244 n).toNat

end

end A115288.P1682450263595302931

/-! ## A115288.P12962448937957498345

`A192147(n+1)+A057428(A062161(n))`
-/

namespace A115288.P12962448937957498345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192147 (n + 1) + A057428 (A062161 n).toNat

end

end A115288.P12962448937957498345

/-! ## A115288.P6559054589007453187

`A192147(A082217(n+1))+A057428(n)`
-/

namespace A115288.P6559054589007453187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192147 (A082217 (n + 1)).toNat + A057428 n

end

end A115288.P6559054589007453187

/-! ## A115288.P15382097065525133722

`A231122(A000143(n))+A192147(n+1)`
-/

namespace A115288.P15382097065525133722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231122 (A000143 n).toNat + A192147 (n + 1)

end

end A115288.P15382097065525133722

/-!
# A115291: Expansion of (1+x)^3/(1-x).

The programs for A115291, the canonical program `A115291.P18082519059857473150` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115291 has offset 0).

The definition of A115291 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+3x+3x^2+x^3)/(1-x))` (program `A115291.P18082519059857473150`, by `A115291.P18082519059857473150.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A115291.P18082519059857473150

`ogf((1+3x+3x^2+x^3)/(1-x))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A115291

/-- `ogf((1+3x+3x^2+x^3)/(1-x))` -/
def P18082519059857473150.Spec : Prop :=
  ∀ n, P18082519059857473150.a n = A115291 n

theorem P18082519059857473150.correct : P18082519059857473150.Spec := by
  intro n
  simp only [A115291]

end A115291

/-!
# A115292: Correlation triangle for (1+x)^3/(1-x).

The programs for A115292, there is no canonical definition to state claims against.
-/

/-! ## A115292.P14448520282942063355

`and(A202676(n+1), A325163(A052905(n)))`
-/

namespace A115292.P14448520282942063355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A202676 (n + 1)) (A325163 (A052905 n).toNat)

end

end A115292.P14448520282942063355

/-!
# A115293: Row sums of correlation triangle for (1+x)^3/(1-x).

The programs for A115293, the canonical program `A115293.P2053411108007732494` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115293 has offset 0).

The definition of A115293 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115293.P2053411108007732494

`∑[a(n-1)+12]+n*(10*n-8)` with `a(0)=1, a(1)=5, a(2)=1, a(3)=7, a(4)=18`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A115293

/-- `∑[a(n-1)+12]+n*(10*n-8)` -/
def P2053411108007732494.Spec : Prop :=
  ∀ n, P2053411108007732494.a n = A115293 n

theorem P2053411108007732494.correct : P2053411108007732494.Spec := by
  intro n
  simp only [A115293]

end A115293

/-! ## A115293.P3879704831378683292

`∑[A171440(n)+a(n-1)]` with `a(0)=1`
-/

namespace A115293.P3879704831378683292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A171440 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115293.P3879704831378683292

namespace A115293

/-- `∑[A171440(n)+a(n-1)]` -/
def P3879704831378683292.Spec : Prop :=
  ∀ n, P3879704831378683292.a n = A115293 n

end A115293

/-! ## A115293.P1814632302954488329

`Δ[A287324(n)]`
-/

namespace A115293.P1814632302954488329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287324 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A115293.P1814632302954488329

namespace A115293

/-- `Δ[A287324(n)]` -/
def P1814632302954488329.Spec : Prop :=
  ∀ n, P1814632302954488329.a n = A115293 n

end A115293

/-! ## A115293.P14112580808891274978

`A287324(n+1)-A287324(n)`
-/

namespace A115293.P14112580808891274978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287324 (n + 1) - A287324 n

end

end A115293.P14112580808891274978

namespace A115293

/-- `A287324(n+1)-A287324(n)` -/
def P14112580808891274978.Spec : Prop :=
  ∀ n, P14112580808891274978.a n = A115293 n

end A115293

/-! ## A115293.P4691776607429384441

`record[A287324(A286378(n))]-A287324(n)`
-/

namespace A115293.P4691776607429384441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287324 (A286378 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A287324 n

end

end A115293.P4691776607429384441

namespace A115293

/-- `record[A287324(A286378(n))]-A287324(n)` -/
def P4691776607429384441.Spec : Prop :=
  ∀ n, P4691776607429384441.a n = A115293 n

end A115293

/-! ## A115293.P4425375846139046992

`abs(Δ[A186827(A167614(n+1))])`
-/

namespace A115293.P4425375846139046992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186827 (A167614 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A115293.P4425375846139046992

namespace A115293

/-- `abs(Δ[A186827(A167614(n+1))])` -/
def P4425375846139046992.Spec : Prop :=
  ∀ n, P4425375846139046992.a n = A115293 n

end A115293

/-! ## A115293.P12738901945185537206

`abs(Δ[A186827(A046691(n)+7)])`
-/

namespace A115293.P12738901945185537206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186827 (A046691 n + 7).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A115293.P12738901945185537206

namespace A115293

/-- `abs(Δ[A186827(A046691(n)+7)])` -/
def P12738901945185537206.Spec : Prop :=
  ∀ n, P12738901945185537206.a n = A115293 n

end A115293

/-! ## A115293.P10536168857439621330

`∑[A104732(A167499(n+4)+1)]`
-/

namespace A115293.P10536168857439621330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104732 (A167499 (n + 4) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115293.P10536168857439621330

namespace A115293

/-- `∑[A104732(A167499(n+4)+1)]` -/
def P10536168857439621330.Spec : Prop :=
  ∀ n, P10536168857439621330.a n = A115293 n

end A115293

/-!
# A115294: Diagonal sums of correlation triangle for (1+x)^3/(1-x).

The programs for A115294, there is no canonical definition to state claims against.
-/

/-! ## A115294.P17523382323905930118

`∑[A118168(∑[A134331(n+1)])]`
-/

namespace A115294.P17523382323905930118
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134331 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118168 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115294.P17523382323905930118

/-! ## A115294.P17264758078870605274

`∑[∑[record[A376339(n)]]]`
-/

namespace A115294.P17264758078870605274
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376339 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115294.P17264758078870605274

/-! ## A115294.P5101410445755273972

`∑[∑[∑[A210501(n!+2*n)]]]`
-/

namespace A115294.P5101410445755273972
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210501 (Nat.factorial n + 2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115294.P5101410445755273972

/-!
# A115295: Partial sums of squares of A115291(n).

The programs for A115295, the canonical program `A115295.P18011836275186052458` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115295 has offset 0).

The definition of A115295 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A115295.P18011836275186052458

`2*a(n-1)-a(n-2)` with `a(0)=1, a(1)=17, a(2)=66, a(3)=130`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A115295

/-- `2*a(n-1)-a(n-2)` -/
def P18011836275186052458.Spec : Prop :=
  ∀ n, P18011836275186052458.a n = A115295 n

theorem P18011836275186052458.correct : P18011836275186052458.Spec := by
  intro n
  simp only [A115295]

end A115295

/-!
# A115296: Skew version of correlation triangle for constant sequence 1.

The programs for A115296, there is no canonical definition to state claims against.
-/

/-! ## A115296.P17729816146819286204

`A058061(A000217(A309858(n)))`
-/

namespace A115296.P17729816146819286204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058061 (A000217 (A309858 n).toNat).toNat

end

end A115296.P17729816146819286204

/-! ## A115296.P17530909100434863863

`A001221(A089781(A309858(n))*A309858(n))`
-/

namespace A115296.P17530909100434863863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A089781 (A309858 n).toNat * A309858 n).toNat

end

end A115296.P17530909100434863863

/-! ## A115296.P16008196354472813075

`A084558(A026729(n)%A330771(n+1))`
-/

namespace A115296.P16008196354472813075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (Int.tmod (A026729 n) (A330771 (n + 1))).toNat

end

end A115296.P16008196354472813075

/-! ## A115296.P13622318757870572362

`A326702(A182878(n))`
-/

namespace A115296.P13622318757870572362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326702 (A182878 n).toNat

end

end A115296.P13622318757870572362

/-! ## A115296.P10867131174013414821

`A326702(A026729(n)²)`
-/

namespace A115296.P10867131174013414821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326702 (A026729 n ^ 2).toNat

end

end A115296.P10867131174013414821

/-!
# A115297: Treillis triangle: a triangle read by rows showing the coefficients of sum formulas of Treillis numbers (A115298). The k-th row (k>=1) contains a(n,k) for n=1 to (k+1)/2 (odd rows) and for n=1 to k/2 (even rows), where a(n,k) satisfies Sum_{n=1..[(k+1)/2_odd, k/2_even]} a(n,k). The last term of each row (and its only odd number) equals Prime(k+1)-2.

The programs for A115297, there is no canonical definition to state claims against.
-/

/-! ## A115297.P10709368427669650865

`A204890(A091995(n+1))`
-/

namespace A115297.P10709368427669650865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204890 (A091995 (n + 1)).toNat

end

end A115297.P10709368427669650865

/-! ## A115297.P12637250504604334211

`A204890(A090894(n)+1)`
-/

namespace A115297.P12637250504604334211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204890 (A090894 n + 1).toNat

end

end A115297.P12637250504604334211

/-!
# A115298: Row sums of A115297.

The programs for A115298, the canonical program `A115298.P2752483122679105280` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115298 has offset 1).

The definition of A115298 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115298.P2752483122679105280

`∑[A000040(n+2)-A109763(n+2)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A115298

/-- `∑[A000040(n+2)-A109763(n+2)]` -/
def P2752483122679105280.Spec : Prop :=
  ∀ n, P2752483122679105280.a n = A115298 (n + 1)

theorem P2752483122679105280.correct : P2752483122679105280.Spec := by
  intro n
  simp only [A115298, Nat.add_sub_cancel]

end A115298

/-! ## A115298.P5129899512059990832

`∑[A000040(n+2)-A000040(A008619(n+1))]`
-/

namespace A115298.P5129899512059990832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) - A000040 (A008619 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115298.P5129899512059990832

namespace A115298

/-- `∑[A000040(n+2)-A000040(A008619(n+1))]` -/
def P5129899512059990832.Spec : Prop :=
  ∀ n, P5129899512059990832.a n = A115298 (n + 1)

end A115298

/-! ## A115298.P8439253358506816228

`∑[A000040(n+2)-A000040(A110654(n)+1)]`
-/

namespace A115298.P8439253358506816228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) - A000040 (A110654 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115298.P8439253358506816228

namespace A115298

/-- `∑[A000040(n+2)-A000040(A110654(n)+1)]` -/
def P8439253358506816228.Spec : Prop :=
  ∀ n, P8439253358506816228.a n = A115298 (n + 1)

end A115298

/-! ## A115298.P8941159690550121620

`∑[A006093(n+2)-A006093(A110654(n)+1)]`
-/

namespace A115298.P8941159690550121620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 2) - A006093 (A110654 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115298.P8941159690550121620

namespace A115298

/-- `∑[A006093(n+2)-A006093(A110654(n)+1)]` -/
def P8941159690550121620.Spec : Prop :=
  ∀ n, P8941159690550121620.a n = A115298 (n + 1)

end A115298

/-! ## A115298.P9785870093016687777

`∑[A000040(n+2)-A000040(A004526(n+3))]`
-/

namespace A115298.P9785870093016687777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) - A000040 (A004526 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115298.P9785870093016687777

namespace A115298

/-- `∑[A000040(n+2)-A000040(A004526(n+3))]` -/
def P9785870093016687777.Spec : Prop :=
  ∀ n, P9785870093016687777.a n = A115298 (n + 1)

end A115298

/-! ## A115298.P8980661974354490618

`∑[A006093(n+2)-A006093(A004526(n+3))]`
-/

namespace A115298.P8980661974354490618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 2) - A006093 (A004526 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115298.P8980661974354490618

namespace A115298

/-- `∑[A006093(n+2)-A006093(A004526(n+3))]` -/
def P8980661974354490618.Spec : Prop :=
  ∀ n, P8980661974354490618.a n = A115298 (n + 1)

end A115298

/-! ## A115298.P7878136272340285813

`∑[A008864(n+2)-A008864(A004526(n+3))]`
-/

namespace A115298.P7878136272340285813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 2) - A008864 (A004526 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115298.P7878136272340285813

namespace A115298

/-- `∑[A008864(n+2)-A008864(A004526(n+3))]` -/
def P7878136272340285813.Spec : Prop :=
  ∀ n, P7878136272340285813.a n = A115298 (n + 1)

end A115298

/-!
# A115299: Greatest digit of n + least digit of n. Different from A088133.

The programs for A115299, the canonical program `A115299.P3852664111616169034` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115299 has offset 1).

The definition of A115299 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115299.P3852664111616169034

`∑{digits}[A073730(n+1), #]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A115299

/-- `∑{digits}[A073730(n+1), #]` -/
def P3852664111616169034.Spec : Prop :=
  ∀ n, (P3852664111616169034.a n : ℤ) = A115299 (n + 1)

theorem P3852664111616169034.correct : P3852664111616169034.Spec := by
  intro n
  simp only [A115299, Nat.add_sub_cancel]

end A115299

/-! ## A115299.P13912992563492646816

`A007953(A073730(n+1))`
-/

namespace A115299.P13912992563492646816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A073730 (n + 1)).toNat

end

end A115299.P13912992563492646816

namespace A115299

/-- `A007953(A073730(n+1))` -/
def P13912992563492646816.Spec : Prop :=
  ∀ n, P13912992563492646816.a n = A115299 (n + 1)

end A115299

/-! ## A115299.P18080048527900345603

`A054055(n+1)+A054054(n+1)`
-/

namespace A115299.P18080048527900345603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (n + 1) + A054054 (n + 1)

end

end A115299.P18080048527900345603

namespace A115299

/-- `A054055(n+1)+A054054(n+1)` -/
def P18080048527900345603.Spec : Prop :=
  ∀ n, P18080048527900345603.a n = A115299 (n + 1)

end A115299

/-! ## A115299.P5555126837620674061

`A054054(n+1)+A054054(n+1)+A037904(n+1)`
-/

namespace A115299.P5555126837620674061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 (n + 1) + (A054054 (n + 1) + A037904 (n + 1))

end

end A115299.P5555126837620674061

namespace A115299

/-- `A054054(n+1)+A054054(n+1)+A037904(n+1)` -/
def P5555126837620674061.Spec : Prop :=
  ∀ n, P5555126837620674061.a n = A115299 (n + 1)

end A115299

/-! ## A115299.P1004251920144372968

`A054054(n+1)+A010879(A355222(n+1))`
-/

namespace A115299.P1004251920144372968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 (n + 1) + A010879 (A355222 (n + 1)).toNat

end

end A115299.P1004251920144372968

namespace A115299

/-- `A054054(n+1)+A010879(A355222(n+1))` -/
def P1004251920144372968.Spec : Prop :=
  ∀ n, P1004251920144372968.a n = A115299 (n + 1)

end A115299

/-! ## A115299.P16462622933095693596

`A061762(A051022(n+1))`
-/

namespace A115299.P16462622933095693596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 (A051022 (n + 1)).toNat

end

end A115299.P16462622933095693596

namespace A115299

/-- `A061762(A051022(n+1))` -/
def P16462622933095693596.Spec : Prop :=
  ∀ n, P16462622933095693596.a n = A115299 (n + 1)

end A115299

/-! ## A115299.P12899460158870831617

`A209685(A020338(n+1))`
-/

namespace A115299.P12899460158870831617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209685 (A020338 (n + 1)).toNat

end

end A115299.P12899460158870831617

namespace A115299

/-- `A209685(A020338(n+1))` -/
def P12899460158870831617.Spec : Prop :=
  ∀ n, P12899460158870831617.a n = A115299 (n + 1)

end A115299

/-! ## A115299.P2345912165445265708

`A209685(A056524(n+1))`
-/

namespace A115299.P2345912165445265708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209685 (A056524 (n + 1)).toNat

end

end A115299.P2345912165445265708

namespace A115299

/-- `A209685(A056524(n+1))` -/
def P2345912165445265708.Spec : Prop :=
  ∀ n, P2345912165445265708.a n = A115299 (n + 1)

end A115299

/-! ## A115299.P5197250564211746021

`A088133(A054054(A134941(n+1))+n)`
-/

namespace A115299.P5197250564211746021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088133 (A054054 (A134941 (n + 1)).toNat + (n : ℤ)).toNat

end

end A115299.P5197250564211746021

namespace A115299

/-- `A088133(A054054(A134941(n+1))+n)` -/
def P5197250564211746021.Spec : Prop :=
  ∀ n, P5197250564211746021.a n = A115299 (n + 1)

end A115299

