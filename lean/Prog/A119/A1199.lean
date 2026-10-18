import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
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
import Seq.B002.C006
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
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B011.C001
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
# A119900: Triangle read by rows: T(n,k) is the number of binary words of length n with k strictly increasing runs, for 0<=k<=n.

The programs for A119900, the canonical program `A119900.P12631817968393924084` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119900 has offset 0).

The definition of A119900 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119900.P12631817968393924084

`C(∑[A010054(n)], A099375(n))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A119900

/-- `C(∑[A010054(n)], A099375(n))` -/
def P12631817968393924084.Spec : Prop :=
  ∀ n, (P12631817968393924084.a n : ℤ) = A119900 n

theorem P12631817968393924084.correct : P12631817968393924084.Spec := by
  intro n
  simp only [A119900]

end A119900

/-! ## A119900.P9172965427264718890

`C(A002024(n+1), A099375(n))`
-/

namespace A119900.P9172965427264718890
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002024 (n + 1)).toNat (A099375 n).toNat

end

end A119900.P9172965427264718890

namespace A119900

/-- `C(A002024(n+1), A099375(n))` -/
def P9172965427264718890.Spec : Prop :=
  ∀ n, (P9172965427264718890.a n : ℤ) = A119900 n

end A119900

/-! ## A119900.P6159566360326766191

`C(A003056(n)+1, A099375(n))`
-/

namespace A119900.P6159566360326766191
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n + 1).toNat (A099375 n).toNat

end

end A119900.P6159566360326766191

namespace A119900

/-- `C(A003056(n)+1, A099375(n))` -/
def P6159566360326766191.Spec : Prop :=
  ∀ n, (P6159566360326766191.a n : ℤ) = A119900 n

end A119900

/-! ## A119900.P16351435917056064958

`A007318(A132118(n+1))*A101688(n)`
-/

namespace A119900.P16351435917056064958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A132118 (n + 1)).toNat * A101688 n

end

end A119900.P16351435917056064958

namespace A119900

/-- `A007318(A132118(n+1))*A101688(n)` -/
def P16351435917056064958.Spec : Prop :=
  ∀ n, P16351435917056064958.a n = A119900 n

end A119900

/-! ## A119900.P13600121026256784559

`C(A003056(n)+1, A005408(A025581(n)))`
-/

namespace A119900.P13600121026256784559
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n + 1).toNat (A005408 (A025581 n).toNat).toNat

end

end A119900.P13600121026256784559

namespace A119900

/-- `C(A003056(n)+1, A005408(A025581(n)))` -/
def P13600121026256784559.Spec : Prop :=
  ∀ n, (P13600121026256784559.a n : ℤ) = A119900 n

end A119900

/-! ## A119900.P6546385663218478878

`C(A002260(A127739(n+1)), A099375(n))`
-/

namespace A119900.P6546385663218478878
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002260 (A127739 (n + 1)).toNat).toNat (A099375 n).toNat

end

end A119900.P6546385663218478878

namespace A119900

/-- `C(A002260(A127739(n+1)), A099375(n))` -/
def P6546385663218478878.Spec : Prop :=
  ∀ n, (P6546385663218478878.a n : ℤ) = A119900 n

end A119900

/-! ## A119900.P12815820718783316997

`A210216(n+1)+A027935(n)-A210215(n+1)`
-/

namespace A119900.P12815820718783316997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210216 (n + 1) + (A027935 n - A210215 (n + 1))

end

end A119900.P12815820718783316997

namespace A119900

/-- `A210216(n+1)+A027935(n)-A210215(n+1)` -/
def P12815820718783316997.Spec : Prop :=
  ∀ n, P12815820718783316997.a n = A119900 n

end A119900

/-! ## A119900.P14142349560291118588

`Δ[A102363(n-A053616(n))]`
-/

namespace A119900.P14142349560291118588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 ((n : ℤ) - A053616 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A119900.P14142349560291118588

namespace A119900

/-- `Δ[A102363(n-A053616(n))]` -/
def P14142349560291118588.Spec : Prop :=
  ∀ n, P14142349560291118588.a n = A119900 n

end A119900

/-! ## A119900.P6054924064890641435

`A202064(A103128(n+2)²-(n+1))`
-/

namespace A119900.P6054924064890641435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202064 (A103128 (n + 2) ^ 2 - (n + 1 : ℤ)).toNat

end

end A119900.P6054924064890641435

namespace A119900

/-- `A202064(A103128(n+2)²-(n+1))` -/
def P6054924064890641435.Spec : Prop :=
  ∀ n, P6054924064890641435.a n = A119900 n

end A119900

/-! ## A119900.P8419231757101602741

`A202064(A061579(n))`
-/

namespace A119900.P8419231757101602741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202064 (A061579 n).toNat

end

end A119900.P8419231757101602741

namespace A119900

/-- `A202064(A061579(n))` -/
def P8419231757101602741.Spec : Prop :=
  ∀ n, P8419231757101602741.a n = A119900 n

end A119900

/-! ## A119900.P6554052843097868465

`A131047(A185180(n+1))`
-/

namespace A119900.P6554052843097868465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131047 (A185180 (n + 1)).toNat

end

end A119900.P6554052843097868465

namespace A119900

/-- `A131047(A185180(n+1))` -/
def P6554052843097868465.Spec : Prop :=
  ∀ n, P6554052843097868465.a n = A119900 n

end A119900

/-! ## A119900.P18345616619161283498

`C(A000196(2*n), A053186(2*n+1))`
-/

namespace A119900.P18345616619161283498
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000196 (2 * n)).toNat (A053186 (2 * n + 1)).toNat

end

end A119900.P18345616619161283498

namespace A119900

/-- `C(A000196(2*n), A053186(2*n+1))` -/
def P18345616619161283498.Spec : Prop :=
  ∀ n, (P18345616619161283498.a n : ℤ) = A119900 n

end A119900

/-! ## A119900.P2688774466385770032

`A178112(A016825(n)+A002024(n+1))`
-/

namespace A119900.P2688774466385770032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178112 (A016825 n + A002024 (n + 1)).toNat

end

end A119900.P2688774466385770032

namespace A119900

/-- `A178112(A016825(n)+A002024(n+1))` -/
def P2688774466385770032.Spec : Prop :=
  ∀ n, P2688774466385770032.a n = A119900 n

end A119900

/-! ## A119900.P8690740809054055763

`A178112(A016789(n)+A007401(n+1))`
-/

namespace A119900.P8690740809054055763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178112 (A016789 n + A007401 (n + 1)).toNat

end

end A119900.P8690740809054055763

namespace A119900

/-- `A178112(A016789(n)+A007401(n+1))` -/
def P8690740809054055763.Spec : Prop :=
  ∀ n, P8690740809054055763.a n = A119900 n

end A119900

/-! ## A119900.P17208151196251044373

`A204293(A004767(n)+A003056(n))`
-/

namespace A119900.P17208151196251044373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204293 (A004767 n + A003056 n).toNat

end

end A119900.P17208151196251044373

namespace A119900

/-- `A204293(A004767(n)+A003056(n))` -/
def P17208151196251044373.Spec : Prop :=
  ∀ n, P17208151196251044373.a n = A119900 n

end A119900

/-! ## A119900.P3750141213852427264

`A103633(A185871(n+1)-1)`
-/

namespace A119900.P3750141213852427264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103633 (A185871 (n + 1) - 1).toNat

end

end A119900.P3750141213852427264

namespace A119900

/-- `A103633(A185871(n+1)-1)` -/
def P3750141213852427264.Spec : Prop :=
  ∀ n, P3750141213852427264.a n = A119900 n

end A119900

/-! ## A119900.P572363272210898041

`A051159(3*A014132(n+1)+n)`
-/

namespace A119900.P572363272210898041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051159 (3 * A014132 (n + 1) + (n : ℤ)).toNat

end

end A119900.P572363272210898041

namespace A119900

/-- `A051159(3*A014132(n+1)+n)` -/
def P572363272210898041.Spec : Prop :=
  ∀ n, P572363272210898041.a n = A119900 n

end A119900

/-! ## A119900.P4586642000335589868

`A115951(n)/A135573(n)`
-/

namespace A119900.P4586642000335589868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115951 n : ℚ) / (A135573 n : ℚ)

end

end A119900.P4586642000335589868

namespace A119900

/-- `A115951(n)/A135573(n)` -/
def P4586642000335589868.Spec : Prop :=
  ∀ n, P4586642000335589868.a n = (A119900 n : ℚ)

end A119900

/-!
# A119901: Difference between two consecutive squares enclosing 3^(2n+1).

The programs for A119901, the canonical program `A119901.P3722517848602429551` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119901 has offset 0).

The definition of A119901 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A119901.P3722517848602429551

`2*floor(3^((2*n+1)/2))+1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A119901

/-- `2*floor(3^((2*n+1)/2))+1` -/
def P3722517848602429551.Spec : Prop :=
  ∀ n, P3722517848602429551.a n = A119901 n

theorem P3722517848602429551.correct : P3722517848602429551.Spec := by
  intro n
  simp only [A119901]

end A119901

/-! ## A119901.P3506710501949406093

`or(1, 2*A017913(2*n+1))`
-/

namespace A119901.P3506710501949406093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (2 * A017913 (2 * n + 1))

end

end A119901.P3506710501949406093

namespace A119901

/-- `or(1, 2*A017913(2*n+1))` -/
def P3506710501949406093.Spec : Prop :=
  ∀ n, P3506710501949406093.a n = A119901 n

end A119901

/-! ## A119901.P14037056662838502171

`or(1, A077627(Δ[n²]))`
-/

namespace A119901.P14037056662838502171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A077627 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A119901.P14037056662838502171

namespace A119901

/-- `or(1, A077627(Δ[n²]))` -/
def P14037056662838502171.Spec : Prop :=
  ∀ n, P14037056662838502171.a n = A119901 n

end A119901

/-! ## A119901.P6137434692446720878

`xor(1, A077627(2*n+1))`
-/

namespace A119901.P6137434692446720878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A077627 (2 * n + 1))

end

end A119901.P6137434692446720878

namespace A119901

/-- `xor(1, A077627(2*n+1))` -/
def P6137434692446720878.Spec : Prop :=
  ∀ n, P6137434692446720878.a n = A119901 n

end A119901

/-! ## A119901.P16576690532474560881

`record[A077627(lcm(2, n+2)/2)+1]`
-/

namespace A119901.P16576690532474560881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077627 (SequenceMachineLib.roundAway ((Nat.lcm 2 (n + 2) : ℚ) / 2)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119901.P16576690532474560881

namespace A119901

/-- `record[A077627(lcm(2, n+2)/2)+1]` -/
def P16576690532474560881.Spec : Prop :=
  ∀ n, P16576690532474560881.a n = A119901 n

end A119901

/-!
# A119905: Numbers k such that gcd(k, R_k) = 1, where R_k is the repunit (10^k -1)/9 = A002275(k).

The programs for A119905, there is no canonical definition to state claims against.
-/

/-! ## A119905.P9377585564753031301

`lt[A046053(n+1), A102347(n+1)]+1`
-/

namespace A119905.P9377585564753031301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046053 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102347 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A119905.P9377585564753031301

/-! ## A119905.P191839104198034751

`eq[1, gcd(n, A255346(A085296(n²+1)+1))]`
-/

namespace A119905.P191839104198034751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A255346 (A085296 (n ^ 2 + 1) + 1).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A119905.P191839104198034751

/-! ## A119905.P2878690390882436623

`eq[1, gcd(n, floor(10^n/9))]`
-/

namespace A119905.P2878690390882436623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) ⌊(10 ^ n : ℚ) / 9⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A119905.P2878690390882436623

/-! ## A119905.P847426736088848967

`lt[A080427(A002522(n)), A008575(n+1)]`
-/

namespace A119905.P847426736088848967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080427 (A002522 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008575 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A119905.P847426736088848967

/-! ## A119905.P17237925902296461183

`lt[A295883(A296373(2*(n+2))), A120325(2*n)]`
-/

namespace A119905.P17237925902296461183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295883 (A296373 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120325 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A119905.P17237925902296461183

/-!
# A119906: Largest number whose factorial is less than 10^(10^n).

The programs for A119906, there is no canonical definition to state claims against.
-/

/-! ## A119906.P6219048876872347765

`A243293(10^n)`
-/

namespace A119906.P6219048876872347765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243293 (10 ^ n)

end

end A119906.P6219048876872347765

/-!
# A119907: Number of partitions of n such that if k is the largest part, then k-2 occurs as a part.

The programs for A119907, there is no canonical definition to state claims against.
-/

/-! ## A119907.P2943016872442256815

`A002865(n+2)-∑[char[2*n]]`
-/

namespace A119907.P2943016872442256815
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (n + 2) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A119907.P2943016872442256815

/-! ## A119907.P12378735903014021711

`∑[abs(or(1, n)-A053445(n)-n)]`
-/

namespace A119907.P12378735903014021711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.lor 1 n : ℤ) - A053445 n - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119907.P12378735903014021711

/-! ## A119907.P3778086104824315559

`∑[A165652(n+2)-a(n-1)]` with `a(0)=0`
-/

namespace A119907.P3778086104824315559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A165652 (n + 2) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119907.P3778086104824315559

/-! ## A119907.P13749433345881069013

`A187219(n+2)-A008619(n)`
-/

namespace A119907.P13749433345881069013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187219 (n + 2) - A008619 n

end

end A119907.P13749433345881069013

/-! ## A119907.P6648345064419466230

`∑[Δ[A002865(n+1)]-A000035(n+1)]`
-/

namespace A119907.P6648345064419466230
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A000035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119907.P6648345064419466230

/-! ## A119907.P16940234367400600489

`Δ[A362548(n+1)]`
-/

namespace A119907.P16940234367400600489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362548 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A119907.P16940234367400600489

/-! ## A119907.P12933013526057936358

`floor(Δ[A000041(n+1)-(n/2)²])`
-/

namespace A119907.P12933013526057936358
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 (n + 1) : ℚ) - ((n : ℚ) / 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A119907.P12933013526057936358

/-! ## A119907.P11966272734468706940

`Δ[A000041(n+1)]-A008619(n)`
-/

namespace A119907.P11966272734468706940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A008619 n

end

end A119907.P11966272734468706940

/-! ## A119907.P17671662999342355404

`A004250(n+2)-A000065(n+1)`
-/

namespace A119907.P17671662999342355404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004250 (n + 2) - A000065 (n + 1)

end

end A119907.P17671662999342355404

/-! ## A119907.P6709949972407713532

`A058984(n+2)-A000041(n+1)`
-/

namespace A119907.P6709949972407713532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058984 (n + 2) - A000041 (n + 1)

end

end A119907.P6709949972407713532

/-! ## A119907.P9155420137048880774

`A362548(n+2)-A362548(n+1)`
-/

namespace A119907.P9155420137048880774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362548 (n + 2) - A362548 (n + 1)

end

end A119907.P9155420137048880774

/-! ## A119907.P13598055512583976385

`Δ[A000041(n+1)]-A110654(n+1)`
-/

namespace A119907.P13598055512583976385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A110654 (n + 1)

end

end A119907.P13598055512583976385

/-! ## A119907.P11074561394435769190

`Δ[A000041(n+1)]-∑[A153063(a(n-1))]` with `a(0)=1`
-/

namespace A119907.P11074561394435769190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A153063 (f2 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A119907.P11074561394435769190

/-! ## A119907.P6415187893716827451

`A000041(n+2)-A000041(n+1)-(A002620(n+2)-A002620(n+1))`
-/

namespace A119907.P6415187893716827451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 2) - A000041 (n + 1) - (A002620 (n + 2) - A002620 (n + 1))

end

end A119907.P6415187893716827451

/-! ## A119907.P17891704212299632679

`Δ[A000041(n+1)]-(A002265(2*n)+1)`
-/

namespace A119907.P17891704212299632679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A002265 (2 * n) + 1)

end

end A119907.P17891704212299632679

/-!
# A119910: Period 6: repeat [1, 3, 2, -1, -3, -2].

The programs for A119910, the canonical program `A119910.P7763661495810261339` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119910 has offset 1).

The definition of A119910 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A119910.P7763661495810261339

`-a(n-3)` with `a(0)=1, a(1)=3, a(2)=2`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A119910

/-- `-a(n-3)` -/
def P7763661495810261339.Spec : Prop :=
  ∀ n, P7763661495810261339.a n = A119910 (n + 1)

theorem P7763661495810261339.correct : P7763661495810261339.Spec := by
  intro n
  simp only [A119910, Nat.add_sub_cancel]

end A119910

/-!
# A119911: Natural numbers with number of divisors not equal to a Lucas number.

The programs for A119911, the canonical program `A119911.P4672350782965020361` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119911 has offset 1).

The definition of A119911 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5975 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119911.P489105111294503498

`eq[0, A123927(n+1)]+1`
-/

namespace A119911.P489105111294503498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123927 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A119911.P489105111294503498

namespace A119911

/-- `eq[0, A123927(n+1)]+1` -/
def P489105111294503498.Spec : Prop :=
  ∀ n, (P489105111294503498.a n : ℤ) = A119911 (n + 1)

end A119911

/-! ## A119911.P9365721711255003690

`eq[0, A102460(A000005(n+1))]+1`
-/

namespace A119911.P9365721711255003690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102460 (A000005 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A119911.P9365721711255003690

namespace A119911

/-- `eq[0, A102460(A000005(n+1))]+1` -/
def P9365721711255003690.Spec : Prop :=
  ∀ n, (P9365721711255003690.a n : ℤ) = A119911 (n + 1)

end A119911

/-! ## A119911.P5263998819929988057

`A344180(eq[0, A123927(A344180(n))])`
-/

namespace A119911.P5263998819929988057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123927 (A344180 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A119911.P5263998819929988057

namespace A119911

/-- `A344180(eq[0, A123927(A344180(n))])` -/
def P5263998819929988057.Spec : Prop :=
  ∀ n, P5263998819929988057.a n = A119911 (n + 1)

end A119911

/-! ## A119911.P4672350782965020361

`eq[0, A102460(A032741(n)+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A119911

/-- `eq[0, A102460(A032741(n)+1)]` -/
def P4672350782965020361.Spec : Prop :=
  ∀ n, (P4672350782965020361.a n : ℤ) = A119911 (n + 1)

theorem P4672350782965020361.correct : P4672350782965020361.Spec := by
  intro n
  simp only [A119911, Nat.add_sub_cancel]

end A119911

/-! ## A119911.P4203437017340445752

`eq[0, A123927(A233583(n+1))]`
-/

namespace A119911.P4203437017340445752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123927 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A119911.P4203437017340445752

namespace A119911

/-- `eq[0, A123927(A233583(n+1))]` -/
def P4203437017340445752.Spec : Prop :=
  ∀ n, (P4203437017340445752.a n : ℤ) = A119911 (n + 1)

end A119911

/-! ## A119911.P17303724802297981341

`eq[A069137(n+1)*A105700(n), A010057(n)]`
-/

namespace A119911.P17303724802297981341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069137 (n + 1) * A105700 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A119911.P17303724802297981341

namespace A119911

/-- `eq[A069137(n+1)*A105700(n), A010057(n)]` -/
def P17303724802297981341.Spec : Prop :=
  ∀ n, (P17303724802297981341.a n : ℤ) = A119911 (n + 1)

end A119911

/-!
# A119912: Scan A076368, discard any nonprimes.

The programs for A119912, there is no canonical definition to state claims against.
-/

/-! ## A119912.P3941200284318153101

`p?[p?[2*n+1]-(p?[xor(1, n)+1]-1)]`
-/

namespace A119912.P3941200284318153101
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - ((f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119912.P3941200284318153101

/-! ## A119912.P4661281013174764232

`p?[Δ[A013634(n)]]`
-/

namespace A119912.P4661281013174764232
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013634 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119912.P4661281013174764232

/-! ## A119912.P15220750155327638699

`p?[A076368(n+1)]`
-/

namespace A119912.P15220750155327638699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119912.P15220750155327638699

/-! ## A119912.P5911420242792804273

`p?[A230846(n+2)]`
-/

namespace A119912.P5911420242792804273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230846 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119912.P5911420242792804273

/-! ## A119912.P3061554279198787757

`p?[A230847(n+2)]`
-/

namespace A119912.P3061554279198787757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230847 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119912.P3061554279198787757

/-! ## A119912.P3187889271868482165

`p?[Δ[A014688(n+1)]]`
-/

namespace A119912.P3187889271868482165
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119912.P3187889271868482165

/-! ## A119912.P8382167257016459712

`p?[Δ[A051697(n)]+1]`
-/

namespace A119912.P8382167257016459712
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051697 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119912.P8382167257016459712

/-! ## A119912.P2537563267790383434

`p?[Δ[A095116(n+1)]]`
-/

namespace A119912.P2537563267790383434
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095116 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119912.P2537563267790383434

/-! ## A119912.P16782754930168536534

`p?[Δ[A151800(n)]+1]`
-/

namespace A119912.P16782754930168536534
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119912.P16782754930168536534

/-! ## A119912.P7072904394994048210

`p?[Δ[A007920(n)]+2]`
-/

namespace A119912.P7072904394994048210
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119912.P7072904394994048210

/-!
# A119913: Number of directed simple cycles in the complete graph K_n.

The programs for A119913, the canonical program `A119913.P9282675612654689328` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119913 has offset 1).

The definition of A119913 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A119913.P9282675612654689328

`2*A002807(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A119913

/-- `2*A002807(n+1)` -/
def P9282675612654689328.Spec : Prop :=
  ∀ n, P9282675612654689328.a n = A119913 (n + 1)

theorem P9282675612654689328.correct : P9282675612654689328.Spec := by
  intro n
  simp only [A119913, Nat.add_sub_cancel]

end A119913

/-! ## A119913.P10448977134749539702

`∑[n!*∑[n/n!]-n]`
-/

namespace A119913.P10448977134749539702
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.factorial n : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f2 j) - (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119913.P10448977134749539702

namespace A119913

/-- `∑[n!*∑[n/n!]-n]` -/
def P10448977134749539702.Spec : Prop :=
  ∀ n, P10448977134749539702.a n = (A119913 (n + 1) : ℚ)

end A119913

/-! ## A119913.P4722543265218420718

`∑[n*(a(n-1)-1+n)]` with `a(0)=0`
-/

namespace A119913.P4722543265218420718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (n : ℤ) * (f1 (n - 1) - 1 + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119913.P4722543265218420718

namespace A119913

/-- `∑[n*(a(n-1)-1+n)]` -/
def P4722543265218420718.Spec : Prop :=
  ∀ n, P4722543265218420718.a n = A119913 (n + 1)

end A119913

/-! ## A119913.P16027608815793728098

`∑[n*(n-(1-a(n-1)))]` with `a(0)=0`
-/

namespace A119913.P16027608815793728098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (n : ℤ) * ((n : ℤ) - (1 - f1 (n - 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119913.P16027608815793728098

namespace A119913

/-- `∑[n*(n-(1-a(n-1)))]` -/
def P16027608815793728098.Spec : Prop :=
  ∀ n, P16027608815793728098.a n = A119913 (n + 1)

end A119913

/-! ## A119913.P15368176969705305418

`∑[lcm(n, 1-(a(n-1)+n))]` with `a(0)=0`
-/

namespace A119913.P15368176969705305418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  Int.lcm (n : ℤ) (1 - (f1 (n - 1) + n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119913.P15368176969705305418

namespace A119913

/-- `∑[lcm(n, 1-(a(n-1)+n))]` -/
def P15368176969705305418.Spec : Prop :=
  ∀ n, (P15368176969705305418.a n : ℤ) = A119913 (n + 1)

end A119913

/-! ## A119913.P1749621991196590084

`∑[A038154(n)]`
-/

namespace A119913.P1749621991196590084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038154 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119913.P1749621991196590084

namespace A119913

/-- `∑[A038154(n)]` -/
def P1749621991196590084.Spec : Prop :=
  ∀ n, P1749621991196590084.a n = A119913 (n + 1)

end A119913

/-! ## A119913.P9412102978654732642

`∑[2*A038155(n)]`
-/

namespace A119913.P9412102978654732642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038155 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119913.P9412102978654732642

namespace A119913

/-- `∑[2*A038155(n)]` -/
def P9412102978654732642.Spec : Prop :=
  ∀ n, P9412102978654732642.a n = A119913 (n + 1)

end A119913

/-! ## A119913.P17956818188159475424

`∑[A007526(n)-n]`
-/

namespace A119913.P17956818188159475424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007526 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119913.P17956818188159475424

namespace A119913

/-- `∑[A007526(n)-n]` -/
def P17956818188159475424.Spec : Prop :=
  ∀ n, P17956818188159475424.a n = A119913 (n + 1)

end A119913

/-! ## A119913.P2393579179216858650

`Δ[2*∑[A002807(n)]]`
-/

namespace A119913.P2393579179216858650
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002807 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A119913.P2393579179216858650

namespace A119913

/-- `Δ[2*∑[A002807(n)]]` -/
def P2393579179216858650.Spec : Prop :=
  ∀ n, P2393579179216858650.a n = A119913 (n + 1)

end A119913

/-! ## A119913.P14191786446445287115

`∑[A081114(∑[n])-n]`
-/

namespace A119913.P14191786446445287115
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081114 (∑ j ∈ Finset.range (n + 1), f2 j) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119913.P14191786446445287115

namespace A119913

/-- `∑[A081114(∑[n])-n]` -/
def P14191786446445287115.Spec : Prop :=
  ∀ n, P14191786446445287115.a n = A119913 (n + 1)

end A119913

/-!
# A119915: Number of ternary words of length n and having exactly one run of 0's of odd length.

The programs for A119915, the canonical program `A119915.P7571024474425089576` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119915 has offset 0).

The definition of A119915 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 257 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119915.P7571024474425089576

`A331321(n)-A052542(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A119915

/-- `A331321(n)-A052542(n)` -/
def P7571024474425089576.Spec : Prop :=
  ∀ n, P7571024474425089576.a n = A119915 n

theorem P7571024474425089576.correct : P7571024474425089576.Spec := by
  intro n
  simp only [A119915]

end A119915

/-! ## A119915.P13192265795088976095

`A000129(n)+2*A006645(n)`
-/

namespace A119915.P13192265795088976095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n + 2 * A006645 n

end

end A119915.P13192265795088976095

namespace A119915

/-- `A000129(n)+2*A006645(n)` -/
def P13192265795088976095.Spec : Prop :=
  ∀ n, P13192265795088976095.a n = A119915 n

end A119915

/-! ## A119915.P526842091619972346

`A331321(n)-Δ[Δ[A215928(n)]]`
-/

namespace A119915.P526842091619972346
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215928 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331321 n - (f1 (n + 1) - f1 n)

end

end A119915.P526842091619972346

namespace A119915

/-- `A331321(n)-Δ[Δ[A215928(n)]]` -/
def P526842091619972346.Spec : Prop :=
  ∀ n, P526842091619972346.a n = A119915 n

end A119915

/-! ## A119915.P3845817028760080633

`A000129(n)-∑[n*A176981(n)]`
-/

namespace A119915.P3845817028760080633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A176981 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119915.P3845817028760080633

namespace A119915

/-- `A000129(n)-∑[n*A176981(n)]` -/
def P3845817028760080633.Spec : Prop :=
  ∀ n, P3845817028760080633.a n = A119915 n

end A119915

/-! ## A119915.P11392515567759770988

`A331321(n)-A082766(2*n+1)`
-/

namespace A119915.P11392515567759770988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331321 n - A082766 (2 * n + 1)

end

end A119915.P11392515567759770988

namespace A119915

/-- `A331321(n)-A082766(2*n+1)` -/
def P11392515567759770988.Spec : Prop :=
  ∀ n, P11392515567759770988.a n = A119915 n

end A119915

/-! ## A119915.P9867538234076569107

`A006645(n+1)+A006645(n+1)-A093967(n)`
-/

namespace A119915.P9867538234076569107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006645 (n + 1) + (A006645 (n + 1) - A093967 n)

end

end A119915.P9867538234076569107

namespace A119915

/-- `A006645(n+1)+A006645(n+1)-A093967(n)` -/
def P9867538234076569107.Spec : Prop :=
  ∀ n, P9867538234076569107.a n = A119915 n

end A119915

/-! ## A119915.P6803255530336956069

`∑[A088210(n)%A088211(n)]`
-/

namespace A119915.P6803255530336956069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088210 n) (A088211 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119915.P6803255530336956069

namespace A119915

/-- `∑[A088210(n)%A088211(n)]` -/
def P6803255530336956069.Spec : Prop :=
  ∀ n, P6803255530336956069.a n = A119915 n

end A119915

/-! ## A119915.P2586504746164343968

`A268744(n+1)%A292327(n)`
-/

namespace A119915.P2586504746164343968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A268744 (n + 1)) (A292327 n)

end

end A119915.P2586504746164343968

namespace A119915

/-- `A268744(n+1)%A292327(n)` -/
def P2586504746164343968.Spec : Prop :=
  ∀ n, P2586504746164343968.a n = A119915 n

end A119915

/-! ## A119915.P13734695133426670970

`Δ[Δ[A006645(n)]]-A001333(n)`
-/

namespace A119915.P13734695133426670970
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006645 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001333 n

end

end A119915.P13734695133426670970

namespace A119915

/-- `Δ[Δ[A006645(n)]]-A001333(n)` -/
def P13734695133426670970.Spec : Prop :=
  ∀ n, P13734695133426670970.a n = A119915 n

end A119915

/-! ## A119915.P5879248990403897386

`Δ[(A093967(n)-A000129(n))/2]`
-/

namespace A119915.P5879248990403897386
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093967 n - A000129 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A119915.P5879248990403897386

namespace A119915

/-- `Δ[(A093967(n)-A000129(n))/2]` -/
def P5879248990403897386.Spec : Prop :=
  ∀ n, P5879248990403897386.a n = (A119915 n : ℚ)

end A119915

/-! ## A119915.P15735801785093021764

`A364553(n+1)-(A093967(n)+A026937(n))`
-/

namespace A119915.P15735801785093021764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364553 (n + 1) - (A093967 n + A026937 n)

end

end A119915.P15735801785093021764

namespace A119915

/-- `A364553(n+1)-(A093967(n)+A026937(n))` -/
def P15735801785093021764.Spec : Prop :=
  ∀ n, P15735801785093021764.a n = A119915 n

end A119915

/-! ## A119915.P14804251391935958338

`A088210(n)+A364553(n)-A364553(n+1)`
-/

namespace A119915.P14804251391935958338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088210 n + (A364553 n - A364553 (n + 1))

end

end A119915.P14804251391935958338

namespace A119915

/-- `A088210(n)+A364553(n)-A364553(n+1)` -/
def P14804251391935958338.Spec : Prop :=
  ∀ n, P14804251391935958338.a n = A119915 n

end A119915

/-!
# A119916: Number of runs of 0's of odd length in all ternary words of length n.

The programs for A119916, the canonical program `A119916.P14423396164035556990` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119916 has offset 0).

The definition of A119916 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A119916.P14423396164035556990

`((-1)^(n-1)+(3+4*n)*3^(n-1))/8`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A119916

/-- `((-1)^(n-1)+(3+4*n)*3^(n-1))/8` -/
def P14423396164035556990.Spec : Prop :=
  ∀ n, P14423396164035556990.a n = (A119916 n : ℚ)

end A119916

/-! ## A119916.P6990121910046782193

`(2*n+1)*3^(n-2)-a(n-1)` with `a(0)=0`
-/

namespace A119916.P6990121910046782193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (2 * n + 1 : ℚ) * (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ) - a (n - 1)

end

end A119916.P6990121910046782193

namespace A119916

/-- `(2*n+1)*3^(n-2)-a(n-1)` -/
def P6990121910046782193.Spec : Prop :=
  ∀ n, P6990121910046782193.a n = (A119916 n : ℚ)

end A119916

/-! ## A119916.P7542245275767644943

`∑[A120926(n)-a(n-1)]` with `a(0)=0`
-/

namespace A119916.P7542245275767644943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A120926 n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119916.P7542245275767644943

namespace A119916

/-- `∑[A120926(n)-a(n-1)]` -/
def P7542245275767644943.Spec : Prop :=
  ∀ n, P7542245275767644943.a n = A119916 n

end A119916

/-! ## A119916.P10103045796621791912

`Δ[5*a(n-1)-3*a(n-2)-9*a(n-3)]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=5, a(4)=22`
-/

namespace A119916.P10103045796621791912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 5, 22] fun n f1 =>
  5 * f1 (n - 1) - 3 * f1 (n - 2) - 9 * f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A119916.P10103045796621791912

namespace A119916

/-- `Δ[5*a(n-1)-3*a(n-2)-9*a(n-3)]` -/
def P10103045796621791912.Spec : Prop :=
  ∀ n, P10103045796621791912.a n = A119916 n

end A119916

/-! ## A119916.P10113527971776928694

`abs(a(n-1)-A229277(n)/3)` with `a(0)=0, a(1)=1`
-/

namespace A119916.P10113527971776928694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  |a (n - 1) - (A229277 n : ℚ) / 3|

end

end A119916.P10113527971776928694

namespace A119916

/-- `abs(a(n-1)-A229277(n)/3)` -/
def P10113527971776928694.Spec : Prop :=
  ∀ n, P10113527971776928694.a n = (A119916 n : ℚ)

end A119916

/-! ## A119916.P16379773713106805738

`Δ[floor(A176177(n)/8)]`
-/

namespace A119916.P16379773713106805738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A176177 n : ℚ) / 8⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A119916.P16379773713106805738

namespace A119916

/-- `Δ[floor(A176177(n)/8)]` -/
def P16379773713106805738.Spec : Prop :=
  ∀ n, P16379773713106805738.a n = A119916 n

end A119916

/-! ## A119916.P7438400466531524063

`round(A083877(n+1)/6)`
-/

namespace A119916.P7438400466531524063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A083877 (n + 1) : ℚ) / 6)

end

end A119916.P7438400466531524063

namespace A119916

/-- `round(A083877(n+1)/6)` -/
def P7438400466531524063.Spec : Prop :=
  ∀ n, P7438400466531524063.a n = A119916 n

end A119916

/-!
# A119917: Number of rationals in [0, 1) consisting just of repeating bits of period at most n.

The programs for A119917, the canonical program `A119917.P6613985970363786226` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119917 has offset 1).

The definition of A119917 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119917.P6613985970363786226

`∑[A038199(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A119917

/-- `∑[A038199(n+1)]` -/
def P6613985970363786226.Spec : Prop :=
  ∀ n, P6613985970363786226.a n = A119917 (n + 1)

theorem P6613985970363786226.correct : P6613985970363786226.Spec := by
  intro n
  simp only [A119917, Nat.add_sub_cancel]

end A119917

/-! ## A119917.P3642442916355054216

`∑[A056267(n+1)]+1`
-/

namespace A119917.P3642442916355054216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056267 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A119917.P3642442916355054216

namespace A119917

/-- `∑[A056267(n+1)]+1` -/
def P3642442916355054216.Spec : Prop :=
  ∀ n, P3642442916355054216.a n = A119917 (n + 1)

end A119917

/-! ## A119917.P15212261560890427071

`∑[A027375(n+1)]-1`
-/

namespace A119917.P15212261560890427071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027375 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A119917.P15212261560890427071

namespace A119917

/-- `∑[A027375(n+1)]-1` -/
def P15212261560890427071.Spec : Prop :=
  ∀ n, P15212261560890427071.a n = A119917 (n + 1)

end A119917

/-! ## A119917.P6393742447089925635

`2*A085945(n+1)-1`
-/

namespace A119917.P6393742447089925635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A085945 (n + 1) - 1

end

end A119917.P6393742447089925635

namespace A119917

/-- `2*A085945(n+1)-1` -/
def P6393742447089925635.Spec : Prop :=
  ∀ n, P6393742447089925635.a n = A119917 (n + 1)

end A119917

/-! ## A119917.P5824099481126980781

`∑[2*A056278(n+1)]+1`
-/

namespace A119917.P5824099481126980781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A119917.P5824099481126980781

namespace A119917

/-- `∑[2*A056278(n+1)]+1` -/
def P5824099481126980781.Spec : Prop :=
  ∀ n, P5824099481126980781.a n = A119917 (n + 1)

end A119917

/-! ## A119917.P8561216604600268761

`∑[2*A000740(n+1)]-1`
-/

namespace A119917.P8561216604600268761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000740 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A119917.P8561216604600268761

namespace A119917

/-- `∑[2*A000740(n+1)]-1` -/
def P8561216604600268761.Spec : Prop :=
  ∀ n, P8561216604600268761.a n = A119917 (n + 1)

end A119917

/-! ## A119917.P1329179348093863199

`∑[(n+1)*A059966(n+1)]`
-/

namespace A119917.P1329179348093863199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A059966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119917.P1329179348093863199

namespace A119917

/-- `∑[(n+1)*A059966(n+1)]` -/
def P1329179348093863199.Spec : Prop :=
  ∀ n, P1329179348093863199.a n = A119917 (n + 1)

end A119917

/-! ## A119917.P4484273868625436348

`∑[(n+1)*A001037(n+1)]-1`
-/

namespace A119917.P4484273868625436348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A119917.P4484273868625436348

namespace A119917

/-- `∑[(n+1)*A001037(n+1)]-1` -/
def P4484273868625436348.Spec : Prop :=
  ∀ n, P4484273868625436348.a n = A119917 (n + 1)

end A119917

/-! ## A119917.P12751025354338006874

`∑[A056278(n+1)+A000740(n+1)]`
-/

namespace A119917.P12751025354338006874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056278 (n + 1) + A000740 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119917.P12751025354338006874

namespace A119917

/-- `∑[A056278(n+1)+A000740(n+1)]` -/
def P12751025354338006874.Spec : Prop :=
  ∀ n, P12751025354338006874.a n = A119917 (n + 1)

end A119917

/-! ## A119917.P16295819539082821167

`A119921(n+1)/2^(n+1)`
-/

namespace A119917.P16295819539082821167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119921 (n + 1) : ℚ) / (2 ^ (n + 1) : ℚ)

end

end A119917.P16295819539082821167

namespace A119917

/-- `A119921(n+1)/2^(n+1)` -/
def P16295819539082821167.Spec : Prop :=
  ∀ n, P16295819539082821167.a n = (A119917 (n + 1) : ℚ)

end A119917

/-! ## A119917.P4638588719125539539

`A119921(n+1)/A119920(n+2)*A038199(n+2)`
-/

namespace A119917.P4638588719125539539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119921 (n + 1) : ℚ) / (A119920 (n + 2) : ℚ) * (A038199 (n + 2) : ℚ)

end

end A119917.P4638588719125539539

namespace A119917

/-- `A119921(n+1)/A119920(n+2)*A038199(n+2)` -/
def P4638588719125539539.Spec : Prop :=
  ∀ n, P4638588719125539539.a n = (A119917 (n + 1) : ℚ)

end A119917

/-!
# A119918: Table read by antidiagonals: number of rationals in [0, 1) having exactly n preperiodic bits, then exactly k periodic bits (read up antidiagonals).

The programs for A119918, there is no canonical definition to state claims against.
-/

/-! ## A119918.P281268129516395520

`A059966(A002260(n+1))*A296612(n)`
-/

namespace A119918.P281268129516395520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059966 (A002260 (n + 1)).toNat * A296612 n

end

end A119918.P281268129516395520

/-!
# A119919: Table read by antidiagonals: number of rationals in [0, 1) having at most n preperiodic bits, then at most k periodic bits (read up antidiagonals).

The programs for A119919, there is no canonical definition to state claims against.
-/

/-! ## A119919.P4905466747383740331

`A119917(A002260(n+1))*A130321(n)`
-/

namespace A119919.P4905466747383740331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119917 (A002260 (n + 1)).toNat * A130321 n

end

end A119919.P4905466747383740331

/-! ## A119919.P17885799653280365632

`A130321(n)*A151710(A059268(n))`
-/

namespace A119919.P17885799653280365632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n * A151710 (A059268 n).toNat

end

end A119919.P17885799653280365632

/-! ## A119919.P8980681898285105134

`round(A130330(n)/2)*A151710(A059268(n))`
-/

namespace A119919.P8980681898285105134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A130330 n : ℚ) / 2) * A151710 (A059268 n).toNat

end

end A119919.P8980681898285105134

/-! ## A119919.P17901391965177005611

`A059268(A061579(n))*A151710(A059268(n))`
-/

namespace A119919.P17901391965177005611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A061579 n).toNat * A151710 (A059268 n).toNat

end

end A119919.P17901391965177005611

/-! ## A119919.P16720236819338015792

`A131577(A004736(n+1))*A151710(A059268(n))`
-/

namespace A119919.P16720236819338015792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A004736 (n + 1)).toNat * A151710 (A059268 n).toNat

end

end A119919.P16720236819338015792

/-!
# A119920: Number of rationals in [0, 1) having exactly n preperiodic bits, then exactly n periodic bits.

The programs for A119920, the canonical program `A119920.P13618042896974742524` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119920 has offset 1).

The definition of A119920 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119920.P13618042896974742524

`2^n*A038199(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A119920

/-- `2^n*A038199(n+1)` -/
def P13618042896974742524.Spec : Prop :=
  ∀ n, P13618042896974742524.a n = A119920 (n + 1)

theorem P13618042896974742524.correct : P13618042896974742524.Spec := by
  intro n
  simp only [A119920, Nat.add_sub_cancel]

end A119920

/-! ## A119920.P178175661129723343

`(n+1)*2^n*A059966(n+1)`
-/

namespace A119920.P178175661129723343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((2 ^ n : ℤ) * A059966 (n + 1))

end

end A119920.P178175661129723343

namespace A119920

/-- `(n+1)*2^n*A059966(n+1)` -/
def P178175661129723343.Spec : Prop :=
  ∀ n, P178175661129723343.a n = A119920 (n + 1)

end A119920

/-! ## A119920.P5424286391858993550

`record[and(-3, 2^n)]*A000740(n+1)`
-/

namespace A119920.P5424286391858993550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A000740 (n + 1)

end

end A119920.P5424286391858993550

namespace A119920

/-- `record[and(-3, 2^n)]*A000740(n+1)` -/
def P5424286391858993550.Spec : Prop :=
  ∀ n, P5424286391858993550.a n = A119920 (n + 1)

end A119920

/-! ## A119920.P2139639403328765058

`(n+1)*A001037((n+1)%(2*n+1))*2^n`
-/

namespace A119920.P2139639403328765058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001037 ((n + 1) % (2 * n + 1)) * (2 ^ n : ℤ)

end

end A119920.P2139639403328765058

namespace A119920

/-- `(n+1)*A001037((n+1)%(2*n+1))*2^n` -/
def P2139639403328765058.Spec : Prop :=
  ∀ n, P2139639403328765058.a n = A119920 (n + 1)

end A119920

/-! ## A119920.P11721566278849766864

`∑[A001792(n)]*A059966(n+1)`
-/

namespace A119920.P11721566278849766864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A059966 (n + 1)

end

end A119920.P11721566278849766864

namespace A119920

/-- `∑[A001792(n)]*A059966(n+1)` -/
def P11721566278849766864.Spec : Prop :=
  ∀ n, P11721566278849766864.a n = A119920 (n + 1)

end A119920

/-! ## A119920.P1585867092737776026

`A000740(n+1)*A151821(n+1)`
-/

namespace A119920.P1585867092737776026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000740 (n + 1) * A151821 (n + 1)

end

end A119920.P1585867092737776026

namespace A119920

/-- `A000740(n+1)*A151821(n+1)` -/
def P1585867092737776026.Spec : Prop :=
  ∀ n, P1585867092737776026.a n = A119920 (n + 1)

end A119920

/-! ## A119920.P13505715765528380699

`A038199(n+1)+A000225(n)*A038199(n+1)`
-/

namespace A119920.P13505715765528380699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038199 (n + 1) + A000225 n * A038199 (n + 1)

end

end A119920.P13505715765528380699

namespace A119920

/-- `A038199(n+1)+A000225(n)*A038199(n+1)` -/
def P13505715765528380699.Spec : Prop :=
  ∀ n, P13505715765528380699.a n = A119920 (n + 1)

end A119920

/-! ## A119920.P855545566322902850

`A038199(n+1)+A000740(n+1)*A000918(n+1)`
-/

namespace A119920.P855545566322902850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038199 (n + 1) + A000740 (n + 1) * A000918 (n + 1)

end

end A119920.P855545566322902850

namespace A119920

/-- `A038199(n+1)+A000740(n+1)*A000918(n+1)` -/
def P855545566322902850.Spec : Prop :=
  ∀ n, P855545566322902850.a n = A119920 (n + 1)

end A119920

/-!
# A119921: Number of rationals in [0, 1) having at most n preperiodic bits, then at most n periodic bits.

The programs for A119921, the canonical program `A119921.P12501731158706764017` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119921 has offset 1).

The definition of A119921 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119921.P12501731158706764017

`2^(n+1)*A119917(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A119921

/-- `2^(n+1)*A119917(n+1)` -/
def P12501731158706764017.Spec : Prop :=
  ∀ n, P12501731158706764017.a n = A119921 (n + 1)

theorem P12501731158706764017.correct : P12501731158706764017.Spec := by
  intro n
  simp only [A119921, Nat.add_sub_cancel]

end A119921

/-! ## A119921.P4118834791186822494

`2^(n+1)*∑[A038199(n+1)]`
-/

namespace A119921.P4118834791186822494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038199 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A119921.P4118834791186822494

namespace A119921

/-- `2^(n+1)*∑[A038199(n+1)]` -/
def P4118834791186822494.Spec : Prop :=
  ∀ n, P4118834791186822494.a n = A119921 (n + 1)

end A119921

/-! ## A119921.P5470192244778950227

`lcm(Δ[A048578(n)], A119917(n+1))`
-/

namespace A119921.P5470192244778950227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048578 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A119917 (n + 1))

end

end A119921.P5470192244778950227

namespace A119921

/-- `lcm(Δ[A048578(n)], A119917(n+1))` -/
def P5470192244778950227.Spec : Prop :=
  ∀ n, (P5470192244778950227.a n : ℤ) = A119921 (n + 1)

end A119921

/-! ## A119921.P2158755586448743761

`A119917(n+1)*A131577(n+2)`
-/

namespace A119921.P2158755586448743761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119917 (n + 1) * A131577 (n + 2)

end

end A119921.P2158755586448743761

namespace A119921

/-- `A119917(n+1)*A131577(n+2)` -/
def P2158755586448743761.Spec : Prop :=
  ∀ n, P2158755586448743761.a n = A119921 (n + 1)

end A119921

/-! ## A119921.P9219049768710029410

`∑[A038199(n+1)]*Δ[A048578(n)]`
-/

namespace A119921.P9219049768710029410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (f2 (n + 1) - f2 n)

end

end A119921.P9219049768710029410

namespace A119921

/-- `∑[A038199(n+1)]*Δ[A048578(n)]` -/
def P9219049768710029410.Spec : Prop :=
  ∀ n, P9219049768710029410.a n = A119921 (n + 1)

end A119921

/-! ## A119921.P16945339660721581086

`A119917(n+1)/A038199(n+2)*A119920(n+2)`
-/

namespace A119921.P16945339660721581086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119917 (n + 1) : ℚ) / (A038199 (n + 2) : ℚ) * (A119920 (n + 2) : ℚ)

end

end A119921.P16945339660721581086

namespace A119921

/-- `A119917(n+1)/A038199(n+2)*A119920(n+2)` -/
def P16945339660721581086.Spec : Prop :=
  ∀ n, P16945339660721581086.a n = (A119921 (n + 1) : ℚ)

end A119921

/-!
# A119930: Sum of the numbers of the matrix A111490 along a boustrophedon path: a11, a11+a12, a11+a12+a21, etc.

The programs for A119930, there is no canonical definition to state claims against.
-/

/-! ## A119930.P8213064340301155232

`∑[A048158(n+1)+1]`
-/

namespace A119930.P8213064340301155232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048158 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119930.P8213064340301155232

/-! ## A119930.P7735608847676622683

`∑[gcd(∑{digits}[n, #], A089688(n))]`
-/

namespace A119930.P7735608847676622683
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) (A089688 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119930.P7735608847676622683

/-! ## A119930.P15158032280340937089

`∑[A107435(n+1)+char[18]]`
-/

namespace A119930.P15158032280340937089
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107435 (n + 1) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119930.P15158032280340937089

/-! ## A119930.P3709225482879282639

`∑[gcd(∑{digits}[n, #]², A087062(n+1))]`
-/

namespace A119930.P3709225482879282639
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum ^ 2 : ℕ) : ℤ) (A087062 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119930.P3709225482879282639

/-! ## A119930.P14207269156226604947

`ceil(∑[sqrt(A049828(n+1))])+n+1`
-/

namespace A119930.P14207269156226604947
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A049828 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉ + (n + 1 : ℤ)

end

end A119930.P14207269156226604947

/-!
# A119931: Sum of the numbers of the matrix A111490 along a boustrophedon path: a11, a11+a21, a11+a21+a21, etc.

The programs for A119931, there is no canonical definition to state claims against.
-/

/-! ## A119931.P3389019227849738305

`∑[∑[char[∑[n]]]%(C(comp[∑[n]]-n, 2)-n)+1]`
-/

namespace A119931.P3389019227849738305
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f5 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119931.P3389019227849738305

/-! ## A119931.P3900473400223374286

`∑[A051777(n+1)+1]`
-/

namespace A119931.P3900473400223374286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051777 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119931.P3900473400223374286

/-! ## A119931.P10396236389659152447

`∑[A214676(n+1)%5]`
-/

namespace A119931.P10396236389659152447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A214676 (n + 1)) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119931.P10396236389659152447

/-! ## A119931.P13475851520101086649

`∑[∏{d}[A141803(n+1), #]]`
-/

namespace A119931.P13475851520101086649
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141803 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119931.P13475851520101086649

/-! ## A119931.P11900064677048205522

`∑[A124734(A027935(n))]`
-/

namespace A119931.P11900064677048205522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124734 (A027935 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119931.P11900064677048205522

/-!
# A119932: Triangle of denominators of the cube of a certain lower triangular matrix.

The programs for A119932, there is no canonical definition to state claims against.
-/

/-! ## A119932.P9461990538364282272

`A128090(A032559(n+1))²/(A003056(n)+1)`
-/

namespace A119932.P9461990538364282272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128090 (A032559 (n + 1)).toNat ^ 2 : ℚ) / (A003056 n + 1 : ℚ)

end

end A119932.P9461990538364282272

/-! ## A119932.P13395893952048053307

`A128090(A032559(n+1))²/A123578(n+1)`
-/

namespace A119932.P13395893952048053307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128090 (A032559 (n + 1)).toNat ^ 2 : ℚ) / (A123578 (n + 1) : ℚ)

end

end A119932.P13395893952048053307

/-! ## A119932.P3800363250897994571

`(A128090(n+1)%A128072(n+1))²/A002024(n+1)`
-/

namespace A119932.P3800363250897994571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A128090 (n + 1)) (A128072 (n + 1)) ^ 2 : ℚ) / (A002024 (n + 1) : ℚ)

end

end A119932.P3800363250897994571

/-! ## A119932.P7982225689717106472

`lcm(A014963(n!), A128090(n+1))²/A002024(n+1)`
-/

namespace A119932.P7982225689717106472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A014963 (Nat.factorial n)) (A128090 (n + 1)) ^ 2 : ℚ) / (A002024 (n + 1) : ℚ)

end

end A119932.P7982225689717106472

/-!
# A119933: Row sums of triangle A119932 (denominator triangle for certain rationals).

The programs for A119933, there is no canonical definition to state claims against.
-/

/-! ## A119933.P12080510931992934078

`A324203(A084948(n))*A335988(n+1)`
-/

namespace A119933.P12080510931992934078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324203 (A084948 n).toNat * A335988 (n + 1)

end

end A119933.P12080510931992934078

/-!
# A119935: Triangle of numerators of the cube of a certain lower triangular matrix.

The programs for A119935, there is no canonical definition to state claims against.
-/

/-! ## A119935.P15330477040726421356

`A007913(A027447(n+1))`
-/

namespace A119935.P15330477040726421356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A027447 (n + 1)).toNat

end

end A119935.P15330477040726421356

/-! ## A119935.P2379767358894734992

`A055231(root(A027447(n+1), 2)²)`
-/

namespace A119935.P2379767358894734992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (SequenceMachineLib.roundAway (((A027447 (n + 1) : ℝ) ^ (1 / (2 : ℝ))) ^ 2)).toNat

end

end A119935.P2379767358894734992

/-! ## A119935.P3245375196147982779

`A055231(A027447(n+1)+A025443(n))`
-/

namespace A119935.P3245375196147982779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (A027447 (n + 1) + A025443 n).toNat

end

end A119935.P3245375196147982779

/-! ## A119935.P133997989591090319

`A055231(A027447(n+1)%A016793(n))`
-/

namespace A119935.P133997989591090319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (Int.tmod (A027447 (n + 1)) (A016793 n)).toNat

end

end A119935.P133997989591090319

/-! ## A119935.P7486122158176841450

`gcd(A055231(A027447(n+1)), A358008(n))`
-/

namespace A119935.P7486122158176841450
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055231 (A027447 (n + 1)).toNat) (A358008 (n + 87))

end

end A119935.P7486122158176841450

/-!
# A119936: Least common multiple (LCM) of denominators of the rows of the triangle of rationals A119935/A119932.

The programs for A119936, there is no canonical definition to state claims against.
-/

/-! ## A119936.P18181608037095886532

`(n+1)*lcm((n+1)², a(n-1))/n` with `a(0)=1`
-/

namespace A119936.P18181608037095886532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℚ) * ((Int.lcm ((n + 1) ^ 2 : ℤ) (SequenceMachineLib.roundAway (a (n - 1))) : ℚ) / (n : ℚ))

end

end A119936.P18181608037095886532

/-! ## A119936.P5880799596136021913

`(n+1)*A051418(n+1)`
-/

namespace A119936.P5880799596136021913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A051418 (n + 1)

end

end A119936.P5880799596136021913

/-! ## A119936.P252434345738128383

`(n+1)*A120108(∑[n])²`
-/

namespace A119936.P252434345738128383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A120108 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A119936.P252434345738128383

/-! ## A119936.P18350596697708798763

`(n+1)*A139547(∑[n])²`
-/

namespace A119936.P18350596697708798763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A139547 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A119936.P18350596697708798763

/-! ## A119936.P8814152717756698829

`(n+1)*Δ[A173185(n)]²`
-/

namespace A119936.P8814152717756698829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173185 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n) ^ 2

end

end A119936.P8814152717756698829

/-!
# A119938: Row sums of triangle A119937.

The programs for A119938, there is no canonical definition to state claims against.
-/

/-! ## A119938.P1895308661189040370

`A120076(n+2)*A267337(A068044(n))`
-/

namespace A119938.P1895308661189040370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120076 (n + 2) * A267337 (A068044 n).toNat

end

end A119938.P1895308661189040370

/-! ## A119938.P2051372867759848183

`A120076(n+2)*A156724(A309861(n))`
-/

namespace A119938.P2051372867759848183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120076 (n + 2) * A156724 (A309861 n).toNat

end

end A119938.P2051372867759848183

/-! ## A119938.P15382938075452192338

`A120076(n+2)*A121007(A143403(n)²)`
-/

namespace A119938.P15382938075452192338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120076 (n + 2) * A121007 (A143403 n ^ 2).toNat

end

end A119938.P15382938075452192338

/-!
# A119939: Main diagonal of triangle A119937.

The programs for A119939, there is no canonical definition to state claims against.
-/

/-! ## A119939.P7021143669795903478

`(2*n+3)*A099946(n+2)²`
-/

namespace A119939.P7021143669795903478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) * A099946 (n + 2) ^ 2

end

end A119939.P7021143669795903478

/-! ## A119939.P15626893426577493004

`A027449(n+2)*A099946(n+2)`
-/

namespace A119939.P15626893426577493004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027449 (n + 2) * A099946 (n + 2)

end

end A119939.P15626893426577493004

/-! ## A119939.P15539220999141999375

`A099946(n+2)²*Δ[A005563(n)]`
-/

namespace A119939.P15539220999141999375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099946 (n + 2) ^ 2 * (f1 (n + 1) - f1 n)

end

end A119939.P15539220999141999375

/-! ## A119939.P11638084858803255522

`A099946(n+2)²*A144396(n+1)`
-/

namespace A119939.P11638084858803255522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099946 (n + 2) ^ 2 * A144396 (n + 1)

end

end A119939.P11638084858803255522

/-! ## A119939.P10739301951250317423

`A025558(n+1)/(n+1)²*A027449(n+2)`
-/

namespace A119939.P10739301951250317423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025558 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ) * (A027449 (n + 2) : ℚ)

end

end A119939.P10739301951250317423

/-!
# A119940: First column (n=1) of triangle A119937.

The programs for A119940, there is no canonical definition to state claims against.
-/

/-! ## A119940.P3097118088932559542

`A051418(n+2)-A027451(n+2)`
-/

namespace A119940.P3097118088932559542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051418 (n + 2) - A027451 (n + 2)

end

end A119940.P3097118088932559542

/-! ## A119940.P16709074774308947621

`A120079(n+2)-A051418(n+2)`
-/

namespace A119940.P16709074774308947621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120079 (n + 2) - A051418 (n + 2)

end

end A119940.P16709074774308947621

/-! ## A119940.P12690687043793770170

`A025558(n+1)*A387027(n+2)`
-/

namespace A119940.P12690687043793770170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025558 (n + 1) * A387027 (n + 2)

end

end A119940.P12690687043793770170

/-! ## A119940.P11356073397939071327

`A002944(n+2)²*A005563(n+1)`
-/

namespace A119940.P11356073397939071327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002944 (n + 2) ^ 2 * A005563 (n + 1)

end

end A119940.P11356073397939071327

/-! ## A119940.P663751113915055134

`A002944(n+2)²*A132411(n+2)`
-/

namespace A119940.P663751113915055134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002944 (n + 2) ^ 2 * A132411 (n + 2)

end

end A119940.P663751113915055134

/-!
# A119941: Second column (n=2) of triangle A119937.

The programs for A119941, there is no canonical definition to state claims against.
-/

/-! ## A119941.P343646165990981849

`A119937(∑[n+1]+3)`
-/

namespace A119941.P343646165990981849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119937 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A119941.P343646165990981849

/-! ## A119941.P3917990729050837646

`record[A119937(A014132(n+1)+2)]`
-/

namespace A119941.P3917990729050837646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119937 (A014132 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119941.P3917990729050837646

/-!
# A119942: Third column (n=3) of triangle A119937.

The programs for A119942, there is no canonical definition to state claims against.
-/

/-! ## A119942.P359629114106863276

`A119937(∑[n+2]+5)`
-/

namespace A119942.P359629114106863276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119937 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A119942.P359629114106863276

/-!
# A119943: Fourth column (n=4) of triangle A119937.

The programs for A119943, there is no canonical definition to state claims against.
-/

/-! ## A119943.P3142023618508505772

`A119937(∑[n+3]+8)`
-/

namespace A119943.P3142023618508505772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119937 (∑ j ∈ Finset.range (n + 1), f1 j + 8)

end

end A119943.P3142023618508505772

/-!
# A119944: First differences of A003418(n) = lcm(1..n).

The programs for A119944, the canonical program `A119944.P17068462013719077516` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119944 has offset 0).

The definition of A119944 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A119944.P17068462013719077516

`A003418(n+1)-A003418(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A119944

/-- `A003418(n+1)-A003418(n)` -/
def P17068462013719077516.Spec : Prop :=
  ∀ n, P17068462013719077516.a n = A119944 n

theorem P17068462013719077516.correct : P17068462013719077516.Spec := by
  intro n
  simp only [A119944]

end A119944

/-! ## A119944.P10068552668694919575

`Δ[lcm(n, a(n-1))]` with `a(0)=1`
-/

namespace A119944.P10068552668694919575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.lcm n (f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A119944.P10068552668694919575

namespace A119944

/-- `Δ[lcm(n, a(n-1))]` -/
def P10068552668694919575.Spec : Prop :=
  ∀ n, P10068552668694919575.a n = A119944 n

end A119944

/-! ## A119944.P367988672706428319

`Δ[n*a(n-1)/gcd(n, a(n-1))]` with `a(0)=1, a(1)=1`
-/

namespace A119944.P367988672706428319
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (n : ℚ) * (f1 (n - 1) / (Int.gcd (n : ℤ) (SequenceMachineLib.roundAway (f1 (n - 1))) : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A119944.P367988672706428319

namespace A119944

/-- `Δ[n*a(n-1)/gcd(n, a(n-1))]` -/
def P367988672706428319.Spec : Prop :=
  ∀ n, P367988672706428319.a n = (A119944 n : ℚ)

end A119944

/-! ## A119944.P17963406966695516875

`Δ[A003418(n)]`
-/

namespace A119944.P17963406966695516875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A119944.P17963406966695516875

namespace A119944

/-- `Δ[A003418(n)]` -/
def P17963406966695516875.Spec : Prop :=
  ∀ n, P17963406966695516875.a n = A119944 n

theorem P17963406966695516875.correct : P17963406966695516875.Spec := by
  intro n
  simp only [A119944, Nat.add_sub_cancel, A119944.P17963406966695516875.f1, A119944.P17963406966695516875.a, A119944.P17068462013719077516.a, SequenceMachineLib.memo_apply]

end A119944

/-! ## A119944.P18119777308467474058

`Δ[A075059(n)]`
-/

namespace A119944.P18119777308467474058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075059 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A119944.P18119777308467474058

namespace A119944

/-- `Δ[A075059(n)]` -/
def P18119777308467474058.Spec : Prop :=
  ∀ n, P18119777308467474058.a n = A119944 n

end A119944

/-! ## A119944.P6659387433178800055

`Δ[A139550(2*n)]`
-/

namespace A119944.P6659387433178800055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139550 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A119944.P6659387433178800055

namespace A119944

/-- `Δ[A139550(2*n)]` -/
def P6659387433178800055.Spec : Prop :=
  ∀ n, P6659387433178800055.a n = A119944 n

end A119944

/-! ## A119944.P10403933019596112171

`Δ[A139554(4*n)]`
-/

namespace A119944.P10403933019596112171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139554 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A119944.P10403933019596112171

namespace A119944

/-- `Δ[A139554(4*n)]` -/
def P10403933019596112171.Spec : Prop :=
  ∀ n, P10403933019596112171.a n = A119944 n

end A119944

/-! ## A119944.P10548804261627724207

`Δ[∏[A014963(∏{p}[n, #])]]`
-/

namespace A119944.P10548804261627724207
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∏ p ∈ Nat.primeFactors (f3 n), p)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A119944.P10548804261627724207

namespace A119944

/-- `Δ[∏[A014963(∏{p}[n, #])]]` -/
def P10548804261627724207.Spec : Prop :=
  ∀ n, P10548804261627724207.a n = A119944 n

end A119944

/-! ## A119944.P8941698364215629609

`Δ[A195507(n+1)]-1`
-/

namespace A119944.P8941698364215629609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195507 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A119944.P8941698364215629609

namespace A119944

/-- `Δ[A195507(n+1)]-1` -/
def P8941698364215629609.Spec : Prop :=
  ∀ n, P8941698364215629609.a n = A119944 n

end A119944

/-! ## A119944.P16685303011168041364

`Δ[a(n-1)*A014963(n)]` with `a(0)=1`
-/

namespace A119944.P16685303011168041364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) * A014963 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A119944.P16685303011168041364

namespace A119944

/-- `Δ[a(n-1)*A014963(n)]` -/
def P16685303011168041364.Spec : Prop :=
  ∀ n, P16685303011168041364.a n = A119944 n

end A119944

/-! ## A119944.P6091373151320637308

`Δ[∏[A014963(C(2, n+2)+n)]]`
-/

namespace A119944.P6091373151320637308
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Nat.choose 2 (n + 2) + n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A119944.P6091373151320637308

namespace A119944

/-- `Δ[∏[A014963(C(2, n+2)+n)]]` -/
def P6091373151320637308.Spec : Prop :=
  ∀ n, P6091373151320637308.a n = A119944 n

end A119944

/-! ## A119944.P16087665924466008743

`Δ[∏[A014963(or(n, (n%2)^n))]]`
-/

namespace A119944.P16087665924466008743
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Nat.lor n ((n % 2) ^ n))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A119944.P16087665924466008743

namespace A119944

/-- `Δ[∏[A014963(or(n, (n%2)^n))]]` -/
def P16087665924466008743.Spec : Prop :=
  ∀ n, P16087665924466008743.a n = A119944 n

end A119944

/-! ## A119944.P16625894031252179300

`Δ[∏[A014963(A028310(n))]]`
-/

namespace A119944.P16625894031252179300
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A119944.P16625894031252179300

namespace A119944

/-- `Δ[∏[A014963(A028310(n))]]` -/
def P16625894031252179300.Spec : Prop :=
  ∀ n, P16625894031252179300.a n = A119944 n

end A119944

/-! ## A119944.P2677742317869642443

`Δ[A056040(n)*A180000(n)]`
-/

namespace A119944.P2677742317869642443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 n * A180000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A119944.P2677742317869642443

namespace A119944

/-- `Δ[A056040(n)*A180000(n)]` -/
def P2677742317869642443.Spec : Prop :=
  ∀ n, P2677742317869642443.a n = A119944 n

end A119944

/-! ## A119944.P12651784471290138650

`A075059(n+1)-A075059(n)`
-/

namespace A119944.P12651784471290138650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075059 (n + 1) - A075059 n

end

end A119944.P12651784471290138650

namespace A119944

/-- `A075059(n+1)-A075059(n)` -/
def P12651784471290138650.Spec : Prop :=
  ∀ n, P12651784471290138650.a n = A119944 n

end A119944

/-! ## A119944.P1341189913084803632

`A060401(n+1)-A195507(n+1)`
-/

namespace A119944.P1341189913084803632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060401 (n + 1) - A195507 (n + 1)

end

end A119944.P1341189913084803632

namespace A119944

/-- `A060401(n+1)-A195507(n+1)` -/
def P1341189913084803632.Spec : Prop :=
  ∀ n, P1341189913084803632.a n = A119944 n

end A119944

/-! ## A119944.P15970153895472514736

`A003418(n)*A059975(A014963(n+1))`
-/

namespace A119944.P15970153895472514736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 n * A059975 (A014963 (n + 1)).toNat

end

end A119944.P15970153895472514736

namespace A119944

/-- `A003418(n)*A059975(A014963(n+1))` -/
def P15970153895472514736.Spec : Prop :=
  ∀ n, P15970153895472514736.a n = A119944 n

end A119944

/-! ## A119944.P6241281524235661464

`A070198(n)-A070198(A028310(n)-1)`
-/

namespace A119944.P6241281524235661464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070198 n - A070198 (A028310 n - 1).toNat

end

end A119944.P6241281524235661464

namespace A119944

/-- `A070198(n)-A070198(A028310(n)-1)` -/
def P6241281524235661464.Spec : Prop :=
  ∀ n, P6241281524235661464.a n = A119944 n

end A119944

/-! ## A119944.P16667622604143880498

`A070198(n)-A070198(n-A057427(n))`
-/

namespace A119944.P16667622604143880498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070198 n - A070198 ((n : ℤ) - A057427 n).toNat

end

end A119944.P16667622604143880498

namespace A119944

/-- `A070198(n)-A070198(n-A057427(n))` -/
def P16667622604143880498.Spec : Prop :=
  ∀ n, P16667622604143880498.a n = A119944 n

end A119944

/-! ## A119944.P15398359289006660055

`A120108(A000217(n))-A003418(n)`
-/

namespace A119944.P15398359289006660055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120108 (A000217 n).toNat - A003418 n

end

end A119944.P15398359289006660055

namespace A119944

/-- `A120108(A000217(n))-A003418(n)` -/
def P15398359289006660055.Spec : Prop :=
  ∀ n, P15398359289006660055.a n = A119944 n

end A119944

/-!
# A119947: Triangle of numerators in the square of the matrix A[i,j] = 1/i for j <= i, 0 otherwise.

The programs for A119947, there is no canonical definition to state claims against.
-/

/-! ## A119947.P3243047795774417650

`A116416(A130328(n))`
-/

namespace A119947.P3243047795774417650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116416 (A130328 n).toNat

end

end A119947.P3243047795774417650

/-! ## A119947.P4706208255581685058

`A116416(A204985(n+1)/2)`
-/

namespace A119947.P4706208255581685058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116416 (SequenceMachineLib.roundAway ((A204985 (n + 1) : ℚ) / 2)).toNat

end

end A119947.P4706208255581685058

/-! ## A119947.P4746561669348844331

`A116416(A140513(n)-A059268(n))`
-/

namespace A119947.P4746561669348844331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116416 (A140513 n - A059268 n).toNat

end

end A119947.P4746561669348844331

/-! ## A119947.P9604625060273326665

`A093411(A388733(n+1))`
-/

namespace A119947.P9604625060273326665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 (A388733 (n + 1)).toNat

end

end A119947.P9604625060273326665

/-! ## A119947.P5871274214917679457

`A093411(A165674(n+1)*A233543(n))`
-/

namespace A119947.P5871274214917679457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 (A165674 (n + 1) * A233543 n).toNat

end

end A119947.P5871274214917679457

/-!
# A119948: Triangle of denominators in the square of the matrix with A[i,j] = 1/i for j <= i, 0 otherwise.

The programs for A119948, there is no canonical definition to state claims against.
-/

/-! ## A119948.P14680396567740429055

`abs(A128090(A032555(n+1)))`
-/

namespace A119948.P14680396567740429055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A128090 (A032555 (n + 1)).toNat|

end

end A119948.P14680396567740429055

/-! ## A119948.P18402250445415651313

`abs(A128090(A032559(n+1)))`
-/

namespace A119948.P18402250445415651313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A128090 (A032559 (n + 1)).toNat|

end

end A119948.P18402250445415651313

/-! ## A119948.P6042099192869938696

`abs(A128090(A110370(n+1)))`
-/

namespace A119948.P6042099192869938696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A128090 (A110370 (n + 1)).toNat|

end

end A119948.P6042099192869938696

/-! ## A119948.P18191658841800190680

`abs(A128090(A219326(n+1)))`
-/

namespace A119948.P18191658841800190680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A128090 (A219326 (n + 1)).toNat|

end

end A119948.P18191658841800190680

/-!
# A119949: Row sums of (numerator) triangle A119947.

The programs for A119949, there is no canonical definition to state claims against.
-/

/-! ## A119949.P317141650858740523

`∑[record[Δ[A034368(2*(n+2))]]]`
-/

namespace A119949.P317141650858740523
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034368 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119949.P317141650858740523

/-!
# A119950: Row sums of (denominator) triangle A119948.

The programs for A119950, there is no canonical definition to state claims against.
-/

/-! ## A119950.P14899518409497422550

`(n+1)*A262260(A027382(n))`
-/

namespace A119950.P14899518409497422550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A262260 (A027382 n).toNat

end

end A119950.P14899518409497422550

/-!
# A119951: Numerators of partial sums of a convergent series with value 4, involving scaled Catalan numbers A000108.

The programs for A119951, the canonical program `A119951.P13973358943330072792` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119951 has offset 1).

The definition of A119951 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119951.P13973358943330072792

`A120777(n+1)-A001790(n+2)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A119951

/-- `A120777(n+1)-A001790(n+2)` -/
def P13973358943330072792.Spec : Prop :=
  ∀ n, P13973358943330072792.a n = A119951 (n + 1)

theorem P13973358943330072792.correct : P13973358943330072792.Spec := by
  intro n
  simp only [A119951, Nat.add_sub_cancel]

end A119951

/-! ## A119951.P13134147621167088025

`∏[A171977(n+2)]-A001790(n+2)`
-/

namespace A119951.P13134147621167088025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171977 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A001790 (n + 2)

end

end A119951.P13134147621167088025

namespace A119951

/-- `∏[A171977(n+2)]-A001790(n+2)` -/
def P13134147621167088025.Spec : Prop :=
  ∀ n, P13134147621167088025.a n = A119951 (n + 1)

end A119951

/-! ## A119951.P5462841202258704998

`A120778(n+1)-A120777(n+1)`
-/

namespace A119951.P5462841202258704998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120778 (n + 1) - A120777 (n + 1)

end

end A119951.P5462841202258704998

namespace A119951

/-- `A120778(n+1)-A120777(n+1)` -/
def P5462841202258704998.Spec : Prop :=
  ∀ n, P5462841202258704998.a n = A119951 (n + 1)

end A119951

/-! ## A119951.P6536043824902671031

`A004735(2*n+3)-A004734(2*n+3)`
-/

namespace A119951.P6536043824902671031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004735 (2 * n + 3) - A004734 (2 * n + 3)

end

end A119951.P6536043824902671031

namespace A119951

/-- `A004735(2*n+3)-A004734(2*n+3)` -/
def P6536043824902671031.Spec : Prop :=
  ∀ n, P6536043824902671031.a n = A119951 (n + 1)

end A119951

/-! ## A119951.P14475481913592806151

`A008549(n+1)/A011782(A000120(n+2))`
-/

namespace A119951.P14475481913592806151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008549 (n + 1) : ℚ) / (A011782 (A000120 (n + 2)).toNat : ℚ)

end

end A119951.P14475481913592806151

namespace A119951

/-- `A008549(n+1)/A011782(A000120(n+2))` -/
def P14475481913592806151.Spec : Prop :=
  ∀ n, P14475481913592806151.a n = (A119951 (n + 1) : ℚ)

end A119951

/-! ## A119951.P11038437610897260267

`A008549(n+1)/gcd(A000108(n+1), A000302(n))`
-/

namespace A119951.P11038437610897260267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008549 (n + 1) : ℚ) / (Int.gcd (A000108 (n + 1)) (A000302 n) : ℚ)

end

end A119951.P11038437610897260267

namespace A119951

/-- `A008549(n+1)/gcd(A000108(n+1), A000302(n))` -/
def P11038437610897260267.Spec : Prop :=
  ∀ n, P11038437610897260267.a n = (A119951 (n + 1) : ℚ)

end A119951

/-! ## A119951.P3065022973486958949

`A008549(n+1)/gcd(A001700(n+1), A008549(n+1))`
-/

namespace A119951.P3065022973486958949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008549 (n + 1) : ℚ) / (Int.gcd (A001700 (n + 1)) (A008549 (n + 1)) : ℚ)

end

end A119951.P3065022973486958949

namespace A119951

/-- `A008549(n+1)/gcd(A001700(n+1), A008549(n+1))` -/
def P3065022973486958949.Spec : Prop :=
  ∀ n, P3065022973486958949.a n = (A119951 (n + 1) : ℚ)

end A119951

/-! ## A119951.P8604115617733279223

`A008549(n+1)/gcd(A000302(n+1), A000346(n+1))`
-/

namespace A119951.P8604115617733279223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008549 (n + 1) : ℚ) / (Int.gcd (A000302 (n + 1)) (A000346 (n + 1)) : ℚ)

end

end A119951.P8604115617733279223

namespace A119951

/-- `A008549(n+1)/gcd(A000302(n+1), A000346(n+1))` -/
def P8604115617733279223.Spec : Prop :=
  ∀ n, P8604115617733279223.a n = (A119951 (n + 1) : ℚ)

end A119951

/-!
# A119952: Number of partitions of n into parts relatively prime to 63 and not == 2 (mod 4).

The programs for A119952, there is no canonical definition to state claims against.
-/

/-! ## A119952.P17230137335210791748

`A079067(A013615(n))+A036023(n)`
-/

namespace A119952.P17230137335210791748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079067 (A013615 n).toNat + A036023 n

end

end A119952.P17230137335210791748

/-! ## A119952.P7298203261770677988

`A279385(A036033(n))+A025154(A008619(n))`
-/

namespace A119952.P7298203261770677988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279385 (A036033 n).toNat + A025154 (A008619 n).toNat

end

end A119952.P7298203261770677988

/-! ## A119952.P15639970376650046357

`A279385(A036033(n))+A049785(A007318(n))`
-/

namespace A119952.P15639970376650046357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279385 (A036033 n).toNat + A049785 (A007318 n).toNat

end

end A119952.P15639970376650046357

/-!
# A119955: Numbers n such that denominator of n-th Harmonic Number equals denominator of n-th Alternative Harmonic Number.

The programs for A119955, there is no canonical definition to state claims against.
-/

/-! ## A119955.P5460349502639770283

`eq[char[A098464(n+1)], A269626(n)]`
-/

namespace A119955.P5460349502639770283
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098464 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269626 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A119955.P5460349502639770283

/-! ## A119955.P16935683083627760365

`eq[A002805(n+1), A058312(n+1)]+1`
-/

namespace A119955.P16935683083627760365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058312 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A119955.P16935683083627760365

/-! ## A119955.P6424649790758712542

`A098464(lt[A306343(n), A000203(n+1)])`
-/

namespace A119955.P6424649790758712542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306343 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098464 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A119955.P6424649790758712542

/-!
# A119956: Numbers n such that n^3+1=p*q*r where p,q,r are distinct primes.

The programs for A119956, the canonical program `A119956.P9211573796287934914` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119956 has offset 1).

The definition of A119956 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 949 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119956.P9211573796287934914

`∩[A115403(n+1), A183569(n+1)]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A119956

/-- `∩[A115403(n+1), A183569(n+1)]` -/
def P9211573796287934914.Spec : Prop :=
  ∀ n, (P9211573796287934914.a n : ℤ) = A119956 (n + 1)

theorem P9211573796287934914.correct : P9211573796287934914.Spec := by
  intro n
  simp only [A119956, Nat.add_sub_cancel]

end A119956

/-! ## A119956.P3735950172918596784

`∩[A115403(n+1), A183299(n+1)]`
-/

namespace A119956.P3735950172918596784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183299 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119956.P3735950172918596784

namespace A119956

/-- `∩[A115403(n+1), A183299(n+1)]` -/
def P3735950172918596784.Spec : Prop :=
  ∀ n, (P3735950172918596784.a n : ℤ) = A119956 (n + 1)

end A119956

/-! ## A119956.P3449338164560505148

`filter[A115403(n+1), A267848(#)]`
-/

namespace A119956.P3449338164560505148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115403 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267848 (f1 j).toNat = 1) n)

end

end A119956.P3449338164560505148

namespace A119956

/-- `filter[A115403(n+1), A267848(#)]` -/
def P3449338164560505148.Spec : Prop :=
  ∀ n, P3449338164560505148.a n = A119956 (n + 1)

end A119956

/-! ## A119956.P14726132279501812801

`filter[A115403(n+1), A267866(#)]`
-/

namespace A119956.P14726132279501812801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115403 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267866 (f1 j).toNat = 1) n)

end

end A119956.P14726132279501812801

namespace A119956

/-- `filter[A115403(n+1), A267866(#)]` -/
def P14726132279501812801.Spec : Prop :=
  ∀ n, P14726132279501812801.a n = A119956 (n + 1)

end A119956

/-! ## A119956.P9665652611199552533

`eq[6, A002033(n)*A278251(n)]`
-/

namespace A119956.P9665652611199552533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 n * A278251 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A119956.P9665652611199552533

namespace A119956

/-- `eq[6, A002033(n)*A278251(n)]` -/
def P9665652611199552533.Spec : Prop :=
  ∀ n, (P9665652611199552533.a n : ℤ) = A119956 (n + 1)

end A119956

/-! ## A119956.P12724501322473243861

`eq[8, A278251(n)+A046523(n+1)]`
-/

namespace A119956.P12724501322473243861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278251 n + A046523 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A119956.P12724501322473243861

namespace A119956

/-- `eq[8, A278251(n)+A046523(n+1)]` -/
def P12724501322473243861.Spec : Prop :=
  ∀ n, (P12724501322473243861.a n : ℤ) = A119956 (n + 1)

end A119956

/-! ## A119956.P13236742306481952887

`eq[2, A051709(n+1)+A051709(A278251(n))]`
-/

namespace A119956.P13236742306481952887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051709 (n + 1) + A051709 (A278251 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A119956.P13236742306481952887

namespace A119956

/-- `eq[2, A051709(n+1)+A051709(A278251(n))]` -/
def P13236742306481952887.Spec : Prop :=
  ∀ n, (P13236742306481952887.a n : ℤ) = A119956 (n + 1)

end A119956

/-! ## A119956.P14959134515682121967

`eq[A046523(n+1), A114403(A278251(n))]`
-/

namespace A119956.P14959134515682121967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114403 (A278251 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A119956.P14959134515682121967

namespace A119956

/-- `eq[A046523(n+1), A114403(A278251(n))]` -/
def P14959134515682121967.Spec : Prop :=
  ∀ n, (P14959134515682121967.a n : ℤ) = A119956 (n + 1)

end A119956

/-!
# A119957: a(n) is the sum of p consecutive residues of 2^x modulo n, starting with a sufficiently large x and where p = period of binary representation of 1/n.

The programs for A119957, there is no canonical definition to state claims against.
-/

/-! ## A119957.P7475832887067636453

`(n+1)*A119513(n+1)`
-/

namespace A119957.P7475832887067636453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A119513 (n + 1)

end

end A119957.P7475832887067636453

/-! ## A119957.P17759279461959068142

`A119513(n+1)*A131209(n)`
-/

namespace A119957.P17759279461959068142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119513 (n + 1) * A131209 n

end

end A119957.P17759279461959068142

/-! ## A119957.P2140257773552002342

`A119513(n+1)*A153152(n)`
-/

namespace A119957.P2140257773552002342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119513 (n + 1) * A153152 n

end

end A119957.P2140257773552002342

/-! ## A119957.P2838149046756760477

`(n+1)*A000120(A104014(n+1))`
-/

namespace A119957.P2838149046756760477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000120 (A104014 (n + 1)).toNat

end

end A119957.P2838149046756760477

/-!
# A119959: p^2-p+1 central polygonal numbers with prime indices A002061(prime(n)).

The programs for A119959, the canonical program `A119959.P13944283531286712602` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119959 has offset 1).

The definition of A119959 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036689, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A119959.P13944283531286712602

`A036689(n+1)+1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A119959

/-- `A036689(n+1)+1` -/
def P13944283531286712602.Spec : Prop :=
  ∀ n, P13944283531286712602.a n = A119959 (n + 1)

theorem P13944283531286712602.correct : P13944283531286712602.Spec := by
  intro n
  simp only [A119959, Nat.add_sub_cancel]

end A119959

/-! ## A119959.P13220577827179158384

`A306190(n+1)+2`
-/

namespace A119959.P13220577827179158384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306190 (n + 1) + 2

end

end A119959.P13220577827179158384

namespace A119959

/-- `A306190(n+1)+2` -/
def P13220577827179158384.Spec : Prop :=
  ∀ n, P13220577827179158384.a n = A119959 (n + 1)

end A119959

/-! ## A119959.P8897042584816721252

`2*A008837(n+1)+1`
-/

namespace A119959.P8897042584816721252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008837 (n + 1) + 1

end

end A119959.P8897042584816721252

namespace A119959

/-- `2*A008837(n+1)+1` -/
def P8897042584816721252.Spec : Prop :=
  ∀ n, P8897042584816721252.a n = A119959 (n + 1)

end A119959

/-! ## A119959.P13228277103735327921

`2*A072205(n+1)-1`
-/

namespace A119959.P13228277103735327921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A072205 (n + 1) - 1

end

end A119959.P13228277103735327921

namespace A119959

/-- `2*A072205(n+1)-1` -/
def P13228277103735327921.Spec : Prop :=
  ∀ n, P13228277103735327921.a n = A119959 (n + 1)

end A119959

/-! ## A119959.P17335905994418839135

`2*C(A000040(n+1), 2)+1`
-/

namespace A119959.P17335905994418839135
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (A000040 (n + 1)).toNat 2 + 1

end

end A119959.P17335905994418839135

namespace A119959

/-- `2*C(A000040(n+1), 2)+1` -/
def P17335905994418839135.Spec : Prop :=
  ∀ n, (P17335905994418839135.a n : ℤ) = A119959 (n + 1)

end A119959

/-! ## A119959.P10893762682598911194

`A005722(n+1)+A000040(n+1)`
-/

namespace A119959.P10893762682598911194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005722 (n + 1) + A000040 (n + 1)

end

end A119959.P10893762682598911194

namespace A119959

/-- `A005722(n+1)+A000040(n+1)` -/
def P10893762682598911194.Spec : Prop :=
  ∀ n, P10893762682598911194.a n = A119959 (n + 1)

end A119959

/-! ## A119959.P11581740303506597330

`A072205(n+1)+A008837(n+1)`
-/

namespace A119959.P11581740303506597330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072205 (n + 1) + A008837 (n + 1)

end

end A119959.P11581740303506597330

namespace A119959

/-- `A072205(n+1)+A008837(n+1)` -/
def P11581740303506597330.Spec : Prop :=
  ∀ n, P11581740303506597330.a n = A119959 (n + 1)

end A119959

/-! ## A119959.P7875453083357143768

`A001248(n+1)-A006093(n+1)`
-/

namespace A119959.P7875453083357143768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) - A006093 (n + 1)

end

end A119959.P7875453083357143768

namespace A119959

/-- `A001248(n+1)-A006093(n+1)` -/
def P7875453083357143768.Spec : Prop :=
  ∀ n, P7875453083357143768.a n = A119959 (n + 1)

end A119959

/-! ## A119959.P4975710901833663102

`A066872(n+1)-A000040(n+1)`
-/

namespace A119959.P4975710901833663102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066872 (n + 1) - A000040 (n + 1)

end

end A119959.P4975710901833663102

namespace A119959

/-- `A066872(n+1)-A000040(n+1)` -/
def P4975710901833663102.Spec : Prop :=
  ∀ n, P4975710901833663102.a n = A119959 (n + 1)

end A119959

/-! ## A119959.P11718700553873892143

`A110833(n+1)-A001748(n+1)`
-/

namespace A119959.P11718700553873892143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110833 (n + 1) - A001748 (n + 1)

end

end A119959.P11718700553873892143

namespace A119959

/-- `A110833(n+1)-A001748(n+1)` -/
def P11718700553873892143.Spec : Prop :=
  ∀ n, P11718700553873892143.a n = A119959 (n + 1)

end A119959

/-! ## A119959.P9639069558794494698

`A084920(n+1)-A040976(n+1)`
-/

namespace A119959.P9639069558794494698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084920 (n + 1) - A040976 (n + 1)

end

end A119959.P9639069558794494698

namespace A119959

/-- `A084920(n+1)-A040976(n+1)` -/
def P9639069558794494698.Spec : Prop :=
  ∀ n, P9639069558794494698.a n = A119959 (n + 1)

end A119959

/-! ## A119959.P3965876573417841692

`A049001(n+1)-A086801(n+1)`
-/

namespace A119959.P3965876573417841692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049001 (n + 1) - A086801 (n + 1)

end

end A119959.P3965876573417841692

namespace A119959

/-- `A049001(n+1)-A086801(n+1)` -/
def P3965876573417841692.Spec : Prop :=
  ∀ n, P3965876573417841692.a n = A119959 (n + 1)

end A119959

/-! ## A119959.P12628568065898175755

`A060800(n+1)-A100484(n+1)`
-/

namespace A119959.P12628568065898175755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060800 (n + 1) - A100484 (n + 1)

end

end A119959.P12628568065898175755

namespace A119959

/-- `A060800(n+1)-A100484(n+1)` -/
def P12628568065898175755.Spec : Prop :=
  ∀ n, P12628568065898175755.a n = A119959 (n + 1)

end A119959

/-! ## A119959.P14712910528221381173

`A083558(n+1)/A000040(n+1)`
-/

namespace A119959.P14712910528221381173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083558 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A119959.P14712910528221381173

namespace A119959

/-- `A083558(n+1)/A000040(n+1)` -/
def P14712910528221381173.Spec : Prop :=
  ∀ n, P14712910528221381173.a n = (A119959 (n + 1) : ℚ)

end A119959

/-! ## A119959.P17959117857396464743

`A030078(n+1)%A066872(n+1)`
-/

namespace A119959.P17959117857396464743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030078 (n + 1)) (A066872 (n + 1))

end

end A119959.P17959117857396464743

namespace A119959

/-- `A030078(n+1)%A066872(n+1)` -/
def P17959117857396464743.Spec : Prop :=
  ∀ n, P17959117857396464743.a n = A119959 (n + 1)

end A119959

/-! ## A119959.P17840785544995446111

`A092759(n+1)%A066872(n+1)`
-/

namespace A119959.P17840785544995446111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092759 (n + 1)) (A066872 (n + 1))

end

end A119959.P17840785544995446111

namespace A119959

/-- `A092759(n+1)%A066872(n+1)` -/
def P17840785544995446111.Spec : Prop :=
  ∀ n, P17840785544995446111.a n = A119959 (n + 1)

end A119959

/-! ## A119959.P7001522905204993170

`A131991(n+1)%A061725(n+1)`
-/

namespace A119959.P7001522905204993170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131991 (n + 1)) (A061725 (n + 1))

end

end A119959.P7001522905204993170

namespace A119959

/-- `A131991(n+1)%A061725(n+1)` -/
def P7001522905204993170.Spec : Prop :=
  ∀ n, P7001522905204993170.a n = A119959 (n + 1)

end A119959

/-! ## A119959.P8175785809229705788

`A030514(n+1)%A181151(n+1)`
-/

namespace A119959.P8175785809229705788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030514 (n + 1)) (A181151 (n + 1))

end

end A119959.P8175785809229705788

namespace A119959

/-- `A030514(n+1)%A181151(n+1)` -/
def P8175785809229705788.Spec : Prop :=
  ∀ n, P8175785809229705788.a n = A119959 (n + 1)

end A119959

/-! ## A119959.P1598822472939199828

`A131993(n+1)%A083558(n+1)`
-/

namespace A119959.P1598822472939199828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131993 (n + 1)) (A083558 (n + 1))

end

end A119959.P1598822472939199828

namespace A119959

/-- `A131993(n+1)%A083558(n+1)` -/
def P1598822472939199828.Spec : Prop :=
  ∀ n, P1598822472939199828.a n = A119959 (n + 1)

end A119959

/-! ## A119959.P15607348438426213709

`A181151(n+1)%A066872(n+1)`
-/

namespace A119959.P15607348438426213709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181151 (n + 1)) (A066872 (n + 1))

end

end A119959.P15607348438426213709

namespace A119959

/-- `A181151(n+1)%A066872(n+1)` -/
def P15607348438426213709.Spec : Prop :=
  ∀ n, P15607348438426213709.a n = A119959 (n + 1)

end A119959

/-!
# A119961: Semiprimes that are the sum of two triangular numbers.

The programs for A119961, there is no canonical definition to state claims against.
-/

/-! ## A119961.P12996255833195829886

`lt[A176873(n), A105700(n)²]`
-/

namespace A119961.P12996255833195829886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176873 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A119961.P12996255833195829886

/-! ## A119961.P15235645612358414268

`filter[A020756(n+2), A064911(#)]`
-/

namespace A119961.P15235645612358414268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020756 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A119961.P15235645612358414268

/-! ## A119961.P2914592027714447849

`eq[A002828(8*n+2), A105700(n)]`
-/

namespace A119961.P2914592027714447849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (8 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A119961.P2914592027714447849

/-! ## A119961.P13077291330161017245

`∩[A001358(n+1), A020756(n+1)]`
-/

namespace A119961.P13077291330161017245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119961.P13077291330161017245

/-! ## A119961.P1833926508852733084

`∩[floor(A057653(n+1)/4), A186621(n+1)+1]`
-/

namespace A119961.P1833926508852733084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A057653 (n + 1) : ℚ) / 4⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119961.P1833926508852733084

/-! ## A119961.P12448981105474512718

`∩[floor(A057653(n+1)/4), A088707(n+1)-1]`
-/

namespace A119961.P12448981105474512718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A057653 (n + 1) : ℚ) / 4⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119961.P12448981105474512718

/-! ## A119961.P16440261023875697752

`eq[A002828(A017089(n)), A284289(n)]`
-/

namespace A119961.P16440261023875697752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A017089 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A119961.P16440261023875697752

/-! ## A119961.P16551143833746279282

`eq[A000040(A226378(n)), A176873(n)]`
-/

namespace A119961.P16551143833746279282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A226378 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176873 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A119961.P16551143833746279282

/-! ## A119961.P15761024297200273386

`eq[A226378(n), A275365(A004020(n))]`
-/

namespace A119961.P15761024297200273386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275365 (A004020 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A119961.P15761024297200273386

/-! ## A119961.P15363239651349543724

`eq[A226378(n), A275365(A005883(n))]`
-/

namespace A119961.P15363239651349543724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275365 (A005883 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A119961.P15363239651349543724

/-!
# A119963: Triangle T(n,k), 0 <= k <= n, read by rows, with T(2n,2k) = T(2n+1,2k) = T(2n+1,2k+1) = T(2n+2,2k+1) = binomial(n,k).

The programs for A119963, the canonical program `A119963.P15712922093875506734` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119963 has offset 0).

The definition of A119963 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119963.P15712922093875506734

`A152198(A246694(n)-1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A119963

/-- `A152198(A246694(n)-1)` -/
def P15712922093875506734.Spec : Prop :=
  ∀ n, P15712922093875506734.a n = A119963 n

theorem P15712922093875506734.correct : P15712922093875506734.Spec := by
  intro n
  simp only [A119963]

end A119963

/-! ## A119963.P1244476989603742971

`2*A052307(n)-A047996(n)`
-/

namespace A119963.P1244476989603742971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052307 n - A047996 n

end

end A119963.P1244476989603742971

namespace A119963

/-- `2*A052307(n)-A047996(n)` -/
def P1244476989603742971.Spec : Prop :=
  ∀ n, P1244476989603742971.a n = A119963 n

end A119963

/-! ## A119963.P14036223261266618164

`A052307(n)-A180472(n)`
-/

namespace A119963.P14036223261266618164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 n - A180472 n

end

end A119963.P14036223261266618164

namespace A119963

/-- `A052307(n)-A180472(n)` -/
def P14036223261266618164.Spec : Prop :=
  ∀ n, P14036223261266618164.a n = A119963 n

end A119963

/-! ## A119963.P4681360509964440783

`A047996(n)-2*A180472(n)`
-/

namespace A119963.P4681360509964440783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 n - 2 * A180472 n

end

end A119963.P4681360509964440783

namespace A119963

/-- `A047996(n)-2*A180472(n)` -/
def P4681360509964440783.Spec : Prop :=
  ∀ n, P4681360509964440783.a n = A119963 n

end A119963

/-! ## A119963.P6134889944379772592

`A005843(A052307(n))-A047996(n)`
-/

namespace A119963.P6134889944379772592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A052307 n).toNat - A047996 n

end

end A119963.P6134889944379772592

namespace A119963

/-- `A005843(A052307(n))-A047996(n)` -/
def P6134889944379772592.Spec : Prop :=
  ∀ n, P6134889944379772592.a n = A119963 n

end A119963

/-! ## A119963.P16956096471982875446

`A152830(A161179(n+1))`
-/

namespace A119963.P16956096471982875446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152830 (A161179 (n + 1)).toNat

end

end A119963.P16956096471982875446

namespace A119963

/-- `A152830(A161179(n+1))` -/
def P16956096471982875446.Spec : Prop :=
  ∀ n, P16956096471982875446.a n = A119963 n

end A119963

/-!
# A119964: Numerator of the n-th Artin product.

The programs for A119964, there is no canonical definition to state claims against.
-/

/-! ## A119964.P3155159078965589368

`record[ratio[A063445(A076978(n+1))]]`
-/

namespace A119964.P3155159078965589368
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063445 (A076978 (n + 1)).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119964.P3155159078965589368

/-!
# A119965: The 3-almost primeth recurrence: a(0) = 1, a(n+1) = 3-almostprime(a(n)) = A014612(a(n)).

The programs for A119965, there is no canonical definition to state claims against.
-/

/-! ## A119965.P11305656774606421299

`A105346(a(n-2))` with `a(0)=1, a(1)=8`
-/

namespace A119965.P11305656774606421299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8] fun n a =>
  A105346 (a (n - 2)).toNat

end

end A119965.P11305656774606421299

/-! ## A119965.P9251143185517327131

`A014612(a(n-1))` with `a(0)=1`
-/

namespace A119965.P9251143185517327131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A014612 (a (n - 1)).toNat

end

end A119965.P9251143185517327131

/-! ## A119965.P18377827383828031069

`record[A014612(a(floor(n/2)))]` with `a(0)=1, a(1)=8, a(2)=1`
-/

namespace A119965.P18377827383828031069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 8, 1] fun n f1 =>
  A014612 (f1 ⌊(n : ℚ) / 2⌋.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119965.P18377827383828031069

/-!
# A119966: The n-almost primeth recurrence: a(0) = 1, a(n) = n-almostprime(a(n-1)).

The programs for A119966, there is no canonical definition to state claims against.
-/

/-! ## A119966.P9239751797865219545

`A074139(n)+A057353(A001923(n))`
-/

namespace A119966.P9239751797865219545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074139 n + A057353 (A001923 n).toNat

end

end A119966.P9239751797865219545

/-! ## A119966.P6715124561910286861

`A003991(A243667(n)+A138789(n+1))`
-/

namespace A119966.P6715124561910286861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (A243667 n + A138789 (n + 1)).toNat

end

end A119966.P6715124561910286861

/-!
# A119967: A transform of the central binomial coefficients C(n,floor(n/2)).

The programs for A119967, there is no canonical definition to state claims against.
-/

/-! ## A119967.P11280994751024150775

`A261585(A175655(n)+A172481(n))`
-/

namespace A119967.P11280994751024150775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 (A175655 n + A172481 n).toNat

end

end A119967.P11280994751024150775

/-! ## A119967.P14896423572548575533

`A026819(2*A307487(n))`
-/

namespace A119967.P14896423572548575533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (2 * A307487 n).toNat

end

end A119967.P14896423572548575533

/-! ## A119967.P9917712513855801943

`A088737(A104429(n))+floor(n*2^(n-3))`
-/

namespace A119967.P9917712513855801943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088737 (A104429 n).toNat + ⌊(n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ)⌋

end

end A119967.P9917712513855801943

/-! ## A119967.P7636671287715063864

`A368336(A374618(n))+floor(n*2^(n-3))`
-/

namespace A119967.P7636671287715063864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368336 (A374618 n).toNat + ⌊(n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ)⌋

end

end A119967.P7636671287715063864

/-! ## A119967.P15809037774591146899

`A053164(A187306(n+3))+A049610(n)`
-/

namespace A119967.P15809037774591146899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053164 (A187306 (n + 3)).toNat + A049610 n

end

end A119967.P15809037774591146899

/-!
# A119968: Binomial transform of Fredholm-Rueppel sequence.

The programs for A119968, the canonical program `A119968.P124219824570650553` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119968 has offset 0).

The definition of A119968 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 287 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119968.P124219824570650553

`∑{d}[A000079(A086520(n+3)), C(n, #-1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A119968

/-- `∑{d}[A000079(A086520(n+3)), C(n, #-1)]` -/
def P124219824570650553.Spec : Prop :=
  ∀ n, (P124219824570650553.a n : ℤ) = A119968 n

theorem P124219824570650553.correct : P124219824570650553.Spec := by
  intro n
  simp only [A119968]

end A119968

/-! ## A119968.P8052444436122874889

`Δ[∑{d}[A137688(n), C(n, #)]]`
-/

namespace A119968.P8052444436122874889
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137688 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, Nat.choose n d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A119968.P8052444436122874889

namespace A119968

/-- `Δ[∑{d}[A137688(n), C(n, #)]]` -/
def P8052444436122874889.Spec : Prop :=
  ∀ n, P8052444436122874889.a n = A119968 n

end A119968

/-! ## A119968.P10732112560241458308

`A129262(∑[n]+1)`
-/

namespace A119968.P10732112560241458308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129262 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A119968.P10732112560241458308

namespace A119968

/-- `A129262(∑[n]+1)` -/
def P10732112560241458308.Spec : Prop :=
  ∀ n, P10732112560241458308.a n = A119968 n

end A119968

/-! ## A119968.P2672408424086910953

`lcm(A057077(n), A129262(A000124(n)))`
-/

namespace A119968.P2672408424086910953
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A129262 (A000124 n).toNat)

end

end A119968.P2672408424086910953

namespace A119968

/-- `lcm(A057077(n), A129262(A000124(n)))` -/
def P2672408424086910953.Spec : Prop :=
  ∀ n, (P2672408424086910953.a n : ℤ) = A119968 n

end A119968

/-! ## A119968.P10173412814341122378

`A129262(A000124(n))+A011655(3*n)`
-/

namespace A119968.P10173412814341122378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129262 (A000124 n).toNat + A011655 (3 * n)

end

end A119968.P10173412814341122378

namespace A119968

/-- `A129262(A000124(n))+A011655(3*n)` -/
def P10173412814341122378.Spec : Prop :=
  ∀ n, P10173412814341122378.a n = A119968 n

end A119968

/-!
# A119969: Sum{k>=0, C(2^k-1,n-2*(2^k-1))}.

The programs for A119969, the canonical program `A119969.P5782052722859838512` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119969 has offset 0).

The definition of A119969 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1104 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119969.P12288051757063854430

`C(A277267(n+1), A053645(n+2))`
-/

namespace A119969.P12288051757063854430
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A277267 (n + 1)).toNat (A053645 (n + 2)).toNat

end

end A119969.P12288051757063854430

namespace A119969

/-- `C(A277267(n+1), A053645(n+2))` -/
def P12288051757063854430.Spec : Prop :=
  ∀ n, (P12288051757063854430.a n : ℤ) = A119969 n

end A119969

/-! ## A119969.P5782052722859838512

`C(A277267(n+1), A035327(A078881(n+1)))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A119969

/-- `C(A277267(n+1), A035327(A078881(n+1)))` -/
def P5782052722859838512.Spec : Prop :=
  ∀ n, (P5782052722859838512.a n : ℤ) = A119969 n

theorem P5782052722859838512.correct : P5782052722859838512.Spec := by
  intro n
  simp only [A119969]

end A119969

/-! ## A119969.P3254896373386248622

`C(A277267(n+1), A035327(A007378(n+2)))`
-/

namespace A119969.P3254896373386248622
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A277267 (n + 1)).toNat (A035327 (A007378 (n + 2)).toNat).toNat

end

end A119969.P3254896373386248622

namespace A119969

/-- `C(A277267(n+1), A035327(A007378(n+2)))` -/
def P3254896373386248622.Spec : Prop :=
  ∀ n, (P3254896373386248622.a n : ℤ) = A119969 n

end A119969

/-! ## A119969.P4111234123594245645

`C(A277267(n+1), A060973(A053642(n+2)))`
-/

namespace A119969.P4111234123594245645
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A277267 (n + 1)).toNat (A060973 (A053642 (n + 2)).toNat).toNat

end

end A119969.P4111234123594245645

namespace A119969

/-- `C(A277267(n+1), A060973(A053642(n+2)))` -/
def P4111234123594245645.Spec : Prop :=
  ∀ n, (P4111234123594245645.a n : ℤ) = A119969 n

end A119969

/-! ## A119969.P2579779558370192520

`C(A277267(n+2), A035327(A080637(n+2)))`
-/

namespace A119969.P2579779558370192520
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A277267 (n + 2)).toNat (A035327 (A080637 (n + 2)).toNat).toNat

end

end A119969.P2579779558370192520

namespace A119969

/-- `C(A277267(n+2), A035327(A080637(n+2)))` -/
def P2579779558370192520.Spec : Prop :=
  ∀ n, (P2579779558370192520.a n : ℤ) = A119969 n

end A119969

/-! ## A119969.P666767284582954390

`C(A092323(A092323(n+2)), A160588(2*(n+1)))`
-/

namespace A119969.P666767284582954390
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A092323 (A092323 (n + 2)).toNat).toNat (A160588 (2 * (n + 1))).toNat

end

end A119969.P666767284582954390

namespace A119969

/-- `C(A092323(A092323(n+2)), A160588(2*(n+1)))` -/
def P666767284582954390.Spec : Prop :=
  ∀ n, (P666767284582954390.a n : ℤ) = A119969 n

end A119969

/-! ## A119969.P4489397595181785212

`C(A053645(n-A053645(n+2)+1), A053645(n+2))`
-/

namespace A119969.P4489397595181785212
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A053645 ((n : ℤ) - A053645 (n + 2) + 1).toNat).toNat (A053645 (n + 2)).toNat

end

end A119969.P4489397595181785212

namespace A119969

/-- `C(A053645(n-A053645(n+2)+1), A053645(n+2))` -/
def P4489397595181785212.Spec : Prop :=
  ∀ n, (P4489397595181785212.a n : ℤ) = A119969 n

end A119969

/-!
# A119970: Binomial transform of A119969.

The programs for A119970, there is no canonical definition to state claims against.
-/

/-! ## A119970.P16350595609181491880

`∑[A119971(n)]`
-/

namespace A119970.P16350595609181491880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119971 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119970.P16350595609181491880

/-! ## A119970.P14350091368153847997

`a(n-1)+A119971(n)+A000007(n)` with `a(0)=1`
-/

namespace A119970.P14350091368153847997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A119971 n + A000007 n)

end

end A119970.P14350091368153847997

/-!
# A119972: a(n) = n * A034947(n).

The programs for A119972, the canonical program `A119972.P9804530373177183797` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119972 has offset 1).

The definition of A119972 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034947, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A119972.P9804530373177183797

`(n+1)*A034947(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A119972

/-- `(n+1)*A034947(n+1)` -/
def P9804530373177183797.Spec : Prop :=
  ∀ n, P9804530373177183797.a n = A119972 (n + 1)

theorem P9804530373177183797.correct : P9804530373177183797.Spec := by
  intro n
  simp only [A119972, Nat.add_sub_cancel]

end A119972

/-! ## A119972.P11659414888971065304

`(n+1)*Δ[xor(n, 2*n)]%2`
-/

namespace A119972.P11659414888971065304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) 2

end

end A119972.P11659414888971065304

namespace A119972

/-- `(n+1)*Δ[xor(n, 2*n)]%2` -/
def P11659414888971065304.Spec : Prop :=
  ∀ n, P11659414888971065304.a n = A119972 (n + 1)

end A119972

/-! ## A119972.P9001366356477577378

`xor(and(n, n+1), Δ[xor(n, floor(n/2))])`
-/

namespace A119972.P9001366356477577378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Nat.land n (n + 1) : ℤ) (f1 (n + 1) - f1 n)

end

end A119972.P9001366356477577378

namespace A119972

/-- `xor(and(n, n+1), Δ[xor(n, floor(n/2))])` -/
def P9001366356477577378.Spec : Prop :=
  ∀ n, P9001366356477577378.a n = A119972 (n + 1)

end A119972

/-! ## A119972.P7866258110819960320

`(n+1)*Δ[and(n, -(2*n+1))]%2`
-/

namespace A119972.P7866258110819960320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(2 * n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (f1 (n + 1) - f1 n) 2

end

end A119972.P7866258110819960320

namespace A119972

/-- `(n+1)*Δ[and(n, -(2*n+1))]%2` -/
def P7866258110819960320.Spec : Prop :=
  ∀ n, P7866258110819960320.a n = A119972 (n + 1)

end A119972

/-! ## A119972.P5063076977750475943

`(n+1)*(2*char[and(n, n+1)+n]-1)`
-/

namespace A119972.P5063076977750475943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1) + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (((2 * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ) - 1)

end

end A119972.P5063076977750475943

namespace A119972

/-- `(n+1)*(2*char[and(n, n+1)+n]-1)` -/
def P5063076977750475943.Spec : Prop :=
  ∀ n, P5063076977750475943.a n = A119972 (n + 1)

end A119972

/-! ## A119972.P13720356604717784480

`(n+1)*(1-2*char[or(n, n-1)+n])`
-/

namespace A119972.P13720356604717784480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ((n : ℤ) - 1) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (1 - ((2 * (if ∃ j, f1 j = (n : ℤ) then 1 else 0) : ℕ) : ℤ))

end

end A119972.P13720356604717784480

namespace A119972

/-- `(n+1)*(1-2*char[or(n, n-1)+n])` -/
def P13720356604717784480.Spec : Prop :=
  ∀ n, P13720356604717784480.a n = A119972 (n + 1)

end A119972

/-! ## A119972.P17295126352939708035

`(n+1)*(3-2*ceil(ratio[acot(xor(n, 2*n))]))`
-/

namespace A119972.P17295126352939708035
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (Nat.xor n (2 * n) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (3 - 2 * ⌈f1 (n + 1) / f1 n⌉)

end

end A119972.P17295126352939708035

namespace A119972

/-- `(n+1)*(3-2*ceil(ratio[acot(xor(n, 2*n))]))` -/
def P17295126352939708035.Spec : Prop :=
  ∀ n, P17295126352939708035.a n = A119972 (n + 1)

end A119972

/-! ## A119972.P5684407091678201915

`(n+1)/2^val(n+1, 2)*Δ[xor(n, floor(n/2))]`
-/

namespace A119972.P5684407091678201915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) * (f1 (n + 1) - f1 n : ℚ)

end

end A119972.P5684407091678201915

namespace A119972

/-- `(n+1)/2^val(n+1, 2)*Δ[xor(n, floor(n/2))]` -/
def P5684407091678201915.Spec : Prop :=
  ∀ n, P5684407091678201915.a n = (A119972 (n + 1) : ℚ)

end A119972

/-! ## A119972.P18081186545084557265

`(n+1)/(or(n, n+1)-n)*Δ[xor(n, floor(n/2))]`
-/

namespace A119972.P18081186545084557265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ) * (f1 (n + 1) - f1 n : ℚ)

end

end A119972.P18081186545084557265

namespace A119972

/-- `(n+1)/(or(n, n+1)-n)*Δ[xor(n, floor(n/2))]` -/
def P18081186545084557265.Spec : Prop :=
  ∀ n, P18081186545084557265.a n = (A119972 (n + 1) : ℚ)

end A119972

/-! ## A119972.P755903826207125524

`Δ[xor(n, floor(n/2))]/((n+1)/2^val(n+1, 2))^(1-2%(n+2))`
-/

namespace A119972.P755903826207125524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)) ^ (1 - ((2 % (n + 2) : ℕ) : ℤ) : ℤ)

end

end A119972.P755903826207125524

namespace A119972

/-- `Δ[xor(n, floor(n/2))]/((n+1)/2^val(n+1, 2))^(1-2%(n+2))` -/
def P755903826207125524.Spec : Prop :=
  ∀ n, P755903826207125524.a n = (A119972 (n + 1) : ℚ)

end A119972

/-! ## A119972.P5915516366768727323

`(n+1)*Δ[A005811(n)]`
-/

namespace A119972.P5915516366768727323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A119972.P5915516366768727323

namespace A119972

/-- `(n+1)*Δ[A005811(n)]` -/
def P5915516366768727323.Spec : Prop :=
  ∀ n, P5915516366768727323.a n = A119972 (n + 1)

end A119972

/-! ## A119972.P9514851490546462367

`(n+1)*Δ[A088748(n)]`
-/

namespace A119972.P9514851490546462367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088748 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A119972.P9514851490546462367

namespace A119972

/-- `(n+1)*Δ[A088748(n)]` -/
def P9514851490546462367.Spec : Prop :=
  ∀ n, P9514851490546462367.a n = A119972 (n + 1)

end A119972

/-! ## A119972.P2175435925529912276

`(n+1)*A112347(n+1)`
-/

namespace A119972.P2175435925529912276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A112347 (n + 1)

end

end A119972.P2175435925529912276

namespace A119972

/-- `(n+1)*A112347(n+1)` -/
def P2175435925529912276.Spec : Prop :=
  ∀ n, P2175435925529912276.a n = A119972 (n + 1)

end A119972

/-! ## A119972.P5306222973109522906

`n+1-2*A322015(n)`
-/

namespace A119972.P5306222973109522906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - 2 * A322015 n

end

end A119972.P5306222973109522906

namespace A119972

/-- `n+1-2*A322015(n)` -/
def P5306222973109522906.Spec : Prop :=
  ∀ n, P5306222973109522906.a n = A119972 (n + 1)

end A119972

/-! ## A119972.P9565227027749304035

`(n+1)*(2-A099545(n+1))`
-/

namespace A119972.P9565227027749304035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (2 - A099545 (n + 1))

end

end A119972.P9565227027749304035

namespace A119972

/-- `(n+1)*(2-A099545(n+1))` -/
def P9565227027749304035.Spec : Prop :=
  ∀ n, P9565227027749304035.a n = A119972 (n + 1)

end A119972

/-! ## A119972.P1101006804630161914

`(n+1)*A008683(ceil(ratio[acot(xor(n, 2*n))]))`
-/

namespace A119972.P1101006804630161914
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (Nat.xor n (2 * n) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A008683 ⌈f1 (n + 1) / f1 n⌉.toNat

end

end A119972.P1101006804630161914

namespace A119972

/-- `(n+1)*A008683(ceil(ratio[acot(xor(n, 2*n))]))` -/
def P1101006804630161914.Spec : Prop :=
  ∀ n, P1101006804630161914.a n = A119972 (n + 1)

end A119972

/-! ## A119972.P1201451400978810496

`(n+1)*(-1)^(((n+1)/2^A007814(n+1)-1)/2)`
-/

namespace A119972.P1201451400978810496
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * (-1 : ℝ) ^ (((n + 1 : ℚ) / (2 : ℚ) ^ (A007814 (n + 1) : ℤ) - 1) / 2 : ℝ)

end

end A119972.P1201451400978810496

namespace A119972

/-- `(n+1)*(-1)^(((n+1)/2^A007814(n+1)-1)/2)` -/
def P1201451400978810496.Spec : Prop :=
  ∀ n, P1201451400978810496.a n = (A119972 (n + 1) : ℝ)

end A119972

/-! ## A119972.P16864893594460563102

`(n+1)*A033999(A025480(n))`
-/

namespace A119972.P16864893594460563102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A033999 (A025480 n).toNat

end

end A119972.P16864893594460563102

namespace A119972

/-- `(n+1)*A033999(A025480(n))` -/
def P16864893594460563102.Spec : Prop :=
  ∀ n, P16864893594460563102.a n = A119972 (n + 1)

end A119972

/-! ## A119972.P15909007162852365681

`(n+1)*A009531(A000265(n+1))`
-/

namespace A119972.P15909007162852365681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A009531 (A000265 (n + 1)).toNat

end

end A119972.P15909007162852365681

namespace A119972

/-- `(n+1)*A009531(A000265(n+1))` -/
def P15909007162852365681.Spec : Prop :=
  ∀ n, P15909007162852365681.a n = A119972 (n + 1)

end A119972

/-! ## A119972.P13765639741381871298

`A000265(n+1)*A055975(n+1)`
-/

namespace A119972.P13765639741381871298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1) * A055975 (n + 1)

end

end A119972.P13765639741381871298

namespace A119972

/-- `A000265(n+1)*A055975(n+1)` -/
def P13765639741381871298.Spec : Prop :=
  ∀ n, P13765639741381871298.a n = A119972 (n + 1)

end A119972

/-!
# A119973: Numbers of the form (4k+1)*2^j which are not a sum of two squares.

The programs for A119973, the canonical program `A119973.P6279921155899130007` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119973 has offset 1).

The definition of A119973 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2254 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119973.P14480310084372152632

`∩[A000419(n+1), A091072(n+1)]`
-/

namespace A119973.P14480310084372152632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119973.P14480310084372152632

namespace A119973

/-- `∩[A000419(n+1), A091072(n+1)]` -/
def P14480310084372152632.Spec : Prop :=
  ∀ n, (P14480310084372152632.a n : ℤ) = A119973 (n + 1)

end A119973

/-! ## A119973.P2055900662657738910

`∩[A000419(n+1), A225836(n+1)]`
-/

namespace A119973.P2055900662657738910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225836 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119973.P2055900662657738910

namespace A119973

/-- `∩[A000419(n+1), A225836(n+1)]` -/
def P2055900662657738910.Spec : Prop :=
  ∀ n, (P2055900662657738910.a n : ℤ) = A119973 (n + 1)

end A119973

/-! ## A119973.P7420876869471454290

`∩[A022544(n+1), A091072(n+1)]`
-/

namespace A119973.P7420876869471454290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119973.P7420876869471454290

namespace A119973

/-- `∩[A022544(n+1), A091072(n+1)]` -/
def P7420876869471454290.Spec : Prop :=
  ∀ n, (P7420876869471454290.a n : ℤ) = A119973 (n + 1)

end A119973

/-! ## A119973.P3401035857286064592

`∩[A022544(n+1), A225836(n+1)]`
-/

namespace A119973.P3401035857286064592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225836 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119973.P3401035857286064592

namespace A119973

/-- `∩[A022544(n+1), A225836(n+1)]` -/
def P3401035857286064592.Spec : Prop :=
  ∀ n, (P3401035857286064592.a n : ℤ) = A119973 (n + 1)

end A119973

/-! ## A119973.P13290510930289967149

`eq[A000161(n), A038189(n)]`
-/

namespace A119973.P13290510930289967149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A119973.P13290510930289967149

namespace A119973

/-- `eq[A000161(n), A038189(n)]` -/
def P13290510930289967149.Spec : Prop :=
  ∀ n, (P13290510930289967149.a n : ℤ) = A119973 (n + 1)

end A119973

/-! ## A119973.P15927289950977663906

`eq[A000925(n), A038189(n)]`
-/

namespace A119973.P15927289950977663906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A119973.P15927289950977663906

namespace A119973

/-- `eq[A000925(n), A038189(n)]` -/
def P15927289950977663906.Spec : Prop :=
  ∀ n, (P15927289950977663906.a n : ℤ) = A119973 (n + 1)

end A119973

/-! ## A119973.P1616247756372828138

`eq[A004018(n), A038189(n)]`
-/

namespace A119973.P1616247756372828138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A119973.P1616247756372828138

namespace A119973

/-- `eq[A004018(n), A038189(n)]` -/
def P1616247756372828138.Spec : Prop :=
  ∀ n, (P1616247756372828138.a n : ℤ) = A119973 (n + 1)

end A119973

/-! ## A119973.P13548090486808388174

`eq[A038189(n), A104794(n)]`
-/

namespace A119973.P13548090486808388174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104794 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A119973.P13548090486808388174

namespace A119973

/-- `eq[A038189(n), A104794(n)]` -/
def P13548090486808388174.Spec : Prop :=
  ∀ n, (P13548090486808388174.a n : ℤ) = A119973 (n + 1)

end A119973

/-! ## A119973.P4865452863048614329

`eq[A038189(n), A122857(n)]`
-/

namespace A119973.P4865452863048614329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122857 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A119973.P4865452863048614329

namespace A119973

/-- `eq[A038189(n), A122857(n)]` -/
def P4865452863048614329.Spec : Prop :=
  ∀ n, (P4865452863048614329.a n : ℤ) = A119973 (n + 1)

end A119973

/-! ## A119973.P6279921155899130007

`eq[A038189(n), A125061(n)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A119973

/-- `eq[A038189(n), A125061(n)]` -/
def P6279921155899130007.Spec : Prop :=
  ∀ n, (P6279921155899130007.a n : ℤ) = A119973 (n + 1)

theorem P6279921155899130007.correct : P6279921155899130007.Spec := by
  intro n
  simp only [A119973, Nat.add_sub_cancel]

end A119973

/-! ## A119973.P2081018553898182520

`eq[A038189(n), A132003(n)]`
-/

namespace A119973.P2081018553898182520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132003 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A119973.P2081018553898182520

namespace A119973

/-- `eq[A038189(n), A132003(n)]` -/
def P2081018553898182520.Spec : Prop :=
  ∀ n, (P2081018553898182520.a n : ℤ) = A119973 (n + 1)

end A119973

/-! ## A119973.P11552714108872081564

`eq[A038189(n), A133573(n)]`
-/

namespace A119973.P11552714108872081564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133573 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A119973.P11552714108872081564

namespace A119973

/-- `eq[A038189(n), A133573(n)]` -/
def P11552714108872081564.Spec : Prop :=
  ∀ n, (P11552714108872081564.a n : ℤ) = A119973 (n + 1)

end A119973

/-! ## A119973.P14905318977527943133

`eq[A038189(n), A133574(n)]`
-/

namespace A119973.P14905318977527943133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133574 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A119973.P14905318977527943133

namespace A119973

/-- `eq[A038189(n), A133574(n)]` -/
def P14905318977527943133.Spec : Prop :=
  ∀ n, (P14905318977527943133.a n : ℤ) = A119973 (n + 1)

end A119973

/-! ## A119973.P11035744196182090742

`eq[A038189(n), A138745(n)]`
-/

namespace A119973.P11035744196182090742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138745 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A119973.P11035744196182090742

namespace A119973

/-- `eq[A038189(n), A138745(n)]` -/
def P11035744196182090742.Spec : Prop :=
  ∀ n, (P11035744196182090742.a n : ℤ) = A119973 (n + 1)

end A119973

/-! ## A119973.P8428678411958966569

`eq[A038189(n), A138949(n)]`
-/

namespace A119973.P8428678411958966569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138949 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A119973.P8428678411958966569

namespace A119973

/-- `eq[A038189(n), A138949(n)]` -/
def P8428678411958966569.Spec : Prop :=
  ∀ n, (P8428678411958966569.a n : ℤ) = A119973 (n + 1)

end A119973

/-! ## A119973.P5983845601892116306

`eq[A038189(n), A138951(n)]`
-/

namespace A119973.P5983845601892116306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138951 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A119973.P5983845601892116306

namespace A119973

/-- `eq[A038189(n), A138951(n)]` -/
def P5983845601892116306.Spec : Prop :=
  ∀ n, (P5983845601892116306.a n : ℤ) = A119973 (n + 1)

end A119973

/-! ## A119973.P10056549991456723331

`eq[A089013(n), A143574(n)]`
-/

namespace A119973.P10056549991456723331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089013 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143574 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A119973.P10056549991456723331

namespace A119973

/-- `eq[A089013(n), A143574(n)]` -/
def P10056549991456723331.Spec : Prop :=
  ∀ n, (P10056549991456723331.a n : ℤ) = A119973 (n + 1)

end A119973

/-! ## A119973.P4805876314665435428

`eq[A038189(n), A229062(n)]`
-/

namespace A119973.P4805876314665435428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229062 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A119973.P4805876314665435428

namespace A119973

/-- `eq[A038189(n), A229062(n)]` -/
def P4805876314665435428.Spec : Prop :=
  ∀ n, (P4805876314665435428.a n : ℤ) = A119973 (n + 1)

end A119973

/-! ## A119973.P10720791506771030088

`eq[A038189(n), A256014(n)]`
-/

namespace A119973.P10720791506771030088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256014 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A119973.P10720791506771030088

namespace A119973

/-- `eq[A038189(n), A256014(n)]` -/
def P10720791506771030088.Spec : Prop :=
  ∀ n, (P10720791506771030088.a n : ℤ) = A119973 (n + 1)

end A119973

/-! ## A119973.P3620946030846618136

`eq[A038189(n), A256280(n)]`
-/

namespace A119973.P3620946030846618136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256280 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A119973.P3620946030846618136

namespace A119973

/-- `eq[A038189(n), A256280(n)]` -/
def P3620946030846618136.Spec : Prop :=
  ∀ n, (P3620946030846618136.a n : ℤ) = A119973 (n + 1)

end A119973

/-!
# A119975: E.g.f. exp(x)*(Bessel_I(0,2*sqrt(2)x) + Bessel_I(1,2*sqrt(2)x)/sqrt(2)).

The programs for A119975, there is no canonical definition to state claims against.
-/

/-! ## A119975.P11469412944374514996

`A098518(n)+A084601(n)`
-/

namespace A119975.P11469412944374514996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098518 n + A084601 n

end

end A119975.P11469412944374514996

/-! ## A119975.P17375746339391221583

`A098518(n+1)-2*A098521(n)`
-/

namespace A119975.P17375746339391221583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098518 (n + 1) - 2 * A098521 n

end

end A119975.P17375746339391221583

/-! ## A119975.P13734960273519042193

`A115991(∑[n])+A098518(n)`
-/

namespace A119975.P13734960273519042193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115991 (∑ j ∈ Finset.range (n + 1), f1 j) + A098518 n

end

end A119975.P13734960273519042193

/-! ## A119975.P16968179131993848828

`A098518(n)+A084600(∑[2*n])`
-/

namespace A119975.P16968179131993848828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098518 n + A084600 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A119975.P16968179131993848828

/-! ## A119975.P3278195346535123741

`A098518(n)+A084600(n²)*A084600(A002378(n))`
-/

namespace A119975.P3278195346535123741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098518 n + A084600 (n ^ 2) * A084600 (A002378 n).toNat

end

end A119975.P3278195346535123741

/-!
# A119976: E.g.f. exp(2x)*(Bessel_I(0,2*sqrt(2)x) + Bessel_I(1,2*sqrt(2)x)/sqrt(2)).

The programs for A119976, the canonical program `A119976.P8860550643367457755` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119976 has offset 0).

The definition of A119976 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119976.P8860550643367457755

`(n+2)/2*A071356(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A119976

/-- `(n+2)/2*A071356(n)` -/
def P8860550643367457755.Spec : Prop :=
  ∀ n, P8860550643367457755.a n = (A119976 n : ℚ)

end A119976

/-! ## A119976.P13487451802964592478

`abs((n+2)*A100238(n+2)/4)`
-/

namespace A119976.P13487451802964592478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(n + 2 : ℚ) * ((A100238 (n + 2) : ℚ) / 4)|

end

end A119976.P13487451802964592478

namespace A119976

/-- `abs((n+2)*A100238(n+2)/4)` -/
def P13487451802964592478.Spec : Prop :=
  ∀ n, P13487451802964592478.a n = (A119976 n : ℚ)

end A119976

/-! ## A119976.P7916600751473081429

`C(n+2, 2)/2*A025227(n+2)/(n+1)`
-/

namespace A119976.P7916600751473081429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2) 2 : ℚ) / 2 * ((A025227 (n + 2) : ℚ) / (n + 1 : ℚ))

end

end A119976.P7916600751473081429

namespace A119976

/-- `C(n+2, 2)/2*A025227(n+2)/(n+1)` -/
def P7916600751473081429.Spec : Prop :=
  ∀ n, P7916600751473081429.a n = (A119976 n : ℚ)

end A119976

/-! ## A119976.P9261881447354256456

`(n+2)/2*A110681(A000217(n))`
-/

namespace A119976.P9261881447354256456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 2 * (A110681 (A000217 n).toNat : ℚ)

end

end A119976.P9261881447354256456

namespace A119976

/-- `(n+2)/2*A110681(A000217(n))` -/
def P9261881447354256456.Spec : Prop :=
  ∀ n, P9261881447354256456.a n = (A119976 n : ℚ)

end A119976

/-! ## A119976.P5711763029028421818

`(A006139(n)+A006139(n+1)/2)/2`
-/

namespace A119976.P5711763029028421818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A006139 n : ℚ) + (A006139 (n + 1) : ℚ) / 2) / 2

end

end A119976.P5711763029028421818

namespace A119976

/-- `(A006139(n)+A006139(n+1)/2)/2` -/
def P5711763029028421818.Spec : Prop :=
  ∀ n, P5711763029028421818.a n = (A119976 n : ℚ)

end A119976

/-! ## A119976.P14608281132707226202

`A374497(n)/(n+1)`
-/

namespace A119976.P14608281132707226202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A374497 n : ℚ) / (n + 1 : ℚ)

end

end A119976.P14608281132707226202

namespace A119976

/-- `A374497(n)/(n+1)` -/
def P14608281132707226202.Spec : Prop :=
  ∀ n, P14608281132707226202.a n = (A119976 n : ℚ)

end A119976

/-! ## A119976.P8149256786297865221

`A071356(n)/A387401(n)*A374497(n)`
-/

namespace A119976.P8149256786297865221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071356 n : ℚ) / (A387401 n : ℚ) * (A374497 n : ℚ)

end

end A119976.P8149256786297865221

namespace A119976

/-- `A071356(n)/A387401(n)*A374497(n)` -/
def P8149256786297865221.Spec : Prop :=
  ∀ n, P8149256786297865221.a n = (A119976 n : ℚ)

end A119976

/-!
# A119977: Triangular numbers that can be written as sum of three positive cubes.

The programs for A119977, there is no canonical definition to state claims against.
-/

/-! ## A119977.P2826731846034209251

`∩[A003072(n+1), A000217(n)]`
-/

namespace A119977.P2826731846034209251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119977.P2826731846034209251

/-! ## A119977.P16860238284774942898

`∩[A047702(n+1), A000217(n)]`
-/

namespace A119977.P16860238284774942898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047702 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119977.P16860238284774942898

/-! ## A119977.P14665495048959174671

`∩[A003072(n+1), A253145(n)]`
-/

namespace A119977.P14665495048959174671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119977.P14665495048959174671

/-! ## A119977.P17857803753136875084

`∩[A047702(n+1), A253145(n)]`
-/

namespace A119977.P17857803753136875084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047702 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119977.P17857803753136875084

/-! ## A119977.P2026861273066717476

`record[A286156(A003072(n+1))]`
-/

namespace A119977.P2026861273066717476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286156 (A003072 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119977.P2026861273066717476

/-!
# A119978: Denominator of the n-th Artin product.

The programs for A119978, there is no canonical definition to state claims against.
-/

/-! ## A119978.P7783646731124915212

`A299822(∏[∑[n*a(n-2)]])` with `a(0)=2, a(1)=1, a(2)=1`
-/

namespace A119978.P7783646731124915212
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 1] fun n f2 =>
  n * f2 (n - 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299822 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A119978.P7783646731124915212

/-!
# A119979: a(n+1)=(2^a(n) mod n)+1, with a(0)=1.

The programs for A119979, the canonical program `A119979.P3742151129110419223` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119979 has offset 0).

The definition of A119979 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 376 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119979.P14549416788789979297

`(2^a(n-1))%(n+1)+1` with `a(0)=1`
-/

namespace A119979.P14549416788789979297
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 ^ a (n - 1) % (n + 1) + 1

end

end A119979.P14549416788789979297

namespace A119979

/-- `(2^a(n-1))%(n+1)+1` -/
def P14549416788789979297.Spec : Prop :=
  ∀ n, (P14549416788789979297.a n : ℤ) = A119979 n

end A119979

/-! ## A119979.P3742151129110419223

`A000079(a(n-1))%(n+1)+1` with `a(0)=1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A119979

/-- `A000079(a(n-1))%(n+1)+1` -/
def P3742151129110419223.Spec : Prop :=
  ∀ n, P3742151129110419223.a n = A119979 n

theorem P3742151129110419223.correct : P3742151129110419223.Spec := by
  intro n
  simp only [A119979]

end A119979

/-! ## A119979.P13034093311632474597

`(A000225(a(n-1))+1)%(n+1)+1` with `a(0)=1`
-/

namespace A119979.P13034093311632474597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A000225 (a (n - 1)).toNat + 1) (n + 1 : ℤ) + 1

end

end A119979.P13034093311632474597

namespace A119979

/-- `(A000225(a(n-1))+1)%(n+1)+1` -/
def P13034093311632474597.Spec : Prop :=
  ∀ n, P13034093311632474597.a n = A119979 n

end A119979

/-! ## A119979.P4276740075574243504

`A011782(a(n-1)+1)%(n+1)+1` with `a(0)=1`
-/

namespace A119979.P4276740075574243504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A011782 (a (n - 1) + 1).toNat) (n + 1 : ℤ) + 1

end

end A119979.P4276740075574243504

namespace A119979

/-- `A011782(a(n-1)+1)%(n+1)+1` -/
def P4276740075574243504.Spec : Prop :=
  ∀ n, P4276740075574243504.a n = A119979 n

end A119979

/-! ## A119979.P3407922965644527145

`A000005(A000079(((1/2)^-a(n-1))%xor(n, -1)))` with `a(0)=1`
-/

namespace A119979.P3407922965644527145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000005 (A000079 (Int.tmod (SequenceMachineLib.roundAway (((1 : ℚ) / 2) ^ (-a (n - 1) : ℤ))) (Int.xor (n : ℤ) (-1))).toNat).toNat

end

end A119979.P3407922965644527145

namespace A119979

/-- `A000005(A000079(((1/2)^-a(n-1))%xor(n, -1)))` -/
def P3407922965644527145.Spec : Prop :=
  ∀ n, P3407922965644527145.a n = A119979 n

end A119979

/-!
# A119981: a(n) = 1 iff number congruent to {2, 4} mod 6 is equal to prime minus 3, otherwise a(n)=0.

The programs for A119981, there is no canonical definition to state claims against.
-/

/-! ## A119981.P14779347294335891439

`A125162(3*A101947(n+1))`
-/

namespace A119981.P14779347294335891439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125162 (3 * A101947 (n + 1)).toNat

end

end A119981.P14779347294335891439

/-! ## A119981.P4253647155293341123

`A125162(lt[A000203(n+1), A026367(n+1)])`
-/

namespace A119981.P4253647155293341123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026367 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125162 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A119981.P4253647155293341123

/-! ## A119981.P4160842776425006372

`A125162(lt[A319527(n+1), A250120(2*n+1)])`
-/

namespace A119981.P4160842776425006372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319527 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125162 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A119981.P4160842776425006372

/-! ## A119981.P12075614650022278153

`A071040(A357644(n)-A126796(n))`
-/

namespace A119981.P12075614650022278153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071040 (A357644 n - A126796 n).toNat

end

end A119981.P12075614650022278153

/-! ## A119981.P7515590822327035364

`A359249(A367734(n+2))`
-/

namespace A119981.P7515590822327035364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359249 (A367734 (n + 2)).toNat

end

end A119981.P7515590822327035364

/-!
# A119982: Numbers n such that n^24 + 1 = p*q with p,q distinct primes.

The programs for A119982, there is no canonical definition to state claims against.
-/

/-! ## A119982.P16357420083056944758

`∩[A006314(n+1), A250194(n+1)]`
-/

namespace A119982.P16357420083056944758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006314 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119982.P16357420083056944758

/-!
# A119983: Number of ways to partition 1 into reduced fractions i/j with j <= n.

The programs for A119983, there is no canonical definition to state claims against.
-/

/-! ## A119983.P17717617642324084942

`A115855(n+1)+1`
-/

namespace A119983.P17717617642324084942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115855 (n + 1) + 1

end

end A119983.P17717617642324084942

/-! ## A119983.P2578866924758896812

`A115856(n)+a(n-1)` with `a(0)=1`
-/

namespace A119983.P2578866924758896812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A115856 n + a (n - 1)

end

end A119983.P2578866924758896812

/-! ## A119983.P7982795952058162829

`∑[A115856(round(sqrt(n²+1)))]`
-/

namespace A119983.P7982795952058162829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115856 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119983.P7982795952058162829

/-! ## A119983.P8562667979771480769

`∑[A115856(abs(1-n)+1)]-1`
-/

namespace A119983.P8562667979771480769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115856 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A119983.P8562667979771480769

/-! ## A119983.P4820581606936225567

`A199343(A115855(n+1))`
-/

namespace A119983.P4820581606936225567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199343 (A115855 (n + 1)).toNat

end

end A119983.P4820581606936225567

/-!
# A119984: Numbers k such that Fibonacci(prime(k)) is prime.

The programs for A119984, there is no canonical definition to state claims against.
-/

/-! ## A119984.P4237879271448588211

`∑[A134851(n+1)]+2`
-/

namespace A119984.P4237879271448588211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134851 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A119984.P4237879271448588211

/-! ## A119984.P2892366017382449904

`A134851(n+1)+A000720(A001605(n+1))`
-/

namespace A119984.P2892366017382449904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134851 (n + 1) + A000720 (A001605 (n + 1)).toNat

end

end A119984.P2892366017382449904

/-! ## A119984.P13249987551970121629

`A000720(A083668(n+1))`
-/

namespace A119984.P13249987551970121629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A083668 (n + 1)).toNat

end

end A119984.P13249987551970121629

/-! ## A119984.P18347613326836027606

`A099801(A117517(n+1))`
-/

namespace A119984.P18347613326836027606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099801 (A117517 (n + 1)).toNat

end

end A119984.P18347613326836027606

/-! ## A119984.P3317259401830007020

`A000720(A001605(n+2))`
-/

namespace A119984.P3317259401830007020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A001605 (n + 2)).toNat

end

end A119984.P3317259401830007020

/-!
# A119985: Fixed point of the morphism a -> {a, floor(3a/2), 2a}, beginning with 1.

The programs for A119985, there is no canonical definition to state claims against.
-/

/-! ## A119985.P2439345950609594921

`A158478(A181716(n))^A081603(n)`
-/

namespace A119985.P2439345950609594921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158478 (A181716 n).toNat : ℚ) ^ (A081603 n : ℤ)

end

end A119985.P2439345950609594921

/-! ## A119985.P5620278772734209505

`or(A117592(n), A264476(A000124(n)))`
-/

namespace A119985.P5620278772734209505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A117592 n) (A264476 (A000124 n).toNat)

end

end A119985.P5620278772734209505

/-! ## A119985.P14773643159975304858

`A117592(n)+A055641(A238686(n))`
-/

namespace A119985.P14773643159975304858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117592 n + A055641 (A238686 n).toNat

end

end A119985.P14773643159975304858

/-! ## A119985.P12649890153038937571

`A290092(n)+A055641(A238686(n))`
-/

namespace A119985.P12649890153038937571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290092 n + A055641 (A238686 n).toNat

end

end A119985.P12649890153038937571

/-! ## A119985.P14068570567626107587

`A078627(A268811(n+1)^A359048(n+1))`
-/

namespace A119985.P14068570567626107587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078627 (SequenceMachineLib.roundAway ((A268811 (n + 1) : ℚ) ^ (A359048 (n + 1) : ℤ))).toNat

end

end A119985.P14068570567626107587

/-!
# A119990: a(1) = 1. a(n) = sum of the earlier terms of the sequence, a(k), where GCD(n,a(k)) is <= k, for 1 <= k <= n-1.

The programs for A119990, there is no canonical definition to state claims against.
-/

/-! ## A119990.P8473005693598928588

`A294876(A108087(2*a(n-1)))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4, a(4)=8, a(5)=16, a(6)=32`
-/

namespace A119990.P8473005693598928588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 4, 8, 16, 32] fun n a =>
  A294876 (A108087 (2 * a (n - 1)).toNat).toNat

end

end A119990.P8473005693598928588

/-! ## A119990.P11914669401864126289

`A057091(A352248(2*a(n-1)))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4, a(4)=8, a(5)=16, a(6)=32`
-/

namespace A119990.P11914669401864126289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 4, 8, 16, 32] fun n a =>
  A057091 (A352248 (2 * a (n - 1)).toNat).toNat

end

end A119990.P11914669401864126289

/-! ## A119990.P10624033022369950854

`A077221(A377281(2*a(n-1)))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4, a(4)=8, a(5)=16, a(6)=32`
-/

namespace A119990.P10624033022369950854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 4, 8, 16, 32] fun n a =>
  A077221 (A377281 (2 * a (n - 1)).toNat).toNat

end

end A119990.P10624033022369950854

/-! ## A119990.P11601765112135173725

`A011782(n)-A109618(A278241(n))`
-/

namespace A119990.P11601765112135173725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A109618 (A278241 n).toNat

end

end A119990.P11601765112135173725

/-! ## A119990.P7882128257071119372

`gcd(A003951(n), A344834(A289246(n)))`
-/

namespace A119990.P7882128257071119372
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003951 n) (A344834 (A289246 n).toNat)

end

end A119990.P7882128257071119372

/-!
# A119992: a(n) = n-th positive integer which is coprime to n!.

The programs for A119992, the canonical program `A119992.P16604952427629540782` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119992 has offset 1).

The definition of A119992 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119992.P16604952427629540782

`A008578(A095117(n+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A119992

/-- `A008578(A095117(n+1))` -/
def P16604952427629540782.Spec : Prop :=
  ∀ n, P16604952427629540782.a n = A119992 (n + 1)

theorem P16604952427629540782.correct : P16604952427629540782.Spec := by
  intro n
  simp only [A119992, Nat.add_sub_cancel]

end A119992

/-! ## A119992.P13601645487935470315

`A064989(A084792(n+1))`
-/

namespace A119992.P13601645487935470315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A084792 (n + 1)).toNat

end

end A119992.P13601645487935470315

namespace A119992

/-- `A064989(A084792(n+1))` -/
def P13601645487935470315.Spec : Prop :=
  ∀ n, P13601645487935470315.a n = A119992 (n + 1)

end A119992

/-! ## A119992.P2441185980922986278

`A283463(A077152(n+1))`
-/

namespace A119992.P2441185980922986278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283463 (A077152 (n + 1)).toNat

end

end A119992.P2441185980922986278

namespace A119992

/-- `A283463(A077152(n+1))` -/
def P2441185980922986278.Spec : Prop :=
  ∀ n, P2441185980922986278.a n = A119992 (n + 1)

end A119992

/-! ## A119992.P11127593158759843257

`A158611(A064427(n+2))`
-/

namespace A119992.P11127593158759843257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A064427 (n + 2)).toNat

end

end A119992.P11127593158759843257

namespace A119992

/-- `A158611(A064427(n+2))` -/
def P11127593158759843257.Spec : Prop :=
  ∀ n, P11127593158759843257.a n = A119992 (n + 1)

end A119992

/-! ## A119992.P12923130287550938192

`A283463(A084792(n+1)+1)`
-/

namespace A119992.P12923130287550938192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283463 (A084792 (n + 1) + 1).toNat

end

end A119992.P12923130287550938192

namespace A119992

/-- `A283463(A084792(n+1)+1)` -/
def P12923130287550938192.Spec : Prop :=
  ∀ n, P12923130287550938192.a n = A119992 (n + 1)

end A119992

/-! ## A119992.P13222972733155485043

`A008578(A064427(n+2)-1)`
-/

namespace A119992.P13222972733155485043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A064427 (n + 2) - 1).toNat

end

end A119992.P13222972733155485043

namespace A119992

/-- `A008578(A064427(n+2)-1)` -/
def P13222972733155485043.Spec : Prop :=
  ∀ n, P13222972733155485043.a n = A119992 (n + 1)

end A119992

/-! ## A119992.P2598648216145542606

`A008578(A036234(n+1)+n)`
-/

namespace A119992.P2598648216145542606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A036234 (n + 1) + (n : ℤ)).toNat

end

end A119992.P2598648216145542606

namespace A119992

/-- `A008578(A036234(n+1)+n)` -/
def P2598648216145542606.Spec : Prop :=
  ∀ n, P2598648216145542606.a n = A119992 (n + 1)

end A119992

/-! ## A119992.P1749995966831020775

`A008578(∑[A010051(n+1)+1])`
-/

namespace A119992.P1749995966831020775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A119992.P1749995966831020775

namespace A119992

/-- `A008578(∑[A010051(n+1)+1])` -/
def P1749995966831020775.Spec : Prop :=
  ∀ n, P1749995966831020775.a n = A119992 (n + 1)

end A119992

/-! ## A119992.P2011319303154597583

`A008578(∑[A080339(n+1)]+n)`
-/

namespace A119992.P2011319303154597583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A119992.P2011319303154597583

namespace A119992

/-- `A008578(∑[A080339(n+1)]+n)` -/
def P2011319303154597583.Spec : Prop :=
  ∀ n, P2011319303154597583.a n = A119992 (n + 1)

end A119992

/-! ## A119992.P14106625381201099161

`A008578(A000720(n+1)+1+n)`
-/

namespace A119992.P14106625381201099161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A000720 (n + 1) + 1 + (n : ℤ)).toNat

end

end A119992.P14106625381201099161

namespace A119992

/-- `A008578(A000720(n+1)+1+n)` -/
def P14106625381201099161.Spec : Prop :=
  ∀ n, P14106625381201099161.a n = A119992 (n + 1)

end A119992

/-! ## A119992.P8282058415585449442

`A158611(A036234(n+1)+1+n)`
-/

namespace A119992.P8282058415585449442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A036234 (n + 1) + 1 + (n : ℤ)).toNat

end

end A119992.P8282058415585449442

namespace A119992

/-- `A158611(A036234(n+1)+1+n)` -/
def P8282058415585449442.Spec : Prop :=
  ∀ n, P8282058415585449442.a n = A119992 (n + 1)

end A119992

/-! ## A119992.P9650434868597437270

`A028815(A000720(n+1)+n)-1`
-/

namespace A119992.P9650434868597437270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (A000720 (n + 1) + (n : ℤ)).toNat - 1

end

end A119992.P9650434868597437270

namespace A119992

/-- `A028815(A000720(n+1)+n)-1` -/
def P9650434868597437270.Spec : Prop :=
  ∀ n, P9650434868597437270.a n = A119992 (n + 1)

end A119992

/-! ## A119992.P5654499443996925

`A158611(A000720(n+1)+2+n)`
-/

namespace A119992.P5654499443996925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A000720 (n + 1) + 2 + (n : ℤ)).toNat

end

end A119992.P5654499443996925

namespace A119992

/-- `A158611(A000720(n+1)+2+n)` -/
def P5654499443996925.Spec : Prop :=
  ∀ n, P5654499443996925.a n = A119992 (n + 1)

end A119992

/-! ## A119992.P13753681573124684314

`A158611(A230980(n+1)+n+2)`
-/

namespace A119992.P13753681573124684314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A230980 (n + 1) + (n + 2 : ℤ)).toNat

end

end A119992.P13753681573124684314

namespace A119992

/-- `A158611(A230980(n+1)+n+2)` -/
def P13753681573124684314.Spec : Prop :=
  ∀ n, P13753681573124684314.a n = A119992 (n + 1)

end A119992

/-! ## A119992.P13255643954139826021

`A001747(A036234(n+1)+n)/2`
-/

namespace A119992.P13255643954139826021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001747 (A036234 (n + 1) + (n : ℤ)).toNat : ℚ) / 2

end

end A119992.P13255643954139826021

namespace A119992

/-- `A001747(A036234(n+1)+n)/2` -/
def P13255643954139826021.Spec : Prop :=
  ∀ n, P13255643954139826021.a n = (A119992 (n + 1) : ℚ)

end A119992

/-! ## A119992.P6401593975094395781

`A158611(∑[A010051(n+1)]+n+2)`
-/

namespace A119992.P6401593975094395781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 2 : ℤ)).toNat

end

end A119992.P6401593975094395781

namespace A119992

/-- `A158611(∑[A010051(n+1)]+n+2)` -/
def P6401593975094395781.Spec : Prop :=
  ∀ n, P6401593975094395781.a n = A119992 (n + 1)

end A119992

/-! ## A119992.P4476128749875328109

`A008578(∑[A101040(2*(n+1))]+n)`
-/

namespace A119992.P4476128749875328109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101040 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A119992.P4476128749875328109

namespace A119992

/-- `A008578(∑[A101040(2*(n+1))]+n)` -/
def P4476128749875328109.Spec : Prop :=
  ∀ n, P4476128749875328109.a n = A119992 (n + 1)

end A119992

/-! ## A119992.P17611540731470213467

`A008578(comp[A006093(n+1)+n]+1)`
-/

namespace A119992.P17611540731470213467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A119992.P17611540731470213467

namespace A119992

/-- `A008578(comp[A006093(n+1)+n]+1)` -/
def P17611540731470213467.Spec : Prop :=
  ∀ n, P17611540731470213467.a n = A119992 (n + 1)

end A119992

/-! ## A119992.P14339216405318102624

`A008578(2*n+1-A065855(n+1))`
-/

namespace A119992.P14339216405318102624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 ((2 * n + 1 : ℤ) - A065855 (n + 1)).toNat

end

end A119992.P14339216405318102624

namespace A119992

/-- `A008578(2*n+1-A065855(n+1))` -/
def P14339216405318102624.Spec : Prop :=
  ∀ n, P14339216405318102624.a n = A119992 (n + 1)

end A119992

/-! ## A119992.P493262364035195683

`A008578(∑[char[A020639(n+2)-1]]+n+1)`
-/

namespace A119992.P493262364035195683
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 1))

end

end A119992.P493262364035195683

namespace A119992

/-- `A008578(∑[char[A020639(n+2)-1]]+n+1)` -/
def P493262364035195683.Spec : Prop :=
  ∀ n, P493262364035195683.a n = A119992 (n + 1)

end A119992

/-!
# A119993: a(n) = n-th prime from among those primes which are coprime to n.

The programs for A119993, the canonical program `A119993.P13755993622550961966` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119993 has offset 1).

The definition of A119993 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A001221, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A119993.P13755993622550961966

`A000040(n+1+A001221(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A119993

/-- `A000040(n+1+A001221(n+1))` -/
def P13755993622550961966.Spec : Prop :=
  ∀ n, P13755993622550961966.a n = A119993 (n + 1)

theorem P13755993622550961966.correct : P13755993622550961966.Spec := by
  intro n
  simp only [A119993, Nat.add_sub_cancel]

end A119993

/-! ## A119993.P1464075953134885785

`A000040(∑{p}[n+1, gcd(n, #)]+1+n)`
-/

namespace A119993.P1464075953134885785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p + 1 + n)

end

end A119993.P1464075953134885785

namespace A119993

/-- `A000040(∑{p}[n+1, gcd(n, #)]+1+n)` -/
def P1464075953134885785.Spec : Prop :=
  ∀ n, P1464075953134885785.a n = A119993 (n + 1)

end A119993

/-! ## A119993.P8765707796559560456

`A000040(∑{e}[∏{p}[n+1, #], #]+1+n)`
-/

namespace A119993.P8765707796559560456
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + 1 + n)

end

end A119993.P8765707796559560456

namespace A119993

/-- `A000040(∑{e}[∏{p}[n+1, #], #]+1+n)` -/
def P8765707796559560456.Spec : Prop :=
  ∀ n, P8765707796559560456.a n = A119993 (n + 1)

end A119993

/-! ## A119993.P288692921753769586

`A000040(∑{p}[n+1, floor(atan(#))]+n+1)`
-/

namespace A119993.P288692921753769586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ p ∈ Nat.primeFactors (f1 n), ⌊Real.arctan (p : ℝ)⌋ + (n + 1 : ℤ)).toNat

end

end A119993.P288692921753769586

namespace A119993

/-- `A000040(∑{p}[n+1, floor(atan(#))]+n+1)` -/
def P288692921753769586.Spec : Prop :=
  ∀ n, P288692921753769586.a n = A119993 (n + 1)

end A119993

/-! ## A119993.P1232715683506379899

`A000040(∑{e}[n+1, round(atan(#))]+1+n)`
-/

namespace A119993.P1232715683506379899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.roundAway (Real.arctan (Nat.factorization (f1 n) p : ℝ)) + 1 + (n : ℤ)).toNat

end

end A119993.P1232715683506379899

namespace A119993

/-- `A000040(∑{e}[n+1, round(atan(#))]+1+n)` -/
def P1232715683506379899.Spec : Prop :=
  ∀ n, P1232715683506379899.a n = A119993 (n + 1)

end A119993

/-! ## A119993.P15779676206555778480

`A000040(∑{e}[n+1, ceil(tanh(#))]+1+n)`
-/

namespace A119993.P15779676206555778480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ p ∈ Nat.primeFactors (f1 n), ⌈Real.tanh (Nat.factorization (f1 n) p : ℝ)⌉ + 1 + (n : ℤ)).toNat

end

end A119993.P15779676206555778480

namespace A119993

/-- `A000040(∑{e}[n+1, ceil(tanh(#))]+1+n)` -/
def P15779676206555778480.Spec : Prop :=
  ∀ n, P15779676206555778480.a n = A119993 (n + 1)

end A119993

/-! ## A119993.P6348464905664283614

`A000040(∑{p}[n+1, ceil(acot(#))]+1+n)`
-/

namespace A119993.P6348464905664283614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ p ∈ Nat.primeFactors (f1 n), ⌈SequenceMachineLib.acot (p : ℝ)⌉ + 1 + (n : ℤ)).toNat

end

end A119993.P6348464905664283614

namespace A119993

/-- `A000040(∑{p}[n+1, ceil(acot(#))]+1+n)` -/
def P6348464905664283614.Spec : Prop :=
  ∀ n, P6348464905664283614.a n = A119993 (n + 1)

end A119993

/-! ## A119993.P3655921300668535429

`A000040(∑{e}[n+1, ceil(acot(#))]+1+n)`
-/

namespace A119993.P3655921300668535429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ p ∈ Nat.primeFactors (f1 n), ⌈SequenceMachineLib.acot (Nat.factorization (f1 n) p : ℝ)⌉ + 1 + (n : ℤ)).toNat

end

end A119993.P3655921300668535429

namespace A119993

/-- `A000040(∑{e}[n+1, ceil(acot(#))]+1+n)` -/
def P3655921300668535429.Spec : Prop :=
  ∀ n, P3655921300668535429.a n = A119993 (n + 1)

end A119993

/-! ## A119993.P17570056224742558537

`A000040(∑{e}[n+1, (#%2)!]+n+1)`
-/

namespace A119993.P17570056224742558537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorial (Nat.factorization (f1 n) p % 2) + (n + 1))

end

end A119993.P17570056224742558537

namespace A119993

/-- `A000040(∑{e}[n+1, (#%2)!]+n+1)` -/
def P17570056224742558537.Spec : Prop :=
  ∀ n, P17570056224742558537.a n = A119993 (n + 1)

end A119993

/-! ## A119993.P4586813512833107986

`A000040(ceil(∑{p}[n+1, root(γ, #)])+n+1)`
-/

namespace A119993.P4586813512833107986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (⌈∑ p ∈ Nat.primeFactors (f1 n), Real.eulerMascheroniConstant ^ (1 / (p : ℝ))⌉ + (n + 1 : ℤ)).toNat

end

end A119993.P4586813512833107986

namespace A119993

/-- `A000040(ceil(∑{p}[n+1, root(γ, #)])+n+1)` -/
def P4586813512833107986.Spec : Prop :=
  ∀ n, P4586813512833107986.a n = A119993 (n + 1)

end A119993

/-! ## A119993.P8956499137516687248

`A000040(∑{e}[n+1, C(#, n)!]+n+1)`
-/

namespace A119993.P8956499137516687248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorial (Nat.choose (Nat.factorization (f1 n) p) n) + n + 1)

end

end A119993.P8956499137516687248

namespace A119993

/-- `A000040(∑{e}[n+1, C(#, n)!]+n+1)` -/
def P8956499137516687248.Spec : Prop :=
  ∀ n, P8956499137516687248.a n = A119993 (n + 1)

end A119993

/-! ## A119993.P15922229335887131472

`A000040(A229109(n+1))`
-/

namespace A119993.P15922229335887131472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A229109 (n + 1)).toNat

end

end A119993.P15922229335887131472

namespace A119993

/-- `A000040(A229109(n+1))` -/
def P15922229335887131472.Spec : Prop :=
  ∀ n, P15922229335887131472.a n = A119993 (n + 1)

end A119993

/-! ## A119993.P16790511180078410396

`A000040(A083399(n+1)+n)`
-/

namespace A119993.P16790511180078410396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A083399 (n + 1) + (n : ℤ)).toNat

end

end A119993.P16790511180078410396

namespace A119993

/-- `A000040(A083399(n+1)+n)` -/
def P16790511180078410396.Spec : Prop :=
  ∀ n, P16790511180078410396.a n = A119993 (n + 1)

end A119993

/-! ## A119993.P12880833844499557568

`A000040(A000005(A034444(n+1))+n)`
-/

namespace A119993.P12880833844499557568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000005 (A034444 (n + 1)).toNat + (n : ℤ)).toNat

end

end A119993.P12880833844499557568

namespace A119993

/-- `A000040(A000005(A034444(n+1))+n)` -/
def P12880833844499557568.Spec : Prop :=
  ∀ n, P12880833844499557568.a n = A119993 (n + 1)

end A119993

/-! ## A119993.P16108877706530002947

`A000040(A304408(A034444(n+1))+n)`
-/

namespace A119993.P16108877706530002947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A304408 (A034444 (n + 1)).toNat + (n : ℤ)).toNat

end

end A119993.P16108877706530002947

namespace A119993

/-- `A000040(A304408(A034444(n+1))+n)` -/
def P16108877706530002947.Spec : Prop :=
  ∀ n, P16108877706530002947.a n = A119993 (n + 1)

end A119993

/-! ## A119993.P7904082940144456193

`A008578(A083399(n+1)+n+1)`
-/

namespace A119993.P7904082940144456193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A083399 (n + 1) + (n + 1 : ℤ)).toNat

end

end A119993.P7904082940144456193

namespace A119993

/-- `A008578(A083399(n+1)+n+1)` -/
def P7904082940144456193.Spec : Prop :=
  ∀ n, P7904082940144456193.a n = A119993 (n + 1)

end A119993

/-! ## A119993.P6077376658842385290

`A008578(A001221(n+1)+n+2)`
-/

namespace A119993.P6077376658842385290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A001221 (n + 1) + (n + 2 : ℤ)).toNat

end

end A119993.P6077376658842385290

namespace A119993

/-- `A008578(A001221(n+1)+n+2)` -/
def P6077376658842385290.Spec : Prop :=
  ∀ n, P6077376658842385290.a n = A119993 (n + 1)

end A119993

/-! ## A119993.P7765282498061011024

`A005117(A071403(A001221(n+1)+n+1))`
-/

namespace A119993.P7765282498061011024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (A071403 (A001221 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A119993.P7765282498061011024

namespace A119993

/-- `A005117(A071403(A001221(n+1)+n+1))` -/
def P7765282498061011024.Spec : Prop :=
  ∀ n, P7765282498061011024.a n = A119993 (n + 1)

end A119993

/-! ## A119993.P7725761729655818911

`A000040(A001222(A324291(n+1))+n+1)`
-/

namespace A119993.P7725761729655818911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A001222 (A324291 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A119993.P7725761729655818911

namespace A119993

/-- `A000040(A001222(A324291(n+1))+n+1)` -/
def P7725761729655818911.Spec : Prop :=
  ∀ n, P7725761729655818911.a n = A119993 (n + 1)

end A119993

/-! ## A119993.P4233700574164621120

`A302024(A050376(A001221(n+1)+n+1))`
-/

namespace A119993.P4233700574164621120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302024 (A050376 (A001221 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A119993.P4233700574164621120

namespace A119993

/-- `A302024(A050376(A001221(n+1)+n+1))` -/
def P4233700574164621120.Spec : Prop :=
  ∀ n, P4233700574164621120.a n = A119993 (n + 1)

end A119993

/-!
# A119994: Fixed point of the morphism a -> {a, a + 1, Prime(a + 1)}, beginning with 0.

The programs for A119994, there is no canonical definition to state claims against.
-/

/-! ## A119994.P15622897942698257422

`or(A001222(A280691(n+1)), A053735(n))`
-/

namespace A119994.P15622897942698257422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A280691 (n + 1)).toNat) (A053735 n)

end

end A119994.P15622897942698257422

/-! ## A119994.P281995687860868300

`or(A040076(∏{d}[n+1, #]/(n+1)), A053735(n))`
-/

namespace A119994.P281995687860868300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A040076 (SequenceMachineLib.roundAway (((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (n + 1 : ℚ))).toNat) (A053735 n)

end

end A119994.P281995687860868300

/-! ## A119994.P11576414846175999668

`or(A053735(n), A130654(A130674(n+1)))`
-/

namespace A119994.P11576414846175999668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A053735 n) (A130654 (A130674 (n + 1)).toNat)

end

end A119994.P11576414846175999668

/-! ## A119994.P8033753192583052966

`or(A053735(n), A284203(A273013(n+1)))`
-/

namespace A119994.P8033753192583052966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A053735 n) (A284203 (A273013 (n + 1)).toNat)

end

end A119994.P8033753192583052966

/-! ## A119994.P14298211844274079344

`or(A053735(n), A367512(A053191(n+1)))`
-/

namespace A119994.P14298211844274079344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A053735 n) (A367512 (A053191 (n + 1)).toNat)

end

end A119994.P14298211844274079344

/-!
# A119995: Fixed point of the morphism a -> {a, a + 1, Ceiling(Log(a + 1))}, beginning with 0.

The programs for A119995, the canonical program `A119995.P10582924367548273706` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119995 has offset 0).

The definition of A119995 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119995.P10582924367548273706

`ceil(A062756(n)/(C(n%6, 5)+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A119995

/-- `ceil(A062756(n)/(C(n%6, 5)+1))` -/
def P10582924367548273706.Spec : Prop :=
  ∀ n, P10582924367548273706.a n = A119995 n

theorem P10582924367548273706.correct : P10582924367548273706.Spec := by
  intro n
  simp only [A119995]

end A119995

/-! ## A119995.P13402091015946752381

`ceil(A062756(n)/A204697(n))`
-/

namespace A119995.P13402091015946752381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A062756 n : ℚ) / (A204697 n : ℚ)⌉

end

end A119995.P13402091015946752381

namespace A119995

/-- `ceil(A062756(n)/A204697(n))` -/
def P13402091015946752381.Spec : Prop :=
  ∀ n, P13402091015946752381.a n = A119995 n

end A119995

/-! ## A119995.P16631750893203326319

`ceil(A062756(n)/A245477(n))`
-/

namespace A119995.P16631750893203326319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A062756 n : ℚ) / (A245477 n : ℚ)⌉

end

end A119995.P16631750893203326319

namespace A119995

/-- `ceil(A062756(n)/A245477(n))` -/
def P16631750893203326319.Spec : Prop :=
  ∀ n, P16631750893203326319.a n = A119995 n

end A119995

/-! ## A119995.P14509100292316011085

`round(A062756(3*n)/A204697(n))`
-/

namespace A119995.P14509100292316011085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A062756 (3 * n) : ℚ) / (A204697 n : ℚ))

end

end A119995.P14509100292316011085

namespace A119995

/-- `round(A062756(3*n)/A204697(n))` -/
def P14509100292316011085.Spec : Prop :=
  ∀ n, P14509100292316011085.a n = A119995 n

end A119995

/-! ## A119995.P14728609266535253573

`round(A062756(3*n)/A245477(n))`
-/

namespace A119995.P14728609266535253573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A062756 (3 * n) : ℚ) / (A245477 n : ℚ))

end

end A119995.P14728609266535253573

namespace A119995

/-- `round(A062756(3*n)/A245477(n))` -/
def P14728609266535253573.Spec : Prop :=
  ∀ n, P14728609266535253573.a n = A119995 n

end A119995

/-! ## A119995.P10738810089142829831

`A062756(n*A128564(a(n-1)))` with `a(0)=0`
-/

namespace A119995.P10738810089142829831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A062756 ((n : ℤ) * A128564 (a (n - 1)).toNat).toNat

end

end A119995.P10738810089142829831

namespace A119995

/-- `A062756(n*A128564(a(n-1)))` -/
def P10738810089142829831.Spec : Prop :=
  ∀ n, P10738810089142829831.a n = A119995 n

end A119995

/-! ## A119995.P16516667309032059982

`xor(A002265(a(n-1)), A062756(n))` with `a(0)=0`
-/

namespace A119995.P16516667309032059982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.xor (A002265 (a (n - 1)).toNat) (A062756 n)

end

end A119995.P16516667309032059982

namespace A119995

/-- `xor(A002265(a(n-1)), A062756(n))` -/
def P16516667309032059982.Spec : Prop :=
  ∀ n, P16516667309032059982.a n = A119995 n

end A119995

/-! ## A119995.P8662747619923611660

`ceil(cos(A189640(n+1))*A062756(n))`
-/

namespace A119995.P8662747619923611660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cos (A189640 (n + 1) : ℝ) * (A062756 n : ℝ)⌉

end

end A119995.P8662747619923611660

namespace A119995

/-- `ceil(cos(A189640(n+1))*A062756(n))` -/
def P8662747619923611660.Spec : Prop :=
  ∀ n, P8662747619923611660.a n = A119995 n

end A119995

/-! ## A119995.P826121675861509731

`and(A058695(a(n-1)), A062756(n))` with `a(0)=0, a(1)=1`
-/

namespace A119995.P826121675861509731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.land (A058695 (a (n - 1)).toNat) (A062756 n)

end

end A119995.P826121675861509731

namespace A119995

/-- `and(A058695(a(n-1)), A062756(n))` -/
def P826121675861509731.Spec : Prop :=
  ∀ n, P826121675861509731.a n = A119995 n

end A119995

/-! ## A119995.P6513834424567864163

`A062756(val(A128564(a(n-1)), 2)+n)` with `a(0)=0`
-/

namespace A119995.P6513834424567864163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A062756 (SequenceMachineLib.valuation (A128564 (a (n - 1)).toNat).toNat 2 + n)

end

end A119995.P6513834424567864163

namespace A119995

/-- `A062756(val(A128564(a(n-1)), 2)+n)` -/
def P6513834424567864163.Spec : Prop :=
  ∀ n, P6513834424567864163.a n = A119995 n

end A119995

/-! ## A119995.P12766929152312910530

`A001222(or(A080225(n+1), A120880(n)))`
-/

namespace A119995.P12766929152312910530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor (A080225 (n + 1)) (A120880 n)).toNat

end

end A119995.P12766929152312910530

namespace A119995

/-- `A001222(or(A080225(n+1), A120880(n)))` -/
def P12766929152312910530.Spec : Prop :=
  ∀ n, P12766929152312910530.a n = A119995 n

end A119995

/-! ## A119995.P12975332536602124294

`A001222(or(A120880(n), A122841(n+1)))`
-/

namespace A119995.P12975332536602124294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor (A120880 n) (A122841 (n + 1))).toNat

end

end A119995.P12975332536602124294

namespace A119995

/-- `A001222(or(A120880(n), A122841(n+1)))` -/
def P12975332536602124294.Spec : Prop :=
  ∀ n, P12975332536602124294.a n = A119995 n

end A119995

/-! ## A119995.P6005307891749286421

`A053829(A062756(n)^Δ[A020658(n+1)])`
-/

namespace A119995.P6005307891749286421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020658 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 (SequenceMachineLib.roundAway ((A062756 n : ℚ) ^ (f1 (n + 1) - f1 n : ℤ))).toNat

end

end A119995.P6005307891749286421

namespace A119995

/-- `A053829(A062756(n)^Δ[A020658(n+1)])` -/
def P6005307891749286421.Spec : Prop :=
  ∀ n, P6005307891749286421.a n = A119995 n

end A119995

/-! ## A119995.P10437285301398004447

`A062756(n)+A008683(A161448(a(a(n-1))+1))` with `a(0)=0`
-/

namespace A119995.P10437285301398004447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A062756 n + A008683 (A161448 (a (a (n - 1)).toNat + 1).toNat).toNat

end

end A119995.P10437285301398004447

namespace A119995

/-- `A062756(n)+A008683(A161448(a(a(n-1))+1))` -/
def P10437285301398004447.Spec : Prop :=
  ∀ n, P10437285301398004447.a n = A119995 n

end A119995

/-! ## A119995.P12506046948743388475

`A001222(A297155(A066262(n+1))+A120880(n))`
-/

namespace A119995.P12506046948743388475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A297155 (A066262 (n + 1)).toNat + A120880 n).toNat

end

end A119995.P12506046948743388475

namespace A119995

/-- `A001222(A297155(A066262(n+1))+A120880(n))` -/
def P12506046948743388475.Spec : Prop :=
  ∀ n, P12506046948743388475.a n = A119995 n

end A119995

/-! ## A119995.P17478472540453514475

`A062756(n)+A008683(A008458(A260370(a(n-1)+1)))` with `a(0)=0`
-/

namespace A119995.P17478472540453514475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A062756 n + A008683 (A008458 (A260370 (a (n - 1) + 1).toNat).toNat).toNat

end

end A119995.P17478472540453514475

namespace A119995

/-- `A062756(n)+A008683(A008458(A260370(a(n-1)+1)))` -/
def P17478472540453514475.Spec : Prop :=
  ∀ n, P17478472540453514475.a n = A119995 n

end A119995

/-!
# A119996: Numerator of Sum_{k=1..n} 1/(Fibonacci(k)*Fibonacci(k+2)).

The programs for A119996, the canonical program `A119996.P6624151385795122694` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119996 has offset 1).

The definition of A119996 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A119996.P6624151385795122694

`3*a(n-1)-3*a(n-3)+a(n-4)` with `a(0)=1, a(1)=5, a(2)=14, a(3)=39`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A119996

/-- `3*a(n-1)-3*a(n-3)+a(n-4)` -/
def P6624151385795122694.Spec : Prop :=
  ∀ n, P6624151385795122694.a n = A119996 (n + 1)

theorem P6624151385795122694.correct : P6624151385795122694.Spec := by
  intro n
  simp only [A119996, Nat.add_sub_cancel]

end A119996

/-! ## A119996.P2843308587217258613

`∑[∑[a(n-1)+a(n-2)]²]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A119996.P2843308587217258613
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n f2 =>
  f2 (n - 1) + f2 (n - 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119996.P2843308587217258613

namespace A119996

/-- `∑[∑[a(n-1)+a(n-2)]²]` -/
def P2843308587217258613.Spec : Prop :=
  ∀ n, (P2843308587217258613.a n : ℤ) = A119996 (n + 1)

end A119996

/-! ## A119996.P17201684355155931688

`∑[record[A380696(n)]]`
-/

namespace A119996.P17201684355155931688
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380696 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119996.P17201684355155931688

namespace A119996

/-- `∑[record[A380696(n)]]` -/
def P17201684355155931688.Spec : Prop :=
  ∀ n, P17201684355155931688.a n = A119996 (n + 1)

end A119996

/-! ## A119996.P7640857928972971295

`∑[A080097(n)+1]`
-/

namespace A119996.P7640857928972971295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080097 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119996.P7640857928972971295

namespace A119996

/-- `∑[A080097(n)+1]` -/
def P7640857928972971295.Spec : Prop :=
  ∀ n, P7640857928972971295.a n = A119996 (n + 1)

end A119996

/-! ## A119996.P13752364525380944258

`∑[A007598(n+2)]`
-/

namespace A119996.P13752364525380944258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119996.P13752364525380944258

namespace A119996

/-- `∑[A007598(n+2)]` -/
def P13752364525380944258.Spec : Prop :=
  ∀ n, P13752364525380944258.a n = A119996 (n + 1)

end A119996

/-! ## A119996.P8478837845905037668

`∑[Δ[A001911(n)]²]`
-/

namespace A119996.P8478837845905037668
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119996.P8478837845905037668

namespace A119996

/-- `∑[Δ[A001911(n)]²]` -/
def P8478837845905037668.Spec : Prop :=
  ∀ n, P8478837845905037668.a n = A119996 (n + 1)

end A119996

/-! ## A119996.P8938298727574879337

`∑[Δ[A020695(n)]²]`
-/

namespace A119996.P8938298727574879337
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119996.P8938298727574879337

namespace A119996

/-- `∑[Δ[A020695(n)]²]` -/
def P8938298727574879337.Spec : Prop :=
  ∀ n, P8938298727574879337.a n = A119996 (n + 1)

end A119996

/-! ## A119996.P8292443874157320378

`∑[record[A212804(n)²]]`
-/

namespace A119996.P8292443874157320378
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119996.P8292443874157320378

namespace A119996

/-- `∑[record[A212804(n)²]]` -/
def P8292443874157320378.Spec : Prop :=
  ∀ n, P8292443874157320378.a n = A119996 (n + 1)

end A119996

/-! ## A119996.P10119662324893154440

`A001654(n+2)-1`
-/

namespace A119996.P10119662324893154440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 (n + 2) - 1

end

end A119996.P10119662324893154440

namespace A119996

/-- `A001654(n+2)-1` -/
def P10119662324893154440.Spec : Prop :=
  ∀ n, P10119662324893154440.a n = A119996 (n + 1)

end A119996

/-! ## A119996.P14349065708326400326

`∑[A000045(n+2)²]`
-/

namespace A119996.P14349065708326400326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119996.P14349065708326400326

namespace A119996

/-- `∑[A000045(n+2)²]` -/
def P14349065708326400326.Spec : Prop :=
  ∀ n, P14349065708326400326.a n = A119996 (n + 1)

end A119996

/-! ## A119996.P7068849542394250377

`∑[A236191(n+2)²]`
-/

namespace A119996.P7068849542394250377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236191 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119996.P7068849542394250377

namespace A119996

/-- `∑[A236191(n+2)²]` -/
def P7068849542394250377.Spec : Prop :=
  ∀ n, P7068849542394250377.a n = A119996 (n + 1)

end A119996

/-! ## A119996.P5441454444897427332

`∑[A333378(n+2)²]`
-/

namespace A119996.P5441454444897427332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333378 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119996.P5441454444897427332

namespace A119996

/-- `∑[A333378(n+2)²]` -/
def P5441454444897427332.Spec : Prop :=
  ∀ n, P5441454444897427332.a n = A119996 (n + 1)

end A119996

/-! ## A119996.P13022028168601818170

`∑[A212804(n+3)²]`
-/

namespace A119996.P13022028168601818170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 3) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119996.P13022028168601818170

namespace A119996

/-- `∑[A212804(n+3)²]` -/
def P13022028168601818170.Spec : Prop :=
  ∀ n, P13022028168601818170.a n = A119996 (n + 1)

end A119996

/-! ## A119996.P3266737551462708040

`∑[A324969(n+3)²]`
-/

namespace A119996.P3266737551462708040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (n + 3) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119996.P3266737551462708040

namespace A119996

/-- `∑[A324969(n+3)²]` -/
def P3266737551462708040.Spec : Prop :=
  ∀ n, P3266737551462708040.a n = A119996 (n + 1)

end A119996

/-! ## A119996.P14107450256994278181

`∑[A096748(2*n)²]`
-/

namespace A119996.P14107450256994278181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096748 (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119996.P14107450256994278181

namespace A119996

/-- `∑[A096748(2*n)²]` -/
def P14107450256994278181.Spec : Prop :=
  ∀ n, P14107450256994278181.a n = A119996 (n + 1)

end A119996

/-! ## A119996.P15836423496630365049

`∑[A211228(2*n)²]`
-/

namespace A119996.P15836423496630365049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211228 (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119996.P15836423496630365049

namespace A119996

/-- `∑[A211228(2*n)²]` -/
def P15836423496630365049.Spec : Prop :=
  ∀ n, P15836423496630365049.a n = A119996 (n + 1)

end A119996

/-! ## A119996.P12942245482337119496

`∑[record[A295672(2*n)]]`
-/

namespace A119996.P12942245482337119496
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295672 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119996.P12942245482337119496

namespace A119996

/-- `∑[record[A295672(2*n)]]` -/
def P12942245482337119496.Spec : Prop :=
  ∀ n, P12942245482337119496.a n = A119996 (n + 1)

end A119996

/-!
# A119997: Sum of all matrix elements of n X n matrix M[i,j] = (-1)^(i+j)*Fibonacci[i+j-1].

The programs for A119997, the canonical program `A119997.P6900793827496995653` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119997 has offset 1).

The definition of A119997 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A119997.P6900793827496995653

`3*a(n-1)+a(n-2)-7*a(n-3)+5*a(n-4)-a(n-5)` with `a(0)=1, a(1)=1, a(2)=4, a(3)=5, a(4)=17`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A119997

/-- `3*a(n-1)+a(n-2)-7*a(n-3)+5*a(n-4)-a(n-5)` -/
def P6900793827496995653.Spec : Prop :=
  ∀ n, P6900793827496995653.a n = A119997 (n + 1)

theorem P6900793827496995653.correct : P6900793827496995653.Spec := by
  intro n
  simp only [A119997, Nat.add_sub_cancel]

end A119997

/-! ## A119997.P1534425755651092478

`A008346(n)²+A119282(n)²`
-/

namespace A119997.P1534425755651092478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008346 n ^ 2 + A119282 n ^ 2

end

end A119997.P1534425755651092478

namespace A119997

/-- `A008346(n)²+A119282(n)²` -/
def P1534425755651092478.Spec : Prop :=
  ∀ n, P1534425755651092478.a n = A119997 (n + 1)

end A119997

/-! ## A119997.P821408604665976902

`A119282(n)²+A355020(n)²`
-/

namespace A119997.P821408604665976902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119282 n ^ 2 + A355020 n ^ 2

end

end A119997.P821408604665976902

namespace A119997

/-- `A119282(n)²+A355020(n)²` -/
def P821408604665976902.Spec : Prop :=
  ∀ n, P821408604665976902.a n = A119997 (n + 1)

end A119997

/-! ## A119997.P11233027706356578395

`∑[Δ[A098600(n)]*A212804(n)]`
-/

namespace A119997.P11233027706356578395
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098600 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119997.P11233027706356578395

namespace A119997

/-- `∑[Δ[A098600(n)]*A212804(n)]` -/
def P11233027706356578395.Spec : Prop :=
  ∀ n, P11233027706356578395.a n = A119997 (n + 1)

end A119997

/-! ## A119997.P8846368221440487575

`A119282(n+1)²+A119282(n)²`
-/

namespace A119997.P8846368221440487575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119282 (n + 1) ^ 2 + A119282 n ^ 2

end

end A119997.P8846368221440487575

namespace A119997

/-- `A119282(n+1)²+A119282(n)²` -/
def P8846368221440487575.Spec : Prop :=
  ∀ n, P8846368221440487575.a n = A119997 (n + 1)

end A119997

/-! ## A119997.P14137930749298965769

`2*A112469(n)-A112469(2*n+1)`
-/

namespace A119997.P14137930749298965769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A112469 n - A112469 (2 * n + 1)

end

end A119997.P14137930749298965769

namespace A119997

/-- `2*A112469(n)-A112469(2*n+1)` -/
def P14137930749298965769.Spec : Prop :=
  ∀ n, P14137930749298965769.a n = A119997 (n + 1)

end A119997

/-!
# A119998: a(n) is the smallest positive integer whose square starts with (at least) n identical digits.

The programs for A119998, there is no canonical definition to state claims against.
-/

/-! ## A119998.P7295545790195905633

`sqrt(A192934(n+1))`
-/

namespace A119998.P7295545790195905633
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A192934 (n + 1) : ℝ)

end

end A119998.P7295545790195905633

/-! ## A119998.P7351194499419583489

`A119511(A102683(n)+A061147(n+1))`
-/

namespace A119998.P7351194499419583489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119511 (A102683 n + A061147 (n + 1)).toNat

end

end A119998.P7351194499419583489

/-! ## A119998.P6475652465282279949

`A119511(A120002(n)+A061147(n+1))`
-/

namespace A119998.P6475652465282279949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119511 (A120002 n + A061147 (n + 1)).toNat

end

end A119998.P6475652465282279949

/-! ## A119998.P8056482103973374571

`A119511(or(A061147(n+1), A265508(n)))`
-/

namespace A119998.P8056482103973374571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119511 (Int.lor (A061147 (n + 1)) (A265508 n)).toNat

end

end A119998.P8056482103973374571

/-! ## A119998.P9621269222190631224

`A119511(C(A000040(n+1), A072618(2*n+3))+n+1)`
-/

namespace A119998.P9621269222190631224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119511 (Nat.choose (A000040 (n + 1)).toNat (A072618 (2 * n + 3)).toNat + n + 1)

end

end A119998.P9621269222190631224

/-!
# A119999: Number of partitions of n into parts that occur in decimal representation as substrings of n.

The programs for A119999, there is no canonical definition to state claims against.
-/

/-! ## A119999.P12663793246190417316

`A120002(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A119999.P12663793246190417316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A120002 (n - 1) + a (n - 1)

end

end A119999.P12663793246190417316

/-! ## A119999.P698001183728235364

`∑[A120002(abs(2-n)+1)]+1`
-/

namespace A119999.P698001183728235364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120002 (|2 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A119999.P698001183728235364

/-! ## A119999.P18036547234322298037

`∑[A120002(n)]+1-A120002(n)`
-/

namespace A119999.P18036547234322298037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120002 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 - A120002 n

end

end A119999.P18036547234322298037

/-! ## A119999.P115227504904430649

`Δ[A120003(n)]-A120002(n)`
-/

namespace A119999.P115227504904430649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A120002 n

end

end A119999.P115227504904430649

/-! ## A119999.P16961778076753781062

`A120003(n+1)-(A120003(n)+A120002(n))`
-/

namespace A119999.P16961778076753781062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120003 (n + 1) - (A120003 n + A120002 n)

end

end A119999.P16961778076753781062

