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
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C006
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A182400: Integral factorial ratio sequence: a(n) = (2*n)!*(8*n)!/(n!*(4*n)!*(5*n)!).

The programs for A182400, the canonical program `A182400.P8312788928048292282` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182400 has offset 0).

The definition of A182400 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A182400.P8312788928048292282

`C(8*n, 5*n)*C(2*n, n)/C(4*n, n)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A182400

/-- `C(8*n, 5*n)*C(2*n, n)/C(4*n, n)` -/
def P8312788928048292282.Spec : Prop :=
  ∀ n, P8312788928048292282.a n = (A182400 n : ℚ)

end A182400

/-! ## A182400.P11004236829542660674

`A182411(A139276(n))`
-/

namespace A182400.P11004236829542660674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182411 (A139276 n).toNat

end

end A182400.P11004236829542660674

namespace A182400

/-- `A182411(A139276(n))` -/
def P11004236829542660674.Spec : Prop :=
  ∀ n, P11004236829542660674.a n = A182400 n

end A182400

/-! ## A182400.P8325388718585833700

`A000984(n)/A295439(n)*A295441(n)`
-/

namespace A182400.P8325388718585833700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 n : ℚ) / (A295439 n : ℚ) * (A295441 n : ℚ)

end

end A182400.P8325388718585833700

namespace A182400

/-- `A000984(n)/A295439(n)*A295441(n)` -/
def P8325388718585833700.Spec : Prop :=
  ∀ n, P8325388718585833700.a n = (A182400 n : ℚ)

end A182400

/-! ## A182400.P10906429090397332081

`A068555(A144312(n)+n)`
-/

namespace A182400.P10906429090397332081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068555 (A144312 n + (n : ℤ)).toNat

end

end A182400.P10906429090397332081

namespace A182400

/-- `A068555(A144312(n)+n)` -/
def P10906429090397332081.Spec : Prop :=
  ∀ n, P10906429090397332081.a n = A182400 n

end A182400

/-! ## A182400.P11650550116382902954

`A068555(A139276(n)+A062728(n))`
-/

namespace A182400.P11650550116382902954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068555 (A139276 n + A062728 n).toNat

end

end A182400.P11650550116382902954

namespace A182400

/-- `A068555(A139276(n)+A062728(n))` -/
def P11650550116382902954.Spec : Prop :=
  ∀ n, P11650550116382902954.a n = A182400 n

end A182400

/-!
# A182401: Number of paths from (0,0) to (n,0), never going below the x-axis, using steps U=(1,1), H=(1,0) and D=(1,-1), where the H steps come in five colors.

The programs for A182401, there is no canonical definition to state claims against.
-/

/-! ## A182401.P6929664157933137665

`A125906(∑[n])`
-/

namespace A182401.P6929664157933137665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125906 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A182401.P6929664157933137665

/-! ## A182401.P7197761364196058987

`record[A125906(n)/A007318(n)]`
-/

namespace A182401.P7197761364196058987
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125906 n : ℚ) / (A007318 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182401.P7197761364196058987

/-! ## A182401.P16500075317725990558

`record[A125906(n)/A008459(n)]`
-/

namespace A182401.P16500075317725990558
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125906 n : ℚ) / (A008459 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182401.P16500075317725990558

/-! ## A182401.P1818811802306034713

`record[A125906(A000217(A025480(n)))]`
-/

namespace A182401.P1818811802306034713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125906 (A000217 (A025480 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182401.P1818811802306034713

/-! ## A182401.P18386609266471472076

`A125906(A007318(A027379(n)))%A033891(n)`
-/

namespace A182401.P18386609266471472076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A125906 (A007318 (A027379 n).toNat).toNat) (A033891 n)

end

end A182401.P18386609266471472076

/-! ## A182401.P9606901982590981402

`A387278(n)/(n+1)`
-/

namespace A182401.P9606901982590981402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A387278 n : ℚ) / (n + 1 : ℚ)

end

end A182401.P9606901982590981402

/-! ## A182401.P7314416427126949814

`record[ratio[A125906(floor(n/2))]]`
-/

namespace A182401.P7314416427126949814
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125906 ⌊(n : ℚ) / 2⌋.toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182401.P7314416427126949814

/-!
# A182402: Total number of digits in n-th row of a triangle formed by the positive integers.

The programs for A182402, there is no canonical definition to state claims against.
-/

/-! ## A182402.P17445590973403912249

`A226029(n)+a(n-1)` with `a(0)=1`
-/

namespace A182402.P17445590973403912249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A226029 n + a (n - 1)

end

end A182402.P17445590973403912249

/-! ## A182402.P6764972910382599467

`∑[A226029(abs(1-n)+1)]`
-/

namespace A182402.P6764972910382599467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226029 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182402.P6764972910382599467

/-! ## A182402.P15238848941696984991

`A226029(n)-floor(-a(A028310(n)-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A182402.P15238848941696984991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A226029 n - (-a (A028310 n - 1).toNat)

end

end A182402.P15238848941696984991

/-! ## A182402.P2359449993402445747

`∑[A226029(n+1)]+1-A226029(n+1)`
-/

namespace A182402.P2359449993402445747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226029 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A226029 (n + 1))

end

end A182402.P2359449993402445747

/-! ## A182402.P8063089061454077631

`∑[A226029(n+1)]-A023443(A226029(n+1))`
-/

namespace A182402.P8063089061454077631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226029 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023443 (A226029 (n + 1)).toNat

end

end A182402.P8063089061454077631

/-! ## A182402.P16003040107161170260

`Δ[A117804(∑[n]+1)]`
-/

namespace A182402.P16003040107161170260
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117804 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182402.P16003040107161170260

/-! ## A182402.P1758862500260980352

`abs(Δ[A117804(A000124(n))])`
-/

namespace A182402.P1758862500260980352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117804 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A182402.P1758862500260980352

/-!
# A182404: Numbers whose digit sum as well as sum of the squares of the digits is a prime.

The programs for A182404, there is no canonical definition to state claims against.
-/

/-! ## A182404.P12470837133474260127

`∩[A028834(n+1), A108662(n+1)]`
-/

namespace A182404.P12470837133474260127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182404.P12470837133474260127

/-! ## A182404.P12540712653500252032

`∩[comp[A104211(n+1)], A108662(n+1)]`
-/

namespace A182404.P12540712653500252032
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104211 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A182404.P12540712653500252032

/-! ## A182404.P17070704748454591156

`∩[A108662(n+1), comp[A141640(n+1)]]`
-/

namespace A182404.P17070704748454591156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108662 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141640 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A182404.P17070704748454591156

/-! ## A182404.P1241902993001713837

`eq[2, A226378(A003132(n)*A007953(n))]`
-/

namespace A182404.P1241902993001713837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 (A003132 n * A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A182404.P1241902993001713837

/-! ## A182404.P13263244247033803653

`lt[A245359(n+1), A245359(n+1)²]+1`
-/

namespace A182404.P13263244247033803653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245359 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A182404.P13263244247033803653

/-!
# A182405: Records of A164368(n) - A194598(n).

The programs for A182405, there is no canonical definition to state claims against.
-/

/-! ## A182405.P8720505238793897221

`record[A164368(n+1)-A194598(n+1)]`
-/

namespace A182405.P8720505238793897221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164368 (n + 1) - A194598 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182405.P8720505238793897221

/-! ## A182405.P18391163413224760567

`record[A035031(A194598(n+2))-A194598(n+1)]`
-/

namespace A182405.P18391163413224760567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035031 (A194598 (n + 2)).toNat - A194598 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182405.P18391163413224760567

/-! ## A182405.P9645663866110064440

`record[A283463(A194598(n+2)+1)-A194598(n+1)]`
-/

namespace A182405.P9645663866110064440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283463 (A194598 (n + 2) + 1).toNat - A194598 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182405.P9645663866110064440

/-!
# A182406: Square array A(n,k), n>=1, k>=1, read by antidiagonals: A(n,k) is the number of n-colorings of the square grid graph G_(k,k).

The programs for A182406, there is no canonical definition to state claims against.
-/

/-! ## A182406.P4240651712993482799

`A198632(n^A004248(n))`
-/

namespace A182406.P4240651712993482799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198632 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A004248 n : ℤ))).toNat

end

end A182406.P4240651712993482799

/-! ## A182406.P5304310865782814284

`A198632(n^A048723(n))`
-/

namespace A182406.P5304310865782814284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198632 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A048723 n : ℤ))).toNat

end

end A182406.P5304310865782814284

/-! ## A182406.P12237147731116997673

`A198632(n^A054124(n))`
-/

namespace A182406.P12237147731116997673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198632 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A054124 n : ℤ))).toNat

end

end A182406.P12237147731116997673

/-! ## A182406.P4854550193037827709

`A198632(n^A058716(n))`
-/

namespace A182406.P4854550193037827709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198632 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A058716 n : ℤ))).toNat

end

end A182406.P4854550193037827709

/-! ## A182406.P486373009959392765

`A198632(n^A065941(n))`
-/

namespace A182406.P486373009959392765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198632 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A065941 n : ℤ))).toNat

end

end A182406.P486373009959392765

/-!
# A182409: Prime-generating polynomial: a(n) = 4*n^2 + 12*n - 1583.

The programs for A182409, there is no canonical definition to state claims against.
-/

/-! ## A182409.P715682322040218887

`A078371(n)-A224950(A001222(A053670(n+1)))`
-/

namespace A182409.P715682322040218887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078371 n - A224950 (A001222 (A053670 (n + 1)).toNat).toNat

end

end A182409.P715682322040218887

/-! ## A182409.P4347453417019862048

`A210626(n+37)`
-/

namespace A182409.P4347453417019862048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210626 (n + 37)

end

end A182409.P4347453417019862048

/-! ## A182409.P16365509077884278678

`A078371(n)-A224950(A001222(A007510(n+1)))`
-/

namespace A182409.P16365509077884278678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078371 n - A224950 (A001222 (A007510 (n + 1)).toNat).toNat

end

end A182409.P16365509077884278678

/-! ## A182409.P13802084929636425712

`A078371(n)-A224950(A001222(A164739(n+1)))`
-/

namespace A182409.P13802084929636425712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078371 n - A224950 (A001222 (A164739 (n + 1)).toNat).toNat

end

end A182409.P13802084929636425712

/-! ## A182409.P5656869875075266575

`A078371(n)-A224950(A008833(A027760(n+1)))`
-/

namespace A182409.P5656869875075266575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078371 n - A224950 (A008833 (A027760 (n + 1)).toNat).toNat

end

end A182409.P5656869875075266575

/-!
# A182411: Triangle T(n,k) = (2*k)!*(2*n)!/(k!*n!*(k+n)!) with k=0..n, read by rows.

The programs for A182411, the canonical program `A182411.P8082731584072737721` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182411 has offset 0).

The definition of A182411 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8385 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182411.P8082731584072737721

`A142243(A061579(n))/A007318(n)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A182411

/-- `A142243(A061579(n))/A007318(n)` -/
def P8082731584072737721.Spec : Prop :=
  ∀ n, P8082731584072737721.a n = (A182411 n : ℚ)

end A182411

/-! ## A182411.P17994625522247855959

`A356546(n)/A085478(n)`
-/

namespace A182411.P17994625522247855959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356546 n : ℚ) / (A085478 n : ℚ)

end

end A182411.P17994625522247855959

namespace A182411

/-- `A356546(n)/A085478(n)` -/
def P17994625522247855959.Spec : Prop :=
  ∀ n, P17994625522247855959.a n = (A182411 n : ℚ)

end A182411

/-! ## A182411.P851287744851138186

`A068555(A245300(n))`
-/

namespace A182411.P851287744851138186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068555 (A245300 n).toNat

end

end A182411.P851287744851138186

namespace A182411

/-- `A068555(A245300(n))` -/
def P851287744851138186.Spec : Prop :=
  ∀ n, P851287744851138186.a n = A182411 n

end A182411

/-! ## A182411.P10635984146619896466

`A067804(A245300(n))/A046899(n)`
-/

namespace A182411.P10635984146619896466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067804 (A245300 n).toNat : ℚ) / (A046899 n : ℚ)

end

end A182411.P10635984146619896466

namespace A182411

/-- `A067804(A245300(n))/A046899(n)` -/
def P10635984146619896466.Spec : Prop :=
  ∀ n, P10635984146619896466.a n = (A182411 n : ℚ)

end A182411

/-! ## A182411.P7367473313018552159

`A067804(n)-A094518(A006342(n))`
-/

namespace A182411.P7367473313018552159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067804 n - A094518 (A006342 n).toNat

end

end A182411.P7367473313018552159

namespace A182411

/-- `A067804(n)-A094518(A006342(n))` -/
def P7367473313018552159.Spec : Prop :=
  ∀ n, P7367473313018552159.a n = A182411 n

end A182411

/-!
# A182413: Number of primes of the form 4^n - 2^k - 1 with 0 < k < n.

The programs for A182413, there is no canonical definition to state claims against.
-/

/-! ## A182413.P67897376601124906

`A028832(A065199(n+1)+A005316(n))`
-/

namespace A182413.P67897376601124906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028832 (A065199 (n + 1) + A005316 n).toNat

end

end A182413.P67897376601124906

/-! ## A182413.P8894423031531256067

`A301343(A107036(n+1))+A107017(n+2)`
-/

namespace A182413.P8894423031531256067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301343 (A107036 (n + 1)).toNat + A107017 (n + 2)

end

end A182413.P8894423031531256067

/-!
# A182415: a(0) = 1, a(1) = 2; for n>1, a(n) = a(n-1) + a(n-2) + 4.

The programs for A182415, the canonical program `A182415.P17969464901256259987` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182415 has offset 0).

The definition of A182415 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+4` (program `A182415.P17969464901256259987`, by `A182415.P17969464901256259987.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A182415.P17969464901256259987

`a(n-1)+a(n-2)+4` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A182415

/-- `a(n-1)+a(n-2)+4` -/
def P17969464901256259987.Spec : Prop :=
  ∀ n, (P17969464901256259987.a n : ℤ) = A182415 n

theorem P17969464901256259987.correct : P17969464901256259987.Spec := by
  intro n
  simp only [A182415]

end A182415

/-! ## A182415.P374799844242838750

`2*a(n-1)-a(n-3)` with `a(0)=1, a(1)=2, a(2)=7`
-/

namespace A182415.P374799844242838750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 7] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A182415.P374799844242838750

namespace A182415

/-- `2*a(n-1)-a(n-3)` -/
def P374799844242838750.Spec : Prop :=
  ∀ n, P374799844242838750.a n = A182415 n

end A182415

/-! ## A182415.P680656177544902106

`ogf((1+3x^2)/(1-2x+x^3))`
-/

namespace A182415.P680656177544902106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 3] [1, -2, 0, 1] n

end

end A182415.P680656177544902106

namespace A182415

/-- `ogf((1+3x^2)/(1-2x+x^3))` -/
def P680656177544902106.Spec : Prop :=
  ∀ n, P680656177544902106.a n = A182415 n

end A182415

/-! ## A182415.P2267793052022308292

`5-floor(1-a(n-1)-a(n-2))` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A182415.P2267793052022308292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  5 - (1 - a (n - 1) - a (n - 2))

end

end A182415.P2267793052022308292

namespace A182415

/-- `5-floor(1-a(n-1)-a(n-2))` -/
def P2267793052022308292.Spec : Prop :=
  ∀ n, P2267793052022308292.a n = A182415 n

end A182415

/-! ## A182415.P10600627553128064997

`A171237(n)-1`
-/

namespace A182415.P10600627553128064997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171237 n - 1

end

end A182415.P10600627553128064997

namespace A182415

/-- `A171237(n)-1` -/
def P10600627553128064997.Spec : Prop :=
  ∀ n, P10600627553128064997.a n = A182415 n

end A182415

/-! ## A182415.P7646716790971768259

`A210677(n)+n`
-/

namespace A182415.P7646716790971768259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210677 n + (n : ℤ)

end

end A182415.P7646716790971768259

namespace A182415

/-- `A210677(n)+n` -/
def P7646716790971768259.Spec : Prop :=
  ∀ n, P7646716790971768259.a n = A182415 n

end A182415

/-! ## A182415.P10995641107873512496

`A022309(n+1)-3`
-/

namespace A182415.P10995641107873512496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022309 (n + 1) - 3

end

end A182415.P10995641107873512496

namespace A182415

/-- `A022309(n+1)-3` -/
def P10995641107873512496.Spec : Prop :=
  ∀ n, P10995641107873512496.a n = A182415 n

end A182415

/-! ## A182415.P14347497905741521438

`A022095(n+1)-4`
-/

namespace A182415.P14347497905741521438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022095 (n + 1) - 4

end

end A182415.P14347497905741521438

namespace A182415

/-- `A022095(n+1)-4` -/
def P14347497905741521438.Spec : Prop :=
  ∀ n, P14347497905741521438.a n = A182415 n

end A182415

/-! ## A182415.P863822007757181423

`A210730(n)+1+n`
-/

namespace A182415.P863822007757181423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210730 n + 1 + (n : ℤ)

end

end A182415.P863822007757181423

namespace A182415

/-- `A210730(n)+1+n` -/
def P863822007757181423.Spec : Prop :=
  ∀ n, P863822007757181423.a n = A182415 n

end A182415

/-! ## A182415.P359703310832910980

`A192964(n)+2*n`
-/

namespace A182415.P359703310832910980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192964 n + (2 * n : ℤ)

end

end A182415.P359703310832910980

namespace A182415

/-- `A192964(n)+2*n` -/
def P359703310832910980.Spec : Prop :=
  ∀ n, P359703310832910980.a n = A182415 n

end A182415

/-! ## A182415.P373402156424857452

`A111314(n)+A001911(n)`
-/

namespace A182415.P373402156424857452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111314 n + A001911 n

end

end A182415.P373402156424857452

namespace A182415

/-- `A111314(n)+A001911(n)` -/
def P373402156424857452.Spec : Prop :=
  ∀ n, P373402156424857452.a n = A182415 n

end A182415

/-! ## A182415.P13201012178511115736

`A212804(n)+A168193(n)`
-/

namespace A182415.P13201012178511115736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A168193 n

end

end A182415.P13201012178511115736

namespace A182415

/-- `A212804(n)+A168193(n)` -/
def P13201012178511115736.Spec : Prop :=
  ∀ n, P13201012178511115736.a n = A182415 n

end A182415

/-! ## A182415.P1671785244144248187

`A192969(n)-A065220(n)`
-/

namespace A182415.P1671785244144248187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192969 n - A065220 n

end

end A182415.P1671785244144248187

namespace A182415

/-- `A192969(n)-A065220(n)` -/
def P1671785244144248187.Spec : Prop :=
  ∀ n, P1671785244144248187.a n = A182415 n

end A182415

/-! ## A182415.P4819022379519859148

`A019274(n+1)+A014739(n)`
-/

namespace A182415.P4819022379519859148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019274 (n + 1) + A014739 n

end

end A182415.P4819022379519859148

namespace A182415

/-- `A019274(n+1)+A014739(n)` -/
def P4819022379519859148.Spec : Prop :=
  ∀ n, P4819022379519859148.a n = A182415 n

end A182415

/-! ## A182415.P8729427640474617465

`A171516(n)+A000071(n+1)`
-/

namespace A182415.P8729427640474617465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171516 n + A000071 (n + 1)

end

end A182415.P8729427640474617465

namespace A182415

/-- `A171516(n)+A000071(n+1)` -/
def P8729427640474617465.Spec : Prop :=
  ∀ n, P8729427640474617465.a n = A182415 n

end A182415

/-! ## A182415.P12568528898406379654

`A001595(n)+A014739(n)-1`
-/

namespace A182415.P12568528898406379654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001595 n + (A014739 n - 1)

end

end A182415.P12568528898406379654

namespace A182415

/-- `A001595(n)+A014739(n)-1` -/
def P12568528898406379654.Spec : Prop :=
  ∀ n, P12568528898406379654.a n = A182415 n

end A182415

/-! ## A182415.P11713674896089076602

`A030119(n)+A081659(n)-1`
-/

namespace A182415.P11713674896089076602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030119 n + (A081659 n - 1)

end

end A182415.P11713674896089076602

namespace A182415

/-- `A030119(n)+A081659(n)-1` -/
def P11713674896089076602.Spec : Prop :=
  ∀ n, P11713674896089076602.a n = A182415 n

end A182415

/-! ## A182415.P2693605577349342767

`A001060(n+1)-A157727(n)`
-/

namespace A182415.P2693605577349342767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001060 (n + 1) - A157727 n

end

end A182415.P2693605577349342767

namespace A182415

/-- `A001060(n+1)-A157727(n)` -/
def P2693605577349342767.Spec : Prop :=
  ∀ n, P2693605577349342767.a n = A182415 n

end A182415

/-! ## A182415.P6488459756147960899

`A210678(n)-A065220(n+1)`
-/

namespace A182415.P6488459756147960899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210678 n - A065220 (n + 1)

end

end A182415.P6488459756147960899

namespace A182415

/-- `A210678(n)-A065220(n+1)` -/
def P6488459756147960899.Spec : Prop :=
  ∀ n, P6488459756147960899.a n = A182415 n

end A182415

/-! ## A182415.P10741117385819004561

`A154691(n)+A212804(n)-1`
-/

namespace A182415.P10741117385819004561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154691 n + (A212804 n - 1)

end

end A182415.P10741117385819004561

namespace A182415

/-- `A154691(n)+A212804(n)-1` -/
def P10741117385819004561.Spec : Prop :=
  ∀ n, P10741117385819004561.a n = A182415 n

end A182415

/-!
# A182416: Carmichael numbers of the form (60k+13)*(180k+37)*(300k+61).

The programs for A182416, there is no canonical definition to state claims against.
-/

/-! ## A182416.P5250933780744080590

`A182133(∑[A182107(n+3)!])`
-/

namespace A182416.P5250933780744080590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A182107 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182133 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A182416.P5250933780744080590

/-!
# A182417: a(0)=0, a(n+1) = (a(n) XOR floor(a(n)/4)) + 1, where XOR is the bitwise exclusive-or operator.

The programs for A182417, the canonical program `A182417.P9388069084810670598` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182417 has offset 0).

The definition of A182417 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182417.P9388069084810670598

`xor(floor(a(n-1)/4), a(n-1))+1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A182417

/-- `xor(floor(a(n-1)/4), a(n-1))+1` -/
def P9388069084810670598.Spec : Prop :=
  ∀ n, P9388069084810670598.a n = A182417 n

theorem P9388069084810670598.correct : P9388069084810670598.Spec := by
  intro n
  simp only [A182417]

end A182417

/-! ## A182417.P14082346616299484235

`A003188(A003188(a(n-1)))+1` with `a(0)=0`
-/

namespace A182417.P14082346616299484235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A003188 (A003188 (a (n - 1)).toNat).toNat + 1

end

end A182417.P14082346616299484235

namespace A182417

/-- `A003188(A003188(a(n-1)))+1` -/
def P14082346616299484235.Spec : Prop :=
  ∀ n, P14082346616299484235.a n = A182417 n

end A182417

/-! ## A182417.P8518888667460278114

`A064706(a(n-1))+1` with `a(0)=0`
-/

namespace A182417.P8518888667460278114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A064706 (a (n - 1)).toNat + 1

end

end A182417.P8518888667460278114

namespace A182417

/-- `A064706(a(n-1))+1` -/
def P8518888667460278114.Spec : Prop :=
  ∀ n, P8518888667460278114.a n = A182417 n

end A182417

/-! ## A182417.P11807258582145164852

`xor(a(n-1), A002265(a(n-1)))+1` with `a(0)=0`
-/

namespace A182417.P11807258582145164852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.xor (a (n - 1)) (A002265 (a (n - 1)).toNat) + 1

end

end A182417.P11807258582145164852

namespace A182417

/-- `xor(a(n-1), A002265(a(n-1)))+1` -/
def P11807258582145164852.Spec : Prop :=
  ∀ n, P11807258582145164852.a n = A182417 n

end A182417

/-! ## A182417.P4572645994845276018

`xor(a(n-1), A004526(A004526(a(n-1))))+1` with `a(0)=0`
-/

namespace A182417.P4572645994845276018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.xor (a (n - 1)) (A004526 (A004526 (a (n - 1)).toNat).toNat) + 1

end

end A182417.P4572645994845276018

namespace A182417

/-- `xor(a(n-1), A004526(A004526(a(n-1))))+1` -/
def P4572645994845276018.Spec : Prop :=
  ∀ n, P4572645994845276018.a n = A182417 n

end A182417

/-!
# A182418: a(0)=0, a(n+1) = (a(n) XOR floor(a(n)/6)) + 1, where XOR is the bitwise exclusive-or operator.

The programs for A182418, the canonical program `A182418.P14180038247930186158` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182418 has offset 0).

The definition of A182418 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182418.P14180038247930186158

`xor(floor(a(n-1)/6), a(n-1))+1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A182418

/-- `xor(floor(a(n-1)/6), a(n-1))+1` -/
def P14180038247930186158.Spec : Prop :=
  ∀ n, P14180038247930186158.a n = A182418 n

theorem P14180038247930186158.correct : P14180038247930186158.Spec := by
  intro n
  simp only [A182418]

end A182418

/-!
# A182419: a(0)=0, a(n+1) = (a(n) XOR floor(a(n)/8)) + 1, where XOR is the bitwise exclusive-or operator.

The programs for A182419, the canonical program `A182419.P7750576866597477700` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182419 has offset 0).

The definition of A182419 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182419.P7750576866597477700

`xor(floor(a(n-1)/8), a(n-1))+1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A182419

/-- `xor(floor(a(n-1)/8), a(n-1))+1` -/
def P7750576866597477700.Spec : Prop :=
  ∀ n, P7750576866597477700.a n = A182419 n

theorem P7750576866597477700.correct : P7750576866597477700.Spec := by
  intro n
  simp only [A182419]

end A182419

/-!
# A182420: a(0)=0, a(n) = (a(n-1) XOR n) * n.

The programs for A182420, there is no canonical definition to state claims against.
-/

/-! ## A182420.P15153999489470137755

`n*xor(n, a(n-1))` with `a(0)=0`
-/

namespace A182420.P15153999489470137755
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  n * Nat.xor n (a (n - 1))

end

end A182420.P15153999489470137755

/-! ## A182420.P10111849371351642495

`xor(n, a(n-1))/tan(acot(n))` with `a(0)=0`
-/

namespace A182420.P10111849371351642495
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0] fun n a =>
  (Int.xor (n : ℤ) (SequenceMachineLib.roundAway (a (n - 1))) : ℝ) / Real.tan (SequenceMachineLib.acot (n : ℝ))

end

end A182420.P10111849371351642495

/-! ## A182420.P9867148795758801998

`xor(n, a(n-1))/n^-1` with `a(0)=0`
-/

namespace A182420.P9867148795758801998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (Int.xor (n : ℤ) (SequenceMachineLib.roundAway (a (n - 1))) : ℚ) / (n : ℚ) ^ (-1 : ℤ)

end

end A182420.P9867148795758801998

/-! ## A182420.P14026685409931613596

`lcm(n, xor(n, A328617(a(n-1))))` with `a(0)=0, a(1)=1`
-/

namespace A182420.P14026685409931613596
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.lcm (n : ℤ) (Int.xor (n : ℤ) (A328617 (a (n - 1))))

end

end A182420.P14026685409931613596

/-!
# A182421: a(n) = Sum_{k = 0..n} C(n,k)^7.

The programs for A182421, there is no canonical definition to state claims against.
-/

/-! ## A182421.P15154631682750179686

`A309010(eq[7, A025581(n)])`
-/

namespace A182421.P15154631682750179686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A182421.P15154631682750179686

/-! ## A182421.P15612755396228707006

`A309010(eq[8, A193739(n)])`
-/

namespace A182421.P15612755396228707006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A182421.P15612755396228707006

/-! ## A182421.P8994739560323722973

`A309010(eq[15, A099375(n)])`
-/

namespace A182421.P8994739560323722973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A182421.P8994739560323722973

/-! ## A182421.P172539300693556555

`A309010(A000217(n+8)-8)`
-/

namespace A182421.P172539300693556555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309010 (A000217 (n + 8) - 8).toNat

end

end A182421.P172539300693556555

/-! ## A182421.P17348191402655309623

`A309010(eq[6, A068049(n+1)])`
-/

namespace A182421.P17348191402655309623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A182421.P17348191402655309623

/-!
# A182422: a(n) = Sum_{k = 0..n} C(n,k)^8.

The programs for A182422, there is no canonical definition to state claims against.
-/

/-! ## A182422.P4387569615443206913

`A309010(eq[8, A025581(n)])`
-/

namespace A182422.P4387569615443206913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A182422.P4387569615443206913

/-! ## A182422.P170910598325995421

`A309010(eq[9, A193739(n)])`
-/

namespace A182422.P170910598325995421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A182422.P170910598325995421

/-! ## A182422.P16537082147640747919

`A309010(eq[17, A099375(n)])`
-/

namespace A182422.P16537082147640747919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A182422.P16537082147640747919

/-! ## A182422.P7882127121502005763

`A309010(eq[7, A068049(n+1)])`
-/

namespace A182422.P7882127121502005763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A182422.P7882127121502005763

/-! ## A182422.P29308004241701242

`A309010(eq[9, A004736(n+1)])`
-/

namespace A182422.P29308004241701242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A182422.P29308004241701242

/-!
# A182423: Number of primes in interval (A194598(n), A164368(n)).

The programs for A182423, there is no canonical definition to state claims against.
-/

/-! ## A182423.P4666183454384185720

`A220506(Δ[comp[A020900(n+1)]])`
-/

namespace A182423.P4666183454384185720
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020900 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220506 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A182423.P4666183454384185720

/-! ## A182423.P13190685602834814198

`58%Δ[A000720(A194598(n+1))]`
-/

namespace A182423.P13190685602834814198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A194598 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 58 (f1 (n + 1) - f1 n)

end

end A182423.P13190685602834814198

/-! ## A182423.P13257382476976002379

`A062461(Δ[A000720(A194598(n+1))])`
-/

namespace A182423.P13257382476976002379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A194598 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062461 (f1 (n + 1) - f1 n).toNat

end

end A182423.P13257382476976002379

/-! ## A182423.P1196116224741343253

`A289207(Δ[A000720(A194598(n+1))])`
-/

namespace A182423.P1196116224741343253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A194598 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (f1 (n + 1) - f1 n).toNat

end

end A182423.P1196116224741343253

/-! ## A182423.P7165564459367356536

`A135676(Δ[A257541(A194598(n+1))])`
-/

namespace A182423.P7165564459367356536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257541 (A194598 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135676 (f1 (n + 1) - f1 n).toNat

end

end A182423.P7165564459367356536

/-!
# A182424: Numbers n such that n^4 + n^3 + n^2 + n - 1 is prime.

The programs for A182424, there is no canonical definition to state claims against.
-/

/-! ## A182424.P4731717671139382814

`floor(root(A182385(n+1), 4))`
-/

namespace A182424.P4731717671139382814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A182385 (n + 1) : ℝ) ^ (1 / (4 : ℝ))⌋

end

end A182424.P4731717671139382814

/-! ## A182424.P13957635941434304227

`A000027(round(root(A182385(n+1), 4)))`
-/

namespace A182424.P13957635941434304227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A182385 (n + 1) : ℝ) ^ (1 / (4 : ℝ)))).toNat

end

end A182424.P13957635941434304227

/-! ## A182424.P11085542689776045867

`round(root(A182385(n+1), 4))%A160805(n)`
-/

namespace A182424.P11085542689776045867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A182385 (n + 1) : ℝ) ^ (1 / (4 : ℝ)))) (A160805 n)

end

end A182424.P11085542689776045867

/-! ## A182424.P15007148090883049484

`(1-A000007(n))!*round(root(A182385(n+1), 4))`
-/

namespace A182424.P15007148090883049484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (1 - A000007 n).toNat : ℤ) * SequenceMachineLib.roundAway ((A182385 (n + 1) : ℝ) ^ (1 / (4 : ℝ)))

end

end A182424.P15007148090883049484

/-! ## A182424.P12759989959848678899

`A000007(n+1)+round(root(A182385(n+1), 4))`
-/

namespace A182424.P12759989959848678899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + SequenceMachineLib.roundAway ((A182385 (n + 1) : ℝ) ^ (1 / (4 : ℝ)))

end

end A182424.P12759989959848678899

/-! ## A182424.P16690675909747500388

`A025480(2*round(root(A182385(n+1), 4)))`
-/

namespace A182424.P16690675909747500388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (2 * SequenceMachineLib.roundAway ((A182385 (n + 1) : ℝ) ^ (1 / (4 : ℝ)))).toNat

end

end A182424.P16690675909747500388

/-! ## A182424.P6676384351416445604

`A001281(2*round(root(A182385(n+1), 4)))`
-/

namespace A182424.P6676384351416445604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (2 * SequenceMachineLib.roundAway ((A182385 (n + 1) : ℝ) ^ (1 / (4 : ℝ)))).toNat

end

end A182424.P6676384351416445604

/-! ## A182424.P15999859270139504891

`A002265(4*round(root(A182385(n+1), 4)))`
-/

namespace A182424.P15999859270139504891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (4 * SequenceMachineLib.roundAway ((A182385 (n + 1) : ℝ) ^ (1 / (4 : ℝ)))).toNat

end

end A182424.P15999859270139504891

/-!
# A182426: Lengths of runs of consecutive isolated primes beginning with A166251(n).

The programs for A182426, there is no canonical definition to state claims against.
-/

/-! ## A182426.P16109515031682109435

`A068073(A079611(n+1))`
-/

namespace A182426.P16109515031682109435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068073 (A079611 (n + 1)).toNat

end

end A182426.P16109515031682109435

/-! ## A182426.P7759330457929091811

`A353486(gcd(A079611(n+1), A262621(n)))`
-/

namespace A182426.P7759330457929091811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353486 (Int.gcd (A079611 (n + 1)) (A262621 n))

end

end A182426.P7759330457929091811

/-! ## A182426.P5302548951936836011

`A010873(A079611(n+1)*A353487(n)+1)`
-/

namespace A182426.P5302548951936836011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A079611 (n + 1) * A353487 n + 1).toNat

end

end A182426.P5302548951936836011

/-! ## A182426.P990721618493426121

`A010873(A079611(n+1)*A353486(2*n)+1)`
-/

namespace A182426.P990721618493426121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A079611 (n + 1) * A353486 (2 * n) + 1).toNat

end

end A182426.P990721618493426121

/-! ## A182426.P7044798522394638779

`A374757(A122856(2*n)*A254052(n+1))`
-/

namespace A182426.P7044798522394638779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374757 (A122856 (2 * n) * A254052 (n + 1)).toNat

end

end A182426.P7044798522394638779

/-!
# A182427: Triangular numbers that can be represented as a sum of a nonzero square number and a nonzero triangular number.

The programs for A182427, there is no canonical definition to state claims against.
-/

/-! ## A182427.P12061706043925335428

`lt[A038207(n), A082660(n+1)]+1`
-/

namespace A182427.P12061706043925335428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082660 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A182427.P12061706043925335428

/-! ## A182427.P17569490308106678510

`lt[A140303(n), A082660(n+1)]+1`
-/

namespace A182427.P17569490308106678510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140303 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082660 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A182427.P17569490308106678510

/-! ## A182427.P172343038398059124

`lt[A105728(n+1), A082660(A028310(n))]`
-/

namespace A182427.P172343038398059124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082660 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A182427.P172343038398059124

/-! ## A182427.P13340995603483138387

`lt[A033877(A038722(n+1)), A082660(n+1)]+1`
-/

namespace A182427.P13340995603483138387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033877 (A038722 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082660 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A182427.P13340995603483138387

/-! ## A182427.P3668673687323903113

`lt[A236830(n), A082660(n+1)]+1`
-/

namespace A182427.P3668673687323903113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236830 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082660 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A182427.P3668673687323903113

/-!
# A182428: a(n) = 2n(19-n).

The programs for A182428, the canonical program `A182428.P5992180540687048509` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182428 has offset 0).

The definition of A182428 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n*(19-n)` (program `A182428.P5992180540687048509`, by `A182428.P5992180540687048509.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A182428.P5992180540687048509

`2*n*(19-n)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A182428

/-- `2*n*(19-n)` -/
def P5992180540687048509.Spec : Prop :=
  ∀ n, P5992180540687048509.a n = A182428 n

theorem P5992180540687048509.correct : P5992180540687048509.Spec := by
  intro n
  simp only [A182428]

end A182428

/-! ## A182428.P8805462902255667574

`∑[a(n-1)-4]` with `a(0)=0, a(1)=36`
-/

namespace A182428.P8805462902255667574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 36] fun n f1 =>
  f1 (n - 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182428.P8805462902255667574

namespace A182428

/-- `∑[a(n-1)-4]` -/
def P8805462902255667574.Spec : Prop :=
  ∀ n, P8805462902255667574.a n = A182428 n

end A182428

/-! ## A182428.P1196251974614920387

`39*n-A014105(n)`
-/

namespace A182428.P1196251974614920387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (39 * n : ℤ) - A014105 n

end

end A182428.P1196251974614920387

namespace A182428

/-- `39*n-A014105(n)` -/
def P1196251974614920387.Spec : Prop :=
  ∀ n, P1196251974614920387.a n = A182428 n

theorem P1196251974614920387.correct : P1196251974614920387.Spec := by
  intro n
  simp only [A182428, Nat.add_sub_cancel, A182428.P1196251974614920387.a, A182428.P5992180540687048509.a, A014105, A014105.P182524374866796289.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A182428

/-! ## A182428.P5083351938610847613

`40*n-A046092(n)`
-/

namespace A182428.P5083351938610847613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (40 * n : ℤ) - A046092 n

end

end A182428.P5083351938610847613

namespace A182428

/-- `40*n-A046092(n)` -/
def P5083351938610847613.Spec : Prop :=
  ∀ n, P5083351938610847613.a n = A182428 n

theorem P5083351938610847613.correct : P5083351938610847613.Spec := by
  intro n
  simp only [A182428, Nat.add_sub_cancel, A182428.P5083351938610847613.a, A182428.P5992180540687048509.a, A046092, A046092.P16411658895297056450.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A182428

/-! ## A182428.P1946253545846070872

`A085959(n)-A000384(n)`
-/

namespace A182428.P1946253545846070872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085959 n - A000384 n

end

end A182428.P1946253545846070872

namespace A182428

/-- `A085959(n)-A000384(n)` -/
def P1946253545846070872.Spec : Prop :=
  ∀ n, P1946253545846070872.a n = A182428 n

theorem P1946253545846070872.correct : P1946253545846070872.Spec := by
  intro n
  simp only [A182428, Nat.add_sub_cancel, A182428.P1946253545846070872.a, A182428.P5992180540687048509.a, A000384, A000384.P5392390561999168282.a, A085959, A085959.P3841702424596331541.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A182428

/-! ## A182428.P13039181416181926874

`A114444(n)-A153792(n)`
-/

namespace A182428.P13039181416181926874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114444 n - A153792 n

end

end A182428.P13039181416181926874

namespace A182428

/-- `A114444(n)-A153792(n)` -/
def P13039181416181926874.Spec : Prop :=
  ∀ n, P13039181416181926874.a n = A182428 n

theorem P13039181416181926874.correct : P13039181416181926874.Spec := by
  intro n
  simp only [A182428, Nat.add_sub_cancel, A182428.P13039181416181926874.a, A182428.P5992180540687048509.a, A114444, A114444.P13670265799180391886.a, A153792, A153792.P13758873412561183293.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A182428

/-! ## A182428.P6231838629518929017

`A277990(n)-A186862(n+1)`
-/

namespace A182428.P6231838629518929017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277990 n - A186862 (n + 1)

end

end A182428.P6231838629518929017

namespace A182428

/-- `A277990(n)-A186862(n+1)` -/
def P6231838629518929017.Spec : Prop :=
  ∀ n, P6231838629518929017.a n = A182428 n

theorem P6231838629518929017.correct : P6231838629518929017.Spec := by
  intro n
  simp only [A182428, Nat.add_sub_cancel, A182428.P6231838629518929017.a, A182428.P5992180540687048509.a, A186862, A186862.P7750391475606102554.a, A277990, A277990.P6687017974836704064.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A182428

/-! ## A182428.P9186924869976244970

`A008595(n)+A008607(n)-A001105(n)`
-/

namespace A182428.P9186924869976244970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008595 n + (A008607 n - A001105 n)

end

end A182428.P9186924869976244970

namespace A182428

/-- `A008595(n)+A008607(n)-A001105(n)` -/
def P9186924869976244970.Spec : Prop :=
  ∀ n, P9186924869976244970.a n = A182428 n

theorem P9186924869976244970.correct : P9186924869976244970.Spec := by
  intro n
  simp only [A182428, Nat.add_sub_cancel, A182428.P9186924869976244970.a, A182428.P5992180540687048509.a, A001105, A001105.P6098599260439307493.a, A008595, A008595.P16021929412859907016.a, A008607, A008607.P4608234580437606002.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A182428

/-! ## A182428.P11181825179175045551

`A008601(n)+A008601(n)-A001105(n)`
-/

namespace A182428.P11181825179175045551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008601 n + (A008601 n - A001105 n)

end

end A182428.P11181825179175045551

namespace A182428

/-- `A008601(n)+A008601(n)-A001105(n)` -/
def P11181825179175045551.Spec : Prop :=
  ∀ n, P11181825179175045551.a n = A182428 n

theorem P11181825179175045551.correct : P11181825179175045551.Spec := by
  intro n
  simp only [A182428, Nat.add_sub_cancel, A182428.P11181825179175045551.a, A182428.P5992180540687048509.a, A001105, A001105.P6098599260439307493.a, A008601, A008601.P146696909524110912.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A182428

/-! ## A182428.P670326467135584275

`A132770(n)+A132770(n)-A277979(n)`
-/

namespace A182428.P670326467135584275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132770 n + (A132770 n - A277979 n)

end

end A182428.P670326467135584275

namespace A182428

/-- `A132770(n)+A132770(n)-A277979(n)` -/
def P670326467135584275.Spec : Prop :=
  ∀ n, P670326467135584275.a n = A182428 n

theorem P670326467135584275.correct : P670326467135584275.Spec := by
  intro n
  simp only [A182428, Nat.add_sub_cancel, A182428.P670326467135584275.a, A182428.P5992180540687048509.a, A132770, A132770.P12357990989208412572.a, A277979, A277979.P8157014002560634549.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A182428

/-! ## A182428.P3796212514777974087

`A154357(n+1)-(A161532(n+1)+A154357(n))`
-/

namespace A182428.P3796212514777974087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154357 (n + 1) - (A161532 (n + 1) + A154357 n)

end

end A182428.P3796212514777974087

namespace A182428

/-- `A154357(n+1)-(A161532(n+1)+A154357(n))` -/
def P3796212514777974087.Spec : Prop :=
  ∀ n, P3796212514777974087.a n = A182428 n

theorem P3796212514777974087.correct : P3796212514777974087.Spec := by
  intro n
  simp only [A182428, Nat.add_sub_cancel, A182428.P3796212514777974087.a, A182428.P5992180540687048509.a, A154357, A154357.P13136961203844613279.a, A161532, A161532.P17103615400908031824.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A182428

/-! ## A182428.P15434987663218889520

`A017281(A008586(n))-A001844(n)`
-/

namespace A182428.P15434987663218889520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 (A008586 n).toNat - A001844 n

end

end A182428.P15434987663218889520

namespace A182428

/-- `A017281(A008586(n))-A001844(n)` -/
def P15434987663218889520.Spec : Prop :=
  ∀ n, P15434987663218889520.a n = A182428 n

end A182428

/-! ## A182428.P4800005814516471545

`A008588(A008588(n))+n-A000384(n)`
-/

namespace A182428.P4800005814516471545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (A008588 n).toNat + ((n : ℤ) - A000384 n)

end

end A182428.P4800005814516471545

namespace A182428

/-- `A008588(A008588(n))+n-A000384(n)` -/
def P4800005814516471545.Spec : Prop :=
  ∀ n, P4800005814516471545.a n = A182428 n

end A182428

/-! ## A182428.P5998534703959765099

`A008574(A017401(n))-∑[A008574(n+1)]`
-/

namespace A182428.P5998534703959765099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A017401 n).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182428.P5998534703959765099

namespace A182428

/-- `A008574(A017401(n))-∑[A008574(n+1)]` -/
def P5998534703959765099.Spec : Prop :=
  ∀ n, P5998534703959765099.a n = A182428 n

end A182428

/-! ## A182428.P17564785910985143927

`A008586(A051942(n+9))-A008586(n²)`
-/

namespace A182428.P17564785910985143927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A051942 (n + 9)).toNat - A008586 (n ^ 2)

end

end A182428.P17564785910985143927

namespace A182428

/-- `A008586(A051942(n+9))-A008586(n²)` -/
def P17564785910985143927.Spec : Prop :=
  ∀ n, P17564785910985143927.a n = A182428 n

end A182428

/-!
# A182429: First differences of congruent numbers A003273.

The programs for A182429, there is no canonical definition to state claims against.
-/

/-! ## A182429.P16017812619332377694

`Δ[A003273(n+1)]`
-/

namespace A182429.P16017812619332377694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003273 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182429.P16017812619332377694

/-! ## A182429.P18425943328390199069

`Δ[eq[1, A290349(n+1)]]`
-/

namespace A182429.P18425943328390199069
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290349 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A182429.P18425943328390199069

/-! ## A182429.P15814321133580514263

`Δ[record[A003273(A344180(n))]]`
-/

namespace A182429.P15814321133580514263
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003273 (A344180 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182429.P15814321133580514263

/-! ## A182429.P10450715903988233897

`A003273(n+2)-A003273(n+1)`
-/

namespace A182429.P10450715903988233897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003273 (n + 2) - A003273 (n + 1)

end

end A182429.P10450715903988233897

/-! ## A182429.P7185033174261482501

`A003273(A000027(n+2))%A003273(n+1)`
-/

namespace A182429.P7185033174261482501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003273 (A000027 (n + 2)).toNat) (A003273 (n + 1))

end

end A182429.P7185033174261482501

/-! ## A182429.P5365559465523604253

`Δ[lt[0, A319510(n+1)]]`
-/

namespace A182429.P5365559465523604253
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319510 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A182429.P5365559465523604253

/-!
# A182430: a(n) = n! - A003149(n-1).

The programs for A182430, there is no canonical definition to state claims against.
-/

/-! ## A182430.P1529399759759671697

`n!-∑[A186374(n)]`
-/

namespace A182430.P1529399759759671697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186374 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182430.P1529399759759671697

/-! ## A182430.P2960042639445471216

`A000142(n)-∑[A186374(n)]`
-/

namespace A182430.P2960042639445471216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186374 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182430.P2960042639445471216

/-! ## A182430.P14356272973987159521

`Δ[A003422(n)]-∑[A186374(n)]`
-/

namespace A182430.P14356272973987159521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186374 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A182430.P14356272973987159521

/-! ## A182430.P1850245632037665753

`A008279(A000096(n))-∑[A186374(n)]`
-/

namespace A182430.P1850245632037665753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186374 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 (A000096 n).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182430.P1850245632037665753

/-! ## A182430.P3821410175865160121

`A000142(n)-A084938(A089071(n+3))`
-/

namespace A182430.P3821410175865160121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A084938 (A089071 (n + 3)).toNat

end

end A182430.P3821410175865160121

/-!
# A182431: Table, read by antidiagonals, in which the n-th row comprises A214206(n) 0 followed by a second-order recursive series G in which each product G(i)*G(i+1) lies in the same row of A001477 (interpreted as a square array).

The programs for A182431, there is no canonical definition to state claims against.
-/

/-! ## A182431.P5860561953836242364

`A182439(n)+A182440(n)-A182441(n)`
-/

namespace A182431.P5860561953836242364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182439 n + (A182440 n - A182441 n)

end

end A182431.P5860561953836242364

/-!
# A182432: Recurrence a(n)*a(n-2) = a(n-1)*(a(n-1) + 3) with a(0) = 1, a(1) = 4.

The programs for A182432, the canonical program `A182432.P3115205228624983578` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182432 has offset 0).

The definition of A182432 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A182432.P3115205228624983578

`8*a(n-1)-a(n-2)-3` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A182432

/-- `8*a(n-1)-a(n-2)-3` -/
def P3115205228624983578.Spec : Prop :=
  ∀ n, P3115205228624983578.a n = A182432 n

theorem P3115205228624983578.correct : P3115205228624983578.Spec := by
  intro n
  simp only [A182432]

end A182432

/-! ## A182432.P8001503552653460425

`A080871(n)*A080871(n+1)`
-/

namespace A182432.P8001503552653460425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080871 n * A080871 (n + 1)

end

end A182432.P8001503552653460425

namespace A182432

/-- `A080871(n)*A080871(n+1)` -/
def P8001503552653460425.Spec : Prop :=
  ∀ n, P8001503552653460425.a n = A182432 n

end A182432

/-! ## A182432.P14398487813209034285

`∑[ogf((1-5x+x^2)/(1-8x+x^2))]`
-/

namespace A182432.P14398487813209034285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5, 1] [1, -8, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182432.P14398487813209034285

namespace A182432

/-- `∑[ogf((1-5x+x^2)/(1-8x+x^2))]` -/
def P14398487813209034285.Spec : Prop :=
  ∀ n, P14398487813209034285.a n = A182432 n

end A182432

/-! ## A182432.P9590619005147024493

`ogf((1-5x+x^2)/(1-9x+9x^2-x^3))`
-/

namespace A182432.P9590619005147024493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5, 1] [1, -9, 9, -1] n

end

end A182432.P9590619005147024493

namespace A182432

/-- `ogf((1-5x+x^2)/(1-9x+9x^2-x^3))` -/
def P9590619005147024493.Spec : Prop :=
  ∀ n, P9590619005147024493.a n = A182432 n

end A182432

/-! ## A182432.P3297092813641494755

`A145608(n)+1`
-/

namespace A182432.P3297092813641494755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145608 n + 1

end

end A182432.P3297092813641494755

namespace A182432

/-- `A145608(n)+1` -/
def P3297092813641494755.Spec : Prop :=
  ∀ n, P3297092813641494755.a n = A182432 n

end A182432

/-! ## A182432.P10507822786573330048

`ceil(A070997(n)/2)`
-/

namespace A182432.P10507822786573330048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A070997 n : ℚ) / 2⌉

end

end A182432.P10507822786573330048

namespace A182432

/-- `ceil(A070997(n)/2)` -/
def P10507822786573330048.Spec : Prop :=
  ∀ n, P10507822786573330048.a n = A182432 n

end A182432

/-! ## A182432.P6346769949110810220

`∑[A136325(n)]+1`
-/

namespace A182432.P6346769949110810220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136325 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A182432.P6346769949110810220

namespace A182432

/-- `∑[A136325(n)]+1` -/
def P6346769949110810220.Spec : Prop :=
  ∀ n, P6346769949110810220.a n = A182432 n

end A182432

/-! ## A182432.P9201247953302529351

`ceil(Δ[A001090(n)/2])`
-/

namespace A182432.P9201247953302529351
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001090 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A182432.P9201247953302529351

namespace A182432

/-- `ceil(Δ[A001090(n)/2])` -/
def P9201247953302529351.Spec : Prop :=
  ∀ n, P9201247953302529351.a n = A182432 n

end A182432

/-! ## A182432.P14152982927364266531

`ceil(A041023(2*n)/2)`
-/

namespace A182432.P14152982927364266531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A041023 (2 * n) : ℚ) / 2⌉

end

end A182432.P14152982927364266531

namespace A182432

/-- `ceil(A041023(2*n)/2)` -/
def P14152982927364266531.Spec : Prop :=
  ∀ n, P14152982927364266531.a n = A182432 n

end A182432

/-! ## A182432.P8799934638524563474

`A001091(n)+1-a(n-1)` with `a(0)=1`
-/

namespace A182432.P8799934638524563474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001091 n + (1 - a (n - 1))

end

end A182432.P8799934638524563474

namespace A182432

/-- `A001091(n)+1-a(n-1)` -/
def P8799934638524563474.Spec : Prop :=
  ∀ n, P8799934638524563474.a n = A182432 n

end A182432

/-! ## A182432.P1977801364597169198

`∑[A001091(n)]-A001090(n)`
-/

namespace A182432.P1977801364597169198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001090 n

end

end A182432.P1977801364597169198

namespace A182432

/-- `∑[A001091(n)]-A001090(n)` -/
def P1977801364597169198.Spec : Prop :=
  ∀ n, P1977801364597169198.a n = A182432 n

end A182432

/-! ## A182432.P1096859797118844262

`∑[A070997(n)-A001091(n)]+1`
-/

namespace A182432.P1096859797118844262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070997 n - A001091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A182432.P1096859797118844262

namespace A182432

/-- `∑[A070997(n)-A001091(n)]+1` -/
def P1096859797118844262.Spec : Prop :=
  ∀ n, P1096859797118844262.a n = A182432 n

end A182432

/-! ## A182432.P15177363643591496186

`A076765(n)+1-A095003(n+1)`
-/

namespace A182432.P15177363643591496186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076765 n + (1 - A095003 (n + 1))

end

end A182432.P15177363643591496186

namespace A182432

/-- `A076765(n)+1-A095003(n+1)` -/
def P15177363643591496186.Spec : Prop :=
  ∀ n, P15177363643591496186.a n = A182432 n

end A182432

/-! ## A182432.P9094668986300111178

`A105045(2*n+1)+A001090(n)`
-/

namespace A182432.P9094668986300111178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105045 (2 * n + 1) + A001090 n

end

end A182432.P9094668986300111178

namespace A182432

/-- `A105045(2*n+1)+A001090(n)` -/
def P9094668986300111178.Spec : Prop :=
  ∀ n, P9094668986300111178.a n = A182432 n

end A182432

/-! ## A182432.P16495657980327508481

`floor(A095002(n+1)+A095002(n+1)/2)`
-/

namespace A182432.P16495657980327508481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A095002 (n + 1) : ℚ) + (A095002 (n + 1) : ℚ) / 2⌋

end

end A182432.P16495657980327508481

namespace A182432

/-- `floor(A095002(n+1)+A095002(n+1)/2)` -/
def P16495657980327508481.Spec : Prop :=
  ∀ n, P16495657980327508481.a n = A182432 n

end A182432

/-! ## A182432.P12284876661243844287

`A103200(2*n+1)+1-A001090(n+1)`
-/

namespace A182432.P12284876661243844287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103200 (2 * n + 1) + (1 - A001090 (n + 1))

end

end A182432.P12284876661243844287

namespace A182432

/-- `A103200(2*n+1)+1-A001090(n+1)` -/
def P12284876661243844287.Spec : Prop :=
  ∀ n, P12284876661243844287.a n = A182432 n

end A182432

/-! ## A182432.P6996970417918716634

`A105076(2*(n+1))+1-A001090(n+1)`
-/

namespace A182432.P6996970417918716634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105076 (2 * (n + 1)) + (1 - A001090 (n + 1))

end

end A182432.P6996970417918716634

namespace A182432

/-- `A105076(2*(n+1))+1-A001090(n+1)` -/
def P6996970417918716634.Spec : Prop :=
  ∀ n, P6996970417918716634.a n = A182432 n

end A182432

/-! ## A182432.P9067670163953985915

`A199336(2*(n+1))-A103200(2*(n+1))`
-/

namespace A182432.P9067670163953985915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199336 (2 * (n + 1)) - A103200 (2 * (n + 1))

end

end A182432.P9067670163953985915

namespace A182432

/-- `A199336(2*(n+1))-A103200(2*(n+1))` -/
def P9067670163953985915.Spec : Prop :=
  ∀ n, P9067670163953985915.a n = A182432 n

end A182432

/-!
# A182433: Smallest number such that the next n integers each have the square of one of the first n primes as a factor in order.

The programs for A182433, there is no canonical definition to state claims against.
-/

/-! ## A182433.P18083397323135367002

`A248331(n+2)-1`
-/

namespace A182433.P18083397323135367002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248331 (n + 2) - 1

end

end A182433.P18083397323135367002

/-! ## A182433.P15295808288992379863

`A300547(2*n+1)+A248331(n+2)`
-/

namespace A182433.P15295808288992379863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300547 (2 * n + 1) + A248331 (n + 2)

end

end A182433.P15295808288992379863

/-! ## A182433.P13533421906042955983

`A349920(A248346(n+1))+A248331(n+2)`
-/

namespace A182433.P13533421906042955983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349920 (A248346 (n + 1)).toNat + A248331 (n + 2)

end

end A182433.P13533421906042955983

/-! ## A182433.P18139022005664876270

`A349920(A104192(n+1)+A000010(n+1))+A248331(n+2)`
-/

namespace A182433.P18139022005664876270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349920 (A104192 (n + 1) + A000010 (n + 1)).toNat + A248331 (n + 2)

end

end A182433.P18139022005664876270

/-! ## A182433.P13864176059230816194

`A349920(A070858(n+1))+A248331(n+2)`
-/

namespace A182433.P13864176059230816194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349920 (A070858 (n + 1)).toNat + A248331 (n + 2)

end

end A182433.P13864176059230816194

/-!
# A182434: Number of primes p < n such that 4*p+1 is also prime.

The programs for A182434, the canonical program `A182434.P10432546062453886706` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182434 has offset 1).

The definition of A182434 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182434.P17731674107757089350

`∑[char[A023212(n+1)-1]]`
-/

namespace A182434.P17731674107757089350
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023212 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182434.P17731674107757089350

namespace A182434

/-- `∑[char[A023212(n+1)-1]]` -/
def P17731674107757089350.Spec : Prop :=
  ∀ n, (P17731674107757089350.a n : ℤ) = A182434 (n + 1)

end A182434

/-! ## A182434.P3991777778741234466

`∑[char[A000010(A023212(n+1))]]`
-/

namespace A182434.P3991777778741234466
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A023212 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182434.P3991777778741234466

namespace A182434

/-- `∑[char[A000010(A023212(n+1))]]` -/
def P3991777778741234466.Spec : Prop :=
  ∀ n, (P3991777778741234466.a n : ℤ) = A182434 (n + 1)

end A182434

/-! ## A182434.P4673118350564027932

`∑[A101264(2*A061397(n+1))]`
-/

namespace A182434.P4673118350564027932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (2 * A061397 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182434.P4673118350564027932

namespace A182434

/-- `∑[A101264(2*A061397(n+1))]` -/
def P4673118350564027932.Spec : Prop :=
  ∀ n, P4673118350564027932.a n = A182434 (n + 1)

end A182434

/-! ## A182434.P10800054195673146041

`∑[A010051(n+1)*A101264(2*(n+1))]`
-/

namespace A182434.P10800054195673146041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) * A101264 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182434.P10800054195673146041

namespace A182434

/-- `∑[A010051(n+1)*A101264(2*(n+1))]` -/
def P10800054195673146041.Spec : Prop :=
  ∀ n, P10800054195673146041.a n = A182434 (n + 1)

end A182434

/-! ## A182434.P10432546062453886706

`∑[and(A061007(n+1), A101264(2*(n+1)))]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A182434

/-- `∑[and(A061007(n+1), A101264(2*(n+1)))]` -/
def P10432546062453886706.Spec : Prop :=
  ∀ n, P10432546062453886706.a n = A182434 (n + 1)

theorem P10432546062453886706.correct : P10432546062453886706.Spec := by
  intro n
  simp only [A182434, Nat.add_sub_cancel]

end A182434

/-! ## A182434.P8847873072889731226

`∑[A010051(4*(n+1)*A010051(n+1)+1)]`
-/

namespace A182434.P8847873072889731226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (4 * ((n + 1 : ℤ) * A010051 (n + 1)) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182434.P8847873072889731226

namespace A182434

/-- `∑[A010051(4*(n+1)*A010051(n+1)+1)]` -/
def P8847873072889731226.Spec : Prop :=
  ∀ n, P8847873072889731226.a n = A182434 (n + 1)

end A182434

/-! ## A182434.P18153315598263667120

`∑[A010051(Δ[(n+1-A010051(n+1))²]+1)]`
-/

namespace A182434.P18153315598263667120
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A010051 (n + 1)) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (f2 (n + 1) - f2 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182434.P18153315598263667120

namespace A182434

/-- `∑[A010051(Δ[(n+1-A010051(n+1))²]+1)]` -/
def P18153315598263667120.Spec : Prop :=
  ∀ n, P18153315598263667120.a n = A182434 (n + 1)

end A182434

/-! ## A182434.P3485588569872030765

`A001222(gcd(n+1, A023212(a(n-1)+1)))+a(n-1)` with `a(0)=0`
-/

namespace A182434.P3485588569872030765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A001222 (Int.gcd (n + 1 : ℤ) (A023212 (a (n - 1) + 1).toNat)) + a (n - 1)

end

end A182434.P3485588569872030765

namespace A182434

/-- `A001222(gcd(n+1, A023212(a(n-1)+1)))+a(n-1)` -/
def P3485588569872030765.Spec : Prop :=
  ∀ n, P3485588569872030765.a n = A182434 (n + 1)

end A182434

/-! ## A182434.P4884863682390342312

`∑[A010051(Δ[A014684(n+1)²]+1)]`
-/

namespace A182434.P4884863682390342312
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014684 (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (f2 (n + 1) - f2 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182434.P4884863682390342312

namespace A182434

/-- `∑[A010051(Δ[A014684(n+1)²]+1)]` -/
def P4884863682390342312.Spec : Prop :=
  ∀ n, P4884863682390342312.a n = A182434 (n + 1)

end A182434

/-! ## A182434.P17202223265695441269

`∑[and(A056562(2*n+1), A107279(n+1))]`
-/

namespace A182434.P17202223265695441269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056562 (2 * n + 1)) (A107279 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182434.P17202223265695441269

namespace A182434

/-- `∑[and(A056562(2*n+1), A107279(n+1))]` -/
def P17202223265695441269.Spec : Prop :=
  ∀ n, P17202223265695441269.a n = A182434 (n + 1)

end A182434

/-! ## A182434.P6941352263840858813

`∑[A061007(4*(n+1)*A061007(n+1)+1)]`
-/

namespace A182434.P6941352263840858813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061007 (4 * ((n + 1 : ℤ) * A061007 (n + 1)) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182434.P6941352263840858813

namespace A182434

/-- `∑[A061007(4*(n+1)*A061007(n+1)+1)]` -/
def P6941352263840858813.Spec : Prop :=
  ∀ n, P6941352263840858813.a n = A182434 (n + 1)

end A182434

/-!
# A182435: a(n) = 6*a(n-1) - a(n-2) - 2 with n>1, a(0)=0, a(1)=1.

The programs for A182435, the canonical program `A182435.P17348302907344370827` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182435 has offset 0).

The definition of A182435 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)-a(n-2)-2` (program `A182435.P17348302907344370827`, by `A182435.P17348302907344370827.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A182435.P17348302907344370827

`6*a(n-1)-a(n-2)-2` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A182435

/-- `6*a(n-1)-a(n-2)-2` -/
def P17348302907344370827.Spec : Prop :=
  ∀ n, P17348302907344370827.a n = A182435 n

theorem P17348302907344370827.correct : P17348302907344370827.Spec := by
  intro n
  simp only [A182435]

end A182435

/-! ## A182435.P7078074056409623285

`∑[ogf((x-3x^2)/(1-6x+x^2))]`
-/

namespace A182435.P7078074056409623285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -3] [1, -6, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182435.P7078074056409623285

namespace A182435

/-- `∑[ogf((x-3x^2)/(1-6x+x^2))]` -/
def P7078074056409623285.Spec : Prop :=
  ∀ n, P7078074056409623285.a n = A182435 n

end A182435

/-! ## A182435.P7831775672990630845

`ogf((x-3x^2)/(1-7x+7x^2-x^3))`
-/

namespace A182435.P7831775672990630845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -3] [1, -7, 7, -1] n

end

end A182435.P7831775672990630845

namespace A182435

/-- `ogf((x-3x^2)/(1-7x+7x^2-x^3))` -/
def P7831775672990630845.Spec : Prop :=
  ∀ n, P7831775672990630845.a n = A182435 n

end A182435

/-! ## A182435.P8940297831782136409

`∑[floor(a(n-1)/(3-sqrt(8)))]` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A182435.P8940297831782136409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n f1 =>
  ⌊(f1 (n - 1) : ℝ) / (3 - Real.sqrt (8 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182435.P8940297831782136409

namespace A182435

/-- `∑[floor(a(n-1)/(3-sqrt(8)))]` -/
def P8940297831782136409.Spec : Prop :=
  ∀ n, P8940297831782136409.a n = A182435 n

end A182435

/-! ## A182435.P1256267964444655564

`∑[round(a(n-1)/(3-sqrt(8)))]` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A182435.P1256267964444655564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n f1 =>
  SequenceMachineLib.roundAway ((f1 (n - 1) : ℝ) / (3 - Real.sqrt (8 : ℝ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182435.P1256267964444655564

namespace A182435

/-- `∑[round(a(n-1)/(3-sqrt(8)))]` -/
def P1256267964444655564.Spec : Prop :=
  ∀ n, P1256267964444655564.a n = A182435 n

end A182435

/-! ## A182435.P5320342690527269684

`record[1-floor((sqrt(2)+1)*a(n-1))]` with `a(0)=0`
-/

namespace A182435.P5320342690527269684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  1 - ⌊(Real.sqrt (2 : ℝ) + 1) * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182435.P5320342690527269684

namespace A182435

/-- `record[1-floor((sqrt(2)+1)*a(n-1))]` -/
def P5320342690527269684.Spec : Prop :=
  ∀ n, P5320342690527269684.a n = A182435 n

end A182435

/-! ## A182435.P14552548010969729429

`A111352(2*n)-1`
-/

namespace A182435.P14552548010969729429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111352 (2 * n) - 1

end

end A182435.P14552548010969729429

namespace A182435

/-- `A111352(2*n)-1` -/
def P14552548010969729429.Spec : Prop :=
  ∀ n, P14552548010969729429.a n = A182435 n

end A182435

/-! ## A182435.P12000057788970157056

`record[∑[A215936(n+2)]]`
-/

namespace A182435.P12000057788970157056
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215936 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182435.P12000057788970157056

namespace A182435

/-- `record[∑[A215936(n+2)]]` -/
def P12000057788970157056.Spec : Prop :=
  ∀ n, P12000057788970157056.a n = A182435 n

end A182435

/-! ## A182435.P18362248945703129612

`record[(1-A123335(n))/2]`
-/

namespace A182435.P18362248945703129612
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - A123335 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182435.P18362248945703129612

namespace A182435

/-- `record[(1-A123335(n))/2]` -/
def P18362248945703129612.Spec : Prop :=
  ∀ n, P18362248945703129612.a n = (A182435 n : ℚ)

end A182435

/-! ## A182435.P13871050701565360467

`∑[A204514(2*n+1)/2]`
-/

namespace A182435.P13871050701565360467
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204514 (2 * n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182435.P13871050701565360467

namespace A182435

/-- `∑[A204514(2*n+1)/2]` -/
def P13871050701565360467.Spec : Prop :=
  ∀ n, P13871050701565360467.a n = (A182435 n : ℚ)

end A182435

/-! ## A182435.P2423343232981856076

`A204514(2*n)+a(n-1)` with `a(0)=0`
-/

namespace A182435.P2423343232981856076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A204514 (2 * n) + a (n - 1)

end

end A182435.P2423343232981856076

namespace A182435

/-- `A204514(2*n)+a(n-1)` -/
def P2423343232981856076.Spec : Prop :=
  ∀ n, P2423343232981856076.a n = A182435 n

end A182435

/-! ## A182435.P14389012902394675475

`A097076(A004273(n))`
-/

namespace A182435.P14389012902394675475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097076 (A004273 n).toNat

end

end A182435.P14389012902394675475

namespace A182435

/-- `A097076(A004273(n))` -/
def P14389012902394675475.Spec : Prop :=
  ∀ n, P14389012902394675475.a n = A182435 n

end A182435

/-! ## A182435.P5436088657247493267

`A247311(A270545(n))`
-/

namespace A182435.P5436088657247493267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247311 (A270545 n).toNat

end

end A182435.P5436088657247493267

namespace A182435

/-- `A247311(A270545(n))` -/
def P5436088657247493267.Spec : Prop :=
  ∀ n, P5436088657247493267.a n = A182435 n

end A182435

/-! ## A182435.P16631791720979315618

`A247311(A091361(n+2))`
-/

namespace A182435.P16631791720979315618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247311 (A091361 (n + 2)).toNat

end

end A182435.P16631791720979315618

namespace A182435

/-- `A247311(A091361(n+2))` -/
def P16631791720979315618.Spec : Prop :=
  ∀ n, P16631791720979315618.a n = A182435 n

end A182435

/-! ## A182435.P15311836833367683905

`A097076(A130824(n)/2)`
-/

namespace A182435.P15311836833367683905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097076 (SequenceMachineLib.roundAway ((A130824 n : ℚ) / 2)).toNat

end

end A182435.P15311836833367683905

namespace A182435

/-- `A097076(A130824(n)/2)` -/
def P15311836833367683905.Spec : Prop :=
  ∀ n, P15311836833367683905.a n = A182435 n

end A182435

/-! ## A182435.P12034598912914061918

`A001542(n)-A001108(n)`
-/

namespace A182435.P12034598912914061918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001542 n - A001108 n

end

end A182435.P12034598912914061918

namespace A182435

/-- `A001542(n)-A001108(n)` -/
def P12034598912914061918.Spec : Prop :=
  ∀ n, P12034598912914061918.a n = A182435 n

end A182435

/-! ## A182435.P14070839117439481375

`∑[A204514(A004275(n+1))]`
-/

namespace A182435.P14070839117439481375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204514 (A004275 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182435.P14070839117439481375

namespace A182435

/-- `∑[A204514(A004275(n+1))]` -/
def P14070839117439481375.Spec : Prop :=
  ∀ n, P14070839117439481375.a n = A182435 n

end A182435

/-! ## A182435.P1606940563382690642

`A182189(n)-(A001108(n)+1)`
-/

namespace A182435.P1606940563382690642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182189 n - (A001108 n + 1)

end

end A182435.P1606940563382690642

namespace A182435

/-- `A182189(n)-(A001108(n)+1)` -/
def P1606940563382690642.Spec : Prop :=
  ∀ n, P1606940563382690642.a n = A182435 n

end A182435

/-! ## A182435.P11157840634872449164

`A000129(2*n)-A001108(n)`
-/

namespace A182435.P11157840634872449164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (2 * n) - A001108 n

end

end A182435.P11157840634872449164

namespace A182435

/-- `A000129(2*n)-A001108(n)` -/
def P11157840634872449164.Spec : Prop :=
  ∀ n, P11157840634872449164.a n = A182435 n

end A182435

/-! ## A182435.P17031146074108501248

`A001542(n)-A097076(2*n)`
-/

namespace A182435.P17031146074108501248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001542 n - A097076 (2 * n)

end

end A182435.P17031146074108501248

namespace A182435

/-- `A001542(n)-A097076(2*n)` -/
def P17031146074108501248.Spec : Prop :=
  ∀ n, P17031146074108501248.a n = A182435 n

end A182435

/-!
# A182437: a(0)=0, a(n) = (a(n-1) XOR n) * (n+1).

The programs for A182437, there is no canonical definition to state claims against.
-/

/-! ## A182437.P10203548454876407582

`(n+1)*xor(n, a(n-1))` with `a(0)=0`
-/

namespace A182437.P10203548454876407582
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (n + 1) * Nat.xor n (a (n - 1))

end

end A182437.P10203548454876407582

/-! ## A182437.P12485019347997858650

`abs(xor(n, a(n-1))*xor(n, -1))` with `a(0)=0`
-/

namespace A182437.P12485019347997858650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  |Int.xor (n : ℤ) (a (n - 1)) * Int.xor (n : ℤ) (-1)|

end

end A182437.P12485019347997858650

/-! ## A182437.P15334935692357864979

`(n+1)*A182390(n)`
-/

namespace A182437.P15334935692357864979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A182390 n

end

end A182437.P15334935692357864979

/-! ## A182437.P5951595127279799301

`xor(n+1, A182390(n+1))`
-/

namespace A182437.P5951595127279799301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A182390 (n + 1))

end

end A182437.P5951595127279799301

/-! ## A182437.P16872980970955847381

`xor(n, a(n-1))*A029579(2*n)` with `a(0)=0`
-/

namespace A182437.P16872980970955847381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.xor (n : ℤ) (a (n - 1)) * A029579 (2 * n)

end

end A182437.P16872980970955847381

/-! ## A182437.P18192342773452919186

`xor(n, a(n-1))*A008621(4*n)` with `a(0)=0`
-/

namespace A182437.P18192342773452919186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.xor (n : ℤ) (a (n - 1)) * A008621 (4 * n)

end

end A182437.P18192342773452919186

/-!
# A182439: Table a(k,i), read by antidiagonals, in which the n-th row comprises A214206(n) in position 0 followed by a second order recursive series G in which each product G(i)*G(i+1) lies in the same row of A001477 (interpreted as a square array - see below).

The programs for A182439, there is no canonical definition to state claims against.
-/

/-! ## A182439.P7722773574004421300

`A182431(n)+A182441(n)-A182440(n)`
-/

namespace A182439.P7722773574004421300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182431 n + (A182441 n - A182440 n)

end

end A182439.P7722773574004421300

/-! ## A182439.P7979699488335991401

`A182441(n)-A182423(A287901(n))`
-/

namespace A182439.P7979699488335991401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182441 n - A182423 (A287901 n).toNat

end

end A182439.P7979699488335991401

/-! ## A182439.P2518051694172235353

`A182441(n)-A182441(A243784(n+1))`
-/

namespace A182439.P2518051694172235353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182441 n - A182441 (A243784 (n + 1)).toNat

end

end A182439.P2518051694172235353

/-!
# A182440: Table, read by antidiagonals, in which the n-th row comprises A214206(n) in position 0 followed by a second order recursive series G in which each product G(i)*G(i+1) lies in the same row of A001477 (interpreted as a square array).

The programs for A182440, there is no canonical definition to state claims against.
-/

/-! ## A182440.P2104971744265440043

`A182431(n)+A182441(n)-A182439(n)`
-/

namespace A182440.P2104971744265440043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182431 n + (A182441 n - A182439 n)

end

end A182440.P2104971744265440043

/-!
# A182441: Table, read by antidiagonals, in which the n-th row comprises A214206(n) in position 0 followed by a second order recursive series G in which each product G(i)*G(i+1) lies in the same row of A001477 (interpreted as a square array - see below).

The programs for A182441, there is no canonical definition to state claims against.
-/

/-! ## A182441.P5845273440573386796

`A182439(n)+A182440(n)-A182431(n)`
-/

namespace A182441.P5845273440573386796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182439 n + (A182440 n - A182431 n)

end

end A182441.P5845273440573386796

/-! ## A182441.P14143547160298432519

`A182439(n)+A182423(A325534(2*n))`
-/

namespace A182441.P14143547160298432519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182439 n + A182423 (A325534 (2 * n)).toNat

end

end A182441.P14143547160298432519

/-!
# A182442: a(0)=0, a(1)=1, for n>1, a(n) = a(n-1)*2 + floor(a(n-2)/n).

The programs for A182442, the canonical program `A182442.P15197900767965289442` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182442 has offset 0).

The definition of A182442 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)*2+floor(a(n-2)/n)` (program `A182442.P15197900767965289442`, by `A182442.P15197900767965289442.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A182442.P6759626406391271393

`2*a(n-1)+floor(a(n-2)/n)` with `a(0)=0, a(1)=1`
-/

namespace A182442.P6759626406391271393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * a (n - 1) + ⌊(a (n - 2) : ℚ) / (n : ℚ)⌋

end

end A182442.P6759626406391271393

namespace A182442

/-- `2*a(n-1)+floor(a(n-2)/n)` -/
def P6759626406391271393.Spec : Prop :=
  ∀ n, P6759626406391271393.a n = A182442 n

theorem P6759626406391271393.correct : P6759626406391271393.Spec := by
  intro n
  simp only [A182442, Nat.add_sub_cancel, A182442.P6759626406391271393.a, A182442.P15197900767965289442.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A182442

/-! ## A182442.P15197900767965289442

`a(n-1)*2+floor(a(n-2)/n)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A182442

/-- `a(n-1)*2+floor(a(n-2)/n)` -/
def P15197900767965289442.Spec : Prop :=
  ∀ n, P15197900767965289442.a n = A182442 n

theorem P15197900767965289442.correct : P15197900767965289442.Spec := by
  intro n
  simp only [A182442]

end A182442

/-! ## A182442.P8744518354704666330

`floor(a(n-1)+a(n-1)+a(n-2)/n)` with `a(0)=0, a(1)=1`
-/

namespace A182442.P8744518354704666330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ⌊(a (n - 1) : ℚ) + ((a (n - 1) : ℚ) + (a (n - 2) : ℚ) / (n : ℚ))⌋

end

end A182442.P8744518354704666330

namespace A182442

/-- `floor(a(n-1)+a(n-1)+a(n-2)/n)` -/
def P8744518354704666330.Spec : Prop :=
  ∀ n, P8744518354704666330.a n = A182442 n

theorem P8744518354704666330.correct : P8744518354704666330.Spec := by
  intro n
  simp only [A182442, Nat.add_sub_cancel, A182442.P8744518354704666330.a, A182442.P15197900767965289442.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A182442

/-! ## A182442.P14829221276089777247

`Δ[record[A141020(n)]]-A141018(n)`
-/

namespace A182442.P14829221276089777247
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141020 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A141018 n

end

end A182442.P14829221276089777247

namespace A182442

/-- `Δ[record[A141020(n)]]-A141018(n)` -/
def P14829221276089777247.Spec : Prop :=
  ∀ n, P14829221276089777247.a n = A182442 n

end A182442

/-! ## A182442.P11588440829304600436

`A202304(A276903(n))`
-/

namespace A182442.P11588440829304600436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202304 (A276903 n).toNat

end

end A182442.P11588440829304600436

namespace A182442

/-- `A202304(A276903(n))` -/
def P11588440829304600436.Spec : Prop :=
  ∀ n, P11588440829304600436.a n = A182442 n

end A182442

/-!
# A182443: a(0)=0, a(1)=1, for n>1, a(n) = floor(a(n-1)/n) + a(n-2)*2.

The programs for A182443, the canonical program `A182443.P5787968327519516382` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182443 has offset 0).

The definition of A182443 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(a(n-1)/n)+a(n-2)*2` (program `A182443.P5787968327519516382`, by `A182443.P5787968327519516382.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A182443.P5787968327519516382

`floor(a(n-1)/n)+a(n-2)*2` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A182443

/-- `floor(a(n-1)/n)+a(n-2)*2` -/
def P5787968327519516382.Spec : Prop :=
  ∀ n, P5787968327519516382.a n = A182443 n

theorem P5787968327519516382.correct : P5787968327519516382.Spec := by
  intro n
  simp only [A182443]

end A182443

/-! ## A182443.P914474005317225961

`floor(a(n-2)+a(n-2)+a(n-1)/n)` with `a(0)=0, a(1)=1`
-/

namespace A182443.P914474005317225961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ⌊(a (n - 2) : ℚ) + ((a (n - 2) : ℚ) + (a (n - 1) : ℚ) / (n : ℚ))⌋

end

end A182443.P914474005317225961

namespace A182443

/-- `floor(a(n-2)+a(n-2)+a(n-1)/n)` -/
def P914474005317225961.Spec : Prop :=
  ∀ n, P914474005317225961.a n = A182443 n

end A182443

/-! ## A182443.P13704997020445583846

`(2^floor(n/2))%A137734(A223940(n))`
-/

namespace A182443.P13704997020445583846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ))) (A137734 (A223940 n).toNat)

end

end A182443.P13704997020445583846

namespace A182443

/-- `(2^floor(n/2))%A137734(A223940(n))` -/
def P13704997020445583846.Spec : Prop :=
  ∀ n, P13704997020445583846.a n = A182443 n

end A182443

/-! ## A182443.P13942832902011260076

`A016116(n)%A097285(A134683(n))`
-/

namespace A182443.P13942832902011260076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016116 n) (A097285 (A134683 n).toNat)

end

end A182443.P13942832902011260076

namespace A182443

/-- `A016116(n)%A097285(A134683(n))` -/
def P13942832902011260076.Spec : Prop :=
  ∀ n, P13942832902011260076.a n = A182443 n

end A182443

/-!
# A182444: a(0)=0, a(1)=1, for n>1, a(n) = a(n-1) + (a(n-2) mod n).

The programs for A182444, the canonical program `A182444.P805209269598660480` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182444 has offset 0).

The definition of A182444 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182444.P805209269598660480

`a(n-1)+a(n-2)%n` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A182444

/-- `a(n-1)+a(n-2)%n` -/
def P805209269598660480.Spec : Prop :=
  ∀ n, (P805209269598660480.a n : ℤ) = A182444 n

theorem P805209269598660480.correct : P805209269598660480.Spec := by
  intro n
  simp only [A182444]

end A182444

/-! ## A182444.P14896293510789064265

`a(n-1)--a(n-2)%n` with `a(0)=0, a(1)=1`
-/

namespace A182444.P14896293510789064265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) - Int.tmod (-a (n - 2)) (n : ℤ)

end

end A182444.P14896293510789064265

namespace A182444

/-- `a(n-1)--a(n-2)%n` -/
def P14896293510789064265.Spec : Prop :=
  ∀ n, P14896293510789064265.a n = A182444 n

end A182444

/-! ## A182444.P7905020125181346558

`a(n-1)-(2-4/2-a(n-2))%n` with `a(0)=0, a(1)=1`
-/

namespace A182444.P7905020125181346558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) - Int.tmod (SequenceMachineLib.roundAway (2 - (4 : ℚ) / 2 - (a (n - 2) : ℚ))) (n : ℤ)

end

end A182444.P7905020125181346558

namespace A182444

/-- `a(n-1)-(2-4/2-a(n-2))%n` -/
def P7905020125181346558.Spec : Prop :=
  ∀ n, P7905020125181346558.a n = A182444 n

end A182444

/-! ## A182444.P5590496353324306992

`a(n-1)-(a(n-2)-2*a(n-2))%n` with `a(0)=0, a(1)=1`
-/

namespace A182444.P5590496353324306992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) - Int.tmod (a (n - 2) - 2 * a (n - 2)) (n : ℤ)

end

end A182444.P5590496353324306992

namespace A182444

/-- `a(n-1)-(a(n-2)-2*a(n-2))%n` -/
def P5590496353324306992.Spec : Prop :=
  ∀ n, P5590496353324306992.a n = A182444 n

end A182444

/-!
# A182445: a(0)=0, a(1)=1, for n>1, a(n) = a(n-2) + (a(n-1) mod n).

The programs for A182445, the canonical program `A182445.P12630799445220496954` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182445 has offset 0).

The definition of A182445 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182445.P12630799445220496954

`a(n-2)+a(n-1)%n` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A182445

/-- `a(n-2)+a(n-1)%n` -/
def P12630799445220496954.Spec : Prop :=
  ∀ n, (P12630799445220496954.a n : ℤ) = A182445 n

theorem P12630799445220496954.correct : P12630799445220496954.Spec := by
  intro n
  simp only [A182445]

end A182445

/-! ## A182445.P13687920262413157310

`a(n-2)--a(n-1)%n` with `a(0)=0, a(1)=1`
-/

namespace A182445.P13687920262413157310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) - Int.tmod (-a (n - 1)) (n : ℤ)

end

end A182445.P13687920262413157310

namespace A182445

/-- `a(n-2)--a(n-1)%n` -/
def P13687920262413157310.Spec : Prop :=
  ∀ n, P13687920262413157310.a n = A182445 n

end A182445

/-! ## A182445.P14208310971007507884

`a(n-2)-(n-a(n-1)-n²)%n` with `a(0)=0, a(1)=1`
-/

namespace A182445.P14208310971007507884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) - Int.tmod ((n : ℤ) - a (n - 1) - (n ^ 2 : ℤ)) (n : ℤ)

end

end A182445.P14208310971007507884

namespace A182445

/-- `a(n-2)-(n-a(n-1)-n²)%n` -/
def P14208310971007507884.Spec : Prop :=
  ∀ n, P14208310971007507884.a n = A182445 n

end A182445

/-! ## A182445.P5897483570600076899

`a(n-2)-(2-4/2-a(n-1))%n` with `a(0)=0, a(1)=1`
-/

namespace A182445.P5897483570600076899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) - Int.tmod (SequenceMachineLib.roundAway (2 - (4 : ℚ) / 2 - (a (n - 1) : ℚ))) (n : ℤ)

end

end A182445.P5897483570600076899

namespace A182445

/-- `a(n-2)-(2-4/2-a(n-1))%n` -/
def P5897483570600076899.Spec : Prop :=
  ∀ n, P5897483570600076899.a n = A182445 n

end A182445

/-! ## A182445.P6585945969780780531

`a(n-2)-((1-a(n-1))%n-1)%n` with `a(0)=0, a(1)=1`
-/

namespace A182445.P6585945969780780531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) - Int.tmod (Int.tmod (1 - a (n - 1)) (n : ℤ) - 1) (n : ℤ)

end

end A182445.P6585945969780780531

namespace A182445

/-- `a(n-2)-((1-a(n-1))%n-1)%n` -/
def P6585945969780780531.Spec : Prop :=
  ∀ n, P6585945969780780531.a n = A182445 n

end A182445

/-!
# A182446: a(n) = Sum_{k = 0..n} C(n,k)^9.

The programs for A182446, there is no canonical definition to state claims against.
-/

/-! ## A182446.P14811729906463359883

`A309010(eq[9, A025581(n)])`
-/

namespace A182446.P14811729906463359883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A182446.P14811729906463359883

/-! ## A182446.P12828171980900705521

`A309010(eq[10, A193739(n)])`
-/

namespace A182446.P12828171980900705521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A182446.P12828171980900705521

/-! ## A182446.P410319640793383684

`A309010(eq[19, A099375(n)])`
-/

namespace A182446.P410319640793383684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A182446.P410319640793383684

/-! ## A182446.P8431941643244211230

`A309010(eq[9, A068049(n+1)])`
-/

namespace A182446.P8431941643244211230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A182446.P8431941643244211230

/-! ## A182446.P10856558632792590743

`A309010(eq[10, A004736(n+1)])`
-/

namespace A182446.P10856558632792590743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A182446.P10856558632792590743

/-!
# A182447: a(n) = Sum_{k = 0..n} C(n,k)^10.

The programs for A182447, there is no canonical definition to state claims against.
-/

/-! ## A182447.P5366344462931307738

`A309010(eq[10, A025581(n)])`
-/

namespace A182447.P5366344462931307738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A182447.P5366344462931307738

/-! ## A182447.P438509129925281561

`A309010(eq[11, A193739(n)])`
-/

namespace A182447.P438509129925281561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A182447.P438509129925281561

/-! ## A182447.P13705421705534992205

`A309010(eq[11, A195663(n)])`
-/

namespace A182447.P13705421705534992205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A182447.P13705421705534992205

/-! ## A182447.P1733992363030200543

`A309010(eq[11, A004736(n+1)])`
-/

namespace A182447.P1733992363030200543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A182447.P1733992363030200543

/-! ## A182447.P9063385719253319187

`A309010(eq[11, A068049(n+1)])`
-/

namespace A182447.P9063385719253319187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A182447.P9063385719253319187

/-!
# A182449: The number of n-permutations whose connected components have the same size.

The programs for A182449, there is no canonical definition to state claims against.
-/

/-! ## A182449.P6225350443096618208

`A230980(A317366(n)+1)`
-/

namespace A182449.P6225350443096618208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A317366 n + 1).toNat

end

end A182449.P6225350443096618208

/-! ## A182449.P5305437091567456476

`A065770(2*A317366(n))`
-/

namespace A182449.P5305437091567456476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065770 (2 * A317366 n).toNat

end

end A182449.P5305437091567456476

/-!
# A182451: Numbers of A166252 which are not in A164554.

The programs for A182451, there is no canonical definition to state claims against.
-/

/-! ## A182451.P4982901094239307731

`p?[∑[A253182(A224146(n+1))]]`
-/

namespace A182451.P4982901094239307731
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253182 (A224146 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A182451.P4982901094239307731

/-!
# A182452: Numbers for which the sum of reciprocals of square of digits is an integer.

The programs for A182452, there is no canonical definition to state claims against.
-/

/-! ## A182452.P6944003700158780695

`record[A139337(∑[A190705(n)])]`
-/

namespace A182452.P6944003700158780695
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190705 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139337 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182452.P6944003700158780695

/-! ## A182452.P1416688981503628772

`record[A139337(C(n, 8))]`
-/

namespace A182452.P1416688981503628772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139337 (Nat.choose n 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182452.P1416688981503628772

/-!
# A182453: a(n) = 3^n - n*(n-1)/2.

The programs for A182453, the canonical program `A182453.P3853730721618291432` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182453 has offset 0).

The definition of A182453 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n-n*(n-1)/2` (program `A182453.P9913906711232211902`, by `A182453.P9913906711232211902.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A182453.P3853730721618291432

`3^n-C(n, 2)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A182453

/-- `3^n-C(n, 2)` -/
def P3853730721618291432.Spec : Prop :=
  ∀ n, P3853730721618291432.a n = A182453 n

theorem P3853730721618291432.correct : P3853730721618291432.Spec := by
  intro n
  simp only [A182453]

end A182453

/-! ## A182453.P9913906711232211902

`3^n-n*(n-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A182453.P9913906711232211902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℚ) - ((n : ℤ) * ((n : ℤ) - 1) : ℚ) / 2

end

end A182453.P9913906711232211902

namespace A182453

/-- `3^n-n*(n-1)/2` -/
def P9913906711232211902.Spec : Prop :=
  ∀ n, P9913906711232211902.a n = (A182453 n : ℚ)

theorem P9913906711232211902.correct : P9913906711232211902.Spec := by
  intro n
  simp only [A182453, Nat.add_sub_cancel, A182453.P9913906711232211902.a, A182453.P3853730721618291432.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A182453

/-! ## A182453.P10205414218561056576

`∑[∑[3*a(n-1)+2]]` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A182453.P10205414218561056576
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3] fun n f2 =>
  3 * f2 (n - 1) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182453.P10205414218561056576

namespace A182453

/-- `∑[∑[3*a(n-1)+2]]` -/
def P10205414218561056576.Spec : Prop :=
  ∀ n, (P10205414218561056576.a n : ℤ) = A182453 n

end A182453

/-! ## A182453.P11431401274162499022

`∑[∑[3*a(n-1)]-n]` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A182453.P11431401274162499022
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n f2 =>
  3 * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182453.P11431401274162499022

namespace A182453

/-- `∑[∑[3*a(n-1)]-n]` -/
def P11431401274162499022.Spec : Prop :=
  ∀ n, P11431401274162499022.a n = A182453 n

end A182453

/-! ## A182453.P4738497433845400037

`∑[A100702(n)-n]`
-/

namespace A182453.P4738497433845400037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100702 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182453.P4738497433845400037

namespace A182453

/-- `∑[A100702(n)-n]` -/
def P4738497433845400037.Spec : Prop :=
  ∀ n, P4738497433845400037.a n = A182453 n

end A182453

/-! ## A182453.P2127392510464929848

`abs(C(n, 2)-A000244(n))`
-/

namespace A182453.P2127392510464929848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose n 2 : ℤ) - A000244 n|

end

end A182453.P2127392510464929848

namespace A182453

/-- `abs(C(n, 2)-A000244(n))` -/
def P2127392510464929848.Spec : Prop :=
  ∀ n, P2127392510464929848.a n = A182453 n

end A182453

/-! ## A182453.P18344927826682786363

`∑[∑[A025579(n+1)]-n]`
-/

namespace A182453.P18344927826682786363
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025579 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182453.P18344927826682786363

namespace A182453

/-- `∑[∑[A025579(n+1)]-n]` -/
def P18344927826682786363.Spec : Prop :=
  ∀ n, P18344927826682786363.a n = A182453 n

end A182453

/-! ## A182453.P16883709820721002689

`Δ[A003462(n)-2-C(n, 3)]`
-/

namespace A182453.P16883709820721002689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n - 2 - (Nat.choose n 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182453.P16883709820721002689

namespace A182453

/-- `Δ[A003462(n)-2-C(n, 3)]` -/
def P16883709820721002689.Spec : Prop :=
  ∀ n, P16883709820721002689.a n = A182453 n

end A182453

/-! ## A182453.P16227830373875748606

`abs(A000244(n)-A161680(n))`
-/

namespace A182453.P16227830373875748606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000244 n - A161680 n|

end

end A182453.P16227830373875748606

namespace A182453

/-- `abs(A000244(n)-A161680(n))` -/
def P16227830373875748606.Spec : Prop :=
  ∀ n, P16227830373875748606.a n = A182453 n

end A182453

/-! ## A182453.P15776573798921059434

`∑[A094388(n)+∑[A154992(n)]]`
-/

namespace A182453.P15776573798921059434
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154992 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094388 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182453.P15776573798921059434

namespace A182453

/-- `∑[A094388(n)+∑[A154992(n)]]` -/
def P15776573798921059434.Spec : Prop :=
  ∀ n, P15776573798921059434.a n = A182453 n

end A182453

/-! ## A182453.P16105936079029275768

`abs(A000217(n)-A000244(n)-n)`
-/

namespace A182453.P16105936079029275768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000217 n - A000244 n - (n : ℤ)|

end

end A182453.P16105936079029275768

namespace A182453

/-- `abs(A000217(n)-A000244(n)-n)` -/
def P16105936079029275768.Spec : Prop :=
  ∀ n, P16105936079029275768.a n = A182453 n

end A182453

/-! ## A182453.P4308289530599616883

`record[A003056(n)+A140303(n)-n]`
-/

namespace A182453.P4308289530599616883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + (A140303 n - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182453.P4308289530599616883

namespace A182453

/-- `record[A003056(n)+A140303(n)-n]` -/
def P4308289530599616883.Spec : Prop :=
  ∀ n, P4308289530599616883.a n = A182453 n

end A182453

/-! ## A182453.P65385325491674481

`record[A003987(n)+A140303(n)-n]`
-/

namespace A182453.P65385325491674481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 n + (A140303 n - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182453.P65385325491674481

namespace A182453

/-- `record[A003987(n)+A140303(n)-n]` -/
def P65385325491674481.Spec : Prop :=
  ∀ n, P65385325491674481.a n = A182453 n

end A182453

/-! ## A182453.P15655876475391589311

`record[A025581(n)+A140303(n)-n]`
-/

namespace A182453.P15655876475391589311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + (A140303 n - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182453.P15655876475391589311

namespace A182453

/-- `record[A025581(n)+A140303(n)-n]` -/
def P15655876475391589311.Spec : Prop :=
  ∀ n, P15655876475391589311.a n = A182453 n

end A182453

/-! ## A182453.P1307501102642307380

`record[A003056(n)+A175840(n)-n]`
-/

namespace A182453.P1307501102642307380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + (A175840 n - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182453.P1307501102642307380

namespace A182453

/-- `record[A003056(n)+A175840(n)-n]` -/
def P1307501102642307380.Spec : Prop :=
  ∀ n, P1307501102642307380.a n = A182453 n

end A182453

/-!
# A182454: G.f. satisfies A(x) = 1 + x*A(x) + x^2*A(x)^5.

The programs for A182454, there is no canonical definition to state claims against.
-/

/-! ## A182454.P17114518638247087148

`A192455(n)-A028422(A049169(n))`
-/

namespace A182454.P17114518638247087148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192455 n - A028422 (A049169 n).toNat

end

end A182454.P17114518638247087148

/-! ## A182454.P9078009175105480720

`xor(A123070(A049169(n)), A309795(n))`
-/

namespace A182454.P9078009175105480720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A123070 (A049169 n).toNat) (A309795 n)

end

end A182454.P9078009175105480720

/-! ## A182454.P1895304876851238841

`A360003(A359998(n+1))+A192455(n)`
-/

namespace A182454.P1895304876851238841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360003 (A359998 (n + 1)).toNat + A192455 n

end

end A182454.P1895304876851238841

/-! ## A182454.P7267430379570314961

`A222238(A192455(n)-A321537(n+4))`
-/

namespace A182454.P7267430379570314961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222238 (A192455 n - A321537 (n + 4)).toNat

end

end A182454.P7267430379570314961

/-!
# A182455: a(0)=1, a(n) = (a(n-1) mod (n+2))*(n+2).

The programs for A182455, the canonical program `A182455.P18010224630768211006` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182455 has offset 0).

The definition of A182455 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)%(n+2)*(n+2)` (program `A182455.P18010224630768211006`, by `A182455.P18010224630768211006.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A182455.P18010224630768211006

`a(n-1)%(n+2)*(n+2)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A182455

/-- `a(n-1)%(n+2)*(n+2)` -/
def P18010224630768211006.Spec : Prop :=
  ∀ n, (P18010224630768211006.a n : ℤ) = A182455 n

theorem P18010224630768211006.correct : P18010224630768211006.Spec := by
  intro n
  simp only [A182455]

end A182455

/-! ## A182455.P494777908950229965

`(n+2)*(lcm(3, A280193(n))+n-2)/2`
-/

namespace A182455.P494777908950229965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * (((Int.lcm 3 (A280193 n) : ℤ) + ((n : ℤ) - 2) : ℚ) / 2)

end

end A182455.P494777908950229965

namespace A182455

/-- `(n+2)*(lcm(3, A280193(n))+n-2)/2` -/
def P494777908950229965.Spec : Prop :=
  ∀ n, P494777908950229965.a n = (A182455 n : ℚ)

end A182455

/-! ## A182455.P13616853152981749316

`A266594(n)+A195159(n)`
-/

namespace A182455.P13616853152981749316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266594 n + A195159 n

end

end A182455.P13616853152981749316

namespace A182455

/-- `A266594(n)+A195159(n)` -/
def P13616853152981749316.Spec : Prop :=
  ∀ n, P13616853152981749316.a n = A182455 n

end A182455

/-! ## A182455.P14198092116102549755

`A325689(n)+A298028(n)`
-/

namespace A182455.P14198092116102549755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325689 n + A298028 n

end

end A182455.P14198092116102549755

namespace A182455

/-- `A325689(n)+A298028(n)` -/
def P14198092116102549755.Spec : Prop :=
  ∀ n, P14198092116102549755.a n = A182455 n

end A182455

/-! ## A182455.P12798228068405886708

`A198442(n+2)+Δ[A035106(n+1)]²`
-/

namespace A182455.P12798228068405886708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035106 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198442 (n + 2) + (f1 (n + 1) - f1 n) ^ 2

end

end A182455.P12798228068405886708

namespace A182455

/-- `A198442(n+2)+Δ[A035106(n+1)]²` -/
def P12798228068405886708.Spec : Prop :=
  ∀ n, P12798228068405886708.a n = A182455 n

end A182455

/-! ## A182455.P165786534368370609

`∑[A028242(n+1)]+Δ[A035106(n+1)]²`
-/

namespace A182455.P165786534368370609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035106 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (f2 (n + 1) - f2 n) ^ 2

end

end A182455.P165786534368370609

namespace A182455

/-- `∑[A028242(n+1)]+Δ[A035106(n+1)]²` -/
def P165786534368370609.Spec : Prop :=
  ∀ n, P165786534368370609.a n = A182455 n

end A182455

/-! ## A182455.P9288063342617040549

`A052938(n+1)*A266977(2*n)-(n+2)`
-/

namespace A182455.P9288063342617040549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (n + 1) * A266977 (2 * n) - (n + 2 : ℤ)

end

end A182455.P9288063342617040549

namespace A182455

/-- `A052938(n+1)*A266977(2*n)-(n+2)` -/
def P9288063342617040549.Spec : Prop :=
  ∀ n, P9288063342617040549.a n = A182455 n

end A182455

/-! ## A182455.P1777989230793699474

`(A266977(2*n)-A028242(n+1))*A266977(2*n)`
-/

namespace A182455.P1777989230793699474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A266977 (2 * n) - A028242 (n + 1)) * A266977 (2 * n)

end

end A182455.P1777989230793699474

namespace A182455

/-- `(A266977(2*n)-A028242(n+1))*A266977(2*n)` -/
def P1777989230793699474.Spec : Prop :=
  ∀ n, P1777989230793699474.a n = A182455 n

end A182455

/-! ## A182455.P17987845284667326048

`A052938(A289207(2*n+1))*A052938(A289207(n+1))`
-/

namespace A182455.P17987845284667326048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A289207 (2 * n + 1)).toNat * A052938 (A289207 (n + 1)).toNat

end

end A182455.P17987845284667326048

namespace A182455

/-- `A052938(A289207(2*n+1))*A052938(A289207(n+1))` -/
def P17987845284667326048.Spec : Prop :=
  ∀ n, P17987845284667326048.a n = A182455 n

end A182455

/-! ## A182455.P3585184817645051897

`A116942(A211394(A074147(A116942(A000982(n+1)))))`
-/

namespace A182455.P3585184817645051897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116942 (A211394 (A074147 (A116942 (A000982 (n + 1)).toNat).toNat).toNat).toNat

end

end A182455.P3585184817645051897

namespace A182455

/-- `A116942(A211394(A074147(A116942(A000982(n+1)))))` -/
def P3585184817645051897.Spec : Prop :=
  ∀ n, P3585184817645051897.a n = A182455 n

end A182455

/-! ## A182455.P10290279307934656247

`A211394(A105638(n+4))`
-/

namespace A182455.P10290279307934656247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211394 (A105638 (n + 4)).toNat

end

end A182455.P10290279307934656247

namespace A182455

/-- `A211394(A105638(n+4))` -/
def P10290279307934656247.Spec : Prop :=
  ∀ n, P10290279307934656247.a n = A182455 n

end A182455

/-! ## A182455.P12084373845898895897

`A211394(A199855(A034856(n+1)))`
-/

namespace A182455.P12084373845898895897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211394 (A199855 (A034856 (n + 1)).toNat).toNat

end

end A182455.P12084373845898895897

namespace A182455

/-- `A211394(A199855(A034856(n+1)))` -/
def P12084373845898895897.Spec : Prop :=
  ∀ n, P12084373845898895897.a n = A182455 n

end A182455

/-!
# A182456: a(0)=1; for n>0, a(n) = ( a(n-1) mod (n+3) )*(n+3).

The programs for A182456, the canonical program `A182456.P13366469680829131667` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182456 has offset 0).

The definition of A182456 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)%(n+3)*(n+3)` (program `A182456.P13366469680829131667`, by `A182456.P13366469680829131667.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A182456.P13366469680829131667

`a(n-1)%(n+3)*(n+3)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A182456

/-- `a(n-1)%(n+3)*(n+3)` -/
def P13366469680829131667.Spec : Prop :=
  ∀ n, (P13366469680829131667.a n : ℤ) = A182456 n

theorem P13366469680829131667.correct : P13366469680829131667.Spec := by
  intro n
  simp only [A182456]

end A182456

/-! ## A182456.P5939411249840366582

`(n+3)*gcd(a(n-1)+2*n, ∑[n+3])` with `a(0)=1`
-/

namespace A182456.P5939411249840366582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 3) * Nat.gcd (a (n - 1) + 2 * n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A182456.P5939411249840366582

namespace A182456

/-- `(n+3)*gcd(a(n-1)+2*n, ∑[n+3])` -/
def P5939411249840366582.Spec : Prop :=
  ∀ n, (P5939411249840366582.a n : ℤ) = A182456 n

end A182456

/-! ## A182456.P8596236868291834914

`A181762(A087156(n+1))+∑[n+1]`
-/

namespace A182456.P8596236868291834914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181762 (A087156 (n + 1)).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A182456.P8596236868291834914

namespace A182456

/-- `A181762(A087156(n+1))+∑[n+1]` -/
def P8596236868291834914.Spec : Prop :=
  ∀ n, P8596236868291834914.a n = A182456 n

end A182456

/-! ## A182456.P6716920302600829334

`∑[n+1]+A181762(n+1)%A000537(n+1)`
-/

namespace A182456.P6716920302600829334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + Int.tmod (A181762 (n + 1)) (A000537 (n + 1))

end

end A182456.P6716920302600829334

namespace A182456

/-- `∑[n+1]+A181762(n+1)%A000537(n+1)` -/
def P6716920302600829334.Spec : Prop :=
  ∀ n, P6716920302600829334.a n = A182456 n

end A182456

/-! ## A182456.P3665021260122349454

`(A004442(n+2)*(A028242(n)+2))%A000578(n+2)`
-/

namespace A182456.P3665021260122349454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004442 (n + 2) * (A028242 n + 2)) (A000578 (n + 2))

end

end A182456.P3665021260122349454

namespace A182456

/-- `(A004442(n+2)*(A028242(n)+2))%A000578(n+2)` -/
def P3665021260122349454.Spec : Prop :=
  ∀ n, P3665021260122349454.a n = A182456 n

end A182456

/-! ## A182456.P4186726227785403051

`A079904(A245578(n+2)+1)`
-/

namespace A182456.P4186726227785403051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079904 (A245578 (n + 2) + 1).toNat

end

end A182456.P4186726227785403051

namespace A182456

/-- `A079904(A245578(n+2)+1)` -/
def P4186726227785403051.Spec : Prop :=
  ∀ n, P4186726227785403051.a n = A182456 n

end A182456

/-!
# A182457: a(0)=0, a(1)=1, a(n) = (a(n-2)*a(n-1)+1) mod n.

The programs for A182457, the canonical program `A182457.P203366897692703198` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182457 has offset 0).

The definition of A182457 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182457.P203366897692703198

`(a(n-1)*a(n-2)+1)%n` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A182457

/-- `(a(n-1)*a(n-2)+1)%n` -/
def P203366897692703198.Spec : Prop :=
  ∀ n, (P203366897692703198.a n : ℤ) = A182457 n

theorem P203366897692703198.correct : P203366897692703198.Spec := by
  intro n
  simp only [A182457]

end A182457

/-! ## A182457.P3174031834745214109

`(1-ceil(-a(n-1))*a(n-2))%n` with `a(0)=0, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A182457.P3174031834745214109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.tmod (1 - (-a (n - 1)) * a (n - 2)) (n : ℤ)

end

end A182457.P3174031834745214109

namespace A182457

/-- `(1-ceil(-a(n-1))*a(n-2))%n` -/
def P3174031834745214109.Spec : Prop :=
  ∀ n, P3174031834745214109.a n = A182457 n

end A182457

/-! ## A182457.P4956901799761858598

`(1-round(-a(n-1))*a(n-2))%n` with `a(0)=0, a(1)=1`

`round` is left out, it is the identity on integers.
-/

namespace A182457.P4956901799761858598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.tmod (1 - (-a (n - 1)) * a (n - 2)) (n : ℤ)

end

end A182457.P4956901799761858598

namespace A182457

/-- `(1-round(-a(n-1))*a(n-2))%n` -/
def P4956901799761858598.Spec : Prop :=
  ∀ n, P4956901799761858598.a n = A182457 n

end A182457

/-! ## A182457.P11897327983224149666

`-(xor(a(n-1)*a(n-2), -1)%n)` with `a(0)=0, a(1)=1`
-/

namespace A182457.P11897327983224149666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  -Int.tmod (Int.xor (a (n - 1) * a (n - 2)) (-1)) (n : ℤ)

end

end A182457.P11897327983224149666

namespace A182457

/-- `-(xor(a(n-1)*a(n-2), -1)%n)` -/
def P11897327983224149666.Spec : Prop :=
  ∀ n, P11897327983224149666.a n = A182457 n

end A182457

/-! ## A182457.P7031075720589441894

`(1--(a(n-1)*a(n-2))%n)%n` with `a(0)=0, a(1)=1`
-/

namespace A182457.P7031075720589441894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.tmod (1 - Int.tmod (-(a (n - 1) * a (n - 2))) (n : ℤ)) (n : ℤ)

end

end A182457.P7031075720589441894

namespace A182457

/-- `(1--(a(n-1)*a(n-2))%n)%n` -/
def P7031075720589441894.Spec : Prop :=
  ∀ n, P7031075720589441894.a n = A182457 n

end A182457

/-!
# A182458: a(0)=1, a(1)=2, a(n) = (a(n-2)*a(n-1)+1) mod n.

The programs for A182458, the canonical program `A182458.P12201541303761624501` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182458 has offset 0).

The definition of A182458 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182458.P12201541303761624501

`(a(n-1)*a(n-2)+1)%n` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A182458

/-- `(a(n-1)*a(n-2)+1)%n` -/
def P12201541303761624501.Spec : Prop :=
  ∀ n, (P12201541303761624501.a n : ℤ) = A182458 n

theorem P12201541303761624501.correct : P12201541303761624501.Spec := by
  intro n
  simp only [A182458]

end A182458

/-! ## A182458.P12606723732688734554

`(1-ceil(-a(n-1))*a(n-2))%n` with `a(0)=1, a(1)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A182458.P12606723732688734554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.tmod (1 - (-a (n - 1)) * a (n - 2)) (n : ℤ)

end

end A182458.P12606723732688734554

namespace A182458

/-- `(1-ceil(-a(n-1))*a(n-2))%n` -/
def P12606723732688734554.Spec : Prop :=
  ∀ n, P12606723732688734554.a n = A182458 n

end A182458

/-! ## A182458.P15378509680846879100

`(1-round(-a(n-1))*a(n-2))%n` with `a(0)=1, a(1)=2`

`round` is left out, it is the identity on integers.
-/

namespace A182458.P15378509680846879100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.tmod (1 - (-a (n - 1)) * a (n - 2)) (n : ℤ)

end

end A182458.P15378509680846879100

namespace A182458

/-- `(1-round(-a(n-1))*a(n-2))%n` -/
def P15378509680846879100.Spec : Prop :=
  ∀ n, P15378509680846879100.a n = A182458 n

end A182458

/-! ## A182458.P10252319698016120719

`-(xor(a(n-1)*a(n-2), -1)%n)` with `a(0)=1, a(1)=2`
-/

namespace A182458.P10252319698016120719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  -Int.tmod (Int.xor (a (n - 1) * a (n - 2)) (-1)) (n : ℤ)

end

end A182458.P10252319698016120719

namespace A182458

/-- `-(xor(a(n-1)*a(n-2), -1)%n)` -/
def P10252319698016120719.Spec : Prop :=
  ∀ n, P10252319698016120719.a n = A182458 n

end A182458

/-! ## A182458.P14446457301458198556

`(1--(a(n-1)*a(n-2))%n)%n` with `a(0)=1, a(1)=2`
-/

namespace A182458.P14446457301458198556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.tmod (1 - Int.tmod (-(a (n - 1) * a (n - 2))) (n : ℤ)) (n : ℤ)

end

end A182458.P14446457301458198556

namespace A182458

/-- `(1--(a(n-1)*a(n-2))%n)%n` -/
def P14446457301458198556.Spec : Prop :=
  ∀ n, P14446457301458198556.a n = A182458 n

end A182458

/-!
# A182459: a(n) is the number of initial persons such that the n-th person survives in the duck-duck-goose game.

The programs for A182459, the canonical program `A182459.P10129799007268171558` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182459 has offset 1).

The definition of A182459 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A081615, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A182459.P10129799007268171558

`A081615(n+1)-1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A182459

/-- `A081615(n+1)-1` -/
def P10129799007268171558.Spec : Prop :=
  ∀ n, P10129799007268171558.a n = A182459 (n + 1)

theorem P10129799007268171558.correct : P10129799007268171558.Spec := by
  intro n
  simp only [A182459, Nat.add_sub_cancel]

end A182459

/-! ## A182459.P4868126971592246376

`∑[abs(Δ[A081615(n)])]`
-/

namespace A182459.P4868126971592246376
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081615 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182459.P4868126971592246376

namespace A182459

/-- `∑[abs(Δ[A081615(n)])]` -/
def P4868126971592246376.Spec : Prop :=
  ∀ n, P4868126971592246376.a n = A182459 (n + 1)

end A182459

/-! ## A182459.P7905144660577503294

`∑[A033999(n)²*Δ[A081615(n)]]`
-/

namespace A182459.P7905144660577503294
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081615 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182459.P7905144660577503294

namespace A182459

/-- `∑[A033999(n)²*Δ[A081615(n)]]` -/
def P7905144660577503294.Spec : Prop :=
  ∀ n, P7905144660577503294.a n = A182459 (n + 1)

end A182459

/-! ## A182459.P9270457918035952016

`∑[Δ[A081615(n)]+A008683(8*(n+1))]`
-/

namespace A182459.P9270457918035952016
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081615 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + A008683 (8 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182459.P9270457918035952016

namespace A182459

/-- `∑[Δ[A081615(n)]+A008683(8*(n+1))]` -/
def P9270457918035952016.Spec : Prop :=
  ∀ n, P9270457918035952016.a n = A182459 (n + 1)

end A182459

/-! ## A182459.P2031366758297652207

`∑[A000027(Δ[A081615(n)])]`
-/

namespace A182459.P2031366758297652207
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081615 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182459.P2031366758297652207

namespace A182459

/-- `∑[A000027(Δ[A081615(n)])]` -/
def P2031366758297652207.Spec : Prop :=
  ∀ n, P2031366758297652207.a n = A182459 (n + 1)

end A182459

/-!
# A182460: a(n) = (3/5)*2^(4n+1) - (1/5).

The programs for A182460, the canonical program `A182460.P13916727926245849058` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182460 has offset 0).

The definition of A182460 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3/5*2^(4*n+1)-1/5` (program `A182460.P13275697515348859351`, by `A182460.P13275697515348859351.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A182460.P13916727926245849058

`16*a(n-1)+3` with `a(0)=1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A182460

/-- `16*a(n-1)+3` -/
def P13916727926245849058.Spec : Prop :=
  ∀ n, (P13916727926245849058.a n : ℤ) = A182460 n

theorem P13916727926245849058.correct : P13916727926245849058.Spec := by
  intro n
  simp only [A182460]

end A182460

/-! ## A182460.P13275697515348859351

`3/5*2^(4*n+1)-1/5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A182460.P13275697515348859351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 5 * (2 ^ (4 * n + 1) : ℚ) - (1 : ℚ) / 5

end

end A182460.P13275697515348859351

namespace A182460

/-- `3/5*2^(4*n+1)-1/5` -/
def P13275697515348859351.Spec : Prop :=
  ∀ n, P13275697515348859351.a n = (A182460 n : ℚ)

theorem P13275697515348859351.correct : P13275697515348859351.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A182460, Nat.add_sub_cancel, A182460.P13275697515348859351.a, A182460.P13916727926245849058.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A182460, Nat.add_sub_cancel, A182460.P13275697515348859351.a, A182460.P13916727926245849058.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A182460

/-! ## A182460.P17209084895518245297

`A112627(2*n+1)`
-/

namespace A182460.P17209084895518245297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112627 (2 * n + 1)

end

end A182460.P17209084895518245297

namespace A182460

/-- `A112627(2*n+1)` -/
def P17209084895518245297.Spec : Prop :=
  ∀ n, P17209084895518245297.a n = A182460 n

end A182460

/-! ## A182460.P5624885794919260573

`A016029(4*n+2)`
-/

namespace A182460.P5624885794919260573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016029 (4 * n + 2)

end

end A182460.P5624885794919260573

namespace A182460

/-- `A016029(4*n+2)` -/
def P5624885794919260573.Spec : Prop :=
  ∀ n, P5624885794919260573.a n = A182460 n

end A182460

/-! ## A182460.P14555904258324354293

`1/5*A153893(4*n+1)`
-/

namespace A182460.P14555904258324354293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 5 * (A153893 (4 * n + 1) : ℚ)

end

end A182460.P14555904258324354293

namespace A182460

/-- `1/5*A153893(4*n+1)` -/
def P14555904258324354293.Spec : Prop :=
  ∀ n, P14555904258324354293.a n = (A182460 n : ℚ)

end A182460

/-! ## A182460.P16239546532409781698

`ogf((1+2x)/(1-17x+16x^2))`
-/

namespace A182460.P16239546532409781698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -17, 16] n

end

end A182460.P16239546532409781698

namespace A182460

/-- `ogf((1+2x)/(1-17x+16x^2))` -/
def P16239546532409781698.Spec : Prop :=
  ∀ n, P16239546532409781698.a n = A182460 n

end A182460

/-! ## A182460.P5631463492403220976

`or(3, 16*a(n-1))` with `a(0)=1`
-/

namespace A182460.P5631463492403220976
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor 3 (16 * a (n - 1))

end

end A182460.P5631463492403220976

namespace A182460

/-- `or(3, 16*a(n-1))` -/
def P5631463492403220976.Spec : Prop :=
  ∀ n, (P5631463492403220976.a n : ℤ) = A182460 n

end A182460

/-! ## A182460.P5707850306093988466

`xor(3, 16*a(n-1))` with `a(0)=1`
-/

namespace A182460.P5707850306093988466
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 3 (16 * a (n - 1))

end

end A182460.P5707850306093988466

namespace A182460

/-- `xor(3, 16*a(n-1))` -/
def P5707850306093988466.Spec : Prop :=
  ∀ n, (P5707850306093988466.a n : ℤ) = A182460 n

end A182460

/-! ## A182460.P16658133417582879399

`∑[16*a(n-1)]` with `a(0)=1, a(1)=18`
-/

namespace A182460.P16658133417582879399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 18] fun n f1 =>
  16 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182460.P16658133417582879399

namespace A182460

/-- `∑[16*a(n-1)]` -/
def P16658133417582879399.Spec : Prop :=
  ∀ n, (P16658133417582879399.a n : ℤ) = A182460 n

end A182460

/-! ## A182460.P2289715384578165441

`A108981(2*n)`
-/

namespace A182460.P2289715384578165441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108981 (2 * n)

end

end A182460.P2289715384578165441

namespace A182460

/-- `A108981(2*n)` -/
def P2289715384578165441.Spec : Prop :=
  ∀ n, P2289715384578165441.a n = A182460 n

end A182460

/-!
# A182461: a(n) = 3*a(n-1) - 2*a(n-2) with a(0)=16 and a(1)=40.

The programs for A182461, the canonical program `A182461.P6909254730065653901` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182461 has offset 0).

The definition of A182461 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-2*a(n-2)` (program `A182461.P6909254730065653901`, by `A182461.P6909254730065653901.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A182461.P11991150476718175818

`24*2^n-8`
-/

namespace A182461.P11991150476718175818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (24 * 2 ^ n : ℤ) - 8

end

end A182461.P11991150476718175818

namespace A182461

/-- `24*2^n-8` -/
def P11991150476718175818.Spec : Prop :=
  ∀ n, P11991150476718175818.a n = A182461 n

theorem P11991150476718175818.correct : P11991150476718175818.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A182461, Nat.add_sub_cancel, A182461.P11991150476718175818.a, A182461.P6909254730065653901.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A182461, Nat.add_sub_cancel, A182461.P11991150476718175818.a, A182461.P6909254730065653901.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A182461

/-! ## A182461.P6909254730065653901

`3*a(n-1)-2*a(n-2)` with `a(0)=16, a(1)=40`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A182461

/-- `3*a(n-1)-2*a(n-2)` -/
def P6909254730065653901.Spec : Prop :=
  ∀ n, P6909254730065653901.a n = A182461 n

theorem P6909254730065653901.correct : P6909254730065653901.Spec := by
  intro n
  simp only [A182461]

end A182461

/-! ## A182461.P5862427163088631047

`4*A033484(n+1)`
-/

namespace A182461.P5862427163088631047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A033484 (n + 1)

end

end A182461.P5862427163088631047

namespace A182461

/-- `4*A033484(n+1)` -/
def P5862427163088631047.Spec : Prop :=
  ∀ n, P5862427163088631047.a n = A182461 n

end A182461

/-! ## A182461.P17432721143769043394

`8*A055010(n+1)`
-/

namespace A182461.P17432721143769043394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A055010 (n + 1)

end

end A182461.P17432721143769043394

namespace A182461

/-- `8*A055010(n+1)` -/
def P17432721143769043394.Spec : Prop :=
  ∀ n, P17432721143769043394.a n = A182461 n

end A182461

/-! ## A182461.P9038019924103246989

`ogf((16-8x)/(1-3x+2x^2))`
-/

namespace A182461.P9038019924103246989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [16, -8] [1, -3, 2] n

end

end A182461.P9038019924103246989

namespace A182461

/-- `ogf((16-8x)/(1-3x+2x^2))` -/
def P9038019924103246989.Spec : Prop :=
  ∀ n, P9038019924103246989.a n = A182461 n

end A182461

/-! ## A182461.P16269085118847846522

`2*(a(n-1)+4)` with `a(0)=16`
-/

namespace A182461.P16269085118847846522
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [16] fun n a =>
  2 * (a (n - 1) + 4)

end

end A182461.P16269085118847846522

namespace A182461

/-- `2*(a(n-1)+4)` -/
def P16269085118847846522.Spec : Prop :=
  ∀ n, (P16269085118847846522.a n : ℤ) = A182461 n

end A182461

/-! ## A182461.P2763854772013335412

`∑[2*a(n-1)]` with `a(0)=16, a(1)=24`
-/

namespace A182461.P2763854772013335412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [16, 24] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182461.P2763854772013335412

namespace A182461

/-- `∑[2*a(n-1)]` -/
def P2763854772013335412.Spec : Prop :=
  ∀ n, (P2763854772013335412.a n : ℤ) = A182461 n

end A182461

/-! ## A182461.P12210640620752383165

`floor(a(n-1)+a(n-1)+8)` with `a(0)=16`

`floor` is left out, it is the identity on integers.
-/

namespace A182461.P12210640620752383165
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [16] fun n a =>
  a (n - 1) + (a (n - 1) + 8)

end

end A182461.P12210640620752383165

namespace A182461

/-- `floor(a(n-1)+a(n-1)+8)` -/
def P12210640620752383165.Spec : Prop :=
  ∀ n, (P12210640620752383165.a n : ℤ) = A182461 n

end A182461

/-! ## A182461.P11637912400124018718

`8*A153893(n)`
-/

namespace A182461.P11637912400124018718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A153893 n

end

end A182461.P11637912400124018718

namespace A182461

/-- `8*A153893(n)` -/
def P11637912400124018718.Spec : Prop :=
  ∀ n, P11637912400124018718.a n = A182461 n

end A182461

/-! ## A182461.P4229689389787485430

`4*Δ[A142964(n)]`
-/

namespace A182461.P4229689389787485430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142964 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (f1 (n + 1) - f1 n)

end

end A182461.P4229689389787485430

namespace A182461

/-- `4*Δ[A142964(n)]` -/
def P4229689389787485430.Spec : Prop :=
  ∀ n, P4229689389787485430.a n = A182461 n

end A182461

/-! ## A182461.P6117310319600752572

`2*A131128(n+2)`
-/

namespace A182461.P6117310319600752572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131128 (n + 2)

end

end A182461.P6117310319600752572

namespace A182461

/-- `2*A131128(n+2)` -/
def P6117310319600752572.Spec : Prop :=
  ∀ n, P6117310319600752572.a n = A182461 n

end A182461

/-! ## A182461.P11528230569976194575

`2*A296954(n+3)`
-/

namespace A182461.P11528230569976194575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A296954 (n + 3)

end

end A182461.P11528230569976194575

namespace A182461

/-- `2*A296954(n+3)` -/
def P11528230569976194575.Spec : Prop :=
  ∀ n, P11528230569976194575.a n = A182461 n

end A182461

/-! ## A182461.P17093386155580302973

`4*A296953(n+2)`
-/

namespace A182461.P17093386155580302973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A296953 (n + 2)

end

end A182461.P17093386155580302973

namespace A182461

/-- `4*A296953(n+2)` -/
def P17093386155580302973.Spec : Prop :=
  ∀ n, P17093386155580302973.a n = A182461 n

end A182461

/-! ## A182461.P625719583688629948

`4*A369491(n+2)`
-/

namespace A182461.P625719583688629948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A369491 (n + 2)

end

end A182461.P625719583688629948

namespace A182461

/-- `4*A369491(n+2)` -/
def P625719583688629948.Spec : Prop :=
  ∀ n, P625719583688629948.a n = A182461 n

end A182461

/-! ## A182461.P10115656100377382830

`4*(A048488(n)+3)`
-/

namespace A182461.P10115656100377382830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A048488 n + 3)

end

end A182461.P10115656100377382830

namespace A182461

/-- `4*(A048488(n)+3)` -/
def P10115656100377382830.Spec : Prop :=
  ∀ n, P10115656100377382830.a n = A182461 n

end A182461

/-! ## A182461.P7460960176875854581

`2/3*A182464(n)`
-/

namespace A182461.P7460960176875854581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A182464 n : ℚ)

end

end A182461.P7460960176875854581

namespace A182461

/-- `2/3*A182464(n)` -/
def P7460960176875854581.Spec : Prop :=
  ∀ n, P7460960176875854581.a n = (A182461 n : ℚ)

end A182461

/-! ## A182461.P7700406109901312438

`8*A083329(n+1)`
-/

namespace A182461.P7700406109901312438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A083329 (n + 1)

end

end A182461.P7700406109901312438

namespace A182461

/-- `8*A083329(n+1)` -/
def P7700406109901312438.Spec : Prop :=
  ∀ n, P7700406109901312438.a n = A182461 n

end A182461

/-! ## A182461.P4507056581761027579

`8*(A007283(n)-1)`
-/

namespace A182461.P4507056581761027579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (A007283 n - 1)

end

end A182461.P4507056581761027579

namespace A182461

/-- `8*(A007283(n)-1)` -/
def P4507056581761027579.Spec : Prop :=
  ∀ n, P4507056581761027579.a n = A182461 n

end A182461

/-! ## A182461.P8381243989654581209

`8*A266550(n+3)`
-/

namespace A182461.P8381243989654581209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A266550 (n + 3)

end

end A182461.P8381243989654581209

namespace A182461

/-- `8*A266550(n+3)` -/
def P8381243989654581209.Spec : Prop :=
  ∀ n, P8381243989654581209.a n = A182461 n

end A182461

/-! ## A182461.P13768649718304190040

`4/5*A182462(n)`
-/

namespace A182461.P13768649718304190040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 5 * (A182462 n : ℚ)

end

end A182461.P13768649718304190040

namespace A182461

/-- `4/5*A182462(n)` -/
def P13768649718304190040.Spec : Prop :=
  ∀ n, P13768649718304190040.a n = (A182461 n : ℚ)

end A182461

/-!
# A182462: a(n) = 3*a(n-1) - 2*a(n-2) with a(0)=20 and a(1)=50.

The programs for A182462, the canonical program `A182462.P15521287667806192738` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182462 has offset 0).

The definition of A182462 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-2*a(n-2)` (program `A182462.P15521287667806192738`, by `A182462.P15521287667806192738.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A182462.P11216789909362488000

`30*2^n-10`
-/

namespace A182462.P11216789909362488000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (30 * 2 ^ n : ℤ) - 10

end

end A182462.P11216789909362488000

namespace A182462

/-- `30*2^n-10` -/
def P11216789909362488000.Spec : Prop :=
  ∀ n, P11216789909362488000.a n = A182462 n

theorem P11216789909362488000.correct : P11216789909362488000.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A182462, Nat.add_sub_cancel, A182462.P11216789909362488000.a, A182462.P15521287667806192738.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A182462, Nat.add_sub_cancel, A182462.P11216789909362488000.a, A182462.P15521287667806192738.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A182462

/-! ## A182462.P6840888570424563777

`10*A153893(n)`
-/

namespace A182462.P6840888570424563777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A153893 n

end

end A182462.P6840888570424563777

namespace A182462

/-- `10*A153893(n)` -/
def P6840888570424563777.Spec : Prop :=
  ∀ n, P6840888570424563777.a n = A182462 n

end A182462

/-! ## A182462.P9854057598077434668

`5*A033484(n+1)`
-/

namespace A182462.P9854057598077434668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A033484 (n + 1)

end

end A182462.P9854057598077434668

namespace A182462

/-- `5*A033484(n+1)` -/
def P9854057598077434668.Spec : Prop :=
  ∀ n, P9854057598077434668.a n = A182462 n

end A182462

/-! ## A182462.P15521287667806192738

`3*a(n-1)-2*a(n-2)` with `a(0)=20, a(1)=50`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A182462

/-- `3*a(n-1)-2*a(n-2)` -/
def P15521287667806192738.Spec : Prop :=
  ∀ n, P15521287667806192738.a n = A182462 n

theorem P15521287667806192738.correct : P15521287667806192738.Spec := by
  intro n
  simp only [A182462]

end A182462

/-! ## A182462.P2030536461173807488

`ogf((20-10x)/(1-3x+2x^2))`
-/

namespace A182462.P2030536461173807488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [20, -10] [1, -3, 2] n

end

end A182462.P2030536461173807488

namespace A182462

/-- `ogf((20-10x)/(1-3x+2x^2))` -/
def P2030536461173807488.Spec : Prop :=
  ∀ n, P2030536461173807488.a n = A182462 n

end A182462

/-! ## A182462.P2034337323462221582

`∑[2*a(n-1)]` with `a(0)=20, a(1)=30`
-/

namespace A182462.P2034337323462221582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [20, 30] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182462.P2034337323462221582

namespace A182462

/-- `∑[2*a(n-1)]` -/
def P2034337323462221582.Spec : Prop :=
  ∀ n, (P2034337323462221582.a n : ℤ) = A182462 n

end A182462

/-! ## A182462.P10885704808264275450

`floor(a(n-1)+a(n-1)+10)` with `a(0)=20`

`floor` is left out, it is the identity on integers.
-/

namespace A182462.P10885704808264275450
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [20] fun n a =>
  a (n - 1) + (a (n - 1) + 10)

end

end A182462.P10885704808264275450

namespace A182462

/-- `floor(a(n-1)+a(n-1)+10)` -/
def P10885704808264275450.Spec : Prop :=
  ∀ n, (P10885704808264275450.a n : ℤ) = A182462 n

end A182462

/-! ## A182462.P7621142236870130529

`5*Δ[A142964(n)]`
-/

namespace A182462.P7621142236870130529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142964 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (f1 (n + 1) - f1 n)

end

end A182462.P7621142236870130529

namespace A182462

/-- `5*Δ[A142964(n)]` -/
def P7621142236870130529.Spec : Prop :=
  ∀ n, P7621142236870130529.a n = A182462 n

end A182462

/-! ## A182462.P10567198862041470938

`∑[10*A042950(n)]`
-/

namespace A182462.P10567198862041470938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A042950 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182462.P10567198862041470938

namespace A182462

/-- `∑[10*A042950(n)]` -/
def P10567198862041470938.Spec : Prop :=
  ∀ n, P10567198862041470938.a n = A182462 n

end A182462

/-! ## A182462.P14829027583195318456

`2*(A196305(n)-4)`
-/

namespace A182462.P14829027583195318456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A196305 n - 4)

end

end A182462.P14829027583195318456

namespace A182462

/-- `2*(A196305(n)-4)` -/
def P14829027583195318456.Spec : Prop :=
  ∀ n, P14829027583195318456.a n = A182462 n

end A182462

/-! ## A182462.P16112135965320866731

`5*A296953(n+2)`
-/

namespace A182462.P16112135965320866731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A296953 (n + 2)

end

end A182462.P16112135965320866731

namespace A182462

/-- `5*A296953(n+2)` -/
def P16112135965320866731.Spec : Prop :=
  ∀ n, P16112135965320866731.a n = A182462 n

end A182462

/-! ## A182462.P6497983743418120115

`5*A369491(n+2)`
-/

namespace A182462.P6497983743418120115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A369491 (n + 2)

end

end A182462.P6497983743418120115

namespace A182462

/-- `5*A369491(n+2)` -/
def P6497983743418120115.Spec : Prop :=
  ∀ n, P6497983743418120115.a n = A182462 n

end A182462

/-! ## A182462.P9209639147923404319

`5*(A048488(n)+3)`
-/

namespace A182462.P9209639147923404319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A048488 n + 3)

end

end A182462.P9209639147923404319

namespace A182462

/-- `5*(A048488(n)+3)` -/
def P9209639147923404319.Spec : Prop :=
  ∀ n, P9209639147923404319.a n = A182462 n

end A182462

/-! ## A182462.P13189305707639401789

`2*(A110286(n)-5)`
-/

namespace A182462.P13189305707639401789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A110286 n - 5)

end

end A182462.P13189305707639401789

namespace A182462

/-- `2*(A110286(n)-5)` -/
def P13189305707639401789.Spec : Prop :=
  ∀ n, P13189305707639401789.a n = A182462 n

end A182462

/-! ## A182462.P14909784157738636330

`5/4*A182461(n)`
-/

namespace A182462.P14909784157738636330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 4 * (A182461 n : ℚ)

end

end A182462.P14909784157738636330

namespace A182462

/-- `5/4*A182461(n)` -/
def P14909784157738636330.Spec : Prop :=
  ∀ n, P14909784157738636330.a n = (A182462 n : ℚ)

end A182462

/-! ## A182462.P647953174593342855

`∑[5*A058764(n+1)]`
-/

namespace A182462.P647953174593342855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A058764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182462.P647953174593342855

namespace A182462

/-- `∑[5*A058764(n+1)]` -/
def P647953174593342855.Spec : Prop :=
  ∀ n, P647953174593342855.a n = A182462 n

end A182462

/-! ## A182462.P18312462337212529719

`5*Δ[A050488(n+1)]`
-/

namespace A182462.P18312462337212529719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050488 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (f1 (n + 1) - f1 n)

end

end A182462.P18312462337212529719

namespace A182462

/-- `5*Δ[A050488(n+1)]` -/
def P18312462337212529719.Spec : Prop :=
  ∀ n, P18312462337212529719.a n = A182462 n

end A182462

/-! ## A182462.P13583540078342894468

`5*Δ[A097813(n+1)]`
-/

namespace A182462.P13583540078342894468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (f1 (n + 1) - f1 n)

end

end A182462.P13583540078342894468

namespace A182462

/-- `5*Δ[A097813(n+1)]` -/
def P13583540078342894468.Spec : Prop :=
  ∀ n, P13583540078342894468.a n = A182462 n

end A182462

/-! ## A182462.P18021536012778351116

`∑[5*A087009(n+3)]`
-/

namespace A182462.P18021536012778351116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A087009 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182462.P18021536012778351116

namespace A182462

/-- `∑[5*A087009(n+3)]` -/
def P18021536012778351116.Spec : Prop :=
  ∀ n, P18021536012778351116.a n = A182462 n

end A182462

/-! ## A182462.P16837472017460337152

`5*(A091629(n+1)-2)`
-/

namespace A182462.P16837472017460337152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A091629 (n + 1) - 2)

end

end A182462.P16837472017460337152

namespace A182462

/-- `5*(A091629(n+1)-2)` -/
def P16837472017460337152.Spec : Prop :=
  ∀ n, P16837472017460337152.a n = A182462 n

end A182462

/-!
# A182463: Integers m arising from A068977.

The programs for A182463, there is no canonical definition to state claims against.
-/

/-! ## A182463.P3925406221561697042

`A324503(A068977(n+1))`
-/

namespace A182463.P3925406221561697042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324503 (A068977 (n + 1)).toNat

end

end A182463.P3925406221561697042

/-! ## A182463.P3269471680248779501

`A324503(eq[1, A324504(n+1)]+1)`
-/

namespace A182463.P3269471680248779501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324503 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A182463.P3269471680248779501

/-! ## A182463.P16140731654649277009

`A324503(record[(n+1)/A324504(n+1)²])`
-/

namespace A182463.P16140731654649277009
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A324504 (n + 1) ^ 2 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324503 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A182463.P16140731654649277009

/-!
# A182464: a(n) = 3*a(n-1) - 2*a(n-2) with a(0)=24 and a(1)=60.

The programs for A182464, the canonical program `A182464.P153693524279824314` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182464 has offset 0).

The definition of A182464 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-2*a(n-2)` (program `A182464.P153693524279824314`, by `A182464.P153693524279824314.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A182464.P1763586542216597782

`a(n-1)*2+12` with `a(0)=24`
-/

namespace A182464.P1763586542216597782
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [24] fun n a =>
  a (n - 1) * 2 + 12

end

end A182464.P1763586542216597782

namespace A182464

/-- `a(n-1)*2+12` -/
def P1763586542216597782.Spec : Prop :=
  ∀ n, (P1763586542216597782.a n : ℤ) = A182464 n

end A182464

/-! ## A182464.P9464104915638173450

`12*A153893(n)`
-/

namespace A182464.P9464104915638173450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A153893 n

end

end A182464.P9464104915638173450

namespace A182464

/-- `12*A153893(n)` -/
def P9464104915638173450.Spec : Prop :=
  ∀ n, P9464104915638173450.a n = A182464 n

end A182464

/-! ## A182464.P2127379008879500721

`2*A089143(n+1)`
-/

namespace A182464.P2127379008879500721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A089143 (n + 1)

end

end A182464.P2127379008879500721

namespace A182464

/-- `2*A089143(n+1)` -/
def P2127379008879500721.Spec : Prop :=
  ∀ n, P2127379008879500721.a n = A182464 n

end A182464

/-! ## A182464.P7766172088121913534

`6*A033484(n+1)`
-/

namespace A182464.P7766172088121913534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A033484 (n + 1)

end

end A182464.P7766172088121913534

namespace A182464

/-- `6*A033484(n+1)` -/
def P7766172088121913534.Spec : Prop :=
  ∀ n, P7766172088121913534.a n = A182464 n

end A182464

/-! ## A182464.P153693524279824314

`3*a(n-1)-2*a(n-2)` with `a(0)=24, a(1)=60`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A182464

/-- `3*a(n-1)-2*a(n-2)` -/
def P153693524279824314.Spec : Prop :=
  ∀ n, P153693524279824314.a n = A182464 n

theorem P153693524279824314.correct : P153693524279824314.Spec := by
  intro n
  simp only [A182464]

end A182464

/-! ## A182464.P13491922956249246601

`ogf((24-12x)/(1-3x+2x^2))`
-/

namespace A182464.P13491922956249246601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [24, -12] [1, -3, 2] n

end

end A182464.P13491922956249246601

namespace A182464

/-- `ogf((24-12x)/(1-3x+2x^2))` -/
def P13491922956249246601.Spec : Prop :=
  ∀ n, P13491922956249246601.a n = A182464 n

end A182464

/-! ## A182464.P7165054915912018637

`6*(6*2^n-2)`
-/

namespace A182464.P7165054915912018637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * ((6 * 2 ^ n : ℤ) - 2)

end

end A182464.P7165054915912018637

namespace A182464

/-- `6*(6*2^n-2)` -/
def P7165054915912018637.Spec : Prop :=
  ∀ n, P7165054915912018637.a n = A182464 n

theorem P7165054915912018637.correct : P7165054915912018637.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A182464, Nat.add_sub_cancel, A182464.P7165054915912018637.a, A182464.P153693524279824314.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A182464, Nat.add_sub_cancel, A182464.P7165054915912018637.a, A182464.P153693524279824314.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A182464

/-! ## A182464.P7558641025413254894

`∑[2*a(n-1)]` with `a(0)=24, a(1)=36`
-/

namespace A182464.P7558641025413254894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [24, 36] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182464.P7558641025413254894

namespace A182464

/-- `∑[2*a(n-1)]` -/
def P7558641025413254894.Spec : Prop :=
  ∀ n, (P7558641025413254894.a n : ℤ) = A182464 n

end A182464

/-! ## A182464.P14035900075548789349

`a(n-1)+a(n-1)+12` with `a(0)=24`
-/

namespace A182464.P14035900075548789349
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [24] fun n a =>
  a (n - 1) + (a (n - 1) + 12)

end

end A182464.P14035900075548789349

namespace A182464

/-- `a(n-1)+a(n-1)+12` -/
def P14035900075548789349.Spec : Prop :=
  ∀ n, (P14035900075548789349.a n : ℤ) = A182464 n

end A182464

/-! ## A182464.P1249782526323251063

`A048491(n+2)-4`
-/

namespace A182464.P1249782526323251063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048491 (n + 2) - 4

end

end A182464.P1249782526323251063

namespace A182464

/-- `A048491(n+2)-4` -/
def P1249782526323251063.Spec : Prop :=
  ∀ n, P1249782526323251063.a n = A182464 n

end A182464

/-! ## A182464.P12141163640508544961

`A089143(n+2)-6`
-/

namespace A182464.P12141163640508544961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089143 (n + 2) - 6

end

end A182464.P12141163640508544961

namespace A182464

/-- `A089143(n+2)-6` -/
def P12141163640508544961.Spec : Prop :=
  ∀ n, P12141163640508544961.a n = A182464 n

end A182464

/-! ## A182464.P5625371209838208596

`A154251(n+3)-5`
-/

namespace A182464.P5625371209838208596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154251 (n + 3) - 5

end

end A182464.P5625371209838208596

namespace A182464

/-- `A154251(n+3)-5` -/
def P5625371209838208596.Spec : Prop :=
  ∀ n, P5625371209838208596.a n = A182464 n

end A182464

/-! ## A182464.P18407922129639793761

`A053209(n+3)-8`
-/

namespace A182464.P18407922129639793761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053209 (n + 3) - 8

end

end A182464.P18407922129639793761

namespace A182464

/-- `A053209(n+3)-8` -/
def P18407922129639793761.Spec : Prop :=
  ∀ n, P18407922129639793761.a n = A182464 n

end A182464

/-! ## A182464.P16643082789788307925

`lcm(3, A165751(n+2))`
-/

namespace A182464.P16643082789788307925
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A165751 (n + 2))

end

end A182464.P16643082789788307925

namespace A182464

/-- `lcm(3, A165751(n+2))` -/
def P16643082789788307925.Spec : Prop :=
  ∀ n, (P16643082789788307925.a n : ℤ) = A182464 n

end A182464

/-! ## A182464.P15493249019227771933

`12*A007283(n)-12`
-/

namespace A182464.P15493249019227771933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A007283 n - 12

end

end A182464.P15493249019227771933

namespace A182464

/-- `12*A007283(n)-12` -/
def P15493249019227771933.Spec : Prop :=
  ∀ n, P15493249019227771933.a n = A182464 n

end A182464

/-! ## A182464.P3268752088015946973

`abs(12-36*A000079(n))`
-/

namespace A182464.P3268752088015946973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |12 - 36 * A000079 n|

end

end A182464.P3268752088015946973

namespace A182464

/-- `abs(12-36*A000079(n))` -/
def P3268752088015946973.Spec : Prop :=
  ∀ n, P3268752088015946973.a n = A182464 n

end A182464

/-! ## A182464.P4910700651109086012

`A099041(n+2)+2*n`
-/

namespace A182464.P4910700651109086012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099041 (n + 2) + (2 * n : ℤ)

end

end A182464.P4910700651109086012

namespace A182464

/-- `A099041(n+2)+2*n` -/
def P4910700651109086012.Spec : Prop :=
  ∀ n, P4910700651109086012.a n = A182464 n

end A182464

/-! ## A182464.P5371861523556114774

`A182462(n)+A033484(n+1)`
-/

namespace A182464.P5371861523556114774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182462 n + A033484 (n + 1)

end

end A182464.P5371861523556114774

namespace A182464

/-- `A182462(n)+A033484(n+1)` -/
def P5371861523556114774.Spec : Prop :=
  ∀ n, P5371861523556114774.a n = A182464 n

end A182464

/-! ## A182464.P14746551812064500755

`A250605(n+1)-A014206(n)`
-/

namespace A182464.P14746551812064500755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250605 (n + 1) - A014206 n

end

end A182464.P14746551812064500755

namespace A182464

/-- `A250605(n+1)-A014206(n)` -/
def P14746551812064500755.Spec : Prop :=
  ∀ n, P14746551812064500755.a n = A182464 n

end A182464

/-! ## A182464.P6667137406454099390

`A182461(n)+A182461(n)/2`
-/

namespace A182464.P6667137406454099390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182461 n : ℚ) + (A182461 n : ℚ) / 2

end

end A182464.P6667137406454099390

namespace A182464

/-- `A182461(n)+A182461(n)/2` -/
def P6667137406454099390.Spec : Prop :=
  ∀ n, P6667137406454099390.a n = (A182464 n : ℚ)

end A182464

/-!
# A182465: a(n) = 3*a(n-1) - 2*a(n-2) with a(0)=28 and a(1)=70.

The programs for A182465, the canonical program `A182465.P38170874179925275` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182465 has offset 0).

The definition of A182465 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-2*a(n-2)` (program `A182465.P38170874179925275`, by `A182465.P38170874179925275.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A182465.P1861787678024276632

`a(n-1)*2+14` with `a(0)=28`
-/

namespace A182465.P1861787678024276632
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [28] fun n a =>
  a (n - 1) * 2 + 14

end

end A182465.P1861787678024276632

namespace A182465

/-- `a(n-1)*2+14` -/
def P1861787678024276632.Spec : Prop :=
  ∀ n, (P1861787678024276632.a n : ℤ) = A182465 n

end A182465

/-! ## A182465.P38170874179925275

`3*a(n-1)-2*a(n-2)` with `a(0)=28, a(1)=70`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A182465

/-- `3*a(n-1)-2*a(n-2)` -/
def P38170874179925275.Spec : Prop :=
  ∀ n, P38170874179925275.a n = A182465 n

theorem P38170874179925275.correct : P38170874179925275.Spec := by
  intro n
  simp only [A182465]

end A182465

/-! ## A182465.P1263853094365111915

`14*A153893(n)`
-/

namespace A182465.P1263853094365111915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  14 * A153893 n

end

end A182465.P1263853094365111915

namespace A182465

/-- `14*A153893(n)` -/
def P1263853094365111915.Spec : Prop :=
  ∀ n, P1263853094365111915.a n = A182465 n

end A182465

/-! ## A182465.P7340449360150105598

`7*A033484(n+1)`
-/

namespace A182465.P7340449360150105598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A033484 (n + 1)

end

end A182465.P7340449360150105598

namespace A182465

/-- `7*A033484(n+1)` -/
def P7340449360150105598.Spec : Prop :=
  ∀ n, P7340449360150105598.a n = A182465 n

end A182465

/-! ## A182465.P17612772431625731883

`∑[21*2^n]+7`
-/

namespace A182465.P17612772431625731883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21 * 2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 7

end

end A182465.P17612772431625731883

namespace A182465

/-- `∑[21*2^n]+7` -/
def P17612772431625731883.Spec : Prop :=
  ∀ n, (P17612772431625731883.a n : ℤ) = A182465 n

end A182465

/-! ## A182465.P7077276733205106812

`∑[2*a(n-1)]` with `a(0)=28, a(1)=42`
-/

namespace A182465.P7077276733205106812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [28, 42] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182465.P7077276733205106812

namespace A182465

/-- `∑[2*a(n-1)]` -/
def P7077276733205106812.Spec : Prop :=
  ∀ n, (P7077276733205106812.a n : ℤ) = A182465 n

end A182465

/-! ## A182465.P15244965192483485815

`lcm(2, 7*(6*2^n-2))`
-/

namespace A182465.P15244965192483485815
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (7 * ((6 * 2 ^ n : ℤ) - 2))

end

end A182465.P15244965192483485815

namespace A182465

/-- `lcm(2, 7*(6*2^n-2))` -/
def P15244965192483485815.Spec : Prop :=
  ∀ n, (P15244965192483485815.a n : ℤ) = A182465 n

end A182465

/-! ## A182465.P13377621278072720542

`7*A296953(n+2)`
-/

namespace A182465.P13377621278072720542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A296953 (n + 2)

end

end A182465.P13377621278072720542

namespace A182465

/-- `7*A296953(n+2)` -/
def P13377621278072720542.Spec : Prop :=
  ∀ n, P13377621278072720542.a n = A182465 n

end A182465

/-! ## A182465.P4079463732756588379

`7*A369491(n+2)`
-/

namespace A182465.P4079463732756588379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A369491 (n + 2)

end

end A182465.P4079463732756588379

namespace A182465

/-- `7*A369491(n+2)` -/
def P4079463732756588379.Spec : Prop :=
  ∀ n, P4079463732756588379.a n = A182465 n

end A182465

/-! ## A182465.P5057485510583355979

`14*(A007283(n)-1)`
-/

namespace A182465.P5057485510583355979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  14 * (A007283 n - 1)

end

end A182465.P5057485510583355979

namespace A182465

/-- `14*(A007283(n)-1)` -/
def P5057485510583355979.Spec : Prop :=
  ∀ n, P5057485510583355979.a n = A182465 n

end A182465

/-! ## A182465.P6593632093299917602

`2*(3*A005009(n)-7)`
-/

namespace A182465.P6593632093299917602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (3 * A005009 n - 7)

end

end A182465.P6593632093299917602

namespace A182465

/-- `2*(3*A005009(n)-7)` -/
def P6593632093299917602.Spec : Prop :=
  ∀ n, P6593632093299917602.a n = A182465 n

end A182465

/-! ## A182465.P14156907865225520860

`7*(3*(A000079(n+1)-1)+1)`
-/

namespace A182465.P14156907865225520860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * (3 * (A000079 (n + 1) - 1) + 1)

end

end A182465.P14156907865225520860

namespace A182465

/-- `7*(3*(A000079(n+1)-1)+1)` -/
def P14156907865225520860.Spec : Prop :=
  ∀ n, P14156907865225520860.a n = A182465 n

end A182465

/-! ## A182465.P16852635922074980980

`(A008596(2*n+1)-A008596(2*n))*A055010(n+1)`
-/

namespace A182465.P16852635922074980980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008596 (2 * n + 1) - A008596 (2 * n)) * A055010 (n + 1)

end

end A182465.P16852635922074980980

namespace A182465

/-- `(A008596(2*n+1)-A008596(2*n))*A055010(n+1)` -/
def P16852635922074980980.Spec : Prop :=
  ∀ n, P16852635922074980980.a n = A182465 n

end A182465

/-! ## A182465.P5178766710494569692

`(A008596(2*n+1)-A008596(2*n))*A083329(n+1)`
-/

namespace A182465.P5178766710494569692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008596 (2 * n + 1) - A008596 (2 * n)) * A083329 (n + 1)

end

end A182465.P5178766710494569692

namespace A182465

/-- `(A008596(2*n+1)-A008596(2*n))*A083329(n+1)` -/
def P5178766710494569692.Spec : Prop :=
  ∀ n, P5178766710494569692.a n = A182465 n

end A182465

/-! ## A182465.P9587050074271942771

`Δ[ogf((7+7x)/(1-4x+5x^2-2x^3))]`
-/

namespace A182465.P9587050074271942771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, 7] [1, -4, 5, -2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182465.P9587050074271942771

namespace A182465

/-- `Δ[ogf((7+7x)/(1-4x+5x^2-2x^3))]` -/
def P9587050074271942771.Spec : Prop :=
  ∀ n, P9587050074271942771.a n = A182465 n

end A182465

/-! ## A182465.P17880964708674386583

`(A182466(n)+A182464(n))/2`
-/

namespace A182465.P17880964708674386583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182466 n + A182464 n : ℚ) / 2

end

end A182465.P17880964708674386583

namespace A182465

/-- `(A182466(n)+A182464(n))/2` -/
def P17880964708674386583.Spec : Prop :=
  ∀ n, P17880964708674386583.a n = (A182465 n : ℚ)

end A182465

/-! ## A182465.P17623265780751837596

`(A182467(n)+A182462(n))/2`
-/

namespace A182465.P17623265780751837596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182467 n + A182462 n : ℚ) / 2

end

end A182465.P17623265780751837596

namespace A182465

/-- `(A182467(n)+A182462(n))/2` -/
def P17623265780751837596.Spec : Prop :=
  ∀ n, P17623265780751837596.a n = (A182465 n : ℚ)

end A182465

/-!
# A182466: a(n) = 3*a(n-1) - 2*a(n-2) with a(0)=32 and a(1)=80.

The programs for A182466, the canonical program `A182466.P4770760811622214475` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182466 has offset 0).

The definition of A182466 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-2*a(n-2)` (program `A182466.P4770760811622214475`, by `A182466.P4770760811622214475.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A182466.P17027932035269022443

`a(n-1)*2+16` with `a(0)=32`
-/

namespace A182466.P17027932035269022443
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [32] fun n a =>
  a (n - 1) * 2 + 16

end

end A182466.P17027932035269022443

namespace A182466

/-- `a(n-1)*2+16` -/
def P17027932035269022443.Spec : Prop :=
  ∀ n, (P17027932035269022443.a n : ℤ) = A182466 n

end A182466

/-! ## A182466.P4770760811622214475

`3*a(n-1)-2*a(n-2)` with `a(0)=32, a(1)=80`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A182466

/-- `3*a(n-1)-2*a(n-2)` -/
def P4770760811622214475.Spec : Prop :=
  ∀ n, P4770760811622214475.a n = A182466 n

theorem P4770760811622214475.correct : P4770760811622214475.Spec := by
  intro n
  simp only [A182466]

end A182466

/-! ## A182466.P9402231639289786027

`2*A182461(n)`
-/

namespace A182466.P9402231639289786027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A182461 n

end

end A182466.P9402231639289786027

namespace A182466

/-- `2*A182461(n)` -/
def P9402231639289786027.Spec : Prop :=
  ∀ n, P9402231639289786027.a n = A182466 n

end A182466

/-! ## A182466.P12020460734060059520

`16*A153893(n)`
-/

namespace A182466.P12020460734060059520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A153893 n

end

end A182466.P12020460734060059520

namespace A182466

/-- `16*A153893(n)` -/
def P12020460734060059520.Spec : Prop :=
  ∀ n, P12020460734060059520.a n = A182466 n

end A182466

/-! ## A182466.P10289383976569066970

`8*A033484(n+1)`
-/

namespace A182466.P10289383976569066970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A033484 (n + 1)

end

end A182466.P10289383976569066970

namespace A182466

/-- `8*A033484(n+1)` -/
def P10289383976569066970.Spec : Prop :=
  ∀ n, P10289383976569066970.a n = A182466 n

end A182466

/-! ## A182466.P7133291426634537775

`∑[24*2^n]+8`
-/

namespace A182466.P7133291426634537775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24 * 2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 8

end

end A182466.P7133291426634537775

namespace A182466

/-- `∑[24*2^n]+8` -/
def P7133291426634537775.Spec : Prop :=
  ∀ n, (P7133291426634537775.a n : ℤ) = A182466 n

end A182466

/-! ## A182466.P6149259675865530336

`∑[2*a(n-1)]` with `a(0)=32, a(1)=48`
-/

namespace A182466.P6149259675865530336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [32, 48] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182466.P6149259675865530336

namespace A182466

/-- `∑[2*a(n-1)]` -/
def P6149259675865530336.Spec : Prop :=
  ∀ n, (P6149259675865530336.a n : ℤ) = A182466 n

end A182466

/-! ## A182466.P10957077551801558867

`∑[16*A042950(n)]`
-/

namespace A182466.P10957077551801558867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A042950 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182466.P10957077551801558867

namespace A182466

/-- `∑[16*A042950(n)]` -/
def P10957077551801558867.Spec : Prop :=
  ∀ n, P10957077551801558867.a n = A182466 n

end A182466

/-! ## A182466.P902164569460208793

`4*A131128(n+2)`
-/

namespace A182466.P902164569460208793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A131128 (n + 2)

end

end A182466.P902164569460208793

namespace A182466

/-- `4*A131128(n+2)` -/
def P902164569460208793.Spec : Prop :=
  ∀ n, P902164569460208793.a n = A182466 n

end A182466

/-! ## A182466.P6928514061244463663

`4*A296954(n+3)`
-/

namespace A182466.P6928514061244463663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A296954 (n + 3)

end

end A182466.P6928514061244463663

namespace A182466

/-- `4*A296954(n+3)` -/
def P6928514061244463663.Spec : Prop :=
  ∀ n, P6928514061244463663.a n = A182466 n

end A182466

/-! ## A182466.P160544075438445847

`4/3*A182464(n)`
-/

namespace A182466.P160544075438445847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 3 * (A182464 n : ℚ)

end

end A182466.P160544075438445847

namespace A182466

/-- `4/3*A182464(n)` -/
def P160544075438445847.Spec : Prop :=
  ∀ n, P160544075438445847.a n = (A182466 n : ℚ)

end A182466

/-! ## A182466.P2018049935981324215

`8*A296953(n+2)`
-/

namespace A182466.P2018049935981324215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A296953 (n + 2)

end

end A182466.P2018049935981324215

namespace A182466

/-- `8*A296953(n+2)` -/
def P2018049935981324215.Spec : Prop :=
  ∀ n, P2018049935981324215.a n = A182466 n

end A182466

/-! ## A182466.P1138117540896873740

`8*A369491(n+2)`
-/

namespace A182466.P1138117540896873740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A369491 (n + 2)

end

end A182466.P1138117540896873740

namespace A182466

/-- `8*A369491(n+2)` -/
def P1138117540896873740.Spec : Prop :=
  ∀ n, P1138117540896873740.a n = A182466 n

end A182466

/-! ## A182466.P2448069443764808347

`4*Δ[A051667(n+1)]`
-/

namespace A182466.P2448069443764808347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051667 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (f1 (n + 1) - f1 n)

end

end A182466.P2448069443764808347

namespace A182466

/-- `4*Δ[A051667(n+1)]` -/
def P2448069443764808347.Spec : Prop :=
  ∀ n, P2448069443764808347.a n = A182466 n

end A182466

/-! ## A182466.P17337778829275108704

`16*(Δ[A033484(n)]-1)`
-/

namespace A182466.P17337778829275108704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033484 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * (f1 (n + 1) - f1 n - 1)

end

end A182466.P17337778829275108704

namespace A182466

/-- `16*(Δ[A033484(n)]-1)` -/
def P17337778829275108704.Spec : Prop :=
  ∀ n, P17337778829275108704.a n = A182466 n

end A182466

/-! ## A182466.P8110425892036684457

`2*(A139697(n+2)+3)`
-/

namespace A182466.P8110425892036684457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A139697 (n + 2) + 3)

end

end A182466.P8110425892036684457

namespace A182466

/-- `2*(A139697(n+2)+3)` -/
def P8110425892036684457.Spec : Prop :=
  ∀ n, P8110425892036684457.a n = A182466 n

end A182466

/-! ## A182466.P7200686726058345705

`2*(A048488(n+2)-3)`
-/

namespace A182466.P7200686726058345705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A048488 (n + 2) - 3)

end

end A182466.P7200686726058345705

namespace A182466

/-- `2*(A048488(n+2)-3)` -/
def P7200686726058345705.Spec : Prop :=
  ∀ n, P7200686726058345705.a n = A182466 n

end A182466

/-! ## A182466.P15936652795262830905

`2*(A068293(n+3)-2)`
-/

namespace A182466.P15936652795262830905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A068293 (n + 3) - 2)

end

end A182466.P15936652795262830905

namespace A182466

/-- `2*(A068293(n+3)-2)` -/
def P15936652795262830905.Spec : Prop :=
  ∀ n, P15936652795262830905.a n = A182466 n

end A182466

/-! ## A182466.P2037152359815670812

`4*(A081808(n+1)-4)`
-/

namespace A182466.P2037152359815670812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A081808 (n + 1) - 4)

end

end A182466.P2037152359815670812

namespace A182466

/-- `4*(A081808(n+1)-4)` -/
def P2037152359815670812.Spec : Prop :=
  ∀ n, P2037152359815670812.a n = A182466 n

end A182466

/-! ## A182466.P2607495429306775825

`4*A099942(2*n+3)`
-/

namespace A182466.P2607495429306775825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A099942 (2 * n + 3)

end

end A182466.P2607495429306775825

namespace A182466

/-- `4*A099942(2*n+3)` -/
def P2607495429306775825.Spec : Prop :=
  ∀ n, P2607495429306775825.a n = A182466 n

end A182466

/-!
# A182467: a(n) = 3*a(n-1) - 2*a(n-2) with a(0)=36 and a(1)=90.

The programs for A182467, the canonical program `A182467.P17951284258517298808` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182467 has offset 0).

The definition of A182467 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-2*a(n-2)` (program `A182467.P17951284258517298808`, by `A182467.P17951284258517298808.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A182467.P14285058546610003523

`a(n-1)*2+18` with `a(0)=36`
-/

namespace A182467.P14285058546610003523
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [36] fun n a =>
  a (n - 1) * 2 + 18

end

end A182467.P14285058546610003523

namespace A182467

/-- `a(n-1)*2+18` -/
def P14285058546610003523.Spec : Prop :=
  ∀ n, (P14285058546610003523.a n : ℤ) = A182467 n

end A182467

/-! ## A182467.P7393516398157280228

`18*A153893(n)`
-/

namespace A182467.P7393516398157280228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  18 * A153893 n

end

end A182467.P7393516398157280228

namespace A182467

/-- `18*A153893(n)` -/
def P7393516398157280228.Spec : Prop :=
  ∀ n, P7393516398157280228.a n = A182467 n

end A182467

/-! ## A182467.P11964309379561457031

`9*A033484(n+1)`
-/

namespace A182467.P11964309379561457031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A033484 (n + 1)

end

end A182467.P11964309379561457031

namespace A182467

/-- `9*A033484(n+1)` -/
def P11964309379561457031.Spec : Prop :=
  ∀ n, P11964309379561457031.a n = A182467 n

end A182467

/-! ## A182467.P17951284258517298808

`3*a(n-1)-2*a(n-2)` with `a(0)=36, a(1)=90`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A182467

/-- `3*a(n-1)-2*a(n-2)` -/
def P17951284258517298808.Spec : Prop :=
  ∀ n, P17951284258517298808.a n = A182467 n

theorem P17951284258517298808.correct : P17951284258517298808.Spec := by
  intro n
  simp only [A182467]

end A182467

/-! ## A182467.P9124524513095644603

`∑[27*2^n]+9`
-/

namespace A182467.P9124524513095644603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27 * 2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 9

end

end A182467.P9124524513095644603

namespace A182467

/-- `∑[27*2^n]+9` -/
def P9124524513095644603.Spec : Prop :=
  ∀ n, (P9124524513095644603.a n : ℤ) = A182467 n

end A182467

/-! ## A182467.P14323417640156248108

`9*∑[2*a(n-1)]` with `a(0)=4, a(1)=6`
-/

namespace A182467.P14323417640156248108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 6] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A182467.P14323417640156248108

namespace A182467

/-- `9*∑[2*a(n-1)]` -/
def P14323417640156248108.Spec : Prop :=
  ∀ n, (P14323417640156248108.a n : ℤ) = A182467 n

end A182467

/-! ## A182467.P18064902165987287140

`3*A089143(n+1)`
-/

namespace A182467.P18064902165987287140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A089143 (n + 1)

end

end A182467.P18064902165987287140

namespace A182467

/-- `3*A089143(n+1)` -/
def P18064902165987287140.Spec : Prop :=
  ∀ n, P18064902165987287140.a n = A182467 n

end A182467

/-! ## A182467.P12607638215756042387

`2*(A304387(n)-4)`
-/

namespace A182467.P12607638215756042387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A304387 n - 4)

end

end A182467.P12607638215756042387

namespace A182467

/-- `2*(A304387(n)-4)` -/
def P12607638215756042387.Spec : Prop :=
  ∀ n, P12607638215756042387.a n = A182467 n

end A182467

/-! ## A182467.P5841455621439261887

`3/2*A182464(n)`
-/

namespace A182467.P5841455621439261887
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A182464 n : ℚ)

end

end A182467.P5841455621439261887

namespace A182467

/-- `3/2*A182464(n)` -/
def P5841455621439261887.Spec : Prop :=
  ∀ n, P5841455621439261887.a n = (A182467 n : ℚ)

end A182467

/-! ## A182467.P17430081909368259884

`9*A296953(n+2)`
-/

namespace A182467.P17430081909368259884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A296953 (n + 2)

end

end A182467.P17430081909368259884

namespace A182467

/-- `9*A296953(n+2)` -/
def P17430081909368259884.Spec : Prop :=
  ∀ n, P17430081909368259884.a n = A182467 n

end A182467

/-! ## A182467.P15241831973252373989

`9*A369491(n+2)`
-/

namespace A182467.P15241831973252373989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A369491 (n + 2)

end

end A182467.P15241831973252373989

namespace A182467

/-- `9*A369491(n+2)` -/
def P15241831973252373989.Spec : Prop :=
  ∀ n, P15241831973252373989.a n = A182467 n

end A182467

/-! ## A182467.P12904242313826777797

`2*(A175806(n)-9)`
-/

namespace A182467.P12904242313826777797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A175806 n - 9)

end

end A182467.P12904242313826777797

namespace A182467

/-- `2*(A175806(n)-9)` -/
def P12904242313826777797.Spec : Prop :=
  ∀ n, P12904242313826777797.a n = A182467 n

end A182467

/-! ## A182467.P14141668992331532231

`3*(A048491(n+1)+2)`
-/

namespace A182467.P14141668992331532231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A048491 (n + 1) + 2)

end

end A182467.P14141668992331532231

namespace A182467

/-- `3*(A048491(n+1)+2)` -/
def P14141668992331532231.Spec : Prop :=
  ∀ n, P14141668992331532231.a n = A182467 n

end A182467

/-! ## A182467.P9152907780696085823

`3*(A154251(n+2)+1)`
-/

namespace A182467.P9152907780696085823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A154251 (n + 2) + 1)

end

end A182467.P9152907780696085823

namespace A182467

/-- `3*(A154251(n+2)+1)` -/
def P9152907780696085823.Spec : Prop :=
  ∀ n, P9152907780696085823.a n = A182467 n

end A182467

/-! ## A182467.P1552303157812898441

`3*(A053209(n+2)-2)`
-/

namespace A182467.P1552303157812898441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A053209 (n + 2) - 2)

end

end A182467.P1552303157812898441

namespace A182467

/-- `3*(A053209(n+2)-2)` -/
def P1552303157812898441.Spec : Prop :=
  ∀ n, P1552303157812898441.a n = A182467 n

end A182467

/-! ## A182467.P2291958395864714940

`3*A061776(2*n+3)`
-/

namespace A182467.P2291958395864714940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A061776 (2 * n + 3)

end

end A182467.P2291958395864714940

namespace A182467

/-- `3*A061776(2*n+3)` -/
def P2291958395864714940.Spec : Prop :=
  ∀ n, P2291958395864714940.a n = A182467 n

end A182467

/-! ## A182467.P3393800550840880647

`2*3*(A005010(n)-3)`
-/

namespace A182467.P3393800550840880647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (3 * (A005010 n - 3))

end

end A182467.P3393800550840880647

namespace A182467

/-- `2*3*(A005010(n)-3)` -/
def P3393800550840880647.Spec : Prop :=
  ∀ n, P3393800550840880647.a n = A182467 n

end A182467

/-! ## A182467.P15606734595082696251

`3*(A054127(n+3)+n-1)`
-/

namespace A182467.P15606734595082696251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A054127 (n + 3) + ((n : ℤ) - 1))

end

end A182467.P15606734595082696251

namespace A182467

/-- `3*(A054127(n+3)+n-1)` -/
def P15606734595082696251.Spec : Prop :=
  ∀ n, P15606734595082696251.a n = A182467 n

end A182467

/-! ## A182467.P1538428959613179602

`lcm(9, A033484(n%A151800(n)+1))`
-/

namespace A182467.P1538428959613179602
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 9 (A033484 (Int.tmod (n : ℤ) (A151800 n) + 1).toNat)

end

end A182467.P1538428959613179602

namespace A182467

/-- `lcm(9, A033484(n%A151800(n)+1))` -/
def P1538428959613179602.Spec : Prop :=
  ∀ n, (P1538428959613179602.a n : ℤ) = A182467 n

end A182467

/-! ## A182467.P5120258393942419615

`(A008600(2*n+1)-A008600(2*n))*A055010(n+1)`
-/

namespace A182467.P5120258393942419615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008600 (2 * n + 1) - A008600 (2 * n)) * A055010 (n + 1)

end

end A182467.P5120258393942419615

namespace A182467

/-- `(A008600(2*n+1)-A008600(2*n))*A055010(n+1)` -/
def P5120258393942419615.Spec : Prop :=
  ∀ n, P5120258393942419615.a n = A182467 n

end A182467

/-!
# A182469: Triangle read by rows in which row n lists the odd divisors of n.

The programs for A182469, there is no canonical definition to state claims against.
-/

/-! ## A182469.P4052426351994829902

`filter[A027750(n+1), A000035(#)]`
-/

namespace A182469.P4052426351994829902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A182469.P4052426351994829902

/-! ## A182469.P4703670156481030586

`A027750(eq[1, gcd(2, A027750(n+1))]+1)`
-/

namespace A182469.P4703670156481030586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A027750 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A182469.P4703670156481030586

/-! ## A182469.P15600197552683513267

`A027750(eq[1, and(1, A027750(n+1))]+1)`
-/

namespace A182469.P15600197552683513267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A027750 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A182469.P15600197552683513267

/-! ## A182469.P1863299232372450183

`A027750(record[n*A027750(n+1)%2]+1)`
-/

namespace A182469.P1863299232372450183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.tmod (A027750 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A182469.P1863299232372450183

/-! ## A182469.P12796006384198080870

`A027750(record[n*and(1, A027750(n+1))]+1)`
-/

namespace A182469.P12796006384198080870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.land 1 (A027750 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A182469.P12796006384198080870

/-! ## A182469.P11605822945117080751

`A263730(eq[1, (A263730(n+2)+1)%2]+2)+1`
-/

namespace A182469.P11605822945117080751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263730 (n + 2) + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263730 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2) + 1

end

end A182469.P11605822945117080751

/-! ## A182469.P2890729038798767072

`filter[A127093(n+1), A000035(#)]`
-/

namespace A182469.P2890729038798767072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A182469.P2890729038798767072

/-! ## A182469.P13335369633415200491

`filter[A127013(n+1), A000035(#)]`
-/

namespace A182469.P13335369633415200491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127013 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A182469.P13335369633415200491

/-! ## A182469.P12341674488114448729

`A193738(eq[A048158(n+1), A108044(n)])`
-/

namespace A182469.P12341674488114448729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193738 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A182469.P12341674488114448729

/-! ## A182469.P8786015143789145752

`filter[A299483(n+1), A000035(#)]`
-/

namespace A182469.P8786015143789145752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299483 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A182469.P8786015143789145752

/-!
# A182471: If n = Product (p_j^k_j), j=1 to m, then a(n) = Floor( Sum (p_j + k_j) / 2m ) (a(1) = 0 by convention).

The programs for A182471, the canonical program `A182471.P3637716054381294582` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182471 has offset 1).

The definition of A182471 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182471.P3637716054381294582

`floor(A008474(n+1)/A000026(A034444(n+1)))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A182471

/-- `floor(A008474(n+1)/A000026(A034444(n+1)))` -/
def P3637716054381294582.Spec : Prop :=
  ∀ n, P3637716054381294582.a n = A182471 (n + 1)

theorem P3637716054381294582.correct : P3637716054381294582.Spec := by
  intro n
  simp only [A182471, Nat.add_sub_cancel]

end A182471

/-! ## A182471.P2402460785105741952

`floor(A008474(n+1)/A034444(A193551(n+1)))`
-/

namespace A182471.P2402460785105741952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008474 (n + 1) : ℚ) / (A034444 (A193551 (n + 1)).toNat : ℚ)⌋

end

end A182471.P2402460785105741952

namespace A182471

/-- `floor(A008474(n+1)/A034444(A193551(n+1)))` -/
def P2402460785105741952.Spec : Prop :=
  ∀ n, P2402460785105741952.a n = A182471 (n + 1)

end A182471

/-! ## A182471.P17037575894273620640

`A317751(A277867(n)-A023969(n))`
-/

namespace A182471.P17037575894273620640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317751 (A277867 n - A023969 n).toNat

end

end A182471.P17037575894273620640

namespace A182471

/-- `A317751(A277867(n)-A023969(n))` -/
def P17037575894273620640.Spec : Prop :=
  ∀ n, P17037575894273620640.a n = A182471 (n + 1)

end A182471

/-! ## A182471.P1665925083682973141

`A055396(n+1)+A011655(A219903(n+1))`
-/

namespace A182471.P1665925083682973141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (n + 1) + A011655 (A219903 (n + 1)).toNat

end

end A182471.P1665925083682973141

namespace A182471

/-- `A055396(n+1)+A011655(A219903(n+1))` -/
def P1665925083682973141.Spec : Prop :=
  ∀ n, P1665925083682973141.a n = A182471 (n + 1)

end A182471

/-! ## A182471.P8471790853871481294

`A089792(A299020(n+1)%A299040(n+2))`
-/

namespace A182471.P8471790853871481294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089792 (Int.tmod (A299020 (n + 1)) (A299040 (n + 2))).toNat

end

end A182471.P8471790853871481294

namespace A182471

/-- `A089792(A299020(n+1)%A299040(n+2))` -/
def P8471790853871481294.Spec : Prop :=
  ∀ n, P8471790853871481294.a n = A182471 (n + 1)

end A182471

/-!
# A182473: Number of partitions of n into exactly 2 different parts with distinct multiplicities.

The programs for A182473, there is no canonical definition to state claims against.
-/

/-! ## A182473.P4879793599715384305

`A182485(record[2-A242896(n)+n])`
-/

namespace A182473.P4879793599715384305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A242896 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182485 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A182473.P4879793599715384305

/-!
# A182474: Primes of the form p^q - q, where p and q are primes.

The programs for A182474, there is no canonical definition to state claims against.
-/

/-! ## A182474.P11577110248138700374

`p?[A053810(n+1)-A053812(n+1)]`
-/

namespace A182474.P11577110248138700374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053810 (n + 1) - A053812 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A182474.P11577110248138700374

/-! ## A182474.P10622270864093801758

`p?[A053810(n+1)-p?[A076399(n+1)]]`
-/

namespace A182474.P10622270864093801758
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076399 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053810 (n + 1) - f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A182474.P10622270864093801758

/-! ## A182474.P6231351234727744045

`record[A020639(A053810(n+1)-A053812(n+1))]`
-/

namespace A182474.P6231351234727744045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A053810 (n + 1) - A053812 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182474.P6231351234727744045

/-! ## A182474.P7590558875631995316

`record[A014963(A053810(n+1)-A053812(n+1))]`
-/

namespace A182474.P7590558875631995316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A053810 (n + 1) - A053812 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182474.P7590558875631995316

/-!
# A182475: Primes of the form p^2 + 10, where p is prime.

The programs for A182475, there is no canonical definition to state claims against.
-/

/-! ## A182475.P17540477895654601001

`A243367(n+1)²+10`
-/

namespace A182475.P17540477895654601001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243367 (n + 1) ^ 2 + 10

end

end A182475.P17540477895654601001

/-! ## A182475.P1143317746521242876

`A114948(A243367(n+1))`
-/

namespace A182475.P1143317746521242876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114948 (A243367 (n + 1)).toNat

end

end A182475.P1143317746521242876

/-! ## A182475.P17350179409609661239

`p?[p?[2*n+1]²+10]`
-/

namespace A182475.P17350179409609661239
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) ^ 2 + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A182475.P17350179409609661239

/-! ## A182475.P17259094959411313613

`p?[A045636(n+1)+1]`
-/

namespace A182475.P17259094959411313613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045636 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A182475.P17259094959411313613

/-! ## A182475.P9892829170981288007

`p?[A061725(n+1)+8]`
-/

namespace A182475.P9892829170981288007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061725 (n + 1) + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A182475.P9892829170981288007

/-!
# A182476: Primes of the form p^2+100, where p is prime.

The programs for A182476, there is no canonical definition to state claims against.
-/

/-! ## A182476.P16127538850965652822

`p?[A138693(n+1)-10]`
-/

namespace A182476.P16127538850965652822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138693 (n + 1) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A182476.P16127538850965652822

/-! ## A182476.P12124112700631048267

`p?[A138691(n+1)+32]`
-/

namespace A182476.P12124112700631048267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138691 (n + 1) + 32

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A182476.P12124112700631048267

/-! ## A182476.P4452840537188460135

`p?[A061725(n+1)+98]`
-/

namespace A182476.P4452840537188460135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061725 (n + 1) + 98

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A182476.P4452840537188460135

/-! ## A182476.P2135865545007266108

`p?[A066872(n+1)+99]`
-/

namespace A182476.P2135865545007266108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066872 (n + 1) + 99

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A182476.P2135865545007266108

/-! ## A182476.P4103499692003203003

`p?[xor(2, A000040(n+1)²)+98]`
-/

namespace A182476.P4103499692003203003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A000040 (n + 1) ^ 2) + 98

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A182476.P4103499692003203003

/-!
# A182477: Primes of the form p*q*r + 2, where p, q and r are distinct primes.

The programs for A182477, there is no canonical definition to state claims against.
-/

/-! ## A182477.P2518962136487412399

`p?[A176687(n+1)+1]`
-/

namespace A182477.P2518962136487412399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176687 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A182477.P2518962136487412399

/-! ## A182477.P12022871289795701058

`p?[A007304(n+1)+2]`
-/

namespace A182477.P12022871289795701058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A182477.P12022871289795701058

/-! ## A182477.P11238195027048722311

`p?[A046389(n+1)+2]`
-/

namespace A182477.P11238195027048722311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046389 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A182477.P11238195027048722311

/-! ## A182477.P7154876648995399265

`p?[A225228(n+1)+2]`
-/

namespace A182477.P7154876648995399265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225228 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A182477.P7154876648995399265

/-!
# A182479: Primes of the form p^2 + q^2 + r^2, where p,q,r are distinct primes.

The programs for A182479, there is no canonical definition to state claims against.
-/

/-! ## A182479.P60871446443649703

`record[A137364(A003602(n+1))]`
-/

namespace A182479.P60871446443649703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137364 (A003602 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182479.P60871446443649703

/-! ## A182479.P15182798169363114196

`record[A137364(A027750(n+1))]`
-/

namespace A182479.P15182798169363114196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137364 (A027750 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182479.P15182798169363114196

/-! ## A182479.P6740894859018451968

`record[A137364(A217438(n+1))]`
-/

namespace A182479.P6740894859018451968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137364 (A217438 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182479.P6740894859018451968

/-! ## A182479.P2998571522094514241

`record[A137364(A055396(n+2))]`
-/

namespace A182479.P2998571522094514241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137364 (A055396 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182479.P2998571522094514241

/-! ## A182479.P16886011727643765773

`record[A137364(A049084(n+1)+1)]`
-/

namespace A182479.P16886011727643765773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137364 (A049084 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182479.P16886011727643765773

/-! ## A182479.P2086130619422806815

`record[A137364(gcd(n+1, A008619(n)))]`
-/

namespace A182479.P2086130619422806815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137364 (Int.gcd (n + 1 : ℤ) (A008619 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182479.P2086130619422806815

/-! ## A182479.P15329652583466838135

`A137364(lt[1, Δ[A137364(n+1)]]+1)`
-/

namespace A182479.P15329652583466838135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137364 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A182479.P15329652583466838135

/-! ## A182479.P16549966693233813433

`A137364(∑[A263723(n+1)])`
-/

namespace A182479.P16549966693233813433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263723 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137364 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A182479.P16549966693233813433

/-! ## A182479.P9586113601594910892

`record[A137364(A116939(n+1))]`
-/

namespace A182479.P9586113601594910892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137364 (A116939 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182479.P9586113601594910892

/-!
# A182480: Decimal expansion of 16000000/63.

The programs for A182480, the canonical program `A182480.P10166398797189478864` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182480 has offset 6).

The definition of A182480 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A182480.P10166398797189478864

`a(n-1)-a(n-3)+a(n-4)` with `a(0)=2, a(1)=5, a(2)=3, a(3)=9`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A182480

/-- `a(n-1)-a(n-3)+a(n-4)` -/
def P10166398797189478864.Spec : Prop :=
  ∀ n, P10166398797189478864.a n = A182480 (n + 6)

theorem P10166398797189478864.correct : P10166398797189478864.Spec := by
  intro n
  simp only [A182480, Nat.add_sub_cancel]

end A182480

/-!
# A182481: a(n) is the least k such that 6*k*n-1 and 6*k*n+1 are twin primes, and a(n)=0, if such k does not exist.

The programs for A182481, there is no canonical definition to state claims against.
-/

/-! ## A182481.P17410325916744940947

`(A182482(n+1)+1)/(6*(n+1))`
-/

namespace A182481.P17410325916744940947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182482 (n + 1) + 1 : ℚ) / (6 * (n + 1) : ℚ)

end

end A182481.P17410325916744940947

/-! ## A182481.P13630684021862566390

`floor(A182482(n+1)/A016969(n))`
-/

namespace A182481.P13630684021862566390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A182482 (n + 1) : ℚ) / (A016969 n : ℚ)⌋

end

end A182481.P13630684021862566390

/-! ## A182481.P5454709607029703754

`A124522(3*(n+1))`
-/

namespace A182481.P5454709607029703754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124522 (3 * (n + 1))

end

end A182481.P5454709607029703754

/-! ## A182481.P16348955750975714274

`A124522(A005843(n+1)+n+1)%A004956(n+1)`
-/

namespace A182481.P16348955750975714274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124522 (A005843 (n + 1) + (n + 1 : ℤ)).toNat) (A004956 (n + 1))

end

end A182481.P16348955750975714274

/-! ## A182481.P4389426927346892934

`A071558(6*(n+1))`
-/

namespace A182481.P4389426927346892934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071558 (6 * (n + 1))

end

end A182481.P4389426927346892934

/-!
# A182482: 6*n*A182481(n)-1.

The programs for A182482, there is no canonical definition to state claims against.
-/

/-! ## A182482.P7176476469314165182

`6*(n+1)*A182481(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A182482.P7176476469314165182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * (n + 1) : ℤ) * A182481 (n + 1) - 1

end

end A182482.P7176476469314165182

/-! ## A182482.P12606450760599604647

`A001359(A182513(n+1))`
-/

namespace A182482.P12606450760599604647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (A182513 (n + 1)).toNat

end

end A182482.P12606450760599604647

/-! ## A182482.P5225170328172626553

`A014574(A182513(n+1))-gcd(3, A102376(n))`
-/

namespace A182482.P5225170328172626553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (A182513 (n + 1)).toNat - (Int.gcd 3 (A102376 n) : ℤ)

end

end A182482.P5225170328172626553

/-! ## A182482.P9897568742222302830

`A014574(A182513(n+1))-A058281(3*n+2)`
-/

namespace A182482.P9897568742222302830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (A182513 (n + 1)).toNat - A058281 (3 * n + 2)

end

end A182482.P9897568742222302830

/-! ## A182482.P12039001558391963525

`A071256(6*(n+1))-1`
-/

namespace A182482.P12039001558391963525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071256 (6 * (n + 1)) - 1

end

end A182482.P12039001558391963525

/-! ## A182482.P1572501542353052520

`A001097(2*(A182513(n+1)-1))`
-/

namespace A182482.P1572501542353052520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (2 * (A182513 (n + 1) - 1)).toNat

end

end A182482.P1572501542353052520

/-! ## A182482.P15619102346615743066

`A001097(A182513(n+1)+A182513(n+1)-2)`
-/

namespace A182482.P15619102346615743066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (A182513 (n + 1) + (A182513 (n + 1) - 2)).toNat

end

end A182482.P15619102346615743066

/-! ## A182482.P10434750905749541451

`A014963(A006512(A182513(n+1))-2)`
-/

namespace A182482.P10434750905749541451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A006512 (A182513 (n + 1)).toNat - 2).toNat

end

end A182482.P10434750905749541451

/-!
# A182484: a(n) = Product_{k=1..p-1} k^(2k-p-1), where p = prime(n).

The programs for A182484, there is no canonical definition to state claims against.
-/

/-! ## A182484.P4538881021878771945

`A215251(A000040(n+1))`
-/

namespace A182484.P4538881021878771945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215251 (A000040 (n + 1)).toNat

end

end A182484.P4538881021878771945

/-! ## A182484.P12755060819338035627

`A215251(record[A006530(n+2)])`
-/

namespace A182484.P12755060819338035627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215251 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A182484.P12755060819338035627

/-! ## A182484.P1258045632551306546

`A215251(record[A014963(n+2)])`
-/

namespace A182484.P1258045632551306546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215251 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A182484.P1258045632551306546

/-! ## A182484.P3226903850131682134

`A215251(record[A020639(n+2)])`
-/

namespace A182484.P3226903850131682134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215251 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A182484.P3226903850131682134

/-! ## A182484.P6043053969271468717

`A215251(p?[A215261(n+1)])`
-/

namespace A182484.P6043053969271468717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215251 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A182484.P6043053969271468717

/-!
# A182485: Number of partitions of n into exactly k different parts with distinct multiplicities; triangle T(n,k), n>=0, 0<=k<=max{i:A000292(i)<=n}, read by rows.

The programs for A182485, there is no canonical definition to state claims against.
-/

/-! ## A182485.P11349157182605677356

`A115722(A115720(n)^((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]))`
-/

namespace A182485.P11349157182605677356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115722 (SequenceMachineLib.roundAway ((A115720 n : ℝ) ^ ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) : ℝ))).toNat

end

end A182485.P11349157182605677356

/-! ## A182485.P8151019987725959364

`A231714(eq[A060128(n), A331969(n)])`
-/

namespace A182485.P8151019987725959364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060128 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231714 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A182485.P8151019987725959364

/-! ## A182485.P2368582647871660455

`A014081(A147703(n)+A067909(n+1))`
-/

namespace A182485.P2368582647871660455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (A147703 n + A067909 (n + 1)).toNat

end

end A182485.P2368582647871660455

/-! ## A182485.P3278163575201422630

`A242896(n)%A001113(A100953(3*n))`
-/

namespace A182485.P3278163575201422630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242896 n) (A001113 ((A100953 (3 * n)).toNat + 1))

end

end A182485.P3278163575201422630

/-! ## A182485.P15491319650905523755

`A055642(A126188(n))-A001221(3*n+1)`
-/

namespace A182485.P15491319650905523755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A126188 n).toNat - A001221 (3 * n + 1)

end

end A182485.P15491319650905523755

/-!
# A182486: Expansion of 2 * (2 + x) / (4 - x - x * sqrt(1 - 4*x)) in powers of x.

The programs for A182486, there is no canonical definition to state claims against.
-/

/-! ## A182486.P1625920105281491841

`a(n-1)-A035929(n-1)` with `a(0)=1`
-/

namespace A182486.P1625920105281491841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - A035929 (n - 1)

end

end A182486.P1625920105281491841

/-! ## A182486.P6018511598305998078

`1-∑[A035929(A028310(n)-1)]`
-/

namespace A182486.P6018511598305998078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035929 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182486.P6018511598305998078

/-! ## A182486.P17840512286517783999

`1-∑[A035929(A004273(n)-n)]`
-/

namespace A182486.P17840512286517783999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035929 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182486.P17840512286517783999

/-! ## A182486.P903497342277415456

`1-∑[A035929((n-1)%A000124(n))]`
-/

namespace A182486.P903497342277415456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035929 (Int.tmod ((n : ℤ) - 1) (A000124 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182486.P903497342277415456

/-! ## A182486.P2864557737566554151

`A035929(n)+1-∑[A035929(n)]`
-/

namespace A182486.P2864557737566554151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035929 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035929 n + (1 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A182486.P2864557737566554151

/-! ## A182486.P665050449239348944

`A035929(n+1)+A035929(n+1)-A000108(n)`
-/

namespace A182486.P665050449239348944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035929 (n + 1) + (A035929 (n + 1) - A000108 n)

end

end A182486.P665050449239348944

/-!
# A182487: Nextprime(F(n)) - prevprime(F(n)), where F(n) is the n-th Fibonacci number.

The programs for A182487, there is no canonical definition to state claims against.
-/

/-! ## A182487.P5966758565493062569

`A014208(n+4)-A180422(n+4)`
-/

namespace A182487.P5966758565493062569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014208 (n + 4) - A180422 (n + 4)

end

end A182487.P5966758565493062569

/-! ## A182487.P10407328667016168299

`A151800(A020701(n))-A180422(n+4)`
-/

namespace A182487.P10407328667016168299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A020701 n).toNat - A180422 (n + 4)

end

end A182487.P10407328667016168299

/-! ## A182487.P4653972103733355637

`A151800(A020706(n))-A180422(n+4)`
-/

namespace A182487.P4653972103733355637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A020706 n).toNat - A180422 (n + 4)

end

end A182487.P4653972103733355637

/-!
# A182488: G.f. satisfies: A(x) = 1 + x*A(x) * A( x^2*A(x)^2 ).

The programs for A182488, there is no canonical definition to state claims against.
-/

/-! ## A182488.P7266794002470573360

`A185711(A077833(n))+1`
-/

namespace A182488.P7266794002470573360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185711 (A077833 n).toNat + 1

end

end A182488.P7266794002470573360

/-! ## A182488.P7984284287261355849

`A026819(A263779(n)+1)`
-/

namespace A182488.P7984284287261355849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A263779 n + 1).toNat

end

end A182488.P7984284287261355849

/-! ## A182488.P18301647488452819094

`A046155(A263779(n)+1)`
-/

namespace A182488.P18301647488452819094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 (A263779 n + 1).toNat

end

end A182488.P18301647488452819094

/-! ## A182488.P7842081955836083743

`A371448(A176503(n+1))`
-/

namespace A182488.P7842081955836083743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371448 (A176503 (n + 1)).toNat

end

end A182488.P7842081955836083743

/-! ## A182488.P3733291378846512802

`A046155(or(A046155(n), A263779(n)))`
-/

namespace A182488.P3733291378846512802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 (Int.lor (A046155 n) (A263779 n)).toNat

end

end A182488.P3733291378846512802

/-!
# A182489: G.f.: Sum_{n>=0} x^n / Product_{k=1..n} (1 - k*2^k*x).

The programs for A182489, there is no canonical definition to state claims against.
-/

/-! ## A182489.P3884384864804588266

`A086799(A257635(C(n, 2)))`
-/

namespace A182489.P3884384864804588266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A257635 (Nat.choose n 2)).toNat

end

end A182489.P3884384864804588266

/-! ## A182489.P630683631083881094

`or(n, A008619(A099696(n)))`
-/

namespace A182489.P630683631083881094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A008619 (A099696 n).toNat)

end

end A182489.P630683631083881094

/-!
# A182490: Number of Carmichael numbers between 2^n and 2^(n+1).

The programs for A182490, there is no canonical definition to state claims against.
-/

/-! ## A182490.P3396764084260342967

`Δ[A225005(n+1)]`
-/

namespace A182490.P3396764084260342967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182490.P3396764084260342967

/-! ## A182490.P18208250801252195221

`A225005(n+2)-A225005(n+1)`
-/

namespace A182490.P18208250801252195221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225005 (n + 2) - A225005 (n + 1)

end

end A182490.P18208250801252195221

/-! ## A182490.P15229542252581812954

`Δ[A208276(n+1)]-A252943(n+1)`
-/

namespace A182490.P15229542252581812954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208276 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A252943 (n + 1)

end

end A182490.P15229542252581812954

/-! ## A182490.P3131739714464703281

`A208276(n+2)-(A252943(n+1)+A208276(n+1))`
-/

namespace A182490.P3131739714464703281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208276 (n + 2) - (A252943 (n + 1) + A208276 (n + 1))

end

end A182490.P3131739714464703281

/-!
# A182491: T(n,k), a triangular array read by rows, is the Wiener index for the complete bipartite graph K(n,k).

The programs for A182491, the canonical program `A182491.P13648676650091010467` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182491 has offset 1).

The definition of A182491 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182491.P13648676650091010467

`A132111(n)+A131421(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A182491

/-- `A132111(n)+A131421(n+1)` -/
def P13648676650091010467.Spec : Prop :=
  ∀ n, P13648676650091010467.a n = A182491 (n + 1)

theorem P13648676650091010467.correct : P13648676650091010467.Spec := by
  intro n
  simp only [A182491, Nat.add_sub_cancel]

end A182491

/-! ## A182491.P15736418616782222598

`A215630(n+1)+A151890(n)`
-/

namespace A182491.P15736418616782222598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215630 (n + 1) + A151890 n

end

end A182491.P15736418616782222598

namespace A182491

/-- `A215630(n+1)+A151890(n)` -/
def P15736418616782222598.Spec : Prop :=
  ∀ n, P15736418616782222598.a n = A182491 (n + 1)

end A182491

/-! ## A182491.P12031614161340924658

`A245300(n)+A130269(n+1)`
-/

namespace A182491.P12031614161340924658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245300 n + A130269 (n + 1)

end

end A182491.P12031614161340924658

namespace A182491

/-- `A245300(n)+A130269(n+1)` -/
def P12031614161340924658.Spec : Prop :=
  ∀ n, P12031614161340924658.a n = A182491 (n + 1)

end A182491

/-! ## A182491.P3345790909676231905

`A214604(n+1)-A159797(n)`
-/

namespace A182491.P3345790909676231905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214604 (n + 1) - A159797 n

end

end A182491.P3345790909676231905

namespace A182491

/-- `A214604(n+1)-A159797(n)` -/
def P3345790909676231905.Spec : Prop :=
  ∀ n, P3345790909676231905.a n = A182491 (n + 1)

theorem P3345790909676231905.correct : P3345790909676231905.Spec := by
  intro n
  simp only [A182491, Nat.add_sub_cancel, A182491.P3345790909676231905.a, A182491.P13648676650091010467.a, A131421, A131421.P18127152066384474577.a, A132111, A132111.P3713491471241087217.a, A159797, A159797.P12777153155351090962.a, A214604, A214604.P6900025003978506193.a, A025581, A025581.P420762180635059694.a, A051162, A051162.P14261216125704105833.a, A069011, A069011.P9337676359071489470.a, A079904, A079904.P1795222969403769225.a, A002262, A002262.P12129691700837801527.a, A003056, A003056.P5318256527314048597.a, A004736, A004736.P10337537277358081527.a, A076110, A076110.P10148523856418061428.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A057944, A057944.P16851463738746886639.a, A073254, A073254.P2567531270234168708.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A182491

/-! ## A182491.P17321618443171651476

`A228312(n+1)-A367964(n)`
-/

namespace A182491.P17321618443171651476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228312 (n + 1) - A367964 n

end

end A182491.P17321618443171651476

namespace A182491

/-- `A228312(n+1)-A367964(n)` -/
def P17321618443171651476.Spec : Prop :=
  ∀ n, P17321618443171651476.a n = A182491 (n + 1)

end A182491

/-! ## A182491.P94418057936691288

`(A051162(n)+1)²-A079904(n)`
-/

namespace A182491.P94418057936691288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A051162 n + 1) ^ 2 - A079904 n

end

end A182491.P94418057936691288

namespace A182491

/-- `(A051162(n)+1)²-A079904(n)` -/
def P94418057936691288.Spec : Prop :=
  ∀ n, P94418057936691288.a n = A182491 (n + 1)

end A182491

/-! ## A182491.P10600466592033230791

`A094727(n+1)²-A079904(n)`
-/

namespace A182491.P10600466592033230791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (n + 1) ^ 2 - A079904 n

end

end A182491.P10600466592033230791

namespace A182491

/-- `A094727(n+1)²-A079904(n)` -/
def P10600466592033230791.Spec : Prop :=
  ∀ n, P10600466592033230791.a n = A182491 (n + 1)

end A182491

/-! ## A182491.P10255679355350003065

`A144204(n+1)+A070216(n+1)`
-/

namespace A182491.P10255679355350003065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144204 (n + 1) + A070216 (n + 1)

end

end A182491.P10255679355350003065

namespace A182491

/-- `A144204(n+1)+A070216(n+1)` -/
def P10255679355350003065.Spec : Prop :=
  ∀ n, P10255679355350003065.a n = A182491 (n + 1)

theorem P10255679355350003065.correct : P10255679355350003065.Spec := by
  intro n
  simp only [A182491, Nat.add_sub_cancel, A182491.P10255679355350003065.a, A182491.P13648676650091010467.a, A070216, A070216.P4883478267033686530.a, A131421, A131421.P18127152066384474577.a, A132111, A132111.P3713491471241087217.a, A144204, A144204.P15164700038722631133.a, A051162, A051162.P14261216125704105833.a, A069011, A069011.P9337676359071489470.a, A079904, A079904.P1795222969403769225.a, A094727, A094727.P1759177724676722475.a, A002260, A002260.P769748059679640451.a, A002262, A002262.P12129691700837801527.a, A003056, A003056.P5318256527314048597.a, A076110, A076110.P10148523856418061428.a, A057944, A057944.P16851463738746886639.a, A073254, A073254.P2567531270234168708.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A182491

/-! ## A182491.P8217438207397021969

`A215631(n+1)-A108872(n+1)`
-/

namespace A182491.P8217438207397021969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215631 (n + 1) - A108872 (n + 1)

end

end A182491.P8217438207397021969

namespace A182491

/-- `A215631(n+1)-A108872(n+1)` -/
def P8217438207397021969.Spec : Prop :=
  ∀ n, P8217438207397021969.a n = A182491 (n + 1)

theorem P8217438207397021969.correct : P8217438207397021969.Spec := by
  intro n
  simp only [A182491, Nat.add_sub_cancel, A182491.P8217438207397021969.a, A182491.P13648676650091010467.a, A108872, A108872.P7491610889121363756.a, A131421, A131421.P18127152066384474577.a, A132111, A132111.P3713491471241087217.a, A215631, A215631.P10238980067780868376.a, A002024, A002024.P11700297927830783882.a, A002260, A002260.P769748059679640451.a, A051162, A051162.P14261216125704105833.a, A069011, A069011.P9337676359071489470.a, A079904, A079904.P1795222969403769225.a, A002262, A002262.P12129691700837801527.a, A003056, A003056.P5318256527314048597.a, A076110, A076110.P10148523856418061428.a, A057944, A057944.P16851463738746886639.a, A073254, A073254.P2567531270234168708.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A182491

/-! ## A182491.P6725130532030435871

`(1-A108872(n+1))²-A079904(n)`
-/

namespace A182491.P6725130532030435871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A108872 (n + 1)) ^ 2 - A079904 n

end

end A182491.P6725130532030435871

namespace A182491

/-- `(1-A108872(n+1))²-A079904(n)` -/
def P6725130532030435871.Spec : Prop :=
  ∀ n, P6725130532030435871.a n = A182491 (n + 1)

end A182491

/-! ## A182491.P4123344544392649379

`floor(sqrt(A214604(n+1)))²-A079904(n)`
-/

namespace A182491.P4123344544392649379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A214604 (n + 1)) ^ 2 - A079904 n

end

end A182491.P4123344544392649379

namespace A182491

/-- `floor(sqrt(A214604(n+1)))²-A079904(n)` -/
def P4123344544392649379.Spec : Prop :=
  ∀ n, P4123344544392649379.a n = A182491 (n + 1)

end A182491

/-! ## A182491.P4347826741899392761

`A215630(n+1)+A244418(n+1)-1`
-/

namespace A182491.P4347826741899392761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215630 (n + 1) + (A244418 (n + 1) - 1)

end

end A182491.P4347826741899392761

namespace A182491

/-- `A215630(n+1)+A244418(n+1)-1` -/
def P4347826741899392761.Spec : Prop :=
  ∀ n, P4347826741899392761.a n = A182491 (n + 1)

end A182491

/-! ## A182491.P13995831824206513637

`A094727(n+1)²-(A144204(n+1)+1)`
-/

namespace A182491.P13995831824206513637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (n + 1) ^ 2 - (A144204 (n + 1) + 1)

end

end A182491.P13995831824206513637

namespace A182491

/-- `A094727(n+1)²-(A144204(n+1)+1)` -/
def P13995831824206513637.Spec : Prop :=
  ∀ n, P13995831824206513637.a n = A182491 (n + 1)

end A182491

/-! ## A182491.P4776741195082372483

`A108872(n+1)²-(A154614(n+1)+1)`
-/

namespace A182491.P4776741195082372483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108872 (n + 1) ^ 2 - (A154614 (n + 1) + 1)

end

end A182491.P4776741195082372483

namespace A182491

/-- `A108872(n+1)²-(A154614(n+1)+1)` -/
def P4776741195082372483.Spec : Prop :=
  ∀ n, P4776741195082372483.a n = A182491 (n + 1)

end A182491

/-! ## A182491.P16564729938232657815

`(A002262(n)+A002024(n+1))²-A079904(n)`
-/

namespace A182491.P16564729938232657815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + A002024 (n + 1)) ^ 2 - A079904 n

end

end A182491.P16564729938232657815

namespace A182491

/-- `(A002262(n)+A002024(n+1))²-A079904(n)` -/
def P16564729938232657815.Spec : Prop :=
  ∀ n, P16564729938232657815.a n = A182491 (n + 1)

end A182491

/-! ## A182491.P9988294873968146033

`(A075362(n+1)-A079904(n))²-A079904(n)`
-/

namespace A182491.P9988294873968146033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A075362 (n + 1) - A079904 n) ^ 2 - A079904 n

end

end A182491.P9988294873968146033

namespace A182491

/-- `(A075362(n+1)-A079904(n))²-A079904(n)` -/
def P9988294873968146033.Spec : Prop :=
  ∀ n, P9988294873968146033.a n = A182491 (n + 1)

end A182491

/-! ## A182491.P17392856983825444603

`A094727(n+1)²-A002262(n)*A003056(n)`
-/

namespace A182491.P17392856983825444603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (n + 1) ^ 2 - A002262 n * A003056 n

end

end A182491.P17392856983825444603

namespace A182491

/-- `A094727(n+1)²-A002262(n)*A003056(n)` -/
def P17392856983825444603.Spec : Prop :=
  ∀ n, P17392856983825444603.a n = A182491 (n + 1)

end A182491

/-! ## A182491.P8861162673629927802

`A215631(n+1)-(A002260(n+1)+A002024(n+1))`
-/

namespace A182491.P8861162673629927802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215631 (n + 1) - (A002260 (n + 1) + A002024 (n + 1))

end

end A182491.P8861162673629927802

namespace A182491

/-- `A215631(n+1)-(A002260(n+1)+A002024(n+1))` -/
def P8861162673629927802.Spec : Prop :=
  ∀ n, P8861162673629927802.a n = A182491 (n + 1)

theorem P8861162673629927802.correct : P8861162673629927802.Spec := by
  intro n
  simp only [A182491, Nat.add_sub_cancel, A182491.P8861162673629927802.a, A182491.P13648676650091010467.a, A002024, A002024.P11700297927830783882.a, A002260, A002260.P769748059679640451.a, A131421, A131421.P18127152066384474577.a, A132111, A132111.P3713491471241087217.a, A215631, A215631.P10238980067780868376.a, A002262, A002262.P12129691700837801527.a, A051162, A051162.P14261216125704105833.a, A069011, A069011.P9337676359071489470.a, A079904, A079904.P1795222969403769225.a, A108872, A108872.P7491610889121363756.a, A003056, A003056.P5318256527314048597.a, A057944, A057944.P16851463738746886639.a, A076110, A076110.P10148523856418061428.a, A000217, A000217.P10269402890581615239.a, A073254, A073254.P2567531270234168708.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A182491

/-! ## A182491.P6066468079101923080

`A094727(n+1)+A094727(n+1)²-A075362(n+1)`
-/

namespace A182491.P6066468079101923080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (n + 1) + (A094727 (n + 1) ^ 2 - A075362 (n + 1))

end

end A182491.P6066468079101923080

namespace A182491

/-- `A094727(n+1)+A094727(n+1)²-A075362(n+1)` -/
def P6066468079101923080.Spec : Prop :=
  ∀ n, P6066468079101923080.a n = A182491 (n + 1)

end A182491

/-! ## A182491.P18178106924378803164

`A108872(n+1)²-(A108872(n+1)+A075362(n+1))`
-/

namespace A182491.P18178106924378803164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108872 (n + 1) ^ 2 - (A108872 (n + 1) + A075362 (n + 1))

end

end A182491.P18178106924378803164

namespace A182491

/-- `A108872(n+1)²-(A108872(n+1)+A075362(n+1))` -/
def P18178106924378803164.Spec : Prop :=
  ∀ n, P18178106924378803164.a n = A182491 (n + 1)

end A182491

/-!
# A182492: Expansion of 1 - x - (1 - sqrt(1 + 4*x^4)) / (2*x) in powers of x.

The programs for A182492, the canonical program `A182492.P8158037386142892390` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182492 has offset 0).

The definition of A182492 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 348 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182492.P5535203929346510976

`A090192(A004524(n))*A163805(n)`
-/

namespace A182492.P5535203929346510976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090192 (A004524 n).toNat * A163805 n

end

end A182492.P5535203929346510976

namespace A182492

/-- `A090192(A004524(n))*A163805(n)` -/
def P5535203929346510976.Spec : Prop :=
  ∀ n, P5535203929346510976.a n = A182492 n

end A182492

/-! ## A182492.P16565687922442850536

`A090192(A057979(n))*A163805(n)`
-/

namespace A182492.P16565687922442850536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090192 (A057979 n).toNat * A163805 n

end

end A182492.P16565687922442850536

namespace A182492

/-- `A090192(A057979(n))*A163805(n)` -/
def P16565687922442850536.Spec : Prop :=
  ∀ n, P16565687922442850536.a n = A182492 n

end A182492

/-! ## A182492.P18380227780955098874

`A073097(n)*A210628(A057979(n))`
-/

namespace A182492.P18380227780955098874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073097 n * A210628 (A057979 n).toNat

end

end A182492.P18380227780955098874

namespace A182492

/-- `A073097(n)*A210628(A057979(n))` -/
def P18380227780955098874.Spec : Prop :=
  ∀ n, P18380227780955098874.a n = A182492 n

end A182492

/-! ## A182492.P10970154131111603634

`A105523(A055396(n+1))*A105523(A004524(n))`
-/

namespace A182492.P10970154131111603634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105523 (A055396 (n + 1)).toNat * A105523 (A004524 n).toNat

end

end A182492.P10970154131111603634

namespace A182492

/-- `A105523(A055396(n+1))*A105523(A004524(n))` -/
def P10970154131111603634.Spec : Prop :=
  ∀ n, P10970154131111603634.a n = A182492 n

end A182492

/-! ## A182492.P11291021129026914649

`A090192(A004526(n))*A163805(n)`
-/

namespace A182492.P11291021129026914649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090192 (A004526 n).toNat * A163805 n

end

end A182492.P11291021129026914649

namespace A182492

/-- `A090192(A004526(n))*A163805(n)` -/
def P11291021129026914649.Spec : Prop :=
  ∀ n, P11291021129026914649.a n = A182492 n

end A182492

/-! ## A182492.P7213151868932893627

`A090192(A123108(n))*A163805(n)`
-/

namespace A182492.P7213151868932893627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090192 (A123108 n).toNat * A163805 n

end

end A182492.P7213151868932893627

namespace A182492

/-- `A090192(A123108(n))*A163805(n)` -/
def P7213151868932893627.Spec : Prop :=
  ∀ n, P7213151868932893627.a n = A182492 n

end A182492

/-! ## A182492.P17109462311314187929

`A073097(n)*A210628(A123108(n))`
-/

namespace A182492.P17109462311314187929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073097 n * A210628 (A123108 n).toNat

end

end A182492.P17109462311314187929

namespace A182492

/-- `A073097(n)*A210628(A123108(n))` -/
def P17109462311314187929.Spec : Prop :=
  ∀ n, P17109462311314187929.a n = A182492 n

end A182492

/-! ## A182492.P10429386924928320757

`A073097(n)*A210628(A028242(n))`
-/

namespace A182492.P10429386924928320757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073097 n * A210628 (A028242 n).toNat

end

end A182492.P10429386924928320757

namespace A182492

/-- `A073097(n)*A210628(A028242(n))` -/
def P10429386924928320757.Spec : Prop :=
  ∀ n, P10429386924928320757.a n = A182492 n

end A182492

/-! ## A182492.P8158037386142892390

`-A105523(A123108(A022998(n)))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A182492

/-- `-A105523(A123108(A022998(n)))` -/
def P8158037386142892390.Spec : Prop :=
  ∀ n, P8158037386142892390.a n = A182492 n

theorem P8158037386142892390.correct : P8158037386142892390.Spec := by
  intro n
  simp only [A182492]

end A182492

/-! ## A182492.P3228004939281556692

`A000038(n)-A105523(A065423(n+1))`
-/

namespace A182492.P3228004939281556692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A105523 (A065423 (n + 1)).toNat

end

end A182492.P3228004939281556692

namespace A182492

/-- `A000038(n)-A105523(A065423(n+1))` -/
def P3228004939281556692.Spec : Prop :=
  ∀ n, P3228004939281556692.a n = A182492 n

end A182492

