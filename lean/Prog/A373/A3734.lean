import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
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
# A373400: Numbers k such that the k-th maximal run of composite numbers has length different from all prior maximal runs. Sorted positions of first appearances in A176246 (or A046933 shifted).

The programs for A373400, there is no canonical definition to state claims against.
-/

/-! ## A373400.P15717388389350578071

`A073051(A014321(n+1))`
-/

namespace A373400.P15717388389350578071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073051 (A014321 (n + 1)).toNat

end

end A373400.P15717388389350578071

/-! ## A373400.P6614592130274474254

`eq[A056926(n), A274121(n+1)]`
-/

namespace A373400.P6614592130274474254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274121 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A373400.P6614592130274474254

/-! ## A373400.P8560868795599533325

`∑[A131702(n+1)+1]`
-/

namespace A373400.P8560868795599533325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131702 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373400.P8560868795599533325

/-! ## A373400.P13794216064095105270

`A000720(A335366(n+2)-1)`
-/

namespace A373400.P13794216064095105270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A335366 (n + 2) - 1).toNat

end

end A373400.P13794216064095105270

/-! ## A373400.P8438541601943866412

`A333214(A376521(n+2)-1)`
-/

namespace A373400.P8438541601943866412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333214 (A376521 (n + 2) - 1).toNat

end

end A373400.P8438541601943866412

/-!
# A373402: Numbers k such that the k-th maximal antirun of prime numbers > 3 has length different from all prior maximal antiruns. Sorted list of positions of first appearances in A027833.

The programs for A373402, there is no canonical definition to state claims against.
-/

/-! ## A373402.P7356127936154336695

`record[A373401(A027833(n+1))]`
-/

namespace A373402.P7356127936154336695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373401 (A027833 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A373402.P7356127936154336695

/-!
# A373404: Sum of the n-th maximal antirun of composite numbers differing by more than one.

The programs for A373404, there is no canonical definition to state claims against.
-/

/-! ## A373404.P14596251374124951270

`(A005381(n+1)-A373403(n+1))*A373403(n+1)`
-/

namespace A373404.P14596251374124951270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005381 (n + 1) - A373403 (n + 1)) * A373403 (n + 1)

end

end A373404.P14596251374124951270

/-!
# A373405: Sum of the n-th maximal antirun of odd primes differing by more than two.

The programs for A373405, there is no canonical definition to state claims against.
-/

/-! ## A373405.P15328104760004499897

`Δ[A034387(A124588(n+1))]`
-/

namespace A373405.P15328104760004499897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (A124588 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A373405.P15328104760004499897

/-!
# A373406: Sum of the n-th maximal run of odd primes differing by two.

The programs for A373406, there is no canonical definition to state claims against.
-/

/-! ## A373406.P5776549319386926053

`Δ[A034387(A067774(n+1))]`
-/

namespace A373406.P5776549319386926053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (A067774 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A373406.P5776549319386926053

/-! ## A373406.P16577841641406595213

`A104280(n+1)²-A104279(n+1)²`
-/

namespace A373406.P16577841641406595213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104280 (n + 1) ^ 2 - A104279 (n + 1) ^ 2

end

end A373406.P16577841641406595213

/-!
# A373408: Minimum of the n-th maximal antirun of squarefree numbers differing by more than one.

The programs for A373408, there is no canonical definition to state claims against.
-/

/-! ## A373408.P2200358774848535867

`record[(n+1)/∏{e}[n²+n, #]]`
-/

namespace A373408.P2200358774848535867
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A373408.P2200358774848535867

/-! ## A373408.P10118535782341051535

`lt[(1-n)², ∏{p}[n²-n, #]]`
-/

namespace A373408.P10118535782341051535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A373408.P10118535782341051535

/-! ## A373408.P10759167484237818771

`eq[n, A285734(2*n+1)]+1`
-/

namespace A373408.P10759167484237818771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285734 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A373408.P10759167484237818771

/-! ## A373408.P2088415302847235815

`record[A007947(A105587(n))]`
-/

namespace A373408.P2088415302847235815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A105587 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A373408.P2088415302847235815

/-! ## A373408.P6165771117861601500

`A007674(n)+a(A000038(n))` with `a(0)=1`
-/

namespace A373408.P6165771117861601500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007674 n + a (A000038 n).toNat

end

end A373408.P6165771117861601500

/-! ## A373408.P16366248558444835984

`record[A003967(n+1)-A105570(n)]`
-/

namespace A373408.P16366248558444835984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003967 (n + 1) - A105570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A373408.P16366248558444835984

/-! ## A373408.P18165017305102231708

`record[A007913(n+1)-A105570(n)]`
-/

namespace A373408.P18165017305102231708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1) - A105570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A373408.P18165017305102231708

/-! ## A373408.P18321705939597856822

`record[A007947(n+1)-A105570(n)]`
-/

namespace A373408.P18321705939597856822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) - A105570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A373408.P18321705939597856822

/-! ## A373408.P9966633758992032634

`record[A325978(n+1)-A105570(n)]`
-/

namespace A373408.P9966633758992032634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325978 (n + 1) - A105570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A373408.P9966633758992032634

/-! ## A373408.P14858611592475237130

`eq[A081221(n+1), A105570(n)]+1`
-/

namespace A373408.P14858611592475237130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A373408.P14858611592475237130

/-!
# A373409: Length of the n-th maximal antirun of nonsquarefree numbers differing by more than one.

The programs for A373409, there is no canonical definition to state claims against.
-/

/-! ## A373409.P3738544673303821688

`Δ[comp[A243348(n+4)]]`
-/

namespace A373409.P3738544673303821688
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243348 (n + 4)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A373409.P3738544673303821688

/-! ## A373409.P5097113046538810958

`Δ[comp[A005117(n+4)-A109043(2*(n+2))+n]]`
-/

namespace A373409.P5097113046538810958
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 4) - A109043 (2 * (n + 2)) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A373409.P5097113046538810958

/-!
# A373410: Minimum of the n-th maximal antirun of nonsquarefree numbers differing by more than one.

The programs for A373410, there is no canonical definition to state claims against.
-/

/-! ## A373410.P3082032767635908087

`lt[25, ((3*a(n-1))²+7)*A087049(n)]` with `a(0)=1, a(1)=3, a(2)=6, a(3)=12`
-/

namespace A373410.P3082032767635908087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 6, 12] fun n f2 =>
  ((3 * f2 (n - 1)) ^ 2 + 7) * A087049 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A373410.P3082032767635908087

/-! ## A373410.P3793594919205798767

`lt[A008574(n+2), A286877(A285718(n+1))]`
-/

namespace A373410.P3793594919205798767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286877 (A285718 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A373410.P3793594919205798767

/-! ## A373410.P9988731759853496528

`lt[A060875(n+3), A165155(A285718(n+1))]`
-/

namespace A373410.P9988731759853496528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060875 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165155 (A285718 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A373410.P9988731759853496528

/-! ## A373410.P13450265491205728026

`lt[A003056(2*n+3), A108459(A285718(n+1))]`
-/

namespace A373410.P13450265491205728026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108459 (A285718 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A373410.P13450265491205728026

/-! ## A373410.P11518170627137728551

`lt[A001615(3*n+4), A286877(A285718(n+1))]`
-/

namespace A373410.P11518170627137728551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286877 (A285718 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A373410.P11518170627137728551

/-!
# A373415: Maximum of the n-th maximal run of squarefree numbers.

The programs for A373415, the canonical program `A373415.P15935449717397456572` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373415 has offset 1).

The definition of A373415 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070321, A072284, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A373415.P15935449717397456572

`A070321(A072284(n+2)-1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A373415

/-- `A070321(A072284(n+2)-1)` -/
def P15935449717397456572.Spec : Prop :=
  ∀ n, P15935449717397456572.a n = A373415 (n + 1)

theorem P15935449717397456572.correct : P15935449717397456572.Spec := by
  intro n
  simp only [A373415, Nat.add_sub_cancel]

end A373415

/-! ## A373415.P14262852481177934895

`A053806(n+1)-1`
-/

namespace A373415.P14262852481177934895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053806 (n + 1) - 1

end

end A373415.P14262852481177934895

namespace A373415

/-- `A053806(n+1)-1` -/
def P14262852481177934895.Spec : Prop :=
  ∀ n, P14262852481177934895.a n = A373415 (n + 1)

end A373415

/-! ## A373415.P6997695966279873941

`eq[1, A365196(n)]+1`
-/

namespace A373415.P6997695966279873941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365196 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A373415.P6997695966279873941

namespace A373415

/-- `eq[1, A365196(n)]+1` -/
def P6997695966279873941.Spec : Prop :=
  ∀ n, (P6997695966279873941.a n : ℤ) = A373415 (n + 1)

end A373415

/-! ## A373415.P8224485917716458798

`eq[1, A378619(n+1)]`
-/

namespace A373415.P8224485917716458798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378619 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A373415.P8224485917716458798

namespace A373415

/-- `eq[1, A378619(n+1)]` -/
def P8224485917716458798.Spec : Prop :=
  ∀ n, (P8224485917716458798.a n : ℤ) = A373415 (n + 1)

end A373415

/-! ## A373415.P9981285430751375134

`eq[2, A285718(n+2)]`
-/

namespace A373415.P9981285430751375134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285718 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A373415.P9981285430751375134

namespace A373415

/-- `eq[2, A285718(n+2)]` -/
def P9981285430751375134.Spec : Prop :=
  ∀ n, (P9981285430751375134.a n : ℤ) = A373415 (n + 1)

end A373415

/-! ## A373415.P3907736647448298741

`eq[n, A285719(n+2)]`
-/

namespace A373415.P3907736647448298741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285719 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A373415.P3907736647448298741

namespace A373415

/-- `eq[n, A285719(n+2)]` -/
def P3907736647448298741.Spec : Prop :=
  ∀ n, (P3907736647448298741.a n : ℤ) = A373415 (n + 1)

end A373415

/-! ## A373415.P9203325631696387712

`comp[A107078(n+1)+n]`
-/

namespace A373415.P9203325631696387712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107078 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A373415.P9203325631696387712

namespace A373415

/-- `comp[A107078(n+1)+n]` -/
def P9203325631696387712.Spec : Prop :=
  ∀ n, (P9203325631696387712.a n : ℤ) = A373415 (n + 1)

end A373415

/-! ## A373415.P91597668935620492

`A162902(2*(n+1))-1`
-/

namespace A373415.P91597668935620492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162902 (2 * (n + 1)) - 1

end

end A373415.P91597668935620492

namespace A373415

/-- `A162902(2*(n+1))-1` -/
def P91597668935620492.Spec : Prop :=
  ∀ n, P91597668935620492.a n = A373415 (n + 1)

end A373415

/-! ## A373415.P12337457850878314103

`eq[1, n/A070321(n+1)]`
-/

namespace A373415.P12337457850878314103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A070321 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A373415.P12337457850878314103

namespace A373415

/-- `eq[1, n/A070321(n+1)]` -/
def P12337457850878314103.Spec : Prop :=
  ∀ n, (P12337457850878314103.a n : ℤ) = A373415 (n + 1)

end A373415

/-! ## A373415.P2127539387360673150

`A023443(A053806(n+1))`
-/

namespace A373415.P2127539387360673150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A053806 (n + 1)).toNat

end

end A373415.P2127539387360673150

namespace A373415

/-- `A023443(A053806(n+1))` -/
def P2127539387360673150.Spec : Prop :=
  ∀ n, P2127539387360673150.a n = A373415 (n + 1)

end A373415

/-!
# A373416: Fixed points of A323712: sizes k of card decks that return to original order after k pile shuffles (but not earlier).

The programs for A373416, there is no canonical definition to state claims against.
-/

/-! ## A373416.P13422321415544402645

`record[A323712(A323712(n+1))]`
-/

namespace A373416.P13422321415544402645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323712 (A323712 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A373416.P13422321415544402645

/-! ## A373416.P13376438496043000111

`∪[A000244(n), A163776(n+1)]`
-/

namespace A373416.P13376438496043000111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163776 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A373416.P13376438496043000111

/-! ## A373416.P11649543153328624527

`∪[A163776(n+1), A354269(n+1)]`
-/

namespace A373416.P11649543153328624527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163776 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354269 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A373416.P11649543153328624527

/-! ## A373416.P16985021699066755432

`record[A003558(3*n+1)]%A164048(n+2)`
-/

namespace A373416.P16985021699066755432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A164048 (n + 2))

end

end A373416.P16985021699066755432

/-! ## A373416.P11044347807569626705

`record[A003558(3*n+1)%A335433(2*n+3)]`
-/

namespace A373416.P11044347807569626705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003558 (3 * n + 1)) (A335433 (2 * n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A373416.P11044347807569626705

/-!
# A373417: Triangle T(n,k) for the number of permutations in symmetric group S_n with (n-k) fixed points and an even number of non-fixed point cycles. Equivalent to the number of cycles of n items with cycle type defined by non-unity partitions of k<=n that contain an even number of parts.

The programs for A373417, the canonical program `A373417.P9673982607469384349` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373417 has offset 0).

The definition of A373417 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2624 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373417.P9673982607469384349

`A007318(n)*A216778(A002262(n))`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A373417

/-- `A007318(n)*A216778(A002262(n))` -/
def P9673982607469384349.Spec : Prop :=
  ∀ n, P9673982607469384349.a n = A373417 n

theorem P9673982607469384349.correct : P9673982607469384349.Spec := by
  intro n
  simp only [A373417]

end A373417

/-! ## A373417.P14823066974522180200

`A098825(n)-A373418(n)`
-/

namespace A373417.P14823066974522180200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098825 n - A373418 n

end

end A373417.P14823066974522180200

namespace A373417

/-- `A098825(n)-A373418(n)` -/
def P14823066974522180200.Spec : Prop :=
  ∀ n, P14823066974522180200.a n = A373417 n

end A373417

/-! ## A373417.P1164684368699154557

`A144209(n)%A005101(A325352(3*n+5))`
-/

namespace A373417.P1164684368699154557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144209 n) (A005101 (A325352 (3 * n + 5)).toNat)

end

end A373417.P1164684368699154557

namespace A373417

/-- `A144209(n)%A005101(A325352(3*n+5))` -/
def P1164684368699154557.Spec : Prop :=
  ∀ n, P1164684368699154557.a n = A373417 n

end A373417

/-!
# A373418: Triangle read by rows: T(n,k) is the number of permutations in symmetric group S_n with (n-k) fixed points and an odd number of non-fixed point cycles. Equivalent to the number of cycles of n items with cycle type defined by non-unity partitions of k <= n that contain an odd number of parts.

The programs for A373418, there is no canonical definition to state claims against.
-/

/-! ## A373418.P6171815902702309054

`A098825(n)-A373417(n)`
-/

namespace A373418.P6171815902702309054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098825 n - A373417 n

end

end A373418.P6171815902702309054

/-! ## A373418.P5795650166677875337

`A000166(A002262(n))*A007318(n)-A373417(n)`
-/

namespace A373418.P5795650166677875337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 (A002262 n).toNat * A007318 n - A373417 n

end

end A373418.P5795650166677875337

/-! ## A373418.P14694150847332434967

`A056239(A140207(n)^A297359(n+1))`
-/

namespace A373418.P14694150847332434967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (SequenceMachineLib.roundAway ((A140207 n : ℚ) ^ (A297359 (n + 1) : ℤ))).toNat

end

end A373418.P14694150847332434967

/-! ## A373418.P16177276218888840602

`A350768(A063489(n+2))%A144324(n+1)`
-/

namespace A373418.P16177276218888840602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A350768 (A063489 (n + 2)).toNat) (A144324 (n + 1))

end

end A373418.P16177276218888840602

/-!
# A373420: Number of Carlitz compositions of n (see A003242) such that the first and last parts are equal.

The programs for A373420, there is no canonical definition to state claims against.
-/

/-! ## A373420.P17247776663961400265

`A003242(n)+1-A212322(n)`
-/

namespace A373420.P17247776663961400265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003242 n + 1 - A212322 n

end

end A373420.P17247776663961400265

/-!
# A373421: Positive integers that cannot be written as a sum of a practical number and a pentagonal number.

The programs for A373421, there is no canonical definition to state claims against.
-/

/-! ## A373421.P16899812932914815792

`A099351(A082671(n+1))+2`
-/

namespace A373421.P16899812932914815792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099351 (A082671 (n + 1)).toNat + 2

end

end A373421.P16899812932914815792

/-!
# A373422: Triangle read by rows: T(n,k) = number of permutations of [n] starting from k that have zero (n-1)-th differences. (n>=1, 1<=k<=n).

The programs for A373422, there is no canonical definition to state claims against.
-/

/-! ## A373422.P12985264862692517817

`and(A018219(n), A033272(A183642(n+1)))`
-/

namespace A373422.P12985264862692517817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A018219 n) (A033272 (A183642 (n + 1)).toNat)

end

end A373422.P12985264862692517817

/-! ## A373422.P7249990395021810462

`A333750(A362077(2*(n+2))+A273169(3*(n+1)))`
-/

namespace A373422.P7249990395021810462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333750 (A362077 (2 * (n + 2)) + A273169 (3 * (n + 1))).toNat

end

end A373422.P7249990395021810462

/-!
# A373423: Array read by ascending antidiagonals: T(n, k) = [x^k] cf(n) where cf(0) = 1, cf(1) = -1/(x - 1), and for n > 1 is cf(n) = ~( ~x - 1/(~x - 1/(~x - 1/(~x - 1/(~x - ... 1/(~x + 1))))...) ) where '~' is '-' if n is even, and '+' if n is odd, and x appears n times in the expression.

The programs for A373423, there is no canonical definition to state claims against.
-/

/-! ## A373423.P16036527964927958298

`A322832(A025581(n)^round(ϕ*a(n-1)))%6` with `a(0)=1`
-/

namespace A373423.P16036527964927958298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A322832 (SequenceMachineLib.roundAway ((A025581 n : ℚ) ^ (SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) : ℝ)) : ℤ))).toNat) 6

end

end A373423.P16036527964927958298

/-! ## A373423.P13283074345513416712

`A246106(n)%A275925(A077431(n+1))`
-/

namespace A373423.P13283074345513416712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246106 n) (A275925 (A077431 (n + 1)).toNat)

end

end A373423.P13283074345513416712

/-! ## A373423.P22778214011395285

`gcd(A287314(A181187(n+1)), A287316(n))`
-/

namespace A373423.P22778214011395285
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A287314 (A181187 (n + 1)).toNat) (A287316 n)

end

end A373423.P22778214011395285

/-! ## A373423.P10405374987882720721

`A071921(n)%A275925(A008279(2*n+1))`
-/

namespace A373423.P10405374987882720721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071921 n) (A275925 (A008279 (2 * n + 1)).toNat)

end

end A373423.P10405374987882720721

/-! ## A373423.P7023778592865731663

`A174210(A366834(n))`
-/

namespace A373423.P7023778592865731663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174210 (A366834 n).toNat

end

end A373423.P7023778592865731663

/-!
# A373424: Array read by ascending antidiagonals: T(n, k) = [x^k] cf(n) where cf(n) is the continued fraction (-1)^n/(~x - 1/(~x - ... 1/(~x - 1)))...) and where '~' is '-' if n is even, and '+' if n is odd, and x appears n times in the expression.

The programs for A373424, there is no canonical definition to state claims against.
-/

/-! ## A373424.P8588286634695826809

`A373449(n)+A008966(A069274(n+1))`
-/

namespace A373424.P8588286634695826809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373449 n + A008966 (A069274 (n + 1)).toNat

end

end A373424.P8588286634695826809

/-! ## A373424.P5031261092153609626

`A373449(n)+A336530(A001248(n+1))`
-/

namespace A373424.P5031261092153609626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373449 n + A336530 (A001248 (n + 1)).toNat

end

end A373424.P5031261092153609626

/-! ## A373424.P12529699235502080507

`A373449(n)+A000007(A351720(n+1))`
-/

namespace A373424.P12529699235502080507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373449 n + A000007 (A351720 (n + 1)).toNat

end

end A373424.P12529699235502080507

/-! ## A373424.P7851775223581527442

`A373439(A001135(n+1))*A373449(n)`
-/

namespace A373424.P7851775223581527442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373439 (A001135 (n + 1)).toNat * A373449 n

end

end A373424.P7851775223581527442

/-! ## A373424.P15332671525202341355

`A373449(n)%A211795(A002144(n+1))`
-/

namespace A373424.P15332671525202341355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A373449 n) (A211795 (A002144 (n + 1)).toNat)

end

end A373424.P15332671525202341355

/-!
# A373425: a(n) = A000111(n) * A000262(n). Row sums of A373426.

The programs for A373425, there is no canonical definition to state claims against.
-/

/-! ## A373425.P11124554114808135011

`A000111(n)*A000262(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373425.P11124554114808135011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 n * A000262 n

end

end A373425.P11124554114808135011

/-! ## A373425.P16876695456568002896

`A000111(n)*A059110(∑[n])`
-/

namespace A373425.P16876695456568002896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 n * A059110 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A373425.P16876695456568002896

/-! ## A373425.P5054143226719919127

`A000111(n)*A253286(∑[n+1]+1)`
-/

namespace A373425.P5054143226719919127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 n * A253286 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A373425.P5054143226719919127

/-! ## A373425.P16919774666742450238

`A000111(n)*A294212(∑[n+1]+n)`
-/

namespace A373425.P16919774666742450238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 n * A294212 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A373425.P16919774666742450238

/-! ## A373425.P10507022629502879324

`lcm(A000111(n), A216294(A000217(n)))`
-/

namespace A373425.P10507022629502879324
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000111 n) (A216294 (A000217 n).toNat)

end

end A373425.P10507022629502879324

/-!
# A373427: Triangle read by rows: Coefficients of the polynomials SC(n, x) * EZ(n, x), where SC denote the Stirling cycle polynomials and EZ the Eulerian zig-zag polynomials A205497.

The programs for A373427, there is no canonical definition to state claims against.
-/

/-! ## A373427.P4976961765080433168

`A357638(n)+A353353(A322325(n+3))`
-/

namespace A373427.P4976961765080433168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357638 n + A353353 (A322325 (n + 3)).toNat

end

end A373427.P4976961765080433168

/-! ## A373427.P4629157859484817544

`and(A327705(n+1), A373953(A180502(n)))`
-/

namespace A373427.P4629157859484817544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A327705 (n + 1)) (A373953 (A180502 n).toNat)

end

end A373427.P4629157859484817544

/-!
# A373428: Triangle read by rows: Coefficients of the polynomials S2(n, x) * EZ(n, x), where S2 denote the Stirling set polynomials and EZ the Eulerian zig-zag polynomials A205497.

The programs for A373428, there is no canonical definition to state claims against.
-/

/-! ## A373428.P1072229652725695501

`A262495(∑[A228148(n+1)%A046523(n+1)])`
-/

namespace A373428.P1072229652725695501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A228148 (n + 1)) (A046523 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262495 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A373428.P1072229652725695501

/-! ## A373428.P2959276710865239042

`A193330(A373426(n)²)²`
-/

namespace A373428.P2959276710865239042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193330 (A373426 n ^ 2).toNat ^ 2

end

end A373428.P2959276710865239042

/-! ## A373428.P17478336840533580174

`A026611(A058842(n+1))²`
-/

namespace A373428.P17478336840533580174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026611 (A058842 (n + 1)).toNat ^ 2

end

end A373428.P17478336840533580174

/-! ## A373428.P18353116881217881037

`A170969(A176115(n+1))²`
-/

namespace A373428.P18353116881217881037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170969 (A176115 (n + 1)).toNat ^ 2

end

end A373428.P18353116881217881037

/-! ## A373428.P15536623623207492936

`(A355755(n+1)%A084438(2*(n+1)))²`
-/

namespace A373428.P15536623623207492936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A355755 (n + 1)) (A084438 (2 * (n + 1))) ^ 2

end

end A373428.P15536623623207492936

/-!
# A373430: Row sums of A373431.

The programs for A373430, there is no canonical definition to state claims against.
-/

/-! ## A373430.P15136723829341246489

`A000108(n)*A000111(n)`
-/

namespace A373430.P15136723829341246489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A000111 n

end

end A373430.P15136723829341246489

/-! ## A373430.P251053801546136353

`abs(A000111(n)*A168491(n))`
-/

namespace A373430.P251053801546136353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000111 n * A168491 n|

end

end A373430.P251053801546136353

/-! ## A373430.P18279752215639686013

`A000108(n)*A109449(∑[n])`
-/

namespace A373430.P18279752215639686013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A109449 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A373430.P18279752215639686013

/-! ## A373430.P360569469750975397

`A109449(A046092(n))/(n+1)`
-/

namespace A373430.P360569469750975397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109449 (A046092 n).toNat : ℚ) / (n + 1 : ℚ)

end

end A373430.P360569469750975397

/-! ## A373430.P7179540891003032809

`A362581(n)/A065619(n+1)`
-/

namespace A373430.P7179540891003032809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A362581 n : ℚ) / (A065619 (n + 1) : ℚ)

end

end A373430.P7179540891003032809

/-!
# A373433: a(n) = A000111(n) * A000142(n). Row sums of A373434.

The programs for A373433, there is no canonical definition to state claims against.
-/

/-! ## A373433.P13356678347879247703

`A000111(n)*A000142(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373433.P13356678347879247703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 n * A000142 n

end

end A373433.P13356678347879247703

/-! ## A373433.P215521682744969532

`n!*A010094(∑[abs(1-(char[2]+n))])`
-/

namespace A373433.P215521682744969532
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (((if ∃ j, f2 j = n then 1 else 0) + n : ℕ) : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A010094 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A373433.P215521682744969532

/-! ## A373433.P10857173351270062028

`A001250(n)*A001710(n)`
-/

namespace A373433.P10857173351270062028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001250 n * A001710 n

end

end A373433.P10857173351270062028

/-! ## A373433.P9696925975715406356

`abs(A000111(n)*A133942(n))`
-/

namespace A373433.P9696925975715406356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000111 n * A133942 n|

end

end A373433.P9696925975715406356

/-!
# A373435: Iterate the function x <- phi(sigma(x)). The sequence lists the smaller member of cycles of length 2.

The programs for A373435, there is no canonical definition to state claims against.
-/

/-! ## A373435.P12777540092824530982

`filter[A067883(n+1), A295308(#)]`
-/

namespace A373435.P12777540092824530982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067883 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295308 (f1 j).toNat = 1) n)

end

end A373435.P12777540092824530982

/-!
# A373437: Integers k such that sigma(sigma(2*k))=2*sigma(sigma(k)); sigma=A000203.

The programs for A373437, there is no canonical definition to state claims against.
-/

/-! ## A373437.P12167820633035747389

`eq[A358771(n), A366573(n)]`
-/

namespace A373437.P12167820633035747389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358771 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366573 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A373437.P12167820633035747389

/-!
# A373438: Expansion of Sum_{k>=1} k * x^(3^(k-1)) / (1 - x^(3^(k-1))).

The programs for A373438, the canonical program `A373438.P4147406972985419538` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373438 has offset 1).

The definition of A373438 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373438.P4147406972985419538

`C(val(n+1, 3)+2, 2)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A373438

/-- `C(val(n+1, 3)+2, 2)` -/
def P4147406972985419538.Spec : Prop :=
  ∀ n, (P4147406972985419538.a n : ℤ) = A373438 (n + 1)

theorem P4147406972985419538.correct : P4147406972985419538.Spec := by
  intro n
  simp only [A373438, Nat.add_sub_cancel]

end A373438

/-! ## A373438.P12883878172173988408

`A025715(val(n+1, 3))`
-/

namespace A373438.P12883878172173988408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025715 (SequenceMachineLib.valuation (n + 1) 3)

end

end A373438.P12883878172173988408

namespace A373438

/-- `A025715(val(n+1, 3))` -/
def P12883878172173988408.Spec : Prop :=
  ∀ n, P12883878172173988408.a n = A373438 (n + 1)

end A373438

/-! ## A373438.P14377936397108377840

`A025724(val(n+1, 3))`
-/

namespace A373438.P14377936397108377840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025724 (SequenceMachineLib.valuation (n + 1) 3)

end

end A373438.P14377936397108377840

namespace A373438

/-- `A025724(val(n+1, 3))` -/
def P14377936397108377840.Spec : Prop :=
  ∀ n, P14377936397108377840.a n = A373438 (n + 1)

end A373438

/-! ## A373438.P3667825293812797264

`A025731(val(n+1, 3))`
-/

namespace A373438.P3667825293812797264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025731 (SequenceMachineLib.valuation (n + 1) 3)

end

end A373438.P3667825293812797264

namespace A373438

/-- `A025731(val(n+1, 3))` -/
def P3667825293812797264.Spec : Prop :=
  ∀ n, P3667825293812797264.a n = A373438 (n + 1)

end A373438

/-! ## A373438.P10855169021033773865

`A025738(val(n+1, 3))`
-/

namespace A373438.P10855169021033773865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025738 (SequenceMachineLib.valuation (n + 1) 3)

end

end A373438.P10855169021033773865

namespace A373438

/-- `A025738(val(n+1, 3))` -/
def P10855169021033773865.Spec : Prop :=
  ∀ n, P10855169021033773865.a n = A373438 (n + 1)

end A373438

/-! ## A373438.P7052630236136186226

`A025746(val(n+1, 3))`
-/

namespace A373438.P7052630236136186226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025746 (SequenceMachineLib.valuation (n + 1) 3)

end

end A373438.P7052630236136186226

namespace A373438

/-- `A025746(val(n+1, 3))` -/
def P7052630236136186226.Spec : Prop :=
  ∀ n, P7052630236136186226.a n = A373438 (n + 1)

end A373438

/-! ## A373438.P9481884241650251939

`A025747(val(n+1, 3))`
-/

namespace A373438.P9481884241650251939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025747 (SequenceMachineLib.valuation (n + 1) 3)

end

end A373438.P9481884241650251939

namespace A373438

/-- `A025747(val(n+1, 3))` -/
def P9481884241650251939.Spec : Prop :=
  ∀ n, P9481884241650251939.a n = A373438 (n + 1)

end A373438

/-! ## A373438.P6935518865801349549

`A046489(val(n+1, 3))`
-/

namespace A373438.P6935518865801349549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046489 (SequenceMachineLib.valuation (n + 1) 3)

end

end A373438.P6935518865801349549

namespace A373438

/-- `A046489(val(n+1, 3))` -/
def P6935518865801349549.Spec : Prop :=
  ∀ n, P6935518865801349549.a n = A373438 (n + 1)

end A373438

/-! ## A373438.P10767221299903458672

`C(A366922(n+1), 2)`
-/

namespace A373438.P10767221299903458672
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A366922 (n + 1)).toNat 2

end

end A373438.P10767221299903458672

namespace A373438

/-- `C(A366922(n+1), 2)` -/
def P10767221299903458672.Spec : Prop :=
  ∀ n, (P10767221299903458672.a n : ℤ) = A373438 (n + 1)

end A373438

/-! ## A373438.P2973861931894387632

`C(A051064(n+1)+1, 2)`
-/

namespace A373438.P2973861931894387632
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A051064 (n + 1) + 1).toNat 2

end

end A373438.P2973861931894387632

namespace A373438

/-- `C(A051064(n+1)+1, 2)` -/
def P2973861931894387632.Spec : Prop :=
  ∀ n, (P2973861931894387632.a n : ℤ) = A373438 (n + 1)

end A373438

/-! ## A373438.P7831569769639485094

`C(A007949(n+1)+2, 2)`
-/

namespace A373438.P7831569769639485094
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A007949 (n + 1) + 2).toNat 2

end

end A373438.P7831569769639485094

namespace A373438

/-- `C(A007949(n+1)+2, 2)` -/
def P7831569769639485094.Spec : Prop :=
  ∀ n, (P7831569769639485094.a n : ℤ) = A373438 (n + 1)

end A373438

/-! ## A373438.P14118119539715404164

`A007425(A038500(n+1))`
-/

namespace A373438.P14118119539715404164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (A038500 (n + 1)).toNat

end

end A373438.P14118119539715404164

namespace A373438

/-- `A007425(A038500(n+1))` -/
def P14118119539715404164.Spec : Prop :=
  ∀ n, P14118119539715404164.a n = A373438 (n + 1)

end A373438

/-! ## A373438.P3209593424696682934

`A115364(A064989(n+1))`
-/

namespace A373438.P3209593424696682934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115364 (A064989 (n + 1)).toNat

end

end A373438.P3209593424696682934

namespace A373438

/-- `A115364(A064989(n+1))` -/
def P3209593424696682934.Spec : Prop :=
  ∀ n, P3209593424696682934.a n = A373438 (n + 1)

end A373438

/-! ## A373438.P7297449491113716151

`A115364(A065365(n+1))`
-/

namespace A373438.P7297449491113716151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115364 (A065365 (n + 1)).toNat

end

end A373438.P7297449491113716151

namespace A373438

/-- `A115364(A065365(n+1))` -/
def P7297449491113716151.Spec : Prop :=
  ∀ n, P7297449491113716151.a n = A373438 (n + 1)

end A373438

/-! ## A373438.P5939312647776389757

`A115364(A295665(n+1))`
-/

namespace A373438.P5939312647776389757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115364 (A295665 (n + 1)).toNat

end

end A373438.P5939312647776389757

namespace A373438

/-- `A115364(A295665(n+1))` -/
def P5939312647776389757.Spec : Prop :=
  ∀ n, P5939312647776389757.a n = A373438 (n + 1)

end A373438

/-! ## A373438.P8546018817043365091

`A000217(Δ[A054861(n)]+1)`
-/

namespace A373438.P8546018817043365091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (f1 (n + 1) - f1 n + 1).toNat

end

end A373438.P8546018817043365091

namespace A373438

/-- `A000217(Δ[A054861(n)]+1)` -/
def P8546018817043365091.Spec : Prop :=
  ∀ n, P8546018817043365091.a n = A373438 (n + 1)

end A373438

/-! ## A373438.P15928578168116249641

`A328484(n+1)/A035191(n+1)`
-/

namespace A373438.P15928578168116249641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328484 (n + 1) : ℚ) / (A035191 (n + 1) : ℚ)

end

end A373438.P15928578168116249641

namespace A373438

/-- `A328484(n+1)/A035191(n+1)` -/
def P15928578168116249641.Spec : Prop :=
  ∀ n, P15928578168116249641.a n = (A373438 (n + 1) : ℚ)

end A373438

/-! ## A373438.P4733554512220537924

`A000217(A364222(n+1)/(n+1))`
-/

namespace A373438.P4733554512220537924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.roundAway ((A364222 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A373438.P4733554512220537924

namespace A373438

/-- `A000217(A364222(n+1)/(n+1))` -/
def P4733554512220537924.Spec : Prop :=
  ∀ n, P4733554512220537924.a n = A373438 (n + 1)

end A373438

/-! ## A373438.P16491805436827683387

`A337532((n+1)/A038502(n+1))`
-/

namespace A373438.P16491805436827683387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337532 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A038502 (n + 1) : ℚ))).toNat

end

end A373438.P16491805436827683387

namespace A373438

/-- `A337532((n+1)/A038502(n+1))` -/
def P16491805436827683387.Spec : Prop :=
  ∀ n, P16491805436827683387.a n = A373438 (n + 1)

end A373438

/-! ## A373438.P15994903877702810254

`∑{d}[n+1, A065333(#)*A284413((n+1)/#)]`
-/

namespace A373438.P15994903877702810254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065333 d * A284413 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A373438.P15994903877702810254

namespace A373438

/-- `∑{d}[n+1, A065333(#)*A284413((n+1)/#)]` -/
def P15994903877702810254.Spec : Prop :=
  ∀ n, P15994903877702810254.a n = A373438 (n + 1)

end A373438

/-!
# A373439: Numerator of sum of reciprocals of square divisors of n.

The programs for A373439, the canonical program `A373439.P16901655103107973233` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373439 has offset 1).

The definition of A373439 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373439.P2840224219852219241

`A017667(A000188(n+1))`
-/

namespace A373439.P2840224219852219241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017667 (A000188 (n + 1)).toNat

end

end A373439.P2840224219852219241

namespace A373439

/-- `A017667(A000188(n+1))` -/
def P2840224219852219241.Spec : Prop :=
  ∀ n, P2840224219852219241.a n = A373439 (n + 1)

end A373439

/-! ## A373439.P4334760779200596081

`A017667(A057918(n+1)+1)`
-/

namespace A373439.P4334760779200596081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017667 (A057918 (n + 1) + 1).toNat

end

end A373439.P4334760779200596081

namespace A373439

/-- `A017667(A057918(n+1)+1)` -/
def P4334760779200596081.Spec : Prop :=
  ∀ n, P4334760779200596081.a n = A373439 (n + 1)

end A373439

/-! ## A373439.P16906799419413827813

`A017667(A337101(2*(n+1)))`
-/

namespace A373439.P16906799419413827813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017667 (A337101 (2 * (n + 1))).toNat

end

end A373439.P16906799419413827813

namespace A373439

/-- `A017667(A337101(2*(n+1)))` -/
def P16906799419413827813.Spec : Prop :=
  ∀ n, P16906799419413827813.a n = A373439 (n + 1)

end A373439

/-! ## A373439.P16901655103107973233

`A017667(sqrt(abs(A358272(n+1))))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A373439

/-- `A017667(sqrt(abs(A358272(n+1))))` -/
def P16901655103107973233.Spec : Prop :=
  ∀ n, P16901655103107973233.a n = A373439 (n + 1)

theorem P16901655103107973233.correct : P16901655103107973233.Spec := by
  intro n
  simp only [A373439, Nat.add_sub_cancel]

end A373439

/-! ## A373439.P12057373464556856591

`A017667(floor(sqrt(A336644(n+1)))+1)`
-/

namespace A373439.P12057373464556856591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017667 (Int.sqrt (A336644 (n + 1)) + 1).toNat

end

end A373439.P12057373464556856591

namespace A373439

/-- `A017667(floor(sqrt(A336644(n+1)))+1)` -/
def P12057373464556856591.Spec : Prop :=
  ∀ n, P12057373464556856591.a n = A373439 (n + 1)

end A373439

/-! ## A373439.P13725270376869333497

`A017667(sqrt(A059479(n+1))/(n+1))`
-/

namespace A373439.P13725270376869333497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017667 (SequenceMachineLib.roundAway (Real.sqrt (A059479 (n + 1) : ℝ) / (n + 1 : ℝ))).toNat

end

end A373439.P13725270376869333497

namespace A373439

/-- `A017667(sqrt(A059479(n+1))/(n+1))` -/
def P13725270376869333497.Spec : Prop :=
  ∀ n, P13725270376869333497.a n = A373439 (n + 1)

end A373439

/-! ## A373439.P14670837639159065583

`A017667((n+1)/(A254732(n+1)-(n+1)))`
-/

namespace A373439.P14670837639159065583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017667 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A254732 (n + 1) - (n + 1 : ℤ) : ℚ))).toNat

end

end A373439.P14670837639159065583

namespace A373439

/-- `A017667((n+1)/(A254732(n+1)-(n+1)))` -/
def P14670837639159065583.Spec : Prop :=
  ∀ n, P14670837639159065583.a n = A373439 (n + 1)

end A373439

/-! ## A373439.P9915458392480089230

`A344696(A356191(n+1))`
-/

namespace A373439.P9915458392480089230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344696 (A356191 (n + 1)).toNat

end

end A373439.P9915458392480089230

namespace A373439

/-- `A344696(A356191(n+1))` -/
def P9915458392480089230.Spec : Prop :=
  ∀ n, P9915458392480089230.a n = A373439 (n + 1)

end A373439

/-!
# A373440: Denominator of sum of reciprocals of square divisors of n.

The programs for A373440, the canonical program `A373440.P6703772280667380685` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373440 has offset 1).

The definition of A373440 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373440.P6703772280667380685

`A017668(∏{p}[n+1, #^val(n+1, #²)])`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A373440

/-- `A017668(∏{p}[n+1, #^val(n+1, #²)])` -/
def P6703772280667380685.Spec : Prop :=
  ∀ n, P6703772280667380685.a n = A373440 (n + 1)

theorem P6703772280667380685.correct : P6703772280667380685.Spec := by
  intro n
  simp only [A373440, Nat.add_sub_cancel]

end A373440

/-! ## A373440.P17812494626753000188

`A017668(A000188(n+1))`
-/

namespace A373440.P17812494626753000188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017668 (A000188 (n + 1)).toNat

end

end A373440.P17812494626753000188

namespace A373440

/-- `A017668(A000188(n+1))` -/
def P17812494626753000188.Spec : Prop :=
  ∀ n, P17812494626753000188.a n = A373440 (n + 1)

end A373440

/-! ## A373440.P1030731509432730507

`A344697(A356191(n+1))`
-/

namespace A373440.P1030731509432730507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344697 (A356191 (n + 1)).toNat

end

end A373440.P1030731509432730507

namespace A373440

/-- `A344697(A356191(n+1))` -/
def P1030731509432730507.Spec : Prop :=
  ∀ n, P1030731509432730507.a n = A373440 (n + 1)

end A373440

/-! ## A373440.P11794478186910029500

`A008833(n+1)/A333381(A008833(n+1))`
-/

namespace A373440.P11794478186910029500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008833 (n + 1) : ℚ) / (A333381 (A008833 (n + 1)).toNat : ℚ)

end

end A373440.P11794478186910029500

namespace A373440

/-- `A008833(n+1)/A333381(A008833(n+1))` -/
def P11794478186910029500.Spec : Prop :=
  ∀ n, P11794478186910029500.a n = (A373440 (n + 1) : ℚ)

end A373440

/-! ## A373440.P15084753754634737835

`A111615(∏{p}[n+1, #^val(n+1, #²)]²)`
-/

namespace A373440.P15084753754634737835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111615 ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2)

end

end A373440.P15084753754634737835

namespace A373440

/-- `A111615(∏{p}[n+1, #^val(n+1, #²)]²)` -/
def P15084753754634737835.Spec : Prop :=
  ∀ n, P15084753754634737835.a n = A373440 (n + 1)

end A373440

/-! ## A373440.P10032740190032177480

`A229998(∏{p}[n+1, #^val(n+1, #²)]²)`
-/

namespace A373440.P10032740190032177480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229998 ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2)

end

end A373440.P10032740190032177480

namespace A373440

/-- `A229998(∏{p}[n+1, #^val(n+1, #²)]²)` -/
def P10032740190032177480.Spec : Prop :=
  ∀ n, P10032740190032177480.a n = A373440 (n + 1)

end A373440

/-! ## A373440.P4884276381807233047

`A375126(∏{p}[n+1, #^val(n+1, #²)]²-1)+1`
-/

namespace A373440.P4884276381807233047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375126 ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2 - 1) + 1

end

end A373440.P4884276381807233047

namespace A373440

/-- `A375126(∏{p}[n+1, #^val(n+1, #²)]²-1)+1` -/
def P4884276381807233047.Spec : Prop :=
  ∀ n, P4884276381807233047.a n = A373440 (n + 1)

end A373440

/-! ## A373440.P1972731435920169777

`A111615((n+1)/A007913(n+1))`
-/

namespace A373440.P1972731435920169777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111615 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007913 (n + 1) : ℚ))).toNat

end

end A373440.P1972731435920169777

namespace A373440

/-- `A111615((n+1)/A007913(n+1))` -/
def P1972731435920169777.Spec : Prop :=
  ∀ n, P1972731435920169777.a n = A373440 (n + 1)

end A373440

/-!
# A373445: Triple convolution of the three tribonacci-like sequences A000073(n), A077947(n-2), and A103143(n).

The programs for A373445, the canonical program `A373445.P16392507257831332484` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373445 has offset 0).

The definition of A373445 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A373445.P16392507257831332484

`(A000073(n+2)+A103143(n+2))/2-A077947(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A373445

/-- `(A000073(n+2)+A103143(n+2))/2-A077947(n)` -/
def P16392507257831332484.Spec : Prop :=
  ∀ n, P16392507257831332484.a n = (A373445 n : ℚ)

end A373445

/-! ## A373445.P11510906757406359749

`floor(A368097(n)/A271269(n+4))`
-/

namespace A373445.P11510906757406359749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A368097 n : ℚ) / (A271269 (n + 4) : ℚ)⌋

end

end A373445.P11510906757406359749

namespace A373445

/-- `floor(A368097(n)/A271269(n+4))` -/
def P11510906757406359749.Spec : Prop :=
  ∀ n, P11510906757406359749.a n = A373445 n

end A373445

/-! ## A373445.P471392772453074120

`floor(A006948(n+1)/A022144(3*n+4))`
-/

namespace A373445.P471392772453074120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006948 (n + 1) : ℚ) / (A022144 (3 * n + 4) : ℚ)⌋

end

end A373445.P471392772453074120

namespace A373445

/-- `floor(A006948(n+1)/A022144(3*n+4))` -/
def P471392772453074120.Spec : Prop :=
  ∀ n, P471392772453074120.a n = A373445 n

end A373445

/-! ## A373445.P7476616251842092932

`A332727(n)+A083025(A074176(n+1))`
-/

namespace A373445.P7476616251842092932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332727 n + A083025 (A074176 (n + 1)).toNat

end

end A373445.P7476616251842092932

namespace A373445

/-- `A332727(n)+A083025(A074176(n+1))` -/
def P7476616251842092932.Spec : Prop :=
  ∀ n, P7476616251842092932.a n = A373445 n

end A373445

/-!
# A373447: Number of ternary strings of length n avoiding the substrings 00, 11, 22, 121, 212, 202.

The programs for A373447, the canonical program `A373447.P18091517115601199307` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373447 has offset 0).

The definition of A373447 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A373447.P18091517115601199307

`a(n-2)+2*a(n-3)+a(n-4)-a(n-6)` with `a(0)=1, a(1)=3, a(2)=6, a(3)=9, a(4)=14, a(5)=23, a(6)=36`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A373447

/-- `a(n-2)+2*a(n-3)+a(n-4)-a(n-6)` -/
def P18091517115601199307.Spec : Prop :=
  ∀ n, P18091517115601199307.a n = A373447 n

theorem P18091517115601199307.correct : P18091517115601199307.Spec := by
  intro n
  simp only [A373447]

end A373447

/-! ## A373447.P8905884257631835912

`A002024(A187004(n+1))`
-/

namespace A373447.P8905884257631835912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A187004 (n + 1)).toNat

end

end A373447.P8905884257631835912

namespace A373447

/-- `A002024(A187004(n+1))` -/
def P8905884257631835912.Spec : Prop :=
  ∀ n, P8905884257631835912.a n = A373447 n

end A373447

/-! ## A373447.P17552475250961247086

`A002024(A347990(n)+A056239(n+1)²)`
-/

namespace A373447.P17552475250961247086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A347990 n + A056239 (n + 1) ^ 2).toNat

end

end A373447.P17552475250961247086

namespace A373447

/-- `A002024(A347990(n)+A056239(n+1)²)` -/
def P17552475250961247086.Spec : Prop :=
  ∀ n, P17552475250961247086.a n = A373447 n

end A373447

/-! ## A373447.P7688534926327034145

`A002865(2*(n+1))+A001221(A058409(n))`
-/

namespace A373447.P7688534926327034145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (2 * (n + 1)) + A001221 (A058409 n).toNat

end

end A373447.P7688534926327034145

namespace A373447

/-- `A002865(2*(n+1))+A001221(A058409(n))` -/
def P7688534926327034145.Spec : Prop :=
  ∀ n, P7688534926327034145.a n = A373447 n

end A373447

/-! ## A373447.P13153209734367161278

`A187219(2*(n+1))+A001221(A003947(n))`
-/

namespace A373447.P13153209734367161278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187219 (2 * (n + 1)) + A001221 (A003947 n).toNat

end

end A373447.P13153209734367161278

namespace A373447

/-- `A187219(2*(n+1))+A001221(A003947(n))` -/
def P13153209734367161278.Spec : Prop :=
  ∀ n, P13153209734367161278.a n = A373447 n

end A373447

/-!
# A373448: 10^n-th binary palindrome.

The programs for A373448, the canonical program `A373448.P738136565750743419` is in `Seq.B009.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373448 has offset 0).

The definition of A373448 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006995, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A373448.P738136565750743419

`A006995(10^n)`

The canonical program, it is in `Seq.B009.C001`.
-/

namespace A373448

/-- `A006995(10^n)` -/
def P738136565750743419.Spec : Prop :=
  ∀ n, P738136565750743419.a n = A373448 n

theorem P738136565750743419.correct : P738136565750743419.Spec := by
  intro n
  simp only [A373448]

end A373448

/-!
# A373449: Number A(n,k) of (binary) heaps of length n whose element set is a subset of [k]; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A373449, there is no canonical definition to state claims against.
-/

/-! ## A373449.P1597899765590475677

`A290353(eq[A167407(n), A178334(3*n+1)])`
-/

namespace A373449.P1597899765590475677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167407 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290353 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A373449.P1597899765590475677

/-! ## A373449.P17622954403130483827

`A290353(A253723(n+1))`
-/

namespace A373449.P17622954403130483827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290353 (A253723 (n + 1)).toNat

end

end A373449.P17622954403130483827

/-! ## A373449.P16126063707389035103

`A290353(lt[A086130(n+1), A202017(n+1)])`
-/

namespace A373449.P16126063707389035103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086130 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202017 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290353 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A373449.P16126063707389035103

/-! ## A373449.P8089490074459850455

`A290353(lt[A143589(3*n+1), A062190(n)])`
-/

namespace A373449.P8089490074459850455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143589 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062190 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290353 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A373449.P8089490074459850455

/-!
# A373450: Number of (binary) heaps of length n whose element set is a subset of [n].

The programs for A373450, there is no canonical definition to state claims against.
-/

/-! ## A373450.P2263854157774791825

`A373449(∑[4*n])`
-/

namespace A373450.P2263854157774791825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373449 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A373450.P2263854157774791825

/-! ## A373450.P274795751047863819

`A037083(A001470(n))+A001764(n)`
-/

namespace A373450.P274795751047863819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037083 (A001470 n).toNat + A001764 n

end

end A373450.P274795751047863819

/-!
# A373451: Number T(n,k) of (binary) heaps of length n whose element set equals [k]; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A373451, there is no canonical definition to state claims against.
-/

/-! ## A373451.P16020711188247425435

`A255270(A256117(n)²)`
-/

namespace A373451.P16020711188247425435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255270 (A256117 n ^ 2).toNat

end

end A373451.P16020711188247425435

/-! ## A373451.P8616890896305727395

`A000196(A256117(n)%A134930(3*n+5))`
-/

namespace A373451.P8616890896305727395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.tmod (A256117 n) (A134930 (3 * n + 5))).toNat

end

end A373451.P8616890896305727395

/-! ## A373451.P4682968741342351570

`A000196(A256117(n))%A090553(3*(n+1))`
-/

namespace A373451.P4682968741342351570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000196 (A256117 n).toNat) (A090553 (3 * (n + 1)))

end

end A373451.P4682968741342351570

/-! ## A373451.P1476709470905399237

`A268374(A132275(n+1))+A191646(n)`
-/

namespace A373451.P1476709470905399237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268374 (A132275 (n + 1)).toNat + A191646 n

end

end A373451.P1476709470905399237

/-! ## A373451.P4893345579207414872

`A092234(A256116(n))`
-/

namespace A373451.P4893345579207414872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092234 (A256116 n).toNat

end

end A373451.P4893345579207414872

/-!
# A373452: Number of (binary) heaps of length n whose element set equals [k] (for some k <= n).

The programs for A373452, there is no canonical definition to state claims against.
-/

/-! ## A373452.P13116723578436098679

`A110277(A032158(n))`
-/

namespace A373452.P13116723578436098679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110277 (A032158 n).toNat

end

end A373452.P13116723578436098679

/-! ## A373452.P10066429514659480360

`A371286(A108071(n+1))`
-/

namespace A373452.P10066429514659480360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371286 (A108071 (n + 1)).toNat

end

end A373452.P10066429514659480360

/-! ## A373452.P1000402900939694597

`A119918(∑[A119908(n+2)])`
-/

namespace A373452.P1000402900939694597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119908 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119918 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A373452.P1000402900939694597

/-!
# A373455: Number of interval posets of permutations of size n, considered up to isomorphism.

The programs for A373455, there is no canonical definition to state claims against.
-/

/-! ## A373455.P5279912394528882281

`A023193(A119254(n))`
-/

namespace A373455.P5279912394528882281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A119254 n).toNat

end

end A373455.P5279912394528882281

/-! ## A373455.P11532347302516191961

`A046155(A125657(n))`
-/

namespace A373455.P11532347302516191961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 (A125657 n).toNat

end

end A373455.P11532347302516191961

/-! ## A373455.P10787568961290806707

`A023193(A150044(n))`
-/

namespace A373455.P10787568961290806707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A150044 n).toNat

end

end A373455.P10787568961290806707

/-!
# A373458: Expansion of Sum_{p prime} x^p/(1 - p*x^p).

The programs for A373458, the canonical program `A373458.P15035220634719010158` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373458 has offset 1).

The definition of A373458 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 632 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373458.P15035220634719010158

`∑{p}[n+1, #^floor(n/#)]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A373458

/-- `∑{p}[n+1, #^floor(n/#)]` -/
def P15035220634719010158.Spec : Prop :=
  ∀ n, P15035220634719010158.a n = (A373458 (n + 1) : ℚ)

end A373458

/-! ## A373458.P8599024362478849400

`A171453(A374431(n+1))`
-/

namespace A373458.P8599024362478849400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171453 (A374431 (n + 1)).toNat

end

end A373458.P8599024362478849400

namespace A373458

/-- `A171453(A374431(n+1))` -/
def P8599024362478849400.Spec : Prop :=
  ∀ n, P8599024362478849400.a n = A373458 (n + 1)

end A373458

/-!
# A373459: Expansion of Sum_{p prime} x^p/(1 - (p*x)^p).

The programs for A373459, the canonical program `A373459.P1230800658281002445` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373459 has offset 1).

The definition of A373459 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373459.P1230800658281002445

`∑{p}[n+1, #^(n+1-#)]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A373459

/-- `∑{p}[n+1, #^(n+1-#)]` -/
def P1230800658281002445.Spec : Prop :=
  ∀ n, P1230800658281002445.a n = (A373459 (n + 1) : ℚ)

end A373459

/-!
# A373460: Numbers k such that k and k+1 both have an equal number of even and odd digits.

The programs for A373460, there is no canonical definition to state claims against.
-/

/-! ## A373460.P6804316205777139779

`∩[A227870(n+1)-1, A227870(n+1)]`
-/

namespace A373460.P6804316205777139779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227870 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373460.P6804316205777139779

/-! ## A373460.P18315737847173403460

`∩[A227870(n+1), A023443(A227870(n+1))]`
-/

namespace A373460.P18315737847173403460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A227870 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373460.P18315737847173403460

/-! ## A373460.P9383417721897965754

`A227870(∑[A077045(n)*A243830(2*n)+10])`
-/

namespace A373460.P9383417721897965754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077045 n * A243830 (2 * n) + 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227870 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A373460.P9383417721897965754

/-!
# A373463: Expansion of 1/((1 + x)^5 - 2*x^5).

The programs for A373463, the canonical program `A373463.P9880612305745563483` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373463 has offset 0).

The definition of A373463 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+5x+10x^2+10x^3+5x^4-x^5))` (program `A373463.P9880612305745563483`, by `A373463.P9880612305745563483.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A373463.P9880612305745563483

`ogf(1/(1+5x+10x^2+10x^3+5x^4-x^5))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A373463

/-- `ogf(1/(1+5x+10x^2+10x^3+5x^4-x^5))` -/
def P9880612305745563483.Spec : Prop :=
  ∀ n, P9880612305745563483.a n = A373463 n

theorem P9880612305745563483.correct : P9880612305745563483.Spec := by
  intro n
  simp only [A373463]

end A373463

/-! ## A373463.P6525710161611885537

`A025480(A051118(n))+A000750(n)`
-/

namespace A373463.P6525710161611885537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A051118 n).toNat + A000750 n

end

end A373463.P6525710161611885537

namespace A373463

/-- `A025480(A051118(n))+A000750(n)` -/
def P6525710161611885537.Spec : Prop :=
  ∀ n, P6525710161611885537.a n = A373463 n

end A373463

/-!
# A373464: Largest of a quadruple of primes p[1..4] such that (p[k]+1, k=1..4) is in geometric progression.

The programs for A373464, there is no canonical definition to state claims against.
-/

/-! ## A373464.P2225896503832420756

`A055211(eq[2, A068348(n+1)])`
-/

namespace A373464.P2225896503832420756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068348 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055211 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A373464.P2225896503832420756

/-!
# A373470: First differences of A043555 = number of runs in base-3 representation of n.

The programs for A373470, the canonical program `A373470.P8197949945481650246` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373470 has offset 0).

The definition of A373470 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A043555, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A373470.P8197949945481650246

`A043555(n+1)-A043555(n)`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A373470

/-- `A043555(n+1)-A043555(n)` -/
def P8197949945481650246.Spec : Prop :=
  ∀ n, P8197949945481650246.a n = A373470 n

theorem P8197949945481650246.correct : P8197949945481650246.Spec := by
  intro n
  simp only [A373470]

end A373470

/-! ## A373470.P5266100015004168647

`Δ[A043555(n)]`
-/

namespace A373470.P5266100015004168647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043555 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A373470.P5266100015004168647

namespace A373470

/-- `Δ[A043555(n)]` -/
def P5266100015004168647.Spec : Prop :=
  ∀ n, P5266100015004168647.a n = A373470 n

theorem P5266100015004168647.correct : P5266100015004168647.Spec := by
  intro n
  simp only [A373470, Nat.add_sub_cancel, A373470.P5266100015004168647.f1, A373470.P5266100015004168647.a, A373470.P8197949945481650246.a, SequenceMachineLib.memo_apply]

end A373470

/-! ## A373470.P8776289305772908927

`Δ[A043562(A007089(n))]`
-/

namespace A373470.P8776289305772908927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A007089 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A373470.P8776289305772908927

namespace A373470

/-- `Δ[A043562(A007089(n))]` -/
def P8776289305772908927.Spec : Prop :=
  ∀ n, P8776289305772908927.a n = A373470 n

end A373470

/-! ## A373470.P15132749478705593472

`A014037(A055234(n+1))`
-/

namespace A373470.P15132749478705593472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014037 (A055234 (n + 1)).toNat

end

end A373470.P15132749478705593472

namespace A373470

/-- `A014037(A055234(n+1))` -/
def P15132749478705593472.Spec : Prop :=
  ∀ n, P15132749478705593472.a n = A373470 n

end A373470

/-! ## A373470.P12855264187019601046

`A100047(n*A092362(n))`
-/

namespace A373470.P12855264187019601046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100047 ((n : ℤ) * A092362 n).toNat

end

end A373470.P12855264187019601046

namespace A373470

/-- `A100047(n*A092362(n))` -/
def P12855264187019601046.Spec : Prop :=
  ∀ n, P12855264187019601046.a n = A373470 n

end A373470

/-!
# A373471: Primes indices of nonzero bits in Pi (A256108).

The programs for A373471, there is no canonical definition to state claims against.
-/

/-! ## A373471.P11213300055499407554

`p?[A256108(n+1)]`
-/

namespace A373471.P11213300055499407554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A373471.P11213300055499407554

/-! ## A373471.P12405927477372842587

`p?[∑[A320298(n+2)]]`
-/

namespace A373471.P12405927477372842587
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320298 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A373471.P12405927477372842587

/-! ## A373471.P18167300770543441026

`p?[A004711(n+1)-2]`
-/

namespace A373471.P18167300770543441026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004711 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A373471.P18167300770543441026

/-! ## A373471.P3483927695560353861

`filter[A256108(n+3), A010051(#)]`
-/

namespace A373471.P3483927695560353861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256108 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A373471.P3483927695560353861

/-! ## A373471.P15447082683988816720

`∩[A000040(n+1), A256108(n+1)]`
-/

namespace A373471.P15447082683988816720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373471.P15447082683988816720

/-! ## A373471.P8907747002380735569

`∩[A004139(n+1), A256108(n+1)]`
-/

namespace A373471.P8907747002380735569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373471.P8907747002380735569

/-! ## A373471.P2398314141158474227

`∩[A006005(n+1), A256108(n+1)]`
-/

namespace A373471.P2398314141158474227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373471.P2398314141158474227

/-! ## A373471.P5493892841334936731

`∩[A008578(n+1), A256108(n+1)]`
-/

namespace A373471.P5493892841334936731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373471.P5493892841334936731

/-! ## A373471.P8742044346510339446

`∩[A033946(n+1), A256108(n+1)]`
-/

namespace A373471.P8742044346510339446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373471.P8742044346510339446

/-! ## A373471.P9794441786560259284

`∩[A045319(n+1), A256108(n+1)]`
-/

namespace A373471.P9794441786560259284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373471.P9794441786560259284

/-! ## A373471.P9889149091967895133

`∩[A046022(n+1), A256108(n+1)]`
-/

namespace A373471.P9889149091967895133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373471.P9889149091967895133

/-! ## A373471.P14490305184855387518

`∩[A065091(n+1), A256108(n+1)]`
-/

namespace A373471.P14490305184855387518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373471.P14490305184855387518

/-! ## A373471.P58401411527021917

`∩[A066050(n+1), A256108(n+1)]`
-/

namespace A373471.P58401411527021917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373471.P58401411527021917

/-! ## A373471.P4567876021512640358

`∩[A067126(n+1), A256108(n+1)]`
-/

namespace A373471.P4567876021512640358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373471.P4567876021512640358

/-! ## A373471.P13509808082303726561

`∩[A175787(n+1), A256108(n+1)]`
-/

namespace A373471.P13509808082303726561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373471.P13509808082303726561

/-! ## A373471.P11098558911366678294

`∩[A193339(n+1), A256108(n+1)]`
-/

namespace A373471.P11098558911366678294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373471.P11098558911366678294

/-! ## A373471.P2961964508855939462

`p?[n*A004601(n+3)]`
-/

namespace A373471.P2961964508855939462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A004601 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A373471.P2961964508855939462

/-! ## A373471.P3067470410581330158

`filter[A256108(n+3), A080339(#)]`
-/

namespace A373471.P3067470410581330158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256108 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A373471.P3067470410581330158

/-! ## A373471.P6498514321783268184

`filter[A256108(n+3), A080545(#)]`
-/

namespace A373471.P6498514321783268184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256108 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A373471.P6498514321783268184

/-!
# A373472: a(n) = 1 if A001414(n) and A059975(n) are both multiples of 3, otherwise 0, where A001414 and A059975 are fully additive with a(p) = p and a(p) = p-1, respectively.

The programs for A373472, the canonical program `A373472.P17598235069966866873` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373472 has offset 1).

The definition of A373472 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373472.P9410694742945448896

`char[A373473(n+1)-1]`
-/

namespace A373472.P9410694742945448896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373473 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A373472.P9410694742945448896

namespace A373472

/-- `char[A373473(n+1)-1]` -/
def P9410694742945448896.Spec : Prop :=
  ∀ n, (P9410694742945448896.a n : ℤ) = A373472 (n + 1)

end A373472

/-! ## A373472.P10144012756056133998

`A373372(2^A373369(n+1))`
-/

namespace A373472.P10144012756056133998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373372 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A373369 (n + 1) : ℤ))).toNat

end

end A373472.P10144012756056133998

namespace A373472

/-- `A373372(2^A373369(n+1))` -/
def P10144012756056133998.Spec : Prop :=
  ∀ n, P10144012756056133998.a n = A373472 (n + 1)

end A373472

/-! ## A373472.P17598235069966866873

`A373371(n+1)*A373975(n+1)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A373472

/-- `A373371(n+1)*A373975(n+1)` -/
def P17598235069966866873.Spec : Prop :=
  ∀ n, P17598235069966866873.a n = A373472 (n + 1)

theorem P17598235069966866873.correct : P17598235069966866873.Spec := by
  intro n
  simp only [A373472, Nat.add_sub_cancel]

end A373472

/-! ## A373472.P9926559519349297162

`(1-∑{e}[n+1, #]²%3)*A369643(A038502(n+1))`
-/

namespace A373472.P9926559519349297162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) ^ 2 % 3 : ℕ) : ℤ)) * A369643 (A038502 (n + 1)).toNat

end

end A373472.P9926559519349297162

namespace A373472

/-- `(1-∑{e}[n+1, #]²%3)*A369643(A038502(n+1))` -/
def P9926559519349297162.Spec : Prop :=
  ∀ n, P9926559519349297162.a n = A373472 (n + 1)

end A373472

/-! ## A373472.P16599126469929033809

`(2-A130196(∑{e}[n+1, #]))*A369643(A038502(n+1))`
-/

namespace A373472.P16599126469929033809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A130196 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) * A369643 (A038502 (n + 1)).toNat

end

end A373472.P16599126469929033809

namespace A373472

/-- `(2-A130196(∑{e}[n+1, #]))*A369643(A038502(n+1))` -/
def P16599126469929033809.Spec : Prop :=
  ∀ n, P16599126469929033809.a n = A373472 (n + 1)

end A373472

/-! ## A373472.P16837476093730763371

`A369658((2-A130196(∑{e}[n+1, #]))*A038502(n+1))`
-/

namespace A373472.P16837476093730763371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369658 ((2 - A130196 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) * A038502 (n + 1)).toNat

end

end A373472.P16837476093730763371

namespace A373472

/-- `A369658((2-A130196(∑{e}[n+1, #]))*A038502(n+1))` -/
def P16837476093730763371.Spec : Prop :=
  ∀ n, P16837476093730763371.a n = A373472 (n + 1)

end A373472

/-! ## A373472.P13071050870587209812

`A010057(A068794(n+1))*A369643(A038502(n+1))`
-/

namespace A373472.P13071050870587209812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (A068794 (n + 1)).toNat * A369643 (A038502 (n + 1)).toNat

end

end A373472.P13071050870587209812

namespace A373472

/-- `A010057(A068794(n+1))*A369643(A038502(n+1))` -/
def P13071050870587209812.Spec : Prop :=
  ∀ n, P13071050870587209812.a n = A373472 (n + 1)

end A373472

/-! ## A373472.P6350175099075966859

`A373371(A292586(2*n+5)^A373369(n+1))`
-/

namespace A373472.P6350175099075966859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373371 (SequenceMachineLib.roundAway ((A292586 (2 * n + 5) : ℚ) ^ (A373369 (n + 1) : ℤ))).toNat

end

end A373472.P6350175099075966859

namespace A373472

/-- `A373371(A292586(2*n+5)^A373369(n+1))` -/
def P6350175099075966859.Spec : Prop :=
  ∀ n, P6350175099075966859.a n = A373472 (n + 1)

end A373472

/-!
# A373473: Numbers k such that A001414(k) and A059975(k) are both multiples of 3, where A001414 and A059975 are fully additive with a(p) = p and a(p) = p-1, respectively.

The programs for A373473, the canonical program `A373473.P12116904307053985547` is in `Seq.B009.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373473 has offset 1).

The definition of A373473 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5648 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373473.P12116904307053985547

`eq[1, A373472(n+1)]+1`

The canonical program, it is in `Seq.B009.C001`.
-/

namespace A373473

/-- `eq[1, A373472(n+1)]+1` -/
def P12116904307053985547.Spec : Prop :=
  ∀ n, (P12116904307053985547.a n : ℤ) = A373473 (n + 1)

theorem P12116904307053985547.correct : P12116904307053985547.Spec := by
  intro n
  simp only [A373473, Nat.add_sub_cancel]

end A373473

/-! ## A373473.P10433806484067716478

`filter[A145784(n+1), A373371(#)]`
-/

namespace A373473.P10433806484067716478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145784 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373371 (f1 j).toNat = 1) n)

end

end A373473.P10433806484067716478

namespace A373473

/-- `filter[A145784(n+1), A373371(#)]` -/
def P10433806484067716478.Spec : Prop :=
  ∀ n, P10433806484067716478.a n = A373473 (n + 1)

end A373473

/-! ## A373473.P15527458674025878379

`filter[A145784(n+1), A373472(#)]`
-/

namespace A373473.P15527458674025878379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145784 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373472 (f1 j).toNat = 1) n)

end

end A373473.P15527458674025878379

namespace A373473

/-- `filter[A145784(n+1), A373472(#)]` -/
def P15527458674025878379.Spec : Prop :=
  ∀ n, P15527458674025878379.a n = A373473 (n + 1)

end A373473

/-! ## A373473.P13699483138538513065

`filter[A289142(n+1), A373472(#)]`
-/

namespace A373473.P13699483138538513065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373472 (f1 j).toNat = 1) n)

end

end A373473.P13699483138538513065

namespace A373473

/-- `filter[A289142(n+1), A373472(#)]` -/
def P13699483138538513065.Spec : Prop :=
  ∀ n, P13699483138538513065.a n = A373473 (n + 1)

end A373473

/-! ## A373473.P8961328795983033017

`filter[A289142(n+1), A373975(#)]`
-/

namespace A373473.P8961328795983033017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373975 (f1 j).toNat = 1) n)

end

end A373473.P8961328795983033017

namespace A373473

/-- `filter[A289142(n+1), A373975(#)]` -/
def P8961328795983033017.Spec : Prop :=
  ∀ n, P8961328795983033017.a n = A373473 (n + 1)

end A373473

/-! ## A373473.P4662201159286508144

`∩[A145784(n+1), A289142(n+1)]`
-/

namespace A373473.P4662201159286508144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373473.P4662201159286508144

namespace A373473

/-- `∩[A145784(n+1), A289142(n+1)]` -/
def P4662201159286508144.Spec : Prop :=
  ∀ n, (P4662201159286508144.a n : ℤ) = A373473 (n + 1)

end A373473

/-! ## A373473.P1160302234821517669

`filter[A373385(n+1), A373371(#)]`
-/

namespace A373473.P1160302234821517669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373385 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373371 (f1 j).toNat = 1) n)

end

end A373473.P1160302234821517669

namespace A373473

/-- `filter[A373385(n+1), A373371(#)]` -/
def P1160302234821517669.Spec : Prop :=
  ∀ n, P1160302234821517669.a n = A373473 (n + 1)

end A373473

/-! ## A373473.P13559037206245137169

`filter[A373385(n+1), A373472(#)]`
-/

namespace A373473.P13559037206245137169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373385 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373472 (f1 j).toNat = 1) n)

end

end A373473.P13559037206245137169

namespace A373473

/-- `filter[A373385(n+1), A373472(#)]` -/
def P13559037206245137169.Spec : Prop :=
  ∀ n, P13559037206245137169.a n = A373473 (n + 1)

end A373473

/-! ## A373473.P14164149030767527948

`filter[A373385(n+1), A373975(#)]`
-/

namespace A373473.P14164149030767527948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373385 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373975 (f1 j).toNat = 1) n)

end

end A373473.P14164149030767527948

namespace A373473

/-- `filter[A373385(n+1), A373975(#)]` -/
def P14164149030767527948.Spec : Prop :=
  ∀ n, P14164149030767527948.a n = A373473 (n + 1)

end A373473

/-! ## A373473.P11421864492643425542

`∩[A145784(n+1), A373385(n+1)]`
-/

namespace A373473.P11421864492643425542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373385 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373473.P11421864492643425542

namespace A373473

/-- `∩[A145784(n+1), A373385(n+1)]` -/
def P11421864492643425542.Spec : Prop :=
  ∀ n, (P11421864492643425542.a n : ℤ) = A373473 (n + 1)

end A373473

/-! ## A373473.P7626608034515778273

`∩[A289142(n+1), A373385(n+1)]`
-/

namespace A373473.P7626608034515778273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289142 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373385 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373473.P7626608034515778273

namespace A373473

/-- `∩[A289142(n+1), A373385(n+1)]` -/
def P7626608034515778273.Spec : Prop :=
  ∀ n, (P7626608034515778273.a n : ℤ) = A373473 (n + 1)

end A373473

/-! ## A373473.P385102391581880476

`filter[A111087(n+1), A373472(#)]`
-/

namespace A373473.P385102391581880476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373472 (f1 j).toNat = 1) n)

end

end A373473.P385102391581880476

namespace A373473

/-- `filter[A111087(n+1), A373472(#)]` -/
def P385102391581880476.Spec : Prop :=
  ∀ n, P385102391581880476.a n = A373473 (n + 1)

end A373473

/-! ## A373473.P10007584231023496253

`filter[A289553(n+1), A373472(#)]`
-/

namespace A373473.P10007584231023496253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289553 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373472 (f1 j).toNat = 1) n)

end

end A373473.P10007584231023496253

namespace A373473

/-- `filter[A289553(n+1), A373472(#)]` -/
def P10007584231023496253.Spec : Prop :=
  ∀ n, P10007584231023496253.a n = A373473 (n + 1)

end A373473

/-! ## A373473.P15543431852201733325

`filter[A100959(n+1), A373472(#)]`
-/

namespace A373473.P15543431852201733325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100959 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373472 (f1 j).toNat = 1) n)

end

end A373473.P15543431852201733325

namespace A373473

/-- `filter[A100959(n+1), A373472(#)]` -/
def P15543431852201733325.Spec : Prop :=
  ∀ n, P15543431852201733325.a n = A373473 (n + 1)

end A373473

/-! ## A373473.P12310902470990833497

`filter[A134376(n+1), A373472(#)]`
-/

namespace A373473.P12310902470990833497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134376 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373472 (f1 j).toNat = 1) n)

end

end A373473.P12310902470990833497

namespace A373473

/-- `filter[A134376(n+1), A373472(#)]` -/
def P12310902470990833497.Spec : Prop :=
  ∀ n, P12310902470990833497.a n = A373473 (n + 1)

end A373473

/-! ## A373473.P10527975122314079653

`filter[A264828(n+1), A373472(#)]`
-/

namespace A373473.P10527975122314079653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264828 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373472 (f1 j).toNat = 1) n)

end

end A373473.P10527975122314079653

namespace A373473

/-- `filter[A264828(n+1), A373472(#)]` -/
def P10527975122314079653.Spec : Prop :=
  ∀ n, P10527975122314079653.a n = A373473 (n + 1)

end A373473

/-! ## A373473.P13394867210757001352

`filter[A257586(n+1), A373472(#)]`
-/

namespace A373473.P13394867210757001352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373472 (f1 j).toNat = 1) n)

end

end A373473.P13394867210757001352

namespace A373473

/-- `filter[A257586(n+1), A373472(#)]` -/
def P13394867210757001352.Spec : Prop :=
  ∀ n, P13394867210757001352.a n = A373473 (n + 1)

end A373473

/-! ## A373473.P17954111776234216965

`filter[A018252(n+1), A373472(#)]`
-/

namespace A373473.P17954111776234216965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373472 (f1 j).toNat = 1) n)

end

end A373473.P17954111776234216965

namespace A373473

/-- `filter[A018252(n+1), A373472(#)]` -/
def P17954111776234216965.Spec : Prop :=
  ∀ n, P17954111776234216965.a n = A373473 (n + 1)

end A373473

/-! ## A373473.P14105631080592473712

`filter[A056653(n+1), A373472(#)]`
-/

namespace A373473.P14105631080592473712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373472 (f1 j).toNat = 1) n)

end

end A373473.P14105631080592473712

namespace A373473

/-- `filter[A056653(n+1), A373472(#)]` -/
def P14105631080592473712.Spec : Prop :=
  ∀ n, P14105631080592473712.a n = A373473 (n + 1)

end A373473

/-! ## A373473.P5654154591920986848

`filter[A065090(n+1), A373472(#)]`
-/

namespace A373473.P5654154591920986848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373472 (f1 j).toNat = 1) n)

end

end A373473.P5654154591920986848

namespace A373473

/-- `filter[A065090(n+1), A373472(#)]` -/
def P5654154591920986848.Spec : Prop :=
  ∀ n, P5654154591920986848.a n = A373473 (n + 1)

end A373473

/-!
# A373474: a(n) = 1 if A001414(n) and A083345(n) are both multiples of 3, otherwise 0, where A001414 is fully additive with a(p) = p, and A083345 is the numerator of the fully additive function with a(p) = 1/p.

The programs for A373474, the canonical program `A373474.P9005453665869377393` is in `Seq.B009.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373474 has offset 1).

The definition of A373474 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373474.P2857503203999310344

`A369658(n+1)`
-/

namespace A373474.P2857503203999310344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369658 (n + 1)

end

end A373474.P2857503203999310344

namespace A373474

/-- `A369658(n+1)` -/
def P2857503203999310344.Spec : Prop :=
  ∀ n, P2857503203999310344.a n = A373474 (n + 1)

end A373474

/-! ## A373474.P9005453665869377393

`char[A369659(n+1)-1]`

The canonical program, it is in `Seq.B009.C001`.
-/

namespace A373474

/-- `char[A369659(n+1)-1]` -/
def P9005453665869377393.Spec : Prop :=
  ∀ n, (P9005453665869377393.a n : ℤ) = A373474 (n + 1)

theorem P9005453665869377393.correct : P9005453665869377393.Spec := by
  intro n
  simp only [A373474, Nat.add_sub_cancel]

end A373474

/-! ## A373474.P17383268308600237591

`A079978(A373363(n+1))`
-/

namespace A373474.P17383268308600237591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A373363 (n + 1)).toNat

end

end A373474.P17383268308600237591

namespace A373474

/-- `A079978(A373363(n+1))` -/
def P17383268308600237591.Spec : Prop :=
  ∀ n, P17383268308600237591.a n = A373474 (n + 1)

end A373474

/-! ## A373474.P4613470940185629531

`(A122434(n)*A373371(n+1))²`
-/

namespace A373474.P4613470940185629531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A122434 n * A373371 (n + 1)) ^ 2

end

end A373474.P4613470940185629531

namespace A373474

/-- `(A122434(n)*A373371(n+1))²` -/
def P4613470940185629531.Spec : Prop :=
  ∀ n, P4613470940185629531.a n = A373474 (n + 1)

end A373474

/-! ## A373474.P1567681493095071968

`(A122434(n)*A373477(n+1))²`
-/

namespace A373474.P1567681493095071968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A122434 n * A373477 (n + 1)) ^ 2

end

end A373474.P1567681493095071968

namespace A373474

/-- `(A122434(n)*A373477(n+1))²` -/
def P1567681493095071968.Spec : Prop :=
  ∀ n, P1567681493095071968.a n = A373474 (n + 1)

end A373474

/-! ## A373474.P2268096008649346813

`A011655((n+1)*A359430(n+1))`
-/

namespace A373474.P2268096008649346813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 ((n + 1 : ℤ) * A359430 (n + 1)).toNat

end

end A373474.P2268096008649346813

namespace A373474

/-- `A011655((n+1)*A359430(n+1))` -/
def P2268096008649346813.Spec : Prop :=
  ∀ n, P2268096008649346813.a n = A373474 (n + 1)

end A373474

/-! ## A373474.P15879834703945678106

`A168182((n+1)*A359430(n+1))`
-/

namespace A373474.P15879834703945678106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168182 ((n + 1 : ℤ) * A359430 (n + 1)).toNat

end

end A373474.P15879834703945678106

namespace A373474

/-- `A168182((n+1)*A359430(n+1))` -/
def P15879834703945678106.Spec : Prop :=
  ∀ n, P15879834703945678106.a n = A373474 (n + 1)

end A373474

/-! ## A373474.P14780673931307534120

`A359430(n+1)-A267142(n+1)`
-/

namespace A373474.P14780673931307534120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359430 (n + 1) - A267142 (n + 1)

end

end A373474.P14780673931307534120

namespace A373474

/-- `A359430(n+1)-A267142(n+1)` -/
def P14780673931307534120.Spec : Prop :=
  ∀ n, P14780673931307534120.a n = A373474 (n + 1)

end A373474

/-! ## A373474.P1824828274224134287

`A204418(n+2)*A359430(n+1)`
-/

namespace A373474.P1824828274224134287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204418 (n + 2) * A359430 (n + 1)

end

end A373474.P1824828274224134287

namespace A373474

/-- `A204418(n+2)*A359430(n+1)` -/
def P1824828274224134287.Spec : Prop :=
  ∀ n, P1824828274224134287.a n = A373474 (n + 1)

end A373474

/-! ## A373474.P15273344310554938029

`and(∑[A024494(n+1)], A373371(n+1))`
-/

namespace A373474.P15273344310554938029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024494 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A373371 (n + 1))

end

end A373474.P15273344310554938029

namespace A373474

/-- `and(∑[A024494(n+1)], A373371(n+1))` -/
def P15273344310554938029.Spec : Prop :=
  ∀ n, P15273344310554938029.a n = A373474 (n + 1)

end A373474

/-! ## A373474.P12057402582662995284

`and(A052962(n), A373371(n+1))`
-/

namespace A373474.P12057402582662995284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052962 n) (A373371 (n + 1))

end

end A373474.P12057402582662995284

namespace A373474

/-- `and(A052962(n), A373371(n+1))` -/
def P12057402582662995284.Spec : Prop :=
  ∀ n, P12057402582662995284.a n = A373474 (n + 1)

end A373474

/-! ## A373474.P18428115352468181502

`and(A052962(n), A373477(n+1))`
-/

namespace A373474.P18428115352468181502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052962 n) (A373477 (n + 1))

end

end A373474.P18428115352468181502

namespace A373474

/-- `and(A052962(n), A373477(n+1))` -/
def P18428115352468181502.Spec : Prop :=
  ∀ n, P18428115352468181502.a n = A373474 (n + 1)

end A373474

/-! ## A373474.P502829405974377907

`and(A041033(n), A373371(n+1))`
-/

namespace A373474.P502829405974377907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A041033 n) (A373371 (n + 1))

end

end A373474.P502829405974377907

namespace A373474

/-- `and(A041033(n), A373371(n+1))` -/
def P502829405974377907.Spec : Prop :=
  ∀ n, P502829405974377907.a n = A373474 (n + 1)

end A373474

/-! ## A373474.P17185785935660051382

`and(A041033(n), A373477(n+1))`
-/

namespace A373474.P17185785935660051382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A041033 n) (A373477 (n + 1))

end

end A373474.P17185785935660051382

namespace A373474

/-- `and(A041033(n), A373477(n+1))` -/
def P17185785935660051382.Spec : Prop :=
  ∀ n, P17185785935660051382.a n = A373474 (n + 1)

end A373474

/-! ## A373474.P8030525063153857229

`and(A042069(n), A373371(n+1))`
-/

namespace A373474.P8030525063153857229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A042069 n) (A373371 (n + 1))

end

end A373474.P8030525063153857229

namespace A373474

/-- `and(A042069(n), A373371(n+1))` -/
def P8030525063153857229.Spec : Prop :=
  ∀ n, P8030525063153857229.a n = A373474 (n + 1)

end A373474

/-! ## A373474.P4179553085575059056

`and(A006130(n), A373371(n+1))`
-/

namespace A373474.P4179553085575059056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006130 n) (A373371 (n + 1))

end

end A373474.P4179553085575059056

namespace A373474

/-- `and(A006130(n), A373371(n+1))` -/
def P4179553085575059056.Spec : Prop :=
  ∀ n, P4179553085575059056.a n = A373474 (n + 1)

end A373474

/-! ## A373474.P8371687166412606226

`and(A006130(n), A373477(n+1))`
-/

namespace A373474.P8371687166412606226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006130 n) (A373477 (n + 1))

end

end A373474.P8371687166412606226

namespace A373474

/-- `and(A006130(n), A373477(n+1))` -/
def P8371687166412606226.Spec : Prop :=
  ∀ n, P8371687166412606226.a n = A373474 (n + 1)

end A373474

/-! ## A373474.P9274019973913862332

`and(A105963(n), A373371(n+1))`
-/

namespace A373474.P9274019973913862332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A105963 n) (A373371 (n + 1))

end

end A373474.P9274019973913862332

namespace A373474

/-- `and(A105963(n), A373371(n+1))` -/
def P9274019973913862332.Spec : Prop :=
  ∀ n, P9274019973913862332.a n = A373474 (n + 1)

end A373474

/-! ## A373474.P13372469598163922880

`and(A105963(n), A373477(n+1))`
-/

namespace A373474.P13372469598163922880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A105963 n) (A373477 (n + 1))

end

end A373474.P13372469598163922880

namespace A373474

/-- `and(A105963(n), A373477(n+1))` -/
def P13372469598163922880.Spec : Prop :=
  ∀ n, P13372469598163922880.a n = A373474 (n + 1)

end A373474

/-!
# A373475: 

The programs for A373475, there is no canonical definition to state claims against.
-/

/-! ## A373475.P946616257811291269

`eq[1, A373474(n+1)]+1`
-/

namespace A373475.P946616257811291269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373474 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A373475.P946616257811291269

/-! ## A373475.P1055685440858352316

`filter[A369644(n+1), A373371(#)]`
-/

namespace A373475.P1055685440858352316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373371 (f1 j).toNat = 1) n)

end

end A373475.P1055685440858352316

/-! ## A373475.P10295186590660762262

`filter[A369644(n+1), A373474(#)]`
-/

namespace A373475.P10295186590660762262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373474 (f1 j).toNat = 1) n)

end

end A373475.P10295186590660762262

/-! ## A373475.P4601994892277368353

`filter[A369644(n+1), A373477(#)]`
-/

namespace A373475.P4601994892277368353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373477 (f1 j).toNat = 1) n)

end

end A373475.P4601994892277368353

/-! ## A373475.P4876083907498401456

`∩[A369644(n+1), A373478(n+1)]`
-/

namespace A373475.P4876083907498401456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369644 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373478 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373475.P4876083907498401456

/-! ## A373475.P3916085537541409187

`filter[A373478(n+1), A369643(#)]`
-/

namespace A373475.P3916085537541409187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373478 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369643 (f1 j).toNat = 1) n)

end

end A373475.P3916085537541409187

/-! ## A373475.P675746652118651294

`filter[A373478(n+1), A373474(#)]`
-/

namespace A373475.P675746652118651294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373478 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373474 (f1 j).toNat = 1) n)

end

end A373475.P675746652118651294

/-! ## A373475.P12635386130210255221

`filter[A289142(n+1), A369643(#)]`
-/

namespace A373475.P12635386130210255221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369643 (f1 j).toNat = 1) n)

end

end A373475.P12635386130210255221

/-! ## A373475.P10343631554493246878

`filter[A289142(n+1), A373474(#)]`
-/

namespace A373475.P10343631554493246878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373474 (f1 j).toNat = 1) n)

end

end A373475.P10343631554493246878

/-! ## A373475.P5501539468553714626

`∩[A289142(n+1), A369644(n+1)]`
-/

namespace A373475.P5501539468553714626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289142 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369644 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373475.P5501539468553714626

/-! ## A373475.P11229336245134489361

`filter[A327863(n+2), A373474(#)]`
-/

namespace A373475.P11229336245134489361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327863 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373474 (f1 j).toNat = 1) n)

end

end A373475.P11229336245134489361

/-!
# A373477: a(n) = 1 if A001414(n) and A003415(n) are both multiples of 3, otherwise 0, where A001414 is the sum of prime factors with repetition, and A003415 is the arithmetic derivative.

The programs for A373477, the canonical program `A373477.P8315579709806562220` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373477 has offset 1).

The definition of A373477 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373477.P16021652842429764802

`char[A373478(n+1)-1]`
-/

namespace A373477.P16021652842429764802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373478 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A373477.P16021652842429764802

namespace A373477

/-- `char[A373478(n+1)-1]` -/
def P16021652842429764802.Spec : Prop :=
  ∀ n, (P16021652842429764802.a n : ℤ) = A373477 (n + 1)

end A373477

/-! ## A373477.P8315579709806562220

`A079978(A373364(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A373477

/-- `A079978(A373364(n+1))` -/
def P8315579709806562220.Spec : Prop :=
  ∀ n, P8315579709806562220.a n = A373477 (n + 1)

theorem P8315579709806562220.correct : P8315579709806562220.Spec := by
  intro n
  simp only [A373477, Nat.add_sub_cancel]

end A373477

/-! ## A373477.P10988575797734389913

`A359430(n+1)*A373371(n+1)`
-/

namespace A373477.P10988575797734389913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359430 (n + 1) * A373371 (n + 1)

end

end A373477.P10988575797734389913

namespace A373477

/-- `A359430(n+1)*A373371(n+1)` -/
def P10988575797734389913.Spec : Prop :=
  ∀ n, P10988575797734389913.a n = A373477 (n + 1)

end A373477

/-! ## A373477.P17254519975946104089

`A373371(n+1)*A374039(n+1)`
-/

namespace A373477.P17254519975946104089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373371 (n + 1) * A374039 (n + 1)

end

end A373477.P17254519975946104089

namespace A373477

/-- `A373371(n+1)*A374039(n+1)` -/
def P17254519975946104089.Spec : Prop :=
  ∀ n, P17254519975946104089.a n = A373477 (n + 1)

end A373477

/-! ## A373477.P6559985588996027735

`and(A100601(n+1), A373371(n+1))`
-/

namespace A373477.P6559985588996027735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A100601 (n + 1)) (A373371 (n + 1))

end

end A373477.P6559985588996027735

namespace A373477

/-- `and(A100601(n+1), A373371(n+1))` -/
def P6559985588996027735.Spec : Prop :=
  ∀ n, P6559985588996027735.a n = A373477 (n + 1)

end A373477

/-! ## A373477.P3738625810400265899

`and(A042452(n), A373371(n+1))`
-/

namespace A373477.P3738625810400265899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A042452 n) (A373371 (n + 1))

end

end A373477.P3738625810400265899

namespace A373477

/-- `and(A042452(n), A373371(n+1))` -/
def P3738625810400265899.Spec : Prop :=
  ∀ n, P3738625810400265899.a n = A373477 (n + 1)

end A373477

/-! ## A373477.P8259461792196520519

`and(A373371(n+1), A381682(n))`
-/

namespace A373477.P8259461792196520519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A373371 (n + 1)) (A381682 n)

end

end A373477.P8259461792196520519

namespace A373477

/-- `and(A373371(n+1), A381682(n))` -/
def P8259461792196520519.Spec : Prop :=
  ∀ n, P8259461792196520519.a n = A373477 (n + 1)

end A373477

/-!
# A373478: Numbers k such that A001414(k) and A003415(k) are both multiples of 3, where A001414 is the sum of prime factors with repetition, and A003415 is the arithmetic derivative.

The programs for A373478, the canonical program `A373478.P4147642878322058632` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373478 has offset 1).

The definition of A373478 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373478.P4147642878322058632

`record[(n+1)*A373477(n+1)]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A373478

/-- `record[(n+1)*A373477(n+1)]` -/
def P4147642878322058632.Spec : Prop :=
  ∀ n, P4147642878322058632.a n = A373478 (n + 1)

theorem P4147642878322058632.correct : P4147642878322058632.Spec := by
  intro n
  simp only [A373478, Nat.add_sub_cancel]

end A373478

/-! ## A373478.P18243428376690853235

`filter[A289142(n+1), A359430(#)]`
-/

namespace A373478.P18243428376690853235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359430 (f1 j).toNat = 1) n)

end

end A373478.P18243428376690853235

namespace A373478

/-- `filter[A289142(n+1), A359430(#)]` -/
def P18243428376690853235.Spec : Prop :=
  ∀ n, P18243428376690853235.a n = A373478 (n + 1)

end A373478

/-! ## A373478.P11830968270121888274

`filter[A289142(n+1), A373477(#)]`
-/

namespace A373478.P11830968270121888274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373477 (f1 j).toNat = 1) n)

end

end A373478.P11830968270121888274

namespace A373478

/-- `filter[A289142(n+1), A373477(#)]` -/
def P11830968270121888274.Spec : Prop :=
  ∀ n, P11830968270121888274.a n = A373478 (n + 1)

end A373478

/-! ## A373478.P12180687700866194638

`filter[A289142(n+1), A374039(#)]`
-/

namespace A373478.P12180687700866194638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374039 (f1 j).toNat = 1) n)

end

end A373478.P12180687700866194638

namespace A373478

/-- `filter[A289142(n+1), A374039(#)]` -/
def P12180687700866194638.Spec : Prop :=
  ∀ n, P12180687700866194638.a n = A373478 (n + 1)

end A373478

/-! ## A373478.P1682257887667603438

`filter[A327863(n+2), A373371(#)]`
-/

namespace A373478.P1682257887667603438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327863 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373371 (f1 j).toNat = 1) n)

end

end A373478.P1682257887667603438

namespace A373478

/-- `filter[A327863(n+2), A373371(#)]` -/
def P1682257887667603438.Spec : Prop :=
  ∀ n, P1682257887667603438.a n = A373478 (n + 1)

end A373478

/-! ## A373478.P10555187964084349157

`filter[A327863(n+2), A373477(#)]`
-/

namespace A373478.P10555187964084349157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327863 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373477 (f1 j).toNat = 1) n)

end

end A373478.P10555187964084349157

namespace A373478

/-- `filter[A327863(n+2), A373477(#)]` -/
def P10555187964084349157.Spec : Prop :=
  ∀ n, P10555187964084349157.a n = A373478 (n + 1)

end A373478

/-! ## A373478.P736543983462136610

`∩[A289142(n+1), A327863(n+1)]`
-/

namespace A373478.P736543983462136610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289142 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373478.P736543983462136610

namespace A373478

/-- `∩[A289142(n+1), A327863(n+1)]` -/
def P736543983462136610.Spec : Prop :=
  ∀ n, (P736543983462136610.a n : ℤ) = A373478 (n + 1)

end A373478

/-! ## A373478.P3661454226644735000

`∩[A074232(n+1), A289142(n+1)]`
-/

namespace A373478.P3661454226644735000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373478.P3661454226644735000

namespace A373478

/-- `∩[A074232(n+1), A289142(n+1)]` -/
def P3661454226644735000.Spec : Prop :=
  ∀ n, (P3661454226644735000.a n : ℤ) = A373478 (n + 1)

end A373478

/-! ## A373478.P146988314708083516

`filter[A134376(n+1), A373477(#)]`
-/

namespace A373478.P146988314708083516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134376 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373477 (f1 j).toNat = 1) n)

end

end A373478.P146988314708083516

namespace A373478

/-- `filter[A134376(n+1), A373477(#)]` -/
def P146988314708083516.Spec : Prop :=
  ∀ n, P146988314708083516.a n = A373478 (n + 1)

end A373478

/-! ## A373478.P12320965133525467376

`filter[A074232(n+1), A373371(#)]`
-/

namespace A373478.P12320965133525467376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074232 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373371 (f1 j).toNat = 1) n)

end

end A373478.P12320965133525467376

namespace A373478

/-- `filter[A074232(n+1), A373371(#)]` -/
def P12320965133525467376.Spec : Prop :=
  ∀ n, P12320965133525467376.a n = A373478 (n + 1)

end A373478

/-! ## A373478.P7650717031697460767

`filter[A074232(n+1), A373477(#)]`
-/

namespace A373478.P7650717031697460767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074232 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373477 (f1 j).toNat = 1) n)

end

end A373478.P7650717031697460767

namespace A373478

/-- `filter[A074232(n+1), A373477(#)]` -/
def P7650717031697460767.Spec : Prop :=
  ∀ n, P7650717031697460767.a n = A373478 (n + 1)

end A373478

/-! ## A373478.P1571768118584654627

`filter[A018252(n+1), A373477(#)]`
-/

namespace A373478.P1571768118584654627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373477 (f1 j).toNat = 1) n)

end

end A373478.P1571768118584654627

namespace A373478

/-- `filter[A018252(n+1), A373477(#)]` -/
def P1571768118584654627.Spec : Prop :=
  ∀ n, P1571768118584654627.a n = A373478 (n + 1)

end A373478

/-! ## A373478.P3972028452660186283

`filter[A056653(n+1), A373477(#)]`
-/

namespace A373478.P3972028452660186283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373477 (f1 j).toNat = 1) n)

end

end A373478.P3972028452660186283

namespace A373478

/-- `filter[A056653(n+1), A373477(#)]` -/
def P3972028452660186283.Spec : Prop :=
  ∀ n, P3972028452660186283.a n = A373478 (n + 1)

end A373478

/-! ## A373478.P14373892997717291143

`filter[A065090(n+1), A373477(#)]`
-/

namespace A373478.P14373892997717291143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373477 (f1 j).toNat = 1) n)

end

end A373478.P14373892997717291143

namespace A373478

/-- `filter[A065090(n+1), A373477(#)]` -/
def P14373892997717291143.Spec : Prop :=
  ∀ n, P14373892997717291143.a n = A373478 (n + 1)

end A373478

/-! ## A373478.P2151519577531395001

`filter[A141468(n+2), A373477(#)]`
-/

namespace A373478.P2151519577531395001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373477 (f1 j).toNat = 1) n)

end

end A373478.P2151519577531395001

namespace A373478

/-- `filter[A141468(n+2), A373477(#)]` -/
def P2151519577531395001.Spec : Prop :=
  ∀ n, P2151519577531395001.a n = A373478 (n + 1)

end A373478

/-! ## A373478.P7804248354176235315

`filter[A222307(2*n+1), A373477(#)]`
-/

namespace A373478.P7804248354176235315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222307 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373477 (f1 j).toNat = 1) n)

end

end A373478.P7804248354176235315

namespace A373478

/-- `filter[A222307(2*n+1), A373477(#)]` -/
def P7804248354176235315.Spec : Prop :=
  ∀ n, P7804248354176235315.a n = A373478 (n + 1)

end A373478

/-! ## A373478.P15068780373938479443

`filter[A171581(n+1), A373477(#)]`
-/

namespace A373478.P15068780373938479443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373477 (f1 j).toNat = 1) n)

end

end A373478.P15068780373938479443

namespace A373478

/-- `filter[A171581(n+1), A373477(#)]` -/
def P15068780373938479443.Spec : Prop :=
  ∀ n, P15068780373938479443.a n = A373478 (n + 1)

end A373478

/-! ## A373478.P13675842962217190733

`filter[A338924(n+1), A373477(#)]`
-/

namespace A373478.P13675842962217190733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373477 (f1 j).toNat = 1) n)

end

end A373478.P13675842962217190733

namespace A373478

/-- `filter[A338924(n+1), A373477(#)]` -/
def P13675842962217190733.Spec : Prop :=
  ∀ n, P13675842962217190733.a n = A373478 (n + 1)

end A373478

/-! ## A373478.P14770035686853837345

`filter[A173905(n+2), A373477(#)]`
-/

namespace A373478.P14770035686853837345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373477 (f1 j).toNat = 1) n)

end

end A373478.P14770035686853837345

namespace A373478

/-- `filter[A173905(n+2), A373477(#)]` -/
def P14770035686853837345.Spec : Prop :=
  ∀ n, P14770035686853837345.a n = A373478 (n + 1)

end A373478

/-!
# A373479: Numbers k such that A001414(k) and A003415(k) are both multiples of 3, but A083345(k) is not, where A001414 is the sum of prime factors with repetition, A003415 is the arithmetic derivative, and A083345(n) = A003415(n)/gcd(n,A003415(n)).

The programs for A373479, the canonical program `A373479.P13766568938091345809` is in `Seq.B009.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373479 has offset 1).

The definition of A373479 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373479.P9399148835007369389

`∩[A074232(n+1), A102217(n+1)]`
-/

namespace A373479.P9399148835007369389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373479.P9399148835007369389

namespace A373479

/-- `∩[A074232(n+1), A102217(n+1)]` -/
def P9399148835007369389.Spec : Prop :=
  ∀ n, (P9399148835007369389.a n : ℤ) = A373479 (n + 1)

end A373479

/-! ## A373479.P17468515799877653878

`∩[A102217(n+1), A314836(n)]`
-/

namespace A373479.P17468515799877653878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314836 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373479.P17468515799877653878

namespace A373479

/-- `∩[A102217(n+1), A314836(n)]` -/
def P17468515799877653878.Spec : Prop :=
  ∀ n, (P17468515799877653878.a n : ℤ) = A373479 (n + 1)

end A373479

/-! ## A373479.P3081305340522673246

`∩[A102217(n+1), A314829(n)]`
-/

namespace A373479.P3081305340522673246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314829 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373479.P3081305340522673246

namespace A373479

/-- `∩[A102217(n+1), A314829(n)]` -/
def P3081305340522673246.Spec : Prop :=
  ∀ n, (P3081305340522673246.a n : ℤ) = A373479 (n + 1)

end A373479

/-! ## A373479.P15154120551848976652

`∩[A102217(n+1), A314712(n)]`
-/

namespace A373479.P15154120551848976652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314712 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373479.P15154120551848976652

namespace A373479

/-- `∩[A102217(n+1), A314712(n)]` -/
def P15154120551848976652.Spec : Prop :=
  ∀ n, (P15154120551848976652.a n : ℤ) = A373479 (n + 1)

end A373479

/-! ## A373479.P14400618072217126940

`∩[A102217(n+1), A314830(n)]`
-/

namespace A373479.P14400618072217126940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314830 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373479.P14400618072217126940

namespace A373479

/-- `∩[A102217(n+1), A314830(n)]` -/
def P14400618072217126940.Spec : Prop :=
  ∀ n, (P14400618072217126940.a n : ℤ) = A373479 (n + 1)

end A373479

/-! ## A373479.P14284473109629728994

`filter[A102217(n+1), A267142(#)]`
-/

namespace A373479.P14284473109629728994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267142 (f1 j).toNat = 1) n)

end

end A373479.P14284473109629728994

namespace A373479

/-- `filter[A102217(n+1), A267142(#)]` -/
def P14284473109629728994.Spec : Prop :=
  ∀ n, P14284473109629728994.a n = A373479 (n + 1)

end A373479

/-! ## A373479.P13091634416751823919

`filter[A177927(n+1), A267142(#)]`
-/

namespace A373479.P13091634416751823919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177927 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267142 (f1 j).toNat = 1) n)

end

end A373479.P13091634416751823919

namespace A373479

/-- `filter[A177927(n+1), A267142(#)]` -/
def P13091634416751823919.Spec : Prop :=
  ∀ n, P13091634416751823919.a n = A373479 (n + 1)

end A373479

/-! ## A373479.P13766568938091345809

`filter[A373478(n+1), A079978(#)]`

The canonical program, it is in `Seq.B009.C001`.
-/

namespace A373479

/-- `filter[A373478(n+1), A079978(#)]` -/
def P13766568938091345809.Spec : Prop :=
  ∀ n, P13766568938091345809.a n = A373479 (n + 1)

theorem P13766568938091345809.correct : P13766568938091345809.Spec := by
  intro n
  simp only [A373479, Nat.add_sub_cancel]

end A373479

/-! ## A373479.P10035089746262546995

`filter[A289142(n+1), A267142(#)]`
-/

namespace A373479.P10035089746262546995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267142 (f1 j).toNat = 1) n)

end

end A373479.P10035089746262546995

namespace A373479

/-- `filter[A289142(n+1), A267142(#)]` -/
def P10035089746262546995.Spec : Prop :=
  ∀ n, P10035089746262546995.a n = A373479 (n + 1)

end A373479

/-! ## A373479.P15233928189137837507

`filter[A373478(n+1), A267142(#)]`
-/

namespace A373479.P15233928189137837507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373478 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267142 (f1 j).toNat = 1) n)

end

end A373479.P15233928189137837507

namespace A373479

/-- `filter[A373478(n+1), A267142(#)]` -/
def P15233928189137837507.Spec : Prop :=
  ∀ n, P15233928189137837507.a n = A373479 (n + 1)

end A373479

/-! ## A373479.P11545992245463877683

`filter[A373478(n+2), A173857(#)]`
-/

namespace A373479.P11545992245463877683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373478 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A173857 (f1 j).toNat = 1) n)

end

end A373479.P11545992245463877683

namespace A373479

/-- `filter[A373478(n+2), A173857(#)]` -/
def P11545992245463877683.Spec : Prop :=
  ∀ n, P11545992245463877683.a n = A373479 (n + 1)

end A373479

/-! ## A373479.P12381248491604961411

`filter[A373478(n+2), A329680(#)]`
-/

namespace A373479.P12381248491604961411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373478 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A329680 (f1 j).toNat = 1) n)

end

end A373479.P12381248491604961411

namespace A373479

/-- `filter[A373478(n+2), A329680(#)]` -/
def P12381248491604961411.Spec : Prop :=
  ∀ n, P12381248491604961411.a n = A373479 (n + 1)

end A373479

/-!
# A373480: a(n) = A003415(n) mod A001414(n), where A003415 is the arithmetic derivative, and A001414 is the sum of prime factors with multiplicity.

The programs for A373480, the canonical program `A373480.P17278960438644468592` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373480 has offset 2).

The definition of A373480 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A003415, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A373480.P17278960438644468592

`A003415(n+2)%A001414(n+2)`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A373480

/-- `A003415(n+2)%A001414(n+2)` -/
def P17278960438644468592.Spec : Prop :=
  ∀ n, P17278960438644468592.a n = A373480 (n + 2)

theorem P17278960438644468592.correct : P17278960438644468592.Spec := by
  intro n
  simp only [A373480, Nat.add_sub_cancel]

end A373480

/-! ## A373480.P11508286030806063756

`A395304(A157922(n+1))`
-/

namespace A373480.P11508286030806063756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395304 (A157922 (n + 1)).toNat

end

end A373480.P11508286030806063756

namespace A373480

/-- `A395304(A157922(n+1))` -/
def P11508286030806063756.Spec : Prop :=
  ∀ n, P11508286030806063756.a n = A373480 (n + 2)

end A373480

/-! ## A373480.P1740235433746992576

`A018843(A079540(n+2))`
-/

namespace A373480.P1740235433746992576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018843 (A079540 (n + 2)).toNat

end

end A373480.P1740235433746992576

namespace A373480

/-- `A018843(A079540(n+2))` -/
def P1740235433746992576.Spec : Prop :=
  ∀ n, P1740235433746992576.a n = A373480 (n + 2)

end A373480

/-! ## A373480.P9931020744414626216

`A030201(A170910(n+2))`
-/

namespace A373480.P9931020744414626216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030201 (A170910 (n + 2)).toNat

end

end A373480.P9931020744414626216

namespace A373480

/-- `A030201(A170910(n+2))` -/
def P9931020744414626216.Spec : Prop :=
  ∀ n, P9931020744414626216.a n = A373480 (n + 2)

end A373480

/-! ## A373480.P2000653204691294628

`A180026(A072501(n+2))`
-/

namespace A373480.P2000653204691294628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180026 (A072501 (n + 2)).toNat

end

end A373480.P2000653204691294628

namespace A373480

/-- `A180026(A072501(n+2))` -/
def P2000653204691294628.Spec : Prop :=
  ∀ n, P2000653204691294628.a n = A373480 (n + 2)

end A373480

/-!
# A373481: a(n) = 1 if A003415(n) is a multiple of A001414(n), otherwise 0, where A003415 is the arithmetic derivative, and A001414 is the sum of prime factors with multiplicity.

The programs for A373481, the canonical program `A373481.P1918728620852161106` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373481 has offset 1).

The definition of A373481 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373481.P4513722158417245779

`char[A373482(n+1)-1]`
-/

namespace A373481.P4513722158417245779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373482 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A373481.P4513722158417245779

namespace A373481

/-- `char[A373482(n+1)-1]` -/
def P4513722158417245779.Spec : Prop :=
  ∀ n, (P4513722158417245779.a n : ℤ) = A373481 (n + 1)

end A373481

/-! ## A373481.P1918728620852161106

`C(A373364(n+1), A001414(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A373481

/-- `C(A373364(n+1), A001414(n+1))` -/
def P1918728620852161106.Spec : Prop :=
  ∀ n, (P1918728620852161106.a n : ℤ) = A373481 (n + 1)

theorem P1918728620852161106.correct : P1918728620852161106.Spec := by
  intro n
  simp only [A373481, Nat.add_sub_cancel]

end A373481

/-! ## A373481.P8180695650158233447

`A000007(∑{p}[n+1, #*val(n+1, #)]-A373364(n+1))`
-/

namespace A373481.P8180695650158233447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (((∑ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p : ℕ) : ℤ) - A373364 (n + 1)).toNat

end

end A373481.P8180695650158233447

namespace A373481

/-- `A000007(∑{p}[n+1, #*val(n+1, #)]-A373364(n+1))` -/
def P8180695650158233447.Spec : Prop :=
  ∀ n, P8180695650158233447.a n = A373481 (n + 1)

end A373481

/-! ## A373481.P13412239235925430906

`A000007(A001414(n+1)-A373364(n+1))`
-/

namespace A373481.P13412239235925430906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A001414 (n + 1) - A373364 (n + 1)).toNat

end

end A373481.P13412239235925430906

namespace A373481

/-- `A000007(A001414(n+1)-A373364(n+1))` -/
def P13412239235925430906.Spec : Prop :=
  ∀ n, P13412239235925430906.a n = A373481 (n + 1)

end A373481

/-! ## A373481.P7888073178332750282

`A000007(xor(A001414(n+1), A373364(n+1)))`
-/

namespace A373481.P7888073178332750282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.xor (A001414 (n + 1)) (A373364 (n + 1))).toNat

end

end A373481.P7888073178332750282

namespace A373481

/-- `A000007(xor(A001414(n+1), A373364(n+1)))` -/
def P7888073178332750282.Spec : Prop :=
  ∀ n, P7888073178332750282.a n = A373481 (n + 1)

end A373481

/-! ## A373481.P14228425761555578494

`A174889(n+1)-A389905(n+1)`
-/

namespace A373481.P14228425761555578494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174889 (n + 1) - A389905 (n + 1)

end

end A373481.P14228425761555578494

namespace A373481

/-- `A174889(n+1)-A389905(n+1)` -/
def P14228425761555578494.Spec : Prop :=
  ∀ n, P14228425761555578494.a n = A373481 (n + 1)

end A373481

/-! ## A373481.P18292292936713336870

`A095190(A111220(n+1)+1)`
-/

namespace A373481.P18292292936713336870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095190 (A111220 (n + 1) + 1).toNat

end

end A373481.P18292292936713336870

namespace A373481

/-- `A095190(A111220(n+1)+1)` -/
def P18292292936713336870.Spec : Prop :=
  ∀ n, P18292292936713336870.a n = A373481 (n + 1)

end A373481

/-! ## A373481.P4330933005332218703

`A284530(A284476(n+1))%2`
-/

namespace A373481.P4330933005332218703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284530 (A284476 (n + 1)).toNat) 2

end

end A373481.P4330933005332218703

namespace A373481

/-- `A284530(A284476(n+1))%2` -/
def P4330933005332218703.Spec : Prop :=
  ∀ n, P4330933005332218703.a n = A373481 (n + 1)

end A373481

/-! ## A373481.P2983892734953496541

`A054635(A366901(n+1)²²)`
-/

namespace A373481.P2983892734953496541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054635 ((A366901 (n + 1) ^ 2) ^ 2).toNat

end

end A373481.P2983892734953496541

namespace A373481

/-- `A054635(A366901(n+1)²²)` -/
def P2983892734953496541.Spec : Prop :=
  ∀ n, P2983892734953496541.a n = A373481 (n + 1)

end A373481

/-! ## A373481.P8803972130175766473

`A285533(A016002(n+1)²+1)`
-/

namespace A373481.P8803972130175766473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285533 (A016002 (n + 1) ^ 2 + 1).toNat

end

end A373481.P8803972130175766473

namespace A373481

/-- `A285533(A016002(n+1)²+1)` -/
def P8803972130175766473.Spec : Prop :=
  ∀ n, P8803972130175766473.a n = A373481 (n + 1)

end A373481

/-!
# A373482: Numbers k for which A003415(k) is a multiple of A001414(k), where A003415 is the arithmetic derivative, and A001414 is the sum of prime factors with multiplicity.

The programs for A373482, the canonical program `A373482.P4247517866636361981` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373482 has offset 1).

The definition of A373482 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373482.P4247517866636361981

`eq[1, A373481(n+1)]+1`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A373482

/-- `eq[1, A373481(n+1)]+1` -/
def P4247517866636361981.Spec : Prop :=
  ∀ n, (P4247517866636361981.a n : ℤ) = A373482 (n + 1)

theorem P4247517866636361981.correct : P4247517866636361981.Spec := by
  intro n
  simp only [A373482, Nat.add_sub_cancel]

end A373482

/-! ## A373482.P14366751753170033384

`filter[A018252(n+1), A373481(#)]`
-/

namespace A373482.P14366751753170033384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373481 (f1 j).toNat = 1) n)

end

end A373482.P14366751753170033384

namespace A373482

/-- `filter[A018252(n+1), A373481(#)]` -/
def P14366751753170033384.Spec : Prop :=
  ∀ n, P14366751753170033384.a n = A373482 (n + 1)

end A373482

/-! ## A373482.P6324279764967737559

`filter[A065090(n+1), A373481(#)]`
-/

namespace A373482.P6324279764967737559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373481 (f1 j).toNat = 1) n)

end

end A373482.P6324279764967737559

namespace A373482

/-- `filter[A065090(n+1), A373481(#)]` -/
def P6324279764967737559.Spec : Prop :=
  ∀ n, P6324279764967737559.a n = A373482 (n + 1)

end A373482

/-! ## A373482.P10715456475097401482

`filter[A171581(n+1), A373481(#)]`
-/

namespace A373482.P10715456475097401482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373481 (f1 j).toNat = 1) n)

end

end A373482.P10715456475097401482

namespace A373482

/-- `filter[A171581(n+1), A373481(#)]` -/
def P10715456475097401482.Spec : Prop :=
  ∀ n, P10715456475097401482.a n = A373482 (n + 1)

end A373482

/-! ## A373482.P10846488973901613690

`filter[A141468(n+2), A373481(#)]`
-/

namespace A373482.P10846488973901613690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373481 (f1 j).toNat = 1) n)

end

end A373482.P10846488973901613690

namespace A373482

/-- `filter[A141468(n+2), A373481(#)]` -/
def P10846488973901613690.Spec : Prop :=
  ∀ n, P10846488973901613690.a n = A373482 (n + 1)

end A373482

/-! ## A373482.P11548496988759230146

`filter[A222307(2*n+1), A373481(#)]`
-/

namespace A373482.P11548496988759230146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222307 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373481 (f1 j).toNat = 1) n)

end

end A373482.P11548496988759230146

namespace A373482

/-- `filter[A222307(2*n+1), A373481(#)]` -/
def P11548496988759230146.Spec : Prop :=
  ∀ n, P11548496988759230146.a n = A373482 (n + 1)

end A373482

/-! ## A373482.P5259300724052028529

`filter[A338924(n+1), A373481(#)]`
-/

namespace A373482.P5259300724052028529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373481 (f1 j).toNat = 1) n)

end

end A373482.P5259300724052028529

namespace A373482

/-- `filter[A338924(n+1), A373481(#)]` -/
def P5259300724052028529.Spec : Prop :=
  ∀ n, P5259300724052028529.a n = A373482 (n + 1)

end A373482

/-! ## A373482.P14043380833179047466

`filter[A173905(n+2), A373481(#)]`
-/

namespace A373482.P14043380833179047466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373481 (f1 j).toNat = 1) n)

end

end A373482.P14043380833179047466

namespace A373482

/-- `filter[A173905(n+2), A373481(#)]` -/
def P14043380833179047466.Spec : Prop :=
  ∀ n, P14043380833179047466.a n = A373482 (n + 1)

end A373482

/-! ## A373482.P5599595095818858413

`filter[A073900(n+1), A373481(#)]`
-/

namespace A373482.P5599595095818858413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373481 (f1 j).toNat = 1) n)

end

end A373482.P5599595095818858413

namespace A373482

/-- `filter[A073900(n+1), A373481(#)]` -/
def P5599595095818858413.Spec : Prop :=
  ∀ n, P5599595095818858413.a n = A373482 (n + 1)

end A373482

/-! ## A373482.P2455859354828134199

`filter[A073899(n+1), A373481(#)]`
-/

namespace A373482.P2455859354828134199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373481 (f1 j).toNat = 1) n)

end

end A373482.P2455859354828134199

namespace A373482

/-- `filter[A073899(n+1), A373481(#)]` -/
def P2455859354828134199.Spec : Prop :=
  ∀ n, P2455859354828134199.a n = A373482 (n + 1)

end A373482

/-! ## A373482.P6380642705596394919

`filter[A171085(n+1), A373481(#)]`
-/

namespace A373482.P6380642705596394919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171085 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373481 (f1 j).toNat = 1) n)

end

end A373482.P6380642705596394919

namespace A373482

/-- `filter[A171085(n+1), A373481(#)]` -/
def P6380642705596394919.Spec : Prop :=
  ∀ n, P6380642705596394919.a n = A373482 (n + 1)

end A373482

/-! ## A373482.P14182350043796348692

`filter[A121543(n+1), A373481(#)]`
-/

namespace A373482.P14182350043796348692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373481 (f1 j).toNat = 1) n)

end

end A373482.P14182350043796348692

namespace A373482

/-- `filter[A121543(n+1), A373481(#)]` -/
def P14182350043796348692.Spec : Prop :=
  ∀ n, P14182350043796348692.a n = A373482 (n + 1)

end A373482

/-! ## A373482.P13943908661298925994

`filter[A379053(n+1), A373481(#)]`
-/

namespace A373482.P13943908661298925994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373481 (f1 j).toNat = 1) n)

end

end A373482.P13943908661298925994

namespace A373482

/-- `filter[A379053(n+1), A373481(#)]` -/
def P13943908661298925994.Spec : Prop :=
  ∀ n, P13943908661298925994.a n = A373482 (n + 1)

end A373482

/-! ## A373482.P16836574761655115862

`filter[A101513(n+1), A373481(#)]`
-/

namespace A373482.P16836574761655115862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373481 (f1 j).toNat = 1) n)

end

end A373482.P16836574761655115862

namespace A373482

/-- `filter[A101513(n+1), A373481(#)]` -/
def P16836574761655115862.Spec : Prop :=
  ∀ n, P16836574761655115862.a n = A373482 (n + 1)

end A373482

/-! ## A373482.P2922864307577468996

`filter[A089088(n), A373481(#)]`
-/

namespace A373482.P2922864307577468996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373481 (f1 j).toNat = 1) n)

end

end A373482.P2922864307577468996

namespace A373482

/-- `filter[A089088(n), A373481(#)]` -/
def P2922864307577468996.Spec : Prop :=
  ∀ n, P2922864307577468996.a n = A373482 (n + 1)

end A373482

/-! ## A373482.P6898685847552465401

`filter[A137621(n+1), A373481(#)]`
-/

namespace A373482.P6898685847552465401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137621 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373481 (f1 j).toNat = 1) n)

end

end A373482.P6898685847552465401

namespace A373482

/-- `filter[A137621(n+1), A373481(#)]` -/
def P6898685847552465401.Spec : Prop :=
  ∀ n, P6898685847552465401.a n = A373482 (n + 1)

end A373482

/-! ## A373482.P16975746348826806791

`filter[A376198(n+1), A373481(#)]`
-/

namespace A373482.P16975746348826806791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376198 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373481 (f1 j).toNat = 1) n)

end

end A373482.P16975746348826806791

namespace A373482

/-- `filter[A376198(n+1), A373481(#)]` -/
def P16975746348826806791.Spec : Prop :=
  ∀ n, P16975746348826806791.a n = A373482 (n + 1)

end A373482

/-! ## A373482.P7797364633240579722

`filter[A156657(n+2), A373481(#)]`
-/

namespace A373482.P7797364633240579722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156657 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373481 (f1 j).toNat = 1) n)

end

end A373482.P7797364633240579722

namespace A373482

/-- `filter[A156657(n+2), A373481(#)]` -/
def P7797364633240579722.Spec : Prop :=
  ∀ n, P7797364633240579722.a n = A373482 (n + 1)

end A373482

/-! ## A373482.P1021861550648242993

`filter[A045762(n+2), A373481(#)]`
-/

namespace A373482.P1021861550648242993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045762 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373481 (f1 j).toNat = 1) n)

end

end A373482.P1021861550648242993

namespace A373482

/-- `filter[A045762(n+2), A373481(#)]` -/
def P1021861550648242993.Spec : Prop :=
  ∀ n, P1021861550648242993.a n = A373482 (n + 1)

end A373482

/-! ## A373482.P5785880345012724650

`filter[A133398(n+1), A373481(#)]`
-/

namespace A373482.P5785880345012724650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133398 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373481 (f1 j).toNat = 1) n)

end

end A373482.P5785880345012724650

namespace A373482

/-- `filter[A133398(n+1), A373481(#)]` -/
def P5785880345012724650.Spec : Prop :=
  ∀ n, P5785880345012724650.a n = A373482 (n + 1)

end A373482

/-!
# A373483: a(n) = 1 if A083345(n) and A276085(n) are both multiples of 3, otherwise 0, where A276085 is fully additive with a(p) = p#/p, and A083345 is the numerator of the fully additive function with a(p) = 1/p.

The programs for A373483, the canonical program `A373483.P14575266036713427501` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373483 has offset 1).

The definition of A373483 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A369643, A372573, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A373483.P14575266036713427501

`A369643(n+1)*A372573(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A373483

/-- `A369643(n+1)*A372573(n+1)` -/
def P14575266036713427501.Spec : Prop :=
  ∀ n, P14575266036713427501.a n = A373483 (n + 1)

theorem P14575266036713427501.correct : P14575266036713427501.Spec := by
  intro n
  simp only [A373483, Nat.add_sub_cancel]

end A373483

/-! ## A373483.P11306473271453522057

`A369643(n+1)*A373143(n+1)`
-/

namespace A373483.P11306473271453522057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369643 (n + 1) * A373143 (n + 1)

end

end A373483.P11306473271453522057

namespace A373483

/-- `A369643(n+1)*A373143(n+1)` -/
def P11306473271453522057.Spec : Prop :=
  ∀ n, P11306473271453522057.a n = A373483 (n + 1)

end A373483

/-! ## A373483.P8878244875203620444

`A369643(A000265(n+1))*A369643(n+1)`
-/

namespace A373483.P8878244875203620444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369643 (A000265 (n + 1)).toNat * A369643 (n + 1)

end

end A373483.P8878244875203620444

namespace A373483

/-- `A369643(A000265(n+1))*A369643(n+1)` -/
def P8878244875203620444.Spec : Prop :=
  ∀ n, P8878244875203620444.a n = A373483 (n + 1)

end A373483

/-! ## A373483.P9392730023802064793

`A369643(A006519(n+1))*A369643(n+1)`
-/

namespace A373483.P9392730023802064793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369643 (A006519 (n + 1)).toNat * A369643 (n + 1)

end

end A373483.P9392730023802064793

namespace A373483

/-- `A369643(A006519(n+1))*A369643(n+1)` -/
def P9392730023802064793.Spec : Prop :=
  ∀ n, P9392730023802064793.a n = A373483 (n + 1)

end A373483

/-! ## A373483.P10154786590377457141

`A373485(gcd(A063534(n+1), A373485(n+1)))`
-/

namespace A373483.P10154786590377457141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373485 (Int.gcd (A063534 (n + 1)) (A373485 (n + 1)))

end

end A373483.P10154786590377457141

namespace A373483

/-- `A373485(gcd(A063534(n+1), A373485(n+1)))` -/
def P10154786590377457141.Spec : Prop :=
  ∀ n, P10154786590377457141.a n = A373483 (n + 1)

end A373483

/-! ## A373483.P17357223392229928184

`and(1, A001611(A373485(n+1)))`
-/

namespace A373483.P17357223392229928184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A001611 (A373485 (n + 1)).toNat)

end

end A373483.P17357223392229928184

namespace A373483

/-- `and(1, A001611(A373485(n+1)))` -/
def P17357223392229928184.Spec : Prop :=
  ∀ n, P17357223392229928184.a n = A373483 (n + 1)

end A373483

/-! ## A373483.P8712174190834615433

`and(A248903(A002326(n)), A373143(n+1))`
-/

namespace A373483.P8712174190834615433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A248903 (A002326 n).toNat) (A373143 (n + 1))

end

end A373483.P8712174190834615433

namespace A373483

/-- `and(A248903(A002326(n)), A373143(n+1))` -/
def P8712174190834615433.Spec : Prop :=
  ∀ n, P8712174190834615433.a n = A373483 (n + 1)

end A373483

/-! ## A373483.P6937276097670548299

`and(A087474(n), A133100(n))`
-/

namespace A373483.P6937276097670548299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A087474 n) (A133100 n)

end

end A373483.P6937276097670548299

namespace A373483

/-- `and(A087474(n), A133100(n))` -/
def P6937276097670548299.Spec : Prop :=
  ∀ n, P6937276097670548299.a n = A373483 (n + 1)

end A373483

/-! ## A373483.P15112843197662886118

`A010057(3*A345167(n+1))`
-/

namespace A373483.P15112843197662886118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (3 * A345167 (n + 1)).toNat

end

end A373483.P15112843197662886118

namespace A373483

/-- `A010057(3*A345167(n+1))` -/
def P15112843197662886118.Spec : Prop :=
  ∀ n, P15112843197662886118.a n = A373483 (n + 1)

end A373483

/-! ## A373483.P10864102112189534676

`A010815(A052221(n+1))^A089221(n+1)`
-/

namespace A373483.P10864102112189534676
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010815 (A052221 (n + 1)).toNat : ℚ) ^ (A089221 (n + 1) : ℤ)

end

end A373483.P10864102112189534676

namespace A373483

/-- `A010815(A052221(n+1))^A089221(n+1)` -/
def P10864102112189534676.Spec : Prop :=
  ∀ n, P10864102112189534676.a n = (A373483 (n + 1) : ℚ)

end A373483

/-!
# A373484: Numbers k such that A083345(k) and A276085(k) are both multiples of 3, where A276085 is fully additive with a(p) = p#/p, and A083345 is the numerator of the fully additive function with a(p) = 1/p.

The programs for A373484, the canonical program `A373484.P4127833566770641398` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373484 has offset 1).

The definition of A373484 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8374 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373484.P4127833566770641398

`filter[A373144(n+1), A369643(#)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A373484

/-- `filter[A373144(n+1), A369643(#)]` -/
def P4127833566770641398.Spec : Prop :=
  ∀ n, P4127833566770641398.a n = A373484 (n + 1)

theorem P4127833566770641398.correct : P4127833566770641398.Spec := by
  intro n
  simp only [A373484, Nat.add_sub_cancel]

end A373484

/-! ## A373484.P10063662657126369804

`filter[A373144(n+1), A373483(#)]`
-/

namespace A373484.P10063662657126369804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373483 (f1 j).toNat = 1) n)

end

end A373484.P10063662657126369804

namespace A373484

/-- `filter[A373144(n+1), A373483(#)]` -/
def P10063662657126369804.Spec : Prop :=
  ∀ n, P10063662657126369804.a n = A373484 (n + 1)

end A373484

/-! ## A373484.P4146158743613276899

`lt[0, A373483(n+1)]+1`
-/

namespace A373484.P4146158743613276899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373483 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A373484.P4146158743613276899

namespace A373484

/-- `lt[0, A373483(n+1)]+1` -/
def P4146158743613276899.Spec : Prop :=
  ∀ n, (P4146158743613276899.a n : ℤ) = A373484 (n + 1)

end A373484

/-! ## A373484.P9824665980241524063

`lt[A373485(n+1)%3, 1]+1`
-/

namespace A373484.P9824665980241524063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A373485 (n + 1)) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A373484.P9824665980241524063

namespace A373484

/-- `lt[A373485(n+1)%3, 1]+1` -/
def P9824665980241524063.Spec : Prop :=
  ∀ n, (P9824665980241524063.a n : ℤ) = A373484 (n + 1)

end A373484

/-! ## A373484.P12716419517673519107

`filter[A369644(n+1), A372573(#)]`
-/

namespace A373484.P12716419517673519107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A372573 (f1 j).toNat = 1) n)

end

end A373484.P12716419517673519107

namespace A373484

/-- `filter[A369644(n+1), A372573(#)]` -/
def P12716419517673519107.Spec : Prop :=
  ∀ n, P12716419517673519107.a n = A373484 (n + 1)

end A373484

/-! ## A373484.P14393278233165663836

`filter[A369644(n+1), A373143(#)]`
-/

namespace A373484.P14393278233165663836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373143 (f1 j).toNat = 1) n)

end

end A373484.P14393278233165663836

namespace A373484

/-- `filter[A369644(n+1), A373143(#)]` -/
def P14393278233165663836.Spec : Prop :=
  ∀ n, P14393278233165663836.a n = A373484 (n + 1)

end A373484

/-! ## A373484.P5082965430070807664

`filter[A369644(n+1), A373157(#)]`
-/

namespace A373484.P5082965430070807664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373157 (f1 j).toNat = 1) n)

end

end A373484.P5082965430070807664

namespace A373484

/-- `filter[A369644(n+1), A373157(#)]` -/
def P5082965430070807664.Spec : Prop :=
  ∀ n, P5082965430070807664.a n = A373484 (n + 1)

end A373484

/-! ## A373484.P18339172436147372114

`filter[A369644(n+1), A373483(#)]`
-/

namespace A373484.P18339172436147372114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373483 (f1 j).toNat = 1) n)

end

end A373484.P18339172436147372114

namespace A373484

/-- `filter[A369644(n+1), A373483(#)]` -/
def P18339172436147372114.Spec : Prop :=
  ∀ n, P18339172436147372114.a n = A373484 (n + 1)

end A373484

/-! ## A373484.P13790969971863344098

`filter[A369644(n+1), A374041(#)]`
-/

namespace A373484.P13790969971863344098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374041 (f1 j).toNat = 1) n)

end

end A373484.P13790969971863344098

namespace A373484

/-- `filter[A369644(n+1), A374041(#)]` -/
def P13790969971863344098.Spec : Prop :=
  ∀ n, P13790969971863344098.a n = A373484 (n + 1)

end A373484

/-! ## A373484.P10569790906292145566

`∩[A369644(n+1), A373144(n+1)]`
-/

namespace A373484.P10569790906292145566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369644 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373484.P10569790906292145566

namespace A373484

/-- `∩[A369644(n+1), A373144(n+1)]` -/
def P10569790906292145566.Spec : Prop :=
  ∀ n, (P10569790906292145566.a n : ℤ) = A373484 (n + 1)

end A373484

/-! ## A373484.P9890842171298970816

`filter[A392593(n+1), A369643(#)]`
-/

namespace A373484.P9890842171298970816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392593 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369643 (f1 j).toNat = 1) n)

end

end A373484.P9890842171298970816

namespace A373484

/-- `filter[A392593(n+1), A369643(#)]` -/
def P9890842171298970816.Spec : Prop :=
  ∀ n, P9890842171298970816.a n = A373484 (n + 1)

end A373484

/-! ## A373484.P2115014150233078614

`filter[A392593(n+1), A373483(#)]`
-/

namespace A373484.P2115014150233078614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392593 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373483 (f1 j).toNat = 1) n)

end

end A373484.P2115014150233078614

namespace A373484

/-- `filter[A392593(n+1), A373483(#)]` -/
def P2115014150233078614.Spec : Prop :=
  ∀ n, P2115014150233078614.a n = A373484 (n + 1)

end A373484

/-! ## A373484.P3767488679945916499

`∩[A369644(n+1), A392593(n+1)]`
-/

namespace A373484.P3767488679945916499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369644 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373484.P3767488679945916499

namespace A373484

/-- `∩[A369644(n+1), A392593(n+1)]` -/
def P3767488679945916499.Spec : Prop :=
  ∀ n, (P3767488679945916499.a n : ℤ) = A373484 (n + 1)

end A373484

/-! ## A373484.P15426779400527495862

`filter[A327863(n+2), A373483(#)]`
-/

namespace A373484.P15426779400527495862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327863 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373483 (f1 j).toNat = 1) n)

end

end A373484.P15426779400527495862

namespace A373484

/-- `filter[A327863(n+2), A373483(#)]` -/
def P15426779400527495862.Spec : Prop :=
  ∀ n, P15426779400527495862.a n = A373484 (n + 1)

end A373484

/-! ## A373484.P13543929597232255632

`∩[A369644(n+1), A374042(n+1)]`
-/

namespace A373484.P13543929597232255632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369644 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374042 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373484.P13543929597232255632

namespace A373484

/-- `∩[A369644(n+1), A374042(n+1)]` -/
def P13543929597232255632.Spec : Prop :=
  ∀ n, (P13543929597232255632.a n : ℤ) = A373484 (n + 1)

end A373484

/-! ## A373484.P17252732707275577080

`filter[A374042(n+1), A369643(#)]`
-/

namespace A373484.P17252732707275577080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374042 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369643 (f1 j).toNat = 1) n)

end

end A373484.P17252732707275577080

namespace A373484

/-- `filter[A374042(n+1), A369643(#)]` -/
def P17252732707275577080.Spec : Prop :=
  ∀ n, P17252732707275577080.a n = A373484 (n + 1)

end A373484

/-! ## A373484.P496744662451530271

`filter[A374042(n+1), A373483(#)]`
-/

namespace A373484.P496744662451530271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374042 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373483 (f1 j).toNat = 1) n)

end

end A373484.P496744662451530271

namespace A373484

/-- `filter[A374042(n+1), A373483(#)]` -/
def P496744662451530271.Spec : Prop :=
  ∀ n, P496744662451530271.a n = A373484 (n + 1)

end A373484

/-! ## A373484.P1271942791673373313

`∩[A339746(n+1), A369644(n+1)]`
-/

namespace A373484.P1271942791673373313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339746 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369644 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373484.P1271942791673373313

namespace A373484

/-- `∩[A339746(n+1), A369644(n+1)]` -/
def P1271942791673373313.Spec : Prop :=
  ∀ n, (P1271942791673373313.a n : ℤ) = A373484 (n + 1)

end A373484

/-! ## A373484.P16952440898724241761

`∩[A191257(n+1), A369644(n+1)]`
-/

namespace A373484.P16952440898724241761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191257 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369644 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373484.P16952440898724241761

namespace A373484

/-- `∩[A191257(n+1), A369644(n+1)]` -/
def P16952440898724241761.Spec : Prop :=
  ∀ n, (P16952440898724241761.a n : ℤ) = A373484 (n + 1)

end A373484

/-! ## A373484.P9870685984339771664

`filter[A267894(n+1), A373483(#)]`
-/

namespace A373484.P9870685984339771664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267894 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373483 (f1 j).toNat = 1) n)

end

end A373484.P9870685984339771664

namespace A373484

/-- `filter[A267894(n+1), A373483(#)]` -/
def P9870685984339771664.Spec : Prop :=
  ∀ n, P9870685984339771664.a n = A373484 (n + 1)

end A373484

/-!
# A373485: a(n) = gcd(A083345(n), A276085(n)), where A276085 is fully additive with a(p) = p#/p, and A083345 is the numerator of the fully additive function with a(p) = 1/p.

The programs for A373485, there is no canonical definition to state claims against.
-/

/-! ## A373485.P729201116521387286

`gcd(A083345(n+1), A276085(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373485.P729201116521387286
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A083345 (n + 1)) (A276085 (n + 1))

end

end A373485.P729201116521387286

/-! ## A373485.P4582518869233682919

`gcd(A328769(n+1)/(n+1), ∑{d}[n+1, #*A369455((n+1)/#)])`
-/

namespace A373485.P4582518869233682919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A328769 (n + 1) : ℚ) / (n + 1 : ℚ))) (∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A369455 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat)

end

end A373485.P4582518869233682919

/-! ## A373485.P860844900475727402

`gcd(A328769(n+1)/(n+1), A342001(n+1)/A369008(n+1))`
-/

namespace A373485.P860844900475727402
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A328769 (n + 1) : ℚ) / (n + 1 : ℚ))) (SequenceMachineLib.roundAway ((A342001 (n + 1) : ℚ) / (A369008 (n + 1) : ℚ)))

end

end A373485.P860844900475727402

/-! ## A373485.P5757268228606243401

`gcd(A083345(n+1), A160812(A339512(n)))`
-/

namespace A373485.P5757268228606243401
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A083345 (n + 1)) (A160812 (A339512 n).toNat)

end

end A373485.P5757268228606243401

/-! ## A373485.P4512691563057282530

`and(A078873(A243047(n+1)), A083345(n+1))`
-/

namespace A373485.P4512691563057282530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A078873 (A243047 (n + 1)).toNat) (A083345 (n + 1))

end

end A373485.P4512691563057282530

/-!
# A373486: a(n) = 1 if A276085(n) is a multiple of A003415(n), otherwise 0, where A003415 is the arithmetic derivative and A276085 is the primorial base log-function.

The programs for A373486, there is no canonical definition to state claims against.
-/

/-! ## A373486.P16729080409451835558

`char[A373487(n+1)-1]`
-/

namespace A373486.P16729080409451835558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373487 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A373486.P16729080409451835558

/-! ## A373486.P8369339152337429058

`and(A172120(n+1), A393067(n+1))`
-/

namespace A373486.P8369339152337429058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A172120 (n + 1)) (A393067 (n + 1))

end

end A373486.P8369339152337429058

/-! ## A373486.P14551264385520505888

`and(A113397(n+1), A393067(n+1))`
-/

namespace A373486.P14551264385520505888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A113397 (n + 1)) (A393067 (n + 1))

end

end A373486.P14551264385520505888

/-! ## A373486.P3798389183562051627

`A089801(A316354(2*(n+1))%A067538(n+1))`
-/

namespace A373486.P3798389183562051627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089801 (Int.tmod (A316354 (2 * (n + 1))) (A067538 (n + 1))).toNat

end

end A373486.P3798389183562051627

/-! ## A373486.P10316134044885198188

`and(A371374(n+1), A393067(n+1))`
-/

namespace A373486.P10316134044885198188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A371374 (n + 1)) (A393067 (n + 1))

end

end A373486.P10316134044885198188

/-!
# A373487: Numbers k such that A276085(k) is a multiple of A003415(k), where A003415 is the arithmetic derivative and A276085 is the primorial base log-function.

The programs for A373487, there is no canonical definition to state claims against.
-/

/-! ## A373487.P12079239083756637001

`record[(n+1)*A373486(n+1)]`
-/

namespace A373487.P12079239083756637001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A373486 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A373487.P12079239083756637001

/-! ## A373487.P12276944816495053193

`∪[A000040(n+1), A373488(n+1)]`
-/

namespace A373487.P12276944816495053193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373488 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A373487.P12276944816495053193

/-! ## A373487.P7666972687717476809

`∪[A008578(n+1), A373488(n+1)]`
-/

namespace A373487.P7666972687717476809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373488 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A373487.P7666972687717476809

/-! ## A373487.P6506238918258332978

`eq[1, A373486(n+1)]+1`
-/

namespace A373487.P6506238918258332978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373486 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A373487.P6506238918258332978

/-! ## A373487.P10755994440496944328

`filter[A143719(n+1), A373486(#)]`
-/

namespace A373487.P10755994440496944328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143719 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373486 (f1 j).toNat = 1) n)

end

end A373487.P10755994440496944328

/-! ## A373487.P9010732086023476266

`filter[A078779(n+1), A373486(#)]`
-/

namespace A373487.P9010732086023476266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078779 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373486 (f1 j).toNat = 1) n)

end

end A373487.P9010732086023476266

/-! ## A373487.P14799370134639624023

`filter[A121684(n+1), A373486(#)]`
-/

namespace A373487.P14799370134639624023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373486 (f1 j).toNat = 1) n)

end

end A373487.P14799370134639624023

/-! ## A373487.P5749328266851380314

`filter[A047504(n+1), A373486(#)]`
-/

namespace A373487.P5749328266851380314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373486 (f1 j).toNat = 1) n)

end

end A373487.P5749328266851380314

/-! ## A373487.P12534562153002199992

`filter[A263837(n+1), A373486(#)]`
-/

namespace A373487.P12534562153002199992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263837 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373486 (f1 j).toNat = 1) n)

end

end A373487.P12534562153002199992

/-! ## A373487.P5877319959264564429

`filter[A121176(n+1), A373486(#)]`
-/

namespace A373487.P5877319959264564429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121176 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373486 (f1 j).toNat = 1) n)

end

end A373487.P5877319959264564429

/-! ## A373487.P9847028879158618710

`filter[A094520(n+1), A373486(#)]`
-/

namespace A373487.P9847028879158618710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094520 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373486 (f1 j).toNat = 1) n)

end

end A373487.P9847028879158618710

/-! ## A373487.P13439003394208084128

`filter[A285100(n+1), A373486(#)]`
-/

namespace A373487.P13439003394208084128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373486 (f1 j).toNat = 1) n)

end

end A373487.P13439003394208084128

/-! ## A373487.P6743030960967251668

`filter[A228869(n+1), A373486(#)]`
-/

namespace A373487.P6743030960967251668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228869 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373486 (f1 j).toNat = 1) n)

end

end A373487.P6743030960967251668

/-! ## A373487.P10787854464430497176

`filter[A048107(n+1), A373486(#)]`
-/

namespace A373487.P10787854464430497176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048107 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373486 (f1 j).toNat = 1) n)

end

end A373487.P10787854464430497176

/-! ## A373487.P6221026623576245206

`filter[A122132(n+1), A373486(#)]`
-/

namespace A373487.P6221026623576245206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122132 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373486 (f1 j).toNat = 1) n)

end

end A373487.P6221026623576245206

/-! ## A373487.P12300112051078450000

`filter[A353511(n+1), A373486(#)]`
-/

namespace A373487.P12300112051078450000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373486 (f1 j).toNat = 1) n)

end

end A373487.P12300112051078450000

/-! ## A373487.P9860580500237658036

`filter[A179983(n+1), A373486(#)]`
-/

namespace A373487.P9860580500237658036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179983 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373486 (f1 j).toNat = 1) n)

end

end A373487.P9860580500237658036

/-! ## A373487.P14968316300551114269

`filter[A004709(n+1), A373486(#)]`
-/

namespace A373487.P14968316300551114269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373486 (f1 j).toNat = 1) n)

end

end A373487.P14968316300551114269

/-! ## A373487.P16150804113894640701

`filter[A047253(n+1), A373486(#)]`
-/

namespace A373487.P16150804113894640701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047253 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373486 (f1 j).toNat = 1) n)

end

end A373487.P16150804113894640701

/-! ## A373487.P5577471369596644866

`filter[A138309(n+1), A373486(#)]`
-/

namespace A373487.P5577471369596644866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138309 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373486 (f1 j).toNat = 1) n)

end

end A373487.P5577471369596644866

/-!
# A373488: Nonprime natural numbers k such that A276085(k) is a multiple of A003415(k), where A003415 is the arithmetic derivative and A276085 is the primorial base log-function.

The programs for A373488, there is no canonical definition to state claims against.
-/

/-! ## A373488.P4849159073643655447

`filter[A373487(n+1), A005171(#)]`
-/

namespace A373488.P4849159073643655447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A373488.P4849159073643655447

/-! ## A373488.P2540170833372316752

`filter[A373487(n+1), A292438(#)]`
-/

namespace A373488.P2540170833372316752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A373488.P2540170833372316752

/-! ## A373488.P12669057390907329430

`∩[A018252(n+1), A373487(n+1)]`
-/

namespace A373488.P12669057390907329430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373488.P12669057390907329430

/-! ## A373488.P6031206256838959335

`∩[A141468(n+1), A373487(n+1)]`
-/

namespace A373488.P6031206256838959335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373488.P6031206256838959335

/-! ## A373488.P6811721722510177745

`∩[A069169(n+1), A373487(n+1)]`
-/

namespace A373488.P6811721722510177745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373488.P6811721722510177745

/-! ## A373488.P8258879835350048023

`∩[A373487(n+1), A377880(n+1)]`
-/

namespace A373488.P8258879835350048023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377880 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373488.P8258879835350048023

/-! ## A373488.P10336961688970689385

`∩[A231879(n+1), A373487(n+1)]`
-/

namespace A373488.P10336961688970689385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373488.P10336961688970689385

/-! ## A373488.P3062346284560640208

`∩[A164276(n+1), A373487(n+1)]`
-/

namespace A373488.P3062346284560640208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164276 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373488.P3062346284560640208

/-! ## A373488.P17271295548164145757

`∩[A359870(n+1), A373487(n+1)]`
-/

namespace A373488.P17271295548164145757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373488.P17271295548164145757

/-! ## A373488.P17275284089523207433

`∩[A361102(n+1), A373487(n+1)]`
-/

namespace A373488.P17275284089523207433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373488.P17275284089523207433

/-! ## A373488.P1629377543167441678

`∩[A056653(n+1), A373487(n+1)]`
-/

namespace A373488.P1629377543167441678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373488.P1629377543167441678

/-! ## A373488.P13783785775893350102

`∩[A139118(n+1), A373487(n+1)]`
-/

namespace A373488.P13783785775893350102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373488.P13783785775893350102

/-!
# A373489: a(n) = 1 if A003415(n) is a multiple of A276085(n), otherwise 0, where A003415 is the arithmetic derivative and A276085 is the primorial base log-function.

The programs for A373489, there is no canonical definition to state claims against.
-/

/-! ## A373489.P9265849247206365223

`char[A373490(n+1)-1]`
-/

namespace A373489.P9265849247206365223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373490 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A373489.P9265849247206365223

/-! ## A373489.P16915998071949112222

`C(A373145(n+1), A276085(n+1))`
-/

namespace A373489.P16915998071949112222
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A373145 (n + 1)).toNat (A276085 (n + 1)).toNat

end

end A373489.P16915998071949112222

/-! ## A373489.P16193496800645519990

`A353816(A181144(n)+A111501(n+1))`
-/

namespace A373489.P16193496800645519990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353816 (A181144 n + A111501 (n + 1)).toNat

end

end A373489.P16193496800645519990

/-! ## A373489.P7344187686732558695

`A127241(A127260(n+3)+A127256(2*n+1))`
-/

namespace A373489.P7344187686732558695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127241 (A127260 (n + 3) + A127256 (2 * n + 1)).toNat

end

end A373489.P7344187686732558695

/-! ## A373489.P10771356564087652905

`A010051(∑[A067538(2*n+3)+A001222(n+1)])`
-/

namespace A373489.P10771356564087652905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067538 (2 * n + 3) + A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A373489.P10771356564087652905

/-!
# A373490: Numbers k for which A003415(k) is a multiple of A276085(k), where A003415 is the arithmetic derivative and A276085 is the primorial base log-function.

The programs for A373490, there is no canonical definition to state claims against.
-/

/-! ## A373490.P10550946883600459021

`record[(n+1)*A373489(n+1)]`
-/

namespace A373490.P10550946883600459021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A373489 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A373490.P10550946883600459021

/-! ## A373490.P16935608525352378303

`filter[A379746(n+1), A373489(#)]`
-/

namespace A373490.P16935608525352378303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379746 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373489 (f1 j).toNat = 1) n)

end

end A373490.P16935608525352378303

/-! ## A373490.P6234783028450728172

`filter[A392869(n+1), A373489(#)]`
-/

namespace A373490.P6234783028450728172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392869 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373489 (f1 j).toNat = 1) n)

end

end A373490.P6234783028450728172

/-! ## A373490.P12518917022886970022

`filter[A363227(n+1), A373489(#)]`
-/

namespace A373490.P12518917022886970022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363227 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373489 (f1 j).toNat = 1) n)

end

end A373490.P12518917022886970022

/-! ## A373490.P3864264360539254113

`filter[A037041(n+1), A373489(#)]`
-/

namespace A373490.P3864264360539254113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037041 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373489 (f1 j).toNat = 1) n)

end

end A373490.P3864264360539254113

/-! ## A373490.P7748167144682665323

`filter[n+1, A373489(#)]`
-/

namespace A373490.P7748167144682665323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373489 (f1 j) = 1) n)

end

end A373490.P7748167144682665323

/-!
# A373491: a(n) = 1 if A059975(n) and A083345(n) are both multiples of 3, otherwise 0, where A059975 is fully additive with a(p) = p-1, and A083345 is the numerator of the fully additive function with a(p) = 1/p.

The programs for A373491, the canonical program `A373491.P12005857795601678211` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373491 has offset 1).

The definition of A373491 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373491.P12005857795601678211

`A369643(n+1)*A373493(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A373491

/-- `A369643(n+1)*A373493(n+1)` -/
def P12005857795601678211.Spec : Prop :=
  ∀ n, P12005857795601678211.a n = A373491 (n + 1)

theorem P12005857795601678211.correct : P12005857795601678211.Spec := by
  intro n
  simp only [A373491, Nat.add_sub_cancel]

end A373491

/-!
# A373492: Numbers k for which A059975(k) and A083345(k) are both multiples of 3, where A059975 is fully additive with a(p) = p-1, and A083345 is the numerator of the fully additive function with a(p) = 1/p.

The programs for A373492, the canonical program `A373492.P9911028418758767007` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373492 has offset 1).

The definition of A373492 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6612 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373492.P9911028418758767007

`filter[A373494(n+1), A369643(#)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A373492

/-- `filter[A373494(n+1), A369643(#)]` -/
def P9911028418758767007.Spec : Prop :=
  ∀ n, P9911028418758767007.a n = A373492 (n + 1)

theorem P9911028418758767007.correct : P9911028418758767007.Spec := by
  intro n
  simp only [A373492, Nat.add_sub_cancel]

end A373492

/-! ## A373492.P6401444892039587611

`filter[A373494(n+1), A373491(#)]`
-/

namespace A373492.P6401444892039587611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373494 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373491 (f1 j).toNat = 1) n)

end

end A373492.P6401444892039587611

namespace A373492

/-- `filter[A373494(n+1), A373491(#)]` -/
def P6401444892039587611.Spec : Prop :=
  ∀ n, P6401444892039587611.a n = A373492 (n + 1)

end A373492

/-! ## A373492.P8276796732125243978

`eq[1, A373491(n+1)]+1`
-/

namespace A373492.P8276796732125243978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373491 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A373492.P8276796732125243978

namespace A373492

/-- `eq[1, A373491(n+1)]+1` -/
def P8276796732125243978.Spec : Prop :=
  ∀ n, (P8276796732125243978.a n : ℤ) = A373492 (n + 1)

end A373492

/-! ## A373492.P7840299186884858027

`filter[A369644(n+1), A373491(#)]`
-/

namespace A373492.P7840299186884858027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373491 (f1 j).toNat = 1) n)

end

end A373492.P7840299186884858027

namespace A373492

/-- `filter[A369644(n+1), A373491(#)]` -/
def P7840299186884858027.Spec : Prop :=
  ∀ n, P7840299186884858027.a n = A373492 (n + 1)

end A373492

/-! ## A373492.P1612257358426484096

`filter[A369644(n+1), A373493(#)]`
-/

namespace A373492.P1612257358426484096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373493 (f1 j).toNat = 1) n)

end

end A373492.P1612257358426484096

namespace A373492

/-- `filter[A369644(n+1), A373493(#)]` -/
def P1612257358426484096.Spec : Prop :=
  ∀ n, P1612257358426484096.a n = A373492 (n + 1)

end A373492

/-! ## A373492.P14029298293715188098

`∩[A369644(n+1), A373494(n+1)]`
-/

namespace A373492.P14029298293715188098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369644 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373492.P14029298293715188098

namespace A373492

/-- `∩[A369644(n+1), A373494(n+1)]` -/
def P14029298293715188098.Spec : Prop :=
  ∀ n, (P14029298293715188098.a n : ℤ) = A373492 (n + 1)

end A373492

/-! ## A373492.P15740203194110583982

`filter[A327863(n+2), A373491(#)]`
-/

namespace A373492.P15740203194110583982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327863 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373491 (f1 j).toNat = 1) n)

end

end A373492.P15740203194110583982

namespace A373492

/-- `filter[A327863(n+2), A373491(#)]` -/
def P15740203194110583982.Spec : Prop :=
  ∀ n, P15740203194110583982.a n = A373492 (n + 1)

end A373492

/-! ## A373492.P10284458050480286583

`filter[A373385(n+1), A369643(#)]`
-/

namespace A373492.P10284458050480286583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373385 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369643 (f1 j).toNat = 1) n)

end

end A373492.P10284458050480286583

namespace A373492

/-- `filter[A373385(n+1), A369643(#)]` -/
def P10284458050480286583.Spec : Prop :=
  ∀ n, P10284458050480286583.a n = A373492 (n + 1)

end A373492

/-! ## A373492.P16728873486514401059

`filter[A373385(n+1), A373491(#)]`
-/

namespace A373492.P16728873486514401059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373385 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373491 (f1 j).toNat = 1) n)

end

end A373492.P16728873486514401059

namespace A373492

/-- `filter[A373385(n+1), A373491(#)]` -/
def P16728873486514401059.Spec : Prop :=
  ∀ n, P16728873486514401059.a n = A373492 (n + 1)

end A373492

/-! ## A373492.P5592880760727534986

`∩[A369644(n+1), A373385(n+1)]`
-/

namespace A373492.P5592880760727534986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369644 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373385 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373492.P5592880760727534986

namespace A373492

/-- `∩[A369644(n+1), A373385(n+1)]` -/
def P5592880760727534986.Spec : Prop :=
  ∀ n, (P5592880760727534986.a n : ℤ) = A373492 (n + 1)

end A373492

/-! ## A373492.P7731585883623592459

`filter[A111087(n+1), A373491(#)]`
-/

namespace A373492.P7731585883623592459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373491 (f1 j).toNat = 1) n)

end

end A373492.P7731585883623592459

namespace A373492

/-- `filter[A111087(n+1), A373491(#)]` -/
def P7731585883623592459.Spec : Prop :=
  ∀ n, P7731585883623592459.a n = A373492 (n + 1)

end A373492

/-! ## A373492.P14262406644694904570

`filter[A289553(n+1), A373491(#)]`
-/

namespace A373492.P14262406644694904570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289553 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373491 (f1 j).toNat = 1) n)

end

end A373492.P14262406644694904570

namespace A373492

/-- `filter[A289553(n+1), A373491(#)]` -/
def P14262406644694904570.Spec : Prop :=
  ∀ n, P14262406644694904570.a n = A373492 (n + 1)

end A373492

/-!
# A373493: a(n) = 1 if A059975(n) and A003415(n) are both multiples of 3, otherwise 0, where A059975 is fully additive with a(p) = p-1, and A003415 is the arithmetic derivative.

The programs for A373493, the canonical program `A373493.P17147766796197231588` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373493 has offset 1).

The definition of A373493 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373493.P6043336770270253584

`char[A373494(n+1)-1]`
-/

namespace A373493.P6043336770270253584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373494 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A373493.P6043336770270253584

namespace A373493

/-- `char[A373494(n+1)-1]` -/
def P6043336770270253584.Spec : Prop :=
  ∀ n, (P6043336770270253584.a n : ℤ) = A373493 (n + 1)

end A373493

/-! ## A373493.P17147766796197231588

`A079978(A373378(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A373493

/-- `A079978(A373378(n+1))` -/
def P17147766796197231588.Spec : Prop :=
  ∀ n, P17147766796197231588.a n = A373493 (n + 1)

theorem P17147766796197231588.correct : P17147766796197231588.Spec := by
  intro n
  simp only [A373493, Nat.add_sub_cancel]

end A373493

/-! ## A373493.P17168836125335377781

`A057078(A373378(n+1)*A373378(n+1))`
-/

namespace A373493.P17168836125335377781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 (A373378 (n + 1) * A373378 (n + 1)).toNat

end

end A373493.P17168836125335377781

namespace A373493

/-- `A057078(A373378(n+1)*A373378(n+1))` -/
def P17168836125335377781.Spec : Prop :=
  ∀ n, P17168836125335377781.a n = A373493 (n + 1)

end A373493

/-! ## A373493.P8025228506428947736

`A373372(2^A373378(n+1))`
-/

namespace A373493.P8025228506428947736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373372 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A373378 (n + 1) : ℤ))).toNat

end

end A373493.P8025228506428947736

namespace A373493

/-- `A373372(2^A373378(n+1))` -/
def P8025228506428947736.Spec : Prop :=
  ∀ n, P8025228506428947736.a n = A373493 (n + 1)

end A373493

/-! ## A373493.P3664953495944099491

`A373472(2^A373378(n+1))`
-/

namespace A373493.P3664953495944099491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373472 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A373378 (n + 1) : ℤ))).toNat

end

end A373493.P3664953495944099491

namespace A373493

/-- `A373472(2^A373378(n+1))` -/
def P3664953495944099491.Spec : Prop :=
  ∀ n, P3664953495944099491.a n = A373493 (n + 1)

end A373493

/-! ## A373493.P10931972325429779386

`A084122(∑{e}[n+1, #]!/∏{e}[n+1, #!])%A353445(n+1)`
-/

namespace A373493.P10931972325429779386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084122 (SequenceMachineLib.roundAway ((Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p) : ℕ) : ℚ))).toNat) (A353445 (n + 1))

end

end A373493.P10931972325429779386

namespace A373493

/-- `A084122(∑{e}[n+1, #]!/∏{e}[n+1, #!])%A353445(n+1)` -/
def P10931972325429779386.Spec : Prop :=
  ∀ n, P10931972325429779386.a n = A373493 (n + 1)

end A373493

/-!
# A373494: Numbers k for which A059975(k) and A003415(k) are both multiples of 3, where A059975 is fully additive with a(p) = p-1, and A003415 is the arithmetic derivative.

The programs for A373494, the canonical program `A373494.P12895813285925351519` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373494 has offset 1).

The definition of A373494 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9891 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373494.P12895813285925351519

`record[(n+1)*A373493(n+1)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A373494

/-- `record[(n+1)*A373493(n+1)]` -/
def P12895813285925351519.Spec : Prop :=
  ∀ n, P12895813285925351519.a n = A373494 (n + 1)

theorem P12895813285925351519.correct : P12895813285925351519.Spec := by
  intro n
  simp only [A373494, Nat.add_sub_cancel]

end A373494

/-! ## A373494.P1476084673032676716

`eq[1, A373493(n+1)]+1`
-/

namespace A373494.P1476084673032676716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373493 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A373494.P1476084673032676716

namespace A373494

/-- `eq[1, A373493(n+1)]+1` -/
def P1476084673032676716.Spec : Prop :=
  ∀ n, (P1476084673032676716.a n : ℤ) = A373494 (n + 1)

end A373494

/-! ## A373494.P10216227683383410345

`filter[A327863(n+2), A373493(#)]`
-/

namespace A373494.P10216227683383410345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327863 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373493 (f1 j).toNat = 1) n)

end

end A373494.P10216227683383410345

namespace A373494

/-- `filter[A327863(n+2), A373493(#)]` -/
def P10216227683383410345.Spec : Prop :=
  ∀ n, P10216227683383410345.a n = A373494 (n + 1)

end A373494

/-! ## A373494.P16576649301651827364

`filter[A373385(n+1), A359430(#)]`
-/

namespace A373494.P16576649301651827364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373385 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359430 (f1 j).toNat = 1) n)

end

end A373494.P16576649301651827364

namespace A373494

/-- `filter[A373385(n+1), A359430(#)]` -/
def P16576649301651827364.Spec : Prop :=
  ∀ n, P16576649301651827364.a n = A373494 (n + 1)

end A373494

/-! ## A373494.P8387086923593956510

`filter[A373385(n+1), A373493(#)]`
-/

namespace A373494.P8387086923593956510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373385 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373493 (f1 j).toNat = 1) n)

end

end A373494.P8387086923593956510

namespace A373494

/-- `filter[A373385(n+1), A373493(#)]` -/
def P8387086923593956510.Spec : Prop :=
  ∀ n, P8387086923593956510.a n = A373494 (n + 1)

end A373494

/-! ## A373494.P9622203530523268570

`∩[A327863(n+1), A373385(n+1)]`
-/

namespace A373494.P9622203530523268570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327863 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373385 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373494.P9622203530523268570

namespace A373494

/-- `∩[A327863(n+1), A373385(n+1)]` -/
def P9622203530523268570.Spec : Prop :=
  ∀ n, (P9622203530523268570.a n : ℤ) = A373494 (n + 1)

end A373494

/-! ## A373494.P14756985766969150864

`filter[A111087(n+1), A373493(#)]`
-/

namespace A373494.P14756985766969150864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373493 (f1 j).toNat = 1) n)

end

end A373494.P14756985766969150864

namespace A373494

/-- `filter[A111087(n+1), A373493(#)]` -/
def P14756985766969150864.Spec : Prop :=
  ∀ n, P14756985766969150864.a n = A373494 (n + 1)

end A373494

/-! ## A373494.P4573837687663078712

`filter[A289553(n+1), A373493(#)]`
-/

namespace A373494.P4573837687663078712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289553 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373493 (f1 j).toNat = 1) n)

end

end A373494.P4573837687663078712

namespace A373494

/-- `filter[A289553(n+1), A373493(#)]` -/
def P4573837687663078712.Spec : Prop :=
  ∀ n, P4573837687663078712.a n = A373494 (n + 1)

end A373494

/-! ## A373494.P9045347093535812853

`filter[A100959(n+1), A373493(#)]`
-/

namespace A373494.P9045347093535812853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100959 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373493 (f1 j).toNat = 1) n)

end

end A373494.P9045347093535812853

namespace A373494

/-- `filter[A100959(n+1), A373493(#)]` -/
def P9045347093535812853.Spec : Prop :=
  ∀ n, P9045347093535812853.a n = A373494 (n + 1)

end A373494

/-! ## A373494.P10933614322748068215

`filter[A018252(n+1), A373493(#)]`
-/

namespace A373494.P10933614322748068215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373493 (f1 j).toNat = 1) n)

end

end A373494.P10933614322748068215

namespace A373494

/-- `filter[A018252(n+1), A373493(#)]` -/
def P10933614322748068215.Spec : Prop :=
  ∀ n, P10933614322748068215.a n = A373494 (n + 1)

end A373494

/-! ## A373494.P17656512512989074173

`filter[A056653(n+1), A373493(#)]`
-/

namespace A373494.P17656512512989074173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373493 (f1 j).toNat = 1) n)

end

end A373494.P17656512512989074173

namespace A373494

/-- `filter[A056653(n+1), A373493(#)]` -/
def P17656512512989074173.Spec : Prop :=
  ∀ n, P17656512512989074173.a n = A373494 (n + 1)

end A373494

/-! ## A373494.P14823180748178940814

`filter[A065090(n+1), A373493(#)]`
-/

namespace A373494.P14823180748178940814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373493 (f1 j).toNat = 1) n)

end

end A373494.P14823180748178940814

namespace A373494

/-- `filter[A065090(n+1), A373493(#)]` -/
def P14823180748178940814.Spec : Prop :=
  ∀ n, P14823180748178940814.a n = A373494 (n + 1)

end A373494

/-! ## A373494.P1421623512873048270

`∩[eq[0, A003415(n)%3], A373385(n+1)]`
-/

namespace A373494.P1421623512873048270
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003415 n) 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373385 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A373494.P1421623512873048270

namespace A373494

/-- `∩[eq[0, A003415(n)%3], A373385(n+1)]` -/
def P1421623512873048270.Spec : Prop :=
  ∀ n, (P1421623512873048270.a n : ℤ) = A373494 (n + 1)

end A373494

/-! ## A373494.P4355468777504708074

`lt[A035363(2*n+1), A373493(n+1)]+1`
-/

namespace A373494.P4355468777504708074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373493 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A373494.P4355468777504708074

namespace A373494

/-- `lt[A035363(2*n+1), A373493(n+1)]+1` -/
def P4355468777504708074.Spec : Prop :=
  ∀ n, (P4355468777504708074.a n : ℤ) = A373494 (n + 1)

end A373494

/-!
# A373496: Number of (binary) heaps with element set [n] and length n+1.

The programs for A373496, there is no canonical definition to state claims against.
-/

/-! ## A373496.P8384448534307073309

`A373451(∑[n+1]+n)`
-/

namespace A373496.P8384448534307073309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373451 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A373496.P8384448534307073309

/-! ## A373496.P12331932068438696266

`record[A373451(n)-A320253(n+1)]`
-/

namespace A373496.P12331932068438696266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373451 n - A320253 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A373496.P12331932068438696266

/-!
# A373497: If n is prime, a(n) = 1 if the number of steps in its prime index chain is odd, a(n) = -1 if the number of steps is even, and a(n) = 0 is n is composite or 1.

The programs for A373497, there is no canonical definition to state claims against.
-/

/-! ## A373497.P16879604758216119542

`A062157(A078442(n+1)^A275297(n))`
-/

namespace A373497.P16879604758216119542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (SequenceMachineLib.roundAway ((A078442 (n + 1) : ℚ) ^ (A275297 n : ℤ))).toNat

end

end A373497.P16879604758216119542

/-! ## A373497.P15487121578079346205

`A062157(A000040(n+1)*A078442(n+1))`
-/

namespace A373497.P15487121578079346205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A000040 (n + 1) * A078442 (n + 1)).toNat

end

end A373497.P15487121578079346205

/-! ## A373497.P1509950757776520369

`A062157(A001222(n+1)*A078442(n+1))`
-/

namespace A373497.P1509950757776520369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A001222 (n + 1) * A078442 (n + 1)).toNat

end

end A373497.P1509950757776520369

/-! ## A373497.P11402395746400473344

`A062157(A051903(n+1)*A078442(n+1))`
-/

namespace A373497.P11402395746400473344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A051903 (n + 1) * A078442 (n + 1)).toNat

end

end A373497.P11402395746400473344

/-! ## A373497.P7862259154324139064

`A062157(A078442(n+1)*A181782(n+1))`
-/

namespace A373497.P7862259154324139064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A078442 (n + 1) * A181782 (n + 1)).toNat

end

end A373497.P7862259154324139064

/-! ## A373497.P6936601537645909465

`A062157(A078442(n+1)*A267101(n+1))`
-/

namespace A373497.P6936601537645909465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A078442 (n + 1) * A267101 (n + 1)).toNat

end

end A373497.P6936601537645909465

/-! ## A373497.P4657294650001778056

`A062157(A078442(n+1)^A027746(n+1))`
-/

namespace A373497.P4657294650001778056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (SequenceMachineLib.roundAway ((A078442 (n + 1) : ℚ) ^ (A027746 (n + 1) : ℤ))).toNat

end

end A373497.P4657294650001778056

/-! ## A373497.P1710458008315856036

`A062157(A078442(n+1)^A144112(n+1))`
-/

namespace A373497.P1710458008315856036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (SequenceMachineLib.roundAway ((A078442 (n + 1) : ℚ) ^ (A144112 (n + 1) : ℤ))).toNat

end

end A373497.P1710458008315856036

/-! ## A373497.P8452884855869039074

`A062157(A003309(3*n+1)*A078442(n+1))`
-/

namespace A373497.P8452884855869039074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A003309 (3 * n + 1) * A078442 (n + 1)).toNat

end

end A373497.P8452884855869039074

/-! ## A373497.P17096948288374660199

`A062157(A078442(n+1)^A350674(2*n+3))`
-/

namespace A373497.P17096948288374660199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (SequenceMachineLib.roundAway ((A078442 (n + 1) : ℚ) ^ (A350674 (2 * n + 3) : ℤ))).toNat

end

end A373497.P17096948288374660199

/-!
# A373498: a(a(a(n))) = A370655(n).

The programs for A373498, there is no canonical definition to state claims against.
-/

/-! ## A373498.P4766672454129902279

`A374531(A370655(n+1))`
-/

namespace A373498.P4766672454129902279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374531 (A370655 (n + 1)).toNat

end

end A373498.P4766672454129902279

/-! ## A373498.P4262109955298519483

`A374494(A374447(n+1))`
-/

namespace A373498.P4262109955298519483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374494 (A374447 (n + 1)).toNat

end

end A373498.P4262109955298519483

/-! ## A373498.P4617539188008599017

`A374494(A370655(A374494(n+1)))`
-/

namespace A373498.P4617539188008599017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374494 (A370655 (A374494 (n + 1)).toNat).toNat

end

end A373498.P4617539188008599017

/-! ## A373498.P13668751818056046090

`A374531(A374447(A374531(n+1)))`
-/

namespace A373498.P13668751818056046090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374531 (A374447 (A374531 (n + 1)).toNat).toNat

end

end A373498.P13668751818056046090

/-! ## A373498.P13555452616722688665

`A374447(A374447(A370655(A378762(A378762(n+1)))))`
-/

namespace A373498.P13555452616722688665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374447 (A374447 (A370655 (A378762 (A378762 (n + 1)).toNat).toNat).toNat).toNat

end

end A373498.P13555452616722688665

/-!
# A373499: a(n) = Sum_{i=1..n-1} binomial(prime(n),prime(i)).

The programs for A373499, there is no canonical definition to state claims against.
-/

/-! ## A373499.P14791398462564591377

`A121497(A000040(n+1))-1`
-/

namespace A373499.P14791398462564591377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121497 (A000040 (n + 1)).toNat - 1

end

end A373499.P14791398462564591377

/-! ## A373499.P38765316880626417

`∑{p}[A002110(n), C(A000040(n+1), #)]`
-/

namespace A373499.P38765316880626417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.choose (A000040 (n + 1)).toNat p

end

end A373499.P38765316880626417

