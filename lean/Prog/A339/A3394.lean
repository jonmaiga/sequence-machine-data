import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
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
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
# A339401: a(n) = numerator of (1/e)^n * Sum_{k>=0}(n^k*k^n)/(n!*k!).

The programs for A339401, there is no canonical definition to state claims against.
-/

/-! ## A339401.P14614001887169259182

`A102664(A226106(n))`
-/

namespace A339401.P14614001887169259182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102664 (A226106 n).toNat

end

end A339401.P14614001887169259182

/-! ## A339401.P7923563036881645686

`A064146(A026034(3*n))+1`
-/

namespace A339401.P7923563036881645686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064146 (A026034 (3 * n)).toNat + 1

end

end A339401.P7923563036881645686

/-!
# A339402: a(n) = denominator of (1/e)^n * Sum_{k>=0}(n^k*k^n)/(n!*k!).

The programs for A339402, there is no canonical definition to state claims against.
-/

/-! ## A339402.P5566771747951617866

`(a(n-2)+3)!` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=2, a(5)=3`
-/

namespace A339402.P5566771747951617866
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 2, 2, 3] fun n a =>
  Nat.factorial (a (n - 2) + 3)

end

end A339402.P5566771747951617866

/-! ## A339402.P12582876300844271716

`A335311(A192805(n))`
-/

namespace A339402.P12582876300844271716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335311 (A192805 n).toNat

end

end A339402.P12582876300844271716

/-! ## A339402.P8710446662555859627

`A335311(A204855(n))`
-/

namespace A339402.P8710446662555859627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335311 (A204855 n).toNat

end

end A339402.P8710446662555859627

/-! ## A339402.P8778121549028651872

`A335311(A004111(n+1))`
-/

namespace A339402.P8778121549028651872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335311 (A004111 (n + 1)).toNat

end

end A339402.P8778121549028651872

/-!
# A339404: Number of partitions of n into an even number of parts that are not multiples of 3.

The programs for A339404, there is no canonical definition to state claims against.
-/

/-! ## A339404.P6148523618576757950

`(A000726(n)+A109389(n))/2`
-/

namespace A339404.P6148523618576757950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000726 n + A109389 n : ℚ) / 2

end

end A339404.P6148523618576757950

/-! ## A339404.P13877356774837606216

`A339405(n)+A109389(n)`
-/

namespace A339404.P13877356774837606216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339405 n + A109389 n

end

end A339404.P13877356774837606216

/-! ## A339404.P2983073616418402074

`A000726(n)-A339405(n)`
-/

namespace A339404.P2983073616418402074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000726 n - A339405 n

end

end A339404.P2983073616418402074

/-! ## A339404.P10754967979277362997

`A035385(2*n)-A339405(n)`
-/

namespace A339404.P10754967979277362997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035385 (2 * n) - A339405 n

end

end A339404.P10754967979277362997

/-! ## A339404.P11425255198763739862

`A339405(n)-A112207(A016921(n))`
-/

namespace A339404.P11425255198763739862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339405 n - A112207 (A016921 n).toNat

end

end A339404.P11425255198763739862

/-! ## A339404.P17214800418353699771

`A116633(A001840(n))-A339405(n)`
-/

namespace A339404.P17214800418353699771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116633 (A001840 n).toNat - A339405 n

end

end A339404.P17214800418353699771

/-! ## A339404.P15744895465854240557

`A014682(A109389(n)+A000726(n))`
-/

namespace A339404.P15744895465854240557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A109389 n + A000726 n).toNat

end

end A339404.P15744895465854240557

/-!
# A339405: Number of partitions of n into an odd number of parts that are not multiples of 3.

The programs for A339405, there is no canonical definition to state claims against.
-/

/-! ## A339405.P368571900861775147

`(A000726(n)-A109389(n))/2`
-/

namespace A339405.P368571900861775147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000726 n - A109389 n : ℚ) / 2

end

end A339405.P368571900861775147

/-! ## A339405.P11228301917843783752

`A000726(n)-A339404(n)`
-/

namespace A339405.P11228301917843783752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000726 n - A339404 n

end

end A339405.P11228301917843783752

/-! ## A339405.P3037090955038751806

`A339404(n)-A109389(n)`
-/

namespace A339405.P3037090955038751806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339404 n - A109389 n

end

end A339405.P3037090955038751806

/-! ## A339405.P9408982477692474187

`A035385(2*n)-A339404(n)`
-/

namespace A339405.P9408982477692474187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035385 (2 * n) - A339404 n

end

end A339405.P9408982477692474187

/-! ## A339405.P17749202008403178506

`A339404(n)+A112207(A016921(n))`
-/

namespace A339405.P17749202008403178506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339404 n + A112207 (A016921 n).toNat

end

end A339405.P17749202008403178506

/-! ## A339405.P17036827304560212613

`A116633(A001840(n))-A339404(n)`
-/

namespace A339405.P17036827304560212613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116633 (A001840 n).toNat - A339404 n

end

end A339405.P17036827304560212613

/-! ## A339405.P17741381880286627588

`A014682(A000726(n)-A109389(n))`
-/

namespace A339405.P17741381880286627588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A000726 n - A109389 n).toNat

end

end A339405.P17741381880286627588

/-!
# A339406: Number of partitions of n into an even number of parts that are not multiples of 4.

The programs for A339406, there is no canonical definition to state claims against.
-/

/-! ## A339406.P6414031762987613525

`(A001935(n)+A261734(n))/2`
-/

namespace A339406.P6414031762987613525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001935 n + A261734 n : ℚ) / 2

end

end A339406.P6414031762987613525

/-! ## A339406.P1546477942930557320

`A339407(n)+A261734(n)`
-/

namespace A339406.P1546477942930557320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339407 n + A261734 n

end

end A339406.P1546477942930557320

/-! ## A339406.P12395778935444546053

`A001935(n)-A339407(n)`
-/

namespace A339406.P12395778935444546053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001935 n - A339407 n

end

end A339406.P12395778935444546053

/-! ## A339406.P13826311565536944732

`abs(A083365(n))-A339407(n)`
-/

namespace A339406.P13826311565536944732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A083365 n| - A339407 n

end

end A339406.P13826311565536944732

/-! ## A339406.P6364716916904534310

`∑[A117275(n)]-A339407(n)`
-/

namespace A339406.P6364716916904534310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A339407 n

end

end A339406.P6364716916904534310

/-! ## A339406.P16792106590627242905

`A117276(n+1)-(A339407(n)+A117276(n))`
-/

namespace A339406.P16792106590627242905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117276 (n + 1) - (A339407 n + A117276 n)

end

end A339406.P16792106590627242905

/-! ## A339406.P17779277072874043240

`A014682(A261734(n)+A001935(n))`
-/

namespace A339406.P17779277072874043240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A261734 n + A001935 n).toNat

end

end A339406.P17779277072874043240

/-!
# A339407: Number of partitions of n into an odd number of parts that are not multiples of 4.

The programs for A339407, there is no canonical definition to state claims against.
-/

/-! ## A339407.P9206237755396038367

`(A001935(n)-A261734(n))/2`
-/

namespace A339407.P9206237755396038367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001935 n - A261734 n : ℚ) / 2

end

end A339407.P9206237755396038367

/-! ## A339407.P15161141899598708811

`A001935(n)-A339406(n)`
-/

namespace A339407.P15161141899598708811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001935 n - A339406 n

end

end A339407.P15161141899598708811

/-! ## A339407.P8263691400958199488

`A339406(n)-A261734(n)`
-/

namespace A339407.P8263691400958199488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339406 n - A261734 n

end

end A339407.P8263691400958199488

/-! ## A339407.P14263012220993392824

`abs(A083365(n))-A339406(n)`
-/

namespace A339407.P14263012220993392824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A083365 n| - A339406 n

end

end A339407.P14263012220993392824

/-! ## A339407.P8002850538132053571

`∑[A117275(n)]-A339406(n)`
-/

namespace A339407.P8002850538132053571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A339406 n

end

end A339407.P8002850538132053571

/-! ## A339407.P9071518610459651203

`A014682(A001935(n)-A261734(n))`
-/

namespace A339407.P9071518610459651203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A001935 n - A261734 n).toNat

end

end A339407.P9071518610459651203

/-!
# A339408: Number of compositions (ordered partitions) of n into an even number of primes.

The programs for A339408, there is no canonical definition to state claims against.
-/

/-! ## A339408.P5950470422100130708

`A023360(n)-A339409(n)`
-/

namespace A339408.P5950470422100130708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023360 n - A339409 n

end

end A339408.P5950470422100130708

/-! ## A339408.P4293261957097144356

`A348324(n)+char[∑{p}[n+1, C(#, n)]]-A339409(n)`
-/

namespace A339408.P4293261957097144356
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348324 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - A339409 n

end

end A339408.P4293261957097144356

/-! ## A339408.P8537799495551680396

`char[A047814(n)]+A348324(n)-A339409(n)`
-/

namespace A339408.P8537799495551680396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047814 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A348324 n - A339409 n)

end

end A339408.P8537799495551680396

/-! ## A339408.P15877924590460180197

`char[A331044(n)]+A348324(n)-A339409(n)`
-/

namespace A339408.P15877924590460180197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331044 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A348324 n - A339409 n)

end

end A339408.P15877924590460180197

/-! ## A339408.P8339129873904222518

`char[A023049(n+1)]+A348324(n)-A339409(n)`
-/

namespace A339408.P8339129873904222518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023049 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A348324 n - A339409 n)

end

end A339408.P8339129873904222518

/-!
# A339409: Number of compositions (ordered partitions) of n into an odd number of primes.

The programs for A339409, there is no canonical definition to state claims against.
-/

/-! ## A339409.P16471781430158175334

`A023360(n)-A339408(n)`
-/

namespace A339409.P16471781430158175334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023360 n - A339408 n

end

end A339409.P16471781430158175334

/-! ## A339409.P9230938585075465244

`A276420(2*(n+1))-Δ[A303665(n)]-A339408(n)`
-/

namespace A339409.P9230938585075465244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303665 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276420 (2 * (n + 1)) - (f1 (n + 1) - f1 n) - A339408 n

end

end A339409.P9230938585075465244

/-! ## A339409.P933633500319611757

`A348324(n)+char[∑{p}[n+1, C(#, n)]]-A339408(n)`
-/

namespace A339409.P933633500319611757
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348324 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - A339408 n

end

end A339409.P933633500319611757

/-! ## A339409.P15531249916521066612

`char[A047814(n)]+A348324(n)-A339408(n)`
-/

namespace A339409.P15531249916521066612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047814 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A348324 n - A339408 n)

end

end A339409.P15531249916521066612

/-! ## A339409.P13851199446267914971

`char[A331044(n)]+A348324(n)-A339408(n)`
-/

namespace A339409.P13851199446267914971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331044 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A348324 n - A339408 n)

end

end A339409.P13851199446267914971

/-!
# A339411: Product of partial sums of odd squares.

The programs for A339411, the canonical program `A339411.P5389081592863651913` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339411 has offset 0).

The definition of A339411 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A339411.P5389081592863651913

`a(n-1)*(4*n^3-n)/3` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A339411

/-- `a(n-1)*(4*n^3-n)/3` -/
def P5389081592863651913.Spec : Prop :=
  ∀ n, P5389081592863651913.a n = (A339411 n : ℚ)

end A339411

/-! ## A339411.P6746848780664107053

`(2*n)!*(2*n+1)!/(n!*12^n)`
-/

namespace A339411.P6746848780664107053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * n) * Nat.factorial (2 * n + 1) : ℚ) / (Nat.factorial n * 12 ^ n : ℚ)

end

end A339411.P6746848780664107053

namespace A339411

/-- `(2*n)!*(2*n+1)!/(n!*12^n)` -/
def P6746848780664107053.Spec : Prop :=
  ∀ n, P6746848780664107053.a n = (A339411 n : ℚ)

end A339411

/-! ## A339411.P6985713228416130101

`C(Δ[n²], 3)*a(n-1)` with `a(0)=1`
-/

namespace A339411.P6985713228416130101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat 3 * a (n - 1)

end

end A339411.P6985713228416130101

namespace A339411

/-- `C(Δ[n²], 3)*a(n-1)` -/
def P6985713228416130101.Spec : Prop :=
  ∀ n, (P6985713228416130101.a n : ℤ) = A339411 n

end A339411

/-! ## A339411.P17432104126232556467

`∏[C(2*n+1, 3%(n+2))]`
-/

namespace A339411.P17432104126232556467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) (3 % (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A339411.P17432104126232556467

namespace A339411

/-- `∏[C(2*n+1, 3%(n+2))]` -/
def P17432104126232556467.Spec : Prop :=
  ∀ n, (P17432104126232556467.a n : ℤ) = A339411 n

end A339411

/-! ## A339411.P7902719889743582574

`(∑[(1-2*n)²]-1)*a(n-1)` with `a(0)=1`
-/

namespace A339411.P7902719889743582574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (2 * n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (∑ j ∈ Finset.range (n + 1), f1 j - 1) * a (n - 1)

end

end A339411.P7902719889743582574

namespace A339411

/-- `(∑[(1-2*n)²]-1)*a(n-1)` -/
def P7902719889743582574.Spec : Prop :=
  ∀ n, P7902719889743582574.a n = A339411 n

end A339411

/-!
# A339414: Primes p such that (p+q)/4 is prime, where q is the next prime after p.

The programs for A339414, there is no canonical definition to state claims against.
-/

/-! ## A339414.P14786637742377236291

`A000040(A098016(n+1))`
-/

namespace A339414.P14786637742377236291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A098016 (n + 1)).toNat

end

end A339414.P14786637742377236291

/-! ## A339414.P10426940783735708013

`A008578(A098016(n+1)+1)`
-/

namespace A339414.P10426940783735708013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A098016 (n + 1) + 1).toNat

end

end A339414.P10426940783735708013

/-! ## A339414.P6249823314347023452

`A266722(A266722(n+1))+A040976(A098016(n+1))`
-/

namespace A339414.P6249823314347023452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266722 (A266722 (n + 1)).toNat + A040976 (A098016 (n + 1)).toNat

end

end A339414.P6249823314347023452

/-! ## A339414.P3413033036807490137

`A000040(A000720(A075277(n+1)))`
-/

namespace A339414.P3413033036807490137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (A075277 (n + 1)).toNat).toNat

end

end A339414.P3413033036807490137

/-! ## A339414.P15616713538465896309

`A000040(A000720(2*A118134(n+1)))`
-/

namespace A339414.P15616713538465896309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (2 * A118134 (n + 1)).toNat).toNat

end

end A339414.P15616713538465896309

/-! ## A339414.P10158480880108188956

`A060265(A118134(n+1))`
-/

namespace A339414.P10158480880108188956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060265 (A118134 (n + 1)).toNat

end

end A339414.P10158480880108188956

/-! ## A339414.P10471652088985150573

`A060308(2*A118134(n+1)-A118134(n+1))`
-/

namespace A339414.P10471652088985150573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060308 (2 * A118134 (n + 1) - A118134 (n + 1)).toNat

end

end A339414.P10471652088985150573

/-! ## A339414.P13133129592166910089

`A002374(A075277(n+1))`
-/

namespace A339414.P13133129592166910089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002374 (A075277 (n + 1)).toNat

end

end A339414.P13133129592166910089

/-!
# A339416: Number of compositions (ordered partitions) of n into an even number of triangular numbers.

The programs for A339416, there is no canonical definition to state claims against.
-/

/-! ## A339416.P8039158836288852654

`(A023361(n)+A106507(n))/2`
-/

namespace A339416.P8039158836288852654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023361 n + A106507 n : ℚ) / 2

end

end A339416.P8039158836288852654

/-! ## A339416.P5279628836128570758

`A339417(n)+A106507(n)`
-/

namespace A339416.P5279628836128570758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339417 n + A106507 n

end

end A339416.P5279628836128570758

/-! ## A339416.P7272342857277380476

`A339417(n)+(-1)^n*A006950(n)`
-/

namespace A339416.P7272342857277380476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339417 n + (-1) ^ n * A006950 n

end

end A339416.P7272342857277380476

/-! ## A339416.P16351165026247108525

`A339417(n)+A006950(n)*A057077(2*n)`
-/

namespace A339416.P16351165026247108525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339417 n + A006950 n * A057077 (2 * n)

end

end A339416.P16351165026247108525

/-! ## A339416.P12281581677648636844

`A339417(n)+A006950(n)*A009001(A005843(n))`
-/

namespace A339416.P12281581677648636844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339417 n + A006950 n * A009001 (A005843 n).toNat

end

end A339416.P12281581677648636844

/-! ## A339416.P10816321270765835122

`A023361(n)-A339417(n)`
-/

namespace A339416.P10816321270765835122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023361 n - A339417 n

end

end A339416.P10816321270765835122

/-! ## A339416.P1040912949004890404

`A339417(n)+A286950(∑[n+3])`
-/

namespace A339416.P1040912949004890404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339417 n + A286950 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A339416.P1040912949004890404

/-!
# A339417: Number of compositions (ordered partitions) of n into an odd number of triangular numbers.

The programs for A339417, there is no canonical definition to state claims against.
-/

/-! ## A339417.P2065890633862755479

`(A023361(n)-A106507(n))/2`
-/

namespace A339417.P2065890633862755479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023361 n - A106507 n : ℚ) / 2

end

end A339417.P2065890633862755479

/-! ## A339417.P10587957921248183566

`A339416(n)-A106507(n)`
-/

namespace A339417.P10587957921248183566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339416 n - A106507 n

end

end A339417.P10587957921248183566

/-! ## A339417.P1197106841577450759

`A339416(n)-(-1)^n*A006950(n)`
-/

namespace A339417.P1197106841577450759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339416 n - (-1) ^ n * A006950 n

end

end A339417.P1197106841577450759

/-! ## A339417.P7477723149736255853

`A339416(n)-A006950(n)*A057077(2*n)`
-/

namespace A339417.P7477723149736255853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339416 n - A006950 n * A057077 (2 * n)

end

end A339417.P7477723149736255853

/-! ## A339417.P1162435793049453895

`A339416(n)-A006950(n)*A009001(A005843(n))`
-/

namespace A339417.P1162435793049453895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339416 n - A006950 n * A009001 (A005843 n).toNat

end

end A339417.P1162435793049453895

/-! ## A339417.P5160662212937304913

`A023361(n)-A339416(n)`
-/

namespace A339417.P5160662212937304913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023361 n - A339416 n

end

end A339417.P5160662212937304913

/-! ## A339417.P2670801627498056233

`A339416(n)-A286950(∑[n+3])`
-/

namespace A339417.P2670801627498056233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339416 n - A286950 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A339417.P2670801627498056233

/-!
# A339418: Number of compositions (ordered partitions) of n into an even number of squares.

The programs for A339418, there is no canonical definition to state claims against.
-/

/-! ## A339418.P4158750515432396291

`(A006456(n)+A317665(n))/2`
-/

namespace A339418.P4158750515432396291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006456 n + A317665 n : ℚ) / 2

end

end A339418.P4158750515432396291

/-! ## A339418.P16251817739844581901

`A339419(n)+A317665(n)`
-/

namespace A339418.P16251817739844581901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339419 n + A317665 n

end

end A339418.P16251817739844581901

/-! ## A339418.P3794420750297817790

`A006456(n)-A339419(n)`
-/

namespace A339418.P3794420750297817790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006456 n - A339419 n

end

end A339418.P3794420750297817790

/-! ## A339418.P4362146290632440348

`∑[A303909(n)]-A339419(n)`
-/

namespace A339418.P4362146290632440348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A339419 n

end

end A339418.P4362146290632440348

/-! ## A339418.P15254132184742509779

`(A317665(n)+∑[A303909(n)])/2`
-/

namespace A339418.P15254132184742509779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303909 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A317665 n + ∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A339418.P15254132184742509779

/-!
# A339419: Number of compositions (ordered partitions) of n into an odd number of squares.

The programs for A339419, there is no canonical definition to state claims against.
-/

/-! ## A339419.P7542668983418256488

`(A006456(n)-A317665(n))/2`
-/

namespace A339419.P7542668983418256488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006456 n - A317665 n : ℚ) / 2

end

end A339419.P7542668983418256488

/-! ## A339419.P15034770536792826182

`A339418(n)-A317665(n)`
-/

namespace A339419.P15034770536792826182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339418 n - A317665 n

end

end A339419.P15034770536792826182

/-! ## A339419.P5277076326128153738

`A006456(n)-A339418(n)`
-/

namespace A339419.P5277076326128153738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006456 n - A339418 n

end

end A339419.P5277076326128153738

/-! ## A339419.P7547160888519730091

`∑[A303909(n)]-A339418(n)`
-/

namespace A339419.P7547160888519730091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A339418 n

end

end A339419.P7547160888519730091

/-! ## A339419.P11246627162269718799

`Δ[A303667(n)]-A303909(n+1)-A339418(n)`
-/

namespace A339419.P11246627162269718799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303667 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A303909 (n + 1) - A339418 n

end

end A339419.P11246627162269718799

/-!
# A339420: Number of compositions (ordered partitions) of n into an even number of cubes.

The programs for A339420, there is no canonical definition to state claims against.
-/

/-! ## A339420.P5299627374689467402

`(A023358(n)+A323633(n))/2`
-/

namespace A339420.P5299627374689467402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023358 n + A323633 n : ℚ) / 2

end

end A339420.P5299627374689467402

/-! ## A339420.P16611409607270993552

`A339421(n)+A323633(n)`
-/

namespace A339420.P16611409607270993552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339421 n + A323633 n

end

end A339420.P16611409607270993552

/-! ## A339420.P11428179785964708801

`A023358(n)-A339421(n)`
-/

namespace A339420.P11428179785964708801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023358 n - A339421 n

end

end A339420.P11428179785964708801

/-! ## A339420.P1068966054022762331

`A010057(n)+A348524(n)-A339421(n)`
-/

namespace A339420.P1068966054022762331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 n + (A348524 n - A339421 n)

end

end A339420.P1068966054022762331

/-! ## A339420.P1730234838272703596

`char[A000578(n)]+A348524(n)-A339421(n)`
-/

namespace A339420.P1730234838272703596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A348524 n - A339421 n)

end

end A339420.P1730234838272703596

/-! ## A339420.P930303672016776987

`char[A048763(n)]+A348524(n)-A339421(n)`
-/

namespace A339420.P930303672016776987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048763 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A348524 n - A339421 n)

end

end A339420.P930303672016776987

/-! ## A339420.P3531119552114057189

`A348524(n)+A331845(n)%2-A339421(n)`
-/

namespace A339420.P3531119552114057189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348524 n + Int.tmod (A331845 n) 2 - A339421 n

end

end A339420.P3531119552114057189

/-! ## A339420.P134747690467476685

`A323633(n)+A014682(A023358(n)-A323633(n))`
-/

namespace A339420.P134747690467476685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323633 n + A014682 (A023358 n - A323633 n).toNat

end

end A339420.P134747690467476685

/-! ## A339420.P12163599313115776366

`A014682(A323633(n)+A023358(n))`
-/

namespace A339420.P12163599313115776366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A323633 n + A023358 n).toNat

end

end A339420.P12163599313115776366

/-! ## A339420.P11751925880892279224

`A038572(A323633(n)+A023358(n))`
-/

namespace A339420.P11751925880892279224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A323633 n + A023358 n).toNat

end

end A339420.P11751925880892279224

/-!
# A339421: Number of compositions (ordered partitions) of n into an odd number of cubes.

The programs for A339421, there is no canonical definition to state claims against.
-/

/-! ## A339421.P2976651995599934549

`(A023358(n)-A323633(n))/2`
-/

namespace A339421.P2976651995599934549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023358 n - A323633 n : ℚ) / 2

end

end A339421.P2976651995599934549

/-! ## A339421.P8165470221253451043

`A339420(n)-A323633(n)`
-/

namespace A339421.P8165470221253451043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339420 n - A323633 n

end

end A339421.P8165470221253451043

/-! ## A339421.P12938948636310195261

`A023358(n)-A339420(n)`
-/

namespace A339421.P12938948636310195261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023358 n - A339420 n

end

end A339421.P12938948636310195261

/-! ## A339421.P13367735977379610835

`A010057(n)+A348524(n)-A339420(n)`
-/

namespace A339421.P13367735977379610835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 n + (A348524 n - A339420 n)

end

end A339421.P13367735977379610835

/-! ## A339421.P10135581516991786275

`char[A000578(n)]+A348524(n)-A339420(n)`
-/

namespace A339421.P10135581516991786275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A348524 n - A339420 n)

end

end A339421.P10135581516991786275

/-! ## A339421.P7429823445641681004

`abs(A339420(n)-(A348524(n)+A331845(n)%2))`
-/

namespace A339421.P7429823445641681004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A339420 n - (A348524 n + Int.tmod (A331845 n) 2)|

end

end A339421.P7429823445641681004

/-! ## A339421.P13681863048243729856

`A014682(A023358(n)-A323633(n))`
-/

namespace A339421.P13681863048243729856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A023358 n - A323633 n).toNat

end

end A339421.P13681863048243729856

/-! ## A339421.P12241138371652255755

`A023358(n)-A038572(A323633(n)+A023358(n))`
-/

namespace A339421.P12241138371652255755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023358 n - A038572 (A323633 n + A023358 n).toNat

end

end A339421.P12241138371652255755

/-! ## A339421.P10546064333598849743

`A038572(A023358(n)-A323633(n))`
-/

namespace A339421.P10546064333598849743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A023358 n - A323633 n).toNat

end

end A339421.P10546064333598849743

/-!
# A339422: G.f.: 1 / (1 + Sum_{k>=0} x^(2^k)).

The programs for A339422, there is no canonical definition to state claims against.
-/

/-! ## A339422.P17278538233242892995

`A339426(n)-A339427(n)`
-/

namespace A339422.P17278538233242892995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339426 n - A339427 n

end

end A339422.P17278538233242892995

/-! ## A339422.P6450685774459813975

`A339426(n)+A057428(n)*A339427(n)`
-/

namespace A339422.P6450685774459813975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339426 n + A057428 n * A339427 n

end

end A339422.P6450685774459813975

/-! ## A339422.P10062036122854517126

`2*A339426(n)-A023359(n)`
-/

namespace A339422.P10062036122854517126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A339426 n - A023359 n

end

end A339422.P10062036122854517126

/-! ## A339422.P14491568953595492528

`A023359(n)-2*A339427(n)`
-/

namespace A339422.P14491568953595492528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023359 n - 2 * A339427 n

end

end A339422.P14491568953595492528

/-! ## A339422.P10427877201707183336

`2*A339426(n)-A304908(A028310(n))/A028310(n)`
-/

namespace A339422.P10427877201707183336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A339426 n : ℚ) - (A304908 (A028310 n).toNat : ℚ) / (A028310 n : ℚ)

end

end A339422.P10427877201707183336

/-!
# A339423: If n = p_1 * ... * p_m with primes p_i <= p_{i+1}, a(n) = Sum_{k

The programs for A339423, the canonical program `A339423.P3110009682246357357` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339423 has offset 1).

The definition of A339423 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A339423.P4176924710275887574

`A332994(A052126(n+1))-1`
-/

namespace A339423.P4176924710275887574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332994 (A052126 (n + 1)).toNat - 1

end

end A339423.P4176924710275887574

namespace A339423

/-- `A332994(A052126(n+1))-1` -/
def P4176924710275887574.Spec : Prop :=
  ∀ n, P4176924710275887574.a n = A339423 (n + 1)

end A339423

/-! ## A339423.P8296205876794116679

`A322382(n+1)+A057428(n)`
-/

namespace A339423.P8296205876794116679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322382 (n + 1) + A057428 n

end

end A339423.P8296205876794116679

namespace A339423

/-- `A322382(n+1)+A057428(n)` -/
def P8296205876794116679.Spec : Prop :=
  ∀ n, P8296205876794116679.a n = A339423 (n + 1)

end A339423

/-! ## A339423.P11356078307058968415

`A322382(n+1)-A057427(n)`
-/

namespace A339423.P11356078307058968415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322382 (n + 1) - A057427 n

end

end A339423.P11356078307058968415

namespace A339423

/-- `A322382(n+1)-A057427(n)` -/
def P11356078307058968415.Spec : Prop :=
  ∀ n, P11356078307058968415.a n = A339423 (n + 1)

end A339423

/-! ## A339423.P3110009682246357357

`A332994(n+1)%A057544(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A339423

/-- `A332994(n+1)%A057544(n)` -/
def P3110009682246357357.Spec : Prop :=
  ∀ n, P3110009682246357357.a n = A339423 (n + 1)

theorem P3110009682246357357.correct : P3110009682246357357.Spec := by
  intro n
  simp only [A339423, Nat.add_sub_cancel]

end A339423

/-! ## A339423.P12845747540654632514

`A322382(n+1)+A000007(n)-1`
-/

namespace A339423.P12845747540654632514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322382 (n + 1) + (A000007 n - 1)

end

end A339423.P12845747540654632514

namespace A339423

/-- `A322382(n+1)+A000007(n)-1` -/
def P12845747540654632514.Spec : Prop :=
  ∀ n, P12845747540654632514.a n = A339423 (n + 1)

end A339423

/-! ## A339423.P10018724470506670925

`A048050(n+1)-A333784(n+1)`
-/

namespace A339423.P10018724470506670925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (n + 1) - A333784 (n + 1)

end

end A339423.P10018724470506670925

namespace A339423

/-- `A048050(n+1)-A333784(n+1)` -/
def P10018724470506670925.Spec : Prop :=
  ∀ n, P10018724470506670925.a n = A339423 (n + 1)

end A339423

/-! ## A339423.P16204488446475496043

`A332994(n+1)-A065475(n+1)`
-/

namespace A339423.P16204488446475496043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332994 (n + 1) - A065475 (n + 1)

end

end A339423.P16204488446475496043

namespace A339423

/-- `A332994(n+1)-A065475(n+1)` -/
def P16204488446475496043.Spec : Prop :=
  ∀ n, P16204488446475496043.a n = A339423 (n + 1)

end A339423

/-! ## A339423.P4617819877702111238

`(A322382(n+1)-1)%A052905(n)`
-/

namespace A339423.P4617819877702111238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322382 (n + 1) - 1) (A052905 n)

end

end A339423.P4617819877702111238

namespace A339423

/-- `(A322382(n+1)-1)%A052905(n)` -/
def P4617819877702111238.Spec : Prop :=
  ∀ n, P4617819877702111238.a n = A339423 (n + 1)

end A339423

/-! ## A339423.P10967899707888084608

`A332994(n+1)+n-A103517(n)`
-/

namespace A339423.P10967899707888084608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332994 (n + 1) + ((n : ℤ) - A103517 n)

end

end A339423.P10967899707888084608

namespace A339423

/-- `A332994(n+1)+n-A103517(n)` -/
def P10967899707888084608.Spec : Prop :=
  ∀ n, P10967899707888084608.a n = A339423 (n + 1)

end A339423

/-! ## A339423.P13561326957457882971

`A322382(n+1)-A059841(A004018(n))`
-/

namespace A339423.P13561326957457882971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322382 (n + 1) - A059841 (A004018 n).toNat

end

end A339423.P13561326957457882971

namespace A339423

/-- `A322382(n+1)-A059841(A004018(n))` -/
def P13561326957457882971.Spec : Prop :=
  ∀ n, P13561326957457882971.a n = A339423 (n + 1)

end A339423

/-! ## A339423.P18273915764871862382

`A322382(n+1)-A006022(A020639(n+1))`
-/

namespace A339423.P18273915764871862382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322382 (n + 1) - A006022 (A020639 (n + 1)).toNat

end

end A339423.P18273915764871862382

namespace A339423

/-- `A322382(n+1)-A006022(A020639(n+1))` -/
def P18273915764871862382.Spec : Prop :=
  ∀ n, P18273915764871862382.a n = A339423 (n + 1)

end A339423

/-! ## A339423.P9335761337743750376

`A322382(n+1)-A006022(A027746(n+1))`
-/

namespace A339423.P9335761337743750376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322382 (n + 1) - A006022 (A027746 (n + 1)).toNat

end

end A339423.P9335761337743750376

namespace A339423

/-- `A322382(n+1)-A006022(A027746(n+1))` -/
def P9335761337743750376.Spec : Prop :=
  ∀ n, P9335761337743750376.a n = A339423 (n + 1)

end A339423

/-! ## A339423.P4675757074049424093

`A322382(n+1)-A322382(A006530(n+1))`
-/

namespace A339423.P4675757074049424093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322382 (n + 1) - A322382 (A006530 (n + 1)).toNat

end

end A339423.P4675757074049424093

namespace A339423

/-- `A322382(n+1)-A322382(A006530(n+1))` -/
def P4675757074049424093.Spec : Prop :=
  ∀ n, P4675757074049424093.a n = A339423 (n + 1)

end A339423

/-! ## A339423.P17403879044611870226

`A020639(n+1)*A322382(A032742(n+1))`
-/

namespace A339423.P17403879044611870226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) * A322382 (A032742 (n + 1)).toNat

end

end A339423.P17403879044611870226

namespace A339423

/-- `A020639(n+1)*A322382(A032742(n+1))` -/
def P17403879044611870226.Spec : Prop :=
  ∀ n, P17403879044611870226.a n = A339423 (n + 1)

end A339423

/-! ## A339423.P2476053232012518092

`A057237(n+1)+A322382(n+1)-A020639(n+1)`
-/

namespace A339423.P2476053232012518092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (n + 1) + (A322382 (n + 1) - A020639 (n + 1))

end

end A339423.P2476053232012518092

namespace A339423

/-- `A057237(n+1)+A322382(n+1)-A020639(n+1)` -/
def P2476053232012518092.Spec : Prop :=
  ∀ n, P2476053232012518092.a n = A339423 (n + 1)

end A339423

/-! ## A339423.P3792430383109446384

`A322382(n+1)+A010051(A000040(n+1)+1)-1`
-/

namespace A339423.P3792430383109446384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322382 (n + 1) + A010051 (A000040 (n + 1) + 1).toNat - 1

end

end A339423.P3792430383109446384

namespace A339423

/-- `A322382(n+1)+A010051(A000040(n+1)+1)-1` -/
def P3792430383109446384.Spec : Prop :=
  ∀ n, P3792430383109446384.a n = A339423 (n + 1)

end A339423

/-! ## A339423.P17050153499895727787

`A004526(abs(2-A322382(2*(n+1))))`
-/

namespace A339423.P17050153499895727787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 |2 - A322382 (2 * (n + 1))|.toNat

end

end A339423.P17050153499895727787

namespace A339423

/-- `A004526(abs(2-A322382(2*(n+1))))` -/
def P17050153499895727787.Spec : Prop :=
  ∀ n, P17050153499895727787.a n = A339423 (n + 1)

end A339423

/-! ## A339423.P17983182338749900787

`A004526(abs(A165747(A322382(n+1))))`
-/

namespace A339423.P17983182338749900787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 |A165747 (A322382 (n + 1)).toNat|.toNat

end

end A339423.P17983182338749900787

namespace A339423

/-- `A004526(abs(A165747(A322382(n+1))))` -/
def P17983182338749900787.Spec : Prop :=
  ∀ n, P17983182338749900787.a n = A339423 (n + 1)

end A339423

/-! ## A339423.P3527934787243288143

`A322382(n+1)-A322382(A244080(n+1))`
-/

namespace A339423.P3527934787243288143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322382 (n + 1) - A322382 (A244080 (n + 1)).toNat

end

end A339423.P3527934787243288143

namespace A339423

/-- `A322382(n+1)-A322382(A244080(n+1))` -/
def P3527934787243288143.Spec : Prop :=
  ∀ n, P3527934787243288143.a n = A339423 (n + 1)

end A339423

/-! ## A339423.P8152170476843051641

`A322382(n+1)-A322382(A256564(n+1))`
-/

namespace A339423.P8152170476843051641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322382 (n + 1) - A322382 (A256564 (n + 1)).toNat

end

end A339423.P8152170476843051641

namespace A339423

/-- `A322382(n+1)-A322382(A256564(n+1))` -/
def P8152170476843051641.Spec : Prop :=
  ∀ n, P8152170476843051641.a n = A339423 (n + 1)

end A339423

/-!
# A339424: Composite numbers k such that A339423(k) divides k.

The programs for A339424, the canonical program `A339424.P6977401318300109082` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339424 has offset 1).

The definition of A339424 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2673 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A339424.P6977401318300109082

`eq[n+1, lcm(n+1, A339423(n+1))]+1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A339424

/-- `eq[n+1, lcm(n+1, A339423(n+1))]+1` -/
def P6977401318300109082.Spec : Prop :=
  ∀ n, (P6977401318300109082.a n : ℤ) = A339424 (n + 1)

theorem P6977401318300109082.correct : P6977401318300109082.Spec := by
  intro n
  simp only [A339424, Nat.add_sub_cancel]

end A339424

/-! ## A339424.P13792660295281858651

`∪[A007416(3*n+5), A001358(n+1)]%A099385(3*n+4)`
-/

namespace A339424.P13792660295281858651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007416 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A099385 (3 * n + 4))

end

end A339424.P13792660295281858651

namespace A339424

/-- `∪[A007416(3*n+5), A001358(n+1)]%A099385(3*n+4)` -/
def P13792660295281858651.Spec : Prop :=
  ∀ n, P13792660295281858651.a n = A339424 (n + 1)

end A339424

/-! ## A339424.P18064345480903975662

`∪[A279373(3*n+5), A001358(n+1)]%A099385(3*n+4)`
-/

namespace A339424.P18064345480903975662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279373 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A099385 (3 * n + 4))

end

end A339424.P18064345480903975662

namespace A339424

/-- `∪[A279373(3*n+5), A001358(n+1)]%A099385(3*n+4)` -/
def P18064345480903975662.Spec : Prop :=
  ∀ n, P18064345480903975662.a n = A339424 (n + 1)

end A339424

/-! ## A339424.P16292931299901941873

`eq[2, A007376(A284465(n))]`
-/

namespace A339424.P16292931299901941873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A284465 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A339424.P16292931299901941873

namespace A339424

/-- `eq[2, A007376(A284465(n))]` -/
def P16292931299901941873.Spec : Prop :=
  ∀ n, (P16292931299901941873.a n : ℤ) = A339424 (n + 1)

end A339424

/-! ## A339424.P16402876361308234946

`eq[3, A309888(A211110(n))]`
-/

namespace A339424.P16402876361308234946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309888 (A211110 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A339424.P16402876361308234946

namespace A339424

/-- `eq[3, A309888(A211110(n))]` -/
def P16402876361308234946.Spec : Prop :=
  ∀ n, (P16402876361308234946.a n : ℤ) = A339424 (n + 1)

end A339424

/-!
# A339425: Numbers k such that A001222(k)>=3 and A339423(k) divides k.

The programs for A339425, there is no canonical definition to state claims against.
-/

/-! ## A339425.P7612642724033921142

`∩[A027854(n+1), A339424(n+1)]`
-/

namespace A339425.P7612642724033921142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339425.P7612642724033921142

/-! ## A339425.P802131377633760726

`∩[A063539(n+1), A339424(n+1)]`
-/

namespace A339425.P802131377633760726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339425.P802131377633760726

/-! ## A339425.P9863835566286646621

`∩[A289484(n+1), A339424(n+1)]`
-/

namespace A339425.P9863835566286646621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289484 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339425.P9863835566286646621

/-! ## A339425.P5203706041696618452

`∩[A339424(n+1), A386417(n+1)]`
-/

namespace A339425.P5203706041696618452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339425.P5203706041696618452

/-! ## A339425.P1625707416953449569

`∩[A339424(n+1), A383488(n+1)]`
-/

namespace A339425.P1625707416953449569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383488 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339425.P1625707416953449569

/-! ## A339425.P5956759761823086256

`∩[A337806(n+1), A339424(n+1)]`
-/

namespace A339425.P5956759761823086256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339425.P5956759761823086256

/-! ## A339425.P5223735759448872450

`∩[A339424(n+1), A341610(n+1)]`
-/

namespace A339425.P5223735759448872450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339425.P5223735759448872450

/-! ## A339425.P14266569752570809063

`∩[A033942(n+1), A339424(n+1)]`
-/

namespace A339425.P14266569752570809063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339425.P14266569752570809063

/-! ## A339425.P10055151320208635225

`∩[A058080(n+1), A339424(n+1)]`
-/

namespace A339425.P10055151320208635225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339425.P10055151320208635225

/-! ## A339425.P16962956087603446013

`∩[A111087(n+1), A339424(n+1)]`
-/

namespace A339425.P16962956087603446013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339425.P16962956087603446013

/-!
# A339426: Number of compositions (ordered partitions) of n into an even number of powers of 2.

The programs for A339426, there is no canonical definition to state claims against.
-/

/-! ## A339426.P17289787139694214639

`(A023359(n)+A339422(n))/2`
-/

namespace A339426.P17289787139694214639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023359 n + A339422 n : ℚ) / 2

end

end A339426.P17289787139694214639

/-! ## A339426.P8823837636100085658

`A339427(n)+A339422(n)`
-/

namespace A339426.P8823837636100085658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339427 n + A339422 n

end

end A339426.P8823837636100085658

/-! ## A339426.P2363626036181155558

`A023359(n)-A339427(n)`
-/

namespace A339426.P2363626036181155558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023359 n - A339427 n

end

end A339426.P2363626036181155558

/-! ## A339426.P6248397642753978166

`A023359(n)+A057428(n)*A339427(n)`
-/

namespace A339426.P6248397642753978166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023359 n + A057428 n * A339427 n

end

end A339426.P6248397642753978166

/-! ## A339426.P1296047861237695894

`abs(Δ[A303666(abs(1-n))])-A339427(n)`
-/

namespace A339426.P1296047861237695894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303666 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| - A339427 n

end

end A339426.P1296047861237695894

/-!
# A339427: Number of compositions (ordered partitions) of n into an odd number of powers of 2.

The programs for A339427, there is no canonical definition to state claims against.
-/

/-! ## A339427.P2513863592106607551

`(A023359(n)-A339422(n))/2`
-/

namespace A339427.P2513863592106607551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023359 n - A339422 n : ℚ) / 2

end

end A339427.P2513863592106607551

/-! ## A339427.P5966127684005986851

`A339426(n)-A339422(n)`
-/

namespace A339427.P5966127684005986851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339426 n - A339422 n

end

end A339427.P5966127684005986851

/-! ## A339427.P15096202386641448711

`A023359(n)-A339426(n)`
-/

namespace A339427.P15096202386641448711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023359 n - A339426 n

end

end A339427.P15096202386641448711

/-! ## A339427.P9037413019490910195

`A357534(n)+A255738(n+1)-A339426(n)`
-/

namespace A339427.P9037413019490910195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357534 n + A255738 (n + 1) - A339426 n

end

end A339427.P9037413019490910195

/-! ## A339427.P16340732846911292988

`abs(Δ[A303666(abs(1-n))])-A339426(n)`
-/

namespace A339427.P16340732846911292988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303666 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| - A339426 n

end

end A339427.P16340732846911292988

/-! ## A339427.P4482711033854557751

`A304908(A028310(n))/A028310(n)-A339426(n)`
-/

namespace A339427.P4482711033854557751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304908 (A028310 n).toNat : ℚ) / (A028310 n : ℚ) - (A339426 n : ℚ)

end

end A339427.P4482711033854557751

/-!
# A339428: Triangle read by rows: T(n,k) is the number of connected functions on n points with a loop of length k.

The programs for A339428, there is no canonical definition to state claims against.
-/

/-! ## A339428.P15095053633992549735

`A033185(n+1)+A018843(A029600(n))`
-/

namespace A339428.P15095053633992549735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033185 (n + 1) + A018843 (A029600 n).toNat

end

end A339428.P15095053633992549735

/-! ## A339428.P7109941631627902154

`A106234(A014132(n+1)+1)+A018843(A029600(n))`
-/

namespace A339428.P7109941631627902154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106234 (A014132 (n + 1) + 1).toNat + A018843 (A029600 n).toNat

end

end A339428.P7109941631627902154

/-! ## A339428.P9599065049257835014

`A106234(A007401(n+1)+2)+A018843(A029600(n))`
-/

namespace A339428.P9599065049257835014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106234 (A007401 (n + 1) + 2).toNat + A018843 (A029600 n).toNat

end

end A339428.P9599065049257835014

/-! ## A339428.P15405810965625170785

`A106234(A003057(n+2)+1+n)+A018843(A029600(n))`
-/

namespace A339428.P15405810965625170785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106234 (A003057 (n + 2) + 1 + (n : ℤ)).toNat + A018843 (A029600 n).toNat

end

end A339428.P15405810965625170785

/-! ## A339428.P7474069661147837306

`A217781(n+1)+A124769(A389758(n+5))`
-/

namespace A339428.P7474069661147837306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217781 (n + 1) + A124769 (A389758 (n + 5)).toNat

end

end A339428.P7474069661147837306

/-!
# A339430: Number of compositions (ordered partitions) of n into an even number of distinct squares.

The programs for A339430, there is no canonical definition to state claims against.
-/

/-! ## A339430.P5566747748815489728

`A331844(n)-A339431(n)`
-/

namespace A339430.P5566747748815489728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331844 n - A339431 n

end

end A339430.P5566747748815489728

/-! ## A339430.P7967223824948870347

`char[n²]+A348326(n)-A339431(n)`
-/

namespace A339430.P7967223824948870347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A348326 n - A339431 n)

end

end A339430.P7967223824948870347

/-! ## A339430.P11305856990103666073

`A348326(n)+A010052(n)-A339431(n)`
-/

namespace A339430.P11305856990103666073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348326 n + (A010052 n - A339431 n)

end

end A339430.P11305856990103666073

/-! ## A339430.P3453183412496119035

`or(char[A118881(n)], A348326(n))-A339431(n)`
-/

namespace A339430.P3453183412496119035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A348326 n) - A339431 n

end

end A339430.P3453183412496119035

/-! ## A339430.P346908445635649459

`and(A045585(n+1), A258256(n))`
-/

namespace A339430.P346908445635649459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A045585 (n + 1)) (A258256 n)

end

end A339430.P346908445635649459

/-!
# A339431: Number of compositions (ordered partitions) of n into an odd number of distinct squares.

The programs for A339431, there is no canonical definition to state claims against.
-/

/-! ## A339431.P4047654638365413902

`A331844(n)-A339430(n)`
-/

namespace A339431.P4047654638365413902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331844 n - A339430 n

end

end A339431.P4047654638365413902

/-! ## A339431.P4168050614119509842

`char[n²]+A348326(n)-A339430(n)`
-/

namespace A339431.P4168050614119509842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A348326 n - A339430 n)

end

end A339431.P4168050614119509842

/-! ## A339431.P8444518309082375399

`A348326(n)+A010052(n)-A339430(n)`
-/

namespace A339431.P8444518309082375399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348326 n + A010052 n - A339430 n

end

end A339431.P8444518309082375399

/-! ## A339431.P8357388362670648844

`or(char[A118881(n)], A348326(n))-A339430(n)`
-/

namespace A339431.P8357388362670648844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A348326 n) - A339430 n

end

end A339431.P8357388362670648844

/-! ## A339431.P15915278221556302349

`A165221(n+1)*A331844(n)`
-/

namespace A339431.P15915278221556302349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165221 (n + 1) * A331844 n

end

end A339431.P15915278221556302349

/-!
# A339432: Number of compositions (ordered partitions) of n into an even number of distinct primes.

The programs for A339432, there is no canonical definition to state claims against.
-/

/-! ## A339432.P5723766372415671450

`A219107(n)-A339433(n)`
-/

namespace A339432.P5723766372415671450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219107 n - A339433 n

end

end A339432.P5723766372415671450

/-! ## A339432.P2604428176527030662

`char[A047814(n)]+A348325(n)-A339433(n)`
-/

namespace A339432.P2604428176527030662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047814 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A348325 n - A339433 n)

end

end A339432.P2604428176527030662

/-! ## A339432.P15643611106311552054

`char[A331044(n)]+A348325(n)-A339433(n)`
-/

namespace A339432.P15643611106311552054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331044 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A348325 n - A339433 n)

end

end A339432.P15643611106311552054

/-! ## A339432.P15760184812459711328

`char[A331097(n)]+A348325(n)-A339433(n)`
-/

namespace A339432.P15760184812459711328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331097 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A348325 n - A339433 n)

end

end A339432.P15760184812459711328

/-! ## A339432.P1145787247106066148

`char[A007610(n+1)]+A348325(n)-A339433(n)`
-/

namespace A339432.P1145787247106066148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007610 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A348325 n - A339433 n)

end

end A339432.P1145787247106066148

/-! ## A339432.P14705148948808912440

`char[A023049(n+1)]+A348325(n)-A339433(n)`
-/

namespace A339432.P14705148948808912440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023049 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A348325 n - A339433 n)

end

end A339432.P14705148948808912440

/-! ## A339432.P9902037744895452657

`char[A033920(n+1)]+A348325(n)-A339433(n)`
-/

namespace A339432.P9902037744895452657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033920 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A348325 n - A339433 n)

end

end A339432.P9902037744895452657

/-! ## A339432.P13226222516820396974

`char[A061397(n+1)]+A348325(n)-A339433(n)`
-/

namespace A339432.P13226222516820396974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A348325 n - A339433 n)

end

end A339432.P13226222516820396974

/-!
# A339433: Number of compositions (ordered partitions) of n into an odd number of distinct primes.

The programs for A339433, there is no canonical definition to state claims against.
-/

/-! ## A339433.P8655737677120167731

`A219107(n)-A339432(n)`
-/

namespace A339433.P8655737677120167731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219107 n - A339432 n

end

end A339433.P8655737677120167731

/-! ## A339433.P9622793812648201273

`char[A047814(n)]+A348325(n)-A339432(n)`
-/

namespace A339433.P9622793812648201273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047814 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A348325 n - A339432 n)

end

end A339433.P9622793812648201273

/-! ## A339433.P13705359403858664530

`char[A331044(n)]+A348325(n)-A339432(n)`
-/

namespace A339433.P13705359403858664530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331044 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A348325 n - A339432 n)

end

end A339433.P13705359403858664530

/-! ## A339433.P7753748104051897470

`char[A331097(n)]+A348325(n)-A339432(n)`
-/

namespace A339433.P7753748104051897470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331097 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A348325 n - A339432 n)

end

end A339433.P7753748104051897470

/-! ## A339433.P9930661382747707656

`char[A007610(n+1)]+A348325(n)-A339432(n)`
-/

namespace A339433.P9930661382747707656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007610 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A348325 n - A339432 n)

end

end A339433.P9930661382747707656

/-! ## A339433.P9186892217867966593

`char[A023049(n+1)]+A348325(n)-A339432(n)`
-/

namespace A339433.P9186892217867966593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023049 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A348325 n - A339432 n)

end

end A339433.P9186892217867966593

/-! ## A339433.P3969115671227693020

`char[A033920(n+1)]+A348325(n)-A339432(n)`
-/

namespace A339433.P3969115671227693020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033920 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A348325 n - A339432 n)

end

end A339433.P3969115671227693020

/-! ## A339433.P1473581574588520695

`char[A120007(n+1)]+A348325(n)-A339432(n)`
-/

namespace A339433.P1473581574588520695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120007 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A348325 n - A339432 n)

end

end A339433.P1473581574588520695

/-!
# A339434: Number of compositions (ordered partitions) of n into a prime number of distinct prime parts.

The programs for A339434, there is no canonical definition to state claims against.
-/

/-! ## A339434.P3618992996204296669

`A348325(n)%A004011(A016116(n))`
-/

namespace A339434.P3618992996204296669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A348325 n) (A004011 (A016116 n).toNat)

end

end A339434.P3618992996204296669

/-! ## A339434.P10465479220133703666

`A030545(A348325(n))-2`
-/

namespace A339434.P10465479220133703666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030545 (A348325 n).toNat - 2

end

end A339434.P10465479220133703666

/-! ## A339434.P8503816170849647463

`A348325(n%A348366(3*n+4))`
-/

namespace A339434.P8503816170849647463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348325 (Int.tmod (n : ℤ) (A348366 (3 * n + 4))).toNat

end

end A339434.P8503816170849647463

/-! ## A339434.P7269922483857907202

`A242718(A304716(n+1))*A348325(n)`
-/

namespace A339434.P7269922483857907202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242718 (A304716 (n + 1)).toNat * A348325 n

end

end A339434.P7269922483857907202

/-! ## A339434.P1441847679181952756

`A348325(lcm(n, A008683(A281759(n))))`
-/

namespace A339434.P1441847679181952756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348325 (Int.lcm (n : ℤ) (A008683 (A281759 n).toNat))

end

end A339434.P1441847679181952756

/-!
# A339435: G.f.: Sum_{k>=0} (-1)^k * k! * x^(k*(k + 1)/2) / Product_{j=1..k} (1 - x^j).

The programs for A339435, there is no canonical definition to state claims against.
-/

/-! ## A339435.P6102149990968817598

`A332305(n)-A332304(n)`
-/

namespace A339435.P6102149990968817598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332305 n - A332304 n

end

end A339435.P6102149990968817598

/-! ## A339435.P14563235586727946243

`A332305(n)+A057428(n)*A332304(n)`
-/

namespace A339435.P14563235586727946243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332305 n + A057428 n * A332304 n

end

end A339435.P14563235586727946243

/-! ## A339435.P8786644393598070825

`2*A332305(n)-A032020(n)`
-/

namespace A339435.P8786644393598070825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A332305 n - A032020 n

end

end A339435.P8786644393598070825

/-! ## A339435.P10709053155837882937

`A032020(n)-2*A332304(n)`
-/

namespace A339435.P10709053155837882937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032020 n - 2 * A332304 n

end

end A339435.P10709053155837882937

/-! ## A339435.P12382934224508893249

`2*A332305(n)-A243081(A034856(n+1))`
-/

namespace A339435.P12382934224508893249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A332305 n - A243081 (A034856 (n + 1)).toNat

end

end A339435.P12382934224508893249

/-! ## A339435.P279249681200679415

`A243081(A034856(n+1))-2*A332304(n)`
-/

namespace A339435.P279249681200679415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243081 (A034856 (n + 1)).toNat - 2 * A332304 n

end

end A339435.P279249681200679415

/-!
# A339436: If n = p_1 * ... * p_m with primes p_i <= p_{i+1}, a(n) = Sum_{j=1..m-1} p_1*...*p_j + Sum_{j=2..m} p_j*...*p_m.

The programs for A339436, there is no canonical definition to state claims against.
-/

/-! ## A339436.P2562953252652339550

`A006022(n+2)+A322382(n+2)-2`
-/

namespace A339436.P2562953252652339550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006022 (n + 2) + (A322382 (n + 2) - 2)

end

end A339436.P2562953252652339550

/-! ## A339436.P12642177275166153050

`A322382(n+2)+A332993(n+2)+A001478(n+4)`
-/

namespace A339436.P12642177275166153050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322382 (n + 2) + (A332993 (n + 2) + A001478 (n + 4))

end

end A339436.P12642177275166153050

/-! ## A339436.P12795513977026778513

`A288654(A260378(n+1))+A288654(n+2)`
-/

namespace A339436.P12795513977026778513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288654 (A260378 (n + 1)).toNat + A288654 (n + 2)

end

end A339436.P12795513977026778513

/-! ## A339436.P5119696725676682973

`A288638(A372722(n+1))*A288654(n+2)`
-/

namespace A339436.P5119696725676682973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288638 (A372722 (n + 1)).toNat * A288654 (n + 2)

end

end A339436.P5119696725676682973

/-! ## A339436.P15853319748202907293

`lcm(A001221(A269848(n+1)), A288654(n+2))`
-/

namespace A339436.P15853319748202907293
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001221 (A269848 (n + 1)).toNat) (A288654 (n + 2))

end

end A339436.P15853319748202907293

/-!
# A339437: Numbers k such that A339436(k) is prime.

The programs for A339437, there is no canonical definition to state claims against.
-/

/-! ## A339437.P466001767219715763

`∩[A359330(n+1), A360014(n+1)]`
-/

namespace A339437.P466001767219715763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360014 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339437.P466001767219715763

/-!
# A339438: Composite numbers k such that k + A339436(k) is prime.

The programs for A339438, there is no canonical definition to state claims against.
-/

/-! ## A339438.P6111811604721884164

`∩[A066073(n+1), A357873(n+1)]`
-/

namespace A339438.P6111811604721884164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339438.P6111811604721884164

/-! ## A339438.P7438597583515510904

`A066073(A245794(n+1)+n+1)`
-/

namespace A339438.P7438597583515510904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066073 (A245794 (n + 1) + (n + 1 : ℤ)).toNat

end

end A339438.P7438597583515510904

/-! ## A339438.P3432604845483253705

`record[A066073(n+1)%A206447(A325653(n+1))]`
-/

namespace A339438.P3432604845483253705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066073 (n + 1)) (A206447 (A325653 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339438.P3432604845483253705

/-! ## A339438.P7211536582387532071

`∩[A066073(n+1), A129618(n+1)]`
-/

namespace A339438.P7211536582387532071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339438.P7211536582387532071

/-! ## A339438.P4679268705900511935

`filter[A290480(n+1), A296211(#)]`
-/

namespace A339438.P4679268705900511935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290480 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296211 (f1 j).toNat = 1) n)

end

end A339438.P4679268705900511935

/-!
# A339439: Number of n-digit numbers (in base 10) that are divisible by each of their nonzero digits.

The programs for A339439, there is no canonical definition to state claims against.
-/

/-! ## A339439.P8954394960322094944

`A384882(xor(A047881(n), A166444(n)))`
-/

namespace A339439.P8954394960322094944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384882 (Int.xor (A047881 n) (A166444 n)).toNat

end

end A339439.P8954394960322094944

/-!
# A339440: Number of linear forests with n rooted trees and 2*n-1 nodes.

The programs for A339440, there is no canonical definition to state claims against.
-/

/-! ## A339440.P9325388965076742525

`n*A008617(A086607(n+1))`
-/

namespace A339440.P9325388965076742525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A008617 (A086607 (n + 1)).toNat

end

end A339440.P9325388965076742525

/-! ## A339440.P2139195447564402662

`n*A008676(A296195(n+2))`
-/

namespace A339440.P2139195447564402662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A008676 (A296195 (n + 2)).toNat

end

end A339440.P2139195447564402662

/-! ## A339440.P2123613119384102619

`A131728(or(A125190(n), A125204(n)))`
-/

namespace A339440.P2123613119384102619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131728 (Int.lor (A125190 n) (A125204 n)).toNat

end

end A339440.P2123613119384102619

/-!
# A339441: Number of compositions (ordered partitions) of n into an even number of distinct triangular numbers.

The programs for A339441, there is no canonical definition to state claims against.
-/

/-! ## A339441.P13660034168242224290

`A331843(n)-A339442(n)`
-/

namespace A339441.P13660034168242224290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331843 n - A339442 n

end

end A339441.P13660034168242224290

/-! ## A339441.P1397682587868772195

`A006530(A060818(n))*A339375(n)`
-/

namespace A339441.P1397682587868772195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A060818 n).toNat * A339375 n

end

end A339441.P1397682587868772195

/-! ## A339441.P820248886566202105

`A133502(A007090(n))*A339375(n)`
-/

namespace A339441.P820248886566202105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133502 (A007090 n).toNat * A339375 n

end

end A339441.P820248886566202105

/-! ## A339441.P18052619840285947810

`A040001(A339631(n))*A339375(n)`
-/

namespace A339441.P18052619840285947810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A339631 n).toNat * A339375 n

end

end A339441.P18052619840285947810

/-!
# A339442: Number of compositions (ordered partitions) of n into an odd number of distinct triangular numbers.

The programs for A339442, there is no canonical definition to state claims against.
-/

/-! ## A339442.P44507578270289798

`A331843(n)-A339441(n)`
-/

namespace A339442.P44507578270289798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331843 n - A339441 n

end

end A339442.P44507578270289798

/-! ## A339442.P8075862350216194437

`C(A331843(n), A311095(A339441(n)²²))`
-/

namespace A339442.P8075862350216194437
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A331843 n).toNat (A311095 ((A339441 n ^ 2) ^ 2).toNat).toNat

end

end A339442.P8075862350216194437

/-! ## A339442.P14295248099082926464

`C(A331843(n), A314918(A339441(n)²²))`
-/

namespace A339442.P14295248099082926464
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A331843 n).toNat (A314918 ((A339441 n ^ 2) ^ 2).toNat).toNat

end

end A339442.P14295248099082926464

/-! ## A339442.P2904169729092934903

`A331843(n)-A006530(A060818(n))*A339375(n)`
-/

namespace A339442.P2904169729092934903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331843 n - A006530 (A060818 n).toNat * A339375 n

end

end A339442.P2904169729092934903

/-! ## A339442.P7040355017423451079

`A331843(n)-A040001(A339631(n))*A339375(n)`
-/

namespace A339442.P7040355017423451079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331843 n - A040001 (A339631 n).toNat * A339375 n

end

end A339442.P7040355017423451079

/-!
# A339443: Pairwise listing of the partitions of k into two parts (s,t), with 0 < t <= s ordered by decreasing values of s and where k = 2,3,... .

The programs for A339443, there is no canonical definition to state claims against.
-/

/-! ## A339443.P14292141492159323959

`A339399(A103889(n+1))`
-/

namespace A339443.P14292141492159323959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339399 (A103889 (n + 1)).toNat

end

end A339443.P14292141492159323959

/-! ## A339443.P15556124482184633592

`A339399(abs(xor(n, -2)))`
-/

namespace A339443.P15556124482184633592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339399 |Int.xor (n : ℤ) (-2)|.toNat

end

end A339443.P15556124482184633592

/-! ## A339443.P1244075842915540970

`A339399(xor(1, n)+1)`
-/

namespace A339443.P1244075842915540970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339399 (Nat.xor 1 n + 1)

end

end A339443.P1244075842915540970

/-! ## A339443.P9064408498244930217

`A339399(-xor(n, -2))`
-/

namespace A339443.P9064408498244930217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339399 (-Int.xor (n : ℤ) (-2)).toNat

end

end A339443.P9064408498244930217

/-! ## A339443.P9763150009690650428

`A339399(2-xor(1, 1-n))`
-/

namespace A339443.P9763150009690650428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339399 (2 - Int.xor 1 (1 - (n : ℤ))).toNat

end

end A339443.P9763150009690650428

/-! ## A339443.P590816288435920786

`A339399(2*or(1, n)-n)`
-/

namespace A339443.P590816288435920786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339399 (2 * Nat.lor 1 n - n)

end

end A339443.P590816288435920786

/-! ## A339443.P17798077806583486924

`A339399(lcm(2, or(1, n))-n)`
-/

namespace A339443.P17798077806583486924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339399 (Nat.lcm 2 (Nat.lor 1 n) - n)

end

end A339443.P17798077806583486924

/-! ## A339443.P14279794642067138986

`A339399(ceil(acos(n%2)+n))`
-/

namespace A339443.P14279794642067138986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339399 ⌈Real.arccos ((n % 2 : ℕ) : ℝ) + (n : ℝ)⌉.toNat

end

end A339443.P14279794642067138986

/-! ## A339443.P6108160768378379942

`A339399((-1)^n+1+n)`
-/

namespace A339443.P6108160768378379942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339399 ((-1) ^ n + 1 + (n : ℤ)).toNat

end

end A339443.P6108160768378379942

/-! ## A339443.P3206944548086802164

`A102515(n)-A339399(n+1)`
-/

namespace A339443.P3206944548086802164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102515 n - A339399 (n + 1)

end

end A339443.P3206944548086802164

/-!
# A339444: Number of partitions of n into triangular numbers such that the number of parts is a triangular number.

The programs for A339444, there is no canonical definition to state claims against.
-/

/-! ## A339444.P6827344796457786512

`A108393(xor(3, A008706(n)))`
-/

namespace A339444.P6827344796457786512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108393 (Int.xor 3 (A008706 n)).toNat

end

end A339444.P6827344796457786512

/-! ## A339444.P718479553636878094

`A108393(A047471(n+1)+A004443(n))`
-/

namespace A339444.P718479553636878094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108393 (A047471 (n + 1) + A004443 n).toNat

end

end A339444.P718479553636878094

/-! ## A339444.P5080828884999775097

`A050326(A320351(n)+A003814(2*n+3))`
-/

namespace A339444.P5080828884999775097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050326 (A320351 n + A003814 (2 * n + 3)).toNat

end

end A339444.P5080828884999775097

/-! ## A339444.P14347657928502953445

`A093759(n+6)%A119352(A239849(3*(n+1)))`
-/

namespace A339444.P14347657928502953445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A093759 (n + 6)) (A119352 (A239849 (3 * (n + 1))).toNat)

end

end A339444.P14347657928502953445

/-! ## A339444.P5833176658589284604

`floor(A089856(A239537(n+1))/(n+1))`
-/

namespace A339444.P5833176658589284604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A089856 (A239537 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)⌋

end

end A339444.P5833176658589284604

/-!
# A339445: Number of partitions of n into squares such that the number of parts is a square.

The programs for A339445, there is no canonical definition to state claims against.
-/

/-! ## A339445.P452496498576833762

`A054973(A000124(n+1)-A184955(n)-A033879(n+1))`
-/

namespace A339445.P452496498576833762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (A000124 (n + 1) - A184955 n - A033879 (n + 1)).toNat

end

end A339445.P452496498576833762

/-! ## A339445.P147806025107591911

`A332054(5*n+2)%3`
-/

namespace A339445.P147806025107591911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332054 (5 * n + 2)) 3

end

end A339445.P147806025107591911

/-! ## A339445.P3894534038721123139

`1-A244895(A302929(2*n+1))`
-/

namespace A339445.P3894534038721123139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A244895 (A302929 (2 * n + 1)).toNat

end

end A339445.P3894534038721123139

/-! ## A339445.P14088885733557213254

`A105700(A141962(n+1)+A132658(n))`
-/

namespace A339445.P14088885733557213254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A141962 (n + 1) + A132658 n).toNat

end

end A339445.P14088885733557213254

/-! ## A339445.P13143215148307153571

`A213731(A050040(n+1)*A194280(n+1))`
-/

namespace A339445.P13143215148307153571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213731 (A050040 (n + 1) * A194280 (n + 1)).toNat

end

end A339445.P13143215148307153571

/-!
# A339447: G.f.: Sum_{k>=0} x^(2^k) / Product_{j=1..2^k} (1 - x^j).

The programs for A339447, there is no canonical definition to state claims against.
-/

/-! ## A339447.P4415106319158300615

`A113512(A046682(n)+n)`
-/

namespace A339447.P4415106319158300615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113512 (A046682 n + (n : ℤ)).toNat

end

end A339447.P4415106319158300615

/-! ## A339447.P9522345977768831659

`A122132(A122134(n+2))%A122113(n+5)`
-/

namespace A339447.P9522345977768831659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122132 (A122134 (n + 2)).toNat) (A122113 (n + 5))

end

end A339447.P9522345977768831659

/-!
# A339448: a(n) = (prime(n) - a(n-1)) mod 3; a(0)=0.

The programs for A339448, there is no canonical definition to state claims against.
-/

/-! ## A339448.P6261107154641457556

`A008347(n)%3`
-/

namespace A339448.P6261107154641457556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008347 n) 3

end

end A339448.P6261107154641457556

/-! ## A339448.P7069424277111865988

`abs(A242188(n)%3)`
-/

namespace A339448.P7069424277111865988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A242188 n) 3|

end

end A339448.P7069424277111865988

/-! ## A339448.P1408466399243464843

`Δ[A355726(n)]%3`
-/

namespace A339448.P1408466399243464843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355726 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 3

end

end A339448.P1408466399243464843

/-! ## A339448.P3929604565198971125

`(A000040(n)-a(n-1))%3` with `a(0)=0`
-/

namespace A339448.P3929604565198971125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (A000040 n - a (n - 1)) 3

end

end A339448.P3929604565198971125

/-! ## A339448.P16764870326676511311

`(A006093(n)+1-a(n-1))%3` with `a(0)=0`
-/

namespace A339448.P16764870326676511311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (A006093 n + 1 - a (n - 1)) 3

end

end A339448.P16764870326676511311

/-! ## A339448.P16914230161137361851

`(A014689(n)-a(n-1)+n)%3` with `a(0)=0`
-/

namespace A339448.P16914230161137361851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (A014689 n - a (n - 1) + (n : ℤ)) 3

end

end A339448.P16914230161137361851

/-! ## A339448.P9507795891280550871

`(record[A006530(n+1)]-a(n-1))%3` with `a(0)=0`
-/

namespace A339448.P9507795891280550871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - a (n - 1)) 3

end

end A339448.P9507795891280550871

/-! ## A339448.P4902767794653097904

`(record[A014963(n+1)]-a(n-1))%3` with `a(0)=0`
-/

namespace A339448.P4902767794653097904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - a (n - 1)) 3

end

end A339448.P4902767794653097904

/-! ## A339448.P4210676902106340540

`(record[A020639(n+1)]-a(n-1))%3` with `a(0)=0`
-/

namespace A339448.P4210676902106340540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - a (n - 1)) 3

end

end A339448.P4210676902106340540

/-!
# A339451: Gray-code-like sequence in which, at each step, the least significant bit that has never been toggled from the previous value, is toggled.

The programs for A339451, the canonical program `A339451.P5257208981662838490` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339451 has offset 0).

The definition of A339451 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A339451.P5257208981662838490

`∑[A079559(n)]-A182105(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A339451

/-- `∑[A079559(n)]-A182105(n+1)` -/
def P5257208981662838490.Spec : Prop :=
  ∀ n, P5257208981662838490.a n = A339451 n

theorem P5257208981662838490.correct : P5257208981662838490.Spec := by
  intro n
  simp only [A339451]

end A339451

/-! ## A339451.P3972439988163302883

`A046699(n+2)-A182105(n+1)`
-/

namespace A339451.P3972439988163302883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046699 (n + 2) - A182105 (n + 1)

end

end A339451.P3972439988163302883

namespace A339451

/-- `A046699(n+2)-A182105(n+1)` -/
def P3972439988163302883.Spec : Prop :=
  ∀ n, P3972439988163302883.a n = A339451 n

end A339451

/-! ## A339451.P4160163834308261948

`(A123390(n+1)-1)*A182105(n+1)`
-/

namespace A339451.P4160163834308261948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A123390 (n + 1) - 1) * A182105 (n + 1)

end

end A339451.P4160163834308261948

namespace A339451

/-- `(A123390(n+1)-1)*A182105(n+1)` -/
def P4160163834308261948.Spec : Prop :=
  ∀ n, P4160163834308261948.a n = A339451 n

end A339451

/-! ## A339451.P6333110096419293568

`∑[1-A308187(n+1)]-A182105(n+1)`
-/

namespace A339451.P6333110096419293568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A308187 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A182105 (n + 1)

end

end A339451.P6333110096419293568

namespace A339451

/-- `∑[1-A308187(n+1)]-A182105(n+1)` -/
def P6333110096419293568.Spec : Prop :=
  ∀ n, P6333110096419293568.a n = A339451 n

end A339451

/-! ## A339451.P322928314940459482

`∑[2-A308188(n+1)]-A182105(n+1)`
-/

namespace A339451.P322928314940459482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A308188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A182105 (n + 1)

end

end A339451.P322928314940459482

namespace A339451

/-- `∑[2-A308188(n+1)]-A182105(n+1)` -/
def P322928314940459482.Spec : Prop :=
  ∀ n, P322928314940459482.a n = A339451 n

end A339451

/-! ## A339451.P14838313647441044906

`A046699(n+2)-A011782(A082850(n+1))`
-/

namespace A339451.P14838313647441044906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046699 (n + 2) - A011782 (A082850 (n + 1)).toNat

end

end A339451.P14838313647441044906

namespace A339451

/-- `A046699(n+2)-A011782(A082850(n+1))` -/
def P14838313647441044906.Spec : Prop :=
  ∀ n, P14838313647441044906.a n = A339451 n

end A339451

/-! ## A339451.P1169771366088565903

`A104594(A108918(n+1))`
-/

namespace A339451.P1169771366088565903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104594 (A108918 (n + 1)).toNat

end

end A339451.P1169771366088565903

namespace A339451

/-- `A104594(A108918(n+1))` -/
def P1169771366088565903.Spec : Prop :=
  ∀ n, P1169771366088565903.a n = A339451 n

end A339451

/-! ## A339451.P14900005410877989988

`A108918(n+1)-∑[A079559(n)]`
-/

namespace A339451.P14900005410877989988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108918 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339451.P14900005410877989988

namespace A339451

/-- `A108918(n+1)-∑[A079559(n)]` -/
def P14900005410877989988.Spec : Prop :=
  ∀ n, P14900005410877989988.a n = A339451 n

end A339451

/-! ## A339451.P14737217090616959222

`A108918(n+1)-A046699(n+2)`
-/

namespace A339451.P14737217090616959222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108918 (n + 1) - A046699 (n + 2)

end

end A339451.P14737217090616959222

namespace A339451

/-- `A108918(n+1)-A046699(n+2)` -/
def P14737217090616959222.Spec : Prop :=
  ∀ n, P14737217090616959222.a n = A339451 n

end A339451

/-! ## A339451.P453465902475317466

`(A108918(n+1)-A182105(n+1))/2`
-/

namespace A339451.P453465902475317466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108918 (n + 1) - A182105 (n + 1) : ℚ) / 2

end

end A339451.P453465902475317466

namespace A339451

/-- `(A108918(n+1)-A182105(n+1))/2` -/
def P453465902475317466.Spec : Prop :=
  ∀ n, P453465902475317466.a n = (A339451 n : ℚ)

end A339451

/-! ## A339451.P18358191366190579606

`A004526(and(A108918(n+1)-1, A108918(n+1)))`
-/

namespace A339451.P18358191366190579606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.land (A108918 (n + 1) - 1) (A108918 (n + 1))).toNat

end

end A339451.P18358191366190579606

namespace A339451

/-- `A004526(and(A108918(n+1)-1, A108918(n+1)))` -/
def P18358191366190579606.Spec : Prop :=
  ∀ n, P18358191366190579606.a n = A339451 n

end A339451

/-! ## A339451.P15102995785240788134

`A289813(A354047(n))`
-/

namespace A339451.P15102995785240788134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 (A354047 n).toNat

end

end A339451.P15102995785240788134

namespace A339451

/-- `A289813(A354047(n))` -/
def P15102995785240788134.Spec : Prop :=
  ∀ n, P15102995785240788134.a n = A339451 n

end A339451

/-! ## A339451.P16776704984964063347

`A292371(eq[A292371(n+1), A309952(2*n+1)])`
-/

namespace A339451.P16776704984964063347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309952 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292371 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A339451.P16776704984964063347

namespace A339451

/-- `A292371(eq[A292371(n+1), A309952(2*n+1)])` -/
def P16776704984964063347.Spec : Prop :=
  ∀ n, P16776704984964063347.a n = A339451 n

end A339451

/-! ## A339451.P6089039795725240976

`∑[A285345(A182105(n+1)²)]-A182105(n+1)`
-/

namespace A339451.P6089039795725240976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285345 (A182105 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A182105 (n + 1)

end

end A339451.P6089039795725240976

namespace A339451

/-- `∑[A285345(A182105(n+1)²)]-A182105(n+1)` -/
def P6089039795725240976.Spec : Prop :=
  ∀ n, P6089039795725240976.a n = A339451 n

end A339451

/-! ## A339451.P1735005038502688849

`A292372(eq[A000120(n+1), A160381(2*n+1)])`
-/

namespace A339451.P1735005038502688849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292372 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A339451.P1735005038502688849

namespace A339451

/-- `A292372(eq[A000120(n+1), A160381(2*n+1)])` -/
def P1735005038502688849.Spec : Prop :=
  ∀ n, P1735005038502688849.a n = A339451 n

end A339451

/-!
# A339452: Number of compositions (ordered partitions) of n into distinct parts such that the geometric mean of the parts is an integer.

The programs for A339452, there is no canonical definition to state claims against.
-/

/-! ## A339452.P73665345880161024

`gcd(A004525(A112927(n+1)), A078056(n))`
-/

namespace A339452.P73665345880161024
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004525 (A112927 (n + 1)).toNat) (A078056 n)

end

end A339452.P73665345880161024

/-!
# A339453: Number of subsets of {1..n} whose harmonic mean is an integer.

The programs for A339453, there is no canonical definition to state claims against.
-/

/-! ## A339453.P3699227933627602517

`A357411(n+1)+A357412(n+1)`
-/

namespace A339453.P3699227933627602517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357411 (n + 1) + A357412 (n + 1)

end

end A339453.P3699227933627602517

/-!
# A339454: Number of subsets of {1..n} whose root mean square is an integer.

The programs for A339454, there is no canonical definition to state claims against.
-/

/-! ## A339454.P814679196242387822

`A357415(n+1)+A357416(n+1)`
-/

namespace A339454.P814679196242387822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357415 (n + 1) + A357416 (n + 1)

end

end A339454.P814679196242387822

/-! ## A339454.P7023781185348880960

`∑[A263998(A047993(n+1)!)]`
-/

namespace A339454.P7023781185348880960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263998 (Nat.factorial (A047993 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339454.P7023781185348880960

/-!
# A339455: a(n) is the X-coordinate of the n-th point of the space filling curve H defined in Comments section; A339456 gives Y-coordinates.

The programs for A339455, there is no canonical definition to state claims against.
-/

/-! ## A339455.P6688853242643116563

`A036578(A000290(3*n+1)*A170823(2*n))`
-/

namespace A339455.P6688853242643116563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036578 (A000290 (3 * n + 1) * A170823 (2 * n)).toNat

end

end A339455.P6688853242643116563

/-! ## A339455.P13291009551209773294

`1-A289741(A172482(n))`
-/

namespace A339455.P13291009551209773294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A289741 (A172482 n).toNat

end

end A339455.P13291009551209773294

/-! ## A339455.P13501913669177773189

`1-A289741(A100178(n+1))`
-/

namespace A339455.P13501913669177773189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A289741 (A100178 (n + 1)).toNat

end

end A339455.P13501913669177773189

/-! ## A339455.P1629518585263849024

`A139352((floor(ϕ*(n+2))-2)%A165275(3*(n+1)))`
-/

namespace A339455.P1629518585263849024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (Int.tmod (⌊Real.goldenRatio * (n + 2 : ℝ)⌋ - 2) (A165275 (3 * (n + 1)))).toNat

end

end A339455.P1629518585263849024

/-! ## A339455.P10180346268201510799

`1-A307425(A276086(A016777(n)))`
-/

namespace A339455.P10180346268201510799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A307425 (A276086 (A016777 n).toNat).toNat

end

end A339455.P10180346268201510799

/-!
# A339459: Prime numbers a(n) = floor(2^(n^d)) for all n>=1 where d=1.5039285240... is the constant defined at A339457.

The programs for A339459, there is no canonical definition to state claims against.
-/

/-! ## A339459.P8080952440374960625

`record[A051697(A144502(n))]`
-/

namespace A339459.P8080952440374960625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051697 (A144502 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339459.P8080952440374960625

/-!
# A339460: Triangle read by rows: T(n,k) is the number of k-element equivalence classes of closed meanders with 2n points.

The programs for A339460, there is no canonical definition to state claims against.
-/

/-! ## A339460.P5064668375283454576

`A188916(A188912(n))-A188916(n)`
-/

namespace A339460.P5064668375283454576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188916 (A188912 n).toNat - A188916 n

end

end A339460.P5064668375283454576

/-! ## A339460.P12307817509485309924

`or(A054993(n), A373948(A038205(n)))`
-/

namespace A339460.P12307817509485309924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A054993 n) (A373948 (A038205 n).toNat)

end

end A339460.P12307817509485309924

/-!
# A339461: Number of Fibonacci divisors of n^2 + 1.

The programs for A339461, the canonical program `A339461.P9181294393208732511` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339461 has offset 0).

The definition of A339461 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005086, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A339461.P9181294393208732511

`A005086(A002522(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A339461

/-- `A005086(A002522(n))` -/
def P9181294393208732511.Spec : Prop :=
  ∀ n, P9181294393208732511.a n = A339461 n

theorem P9181294393208732511.correct : P9181294393208732511.Spec := by
  intro n
  simp only [A339461]

end A339461

/-! ## A339461.P12720999994706748074

`∑{d}[n²+1, A010056(#)]`
-/

namespace A339461.P12720999994706748074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010056 d

end

end A339461.P12720999994706748074

namespace A339461

/-- `∑{d}[n²+1, A010056(#)]` -/
def P12720999994706748074.Spec : Prop :=
  ∀ n, P12720999994706748074.a n = A339461 n

end A339461

/-! ## A339461.P4426968865179828875

`∑{d}[n²+1, A192687(#-1)]`
-/

namespace A339461.P4426968865179828875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A192687 (d - 1)

end

end A339461.P4426968865179828875

namespace A339461

/-- `∑{d}[n²+1, A192687(#-1)]` -/
def P4426968865179828875.Spec : Prop :=
  ∀ n, P4426968865179828875.a n = A339461 n

end A339461

/-! ## A339461.P29636489542421570

`A005086(n²+1)`
-/

namespace A339461.P29636489542421570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005086 (n ^ 2 + 1)

end

end A339461.P29636489542421570

namespace A339461

/-- `A005086(n²+1)` -/
def P29636489542421570.Spec : Prop :=
  ∀ n, P29636489542421570.a n = A339461 n

end A339461

/-! ## A339461.P14197424020633754110

`dr(A005086(A033638(2*n)))`
-/

namespace A339461.P14197424020633754110
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A005086 (A033638 (2 * n)).toNat)

end

end A339461.P14197424020633754110

namespace A339461

/-- `dr(A005086(A033638(2*n)))` -/
def P14197424020633754110.Spec : Prop :=
  ∀ n, (P14197424020633754110.a n : ℤ) = A339461 n

end A339461

/-!
# A339462: Numbers k such that (i*k)^(1/3) is an integer for some i in 1 <= i <= k.

The programs for A339462, there is no canonical definition to state claims against.
-/

/-! ## A339462.P16583467011775956587

`lt[A048798(n+1), n+2]+1`
-/

namespace A339462.P16583467011775956587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048798 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A339462.P16583467011775956587

/-! ## A339462.P7057621144226823826

`lt[n^(1/3), A000189(n+1)]+1`
-/

namespace A339462.P7057621144226823826
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000189 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n + 1

end

end A339462.P7057621144226823826

/-! ## A339462.P17462889632403868030

`lt[A048798(A028310(n)), n+1]`
-/

namespace A339462.P17462889632403868030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048798 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A339462.P17462889632403868030

/-! ## A339462.P4425425628080420402

`lt[A048798(A028310(n))-1, A014681(n)]`
-/

namespace A339462.P4425425628080420402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048798 (A028310 n).toNat - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A339462.P4425425628080420402

/-! ## A339462.P5537018940538332435

`lt[A048798(A028310(n))/A116966(n), 1]`
-/

namespace A339462.P5537018940538332435
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048798 (A028310 n).toNat : ℚ) / (A116966 n : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A339462.P5537018940538332435

/-! ## A339462.P13162638758340080975

`lt[A011262(A050985(n+1)), A254767(n+1)]+1`
-/

namespace A339462.P13162638758340080975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011262 (A050985 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254767 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A339462.P13162638758340080975

/-! ## A339462.P10241079705541350216

`lt[A000578(A019555(n+1))/(n+1), A254767(n+1)]+1`
-/

namespace A339462.P10241079705541350216
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000578 (A019555 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254767 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 1

end

end A339462.P10241079705541350216

/-!
# A339463: Primes p such that (p-1)/gpf(p-1) = 2^q * 5^r with q, r >= 1, where gpf(m) is the greatest prime factor of m, A006530.

The programs for A339463, there is no canonical definition to state claims against.
-/

/-! ## A339463.P11060606149205056630

`p?[A132232(n+3)%A140444(n+5)]`
-/

namespace A339463.P11060606149205056630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132232 (n + 3)) (A140444 (n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A339463.P11060606149205056630

/-! ## A339463.P267773900523333080

`p?[A323610(2*n+1)-n]`
-/

namespace A339463.P267773900523333080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323610 (2 * n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A339463.P267773900523333080

/-! ## A339463.P14056429909644905600

`A132232(A227549(n+1)+3)`
-/

namespace A339463.P14056429909644905600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132232 (A227549 (n + 1) + 3).toNat

end

end A339463.P14056429909644905600

/-! ## A339463.P15492427368472002027

`filter[A128467(n+2), A377988(#)]`
-/

namespace A339463.P15492427368472002027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128467 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A377988 (f1 j).toNat = 1) n)

end

end A339463.P15492427368472002027

/-! ## A339463.P475859987725808717

`filter[A132232(n+3), A377988(#)]`
-/

namespace A339463.P475859987725808717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132232 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A377988 (f1 j).toNat = 1) n)

end

end A339463.P475859987725808717

/-!
# A339464: a(n) = (prime(n)-1) / gpf(prime(n)-1) where gpf(m) is the greatest prime factor of m, A006530.

The programs for A339464, the canonical program `A339464.P18290823833589417318` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339464 has offset 2).

The definition of A339464 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006093, A052126, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A339464.P18290823833589417318

`A052126(A006093(n+2))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A339464

/-- `A052126(A006093(n+2))` -/
def P18290823833589417318.Spec : Prop :=
  ∀ n, P18290823833589417318.a n = A339464 (n + 2)

theorem P18290823833589417318.correct : P18290823833589417318.Spec := by
  intro n
  simp only [A339464, Nat.add_sub_cancel]

end A339464

/-! ## A339464.P8764408315860215884

`(A065091(n+1)-1)/A023503(n+2)`
-/

namespace A339464.P8764408315860215884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065091 (n + 1) - 1 : ℚ) / (A023503 (n + 2) : ℚ)

end

end A339464.P8764408315860215884

namespace A339464

/-- `(A065091(n+1)-1)/A023503(n+2)` -/
def P8764408315860215884.Spec : Prop :=
  ∀ n, P8764408315860215884.a n = (A339464 (n + 2) : ℚ)

end A339464

/-! ## A339464.P5397443173062843143

`A006093(n+2)/A023503(n+2)`
-/

namespace A339464.P5397443173062843143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 2) : ℚ) / (A023503 (n + 2) : ℚ)

end

end A339464.P5397443173062843143

namespace A339464

/-- `A006093(n+2)/A023503(n+2)` -/
def P5397443173062843143.Spec : Prop :=
  ∀ n, P5397443173062843143.a n = (A339464 (n + 2) : ℚ)

end A339464

/-! ## A339464.P13609614054462781837

`A039915(n+2)/A006530(A039915(n+2))`
-/

namespace A339464.P13609614054462781837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039915 (n + 2) : ℚ) / (A006530 (A039915 (n + 2)).toNat : ℚ)

end

end A339464.P13609614054462781837

namespace A339464

/-- `A039915(n+2)/A006530(A039915(n+2))` -/
def P13609614054462781837.Spec : Prop :=
  ∀ n, P13609614054462781837.a n = (A339464 (n + 2) : ℚ)

end A339464

/-! ## A339464.P1094619730353271759

`A156037(n+2)/A006530(A156037(n+2))`
-/

namespace A339464.P1094619730353271759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156037 (n + 2) : ℚ) / (A006530 (A156037 (n + 2)).toNat : ℚ)

end

end A339464.P1094619730353271759

namespace A339464

/-- `A156037(n+2)/A006530(A156037(n+2))` -/
def P1094619730353271759.Spec : Prop :=
  ∀ n, P1094619730353271759.a n = (A339464 (n + 2) : ℚ)

end A339464

/-! ## A339464.P18075579120738418540

`A068212(p?[2*n+1])`
-/

namespace A339464.P18075579120738418540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068212 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A339464.P18075579120738418540

namespace A339464

/-- `A068212(p?[2*n+1])` -/
def P18075579120738418540.Spec : Prop :=
  ∀ n, P18075579120738418540.a n = A339464 (n + 2)

end A339464

/-! ## A339464.P12451400875238037546

`A052126(p?[2*n+1]-1)`
-/

namespace A339464.P12451400875238037546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) - 1)

end

end A339464.P12451400875238037546

namespace A339464

/-- `A052126(p?[2*n+1]-1)` -/
def P12451400875238037546.Spec : Prop :=
  ∀ n, P12451400875238037546.a n = A339464 (n + 2)

end A339464

/-! ## A339464.P11841081452892449662

`A052126(abs(p?[a(n-1)+2]-1))` with `a(0)=1`
-/

namespace A339464.P11841081452892449662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 |(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 1|.toNat

end

end A339464.P11841081452892449662

namespace A339464

/-- `A052126(abs(p?[a(n-1)+2]-1))` -/
def P11841081452892449662.Spec : Prop :=
  ∀ n, P11841081452892449662.a n = A339464 (n + 2)

end A339464

/-! ## A339464.P14256909876875773455

`A068212(A065091(n+1))`
-/

namespace A339464.P14256909876875773455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068212 (A065091 (n + 1)).toNat

end

end A339464.P14256909876875773455

namespace A339464

/-- `A068212(A065091(n+1))` -/
def P14256909876875773455.Spec : Prop :=
  ∀ n, P14256909876875773455.a n = A339464 (n + 2)

end A339464

/-! ## A339464.P5162231265578045900

`A052126(A165972(n+1))`
-/

namespace A339464.P5162231265578045900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A165972 (n + 1)).toNat

end

end A339464.P5162231265578045900

namespace A339464

/-- `A052126(A165972(n+1))` -/
def P5162231265578045900.Spec : Prop :=
  ∀ n, P5162231265578045900.a n = A339464 (n + 2)

end A339464

/-! ## A339464.P2709920164635383639

`A068212(A000040(n+2))`
-/

namespace A339464.P2709920164635383639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068212 (A000040 (n + 2)).toNat

end

end A339464.P2709920164635383639

namespace A339464

/-- `A068212(A000040(n+2))` -/
def P2709920164635383639.Spec : Prop :=
  ∀ n, P2709920164635383639.a n = A339464 (n + 2)

end A339464

/-! ## A339464.P11551897155952928045

`A068212(A006005(n+2))`
-/

namespace A339464.P11551897155952928045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068212 (A006005 (n + 2)).toNat

end

end A339464.P11551897155952928045

namespace A339464

/-- `A068212(A006005(n+2))` -/
def P11551897155952928045.Spec : Prop :=
  ∀ n, P11551897155952928045.a n = A339464 (n + 2)

end A339464

/-! ## A339464.P10951038104425399608

`A052126(A039915(n+2))`
-/

namespace A339464.P10951038104425399608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A039915 (n + 2)).toNat

end

end A339464.P10951038104425399608

namespace A339464

/-- `A052126(A039915(n+2))` -/
def P10951038104425399608.Spec : Prop :=
  ∀ n, P10951038104425399608.a n = A339464 (n + 2)

end A339464

/-! ## A339464.P1264233388972902657

`A052126(A156037(n+2))`
-/

namespace A339464.P1264233388972902657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A156037 (n + 2)).toNat

end

end A339464.P1264233388972902657

namespace A339464

/-- `A052126(A156037(n+2))` -/
def P1264233388972902657.Spec : Prop :=
  ∀ n, P1264233388972902657.a n = A339464 (n + 2)

end A339464

/-! ## A339464.P5744247701851016887

`A052126(A065091(n+1)-1)`
-/

namespace A339464.P5744247701851016887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A065091 (n + 1) - 1).toNat

end

end A339464.P5744247701851016887

namespace A339464

/-- `A052126(A065091(n+1)-1)` -/
def P5744247701851016887.Spec : Prop :=
  ∀ n, P5744247701851016887.a n = A339464 (n + 2)

end A339464

/-! ## A339464.P4114103725097417254

`A052126(A000040(n+2)-1)`
-/

namespace A339464.P4114103725097417254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A000040 (n + 2) - 1).toNat

end

end A339464.P4114103725097417254

namespace A339464

/-- `A052126(A000040(n+2)-1)` -/
def P4114103725097417254.Spec : Prop :=
  ∀ n, P4114103725097417254.a n = A339464 (n + 2)

end A339464

/-! ## A339464.P16887505686247229704

`A068212(A100484(n+2)/2)`
-/

namespace A339464.P16887505686247229704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068212 (SequenceMachineLib.roundAway ((A100484 (n + 2) : ℚ) / 2)).toNat

end

end A339464.P16887505686247229704

namespace A339464

/-- `A068212(A100484(n+2)/2)` -/
def P16887505686247229704.Spec : Prop :=
  ∀ n, P16887505686247229704.a n = A339464 (n + 2)

end A339464

/-! ## A339464.P6687284937845964794

`A052126(xor(1, A000040(n+2)))`
-/

namespace A339464.P6687284937845964794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (Int.xor 1 (A000040 (n + 2))).toNat

end

end A339464.P6687284937845964794

namespace A339464

/-- `A052126(xor(1, A000040(n+2)))` -/
def P6687284937845964794.Spec : Prop :=
  ∀ n, P6687284937845964794.a n = A339464 (n + 2)

end A339464

/-! ## A339464.P57517599571452205

`A052126(lt[1, A049084(n+1)])`
-/

namespace A339464.P57517599571452205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A339464.P57517599571452205

namespace A339464

/-- `A052126(lt[1, A049084(n+1)])` -/
def P57517599571452205.Spec : Prop :=
  ∀ n, P57517599571452205.a n = A339464 (n + 2)

end A339464

/-! ## A339464.P5651353446055996718

`A052126(lt[A032742(n+1)², n])`
-/

namespace A339464.P5651353446055996718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A339464.P5651353446055996718

namespace A339464

/-- `A052126(lt[A032742(n+1)², n])` -/
def P5651353446055996718.Spec : Prop :=
  ∀ n, P5651353446055996718.a n = A339464 (n + 2)

end A339464

/-!
# A339465: Primes p such that (p-1)/gpf(p-1) = 2^q * 3^r with q, r >= 1, where gpf(m) is the greatest prime factor of m, A006530.

The programs for A339465, there is no canonical definition to state claims against.
-/

/-! ## A339465.P17015908097517960467

`p?[(2*n+3)*4%A087039(n+1)]`
-/

namespace A339465.P17015908097517960467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) * Int.tmod 4 (A087039 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A339465.P17015908097517960467

/-! ## A339465.P16591631189722301869

`p?[A103517(n)+4%A087039(n+1)]`
-/

namespace A339465.P16591631189722301869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n + Int.tmod 4 (A087039 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A339465.P16591631189722301869

/-! ## A339465.P15976012194973106409

`A000040(eq[3, A087039(A156037(n+1))]+1)`
-/

namespace A339465.P15976012194973106409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087039 (A156037 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A339465.P15976012194973106409

/-! ## A339465.P18203977009673809165

`p?[(A087039(A000010(n+1))-2)*A004442(n)]`
-/

namespace A339465.P18203977009673809165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A087039 (A000010 (n + 1)).toNat - 2) * A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A339465.P18203977009673809165

/-! ## A339465.P12377496203112009150

`p?[(A087039(A000010(n+1))-2)*A061397(n+1)]`
-/

namespace A339465.P12377496203112009150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A087039 (A000010 (n + 1)).toNat - 2) * A061397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A339465.P12377496203112009150

/-!
# A339466: Primes p such that gpf((p - 1)/gpf(p - 1)) > 3, where gpf(m) is the greatest prime factor of m, A006530.

The programs for A339466, the canonical program `A339466.P2178970374923074501` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339466 has offset 1).

The definition of A339466 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1304 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A339466.P2178970374923074501

`p?[A340371(A064989(n+1))+A144396(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A339466

/-- `p?[A340371(A064989(n+1))+A144396(n+1)]` -/
def P2178970374923074501.Spec : Prop :=
  ∀ n, P2178970374923074501.a n = A339466 (n + 1)

theorem P2178970374923074501.correct : P2178970374923074501.Spec := by
  intro n
  simp only [A339466, Nat.add_sub_cancel]

end A339466

/-! ## A339466.P4822842076741617119

`p?[A340371(A064989(n+1))+A004273(n+2)]`
-/

namespace A339466.P4822842076741617119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340371 (A064989 (n + 1)).toNat + A004273 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A339466.P4822842076741617119

namespace A339466

/-- `p?[A340371(A064989(n+1))+A004273(n+2)]` -/
def P4822842076741617119.Spec : Prop :=
  ∀ n, P4822842076741617119.a n = A339466 (n + 1)

end A339466

/-! ## A339466.P4586548977814144155

`p?[A340371(A064989(n+1))+A294178(n+1)]`
-/

namespace A339466.P4586548977814144155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340371 (A064989 (n + 1)).toNat + A294178 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A339466.P4586548977814144155

namespace A339466

/-- `p?[A340371(A064989(n+1))+A294178(n+1)]` -/
def P4586548977814144155.Spec : Prop :=
  ∀ n, P4586548977814144155.a n = A339466 (n + 1)

end A339466

/-! ## A339466.P17762819092779301084

`p?[2*A334146(n+1)+1]`
-/

namespace A339466.P17762819092779301084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A334146 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A339466.P17762819092779301084

namespace A339466

/-- `p?[2*A334146(n+1)+1]` -/
def P17762819092779301084.Spec : Prop :=
  ∀ n, P17762819092779301084.a n = A339466 (n + 1)

end A339466

/-! ## A339466.P6918715670430635773

`p?[A005408(A334146(n+1))]`
-/

namespace A339466.P6918715670430635773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A334146 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A339466.P6918715670430635773

namespace A339466

/-- `p?[A005408(A334146(n+1))]` -/
def P6918715670430635773.Spec : Prop :=
  ∀ n, P6918715670430635773.a n = A339466 (n + 1)

end A339466

/-!
# A339469: a(n) is the smallest k such that k = x_11 * x_12 * x_13 = x_21 * x_22 * x_23 = ... = x_n1 *x_n2 * x_n3 and x_11 + x_12 + x_13 = x_21 + x_22 + x_23 = ... = x_n1 + x_n2 + x_n3; x_ij >= 2.

The programs for A339469, there is no canonical definition to state claims against.
-/

/-! ## A339469.P18168256753303148432

`lcm(8, A103278(n+1))`
-/

namespace A339469.P18168256753303148432
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 8 (A103278 (n + 1))

end

end A339469.P18168256753303148432

/-! ## A339469.P14223735993285671386

`A071832(A000302(n))*A103278(n+1)`
-/

namespace A339469.P14223735993285671386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071832 (A000302 n).toNat * A103278 (n + 1)

end

end A339469.P14223735993285671386

/-!
# A339471: a(n) = floor(sqrt(Re(s)^2 + Im(s)^2)) where s = Sum_k={1..n} e^(2*n*Pi*i/k).

The programs for A339471, there is no canonical definition to state claims against.
-/

/-! ## A339471.P3511334758073262617

`A259555(A337384(n+1))%A006530(n+1)`
-/

namespace A339471.P3511334758073262617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259555 (A337384 (n + 1)).toNat) (A006530 (n + 1))

end

end A339471.P3511334758073262617

/-! ## A339471.P17434069871940933901

`A139352(A072202(n+3)*A077106(n))`
-/

namespace A339471.P17434069871940933901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (A072202 (n + 3) * A077106 n).toNat

end

end A339471.P17434069871940933901

/-! ## A339471.P17381334354995954591

`A302851(A106461(n+1))%A199474(n+1)`
-/

namespace A339471.P17381334354995954591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302851 (A106461 (n + 1)).toNat) (A199474 (n + 1))

end

end A339471.P17381334354995954591

/-!
# A339472: Integers k for which there is a divisor d, such that sigma(k) = d*sigma(d).

The programs for A339472, there is no canonical definition to state claims against.
-/

/-! ## A339472.P5983835038021897841

`A338520(comp[a(n-2)-10])` with `a(0)=0, a(1)=7`
-/

namespace A339472.P5983835038021897841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 7] fun n f1 =>
  f1 (n - 2) - 10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338520 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A339472.P5983835038021897841

/-! ## A339472.P9403575238872100290

`A348034(A032555(n+1))`
-/

namespace A339472.P9403575238872100290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348034 (A032555 (n + 1)).toNat

end

end A339472.P9403575238872100290

/-! ## A339472.P3162750763123975005

`A348034(A032557(n+1))`
-/

namespace A339472.P3162750763123975005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348034 (A032557 (n + 1)).toNat

end

end A339472.P3162750763123975005

/-! ## A339472.P3169858839363475473

`A348034(A032559(n+1))`
-/

namespace A339472.P3169858839363475473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348034 (A032559 (n + 1)).toNat

end

end A339472.P3169858839363475473

/-! ## A339472.P5240496123098731503

`A348034(A032565(n+1))`
-/

namespace A339472.P5240496123098731503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348034 (A032565 (n + 1)).toNat

end

end A339472.P5240496123098731503

/-!
# A339474: Numbers at the start of a run of 2 or more consecutive primes that are Sophie Germain primes.

The programs for A339474, there is no canonical definition to state claims against.
-/

/-! ## A339474.P9560042515633473164

`A128825(n)%A339476(a(A005385(n+1)%n))` with `a(0)=2`
-/

namespace A339474.P9560042515633473164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.tmod (A128825 n) (A339476 (a (Int.tmod (A005385 (n + 1)) (n : ℤ)).toNat).toNat)

end

end A339474.P9560042515633473164

/-! ## A339474.P15825039606442971848

`A128825(n)%A339476(a(A128825(n)%n))` with `a(0)=2`
-/

namespace A339474.P15825039606442971848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.tmod (A128825 n) (A339476 (a (Int.tmod (A128825 n) (n : ℤ)).toNat).toNat)

end

end A339474.P15825039606442971848

/-! ## A339474.P9498065483078780776

`gcd(A053814(a(n-1)), A128825(n))` with `a(0)=2`
-/

namespace A339474.P9498065483078780776
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Int.gcd (A053814 (a (n - 1))) (A128825 n)

end

end A339474.P9498065483078780776

/-! ## A339474.P7223085255574085570

`A128825(A028310(n))%A285846(n+1)`
-/

namespace A339474.P7223085255574085570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128825 (A028310 n).toNat) (A285846 (n + 1))

end

end A339474.P7223085255574085570

/-! ## A339474.P5549629915272245624

`A033630(a(n-1))*A128825(n)` with `a(0)=2`
-/

namespace A339474.P5549629915272245624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A033630 (a (n - 1)).toNat * A128825 n

end

end A339474.P5549629915272245624

/-!
# A339475: Numbers at the start of a run of exactly 2 consecutive primes that are Sophie Germain primes.

The programs for A339475, there is no canonical definition to state claims against.
-/

/-! ## A339475.P18166470647247887658

`A339474(comp[A134289(n)*A253649(n)])`
-/

namespace A339475.P18166470647247887658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134289 n * A253649 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339474 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A339475.P18166470647247887658

/-!
# A339479: Number of partitions consisting of n parts, each of which is a power of 2, where one part is 1 and no part is more than twice the sum of all smaller parts.

The programs for A339479, there is no canonical definition to state claims against.
-/

/-! ## A339479.P17785807371688431769

`A211285(n)-A004526(A211295(n))`
-/

namespace A339479.P17785807371688431769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211285 n - A004526 (A211295 n).toNat

end

end A339479.P17785807371688431769

/-! ## A339479.P12555906266318659503

`A178798(floor(2^(n-1)))+A057960(n)`
-/

namespace A339479.P12555906266318659503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat + A057960 n

end

end A339479.P12555906266318659503

/-!
# A339480: Numbers of the form (k^2 - 2) / 2 where k - 1 and k + 1 are both odd composite numbers.

The programs for A339480, there is no canonical definition to state claims against.
-/

/-! ## A339480.P10862069932285519432

`(A129820(2*(n+1)-1)*A129820(2*(n+1))-1)/2`
-/

namespace A339480.P10862069932285519432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129820 (2 * (n + 1) - 1) * A129820 (2 * (n + 1)) - 1 : ℚ) / 2

end

end A339480.P10862069932285519432

/-! ## A339480.P17265041732353115429

`2*A296304(n+2)-1`
-/

namespace A339480.P17265041732353115429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A296304 (n + 2) - 1

end

end A339480.P17265041732353115429

/-! ## A339480.P1387759000614170893

`2*A104278(n+1)²-1`
-/

namespace A339480.P1387759000614170893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A104278 (n + 1) ^ 2 - 1

end

end A339480.P1387759000614170893

/-! ## A339480.P16365846971942823026

`A061673(n+1)²/2-1`
-/

namespace A339480.P16365846971942823026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061673 (n + 1) ^ 2 : ℚ) / 2 - 1

end

end A339480.P16365846971942823026

/-! ## A339480.P3164027490762346228

`(A109934(n+3)-1)²/2-1`
-/

namespace A339480.P3164027490762346228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A109934 (n + 3) - 1) ^ 2 : ℚ) / 2 - 1

end

end A339480.P3164027490762346228

/-!
# A339481: a(n) = Sum_{d|n} d^(n-d) * binomial(d+n/d-2, d-1).

The programs for A339481, there is no canonical definition to state claims against.
-/

/-! ## A339481.P3128980391846540815

`A002487(n^n)+1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+n`
-/

namespace A339481.P3128980391846540815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002487 (n ^ n) : ℚ) + (1 - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) + (n : ℚ))

end

end A339481.P3128980391846540815

/-! ## A339481.P12759159018729794459

`A265891(lcm(2, A067273(n)))`
-/

namespace A339481.P12759159018729794459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265891 (Int.lcm 2 (A067273 n))

end

end A339481.P12759159018729794459

/-!
# A339482: a(n) = Sum_{d|n} d^(n-d+1) * binomial(d+n/d-2, d-1).

The programs for A339482, there is no canonical definition to state claims against.
-/

/-! ## A339482.P6157700995391520770

`A320537(A000079(n))-A136205(n)`
-/

namespace A339482.P6157700995391520770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320537 (A000079 n).toNat - A136205 n

end

end A339482.P6157700995391520770

/-! ## A339482.P3545792087447391754

`A055396(A309955(n))+A002473(n+1)`
-/

namespace A339482.P3545792087447391754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A309955 n).toNat + A002473 (n + 1)

end

end A339482.P3545792087447391754

/-!
# A339483: Number of regular polygons that can be drawn with vertices on a centered hexagonal grid with side length n.

The programs for A339483, the canonical program `A339483.P797388226000704005` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339483 has offset 0).

The definition of A339483 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A339483.P367597306627270395

`n*(n+1)*(2*n+1)²/2`
-/

namespace A339483.P367597306627270395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * ((n + 1) * (2 * n + 1) ^ 2) : ℚ) / 2

end

end A339483.P367597306627270395

namespace A339483

/-- `n*(n+1)*(2*n+1)²/2` -/
def P367597306627270395.Spec : Prop :=
  ∀ n, P367597306627270395.a n = (A339483 n : ℚ)

theorem P367597306627270395.correct : P367597306627270395.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A339483, Nat.add_sub_cancel, A339483.P367597306627270395.a, A339483.P797388226000704005.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A339483, Nat.add_sub_cancel, A339483.P367597306627270395.a, A339483.P797388226000704005.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A339483

/-! ## A339483.P797388226000704005

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=9, a(2)=75, a(3)=294, a(4)=810`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A339483

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P797388226000704005.Spec : Prop :=
  ∀ n, P797388226000704005.a n = A339483 n

theorem P797388226000704005.correct : P797388226000704005.Spec := by
  intro n
  simp only [A339483]

end A339483

/-! ## A339483.P13639444863547547571

`A000537(n)+A008893(n)`
-/

namespace A339483.P13639444863547547571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 n + A008893 n

end

end A339483.P13639444863547547571

namespace A339483

/-- `A000537(n)+A008893(n)` -/
def P13639444863547547571.Spec : Prop :=
  ∀ n, P13639444863547547571.a n = A339483 n

end A339483

/-! ## A339483.P16272419952403539153

`lcm(Δ[n²]², ∑[n])`
-/

namespace A339483.P16272419952403539153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A339483.P16272419952403539153

namespace A339483

/-- `lcm(Δ[n²]², ∑[n])` -/
def P16272419952403539153.Spec : Prop :=
  ∀ n, (P16272419952403539153.a n : ℤ) = A339483 n

end A339483

/-! ## A339483.P8224037678161399082

`∑[lcm(2, (2*n)^3)+n]`
-/

namespace A339483.P8224037678161399082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 ((2 * n) ^ 3) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339483.P8224037678161399082

namespace A339483

/-- `∑[lcm(2, (2*n)^3)+n]` -/
def P8224037678161399082.Spec : Prop :=
  ∀ n, (P8224037678161399082.a n : ℤ) = A339483 n

end A339483

/-! ## A339483.P15160546484804762283

`floor(C((2*n+1)², 2)/4)`
-/

namespace A339483.P15160546484804762283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose ((2 * n + 1) ^ 2) 2 : ℚ) / 4⌋

end

end A339483.P15160546484804762283

namespace A339483

/-- `floor(C((2*n+1)², 2)/4)` -/
def P15160546484804762283.Spec : Prop :=
  ∀ n, P15160546484804762283.a n = A339483 n

end A339483

/-! ## A339483.P4300669926895694616

`ceil(C((2*n+1)², 2)/4)`
-/

namespace A339483.P4300669926895694616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose ((2 * n + 1) ^ 2) 2 : ℚ) / 4⌉

end

end A339483.P4300669926895694616

namespace A339483

/-- `ceil(C((2*n+1)², 2)/4)` -/
def P4300669926895694616.Spec : Prop :=
  ∀ n, P4300669926895694616.a n = A339483 n

end A339483

/-! ## A339483.P11177750731660051746

`round(C((2*n+1)², 2)/4)`
-/

namespace A339483.P11177750731660051746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose ((2 * n + 1) ^ 2) 2 : ℚ) / 4)

end

end A339483.P11177750731660051746

namespace A339483

/-- `round(C((2*n+1)², 2)/4)` -/
def P11177750731660051746.Spec : Prop :=
  ∀ n, P11177750731660051746.a n = A339483 n

end A339483

/-! ## A339483.P16869777031603975681

`8*∑[n]²+C(n+1, 2)`
-/

namespace A339483.P16869777031603975681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + Nat.choose (n + 1) 2

end

end A339483.P16869777031603975681

namespace A339483

/-- `8*∑[n]²+C(n+1, 2)` -/
def P16869777031603975681.Spec : Prop :=
  ∀ n, (P16869777031603975681.a n : ℤ) = A339483 n

end A339483

/-! ## A339483.P1805325231797056775

`∑[xor(1, 2*n+1)^3+n]`
-/

namespace A339483.P1805325231797056775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 * n + 1) ^ 3 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339483.P1805325231797056775

namespace A339483

/-- `∑[xor(1, 2*n+1)^3+n]` -/
def P1805325231797056775.Spec : Prop :=
  ∀ n, (P1805325231797056775.a n : ℤ) = A339483 n

end A339483

/-! ## A339483.P6953439740354035643

`∑[or(1, (2*n)^3)+n-1]`
-/

namespace A339483.P6953439740354035643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 ((2 * n) ^ 3) : ℤ) + ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339483.P6953439740354035643

namespace A339483

/-- `∑[or(1, (2*n)^3)+n-1]` -/
def P6953439740354035643.Spec : Prop :=
  ∀ n, P6953439740354035643.a n = A339483 n

end A339483

/-! ## A339483.P9919402971617041018

`∑[a(n-1)+8]*∑[n]` with `a(0)=1, a(1)=8`
-/

namespace A339483.P9919402971617041018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n f1 =>
  f1 (n - 1) + 8

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A339483.P9919402971617041018

namespace A339483

/-- `∑[a(n-1)+8]*∑[n]` -/
def P9919402971617041018.Spec : Prop :=
  ∀ n, (P9919402971617041018.a n : ℤ) = A339483 n

end A339483

/-! ## A339483.P9805799043315296971

`∑[n%(n+1)+(2*n)^3]`
-/

namespace A339483.P9805799043315296971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % (n + 1) + (2 * n) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339483.P9805799043315296971

namespace A339483

/-- `∑[n%(n+1)+(2*n)^3]` -/
def P9805799043315296971.Spec : Prop :=
  ∀ n, (P9805799043315296971.a n : ℤ) = A339483 n

end A339483

/-! ## A339483.P14334611811662698800

`∑[gcd(n, 2*n)+(2*n)^3]`
-/

namespace A339483.P14334611811662698800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (2 * n) + (2 * n) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339483.P14334611811662698800

namespace A339483

/-- `∑[gcd(n, 2*n)+(2*n)^3]` -/
def P14334611811662698800.Spec : Prop :=
  ∀ n, (P14334611811662698800.a n : ℤ) = A339483 n

end A339483

/-! ## A339483.P8467776111232511926

`(2*n)^3+a(n-1)+n` with `a(0)=0`
-/

namespace A339483.P8467776111232511926
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (2 * n) ^ 3 + (a (n - 1) + n)

end

end A339483.P8467776111232511926

namespace A339483

/-- `(2*n)^3+a(n-1)+n` -/
def P8467776111232511926.Spec : Prop :=
  ∀ n, (P8467776111232511926.a n : ℤ) = A339483 n

end A339483

/-! ## A339483.P15034432841855641520

`∑[and(2*n+1, 2*n)^3+n]`
-/

namespace A339483.P15034432841855641520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (2 * n + 1) (2 * n) ^ 3 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339483.P15034432841855641520

namespace A339483

/-- `∑[and(2*n+1, 2*n)^3+n]` -/
def P15034432841855641520.Spec : Prop :=
  ∀ n, (P15034432841855641520.a n : ℤ) = A339483 n

end A339483

/-! ## A339483.P734929286893057603

`and(1, 2*n)+(2*n+1)²*∑[n]`
-/

namespace A339483.P734929286893057603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (2 * n) + (2 * n + 1) ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A339483.P734929286893057603

namespace A339483

/-- `and(1, 2*n)+(2*n+1)²*∑[n]` -/
def P734929286893057603.Spec : Prop :=
  ∀ n, (P734929286893057603.a n : ℤ) = A339483 n

end A339483

/-! ## A339483.P11988269382248588776

`a(n-1)+2*n*(2*n)²+n` with `a(0)=0`
-/

namespace A339483.P11988269382248588776
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (2 * n * (2 * n) ^ 2 + n)

end

end A339483.P11988269382248588776

namespace A339483

/-- `a(n-1)+2*n*(2*n)²+n` -/
def P11988269382248588776.Spec : Prop :=
  ∀ n, (P11988269382248588776.a n : ℤ) = A339483 n

end A339483

/-! ## A339483.P9978753993777657756

`∑[A118465(n)]`
-/

namespace A339483.P9978753993777657756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118465 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339483.P9978753993777657756

namespace A339483

/-- `∑[A118465(n)]` -/
def P9978753993777657756.Spec : Prop :=
  ∀ n, P9978753993777657756.a n = A339483 n

end A339483

/-! ## A339483.P17327004740194533437

`3*A180324(n)`
-/

namespace A339483.P17327004740194533437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A180324 n

end

end A339483.P17327004740194533437

namespace A339483

/-- `3*A180324(n)` -/
def P17327004740194533437.Spec : Prop :=
  ∀ n, P17327004740194533437.a n = A339483 n

end A339483

/-!
# A339484: Number of subsets of {1..n} whose cardinality is equal to the average of the elements.

The programs for A339484, there is no canonical definition to state claims against.
-/

/-! ## A339484.P6292261935885343631

`A003056(A339294(n+1)+A102726(n))`
-/

namespace A339484.P6292261935885343631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A339294 (n + 1) + A102726 n).toNat

end

end A339484.P6292261935885343631

/-! ## A339484.P9113966425111828874

`A257639(A358460(n+1))+A240178(n)`
-/

namespace A339484.P9113966425111828874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A358460 (n + 1)).toNat + A240178 n

end

end A339484.P9113966425111828874

/-! ## A339484.P6190656087019465460

`A227568(A135582(n))`
-/

namespace A339484.P6190656087019465460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227568 (A135582 n).toNat

end

end A339484.P6190656087019465460

/-! ## A339484.P14805993089104607565

`A120401(A120415(n+1))`
-/

namespace A339484.P14805993089104607565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120401 (A120415 (n + 1)).toNat

end

end A339484.P14805993089104607565

/-! ## A339484.P16093226295213317328

`A003059(∑[A000682(n+1)]-n)`
-/

namespace A339484.P16093226295213317328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A339484.P16093226295213317328

/-!
# A339485: Number of subsets of the first n primes whose elements have a prime average.

The programs for A339485, there is no canonical definition to state claims against.
-/

/-! ## A339485.P12129195689333041507

`A175107(A390885(n+1))`
-/

namespace A339485.P12129195689333041507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175107 (A390885 (n + 1)).toNat

end

end A339485.P12129195689333041507

/-! ## A339485.P16607148264312860627

`∑[A000374(A242525(n+1)²)]`
-/

namespace A339485.P16607148264312860627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000374 (A242525 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339485.P16607148264312860627

/-! ## A339485.P974387588659083338

`A004773(n)+A000119(A186314(n))`
-/

namespace A339485.P974387588659083338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 n + A000119 (A186314 n).toNat

end

end A339485.P974387588659083338

/-! ## A339485.P16568473125894327978

`∑[A325679(A325678(A325681(2*n+1)))]`
-/

namespace A339485.P16568473125894327978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325679 (A325678 (A325681 (2 * n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339485.P16568473125894327978

/-! ## A339485.P16637109956290806519

`∑[A044956(n+1)-A001222(A150911(n))]`
-/

namespace A339485.P16637109956290806519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044956 (n + 1) - A001222 (A150911 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339485.P16637109956290806519

/-!
# A339488: a(n) = H(n-1, n, n+1) where H(a, b, c) = (a + b + c)*(a + b - c)*(b + c - a)*(c + a - b) is Heron's polynomial.

The programs for A339488, the canonical program `A339488.P15121325981071544920` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339488 has offset 0).

The definition of A339488 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A339488.P15121325981071544920

`3*n²*(n²-4)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A339488

/-- `3*n²*(n²-4)` -/
def P15121325981071544920.Spec : Prop :=
  ∀ n, P15121325981071544920.a n = A339488 n

theorem P15121325981071544920.correct : P15121325981071544920.Spec := by
  intro n
  simp only [A339488]

end A339488

/-! ## A339488.P552400181807301437

`3*A033596(n)-9`
-/

namespace A339488.P552400181807301437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A033596 n - 9

end

end A339488.P552400181807301437

namespace A339488

/-- `3*A033596(n)-9` -/
def P552400181807301437.Spec : Prop :=
  ∀ n, P552400181807301437.a n = A339488 n

end A339488

/-! ## A339488.P11599047209141390298

`A219056(n)-12*n²`
-/

namespace A339488.P11599047209141390298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219056 n - (12 * n ^ 2 : ℤ)

end

end A339488.P11599047209141390298

namespace A339488

/-- `A219056(n)-12*n²` -/
def P11599047209141390298.Spec : Prop :=
  ∀ n, P11599047209141390298.a n = A339488 n

end A339488

/-! ## A339488.P17140121167000218404

`A212505(2*n)-A033428(2*n)`
-/

namespace A339488.P17140121167000218404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212505 (2 * n) - A033428 (2 * n)

end

end A339488.P17140121167000218404

namespace A339488

/-- `A212505(2*n)-A033428(2*n)` -/
def P17140121167000218404.Spec : Prop :=
  ∀ n, P17140121167000218404.a n = A339488 n

end A339488

/-! ## A339488.P12604737322641339805

`A033428(n²)-12*n²`
-/

namespace A339488.P12604737322641339805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033428 (n ^ 2) - (12 * n ^ 2 : ℤ)

end

end A339488.P12604737322641339805

namespace A339488

/-- `A033428(n²)-12*n²` -/
def P12604737322641339805.Spec : Prop :=
  ∀ n, P12604737322641339805.a n = A339488 n

end A339488

/-! ## A339488.P10359823797444493355

`A000212(A033428(n))-A033428(2*n)`
-/

namespace A339488.P10359823797444493355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 (A033428 n).toNat - A033428 (2 * n)

end

end A339488.P10359823797444493355

namespace A339488

/-- `A000212(A033428(n))-A033428(2*n)` -/
def P10359823797444493355.Spec : Prop :=
  ∀ n, P10359823797444493355.a n = A339488 n

end A339488

/-!
# A339489: T(n, k) = Product(divisors(k) union {k*j : j = 2..floor(n/k)}). Triangle read by rows.

The programs for A339489, there is no canonical definition to state claims against.
-/

/-! ## A339489.P15088216521091192425

`A129116(A080036(n)^A119269(n+1))`
-/

namespace A339489.P15088216521091192425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129116 (SequenceMachineLib.roundAway ((A080036 n : ℚ) ^ (A119269 (n + 1) : ℤ))).toNat

end

end A339489.P15088216521091192425

/-!
# A339490: Number of longest simple paths in the divisor graph of {1,...,n}.

The programs for A339490, there is no canonical definition to state claims against.
-/

/-! ## A339490.P14629714891694803919

`A000005(A007318(n)*A106188(n))`
-/

namespace A339490.P14629714891694803919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A007318 n * A106188 n).toNat

end

end A339490.P14629714891694803919

/-! ## A339490.P1562643277379331841

`A000005(A022166(n)*A106188(n))`
-/

namespace A339490.P1562643277379331841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A022166 n * A106188 n).toNat

end

end A339490.P1562643277379331841

/-! ## A339490.P16681169934060867988

`A000005(A106188(n)*A112739(n))`
-/

namespace A339490.P16681169934060867988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A106188 n * A112739 n).toNat

end

end A339490.P16681169934060867988

/-! ## A339490.P12656912625651398923

`A000005(A133221(n)*A273499(n))`
-/

namespace A339490.P12656912625651398923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A133221 n * A273499 n).toNat

end

end A339490.P12656912625651398923

/-! ## A339490.P4972331473535079966

`A000005(lcm(A007318(n), A106188(n)))`
-/

namespace A339490.P4972331473535079966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.lcm (A007318 n) (A106188 n))

end

end A339490.P4972331473535079966

/-!
# A339491: Lexicographically earliest longest simple path in the divisor graph of {1,...,n}. Irregular triangle read by rows.

The programs for A339491, there is no canonical definition to state claims against.
-/

/-! ## A339491.P15235681807067048632

`A055642(A080023(2*n+1)%(18^∑{e}[n+1, #]))`
-/

namespace A339491.P15235681807067048632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (Int.tmod (A080023 (2 * n + 1)) (18 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℤ)).toNat

end

end A339491.P15235681807067048632

/-! ## A339491.P10511087805772066568

`A000120(record[A256707(A022818(n+1))])`
-/

namespace A339491.P10511087805772066568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256707 (A022818 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A339491.P10511087805772066568

/-! ## A339491.P13206634887685278743

`A333226(or(A050469(n+1), A242971(n)))`
-/

namespace A339491.P13206634887685278743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333226 (Int.lor (A050469 (n + 1)) (A242971 n)).toNat

end

end A339491.P13206634887685278743

/-! ## A339491.P18415821093104852219

`A126305(A190886(n+1)*A329899(n+1))`
-/

namespace A339491.P18415821093104852219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126305 (A190886 (n + 1) * A329899 (n + 1)).toNat

end

end A339491.P18415821093104852219

/-! ## A339491.P12715767673798021730

`A303536(A179655(n+1)^A052126(n+1))`
-/

namespace A339491.P12715767673798021730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303536 (SequenceMachineLib.roundAway ((A179655 (n + 1) : ℚ) ^ (A052126 (n + 1) : ℤ))).toNat

end

end A339491.P12715767673798021730

/-!
# A339492: T(n, k) = tau(k) + floor(n/k) - 1, where tau = A000005. Triangle read by rows.

The programs for A339492, there is no canonical definition to state claims against.
-/

/-! ## A339492.P15916548858816706848

`∑{e}[A043569(A286245(n+1)), #]`
-/

namespace A339492.P15916548858816706848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043569 (A286245 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A339492.P15916548858816706848

/-! ## A339492.P17250540665094849202

`A032741(A002260(n+1))+A010766(n+1)`
-/

namespace A339492.P17250540665094849202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A002260 (n + 1)).toNat + A010766 (n + 1)

end

end A339492.P17250540665094849202

/-! ## A339492.P16815015457597444966

`A032741(A002262(n)+1)+A010766(n+1)`
-/

namespace A339492.P16815015457597444966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A002262 n + 1).toNat + A010766 (n + 1)

end

end A339492.P16815015457597444966

/-! ## A339492.P18284963068244777030

`A032741(abs(A140756(n+1)))+A010766(n+1)`
-/

namespace A339492.P18284963068244777030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 |A140756 (n + 1)|.toNat + A010766 (n + 1)

end

end A339492.P18284963068244777030

/-! ## A339492.P2877297408696586239

`A032741(sqrt(A133819(n+1)))+A010766(n+1)`
-/

namespace A339492.P2877297408696586239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (SequenceMachineLib.roundAway (Real.sqrt (A133819 (n + 1) : ℝ))).toNat + A010766 (n + 1)

end

end A339492.P2877297408696586239

/-! ## A339492.P10355617293185797879

`A032741(sqrt(A143844(n))+1)+A010766(n+1)`
-/

namespace A339492.P10355617293185797879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (SequenceMachineLib.roundAway (Real.sqrt (A143844 n : ℝ) + 1)).toNat + A010766 (n + 1)

end

end A339492.P10355617293185797879

/-! ## A339492.P10241043178154107118

`A032741(A097285(2*n+1))+A010766(n+1)`
-/

namespace A339492.P10241043178154107118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A097285 (2 * n + 1)).toNat + A010766 (n + 1)

end

end A339492.P10241043178154107118

/-! ## A339492.P1201572059401352729

`A032741(val(A130328(n), 2)+1)+A010766(n+1)`
-/

namespace A339492.P1201572059401352729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (SequenceMachineLib.valuation (A130328 n).toNat 2 + 1) + A010766 (n + 1)

end

end A339492.P1201572059401352729

/-! ## A339492.P8290503532415035819

`A032741(A103406(n)/A007318(n))+A010766(n+1)`
-/

namespace A339492.P8290503532415035819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (SequenceMachineLib.roundAway ((A103406 n : ℚ) / (A007318 n : ℚ))).toNat + A010766 (n + 1)

end

end A339492.P8290503532415035819

/-!
# A339493: a(n) = A333650(n, 3) for n >= 3; a(1) = a(2) = 0.

The programs for A339493, there is no canonical definition to state claims against.
-/

/-! ## A339493.P8331899518012826264

`A339495(n+1)-A071679(n+1)`
-/

namespace A339493.P8331899518012826264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339495 (n + 1) - A071679 (n + 1)

end

end A339493.P8331899518012826264

/-! ## A339493.P7497432942742260193

`A333650(A152950(n+1))%A014505(n)`
-/

namespace A339493.P7497432942742260193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333650 (A152950 (n + 1)).toNat) (A014505 n)

end

end A339493.P7497432942742260193

/-! ## A339493.P3350410717811447092

`A339495(n+1)-Δ[A060143(A167616(n+5))]`
-/

namespace A339493.P3350410717811447092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 (A167616 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339495 (n + 1) - (f1 (n + 1) - f1 n)

end

end A339493.P3350410717811447092

/-! ## A339493.P16316812785361420458

`A339495(n+1)-A256663(A000204(n+1))`
-/

namespace A339493.P16316812785361420458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339495 (n + 1) - A256663 (A000204 (n + 1)).toNat

end

end A339493.P16316812785361420458

/-!
# A339495: Row sums of A339494.

The programs for A339495, there is no canonical definition to state claims against.
-/

/-! ## A339495.P6154128064254062696

`A339493(n+1)+A071679(n+1)`
-/

namespace A339495.P6154128064254062696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339493 (n + 1) + A071679 (n + 1)

end

end A339495.P6154128064254062696

/-! ## A339495.P5905352782001614369

`A071679(n+1)+A333650(A152950(n+1))%A014505(n)`
-/

namespace A339495.P5905352782001614369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071679 (n + 1) + Int.tmod (A333650 (A152950 (n + 1)).toNat) (A014505 n)

end

end A339495.P5905352782001614369

/-! ## A339495.P15312236936261508334

`A339493(n+1)+Δ[A060143(A167616(n+5))]`
-/

namespace A339495.P15312236936261508334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 (A167616 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339493 (n + 1) + (f1 (n + 1) - f1 n)

end

end A339495.P15312236936261508334

/-!
# A339496: T(n, k) = Sum(divisors(k) union {k*j : j = 2..floor(n/k)}). Triangle read by rows.

The programs for A339496, there is no canonical definition to state claims against.
-/

/-! ## A339496.P12159718504164101099

`A143310(n+1)+A001065(A002260(n+1))`
-/

namespace A339496.P12159718504164101099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143310 (n + 1) + A001065 (A002260 (n + 1)).toNat

end

end A339496.P12159718504164101099

/-! ## A339496.P7663485371285404986

`A143310(n+1)+A001065(abs(A140756(n+1)))`
-/

namespace A339496.P7663485371285404986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143310 (n + 1) + A001065 |A140756 (n + 1)|.toNat

end

end A339496.P7663485371285404986

/-! ## A339496.P12558715285237056051

`A143310(n+1)+A001065(sqrt(A133819(n+1)))`
-/

namespace A339496.P12558715285237056051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143310 (n + 1) + A001065 (SequenceMachineLib.roundAway (Real.sqrt (A133819 (n + 1) : ℝ))).toNat

end

end A339496.P12558715285237056051

/-! ## A339496.P18167623268933291280

`A143310(n+1)+A001065(sqrt(A143844(n))+1)`
-/

namespace A339496.P18167623268933291280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143310 (n + 1) + A001065 (SequenceMachineLib.roundAway (Real.sqrt (A143844 n : ℝ) + 1)).toNat

end

end A339496.P18167623268933291280

/-! ## A339496.P8937186421472621663

`A143310(n+1)+A001065(val(A130328(n), 2)+1)`
-/

namespace A339496.P8937186421472621663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143310 (n + 1) + A001065 (SequenceMachineLib.valuation (A130328 n).toNat 2 + 1)

end

end A339496.P8937186421472621663

/-! ## A339496.P15198750157394219177

`A143310(n+1)+A001065(val(A175840(n), 2)+1)`
-/

namespace A339496.P15198750157394219177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143310 (n + 1) + A001065 (SequenceMachineLib.valuation (A175840 n).toNat 2 + 1)

end

end A339496.P15198750157394219177

/-! ## A339496.P5127460773363249157

`A143310(n+1)+A001065(1-A057944(n)+n)`
-/

namespace A339496.P5127460773363249157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143310 (n + 1) + A001065 (1 - A057944 n + (n : ℤ)).toNat

end

end A339496.P5127460773363249157

/-!
# A339497: Numbers k such that (k*i)^(1/4) is an integer for some i in 1 <= i <= k.

The programs for A339497, the canonical program `A339497.P16863875644910275612` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339497 has offset 1).

The definition of A339497 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 278 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A339497.P16863875644910275612

`lt[n, A000190(n+1)²]+1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A339497

/-- `lt[n, A000190(n+1)²]+1` -/
def P16863875644910275612.Spec : Prop :=
  ∀ n, (P16863875644910275612.a n : ℤ) = A339497 (n + 1)

theorem P16863875644910275612.correct : P16863875644910275612.Spec := by
  intro n
  simp only [A339497, Nat.add_sub_cancel]

end A339497

/-! ## A339497.P41145311805599995

`lt[A056555(n+1), n+2]+1`
-/

namespace A339497.P41145311805599995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056555 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A339497.P41145311805599995

namespace A339497

/-- `lt[A056555(n+1), n+2]+1` -/
def P41145311805599995.Spec : Prop :=
  ∀ n, (P41145311805599995.a n : ℤ) = A339497 (n + 1)

end A339497

/-! ## A339497.P5389953330364486260

`lt[A056555(A028310(n)), n+1]`
-/

namespace A339497.P5389953330364486260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056555 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A339497.P5389953330364486260

namespace A339497

/-- `lt[A056555(A028310(n)), n+1]` -/
def P5389953330364486260.Spec : Prop :=
  ∀ n, (P5389953330364486260.a n : ℤ) = A339497 (n + 1)

end A339497

/-! ## A339497.P15826169015196387630

`lt[1, A116966(n)/A056555(A028310(n))]`
-/

namespace A339497.P15826169015196387630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116966 n : ℚ) / (A056555 (A028310 n).toNat : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A339497.P15826169015196387630

namespace A339497

/-- `lt[1, A116966(n)/A056555(A028310(n))]` -/
def P15826169015196387630.Spec : Prop :=
  ∀ n, (P15826169015196387630.a n : ℤ) = A339497 (n + 1)

end A339497

/-! ## A339497.P12766769138974586269

`lt[A056555(A065033(2*n)), n+1]`
-/

namespace A339497.P12766769138974586269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056555 (A065033 (2 * n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A339497.P12766769138974586269

namespace A339497

/-- `lt[A056555(A065033(2*n)), n+1]` -/
def P12766769138974586269.Spec : Prop :=
  ∀ n, (P12766769138974586269.a n : ℤ) = A339497 (n + 1)

end A339497

