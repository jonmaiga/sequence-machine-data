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
import Seq.B000.C039
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
# A048700: Binary palindromes of odd length (written in base 10).

The programs for A048700, the canonical program `A048700.P8855454458622307026` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048700 has offset 1).

The definition of A048700 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4095 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A048700.P11378611944802437691

`A006995(lt[n, xor(n, floor(n/2))])`
-/

namespace A048700.P11378611944802437691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A048700.P11378611944802437691

namespace A048700

/-- `A006995(lt[n, xor(n, floor(n/2))])` -/
def P11378611944802437691.Spec : Prop :=
  ∀ n, P11378611944802437691.a n = A048700 (n + 1)

end A048700

/-! ## A048700.P16427693468443237508

`A006995(2^floor(log2(n+1))+n+1)`
-/

namespace A048700.P16427693468443237508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (2 ^ Nat.log 2 (n + 1) + n + 1)

end

end A048700.P16427693468443237508

namespace A048700

/-- `A006995(2^floor(log2(n+1))+n+1)` -/
def P16427693468443237508.Spec : Prop :=
  ∀ n, P16427693468443237508.a n = A048700 (n + 1)

end A048700

/-! ## A048700.P1480513582608025756

`or(1, A006995(A004754(n+1)))`
-/

namespace A048700.P1480513582608025756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A006995 (A004754 (n + 1)).toNat)

end

end A048700.P1480513582608025756

namespace A048700

/-- `or(1, A006995(A004754(n+1)))` -/
def P1480513582608025756.Spec : Prop :=
  ∀ n, P1480513582608025756.a n = A048700 (n + 1)

end A048700

/-! ## A048700.P14487508269051347456

`A162749(A206332(n+1))`
-/

namespace A048700.P14487508269051347456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162749 (A206332 (n + 1)).toNat

end

end A048700.P14487508269051347456

namespace A048700

/-- `A162749(A206332(n+1))` -/
def P14487508269051347456.Spec : Prop :=
  ∀ n, P14487508269051347456.a n = A048700 (n + 1)

end A048700

/-! ## A048700.P8855454458622307026

`A044918(A003817(n+1)+n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A048700

/-- `A044918(A003817(n+1)+n)` -/
def P8855454458622307026.Spec : Prop :=
  ∀ n, P8855454458622307026.a n = A048700 (n + 1)

theorem P8855454458622307026.correct : P8855454458622307026.Spec := by
  intro n
  simp only [A048700, Nat.add_sub_cancel]

end A048700

/-! ## A048700.P6571042462913123026

`A053738(A331891(n+2))`
-/

namespace A048700.P6571042462913123026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053738 (A331891 (n + 2)).toNat

end

end A048700.P6571042462913123026

namespace A048700

/-- `A053738(A331891(n+2))` -/
def P6571042462913123026.Spec : Prop :=
  ∀ n, P6571042462913123026.a n = A048700 (n + 1)

end A048700

/-! ## A048700.P9576559342282664006

`∩[A006995(n+1), A053738(n+1)]`
-/

namespace A048700.P9576559342282664006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053738 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048700.P9576559342282664006

namespace A048700

/-- `∩[A006995(n+1), A053738(n+1)]` -/
def P9576559342282664006.Spec : Prop :=
  ∀ n, (P9576559342282664006.a n : ℤ) = A048700 (n + 1)

end A048700

/-! ## A048700.P14994166985164760889

`∩[A044918(n+1), A053738(n+1)]`
-/

namespace A048700.P14994166985164760889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044918 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053738 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048700.P14994166985164760889

namespace A048700

/-- `∩[A044918(n+1), A053738(n+1)]` -/
def P14994166985164760889.Spec : Prop :=
  ∀ n, (P14994166985164760889.a n : ℤ) = A048700 (n + 1)

end A048700

/-! ## A048700.P14919916804008196194

`filter[A053738(n+1), A178225(#)]`
-/

namespace A048700.P14919916804008196194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053738 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178225 (f1 j).toNat = 1) n)

end

end A048700.P14919916804008196194

namespace A048700

/-- `filter[A053738(n+1), A178225(#)]` -/
def P14919916804008196194.Spec : Prop :=
  ∀ n, P14919916804008196194.a n = A048700 (n + 1)

end A048700

/-! ## A048700.P7325372183862912568

`eq[A175919(n), A275973(n+1)]`
-/

namespace A048700.P7325372183862912568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175919 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275973 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048700.P7325372183862912568

namespace A048700

/-- `eq[A175919(n), A275973(n+1)]` -/
def P7325372183862912568.Spec : Prop :=
  ∀ n, (P7325372183862912568.a n : ℤ) = A048700 (n + 1)

end A048700

/-! ## A048700.P2810476546095843604

`A175298((n+1)*A053644(n+1))`
-/

namespace A048700.P2810476546095843604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175298 ((n + 1 : ℤ) * A053644 (n + 1)).toNat

end

end A048700.P2810476546095843604

namespace A048700

/-- `A175298((n+1)*A053644(n+1))` -/
def P2810476546095843604.Spec : Prop :=
  ∀ n, P2810476546095843604.a n = A048700 (n + 1)

end A048700

/-! ## A048700.P15782103011979711970

`filter[A103354(2*(n+1)), A178225(#)]`
-/

namespace A048700.P15782103011979711970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103354 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178225 (f1 j).toNat = 1) n)

end

end A048700.P15782103011979711970

namespace A048700

/-- `filter[A103354(2*(n+1)), A178225(#)]` -/
def P15782103011979711970.Spec : Prop :=
  ∀ n, P15782103011979711970.a n = A048700 (n + 1)

end A048700

/-! ## A048700.P14533297250143318985

`filter[A138591(2*n+1), A178225(#)]`
-/

namespace A048700.P14533297250143318985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138591 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178225 (f1 j).toNat = 1) n)

end

end A048700.P14533297250143318985

namespace A048700

/-- `filter[A138591(2*n+1), A178225(#)]` -/
def P14533297250143318985.Spec : Prop :=
  ∀ n, P14533297250143318985.a n = A048700 (n + 1)

end A048700

/-! ## A048700.P17705477848785503553

`filter[A333470(2*n+1), A178225(#)]`
-/

namespace A048700.P17705477848785503553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333470 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178225 (f1 j).toNat = 1) n)

end

end A048700.P17705477848785503553

namespace A048700

/-- `filter[A333470(2*n+1), A178225(#)]` -/
def P17705477848785503553.Spec : Prop :=
  ∀ n, P17705477848785503553.a n = A048700 (n + 1)

end A048700

/-! ## A048700.P5408539223273359945

`filter[A307613(2*n+1), A178225(#)]`
-/

namespace A048700.P5408539223273359945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307613 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178225 (f1 j).toNat = 1) n)

end

end A048700.P5408539223273359945

namespace A048700

/-- `filter[A307613(2*n+1), A178225(#)]` -/
def P5408539223273359945.Spec : Prop :=
  ∀ n, P5408539223273359945.a n = A048700 (n + 1)

end A048700

/-! ## A048700.P10549463348786032172

`filter[A210771(3*n+1), A178225(#)]`
-/

namespace A048700.P10549463348786032172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210771 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178225 (f1 j).toNat = 1) n)

end

end A048700.P10549463348786032172

namespace A048700

/-- `filter[A210771(3*n+1), A178225(#)]` -/
def P10549463348786032172.Spec : Prop :=
  ∀ n, P10549463348786032172.a n = A048700 (n + 1)

end A048700

/-!
# A048701: List of binary palindromes of even length (written in base 10).

The programs for A048701, the canonical program `A048701.P12021779623566832141` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048701 has offset 0).

The definition of A048701 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A048701.P14330742053265756327

`3*A048702(n)`
-/

namespace A048701.P14330742053265756327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A048702 n

end

end A048701.P14330742053265756327

namespace A048701

/-- `3*A048702(n)` -/
def P14330742053265756327.Spec : Prop :=
  ∀ n, P14330742053265756327.a n = A048701 n

end A048701

/-! ## A048701.P7923081256018869205

`3*(∑[n]-A075113(n))`
-/

namespace A048701.P7923081256018869205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A075113 n)

end

end A048701.P7923081256018869205

namespace A048701

/-- `3*(∑[n]-A075113(n))` -/
def P7923081256018869205.Spec : Prop :=
  ∀ n, P7923081256018869205.a n = A048701 n

end A048701

/-! ## A048701.P10114614790385488499

`(A264618(n)+A030101(n))/2`
-/

namespace A048701.P10114614790385488499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264618 n + A030101 n : ℚ) / 2

end

end A048701.P10114614790385488499

namespace A048701

/-- `(A264618(n)+A030101(n))/2` -/
def P10114614790385488499.Spec : Prop :=
  ∀ n, P10114614790385488499.a n = (A048701 n : ℚ)

end A048701

/-! ## A048701.P8675729348448662618

`A055944(n)+n*A003817(n)`
-/

namespace A048701.P8675729348448662618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055944 n + (n : ℤ) * A003817 n

end

end A048701.P8675729348448662618

namespace A048701

/-- `A055944(n)+n*A003817(n)` -/
def P8675729348448662618.Spec : Prop :=
  ∀ n, P8675729348448662618.a n = A048701 n

end A048701

/-! ## A048701.P12021779623566832141

`A030101(n)+n*A062383(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A048701

/-- `A030101(n)+n*A062383(n)` -/
def P12021779623566832141.Spec : Prop :=
  ∀ n, P12021779623566832141.a n = A048701 n

theorem P12021779623566832141.correct : P12021779623566832141.Spec := by
  intro n
  simp only [A048701]

end A048701

/-! ## A048701.P3557934748162722957

`A264618(n)-n*A062383(n)`
-/

namespace A048701.P3557934748162722957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264618 n - (n : ℤ) * A062383 n

end

end A048701.P3557934748162722957

namespace A048701

/-- `A264618(n)-n*A062383(n)` -/
def P3557934748162722957.Spec : Prop :=
  ∀ n, P3557934748162722957.a n = A048701 n

end A048701

/-! ## A048701.P13379893074870030267

`3*(A000124(n)-(A075113(n)+1))`
-/

namespace A048701.P13379893074870030267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A000124 n - (A075113 n + 1))

end

end A048701.P13379893074870030267

namespace A048701

/-- `3*(A000124(n)-(A075113(n)+1))` -/
def P13379893074870030267.Spec : Prop :=
  ∀ n, P13379893074870030267.a n = A048701 n

end A048701

/-! ## A048701.P18053555154552473190

`A030101(n)+2*n*A053644(n)`
-/

namespace A048701.P18053555154552473190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 n + 2 * ((n : ℤ) * A053644 n)

end

end A048701.P18053555154552473190

namespace A048701

/-- `A030101(n)+2*n*A053644(n)` -/
def P18053555154552473190.Spec : Prop :=
  ∀ n, P18053555154552473190.a n = A048701 n

end A048701

/-! ## A048701.P293207338920379895

`∑[A265026(n+1)]-A265026(n+1)`
-/

namespace A048701.P293207338920379895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A265026 (n + 1)

end

end A048701.P293207338920379895

namespace A048701

/-- `∑[A265026(n+1)]-A265026(n+1)` -/
def P293207338920379895.Spec : Prop :=
  ∀ n, P293207338920379895.a n = A048701 n

end A048701

/-! ## A048701.P7393800242518210834

`A006995(2^ceil(log2(n+1))+n)`
-/

namespace A048701.P7393800242518210834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ) + (n : ℚ))).toNat

end

end A048701.P7393800242518210834

namespace A048701

/-- `A006995(2^ceil(log2(n+1))+n)` -/
def P7393800242518210834.Spec : Prop :=
  ∀ n, P7393800242518210834.a n = A048701 n

end A048701

/-! ## A048701.P474761553187525419

`∩[A006995(n+1), A333441(n+1)]`
-/

namespace A048701.P474761553187525419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048701.P474761553187525419

namespace A048701

/-- `∩[A006995(n+1), A333441(n+1)]` -/
def P474761553187525419.Spec : Prop :=
  ∀ n, (P474761553187525419.a n : ℤ) = A048701 n

end A048701

/-! ## A048701.P6912751759163046880

`A008585(A048702(n))`
-/

namespace A048701.P6912751759163046880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A048702 n).toNat

end

end A048701.P6912751759163046880

namespace A048701

/-- `A008585(A048702(n))` -/
def P6912751759163046880.Spec : Prop :=
  ∀ n, P6912751759163046880.a n = A048701 n

end A048701

/-! ## A048701.P5156819384558825207

`A175298(n*A062383(n))`
-/

namespace A048701.P5156819384558825207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175298 ((n : ℤ) * A062383 n).toNat

end

end A048701.P5156819384558825207

namespace A048701

/-- `A175298(n*A062383(n))` -/
def P5156819384558825207.Spec : Prop :=
  ∀ n, P5156819384558825207.a n = A048701 n

end A048701

/-! ## A048701.P1774025549609922506

`A175919(n*A062383(n))`
-/

namespace A048701.P1774025549609922506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175919 ((n : ℤ) * A062383 n).toNat

end

end A048701.P1774025549609922506

namespace A048701

/-- `A175919(n*A062383(n))` -/
def P1774025549609922506.Spec : Prop :=
  ∀ n, P1774025549609922506.a n = A048701 n

end A048701

/-! ## A048701.P2649559894385706937

`A175298(n*(A003817(n)+1))`
-/

namespace A048701.P2649559894385706937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175298 ((n : ℤ) * (A003817 n + 1)).toNat

end

end A048701.P2649559894385706937

namespace A048701

/-- `A175298(n*(A003817(n)+1))` -/
def P2649559894385706937.Spec : Prop :=
  ∀ n, P2649559894385706937.a n = A048701 n

end A048701

/-! ## A048701.P7894281249440727118

`A175919(n*(A003817(n)+1))`
-/

namespace A048701.P7894281249440727118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175919 ((n : ℤ) * (A003817 n + 1)).toNat

end

end A048701.P7894281249440727118

namespace A048701

/-- `A175919(n*(A003817(n)+1))` -/
def P7894281249440727118.Spec : Prop :=
  ∀ n, P7894281249440727118.a n = A048701 n

end A048701

/-! ## A048701.P2778642386373072491

`A175298(2*n*A053644(n))`
-/

namespace A048701.P2778642386373072491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175298 ((2 * n : ℤ) * A053644 n).toNat

end

end A048701.P2778642386373072491

namespace A048701

/-- `A175298(2*n*A053644(n))` -/
def P2778642386373072491.Spec : Prop :=
  ∀ n, P2778642386373072491.a n = A048701 n

end A048701

/-! ## A048701.P15762419536932924454

`A175919(2*n*A053644(n))`
-/

namespace A048701.P15762419536932924454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175919 ((2 * n : ℤ) * A053644 n).toNat

end

end A048701.P15762419536932924454

namespace A048701

/-- `A175919(2*n*A053644(n))` -/
def P15762419536932924454.Spec : Prop :=
  ∀ n, P15762419536932924454.a n = A048701 n

end A048701

/-! ## A048701.P5725931820280661364

`eq[1, A275973(n+1)+A175919(n)]`
-/

namespace A048701.P5725931820280661364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275973 (n + 1) + A175919 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048701.P5725931820280661364

namespace A048701

/-- `eq[1, A275973(n+1)+A175919(n)]` -/
def P5725931820280661364.Spec : Prop :=
  ∀ n, (P5725931820280661364.a n : ℤ) = A048701 n

end A048701

/-! ## A048701.P8269396340148542493

`∩[A006995(n+1), A053754(n+1)]`
-/

namespace A048701.P8269396340148542493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048701.P8269396340148542493

namespace A048701

/-- `∩[A006995(n+1), A053754(n+1)]` -/
def P8269396340148542493.Spec : Prop :=
  ∀ n, (P8269396340148542493.a n : ℤ) = A048701 n

end A048701

/-!
# A048702: Binary palindromes of even length divided by 3.

The programs for A048702, the canonical program `A048702.P3727629024629284360` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048702 has offset 0).

The definition of A048702 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048701, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A048702.P3727629024629284360

`A048701(n)/3`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A048702

/-- `A048701(n)/3` -/
def P3727629024629284360.Spec : Prop :=
  ∀ n, P3727629024629284360.a n = (A048702 n : ℚ)

end A048702

/-! ## A048702.P118918699114771256

`∑[n]-A075113(n)`
-/

namespace A048702.P118918699114771256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A075113 n

end

end A048702.P118918699114771256

namespace A048702

/-- `∑[n]-A075113(n)` -/
def P118918699114771256.Spec : Prop :=
  ∀ n, P118918699114771256.a n = A048702 n

end A048702

/-! ## A048702.P3515881208542709632

`A000124(n)-(A075113(n)+1)`
-/

namespace A048702.P3515881208542709632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - (A075113 n + 1)

end

end A048702.P3515881208542709632

namespace A048702

/-- `A000124(n)-(A075113(n)+1)` -/
def P3515881208542709632.Spec : Prop :=
  ∀ n, P3515881208542709632.a n = A048702 n

end A048702

/-! ## A048702.P11354466387864549151

`A000096(n)-(A075113(n)+n)`
-/

namespace A048702.P11354466387864549151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n - (A075113 n + (n : ℤ))

end

end A048702.P11354466387864549151

namespace A048702

/-- `A000096(n)-(A075113(n)+n)` -/
def P11354466387864549151.Spec : Prop :=
  ∀ n, P11354466387864549151.a n = A048702 n

end A048702

/-! ## A048702.P494652804694347244

`A006995(A055945(n)+A030101(2*n+1))/3`
-/

namespace A048702.P494652804694347244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006995 (A055945 n + A030101 (2 * n + 1)).toNat : ℚ) / 3

end

end A048702.P494652804694347244

namespace A048702

/-- `A006995(A055945(n)+A030101(2*n+1))/3` -/
def P494652804694347244.Spec : Prop :=
  ∀ n, P494652804694347244.a n = (A048702 n : ℚ)

end A048702

/-! ## A048702.P1313155885781972540

`A002264(A048701(n))`
-/

namespace A048702.P1313155885781972540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A048701 n).toNat

end

end A048702.P1313155885781972540

namespace A048702

/-- `A002264(A048701(n))` -/
def P1313155885781972540.Spec : Prop :=
  ∀ n, P1313155885781972540.a n = A048702 n

end A048702

/-! ## A048702.P18124231960135306585

`A008615(2*A048701(n))`
-/

namespace A048702.P18124231960135306585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (2 * A048701 n).toNat

end

end A048702.P18124231960135306585

namespace A048702

/-- `A008615(2*A048701(n))` -/
def P18124231960135306585.Spec : Prop :=
  ∀ n, P18124231960135306585.a n = A048702 n

end A048702

/-! ## A048702.P4879861607220899699

`A008615(A048701(n)+A048701(n))`
-/

namespace A048702.P4879861607220899699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A048701 n + A048701 n).toNat

end

end A048702.P4879861607220899699

namespace A048702

/-- `A008615(A048701(n)+A048701(n))` -/
def P4879861607220899699.Spec : Prop :=
  ∀ n, P4879861607220899699.a n = A048702 n

end A048702

/-!
# A048703: Numbers which in base 4 are palindromes and have an even number of digits.

The programs for A048703, there is no canonical definition to state claims against.
-/

/-! ## A048703.P8762286930064388571

`5*A048704(n)`
-/

namespace A048703.P8762286930064388571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A048704 n

end

end A048703.P8762286930064388571

/-! ## A048703.P16309722173643999864

`A008587(n)+A008587(A048704(n)-n)`
-/

namespace A048703.P16309722173643999864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 n + A008587 (A048704 n - (n : ℤ)).toNat

end

end A048703.P16309722173643999864

/-! ## A048703.P18254623503687417355

`A008592(n)-(A008587(n)-A008587(A048704(n)-n))`
-/

namespace A048703.P18254623503687417355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - (A008587 n - A008587 (A048704 n - (n : ℤ)).toNat)

end

end A048703.P18254623503687417355

/-! ## A048703.P17827758120782045630

`A008587(A048704(n))`
-/

namespace A048703.P17827758120782045630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (A048704 n).toNat

end

end A048703.P17827758120782045630

/-! ## A048703.P15002564394723628330

`A008706(A048704(n))-A000007(n)`
-/

namespace A048703.P15002564394723628330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (A048704 n).toNat - A000007 n

end

end A048703.P15002564394723628330

/-! ## A048703.P4630614086881255759

`A008706(A048704(n))%A001845(n)`
-/

namespace A048703.P4630614086881255759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008706 (A048704 n).toNat) (A001845 n)

end

end A048703.P4630614086881255759

/-! ## A048703.P9673814813206505144

`A008706(A048704(n)+n)-A008706(n)`
-/

namespace A048703.P9673814813206505144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (A048704 n + (n : ℤ)).toNat - A008706 n

end

end A048703.P9673814813206505144

/-!
# A048704: Base 4 palindromes of even length divided by 5. a(n) = A048703(n)/5.

The programs for A048704, there is no canonical definition to state claims against.
-/

/-! ## A048704.P4956641562121496437

`A048703(n)/5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A048704.P4956641562121496437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048703 n : ℚ) / 5

end

end A048704.P4956641562121496437

/-! ## A048704.P8933795829974515840

`A002266(A048703(n))`
-/

namespace A048704.P8933795829974515840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A048703 n).toNat

end

end A048704.P8933795829974515840

/-! ## A048704.P5655377389928845822

`A059995(2*A048703(n))`
-/

namespace A048704.P5655377389928845822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (2 * A048703 n).toNat

end

end A048704.P5655377389928845822

/-! ## A048704.P8351561358110642215

`A076309(2*A048703(n))`
-/

namespace A048704.P8351561358110642215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076309 (2 * A048703 n).toNat

end

end A048704.P8351561358110642215

/-! ## A048704.P12790209562293571031

`A076310(2*A048703(n))`
-/

namespace A048704.P12790209562293571031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076310 (2 * A048703 n).toNat

end

end A048704.P12790209562293571031

/-! ## A048704.P4617552316769090344

`A076312(2*A048703(n))`
-/

namespace A048704.P4617552316769090344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076312 (2 * A048703 n).toNat

end

end A048704.P4617552316769090344

/-! ## A048704.P9667175220541840975

`A076313(2*A048703(n))`
-/

namespace A048704.P9667175220541840975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076313 (2 * A048703 n).toNat

end

end A048704.P9667175220541840975

/-! ## A048704.P14878529685186823076

`A076314(2*A048703(n))`
-/

namespace A048704.P14878529685186823076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076314 (2 * A048703 n).toNat

end

end A048704.P14878529685186823076

/-! ## A048704.P11258725544500074631

`A059995(A048703(n)+A048703(n)+1)`
-/

namespace A048704.P11258725544500074631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A048703 n + (A048703 n + 1)).toNat

end

end A048704.P11258725544500074631

/-!
# A048707: Numerators of ratios converging to Thue-Morse constant.

The programs for A048707, the canonical program `A048707.P4434072727229439948` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048707 has offset 0).

The definition of A048707 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048707.P4434072727229439948

`(a(n-1)+1)*(2^2^(n-1)-1)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048707

/-- `(a(n-1)+1)*(2^2^(n-1)-1)` -/
def P4434072727229439948.Spec : Prop :=
  ∀ n, P4434072727229439948.a n = (A048707 n : ℝ)

end A048707

/-! ## A048707.P8983227574658839026

`A162634(n)-1`
-/

namespace A048707.P8983227574658839026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162634 n - 1

end

end A048707.P8983227574658839026

namespace A048707

/-- `A162634(n)-1` -/
def P8983227574658839026.Spec : Prop :=
  ∀ n, P8983227574658839026.a n = A048707 n

end A048707

/-! ## A048707.P7188301369619345087

`A019300(2^n-1)`
-/

namespace A048707.P7188301369619345087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019300 (2 ^ n - 1)

end

end A048707.P7188301369619345087

namespace A048707

/-- `A019300(2^n-1)` -/
def P7188301369619345087.Spec : Prop :=
  ∀ n, P7188301369619345087.a n = A048707 n

end A048707

/-! ## A048707.P1595066542910482515

`A088172(2^n)-1`
-/

namespace A048707.P1595066542910482515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088172 (2 ^ n) - 1

end

end A048707.P1595066542910482515

namespace A048707

/-- `A088172(2^n)-1` -/
def P1595066542910482515.Spec : Prop :=
  ∀ n, P1595066542910482515.a n = A048707 n

end A048707

/-! ## A048707.P3829216139497447828

`A001146(n)-A162647(n)`
-/

namespace A048707.P3829216139497447828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001146 n - A162647 n

end

end A048707.P3829216139497447828

namespace A048707

/-- `A001146(n)-A162647(n)` -/
def P3829216139497447828.Spec : Prop :=
  ∀ n, P3829216139497447828.a n = A048707 n

end A048707

/-!
# A048708: Numerators of ratios converging to the Thue-Morse constant, converted to hexadecimal.

The programs for A048708, there is no canonical definition to state claims against.
-/

/-! ## A048708.P4595678236882484027

`A057906(A014070(n))-1`
-/

namespace A048708.P4595678236882484027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057906 (A014070 n).toNat - 1

end

end A048708.P4595678236882484027

/-!
# A048709: Main diagonal of Family 1 "Rule 90 x Rule 150" array.

The programs for A048709, there is no canonical definition to state claims against.
-/

/-! ## A048709.P12284055726891974211

`A048710(∑[4*n])`
-/

namespace A048709.P12284055726891974211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048710 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A048709.P12284055726891974211

/-! ## A048709.P10977183916937444764

`or(1, A048710(A046092(n)))`
-/

namespace A048709.P10977183916937444764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A048710 (A046092 n).toNat)

end

end A048709.P10977183916937444764

/-! ## A048709.P1503536362713659975

`record[A003982(n)*A048710(n)]`
-/

namespace A048709.P1503536362713659975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A048710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048709.P1503536362713659975

/-! ## A048709.P8566237293124354381

`record[A048710(n*A028242(n))]`
-/

namespace A048709.P8566237293124354381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048710 ((n : ℤ) * A028242 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048709.P8566237293124354381

/-! ## A048709.P6086671066013954534

`record[gcd(A008482(n), A048710(n))]`
-/

namespace A048709.P6086671066013954534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A048710 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048709.P6086671066013954534

/-!
# A048710: Family 1 "Rule 90 x Rule 150 Array" read by antidiagonals.

The programs for A048710, there is no canonical definition to state claims against.
-/

/-! ## A048710.P6256375127562452567

`A305421(A099884(n)*A130321(n))`
-/

namespace A048710.P6256375127562452567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305421 (A099884 n * A130321 n).toNat

end

end A048710.P6256375127562452567

/-! ## A048710.P9533449817606161996

`A006519(A095987(n))*A234741(A003595(n+1))`
-/

namespace A048710.P9533449817606161996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A095987 n).toNat * A234741 (A003595 (n + 1)).toNat

end

end A048710.P9533449817606161996

/-! ## A048710.P16708588913871517584

`A001222(A103389(n+1))*A234741(A003595(n+1))`
-/

namespace A048710.P16708588913871517584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A103389 (n + 1)).toNat * A234741 (A003595 (n + 1)).toNat

end

end A048710.P16708588913871517584

/-! ## A048710.P7566870500150744647

`A234741(∑[A023931(n)]*A003595(n+1))`
-/

namespace A048710.P7566870500150744647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023931 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234741 ((∑ j ∈ Finset.range (n + 1), f1 j) * A003595 (n + 1)).toNat

end

end A048710.P7566870500150744647

/-!
# A048711: 2nd row of Family 1 "90 X 150 array": generations 0 .. n of Rule 90 starting from seed pattern 7.

The programs for A048711, the canonical program `A048711.P11707822415409339869` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048711 has offset 0).

The definition of A048711 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A048711.P11707822415409339869

`xor(4*a(n-1), a(n-1))` with `a(0)=7`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048711

/-- `xor(4*a(n-1), a(n-1))` -/
def P11707822415409339869.Spec : Prop :=
  ∀ n, (P11707822415409339869.a n : ℤ) = A048711 n

theorem P11707822415409339869.correct : P11707822415409339869.Spec := by
  intro n
  simp only [A048711]

end A048711

/-! ## A048711.P13981507629005239603

`xor(lcm(4, a(n-1)), a(n-1))` with `a(0)=7`
-/

namespace A048711.P13981507629005239603
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7] fun n a =>
  Nat.xor (Nat.lcm 4 (a (n - 1))) (a (n - 1))

end

end A048711.P13981507629005239603

namespace A048711

/-- `xor(lcm(4, a(n-1)), a(n-1))` -/
def P13981507629005239603.Spec : Prop :=
  ∀ n, (P13981507629005239603.a n : ℤ) = A048711 n

end A048711

/-! ## A048711.P8307614345027859880

`xor(a(n-1)/(1-3/4), a(n-1))` with `a(0)=7`
-/

namespace A048711.P8307614345027859880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  Int.xor (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / (1 - (3 : ℚ) / 4))) (a (n - 1))

end

end A048711.P8307614345027859880

namespace A048711

/-- `xor(a(n-1)/(1-3/4), a(n-1))` -/
def P8307614345027859880.Spec : Prop :=
  ∀ n, P8307614345027859880.a n = A048711 n

end A048711

/-! ## A048711.P12120592367337910154

`A249184(n+1)`
-/

namespace A048711.P12120592367337910154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249184 (n + 1)

end

end A048711.P12120592367337910154

namespace A048711

/-- `A249184(n+1)` -/
def P12120592367337910154.Spec : Prop :=
  ∀ n, P12120592367337910154.a n = A048711 n

end A048711

/-! ## A048711.P15694132792210938943

`record[A249184(abs(1-n))]`
-/

namespace A048711.P15694132792210938943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249184 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048711.P15694132792210938943

namespace A048711

/-- `record[A249184(abs(1-n))]` -/
def P15694132792210938943.Spec : Prop :=
  ∀ n, P15694132792210938943.a n = A048711 n

end A048711

/-! ## A048711.P8500925507757889409

`A038192(n)+Δ[A038183(n)]`
-/

namespace A048711.P8500925507757889409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038183 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038192 n + (f1 (n + 1) - f1 n)

end

end A048711.P8500925507757889409

namespace A048711

/-- `A038192(n)+Δ[A038183(n)]` -/
def P8500925507757889409.Spec : Prop :=
  ∀ n, P8500925507757889409.a n = A048711 n

end A048711

/-! ## A048711.P80691936571068279

`A038183(n+1)+2*A038183(n)`
-/

namespace A048711.P80691936571068279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038183 (n + 1) + 2 * A038183 n

end

end A048711.P80691936571068279

namespace A048711

/-- `A038183(n+1)+2*A038183(n)` -/
def P80691936571068279.Spec : Prop :=
  ∀ n, P80691936571068279.a n = A048711 n

end A048711

/-! ## A048711.P11603213518080494707

`A001317(2*n+1)+Δ[A001317(2*n)]`
-/

namespace A048711.P11603213518080494707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001317 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001317 (2 * n + 1) + (f1 (n + 1) - f1 n)

end

end A048711.P11603213518080494707

namespace A048711

/-- `A001317(2*n+1)+Δ[A001317(2*n)]` -/
def P11603213518080494707.Spec : Prop :=
  ∀ n, P11603213518080494707.a n = A048711 n

end A048711

/-! ## A048711.P15904275072030388180

`A038192(n)+A038183(n+1)-A038183(n)`
-/

namespace A048711.P15904275072030388180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038192 n + A038183 (n + 1) - A038183 n

end

end A048711.P15904275072030388180

namespace A048711

/-- `A038192(n)+A038183(n+1)-A038183(n)` -/
def P15904275072030388180.Spec : Prop :=
  ∀ n, P15904275072030388180.a n = A048711 n

end A048711

/-! ## A048711.P6921252492468934579

`A048710(∑[n+1]+1)`
-/

namespace A048711.P6921252492468934579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048710 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A048711.P6921252492468934579

namespace A048711

/-- `A048710(∑[n+1]+1)` -/
def P6921252492468934579.Spec : Prop :=
  ∀ n, P6921252492468934579.a n = A048711 n

end A048711

/-!
# A048712: 2nd column of Family 1 "90 X 150 array": generations 0 .. n of Rule 150 starting from seed pattern 5.

The programs for A048712, the canonical program `A048712.P8827442495514705763` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048712 has offset 0).

The definition of A048712 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A048712.P8827442495514705763

`xor(2*xor(2*a(n-1), a(n-1)), a(n-1))` with `a(0)=5`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048712

/-- `xor(2*xor(2*a(n-1), a(n-1)), a(n-1))` -/
def P8827442495514705763.Spec : Prop :=
  ∀ n, (P8827442495514705763.a n : ℤ) = A048712 n

theorem P8827442495514705763.correct : P8827442495514705763.Spec := by
  intro n
  simp only [A048712]

end A048712

/-! ## A048712.P3663407226056637155

`xor(4*A038184(n), A038184(n))`
-/

namespace A048712.P3663407226056637155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (4 * A038184 n) (A038184 n)

end

end A048712.P3663407226056637155

namespace A048712

/-- `xor(4*A038184(n), A038184(n))` -/
def P3663407226056637155.Spec : Prop :=
  ∀ n, P3663407226056637155.a n = A048712 n

end A048712

/-! ## A048712.P15435314831457107301

`A048710(∑[n+2]-1)`
-/

namespace A048712.P15435314831457107301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048710 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A048712.P15435314831457107301

namespace A048712

/-- `A048710(∑[n+2]-1)` -/
def P15435314831457107301.Spec : Prop :=
  ∀ n, P15435314831457107301.a n = A048712 n

end A048712

/-! ## A048712.P18237251156702433741

`record[A048710(A198954(n)+n)]`
-/

namespace A048712.P18237251156702433741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048710 (A198954 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048712.P18237251156702433741

namespace A048712

/-- `record[A048710(A198954(n)+n)]` -/
def P18237251156702433741.Spec : Prop :=
  ∀ n, P18237251156702433741.a n = A048712 n

end A048712

/-! ## A048712.P8992945509361668330

`or(1, A048710(A034856(n+1)))`
-/

namespace A048712.P8992945509361668330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A048710 (A034856 (n + 1)).toNat)

end

end A048712.P8992945509361668330

namespace A048712

/-- `or(1, A048710(A034856(n+1)))` -/
def P8992945509361668330.Spec : Prop :=
  ∀ n, P8992945509361668330.a n = A048712 n

end A048712

/-!
# A048713: 3rd row of Family 1 "90 x 150 array": generations 0 .. n of Rule 90 starting from seed pattern 21.

The programs for A048713, the canonical program `A048713.P7258064996182236437` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048713 has offset 0).

The definition of A048713 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A048713.P7258064996182236437

`xor(4*a(n-1), a(n-1))` with `a(0)=21`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048713

/-- `xor(4*a(n-1), a(n-1))` -/
def P7258064996182236437.Spec : Prop :=
  ∀ n, (P7258064996182236437.a n : ℤ) = A048713 n

theorem P7258064996182236437.correct : P7258064996182236437.Spec := by
  intro n
  simp only [A048713]

end A048713

/-! ## A048713.P2421643146123848482

`xor(lcm(4, a(n-1)), a(n-1))` with `a(0)=21`
-/

namespace A048713.P2421643146123848482
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [21] fun n a =>
  Nat.xor (Nat.lcm 4 (a (n - 1))) (a (n - 1))

end

end A048713.P2421643146123848482

namespace A048713

/-- `xor(lcm(4, a(n-1)), a(n-1))` -/
def P2421643146123848482.Spec : Prop :=
  ∀ n, (P2421643146123848482.a n : ℤ) = A048713 n

end A048713

/-! ## A048713.P3500647397542264913

`xor(a(n-1)/(1-3/4), a(n-1))` with `a(0)=21`
-/

namespace A048713.P3500647397542264913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [21] fun n a =>
  Int.xor (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / (1 - (3 : ℚ) / 4))) (a (n - 1))

end

end A048713.P3500647397542264913

namespace A048713

/-- `xor(a(n-1)/(1-3/4), a(n-1))` -/
def P3500647397542264913.Spec : Prop :=
  ∀ n, P3500647397542264913.a n = A048713 n

end A048713

/-! ## A048713.P9426209635849668280

`xor(A001317(2*n+1)+A001317(2*n), A001317(2*(n+2)))`
-/

namespace A048713.P9426209635849668280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001317 (2 * n + 1) + A001317 (2 * n)) (A001317 (2 * (n + 2)))

end

end A048713.P9426209635849668280

namespace A048713

/-- `xor(A001317(2*n+1)+A001317(2*n), A001317(2*(n+2)))` -/
def P9426209635849668280.Spec : Prop :=
  ∀ n, P9426209635849668280.a n = A048713 n

end A048713

/-! ## A048713.P7211321413002931580

`A048710(∑[n+2]+3)`
-/

namespace A048713.P7211321413002931580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048710 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A048713.P7211321413002931580

namespace A048713

/-- `A048710(∑[n+2]+3)` -/
def P7211321413002931580.Spec : Prop :=
  ∀ n, P7211321413002931580.a n = A048713 n

end A048713

/-!
# A048714: 3rd column of Family 1 "90 x 150 array": generations 0 .. n of Rule 150 starting from seed pattern 17.

The programs for A048714, the canonical program `A048714.P4420928762529534651` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048714 has offset 0).

The definition of A048714 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A048714.P4420928762529534651

`xor(16*A038184(n), A038184(n))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A048714

/-- `xor(16*A038184(n), A038184(n))` -/
def P4420928762529534651.Spec : Prop :=
  ∀ n, P4420928762529534651.a n = A048714 n

theorem P4420928762529534651.correct : P4420928762529534651.Spec := by
  intro n
  simp only [A048714]

end A048714

/-! ## A048714.P8720173387435488542

`A048710(∑[n+3])`
-/

namespace A048714.P8720173387435488542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048710 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A048714.P8720173387435488542

namespace A048714

/-- `A048710(∑[n+3])` -/
def P8720173387435488542.Spec : Prop :=
  ∀ n, P8720173387435488542.a n = A048714 n

end A048714

/-! ## A048714.P9648701023976690865

`or(1, A048710(Δ[A006503(n)]))`
-/

namespace A048714.P9648701023976690865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A048710 (f1 (n + 1) - f1 n).toNat)

end

end A048714.P9648701023976690865

namespace A048714

/-- `or(1, A048710(Δ[A006503(n)]))` -/
def P9648701023976690865.Spec : Prop :=
  ∀ n, P9648701023976690865.a n = A048714 n

end A048714

/-! ## A048714.P11825214792457081961

`A033999(n)²*A048710(Δ[A006503(n)])`
-/

namespace A048714.P11825214792457081961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A048710 (f1 (n + 1) - f1 n).toNat

end

end A048714.P11825214792457081961

namespace A048714

/-- `A033999(n)²*A048710(Δ[A006503(n)])` -/
def P11825214792457081961.Spec : Prop :=
  ∀ n, P11825214792457081961.a n = A048714 n

end A048714

/-! ## A048714.P18175081603854438933

`A048710(Δ[A006503(n)])+A008683(4*(n+1))`
-/

namespace A048714.P18175081603854438933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048710 (f1 (n + 1) - f1 n).toNat + A008683 (4 * (n + 1))

end

end A048714.P18175081603854438933

namespace A048714

/-- `A048710(Δ[A006503(n)])+A008683(4*(n+1))` -/
def P18175081603854438933.Spec : Prop :=
  ∀ n, P18175081603854438933.a n = A048714 n

end A048714

/-!
# A048715: Binary expansion matches (100(0)*)*(0|1|10)?; or, Zeckendorf-like expansion of n using recurrence f(n) = f(n-1) + f(n-3).

The programs for A048715, there is no canonical definition to state claims against.
-/

/-! ## A048715.P3395794053542778761

`∩[A391742(n+1), A115813(n)]`
-/

namespace A048715.P3395794053542778761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115813 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048715.P3395794053542778761

/-! ## A048715.P8954684036881077046

`∩[A003714(n), A115813(n)]`
-/

namespace A048715.P8954684036881077046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115813 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048715.P8954684036881077046

/-! ## A048715.P9633555355914537876

`∩[A391742(n+1), A003714(n)]`
-/

namespace A048715.P9633555355914537876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048715.P9633555355914537876

/-! ## A048715.P6800639764043555441

`∩[A048716(n+1), A003714(n)]`
-/

namespace A048715.P6800639764043555441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048715.P6800639764043555441

/-! ## A048715.P16547748743290628670

`∩[A048716(n+1), A115813(n)]`
-/

namespace A048715.P16547748743290628670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115813 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048715.P16547748743290628670

/-! ## A048715.P8640873216048024839

`∩[A048716(n+1), A391742(n+1)]`
-/

namespace A048715.P8640873216048024839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048715.P8640873216048024839

/-! ## A048715.P11889427862482225685

`∩[A391740(n+1), A003714(n)]`
-/

namespace A048715.P11889427862482225685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391740 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048715.P11889427862482225685

/-! ## A048715.P1587625997660548185

`∩[A391740(n+1), A115813(n)]`
-/

namespace A048715.P1587625997660548185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391740 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115813 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048715.P1587625997660548185

/-! ## A048715.P8232281458306570883

`∩[A004743(n+1), A115813(n)]`
-/

namespace A048715.P8232281458306570883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115813 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048715.P8232281458306570883

/-! ## A048715.P14859159161643488304

`∩[A391585(n+1), A115813(n)]`
-/

namespace A048715.P14859159161643488304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391585 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115813 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048715.P14859159161643488304

/-! ## A048715.P18004410363377667290

`record[n-and(4*n, 3*n)]`
-/

namespace A048715.P18004410363377667290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.land (4 * n) (3 * n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048715.P18004410363377667290

/-! ## A048715.P7910781017181960831

`record[xor(n, 2*or(n, 2*n))]/7`
-/

namespace A048715.P7910781017181960831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * Nat.lor n (2 * n))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 7

end

end A048715.P7910781017181960831

/-! ## A048715.P478698846329435024

`record[xor(n, 2*xor(n, 2*n))]/7`
-/

namespace A048715.P478698846329435024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * Nat.xor n (2 * n))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 7

end

end A048715.P478698846329435024

/-! ## A048715.P7305650990500900556

`∩[A391742(n+1), A023717(n)]`
-/

namespace A048715.P7305650990500900556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048715.P7305650990500900556

/-! ## A048715.P8074857966691036609

`eq[0, and(n, 6*n)]`
-/

namespace A048715.P8074857966691036609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (6 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048715.P8074857966691036609

/-! ## A048715.P11500205760875551076

`lt[and(n, 6*n), 1]`
-/

namespace A048715.P11500205760875551076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (6 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A048715.P11500205760875551076

/-! ## A048715.P2228947389248233634

`∩[A004742(n+1), A003714(n)]`
-/

namespace A048715.P2228947389248233634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048715.P2228947389248233634

/-! ## A048715.P5420195562940559058

`∩[A004742(n+1), A115813(n)]`
-/

namespace A048715.P5420195562940559058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115813 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048715.P5420195562940559058

/-! ## A048715.P1387710511893696156

`∩[A003726(n+1), A391742(n+1)]`
-/

namespace A048715.P1387710511893696156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003726 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048715.P1387710511893696156

/-! ## A048715.P12031044995229669446

`record[xor(A269174(n)+n, A269174(n))]/7`
-/

namespace A048715.P12031044995229669446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A269174 n + (n : ℤ)) (A269174 n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 7

end

end A048715.P12031044995229669446

/-!
# A048716: Numbers k such that (k AND 4*k) = 0, where AND is bitwise-and.

The programs for A048716, the canonical program `A048716.P7954742914338090828` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048716 has offset 1).

The definition of A048716 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4454 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A048716.P10789955119791945318

`record[xor(n, 4*n)/5]`
-/

namespace A048716.P10789955119791945318
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor n (4 * n) : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048716.P10789955119791945318

namespace A048716

/-- `record[xor(n, 4*n)/5]` -/
def P10789955119791945318.Spec : Prop :=
  ∀ n, P10789955119791945318.a n = (A048716 (n + 1) : ℚ)

end A048716

/-! ## A048716.P7954742914338090828

`record[n-and(n, 4*n)]`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048716

/-- `record[n-and(n, 4*n)]` -/
def P7954742914338090828.Spec : Prop :=
  ∀ n, P7954742914338090828.a n = A048716 (n + 1)

theorem P7954742914338090828.correct : P7954742914338090828.Spec := by
  intro n
  simp only [A048716, Nat.add_sub_cancel]

end A048716

/-! ## A048716.P2991136892482377295

`record[-or(4*n, -n)]`
-/

namespace A048716.P2991136892482377295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor (4 * n : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048716.P2991136892482377295

namespace A048716

/-- `record[-or(4*n, -n)]` -/
def P2991136892482377295.Spec : Prop :=
  ∀ n, P2991136892482377295.a n = A048716 (n + 1)

end A048716

/-! ## A048716.P10930395051472683240

`record[and(n, -(4*n+1))]`
-/

namespace A048716.P10930395051472683240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(4 * n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048716.P10930395051472683240

namespace A048716

/-- `record[and(n, -(4*n+1))]` -/
def P10930395051472683240.Spec : Prop :=
  ∀ n, P10930395051472683240.a n = A048716 (n + 1)

end A048716

/-! ## A048716.P9206897674915126454

`record[xor(n, floor(n/4))-floor(n/4)]`
-/

namespace A048716.P9206897674915126454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 4⌋ - ⌊(n : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048716.P9206897674915126454

namespace A048716

/-- `record[xor(n, floor(n/4))-floor(n/4)]` -/
def P9206897674915126454.Spec : Prop :=
  ∀ n, P9206897674915126454.a n = A048716 (n + 1)

end A048716

/-! ## A048716.P3419002297482035794

`eq[0, and(n, 4*n)]`
-/

namespace A048716.P3419002297482035794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (4 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048716.P3419002297482035794

namespace A048716

/-- `eq[0, and(n, 4*n)]` -/
def P3419002297482035794.Spec : Prop :=
  ∀ n, (P3419002297482035794.a n : ℤ) = A048716 (n + 1)

end A048716

/-! ## A048716.P83911291207663275

`lt[and(n, 4*n), 1]`
-/

namespace A048716.P83911291207663275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (4 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A048716.P83911291207663275

namespace A048716

/-- `lt[and(n, 4*n), 1]` -/
def P83911291207663275.Spec : Prop :=
  ∀ n, (P83911291207663275.a n : ℤ) = A048716 (n + 1)

end A048716

/-! ## A048716.P14406333574416073103

`∩[A003726(n+1), A004742(n+1)]`
-/

namespace A048716.P14406333574416073103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003726 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048716.P14406333574416073103

namespace A048716

/-- `∩[A003726(n+1), A004742(n+1)]` -/
def P14406333574416073103.Spec : Prop :=
  ∀ n, (P14406333574416073103.a n : ℤ) = A048716 (n + 1)

end A048716

/-! ## A048716.P3114768706444323886

`∩[A003726(n+1), A391740(n+1)]`
-/

namespace A048716.P3114768706444323886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003726 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391740 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048716.P3114768706444323886

namespace A048716

/-- `∩[A003726(n+1), A391740(n+1)]` -/
def P3114768706444323886.Spec : Prop :=
  ∀ n, (P3114768706444323886.a n : ℤ) = A048716 (n + 1)

end A048716

/-! ## A048716.P138421780735409328

`filter[A391740(n+1), A342892(#)]`
-/

namespace A048716.P138421780735409328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391740 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342892 (f1 j).toNat = 1) n)

end

end A048716.P138421780735409328

namespace A048716

/-- `filter[A391740(n+1), A342892(#)]` -/
def P138421780735409328.Spec : Prop :=
  ∀ n, P138421780735409328.a n = A048716 (n + 1)

end A048716

/-! ## A048716.P85482376365916632

`record[A048725(n)-4*n]`
-/

namespace A048716.P85482376365916632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048725 n - (4 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048716.P85482376365916632

namespace A048716

/-- `record[A048725(n)-4*n]` -/
def P85482376365916632.Spec : Prop :=
  ∀ n, P85482376365916632.a n = A048716 (n + 1)

end A048716

/-! ## A048716.P9724029853948771267

`eq[0, A048729(n)]`
-/

namespace A048716.P9724029853948771267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048716.P9724029853948771267

namespace A048716

/-- `eq[0, A048729(n)]` -/
def P9724029853948771267.Spec : Prop :=
  ∀ n, (P9724029853948771267.a n : ℤ) = A048716 (n + 1)

end A048716

/-! ## A048716.P7857492376381312806

`eq[A008587(n), A048725(n)]`
-/

namespace A048716.P7857492376381312806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048725 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048716.P7857492376381312806

namespace A048716

/-- `eq[A008587(n), A048725(n)]` -/
def P7857492376381312806.Spec : Prop :=
  ∀ n, (P7857492376381312806.a n : ℤ) = A048716 (n + 1)

end A048716

/-! ## A048716.P5629241537193530141

`eq[A001068(n), A064706(n)]`
-/

namespace A048716.P5629241537193530141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001068 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048716.P5629241537193530141

namespace A048716

/-- `eq[A001068(n), A064706(n)]` -/
def P5629241537193530141.Spec : Prop :=
  ∀ n, (P5629241537193530141.a n : ℤ) = A048716 (n + 1)

end A048716

/-! ## A048716.P18353436871149652022

`eq[A008586(n), A178731(n)]`
-/

namespace A048716.P18353436871149652022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178731 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048716.P18353436871149652022

namespace A048716

/-- `eq[A008586(n), A178731(n)]` -/
def P18353436871149652022.Spec : Prop :=
  ∀ n, (P18353436871149652022.a n : ℤ) = A048716 (n + 1)

end A048716

/-! ## A048716.P11820902302256106179

`eq[A008587(n), A178891(n)]`
-/

namespace A048716.P11820902302256106179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178891 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048716.P11820902302256106179

namespace A048716

/-- `eq[A008587(n), A178891(n)]` -/
def P11820902302256106179.Spec : Prop :=
  ∀ n, (P11820902302256106179.a n : ℤ) = A048716 (n + 1)

end A048716

/-! ## A048716.P15863512991473351570

`eq[A008587(n), A178892(n)]`
-/

namespace A048716.P15863512991473351570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178892 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048716.P15863512991473351570

namespace A048716

/-- `eq[A008587(n), A178892(n)]` -/
def P15863512991473351570.Spec : Prop :=
  ∀ n, (P15863512991473351570.a n : ℤ) = A048716 (n + 1)

end A048716

/-! ## A048716.P1232239485349868218

`eq[A048725(n), A178891(n)]`
-/

namespace A048716.P1232239485349868218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048725 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178891 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048716.P1232239485349868218

namespace A048716

/-- `eq[A048725(n), A178891(n)]` -/
def P1232239485349868218.Spec : Prop :=
  ∀ n, (P1232239485349868218.a n : ℤ) = A048716 (n + 1)

end A048716

/-! ## A048716.P1251197475337541266

`eq[A048725(n), A178892(n)]`
-/

namespace A048716.P1251197475337541266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048725 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178892 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048716.P1251197475337541266

namespace A048716

/-- `eq[A048725(n), A178892(n)]` -/
def P1251197475337541266.Spec : Prop :=
  ∀ n, (P1251197475337541266.a n : ℤ) = A048716 (n + 1)

end A048716

/-! ## A048716.P15331555344388304394

`eq[A178891(n), A178892(n)]`
-/

namespace A048716.P15331555344388304394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178891 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178892 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048716.P15331555344388304394

namespace A048716

/-- `eq[A178891(n), A178892(n)]` -/
def P15331555344388304394.Spec : Prop :=
  ∀ n, (P15331555344388304394.a n : ℤ) = A048716 (n + 1)

end A048716

/-!
# A048717: Binary expansion matches ((0)*00(1*)11)*(0*).

The programs for A048717, the canonical program `A048717.P2461125811461192478` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048717 has offset 0).

The definition of A048717 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1742 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A048717.P2461125811461192478

`∩[A004742(n+1), A077459(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A048717

/-- `∩[A004742(n+1), A077459(n+1)]` -/
def P2461125811461192478.Spec : Prop :=
  ∀ n, (P2461125811461192478.a n : ℤ) = A048717 n

theorem P2461125811461192478.correct : P2461125811461192478.Spec := by
  intro n
  simp only [A048717]

end A048717

/-! ## A048717.P2499614666018342599

`∩[A077459(n+1), A391585(n+1)]`
-/

namespace A048717.P2499614666018342599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077459 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391585 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048717.P2499614666018342599

namespace A048717

/-- `∩[A077459(n+1), A391585(n+1)]` -/
def P2499614666018342599.Spec : Prop :=
  ∀ n, (P2499614666018342599.a n : ℤ) = A048717 n

end A048717

/-! ## A048717.P16837394026228365925

`eq[2*n-and(n, 3*n), xor(n, 2*n)]`
-/

namespace A048717.P16837394026228365925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (Nat.land n (3 * n) : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A048717.P16837394026228365925

namespace A048717

/-- `eq[2*n-and(n, 3*n), xor(n, 2*n)]` -/
def P16837394026228365925.Spec : Prop :=
  ∀ n, (P16837394026228365925.a n : ℤ) = A048717 n

end A048717

/-! ## A048717.P6431023941316049155

`lt[xor(n, 2*n), 2*n-and(n, 3*n)+1]`
-/

namespace A048717.P6431023941316049155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (Nat.land n (3 * n) : ℤ) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A048717.P6431023941316049155

namespace A048717

/-- `lt[xor(n, 2*n), 2*n-and(n, 3*n)+1]` -/
def P6431023941316049155.Spec : Prop :=
  ∀ n, (P6431023941316049155.a n : ℤ) = A048717 n

end A048717

/-! ## A048717.P5447123053597179033

`∩[A391585(n+1), A269177(n)]`
-/

namespace A048717.P5447123053597179033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391585 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269177 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048717.P5447123053597179033

namespace A048717

/-- `∩[A391585(n+1), A269177(n)]` -/
def P5447123053597179033.Spec : Prop :=
  ∀ n, (P5447123053597179033.a n : ℤ) = A048717 n

end A048717

/-! ## A048717.P7645273607355320002

`eq[n, A048733(n)]`
-/

namespace A048717.P7645273607355320002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048733 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048717.P7645273607355320002

namespace A048717

/-- `eq[n, A048733(n)]` -/
def P7645273607355320002.Spec : Prop :=
  ∀ n, (P7645273607355320002.a n : ℤ) = A048717 n

end A048717

/-! ## A048717.P8023153885348537518

`eq[4*n, A048730(n)]`
-/

namespace A048717.P8023153885348537518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048730 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048717.P8023153885348537518

namespace A048717

/-- `eq[4*n, A048730(n)]` -/
def P8023153885348537518.Spec : Prop :=
  ∀ n, (P8023153885348537518.a n : ℤ) = A048717 n

end A048717

/-! ## A048717.P5816879158468425732

`lt[n, A318925(2*n)+1]`
-/

namespace A048717.P5816879158468425732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318925 (2 * n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A048717.P5816879158468425732

namespace A048717

/-- `lt[n, A318925(2*n)+1]` -/
def P5816879158468425732.Spec : Prop :=
  ∀ n, (P5816879158468425732.a n : ℤ) = A048717 n

end A048717

/-! ## A048717.P8403738601493257328

`eq[A008585(n), A048727(n)]`
-/

namespace A048717.P8403738601493257328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048727 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048717.P8403738601493257328

namespace A048717

/-- `eq[A008585(n), A048727(n)]` -/
def P8403738601493257328.Spec : Prop :=
  ∀ n, (P8403738601493257328.a n : ℤ) = A048717 n

end A048717

/-! ## A048717.P6757358511415408599

`eq[n, A100280(A057353(n))]`
-/

namespace A048717.P6757358511415408599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100280 (A057353 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048717.P6757358511415408599

namespace A048717

/-- `eq[n, A100280(A057353(n))]` -/
def P6757358511415408599.Spec : Prop :=
  ∀ n, (P6757358511415408599.a n : ℤ) = A048717 n

end A048717

/-! ## A048717.P1776167837522951307

`eq[A048726(n), A178729(n)]`
-/

namespace A048717.P1776167837522951307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048726 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048717.P1776167837522951307

namespace A048717

/-- `eq[A048726(n), A178729(n)]` -/
def P1776167837522951307.Spec : Prop :=
  ∀ n, (P1776167837522951307.a n : ℤ) = A048717 n

end A048717

/-! ## A048717.P17636930746007359773

`eq[A048724(n), A184617(n)]`
-/

namespace A048717.P17636930746007359773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048724 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184617 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048717.P17636930746007359773

namespace A048717

/-- `eq[A048724(n), A184617(n)]` -/
def P17636930746007359773.Spec : Prop :=
  ∀ n, (P17636930746007359773.a n : ℤ) = A048717 n

end A048717

/-! ## A048717.P10146141987748378473

`eq[A048725(n), A269173(n)]`
-/

namespace A048717.P10146141987748378473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048725 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269173 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048717.P10146141987748378473

namespace A048717

/-- `eq[A048725(n), A269173(n)]` -/
def P10146141987748378473.Spec : Prop :=
  ∀ n, (P10146141987748378473.a n : ℤ) = A048717 n

end A048717

/-! ## A048717.P16212982546047183244

`eq[A184615(n), A213064(n)]`
-/

namespace A048717.P16212982546047183244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184615 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213064 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048717.P16212982546047183244

namespace A048717

/-- `eq[A184615(n), A213064(n)]` -/
def P16212982546047183244.Spec : Prop :=
  ∀ n, (P16212982546047183244.a n : ℤ) = A048717 n

end A048717

/-! ## A048717.P5990548130688259919

`eq[A184616(n), A229763(n)]`
-/

namespace A048717.P5990548130688259919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184616 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229763 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048717.P5990548130688259919

namespace A048717

/-- `eq[A184616(n), A229763(n)]` -/
def P5990548130688259919.Spec : Prop :=
  ∀ n, (P5990548130688259919.a n : ℤ) = A048717 n

end A048717

/-! ## A048717.P8132660047966200286

`eq[A283971(n), A318925(n)]`
-/

namespace A048717.P8132660047966200286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283971 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318925 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048717.P8132660047966200286

namespace A048717

/-- `eq[A283971(n), A318925(n)]` -/
def P8132660047966200286.Spec : Prop :=
  ∀ n, (P8132660047966200286.a n : ℤ) = A048717 n

end A048717

/-! ## A048717.P665897343856950296

`filter[A391585(n+1), A089013(#)]`
-/

namespace A048717.P665897343856950296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391585 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A089013 (f1 j).toNat = 1) n)

end

end A048717.P665897343856950296

namespace A048717

/-- `filter[A391585(n+1), A089013(#)]` -/
def P665897343856950296.Spec : Prop :=
  ∀ n, P665897343856950296.a n = A048717 n

end A048717

/-! ## A048717.P14388247341296940777

`eq[A008586(n)², A048730(n)²]`
-/

namespace A048717.P14388247341296940777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048730 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048717.P14388247341296940777

namespace A048717

/-- `eq[A008586(n)², A048730(n)²]` -/
def P14388247341296940777.Spec : Prop :=
  ∀ n, (P14388247341296940777.a n : ℤ) = A048717 n

end A048717

/-! ## A048717.P7127772527322094985

`lt[A064680(abs(n-A048733(n))), 1]`
-/

namespace A048717.P7127772527322094985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 |(n : ℤ) - A048733 n|.toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A048717.P7127772527322094985

namespace A048717

/-- `lt[A064680(abs(n-A048733(n))), 1]` -/
def P7127772527322094985.Spec : Prop :=
  ∀ n, (P7127772527322094985.a n : ℤ) = A048717 n

end A048717

/-! ## A048717.P8813128243856560827

`lt[A000292(abs(n-A048733(n))+1), 3]`
-/

namespace A048717.P8813128243856560827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (|(n : ℤ) - A048733 n| + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A048717.P8813128243856560827

namespace A048717

/-- `lt[A000292(abs(n-A048733(n))+1), 3]` -/
def P8813128243856560827.Spec : Prop :=
  ∀ n, (P8813128243856560827.a n : ℤ) = A048717 n

end A048717

/-!
# A048718: Binary expansion matches ((0)*0001)*(0*); or, Zeckendorf-like expansion of n using recurrence f(n) = f(n-1) + f(n-4).

The programs for A048718, the canonical program `A048718.P2729937857410140397` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048718 has offset 0).

The definition of A048718 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1252 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A048718.P11572412742671895044

`A048719(n)/3`
-/

namespace A048718.P11572412742671895044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048719 n : ℚ) / 3

end

end A048718.P11572412742671895044

namespace A048718

/-- `A048719(n)/3` -/
def P11572412742671895044.Spec : Prop :=
  ∀ n, P11572412742671895044.a n = (A048718 n : ℚ)

end A048718

/-! ## A048718.P9100526486048035221

`∩[A115795(n+1), A048715(n)]`
-/

namespace A048718.P9100526486048035221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115795 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048715 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048718.P9100526486048035221

namespace A048718

/-- `∩[A115795(n+1), A048715(n)]` -/
def P9100526486048035221.Spec : Prop :=
  ∀ n, (P9100526486048035221.a n : ℤ) = A048718 n

end A048718

/-! ## A048718.P3283959253431086757

`∩[A391850(n+1), A048715(n)]`
-/

namespace A048718.P3283959253431086757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391850 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048715 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048718.P3283959253431086757

namespace A048718

/-- `∩[A391850(n+1), A048715(n)]` -/
def P3283959253431086757.Spec : Prop :=
  ∀ n, (P3283959253431086757.a n : ℤ) = A048718 n

end A048718

/-! ## A048718.P4009553343396466791

`∩[A391850(n+1), A115795(n+1)]`
-/

namespace A048718.P4009553343396466791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391850 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115795 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048718.P4009553343396466791

namespace A048718

/-- `∩[A391850(n+1), A115795(n+1)]` -/
def P4009553343396466791.Spec : Prop :=
  ∀ n, (P4009553343396466791.a n : ℤ) = A048718 n

end A048718

/-! ## A048718.P15753498525661368301

`3^A008683(A057673(n))*A048719(n)`
-/

namespace A048718.P15753498525661368301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A008683 (A057673 n).toNat : ℤ) * (A048719 n : ℚ)

end

end A048718.P15753498525661368301

namespace A048718

/-- `3^A008683(A057673(n))*A048719(n)` -/
def P15753498525661368301.Spec : Prop :=
  ∀ n, P15753498525661368301.a n = (A048718 n : ℚ)

end A048718

/-! ## A048718.P17950147299830595172

`∩[A115797(n+1), A048715(n)]`
-/

namespace A048718.P17950147299830595172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115797 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048715 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048718.P17950147299830595172

namespace A048718

/-- `∩[A115797(n+1), A048715(n)]` -/
def P17950147299830595172.Spec : Prop :=
  ∀ n, (P17950147299830595172.a n : ℤ) = A048718 n

end A048718

/-! ## A048718.P2729937857410140397

`∩[A115795(n+1), A115813(n)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A048718

/-- `∩[A115795(n+1), A115813(n)]` -/
def P2729937857410140397.Spec : Prop :=
  ∀ n, (P2729937857410140397.a n : ℤ) = A048718 n

theorem P2729937857410140397.correct : P2729937857410140397.Spec := by
  intro n
  simp only [A048718]

end A048718

/-! ## A048718.P8959837827253293390

`∩[A115797(n+1), A115813(n)]`
-/

namespace A048718.P8959837827253293390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115797 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115813 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048718.P8959837827253293390

namespace A048718

/-- `∩[A115797(n+1), A115813(n)]` -/
def P8959837827253293390.Spec : Prop :=
  ∀ n, (P8959837827253293390.a n : ℤ) = A048718 n

end A048718

/-! ## A048718.P14309727822795384956

`∩[A391846(n+1), A048715(n)]`
-/

namespace A048718.P14309727822795384956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048715 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048718.P14309727822795384956

namespace A048718

/-- `∩[A391846(n+1), A048715(n)]` -/
def P14309727822795384956.Spec : Prop :=
  ∀ n, (P14309727822795384956.a n : ℤ) = A048718 n

end A048718

/-! ## A048718.P6489711996426528463

`∩[A391846(n+1), A115813(n)]`
-/

namespace A048718.P6489711996426528463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115813 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048718.P6489711996426528463

namespace A048718

/-- `∩[A391846(n+1), A115813(n)]` -/
def P6489711996426528463.Spec : Prop :=
  ∀ n, (P6489711996426528463.a n : ℤ) = A048718 n

end A048718

/-! ## A048718.P7393498286300119279

`∩[A391850(n+1), A115813(n)]`
-/

namespace A048718.P7393498286300119279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391850 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115813 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048718.P7393498286300119279

namespace A048718

/-- `∩[A391850(n+1), A115813(n)]` -/
def P7393498286300119279.Spec : Prop :=
  ∀ n, (P7393498286300119279.a n : ℤ) = A048718 n

end A048718

/-! ## A048718.P2879058992094298024

`∩[A115793(n+1), A048715(n)]`
-/

namespace A048718.P2879058992094298024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048715 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048718.P2879058992094298024

namespace A048718

/-- `∩[A115793(n+1), A048715(n)]` -/
def P2879058992094298024.Spec : Prop :=
  ∀ n, (P2879058992094298024.a n : ℤ) = A048718 n

end A048718

/-! ## A048718.P657726511479015784

`∩[A391848(n+1), A048715(n)]`
-/

namespace A048718.P657726511479015784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048715 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048718.P657726511479015784

namespace A048718

/-- `∩[A391848(n+1), A048715(n)]` -/
def P657726511479015784.Spec : Prop :=
  ∀ n, (P657726511479015784.a n : ℤ) = A048718 n

end A048718

/-! ## A048718.P14148990699374328760

`∩[A391848(n+1), A115813(n)]`
-/

namespace A048718.P14148990699374328760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115813 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048718.P14148990699374328760

namespace A048718

/-- `∩[A391848(n+1), A115813(n)]` -/
def P14148990699374328760.Spec : Prop :=
  ∀ n, (P14148990699374328760.a n : ℤ) = A048718 n

end A048718

/-! ## A048718.P9099524297218394520

`∩[A115795(n+1), A003714(n)]`
-/

namespace A048718.P9099524297218394520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115795 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048718.P9099524297218394520

namespace A048718

/-- `∩[A115795(n+1), A003714(n)]` -/
def P9099524297218394520.Spec : Prop :=
  ∀ n, (P9099524297218394520.a n : ℤ) = A048718 n

end A048718

/-! ## A048718.P2690124925722035125

`∩[A115797(n+1), A003714(n)]`
-/

namespace A048718.P2690124925722035125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115797 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048718.P2690124925722035125

namespace A048718

/-- `∩[A115797(n+1), A003714(n)]` -/
def P2690124925722035125.Spec : Prop :=
  ∀ n, (P2690124925722035125.a n : ℤ) = A048718 n

end A048718

/-! ## A048718.P8413320746746427656

`∩[A391846(n+1), A003714(n)]`
-/

namespace A048718.P8413320746746427656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048718.P8413320746746427656

namespace A048718

/-- `∩[A391846(n+1), A003714(n)]` -/
def P8413320746746427656.Spec : Prop :=
  ∀ n, (P8413320746746427656.a n : ℤ) = A048718 n

end A048718

/-! ## A048718.P2640142510189713252

`∩[A048716(n+1), A115793(n+1)]`
-/

namespace A048718.P2640142510189713252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048718.P2640142510189713252

namespace A048718

/-- `∩[A048716(n+1), A115793(n+1)]` -/
def P2640142510189713252.Spec : Prop :=
  ∀ n, (P2640142510189713252.a n : ℤ) = A048718 n

end A048718

/-! ## A048718.P12135779522536128753

`∩[A048716(n+1), A115795(n+1)]`
-/

namespace A048718.P12135779522536128753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115795 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048718.P12135779522536128753

namespace A048718

/-- `∩[A048716(n+1), A115795(n+1)]` -/
def P12135779522536128753.Spec : Prop :=
  ∀ n, (P12135779522536128753.a n : ℤ) = A048718 n

end A048718

/-! ## A048718.P15720525771843135187

`∩[A048716(n+1), A115797(n+1)]`
-/

namespace A048718.P15720525771843135187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115797 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048718.P15720525771843135187

namespace A048718

/-- `∩[A048716(n+1), A115797(n+1)]` -/
def P15720525771843135187.Spec : Prop :=
  ∀ n, (P15720525771843135187.a n : ℤ) = A048718 n

end A048718

/-!
# A048719: Binary expansion matches ((0)*0011)*(0*).

The programs for A048719, the canonical program `A048719.P18299439018409905840` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048719 has offset 0).

The definition of A048719 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048718, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A048719.P18299439018409905840

`3*A048718(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A048719

/-- `3*A048718(n)` -/
def P18299439018409905840.Spec : Prop :=
  ∀ n, P18299439018409905840.a n = A048719 n

theorem P18299439018409905840.correct : P18299439018409905840.Spec := by
  intro n
  simp only [A048719]

end A048719

/-! ## A048719.P14531761330685922401

`∩[A115767(n), A277335(n)]`
-/

namespace A048719.P14531761330685922401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115767 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277335 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048719.P14531761330685922401

namespace A048719

/-- `∩[A115767(n), A277335(n)]` -/
def P14531761330685922401.Spec : Prop :=
  ∀ n, (P14531761330685922401.a n : ℤ) = A048719 n

end A048719

/-! ## A048719.P17742698545671875151

`∩[A048717(n), A115767(n)]`
-/

namespace A048719.P17742698545671875151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048717 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115767 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048719.P17742698545671875151

namespace A048719

/-- `∩[A048717(n), A115767(n)]` -/
def P17742698545671875151.Spec : Prop :=
  ∀ n, (P17742698545671875151.a n : ℤ) = A048719 n

end A048719

/-! ## A048719.P2466768581881913350

`∩[A295897(n+1), A115767(n)]`
-/

namespace A048719.P2466768581881913350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115767 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048719.P2466768581881913350

namespace A048719

/-- `∩[A295897(n+1), A115767(n)]` -/
def P2466768581881913350.Spec : Prop :=
  ∀ n, (P2466768581881913350.a n : ℤ) = A048719 n

end A048719

/-! ## A048719.P9565400019432106236

`∩[A048716(n+1), A048717(n)]`
-/

namespace A048719.P9565400019432106236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048717 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048719.P9565400019432106236

namespace A048719

/-- `∩[A048716(n+1), A048717(n)]` -/
def P9565400019432106236.Spec : Prop :=
  ∀ n, (P9565400019432106236.a n : ℤ) = A048719 n

end A048719

/-! ## A048719.P12578823222855937563

`∩[A048716(n+1), A115767(n)]`
-/

namespace A048719.P12578823222855937563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115767 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048719.P12578823222855937563

namespace A048719

/-- `∩[A048716(n+1), A115767(n)]` -/
def P12578823222855937563.Spec : Prop :=
  ∀ n, (P12578823222855937563.a n : ℤ) = A048719 n

end A048719

/-! ## A048719.P3146172080421846216

`∩[A048716(n+1), A277335(n)]`
-/

namespace A048719.P3146172080421846216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277335 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048719.P3146172080421846216

namespace A048719

/-- `∩[A048716(n+1), A277335(n)]` -/
def P3146172080421846216.Spec : Prop :=
  ∀ n, (P3146172080421846216.a n : ℤ) = A048719 n

end A048719

/-! ## A048719.P18249149775572763773

`∩[A391740(n+1), A115767(n)]`
-/

namespace A048719.P18249149775572763773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391740 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115767 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048719.P18249149775572763773

namespace A048719

/-- `∩[A391740(n+1), A115767(n)]` -/
def P18249149775572763773.Spec : Prop :=
  ∀ n, (P18249149775572763773.a n : ℤ) = A048719 n

end A048719

/-! ## A048719.P14378302315047960313

`record[3*(A003714(n)-A048716(n+1))]`
-/

namespace A048719.P14378302315047960313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A003714 n - A048716 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048719.P14378302315047960313

namespace A048719

/-- `record[3*(A003714(n)-A048716(n+1))]` -/
def P14378302315047960313.Spec : Prop :=
  ∀ n, P14378302315047960313.a n = A048719 n

end A048719

/-! ## A048719.P13192914113966398155

`∩[A391585(n+1), A115767(n)]`
-/

namespace A048719.P13192914113966398155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391585 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115767 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048719.P13192914113966398155

namespace A048719

/-- `∩[A391585(n+1), A115767(n)]` -/
def P13192914113966398155.Spec : Prop :=
  ∀ n, (P13192914113966398155.a n : ℤ) = A048719 n

end A048719

/-! ## A048719.P1806347699470617344

`A269174(A048718(n))`
-/

namespace A048719.P1806347699470617344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269174 (A048718 n).toNat

end

end A048719.P1806347699470617344

namespace A048719

/-- `A269174(A048718(n))` -/
def P1806347699470617344.Spec : Prop :=
  ∀ n, P1806347699470617344.a n = A048719 n

end A048719

/-! ## A048719.P6217927187197417056

`filter[A115767(n), A295896(#)]`
-/

namespace A048719.P6217927187197417056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295896 (f1 j).toNat = 1) n)

end

end A048719.P6217927187197417056

namespace A048719

/-- `filter[A115767(n), A295896(#)]` -/
def P6217927187197417056.Spec : Prop :=
  ∀ n, P6217927187197417056.a n = A048719 n

end A048719

/-! ## A048719.P2537854374936078238

`∩[A004742(n+1), A115767(n)]`
-/

namespace A048719.P2537854374936078238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115767 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048719.P2537854374936078238

namespace A048719

/-- `∩[A004742(n+1), A115767(n)]` -/
def P2537854374936078238.Spec : Prop :=
  ∀ n, (P2537854374936078238.a n : ℤ) = A048719 n

end A048719

/-! ## A048719.P17899410569047784950

`∩[A077459(n+1), A115767(n)]`
-/

namespace A048719.P17899410569047784950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077459 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115767 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048719.P17899410569047784950

namespace A048719

/-- `∩[A077459(n+1), A115767(n)]` -/
def P17899410569047784950.Spec : Prop :=
  ∀ n, (P17899410569047784950.a n : ℤ) = A048719 n

end A048719

/-! ## A048719.P12491452072417923803

`∩[A048716(n+1), A077459(n+1)]`
-/

namespace A048719.P12491452072417923803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077459 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048719.P12491452072417923803

namespace A048719

/-- `∩[A048716(n+1), A077459(n+1)]` -/
def P12491452072417923803.Spec : Prop :=
  ∀ n, (P12491452072417923803.a n : ℤ) = A048719 n

end A048719

/-! ## A048719.P9664167244482947053

`eq[6*and(n, 3*n), 2*n]`
-/

namespace A048719.P9664167244482947053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * Nat.land n (3 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048719.P9664167244482947053

namespace A048719

/-- `eq[6*and(n, 3*n), 2*n]` -/
def P9664167244482947053.Spec : Prop :=
  ∀ n, (P9664167244482947053.a n : ℤ) = A048719 n

end A048719

/-! ## A048719.P10678613834751758335

`A048724(or(char[1], A048718(n)))`
-/

namespace A048719.P10678613834751758335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048724 (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A048718 n)).toNat

end

end A048719.P10678613834751758335

namespace A048719

/-- `A048724(or(char[1], A048718(n)))` -/
def P10678613834751758335.Spec : Prop :=
  ∀ n, P10678613834751758335.a n = A048719 n

end A048719

/-! ## A048719.P9863197189905771546

`∩[A003726(n+1), A048717(n)]`
-/

namespace A048719.P9863197189905771546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003726 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048717 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048719.P9863197189905771546

namespace A048719

/-- `∩[A003726(n+1), A048717(n)]` -/
def P9863197189905771546.Spec : Prop :=
  ∀ n, (P9863197189905771546.a n : ℤ) = A048719 n

end A048719

/-! ## A048719.P1051052534147356259

`A048724(A048718(n)%(n+1)²)`
-/

namespace A048719.P1051052534147356259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048724 (Int.tmod (A048718 n) ((n + 1) ^ 2 : ℤ)).toNat

end

end A048719.P1051052534147356259

namespace A048719

/-- `A048724(A048718(n)%(n+1)²)` -/
def P1051052534147356259.Spec : Prop :=
  ∀ n, P1051052534147356259.a n = A048719 n

end A048719

/-! ## A048719.P14789314469948087790

`A048724(lcm((-1)^n, A048718(n)))`
-/

namespace A048719.P14789314469948087790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048724 (Int.lcm ((-1) ^ n) (A048718 n))

end

end A048719.P14789314469948087790

namespace A048719

/-- `A048724(lcm((-1)^n, A048718(n)))` -/
def P14789314469948087790.Spec : Prop :=
  ∀ n, P14789314469948087790.a n = A048719 n

end A048719

/-!
# A048720: Multiplication table {0..i} X {0..j} of binary polynomials (polynomials over GF(2)) interpreted as binary vectors, then written in base 10; or, binary multiplication without carries.

The programs for A048720, there is no canonical definition to state claims against.
-/

/-! ## A048720.P5194098716970541581

`A004247(n)-A061858(n)`
-/

namespace A048720.P5194098716970541581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 n - A061858 n

end

end A048720.P5194098716970541581

/-! ## A048720.P3245889732400330926

`A077028(n)-(A061858(n)+1)`
-/

namespace A048720.P3245889732400330926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 n - (A061858 n + 1)

end

end A048720.P3245889732400330926

/-! ## A048720.P17030347285950898428

`A077028(n)-A004442(A061858(n))`
-/

namespace A048720.P17030347285950898428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 n - A004442 (A061858 n).toNat

end

end A048720.P17030347285950898428

/-! ## A048720.P7310954658634503758

`A023443(A077028(n)-A061858(n))`
-/

namespace A048720.P7310954658634503758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A077028 n - A061858 n).toNat

end

end A048720.P7310954658634503758

/-! ## A048720.P559706541469124874

`A004526(A130154(n+1))-A061858(n)`
-/

namespace A048720.P559706541469124874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A130154 (n + 1)).toNat - A061858 n

end

end A048720.P559706541469124874

/-! ## A048720.P7244157804660415321

`log2(A117401(n))-A061858(n)`
-/

namespace A048720.P7244157804660415321
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A117401 n : ℝ) - (A061858 n : ℝ)

end

end A048720.P7244157804660415321

/-! ## A048720.P17828344854778855099

`A284579(A173787(n))%A007318(n)`
-/

namespace A048720.P17828344854778855099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284579 (A173787 n).toNat) (A007318 n)

end

end A048720.P17828344854778855099

/-! ## A048720.P4147633745611364425

`A284579(A099627(n))%A007318(n)`
-/

namespace A048720.P4147633745611364425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284579 (A099627 n).toNat) (A007318 n)

end

end A048720.P4147633745611364425

/-! ## A048720.P7070974248080204465

`A284579(A089633(n))%A007318(n)`
-/

namespace A048720.P7070974248080204465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284579 (A089633 n).toNat) (A007318 n)

end

end A048720.P7070974248080204465

/-!
# A048721: Binary packing of Fibonacci sequence A000045.

The programs for A048721, there is no canonical definition to state claims against.
-/

/-! ## A048721.P10955998288646361131

`∑[2*a(n-1)*a(n-2)]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A048721.P10955998288646361131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n f1 =>
  2 * (f1 (n - 1) * f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048721.P10955998288646361131

/-! ## A048721.P11982072890358431447

`∑[a(n-1)²/a(n-3)]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=4`
-/

namespace A048721.P11982072890358431447
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 2, 4] fun n f1 =>
  f1 (n - 1) ^ 2 / f1 (n - 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048721.P11982072890358431447

/-! ## A048721.P1919906223769190714

`∑[A174677(n)]-1`
-/

namespace A048721.P1919906223769190714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174677 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A048721.P1919906223769190714

/-! ## A048721.P10826587816420159784

`∑[2^(A000045(n+1)-1)]-1`
-/

namespace A048721.P10826587816420159784
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000045 (n + 1) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A048721.P10826587816420159784

/-! ## A048721.P16715425758028803150

`a(n-1)+2^Δ[A000045(n+2)]/2` with `a(0)=0`
-/

namespace A048721.P16715425758028803150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (2 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ) / 2

end

end A048721.P16715425758028803150

/-!
# A048722: Reversed binary packing of Fibonacci sequence A000045.

The programs for A048722, there is no canonical definition to state claims against.
-/

/-! ## A048722.P15257366137155148393

`1+a(n-1)*2^A000045(n-1)` with `a(0)=0`
-/

namespace A048722.P15257366137155148393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  1 + a (n - 1) * (2 : ℚ) ^ (A000045 (n - 1) : ℤ)

end

end A048722.P15257366137155148393

/-! ## A048722.P4715921107060690848

`A030101(A048721(n))`
-/

namespace A048722.P4715921107060690848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A048721 n).toNat

end

end A048722.P4715921107060690848

/-! ## A048722.P11963048166132169593

`A030101(∑[2^(A000045(n+1)-1)]-1)`
-/

namespace A048722.P11963048166132169593
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000045 (n + 1) - 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j - 1)).toNat

end

end A048722.P11963048166132169593

/-!
# A048723: Binary "exponentiation" without carries: {0..y}^{0..x}, where y (column index) is binary encoding of GF(2)-polynomial and x (row index) is the exponent.

The programs for A048723, there is no canonical definition to state claims against.
-/

/-! ## A048723.P9286361466530501498

`A106444(A004248(n)%A165284(n+2))`
-/

namespace A048723.P9286361466530501498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106444 (Int.tmod (A004248 n) (A165284 (n + 2))).toNat

end

end A048723.P9286361466530501498

/-! ## A048723.P14888814105846927397

`A091202(A004248(n))^A014963(A167499(n))`
-/

namespace A048723.P14888814105846927397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091202 (A004248 n).toNat : ℚ) ^ (A014963 (A167499 n).toNat : ℤ)

end

end A048723.P14888814105846927397

/-! ## A048723.P5028203384600760412

`A106446(A004248(n)%A102474(n))`
-/

namespace A048723.P5028203384600760412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106446 (Int.tmod (A004248 n) (A102474 n)).toNat

end

end A048723.P5028203384600760412

/-! ## A048723.P2828483383272239904

`A106442(A004248(n)^A195860(3*n+5))`
-/

namespace A048723.P2828483383272239904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106442 (SequenceMachineLib.roundAway ((A004248 n : ℚ) ^ (A195860 (3 * n + 5) : ℤ))).toNat

end

end A048723.P2828483383272239904

/-! ## A048723.P6963331276317889476

`A106444(A004248(n)^A195860(3*n+5))`
-/

namespace A048723.P6963331276317889476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106444 (SequenceMachineLib.roundAway ((A004248 n : ℚ) ^ (A195860 (3 * n + 5) : ℤ))).toNat

end

end A048723.P6963331276317889476

/-!
# A048724: Write n and 2n in binary and add them mod 2.

The programs for A048724, the canonical program `A048724.P638821554898421701` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048724 has offset 0).

The definition of A048724 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048724.P638821554898421701

`xor(2*n, n)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048724

/-- `xor(2*n, n)` -/
def P638821554898421701.Spec : Prop :=
  ∀ n, (P638821554898421701.a n : ℤ) = A048724 n

theorem P638821554898421701.correct : P638821554898421701.Spec := by
  intro n
  simp only [A048724]

end A048724

/-! ## A048724.P13525608899047411569

`A001969(A003188(n)+1)`
-/

namespace A048724.P13525608899047411569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (A003188 n + 1).toNat

end

end A048724.P13525608899047411569

namespace A048724

/-- `A001969(A003188(n)+1)` -/
def P13525608899047411569.Spec : Prop :=
  ∀ n, P13525608899047411569.a n = A048724 n

end A048724

/-! ## A048724.P13466205650668919683

`A142149(2*n)`
-/

namespace A048724.P13466205650668919683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142149 (2 * n)

end

end A048724.P13466205650668919683

namespace A048724

/-- `A142149(2*n)` -/
def P13466205650668919683.Spec : Prop :=
  ∀ n, P13466205650668919683.a n = A048724 n

end A048724

/-! ## A048724.P455634852439842826

`abs(xor(1, xor(n, Δ[n²])))`
-/

namespace A048724.P455634852439842826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 1 (Int.xor (n : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ)))|

end

end A048724.P455634852439842826

namespace A048724

/-- `abs(xor(1, xor(n, Δ[n²])))` -/
def P455634852439842826.Spec : Prop :=
  ∀ n, P455634852439842826.a n = A048724 n

end A048724

/-! ## A048724.P7407437821439214697

`-xor(n-1, Δ[-n²])`
-/

namespace A048724.P7407437821439214697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor ((n : ℤ) - 1) (f1 (n + 1) - f1 n)

end

end A048724.P7407437821439214697

namespace A048724

/-- `-xor(n-1, Δ[-n²])` -/
def P7407437821439214697.Spec : Prop :=
  ∀ n, P7407437821439214697.a n = A048724 n

end A048724

/-! ## A048724.P9691510783616777944

`xor(n, Δ[n²])-(-1)^n`
-/

namespace A048724.P9691510783616777944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) - (-1) ^ n

end

end A048724.P9691510783616777944

namespace A048724

/-- `xor(n, Δ[n²])-(-1)^n` -/
def P9691510783616777944.Spec : Prop :=
  ∀ n, P9691510783616777944.a n = A048724 n

end A048724

/-! ## A048724.P17122844161190582790

`2*and(2*n, -n)-n`
-/

namespace A048724.P17122844161190582790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.land (2 * n : ℤ) (-(n : ℤ)) - (n : ℤ)

end

end A048724.P17122844161190582790

namespace A048724

/-- `2*and(2*n, -n)-n` -/
def P17122844161190582790.Spec : Prop :=
  ∀ n, P17122844161190582790.a n = A048724 n

end A048724

/-! ## A048724.P13870361901280990401

`n-2*or(2*n, -n)`
-/

namespace A048724.P13870361901280990401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2 * Int.lor (2 * n : ℤ) (-(n : ℤ))

end

end A048724.P13870361901280990401

namespace A048724

/-- `n-2*or(2*n, -n)` -/
def P13870361901280990401.Spec : Prop :=
  ∀ n, P13870361901280990401.a n = A048724 n

end A048724

/-! ## A048724.P6718580947152219397

`3*n-2*and(n, 2*n)`
-/

namespace A048724.P6718580947152219397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - (2 * Nat.land n (2 * n) : ℤ)

end

end A048724.P6718580947152219397

namespace A048724

/-- `3*n-2*and(n, 2*n)` -/
def P6718580947152219397.Spec : Prop :=
  ∀ n, P6718580947152219397.a n = A048724 n

end A048724

/-! ## A048724.P3881562365988145435

`2*(or(n, 2*n)-n)-n`
-/

namespace A048724.P3881562365988145435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((Nat.lor n (2 * n) : ℤ) - (n : ℤ)) - (n : ℤ)

end

end A048724.P3881562365988145435

namespace A048724

/-- `2*(or(n, 2*n)-n)-n` -/
def P3881562365988145435.Spec : Prop :=
  ∀ n, P3881562365988145435.a n = A048724 n

end A048724

/-! ## A048724.P8592050489856345113

`abs(xor(n-1, -(n+1+n)))`
-/

namespace A048724.P8592050489856345113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor ((n : ℤ) - 1) (-(n + 1 + n : ℤ))|

end

end A048724.P8592050489856345113

namespace A048724

/-- `abs(xor(n-1, -(n+1+n)))` -/
def P8592050489856345113.Spec : Prop :=
  ∀ n, P8592050489856345113.a n = A048724 n

end A048724

/-! ## A048724.P17389106499180732278

`and(2*n, -(2*(2*n+1)))+n`
-/

namespace A048724.P17389106499180732278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n : ℤ) (-(2 * (2 * n + 1) : ℤ)) + (n : ℤ)

end

end A048724.P17389106499180732278

namespace A048724

/-- `and(2*n, -(2*(2*n+1)))+n` -/
def P17389106499180732278.Spec : Prop :=
  ∀ n, P17389106499180732278.a n = A048724 n

end A048724

/-! ## A048724.P423361513428901773

`A003188(2*n)`
-/

namespace A048724.P423361513428901773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (2 * n)

end

end A048724.P423361513428901773

namespace A048724

/-- `A003188(2*n)` -/
def P423361513428901773.Spec : Prop :=
  ∀ n, P423361513428901773.a n = A048724 n

end A048724

/-! ## A048724.P14854408472969481207

`A048726(n)/2`
-/

namespace A048724.P14854408472969481207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048726 n : ℚ) / 2

end

end A048724.P14854408472969481207

namespace A048724

/-- `A048726(n)/2` -/
def P14854408472969481207.Spec : Prop :=
  ∀ n, P14854408472969481207.a n = (A048724 n : ℚ)

end A048724

/-! ## A048724.P16681397367734552348

`2*A229763(n)+n`
-/

namespace A048724.P16681397367734552348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A229763 n + (n : ℤ)

end

end A048724.P16681397367734552348

namespace A048724

/-- `2*A229763(n)+n` -/
def P16681397367734552348.Spec : Prop :=
  ∀ n, P16681397367734552348.a n = A048724 n

end A048724

/-! ## A048724.P16998308919879866121

`2*A213064(n)-n`
-/

namespace A048724.P16998308919879866121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213064 n - (n : ℤ)

end

end A048724.P16998308919879866121

namespace A048724

/-- `2*A213064(n)-n` -/
def P16998308919879866121.Spec : Prop :=
  ∀ n, P16998308919879866121.a n = A048724 n

end A048724

/-! ## A048724.P9933223162253594969

`3*n-A048728(n)`
-/

namespace A048724.P9933223162253594969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - A048728 n

end

end A048724.P9933223162253594969

namespace A048724

/-- `3*n-A048728(n)` -/
def P9933223162253594969.Spec : Prop :=
  ∀ n, P9933223162253594969.a n = A048724 n

end A048724

/-! ## A048724.P7829739590365543812

`4*A292272(n)-n`
-/

namespace A048724.P7829739590365543812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A292272 n - (n : ℤ)

end

end A048724.P7829739590365543812

namespace A048724

/-- `4*A292272(n)-n` -/
def P7829739590365543812.Spec : Prop :=
  ∀ n, P7829739590365543812.a n = A048724 n

end A048724

/-! ## A048724.P14870752479022605858

`xor(n, A048727(n))/2`
-/

namespace A048724.P14870752479022605858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor (n : ℤ) (A048727 n) : ℚ) / 2

end

end A048724.P14870752479022605858

namespace A048724

/-- `xor(n, A048727(n))/2` -/
def P14870752479022605858.Spec : Prop :=
  ∀ n, P14870752479022605858.a n = (A048724 n : ℚ)

end A048724

/-! ## A048724.P587055414849716333

`(A114389(n+1)-1)/2`
-/

namespace A048724.P587055414849716333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114389 (n + 1) - 1 : ℚ) / 2

end

end A048724.P587055414849716333

namespace A048724

/-- `(A114389(n+1)-1)/2` -/
def P587055414849716333.Spec : Prop :=
  ∀ n, P587055414849716333.a n = (A048724 n : ℚ)

end A048724

/-!
# A048725: a(n) = Xmult(n,5) or rule90(n,1).

The programs for A048725, the canonical program `A048725.P8303209380471663986` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048725 has offset 0).

The definition of A048725 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048725.P8303209380471663986

`xor(4*n, n)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048725

/-- `xor(4*n, n)` -/
def P8303209380471663986.Spec : Prop :=
  ∀ n, (P8303209380471663986.a n : ℤ) = A048725 n

theorem P8303209380471663986.correct : P8303209380471663986.Spec := by
  intro n
  simp only [A048725]

end A048725

/-! ## A048725.P3678292169028811418

`A048724(A048724(n))`
-/

namespace A048725.P3678292169028811418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048724 (A048724 n).toNat

end

end A048725.P3678292169028811418

namespace A048725

/-- `A048724(A048724(n))` -/
def P3678292169028811418.Spec : Prop :=
  ∀ n, P3678292169028811418.a n = A048725 n

end A048725

/-! ## A048725.P15495405889441539762

`5*n-2*and(n, 4*n)`
-/

namespace A048725.P15495405889441539762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n : ℤ) - (2 * Nat.land n (4 * n) : ℤ)

end

end A048725.P15495405889441539762

namespace A048725

/-- `5*n-2*and(n, 4*n)` -/
def P15495405889441539762.Spec : Prop :=
  ∀ n, P15495405889441539762.a n = A048725 n

end A048725

/-! ## A048725.P8862334770262074264

`abs(xor(n, (n+1)²-(1-n)²))`
-/

namespace A048725.P8862334770262074264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (((n + 1) ^ 2 : ℤ) - (1 - (n : ℤ)) ^ 2)|

end

end A048725.P8862334770262074264

namespace A048725

/-- `abs(xor(n, (n+1)²-(1-n)²))` -/
def P8862334770262074264.Spec : Prop :=
  ∀ n, P8862334770262074264.a n = A048725 n

end A048725

/-! ## A048725.P560729736276953420

`xor(n, record[xor(3, n)])-(xor(3, n)-n)`
-/

namespace A048725.P560729736276953420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor n (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) : ℤ) - ((Nat.xor 3 n : ℤ) - (n : ℤ))

end

end A048725.P560729736276953420

namespace A048725

/-- `xor(n, record[xor(3, n)])-(xor(3, n)-n)` -/
def P560729736276953420.Spec : Prop :=
  ∀ n, P560729736276953420.a n = A048725 n

end A048725

/-! ## A048725.P2287588925665507796

`5*n-A048729(n)`
-/

namespace A048725.P2287588925665507796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n : ℤ) - A048729 n

end

end A048725.P2287588925665507796

namespace A048725

/-- `5*n-A048729(n)` -/
def P2287588925665507796.Spec : Prop :=
  ∀ n, P2287588925665507796.a n = A048725 n

end A048725

/-! ## A048725.P6221585278318143434

`xor(n-1, A008586(n))+1`
-/

namespace A048725.P6221585278318143434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n : ℤ) - 1) (A008586 n) + 1

end

end A048725.P6221585278318143434

namespace A048725

/-- `xor(n-1, A008586(n))+1` -/
def P6221585278318143434.Spec : Prop :=
  ∀ n, P6221585278318143434.a n = A048725 n

end A048725

/-! ## A048725.P1654136722018228452

`A277823(n+1)-A132429(n)`
-/

namespace A048725.P1654136722018228452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277823 (n + 1) - A132429 n

end

end A048725.P1654136722018228452

namespace A048725

/-- `A277823(n+1)-A132429(n)` -/
def P1654136722018228452.Spec : Prop :=
  ∀ n, P1654136722018228452.a n = A048725 n

end A048725

/-! ## A048725.P14143489169298467337

`xor(n, A008574(n))-val(A028641(n)+1, 2)`
-/

namespace A048725.P14143489169298467337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A008574 n) - (SequenceMachineLib.valuation (A028641 n + 1).toNat 2 : ℤ)

end

end A048725.P14143489169298467337

namespace A048725

/-- `xor(n, A008574(n))-val(A028641(n)+1, 2)` -/
def P14143489169298467337.Spec : Prop :=
  ∀ n, P14143489169298467337.a n = A048725 n

end A048725

/-! ## A048725.P17987032889530521312

`A003188(A048726(n))`
-/

namespace A048725.P17987032889530521312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A048726 n).toNat

end

end A048725.P17987032889530521312

namespace A048725

/-- `A003188(A048726(n))` -/
def P17987032889530521312.Spec : Prop :=
  ∀ n, P17987032889530521312.a n = A048725 n

end A048725

/-! ## A048725.P15558667184398739202

`A003188(A003188(4*n))`
-/

namespace A048725.P15558667184398739202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A003188 (4 * n)).toNat

end

end A048725.P15558667184398739202

namespace A048725

/-- `A003188(A003188(4*n))` -/
def P15558667184398739202.Spec : Prop :=
  ∀ n, P15558667184398739202.a n = A048725 n

end A048725

/-! ## A048725.P15142472387788772489

`A396059(2*n)`
-/

namespace A048725.P15142472387788772489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396059 (2 * n)

end

end A048725.P15142472387788772489

namespace A048725

/-- `A396059(2*n)` -/
def P15142472387788772489.Spec : Prop :=
  ∀ n, P15142472387788772489.a n = A048725 n

end A048725

/-! ## A048725.P1625182135274846193

`A302846(A163355(4*n))`
-/

namespace A048725.P1625182135274846193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302846 (A163355 (4 * n)).toNat

end

end A048725.P1625182135274846193

namespace A048725

/-- `A302846(A163355(4*n))` -/
def P1625182135274846193.Spec : Prop :=
  ∀ n, P1625182135274846193.a n = A048725 n

end A048725

/-! ## A048725.P12589876588729297496

`A004443(xor(n, A016825(n)))`
-/

namespace A048725.P12589876588729297496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004443 (Int.xor (n : ℤ) (A016825 n)).toNat

end

end A048725.P12589876588729297496

namespace A048725

/-- `A004443(xor(n, A016825(n)))` -/
def P12589876588729297496.Spec : Prop :=
  ∀ n, P12589876588729297496.a n = A048725 n

end A048725

/-! ## A048725.P13337320508863867650

`A001969(A064706(2*n)+1)`
-/

namespace A048725.P13337320508863867650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (A064706 (2 * n) + 1).toNat

end

end A048725.P13337320508863867650

namespace A048725

/-- `A001969(A064706(2*n)+1)` -/
def P13337320508863867650.Spec : Prop :=
  ∀ n, P13337320508863867650.a n = A048725 n

end A048725

/-! ## A048725.P16530690429396861000

`A004443(xor(n, A016813(n)+1))`
-/

namespace A048725.P16530690429396861000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004443 (Int.xor (n : ℤ) (A016813 n + 1)).toNat

end

end A048725.P16530690429396861000

namespace A048725

/-- `A004443(xor(n, A016813(n)+1))` -/
def P16530690429396861000.Spec : Prop :=
  ∀ n, P16530690429396861000.a n = A048725 n

end A048725

/-! ## A048725.P16657875721617111142

`A064706(4*n)`
-/

namespace A048725.P16657875721617111142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064706 (4 * n)

end

end A048725.P16657875721617111142

namespace A048725

/-- `A064706(4*n)` -/
def P16657875721617111142.Spec : Prop :=
  ∀ n, P16657875721617111142.a n = A048725 n

end A048725

/-! ## A048725.P8966826231535617912

`A234612(A234613(4*n))`
-/

namespace A048725.P8966826231535617912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234612 (A234613 (4 * n)).toNat

end

end A048725.P8966826231535617912

namespace A048725

/-- `A234612(A234613(4*n))` -/
def P8966826231535617912.Spec : Prop :=
  ∀ n, P8966826231535617912.a n = A048725 n

end A048725

/-! ## A048725.P140302739884374683

`A234612(2*A193231(2*n))`
-/

namespace A048725.P140302739884374683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234612 (2 * A193231 (2 * n)).toNat

end

end A048725.P140302739884374683

namespace A048725

/-- `A234612(2*A193231(2*n))` -/
def P140302739884374683.Spec : Prop :=
  ∀ n, P140302739884374683.a n = A048725 n

end A048725

/-! ## A048725.P6686708439304963004

`A004444(A277823(n+1))`
-/

namespace A048725.P6686708439304963004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004444 (A277823 (n + 1)).toNat

end

end A048725.P6686708439304963004

namespace A048725

/-- `A004444(A277823(n+1))` -/
def P6686708439304963004.Spec : Prop :=
  ∀ n, P6686708439304963004.a n = A048725 n

end A048725

/-!
# A048726: a(n) = Xmult(n,6), or 2*A048724(n).

The programs for A048726, the canonical program `A048726.P16462123805614059439` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048726 has offset 0).

The definition of A048726 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048726.P1679719738862789122

`xor(2*n, 4*n)`
-/

namespace A048726.P1679719738862789122
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (2 * n) (4 * n)

end

end A048726.P1679719738862789122

namespace A048726

/-- `xor(2*n, 4*n)` -/
def P1679719738862789122.Spec : Prop :=
  ∀ n, (P1679719738862789122.a n : ℤ) = A048726 n

end A048726

/-! ## A048726.P16462123805614059439

`2*A048724(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A048726

/-- `2*A048724(n)` -/
def P16462123805614059439.Spec : Prop :=
  ∀ n, P16462123805614059439.a n = A048726 n

theorem P16462123805614059439.correct : P16462123805614059439.Spec := by
  intro n
  simp only [A048726]

end A048726

/-! ## A048726.P122544949242932014

`4*or(n, 2*n)-6*n`
-/

namespace A048726.P122544949242932014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * Nat.lor n (2 * n) : ℤ) - (6 * n : ℤ)

end

end A048726.P122544949242932014

namespace A048726

/-- `4*or(n, 2*n)-6*n` -/
def P122544949242932014.Spec : Prop :=
  ∀ n, P122544949242932014.a n = A048726 n

end A048726

/-! ## A048726.P9264170843068531355

`xor(n, n+n)+xor(n, n+n)`
-/

namespace A048726.P9264170843068531355
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + n) + Nat.xor n (n + n)

end

end A048726.P9264170843068531355

namespace A048726

/-- `xor(n, n+n)+xor(n, n+n)` -/
def P9264170843068531355.Spec : Prop :=
  ∀ n, (P9264170843068531355.a n : ℤ) = A048726 n

end A048726

/-! ## A048726.P13117470194932717276

`4*and(2*n, -n)-2*n`
-/

namespace A048726.P13117470194932717276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * Int.land (2 * n : ℤ) (-(n : ℤ)) - (2 * n : ℤ)

end

end A048726.P13117470194932717276

namespace A048726

/-- `4*and(2*n, -n)-2*n` -/
def P13117470194932717276.Spec : Prop :=
  ∀ n, P13117470194932717276.a n = A048726 n

end A048726

/-! ## A048726.P6049407082881395886

`2*n+4*and(n, -(2*n+1))`
-/

namespace A048726.P6049407082881395886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + 4 * Int.land (n : ℤ) (-(2 * n + 1 : ℤ))

end

end A048726.P6049407082881395886

namespace A048726

/-- `2*n+4*and(n, -(2*n+1))` -/
def P6049407082881395886.Spec : Prop :=
  ∀ n, P6049407082881395886.a n = A048726 n

end A048726

/-! ## A048726.P4120499135199064792

`A114389(n+1)-1`
-/

namespace A048726.P4120499135199064792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114389 (n + 1) - 1

end

end A048726.P4120499135199064792

namespace A048726

/-- `A114389(n+1)-1` -/
def P4120499135199064792.Spec : Prop :=
  ∀ n, P4120499135199064792.a n = A048726 n

end A048726

/-! ## A048726.P16458476334612131440

`2*A003188(2*n)`
-/

namespace A048726.P16458476334612131440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003188 (2 * n)

end

end A048726.P16458476334612131440

namespace A048726

/-- `2*A003188(2*n)` -/
def P16458476334612131440.Spec : Prop :=
  ∀ n, P16458476334612131440.a n = A048726 n

end A048726

/-! ## A048726.P14170746612874356637

`A048724(n)+A000027(A048724(n)+1)-1`
-/

namespace A048726.P14170746612874356637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048724 n + A000027 (A048724 n + 1).toNat - 1

end

end A048726.P14170746612874356637

namespace A048726

/-- `A048724(n)+A000027(A048724(n)+1)-1` -/
def P14170746612874356637.Spec : Prop :=
  ∀ n, P14170746612874356637.a n = A048726 n

end A048726

/-! ## A048726.P6233622577655330207

`A003188(4*n)`
-/

namespace A048726.P6233622577655330207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (4 * n)

end

end A048726.P6233622577655330207

namespace A048726

/-- `A003188(4*n)` -/
def P6233622577655330207.Spec : Prop :=
  ∀ n, P6233622577655330207.a n = A048726 n

end A048726

/-! ## A048726.P17449086588477219637

`A125592(A105081(n+1))`
-/

namespace A048726.P17449086588477219637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125592 (A105081 (n + 1)).toNat

end

end A048726.P17449086588477219637

namespace A048726

/-- `A125592(A105081(n+1))` -/
def P17449086588477219637.Spec : Prop :=
  ∀ n, P17449086588477219637.a n = A048726 n

end A048726

/-! ## A048726.P398561666108861805

`2*A142149(2*n)`
-/

namespace A048726.P398561666108861805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A142149 (2 * n)

end

end A048726.P398561666108861805

namespace A048726

/-- `2*A142149(2*n)` -/
def P398561666108861805.Spec : Prop :=
  ∀ n, P398561666108861805.a n = A048726 n

end A048726

/-! ## A048726.P8362506435076354021

`6*n-A048728(2*n)`
-/

namespace A048726.P8362506435076354021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n : ℤ) - A048728 (2 * n)

end

end A048726.P8362506435076354021

namespace A048726

/-- `6*n-A048728(2*n)` -/
def P8362506435076354021.Spec : Prop :=
  ∀ n, P8362506435076354021.a n = A048726 n

end A048726

/-! ## A048726.P4878941062704753648

`A163617(2*n)-A213370(2*n)`
-/

namespace A048726.P4878941062704753648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163617 (2 * n) - A213370 (2 * n)

end

end A048726.P4878941062704753648

namespace A048726

/-- `A163617(2*n)-A213370(2*n)` -/
def P4878941062704753648.Spec : Prop :=
  ∀ n, P4878941062704753648.a n = A048726 n

end A048726

/-! ## A048726.P7868018531605357608

`A048724(n+n)`
-/

namespace A048726.P7868018531605357608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048724 (n + n)

end

end A048726.P7868018531605357608

namespace A048726

/-- `A048724(n+n)` -/
def P7868018531605357608.Spec : Prop :=
  ∀ n, P7868018531605357608.a n = A048726 n

end A048726

/-! ## A048726.P15835909709994684061

`A065621(Δ[n²])-1`
-/

namespace A048726.P15835909709994684061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065621 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A048726.P15835909709994684061

namespace A048726

/-- `A065621(Δ[n²])-1` -/
def P15835909709994684061.Spec : Prop :=
  ∀ n, P15835909709994684061.a n = A048726 n

end A048726

/-!
# A048727: a(n) = Xmult(n,7) or rule150(n,1).

The programs for A048727, the canonical program `A048727.P3236370101091825872` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048727 has offset 0).

The definition of A048727 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A048727.P3236370101091825872

`xor(n, 2*xor(n, 2*n))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048727

/-- `xor(n, 2*xor(n, 2*n))` -/
def P3236370101091825872.Spec : Prop :=
  ∀ n, (P3236370101091825872.a n : ℤ) = A048727 n

theorem P3236370101091825872.correct : P3236370101091825872.Spec := by
  intro n
  simp only [A048727]

end A048727

/-! ## A048727.P15884584175500994682

`xor(n, A048726(n))`
-/

namespace A048727.P15884584175500994682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A048726 n)

end

end A048727.P15884584175500994682

namespace A048727

/-- `xor(n, A048726(n))` -/
def P15884584175500994682.Spec : Prop :=
  ∀ n, P15884584175500994682.a n = A048727 n

end A048727

/-! ## A048727.P98636803105487814

`xor(2*n, A048725(n))`
-/

namespace A048727.P98636803105487814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * n : ℤ) (A048725 n)

end

end A048727.P98636803105487814

namespace A048727

/-- `xor(2*n, A048725(n))` -/
def P98636803105487814.Spec : Prop :=
  ∀ n, P98636803105487814.a n = A048727 n

end A048727

/-! ## A048727.P8036300097604957795

`xor(n, 2*A048724(n))`
-/

namespace A048727.P8036300097604957795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (2 * A048724 n)

end

end A048727.P8036300097604957795

namespace A048727

/-- `xor(n, 2*A048724(n))` -/
def P8036300097604957795.Spec : Prop :=
  ∀ n, P8036300097604957795.a n = A048727 n

end A048727

/-! ## A048727.P10178720101295954055

`xor(n, A114389(n+1)-1)`
-/

namespace A048727.P10178720101295954055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A114389 (n + 1) - 1)

end

end A048727.P10178720101295954055

namespace A048727

/-- `xor(n, A114389(n+1)-1)` -/
def P10178720101295954055.Spec : Prop :=
  ∀ n, P10178720101295954055.a n = A048727 n

end A048727

/-! ## A048727.P2439613181708678482

`xor(n, 2*A003188(2*n))`
-/

namespace A048727.P2439613181708678482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (2 * A003188 (2 * n))

end

end A048727.P2439613181708678482

namespace A048727

/-- `xor(n, 2*A003188(2*n))` -/
def P2439613181708678482.Spec : Prop :=
  ∀ n, P2439613181708678482.a n = A048727 n

end A048727

/-! ## A048727.P934882501426724330

`A008589(n)-A048730(n)`
-/

namespace A048727.P934882501426724330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 n - A048730 n

end

end A048727.P934882501426724330

namespace A048727

/-- `A008589(n)-A048730(n)` -/
def P934882501426724330.Spec : Prop :=
  ∀ n, P934882501426724330.a n = A048727 n

end A048727

/-! ## A048727.P4174462082986411682

`xor(A008586(n), A048724(n))`
-/

namespace A048727.P4174462082986411682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008586 n) (A048724 n)

end

end A048727.P4174462082986411682

namespace A048727

/-- `xor(A008586(n), A048724(n))` -/
def P4174462082986411682.Spec : Prop :=
  ∀ n, P4174462082986411682.a n = A048727 n

end A048727

/-! ## A048727.P7991111128891447094

`xor(A048728(n), A269160(n))`
-/

namespace A048727.P7991111128891447094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A048728 n) (A269160 n)

end

end A048727.P7991111128891447094

namespace A048727

/-- `xor(A048728(n), A269160(n))` -/
def P7991111128891447094.Spec : Prop :=
  ∀ n, P7991111128891447094.a n = A048727 n

end A048727

/-! ## A048727.P17146837486505108542

`xor(A213370(n), A269161(n))`
-/

namespace A048727.P17146837486505108542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A213370 n) (A269161 n)

end

end A048727.P17146837486505108542

namespace A048727

/-- `xor(A213370(n), A269161(n))` -/
def P17146837486505108542.Spec : Prop :=
  ∀ n, P17146837486505108542.a n = A048727 n

end A048727

/-! ## A048727.P17721449278102657095

`xor(A016813(n), A065621(n+1))`
-/

namespace A048727.P17721449278102657095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A016813 n) (A065621 (n + 1))

end

end A048727.P17721449278102657095

namespace A048727

/-- `xor(A016813(n), A065621(n+1))` -/
def P17721449278102657095.Spec : Prop :=
  ∀ n, P17721449278102657095.a n = A048727 n

end A048727

/-! ## A048727.P11854713539454311423

`xor(A004442(n), A114389(n+1))`
-/

namespace A048727.P11854713539454311423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004442 n) (A114389 (n + 1))

end

end A048727.P11854713539454311423

namespace A048727

/-- `xor(A004442(n), A114389(n+1))` -/
def P11854713539454311423.Spec : Prop :=
  ∀ n, P11854713539454311423.a n = A048727 n

end A048727

/-! ## A048727.P15433268647404910493

`xor(2*A048733(n), A269173(n))`
-/

namespace A048727.P15433268647404910493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * A048733 n) (A269173 n)

end

end A048727.P15433268647404910493

namespace A048727

/-- `xor(2*A048733(n), A269173(n))` -/
def P15433268647404910493.Spec : Prop :=
  ∀ n, P15433268647404910493.a n = A048727 n

end A048727

/-! ## A048727.P15195318486047964916

`xor(n, xor(A004277(n), A008574(n)))`
-/

namespace A048727.P15195318486047964916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (Int.xor (A004277 n) (A008574 n))

end

end A048727.P15195318486047964916

namespace A048727

/-- `xor(n, xor(A004277(n), A008574(n)))` -/
def P15195318486047964916.Spec : Prop :=
  ∀ n, P15195318486047964916.a n = A048727 n

end A048727

/-! ## A048727.P7555118158462745041

`xor(n, xor(A048724(n), A048725(n)))`
-/

namespace A048727.P7555118158462745041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (Int.xor (A048724 n) (A048725 n))

end

end A048727.P7555118158462745041

namespace A048727

/-- `xor(n, xor(A048724(n), A048725(n)))` -/
def P7555118158462745041.Spec : Prop :=
  ∀ n, P7555118158462745041.a n = A048727 n

end A048727

/-! ## A048727.P5258655356978589366

`xor(A004770(n+1), A277825(n+1))`
-/

namespace A048727.P5258655356978589366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004770 (n + 1)) (A277825 (n + 1))

end

end A048727.P5258655356978589366

namespace A048727

/-- `xor(A004770(n+1), A277825(n+1))` -/
def P5258655356978589366.Spec : Prop :=
  ∀ n, P5258655356978589366.a n = A048727 n

end A048727

/-! ## A048727.P10724581268216446759

`xor(A004767(n)-2, A065621(n+1))`
-/

namespace A048727.P10724581268216446759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004767 n - 2) (A065621 (n + 1))

end

end A048727.P10724581268216446759

namespace A048727

/-- `xor(A004767(n)-2, A065621(n+1))` -/
def P10724581268216446759.Spec : Prop :=
  ∀ n, P10724581268216446759.a n = A048727 n

end A048727

/-! ## A048727.P12473790050056915148

`xor(xor(n, A047615(n+1)), A014601(n))`
-/

namespace A048727.P12473790050056915148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.xor (n : ℤ) (A047615 (n + 1))) (A014601 n)

end

end A048727.P12473790050056915148

namespace A048727

/-- `xor(xor(n, A047615(n+1)), A014601(n))` -/
def P12473790050056915148.Spec : Prop :=
  ∀ n, P12473790050056915148.a n = A048727 n

end A048727

/-! ## A048727.P16552558142406190583

`xor(n, A003188(4*n))`
-/

namespace A048727.P16552558142406190583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A003188 (4 * n))

end

end A048727.P16552558142406190583

namespace A048727

/-- `xor(n, A003188(4*n))` -/
def P16552558142406190583.Spec : Prop :=
  ∀ n, P16552558142406190583.a n = A048727 n

end A048727

/-! ## A048727.P3514391624794761648

`A003188(xor(A006068(n), A008586(n)))`
-/

namespace A048727.P3514391624794761648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (Int.xor (A006068 n) (A008586 n)).toNat

end

end A048727.P3514391624794761648

namespace A048727

/-- `A003188(xor(A006068(n), A008586(n)))` -/
def P3514391624794761648.Spec : Prop :=
  ∀ n, P3514391624794761648.a n = A048727 n

end A048727

/-!
# A048728: Differences between A008585 (multiples of 3) and A048724.

The programs for A048728, the canonical program `A048728.P13379438921581273404` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048728 has offset 0).

The definition of A048728 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A048728.P12678248660614881244

`2*and(n, 2*n)`
-/

namespace A048728.P12678248660614881244
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.land n (2 * n)

end

end A048728.P12678248660614881244

namespace A048728

/-- `2*and(n, 2*n)` -/
def P12678248660614881244.Spec : Prop :=
  ∀ n, (P12678248660614881244.a n : ℤ) = A048728 n

end A048728

/-! ## A048728.P4722642005631493528

`3*n-xor(n, 2*n)`
-/

namespace A048728.P4722642005631493528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - (Nat.xor n (2 * n) : ℤ)

end

end A048728.P4722642005631493528

namespace A048728

/-- `3*n-xor(n, 2*n)` -/
def P4722642005631493528.Spec : Prop :=
  ∀ n, P4722642005631493528.a n = A048728 n

end A048728

/-! ## A048728.P5881732018663933599

`2*(or(2*n, -n)+n)`
-/

namespace A048728.P5881732018663933599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (Int.lor (2 * n : ℤ) (-(n : ℤ)) + (n : ℤ))

end

end A048728.P5881732018663933599

namespace A048728

/-- `2*(or(2*n, -n)+n)` -/
def P5881732018663933599.Spec : Prop :=
  ∀ n, P5881732018663933599.a n = A048728 n

end A048728

/-! ## A048728.P2748242507485818480

`xor(2*n, -n)+3*n`
-/

namespace A048728.P2748242507485818480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * n : ℤ) (-(n : ℤ)) + (3 * n : ℤ)

end

end A048728.P2748242507485818480

namespace A048728

/-- `xor(2*n, -n)+3*n` -/
def P2748242507485818480.Spec : Prop :=
  ∀ n, P2748242507485818480.a n = A048728 n

end A048728

/-! ## A048728.P11334890706279969680

`2*(3*n-or(n, 2*n))`
-/

namespace A048728.P11334890706279969680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((3 * n : ℤ) - (Nat.lor n (2 * n) : ℤ))

end

end A048728.P11334890706279969680

namespace A048728

/-- `2*(3*n-or(n, 2*n))` -/
def P11334890706279969680.Spec : Prop :=
  ∀ n, P11334890706279969680.a n = A048728 n

end A048728

/-! ## A048728.P17070919988470815122

`and((n+1)²-(1-n)², Δ[n²])`
-/

namespace A048728.P17070919988470815122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (((n + 1) ^ 2 : ℤ) - (1 - (n : ℤ)) ^ 2) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A048728.P17070919988470815122

namespace A048728

/-- `and((n+1)²-(1-n)², Δ[n²])` -/
def P17070919988470815122.Spec : Prop :=
  ∀ n, P17070919988470815122.a n = A048728 n

end A048728

/-! ## A048728.P2112458798493597773

`2*A213370(n)`
-/

namespace A048728.P2112458798493597773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213370 n

end

end A048728.P2112458798493597773

namespace A048728

/-- `2*A213370(n)` -/
def P2112458798493597773.Spec : Prop :=
  ∀ n, P2112458798493597773.a n = A048728 n

end A048728

/-! ## A048728.P10801891426646123705

`4*A048735(n)`
-/

namespace A048728.P10801891426646123705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A048735 n

end

end A048728.P10801891426646123705

namespace A048728

/-- `4*A048735(n)` -/
def P10801891426646123705.Spec : Prop :=
  ∀ n, P10801891426646123705.a n = A048728 n

end A048728

/-! ## A048728.P13427249164386440348

`2*(n-A229763(n))`
-/

namespace A048728.P13427249164386440348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) - A229763 n)

end

end A048728.P13427249164386440348

namespace A048728

/-- `2*(n-A229763(n))` -/
def P13427249164386440348.Spec : Prop :=
  ∀ n, P13427249164386440348.a n = A048728 n

end A048728

/-! ## A048728.P8261673092965937778

`4*(n-A292272(n))`
-/

namespace A048728.P8261673092965937778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((n : ℤ) - A292272 n)

end

end A048728.P8261673092965937778

namespace A048728

/-- `4*(n-A292272(n))` -/
def P8261673092965937778.Spec : Prop :=
  ∀ n, P8261673092965937778.a n = A048728 n

end A048728

/-! ## A048728.P1520618313570354318

`A005843(and(n, 2*n))`
-/

namespace A048728.P1520618313570354318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (Nat.land n (2 * n))

end

end A048728.P1520618313570354318

namespace A048728

/-- `A005843(and(n, 2*n))` -/
def P1520618313570354318.Spec : Prop :=
  ∀ n, P1520618313570354318.a n = A048728 n

end A048728

/-! ## A048728.P2312385829444614003

`A014601(and(n, 2*n))`
-/

namespace A048728.P2312385829444614003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 (Nat.land n (2 * n))

end

end A048728.P2312385829444614003

namespace A048728

/-- `A014601(and(n, 2*n))` -/
def P2312385829444614003.Spec : Prop :=
  ∀ n, P2312385829444614003.a n = A048728 n

end A048728

/-! ## A048728.P17859539364533257027

`A022998(and(n, 2*n))`
-/

namespace A048728.P17859539364533257027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (Nat.land n (2 * n))

end

end A048728.P17859539364533257027

namespace A048728

/-- `A022998(and(n, 2*n))` -/
def P17859539364533257027.Spec : Prop :=
  ∀ n, P17859539364533257027.a n = A048728 n

end A048728

/-! ## A048728.P8055770075866745284

`A026185(and(n, 2*n))`
-/

namespace A048728.P8055770075866745284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026185 (Nat.land n (2 * n))

end

end A048728.P8055770075866745284

namespace A048728

/-- `A026185(and(n, 2*n))` -/
def P8055770075866745284.Spec : Prop :=
  ∀ n, P8055770075866745284.a n = A048728 n

end A048728

/-! ## A048728.P9965836866596815457

`A042948(and(n, 2*n))`
-/

namespace A048728.P9965836866596815457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (Nat.land n (2 * n))

end

end A048728.P9965836866596815457

namespace A048728

/-- `A042948(and(n, 2*n))` -/
def P9965836866596815457.Spec : Prop :=
  ∀ n, P9965836866596815457.a n = A048728 n

end A048728

/-! ## A048728.P15812984323415848545

`A265723(and(n, 2*n))`
-/

namespace A048728.P15812984323415848545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265723 (Nat.land n (2 * n))

end

end A048728.P15812984323415848545

namespace A048728

/-- `A265723(and(n, 2*n))` -/
def P15812984323415848545.Spec : Prop :=
  ∀ n, P15812984323415848545.a n = A048728 n

end A048728

/-! ## A048728.P8089679434386374302

`A266073(and(n, 2*n))`
-/

namespace A048728.P8089679434386374302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266073 (Nat.land n (2 * n))

end

end A048728.P8089679434386374302

namespace A048728

/-- `A266073(and(n, 2*n))` -/
def P8089679434386374302.Spec : Prop :=
  ∀ n, P8089679434386374302.a n = A048728 n

end A048728

/-! ## A048728.P18381389498732933618

`A005843(A213370(n))`
-/

namespace A048728.P18381389498732933618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A213370 n).toNat

end

end A048728.P18381389498732933618

namespace A048728

/-- `A005843(A213370(n))` -/
def P18381389498732933618.Spec : Prop :=
  ∀ n, P18381389498732933618.a n = A048728 n

end A048728

/-! ## A048728.P13379438921581273404

`A008585(n)-A048724(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A048728

/-- `A008585(n)-A048724(n)` -/
def P13379438921581273404.Spec : Prop :=
  ∀ n, P13379438921581273404.a n = A048728 n

theorem P13379438921581273404.correct : P13379438921581273404.Spec := by
  intro n
  simp only [A048728]

end A048728

/-! ## A048728.P12411183089251892823

`A005843(n-A229763(n))`
-/

namespace A048728.P12411183089251892823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 ((n : ℤ) - A229763 n).toNat

end

end A048728.P12411183089251892823

namespace A048728

/-- `A005843(n-A229763(n))` -/
def P12411183089251892823.Spec : Prop :=
  ∀ n, P12411183089251892823.a n = A048728 n

end A048728

/-!
# A048729: Differences between A008587 (multiples of 5) and A048725.

The programs for A048729, the canonical program `A048729.P10088475037815274904` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048729 has offset 0).

The definition of A048729 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A048729.P10088475037815274904

`2*and(n, 4*n)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048729

/-- `2*and(n, 4*n)` -/
def P10088475037815274904.Spec : Prop :=
  ∀ n, (P10088475037815274904.a n : ℤ) = A048729 n

theorem P10088475037815274904.correct : P10088475037815274904.Spec := by
  intro n
  simp only [A048729]

end A048729

/-! ## A048729.P10440386577982707879

`5*n-xor(n, 4*n)`
-/

namespace A048729.P10440386577982707879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n : ℤ) - (Nat.xor n (4 * n) : ℤ)

end

end A048729.P10440386577982707879

namespace A048729

/-- `5*n-xor(n, 4*n)` -/
def P10440386577982707879.Spec : Prop :=
  ∀ n, P10440386577982707879.a n = A048729 n

end A048729

/-! ## A048729.P6949392246921239333

`2*(or(4*n, -n)+n)`
-/

namespace A048729.P6949392246921239333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (Int.lor (4 * n : ℤ) (-(n : ℤ)) + (n : ℤ))

end

end A048729.P6949392246921239333

namespace A048729

/-- `2*(or(4*n, -n)+n)` -/
def P6949392246921239333.Spec : Prop :=
  ∀ n, P6949392246921239333.a n = A048729 n

end A048729

/-! ## A048729.P3211061110789198899

`and(Δ[(n-1+n)²], Δ[n²])`
-/

namespace A048729.P3211061110789198899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1 + (n : ℤ)) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (n + 1) - f1 n) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A048729.P3211061110789198899

namespace A048729

/-- `and(Δ[(n-1+n)²], Δ[n²])` -/
def P3211061110789198899.Spec : Prop :=
  ∀ n, P3211061110789198899.a n = A048729 n

end A048729

/-! ## A048729.P3445244420355937134

`5*n-A048725(n)`
-/

namespace A048729.P3445244420355937134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n : ℤ) - A048725 n

end

end A048729.P3445244420355937134

namespace A048729

/-- `5*n-A048725(n)` -/
def P3445244420355937134.Spec : Prop :=
  ∀ n, P3445244420355937134.a n = A048729 n

end A048729

/-! ## A048729.P9628925170815248564

`A005843(and(n, 4*n))`
-/

namespace A048729.P9628925170815248564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (Nat.land n (4 * n))

end

end A048729.P9628925170815248564

namespace A048729

/-- `A005843(and(n, 4*n))` -/
def P9628925170815248564.Spec : Prop :=
  ∀ n, P9628925170815248564.a n = A048729 n

end A048729

/-! ## A048729.P11811423430620450273

`A014601(and(n, A008574(n)))`
-/

namespace A048729.P11811423430620450273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 (Int.land (n : ℤ) (A008574 n)).toNat

end

end A048729.P11811423430620450273

namespace A048729

/-- `A014601(and(n, A008574(n)))` -/
def P11811423430620450273.Spec : Prop :=
  ∀ n, P11811423430620450273.a n = A048729 n

end A048729

/-! ## A048729.P9157900844344741352

`A014601(and(n, A008586(n)))`
-/

namespace A048729.P9157900844344741352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 (Int.land (n : ℤ) (A008586 n)).toNat

end

end A048729.P9157900844344741352

namespace A048729

/-- `A014601(and(n, A008586(n)))` -/
def P9157900844344741352.Spec : Prop :=
  ∀ n, P9157900844344741352.a n = A048729 n

end A048729

/-! ## A048729.P7371106587045625839

`A016885(n)-(A048725(n)+3)`
-/

namespace A048729.P7371106587045625839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 n - (A048725 n + 3)

end

end A048729.P7371106587045625839

namespace A048729

/-- `A016885(n)-(A048725(n)+3)` -/
def P7371106587045625839.Spec : Prop :=
  ∀ n, P7371106587045625839.a n = A048729 n

end A048729

/-! ## A048729.P15255470712011928499

`2*(A008587(n)-A178891(n))`
-/

namespace A048729.P15255470712011928499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A008587 n - A178891 n)

end

end A048729.P15255470712011928499

namespace A048729

/-- `2*(A008587(n)-A178891(n))` -/
def P15255470712011928499.Spec : Prop :=
  ∀ n, P15255470712011928499.a n = A048729 n

end A048729

/-! ## A048729.P5380424234927188215

`A008586(and(n, A008586(n))/2)`
-/

namespace A048729.P5380424234927188215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (SequenceMachineLib.roundAway ((Int.land (n : ℤ) (A008586 n) : ℚ) / 2)).toNat

end

end A048729.P5380424234927188215

namespace A048729

/-- `A008586(and(n, A008586(n))/2)` -/
def P5380424234927188215.Spec : Prop :=
  ∀ n, P5380424234927188215.a n = A048729 n

end A048729

/-! ## A048729.P11271504692681550012

`A048730(n)-A048724(A048728(n))`
-/

namespace A048729.P11271504692681550012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048730 n - A048724 (A048728 n).toNat

end

end A048729.P11271504692681550012

namespace A048729

/-- `A048730(n)-A048724(A048728(n))` -/
def P11271504692681550012.Spec : Prop :=
  ∀ n, P11271504692681550012.a n = A048729 n

end A048729

/-! ## A048729.P18349182971243515458

`2*(A001068(2*n)-A064706(2*n))`
-/

namespace A048729.P18349182971243515458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A001068 (2 * n) - A064706 (2 * n))

end

end A048729.P18349182971243515458

namespace A048729

/-- `2*(A001068(2*n)-A064706(2*n))` -/
def P18349182971243515458.Spec : Prop :=
  ∀ n, P18349182971243515458.a n = A048729 n

end A048729

/-! ## A048729.P16092502756251269084

`A008587(n)-A048724(A048724(n))`
-/

namespace A048729.P16092502756251269084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 n - A048724 (A048724 n).toNat

end

end A048729.P16092502756251269084

namespace A048729

/-- `A008587(n)-A048724(A048724(n))` -/
def P16092502756251269084.Spec : Prop :=
  ∀ n, P16092502756251269084.a n = A048729 n

end A048729

/-! ## A048729.P16865139786882557956

`A061859(A238531(n))`
-/

namespace A048729.P16865139786882557956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061859 (A238531 n).toNat

end

end A048729.P16865139786882557956

namespace A048729

/-- `A061859(A238531(n))` -/
def P16865139786882557956.Spec : Prop :=
  ∀ n, P16865139786882557956.a n = A048729 n

end A048729

/-! ## A048729.P1145861621031968577

`A061859(A089071(n+1))`
-/

namespace A048729.P1145861621031968577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061859 (A089071 (n + 1)).toNat

end

end A048729.P1145861621031968577

namespace A048729

/-- `A061859(A089071(n+1))` -/
def P1145861621031968577.Spec : Prop :=
  ∀ n, P1145861621031968577.a n = A048729 n

end A048729

/-! ## A048729.P11328730804527540139

`A061859(A152948(n+1))`
-/

namespace A048729.P11328730804527540139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061859 (A152948 (n + 1)).toNat

end

end A048729.P11328730804527540139

namespace A048729

/-- `A061859(A152948(n+1))` -/
def P11328730804527540139.Spec : Prop :=
  ∀ n, P11328730804527540139.a n = A048729 n

end A048729

/-! ## A048729.P12346206801705184283

`A061858(A302537(n+2)-(2*n+1))`
-/

namespace A048729.P12346206801705184283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061858 (A302537 (n + 2) - (2 * n + 1 : ℤ)).toNat

end

end A048729.P12346206801705184283

namespace A048729

/-- `A061858(A302537(n+2)-(2*n+1))` -/
def P12346206801705184283.Spec : Prop :=
  ∀ n, P12346206801705184283.a n = A048729 n

end A048729

/-!
# A048730: Differences between A008589 (multiples of 7) and A048727, a(n) = ((n*7)-Xmult(n,7)).

The programs for A048730, the canonical program `A048730.P18324862904889220628` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048730 has offset 0).

The definition of A048730 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A048730.P4127000917231456580

`4*A048733(n)`
-/

namespace A048730.P4127000917231456580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A048733 n

end

end A048730.P4127000917231456580

namespace A048730

/-- `4*A048733(n)` -/
def P4127000917231456580.Spec : Prop :=
  ∀ n, P4127000917231456580.a n = A048730 n

end A048730

/-! ## A048730.P18324862904889220628

`7*n-A048727(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A048730

/-- `7*n-A048727(n)` -/
def P18324862904889220628.Spec : Prop :=
  ∀ n, P18324862904889220628.a n = A048730 n

theorem P18324862904889220628.correct : P18324862904889220628.Spec := by
  intro n
  simp only [A048730]

end A048730

/-! ## A048730.P11319405863486372361

`A008586(A048733(n))`
-/

namespace A048730.P11319405863486372361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A048733 n).toNat

end

end A048730.P11319405863486372361

namespace A048730

/-- `A008586(A048733(n))` -/
def P11319405863486372361.Spec : Prop :=
  ∀ n, P11319405863486372361.a n = A048730 n

end A048730

/-! ## A048730.P12578834991576136506

`A048729(n)+A048724(A048728(n))`
-/

namespace A048730.P12578834991576136506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048729 n + A048724 (A048728 n).toNat

end

end A048730.P12578834991576136506

namespace A048730

/-- `A048729(n)+A048724(A048728(n))` -/
def P12578834991576136506.Spec : Prop :=
  ∀ n, P12578834991576136506.a n = A048730 n

end A048730

/-! ## A048730.P17125719802553374930

`A008574(A048733(n)+n)-A008574(n)`
-/

namespace A048730.P17125719802553374930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A048733 n + (n : ℤ)).toNat - A008574 n

end

end A048730.P17125719802553374930

namespace A048730

/-- `A008574(A048733(n)+n)-A008574(n)` -/
def P17125719802553374930.Spec : Prop :=
  ∀ n, P17125719802553374930.a n = A048730 n

end A048730

/-! ## A048730.P9302722974920307080

`4*A342697(2*n)`
-/

namespace A048730.P9302722974920307080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A342697 (2 * n)

end

end A048730.P9302722974920307080

namespace A048730

/-- `4*A342697(2*n)` -/
def P9302722974920307080.Spec : Prop :=
  ∀ n, P9302722974920307080.a n = A048730 n

end A048730

/-! ## A048730.P14429688228110410968

`A048733(A005843(n))+A048733(A005843(n))`
-/

namespace A048730.P14429688228110410968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048733 (A005843 n).toNat + A048733 (A005843 n).toNat

end

end A048730.P14429688228110410968

namespace A048730

/-- `A048733(A005843(n))+A048733(A005843(n))` -/
def P14429688228110410968.Spec : Prop :=
  ∀ n, P14429688228110410968.a n = A048730 n

end A048730

/-! ## A048730.P12978810182897038085

`2*xor(n, A229763(A048724(n)))`
-/

namespace A048730.P12978810182897038085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.xor (n : ℤ) (A229763 (A048724 n).toNat)

end

end A048730.P12978810182897038085

namespace A048730

/-- `2*xor(n, A229763(A048724(n)))` -/
def P12978810182897038085.Spec : Prop :=
  ∀ n, P12978810182897038085.a n = A048730 n

end A048730

/-! ## A048730.P3688372312681375966

`xor(A008586(n), A048728(A048724(n)))`
-/

namespace A048730.P3688372312681375966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008586 n) (A048728 (A048724 n).toNat)

end

end A048730.P3688372312681375966

namespace A048730

/-- `xor(A008586(n), A048728(A048724(n)))` -/
def P3688372312681375966.Spec : Prop :=
  ∀ n, P3688372312681375966.a n = A048730 n

end A048730

/-! ## A048730.P17141492568311629279

`A048733(A008574(n))`
-/

namespace A048730.P17141492568311629279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048733 (A008574 n).toNat

end

end A048730.P17141492568311629279

namespace A048730

/-- `A048733(A008574(n))` -/
def P17141492568311629279.Spec : Prop :=
  ∀ n, P17141492568311629279.a n = A048730 n

end A048730

/-! ## A048730.P14526093167786091413

`A048733(A047461(n+1))`
-/

namespace A048730.P14526093167786091413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048733 (A047461 (n + 1)).toNat

end

end A048730.P14526093167786091413

namespace A048730

/-- `A048733(A047461(n+1))` -/
def P14526093167786091413.Spec : Prop :=
  ∀ n, P14526093167786091413.a n = A048730 n

end A048730

/-! ## A048730.P1352376948144873350

`A048733(A008486(n)+n)`
-/

namespace A048730.P1352376948144873350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048733 (A008486 n + (n : ℤ)).toNat

end

end A048730.P1352376948144873350

namespace A048730

/-- `A048733(A008486(n)+n)` -/
def P1352376948144873350.Spec : Prop :=
  ∀ n, P1352376948144873350.a n = A048730 n

end A048730

/-! ## A048730.P5223927461057955979

`A048733(A008587(n)-n)`
-/

namespace A048730.P5223927461057955979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048733 (A008587 n - (n : ℤ)).toNat

end

end A048730.P5223927461057955979

namespace A048730

/-- `A048733(A008587(n)-n)` -/
def P5223927461057955979.Spec : Prop :=
  ∀ n, P5223927461057955979.a n = A048730 n

end A048730

/-! ## A048730.P6880339467953624137

`A342698(4*n)`
-/

namespace A048730.P6880339467953624137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342698 (4 * n)

end

end A048730.P6880339467953624137

namespace A048730

/-- `A342698(4*n)` -/
def P6880339467953624137.Spec : Prop :=
  ∀ n, P6880339467953624137.a n = A048730 n

end A048730

/-! ## A048730.P9759381235191320906

`filter[A342698(n), A059841(#)]`
-/

namespace A048730.P9759381235191320906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A048730.P9759381235191320906

namespace A048730

/-- `filter[A342698(n), A059841(#)]` -/
def P9759381235191320906.Spec : Prop :=
  ∀ n, P9759381235191320906.a n = A048730 n

end A048730

/-! ## A048730.P362358012173417642

`filter[A342698(n), A108357(#)]`
-/

namespace A048730.P362358012173417642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A108357 (f1 j).toNat = 1) n)

end

end A048730.P362358012173417642

namespace A048730

/-- `filter[A342698(n), A108357(#)]` -/
def P362358012173417642.Spec : Prop :=
  ∀ n, P362358012173417642.a n = A048730 n

end A048730

/-! ## A048730.P8287396074489856955

`filter[A342698(n), A121262(#)]`
-/

namespace A048730.P8287396074489856955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A048730.P8287396074489856955

namespace A048730

/-- `filter[A342698(n), A121262(#)]` -/
def P8287396074489856955.Spec : Prop :=
  ∀ n, P8287396074489856955.a n = A048730 n

end A048730

/-! ## A048730.P14083892031027586788

`filter[A342698(n), A267043(#)]`
-/

namespace A048730.P14083892031027586788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267043 (f1 j).toNat = 1) n)

end

end A048730.P14083892031027586788

namespace A048730

/-- `filter[A342698(n), A267043(#)]` -/
def P14083892031027586788.Spec : Prop :=
  ∀ n, P14083892031027586788.a n = A048730 n

end A048730

/-! ## A048730.P6878195993888565766

`xor(2*n, A229763(A048726(n)))`
-/

namespace A048730.P6878195993888565766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * n : ℤ) (A229763 (A048726 n).toNat)

end

end A048730.P6878195993888565766

namespace A048730

/-- `xor(2*n, A229763(A048726(n)))` -/
def P6878195993888565766.Spec : Prop :=
  ∀ n, P6878195993888565766.a n = A048730 n

end A048730

/-! ## A048730.P10879898598823463993

`A048733(A019442(n+2))`
-/

namespace A048730.P10879898598823463993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048733 (A019442 (n + 2)).toNat

end

end A048730.P10879898598823463993

namespace A048730

/-- `A048733(A019442(n+2))` -/
def P10879898598823463993.Spec : Prop :=
  ∀ n, P10879898598823463993.a n = A048730 n

end A048730

/-!
# A048731: Main diagonal of A048723, a(n) = Xpower(n,n).

The programs for A048731, there is no canonical definition to state claims against.
-/

/-! ## A048731.P1650355660162121604

`A048723(∑[4*n])`
-/

namespace A048731.P1650355660162121604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048723 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A048731.P1650355660162121604

/-! ## A048731.P6934941485958111622

`gcd(A048723(A046092(n)), A151933(n))`
-/

namespace A048731.P6934941485958111622
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048723 (A046092 n).toNat) (A151933 n)

end

end A048731.P6934941485958111622

/-! ## A048731.P3656683968911680999

`lcm(A033999(n), A048723(A046092(n)))`
-/

namespace A048731.P3656683968911680999
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A048723 (A046092 n).toNat)

end

end A048731.P3656683968911680999

/-! ## A048731.P2065234253457045298

`or(A000007(n), A048723(A046092(n)))`
-/

namespace A048731.P2065234253457045298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A048723 (A046092 n).toNat)

end

end A048731.P2065234253457045298

/-! ## A048731.P11461878415165126485

`or(A000007(n), A048723(A106232(n+1)))`
-/

namespace A048731.P11461878415165126485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A048723 (A106232 (n + 1)).toNat)

end

end A048731.P11461878415165126485

/-!
# A048732: a(n) = Xpower(n,3).

The programs for A048732, there is no canonical definition to state claims against.
-/

/-! ## A048732.P17157674964644986541

`A048723(∑[n+3]+n+3)`
-/

namespace A048732.P17157674964644986541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048723 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A048732.P17157674964644986541

/-! ## A048732.P738814651749874616

`A048723(A056000(n)+6)%A001535(n)`
-/

namespace A048732.P738814651749874616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048723 (A056000 n + 6).toNat) (A001535 n)

end

end A048732.P738814651749874616

/-! ## A048732.P15320185998199422369

`char[A004442(n)]*A048723(A056000(n)+6)`
-/

namespace A048732.P15320185998199422369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A048723 (A056000 n + 6).toNat

end

end A048732.P15320185998199422369

/-! ## A048732.P13700651436574081743

`A048723(A056000(n)+6)+char[A054827(n+1)]`
-/

namespace A048732.P13700651436574081743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054827 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048723 (A056000 n + 6).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A048732.P13700651436574081743

/-! ## A048732.P1664807009587204366

`A014963(6*(n+1))*A048723(A056000(n)+6)`
-/

namespace A048732.P1664807009587204366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A048723 (A056000 n + 6).toNat

end

end A048732.P1664807009587204366

/-! ## A048732.P6635801501952455336

`(2*n-A004273(n))*A048723(A056000(n)+6)`
-/

namespace A048732.P6635801501952455336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) - A004273 n) * A048723 (A056000 n + 6).toNat

end

end A048732.P6635801501952455336

/-! ## A048732.P13977522886492689829

`∑{e}[A000040(n+1), #]*A048723(A056000(n)+6)`
-/

namespace A048732.P13977522886492689829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) * A048723 (A056000 n + 6).toNat

end

end A048732.P13977522886492689829

/-! ## A048732.P2040678577248319482

`A054899(A054899(n+1))+A048723(A056000(n)+6)`
-/

namespace A048732.P2040678577248319482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (A054899 (n + 1)).toNat + A048723 (A056000 n + 6).toNat

end

end A048732.P2040678577248319482

/-! ## A048732.P5918203062277194701

`A287457(A287186(n+1)+1)+A048723(A056000(n)+6)`
-/

namespace A048732.P5918203062277194701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287457 (A287186 (n + 1) + 1).toNat + A048723 (A056000 n + 6).toNat

end

end A048732.P5918203062277194701

/-! ## A048732.P4149674646171617924

`∑{d}[A048723(A056000(n)+6), A000010(#)]`
-/

namespace A048732.P4149674646171617924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048723 (A056000 n + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A048732.P4149674646171617924

/-!
# A048733: a(n) = A048730(n)/4.

The programs for A048733, the canonical program `A048733.P10785183318991941354` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048733 has offset 0).

The definition of A048733 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048730, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A048733.P10785183318991941354

`A048730(n)/4`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A048733

/-- `A048730(n)/4` -/
def P10785183318991941354.Spec : Prop :=
  ∀ n, P10785183318991941354.a n = (A048733 n : ℚ)

end A048733

/-! ## A048733.P2939918028349164690

`xor(n, and(A003188(n), A048724(n)))`
-/

namespace A048733.P2939918028349164690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (Int.land (A003188 n) (A048724 n))

end

end A048733.P2939918028349164690

namespace A048733

/-- `xor(n, and(A003188(n), A048724(n)))` -/
def P2939918028349164690.Spec : Prop :=
  ∀ n, P2939918028349164690.a n = A048733 n

end A048733

/-! ## A048733.P701149651486436938

`(A048729(n)+A048724(A048728(n)))/4`
-/

namespace A048733.P701149651486436938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048729 n + A048724 (A048728 n).toNat : ℚ) / 4

end

end A048733.P701149651486436938

namespace A048733

/-- `(A048729(n)+A048724(A048728(n)))/4` -/
def P701149651486436938.Spec : Prop :=
  ∀ n, P701149651486436938.a n = (A048733 n : ℚ)

end A048733

/-! ## A048733.P15547437161958266063

`A342697(2*n)`
-/

namespace A048733.P15547437161958266063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342697 (2 * n)

end

end A048733.P15547437161958266063

namespace A048733

/-- `A342697(2*n)` -/
def P15547437161958266063.Spec : Prop :=
  ∀ n, P15547437161958266063.a n = A048733 n

end A048733

/-! ## A048733.P12926109409118044537

`floor(A342698(2*n)/2)`
-/

namespace A048733.P12926109409118044537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A342698 (2 * n) : ℚ) / 2⌋

end

end A048733.P12926109409118044537

namespace A048733

/-- `floor(A342698(2*n)/2)` -/
def P12926109409118044537.Spec : Prop :=
  ∀ n, P12926109409118044537.a n = A048733 n

end A048733

/-! ## A048733.P13946024737273728752

`A004524(A342698(2*n))`
-/

namespace A048733.P13946024737273728752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A342698 (2 * n)).toNat

end

end A048733.P13946024737273728752

namespace A048733

/-- `A004524(A342698(2*n))` -/
def P13946024737273728752.Spec : Prop :=
  ∀ n, P13946024737273728752.a n = A048733 n

end A048733

/-! ## A048733.P10748365093451629168

`xor(n, A048735(xor(n, 2*n)))`
-/

namespace A048733.P10748365093451629168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A048735 (Nat.xor n (2 * n)))

end

end A048733.P10748365093451629168

namespace A048733

/-- `xor(n, A048735(xor(n, 2*n)))` -/
def P10748365093451629168.Spec : Prop :=
  ∀ n, P10748365093451629168.a n = A048733 n

end A048733

/-! ## A048733.P10190576362773218603

`xor(n, A048735(A048724(n)))`
-/

namespace A048733.P10190576362773218603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A048735 (A048724 n).toNat)

end

end A048733.P10190576362773218603

namespace A048733

/-- `xor(n, A048735(A048724(n)))` -/
def P10190576362773218603.Spec : Prop :=
  ∀ n, P10190576362773218603.a n = A048733 n

end A048733

/-! ## A048733.P10279497029957933316

`xor(n, A048735(A003188(2*n)))`
-/

namespace A048733.P10279497029957933316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A048735 (A003188 (2 * n)).toNat)

end

end A048733.P10279497029957933316

namespace A048733

/-- `xor(n, A048735(A003188(2*n)))` -/
def P10279497029957933316.Spec : Prop :=
  ∀ n, P10279497029957933316.a n = A048733 n

end A048733

/-! ## A048733.P10836881228165384504

`xor(n, A048735(A048726(n)/2))`
-/

namespace A048733.P10836881228165384504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A048735 (SequenceMachineLib.roundAway ((A048726 n : ℚ) / 2)).toNat)

end

end A048733.P10836881228165384504

namespace A048733

/-- `xor(n, A048735(A048726(n)/2))` -/
def P10836881228165384504.Spec : Prop :=
  ∀ n, P10836881228165384504.a n = A048733 n

end A048733

/-! ## A048733.P15871018895384539386

`xor(A002265(2*n), A229762(A003188(2*n)))`
-/

namespace A048733.P15871018895384539386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002265 (2 * n)) (A229762 (A003188 (2 * n)).toNat)

end

end A048733.P15871018895384539386

namespace A048733

/-- `xor(A002265(2*n), A229762(A003188(2*n)))` -/
def P15871018895384539386.Spec : Prop :=
  ∀ n, P15871018895384539386.a n = A048733 n

end A048733

/-! ## A048733.P5208878311995861552

`A002265(A048730(n))`
-/

namespace A048733.P5208878311995861552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A048730 n).toNat

end

end A048733.P5208878311995861552

namespace A048733

/-- `A002265(A048730(n))` -/
def P5208878311995861552.Spec : Prop :=
  ∀ n, P5208878311995861552.a n = A048733 n

end A048733

/-! ## A048733.P11419758310601706655

`A002265(2*A342698(2*n))`
-/

namespace A048733.P11419758310601706655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A342698 (2 * n)).toNat

end

end A048733.P11419758310601706655

namespace A048733

/-- `A002265(2*A342698(2*n))` -/
def P11419758310601706655.Spec : Prop :=
  ∀ n, P11419758310601706655.a n = A048733 n

end A048733

/-! ## A048733.P1174710808864746333

`A342697(A008590(n)/2)/2`
-/

namespace A048733.P1174710808864746333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342697 (SequenceMachineLib.roundAway ((A008590 n : ℚ) / 2)).toNat : ℚ) / 2

end

end A048733.P1174710808864746333

namespace A048733

/-- `A342697(A008590(n)/2)/2` -/
def P1174710808864746333.Spec : Prop :=
  ∀ n, P1174710808864746333.a n = (A048733 n : ℚ)

end A048733

/-! ## A048733.P3881473125311002910

`A342698(4*n)/4`
-/

namespace A048733.P3881473125311002910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342698 (4 * n) : ℚ) / 4

end

end A048733.P3881473125311002910

namespace A048733

/-- `A342698(4*n)/4` -/
def P3881473125311002910.Spec : Prop :=
  ∀ n, P3881473125311002910.a n = (A048733 n : ℚ)

end A048733

/-! ## A048733.P13028093341704100824

`A002265(A342698(4*n))`
-/

namespace A048733.P13028093341704100824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A342698 (4 * n)).toNat

end

end A048733.P13028093341704100824

namespace A048733

/-- `A002265(A342698(4*n))` -/
def P13028093341704100824.Spec : Prop :=
  ∀ n, P13028093341704100824.a n = A048733 n

end A048733

/-! ## A048733.P6240372453952951547

`A342700(A003817(A048727(n))-n)`
-/

namespace A048733.P6240372453952951547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342700 (A003817 (A048727 n).toNat - (n : ℤ)).toNat

end

end A048733.P6240372453952951547

namespace A048733

/-- `A342700(A003817(A048727(n))-n)` -/
def P6240372453952951547.Spec : Prop :=
  ∀ n, P6240372453952951547.a n = A048733 n

end A048733

/-! ## A048733.P3612223336342658930

`A002265(A342697(A008590(n)))`
-/

namespace A048733.P3612223336342658930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A342697 (A008590 n).toNat).toNat

end

end A048733.P3612223336342658930

namespace A048733

/-- `A002265(A342697(A008590(n)))` -/
def P3612223336342658930.Spec : Prop :=
  ∀ n, P3612223336342658930.a n = A048733 n

end A048733

/-! ## A048733.P4122817825174607230

`A342700(A003817(A033015(n+1))-n)`
-/

namespace A048733.P4122817825174607230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342700 (A003817 (A033015 (n + 1)).toNat - (n : ℤ)).toNat

end

end A048733.P4122817825174607230

namespace A048733

/-- `A342700(A003817(A033015(n+1))-n)` -/
def P4122817825174607230.Spec : Prop :=
  ∀ n, P4122817825174607230.a n = A048733 n

end A048733

/-! ## A048733.P561019233441715327

`A342700(A343049(A003817(n+1))-n)`
-/

namespace A048733.P561019233441715327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342700 (A343049 (A003817 (n + 1)).toNat - (n : ℤ)).toNat

end

end A048733.P561019233441715327

namespace A048733

/-- `A342700(A343049(A003817(n+1))-n)` -/
def P561019233441715327.Spec : Prop :=
  ∀ n, P561019233441715327.a n = A048733 n

end A048733

/-!
# A048734: a(n) = Xpower(n,5).

The programs for A048734, there is no canonical definition to state claims against.
-/

/-! ## A048734.P493493893880794272

`A048723(A055999(n+3))`
-/

namespace A048734.P493493893880794272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048723 (A055999 (n + 3)).toNat

end

end A048734.P493493893880794272

/-! ## A048734.P17845043881561659940

`A048723(Δ[A026054(n+3)])`
-/

namespace A048734.P17845043881561659940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048723 (f1 (n + 1) - f1 n).toNat

end

end A048734.P17845043881561659940

/-! ## A048734.P5565095113870997634

`A048723(A052905(n+3)-1)`
-/

namespace A048734.P5565095113870997634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048723 (A052905 (n + 3) - 1).toNat

end

end A048734.P5565095113870997634

/-! ## A048734.P12723419359572118258

`A048723(A000096(n+5)-5)`
-/

namespace A048734.P12723419359572118258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048723 (A000096 (n + 5) - 5).toNat

end

end A048734.P12723419359572118258

/-! ## A048734.P6428209196380104673

`A048723(A000217(n+6)-6)`
-/

namespace A048734.P6428209196380104673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048723 (A000217 (n + 6) - 6).toNat

end

end A048734.P6428209196380104673

/-! ## A048734.P17893480110794750049

`A048723(A000124(n+5)+n-1)`
-/

namespace A048734.P17893480110794750049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048723 (A000124 (n + 5) + ((n : ℤ) - 1)).toNat

end

end A048734.P17893480110794750049

/-! ## A048734.P6211989155460053675

`A048723(A167499(n+3)+2*n)`
-/

namespace A048734.P6211989155460053675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048723 (A167499 (n + 3) + (2 * n : ℤ)).toNat

end

end A048734.P6211989155460053675

/-! ## A048734.P18418747936260911518

`A048723(2*n+A155212(n)+13)`
-/

namespace A048734.P18418747936260911518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048723 ((2 * n : ℤ) + (A155212 n + 13)).toNat

end

end A048734.P18418747936260911518

/-! ## A048734.P16305841115157311902

`A048723(2*n+A000217(n+4)+5)`
-/

namespace A048734.P16305841115157311902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048723 ((2 * n : ℤ) + (A000217 (n + 4) + 5)).toNat

end

end A048734.P16305841115157311902

/-!
# A048735: a(n) = (n AND floor(n/2)), where AND is bitwise and-operator (A004198).

The programs for A048735, the canonical program `A048735.P2863035607821774679` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048735 has offset 0).

The definition of A048735 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048735.P2863035607821774679

`and(n, floor(n/2))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048735

/-- `and(n, floor(n/2))` -/
def P2863035607821774679.Spec : Prop :=
  ∀ n, P2863035607821774679.a n = A048735 n

theorem P2863035607821774679.correct : P2863035607821774679.Spec := by
  intro n
  simp only [A048735]

end A048735

/-! ## A048735.P14004262501910963461

`A048728(n)/4`
-/

namespace A048735.P14004262501910963461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048728 n : ℚ) / 4

end

end A048735.P14004262501910963461

namespace A048735

/-- `A048728(n)/4` -/
def P14004262501910963461.Spec : Prop :=
  ∀ n, P14004262501910963461.a n = (A048735 n : ℚ)

end A048735

/-! ## A048735.P11523558625695334316

`and(n, 2*n)/2`
-/

namespace A048735.P11523558625695334316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land n (2 * n) : ℚ) / 2

end

end A048735.P11523558625695334316

namespace A048735

/-- `and(n, 2*n)/2` -/
def P11523558625695334316.Spec : Prop :=
  ∀ n, P11523558625695334316.a n = (A048735 n : ℚ)

end A048735

/-! ## A048735.P14095331872043548193

`n-and(n, ∑[-and(1, n)])`
-/

namespace A048735.P14095331872043548193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.land (n : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A048735.P14095331872043548193

namespace A048735

/-- `n-and(n, ∑[-and(1, n)])` -/
def P14095331872043548193.Spec : Prop :=
  ∀ n, P14095331872043548193.a n = A048735 n

end A048735

/-! ## A048735.P9314795235676374431

`xor(n, and(n, ∑[-and(1, n)]))`
-/

namespace A048735.P9314795235676374431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (Int.land (n : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A048735.P9314795235676374431

namespace A048735

/-- `xor(n, and(n, ∑[-and(1, n)]))` -/
def P9314795235676374431.Spec : Prop :=
  ∀ n, P9314795235676374431.a n = A048735 n

end A048735

/-! ## A048735.P8894219205947361816

`(or(2*n, -n)+n)/2`
-/

namespace A048735.P8894219205947361816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lor (2 * n : ℤ) (-(n : ℤ)) + (n : ℤ) : ℚ) / 2

end

end A048735.P8894219205947361816

namespace A048735

/-- `(or(2*n, -n)+n)/2` -/
def P8894219205947361816.Spec : Prop :=
  ∀ n, P8894219205947361816.a n = (A048735 n : ℚ)

end A048735

/-! ## A048735.P15212327291589647941

`n-(or(n, 2*n)-n)/2`
-/

namespace A048735.P15212327291589647941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - ((Nat.lor n (2 * n) : ℤ) - (n : ℤ) : ℚ) / 2

end

end A048735.P15212327291589647941

namespace A048735

/-- `n-(or(n, 2*n)-n)/2` -/
def P15212327291589647941.Spec : Prop :=
  ∀ n, P15212327291589647941.a n = (A048735 n : ℚ)

end A048735

/-! ## A048735.P1274608895022739934

`floor(sinh(log(and(2*n+1, n+1))))`
-/

namespace A048735.P1274608895022739934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh (Real.log (Nat.land (2 * n + 1) (n + 1) : ℝ))⌋

end

end A048735.P1274608895022739934

namespace A048735

/-- `floor(sinh(log(and(2*n+1, n+1))))` -/
def P1274608895022739934.Spec : Prop :=
  ∀ n, P1274608895022739934.a n = A048735 n

end A048735

/-! ## A048735.P13921287589978188371

`((n+1)*and(n, 2*n))%(2*n+1)`
-/

namespace A048735.P13921287589978188371
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.land n (2 * n) % (2 * n + 1)

end

end A048735.P13921287589978188371

namespace A048735

/-- `((n+1)*and(n, 2*n))%(2*n+1)` -/
def P13921287589978188371.Spec : Prop :=
  ∀ n, (P13921287589978188371.a n : ℤ) = A048735 n

end A048735

/-! ## A048735.P4125586768651635077

`A213370(n)/2`
-/

namespace A048735.P4125586768651635077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213370 n : ℚ) / 2

end

end A048735.P4125586768651635077

namespace A048735

/-- `A213370(n)/2` -/
def P4125586768651635077.Spec : Prop :=
  ∀ n, P4125586768651635077.a n = (A048735 n : ℚ)

end A048735

/-! ## A048735.P15283047321920657445

`n-A292272(n)`
-/

namespace A048735.P15283047321920657445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A292272 n

end

end A048735.P15283047321920657445

namespace A048735

/-- `n-A292272(n)` -/
def P15283047321920657445.Spec : Prop :=
  ∀ n, P15283047321920657445.a n = A048735 n

end A048735

/-! ## A048735.P17859068238030889149

`n-A213064(n)/2`
-/

namespace A048735.P17859068238030889149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - (A213064 n : ℚ) / 2

end

end A048735.P17859068238030889149

namespace A048735

/-- `n-A213064(n)/2` -/
def P17859068238030889149.Spec : Prop :=
  ∀ n, P17859068238030889149.a n = (A048735 n : ℚ)

end A048735

/-! ## A048735.P17270516014152353261

`(n-A229763(n))/2`
-/

namespace A048735.P17270516014152353261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A229763 n : ℚ) / 2

end

end A048735.P17270516014152353261

namespace A048735

/-- `(n-A229763(n))/2` -/
def P17270516014152353261.Spec : Prop :=
  ∀ n, P17270516014152353261.a n = (A048735 n : ℚ)

end A048735

/-! ## A048735.P4263005611951927261

`A001281(and(n, 2*n))`
-/

namespace A048735.P4263005611951927261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (Nat.land n (2 * n))

end

end A048735.P4263005611951927261

namespace A048735

/-- `A001281(and(n, 2*n))` -/
def P4263005611951927261.Spec : Prop :=
  ∀ n, P4263005611951927261.a n = A048735 n

end A048735

/-! ## A048735.P8007626168008721258

`A004525(and(n, 2*n))`
-/

namespace A048735.P8007626168008721258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Nat.land n (2 * n))

end

end A048735.P8007626168008721258

namespace A048735

/-- `A004525(and(n, 2*n))` -/
def P8007626168008721258.Spec : Prop :=
  ∀ n, P8007626168008721258.a n = A048735 n

end A048735

/-! ## A048735.P13721394686730834249

`A006370(and(n, 2*n))`
-/

namespace A048735.P13721394686730834249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (Nat.land n (2 * n))

end

end A048735.P13721394686730834249

namespace A048735

/-- `A006370(and(n, 2*n))` -/
def P13721394686730834249.Spec : Prop :=
  ∀ n, P13721394686730834249.a n = A048735 n

end A048735

/-! ## A048735.P3673363012019355648

`A014682(and(n, 2*n))`
-/

namespace A048735.P3673363012019355648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (Nat.land n (2 * n))

end

end A048735.P3673363012019355648

namespace A048735

/-- `A014682(and(n, 2*n))` -/
def P3673363012019355648.Spec : Prop :=
  ∀ n, P3673363012019355648.a n = A048735 n

end A048735

/-! ## A048735.P11923575813252736850

`A025480(and(n, 2*n))`
-/

namespace A048735.P11923575813252736850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (Nat.land n (2 * n))

end

end A048735.P11923575813252736850

namespace A048735

/-- `A025480(and(n, 2*n))` -/
def P11923575813252736850.Spec : Prop :=
  ∀ n, P11923575813252736850.a n = A048735 n

end A048735

/-! ## A048735.P198331638289916557

`A026741(and(n, 2*n))`
-/

namespace A048735.P198331638289916557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (Nat.land n (2 * n))

end

end A048735.P198331638289916557

namespace A048735

/-- `A026741(and(n, 2*n))` -/
def P198331638289916557.Spec : Prop :=
  ∀ n, P198331638289916557.a n = A048735 n

end A048735

/-! ## A048735.P15778315993807751596

`A029578(and(n, 2*n))`
-/

namespace A048735.P15778315993807751596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (Nat.land n (2 * n))

end

end A048735.P15778315993807751596

namespace A048735

/-- `A029578(and(n, 2*n))` -/
def P15778315993807751596.Spec : Prop :=
  ∀ n, P15778315993807751596.a n = A048735 n

end A048735

/-!
# A048736: Dana Scott's sequence: a(n) = (a(n-2) + a(n-1) * a(n-3)) / a(n-4), a(0) = a(1) = a(2) = a(3) = 1.

The programs for A048736, the canonical program `A048736.P14384150897681957513` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048736 has offset 0).

The definition of A048736 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048736.P14384150897681957513

`10*a(n-3)-10*a(n-6)+a(n-9)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=2, a(5)=3, a(6)=5, a(7)=13, a(8)=22`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048736

/-- `10*a(n-3)-10*a(n-6)+a(n-9)` -/
def P14384150897681957513.Spec : Prop :=
  ∀ n, P14384150897681957513.a n = A048736 n

theorem P14384150897681957513.correct : P14384150897681957513.Spec := by
  intro n
  simp only [A048736]

end A048736

/-! ## A048736.P8928800859793753973

`9*a(n-3)-a(n-6)-3-(ceil(n/3)-floor(n/3))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=2, a(5)=3`
-/

namespace A048736.P8928800859793753973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 2, 3] fun n a =>
  9 * a (n - 3) - a (n - 6) - 3 - (⌈(n : ℚ) / 3⌉ - ⌊(n : ℚ) / 3⌋)

end

end A048736.P8928800859793753973

namespace A048736

/-- `9*a(n-3)-a(n-6)-3-(ceil(n/3)-floor(n/3))` -/
def P8928800859793753973.Spec : Prop :=
  ∀ n, P8928800859793753973.a n = A048736 n

end A048736

/-! ## A048736.P16048355267243419984

`(a(n-2)+a(n-1)*a(n-3))/a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A048736.P16048355267243419984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  (a (n - 2) + a (n - 1) * a (n - 3)) / a (n - 4)

end

end A048736.P16048355267243419984

namespace A048736

/-- `(a(n-2)+a(n-1)*a(n-3))/a(n-4)` -/
def P16048355267243419984.Spec : Prop :=
  ∀ n, P16048355267243419984.a n = (A048736 n : ℚ)

end A048736

/-! ## A048736.P8075585804981530214

`A050331(A003403(n))`
-/

namespace A048736.P8075585804981530214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050331 (A003403 n).toNat

end

end A048736.P8075585804981530214

namespace A048736

/-- `A050331(A003403(n))` -/
def P8075585804981530214.Spec : Prop :=
  ∀ n, P8075585804981530214.a n = A048736 n

end A048736

/-! ## A048736.P10078631224306257874

`A383708(A364345(n)-1)`
-/

namespace A048736.P10078631224306257874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383708 (A364345 n - 1).toNat

end

end A048736.P10078631224306257874

namespace A048736

/-- `A383708(A364345(n)-1)` -/
def P10078631224306257874.Spec : Prop :=
  ∀ n, P10078631224306257874.a n = A048736 n

end A048736

/-!
# A048737: Numbers whose prime divisors consist of primes p such that 2^p-1 is prime.

The programs for A048737, there is no canonical definition to state claims against.
-/

/-! ## A048737.P3008534601282122379

`lt[A052333(A304107(n+1)), A030459(n+1)]`
-/

namespace A048737.P3008534601282122379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052333 (A304107 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030459 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A048737.P3008534601282122379

/-! ## A048737.P17299581645638680440

`lt[A245733(A109375(2*n)), A357259(2*n+1)]`
-/

namespace A048737.P17299581645638680440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245733 (A109375 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357259 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A048737.P17299581645638680440

/-! ## A048737.P16728004706223632606

`lt[A111418(n), A008458(A094440(2*n+1))]+1`
-/

namespace A048737.P16728004706223632606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111418 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A094440 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A048737.P16728004706223632606

/-! ## A048737.P16246171932964388285

`A043096(lt[A000203(2*(n+2)), A096530(3*n+4)])`
-/

namespace A048737.P16246171932964388285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096530 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043096 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A048737.P16246171932964388285

/-! ## A048737.P18048615436221564511

`lt[A008969(A063565(n)), A329318(n+1)]`
-/

namespace A048737.P18048615436221564511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008969 (A063565 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329318 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A048737.P18048615436221564511

/-!
# A048738: Number of self-avoiding walks on square lattice rotated by Pi/4, with wedge angle Pi/2.

The programs for A048738, there is no canonical definition to state claims against.
-/

/-! ## A048738.P1337384809458006194

`A360628(A111275(n+1))`
-/

namespace A048738.P1337384809458006194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360628 (A111275 (n + 1)).toNat

end

end A048738.P1337384809458006194

/-! ## A048738.P1975180565528808430

`A260124(A305752(n+1))`
-/

namespace A048738.P1975180565528808430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260124 (A305752 (n + 1)).toNat

end

end A048738.P1975180565528808430

/-! ## A048738.P10866943621689023949

`A324653(n)+A061395(A127728(n))`
-/

namespace A048738.P10866943621689023949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324653 n + A061395 (A127728 n).toNat

end

end A048738.P10866943621689023949

/-!
# A048739: Expansion of 1/((1 - x)*(1 - 2*x - x^2)).

The programs for A048739, the canonical program `A048739.P4331701808788193341` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048739 has offset 0).

The definition of A048739 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-3x+x^2+x^3))` (program `A048739.P4331701808788193341`, by `A048739.P4331701808788193341.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A048739.P4331701808788193341

`ogf(1/(1-3x+x^2+x^3))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048739

/-- `ogf(1/(1-3x+x^2+x^3))` -/
def P4331701808788193341.Spec : Prop :=
  ∀ n, P4331701808788193341.a n = A048739 n

theorem P4331701808788193341.correct : P4331701808788193341.Spec := by
  intro n
  simp only [A048739]

end A048739

/-! ## A048739.P16641374678058467442

`2*a(n-1)+a(n-2)+1` with `a(0)=1, a(1)=3`
-/

namespace A048739.P16641374678058467442
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 * a (n - 1) + a (n - 2) + 1

end

end A048739.P16641374678058467442

namespace A048739

/-- `2*a(n-1)+a(n-2)+1` -/
def P16641374678058467442.Spec : Prop :=
  ∀ n, (P16641374678058467442.a n : ℤ) = A048739 n

end A048739

/-! ## A048739.P2510994583835497873

`ceil((sqrt(2)+1)*a(n-1))` with `a(0)=1`
-/

namespace A048739.P2510994583835497873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(Real.sqrt (2 : ℝ) + 1) * (a (n - 1) : ℝ)⌉

end

end A048739.P2510994583835497873

namespace A048739

/-- `ceil((sqrt(2)+1)*a(n-1))` -/
def P2510994583835497873.Spec : Prop :=
  ∀ n, P2510994583835497873.a n = A048739 n

end A048739

/-! ## A048739.P4027246299724662452

`floor(a(n-1)/(sqrt(2)-1))+1` with `a(0)=1`
-/

namespace A048739.P4027246299724662452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℝ) / (Real.sqrt (2 : ℝ) - 1)⌋ + 1

end

end A048739.P4027246299724662452

namespace A048739

/-- `floor(a(n-1)/(sqrt(2)-1))+1` -/
def P4027246299724662452.Spec : Prop :=
  ∀ n, P4027246299724662452.a n = A048739 n

end A048739

/-! ## A048739.P17747980019266021997

`∑[a(n-2)+2*a(n-1)]` with `a(0)=1, a(1)=2`
-/

namespace A048739.P17747980019266021997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 2) + 2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048739.P17747980019266021997

namespace A048739

/-- `∑[a(n-2)+2*a(n-1)]` -/
def P17747980019266021997.Spec : Prop :=
  ∀ n, (P17747980019266021997.a n : ℤ) = A048739 n

end A048739

/-! ## A048739.P6625476491294508992

`3-(2*(1-a(n-1))-a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A048739.P6625476491294508992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  3 - (2 * (1 - a (n - 1)) - a (n - 2))

end

end A048739.P6625476491294508992

namespace A048739

/-- `3-(2*(1-a(n-1))-a(n-2))` -/
def P6625476491294508992.Spec : Prop :=
  ∀ n, P6625476491294508992.a n = A048739 n

end A048739

/-! ## A048739.P9964985593000254680

`∑[a(n-1)+a(n-1)+a(n-2)]` with `a(0)=1, a(1)=2`
-/

namespace A048739.P9964985593000254680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048739.P9964985593000254680

namespace A048739

/-- `∑[a(n-1)+a(n-1)+a(n-2)]` -/
def P9964985593000254680.Spec : Prop :=
  ∀ n, (P9964985593000254680.a n : ℤ) = A048739 n

end A048739

/-! ## A048739.P11891873525089751749

`a(n-1)+1+a(n-1)+a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A048739.P11891873525089751749
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) + 1 + (a (n - 1) + a (n - 2))

end

end A048739.P11891873525089751749

namespace A048739

/-- `a(n-1)+1+a(n-1)+a(n-2)` -/
def P11891873525089751749.Spec : Prop :=
  ∀ n, (P11891873525089751749.a n : ℤ) = A048739 n

end A048739

/-! ## A048739.P12232682143707712782

`A181658(2*n)`
-/

namespace A048739.P12232682143707712782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181658 (2 * n)

end

end A048739.P12232682143707712782

namespace A048739

/-- `A181658(2*n)` -/
def P12232682143707712782.Spec : Prop :=
  ∀ n, P12232682143707712782.a n = A048739 n

end A048739

/-! ## A048739.P8247628104589317099

`∑[abs(A077985(n))]`
-/

namespace A048739.P8247628104589317099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A077985 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048739.P8247628104589317099

namespace A048739

/-- `∑[abs(A077985(n))]` -/
def P8247628104589317099.Spec : Prop :=
  ∀ n, P8247628104589317099.a n = A048739 n

end A048739

/-! ## A048739.P946033357475046552

`∑[∑[A001333(n)]]`
-/

namespace A048739.P946033357475046552
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048739.P946033357475046552

namespace A048739

/-- `∑[∑[A001333(n)]]` -/
def P946033357475046552.Spec : Prop :=
  ∀ n, P946033357475046552.a n = A048739 n

end A048739

/-! ## A048739.P7036182014938209641

`ceil(A114696(n)/2)`
-/

namespace A048739.P7036182014938209641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A114696 n : ℚ) / 2⌉

end

end A048739.P7036182014938209641

namespace A048739

/-- `ceil(A114696(n)/2)` -/
def P7036182014938209641.Spec : Prop :=
  ∀ n, P7036182014938209641.a n = A048739 n

end A048739

/-! ## A048739.P2360910517404593542

`∑[A000129(n+1)]`
-/

namespace A048739.P2360910517404593542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048739.P2360910517404593542

namespace A048739

/-- `∑[A000129(n+1)]` -/
def P2360910517404593542.Spec : Prop :=
  ∀ n, P2360910517404593542.a n = A048739 n

end A048739

/-! ## A048739.P2133947533158406716

`∑[A215928(n+1)]`
-/

namespace A048739.P2133947533158406716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215928 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048739.P2133947533158406716

namespace A048739

/-- `∑[A215928(n+1)]` -/
def P2133947533158406716.Spec : Prop :=
  ∀ n, P2133947533158406716.a n = A048739 n

end A048739

/-! ## A048739.P7820386678695439412

`∑[A052937(n)-1]`
-/

namespace A048739.P7820386678695439412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052937 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048739.P7820386678695439412

namespace A048739

/-- `∑[A052937(n)-1]` -/
def P7820386678695439412.Spec : Prop :=
  ∀ n, P7820386678695439412.a n = A048739 n

end A048739

/-! ## A048739.P16561694552776854526

`Δ[A307465(n+1)]`
-/

namespace A048739.P16561694552776854526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307465 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048739.P16561694552776854526

namespace A048739

/-- `Δ[A307465(n+1)]` -/
def P16561694552776854526.Spec : Prop :=
  ∀ n, P16561694552776854526.a n = A048739 n

end A048739

/-! ## A048739.P1028753097985533794

`∑[∑[abs(A123335(n))]]`
-/

namespace A048739.P1028753097985533794
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A123335 n|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048739.P1028753097985533794

namespace A048739

/-- `∑[∑[abs(A123335(n))]]` -/
def P1028753097985533794.Spec : Prop :=
  ∀ n, P1028753097985533794.a n = A048739 n

end A048739

/-! ## A048739.P18276854842776856067

`A024537(n+1)-1`
-/

namespace A048739.P18276854842776856067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024537 (n + 1) - 1

end

end A048739.P18276854842776856067

namespace A048739

/-- `A024537(n+1)-1` -/
def P18276854842776856067.Spec : Prop :=
  ∀ n, P18276854842776856067.a n = A048739 n

end A048739

/-! ## A048739.P17267872585361481638

`A171842(n+2)-1`
-/

namespace A048739.P17267872585361481638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171842 (n + 2) - 1

end

end A048739.P17267872585361481638

namespace A048739

/-- `A171842(n+2)-1` -/
def P17267872585361481638.Spec : Prop :=
  ∀ n, P17267872585361481638.a n = A048739 n

end A048739

/-! ## A048739.P12009320235296977704

`A265278(n+2)/2`
-/

namespace A048739.P12009320235296977704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265278 (n + 2) : ℚ) / 2

end

end A048739.P12009320235296977704

namespace A048739

/-- `A265278(n+2)/2` -/
def P12009320235296977704.Spec : Prop :=
  ∀ n, P12009320235296977704.a n = (A048739 n : ℚ)

end A048739

/-!
# A048740: Product of divisors of n-th composite number.

The programs for A048740, the canonical program `A048740.P15296092853580222762` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048740 has offset 1).

The definition of A048740 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A007955, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A048740.P15296092853580222762

`A007955(A002808(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A048740

/-- `A007955(A002808(n+1))` -/
def P15296092853580222762.Spec : Prop :=
  ∀ n, P15296092853580222762.a n = A048740 (n + 1)

theorem P15296092853580222762.correct : P15296092853580222762.Spec := by
  intro n
  simp only [A048740, Nat.add_sub_cancel]

end A048740

/-! ## A048740.P16402438560819274415

`∏{d}[lt[n+1, ∏{d}[n, #]], #]`
-/

namespace A048740.P16402438560819274415
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f4 n), d

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A048740.P16402438560819274415

namespace A048740

/-- `∏{d}[lt[n+1, ∏{d}[n, #]], #]` -/
def P16402438560819274415.Spec : Prop :=
  ∀ n, (P16402438560819274415.a n : ℤ) = A048740 (n + 1)

end A048740

/-! ## A048740.P12705694304127706403

`∏{d}[A018252(n+2), #]`
-/

namespace A048740.P12705694304127706403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A048740.P12705694304127706403

namespace A048740

/-- `∏{d}[A018252(n+2), #]` -/
def P12705694304127706403.Spec : Prop :=
  ∀ n, (P12705694304127706403.a n : ℤ) = A048740 (n + 1)

end A048740

/-! ## A048740.P1785267725891824893

`∏{d}[A065090(n+3), #]`
-/

namespace A048740.P1785267725891824893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A048740.P1785267725891824893

namespace A048740

/-- `∏{d}[A065090(n+3), #]` -/
def P1785267725891824893.Spec : Prop :=
  ∀ n, (P1785267725891824893.a n : ℤ) = A048740 (n + 1)

end A048740

/-! ## A048740.P11011570041448083304

`∏{d}[A141468(n+3), #]`
-/

namespace A048740.P11011570041448083304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A048740.P11011570041448083304

namespace A048740

/-- `∏{d}[A141468(n+3), #]` -/
def P11011570041448083304.Spec : Prop :=
  ∀ n, (P11011570041448083304.a n : ℤ) = A048740 (n + 1)

end A048740

/-! ## A048740.P7018268058378290799

`A007955(lt[1, ∑{e}[n, #]])`
-/

namespace A048740.P7018268058378290799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A048740.P7018268058378290799

namespace A048740

/-- `A007955(lt[1, ∑{e}[n, #]])` -/
def P7018268058378290799.Spec : Prop :=
  ∀ n, P7018268058378290799.a n = A048740 (n + 1)

end A048740

/-! ## A048740.P1509292662457598137

`∏{d}[comp[A158611(n+1)], #]`
-/

namespace A048740.P1509292662457598137
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A048740.P1509292662457598137

namespace A048740

/-- `∏{d}[comp[A158611(n+1)], #]` -/
def P1509292662457598137.Spec : Prop :=
  ∀ n, (P1509292662457598137.a n : ℤ) = A048740 (n + 1)

end A048740

/-! ## A048740.P5441333740269619898

`∏{d}[A129131(2*n+1), #]`
-/

namespace A048740.P5441333740269619898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129131 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A048740.P5441333740269619898

namespace A048740

/-- `∏{d}[A129131(2*n+1), #]` -/
def P5441333740269619898.Spec : Prop :=
  ∀ n, (P5441333740269619898.a n : ℤ) = A048740 (n + 1)

end A048740

/-! ## A048740.P14505186956086766273

`A007955(A018252(n+2))`
-/

namespace A048740.P14505186956086766273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (A018252 (n + 2)).toNat

end

end A048740.P14505186956086766273

namespace A048740

/-- `A007955(A018252(n+2))` -/
def P14505186956086766273.Spec : Prop :=
  ∀ n, P14505186956086766273.a n = A048740 (n + 1)

end A048740

/-! ## A048740.P2720662999004617773

`A007955(A072668(n+1)+1)`
-/

namespace A048740.P2720662999004617773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (A072668 (n + 1) + 1).toNat

end

end A048740.P2720662999004617773

namespace A048740

/-- `A007955(A072668(n+1)+1)` -/
def P2720662999004617773.Spec : Prop :=
  ∀ n, P2720662999004617773.a n = A048740 (n + 1)

end A048740

/-! ## A048740.P17823636406606648337

`A007955(A079696(n+1)-1)`
-/

namespace A048740.P17823636406606648337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (A079696 (n + 1) - 1).toNat

end

end A048740.P17823636406606648337

namespace A048740

/-- `A007955(A079696(n+1)-1)` -/
def P17823636406606648337.Spec : Prop :=
  ∀ n, P17823636406606648337.a n = A048740 (n + 1)

end A048740

/-! ## A048740.P12655469730536070426

`A007955(A067747(2*(n+1)))`
-/

namespace A048740.P12655469730536070426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (A067747 (2 * (n + 1))).toNat

end

end A048740.P12655469730536070426

namespace A048740

/-- `A007955(A067747(2*(n+1)))` -/
def P12655469730536070426.Spec : Prop :=
  ∀ n, P12655469730536070426.a n = A048740 (n + 1)

end A048740

/-! ## A048740.P876706103652576221

`A007955(A139270(n+2)/2)`
-/

namespace A048740.P876706103652576221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (SequenceMachineLib.roundAway ((A139270 (n + 2) : ℚ) / 2)).toNat

end

end A048740.P876706103652576221

namespace A048740

/-- `A007955(A139270(n+2)/2)` -/
def P876706103652576221.Spec : Prop :=
  ∀ n, P876706103652576221.a n = A048740 (n + 1)

end A048740

/-! ## A048740.P8560722389360021553

`A007955(lt[2, A000005(n+1)]+1)`
-/

namespace A048740.P8560722389360021553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A048740.P8560722389360021553

namespace A048740

/-- `A007955(lt[2, A000005(n+1)]+1)` -/
def P8560722389360021553.Spec : Prop :=
  ∀ n, P8560722389360021553.a n = A048740 (n + 1)

end A048740

/-! ## A048740.P8614502060422660763

`A007955(lt[2, A319348(n+1)]+1)`
-/

namespace A048740.P8614502060422660763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319348 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A048740.P8614502060422660763

namespace A048740

/-- `A007955(lt[2, A319348(n+1)]+1)` -/
def P8614502060422660763.Spec : Prop :=
  ∀ n, P8614502060422660763.a n = A048740 (n + 1)

end A048740

/-! ## A048740.P10677766240451971256

`A007955(A161537(n+1)-(n+1))`
-/

namespace A048740.P10677766240451971256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (A161537 (n + 1) - (n + 1 : ℤ)).toNat

end

end A048740.P10677766240451971256

namespace A048740

/-- `A007955(A161537(n+1)-(n+1))` -/
def P10677766240451971256.Spec : Prop :=
  ∀ n, P10677766240451971256.a n = A048740 (n + 1)

end A048740

/-! ## A048740.P15881769324631852430

`A002808(n+1)*A048741(n+1)`
-/

namespace A048740.P15881769324631852430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) * A048741 (n + 1)

end

end A048740.P15881769324631852430

namespace A048740

/-- `A002808(n+1)*A048741(n+1)` -/
def P15881769324631852430.Spec : Prop :=
  ∀ n, P15881769324631852430.a n = A048740 (n + 1)

end A048740

/-! ## A048740.P12837152464902859832

`A007955(A071228(n+1)/(n+1))`
-/

namespace A048740.P12837152464902859832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (SequenceMachineLib.roundAway ((A071228 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A048740.P12837152464902859832

namespace A048740

/-- `A007955(A071228(n+1)/(n+1))` -/
def P12837152464902859832.Spec : Prop :=
  ∀ n, P12837152464902859832.a n = A048740 (n + 1)

end A048740

/-! ## A048740.P13794855225463023181

`A007955(A171504(n+2)-(n+2))`
-/

namespace A048740.P13794855225463023181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (A171504 (n + 2) - (n + 2 : ℤ)).toNat

end

end A048740.P13794855225463023181

namespace A048740

/-- `A007955(A171504(n+2)-(n+2))` -/
def P13794855225463023181.Spec : Prop :=
  ∀ n, P13794855225463023181.a n = A048740 (n + 1)

end A048740

/-!
# A048741: Product of aliquot divisors of composite n (1 and primes omitted).

The programs for A048741, the canonical program `A048741.P2194570441843201245` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048741 has offset 1).

The definition of A048741 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A007956, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A048741.P2194570441843201245

`A007956(A002808(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A048741

/-- `A007956(A002808(n+1))` -/
def P2194570441843201245.Spec : Prop :=
  ∀ n, P2194570441843201245.a n = A048741 (n + 1)

theorem P2194570441843201245.correct : P2194570441843201245.Spec := by
  intro n
  simp only [A048741, Nat.add_sub_cancel]

end A048741

/-! ## A048741.P10055717364341214732

`A007956(A018252(n+2))`
-/

namespace A048741.P10055717364341214732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007956 (A018252 (n + 2)).toNat

end

end A048741.P10055717364341214732

namespace A048741

/-- `A007956(A018252(n+2))` -/
def P10055717364341214732.Spec : Prop :=
  ∀ n, P10055717364341214732.a n = A048741 (n + 1)

end A048741

/-! ## A048741.P6956833192867516366

`A007956(A072668(n+1)+1)`
-/

namespace A048741.P6956833192867516366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007956 (A072668 (n + 1) + 1).toNat

end

end A048741.P6956833192867516366

namespace A048741

/-- `A007956(A072668(n+1)+1)` -/
def P6956833192867516366.Spec : Prop :=
  ∀ n, P6956833192867516366.a n = A048741 (n + 1)

end A048741

/-! ## A048741.P17408892577179693688

`A066729(A166460(n+2)+1)`
-/

namespace A048741.P17408892577179693688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066729 (A166460 (n + 2) + 1).toNat

end

end A048741.P17408892577179693688

namespace A048741

/-- `A066729(A166460(n+2)+1)` -/
def P17408892577179693688.Spec : Prop :=
  ∀ n, P17408892577179693688.a n = A048741 (n + 1)

end A048741

/-! ## A048741.P4209576648898759859

`A007956(lt[1, A007956(n+1)]+1)`
-/

namespace A048741.P4209576648898759859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007956 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007956 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A048741.P4209576648898759859

namespace A048741

/-- `A007956(lt[1, A007956(n+1)]+1)` -/
def P4209576648898759859.Spec : Prop :=
  ∀ n, P4209576648898759859.a n = A048741 (n + 1)

end A048741

/-! ## A048741.P17652158337465224330

`A048740(n+1)/A002808(n+1)`
-/

namespace A048741.P17652158337465224330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048740 (n + 1) : ℚ) / (A002808 (n + 1) : ℚ)

end

end A048741.P17652158337465224330

namespace A048741

/-- `A048740(n+1)/A002808(n+1)` -/
def P17652158337465224330.Spec : Prop :=
  ∀ n, P17652158337465224330.a n = (A048741 (n + 1) : ℚ)

end A048741

/-! ## A048741.P7079441995928052046

`A066729(A002808(2*n+1-n))`
-/

namespace A048741.P7079441995928052046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066729 (A002808 (2 * n + 1 - n)).toNat

end

end A048741.P7079441995928052046

namespace A048741

/-- `A066729(A002808(2*n+1-n))` -/
def P7079441995928052046.Spec : Prop :=
  ∀ n, P7079441995928052046.a n = A048741 (n + 1)

end A048741

/-! ## A048741.P6502938129918087565

`A007955(A067747(2*(n+1)))/A067747(2*(n+1))`
-/

namespace A048741.P6502938129918087565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (A067747 (2 * (n + 1))).toNat : ℚ) / (A067747 (2 * (n + 1)) : ℚ)

end

end A048741.P6502938129918087565

namespace A048741

/-- `A007955(A067747(2*(n+1)))/A067747(2*(n+1))` -/
def P6502938129918087565.Spec : Prop :=
  ∀ n, P6502938129918087565.a n = (A048741 (n + 1) : ℚ)

end A048741

/-! ## A048741.P10612534327808268408

`A007956(comp[A014963(n+2)-1]+1)`
-/

namespace A048741.P10612534327808268408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007956 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A048741.P10612534327808268408

namespace A048741

/-- `A007956(comp[A014963(n+2)-1]+1)` -/
def P10612534327808268408.Spec : Prop :=
  ∀ n, P10612534327808268408.a n = A048741 (n + 1)

end A048741

/-!
# A048742: a(n) = n! - (n-th Bell number).

The programs for A048742, there is no canonical definition to state claims against.
-/

/-! ## A048742.P1797051048642582181

`A000142(n)-A000110(n)`
-/

namespace A048742.P1797051048642582181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A000110 n

end

end A048742.P1797051048642582181

/-! ## A048742.P17878397628805322483

`n!-abs(A292935(n))`
-/

namespace A048742.P17878397628805322483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - |A292935 n|

end

end A048742.P17878397628805322483

/-! ## A048742.P7959542665111774527

`n!-A011971(∑[n])`
-/

namespace A048742.P7959542665111774527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A011971 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A048742.P7959542665111774527

/-! ## A048742.P3846190233479385134

`n!-A049020(∑[n])`
-/

namespace A048742.P3846190233479385134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A049020 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A048742.P3846190233479385134

/-! ## A048742.P6089984706001603456

`n!-A095149(∑[n])`
-/

namespace A048742.P6089984706001603456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A095149 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A048742.P6089984706001603456

/-! ## A048742.P10822652043904030509

`n!-A108087(∑[n])`
-/

namespace A048742.P10822652043904030509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A108087 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A048742.P10822652043904030509

/-! ## A048742.P15893393116167099970

`n!-A123081(∑[n])`
-/

namespace A048742.P15893393116167099970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A123081 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A048742.P15893393116167099970

/-! ## A048742.P17100126572389543001

`n!-A186020(∑[n])`
-/

namespace A048742.P17100126572389543001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A186020 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A048742.P17100126572389543001

/-! ## A048742.P7419478965493554711

`n!-Δ[A005001(n)]`
-/

namespace A048742.P7419478965493554711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - (f1 (n + 1) - f1 n)

end

end A048742.P7419478965493554711

/-! ## A048742.P16666683895871250663

`A104150(n+1)-A000110(n)`
-/

namespace A048742.P16666683895871250663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104150 (n + 1) - A000110 n

end

end A048742.P16666683895871250663

/-!
# A048743: Triangle read by rows: T(n,k) = k!*binomial(n-1,k-1)*Stirling2(n,k), 1 <= k <= n.

The programs for A048743, there is no canonical definition to state claims against.
-/

/-! ## A048743.P11021369598872129582

`A008279(n)*A321331(n)`
-/

namespace A048743.P11021369598872129582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 n * A321331 n

end

end A048743.P11021369598872129582

/-! ## A048743.P8479609593126478337

`A007318(n)*A019538(n+1)`
-/

namespace A048743.P8479609593126478337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A019538 (n + 1)

end

end A048743.P8479609593126478337

/-! ## A048743.P12853409031631993687

`A008277(n+1)*A121757(n)`
-/

namespace A048743.P12853409031631993687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 1) * A121757 n

end

end A048743.P12853409031631993687

/-! ## A048743.P16458080901419578968

`A028246(n+1)*A103406(n)`
-/

namespace A048743.P16458080901419578968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028246 (n + 1) * A103406 n

end

end A048743.P16458080901419578968

/-! ## A048743.P1462955725415424199

`A166350(n+1)*A363849(n)`
-/

namespace A048743.P1462955725415424199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166350 (n + 1) * A363849 n

end

end A048743.P1462955725415424199

/-! ## A048743.P14292567061414633629

`abs(A019538(n+1)*A108086(n))`
-/

namespace A048743.P14292567061414633629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A019538 (n + 1) * A108086 n|

end

end A048743.P14292567061414633629

/-! ## A048743.P12335280103308822051

`abs(A019538(n+1)*A117440(n))`
-/

namespace A048743.P12335280103308822051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A019538 (n + 1) * A117440 n|

end

end A048743.P12335280103308822051

/-! ## A048743.P17552906923120544254

`abs(A019538(n+1)*A130595(n))`
-/

namespace A048743.P17552906923120544254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A019538 (n + 1) * A130595 n|

end

end A048743.P17552906923120544254

/-! ## A048743.P12921987233656399715

`sqrt(A008459(n))*A019538(n+1)`
-/

namespace A048743.P12921987233656399715
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A019538 (n + 1) : ℝ)

end

end A048743.P12921987233656399715

/-! ## A048743.P4275406021138931991

`Δ[A102363(n)]*A019538(n+1)`
-/

namespace A048743.P4275406021138931991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A019538 (n + 1)

end

end A048743.P4275406021138931991

/-! ## A048743.P3666948679057603045

`A007318(n)*A131689(A014132(n+1))`
-/

namespace A048743.P3666948679057603045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A131689 (A014132 (n + 1)).toNat

end

end A048743.P3666948679057603045

/-! ## A048743.P8363027436301165213

`A048993(A014132(n+1))*A121757(n)`
-/

namespace A048743.P8363027436301165213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (A014132 (n + 1)).toNat * A121757 n

end

end A048743.P8363027436301165213

/-! ## A048743.P9208243016314305924

`A007318(n)*A131689(eq[1, A035214(n)])`
-/

namespace A048743.P9208243016314305924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A131689 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A048743.P9208243016314305924

/-! ## A048743.P12358661289533188727

`A028246(n+1)*A093375(A114327(n)+1+n)`
-/

namespace A048743.P12358661289533188727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028246 (n + 1) * A093375 (A114327 n + 1 + (n : ℤ)).toNat

end

end A048743.P12358661289533188727

/-! ## A048743.P10639473876067982757

`A002260(n+1)*A028246(n+1)*A007318(n)`
-/

namespace A048743.P10639473876067982757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A028246 (n + 1) * A007318 n

end

end A048743.P10639473876067982757

/-! ## A048743.P9062786976083339633

`A008277(n+1)*A233543(A014132(n+1))*A007318(n)`
-/

namespace A048743.P9062786976083339633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 1) * A233543 (A014132 (n + 1)).toNat * A007318 n

end

end A048743.P9062786976083339633

/-! ## A048743.P11099676687986184743

`(A305622(n+1)+A305621(n+1))*A007318(n)`
-/

namespace A048743.P11099676687986184743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A305622 (n + 1) + A305621 (n + 1)) * A007318 n

end

end A048743.P11099676687986184743

/-! ## A048743.P9533333058431688286

`(A305622(n+1)+A305621(n+1))*ceil(A134059(n)/3)`
-/

namespace A048743.P9533333058431688286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A305622 (n + 1) + A305621 (n + 1)) * ⌈(A134059 n : ℚ) / 3⌉

end

end A048743.P9533333058431688286

/-!
# A048745: Partial sums of A048654.

The programs for A048745, the canonical program `A048745.P4187734238670009263` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048745 has offset 0).

The definition of A048745 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048745.P4187734238670009263

`2*a(n-1)+a(n-2)+3` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048745

/-- `2*a(n-1)+a(n-2)+3` -/
def P4187734238670009263.Spec : Prop :=
  ∀ n, (P4187734238670009263.a n : ℤ) = A048745 n

theorem P4187734238670009263.correct : P4187734238670009263.Spec := by
  intro n
  simp only [A048745]

end A048745

/-! ## A048745.P1902709007189103225

`ogf((1+2x)/(1-3x+x^2+x^3))`
-/

namespace A048745.P1902709007189103225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -3, 1, 1] n

end

end A048745.P1902709007189103225

namespace A048745

/-- `ogf((1+2x)/(1-3x+x^2+x^3))` -/
def P1902709007189103225.Spec : Prop :=
  ∀ n, P1902709007189103225.a n = A048745 n

end A048745

/-! ## A048745.P14236137697229455626

`∑[a(n-2)+2*a(n-1)]` with `a(0)=1, a(1)=4`
-/

namespace A048745.P14236137697229455626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  f1 (n - 2) + 2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048745.P14236137697229455626

namespace A048745

/-- `∑[a(n-2)+2*a(n-1)]` -/
def P14236137697229455626.Spec : Prop :=
  ∀ n, (P14236137697229455626.a n : ℤ) = A048745 n

end A048745

/-! ## A048745.P1295579864428195743

`∑[a(n-1)+a(n-1)+a(n-2)]` with `a(0)=1, a(1)=4`
-/

namespace A048745.P1295579864428195743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048745.P1295579864428195743

namespace A048745

/-- `∑[a(n-1)+a(n-1)+a(n-2)]` -/
def P1295579864428195743.Spec : Prop :=
  ∀ n, (P1295579864428195743.a n : ℤ) = A048745 n

end A048745

/-! ## A048745.P15476320321282615774

`a(n-1)+3+a(n-1)+a(n-2)` with `a(0)=1, a(1)=5`
-/

namespace A048745.P15476320321282615774
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 1) + 3 + (a (n - 1) + a (n - 2))

end

end A048745.P15476320321282615774

namespace A048745

/-- `a(n-1)+3+a(n-1)+a(n-2)` -/
def P15476320321282615774.Spec : Prop :=
  ∀ n, (P15476320321282615774.a n : ℤ) = A048745 n

theorem P15476320321282615774.correct : P15476320321282615774.Spec := by
  intro n
  simp only [A048745, Nat.add_sub_cancel, A048745.P15476320321282615774.a, A048745.P4187734238670009263.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A048745

/-! ## A048745.P16686604232767550514

`∑[3*a(n-1)-(a(n-1)-a(n-2))]` with `a(0)=1, a(1)=4`
-/

namespace A048745.P16686604232767550514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  3 * f1 (n - 1) - (f1 (n - 1) - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048745.P16686604232767550514

namespace A048745

/-- `∑[3*a(n-1)-(a(n-1)-a(n-2))]` -/
def P16686604232767550514.Spec : Prop :=
  ∀ n, P16686604232767550514.a n = A048745 n

end A048745

/-! ## A048745.P16695881032457479448

`∑[A048654(n)]`
-/

namespace A048745.P16695881032457479448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048745.P16695881032457479448

namespace A048745

/-- `∑[A048654(n)]` -/
def P16695881032457479448.Spec : Prop :=
  ∀ n, P16695881032457479448.a n = A048745 n

end A048745

/-! ## A048745.P6428422205496829674

`∑[∑[abs(A135532(n))]]`
-/

namespace A048745.P6428422205496829674
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A135532 n|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048745.P6428422205496829674

namespace A048745

/-- `∑[∑[abs(A135532(n))]]` -/
def P6428422205496829674.Spec : Prop :=
  ∀ n, P6428422205496829674.a n = A048745 n

end A048745

/-! ## A048745.P237695018062019923

`∑[abs(Δ[A098790(n)])]`
-/

namespace A048745.P237695018062019923
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098790 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048745.P237695018062019923

namespace A048745

/-- `∑[abs(Δ[A098790(n)])]` -/
def P237695018062019923.Spec : Prop :=
  ∀ n, P237695018062019923.a n = A048745 n

end A048745

/-! ## A048745.P5905194115649775291

`A098790(n+1)-1`
-/

namespace A048745.P5905194115649775291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098790 (n + 1) - 1

end

end A048745.P5905194115649775291

namespace A048745

/-- `A098790(n+1)-1` -/
def P5905194115649775291.Spec : Prop :=
  ∀ n, P5905194115649775291.a n = A048745 n

end A048745

/-! ## A048745.P3116583701635439046

`A353580(n+2)-2`
-/

namespace A048745.P3116583701635439046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353580 (n + 2) - 2

end

end A048745.P3116583701635439046

namespace A048745

/-- `A353580(n+2)-2` -/
def P3116583701635439046.Spec : Prop :=
  ∀ n, P3116583701635439046.a n = A048745 n

end A048745

/-! ## A048745.P5400561691456985332

`∑[A266504(2*(n+1))]`
-/

namespace A048745.P5400561691456985332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266504 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048745.P5400561691456985332

namespace A048745

/-- `∑[A266504(2*(n+1))]` -/
def P5400561691456985332.Spec : Prop :=
  ∀ n, P5400561691456985332.a n = A048745 n

end A048745

/-! ## A048745.P13939723773531894344

`∑[A266506(4*(n+1))]`
-/

namespace A048745.P13939723773531894344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266506 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048745.P13939723773531894344

namespace A048745

/-- `∑[A266506(4*(n+1))]` -/
def P13939723773531894344.Spec : Prop :=
  ∀ n, P13939723773531894344.a n = A048745 n

end A048745

/-! ## A048745.P7408704915810180729

`∑[∑[abs(A266505(2*n))]]`
-/

namespace A048745.P7408704915810180729
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A266505 (2 * n)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048745.P7408704915810180729

namespace A048745

/-- `∑[∑[abs(A266505(2*n))]]` -/
def P7408704915810180729.Spec : Prop :=
  ∀ n, P7408704915810180729.a n = A048745 n

end A048745

/-! ## A048745.P4152953536269195991

`A114696(n)-A097076(n)`
-/

namespace A048745.P4152953536269195991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114696 n - A097076 n

end

end A048745.P4152953536269195991

namespace A048745

/-- `A114696(n)-A097076(n)` -/
def P4152953536269195991.Spec : Prop :=
  ∀ n, P4152953536269195991.a n = A048745 n

end A048745

/-! ## A048745.P6162392699169029779

`∑[∑[A266505(A004277(n))]]`
-/

namespace A048745.P6162392699169029779
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266505 (A004277 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048745.P6162392699169029779

namespace A048745

/-- `∑[∑[A266505(A004277(n))]]` -/
def P6162392699169029779.Spec : Prop :=
  ∀ n, P6162392699169029779.a n = A048745 n

end A048745

/-! ## A048745.P14091181427865391748

`∑[A078057(n)+A000129(n)]`
-/

namespace A048745.P14091181427865391748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078057 n + A000129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048745.P14091181427865391748

namespace A048745

/-- `∑[A078057(n)+A000129(n)]` -/
def P14091181427865391748.Spec : Prop :=
  ∀ n, P14091181427865391748.a n = A048745 n

end A048745

/-! ## A048745.P14032997044721617581

`∑[A048655(n)-A000129(n)]`
-/

namespace A048745.P14032997044721617581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048655 n - A000129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048745.P14032997044721617581

namespace A048745

/-- `∑[A048655(n)-A000129(n)]` -/
def P14032997044721617581.Spec : Prop :=
  ∀ n, P14032997044721617581.a n = A048745 n

end A048745

/-! ## A048745.P17352440010468619537

`A293004(n+1)+A048739(n)`
-/

namespace A048745.P17352440010468619537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293004 (n + 1) + A048739 n

end

end A048745.P17352440010468619537

namespace A048745

/-- `A293004(n+1)+A048739(n)` -/
def P17352440010468619537.Spec : Prop :=
  ∀ n, P17352440010468619537.a n = A048745 n

end A048745

/-! ## A048745.P7370700911650768624

`A000129(n)+A098586(n)-1`
-/

namespace A048745.P7370700911650768624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n + (A098586 n - 1)

end

end A048745.P7370700911650768624

namespace A048745

/-- `A000129(n)+A098586(n)-1` -/
def P7370700911650768624.Spec : Prop :=
  ∀ n, P7370700911650768624.a n = A048745 n

end A048745

/-!
# A048746: Partial sums of A048655.

The programs for A048746, the canonical program `A048746.P1763314460443899216` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048746 has offset 0).

The definition of A048746 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048746.P1763314460443899216

`2*a(n-1)+a(n-2)+4` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048746

/-- `2*a(n-1)+a(n-2)+4` -/
def P1763314460443899216.Spec : Prop :=
  ∀ n, (P1763314460443899216.a n : ℤ) = A048746 n

theorem P1763314460443899216.correct : P1763314460443899216.Spec := by
  intro n
  simp only [A048746]

end A048746

/-! ## A048746.P10719515340562384507

`ogf((1+3x)/(1-3x+x^2+x^3))`
-/

namespace A048746.P10719515340562384507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, -3, 1, 1] n

end

end A048746.P10719515340562384507

namespace A048746

/-- `ogf((1+3x)/(1-3x+x^2+x^3))` -/
def P10719515340562384507.Spec : Prop :=
  ∀ n, P10719515340562384507.a n = A048746 n

end A048746

/-! ## A048746.P6420190938011035352

`∑[a(n-2)+2*a(n-1)]` with `a(0)=1, a(1)=5`
-/

namespace A048746.P6420190938011035352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  f1 (n - 2) + 2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048746.P6420190938011035352

namespace A048746

/-- `∑[a(n-2)+2*a(n-1)]` -/
def P6420190938011035352.Spec : Prop :=
  ∀ n, (P6420190938011035352.a n : ℤ) = A048746 n

end A048746

/-! ## A048746.P12155252801050760358

`∑[a(n-2)+lcm(2, a(n-1))]` with `a(0)=1, a(1)=5`
-/

namespace A048746.P12155252801050760358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  f1 (n - 2) + Nat.lcm 2 (f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048746.P12155252801050760358

namespace A048746

/-- `∑[a(n-2)+lcm(2, a(n-1))]` -/
def P12155252801050760358.Spec : Prop :=
  ∀ n, (P12155252801050760358.a n : ℤ) = A048746 n

end A048746

/-! ## A048746.P7492772473745440725

`∑[a(n-1)+a(n-1)+a(n-2)]` with `a(0)=1, a(1)=5`
-/

namespace A048746.P7492772473745440725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048746.P7492772473745440725

namespace A048746

/-- `∑[a(n-1)+a(n-1)+a(n-2)]` -/
def P7492772473745440725.Spec : Prop :=
  ∀ n, (P7492772473745440725.a n : ℤ) = A048746 n

end A048746

/-! ## A048746.P5191574574842529331

`a(n-1)+4+a(n-1)+a(n-2)` with `a(0)=1, a(1)=6`
-/

namespace A048746.P5191574574842529331
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n a =>
  a (n - 1) + 4 + (a (n - 1) + a (n - 2))

end

end A048746.P5191574574842529331

namespace A048746

/-- `a(n-1)+4+a(n-1)+a(n-2)` -/
def P5191574574842529331.Spec : Prop :=
  ∀ n, (P5191574574842529331.a n : ℤ) = A048746 n

theorem P5191574574842529331.correct : P5191574574842529331.Spec := by
  intro n
  simp only [A048746, Nat.add_sub_cancel, A048746.P5191574574842529331.a, A048746.P1763314460443899216.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A048746

/-! ## A048746.P14891762270847912418

`∑[3*a(n-1)-(a(n-1)-a(n-2))]` with `a(0)=1, a(1)=5`
-/

namespace A048746.P14891762270847912418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  3 * f1 (n - 1) - (f1 (n - 1) - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048746.P14891762270847912418

namespace A048746

/-- `∑[3*a(n-1)-(a(n-1)-a(n-2))]` -/
def P14891762270847912418.Spec : Prop :=
  ∀ n, P14891762270847912418.a n = A048746 n

end A048746

/-! ## A048746.P12307463161366160349

`∑[A048655(n)]`
-/

namespace A048746.P12307463161366160349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048655 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048746.P12307463161366160349

namespace A048746

/-- `∑[A048655(n)]` -/
def P12307463161366160349.Spec : Prop :=
  ∀ n, P12307463161366160349.a n = A048746 n

end A048746

/-! ## A048746.P9510774461958290880

`Δ[A098586(n)]-2`
-/

namespace A048746.P9510774461958290880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098586 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A048746.P9510774461958290880

namespace A048746

/-- `Δ[A098586(n)]-2` -/
def P9510774461958290880.Spec : Prop :=
  ∀ n, P9510774461958290880.a n = A048746 n

end A048746

/-! ## A048746.P13281347541518655179

`∑[A135246(2*n)]`
-/

namespace A048746.P13281347541518655179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135246 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048746.P13281347541518655179

namespace A048746

/-- `∑[A135246(2*n)]` -/
def P13281347541518655179.Spec : Prop :=
  ∀ n, P13281347541518655179.a n = A048746 n

end A048746

/-! ## A048746.P11042780320116805

`A174192(n+1)-1`
-/

namespace A048746.P11042780320116805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174192 (n + 1) - 1

end

end A048746.P11042780320116805

namespace A048746

/-- `A174192(n+1)-1` -/
def P11042780320116805.Spec : Prop :=
  ∀ n, P11042780320116805.a n = A048746 n

end A048746

/-! ## A048746.P3137091250369043331

`A078343(n+2)-2`
-/

namespace A048746.P3137091250369043331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078343 (n + 2) - 2

end

end A048746.P3137091250369043331

namespace A048746

/-- `A078343(n+2)-2` -/
def P3137091250369043331.Spec : Prop :=
  ∀ n, P3137091250369043331.a n = A048746 n

end A048746

/-! ## A048746.P8718056550420499234

`∑[A266505(2*n+1)]`
-/

namespace A048746.P8718056550420499234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266505 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048746.P8718056550420499234

namespace A048746

/-- `∑[A266505(2*n+1)]` -/
def P8718056550420499234.Spec : Prop :=
  ∀ n, P8718056550420499234.a n = A048746 n

end A048746

/-! ## A048746.P9046346083621098518

`A073301(3*(n+1))-2`
-/

namespace A048746.P9046346083621098518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073301 (3 * (n + 1)) - 2

end

end A048746.P9046346083621098518

namespace A048746

/-- `A073301(3*(n+1))-2` -/
def P9046346083621098518.Spec : Prop :=
  ∀ n, P9046346083621098518.a n = A048746 n

end A048746

/-! ## A048746.P6830728269652503285

`A266504(2*n+3)-2`
-/

namespace A048746.P6830728269652503285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266504 (2 * n + 3) - 2

end

end A048746.P6830728269652503285

namespace A048746

/-- `A266504(2*n+3)-2` -/
def P6830728269652503285.Spec : Prop :=
  ∀ n, P6830728269652503285.a n = A048746 n

end A048746

/-! ## A048746.P8103178979273976969

`A265107(n+3)/2-2`
-/

namespace A048746.P8103178979273976969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265107 (n + 3) : ℚ) / 2 - 2

end

end A048746.P8103178979273976969

namespace A048746

/-- `A265107(n+3)/2-2` -/
def P8103178979273976969.Spec : Prop :=
  ∀ n, P8103178979273976969.a n = (A048746 n : ℚ)

end A048746

/-! ## A048746.P5724536271392732874

`2*A391272(n)+n+1`
-/

namespace A048746.P5724536271392732874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A391272 n + (n + 1 : ℤ)

end

end A048746.P5724536271392732874

namespace A048746

/-- `2*A391272(n)+n+1` -/
def P5724536271392732874.Spec : Prop :=
  ∀ n, P5724536271392732874.a n = A048746 n

end A048746

/-! ## A048746.P17753695364034930221

`A135246(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A048746.P17753695364034930221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A135246 (n + n) + a (n - 1)

end

end A048746.P17753695364034930221

namespace A048746

/-- `A135246(n+n)+a(n-1)` -/
def P17753695364034930221.Spec : Prop :=
  ∀ n, P17753695364034930221.a n = A048746 n

end A048746

/-! ## A048746.P11762917354201533758

`∑[A048693(n)-A000129(n)]`
-/

namespace A048746.P11762917354201533758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048693 n - A000129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048746.P11762917354201533758

namespace A048746

/-- `∑[A048693(n)-A000129(n)]` -/
def P11762917354201533758.Spec : Prop :=
  ∀ n, P11762917354201533758.a n = A048746 n

end A048746

/-! ## A048746.P15607163573620042639

`A034182(n+1)+A000129(n)`
-/

namespace A048746.P15607163573620042639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034182 (n + 1) + A000129 n

end

end A048746.P15607163573620042639

namespace A048746

/-- `A034182(n+1)+A000129(n)` -/
def P15607163573620042639.Spec : Prop :=
  ∀ n, P15607163573620042639.a n = A048746 n

end A048746

/-!
# A048748: Mean integral divisors associated with A048747.

The programs for A048748, there is no canonical definition to state claims against.
-/

/-! ## A048748.P10595847962048011434

`A000203(A048747(n+1))/A000005(A048747(n+1))`
-/

namespace A048748.P10595847962048011434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A048747 (n + 1)).toNat : ℚ) / (A000005 (A048747 (n + 1)).toNat : ℚ)

end

end A048748.P10595847962048011434

/-! ## A048748.P9665634628582424149

`A057020(A048747(n+1))`
-/

namespace A048748.P9665634628582424149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057020 (A048747 (n + 1)).toNat

end

end A048748.P9665634628582424149

/-!
# A048749: Factor n, divide sum of aliquot divisors by number of aliquot divisors; append n to sequence if quotient is integral and not previously seen.

The programs for A048749, there is no canonical definition to state claims against.
-/

/-! ## A048749.P11569814648751011844

`∩[A023885(n+1), A176590(n+1)]`
-/

namespace A048749.P11569814648751011844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048749.P11569814648751011844

/-!
# A048750: Mean integral aliquot divisors associated with A048749.

The programs for A048750, there is no canonical definition to state claims against.
-/

/-! ## A048750.P6106230907567069731

`A001065(A048749(n+1))/A032741(A048749(n+1))`
-/

namespace A048750.P6106230907567069731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001065 (A048749 (n + 1)).toNat : ℚ) / (A032741 (A048749 (n + 1)).toNat : ℚ)

end

end A048750.P6106230907567069731

/-!
# A048751: Composites k whose product of divisors divided by number of divisors is an integer.

The programs for A048751, the canonical program `A048751.P4042417737620018600` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048751 has offset 1).

The definition of A048751 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A048751.P4042417737620018600

`A120736(n+3)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A048751

/-- `A120736(n+3)` -/
def P4042417737620018600.Spec : Prop :=
  ∀ n, P4042417737620018600.a n = A048751 (n + 1)

theorem P4042417737620018600.correct : P4042417737620018600.Spec := by
  intro n
  simp only [A048751, Nat.add_sub_cancel]

end A048751

/-! ## A048751.P617108049029720019

`eq[1, A137927(n+6)]+6`
-/

namespace A048751.P617108049029720019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137927 (n + 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 6

end

end A048751.P617108049029720019

namespace A048751

/-- `eq[1, A137927(n+6)]+6` -/
def P617108049029720019.Spec : Prop :=
  ∀ n, (P617108049029720019.a n : ℤ) = A048751 (n + 1)

end A048751

/-! ## A048751.P18382400085860525135

`record[A120736(A052938(A052938(n)))]`
-/

namespace A048751.P18382400085860525135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120736 (A052938 (A052938 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048751.P18382400085860525135

namespace A048751

/-- `record[A120736(A052938(A052938(n)))]` -/
def P18382400085860525135.Spec : Prop :=
  ∀ n, P18382400085860525135.a n = A048751 (n + 1)

end A048751

/-! ## A048751.P11806354362146886997

`record[A120736(A262672(n))]`
-/

namespace A048751.P11806354362146886997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120736 (A262672 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048751.P11806354362146886997

namespace A048751

/-- `record[A120736(A262672(n))]` -/
def P11806354362146886997.Spec : Prop :=
  ∀ n, P11806354362146886997.a n = A048751 (n + 1)

end A048751

/-! ## A048751.P4328568580332776453

`record[A233583(n+7)/A137927(n+6)]`
-/

namespace A048751.P4328568580332776453
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233583 (n + 7) : ℚ) / (A137927 (n + 6) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048751.P4328568580332776453

namespace A048751

/-- `record[A233583(n+7)/A137927(n+6)]` -/
def P4328568580332776453.Spec : Prop :=
  ∀ n, P4328568580332776453.a n = (A048751 (n + 1) : ℚ)

end A048751

/-! ## A048751.P2122525608276719738

`record[A120736(A121854(A154958(n)))]`
-/

namespace A048751.P2122525608276719738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120736 (A121854 (A154958 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048751.P2122525608276719738

namespace A048751

/-- `record[A120736(A121854(A154958(n)))]` -/
def P2122525608276719738.Spec : Prop :=
  ∀ n, P2122525608276719738.a n = A048751 (n + 1)

end A048751

/-!
# A048752: Mean integral divisors associated with A048751.

The programs for A048752, the canonical program `A048752.P6923900765219466389` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048752 has offset 1).

The definition of A048752 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A007955, A048751, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A048752.P6923900765219466389

`A007955(A048751(n+1))/A000005(A048751(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A048752

/-- `A007955(A048751(n+1))/A000005(A048751(n+1))` -/
def P6923900765219466389.Spec : Prop :=
  ∀ n, P6923900765219466389.a n = (A048752 (n + 1) : ℚ)

end A048752

/-! ## A048752.P5651210869275833692

`A291186(A048751(n+1))`
-/

namespace A048752.P5651210869275833692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291186 (A048751 (n + 1)).toNat

end

end A048752.P5651210869275833692

namespace A048752

/-- `A291186(A048751(n+1))` -/
def P5651210869275833692.Spec : Prop :=
  ∀ n, P5651210869275833692.a n = A048752 (n + 1)

end A048752

/-! ## A048752.P16787804103652366804

`A291186(A120736(n+3))`
-/

namespace A048752.P16787804103652366804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291186 (A120736 (n + 3)).toNat

end

end A048752.P16787804103652366804

namespace A048752

/-- `A291186(A120736(n+3))` -/
def P16787804103652366804.Spec : Prop :=
  ∀ n, P16787804103652366804.a n = A048752 (n + 1)

end A048752

/-! ## A048752.P12876509169985290573

`A291186(eq[1, A137927(n+6)]+6)`
-/

namespace A048752.P12876509169985290573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137927 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291186 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 6)

end

end A048752.P12876509169985290573

namespace A048752

/-- `A291186(eq[1, A137927(n+6)]+6)` -/
def P12876509169985290573.Spec : Prop :=
  ∀ n, P12876509169985290573.a n = A048752 (n + 1)

end A048752

/-! ## A048752.P12208998226319526022

`A291186(record[(n+6)/A137927(n+6)])`
-/

namespace A048752.P12208998226319526022
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 6 : ℚ) / (A137927 (n + 6) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291186 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A048752.P12208998226319526022

namespace A048752

/-- `A291186(record[(n+6)/A137927(n+6)])` -/
def P12208998226319526022.Spec : Prop :=
  ∀ n, P12208998226319526022.a n = A048752 (n + 1)

end A048752

/-! ## A048752.P4833844349387533590

`A293376(n+3)`
-/

namespace A048752.P4833844349387533590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293376 (n + 3)

end

end A048752.P4833844349387533590

namespace A048752

/-- `A293376(n+3)` -/
def P4833844349387533590.Spec : Prop :=
  ∀ n, P4833844349387533590.a n = A048752 (n + 1)

end A048752

/-!
# A048753: Composite numbers k whose product of aliquot divisors divided by number of aliquot divisors is an integer.

The programs for A048753, the canonical program `A048753.P1406929724014975171` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048753 has offset 1).

The definition of A048753 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1357 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A048753.P1406929724014975171

`eq[1, (n^3+1)%A257088(A032741(n))]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A048753

/-- `eq[1, (n^3+1)%A257088(A032741(n))]` -/
def P1406929724014975171.Spec : Prop :=
  ∀ n, (P1406929724014975171.a n : ℤ) = A048753 (n + 1)

theorem P1406929724014975171.correct : P1406929724014975171.Spec := by
  intro n
  simp only [A048753, Nat.add_sub_cancel]

end A048753

/-! ## A048753.P13435695784531903726

`A055719(n+1)-A206590(A096235(2*(n+2)))`
-/

namespace A048753.P13435695784531903726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055719 (n + 1) - A206590 (A096235 (2 * (n + 2))).toNat

end

end A048753.P13435695784531903726

namespace A048753

/-- `A055719(n+1)-A206590(A096235(2*(n+2)))` -/
def P13435695784531903726.Spec : Prop :=
  ∀ n, P13435695784531903726.a n = A048753 (n + 1)

end A048753

/-!
# A048754: Mean integral quotients associated with A048753.

The programs for A048754, the canonical program `A048754.P5290523552306248918` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048754 has offset 1).

The definition of A048754 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007956, A032741, A048753, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A048754.P5290523552306248918

`A007956(A048753(n+1))/A032741(A048753(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A048754

/-- `A007956(A048753(n+1))/A032741(A048753(n+1))` -/
def P5290523552306248918.Spec : Prop :=
  ∀ n, P5290523552306248918.a n = (A048754 (n + 1) : ℚ)

end A048754

/-!
# A048755: Partial sums of A048693.

The programs for A048755, the canonical program `A048755.P4114961428006683584` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048755 has offset 0).

The definition of A048755 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048755.P4114961428006683584

`2*a(n-1)+a(n-2)+5` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048755

/-- `2*a(n-1)+a(n-2)+5` -/
def P4114961428006683584.Spec : Prop :=
  ∀ n, (P4114961428006683584.a n : ℤ) = A048755 n

theorem P4114961428006683584.correct : P4114961428006683584.Spec := by
  intro n
  simp only [A048755]

end A048755

/-! ## A048755.P6535658405441651500

`ogf((1+4x)/(1-3x+x^2+x^3))`
-/

namespace A048755.P6535658405441651500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4] [1, -3, 1, 1] n

end

end A048755.P6535658405441651500

namespace A048755

/-- `ogf((1+4x)/(1-3x+x^2+x^3))` -/
def P6535658405441651500.Spec : Prop :=
  ∀ n, P6535658405441651500.a n = A048755 n

end A048755

/-! ## A048755.P7818450932431018818

`ceil((sqrt(2)+1)*a(n-1))+3` with `a(0)=1, a(1)=7`
-/

namespace A048755.P7818450932431018818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n a =>
  ⌈(Real.sqrt (2 : ℝ) + 1) * (a (n - 1) : ℝ)⌉ + 3

end

end A048755.P7818450932431018818

namespace A048755

/-- `ceil((sqrt(2)+1)*a(n-1))+3` -/
def P7818450932431018818.Spec : Prop :=
  ∀ n, P7818450932431018818.a n = A048755 n

end A048755

/-! ## A048755.P10471074843664795819

`∑[a(n-2)+2*a(n-1)]` with `a(0)=1, a(1)=6`
-/

namespace A048755.P10471074843664795819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  f1 (n - 2) + 2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048755.P10471074843664795819

namespace A048755

/-- `∑[a(n-2)+2*a(n-1)]` -/
def P10471074843664795819.Spec : Prop :=
  ∀ n, (P10471074843664795819.a n : ℤ) = A048755 n

end A048755

/-! ## A048755.P4001080732894710482

`∑[a(n-1)+a(n-1)+a(n-2)]` with `a(0)=1, a(1)=6`
-/

namespace A048755.P4001080732894710482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048755.P4001080732894710482

namespace A048755

/-- `∑[a(n-1)+a(n-1)+a(n-2)]` -/
def P4001080732894710482.Spec : Prop :=
  ∀ n, (P4001080732894710482.a n : ℤ) = A048755 n

end A048755

/-! ## A048755.P2207491867598196059

`a(n-1)+5+a(n-1)+a(n-2)` with `a(0)=1, a(1)=7`
-/

namespace A048755.P2207491867598196059
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n a =>
  a (n - 1) + 5 + (a (n - 1) + a (n - 2))

end

end A048755.P2207491867598196059

namespace A048755

/-- `a(n-1)+5+a(n-1)+a(n-2)` -/
def P2207491867598196059.Spec : Prop :=
  ∀ n, (P2207491867598196059.a n : ℤ) = A048755 n

theorem P2207491867598196059.correct : P2207491867598196059.Spec := by
  intro n
  simp only [A048755, Nat.add_sub_cancel, A048755.P2207491867598196059.a, A048755.P4114961428006683584.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A048755

/-! ## A048755.P2641068616443377982

`∑[A048693(n)]`
-/

namespace A048755.P2641068616443377982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048693 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048755.P2641068616443377982

namespace A048755

/-- `∑[A048693(n)]` -/
def P2641068616443377982.Spec : Prop :=
  ∀ n, P2641068616443377982.a n = A048755 n

end A048755

/-! ## A048755.P4544539404775840583

`A209971(n)+A048777(n)`
-/

namespace A048755.P4544539404775840583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209971 n + A048777 n

end

end A048755.P4544539404775840583

namespace A048755

/-- `A209971(n)+A048777(n)` -/
def P4544539404775840583.Spec : Prop :=
  ∀ n, P4544539404775840583.a n = A048755 n

end A048755

/-! ## A048755.P12799199765519717529

`∑[A048655(n)+A000129(n)]`
-/

namespace A048755.P12799199765519717529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048655 n + A000129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048755.P12799199765519717529

namespace A048755

/-- `∑[A048655(n)+A000129(n)]` -/
def P12799199765519717529.Spec : Prop :=
  ∀ n, P12799199765519717529.a n = A048755 n

end A048755

/-! ## A048755.P6199925959715266446

`2*A048745(n)-A048739(n)`
-/

namespace A048755.P6199925959715266446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048745 n - A048739 n

end

end A048755.P6199925959715266446

namespace A048755

/-- `2*A048745(n)-A048739(n)` -/
def P6199925959715266446.Spec : Prop :=
  ∀ n, P6199925959715266446.a n = A048755 n

end A048755

/-! ## A048755.P7291952731958474763

`A000129(n)+A048777(n)+n`
-/

namespace A048755.P7291952731958474763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n + (A048777 n + (n : ℤ))

end

end A048755.P7291952731958474763

namespace A048755

/-- `A000129(n)+A048777(n)+n` -/
def P7291952731958474763.Spec : Prop :=
  ∀ n, P7291952731958474763.a n = A048755 n

end A048755

/-! ## A048755.P12580013514345316597

`∑[A221174(n)+Δ[A221172(n)]]`
-/

namespace A048755.P12580013514345316597
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221172 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221174 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048755.P12580013514345316597

namespace A048755

/-- `∑[A221174(n)+Δ[A221172(n)]]` -/
def P12580013514345316597.Spec : Prop :=
  ∀ n, P12580013514345316597.a n = A048755 n

end A048755

/-! ## A048755.P16815855551096982679

`∑[A002203(n+1)]-A171842(n)`
-/

namespace A048755.P16815855551096982679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A171842 n

end

end A048755.P16815855551096982679

namespace A048755

/-- `∑[A002203(n+1)]-A171842(n)` -/
def P16815855551096982679.Spec : Prop :=
  ∀ n, P16815855551096982679.a n = A048755 n

end A048755

/-! ## A048755.P2984315677963333347

`∑[2*A048655(n)-A048654(n)]`
-/

namespace A048755.P2984315677963333347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048655 n - A048654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048755.P2984315677963333347

namespace A048755

/-- `∑[2*A048655(n)-A048654(n)]` -/
def P2984315677963333347.Spec : Prop :=
  ∀ n, P2984315677963333347.a n = A048755 n

end A048755

/-! ## A048755.P3631849786069684790

`∑[2*A078057(n)]-A171842(n)`
-/

namespace A048755.P3631849786069684790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A078057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A171842 n

end

end A048755.P3631849786069684790

namespace A048755

/-- `∑[2*A078057(n)]-A171842(n)` -/
def P3631849786069684790.Spec : Prop :=
  ∀ n, P3631849786069684790.a n = A048755 n

end A048755

/-! ## A048755.P16514507601809341849

`A001333(n+1)+A098790(n+1)-2`
-/

namespace A048755.P16514507601809341849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (n + 1) + (A098790 (n + 1) - 2)

end

end A048755.P16514507601809341849

namespace A048755

/-- `A001333(n+1)+A098790(n+1)-2` -/
def P16514507601809341849.Spec : Prop :=
  ∀ n, P16514507601809341849.a n = A048755 n

end A048755

/-! ## A048755.P5954007301050045661

`A135153(2*n)+A048739(n+1)-2`
-/

namespace A048755.P5954007301050045661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135153 (2 * n) + (A048739 (n + 1) - 2)

end

end A048755.P5954007301050045661

namespace A048755

/-- `A135153(2*n)+A048739(n+1)-2` -/
def P5954007301050045661.Spec : Prop :=
  ∀ n, P5954007301050045661.a n = A048755 n

end A048755

/-! ## A048755.P12101847598831188798

`A048770(n)+A048770(n)-A048771(n)`
-/

namespace A048755.P12101847598831188798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048770 n + (A048770 n - A048771 n)

end

end A048755.P12101847598831188798

namespace A048755

/-- `A048770(n)+A048770(n)-A048771(n)` -/
def P12101847598831188798.Spec : Prop :=
  ∀ n, P12101847598831188798.a n = A048755 n

end A048755

/-! ## A048755.P12851402719678171349

`A048770(n)-(A048772(n)-A048771(n))`
-/

namespace A048755.P12851402719678171349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048770 n - (A048772 n - A048771 n)

end

end A048755.P12851402719678171349

namespace A048755

/-- `A048770(n)-(A048772(n)-A048771(n))` -/
def P12851402719678171349.Spec : Prop :=
  ∀ n, P12851402719678171349.a n = A048755 n

end A048755

/-! ## A048755.P12242546517357888987

`A034182(n+1)+A048739(n)-A001333(n)`
-/

namespace A048755.P12242546517357888987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034182 (n + 1) + (A048739 n - A001333 n)

end

end A048755.P12242546517357888987

namespace A048755

/-- `A034182(n+1)+A048739(n)-A001333(n)` -/
def P12242546517357888987.Spec : Prop :=
  ∀ n, P12242546517357888987.a n = A048755 n

end A048755

/-!
# A048757: Sum_{i=0..2n} (C(2n,i) mod 2)*Fibonacci(i+2) = Sum_{i=0..n} (C(n,i) mod 2)*Fibonacci(2i+2).

The programs for A048757, there is no canonical definition to state claims against.
-/

/-! ## A048757.P5531776097733097871

`ceil(ϕ*a(n-1))+2*a(and(n, n-1))` with `a(0)=1`
-/

namespace A048757.P5531776097733097871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈Real.goldenRatio * (a (n - 1) : ℝ)⌉ + 2 * a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

end

end A048757.P5531776097733097871

/-! ## A048757.P8710853787800016077

`2*a(and(n, n-1))+floor(ϕ*a(n-1))+1` with `a(0)=1`
-/

namespace A048757.P8710853787800016077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + (⌊Real.goldenRatio * (a (n - 1) : ℝ)⌋ + 1)

end

end A048757.P8710853787800016077

/-! ## A048757.P12878748097944959470

`A050610(∑[n+3])`
-/

namespace A048757.P12878748097944959470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050610 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A048757.P12878748097944959470

/-! ## A048757.P6733484629467379519

`floor(ϕ*A050611(n))`
-/

namespace A048757.P6733484629467379519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (A050611 n : ℝ)⌋

end

end A048757.P6733484629467379519

/-! ## A048757.P3305177980110272731

`floor(A050612(n)/ϕ)`
-/

namespace A048757.P3305177980110272731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A050612 n : ℝ) / Real.goldenRatio⌋

end

end A048757.P3305177980110272731

/-!
# A048759: Longest perimeter of a Pythagorean triangle with n as length of one of the three sides.

The programs for A048759, the canonical program `A048759.P2829597580028799179` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048759 has offset 3).

The definition of A048759 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048759.P7625604970852658257

`(3-(-1)^(n+3))*(n+3)²/4+n+3`
-/

namespace A048759.P7625604970852658257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 - (-1) ^ (n + 3)) * ((n + 3) ^ 2 : ℤ) : ℚ) / 4 + (n + 3 : ℚ)

end

end A048759.P7625604970852658257

namespace A048759

/-- `(3-(-1)^(n+3))*(n+3)²/4+n+3` -/
def P7625604970852658257.Spec : Prop :=
  ∀ n, P7625604970852658257.a n = (A048759 (n + 3) : ℚ)

end A048759

/-! ## A048759.P2829597580028799179

`(n+3)*A029578(n+5)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A048759

/-- `(n+3)*A029578(n+5)` -/
def P2829597580028799179.Spec : Prop :=
  ∀ n, P2829597580028799179.a n = A048759 (n + 3)

theorem P2829597580028799179.correct : P2829597580028799179.Spec := by
  intro n
  simp only [A048759, Nat.add_sub_cancel]

end A048759

/-! ## A048759.P1053154794673653797

`lcm(n+3, and(n+5, -2))`
-/

namespace A048759.P1053154794673653797
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 3 : ℤ) (Int.land (n + 5 : ℤ) (-2))

end

end A048759.P1053154794673653797

namespace A048759

/-- `lcm(n+3, and(n+5, -2))` -/
def P1053154794673653797.Spec : Prop :=
  ∀ n, (P1053154794673653797.a n : ℤ) = A048759 (n + 3)

end A048759

/-! ## A048759.P16998627715342336184

`(gcd(n+3, C(n+3, 2))+1)*(n+3)`
-/

namespace A048759.P16998627715342336184
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.gcd (n + 3) (Nat.choose (n + 3) 2) + 1) * (n + 3)

end

end A048759.P16998627715342336184

namespace A048759

/-- `(gcd(n+3, C(n+3, 2))+1)*(n+3)` -/
def P16998627715342336184.Spec : Prop :=
  ∀ n, (P16998627715342336184.a n : ℤ) = A048759 (n + 3)

end A048759

/-! ## A048759.P14035294110897730077

`((n+3)/gcd(n-1, 2*n)+1)*(n+3)`
-/

namespace A048759.P14035294110897730077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 3 : ℚ) / (Int.gcd ((n : ℤ) - 1) (2 * n : ℤ) : ℚ) + 1) * (n + 3 : ℚ)

end

end A048759.P14035294110897730077

namespace A048759

/-- `((n+3)/gcd(n-1, 2*n)+1)*(n+3)` -/
def P14035294110897730077.Spec : Prop :=
  ∀ n, P14035294110897730077.a n = (A048759 (n + 3) : ℚ)

end A048759

/-! ## A048759.P17449345122381672177

`(n+3)*(A174239(n)+3)`
-/

namespace A048759.P17449345122381672177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * (A174239 n + 3)

end

end A048759.P17449345122381672177

namespace A048759

/-- `(n+3)*(A174239(n)+3)` -/
def P17449345122381672177.Spec : Prop :=
  ∀ n, P17449345122381672177.a n = A048759 (n + 3)

end A048759

/-! ## A048759.P6164716401360133858

`lcm(Δ[A099392(n+5)], n+3)`
-/

namespace A048759.P6164716401360133858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099392 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (n + 3 : ℤ)

end

end A048759.P6164716401360133858

namespace A048759

/-- `lcm(Δ[A099392(n+5)], n+3)` -/
def P6164716401360133858.Spec : Prop :=
  ∀ n, (P6164716401360133858.a n : ℤ) = A048759 (n + 3)

end A048759

/-! ## A048759.P4309369803064605291

`(A174007(n+1)+n+2)*(n+3)`
-/

namespace A048759.P4309369803064605291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A174007 (n + 1) + (n + 2 : ℤ)) * (n + 3 : ℤ)

end

end A048759.P4309369803064605291

namespace A048759

/-- `(A174007(n+1)+n+2)*(n+3)` -/
def P4309369803064605291.Spec : Prop :=
  ∀ n, P4309369803064605291.a n = A048759 (n + 3)

end A048759

/-! ## A048759.P10656901365199892503

`(A145051(n+2)+1)*(n+3)`
-/

namespace A048759.P10656901365199892503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A145051 (n + 2) + 1) * (n + 3 : ℤ)

end

end A048759.P10656901365199892503

namespace A048759

/-- `(A145051(n+2)+1)*(n+3)` -/
def P10656901365199892503.Spec : Prop :=
  ∀ n, P10656901365199892503.a n = A048759 (n + 3)

end A048759

/-! ## A048759.P16505417370049755549

`2*A056136(n+3)`
-/

namespace A048759.P16505417370049755549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056136 (n + 3)

end

end A048759.P16505417370049755549

namespace A048759

/-- `2*A056136(n+3)` -/
def P16505417370049755549.Spec : Prop :=
  ∀ n, P16505417370049755549.a n = A048759 (n + 3)

end A048759

/-! ## A048759.P12473387971425725399

`lcm(n+3, A265283(n+2))`
-/

namespace A048759.P12473387971425725399
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 3 : ℤ) (A265283 (n + 2))

end

end A048759.P12473387971425725399

namespace A048759

/-- `lcm(n+3, A265283(n+2))` -/
def P12473387971425725399.Spec : Prop :=
  ∀ n, (P12473387971425725399.a n : ℤ) = A048759 (n + 3)

end A048759

/-! ## A048759.P12760892683977915452

`(n+3)*(A026741(n+3)+1)`
-/

namespace A048759.P12760892683977915452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * (A026741 (n + 3) + 1)

end

end A048759.P12760892683977915452

namespace A048759

/-- `(n+3)*(A026741(n+3)+1)` -/
def P12760892683977915452.Spec : Prop :=
  ∀ n, P12760892683977915452.a n = A048759 (n + 3)

end A048759

/-! ## A048759.P15212295239847839935

`(n+3)*(A065423(n+3)+2)`
-/

namespace A048759.P15212295239847839935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * (A065423 (n + 3) + 2)

end

end A048759.P15212295239847839935

namespace A048759

/-- `(n+3)*(A065423(n+3)+2)` -/
def P15212295239847839935.Spec : Prop :=
  ∀ n, P15212295239847839935.a n = A048759 (n + 3)

end A048759

/-!
# A048760: Largest square <= n.

The programs for A048760, the canonical program `A048760.P9900115946027900201` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048760 has offset 0).

The definition of A048760 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048760.P412079218711428989

`floor(n^(1/2))²`
-/

namespace A048760.P412079218711428989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) ^ ((1 : ℚ) / 2 : ℝ)⌋ ^ 2

end

end A048760.P412079218711428989

namespace A048760

/-- `floor(n^(1/2))²` -/
def P412079218711428989.Spec : Prop :=
  ∀ n, P412079218711428989.a n = A048760 n

end A048760

/-! ## A048760.P9900115946027900201

`A000290(A000196(n))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A048760

/-- `A000290(A000196(n))` -/
def P9900115946027900201.Spec : Prop :=
  ∀ n, P9900115946027900201.a n = A048760 n

theorem P9900115946027900201.correct : P9900115946027900201.Spec := by
  intro n
  simp only [A048760]

end A048760

/-! ## A048760.P4247745007378594166

`floor(sqrt(n))^(2%(n+3))`
-/

namespace A048760.P4247745007378594166
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt n ^ (2 % (n + 3))

end

end A048760.P4247745007378594166

namespace A048760

/-- `floor(sqrt(n))^(2%(n+3))` -/
def P4247745007378594166.Spec : Prop :=
  ∀ n, (P4247745007378594166.a n : ℤ) = A048760 n

end A048760

/-! ## A048760.P4162996926784447717

`ceil(-sqrt(n))²%(n+1)`
-/

namespace A048760.P4162996926784447717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌈-Real.sqrt (n : ℝ)⌉ ^ 2) (n + 1 : ℤ)

end

end A048760.P4162996926784447717

namespace A048760

/-- `ceil(-sqrt(n))²%(n+1)` -/
def P4162996926784447717.Spec : Prop :=
  ∀ n, P4162996926784447717.a n = A048760 n

end A048760

/-! ## A048760.P7640867729566034663

`floor(sqrt(n))^ceil(atan(n+1))`
-/

namespace A048760.P7640867729566034663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.sqrt n : ℚ) ^ (⌈Real.arctan (n + 1 : ℝ)⌉ : ℤ)

end

end A048760.P7640867729566034663

namespace A048760

/-- `floor(sqrt(n))^ceil(atan(n+1))` -/
def P7640867729566034663.Spec : Prop :=
  ∀ n, P7640867729566034663.a n = (A048760 n : ℚ)

end A048760

/-! ## A048760.P17806085155267304502

`or(∑[char[(n+1)²]]², char[1])`
-/

namespace A048760.P17806085155267304502
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) (if ∃ j, f3 j = n then 1 else 0)

end

end A048760.P17806085155267304502

namespace A048760

/-- `or(∑[char[(n+1)²]]², char[1])` -/
def P17806085155267304502.Spec : Prop :=
  ∀ n, (P17806085155267304502.a n : ℤ) = A048760 n

end A048760

/-! ## A048760.P13335991899515867512

`n-A053186(n)`
-/

namespace A048760.P13335991899515867512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A053186 n

end

end A048760.P13335991899515867512

namespace A048760

/-- `n-A053186(n)` -/
def P13335991899515867512.Spec : Prop :=
  ∀ n, P13335991899515867512.a n = A048760 n

end A048760

/-! ## A048760.P11045198653018629063

`A061887(n)-n`
-/

namespace A048760.P11045198653018629063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061887 n - (n : ℤ)

end

end A048760.P11045198653018629063

namespace A048760

/-- `A061887(n)-n` -/
def P11045198653018629063.Spec : Prop :=
  ∀ n, P11045198653018629063.a n = A048760 n

end A048760

/-! ## A048760.P7353220282133184220

`A000290(floor(sqrt(n)))`
-/

namespace A048760.P7353220282133184220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Nat.sqrt n)

end

end A048760.P7353220282133184220

namespace A048760

/-- `A000290(floor(sqrt(n)))` -/
def P7353220282133184220.Spec : Prop :=
  ∀ n, P7353220282133184220.a n = A048760 n

end A048760

/-! ## A048760.P1127904027058399798

`comp[A165776(n)]-n`
-/

namespace A048760.P1127904027058399798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165776 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A048760.P1127904027058399798

namespace A048760

/-- `comp[A165776(n)]-n` -/
def P1127904027058399798.Spec : Prop :=
  ∀ n, P1127904027058399798.a n = A048760 n

end A048760

/-! ## A048760.P10430355301312193256

`2*n-A094761(n)`
-/

namespace A048760.P10430355301312193256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A094761 n

end

end A048760.P10430355301312193256

namespace A048760

/-- `2*n-A094761(n)` -/
def P10430355301312193256.Spec : Prop :=
  ∀ n, P10430355301312193256.a n = A048760 n

end A048760

/-! ## A048760.P7637709141885675396

`A002522(floor(sqrt(n)))-1`
-/

namespace A048760.P7637709141885675396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (Nat.sqrt n) - 1

end

end A048760.P7637709141885675396

namespace A048760

/-- `A002522(floor(sqrt(n)))-1` -/
def P7637709141885675396.Spec : Prop :=
  ∀ n, P7637709141885675396.a n = A048760 n

end A048760

/-! ## A048760.P9451655435307767325

`A059100(floor(sqrt(n)))-2`
-/

namespace A048760.P9451655435307767325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059100 (Nat.sqrt n) - 2

end

end A048760.P9451655435307767325

namespace A048760

/-- `A059100(floor(sqrt(n)))-2` -/
def P9451655435307767325.Spec : Prop :=
  ∀ n, P9451655435307767325.a n = A048760 n

end A048760

/-! ## A048760.P6582429928550719045

`1-A071797(n+1)+n`
-/

namespace A048760.P6582429928550719045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A071797 (n + 1) + (n : ℤ)

end

end A048760.P6582429928550719045

namespace A048760

/-- `1-A071797(n+1)+n` -/
def P6582429928550719045.Spec : Prop :=
  ∀ n, P6582429928550719045.a n = A048760 n

end A048760

/-! ## A048760.P10472842270614672292

`floor(sqrt(n))^A020639(2*(n+1))`
-/

namespace A048760.P10472842270614672292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.sqrt n : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A048760.P10472842270614672292

namespace A048760

/-- `floor(sqrt(n))^A020639(2*(n+1))` -/
def P10472842270614672292.Spec : Prop :=
  ∀ n, P10472842270614672292.a n = (A048760 n : ℚ)

end A048760

/-! ## A048760.P5616180456091850405

`(∑[char[(n+1)²]]²+n)%A284880(n+1)-n`
-/

namespace A048760.P5616180456091850405
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + n : ℕ) : ℤ) (A284880 (n + 1)) - (n : ℤ)

end

end A048760.P5616180456091850405

namespace A048760

/-- `(∑[char[(n+1)²]]²+n)%A284880(n+1)-n` -/
def P5616180456091850405.Spec : Prop :=
  ∀ n, P5616180456091850405.a n = A048760 n

end A048760

/-! ## A048760.P12586880759352053925

`A008794(A000267(n))`
-/

namespace A048760.P12586880759352053925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 (A000267 n).toNat

end

end A048760.P12586880759352053925

namespace A048760

/-- `A008794(A000267(n))` -/
def P12586880759352053925.Spec : Prop :=
  ∀ n, P12586880759352053925.a n = A048760 n

end A048760

/-! ## A048760.P11339349880031847099

`A053187(A038759(n))`
-/

namespace A048760.P11339349880031847099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053187 (A038759 n).toNat

end

end A048760.P11339349880031847099

namespace A048760

/-- `A053187(A038759(n))` -/
def P11339349880031847099.Spec : Prop :=
  ∀ n, P11339349880031847099.a n = A048760 n

end A048760

/-! ## A048760.P2034574952060624445

`A048761(A083479(n))`
-/

namespace A048760.P2034574952060624445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048761 (A083479 n).toNat

end

end A048760.P2034574952060624445

namespace A048760

/-- `A048761(A083479(n))` -/
def P2034574952060624445.Spec : Prop :=
  ∀ n, P2034574952060624445.a n = A048760 n

end A048760

/-!
# A048761: Smallest square greater than or equal to n.

The programs for A048761, the canonical program `A048761.P914736112300567897` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048761 has offset 0).

The definition of A048761 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048761.P914736112300567897

`ceil(sqrt(n))²`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048761

/-- `ceil(sqrt(n))²` -/
def P914736112300567897.Spec : Prop :=
  ∀ n, P914736112300567897.a n = A048761 n

theorem P914736112300567897.correct : P914736112300567897.Spec := by
  intro n
  simp only [A048761]

end A048761

/-! ## A048761.P1576063752299614231

`ceil(sqrt(n))^(2%(n+3))`
-/

namespace A048761.P1576063752299614231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (n : ℝ)⌉ ^ (2 % (n + 3))

end

end A048761.P1576063752299614231

namespace A048761

/-- `ceil(sqrt(n))^(2%(n+3))` -/
def P1576063752299614231.Spec : Prop :=
  ∀ n, P1576063752299614231.a n = A048761 n

end A048761

/-! ## A048761.P3714853454045605449

`floor(-sqrt(n))²%(2*n+1)`
-/

namespace A048761.P3714853454045605449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌊-Real.sqrt (n : ℝ)⌋ ^ 2) (2 * n + 1 : ℤ)

end

end A048761.P3714853454045605449

namespace A048761

/-- `floor(-sqrt(n))²%(2*n+1)` -/
def P3714853454045605449.Spec : Prop :=
  ∀ n, P3714853454045605449.a n = A048761 n

end A048761

/-! ## A048761.P12134539310899957019

`A068527(n)+n`
-/

namespace A048761.P12134539310899957019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 n + (n : ℤ)

end

end A048761.P12134539310899957019

namespace A048761

/-- `A068527(n)+n` -/
def P12134539310899957019.Spec : Prop :=
  ∀ n, P12134539310899957019.a n = A048761 n

end A048761

/-! ## A048761.P4189403475001535135

`A000290(ceil(sqrt(n)))`
-/

namespace A048761.P4189403475001535135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 ⌈Real.sqrt (n : ℝ)⌉.toNat

end

end A048761.P4189403475001535135

namespace A048761

/-- `A000290(ceil(sqrt(n)))` -/
def P4189403475001535135.Spec : Prop :=
  ∀ n, P4189403475001535135.a n = A048761 n

end A048761

/-! ## A048761.P12895173350614057368

`A002522(ceil(sqrt(n)))-1`
-/

namespace A048761.P12895173350614057368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 ⌈Real.sqrt (n : ℝ)⌉.toNat - 1

end

end A048761.P12895173350614057368

namespace A048761

/-- `A002522(ceil(sqrt(n)))-1` -/
def P12895173350614057368.Spec : Prop :=
  ∀ n, P12895173350614057368.a n = A048761 n

end A048761

/-! ## A048761.P14177953649471723793

`A059100(ceil(sqrt(n)))-2`
-/

namespace A048761.P14177953649471723793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059100 ⌈Real.sqrt (n : ℝ)⌉.toNat - 2

end

end A048761.P14177953649471723793

namespace A048761

/-- `A059100(ceil(sqrt(n)))-2` -/
def P14177953649471723793.Spec : Prop :=
  ∀ n, P14177953649471723793.a n = A048761 n

end A048761

/-! ## A048761.P4121074220522843195

`A002620(2*ceil(sqrt(n)))`
-/

namespace A048761.P4121074220522843195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * ⌈Real.sqrt (n : ℝ)⌉).toNat

end

end A048761.P4121074220522843195

namespace A048761

/-- `A002620(2*ceil(sqrt(n)))` -/
def P4121074220522843195.Spec : Prop :=
  ∀ n, P4121074220522843195.a n = A048761 n

end A048761

/-! ## A048761.P9656874673828271014

`A001105(ceil(sqrt(n)))/2`
-/

namespace A048761.P9656874673828271014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001105 ⌈Real.sqrt (n : ℝ)⌉.toNat : ℚ) / 2

end

end A048761.P9656874673828271014

namespace A048761

/-- `A001105(ceil(sqrt(n)))/2` -/
def P9656874673828271014.Spec : Prop :=
  ∀ n, P9656874673828271014.a n = (A048761 n : ℚ)

end A048761

/-! ## A048761.P3382367458066612219

`∑[A143051(n)-n]+n`
-/

namespace A048761.P3382367458066612219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143051 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A048761.P3382367458066612219

namespace A048761

/-- `∑[A143051(n)-n]+n` -/
def P3382367458066612219.Spec : Prop :=
  ∀ n, P3382367458066612219.a n = A048761 n

end A048761

/-! ## A048761.P13874596083916439238

`ceil(sqrt(n))^(A157532(n+1)-1)`
-/

namespace A048761.P13874596083916439238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈Real.sqrt (n : ℝ)⌉ : ℚ) ^ (A157532 (n + 1) - 1 : ℤ)

end

end A048761.P13874596083916439238

namespace A048761

/-- `ceil(sqrt(n))^(A157532(n+1)-1)` -/
def P13874596083916439238.Spec : Prop :=
  ∀ n, P13874596083916439238.a n = (A048761 n : ℚ)

end A048761

/-! ## A048761.P14622979352219179702

`A053187(A135034(n)²)`
-/

namespace A048761.P14622979352219179702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053187 (A135034 n ^ 2).toNat

end

end A048761.P14622979352219179702

namespace A048761

/-- `A053187(A135034(n)²)` -/
def P14622979352219179702.Spec : Prop :=
  ∀ n, P14622979352219179702.a n = A048761 n

end A048761

/-! ## A048761.P142033545513660204

`A008217(A027709(n)+2)`
-/

namespace A048761.P142033545513660204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008217 (A027709 n + 2).toNat

end

end A048761.P142033545513660204

namespace A048761

/-- `A008217(A027709(n)+2)` -/
def P142033545513660204.Spec : Prop :=
  ∀ n, P142033545513660204.a n = A048761 n

end A048761

/-! ## A048761.P10116589561063223709

`A053187(floor(sqrt(n)+n))`
-/

namespace A048761.P10116589561063223709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053187 ⌊Real.sqrt (n : ℝ) + (n : ℝ)⌋.toNat

end

end A048761.P10116589561063223709

namespace A048761

/-- `A053187(floor(sqrt(n)+n))` -/
def P10116589561063223709.Spec : Prop :=
  ∀ n, P10116589561063223709.a n = A048761 n

end A048761

/-! ## A048761.P9485357286750424957

`A048760(A112594(n))`
-/

namespace A048761.P9485357286750424957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048760 (A112594 n).toNat

end

end A048761.P9485357286750424957

namespace A048761

/-- `A048760(A112594(n))` -/
def P9485357286750424957.Spec : Prop :=
  ∀ n, P9485357286750424957.a n = A048761 n

end A048761

/-! ## A048761.P11515377536588420065

`A048760(A060018(n+2)+n)`
-/

namespace A048761.P11515377536588420065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048760 (A060018 (n + 2) + (n : ℤ)).toNat

end

end A048761.P11515377536588420065

namespace A048761

/-- `A048760(A060018(n+2)+n)` -/
def P11515377536588420065.Spec : Prop :=
  ∀ n, P11515377536588420065.a n = A048761 n

end A048761

/-! ## A048761.P17580871474249335328

`A048760(2*A000196(n)+n)`
-/

namespace A048761.P17580871474249335328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048760 (2 * A000196 n + (n : ℤ)).toNat

end

end A048761.P17580871474249335328

namespace A048761

/-- `A048760(2*A000196(n)+n)` -/
def P17580871474249335328.Spec : Prop :=
  ∀ n, P17580871474249335328.a n = A048761 n

end A048761

/-! ## A048761.P12010881714702493310

`A048760(A172471(2*n)+n)`
-/

namespace A048761.P12010881714702493310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048760 (A172471 (2 * n) + (n : ℤ)).toNat

end

end A048761.P12010881714702493310

namespace A048761

/-- `A048760(A172471(2*n)+n)` -/
def P12010881714702493310.Spec : Prop :=
  ∀ n, P12010881714702493310.a n = A048761 n

end A048761

/-! ## A048761.P10349400127489488069

`A048760(A174805(n))`
-/

namespace A048761.P10349400127489488069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048760 (A174805 n).toNat

end

end A048761.P10349400127489488069

namespace A048761

/-- `A048760(A174805(n))` -/
def P10349400127489488069.Spec : Prop :=
  ∀ n, P10349400127489488069.a n = A048761 n

end A048761

/-!
# A048762: Largest cube <= n.

The programs for A048762, the canonical program `A048762.P2021550469671049707` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048762 has offset 0).

The definition of A048762 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A048762.P11332887947517025274

`floor(n^(1/3))^3`
-/

namespace A048762.P11332887947517025274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)⌋ ^ 3

end

end A048762.P11332887947517025274

namespace A048762

/-- `floor(n^(1/3))^3` -/
def P11332887947517025274.Spec : Prop :=
  ∀ n, P11332887947517025274.a n = A048762 n

end A048762

/-! ## A048762.P1970527556731247063

`n-A055400(n)`
-/

namespace A048762.P1970527556731247063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A055400 n

end

end A048762.P1970527556731247063

namespace A048762

/-- `n-A055400(n)` -/
def P1970527556731247063.Spec : Prop :=
  ∀ n, P1970527556731247063.a n = A048762 n

end A048762

/-! ## A048762.P2021550469671049707

`-(-A048766(n))^3`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A048762

/-- `-(-A048766(n))^3` -/
def P2021550469671049707.Spec : Prop :=
  ∀ n, P2021550469671049707.a n = A048762 n

theorem P2021550469671049707.correct : P2021550469671049707.Spec := by
  intro n
  simp only [A048762]

end A048762

/-! ## A048762.P5771762025730799959

`A000578(∑[char[(n+1)^3]])`
-/

namespace A048762.P5771762025730799959
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A048762.P5771762025730799959

namespace A048762

/-- `A000578(∑[char[(n+1)^3]])` -/
def P5771762025730799959.Spec : Prop :=
  ∀ n, P5771762025730799959.a n = A048762 n

end A048762

/-! ## A048762.P6967059629460625308

`comp[A048763(n)-1+n]-n`
-/

namespace A048762.P6967059629460625308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048763 n - 1 + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A048762.P6967059629460625308

namespace A048762

/-- `comp[A048763(n)-1+n]-n` -/
def P6967059629460625308.Spec : Prop :=
  ∀ n, P6967059629460625308.a n = A048762 n

end A048762

/-! ## A048762.P4755585681699982837

`A000093(A048766(n)²)`
-/

namespace A048762.P4755585681699982837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 (A048766 n ^ 2).toNat

end

end A048762.P4755585681699982837

namespace A048762

/-- `A000093(A048766(n)²)` -/
def P4755585681699982837.Spec : Prop :=
  ∀ n, P4755585681699982837.a n = A048762 n

end A048762

/-! ## A048762.P4449024348609855281

`A002821(A048766(n)²)`
-/

namespace A048762.P4449024348609855281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002821 (A048766 n ^ 2).toNat

end

end A048762.P4449024348609855281

namespace A048762

/-- `A002821(A048766(n)²)` -/
def P4449024348609855281.Spec : Prop :=
  ∀ n, P4449024348609855281.a n = A048762 n

end A048762

/-! ## A048762.P898880630912407963

`A166447(A048766(n)²)`
-/

namespace A048762.P898880630912407963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166447 (A048766 n ^ 2).toNat

end

end A048762.P898880630912407963

namespace A048762

/-- `A166447(A048766(n)²)` -/
def P898880630912407963.Spec : Prop :=
  ∀ n, P898880630912407963.a n = A048762 n

end A048762

/-! ## A048762.P5413468639128935914

`A185549(A048766(n)²)`
-/

namespace A048762.P5413468639128935914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185549 (A048766 n ^ 2).toNat

end

end A048762.P5413468639128935914

namespace A048762

/-- `A185549(A048766(n)²)` -/
def P5413468639128935914.Spec : Prop :=
  ∀ n, P5413468639128935914.a n = A048762 n

end A048762

/-! ## A048762.P1982773037107682949

`A008218(4*A048766(n))`
-/

namespace A048762.P1982773037107682949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008218 (4 * A048766 n).toNat

end

end A048762.P1982773037107682949

namespace A048762

/-- `A008218(4*A048766(n))` -/
def P1982773037107682949.Spec : Prop :=
  ∀ n, P1982773037107682949.a n = A048762 n

end A048762

/-! ## A048762.P1014981525602937125

`A000093((n-A064524(n))²)`
-/

namespace A048762.P1014981525602937125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 (((n : ℤ) - A064524 n) ^ 2).toNat

end

end A048762.P1014981525602937125

namespace A048762

/-- `A000093((n-A064524(n))²)` -/
def P1014981525602937125.Spec : Prop :=
  ∀ n, P1014981525602937125.a n = A048762 n

end A048762

/-! ## A048762.P3065477012821337919

`∑{d}[A048766(n)^3, A000010(#)]`
-/

namespace A048762.P3065477012821337919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A048762.P3065477012821337919

namespace A048762

/-- `∑{d}[A048766(n)^3, A000010(#)]` -/
def P3065477012821337919.Spec : Prop :=
  ∀ n, P3065477012821337919.a n = A048762 n

end A048762

/-! ## A048762.P4007356133393949289

`(n-A064524(n))²*A048766(n)`
-/

namespace A048762.P4007356133393949289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A064524 n) ^ 2 * A048766 n

end

end A048762.P4007356133393949289

namespace A048762

/-- `(n-A064524(n))²*A048766(n)` -/
def P4007356133393949289.Spec : Prop :=
  ∀ n, P4007356133393949289.a n = A048762 n

end A048762

/-! ## A048762.P12124000488843664450

`A000093(A000196(A100196(n))²)`
-/

namespace A048762.P12124000488843664450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 (A000196 (A100196 n).toNat ^ 2).toNat

end

end A048762.P12124000488843664450

namespace A048762

/-- `A000093(A000196(A100196(n))²)` -/
def P12124000488843664450.Spec : Prop :=
  ∀ n, P12124000488843664450.a n = A048762 n

end A048762

/-! ## A048762.P4751324905507855941

`A002821(A000196(A100196(n))²)`
-/

namespace A048762.P4751324905507855941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002821 (A000196 (A100196 n).toNat ^ 2).toNat

end

end A048762.P4751324905507855941

namespace A048762

/-- `A002821(A000196(A100196(n))²)` -/
def P4751324905507855941.Spec : Prop :=
  ∀ n, P4751324905507855941.a n = A048762 n

end A048762

/-! ## A048762.P11336593395095110886

`A000093(A048766(n)*A048766(n))`
-/

namespace A048762.P11336593395095110886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 (A048766 n * A048766 n).toNat

end

end A048762.P11336593395095110886

namespace A048762

/-- `A000093(A048766(n)*A048766(n))` -/
def P11336593395095110886.Spec : Prop :=
  ∀ n, P11336593395095110886.a n = A048762 n

end A048762

/-! ## A048762.P13882999447638718669

`A166447(A048766(n)*A048766(n))`
-/

namespace A048762.P13882999447638718669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166447 (A048766 n * A048766 n).toNat

end

end A048762.P13882999447638718669

namespace A048762

/-- `A166447(A048766(n)*A048766(n))` -/
def P13882999447638718669.Spec : Prop :=
  ∀ n, P13882999447638718669.a n = A048762 n

end A048762

/-! ## A048762.P12884299117633803905

`A048766(A028310(n))²*A048766(n)`
-/

namespace A048762.P12884299117633803905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A028310 n).toNat ^ 2 * A048766 n

end

end A048762.P12884299117633803905

namespace A048762

/-- `A048766(A028310(n))²*A048766(n)` -/
def P12884299117633803905.Spec : Prop :=
  ∀ n, P12884299117633803905.a n = A048762 n

end A048762

/-! ## A048762.P15043646033822991471

`A048760(A048766(n)²)*A048766(n)`
-/

namespace A048762.P15043646033822991471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048760 (A048766 n ^ 2).toNat * A048766 n

end

end A048762.P15043646033822991471

namespace A048762

/-- `A048760(A048766(n)²)*A048766(n)` -/
def P15043646033822991471.Spec : Prop :=
  ∀ n, P15043646033822991471.a n = A048762 n

end A048762

/-! ## A048762.P4115487717436667871

`A048766(n)²*A048766(A254667(n))`
-/

namespace A048762.P4115487717436667871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 n ^ 2 * A048766 (A254667 n).toNat

end

end A048762.P4115487717436667871

namespace A048762

/-- `A048766(n)²*A048766(A254667(n))` -/
def P4115487717436667871.Spec : Prop :=
  ∀ n, P4115487717436667871.a n = A048762 n

end A048762

/-!
# A048763: Smallest cube >= n.

The programs for A048763, the canonical program `A048763.P672452928353669014` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048763 has offset 0).

The definition of A048763 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A048763.P672452928353669014

`ceil(n^(1/3))^3`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048763

/-- `ceil(n^(1/3))^3` -/
def P672452928353669014.Spec : Prop :=
  ∀ n, P672452928353669014.a n = A048763 n

theorem P672452928353669014.correct : P672452928353669014.Spec := by
  intro n
  simp only [A048763]

end A048763

/-! ## A048763.P7754417220954481634

`A000578(∑[char[n^3+1]])`
-/

namespace A048763.P7754417220954481634
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A048763.P7754417220954481634

namespace A048763

/-- `A000578(∑[char[n^3+1]])` -/
def P7754417220954481634.Spec : Prop :=
  ∀ n, P7754417220954481634.a n = A048763 n

end A048763

/-! ## A048763.P15969836786521236762

`A077110(A295977(n))`
-/

namespace A048763.P15969836786521236762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077110 (A295977 n).toNat

end

end A048763.P15969836786521236762

namespace A048763

/-- `A077110(A295977(n))` -/
def P15969836786521236762.Spec : Prop :=
  ∀ n, P15969836786521236762.a n = A048763 n

end A048763

/-! ## A048763.P291966718689261269

`A201053(A295977(n)²)`
-/

namespace A048763.P291966718689261269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201053 (A295977 n ^ 2).toNat

end

end A048763.P291966718689261269

namespace A048763

/-- `A201053(A295977(n)²)` -/
def P291966718689261269.Spec : Prop :=
  ∀ n, P291966718689261269.a n = A048763 n

end A048763

/-! ## A048763.P6053573545350496181

`A048762(A093513(n+3)%A006349(n+1))`
-/

namespace A048763.P6053573545350496181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048762 (Int.tmod (A093513 (n + 3)) (A006349 (n + 1))).toNat

end

end A048763.P6053573545350496181

namespace A048763

/-- `A048762(A093513(n+3)%A006349(n+1))` -/
def P6053573545350496181.Spec : Prop :=
  ∀ n, P6053573545350496181.a n = A048763 n

end A048763

/-!
# A048764: Largest factorial <= n.

The programs for A048764, the canonical program `A048764.P13822497594214245123` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048764 has offset 1).

The definition of A048764 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A048764.P15945790578001158399

`∑[char[n!-1]]!`
-/

namespace A048764.P15945790578001158399
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A048764.P15945790578001158399

namespace A048764

/-- `∑[char[n!-1]]!` -/
def P15945790578001158399.Spec : Prop :=
  ∀ n, (P15945790578001158399.a n : ℤ) = A048764 (n + 1)

end A048764

/-! ## A048764.P13307993737237388129

`∑[char[∑[n*n!]]]!`
-/

namespace A048764.P13307993737237388129
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.factorial n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A048764.P13307993737237388129

namespace A048764

/-- `∑[char[∑[n*n!]]]!` -/
def P13307993737237388129.Spec : Prop :=
  ∀ n, (P13307993737237388129.a n : ℤ) = A048764 (n + 1)

end A048764

/-! ## A048764.P13822497594214245123

`lcm(floor((n+1)/a(n-1))!, a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048764

/-- `lcm(floor((n+1)/a(n-1))!, a(n-1))` -/
def P13822497594214245123.Spec : Prop :=
  ∀ n, (P13822497594214245123.a n : ℤ) = A048764 (n + 1)

theorem P13822497594214245123.correct : P13822497594214245123.Spec := by
  intro n
  simp only [A048764, Nat.add_sub_cancel]

end A048764

/-! ## A048764.P2443119299832329453

`A084558(n+1)!`
-/

namespace A048764.P2443119299832329453
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A084558 (n + 1)).toNat

end

end A048764.P2443119299832329453

namespace A048764

/-- `A084558(n+1)!` -/
def P2443119299832329453.Spec : Prop :=
  ∀ n, (P2443119299832329453.a n : ℤ) = A048764 (n + 1)

end A048764

/-! ## A048764.P16028184104709212052

`∑[char[A033312(n)]]!`
-/

namespace A048764.P16028184104709212052
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033312 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A048764.P16028184104709212052

namespace A048764

/-- `∑[char[A033312(n)]]!` -/
def P16028184104709212052.Spec : Prop :=
  ∀ n, (P16028184104709212052.a n : ℤ) = A048764 (n + 1)

end A048764

/-! ## A048764.P652466463914051703

`∑[A012245(n+1)]!`
-/

namespace A048764.P652466463914051703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012245 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A048764.P652466463914051703

namespace A048764

/-- `∑[A012245(n+1)]!` -/
def P652466463914051703.Spec : Prop :=
  ∀ n, (P652466463914051703.a n : ℤ) = A048764 (n + 1)

end A048764

/-! ## A048764.P3587697627272031630

`∑[A316341(n+1)]!`
-/

namespace A048764.P3587697627272031630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316341 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A048764.P3587697627272031630

namespace A048764

/-- `∑[A316341(n+1)]!` -/
def P3587697627272031630.Spec : Prop :=
  ∀ n, (P3587697627272031630.a n : ℤ) = A048764 (n + 1)

end A048764

/-! ## A048764.P1463914756995736423

`1-A212598(n+1)+n`
-/

namespace A048764.P1463914756995736423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A212598 (n + 1) + (n : ℤ)

end

end A048764.P1463914756995736423

namespace A048764

/-- `1-A212598(n+1)+n` -/
def P1463914756995736423.Spec : Prop :=
  ∀ n, P1463914756995736423.a n = A048764 (n + 1)

end A048764

/-! ## A048764.P15303887573426314108

`A000142(∑[char[A033312(n)]])`
-/

namespace A048764.P15303887573426314108
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033312 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A048764.P15303887573426314108

namespace A048764

/-- `A000142(∑[char[A033312(n)]])` -/
def P15303887573426314108.Spec : Prop :=
  ∀ n, P15303887573426314108.a n = A048764 (n + 1)

end A048764

/-! ## A048764.P13688818243406299827

`A000142(∑[A012245(n+1)])`
-/

namespace A048764.P13688818243406299827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012245 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A048764.P13688818243406299827

namespace A048764

/-- `A000142(∑[A012245(n+1)])` -/
def P13688818243406299827.Spec : Prop :=
  ∀ n, P13688818243406299827.a n = A048764 (n + 1)

end A048764

/-! ## A048764.P14416070500130855223

`A000142(∑[A316341(n+1)])`
-/

namespace A048764.P14416070500130855223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316341 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A048764.P14416070500130855223

namespace A048764

/-- `A000142(∑[A316341(n+1)])` -/
def P14416070500130855223.Spec : Prop :=
  ∀ n, P14416070500130855223.a n = A048764 (n + 1)

end A048764

/-! ## A048764.P13506070903991740731

`A033312(∑[char[A033312(n)]])+1`
-/

namespace A048764.P13506070903991740731
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033312 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033312 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A048764.P13506070903991740731

namespace A048764

/-- `A033312(∑[char[A033312(n)]])+1` -/
def P13506070903991740731.Spec : Prop :=
  ∀ n, P13506070903991740731.a n = A048764 (n + 1)

end A048764

/-! ## A048764.P9677574624539002033

`A000142(∑[char[A000142(n)-1]])`
-/

namespace A048764.P9677574624539002033
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A048764.P9677574624539002033

namespace A048764

/-- `A000142(∑[char[A000142(n)-1]])` -/
def P9677574624539002033.Spec : Prop :=
  ∀ n, P9677574624539002033.a n = A048764 (n + 1)

end A048764

/-! ## A048764.P16244873067261859711

`A033646(∑[char[A033646(n)-1]])`
-/

namespace A048764.P16244873067261859711
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033646 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033646 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A048764.P16244873067261859711

namespace A048764

/-- `A033646(∑[char[A033646(n)-1]])` -/
def P16244873067261859711.Spec : Prop :=
  ∀ n, P16244873067261859711.a n = A048764 (n + 1)

end A048764

/-! ## A048764.P851932973869296077

`A033647(∑[char[A033647(n)-1]])`
-/

namespace A048764.P851932973869296077
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033647 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033647 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A048764.P851932973869296077

namespace A048764

/-- `A033647(∑[char[A033647(n)-1]])` -/
def P851932973869296077.Spec : Prop :=
  ∀ n, P851932973869296077.a n = A048764 (n + 1)

end A048764

/-! ## A048764.P11385415983575263657

`A045977(∑[char[A045977(n)-1]])`
-/

namespace A048764.P11385415983575263657
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045977 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045977 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A048764.P11385415983575263657

namespace A048764

/-- `A045977(∑[char[A045977(n)-1]])` -/
def P11385415983575263657.Spec : Prop :=
  ∀ n, P11385415983575263657.a n = A048764 (n + 1)

end A048764

/-! ## A048764.P5260663994482859175

`A177280(∑[char[A177280(n)-1]])`
-/

namespace A048764.P5260663994482859175
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177280 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177280 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A048764.P5260663994482859175

namespace A048764

/-- `A177280(∑[char[A177280(n)-1]])` -/
def P5260663994482859175.Spec : Prop :=
  ∀ n, P5260663994482859175.a n = A048764 (n + 1)

end A048764

/-! ## A048764.P6056892212383610677

`A177281(∑[char[A177281(n)-1]])`
-/

namespace A048764.P6056892212383610677
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177281 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177281 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A048764.P6056892212383610677

namespace A048764

/-- `A177281(∑[char[A177281(n)-1]])` -/
def P6056892212383610677.Spec : Prop :=
  ∀ n, P6056892212383610677.a n = A048764 (n + 1)

end A048764

/-! ## A048764.P16639687453388142710

`A276843(∑[char[A276843(n)-1]])`
-/

namespace A048764.P16639687453388142710
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276843 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276843 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A048764.P16639687453388142710

namespace A048764

/-- `A276843(∑[char[A276843(n)-1]])` -/
def P16639687453388142710.Spec : Prop :=
  ∀ n, P16639687453388142710.a n = A048764 (n + 1)

end A048764

/-! ## A048764.P9690416359997926078

`A276008(n+1-A257687(n+1))`
-/

namespace A048764.P9690416359997926078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276008 ((n + 1 : ℤ) - A257687 (n + 1)).toNat

end

end A048764.P9690416359997926078

namespace A048764

/-- `A276008(n+1-A257687(n+1))` -/
def P9690416359997926078.Spec : Prop :=
  ∀ n, P9690416359997926078.a n = A048764 (n + 1)

end A048764

/-!
# A048765: Smallest factorial >= n.

The programs for A048765, the canonical program `A048765.P3171386167876683570` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048765 has offset 1).

The definition of A048765 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A048765.P15755520251518832195

`(∑[char[n!]]+1)!`
-/

namespace A048765.P15755520251518832195
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A048765.P15755520251518832195

namespace A048765

/-- `(∑[char[n!]]+1)!` -/
def P15755520251518832195.Spec : Prop :=
  ∀ n, (P15755520251518832195.a n : ℤ) = A048765 (n + 1)

end A048765

/-! ## A048765.P7207150677408162669

`∑[char[n!-char[1]]]!`
-/

namespace A048765.P7207150677408162669
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A048765.P7207150677408162669

namespace A048765

/-- `∑[char[n!-char[1]]]!` -/
def P7207150677408162669.Spec : Prop :=
  ∀ n, (P7207150677408162669.a n : ℤ) = A048765 (n + 1)

end A048765

/-! ## A048765.P2790694545458501692

`(comp[n!+n]-n)!`
-/

namespace A048765.P2790694545458501692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat

end

end A048765.P2790694545458501692

namespace A048765

/-- `(comp[n!+n]-n)!` -/
def P2790694545458501692.Spec : Prop :=
  ∀ n, (P2790694545458501692.a n : ℤ) = A048765 (n + 1)

end A048765

/-! ## A048765.P10790370950895915837

`(A084558(n)+1)!`
-/

namespace A048765.P10790370950895915837
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A084558 n + 1).toNat

end

end A048765.P10790370950895915837

namespace A048765

/-- `(A084558(n)+1)!` -/
def P10790370950895915837.Spec : Prop :=
  ∀ n, (P10790370950895915837.a n : ℤ) = A048765 (n + 1)

end A048765

/-! ## A048765.P7546690467698350453

`A090529(n+1)!`
-/

namespace A048765.P7546690467698350453
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A090529 (n + 1)).toNat

end

end A048765.P7546690467698350453

namespace A048765

/-- `A090529(n+1)!` -/
def P7546690467698350453.Spec : Prop :=
  ∀ n, (P7546690467698350453.a n : ℤ) = A048765 (n + 1)

end A048765

/-! ## A048765.P3171386167876683570

`A000142(∑[A316341(n)]+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A048765

/-- `A000142(∑[A316341(n)]+1)` -/
def P3171386167876683570.Spec : Prop :=
  ∀ n, P3171386167876683570.a n = A048765 (n + 1)

theorem P3171386167876683570.correct : P3171386167876683570.Spec := by
  intro n
  simp only [A048765, Nat.add_sub_cancel]

end A048765

/-! ## A048765.P17459479461537438622

`A000142(∑[char[A000142(n)]]+1)`
-/

namespace A048765.P17459479461537438622
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A048765.P17459479461537438622

namespace A048765

/-- `A000142(∑[char[A000142(n)]]+1)` -/
def P17459479461537438622.Spec : Prop :=
  ∀ n, P17459479461537438622.a n = A048765 (n + 1)

end A048765

/-! ## A048765.P17950948089689389457

`A033646(∑[char[A033646(n)]]+1)`
-/

namespace A048765.P17950948089689389457
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033646 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033646 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A048765.P17950948089689389457

namespace A048765

/-- `A033646(∑[char[A033646(n)]]+1)` -/
def P17950948089689389457.Spec : Prop :=
  ∀ n, P17950948089689389457.a n = A048765 (n + 1)

end A048765

/-! ## A048765.P17384362828923485976

`A033647(∑[char[A033647(n)]]+1)`
-/

namespace A048765.P17384362828923485976
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033647 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033647 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A048765.P17384362828923485976

namespace A048765

/-- `A033647(∑[char[A033647(n)]]+1)` -/
def P17384362828923485976.Spec : Prop :=
  ∀ n, P17384362828923485976.a n = A048765 (n + 1)

end A048765

/-! ## A048765.P3523948200739895799

`A104150(∑[char[A104150(n)]]+1)`
-/

namespace A048765.P3523948200739895799
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104150 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104150 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A048765.P3523948200739895799

namespace A048765

/-- `A104150(∑[char[A104150(n)]]+1)` -/
def P3523948200739895799.Spec : Prop :=
  ∀ n, P3523948200739895799.a n = A048765 (n + 1)

end A048765

/-! ## A048765.P17506450373370886385

`A177280(∑[char[A177280(n)]]+1)`
-/

namespace A048765.P17506450373370886385
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177280 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177280 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A048765.P17506450373370886385

namespace A048765

/-- `A177280(∑[char[A177280(n)]]+1)` -/
def P17506450373370886385.Spec : Prop :=
  ∀ n, P17506450373370886385.a n = A048765 (n + 1)

end A048765

/-! ## A048765.P15692106935089349637

`A177281(∑[char[A177281(n)]]+1)`
-/

namespace A048765.P15692106935089349637
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177281 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177281 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A048765.P15692106935089349637

namespace A048765

/-- `A177281(∑[char[A177281(n)]]+1)` -/
def P15692106935089349637.Spec : Prop :=
  ∀ n, P15692106935089349637.a n = A048765 (n + 1)

end A048765

/-! ## A048765.P10714616176257985472

`A276843(∑[char[A276843(n)]]+1)`
-/

namespace A048765.P10714616176257985472
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276843 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276843 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A048765.P10714616176257985472

namespace A048765

/-- `A276843(∑[char[A276843(n)]]+1)` -/
def P10714616176257985472.Spec : Prop :=
  ∀ n, P10714616176257985472.a n = A048765 (n + 1)

end A048765

/-! ## A048765.P461108650987275436

`Δ[A220657(n)]!`
-/

namespace A048765.P461108650987275436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220657 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (f1 (n + 1) - f1 n).toNat

end

end A048765.P461108650987275436

namespace A048765

/-- `Δ[A220657(n)]!` -/
def P461108650987275436.Spec : Prop :=
  ∀ n, (P461108650987275436.a n : ℤ) = A048765 (n + 1)

end A048765

/-! ## A048765.P14409131964815124132

`∑[char[n*char[n!]]]!`
-/

namespace A048765.P14409131964815124132
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f3 j = n then 1 else 0)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A048765.P14409131964815124132

namespace A048765

/-- `∑[char[n*char[n!]]]!` -/
def P14409131964815124132.Spec : Prop :=
  ∀ n, (P14409131964815124132.a n : ℤ) = A048765 (n + 1)

end A048765

/-! ## A048765.P1164666680901228048

`A001222(A278225(n))!`
-/

namespace A048765.P1164666680901228048
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A001222 (A278225 n).toNat).toNat

end

end A048765.P1164666680901228048

namespace A048765

/-- `A001222(A278225(n))!` -/
def P1164666680901228048.Spec : Prop :=
  ∀ n, (P1164666680901228048.a n : ℤ) = A048765 (n + 1)

end A048765

/-! ## A048765.P12442518543018132926

`A001222(A290096(n))!`
-/

namespace A048765.P12442518543018132926
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A001222 (A290096 n).toNat).toNat

end

end A048765.P12442518543018132926

namespace A048765

/-- `A001222(A290096(n))!` -/
def P12442518543018132926.Spec : Prop :=
  ∀ n, (P12442518543018132926.a n : ℤ) = A048765 (n + 1)

end A048765

/-! ## A048765.P1397472887921366117

`A048764(A225901(n)+1+n)`
-/

namespace A048765.P1397472887921366117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048764 (A225901 n + 1 + (n : ℤ)).toNat

end

end A048765.P1397472887921366117

namespace A048765

/-- `A048764(A225901(n)+1+n)` -/
def P1397472887921366117.Spec : Prop :=
  ∀ n, P1397472887921366117.a n = A048765 (n + 1)

end A048765

/-! ## A048765.P9454486956231744576

`A048764(A276149(n)+1+n)`
-/

namespace A048765.P9454486956231744576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048764 (A276149 n + 1 + (n : ℤ)).toNat

end

end A048765.P9454486956231744576

namespace A048765

/-- `A048764(A276149(n)+1+n)` -/
def P9454486956231744576.Spec : Prop :=
  ∀ n, P9454486956231744576.a n = A048765 (n + 1)

end A048765

/-! ## A048765.P7567895489012547494

`A257686(A225901(n)+n+1)`
-/

namespace A048765.P7567895489012547494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257686 (A225901 n + (n + 1 : ℤ)).toNat

end

end A048765.P7567895489012547494

namespace A048765

/-- `A257686(A225901(n)+n+1)` -/
def P7567895489012547494.Spec : Prop :=
  ∀ n, P7567895489012547494.a n = A048765 (n + 1)

end A048765

/-!
# A048766: Integer part of cube root of n. Or, number of cubes <= n. Or, n appears 3n^2 + 3n + 1 times.

The programs for A048766, the canonical program `A048766.P11393263195670548898` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048766 has offset 0).

The definition of A048766 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048766.P11393263195670548898

`floor(n^(1/3))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048766

/-- `floor(n^(1/3))` -/
def P11393263195670548898.Spec : Prop :=
  ∀ n, P11393263195670548898.a n = A048766 n

theorem P11393263195670548898.correct : P11393263195670548898.Spec := by
  intro n
  simp only [A048766]

end A048766

/-! ## A048766.P4772326482151226581

`∑[and(1, char[(n+1)^3])]`
-/

namespace A048766.P4772326482151226581
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048766.P4772326482151226581

namespace A048766

/-- `∑[and(1, char[(n+1)^3])]` -/
def P4772326482151226581.Spec : Prop :=
  ∀ n, (P4772326482151226581.a n : ℤ) = A048766 n

end A048766

/-! ## A048766.P16209298236642022834

`∑[char[C(n+1, n)^3]]`
-/

namespace A048766.P16209298236642022834
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) n ^ 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048766.P16209298236642022834

namespace A048766

/-- `∑[char[C(n+1, n)^3]]` -/
def P16209298236642022834.Spec : Prop :=
  ∀ n, (P16209298236642022834.a n : ℤ) = A048766 n

end A048766

/-! ## A048766.P15404058288828758667

`char[n^3]+a(n-1)` with `a(0)=0`
-/

namespace A048766.P15404058288828758667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (if ∃ j, f1 j = n then 1 else 0) + a (n - 1)

end

end A048766.P15404058288828758667

namespace A048766

/-- `char[n^3]+a(n-1)` -/
def P15404058288828758667.Spec : Prop :=
  ∀ n, (P15404058288828758667.a n : ℤ) = A048766 n

end A048766

/-! ## A048766.P18442229126459141850

`n-A064524(n)`
-/

namespace A048766.P18442229126459141850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A064524 n

end

end A048766.P18442229126459141850

namespace A048766

/-- `n-A064524(n)` -/
def P18442229126459141850.Spec : Prop :=
  ∀ n, P18442229126459141850.a n = A048766 n

end A048766

/-! ## A048766.P17506888547256733998

`∑[char[A133823(n)]]`
-/

namespace A048766.P17506888547256733998
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133823 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048766.P17506888547256733998

namespace A048766

/-- `∑[char[A133823(n)]]` -/
def P17506888547256733998.Spec : Prop :=
  ∀ n, (P17506888547256733998.a n : ℤ) = A048766 n

end A048766

/-! ## A048766.P3410035570351626579

`∑[char[A174127(n)]]`
-/

namespace A048766.P3410035570351626579
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174127 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048766.P3410035570351626579

namespace A048766

/-- `∑[char[A174127(n)]]` -/
def P3410035570351626579.Spec : Prop :=
  ∀ n, (P3410035570351626579.a n : ℤ) = A048766 n

end A048766

/-! ## A048766.P11180094870115431304

`∑[char[A181543(n)]]`
-/

namespace A048766.P11180094870115431304
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181543 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048766.P11180094870115431304

namespace A048766

/-- `∑[char[A181543(n)]]` -/
def P11180094870115431304.Spec : Prop :=
  ∀ n, (P11180094870115431304.a n : ℤ) = A048766 n

end A048766

/-! ## A048766.P6928667735906940915

`∑[A010057(n)]-1`
-/

namespace A048766.P6928667735906940915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A048766.P6928667735906940915

namespace A048766

/-- `∑[A010057(n)]-1` -/
def P6928667735906940915.Spec : Prop :=
  ∀ n, P6928667735906940915.a n = A048766 n

end A048766

/-! ## A048766.P12428427764705551637

`A134914(n+1)-1`
-/

namespace A048766.P12428427764705551637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134914 (n + 1) - 1

end

end A048766.P12428427764705551637

namespace A048766

/-- `A134914(n+1)-1` -/
def P12428427764705551637.Spec : Prop :=
  ∀ n, P12428427764705551637.a n = A048766 n

end A048766

/-! ## A048766.P25516487879890434

`ceil(sqrt(A077113(n)))-1`
-/

namespace A048766.P25516487879890434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A077113 n : ℝ)⌉ - 1

end

end A048766.P25516487879890434

namespace A048766

/-- `ceil(sqrt(A077113(n)))-1` -/
def P25516487879890434.Spec : Prop :=
  ∀ n, P25516487879890434.a n = A048766 n

end A048766

/-! ## A048766.P18361511880058331404

`∑[char[A000578(n+1)]]`
-/

namespace A048766.P18361511880058331404
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048766.P18361511880058331404

namespace A048766

/-- `∑[char[A000578(n+1)]]` -/
def P18361511880058331404.Spec : Prop :=
  ∀ n, (P18361511880058331404.a n : ℤ) = A048766 n

end A048766

/-! ## A048766.P11416137485158989363

`∑[char[A018797(n+1)]]`
-/

namespace A048766.P11416137485158989363
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018797 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048766.P11416137485158989363

namespace A048766

/-- `∑[char[A018797(n+1)]]` -/
def P11416137485158989363.Spec : Prop :=
  ∀ n, (P11416137485158989363.a n : ℤ) = A048766 n

end A048766

/-! ## A048766.P11865002542865560559

`∑[char[A048763(n+1)]]`
-/

namespace A048766.P11865002542865560559
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048763 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048766.P11865002542865560559

namespace A048766

/-- `∑[char[A048763(n+1)]]` -/
def P11865002542865560559.Spec : Prop :=
  ∀ n, (P11865002542865560559.a n : ℤ) = A048766 n

end A048766

/-! ## A048766.P7448087034958787787

`∑[char[A201053(n+1)]]`
-/

namespace A048766.P7448087034958787787
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201053 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048766.P7448087034958787787

namespace A048766

/-- `∑[char[A201053(n+1)]]` -/
def P7448087034958787787.Spec : Prop :=
  ∀ n, (P7448087034958787787.a n : ℤ) = A048766 n

end A048766

/-! ## A048766.P15589348726617076554

`∑[char[A000578(n)]]-1`
-/

namespace A048766.P15589348726617076554
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A048766.P15589348726617076554

namespace A048766

/-- `∑[char[A000578(n)]]-1` -/
def P15589348726617076554.Spec : Prop :=
  ∀ n, P15589348726617076554.a n = A048766 n

end A048766

/-! ## A048766.P7957626001826154610

`∑[char[A048762(n+1)]]`
-/

namespace A048766.P7957626001826154610
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048762 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048766.P7957626001826154610

namespace A048766

/-- `∑[char[A048762(n+1)]]` -/
def P7957626001826154610.Spec : Prop :=
  ∀ n, (P7957626001826154610.a n : ℤ) = A048766 n

end A048766

/-! ## A048766.P16205491665851200296

`∑[char[A008834(n+1)]]`
-/

namespace A048766.P16205491665851200296
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008834 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048766.P16205491665851200296

namespace A048766

/-- `∑[char[A008834(n+1)]]` -/
def P16205491665851200296.Spec : Prop :=
  ∀ n, (P16205491665851200296.a n : ℤ) = A048766 n

end A048766

/-!
# A048767: If n = Product (p_j^k_j) then a(n) = Product ( prime(k_j)^pi(p_j) ) where pi is A000720.

The programs for A048767, the canonical program `A048767.P3329741244280909927` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048767 has offset 1).

The definition of A048767 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2238 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A048767.P3329741244280909927

`a(A064989(n+1)-1)*A181819(n+1)` with `a(0)=1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A048767

/-- `a(A064989(n+1)-1)*A181819(n+1)` -/
def P3329741244280909927.Spec : Prop :=
  ∀ n, P3329741244280909927.a n = A048767 (n + 1)

theorem P3329741244280909927.correct : P3329741244280909927.Spec := by
  intro n
  simp only [A048767, Nat.add_sub_cancel]

end A048767

/-! ## A048767.P17486158368718566478

`A122111(A381431(n+1))`
-/

namespace A048767.P17486158368718566478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A381431 (n + 1)).toNat

end

end A048767.P17486158368718566478

namespace A048767

/-- `A122111(A381431(n+1))` -/
def P17486158368718566478.Spec : Prop :=
  ∀ n, P17486158368718566478.a n = A048767 (n + 1)

end A048767

/-! ## A048767.P18344352552459408754

`A033676(A181819(n+1)^A360457(n+1))`
-/

namespace A048767.P18344352552459408754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (SequenceMachineLib.roundAway ((A181819 (n + 1) : ℚ) ^ (A360457 (n + 1) : ℤ))).toNat

end

end A048767.P18344352552459408754

namespace A048767

/-- `A033676(A181819(n+1)^A360457(n+1))` -/
def P18344352552459408754.Spec : Prop :=
  ∀ n, P18344352552459408754.a n = A048767 (n + 1)

end A048767

/-! ## A048767.P4465818661883190536

`A122111(n+1)+A102483(A302034(n+1))`
-/

namespace A048767.P4465818661883190536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (n + 1) + A102483 (A302034 (n + 1)).toNat

end

end A048767.P4465818661883190536

namespace A048767

/-- `A122111(n+1)+A102483(A302034(n+1))` -/
def P4465818661883190536.Spec : Prop :=
  ∀ n, P4465818661883190536.a n = A048767 (n + 1)

end A048767

/-! ## A048767.P10932183382856539008

`A122111(n+1)+A102483(A302044(n+1))`
-/

namespace A048767.P10932183382856539008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (n + 1) + A102483 (A302044 (n + 1)).toNat

end

end A048767.P10932183382856539008

namespace A048767

/-- `A122111(n+1)+A102483(A302044(n+1))` -/
def P10932183382856539008.Spec : Prop :=
  ∀ n, P10932183382856539008.a n = A048767 (n + 1)

end A048767

/-!
# A048768: Numbers n such that A048767(n) = n.

The programs for A048768, there is no canonical definition to state claims against.
-/

/-! ## A048768.P5562403989999810617

`A109297(A061497(n+1))`
-/

namespace A048768.P5562403989999810617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109297 (A061497 (n + 1)).toNat

end

end A048768.P5562403989999810617

/-! ## A048768.P1913471806617123613

`A109297(A077741(n+1))`
-/

namespace A048768.P1913471806617123613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109297 (A077741 (n + 1)).toNat

end

end A048768.P1913471806617123613

/-! ## A048768.P10889786359567277207

`A109297(A004895(n+2))`
-/

namespace A048768.P10889786359567277207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109297 (A004895 (n + 2)).toNat

end

end A048768.P10889786359567277207

/-! ## A048768.P4062772715751863384

`A109297(A004906(n+2))`
-/

namespace A048768.P4062772715751863384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109297 (A004906 (n + 2)).toNat

end

end A048768.P4062772715751863384

/-! ## A048768.P8604122523469278195

`A109297(A004917(n+2))`
-/

namespace A048768.P8604122523469278195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109297 (A004917 (n + 2)).toNat

end

end A048768.P8604122523469278195

/-!
# A048769: Numbers n such that A048767(n+1)=A048767(n).

The programs for A048769, there is no canonical definition to state claims against.
-/

/-! ## A048769.P17622641382250307788

`∩[A007674(n+1), A215369(n+1)]`
-/

namespace A048769.P17622641382250307788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048769.P17622641382250307788

/-!
# A048770: Partial sums of A048694.

The programs for A048770, the canonical program `A048770.P2530451898033570753` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048770 has offset 0).

The definition of A048770 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048770.P2530451898033570753

`2*a(n-1)+a(n-2)+6` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048770

/-- `2*a(n-1)+a(n-2)+6` -/
def P2530451898033570753.Spec : Prop :=
  ∀ n, (P2530451898033570753.a n : ℤ) = A048770 n

theorem P2530451898033570753.correct : P2530451898033570753.Spec := by
  intro n
  simp only [A048770]

end A048770

/-! ## A048770.P18286662007512149849

`3*A000129(n)+4*A000129(n+1)-3`
-/

namespace A048770.P18286662007512149849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000129 n + 4 * A000129 (n + 1) - 3

end

end A048770.P18286662007512149849

namespace A048770

/-- `3*A000129(n)+4*A000129(n+1)-3` -/
def P18286662007512149849.Spec : Prop :=
  ∀ n, P18286662007512149849.a n = A048770 n

end A048770

/-! ## A048770.P6447428271800864119

`ogf((1+5x)/(1-3x+x^2+x^3))`
-/

namespace A048770.P6447428271800864119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5] [1, -3, 1, 1] n

end

end A048770.P6447428271800864119

namespace A048770

/-- `ogf((1+5x)/(1-3x+x^2+x^3))` -/
def P6447428271800864119.Spec : Prop :=
  ∀ n, P6447428271800864119.a n = A048770 n

end A048770

/-! ## A048770.P1359802419070601311

`∑[a(n-2)+2*a(n-1)]` with `a(0)=1, a(1)=7`
-/

namespace A048770.P1359802419070601311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n f1 =>
  f1 (n - 2) + 2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048770.P1359802419070601311

namespace A048770

/-- `∑[a(n-2)+2*a(n-1)]` -/
def P1359802419070601311.Spec : Prop :=
  ∀ n, (P1359802419070601311.a n : ℤ) = A048770 n

end A048770

/-! ## A048770.P16275290909213621804

`∑[a(n-2)+lcm(2, a(n-1))]` with `a(0)=1, a(1)=7`
-/

namespace A048770.P16275290909213621804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n f1 =>
  f1 (n - 2) + Nat.lcm 2 (f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048770.P16275290909213621804

namespace A048770

/-- `∑[a(n-2)+lcm(2, a(n-1))]` -/
def P16275290909213621804.Spec : Prop :=
  ∀ n, (P16275290909213621804.a n : ℤ) = A048770 n

end A048770

/-! ## A048770.P17377252563658420599

`∑[a(n-1)+a(n-1)+a(n-2)]` with `a(0)=1, a(1)=7`
-/

namespace A048770.P17377252563658420599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048770.P17377252563658420599

namespace A048770

/-- `∑[a(n-1)+a(n-1)+a(n-2)]` -/
def P17377252563658420599.Spec : Prop :=
  ∀ n, (P17377252563658420599.a n : ℤ) = A048770 n

end A048770

/-! ## A048770.P17466317549130295148

`a(n-1)+6+a(n-1)+a(n-2)` with `a(0)=1, a(1)=8`
-/

namespace A048770.P17466317549130295148
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n a =>
  a (n - 1) + 6 + (a (n - 1) + a (n - 2))

end

end A048770.P17466317549130295148

namespace A048770

/-- `a(n-1)+6+a(n-1)+a(n-2)` -/
def P17466317549130295148.Spec : Prop :=
  ∀ n, (P17466317549130295148.a n : ℤ) = A048770 n

theorem P17466317549130295148.correct : P17466317549130295148.Spec := by
  intro n
  simp only [A048770, Nat.add_sub_cancel, A048770.P17466317549130295148.a, A048770.P2530451898033570753.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A048770

/-! ## A048770.P2872990636203700547

`∑[A048694(n)]`
-/

namespace A048770.P2872990636203700547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048694 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048770.P2872990636203700547

namespace A048770

/-- `∑[A048694(n)]` -/
def P2872990636203700547.Spec : Prop :=
  ∀ n, P2872990636203700547.a n = A048770 n

end A048770

/-! ## A048770.P17471655864840599057

`A221172(n+2)-3`
-/

namespace A048770.P17471655864840599057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221172 (n + 2) - 3

end

end A048770.P17471655864840599057

namespace A048770

/-- `A221172(n+2)-3` -/
def P17471655864840599057.Spec : Prop :=
  ∀ n, P17471655864840599057.a n = A048770 n

end A048770

/-! ## A048770.P337452042267456496

`∑[A048693(n)+A000129(n)]`
-/

namespace A048770.P337452042267456496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048693 n + A000129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048770.P337452042267456496

namespace A048770

/-- `∑[A048693(n)+A000129(n)]` -/
def P337452042267456496.Spec : Prop :=
  ∀ n, P337452042267456496.a n = A048770 n

end A048770

/-! ## A048770.P13302859619364941820

`∑[A078057(n)+Δ[A002203(n)]]`
-/

namespace A048770.P13302859619364941820
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078057 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048770.P13302859619364941820

namespace A048770

/-- `∑[A078057(n)+Δ[A002203(n)]]` -/
def P13302859619364941820.Spec : Prop :=
  ∀ n, P13302859619364941820.a n = A048770 n

end A048770

/-! ## A048770.P5090978962419997115

`∑[A221172(n+1)+A221172(n)]`
-/

namespace A048770.P5090978962419997115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221172 (n + 1) + A221172 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048770.P5090978962419997115

namespace A048770

/-- `∑[A221172(n+1)+A221172(n)]` -/
def P5090978962419997115.Spec : Prop :=
  ∀ n, P5090978962419997115.a n = A048770 n

end A048770

/-! ## A048770.P17067708560880273144

`∑[A048655(n)+2*A000129(n)]`
-/

namespace A048770.P17067708560880273144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048655 n + 2 * A000129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048770.P17067708560880273144

namespace A048770

/-- `∑[A048655(n)+2*A000129(n)]` -/
def P17067708560880273144.Spec : Prop :=
  ∀ n, P17067708560880273144.a n = A048770 n

end A048770

/-! ## A048770.P12888214258407085169

`∑[A048696(n)-2*A000129(n)]`
-/

namespace A048770.P12888214258407085169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048696 n - 2 * A000129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048770.P12888214258407085169

namespace A048770

/-- `∑[A048696(n)-2*A000129(n)]` -/
def P12888214258407085169.Spec : Prop :=
  ∀ n, P12888214258407085169.a n = A048770 n

end A048770

/-! ## A048770.P9147064147347240605

`A048772(n)-∑[2*A000129(n)]`
-/

namespace A048770.P9147064147347240605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048772 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048770.P9147064147347240605

namespace A048770

/-- `A048772(n)-∑[2*A000129(n)]` -/
def P9147064147347240605.Spec : Prop :=
  ∀ n, P9147064147347240605.a n = A048770 n

end A048770

/-! ## A048770.P6809804019818469504

`∑[2*A048654(n)-A001333(n)]`
-/

namespace A048770.P6809804019818469504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048654 n - A001333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048770.P6809804019818469504

namespace A048770

/-- `∑[2*A048654(n)-A001333(n)]` -/
def P6809804019818469504.Spec : Prop :=
  ∀ n, P6809804019818469504.a n = A048770 n

end A048770

/-! ## A048770.P7108521097493170034

`A001333(n+1)+A174192(n+1)-2`
-/

namespace A048770.P7108521097493170034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (n + 1) + (A174192 (n + 1) - 2)

end

end A048770.P7108521097493170034

namespace A048770

/-- `A001333(n+1)+A174192(n+1)-2` -/
def P7108521097493170034.Spec : Prop :=
  ∀ n, P7108521097493170034.a n = A048770 n

end A048770

/-! ## A048770.P2266361210678844197

`A002203(n+1)+A005409(n+2)-2`
-/

namespace A048770.P2266361210678844197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 (n + 1) + (A005409 (n + 2) - 2)

end

end A048770.P2266361210678844197

namespace A048770

/-- `A002203(n+1)+A005409(n+2)-2` -/
def P2266361210678844197.Spec : Prop :=
  ∀ n, P2266361210678844197.a n = A048770 n

end A048770

/-! ## A048770.P13110553853661142482

`2*A174192(n+1)-A052937(n+1)`
-/

namespace A048770.P13110553853661142482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A174192 (n + 1) - A052937 (n + 1)

end

end A048770.P13110553853661142482

namespace A048770

/-- `2*A174192(n+1)-A052937(n+1)` -/
def P13110553853661142482.Spec : Prop :=
  ∀ n, P13110553853661142482.a n = A048770 n

end A048770

/-! ## A048770.P16945395232964869700

`A098894(2*(n+1))+A002965(2*n)-1`
-/

namespace A048770.P16945395232964869700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098894 (2 * (n + 1)) + (A002965 (2 * n) - 1)

end

end A048770.P16945395232964869700

namespace A048770

/-- `A098894(2*(n+1))+A002965(2*n)-1` -/
def P16945395232964869700.Spec : Prop :=
  ∀ n, P16945395232964869700.a n = A048770 n

end A048770

/-!
# A048771: Partial sums of A048695.

The programs for A048771, the canonical program `A048771.P14185889891628416090` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048771 has offset 0).

The definition of A048771 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048771.P14185889891628416090

`3*a(n-1)-a(n-2)-a(n-3)` with `a(0)=1, a(1)=9, a(2)=26`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048771

/-- `3*a(n-1)-a(n-2)-a(n-3)` -/
def P14185889891628416090.Spec : Prop :=
  ∀ n, P14185889891628416090.a n = A048771 n

theorem P14185889891628416090.correct : P14185889891628416090.Spec := by
  intro n
  simp only [A048771]

end A048771

/-! ## A048771.P4237346683293732953

`ogf((1+6x)/(1-3x+x^2+x^3))`
-/

namespace A048771.P4237346683293732953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6] [1, -3, 1, 1] n

end

end A048771.P4237346683293732953

namespace A048771

/-- `ogf((1+6x)/(1-3x+x^2+x^3))` -/
def P4237346683293732953.Spec : Prop :=
  ∀ n, P4237346683293732953.a n = A048771 n

end A048771

/-! ## A048771.P5373029605257516807

`∑[a(n-2)+2*a(n-1)]` with `a(0)=1, a(1)=8`
-/

namespace A048771.P5373029605257516807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n f1 =>
  f1 (n - 2) + 2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048771.P5373029605257516807

namespace A048771

/-- `∑[a(n-2)+2*a(n-1)]` -/
def P5373029605257516807.Spec : Prop :=
  ∀ n, (P5373029605257516807.a n : ℤ) = A048771 n

end A048771

/-! ## A048771.P6181903788113952450

`2*a(n-1)+a(n-2)+7` with `a(0)=1, a(1)=9`
-/

namespace A048771.P6181903788113952450
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 9] fun n a =>
  2 * a (n - 1) + (a (n - 2) + 7)

end

end A048771.P6181903788113952450

namespace A048771

/-- `2*a(n-1)+a(n-2)+7` -/
def P6181903788113952450.Spec : Prop :=
  ∀ n, (P6181903788113952450.a n : ℤ) = A048771 n

end A048771

/-! ## A048771.P3953569760016723939

`∑[∑[a(n-2)+lcm(2, a(n-1))]]` with `a(0)=1, a(1)=7, a(2)=9`
-/

namespace A048771.P3953569760016723939
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 7, 9] fun n f2 =>
  f2 (n - 2) + Nat.lcm 2 (f2 (n - 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048771.P3953569760016723939

namespace A048771

/-- `∑[∑[a(n-2)+lcm(2, a(n-1))]]` -/
def P3953569760016723939.Spec : Prop :=
  ∀ n, (P3953569760016723939.a n : ℤ) = A048771 n

end A048771

/-! ## A048771.P16709877557044964647

`∑[a(n-1)+a(n-1)+a(n-2)]` with `a(0)=1, a(1)=8`
-/

namespace A048771.P16709877557044964647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048771.P16709877557044964647

namespace A048771

/-- `∑[a(n-1)+a(n-1)+a(n-2)]` -/
def P16709877557044964647.Spec : Prop :=
  ∀ n, (P16709877557044964647.a n : ℤ) = A048771 n

end A048771

/-! ## A048771.P12721418703897026889

`a(n-1)+7+a(n-1)+a(n-2)` with `a(0)=1, a(1)=9`
-/

namespace A048771.P12721418703897026889
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 9] fun n a =>
  a (n - 1) + 7 + (a (n - 1) + a (n - 2))

end

end A048771.P12721418703897026889

namespace A048771

/-- `a(n-1)+7+a(n-1)+a(n-2)` -/
def P12721418703897026889.Spec : Prop :=
  ∀ n, (P12721418703897026889.a n : ℤ) = A048771 n

end A048771

/-! ## A048771.P4760904294163779729

`∑[A048695(n)]`
-/

namespace A048771.P4760904294163779729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048771.P4760904294163779729

namespace A048771

/-- `∑[A048695(n)]` -/
def P4760904294163779729.Spec : Prop :=
  ∀ n, P4760904294163779729.a n = A048771 n

end A048771

/-! ## A048771.P8560628415742503355

`∑[A048696(n)-A000129(n)]`
-/

namespace A048771.P8560628415742503355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048696 n - A000129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048771.P8560628415742503355

namespace A048771

/-- `∑[A048696(n)-A000129(n)]` -/
def P8560628415742503355.Spec : Prop :=
  ∀ n, P8560628415742503355.a n = A048771 n

end A048771

/-! ## A048771.P5170888216418572761

`A048772(n)-∑[A000129(n)]`
-/

namespace A048771.P5170888216418572761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048772 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048771.P5170888216418572761

namespace A048771

/-- `A048772(n)-∑[A000129(n)]` -/
def P5170888216418572761.Spec : Prop :=
  ∀ n, P5170888216418572761.a n = A048771 n

end A048771

/-! ## A048771.P8242266432775088103

`∑[A048654(n)+Δ[A002203(n)]]`
-/

namespace A048771.P8242266432775088103
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048654 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048771.P8242266432775088103

namespace A048771

/-- `∑[A048654(n)+Δ[A002203(n)]]` -/
def P8242266432775088103.Spec : Prop :=
  ∀ n, P8242266432775088103.a n = A048771 n

end A048771

/-! ## A048771.P5602139148980469677

`∑[A048693(n)+2*A000129(n)]`
-/

namespace A048771.P5602139148980469677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048693 n + 2 * A000129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048771.P5602139148980469677

namespace A048771

/-- `∑[A048693(n)+2*A000129(n)]` -/
def P5602139148980469677.Spec : Prop :=
  ∀ n, P5602139148980469677.a n = A048771 n

end A048771

/-! ## A048771.P18369159312571250863

`∑[A048697(n)-2*A000129(n)]`
-/

namespace A048771.P18369159312571250863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048697 n - 2 * A000129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048771.P18369159312571250863

namespace A048771

/-- `∑[A048697(n)-2*A000129(n)]` -/
def P18369159312571250863.Spec : Prop :=
  ∀ n, P18369159312571250863.a n = A048771 n

end A048771

/-! ## A048771.P1172604739331524688

`∑[A048654(n)+A048655(n)-A001333(n)]`
-/

namespace A048771.P1172604739331524688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048654 n + (A048655 n - A001333 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048771.P1172604739331524688

namespace A048771

/-- `∑[A048654(n)+A048655(n)-A001333(n)]` -/
def P1172604739331524688.Spec : Prop :=
  ∀ n, P1172604739331524688.a n = A048771 n

end A048771

/-! ## A048771.P18015099201589133263

`A000129(n+1)+A048772(n)-A048739(n)`
-/

namespace A048771.P18015099201589133263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) + (A048772 n - A048739 n)

end

end A048771.P18015099201589133263

namespace A048771

/-- `A000129(n+1)+A048772(n)-A048739(n)` -/
def P18015099201589133263.Spec : Prop :=
  ∀ n, P18015099201589133263.a n = A048771 n

end A048771

/-! ## A048771.P17249300345466033353

`A001333(n+1)+A048773(n)-A100227(n+1)`
-/

namespace A048771.P17249300345466033353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (n + 1) + (A048773 n - A100227 (n + 1))

end

end A048771.P17249300345466033353

namespace A048771

/-- `A001333(n+1)+A048773(n)-A100227(n+1)` -/
def P17249300345466033353.Spec : Prop :=
  ∀ n, P17249300345466033353.a n = A048771 n

end A048771

/-! ## A048771.P4936627721181492746

`(A048772(n)+A048770(n))/2`
-/

namespace A048771.P4936627721181492746
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048772 n + A048770 n : ℚ) / 2

end

end A048771.P4936627721181492746

namespace A048771

/-- `(A048772(n)+A048770(n))/2` -/
def P4936627721181492746.Spec : Prop :=
  ∀ n, P4936627721181492746.a n = (A048771 n : ℚ)

end A048771

/-! ## A048771.P359862553493063979

`A051959(n+1)-(A051959(n)+A048695(n+1))`
-/

namespace A048771.P359862553493063979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051959 (n + 1) - (A051959 n + A048695 (n + 1))

end

end A048771.P359862553493063979

namespace A048771

/-- `A051959(n+1)-(A051959(n)+A048695(n+1))` -/
def P359862553493063979.Spec : Prop :=
  ∀ n, P359862553493063979.a n = A048771 n

end A048771

/-!
# A048772: Partial sums of A048696.

The programs for A048772, the canonical program `A048772.P11156229129801561525` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048772 has offset 0).

The definition of A048772 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048772.P11156229129801561525

`2*a(n-1)+a(n-2)+8` with `a(0)=1, a(1)=10`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048772

/-- `2*a(n-1)+a(n-2)+8` -/
def P11156229129801561525.Spec : Prop :=
  ∀ n, (P11156229129801561525.a n : ℤ) = A048772 n

theorem P11156229129801561525.correct : P11156229129801561525.Spec := by
  intro n
  simp only [A048772]

end A048772

/-! ## A048772.P11755091037302638765

`ogf((1+7x)/(1-3x+x^2+x^3))`
-/

namespace A048772.P11755091037302638765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 7] [1, -3, 1, 1] n

end

end A048772.P11755091037302638765

namespace A048772

/-- `ogf((1+7x)/(1-3x+x^2+x^3))` -/
def P11755091037302638765.Spec : Prop :=
  ∀ n, P11755091037302638765.a n = A048772 n

end A048772

/-! ## A048772.P13645354115276519979

`∑[a(n-2)+2*a(n-1)]` with `a(0)=1, a(1)=9`
-/

namespace A048772.P13645354115276519979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 9] fun n f1 =>
  f1 (n - 2) + 2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048772.P13645354115276519979

namespace A048772

/-- `∑[a(n-2)+2*a(n-1)]` -/
def P13645354115276519979.Spec : Prop :=
  ∀ n, (P13645354115276519979.a n : ℤ) = A048772 n

end A048772

/-! ## A048772.P12730136107935414150

`∑[a(n-1)+a(n-1)+a(n-2)]` with `a(0)=1, a(1)=9`
-/

namespace A048772.P12730136107935414150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 9] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048772.P12730136107935414150

namespace A048772

/-- `∑[a(n-1)+a(n-1)+a(n-2)]` -/
def P12730136107935414150.Spec : Prop :=
  ∀ n, (P12730136107935414150.a n : ℤ) = A048772 n

end A048772

/-! ## A048772.P15929974081080675176

`∑[A048696(n)]`
-/

namespace A048772.P15929974081080675176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048696 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048772.P15929974081080675176

namespace A048772

/-- `∑[A048696(n)]` -/
def P15929974081080675176.Spec : Prop :=
  ∀ n, P15929974081080675176.a n = A048772 n

end A048772

/-! ## A048772.P1686891203611900033

`A105082(n)-4`
-/

namespace A048772.P1686891203611900033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105082 n - 4

end

end A048772.P1686891203611900033

namespace A048772

/-- `A105082(n)-4` -/
def P1686891203611900033.Spec : Prop :=
  ∀ n, P1686891203611900033.a n = A048772 n

end A048772

/-! ## A048772.P10936989032939865825

`A221173(n+2)-4`
-/

namespace A048772.P10936989032939865825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221173 (n + 2) - 4

end

end A048772.P10936989032939865825

namespace A048772

/-- `A221173(n+2)-4` -/
def P10936989032939865825.Spec : Prop :=
  ∀ n, P10936989032939865825.a n = A048772 n

end A048772

/-! ## A048772.P16505805270527668394

`∑[abs(Δ[A221173(n+1)])]`
-/

namespace A048772.P16505805270527668394
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221173 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048772.P16505805270527668394

namespace A048772

/-- `∑[abs(Δ[A221173(n+1)])]` -/
def P16505805270527668394.Spec : Prop :=
  ∀ n, P16505805270527668394.a n = A048772 n

end A048772

/-! ## A048772.P11816684531159233183

`∑[A048697(n)-A000129(n)]`
-/

namespace A048772.P11816684531159233183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048697 n - A000129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048772.P11816684531159233183

namespace A048772

/-- `∑[A048697(n)-A000129(n)]` -/
def P11816684531159233183.Spec : Prop :=
  ∀ n, P11816684531159233183.a n = A048772 n

end A048772

/-! ## A048772.P2726464941341671580

`∑[A221173(n+1)+A221173(n)]`
-/

namespace A048772.P2726464941341671580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221173 (n + 1) + A221173 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048772.P2726464941341671580

namespace A048772

/-- `∑[A221173(n+1)+A221173(n)]` -/
def P2726464941341671580.Spec : Prop :=
  ∀ n, P2726464941341671580.a n = A048772 n

end A048772

/-! ## A048772.P1721680667047296387

`∑[2*A048655(n)-A001333(n)]`
-/

namespace A048772.P1721680667047296387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048655 n - A001333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048772.P1721680667047296387

namespace A048772

/-- `∑[2*A048655(n)-A001333(n)]` -/
def P1721680667047296387.Spec : Prop :=
  ∀ n, P1721680667047296387.a n = A048772 n

end A048772

/-! ## A048772.P14228472934346861638

`∑[A266505(2*n)+A099425(n+1)]`
-/

namespace A048772.P14228472934346861638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266505 (2 * n) + A099425 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048772.P14228472934346861638

namespace A048772

/-- `∑[A266505(2*n)+A099425(n+1)]` -/
def P14228472934346861638.Spec : Prop :=
  ∀ n, P14228472934346861638.a n = A048772 n

end A048772

/-! ## A048772.P14409866407588270640

`A048771(n)+A048771(n)-A048770(n)`
-/

namespace A048772.P14409866407588270640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048771 n + (A048771 n - A048770 n)

end

end A048772.P14409866407588270640

namespace A048772

/-- `A048771(n)+A048771(n)-A048770(n)` -/
def P14409866407588270640.Spec : Prop :=
  ∀ n, P14409866407588270640.a n = A048772 n

end A048772

/-! ## A048772.P11122338644209701708

`A048746(n)+A048746(n)-A000129(n+1)`
-/

namespace A048772.P11122338644209701708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048746 n + (A048746 n - A000129 (n + 1))

end

end A048772.P11122338644209701708

namespace A048772

/-- `A048746(n)+A048746(n)-A000129(n+1)` -/
def P11122338644209701708.Spec : Prop :=
  ∀ n, P11122338644209701708.a n = A048772 n

end A048772

/-! ## A048772.P4702469979854170689

`A000129(n+1)+A048773(n)-A048739(n)`
-/

namespace A048772.P4702469979854170689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) + (A048773 n - A048739 n)

end

end A048772.P4702469979854170689

namespace A048772

/-- `A000129(n+1)+A048773(n)-A048739(n)` -/
def P4702469979854170689.Spec : Prop :=
  ∀ n, P4702469979854170689.a n = A048772 n

end A048772

/-! ## A048772.P10199344331128228968

`A048739(n)+A048771(n)-A000129(n+1)`
-/

namespace A048772.P10199344331128228968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048739 n + (A048771 n - A000129 (n + 1))

end

end A048772.P10199344331128228968

namespace A048772

/-- `A048739(n)+A048771(n)-A000129(n+1)` -/
def P10199344331128228968.Spec : Prop :=
  ∀ n, P10199344331128228968.a n = A048772 n

end A048772

/-! ## A048772.P1936591789566173288

`2*A048771(n)-A048770(n)`
-/

namespace A048772.P1936591789566173288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048771 n - A048770 n

end

end A048772.P1936591789566173288

namespace A048772

/-- `2*A048771(n)-A048770(n)` -/
def P1936591789566173288.Spec : Prop :=
  ∀ n, P1936591789566173288.a n = A048772 n

end A048772

/-! ## A048772.P14948526599972673121

`A048773(n+1)-(A048739(n)+A048696(n+1))`
-/

namespace A048772.P14948526599972673121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048773 (n + 1) - (A048739 n + A048696 (n + 1))

end

end A048772.P14948526599972673121

namespace A048772

/-- `A048773(n+1)-(A048739(n)+A048696(n+1))` -/
def P14948526599972673121.Spec : Prop :=
  ∀ n, P14948526599972673121.a n = A048772 n

end A048772

/-!
# A048773: Partial sums of A048697.

The programs for A048773, the canonical program `A048773.P259006406744923686` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048773 has offset 0).

The definition of A048773 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048773.P259006406744923686

`2*a(n-1)+a(n-2)+9` with `a(0)=1, a(1)=11`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048773

/-- `2*a(n-1)+a(n-2)+9` -/
def P259006406744923686.Spec : Prop :=
  ∀ n, (P259006406744923686.a n : ℤ) = A048773 n

theorem P259006406744923686.correct : P259006406744923686.Spec := by
  intro n
  simp only [A048773]

end A048773

/-! ## A048773.P2787978866947338649

`ogf((1+8x)/(1-3x+x^2+x^3))`
-/

namespace A048773.P2787978866947338649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 8] [1, -3, 1, 1] n

end

end A048773.P2787978866947338649

namespace A048773

/-- `ogf((1+8x)/(1-3x+x^2+x^3))` -/
def P2787978866947338649.Spec : Prop :=
  ∀ n, P2787978866947338649.a n = A048773 n

end A048773

/-! ## A048773.P7128735689559987871

`∑[a(n-2)+2*a(n-1)]` with `a(0)=1, a(1)=10`
-/

namespace A048773.P7128735689559987871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 10] fun n f1 =>
  f1 (n - 2) + 2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048773.P7128735689559987871

namespace A048773

/-- `∑[a(n-2)+2*a(n-1)]` -/
def P7128735689559987871.Spec : Prop :=
  ∀ n, (P7128735689559987871.a n : ℤ) = A048773 n

end A048773

/-! ## A048773.P4241058334776238559

`∑[a(n-1)+a(n-1)+a(n-2)]` with `a(0)=1, a(1)=10`
-/

namespace A048773.P4241058334776238559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 10] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048773.P4241058334776238559

namespace A048773

/-- `∑[a(n-1)+a(n-1)+a(n-2)]` -/
def P4241058334776238559.Spec : Prop :=
  ∀ n, (P4241058334776238559.a n : ℤ) = A048773 n

end A048773

/-! ## A048773.P9160972152424457244

`∑[A048697(n)]`
-/

namespace A048773.P9160972152424457244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048697 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048773.P9160972152424457244

namespace A048773

/-- `∑[A048697(n)]` -/
def P9160972152424457244.Spec : Prop :=
  ∀ n, P9160972152424457244.a n = A048773 n

end A048773

/-! ## A048773.P18294026158071610292

`∑[A048696(n)+A000129(n)]`
-/

namespace A048773.P18294026158071610292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048696 n + A000129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048773.P18294026158071610292

namespace A048773

/-- `∑[A048696(n)+A000129(n)]` -/
def P18294026158071610292.Spec : Prop :=
  ∀ n, P18294026158071610292.a n = A048773 n

end A048773

/-! ## A048773.P12443075255071785457

`A048772(n)+∑[A000129(n)]`
-/

namespace A048773.P12443075255071785457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048772 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048773.P12443075255071785457

namespace A048773

/-- `A048772(n)+∑[A000129(n)]` -/
def P12443075255071785457.Spec : Prop :=
  ∀ n, P12443075255071785457.a n = A048773 n

end A048773

/-! ## A048773.P6536006232283613726

`A048755(n)+A048755(n)-A048739(n)`
-/

namespace A048773.P6536006232283613726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048755 n + (A048755 n - A048739 n)

end

end A048773.P6536006232283613726

namespace A048773

/-- `A048755(n)+A048755(n)-A048739(n)` -/
def P6536006232283613726.Spec : Prop :=
  ∀ n, P6536006232283613726.a n = A048773 n

end A048773

/-! ## A048773.P5700653049844165676

`A048770(n)+A048770(n)-A048745(n)`
-/

namespace A048773.P5700653049844165676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048770 n + (A048770 n - A048745 n)

end

end A048773.P5700653049844165676

namespace A048773

/-- `A048770(n)+A048770(n)-A048745(n)` -/
def P5700653049844165676.Spec : Prop :=
  ∀ n, P5700653049844165676.a n = A048773 n

end A048773

/-! ## A048773.P1639992054742664499

`A048771(n)+A048772(n)-A048770(n)`
-/

namespace A048773.P1639992054742664499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048771 n + (A048772 n - A048770 n)

end

end A048773.P1639992054742664499

namespace A048773

/-- `A048771(n)+A048772(n)-A048770(n)` -/
def P1639992054742664499.Spec : Prop :=
  ∀ n, P1639992054742664499.a n = A048773 n

end A048773

/-! ## A048773.P15443769244648609990

`A048739(n)+A048772(n)-A000129(n+1)`
-/

namespace A048773.P15443769244648609990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048739 n + (A048772 n - A000129 (n + 1))

end

end A048773.P15443769244648609990

namespace A048773

/-- `A048739(n)+A048772(n)-A000129(n+1)` -/
def P15443769244648609990.Spec : Prop :=
  ∀ n, P15443769244648609990.a n = A048773 n

end A048773

/-! ## A048773.P12131158811078152420

`2*A048755(n)-A048739(n)`
-/

namespace A048773.P12131158811078152420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048755 n - A048739 n

end

end A048773.P12131158811078152420

namespace A048773

/-- `2*A048755(n)-A048739(n)` -/
def P12131158811078152420.Spec : Prop :=
  ∀ n, P12131158811078152420.a n = A048773 n

end A048773

/-! ## A048773.P9699336107809470744

`2*A048770(n)-A048745(n)`
-/

namespace A048773.P9699336107809470744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048770 n - A048745 n

end

end A048773.P9699336107809470744

namespace A048773

/-- `2*A048770(n)-A048745(n)` -/
def P9699336107809470744.Spec : Prop :=
  ∀ n, P9699336107809470744.a n = A048773 n

end A048773

/-! ## A048773.P4894079741712916319

`2*A048772(n)-A048771(n)`
-/

namespace A048773.P4894079741712916319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048772 n - A048771 n

end

end A048773.P4894079741712916319

namespace A048773

/-- `2*A048772(n)-A048771(n)` -/
def P4894079741712916319.Spec : Prop :=
  ∀ n, P4894079741712916319.a n = A048773 n

end A048773

/-!
# A048774: Numerators of coefficients in a formula for the n-th composite number.

The programs for A048774, there is no canonical definition to state claims against.
-/

/-! ## A048774.P7543553316935612401

`ogf((1-12x)/(1-13x+11x^2+11x^3))`
-/

namespace A048774.P7543553316935612401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -12] [1, -13, 11, 11] n

end

end A048774.P7543553316935612401

/-!
# A048775: Number of (partially defined) monotone maps from intervals of 1..n to 1..n.

The programs for A048775, the canonical program `A048775.P7735171850741508940` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048775 has offset 1).

The definition of A048775 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048775.P17784153225171814758

`A001700(n+1)-(n+1)-1`
-/

namespace A048775.P17784153225171814758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 (n + 1) - (n + 1 : ℤ) - 1

end

end A048775.P17784153225171814758

namespace A048775

/-- `A001700(n+1)-(n+1)-1` -/
def P17784153225171814758.Spec : Prop :=
  ∀ n, P17784153225171814758.a n = A048775 (n + 1)

end A048775

/-! ## A048775.P7735171850741508940

`C(2*(n+1)+1, n+2)-(n+2)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048775

/-- `C(2*(n+1)+1, n+2)-(n+2)` -/
def P7735171850741508940.Spec : Prop :=
  ∀ n, P7735171850741508940.a n = A048775 (n + 1)

theorem P7735171850741508940.correct : P7735171850741508940.Spec := by
  intro n
  simp only [A048775, Nat.add_sub_cancel]

end A048775

/-! ## A048775.P13864664939527217894

`∏[4-2/(n+2)]-(n+2)`
-/

namespace A048775.P13864664939527217894
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - (n + 2 : ℚ)

end

end A048775.P13864664939527217894

namespace A048775

/-- `∏[4-2/(n+2)]-(n+2)` -/
def P13864664939527217894.Spec : Prop :=
  ∀ n, P13864664939527217894.a n = (A048775 (n + 1) : ℚ)

end A048775

/-! ## A048775.P2405298798838853229

`record[A088218(n)-n]`
-/

namespace A048775.P2405298798838853229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048775.P2405298798838853229

namespace A048775

/-- `record[A088218(n)-n]` -/
def P2405298798838853229.Spec : Prop :=
  ∀ n, P2405298798838853229.a n = A048775 (n + 1)

end A048775

/-! ## A048775.P6539708986255429904

`A144657(n+1)/2`
-/

namespace A048775.P6539708986255429904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144657 (n + 1) : ℚ) / 2

end

end A048775.P6539708986255429904

namespace A048775

/-- `A144657(n+1)/2` -/
def P6539708986255429904.Spec : Prop :=
  ∀ n, P6539708986255429904.a n = (A048775 (n + 1) : ℚ)

end A048775

/-! ## A048775.P1568546057410852545

`A194124(Δ[n²])/2`
-/

namespace A048775.P1568546057410852545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194124 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A048775.P1568546057410852545

namespace A048775

/-- `A194124(Δ[n²])/2` -/
def P1568546057410852545.Spec : Prop :=
  ∀ n, P1568546057410852545.a n = (A048775 (n + 1) : ℚ)

end A048775

/-! ## A048775.P3003723876172839716

`∑[∑[A225015(n+2)]]`
-/

namespace A048775.P3003723876172839716
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225015 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048775.P3003723876172839716

namespace A048775

/-- `∑[∑[A225015(n+2)]]` -/
def P3003723876172839716.Spec : Prop :=
  ∀ n, P3003723876172839716.a n = A048775 (n + 1)

end A048775

/-! ## A048775.P4879759655676243615

`∑[Δ[A001700(n)]-1]`
-/

namespace A048775.P4879759655676243615
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048775.P4879759655676243615

namespace A048775

/-- `∑[Δ[A001700(n)]-1]` -/
def P4879759655676243615.Spec : Prop :=
  ∀ n, P4879759655676243615.a n = A048775 (n + 1)

end A048775

/-! ## A048775.P16965729806950939421

`∑[Δ[A010763(n)]-1]`
-/

namespace A048775.P16965729806950939421
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010763 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048775.P16965729806950939421

namespace A048775

/-- `∑[Δ[A010763(n)]-1]` -/
def P16965729806950939421.Spec : Prop :=
  ∀ n, P16965729806950939421.a n = A048775 (n + 1)

end A048775

/-! ## A048775.P1835378217002920

`∑[A024482(n+2)-1]`
-/

namespace A048775.P1835378217002920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024482 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048775.P1835378217002920

namespace A048775

/-- `∑[A024482(n+2)-1]` -/
def P1835378217002920.Spec : Prop :=
  ∀ n, P1835378217002920.a n = A048775 (n + 1)

end A048775

/-! ## A048775.P4807650497395697339

`∑[A097613(n+2)-1]`
-/

namespace A048775.P4807650497395697339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097613 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048775.P4807650497395697339

namespace A048775

/-- `∑[A097613(n+2)-1]` -/
def P4807650497395697339.Spec : Prop :=
  ∀ n, P4807650497395697339.a n = A048775 (n + 1)

end A048775

/-! ## A048775.P7053397215262680811

`∑[A191782(2*n+1)]`
-/

namespace A048775.P7053397215262680811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191782 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048775.P7053397215262680811

namespace A048775

/-- `∑[A191782(2*n+1)]` -/
def P7053397215262680811.Spec : Prop :=
  ∀ n, P7053397215262680811.a n = A048775 (n + 1)

end A048775

/-! ## A048775.P17053000724237588449

`record[A260878(n)-(n+1)]`
-/

namespace A048775.P17053000724237588449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260878 n - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048775.P17053000724237588449

namespace A048775

/-- `record[A260878(n)-(n+1)]` -/
def P17053000724237588449.Spec : Prop :=
  ∀ n, P17053000724237588449.a n = A048775 (n + 1)

end A048775

/-! ## A048775.P17577258701584017565

`record[A210736(2*n)-n]`
-/

namespace A048775.P17577258701584017565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (2 * n) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048775.P17577258701584017565

namespace A048775

/-- `record[A210736(2*n)-n]` -/
def P17577258701584017565.Spec : Prop :=
  ∀ n, P17577258701584017565.a n = A048775 (n + 1)

end A048775

/-! ## A048775.P15713055830074835481

`∑[A026010(2*n+1)-1]`
-/

namespace A048775.P15713055830074835481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026010 (2 * n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048775.P15713055830074835481

namespace A048775

/-- `∑[A026010(2*n+1)-1]` -/
def P15713055830074835481.Spec : Prop :=
  ∀ n, P15713055830074835481.a n = A048775 (n + 1)

end A048775

/-! ## A048775.P426704283942857589

`∑[Δ[A001405(2*n+1)]-1]`
-/

namespace A048775.P426704283942857589
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048775.P426704283942857589

namespace A048775

/-- `∑[Δ[A001405(2*n+1)]-1]` -/
def P426704283942857589.Spec : Prop :=
  ∀ n, P426704283942857589.a n = A048775 (n + 1)

end A048775

/-! ## A048775.P14979243348523865149

`∑[Δ[A037952(2*n+1)]-1]`
-/

namespace A048775.P14979243348523865149
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048775.P14979243348523865149

namespace A048775

/-- `∑[Δ[A037952(2*n+1)]-1]` -/
def P14979243348523865149.Spec : Prop :=
  ∀ n, P14979243348523865149.a n = A048775 (n + 1)

end A048775

/-! ## A048775.P17142978494636679965

`∑[Δ[A051920(2*n+1)]-1]`
-/

namespace A048775.P17142978494636679965
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051920 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048775.P17142978494636679965

namespace A048775

/-- `∑[Δ[A051920(2*n+1)]-1]` -/
def P17142978494636679965.Spec : Prop :=
  ∀ n, P17142978494636679965.a n = A048775 (n + 1)

end A048775

/-! ## A048775.P1169906079510507515

`∑[Δ[A057977(2*n+1)]-1]`
-/

namespace A048775.P1169906079510507515
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048775.P1169906079510507515

namespace A048775

/-- `∑[Δ[A057977(2*n+1)]-1]` -/
def P1169906079510507515.Spec : Prop :=
  ∀ n, P1169906079510507515.a n = A048775 (n + 1)

end A048775

/-! ## A048775.P5422957385293739737

`∑[Δ[A138364(2*n+1)]-1]`
-/

namespace A048775.P5422957385293739737
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138364 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048775.P5422957385293739737

namespace A048775

/-- `∑[Δ[A138364(2*n+1)]-1]` -/
def P5422957385293739737.Spec : Prop :=
  ∀ n, P5422957385293739737.a n = A048775 (n + 1)

end A048775

/-!
# A048776: First partial sums of A048739; second partial sums of A000129.

The programs for A048776, the canonical program `A048776.P3274396915739912182` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048776 has offset 0).

The definition of A048776 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048776.P3274396915739912182

`2*a(n-1)+a(n-2)+n+1` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048776

/-- `2*a(n-1)+a(n-2)+n+1` -/
def P3274396915739912182.Spec : Prop :=
  ∀ n, (P3274396915739912182.a n : ℤ) = A048776 n

theorem P3274396915739912182.correct : P3274396915739912182.Spec := by
  intro n
  simp only [A048776]

end A048776

/-! ## A048776.P13700896694676157881

`(A000129(n+3)-(n+3))/2`
-/

namespace A048776.P13700896694676157881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000129 (n + 3) - (n + 3 : ℤ) : ℚ) / 2

end

end A048776.P13700896694676157881

namespace A048776

/-- `(A000129(n+3)-(n+3))/2` -/
def P13700896694676157881.Spec : Prop :=
  ∀ n, P13700896694676157881.a n = (A048776 n : ℚ)

end A048776

/-! ## A048776.P11599370717176067098

`∑[ogf(1/(1-3x+x^2+x^3))]`
-/

namespace A048776.P11599370717176067098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -3, 1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048776.P11599370717176067098

namespace A048776

/-- `∑[ogf(1/(1-3x+x^2+x^3))]` -/
def P11599370717176067098.Spec : Prop :=
  ∀ n, P11599370717176067098.a n = A048776 n

end A048776

/-! ## A048776.P3994891104005466989

`ogf(1/(1-4x+4x^2-x^4))`
-/

namespace A048776.P3994891104005466989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -4, 4, 0, -1] n

end

end A048776.P3994891104005466989

namespace A048776

/-- `ogf(1/(1-4x+4x^2-x^4))` -/
def P3994891104005466989.Spec : Prop :=
  ∀ n, P3994891104005466989.a n = A048776 n

end A048776

/-! ## A048776.P2225565326023595558

`∑[ceil((sqrt(2)+1)*a(n-1))]` with `a(0)=1`
-/

namespace A048776.P2225565326023595558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ⌈(Real.sqrt (2 : ℝ) + 1) * (f1 (n - 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048776.P2225565326023595558

namespace A048776

/-- `∑[ceil((sqrt(2)+1)*a(n-1))]` -/
def P2225565326023595558.Spec : Prop :=
  ∀ n, P2225565326023595558.a n = A048776 n

end A048776

/-! ## A048776.P11501161846692151133

`∑[∑[a(n-2)+2*a(n-1)]]` with `a(0)=1, a(1)=2`
-/

namespace A048776.P11501161846692151133
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  f2 (n - 2) + 2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048776.P11501161846692151133

namespace A048776

/-- `∑[∑[a(n-2)+2*a(n-1)]]` -/
def P11501161846692151133.Spec : Prop :=
  ∀ n, (P11501161846692151133.a n : ℤ) = A048776 n

end A048776

/-! ## A048776.P98900932270958889

`∑[∑[a(n-1)+a(n-1)+a(n-2)]]` with `a(0)=1, a(1)=2`
-/

namespace A048776.P98900932270958889
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  f2 (n - 1) + (f2 (n - 1) + f2 (n - 2))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048776.P98900932270958889

namespace A048776

/-- `∑[∑[a(n-1)+a(n-1)+a(n-2)]]` -/
def P98900932270958889.Spec : Prop :=
  ∀ n, (P98900932270958889.a n : ℤ) = A048776 n

end A048776

/-! ## A048776.P14488199355075792107

`n+1+a(n-1)+a(n-1)+a(n-2)` with `a(0)=1, a(1)=4`
-/

namespace A048776.P14488199355075792107
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  n + 1 + (a (n - 1) + (a (n - 1) + a (n - 2)))

end

end A048776.P14488199355075792107

namespace A048776

/-- `n+1+a(n-1)+a(n-1)+a(n-2)` -/
def P14488199355075792107.Spec : Prop :=
  ∀ n, (P14488199355075792107.a n : ℤ) = A048776 n

end A048776

/-! ## A048776.P12036144404846487095

`∑[A048739(n)]`
-/

namespace A048776.P12036144404846487095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048776.P12036144404846487095

namespace A048776

/-- `∑[A048739(n)]` -/
def P12036144404846487095.Spec : Prop :=
  ∀ n, P12036144404846487095.a n = A048776 n

end A048776

/-! ## A048776.P13034903319528559251

`∑[A181658(2*n)]`
-/

namespace A048776.P13034903319528559251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181658 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048776.P13034903319528559251

namespace A048776

/-- `∑[A181658(2*n)]` -/
def P13034903319528559251.Spec : Prop :=
  ∀ n, P13034903319528559251.a n = A048776 n

end A048776

/-! ## A048776.P1032367508183899745

`∑[∑[abs(A077985(n))]]`
-/

namespace A048776.P1032367508183899745
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A077985 n|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048776.P1032367508183899745

namespace A048776

/-- `∑[∑[abs(A077985(n))]]` -/
def P1032367508183899745.Spec : Prop :=
  ∀ n, P1032367508183899745.a n = A048776 n

end A048776

/-! ## A048776.P13917890779376223542

`∑[∑[∑[A001333(n)]]]`
-/

namespace A048776.P13917890779376223542
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048776.P13917890779376223542

namespace A048776

/-- `∑[∑[∑[A001333(n)]]]` -/
def P13917890779376223542.Spec : Prop :=
  ∀ n, P13917890779376223542.a n = A048776 n

end A048776

/-! ## A048776.P8057760354973385131

`A307465(n+2)-1`
-/

namespace A048776.P8057760354973385131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307465 (n + 2) - 1

end

end A048776.P8057760354973385131

namespace A048776

/-- `A307465(n+2)-1` -/
def P8057760354973385131.Spec : Prop :=
  ∀ n, P8057760354973385131.a n = A048776 n

end A048776

/-! ## A048776.P4344789886900582458

`∑[∑[A000129(n+1)]]`
-/

namespace A048776.P4344789886900582458
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048776.P4344789886900582458

namespace A048776

/-- `∑[∑[A000129(n+1)]]` -/
def P4344789886900582458.Spec : Prop :=
  ∀ n, P4344789886900582458.a n = A048776 n

end A048776

/-! ## A048776.P16854821168371177068

`∑[∑[A215928(n+1)]]`
-/

namespace A048776.P16854821168371177068
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215928 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048776.P16854821168371177068

namespace A048776

/-- `∑[∑[A215928(n+1)]]` -/
def P16854821168371177068.Spec : Prop :=
  ∀ n, P16854821168371177068.a n = A048776 n

end A048776

/-! ## A048776.P11469844241113208786

`∑[∑[A052937(n)-1]]`
-/

namespace A048776.P11469844241113208786
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052937 n - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048776.P11469844241113208786

namespace A048776

/-- `∑[∑[A052937(n)-1]]` -/
def P11469844241113208786.Spec : Prop :=
  ∀ n, P11469844241113208786.a n = A048776 n

end A048776

/-! ## A048776.P6361811201635698891

`∑[A024537(n+1)-1]`
-/

namespace A048776.P6361811201635698891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024537 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048776.P6361811201635698891

namespace A048776

/-- `∑[A024537(n+1)-1]` -/
def P6361811201635698891.Spec : Prop :=
  ∀ n, P6361811201635698891.a n = A048776 n

end A048776

/-! ## A048776.P15744177287714039032

`∑[A171842(n+2)-1]`
-/

namespace A048776.P15744177287714039032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171842 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048776.P15744177287714039032

namespace A048776

/-- `∑[A171842(n+2)-1]` -/
def P15744177287714039032.Spec : Prop :=
  ∀ n, P15744177287714039032.a n = A048776 n

end A048776

/-! ## A048776.P9522349432352152845

`∑[A265278(n+2)/2]`
-/

namespace A048776.P9522349432352152845
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265278 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048776.P9522349432352152845

namespace A048776

/-- `∑[A265278(n+2)/2]` -/
def P9522349432352152845.Spec : Prop :=
  ∀ n, P9522349432352152845.a n = (A048776 n : ℚ)

end A048776

/-! ## A048776.P8412813802787695441

`∑[A293004(n+2)/2]`
-/

namespace A048776.P8412813802787695441
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293004 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048776.P8412813802787695441

namespace A048776

/-- `∑[A293004(n+2)/2]` -/
def P8412813802787695441.Spec : Prop :=
  ∀ n, P8412813802787695441.a n = (A048776 n : ℚ)

end A048776

/-!
# A048777: First partial sums of A005409; second partial sums of A001333.

The programs for A048777, the canonical program `A048777.P2806146522248096402` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048777 has offset 0).

The definition of A048777 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048777.P2806146522248096402

`2*a(n-1)+a(n-2)+2*n+1` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048777

/-- `2*a(n-1)+a(n-2)+2*n+1` -/
def P2806146522248096402.Spec : Prop :=
  ∀ n, (P2806146522248096402.a n : ℤ) = A048777 n

theorem P2806146522248096402.correct : P2806146522248096402.Spec := by
  intro n
  simp only [A048777]

end A048777

/-! ## A048777.P7159191254788989250

`(A002203(n+3)-2*(2*n+5))/4`
-/

namespace A048777.P7159191254788989250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002203 (n + 3) - (2 * (2 * n + 5) : ℤ) : ℚ) / 4

end

end A048777.P7159191254788989250

namespace A048777

/-- `(A002203(n+3)-2*(2*n+5))/4` -/
def P7159191254788989250.Spec : Prop :=
  ∀ n, P7159191254788989250.a n = (A048777 n : ℚ)

end A048777

/-! ## A048777.P4420729759020156136

`∑[ogf((1+x)/(1-3x+x^2+x^3))]`
-/

namespace A048777.P4420729759020156136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -3, 1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048777.P4420729759020156136

namespace A048777

/-- `∑[ogf((1+x)/(1-3x+x^2+x^3))]` -/
def P4420729759020156136.Spec : Prop :=
  ∀ n, P4420729759020156136.a n = A048777 n

end A048777

/-! ## A048777.P584928812067415578

`ogf((1+x)/(1-4x+4x^2-x^4))`
-/

namespace A048777.P584928812067415578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -4, 4, 0, -1] n

end

end A048777.P584928812067415578

namespace A048777

/-- `ogf((1+x)/(1-4x+4x^2-x^4))` -/
def P584928812067415578.Spec : Prop :=
  ∀ n, P584928812067415578.a n = A048777 n

end A048777

/-! ## A048777.P13960546721911177642

`∑[∑[a(n-2)+2*a(n-1)]]` with `a(0)=1, a(1)=3`
-/

namespace A048777.P13960546721911177642
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f2 =>
  f2 (n - 2) + 2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048777.P13960546721911177642

namespace A048777

/-- `∑[∑[a(n-2)+2*a(n-1)]]` -/
def P13960546721911177642.Spec : Prop :=
  ∀ n, (P13960546721911177642.a n : ℤ) = A048777 n

end A048777

/-! ## A048777.P11035500466847062259

`Δ[2*a(n-1)+a(n-2)+n²]` with `a(0)=0, a(1)=1`
-/

namespace A048777.P11035500466847062259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  2 * f1 (n - 1) + (f1 (n - 2) + n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A048777.P11035500466847062259

namespace A048777

/-- `Δ[2*a(n-1)+a(n-2)+n²]` -/
def P11035500466847062259.Spec : Prop :=
  ∀ n, P11035500466847062259.a n = A048777 n

end A048777

/-! ## A048777.P5529650869241169222

`∑[∑[a(n-1)+a(n-1)+a(n-2)]]` with `a(0)=1, a(1)=3`
-/

namespace A048777.P5529650869241169222
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f2 =>
  f2 (n - 1) + (f2 (n - 1) + f2 (n - 2))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048777.P5529650869241169222

namespace A048777

/-- `∑[∑[a(n-1)+a(n-1)+a(n-2)]]` -/
def P5529650869241169222.Spec : Prop :=
  ∀ n, (P5529650869241169222.a n : ℤ) = A048777 n

end A048777

/-! ## A048777.P8420614682549763913

`Δ[A271389(n)]`
-/

namespace A048777.P8420614682549763913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271389 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048777.P8420614682549763913

namespace A048777

/-- `Δ[A271389(n)]` -/
def P8420614682549763913.Spec : Prop :=
  ∀ n, P8420614682549763913.a n = A048777 n

end A048777

/-! ## A048777.P9175369354729831351

`∑[∑[A078057(n)]]`
-/

namespace A048777.P9175369354729831351
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078057 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048777.P9175369354729831351

namespace A048777

/-- `∑[∑[A078057(n)]]` -/
def P9175369354729831351.Spec : Prop :=
  ∀ n, P9175369354729831351.a n = A048777 n

end A048777

/-! ## A048777.P5739066622989891004

`∑[A005409(n+2)]`
-/

namespace A048777.P5739066622989891004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005409 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048777.P5739066622989891004

namespace A048777

/-- `∑[A005409(n+2)]` -/
def P5739066622989891004.Spec : Prop :=
  ∀ n, P5739066622989891004.a n = A048777 n

end A048777

/-! ## A048777.P1735362503822677895

`∑[A238375(2*n)]`
-/

namespace A048777.P1735362503822677895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238375 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048777.P1735362503822677895

namespace A048777

/-- `∑[A238375(2*n)]` -/
def P1735362503822677895.Spec : Prop :=
  ∀ n, P1735362503822677895.a n = A048777 n

end A048777

/-! ## A048777.P17453019862846558798

`record[A171842(n)-n]`
-/

namespace A048777.P17453019862846558798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171842 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048777.P17453019862846558798

namespace A048777

/-- `record[A171842(n)-n]` -/
def P17453019862846558798.Spec : Prop :=
  ∀ n, P17453019862846558798.a n = A048777 n

end A048777

/-! ## A048777.P5740906143363170403

`∑[∑[∑[A052542(n)]]]`
-/

namespace A048777.P5740906143363170403
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052542 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048777.P5740906143363170403

namespace A048777

/-- `∑[∑[∑[A052542(n)]]]` -/
def P5740906143363170403.Spec : Prop :=
  ∀ n, P5740906143363170403.a n = A048777 n

end A048777

/-! ## A048777.P15699852247422678502

`A059020(n)+1+n`
-/

namespace A048777.P15699852247422678502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059020 n + 1 + (n : ℤ)

end

end A048777.P15699852247422678502

namespace A048777

/-- `A059020(n)+1+n` -/
def P15699852247422678502.Spec : Prop :=
  ∀ n, P15699852247422678502.a n = A048777 n

end A048777

/-! ## A048777.P1987503140393741477

`∑[∑[A001333(n+1)]]`
-/

namespace A048777.P1987503140393741477
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048777.P1987503140393741477

namespace A048777

/-- `∑[∑[A001333(n+1)]]` -/
def P1987503140393741477.Spec : Prop :=
  ∀ n, P1987503140393741477.a n = A048777 n

end A048777

/-! ## A048777.P14101400732381344731

`∑[∑[A182780(n)-1]]`
-/

namespace A048777.P14101400732381344731
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182780 n - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048777.P14101400732381344731

namespace A048777

/-- `∑[∑[A182780(n)-1]]` -/
def P14101400732381344731.Spec : Prop :=
  ∀ n, P14101400732381344731.a n = A048777 n

end A048777

/-! ## A048777.P3688179433742655940

`∑[A000129(n+2)-1]`
-/

namespace A048777.P3688179433742655940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048777.P3688179433742655940

namespace A048777

/-- `∑[A000129(n+2)-1]` -/
def P3688179433742655940.Spec : Prop :=
  ∀ n, P3688179433742655940.a n = A048777 n

end A048777

/-! ## A048777.P6148641438428245684

`∑[A052937(n+1)-2]`
-/

namespace A048777.P6148641438428245684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052937 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048777.P6148641438428245684

namespace A048777

/-- `∑[A052937(n+1)-2]` -/
def P6148641438428245684.Spec : Prop :=
  ∀ n, P6148641438428245684.a n = A048777 n

end A048777

/-! ## A048777.P11512823589334149245

`∑[A215928(n+2)-1]`
-/

namespace A048777.P11512823589334149245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215928 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048777.P11512823589334149245

namespace A048777

/-- `∑[A215928(n+2)-1]` -/
def P11512823589334149245.Spec : Prop :=
  ∀ n, P11512823589334149245.a n = A048777 n

end A048777

/-! ## A048777.P12200464321144592842

`∑[A174191(n+2)-2]`
-/

namespace A048777.P12200464321144592842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174191 (n + 2) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048777.P12200464321144592842

namespace A048777

/-- `∑[A174191(n+2)-2]` -/
def P12200464321144592842.Spec : Prop :=
  ∀ n, P12200464321144592842.a n = A048777 n

end A048777

/-!
# A048778: First partial sums of A048745; second partial sums of A048654.

The programs for A048778, the canonical program `A048778.P6087380154965872988` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048778 has offset 0).

The definition of A048778 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048778.P6087380154965872988

`2*a(n-1)+a(n-2)+3*n+1` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048778

/-- `2*a(n-1)+a(n-2)+3*n+1` -/
def P6087380154965872988.Spec : Prop :=
  ∀ n, (P6087380154965872988.a n : ℤ) = A048778 n

theorem P6087380154965872988.correct : P6087380154965872988.Spec := by
  intro n
  simp only [A048778]

end A048778

/-! ## A048778.P16485010486591848989

`∑[ogf((1+2x)/(1-3x+x^2+x^3))]`
-/

namespace A048778.P16485010486591848989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -3, 1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048778.P16485010486591848989

namespace A048778

/-- `∑[ogf((1+2x)/(1-3x+x^2+x^3))]` -/
def P16485010486591848989.Spec : Prop :=
  ∀ n, P16485010486591848989.a n = A048778 n

end A048778

/-! ## A048778.P10437532768671501219

`ogf((1+2x)/(1-4x+4x^2-x^4))`
-/

namespace A048778.P10437532768671501219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -4, 4, 0, -1] n

end

end A048778.P10437532768671501219

namespace A048778

/-- `ogf((1+2x)/(1-4x+4x^2-x^4))` -/
def P10437532768671501219.Spec : Prop :=
  ∀ n, P10437532768671501219.a n = A048778 n

end A048778

/-! ## A048778.P10750152486346898938

`∑[∑[a(n-2)+2*a(n-1)]]` with `a(0)=1, a(1)=4`
-/

namespace A048778.P10750152486346898938
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f2 =>
  f2 (n - 2) + 2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048778.P10750152486346898938

namespace A048778

/-- `∑[∑[a(n-2)+2*a(n-1)]]` -/
def P10750152486346898938.Spec : Prop :=
  ∀ n, (P10750152486346898938.a n : ℤ) = A048778 n

end A048778

/-! ## A048778.P10866437396230797993

`∑[∑[a(n-1)+a(n-1)+a(n-2)]]` with `a(0)=1, a(1)=4`
-/

namespace A048778.P10866437396230797993
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f2 =>
  f2 (n - 1) + (f2 (n - 1) + f2 (n - 2))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048778.P10866437396230797993

namespace A048778

/-- `∑[∑[a(n-1)+a(n-1)+a(n-2)]]` -/
def P10866437396230797993.Spec : Prop :=
  ∀ n, (P10866437396230797993.a n : ℤ) = A048778 n

end A048778

/-! ## A048778.P17055750729385366488

`∑[A048745(n)]`
-/

namespace A048778.P17055750729385366488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048745 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048778.P17055750729385366488

namespace A048778

/-- `∑[A048745(n)]` -/
def P17055750729385366488.Spec : Prop :=
  ∀ n, P17055750729385366488.a n = A048778 n

end A048778

/-! ## A048778.P8915692893097564077

`∑[∑[A048654(n)]]`
-/

namespace A048778.P8915692893097564077
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048654 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048778.P8915692893097564077

namespace A048778

/-- `∑[∑[A048654(n)]]` -/
def P8915692893097564077.Spec : Prop :=
  ∀ n, P8915692893097564077.a n = A048778 n

end A048778

/-! ## A048778.P13373954808664924348

`∑[A098790(n+1)-1]`
-/

namespace A048778.P13373954808664924348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098790 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048778.P13373954808664924348

namespace A048778

/-- `∑[A098790(n+1)-1]` -/
def P13373954808664924348.Spec : Prop :=
  ∀ n, P13373954808664924348.a n = A048778 n

end A048778

/-! ## A048778.P1215769822875237238

`A117585(n+1)-(n+2)`
-/

namespace A048778.P1215769822875237238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117585 (n + 1) - (n + 2 : ℤ)

end

end A048778.P1215769822875237238

namespace A048778

/-- `A117585(n+1)-(n+2)` -/
def P1215769822875237238.Spec : Prop :=
  ∀ n, P1215769822875237238.a n = A048778 n

end A048778

/-! ## A048778.P6699602807532400258

`∑[∑[A266504(2*(n+1))]]`
-/

namespace A048778.P6699602807532400258
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266504 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048778.P6699602807532400258

namespace A048778

/-- `∑[∑[A266504(2*(n+1))]]` -/
def P6699602807532400258.Spec : Prop :=
  ∀ n, P6699602807532400258.a n = A048778 n

end A048778

/-! ## A048778.P3263344000200127758

`2*A048777(n)-A048776(n)`
-/

namespace A048778.P3263344000200127758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048777 n - A048776 n

end

end A048778.P3263344000200127758

namespace A048778

/-- `2*A048777(n)-A048776(n)` -/
def P3263344000200127758.Spec : Prop :=
  ∀ n, P3263344000200127758.a n = A048778 n

end A048778

/-! ## A048778.P13401440563060147580

`∑[∑[A078057(n)+A000129(n)]]`
-/

namespace A048778.P13401440563060147580
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078057 n + A000129 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048778.P13401440563060147580

namespace A048778

/-- `∑[∑[A078057(n)+A000129(n)]]` -/
def P13401440563060147580.Spec : Prop :=
  ∀ n, P13401440563060147580.a n = A048778 n

end A048778

/-! ## A048778.P8593024910113809748

`∑[∑[A048655(n)-A000129(n)]]`
-/

namespace A048778.P8593024910113809748
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048655 n - A000129 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048778.P8593024910113809748

namespace A048778

/-- `∑[∑[A048655(n)-A000129(n)]]` -/
def P8593024910113809748.Spec : Prop :=
  ∀ n, P8593024910113809748.a n = A048778 n

end A048778

/-! ## A048778.P8399674239237737769

`∑[A293004(n+2)-A171842(n)]`
-/

namespace A048778.P8399674239237737769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293004 (n + 2) - A171842 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048778.P8399674239237737769

namespace A048778

/-- `∑[A293004(n+2)-A171842(n)]` -/
def P8399674239237737769.Spec : Prop :=
  ∀ n, P8399674239237737769.a n = A048778 n

end A048778

/-! ## A048778.P12926234875770445966

`∑[2*A048739(n)-A171842(n)]`
-/

namespace A048778.P12926234875770445966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048739 n - A171842 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048778.P12926234875770445966

namespace A048778

/-- `∑[2*A048739(n)-A171842(n)]` -/
def P12926234875770445966.Spec : Prop :=
  ∀ n, P12926234875770445966.a n = A048778 n

end A048778

/-! ## A048778.P9875687433606722738

`∑[∑[A002203(n+1)-A000129(n+1)]]`
-/

namespace A048778.P9875687433606722738
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 (n + 1) - A000129 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048778.P9875687433606722738

namespace A048778

/-- `∑[∑[A002203(n+1)-A000129(n+1)]]` -/
def P9875687433606722738.Spec : Prop :=
  ∀ n, P9875687433606722738.a n = A048778 n

end A048778

/-! ## A048778.P11243863669726854399

`∑[∑[A001333(n+1)-A176981(n+1)]]`
-/

namespace A048778.P11243863669726854399
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (n + 1) - A176981 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048778.P11243863669726854399

namespace A048778

/-- `∑[∑[A001333(n+1)-A176981(n+1)]]` -/
def P11243863669726854399.Spec : Prop :=
  ∀ n, P11243863669726854399.a n = A048778 n

end A048778

/-! ## A048778.P1416045437570673202

`∑[∑[A002203(n+1)-A215928(n+1)]]`
-/

namespace A048778.P1416045437570673202
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 (n + 1) - A215928 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048778.P1416045437570673202

namespace A048778

/-- `∑[∑[A002203(n+1)-A215928(n+1)]]` -/
def P1416045437570673202.Spec : Prop :=
  ∀ n, P1416045437570673202.a n = A048778 n

end A048778

/-! ## A048778.P3878272725667631424

`∑[∑[A116558(2*n)+A001333(n+1)]]`
-/

namespace A048778.P3878272725667631424
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116558 (2 * n) + A001333 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048778.P3878272725667631424

namespace A048778

/-- `∑[∑[A116558(2*n)+A001333(n+1)]]` -/
def P3878272725667631424.Spec : Prop :=
  ∀ n, P3878272725667631424.a n = A048778 n

end A048778

/-! ## A048778.P6341863269321583671

`∑[A181658(2*n+1)]-A181658(2*n)`
-/

namespace A048778.P6341863269321583671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181658 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A181658 (2 * n)

end

end A048778.P6341863269321583671

namespace A048778

/-- `∑[A181658(2*n+1)]-A181658(2*n)` -/
def P6341863269321583671.Spec : Prop :=
  ∀ n, P6341863269321583671.a n = A048778 n

end A048778

/-!
# A048779: Coefficients of power series for (1 - (1-8*x)^(1/4))/2.

The programs for A048779, the canonical program `A048779.P11315281160785934938` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048779 has offset 1).

The definition of A048779 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048779.P11315281160785934938

`2*a(n-1)*(32*a(n-2)+a(n-1))/(18*a(n-2)-a(n-1))` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048779

/-- `2*a(n-1)*(32*a(n-2)+a(n-1))/(18*a(n-2)-a(n-1))` -/
def P11315281160785934938.Spec : Prop :=
  ∀ n, P11315281160785934938.a n = (A048779 (n + 1) : ℚ)

end A048779

/-! ## A048779.P7689691767359677156

`(8-10/(n+1))*a(n-1)` with `a(0)=1`
-/

namespace A048779.P7689691767359677156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (8 - 10 / (n + 1 : ℚ)) * a (n - 1)

end

end A048779.P7689691767359677156

namespace A048779

/-- `(8-10/(n+1))*a(n-1)` -/
def P7689691767359677156.Spec : Prop :=
  ∀ n, P7689691767359677156.a n = (A048779 (n + 1) : ℚ)

end A048779

/-! ## A048779.P3223828682876635193

`A202039(∑[n]+1)`
-/

namespace A048779.P3223828682876635193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202039 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A048779.P3223828682876635193

namespace A048779

/-- `A202039(∑[n]+1)` -/
def P3223828682876635193.Spec : Prop :=
  ∀ n, P3223828682876635193.a n = A048779 (n + 1)

end A048779

/-! ## A048779.P8504404356372441011

`record[A202039(n+1)]`
-/

namespace A048779.P8504404356372441011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202039 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048779.P8504404356372441011

namespace A048779

/-- `record[A202039(n+1)]` -/
def P8504404356372441011.Spec : Prop :=
  ∀ n, P8504404356372441011.a n = A048779 (n + 1)

end A048779

/-! ## A048779.P10527915221015515368

`abs(A004984(n+1)/2)`
-/

namespace A048779.P10527915221015515368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A004984 (n + 1) : ℚ) / 2|

end

end A048779.P10527915221015515368

namespace A048779

/-- `abs(A004984(n+1)/2)` -/
def P10527915221015515368.Spec : Prop :=
  ∀ n, P10527915221015515368.a n = (A048779 (n + 1) : ℚ)

end A048779

/-! ## A048779.P11261841207604820834

`∏[record[A062828(n+1)]/(n+1)]`
-/

namespace A048779.P11261841207604820834
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062828 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A048779.P11261841207604820834

namespace A048779

/-- `∏[record[A062828(n+1)]/(n+1)]` -/
def P11261841207604820834.Spec : Prop :=
  ∀ n, P11261841207604820834.a n = (A048779 (n + 1) : ℚ)

end A048779

/-! ## A048779.P1882701331084897612

`∏[A111284(2*n+1)/(n+1)]`
-/

namespace A048779.P1882701331084897612
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111284 (2 * n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A048779.P1882701331084897612

namespace A048779

/-- `∏[A111284(2*n+1)/(n+1)]` -/
def P1882701331084897612.Spec : Prop :=
  ∀ n, P1882701331084897612.a n = (A048779 (n + 1) : ℚ)

end A048779

/-! ## A048779.P2641972626089729613

`∏[A004275(A004275(2*n+1))/(n+1)]`
-/

namespace A048779.P2641972626089729613
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004275 (A004275 (2 * n + 1)).toNat : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A048779.P2641972626089729613

namespace A048779

/-- `∏[A004275(A004275(2*n+1))/(n+1)]` -/
def P2641972626089729613.Spec : Prop :=
  ∀ n, P2641972626089729613.a n = (A048779 (n + 1) : ℚ)

end A048779

/-! ## A048779.P16726493169412519137

`A004984(n+1)/(4*n+2)*A165747(n+1)`
-/

namespace A048779.P16726493169412519137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004984 (n + 1) : ℚ) / (4 * n + 2 : ℚ) * (A165747 (n + 1) : ℚ)

end

end A048779.P16726493169412519137

namespace A048779

/-- `A004984(n+1)/(4*n+2)*A165747(n+1)` -/
def P16726493169412519137.Spec : Prop :=
  ∀ n, P16726493169412519137.a n = (A048779 (n + 1) : ℚ)

end A048779

/-! ## A048779.P8038732617443941721

`A004982(n)/(n+1)`
-/

namespace A048779.P8038732617443941721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004982 n : ℚ) / (n + 1 : ℚ)

end

end A048779.P8038732617443941721

namespace A048779

/-- `A004982(n)/(n+1)` -/
def P8038732617443941721.Spec : Prop :=
  ∀ n, P8038732617443941721.a n = (A048779 (n + 1) : ℚ)

end A048779

/-! ## A048779.P13235687784155858629

`A000108(n)/A000984(n)*A004982(n)`
-/

namespace A048779.P13235687784155858629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 n : ℚ) / (A000984 n : ℚ) * (A004982 n : ℚ)

end

end A048779.P13235687784155858629

namespace A048779

/-- `A000108(n)/A000984(n)*A004982(n)` -/
def P13235687784155858629.Spec : Prop :=
  ∀ n, P13235687784155858629.a n = (A048779 (n + 1) : ℚ)

end A048779

/-!
# A048781: Number of triangles in minimal triangle graphs.

The programs for A048781, there is no canonical definition to state claims against.
-/

/-! ## A048781.P18277036038919047031

`A144160(A110679(n))`
-/

namespace A048781.P18277036038919047031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144160 (A110679 n).toNat

end

end A048781.P18277036038919047031

/-! ## A048781.P8287955431212833759

`A091107(n+1)+∑{d}[A045690(n+1), #]`
-/

namespace A048781.P8287955431212833759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091107 (n + 1) + ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ)

end

end A048781.P8287955431212833759

/-! ## A048781.P13738059497372905058

`A327548(n)+A181802(A009207(n))`
-/

namespace A048781.P13738059497372905058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327548 n + A181802 (A009207 n).toNat

end

end A048781.P13738059497372905058

/-!
# A048784: a(n) = tau(binomial(2*n,n)), where tau = number of divisors (A000005).

The programs for A048784, the canonical program `A048784.P252615845458894527` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048784 has offset 0).

The definition of A048784 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A048784.P252615845458894527

`A000005(A000984(n))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A048784

/-- `A000005(A000984(n))` -/
def P252615845458894527.Spec : Prop :=
  ∀ n, P252615845458894527.a n = A048784 n

theorem P252615845458894527.correct : P252615845458894527.Spec := by
  intro n
  simp only [A048784]

end A048784

/-! ## A048784.P17051657201912911608

`A034974(n-(1-n)%(n+1)+1)`
-/

namespace A048784.P17051657201912911608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034974 ((n : ℤ) - Int.tmod (1 - (n : ℤ)) (n + 1 : ℤ) + 1).toNat

end

end A048784.P17051657201912911608

namespace A048784

/-- `A034974(n-(1-n)%(n+1)+1)` -/
def P17051657201912911608.Spec : Prop :=
  ∀ n, P17051657201912911608.a n = A048784 n

end A048784

/-! ## A048784.P13390089196458910623

`A034974(floor(n²/(n+1)+n)+1)`
-/

namespace A048784.P13390089196458910623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034974 (⌊(n ^ 2 : ℚ) / (n + 1 : ℚ) + (n : ℚ)⌋ + 1).toNat

end

end A048784.P13390089196458910623

namespace A048784

/-- `A034974(floor(n²/(n+1)+n)+1)` -/
def P13390089196458910623.Spec : Prop :=
  ∀ n, P13390089196458910623.a n = A048784 n

end A048784

/-! ## A048784.P9241770093787001990

`lcm(A000034(n), A034974(A004277(n)))`
-/

namespace A048784.P9241770093787001990
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A034974 (A004277 n).toNat)

end

end A048784.P9241770093787001990

namespace A048784

/-- `lcm(A000034(n), A034974(A004277(n)))` -/
def P9241770093787001990.Spec : Prop :=
  ∀ n, (P9241770093787001990.a n : ℤ) = A048784 n

end A048784

/-! ## A048784.P7875576950041494475

`A034974(A004277(n))%A048588(n+1)`
-/

namespace A048784.P7875576950041494475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034974 (A004277 n).toNat) (A048588 (n + 1))

end

end A048784.P7875576950041494475

namespace A048784

/-- `A034974(A004277(n))%A048588(n+1)` -/
def P7875576950041494475.Spec : Prop :=
  ∀ n, P7875576950041494475.a n = A048784 n

end A048784

/-! ## A048784.P616598306802729738

`A034974(A004277(n))%A022383(n)`
-/

namespace A048784.P616598306802729738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034974 (A004277 n).toNat) (A022383 n)

end

end A048784.P616598306802729738

namespace A048784

/-- `A034974(A004277(n))%A022383(n)` -/
def P616598306802729738.Spec : Prop :=
  ∀ n, P616598306802729738.a n = A048784 n

end A048784

/-! ## A048784.P17227745600615903064

`A048570(∑[4*n])`
-/

namespace A048784.P17227745600615903064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048570 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A048784.P17227745600615903064

namespace A048784

/-- `A048570(∑[4*n])` -/
def P17227745600615903064.Spec : Prop :=
  ∀ n, P17227745600615903064.a n = A048784 n

end A048784

/-!
# A048785: a(0) = 0; a(n) = tau(n^3), where tau = number of divisors (A000005).

The programs for A048785, the canonical program `A048785.P6596671238819424103` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048785 has offset 0).

The definition of A048785 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A048785.P12154767980633606171

`∑{d}[n, A074816(#)]`
-/

namespace A048785.P12154767980633606171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A074816 d

end

end A048785.P12154767980633606171

namespace A048785

/-- `∑{d}[n, A074816(#)]` -/
def P12154767980633606171.Spec : Prop :=
  ∀ n, P12154767980633606171.a n = A048785 n

end A048785

/-! ## A048785.P8366282960098290517

`∑{d}[n, 3^A001221(#)]`
-/

namespace A048785.P8366282960098290517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (3 : ℚ) ^ (A001221 d : ℤ)

end

end A048785.P8366282960098290517

namespace A048785

/-- `∑{d}[n, 3^A001221(#)]` -/
def P8366282960098290517.Spec : Prop :=
  ∀ n, P8366282960098290517.a n = (A048785 n : ℚ)

end A048785

/-! ## A048785.P6596671238819424103

`∑{d}[n, A007425(A007947(#))]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A048785

/-- `∑{d}[n, A007425(A007947(#))]` -/
def P6596671238819424103.Spec : Prop :=
  ∀ n, P6596671238819424103.a n = A048785 n

theorem P6596671238819424103.correct : P6596671238819424103.Spec := by
  intro n
  simp only [A048785]

end A048785

/-! ## A048785.P16379913378724140888

`∑{d}[n², A000005(A007913(#))]`
-/

namespace A048785.P16379913378724140888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 (A007913 d).toNat

end

end A048785.P16379913378724140888

namespace A048785

/-- `∑{d}[n², A000005(A007913(#))]` -/
def P16379913378724140888.Spec : Prop :=
  ∀ n, P16379913378724140888.a n = A048785 n

end A048785

/-! ## A048785.P252153494966961815

`∑{d}[n, A000005(A007947(#)²)]`
-/

namespace A048785.P252153494966961815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 (A007947 d ^ 2).toNat

end

end A048785.P252153494966961815

namespace A048785

/-- `∑{d}[n, A000005(A007947(#)²)]` -/
def P252153494966961815.Spec : Prop :=
  ∀ n, P252153494966961815.a n = A048785 n

end A048785

/-! ## A048785.P12086041714973447259

`∑{d}[n², A055076(#)]`
-/

namespace A048785.P12086041714973447259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055076 d

end

end A048785.P12086041714973447259

namespace A048785

/-- `∑{d}[n², A055076(#)]` -/
def P12086041714973447259.Spec : Prop :=
  ∀ n, P12086041714973447259.a n = A048785 n

end A048785

/-! ## A048785.P874818033911115627

`∑{d}[n², A056624(#)]`
-/

namespace A048785.P874818033911115627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056624 d

end

end A048785.P874818033911115627

namespace A048785

/-- `∑{d}[n², A056624(#)]` -/
def P874818033911115627.Spec : Prop :=
  ∀ n, P874818033911115627.a n = A048785 n

end A048785

/-! ## A048785.P13554711595930655227

`∑{d}[n, A073184(#²)]`
-/

namespace A048785.P13554711595930655227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A073184 (d ^ 2)

end

end A048785.P13554711595930655227

namespace A048785

/-- `∑{d}[n, A073184(#²)]` -/
def P13554711595930655227.Spec : Prop :=
  ∀ n, P13554711595930655227.a n = A048785 n

end A048785

/-! ## A048785.P12631119249628336536

`∑{d}[n, A000005(A007948(#²))]`
-/

namespace A048785.P12631119249628336536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 (A007948 (d ^ 2)).toNat

end

end A048785.P12631119249628336536

namespace A048785

/-- `∑{d}[n, A000005(A007948(#²))]` -/
def P12631119249628336536.Spec : Prop :=
  ∀ n, P12631119249628336536.a n = A048785 n

end A048785

/-! ## A048785.P13469239581218178330

`∑{d}[n^3, ceil(1/#)]`
-/

namespace A048785.P13469239581218178330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌈1 / (d : ℚ)⌉

end

end A048785.P13469239581218178330

namespace A048785

/-- `∑{d}[n^3, ceil(1/#)]` -/
def P13469239581218178330.Spec : Prop :=
  ∀ n, P13469239581218178330.a n = A048785 n

end A048785

/-! ## A048785.P16956976707418388032

`∏{e}[n^3, #+1]-floor(acot(n))`
-/

namespace A048785.P16956976707418388032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A048785.P16956976707418388032

namespace A048785

/-- `∏{e}[n^3, #+1]-floor(acot(n))` -/
def P16956976707418388032.Spec : Prop :=
  ∀ n, P16956976707418388032.a n = A048785 n

end A048785

/-! ## A048785.P2984521887560543353

`∏{e}[n^3, #+1]%(n+1)²`
-/

namespace A048785.P2984521887560543353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) % (n + 1) ^ 2

end

end A048785.P2984521887560543353

namespace A048785

/-- `∏{e}[n^3, #+1]%(n+1)²` -/
def P2984521887560543353.Spec : Prop :=
  ∀ n, (P2984521887560543353.a n : ℤ) = A048785 n

end A048785

/-!
# A048786: Triangle of coefficients of certain exponential convolution polynomials.

The programs for A048786, the canonical program `A048786.P16977385035580172812` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048786 has offset 1).

The definition of A048786 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1378 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A048786.P15076512112836378548

`A079621(n+1)*A130321(n)`
-/

namespace A048786.P15076512112836378548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079621 (n + 1) * A130321 n

end

end A048786.P15076512112836378548

namespace A048786

/-- `A079621(n+1)*A130321(n)` -/
def P15076512112836378548.Spec : Prop :=
  ∀ n, P15076512112836378548.a n = A048786 (n + 1)

end A048786

/-! ## A048786.P16977385035580172812

`A038231(n)*A173333(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A048786

/-- `A038231(n)*A173333(n+1)` -/
def P16977385035580172812.Spec : Prop :=
  ∀ n, P16977385035580172812.a n = A048786 (n + 1)

theorem P16977385035580172812.correct : P16977385035580172812.Spec := by
  intro n
  simp only [A048786, Nat.add_sub_cancel]

end A048786

/-! ## A048786.P6669950971040347839

`A105278(n+1)*A262616(n)`
-/

namespace A048786.P6669950971040347839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105278 (n + 1) * A262616 n

end

end A048786.P6669950971040347839

namespace A048786

/-- `A105278(n+1)*A262616(n)` -/
def P6669950971040347839.Spec : Prop :=
  ∀ n, P6669950971040347839.a n = A048786 (n + 1)

end A048786

/-! ## A048786.P12133078415146306143

`abs(A066667(n))*A130321(n)²`
-/

namespace A048786.P12133078415146306143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A066667 n| * A130321 n ^ 2

end

end A048786.P12133078415146306143

namespace A048786

/-- `abs(A066667(n))*A130321(n)²` -/
def P12133078415146306143.Spec : Prop :=
  ∀ n, P12133078415146306143.a n = A048786 (n + 1)

end A048786

/-! ## A048786.P10614182312342730999

`A130321(n)²*A105278(n+1)`
-/

namespace A048786.P10614182312342730999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n ^ 2 * A105278 (n + 1)

end

end A048786.P10614182312342730999

namespace A048786

/-- `A130321(n)²*A105278(n+1)` -/
def P10614182312342730999.Spec : Prop :=
  ∀ n, P10614182312342730999.a n = A048786 (n + 1)

end A048786

/-! ## A048786.P3455712194725807503

`(A038207(n)/A007318(n))²*A105278(n+1)`
-/

namespace A048786.P3455712194725807503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A038207 n : ℚ) / (A007318 n : ℚ)) ^ 2 * (A105278 (n + 1) : ℚ)

end

end A048786.P3455712194725807503

namespace A048786

/-- `(A038207(n)/A007318(n))²*A105278(n+1)` -/
def P3455712194725807503.Spec : Prop :=
  ∀ n, P3455712194725807503.a n = (A048786 (n + 1) : ℚ)

end A048786

/-! ## A048786.P44902661329968408

`A079621(n+1)/A105278(n+1)*A079621(n+1)`
-/

namespace A048786.P44902661329968408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079621 (n + 1) : ℚ) / (A105278 (n + 1) : ℚ) * (A079621 (n + 1) : ℚ)

end

end A048786.P44902661329968408

namespace A048786

/-- `A079621(n+1)/A105278(n+1)*A079621(n+1)` -/
def P44902661329968408.Spec : Prop :=
  ∀ n, P44902661329968408.a n = (A048786 (n + 1) : ℚ)

end A048786

/-! ## A048786.P426122559269619044

`A079621(n+1)²/A105278(n+1)`
-/

namespace A048786.P426122559269619044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079621 (n + 1) ^ 2 : ℚ) / (A105278 (n + 1) : ℚ)

end

end A048786.P426122559269619044

namespace A048786

/-- `A079621(n+1)²/A105278(n+1)` -/
def P426122559269619044.Spec : Prop :=
  ∀ n, P426122559269619044.a n = (A048786 (n + 1) : ℚ)

end A048786

/-!
# A048787: Write n in base 3 then rotate left one place.

The programs for A048787, there is no canonical definition to state claims against.
-/

/-! ## A048787.P3092760492716652887

`A038502(A343600(n+1))`
-/

namespace A048787.P3092760492716652887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (A343600 (n + 1)).toNat

end

end A048787.P3092760492716652887

/-!
# A048788: a(2n+1) = a(2n) + a(2n-1), a(2n) = 2*a(2n-1) + a(2n-2); a(n) = n for n = 0, 1.

The programs for A048788, the canonical program `A048788.P6090502968987335348` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048788 has offset 0).

The definition of A048788 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048788.P6090502968987335348

`4*a(n-2)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048788

/-- `4*a(n-2)-a(n-4)` -/
def P6090502968987335348.Spec : Prop :=
  ∀ n, P6090502968987335348.a n = A048788 n

theorem P6090502968987335348.correct : P6090502968987335348.Spec := by
  intro n
  simp only [A048788]

end A048788

/-! ## A048788.P2391852757918568102

`ogf((x+2x^2-x^3)/(1-4x^2+x^4))`
-/

namespace A048788.P2391852757918568102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2, -1] [1, 0, -4, 0, 1] n

end

end A048788.P2391852757918568102

namespace A048788

/-- `ogf((x+2x^2-x^3)/(1-4x^2+x^4))` -/
def P2391852757918568102.Spec : Prop :=
  ∀ n, P2391852757918568102.a n = A048788 n

end A048788

/-! ## A048788.P3628082108028790275

`a(n-2)+lcm(2, a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A048788.P3628082108028790275
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + Nat.lcm 2 (a (n - 1))

end

end A048788.P3628082108028790275

namespace A048788

/-- `a(n-2)+lcm(2, a(n-1))` -/
def P3628082108028790275.Spec : Prop :=
  ∀ n, (P3628082108028790275.a n : ℤ) = A048788 n

end A048788

/-! ## A048788.P13531991781605284720

`gcd(2, n)*A002530(n)`
-/

namespace A048788.P13531991781605284720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A002530 n

end

end A048788.P13531991781605284720

namespace A048788

/-- `gcd(2, n)*A002530(n)` -/
def P13531991781605284720.Spec : Prop :=
  ∀ n, P13531991781605284720.a n = A048788 n

end A048788

/-! ## A048788.P7941057628602158744

`A254308(A032766(n))`
-/

namespace A048788.P7941057628602158744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254308 (A032766 n).toNat

end

end A048788.P7941057628602158744

namespace A048788

/-- `A254308(A032766(n))` -/
def P7941057628602158744.Spec : Prop :=
  ∀ n, P7941057628602158744.a n = A048788 n

end A048788

/-! ## A048788.P8646233313015318462

`A002530(n)*A040001(n)`
-/

namespace A048788.P8646233313015318462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002530 n * A040001 n

end

end A048788.P8646233313015318462

namespace A048788

/-- `A002530(n)*A040001(n)` -/
def P8646233313015318462.Spec : Prop :=
  ∀ n, P8646233313015318462.a n = A048788 n

end A048788

/-! ## A048788.P11322288621357019816

`A002530(n)*A134451(n)`
-/

namespace A048788.P11322288621357019816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002530 n * A134451 n

end

end A048788.P11322288621357019816

namespace A048788

/-- `A002530(n)*A134451(n)` -/
def P11322288621357019816.Spec : Prop :=
  ∀ n, P11322288621357019816.a n = A048788 n

end A048788

/-! ## A048788.P9079978728591709601

`A254308(A007494(n+1)-2)`
-/

namespace A048788.P9079978728591709601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254308 (A007494 (n + 1) - 2).toNat

end

end A048788.P9079978728591709601

namespace A048788

/-- `A254308(A007494(n+1)-2)` -/
def P9079978728591709601.Spec : Prop :=
  ∀ n, P9079978728591709601.a n = A048788 n

end A048788

/-! ## A048788.P13682948447869945355

`A254308(A294732(n+3)-2)`
-/

namespace A048788.P13682948447869945355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254308 (A294732 (n + 3) - 2).toNat

end

end A048788.P13682948447869945355

namespace A048788

/-- `A254308(A294732(n+3)-2)` -/
def P13682948447869945355.Spec : Prop :=
  ∀ n, P13682948447869945355.a n = A048788 n

end A048788

/-! ## A048788.P15743641559536933451

`A000034(n+1)*A002530(n)`
-/

namespace A048788.P15743641559536933451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A002530 n

end

end A048788.P15743641559536933451

namespace A048788

/-- `A000034(n+1)*A002530(n)` -/
def P15743641559536933451.Spec : Prop :=
  ∀ n, P15743641559536933451.a n = A048788 n

end A048788

/-! ## A048788.P4869744867693075517

`A002530(n)*A084642(n+1)`
-/

namespace A048788.P4869744867693075517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002530 n * A084642 (n + 1)

end

end A048788.P4869744867693075517

namespace A048788

/-- `A002530(n)*A084642(n+1)` -/
def P4869744867693075517.Spec : Prop :=
  ∀ n, P4869744867693075517.a n = A048788 n

end A048788

/-! ## A048788.P5388595565764151765

`A002530(n)*A288699(n+2)`
-/

namespace A048788.P5388595565764151765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002530 n * A288699 (n + 2)

end

end A048788.P5388595565764151765

namespace A048788

/-- `A002530(n)*A288699(n+2)` -/
def P5388595565764151765.Spec : Prop :=
  ∀ n, P5388595565764151765.a n = A048788 n

end A048788

/-! ## A048788.P1319859798596012381

`(2-A000035(n))*A002530(n)`
-/

namespace A048788.P1319859798596012381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000035 n) * A002530 n

end

end A048788.P1319859798596012381

namespace A048788

/-- `(2-A000035(n))*A002530(n)` -/
def P1319859798596012381.Spec : Prop :=
  ∀ n, P1319859798596012381.a n = A048788 n

end A048788

/-! ## A048788.P10028634441746192036

`2/A000034(n)*A002530(n)`
-/

namespace A048788.P10028634441746192036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000034 n : ℚ) * (A002530 n : ℚ)

end

end A048788.P10028634441746192036

namespace A048788

/-- `2/A000034(n)*A002530(n)` -/
def P10028634441746192036.Spec : Prop :=
  ∀ n, P10028634441746192036.a n = (A048788 n : ℚ)

end A048788

/-! ## A048788.P8816802005858836153

`(A056594(n)²+1)*A002530(n)`
-/

namespace A048788.P8816802005858836153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A056594 n ^ 2 + 1) * A002530 n

end

end A048788.P8816802005858836153

namespace A048788

/-- `(A056594(n)²+1)*A002530(n)` -/
def P8816802005858836153.Spec : Prop :=
  ∀ n, P8816802005858836153.a n = A048788 n

end A048788

/-! ## A048788.P2403501410559760011

`A254308(3*(n+1)-A114119(n+1))`
-/

namespace A048788.P2403501410559760011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254308 ((3 * (n + 1) : ℤ) - A114119 (n + 1)).toNat

end

end A048788.P2403501410559760011

namespace A048788

/-- `A254308(3*(n+1)-A114119(n+1))` -/
def P2403501410559760011.Spec : Prop :=
  ∀ n, P2403501410559760011.a n = A048788 n

end A048788

/-! ## A048788.P9461848582338782931

`A122573(n+1)+∑[A122573(n+1)]-2`
-/

namespace A048788.P9461848582338782931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122573 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122573 (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j - 2)

end

end A048788.P9461848582338782931

namespace A048788

/-- `A122573(n+1)+∑[A122573(n+1)]-2` -/
def P9461848582338782931.Spec : Prop :=
  ∀ n, P9461848582338782931.a n = A048788 n

end A048788

/-! ## A048788.P17319001749009601955

`∪[A079935(n+1), A052530(n)]`
-/

namespace A048788.P17319001749009601955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052530 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A048788.P17319001749009601955

namespace A048788

/-- `∪[A079935(n+1), A052530(n)]` -/
def P17319001749009601955.Spec : Prop :=
  ∀ n, (P17319001749009601955.a n : ℤ) = A048788 n

end A048788

/-! ## A048788.P4286799934656064009

`A002531(n+1)-A002530(n+1)`
-/

namespace A048788.P4286799934656064009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002531 (n + 1) - A002530 (n + 1)

end

end A048788.P4286799934656064009

namespace A048788

/-- `A002531(n+1)-A002530(n+1)` -/
def P4286799934656064009.Spec : Prop :=
  ∀ n, P4286799934656064009.a n = A048788 n

end A048788

/-! ## A048788.P5063261039599128636

`A000129(n)/A152118(n)*A002530(n)`
-/

namespace A048788.P5063261039599128636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000129 n : ℚ) / (A152118 n : ℚ) * (A002530 n : ℚ)

end

end A048788.P5063261039599128636

namespace A048788

/-- `A000129(n)/A152118(n)*A002530(n)` -/
def P5063261039599128636.Spec : Prop :=
  ∀ n, P5063261039599128636.a n = (A048788 n : ℚ)

end A048788

/-!
# A048790: Array read by antidiagonals: T(n,k) = number of rooted n-dimensional polycubes with k cells, with no symmetries removed (n >= 1, k >= 1).

The programs for A048790, there is no canonical definition to state claims against.
-/

/-! ## A048790.P9977020271222793901

`A351870(A002260(n+1)*A107702(n))`
-/

namespace A048790.P9977020271222793901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 (A002260 (n + 1) * A107702 n).toNat

end

end A048790.P9977020271222793901

/-! ## A048790.P10147553148878627606

`A351870(A107702(n)*A183534(n+1))`
-/

namespace A048790.P10147553148878627606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 (A107702 n * A183534 (n + 1)).toNat

end

end A048790.P10147553148878627606

/-! ## A048790.P215531291452058919

`A234951((n+1)*A144512(n))`
-/

namespace A048790.P215531291452058919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234951 ((n + 1 : ℤ) * A144512 n).toNat

end

end A048790.P215531291452058919

/-! ## A048790.P17909661267363372516

`A144544(A022171(n))*A249026(n)`
-/

namespace A048790.P17909661267363372516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144544 (A022171 n).toNat * A249026 n

end

end A048790.P17909661267363372516

/-! ## A048790.P15669130391695660458

`A035218(A176631(n))*A213999(n)`
-/

namespace A048790.P15669130391695660458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035218 (A176631 n).toNat * A213999 n

end

end A048790.P15669130391695660458

/-!
# A048792: When cubed gives number composed just of the digits 0, 1, 2, 3, 4.

The programs for A048792, there is no canonical definition to state claims against.
-/

/-! ## A048792.P41429450231299434

`∪[A043681(n+1), A294664(n+1)]`
-/

namespace A048792.P41429450231299434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294664 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A048792.P41429450231299434

/-! ## A048792.P3040161270216731155

`lt[A032553(n)%10, 5]`
-/

namespace A048792.P3040161270216731155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032553 n) 10

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A048792.P3040161270216731155

/-!
# A048793: List giving all subsets of natural numbers arranged in standard statistical (or Yates) order.

The programs for A048793, there is no canonical definition to state claims against.
-/

/-! ## A048793.P8841983434098286449

`A133457(A028310(n))+A057427(n)`
-/

namespace A048793.P8841983434098286449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133457 (A028310 n).toNat + A057427 n

end

end A048793.P8841983434098286449

/-! ## A048793.P6584136578092972634

`A133457(A028310(n))-A057428(n)`
-/

namespace A048793.P6584136578092972634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133457 (A028310 n).toNat - A057428 n

end

end A048793.P6584136578092972634

/-! ## A048793.P3235792165879301356

`(A133457(A028310(n))+1)%A000961(n+1)`
-/

namespace A048793.P3235792165879301356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133457 (A028310 n).toNat + 1) (A000961 (n + 1))

end

end A048793.P3235792165879301356

/-! ## A048793.P8711560955020938743

`A133457(A028310(n))+A055396(A008458(n))`
-/

namespace A048793.P8711560955020938743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133457 (A028310 n).toNat + A055396 (A008458 n).toNat

end

end A048793.P8711560955020938743

/-! ## A048793.P1658408282721781517

`A133457(A028310(n))+A000035(A000040(n+1))`
-/

namespace A048793.P1658408282721781517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133457 (A028310 n).toNat + A000035 (A000040 (n + 1)).toNat

end

end A048793.P1658408282721781517

/-!
# A048794: Subsets of natural numbers arranged in standard statistical (or Yates) order.

The programs for A048794, there is no canonical definition to state claims against.
-/

/-! ## A048794.P9892660687396761745

`A360287(A006068(n))`
-/

namespace A048794.P9892660687396761745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360287 (A006068 n).toNat

end

end A048794.P9892660687396761745

/-! ## A048794.P4483737480250428579

`A086068(comp[2*(n+1)]+1)`
-/

namespace A048794.P4483737480250428579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086068 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A048794.P4483737480250428579

/-! ## A048794.P7930061510948283179

`gcd(n, n+1)*A086068(A004277(n))`
-/

namespace A048794.P7930061510948283179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) * A086068 (A004277 n).toNat

end

end A048794.P7930061510948283179

/-! ## A048794.P4938430167084775878

`A086068(A004277(n))%A001786(n)`
-/

namespace A048794.P4938430167084775878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086068 (A004277 n).toNat) (A001786 n)

end

end A048794.P4938430167084775878

/-! ## A048794.P9733346391878941654

`A000034(12*n+6)*A086068(A004277(n))`
-/

namespace A048794.P9733346391878941654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (12 * n + 6) * A086068 (A004277 n).toNat

end

end A048794.P9733346391878941654

/-! ## A048794.P11948376039842763210

`A086068(A004277(n))+A025438(A176835(n+1))`
-/

namespace A048794.P11948376039842763210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086068 (A004277 n).toNat + A025438 (A176835 (n + 1)).toNat

end

end A048794.P11948376039842763210

/-! ## A048794.P1827489025836080823

`A051953(A000040(n+1))*A086068(A004277(n))`
-/

namespace A048794.P1827489025836080823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (A000040 (n + 1)).toNat * A086068 (A004277 n).toNat

end

end A048794.P1827489025836080823

/-! ## A048794.P5310378381320752928

`A001222(A028981(n+1))*A086068(A004277(n))`
-/

namespace A048794.P5310378381320752928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A028981 (n + 1)).toNat * A086068 (A004277 n).toNat

end

end A048794.P5310378381320752928

/-! ## A048794.P2767358720466624319

`∑{d}[A086068(A004277(n)), A000010(#)]`
-/

namespace A048794.P2767358720466624319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086068 (A004277 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A048794.P2767358720466624319

/-!
# A048795: 

The programs for A048795, there is no canonical definition to state claims against.
-/

/-! ## A048795.P13363139619641853196

`A000461(A000040(n+1))`
-/

namespace A048795.P13363139619641853196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000461 (A000040 (n + 1)).toNat

end

end A048795.P13363139619641853196

/-! ## A048795.P16393624923686097118

`A000461(eq[1, A003415(n)])`
-/

namespace A048795.P16393624923686097118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000461 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A048795.P16393624923686097118

/-! ## A048795.P15043552752472123849

`A000461(record[A006530(n+2)])`
-/

namespace A048795.P15043552752472123849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000461 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A048795.P15043552752472123849

/-! ## A048795.P8705643503683885753

`A000461(record[A014963(n+2)])`
-/

namespace A048795.P8705643503683885753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000461 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A048795.P8705643503683885753

/-! ## A048795.P17570013233649312285

`A000461(record[A020639(n+2)])`
-/

namespace A048795.P17570013233649312285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000461 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A048795.P17570013233649312285

/-!
# A048797: Primes p such that pp'-2 is prime, where p' denotes the next prime after p.

The programs for A048797, there is no canonical definition to state claims against.
-/

/-! ## A048797.P1686678154872687069

`A007917(floor(sqrt(A123921(n+1))))`
-/

namespace A048797.P1686678154872687069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (Int.sqrt (A123921 (n + 1))).toNat

end

end A048797.P1686678154872687069

/-! ## A048797.P7318065765507309060

`A007917(ceil(sqrt(A123921(n+1))))`
-/

namespace A048797.P7318065765507309060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 ⌈Real.sqrt (A123921 (n + 1) : ℝ)⌉.toNat

end

end A048797.P7318065765507309060

/-! ## A048797.P17289843943769197026

`A007917(round(sqrt(A123921(n+1))))`
-/

namespace A048797.P17289843943769197026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (SequenceMachineLib.roundAway (Real.sqrt (A123921 (n + 1) : ℝ))).toNat

end

end A048797.P17289843943769197026

/-!
# A048798: Smallest k > 0 such that n*k is a perfect cube.

The programs for A048798, the canonical program `A048798.P11871248388947828360` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048798 has offset 1).

The definition of A048798 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A048798.P2939578966237469771

`A053149(n+1)/(n+1)`
-/

namespace A048798.P2939578966237469771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053149 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A048798.P2939578966237469771

namespace A048798

/-- `A053149(n+1)/(n+1)` -/
def P2939578966237469771.Spec : Prop :=
  ∀ n, P2939578966237469771.a n = (A048798 (n + 1) : ℚ)

end A048798

/-! ## A048798.P16871287290859006795

`(n+1)²/A000189(n+1)^3`
-/

namespace A048798.P16871287290859006795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A000189 (n + 1) ^ 3 : ℚ)

end

end A048798.P16871287290859006795

namespace A048798

/-- `(n+1)²/A000189(n+1)^3` -/
def P16871287290859006795.Spec : Prop :=
  ∀ n, P16871287290859006795.a n = (A048798 (n + 1) : ℚ)

end A048798

/-! ## A048798.P2643351266906454194

`A019555(n+1)^3/(n+1)`
-/

namespace A048798.P2643351266906454194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019555 (n + 1) ^ 3 : ℚ) / (n + 1 : ℚ)

end

end A048798.P2643351266906454194

namespace A048798

/-- `A019555(n+1)^3/(n+1)` -/
def P2643351266906454194.Spec : Prop :=
  ∀ n, P2643351266906454194.a n = (A048798 (n + 1) : ℚ)

end A048798

/-! ## A048798.P11871248388947828360

`A011262(A050985(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A048798

/-- `A011262(A050985(n+1))` -/
def P11871248388947828360.Spec : Prop :=
  ∀ n, P11871248388947828360.a n = A048798 (n + 1)

theorem P11871248388947828360.correct : P11871248388947828360.Spec := by
  intro n
  simp only [A048798, Nat.add_sub_cancel]

end A048798

/-! ## A048798.P8178346362028635725

`A000578(A019555(n+1))/(n+1)`
-/

namespace A048798.P8178346362028635725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000578 (A019555 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A048798.P8178346362028635725

namespace A048798

/-- `A000578(A019555(n+1))/(n+1)` -/
def P8178346362028635725.Spec : Prop :=
  ∀ n, P8178346362028635725.a n = (A048798 (n + 1) : ℚ)

end A048798

/-! ## A048798.P15217354121316601786

`A056551(n+1)/A050985(n+1)`
-/

namespace A048798.P15217354121316601786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056551 (n + 1) : ℚ) / (A050985 (n + 1) : ℚ)

end

end A048798.P15217354121316601786

namespace A048798

/-- `A056551(n+1)/A050985(n+1)` -/
def P15217354121316601786.Spec : Prop :=
  ∀ n, P15217354121316601786.a n = (A048798 (n + 1) : ℚ)

end A048798

/-! ## A048798.P15447955671642138558

`A159253((n+1)/A008834(n+1))`
-/

namespace A048798.P15447955671642138558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159253 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A008834 (n + 1) : ℚ))).toNat

end

end A048798.P15447955671642138558

namespace A048798

/-- `A159253((n+1)/A008834(n+1))` -/
def P15447955671642138558.Spec : Prop :=
  ∀ n, P15447955671642138558.a n = A048798 (n + 1)

end A048798

/-! ## A048798.P11583950572418599715

`A390754(n+1)/A000010(n+1)`
-/

namespace A048798.P11583950572418599715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A390754 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A048798.P11583950572418599715

namespace A048798

/-- `A390754(n+1)/A000010(n+1)` -/
def P11583950572418599715.Spec : Prop :=
  ∀ n, P11583950572418599715.a n = (A048798 (n + 1) : ℚ)

end A048798

/-! ## A048798.P6978652070558261259

`A392169(n+1)/A001615(n+1)`
-/

namespace A048798.P6978652070558261259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A392169 (n + 1) : ℚ) / (A001615 (n + 1) : ℚ)

end

end A048798.P6978652070558261259

namespace A048798

/-- `A392169(n+1)/A001615(n+1)` -/
def P6978652070558261259.Spec : Prop :=
  ∀ n, P6978652070558261259.a n = (A048798 (n + 1) : ℚ)

end A048798

/-! ## A048798.P1181140830435212806

`A019555(n+1)²/A000189(n+1)`
-/

namespace A048798.P1181140830435212806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019555 (n + 1) ^ 2 : ℚ) / (A000189 (n + 1) : ℚ)

end

end A048798.P1181140830435212806

namespace A048798

/-- `A019555(n+1)²/A000189(n+1)` -/
def P1181140830435212806.Spec : Prop :=
  ∀ n, P1181140830435212806.a n = (A048798 (n + 1) : ℚ)

end A048798

/-! ## A048798.P13542099924894184737

`A007913(A050985(n+1))*A056552(n+1)`
-/

namespace A048798.P13542099924894184737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A050985 (n + 1)).toNat * A056552 (n + 1)

end

end A048798.P13542099924894184737

namespace A048798

/-- `A007913(A050985(n+1))*A056552(n+1)` -/
def P13542099924894184737.Spec : Prop :=
  ∀ n, P13542099924894184737.a n = A048798 (n + 1)

end A048798

/-! ## A048798.P16115588988089401065

`A056552(n+1)²/A007913(A000189(n+1))`
-/

namespace A048798.P16115588988089401065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056552 (n + 1) ^ 2 : ℚ) / (A007913 (A000189 (n + 1)).toNat : ℚ)

end

end A048798.P16115588988089401065

namespace A048798

/-- `A056552(n+1)²/A007913(A000189(n+1))` -/
def P16115588988089401065.Spec : Prop :=
  ∀ n, P16115588988089401065.a n = (A048798 (n + 1) : ℚ)

end A048798

/-! ## A048798.P5617526291852103792

`A056552(n+1)*A056552(A056552(n+1)*A057521(n+1))`
-/

namespace A048798.P5617526291852103792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056552 (n + 1) * A056552 (A056552 (n + 1) * A057521 (n + 1)).toNat

end

end A048798.P5617526291852103792

namespace A048798

/-- `A056552(n+1)*A056552(A056552(n+1)*A057521(n+1))` -/
def P5617526291852103792.Spec : Prop :=
  ∀ n, P5617526291852103792.a n = A048798 (n + 1)

end A048798

/-! ## A048798.P11532758665584015884

`A019555(n+1)²/A019555(A003557(n+1)²)`
-/

namespace A048798.P11532758665584015884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019555 (n + 1) ^ 2 : ℚ) / (A019555 (A003557 (n + 1) ^ 2).toNat : ℚ)

end

end A048798.P11532758665584015884

namespace A048798

/-- `A019555(n+1)²/A019555(A003557(n+1)²)` -/
def P11532758665584015884.Spec : Prop :=
  ∀ n, P11532758665584015884.a n = (A048798 (n + 1) : ℚ)

end A048798

/-! ## A048798.P14232712823381585896

`A050985((n+1)²)`
-/

namespace A048798.P14232712823381585896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 ((n + 1) ^ 2)

end

end A048798.P14232712823381585896

namespace A048798

/-- `A050985((n+1)²)` -/
def P14232712823381585896.Spec : Prop :=
  ∀ n, P14232712823381585896.a n = A048798 (n + 1)

end A048798

/-! ## A048798.P15202242942609654316

`(n+1)²/A008834((n+1)²)`
-/

namespace A048798.P15202242942609654316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A008834 ((n + 1) ^ 2) : ℚ)

end

end A048798.P15202242942609654316

namespace A048798

/-- `(n+1)²/A008834((n+1)²)` -/
def P15202242942609654316.Spec : Prop :=
  ∀ n, P15202242942609654316.a n = (A048798 (n + 1) : ℚ)

end A048798

/-! ## A048798.P9184768586216897204

`A056555(A050985(n+1)*A056552(n+1))`
-/

namespace A048798.P9184768586216897204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056555 (A050985 (n + 1) * A056552 (n + 1)).toNat

end

end A048798.P9184768586216897204

namespace A048798

/-- `A056555(A050985(n+1)*A056552(n+1))` -/
def P9184768586216897204.Spec : Prop :=
  ∀ n, P9184768586216897204.a n = A048798 (n + 1)

end A048798

/-! ## A048798.P16258340601245270885

`A050985(A008834(n+1))*A050985(A254767(n+1))`
-/

namespace A048798.P16258340601245270885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (A008834 (n + 1)).toNat * A050985 (A254767 (n + 1)).toNat

end

end A048798.P16258340601245270885

namespace A048798

/-- `A050985(A008834(n+1))*A050985(A254767(n+1))` -/
def P16258340601245270885.Spec : Prop :=
  ∀ n, P16258340601245270885.a n = A048798 (n + 1)

end A048798

/-! ## A048798.P5315638599485559153

`A056552(A050985(n+1)*A056552(n+1))*A056552(n+1)`
-/

namespace A048798.P5315638599485559153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056552 (A050985 (n + 1) * A056552 (n + 1)).toNat * A056552 (n + 1)

end

end A048798.P5315638599485559153

namespace A048798

/-- `A056552(A050985(n+1)*A056552(n+1))*A056552(n+1)` -/
def P5315638599485559153.Spec : Prop :=
  ∀ n, P5315638599485559153.a n = A048798 (n + 1)

end A048798

/-! ## A048798.P2003903278027445580

`A056552(A056192(n+1)*A056552(n+1))*A056552(n+1)`
-/

namespace A048798.P2003903278027445580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056552 (A056192 (n + 1) * A056552 (n + 1)).toNat * A056552 (n + 1)

end

end A048798.P2003903278027445580

namespace A048798

/-- `A056552(A056192(n+1)*A056552(n+1))*A056552(n+1)` -/
def P2003903278027445580.Spec : Prop :=
  ∀ n, P2003903278027445580.a n = A048798 (n + 1)

end A048798

/-!
# A048799: Decimal expansion of Sum_{n >= 2} 1/S(n)!, where S(n) is the Kempner number A002034(n).

The programs for A048799, there is no canonical definition to state claims against.
-/

/-! ## A048799.P8471776970595170934

`A071120(n)-floor(acot(n))`
-/

namespace A048799.P8471776970595170934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071120 (n + 1) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A048799.P8471776970595170934

/-! ## A048799.P13488442248841483850

`A071120(A000038(n)²+n)`
-/

namespace A048799.P13488442248841483850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071120 ((A000038 n ^ 2 + (n : ℤ)).toNat + 1)

end

end A048799.P13488442248841483850

/-! ## A048799.P8505190850563084286

`A071120(n)/A000038(n)!`
-/

namespace A048799.P8505190850563084286
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071120 (n + 1) : ℚ) / (Nat.factorial (A000038 n).toNat : ℚ)

end

end A048799.P8505190850563084286

/-! ## A048799.P10387760192748439964

`A071120(2*A000038(n)+n)`
-/

namespace A048799.P10387760192748439964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071120 ((2 * A000038 n + (n : ℤ)).toNat + 1)

end

end A048799.P10387760192748439964

/-! ## A048799.P14677606186856999304

`A071120(n)-A036987(2*n)`
-/

namespace A048799.P14677606186856999304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071120 (n + 1) - A036987 (2 * n)

end

end A048799.P14677606186856999304

/-! ## A048799.P9468052592370022825

`A071120(n)^A226523(n+1)²`
-/

namespace A048799.P9468052592370022825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071120 (n + 1) : ℚ) ^ (A226523 (n + 1) ^ 2 : ℤ)

end

end A048799.P9468052592370022825

/-! ## A048799.P6416622981949972243

`A071120(n)-A000035(A006093(n+1))`
-/

namespace A048799.P6416622981949972243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071120 (n + 1) - A000035 (A006093 (n + 1)).toNat

end

end A048799.P6416622981949972243

/-! ## A048799.P12786487732517068652

`A071120(n)^A001221(∏[char[∑[n+1]]+1])`
-/

namespace A048799.P12786487732517068652
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071120 (n + 1) : ℚ) ^ (A001221 (∏ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A048799.P12786487732517068652

/-! ## A048799.P8092042632374286943

`A071120(n)^A053616(A000124(n))`
-/

namespace A048799.P8092042632374286943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071120 (n + 1) : ℚ) ^ (A053616 (A000124 n).toNat : ℤ)

end

end A048799.P8092042632374286943

/-! ## A048799.P17305882770176854793

`A071120(n)+A008683(∏[char[∑[n]]+1])`
-/

namespace A048799.P17305882770176854793
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071120 (n + 1) + A008683 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A048799.P17305882770176854793

