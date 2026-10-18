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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
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
import Seq.B003.C004
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A097300: Tenth column (m=9) of (1,6)-Pascal triangle A096956.

The programs for A097300, the canonical program `A097300.P13929863190191987126` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097300 has offset 0).

The definition of A097300 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A097300.P13929863190191987126

`∑[∑[∑[∑[∑[∑[∑[∑[n+6]]]]]]]]`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A097300

/-- `∑[∑[∑[∑[∑[∑[∑[∑[n+6]]]]]]]]` -/
def P13929863190191987126.Spec : Prop :=
  ∀ n, (P13929863190191987126.a n : ℤ) = A097300 n

theorem P13929863190191987126.correct : P13929863190191987126.Spec := by
  intro n
  simp only [A097300]

end A097300

/-! ## A097300.P16004606331981789376

`2*∑[A097299(n)/2]`
-/

namespace A097300.P16004606331981789376
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097299 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A097300.P16004606331981789376

namespace A097300

/-- `2*∑[A097299(n)/2]` -/
def P16004606331981789376.Spec : Prop :=
  ∀ n, P16004606331981789376.a n = (A097300 n : ℚ)

end A097300

/-! ## A097300.P13918460333694223738

`2*∑[∑[A097298(n)/2]]`
-/

namespace A097300.P13918460333694223738
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097298 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A097300.P13918460333694223738

namespace A097300

/-- `2*∑[∑[A097298(n)/2]]` -/
def P13918460333694223738.Spec : Prop :=
  ∀ n, P13918460333694223738.a n = (A097300 n : ℚ)

end A097300

/-! ## A097300.P13873266064706532241

`2*A096947(n)-A095819(n)`
-/

namespace A097300.P13873266064706532241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A096947 n - A095819 n

end

end A097300.P13873266064706532241

namespace A097300

/-- `2*A096947(n)-A095819(n)` -/
def P13873266064706532241.Spec : Prop :=
  ∀ n, P13873266064706532241.a n = A097300 n

end A097300

/-! ## A097300.P16676580968283443688

`A096947(n)+A000581(n+8)`
-/

namespace A097300.P16676580968283443688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096947 n + A000581 (n + 8)

end

end A097300.P16676580968283443688

namespace A097300

/-- `A096947(n)+A000581(n+8)` -/
def P16676580968283443688.Spec : Prop :=
  ∀ n, P16676580968283443688.a n = A097300 n

end A097300

/-! ## A097300.P4754750448480535056

`lcm(A004442(n)-n, ∑[A097299(n)])`
-/

namespace A097300.P4754750448480535056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097299 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004442 n - (n : ℤ)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A097300.P4754750448480535056

namespace A097300

/-- `lcm(A004442(n)-n, ∑[A097299(n)])` -/
def P4754750448480535056.Spec : Prop :=
  ∀ n, (P4754750448480535056.a n : ℤ) = A097300 n

end A097300

/-! ## A097300.P6940249469275118675

`A095819(n)+2*A000581(n+8)`
-/

namespace A097300.P6940249469275118675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095819 n + 2 * A000581 (n + 8)

end

end A097300.P6940249469275118675

namespace A097300

/-- `A095819(n)+2*A000581(n+8)` -/
def P6940249469275118675.Spec : Prop :=
  ∀ n, P6940249469275118675.a n = A097300 n

end A097300

/-! ## A097300.P9592132228869313712

`∑[A095671(n)]+2*A000581(n+8)`
-/

namespace A097300.P9592132228869313712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095671 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * A000581 (n + 8)

end

end A097300.P9592132228869313712

namespace A097300

/-- `∑[A095671(n)]+2*A000581(n+8)` -/
def P9592132228869313712.Spec : Prop :=
  ∀ n, P9592132228869313712.a n = A097300 n

end A097300

/-! ## A097300.P8780002810928427700

`A000582(n+9)+5*A000581(n+8)`
-/

namespace A097300.P8780002810928427700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9) + 5 * A000581 (n + 8)

end

end A097300.P8780002810928427700

namespace A097300

/-- `A000582(n+9)+5*A000581(n+8)` -/
def P8780002810928427700.Spec : Prop :=
  ∀ n, P8780002810928427700.a n = A097300 n

end A097300

/-! ## A097300.P15100561202824433422

`A093563(A056000(n+6))`
-/

namespace A097300.P15100561202824433422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093563 (A056000 (n + 6)).toNat

end

end A097300.P15100561202824433422

namespace A097300

/-- `A093563(A056000(n+6))` -/
def P15100561202824433422.Spec : Prop :=
  ∀ n, P15100561202824433422.a n = A097300 n

end A097300

/-! ## A097300.P4195788099202031645

`A093563(A051936(n+10)-1)`
-/

namespace A097300.P4195788099202031645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093563 (A051936 (n + 10) - 1).toNat

end

end A097300.P4195788099202031645

namespace A097300

/-- `A093563(A051936(n+10)-1)` -/
def P4195788099202031645.Spec : Prop :=
  ∀ n, P4195788099202031645.a n = A097300 n

end A097300

/-!
# A097301: Numerators of rationals used in the Euler-Maclaurin type derivation of Stirling's formula for N!.

The programs for A097301, there is no canonical definition to state claims against.
-/

/-! ## A097301.P7065743893718384919

`A034373((n+1)²)²-n`
-/

namespace A097301.P7065743893718384919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034373 ((n + 1) ^ 2) ^ 2 - (n : ℤ)

end

end A097301.P7065743893718384919

/-!
# A097303: Denominators in Stirling's asymptotic series.

The programs for A097303, there is no canonical definition to state claims against.
-/

/-! ## A097303.P2533008034317174725

`a(n-1)*A154268(n-1)/n` with `a(0)=1`
-/

namespace A097303.P2533008034317174725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (A154268 (n - 1) : ℚ) / (n : ℚ)

end

end A097303.P2533008034317174725

/-! ## A097303.P6348149423304311818

`A144618(n)/A006882(2*n)`
-/

namespace A097303.P6348149423304311818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144618 n : ℚ) / (A006882 (2 * n) : ℚ)

end

end A097303.P6348149423304311818

/-! ## A097303.P2041858199834468054

`A001164(n)/A000142(gcd(n, A143476(n)))`
-/

namespace A097303.P2041858199834468054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001164 n : ℚ) / (A000142 (Int.gcd (n : ℤ) (A143476 n)) : ℚ)

end

end A097303.P2041858199834468054

/-! ## A097303.P17965413018781900878

`∏[A154268(n)]/(A000142(n)*A154268(n))`
-/

namespace A097303.P17965413018781900878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154268 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A000142 n * A154268 n : ℚ)

end

end A097303.P17965413018781900878

/-! ## A097303.P9360342899518750570

`record[A001316(n)]*A001164(n)/A006882(2*n)`
-/

namespace A097303.P9360342899518750570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A001164 n : ℚ) / (A006882 (2 * n) : ℚ)

end

end A097303.P9360342899518750570

/-!
# A097304: Triangle of numbers of partitions of n with m parts which are all odd.

The programs for A097304, there is no canonical definition to state claims against.
-/

/-! ## A097304.P16801201737352888119

`A152140(comp[A000217(n)])`
-/

namespace A097304.P16801201737352888119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152140 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A097304.P16801201737352888119

/-! ## A097304.P9869245396411929548

`A152140(A014132(n+1))`
-/

namespace A097304.P9869245396411929548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152140 (A014132 (n + 1)).toNat

end

end A097304.P9869245396411929548

/-! ## A097304.P1203460616687957184

`A152140(A195437(n)-n)`
-/

namespace A097304.P1203460616687957184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152140 (A195437 n - (n : ℤ)).toNat

end

end A097304.P1203460616687957184

/-! ## A097304.P14681572897346380699

`A152140(A003056(n)+2+n)`
-/

namespace A097304.P14681572897346380699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152140 (A003056 n + 2 + (n : ℤ)).toNat

end

end A097304.P14681572897346380699

/-! ## A097304.P4726148707821621489

`A152140(A002024(n+1)+1+n)`
-/

namespace A097304.P4726148707821621489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152140 (A002024 (n + 1) + 1 + (n : ℤ)).toNat

end

end A097304.P4726148707821621489

/-!
# A097305: Array of number of partitions of n with odd parts only and largest part 2*m-1 with m in {1,2,..., ceiling(n/2)}.

The programs for A097305, there is no canonical definition to state claims against.
-/

/-! ## A097305.P15191763261126579024

`A116799(A123663(n+1)+1)`
-/

namespace A097305.P15191763261126579024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116799 (A123663 (n + 1) + 1).toNat

end

end A097305.P15191763261126579024

/-! ## A097305.P10111135230206907712

`A116799(comp[n-(n+1)*A116799(n+1)]+1)`
-/

namespace A097305.P10111135230206907712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (n + 1 : ℤ) * A116799 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116799 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A097305.P10111135230206907712

/-! ## A097305.P4138437061298717805

`A274193(lt[A126353(n+1), 2])`
-/

namespace A097305.P4138437061298717805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126353 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274193 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A097305.P4138437061298717805

/-! ## A097305.P15167482334594923544

`A069010(A100527(A191306(n)))`
-/

namespace A097305.P15167482334594923544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A100527 (A191306 n).toNat).toNat

end

end A097305.P15167482334594923544

/-! ## A097305.P135244995706674086

`A115578(A390746(n+1)+A059126(3*n+4))`
-/

namespace A097305.P135244995706674086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115578 (A390746 (n + 1) + A059126 (3 * n + 4)).toNat

end

end A097305.P135244995706674086

/-!
# A097306: Array of number of partitions of n with odd parts not exceeding 2*m-1 with m in {1, 2, ..., ceiling(n/2)}.

The programs for A097306, there is no canonical definition to state claims against.
-/

/-! ## A097306.P4520550481202577099

`A076869(A034868(n))+1`
-/

namespace A097306.P4520550481202577099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076869 (A034868 n).toNat + 1

end

end A097306.P4520550481202577099

/-! ## A097306.P1806738275201252651

`1-(Δ[A185037(n)]-A076869(A034868(n)))`
-/

namespace A097306.P1806738275201252651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185037 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n - A076869 (A034868 n).toNat)

end

end A097306.P1806738275201252651

/-! ## A097306.P1490547052273692973

`2-(char[A035043(n)]-A076869(A034868(n)))`
-/

namespace A097306.P1490547052273692973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A076869 (A034868 n).toNat)

end

end A097306.P1490547052273692973

/-! ## A097306.P2860301074956802270

`2-(A000041(n*char[1])-A076869(A034868(n)))`
-/

namespace A097306.P2860301074956802270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A000041 (n * (if ∃ j, f1 j = n then 1 else 0)) - A076869 (A034868 n).toNat)

end

end A097306.P2860301074956802270

/-! ## A097306.P1763614034743637248

`A124736(A158911(n+1))`
-/

namespace A097306.P1763614034743637248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124736 (A158911 (n + 1)).toNat

end

end A097306.P1763614034743637248

/-!
# A097307: Row sums of array A097306.

The programs for A097307, there is no canonical definition to state claims against.
-/

/-! ## A097307.P647427990180629898

`A171967(n)+A000120(A000296(n))`
-/

namespace A097307.P647427990180629898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171967 n + A000120 (A000296 n).toNat

end

end A097307.P647427990180629898

/-! ## A097307.P15362315901669877106

`A122841(A227499(n+1))+A000041(n)`
-/

namespace A097307.P15362315901669877106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122841 (A227499 (n + 1)).toNat + A000041 n

end

end A097307.P15362315901669877106

/-! ## A097307.P10787584739900288088

`A325853(n)+A092243(A335688(n+1))`
-/

namespace A097307.P10787584739900288088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325853 n + A092243 (A335688 (n + 1)).toNat

end

end A097307.P10787584739900288088

/-!
# A097308: Chebyshev T-polynomials T(n,13) with Diophantine property.

The programs for A097308, the canonical program `A097308.P16571362007131473664` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097308 has offset 0).

The definition of A097308 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097308.P16571362007131473664

`26*a(n-1)-a(n-2)` with `a(0)=1, a(1)=13`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A097308

/-- `26*a(n-1)-a(n-2)` -/
def P16571362007131473664.Spec : Prop :=
  ∀ n, P16571362007131473664.a n = A097308 n

theorem P16571362007131473664.correct : P16571362007131473664.Spec := by
  intro n
  simp only [A097308]

end A097308

/-! ## A097308.P10473270535317684057

`A090247(n)/2`
-/

namespace A097308.P10473270535317684057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090247 n : ℚ) / 2

end

end A097308.P10473270535317684057

namespace A097308

/-- `A090247(n)/2` -/
def P10473270535317684057.Spec : Prop :=
  ∀ n, P10473270535317684057.a n = (A097308 n : ℚ)

end A097308

/-! ## A097308.P1502681443570306605

`2*A322708(n)+1`
-/

namespace A097308.P1502681443570306605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A322708 n + 1

end

end A097308.P1502681443570306605

namespace A097308

/-- `2*A322708(n)+1` -/
def P1502681443570306605.Spec : Prop :=
  ∀ n, P1502681443570306605.a n = A097308 n

end A097308

/-! ## A097308.P7054407144862307533

`record[A041070(n)^(n%2)]`
-/

namespace A097308.P7054407144862307533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041070 n ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097308.P7054407144862307533

namespace A097308

/-- `record[A041070(n)^(n%2)]` -/
def P7054407144862307533.Spec : Prop :=
  ∀ n, P7054407144862307533.a n = A097308 n

end A097308

/-! ## A097308.P13894568060692035393

`record[gcd(A041310(n), A077957(n))]`
-/

namespace A097308.P13894568060692035393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A041310 n) (A077957 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097308.P13894568060692035393

namespace A097308

/-- `record[gcd(A041310(n), A077957(n))]` -/
def P13894568060692035393.Spec : Prop :=
  ∀ n, (P13894568060692035393.a n : ℤ) = A097308 n

end A097308

/-! ## A097308.P30459484818783669

`(A153111(n+1)+A153111(A028310(n)))/2`
-/

namespace A097308.P30459484818783669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153111 (n + 1) + A153111 (A028310 n).toNat : ℚ) / 2

end

end A097308.P30459484818783669

namespace A097308

/-- `(A153111(n+1)+A153111(A028310(n)))/2` -/
def P30459484818783669.Spec : Prop :=
  ∀ n, P30459484818783669.a n = (A097308 n : ℚ)

end A097308

/-! ## A097308.P6774069903450479505

`A041310(2*n+1)-A041310(2*n)`
-/

namespace A097308.P6774069903450479505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041310 (2 * n + 1) - A041310 (2 * n)

end

end A097308.P6774069903450479505

namespace A097308

/-- `A041310(2*n+1)-A041310(2*n)` -/
def P6774069903450479505.Spec : Prop :=
  ∀ n, P6774069903450479505.a n = A097308 n

end A097308

/-! ## A097308.P11382032697236866225

`A041070(2*n+1)-2*A041070(2*n)`
-/

namespace A097308.P11382032697236866225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041070 (2 * n + 1) - 2 * A041070 (2 * n)

end

end A097308.P11382032697236866225

namespace A097308

/-- `A041070(2*n+1)-2*A041070(2*n)` -/
def P11382032697236866225.Spec : Prop :=
  ∀ n, P11382032697236866225.a n = A097308 n

end A097308

/-! ## A097308.P2951663314099735175

`A322790(eq[7, A002260(n+1)])`
-/

namespace A097308.P2951663314099735175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322790 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A097308.P2951663314099735175

namespace A097308

/-- `A322790(eq[7, A002260(n+1)])` -/
def P2951663314099735175.Spec : Prop :=
  ∀ n, P2951663314099735175.a n = A097308 n

end A097308

/-!
# A097309: Chebyshev polynomials of the second kind, U(n,x), evaluated at x=13.

The programs for A097309, there is no canonical definition to state claims against.
-/

/-! ## A097309.P9112031102258470610

`26*a(n-1)-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A097309.P9112031102258470610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  26 * a (n - 1) - a (n - 2)

end

end A097309.P9112031102258470610

/-! ## A097309.P11138524047179776724

`((13+2*sqrt(42))^n-(13-2*sqrt(42))^n)/(4*sqrt(42))`
-/

namespace A097309.P11138524047179776724
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((13 + 2 * Real.sqrt (42 : ℝ)) ^ n - (13 - 2 * Real.sqrt (42 : ℝ)) ^ n) / (4 * Real.sqrt (42 : ℝ))

end

end A097309.P11138524047179776724

/-! ## A097309.P3731759995968319055

`sqrt((A097308(n)²-1)/168)`
-/

namespace A097309.P3731759995968319055
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A097308 n ^ 2 - 1 : ℚ) / 168 : ℝ)

end

end A097309.P3731759995968319055

/-! ## A097309.P3955330980642118936

`record[A000035(n)*A041311(n)]`
-/

namespace A097309.P3955330980642118936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A041311 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097309.P3955330980642118936

/-! ## A097309.P10664580570440645499

`record[(A014681(n)-n)*A041311(n)]`
-/

namespace A097309.P10664580570440645499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014681 n - (n : ℤ)) * A041311 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097309.P10664580570440645499

/-! ## A097309.P3488622628684221066

`∑[A097308(n)]-A253458(n+1)`
-/

namespace A097309.P3488622628684221066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097308 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A253458 (n + 1)

end

end A097309.P3488622628684221066

/-! ## A097309.P6527918337436445061

`A253457(n+1)-A253458(n+1)`
-/

namespace A097309.P6527918337436445061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253457 (n + 1) - A253458 (n + 1)

end

end A097309.P6527918337436445061

/-! ## A097309.P14525056918212958047

`∑[A153111(n+1)]-A153111(n+1)`
-/

namespace A097309.P14525056918212958047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153111 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A153111 (n + 1)

end

end A097309.P14525056918212958047

/-! ## A097309.P7478701031476665288

`A041311(2*n+1)-A041311(2*n)`
-/

namespace A097309.P7478701031476665288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041311 (2 * n + 1) - A041311 (2 * n)

end

end A097309.P7478701031476665288

/-! ## A097309.P15487875141227166631

`A041071(2*n+1)/2-A041071(2*n)`
-/

namespace A097309.P15487875141227166631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041071 (2 * n + 1) : ℚ) / 2 - (A041071 (2 * n) : ℚ)

end

end A097309.P15487875141227166631

/-!
# A097310: Chebyshev T-polynomials T(n,14) with Diophantine property.

The programs for A097310, the canonical program `A097310.P6068703727487071403` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097310 has offset 0).

The definition of A097310 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097310.P6068703727487071403

`28*a(n-1)-a(n-2)` with `a(0)=1, a(1)=14`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A097310

/-- `28*a(n-1)-a(n-2)` -/
def P6068703727487071403.Spec : Prop :=
  ∀ n, P6068703727487071403.a n = A097310 n

theorem P6068703727487071403.correct : P6068703727487071403.Spec := by
  intro n
  simp only [A097310]

end A097310

/-! ## A097310.P9135553677082487341

`A090249(n)/2`
-/

namespace A097310.P9135553677082487341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090249 n : ℚ) / 2

end

end A097310.P9135553677082487341

namespace A097310

/-- `A090249(n)/2` -/
def P9135553677082487341.Spec : Prop :=
  ∀ n, P9135553677082487341.a n = (A097310 n : ℚ)

end A097310

/-! ## A097310.P16970141518096037620

`record[and(A033999(n), A041362(n))]`
-/

namespace A097310.P16970141518096037620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033999 n) (A041362 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097310.P16970141518096037620

namespace A097310

/-- `record[and(A033999(n), A041362(n))]` -/
def P16970141518096037620.Spec : Prop :=
  ∀ n, P16970141518096037620.a n = A097310 n

end A097310

/-! ## A097310.P8382069688282161189

`A041362(A004273(n))%A090249(n)`
-/

namespace A097310.P8382069688282161189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A041362 (A004273 n).toNat) (A090249 n)

end

end A097310.P8382069688282161189

namespace A097310

/-- `A041362(A004273(n))%A090249(n)` -/
def P8382069688282161189.Spec : Prop :=
  ∀ n, P8382069688282161189.a n = A097310 n

end A097310

/-! ## A097310.P8439217776471127080

`(A159668(n)+A041363(A004275(n)))/2`
-/

namespace A097310.P8439217776471127080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159668 n + A041363 (A004275 n).toNat : ℚ) / 2

end

end A097310.P8439217776471127080

namespace A097310

/-- `(A159668(n)+A041363(A004275(n)))/2` -/
def P8439217776471127080.Spec : Prop :=
  ∀ n, P8439217776471127080.a n = (A097310 n : ℚ)

end A097310

/-! ## A097310.P11956961313305152253

`A041362(2*n+1)-A041362(2*n)`
-/

namespace A097310.P11956961313305152253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041362 (2 * n + 1) - A041362 (2 * n)

end

end A097310.P11956961313305152253

namespace A097310

/-- `A041362(2*n+1)-A041362(2*n)` -/
def P11956961313305152253.Spec : Prop :=
  ∀ n, P11956961313305152253.a n = A097310 n

end A097310

/-! ## A097310.P2259943094056927415

`A041362(2*n+1)+A041362(2*n)/A033999(2*n+1)`
-/

namespace A097310.P2259943094056927415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041362 (2 * n + 1) : ℚ) + (A041362 (2 * n) : ℚ) / (A033999 (2 * n + 1) : ℚ)

end

end A097310.P2259943094056927415

namespace A097310

/-- `A041362(2*n+1)+A041362(2*n)/A033999(2*n+1)` -/
def P2259943094056927415.Spec : Prop :=
  ∀ n, P2259943094056927415.a n = (A097310 n : ℚ)

end A097310

/-!
# A097311: Chebyshev polynomials of the second kind, U(n,x), evaluated at x=14.

The programs for A097311, there is no canonical definition to state claims against.
-/

/-! ## A097311.P4666225469726680464

`28*a(n-1)-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A097311.P4666225469726680464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  28 * a (n - 1) - a (n - 2)

end

end A097311.P4666225469726680464

/-! ## A097311.P17402060764297612814

`((14+sqrt(195))^n-(14-sqrt(195))^n)/(2*sqrt(195))`
-/

namespace A097311.P17402060764297612814
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((14 + Real.sqrt (195 : ℝ)) ^ n - (14 - Real.sqrt (195 : ℝ)) ^ n) / (2 * Real.sqrt (195 : ℝ))

end

end A097311.P17402060764297612814

/-! ## A097311.P7835320284182075468

`sqrt((A097310(n)²-1)/195)`
-/

namespace A097311.P7835320284182075468
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A097310 n ^ 2 - 1 : ℚ) / 195 : ℝ)

end

end A097311.P7835320284182075468

/-! ## A097311.P10086071078015070741

`record[(A014681(n)-n)*A041363(n)]`
-/

namespace A097311.P10086071078015070741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014681 n - (n : ℤ)) * A041363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097311.P10086071078015070741

/-! ## A097311.P12627141242105950419

`A041363(A004273(n))-A000007(n)`
-/

namespace A097311.P12627141242105950419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041363 (A004273 n).toNat - A000007 n

end

end A097311.P12627141242105950419

/-! ## A097311.P11097616699988898366

`A041363(A004273(n))+1-A054977(n)`
-/

namespace A097311.P11097616699988898366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041363 (A004273 n).toNat + (1 - A054977 n)

end

end A097311.P11097616699988898366

/-! ## A097311.P13753101905805852755

`∑[A159668(n)]-A159668(n)`
-/

namespace A097311.P13753101905805852755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A159668 n

end

end A097311.P13753101905805852755

/-! ## A097311.P9297781789791498251

`∑[A090249(n)%A159668(n)]`
-/

namespace A097311.P9297781789791498251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090249 n) (A159668 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097311.P9297781789791498251

/-! ## A097311.P8616971583974083987

`A159669(n+1)%∑[A159668(n)]`
-/

namespace A097311.P8616971583974083987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A159669 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A097311.P8616971583974083987

/-! ## A097311.P8258020238203369727

`A041363(2*n+1)-A159668(n)`
-/

namespace A097311.P8258020238203369727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041363 (2 * n + 1) - A159668 n

end

end A097311.P8258020238203369727

/-!
# A097312: Numbers with property that can bring the first digit to the back of the number to get a prime (zeros are dropped).

The programs for A097312, there is no canonical definition to state claims against.
-/

/-! ## A097312.P11276978304395630918

`A095179(n+1)-A010051(A176491(n))`
-/

namespace A097312.P11276978304395630918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095179 (n + 1) - A010051 (A176491 n).toNat

end

end A097312.P11276978304395630918

/-! ## A097312.P14562193662537108434

`A095179(n+1)-A122840(A216084(n+1))`
-/

namespace A097312.P14562193662537108434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095179 (n + 1) - A122840 (A216084 (n + 1)).toNat

end

end A097312.P14562193662537108434

/-!
# A097313: Chebyshev polynomials of the second kind, U(n,x), evaluated at x=15.

The programs for A097313, there is no canonical definition to state claims against.
-/

/-! ## A097313.P8570619992232803942

`30*a(n-1)-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A097313.P8570619992232803942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  30 * a (n - 1) - a (n - 2)

end

end A097313.P8570619992232803942

/-! ## A097313.P8149258904927017405

`((15+4*sqrt(14))^n-(15-4*sqrt(14))^n)/(8*sqrt(14))`
-/

namespace A097313.P8149258904927017405
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((15 + 4 * Real.sqrt (14 : ℝ)) ^ n - (15 - 4 * Real.sqrt (14 : ℝ)) ^ n) / (8 * Real.sqrt (14 : ℝ))

end

end A097313.P8149258904927017405

/-! ## A097313.P14639480009373488218

`sqrt((A068203(n)²-1)/224)`
-/

namespace A097313.P14639480009373488218
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A068203 n ^ 2 - 1 : ℚ) / 224 : ℝ)

end

end A097313.P14639480009373488218

/-! ## A097313.P12773186578511804874

`record[A041097(n)-A041419(n)]`
-/

namespace A097313.P12773186578511804874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041097 n - A041419 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097313.P12773186578511804874

/-! ## A097313.P10948256598938443764

`record[A000035(n)*A041419(n)]`
-/

namespace A097313.P10948256598938443764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A041419 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097313.P10948256598938443764

/-! ## A097313.P10634097930123282973

`∑[A068203(n)]-A253447(n+1)`
-/

namespace A097313.P10634097930123282973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068203 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A253447 (n + 1)

end

end A097313.P10634097930123282973

/-! ## A097313.P1264100926173591365

`A253446(n+1)-A253447(n+1)`
-/

namespace A097313.P1264100926173591365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253446 (n + 1) - A253447 (n + 1)

end

end A097313.P1264100926173591365

/-! ## A097313.P11207342850516496049

`∑[A157877(n+1)]-A157877(n+1)`
-/

namespace A097313.P11207342850516496049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157877 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A157877 (n + 1)

end

end A097313.P11207342850516496049

/-! ## A097313.P12817041705517264873

`∑[A041097(2*n)]-A041097(2*n)`
-/

namespace A097313.P12817041705517264873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041097 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A041097 (2 * n)

end

end A097313.P12817041705517264873

/-! ## A097313.P10854408087546666650

`∑[A041419(2*n)]-A041419(2*n)`
-/

namespace A097313.P10854408087546666650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041419 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A041419 (2 * n)

end

end A097313.P10854408087546666650

/-!
# A097314: Pell equation solutions (3*a(n))^2 - 10*b(n)^2 = -1 with b(n) = A097315(n), n >= 0.

The programs for A097314, the canonical program `A097314.P3365433738890162706` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097314 has offset 0).

The definition of A097314 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097314.P3365433738890162706

`38*a(n-1)-a(n-2)` with `a(0)=1, a(1)=39`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A097314

/-- `38*a(n-1)-a(n-2)` -/
def P3365433738890162706.Spec : Prop :=
  ∀ n, P3365433738890162706.a n = A097314 n

theorem P3365433738890162706.correct : P3365433738890162706.Spec := by
  intro n
  simp only [A097314]

end A097314

/-! ## A097314.P18186069289545539193

`A173127(n+1)/3`
-/

namespace A097314.P18186069289545539193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173127 (n + 1) : ℚ) / 3

end

end A097314.P18186069289545539193

namespace A097314

/-- `A173127(n+1)/3` -/
def P18186069289545539193.Spec : Prop :=
  ∀ n, P18186069289545539193.a n = (A097314 n : ℚ)

end A097314

/-! ## A097314.P10767016006720831361

`A005667(Δ[n²])/3`
-/

namespace A097314.P10767016006720831361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005667 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 3

end

end A097314.P10767016006720831361

namespace A097314

/-- `A005667(Δ[n²])/3` -/
def P10767016006720831361.Spec : Prop :=
  ∀ n, P10767016006720831361.a n = (A097314 n : ℚ)

end A097314

/-! ## A097314.P9290183244181183369

`∑[2*A078986(n)]-1`
-/

namespace A097314.P9290183244181183369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A078986 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A097314.P9290183244181183369

namespace A097314

/-- `∑[2*A078986(n)]-1` -/
def P9290183244181183369.Spec : Prop :=
  ∀ n, P9290183244181183369.a n = A097314 n

end A097314

/-! ## A097314.P16518832464948591072

`∑[A085447(2*n)]-1`
-/

namespace A097314.P16518832464948591072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085447 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A097314.P16518832464948591072

namespace A097314

/-- `∑[A085447(2*n)]-1` -/
def P16518832464948591072.Spec : Prop :=
  ∀ n, P16518832464948591072.a n = A097314 n

end A097314

/-! ## A097314.P1663856830408861562

`∑[A031149(A017017(n))]-1`
-/

namespace A097314.P1663856830408861562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031149 (A017017 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A097314.P1663856830408861562

namespace A097314

/-- `∑[A031149(A017017(n))]-1` -/
def P1663856830408861562.Spec : Prop :=
  ∀ n, P1663856830408861562.a n = A097314 n

end A097314

/-! ## A097314.P11118011256292434351

`2*A078987(n)-A097315(n)`
-/

namespace A097314.P11118011256292434351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A078987 n - A097315 n

end

end A097314.P11118011256292434351

namespace A097314

/-- `2*A078987(n)-A097315(n)` -/
def P11118011256292434351.Spec : Prop :=
  ∀ n, P11118011256292434351.a n = A097314 n

end A097314

/-! ## A097314.P5857427250536579814

`A097315(n)+A084070(n)/3`
-/

namespace A097314.P5857427250536579814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097315 n : ℚ) + (A084070 n : ℚ) / 3

end

end A097314.P5857427250536579814

namespace A097314

/-- `A097315(n)+A084070(n)/3` -/
def P5857427250536579814.Spec : Prop :=
  ∀ n, P5857427250536579814.a n = (A097314 n : ℚ)

end A097314

/-! ## A097314.P17728893612255010428

`A041161(2*n+1)-A097315(n)`
-/

namespace A097314.P17728893612255010428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041161 (2 * n + 1) - A097315 n

end

end A097314.P17728893612255010428

namespace A097314

/-- `A041161(2*n+1)-A097315(n)` -/
def P17728893612255010428.Spec : Prop :=
  ∀ n, P17728893612255010428.a n = A097314 n

end A097314

/-! ## A097314.P13064021889485630223

`A041161(2*n+1)-A041067(2*n)`
-/

namespace A097314.P13064021889485630223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041161 (2 * n + 1) - A041067 (2 * n)

end

end A097314.P13064021889485630223

namespace A097314

/-- `A041161(2*n+1)-A041067(2*n)` -/
def P13064021889485630223.Spec : Prop :=
  ∀ n, P13064021889485630223.a n = A097314 n

end A097314

/-!
# A097315: Pell equation solutions (3*b(n))^2 - 10*a(n)^2 = -1 with b(n) = A097314(n), n >= 0.

The programs for A097315, the canonical program `A097315.P10846733284771966242` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097315 has offset 0).

The definition of A097315 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097315.P10846733284771966242

`38*a(n-1)-a(n-2)` with `a(0)=1, a(1)=37`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A097315

/-- `38*a(n-1)-a(n-2)` -/
def P10846733284771966242.Spec : Prop :=
  ∀ n, P10846733284771966242.a n = A097315 n

theorem P10846733284771966242.correct : P10846733284771966242.Spec := by
  intro n
  simp only [A097315]

end A097315

/-! ## A097315.P16409816943305895938

`A005668(2*n+1)`
-/

namespace A097315.P16409816943305895938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005668 (2 * n + 1)

end

end A097315.P16409816943305895938

namespace A097315

/-- `A005668(2*n+1)` -/
def P16409816943305895938.Spec : Prop :=
  ∀ n, P16409816943305895938.a n = A097315 n

end A097315

/-! ## A097315.P4167466514009244908

`A041067(2*n)`
-/

namespace A097315.P4167466514009244908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041067 (2 * n)

end

end A097315.P4167466514009244908

namespace A097315

/-- `A041067(2*n)` -/
def P4167466514009244908.Spec : Prop :=
  ∀ n, P4167466514009244908.a n = A097315 n

end A097315

/-! ## A097315.P3100246579270699745

`A041161(2*n)`
-/

namespace A097315.P3100246579270699745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041161 (2 * n)

end

end A097315.P3100246579270699745

namespace A097315

/-- `A041161(2*n)` -/
def P3100246579270699745.Spec : Prop :=
  ∀ n, P3100246579270699745.a n = A097315 n

end A097315

/-! ## A097315.P5435790593909783130

`A041683(2*n)`
-/

namespace A097315.P5435790593909783130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041683 (2 * n)

end

end A097315.P5435790593909783130

namespace A097315

/-- `A041683(2*n)` -/
def P5435790593909783130.Spec : Prop :=
  ∀ n, P5435790593909783130.a n = A097315 n

end A097315

/-! ## A097315.P13818785948760138152

`A195558(3*n+1)`
-/

namespace A097315.P13818785948760138152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195558 (3 * n + 1)

end

end A097315.P13818785948760138152

namespace A097315

/-- `A195558(3*n+1)` -/
def P13818785948760138152.Spec : Prop :=
  ∀ n, P13818785948760138152.a n = A097315 n

end A097315

/-! ## A097315.P7051160639603100482

`A078469(Δ[n²])/2`
-/

namespace A097315.P7051160639603100482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078469 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A097315.P7051160639603100482

namespace A097315

/-- `A078469(Δ[n²])/2` -/
def P7051160639603100482.Spec : Prop :=
  ∀ n, P7051160639603100482.a n = (A097315 n : ℚ)

end A097315

/-! ## A097315.P2120839601948569298

`2*A280112(n+1)-1`
-/

namespace A097315.P2120839601948569298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A280112 (n + 1) - 1

end

end A097315.P2120839601948569298

namespace A097315

/-- `2*A280112(n+1)-1` -/
def P2120839601948569298.Spec : Prop :=
  ∀ n, P2120839601948569298.a n = A097315 n

end A097315

/-! ## A097315.P2832617515616401410

`floor(A078469(2*n+1)/2)`
-/

namespace A097315.P2832617515616401410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A078469 (2 * n + 1) : ℚ) / 2⌋

end

end A097315.P2832617515616401410

namespace A097315

/-- `floor(A078469(2*n+1)/2)` -/
def P2832617515616401410.Spec : Prop :=
  ∀ n, P2832617515616401410.a n = A097315 n

end A097315

/-! ## A097315.P2276306839104006647

`record[gcd(val(n+1, 2), A041683(n))]`
-/

namespace A097315.P2276306839104006647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.valuation (n + 1) 2 : ℤ) (A041683 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097315.P2276306839104006647

namespace A097315

/-- `record[gcd(val(n+1, 2), A041683(n))]` -/
def P2276306839104006647.Spec : Prop :=
  ∀ n, (P2276306839104006647.a n : ℤ) = A097315 n

end A097315

/-!
# A097316: Chebyshev U(n,x) polynomial evaluated at x=33.

The programs for A097316, the canonical program `A097316.P2438733855382360447` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097316 has offset 0).

The definition of A097316 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097316.P2438733855382360447

`66*a(n-1)-a(n-2)` with `a(0)=1, a(1)=66`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A097316

/-- `66*a(n-1)-a(n-2)` -/
def P2438733855382360447.Spec : Prop :=
  ∀ n, P2438733855382360447.a n = A097316 n

theorem P2438733855382360447.correct : P2438733855382360447.Spec := by
  intro n
  simp only [A097316]

end A097316

/-! ## A097316.P12942224585287294558

`((33+8*sqrt(17))^(n+1)-(33-8*sqrt(17))^(n+1))/(16*sqrt(17))`
-/

namespace A097316.P12942224585287294558
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((33 + 8 * Real.sqrt (17 : ℝ)) ^ (n + 1) - (33 - 8 * Real.sqrt (17 : ℝ)) ^ (n + 1)) / (16 * Real.sqrt (17 : ℝ))

end

end A097316.P12942224585287294558

namespace A097316

/-- `((33+8*sqrt(17))^(n+1)-(33-8*sqrt(17))^(n+1))/(16*sqrt(17))` -/
def P12942224585287294558.Spec : Prop :=
  ∀ n, P12942224585287294558.a n = (A097316 n : ℝ)

end A097316

/-! ## A097316.P10453993686834914296

`∑[A078988(n)]`
-/

namespace A097316.P10453993686834914296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078988 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097316.P10453993686834914296

namespace A097316

/-- `∑[A078988(n)]` -/
def P10453993686834914296.Spec : Prop :=
  ∀ n, P10453993686834914296.a n = A097316 n

end A097316

/-! ## A097316.P9523848480411022886

`∑[A041025(2*n)]`
-/

namespace A097316.P9523848480411022886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041025 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097316.P9523848480411022886

namespace A097316

/-- `∑[A041025(2*n)]` -/
def P9523848480411022886.Spec : Prop :=
  ∀ n, P9523848480411022886.a n = A097316 n

end A097316

/-! ## A097316.P14102748366819774401

`∑[A041119(2*n)]`
-/

namespace A097316.P14102748366819774401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041119 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097316.P14102748366819774401

namespace A097316

/-- `∑[A041119(2*n)]` -/
def P14102748366819774401.Spec : Prop :=
  ∀ n, P14102748366819774401.a n = A097316 n

end A097316

/-! ## A097316.P13554147573438732061

`∑[A041511(2*n)]`
-/

namespace A097316.P13554147573438732061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041511 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097316.P13554147573438732061

namespace A097316

/-- `∑[A041511(2*n)]` -/
def P13554147573438732061.Spec : Prop :=
  ∀ n, P13554147573438732061.a n = A097316 n

end A097316

/-! ## A097316.P5469479321988827845

`A078989(n)-a(n-1)` with `a(0)=1`
-/

namespace A097316.P5469479321988827845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A078989 n - a (n - 1)

end

end A097316.P5469479321988827845

namespace A097316

/-- `A078989(n)-a(n-1)` -/
def P5469479321988827845.Spec : Prop :=
  ∀ n, P5469479321988827845.a n = A097316 n

end A097316

/-!
# A097317: Numbers of the form 7^p + p^7 for p prime.

The programs for A097317, there is no canonical definition to state claims against.
-/

/-! ## A097317.P1718804412108444926

`A001596(p?[comp[n²]])`
-/

namespace A097317.P1718804412108444926
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001596 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A097317.P1718804412108444926

/-! ## A097317.P3258717540129912637

`A001596(A000040(n+1))`
-/

namespace A097317.P3258717540129912637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001596 (A000040 (n + 1)).toNat

end

end A097317.P3258717540129912637

/-! ## A097317.P18298448794829772341

`A001596(record[A006530(n+2)])`
-/

namespace A097317.P18298448794829772341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001596 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A097317.P18298448794829772341

/-! ## A097317.P15601269392943466758

`A001596(record[A014963(n+2)])`
-/

namespace A097317.P15601269392943466758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001596 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A097317.P15601269392943466758

/-! ## A097317.P11631899825505666538

`A001596(record[A020639(n+2)])`
-/

namespace A097317.P11631899825505666538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001596 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A097317.P11631899825505666538

/-!
# A097318: Numbers with more than one prime factor and, in the ordered factorization, the exponent never increases when read from left to right.

The programs for A097318, there is no canonical definition to state claims against.
-/

/-! ## A097318.P2885591073408431351

`∩[A024619(n+1), A242031(n+1)]`
-/

namespace A097318.P2885591073408431351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097318.P2885591073408431351

/-! ## A097318.P7398270044998416100

`record[A089247(A024619(n+1))]`
-/

namespace A097318.P7398270044998416100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089247 (A024619 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097318.P7398270044998416100

/-! ## A097318.P10201110107335503086

`record[A089247(A048671(n+6))]`
-/

namespace A097318.P10201110107335503086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089247 (A048671 (n + 6)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097318.P10201110107335503086

/-! ## A097318.P2704235243284190550

`filter[A242031(n+1), A143731(#)]`
-/

namespace A097318.P2704235243284190550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A097318.P2704235243284190550

/-! ## A097318.P6513580567454402388

`record[A089247(A080765(n+1)+1)]`
-/

namespace A097318.P6513580567454402388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089247 (A080765 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097318.P6513580567454402388

/-! ## A097318.P2910980028824791403

`record[A089247(comp[A181062(n+1)]+1)]`
-/

namespace A097318.P2910980028824791403
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181062 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089247 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097318.P2910980028824791403

/-! ## A097318.P757646705231108772

`record[A089247(lt[1, A001221(n+1)]+1)]`
-/

namespace A097318.P757646705231108772
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089247 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097318.P757646705231108772

/-! ## A097318.P2621309231270190592

`record[A089247(lt[A014963(n+3), 2]+3)]`
-/

namespace A097318.P2621309231270190592
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 3)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089247 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097318.P2621309231270190592

/-! ## A097318.P15969854910686432406

`record[A089247(lt[A011772(n+1), n]+1)]`
-/

namespace A097318.P15969854910686432406
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011772 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089247 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097318.P15969854910686432406

/-! ## A097318.P6545512323364960466

`eq[A074591(n+1), A089247(n+1)]+1`
-/

namespace A097318.P6545512323364960466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089247 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A097318.P6545512323364960466

/-! ## A097318.P9979880831144491135

`record[A089247(comp[1-A074591(n+1)+n])]`
-/

namespace A097318.P9979880831144491135
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A074591 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089247 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097318.P9979880831144491135

/-! ## A097318.P3300316461150512636

`A153152(eq[A074591(n+1), A089247(n+1)])`
-/

namespace A097318.P3300316461150512636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089247 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A097318.P3300316461150512636

/-!
# A097319: Numbers with more than one prime factor and, in the ordered factorization, the exponents are strictly increasing.

The programs for A097319, there is no canonical definition to state claims against.
-/

/-! ## A097319.P7931279114736574641

`∩[A130091(n+1), A230766(n+1)]`
-/

namespace A097319.P7931279114736574641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230766 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097319.P7931279114736574641

/-! ## A097319.P7475763512779304987

`∩[A177425(n+1), A230766(n+1)]`
-/

namespace A097319.P7475763512779304987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230766 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097319.P7475763512779304987

/-! ## A097319.P2513172399366872491

`∩[A177425(n+1), A304678(n+1)]`
-/

namespace A097319.P2513172399366872491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304678 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097319.P2513172399366872491

/-! ## A097319.P6881988369307305710

`filter[A360252(n+1), A215480(#)]`
-/

namespace A097319.P6881988369307305710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A215480 (f1 j).toNat = 1) n)

end

end A097319.P6881988369307305710

/-! ## A097319.P16672475157621803598

`filter[A317258(n+1), A215480(#)]`
-/

namespace A097319.P16672475157621803598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317258 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A215480 (f1 j).toNat = 1) n)

end

end A097319.P16672475157621803598

/-!
# A097320: Numbers with more than one distinct prime factor and, in the ordered (canonical) factorization, the exponent always decreases when read from left to right.

The programs for A097320, there is no canonical definition to state claims against.
-/

/-! ## A097320.P17083749857430542920

`filter[A304686(n+1), A065202(#)]`
-/

namespace A097320.P17083749857430542920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304686 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065202 (f1 j).toNat = 1) n)

end

end A097320.P17083749857430542920

/-! ## A097320.P1424647331566058611

`filter[A304686(n+1), A355447(#)]`
-/

namespace A097320.P1424647331566058611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304686 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A097320.P1424647331566058611

/-! ## A097320.P5151434266088468742

`∩[A242416(n+1), A304686(n+1)]`
-/

namespace A097320.P5151434266088468742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242416 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304686 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097320.P5151434266088468742

/-! ## A097320.P3640524569105360948

`∩[A112769(n+1), A304686(n+1)]`
-/

namespace A097320.P3640524569105360948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304686 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097320.P3640524569105360948

/-! ## A097320.P4553190968604441660

`∩[A065201(n+1), A304686(n+1)]`
-/

namespace A097320.P4553190968604441660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304686 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097320.P4553190968604441660

/-! ## A097320.P11767495939769259817

`∩[A059404(n+1), A304686(n+1)]`
-/

namespace A097320.P11767495939769259817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304686 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097320.P11767495939769259817

/-! ## A097320.P3573260638286574496

`∩[A126706(n+1), A304686(n+1)]`
-/

namespace A097320.P3573260638286574496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304686 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097320.P3573260638286574496

/-! ## A097320.P12750638898999686747

`∩[A156683(n+1), A304686(n+1)]`
-/

namespace A097320.P12750638898999686747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304686 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097320.P12750638898999686747

/-! ## A097320.P17565464393619851649

`filter[A097318(n+1), A351564(#)]`
-/

namespace A097320.P17565464393619851649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097318 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351564 (f1 j).toNat = 1) n)

end

end A097320.P17565464393619851649

/-! ## A097320.P12684756350068921623

`∩[A097318(n+1), A130091(n+1)]`
-/

namespace A097320.P12684756350068921623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097318 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097320.P12684756350068921623

/-! ## A097320.P335642843188241796

`∩[A097318(n+1), A177425(n+1)]`
-/

namespace A097320.P335642843188241796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097318 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097320.P335642843188241796

/-! ## A097320.P3334727273529767215

`∩[A097318(n+1), A304686(n+1)]`
-/

namespace A097320.P3334727273529767215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097318 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304686 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097320.P3334727273529767215

/-! ## A097320.P10163676385821486010

`∩[A024619(n+1), A304686(n+1)]`
-/

namespace A097320.P10163676385821486010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304686 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097320.P10163676385821486010

/-! ## A097320.P2339248054741376165

`∩[A177425(n+1), A242031(n+1)]`
-/

namespace A097320.P2339248054741376165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097320.P2339248054741376165

/-! ## A097320.P1514644349975288575

`record[A089247(A177425(n+1))]`
-/

namespace A097320.P1514644349975288575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089247 (A177425 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097320.P1514644349975288575

/-! ## A097320.P1864831717703244561

`filter[A304686(n+1), A143731(#)]`
-/

namespace A097320.P1864831717703244561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304686 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A097320.P1864831717703244561

/-!
# A097321: a(n) = (3*n-1) * 3*n * (3*n+1).

The programs for A097321, the canonical program `A097321.P13947082695980242935` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097321 has offset 1).

The definition of A097321 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*(n+1)-1)*3*(n+1)*(3*(n+1)+1)` (program `A097321.P13947082695980242935`, by `A097321.P13947082695980242935.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A097321.P10190902868309570654

`27*(n+1)^3-3*(n+1)`
-/

namespace A097321.P10190902868309570654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (27 * (n + 1) ^ 3 : ℤ) - (3 * (n + 1) : ℤ)

end

end A097321.P10190902868309570654

namespace A097321

/-- `27*(n+1)^3-3*(n+1)` -/
def P10190902868309570654.Spec : Prop :=
  ∀ n, P10190902868309570654.a n = A097321 (n + 1)

theorem P10190902868309570654.correct : P10190902868309570654.Spec := by
  intro n
  simp only [A097321, Nat.add_sub_cancel, A097321.P10190902868309570654.a, A097321.P13947082695980242935.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A097321

/-! ## A097321.P13947082695980242935

`(3*(n+1)-1)*3*(n+1)*(3*(n+1)+1)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A097321

/-- `(3*(n+1)-1)*3*(n+1)*(3*(n+1)+1)` -/
def P13947082695980242935.Spec : Prop :=
  ∀ n, P13947082695980242935.a n = A097321 (n + 1)

theorem P13947082695980242935.correct : P13947082695980242935.Spec := by
  intro n
  simp only [A097321, Nat.add_sub_cancel]

end A097321

/-! ## A097321.P16181547640539826886

`record[(n+3)^gcd(3, n)-(n+3)]`
-/

namespace A097321.P16181547640539826886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 3) ^ Nat.gcd 3 n : ℤ) - (n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097321.P16181547640539826886

namespace A097321

/-- `record[(n+3)^gcd(3, n)-(n+3)]` -/
def P16181547640539826886.Spec : Prop :=
  ∀ n, P16181547640539826886.a n = A097321 (n + 1)

end A097321

/-! ## A097321.P11079032777336821824

`∑[A177073(n)+4]`
-/

namespace A097321.P11079032777336821824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177073 n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097321.P11079032777336821824

namespace A097321

/-- `∑[A177073(n)+4]` -/
def P11079032777336821824.Spec : Prop :=
  ∀ n, P11079032777336821824.a n = A097321 (n + 1)

end A097321

/-!
# A097322: (2n)! divided by denominator of Taylor expansion of exp(cos(x)-1).

The programs for A097322, there is no canonical definition to state claims against.
-/

/-! ## A097322.P1107460997624244156

`A280193(A218735(n+1))+A164898(n+1)`
-/

namespace A097322.P1107460997624244156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (A218735 (n + 1)).toNat + A164898 (n + 1)

end

end A097322.P1107460997624244156

/-! ## A097322.P8034718987737270849

`gcd(A098149(2*n), A111030(A085930(n+3)))`
-/

namespace A097322.P8034718987737270849
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A098149 (2 * n)) (A111030 (A085930 (n + 3)).toNat)

end

end A097322.P8034718987737270849

/-! ## A097322.P4824230652368643002

`A000032(gcd(A100571(2*n+5), A100587(n+1)))`
-/

namespace A097322.P4824230652368643002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Int.gcd (A100571 (2 * n + 5)) (A100587 (n + 1)))

end

end A097322.P4824230652368643002

/-! ## A097322.P11872334764201170089

`gcd(A002878(n+3), A383513(A184425(3*n+2)))`
-/

namespace A097322.P11872334764201170089
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002878 (n + 3)) (A383513 (A184425 (3 * n + 2)).toNat)

end

end A097322.P11872334764201170089

/-!
# A097323: One sixth of the unitary sociable numbers.

The programs for A097323, there is no canonical definition to state claims against.
-/

/-! ## A097323.P15515047767339393750

`floor(A000173(n+1)/6)`
-/

namespace A097323.P15515047767339393750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000173 (n + 1) : ℚ) / 6⌋

end

end A097323.P15515047767339393750

/-! ## A097323.P4110872050716634208

`A000173(A044914(n+1))/6`
-/

namespace A097323.P4110872050716634208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000173 (A044914 (n + 1)).toNat : ℚ) / 6

end

end A097323.P4110872050716634208

/-! ## A097323.P6447166307808374475

`A000173(n+1)/A010171(A158740(n))`
-/

namespace A097323.P6447166307808374475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000173 (n + 1) : ℚ) / (A010171 (A158740 n).toNat : ℚ)

end

end A097323.P6447166307808374475

/-! ## A097323.P1852044057346857117

`ceil(A000173(n+1)/6)%A000041(A161680(n+9))`
-/

namespace A097323.P1852044057346857117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(A000173 (n + 1) : ℚ) / 6⌉ (A000041 (A161680 (n + 9)).toNat)

end

end A097323.P1852044057346857117

/-! ## A097323.P9949068792307934080

`A000173(A077741(n+1))/6`
-/

namespace A097323.P9949068792307934080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000173 (A077741 (n + 1)).toNat : ℚ) / 6

end

end A097323.P9949068792307934080

/-!
# A097325: Period 6: repeat [0, 1, 1, 1, 1, 1].

The programs for A097325, the canonical program `A097325.P186850824810798276` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097325 has offset 0).

The definition of A097325 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097325.P186850824810798276

`ceil(5*n/6)-floor(5*n/6)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A097325

/-- `ceil(5*n/6)-floor(5*n/6)` -/
def P186850824810798276.Spec : Prop :=
  ∀ n, P186850824810798276.a n = A097325 n

theorem P186850824810798276.correct : P186850824810798276.Spec := by
  intro n
  simp only [A097325]

end A097325

/-!
# A097326: Largest integer m such that m*n has the same decimal digit length as n.

The programs for A097326, the canonical program `A097326.P10021405022841991495` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097326 has offset 1).

The definition of A097326 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055642, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A097326.P6782719835733899436

`A097327(n+1)-1`
-/

namespace A097326.P6782719835733899436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097327 (n + 1) - 1

end

end A097326.P6782719835733899436

namespace A097326

/-- `A097327(n+1)-1` -/
def P6782719835733899436.Spec : Prop :=
  ∀ n, P6782719835733899436.a n = A097326 (n + 1)

end A097326

/-! ## A097326.P10021405022841991495

`floor((10^A055642(n+1)-1)/(n+1))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A097326

/-- `floor((10^A055642(n+1)-1)/(n+1))` -/
def P10021405022841991495.Spec : Prop :=
  ∀ n, P10021405022841991495.a n = A097326 (n + 1)

theorem P10021405022841991495.correct : P10021405022841991495.Spec := by
  intro n
  simp only [A097326, Nat.add_sub_cancel]

end A097326

/-! ## A097326.P13998813667930388590

`A109940(n+1)/(n+1)`
-/

namespace A097326.P13998813667930388590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109940 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A097326.P13998813667930388590

namespace A097326

/-- `A109940(n+1)/(n+1)` -/
def P13998813667930388590.Spec : Prop :=
  ∀ n, P13998813667930388590.a n = (A097326 (n + 1) : ℚ)

end A097326

/-! ## A097326.P7170606398322174488

`A377565(n+1)/(n+1)-1`
-/

namespace A097326.P7170606398322174488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A377565 (n + 1) : ℚ) / (n + 1 : ℚ) - 1

end

end A097326.P7170606398322174488

namespace A097326

/-- `A377565(n+1)/(n+1)-1` -/
def P7170606398322174488.Spec : Prop :=
  ∀ n, P7170606398322174488.a n = (A097326 (n + 1) : ℚ)

end A097326

/-! ## A097326.P16866254985556149033

`floor(A061601(n+1)/(n+1))+1`
-/

namespace A097326.P16866254985556149033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A061601 (n + 1) : ℚ) / (n + 1 : ℚ)⌋ + 1

end

end A097326.P16866254985556149033

namespace A097326

/-- `floor(A061601(n+1)/(n+1))+1` -/
def P16866254985556149033.Spec : Prop :=
  ∀ n, P16866254985556149033.a n = A097326 (n + 1)

end A097326

/-! ## A097326.P17287476901324900554

`A000030(A187090(n+1)/(n+1))`
-/

namespace A097326.P17287476901324900554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (SequenceMachineLib.roundAway ((A187090 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A097326.P17287476901324900554

namespace A097326

/-- `A000030(A187090(n+1)/(n+1))` -/
def P17287476901324900554.Spec : Prop :=
  ∀ n, P17287476901324900554.a n = A097326 (n + 1)

end A097326

/-! ## A097326.P4727915898975176275

`A166931(n+1)%A097327(n+1)`
-/

namespace A097326.P4727915898975176275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166931 (n + 1)) (A097327 (n + 1))

end

end A097326.P4727915898975176275

namespace A097326

/-- `A166931(n+1)%A097327(n+1)` -/
def P4727915898975176275.Spec : Prop :=
  ∀ n, P4727915898975176275.a n = A097326 (n + 1)

end A097326

/-! ## A097326.P7922819363976761234

`A127228(n+4)%A097327(n+1)`
-/

namespace A097326.P7922819363976761234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127228 (n + 4)) (A097327 (n + 1))

end

end A097326.P7922819363976761234

namespace A097326

/-- `A127228(n+4)%A097327(n+1)` -/
def P7922819363976761234.Spec : Prop :=
  ∀ n, P7922819363976761234.a n = A097326 (n + 1)

end A097326

/-! ## A097326.P15119434454922814230

`A127229(n+5)%A097327(n+1)`
-/

namespace A097326.P15119434454922814230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127229 (n + 5)) (A097327 (n + 1))

end

end A097326.P15119434454922814230

namespace A097326

/-- `A127229(n+5)%A097327(n+1)` -/
def P15119434454922814230.Spec : Prop :=
  ∀ n, P15119434454922814230.a n = A097326 (n + 1)

end A097326

/-! ## A097326.P9010735754855717661

`A048379(floor(A061601(n+1)/(n+1)))`
-/

namespace A097326.P9010735754855717661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 ⌊(A061601 (n + 1) : ℚ) / (n + 1 : ℚ)⌋.toNat

end

end A097326.P9010735754855717661

namespace A097326

/-- `A048379(floor(A061601(n+1)/(n+1)))` -/
def P9010735754855717661.Spec : Prop :=
  ∀ n, P9010735754855717661.a n = A097326 (n + 1)

end A097326

/-! ## A097326.P1695793979785412048

`ceil(A078267(n+1)/A078268(n+1))-1`
-/

namespace A097326.P1695793979785412048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A078267 (n + 1) : ℚ) / (A078268 (n + 1) : ℚ)⌉ - 1

end

end A097326.P1695793979785412048

namespace A097326

/-- `ceil(A078267(n+1)/A078268(n+1))-1` -/
def P1695793979785412048.Spec : Prop :=
  ∀ n, P1695793979785412048.a n = A097326 (n + 1)

end A097326

/-! ## A097326.P8020658954430360929

`floor(A111708(n+1)/((n+1)²+n+1))`
-/

namespace A097326.P8020658954430360929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A111708 (n + 1) : ℚ) / ((n + 1) ^ 2 + (n + 1) : ℚ)⌋

end

end A097326.P8020658954430360929

namespace A097326

/-- `floor(A111708(n+1)/((n+1)²+n+1))` -/
def P8020658954430360929.Spec : Prop :=
  ∀ n, P8020658954430360929.a n = A097326 (n + 1)

end A097326

/-! ## A097326.P8846838763681997588

`A052038(10*n+11)`
-/

namespace A097326.P8846838763681997588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052038 (10 * n + 11)

end

end A097326.P8846838763681997588

namespace A097326

/-- `A052038(10*n+11)` -/
def P8846838763681997588.Spec : Prop :=
  ∀ n, P8846838763681997588.a n = A097326 (n + 1)

end A097326

/-!
# A097327: Least positive integer m such that m*n has greater decimal digit length than n.

The programs for A097327, the canonical program `A097327.P3677544989114888276` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097327 has offset 1).

The definition of A097327 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A097326, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A097327.P3677544989114888276

`A097326(n+1)+1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A097327

/-- `A097326(n+1)+1` -/
def P3677544989114888276.Spec : Prop :=
  ∀ n, P3677544989114888276.a n = A097327 (n + 1)

theorem P3677544989114888276.correct : P3677544989114888276.Spec := by
  intro n
  simp only [A097327, Nat.add_sub_cancel]

end A097327

/-! ## A097327.P8349420605647141306

`ceil(10^A055642(n+1)/(n+1))`
-/

namespace A097327.P8349420605647141306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(10 : ℚ) ^ (A055642 (n + 1) : ℤ) / (n + 1 : ℚ)⌉

end

end A097327.P8349420605647141306

namespace A097327

/-- `ceil(10^A055642(n+1)/(n+1))` -/
def P8349420605647141306.Spec : Prop :=
  ∀ n, P8349420605647141306.a n = A097327 (n + 1)

end A097327

/-! ## A097327.P9293324282298932732

`A377565(n+1)/(n+1)`
-/

namespace A097327.P9293324282298932732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A377565 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A097327.P9293324282298932732

namespace A097327

/-- `A377565(n+1)/(n+1)` -/
def P9293324282298932732.Spec : Prop :=
  ∀ n, P9293324282298932732.a n = (A097327 (n + 1) : ℚ)

end A097327

/-! ## A097327.P1926763629397778358

`A109940(n+1)/(n+1)+1`
-/

namespace A097327.P1926763629397778358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109940 (n + 1) : ℚ) / (n + 1 : ℚ) + 1

end

end A097327.P1926763629397778358

namespace A097327

/-- `A109940(n+1)/(n+1)+1` -/
def P1926763629397778358.Spec : Prop :=
  ∀ n, P1926763629397778358.a n = (A097327 (n + 1) : ℚ)

end A097327

/-! ## A097327.P12990346420041287141

`floor(A061601(n+1)/(n+1))+2`
-/

namespace A097327.P12990346420041287141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A061601 (n + 1) : ℚ) / (n + 1 : ℚ)⌋ + 2

end

end A097327.P12990346420041287141

namespace A097327

/-- `floor(A061601(n+1)/(n+1))+2` -/
def P12990346420041287141.Spec : Prop :=
  ∀ n, P12990346420041287141.a n = A097327 (n + 1)

end A097327

/-! ## A097327.P8637727429096979283

`ceil(A078267(n+1)/A078268(n+1))`
-/

namespace A097327.P8637727429096979283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A078267 (n + 1) : ℚ) / (A078268 (n + 1) : ℚ)⌉

end

end A097327.P8637727429096979283

namespace A097327

/-- `ceil(A078267(n+1)/A078268(n+1))` -/
def P8637727429096979283.Spec : Prop :=
  ∀ n, P8637727429096979283.a n = A097327 (n + 1)

end A097327

/-! ## A097327.P1026870487188948077

`A000030(A187090(n+1)/(n+1))+1`
-/

namespace A097327.P1026870487188948077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (SequenceMachineLib.roundAway ((A187090 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat + 1

end

end A097327.P1026870487188948077

namespace A097327

/-- `A000030(A187090(n+1)/(n+1))+1` -/
def P1026870487188948077.Spec : Prop :=
  ∀ n, P1026870487188948077.a n = A097327 (n + 1)

end A097327

/-! ## A097327.P2692239782180308243

`A052038(A017281(n+1))+1`
-/

namespace A097327.P2692239782180308243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052038 (A017281 (n + 1)).toNat + 1

end

end A097327.P2692239782180308243

namespace A097327

/-- `A052038(A017281(n+1))+1` -/
def P2692239782180308243.Spec : Prop :=
  ∀ n, P2692239782180308243.a n = A097327 (n + 1)

end A097327

/-! ## A097327.P745092513189246634

`A052038(A020338(n+1))+1`
-/

namespace A097327.P745092513189246634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052038 (A020338 (n + 1)).toNat + 1

end

end A097327.P745092513189246634

namespace A097327

/-- `A052038(A020338(n+1))+1` -/
def P745092513189246634.Spec : Prop :=
  ∀ n, P745092513189246634.a n = A097327 (n + 1)

end A097327

/-! ## A097327.P9169543827977974776

`A052038(A102439(n+1))+1`
-/

namespace A097327.P9169543827977974776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052038 (A102439 (n + 1)).toNat + 1

end

end A097327.P9169543827977974776

namespace A097327

/-- `A052038(A102439(n+1))+1` -/
def P9169543827977974776.Spec : Prop :=
  ∀ n, P9169543827977974776.a n = A097327 (n + 1)

end A097327

/-!
# A097328: Denominator of 1 + 1/5 + 1/9 +...+ 1/(4n+1).

The programs for A097328, there is no canonical definition to state claims against.
-/

/-! ## A097328.P460156201118890936

`A051539(n)/A262681(A120400(n))`
-/

namespace A097328.P460156201118890936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051539 n : ℚ) / (A262681 (A120400 n).toNat : ℚ)

end

end A097328.P460156201118890936

/-! ## A097328.P1710661549452572078

`A051539(n)/A262681(A306520(A000124(n)))`
-/

namespace A097328.P1710661549452572078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051539 n : ℚ) / (A262681 (A306520 (A000124 n).toNat).toNat : ℚ)

end

end A097328.P1710661549452572078

/-! ## A097328.P1068824822352190931

`A051539(n)/A262681(A174783(n))`
-/

namespace A097328.P1068824822352190931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051539 n : ℚ) / (A262681 (A174783 n).toNat : ℚ)

end

end A097328.P1068824822352190931

/-! ## A097328.P3158795374003869118

`A051539(n)/A262681(A153937(n))`
-/

namespace A097328.P3158795374003869118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051539 n : ℚ) / (A262681 (A153937 n).toNat : ℚ)

end

end A097328.P3158795374003869118

/-!
# A097329: Least common multiple of {3,7,11,...,4n+3}.

The programs for A097329, there is no canonical definition to state claims against.
-/

/-! ## A097329.P12471526314362057613

`lcm(a(n-1), record[xor(3, n)])` with `a(0)=3`
-/

namespace A097329.P12471526314362057613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.lcm (a (n - 1)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A097329.P12471526314362057613

/-! ## A097329.P2624736491151348570

`lcm(-a(n-1), 4*n+3)` with `a(0)=3`
-/

namespace A097329.P2624736491151348570
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Int.lcm (-(a (n - 1) : ℤ)) (4 * n + 3 : ℤ)

end

end A097329.P2624736491151348570

/-! ## A097329.P7702260504320821563

`lcm(a(n-1), A004767(n))` with `a(0)=3`
-/

namespace A097329.P7702260504320821563
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A004767 n)

end

end A097329.P7702260504320821563

/-! ## A097329.P12329552572472464431

`lcm(abs(a(n-1)), A166519(2*n))` with `a(0)=3`
-/

namespace A097329.P12329552572472464431
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A166519 (2 * n))

end

end A097329.P12329552572472464431

/-! ## A097329.P6796907342906093003

`lcm(ceil(a(n-1)), A131098(n+2))` with `a(0)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A097329.P6796907342906093003
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A131098 (n + 2))

end

end A097329.P6796907342906093003

/-!
# A097330: In the sequence of prime numbers replace each term p with floor(p/2) and ceiling(p/2).

The programs for A097330, there is no canonical definition to state claims against.
-/

/-! ## A097330.P3432966895887594176

`ceil(A173919(abs(1-n)+1)/2)`
-/

namespace A097330.P3432966895887594176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A173919 (|1 - (n : ℤ)| + 1).toNat : ℚ) / 2⌉

end

end A097330.P3432966895887594176

/-! ## A097330.P10204373341945275379

`floor((p?[A004526(n)]+n%2)/2)`
-/

namespace A097330.P10204373341945275379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + ((n % 2 : ℕ) : ℤ) : ℚ) / 2⌋

end

end A097330.P10204373341945275379

/-! ## A097330.P14951145851082287976

`A063934(n-1)-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A097330.P14951145851082287976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A063934 (n - 1) - a (n - 1)

end

end A097330.P14951145851082287976

/-! ## A097330.P351328217335244254

`A032742(p?[floor(n/2)]-(-1)^n)`
-/

namespace A097330.P351328217335244254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - (-1) ^ n).toNat

end

end A097330.P351328217335244254

/-! ## A097330.P11553442228572694916

`floor(lt[A001222(floor(2*(n+1)/3)+1), 2]/3)+1`
-/

namespace A097330.P11553442228572694916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (⌊(2 * (n + 1) : ℚ) / 3⌋ + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℚ) / 3⌋ + 1

end

end A097330.P11553442228572694916

/-! ## A097330.P762038953973097534

`floor(A093515(A028310(n))/2)`
-/

namespace A097330.P762038953973097534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A093515 (A028310 n).toNat : ℚ) / 2⌋

end

end A097330.P762038953973097534

/-! ## A097330.P5292467782627466015

`ceil(eq[2, A000005(A008619(n))]/4)`
-/

namespace A097330.P5292467782627466015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 4⌉

end

end A097330.P5292467782627466015

/-! ## A097330.P3337361714930136095

`round(eq[1, A001222(A065033(n))]/4)`
-/

namespace A097330.P3337361714930136095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A065033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 4)

end

end A097330.P3337361714930136095

/-! ## A097330.P11357557195135873746

`ceil(eq[1, A001222(A065033(n+1))]/4)`
-/

namespace A097330.P11357557195135873746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A065033 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 4⌉

end

end A097330.P11357557195135873746

/-! ## A097330.P1203104110024607436

`A065033(lt[n-1, A006530(2*or(1, n))])`
-/

namespace A097330.P1203104110024607436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A097330.P1203104110024607436

/-!
# A097331: Expansion of 1 + 2x/(1 + sqrt(1 - 4x^2)).

The programs for A097331, the canonical program `A097331.P4426990625459901142` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097331 has offset 0).

The definition of A097331 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 347 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A097331.P1302140169879228715

`abs(A090192(n))`
-/

namespace A097331.P1302140169879228715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A090192 n|

end

end A097331.P1302140169879228715

namespace A097331

/-- `abs(A090192(n))` -/
def P1302140169879228715.Spec : Prop :=
  ∀ n, P1302140169879228715.a n = A097331 n

end A097331

/-! ## A097331.P8626222922805250384

`abs(A105523(n))`
-/

namespace A097331.P8626222922805250384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A105523 n|

end

end A097331.P8626222922805250384

namespace A097331

/-- `abs(A105523(n))` -/
def P8626222922805250384.Spec : Prop :=
  ∀ n, P8626222922805250384.a n = A097331 n

end A097331

/-! ## A097331.P17201619294570399448

`abs(A210628(n))`
-/

namespace A097331.P17201619294570399448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A210628 n|

end

end A097331.P17201619294570399448

namespace A097331

/-- `abs(A210628(n))` -/
def P17201619294570399448.Spec : Prop :=
  ∀ n, P17201619294570399448.a n = A097331 n

end A097331

/-! ## A097331.P12383596440049557652

`abs(A182492(Δ[n²]))`
-/

namespace A097331.P12383596440049557652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A182492 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat|

end

end A097331.P12383596440049557652

namespace A097331

/-- `abs(A182492(Δ[n²]))` -/
def P12383596440049557652.Spec : Prop :=
  ∀ n, P12383596440049557652.a n = A097331 n

end A097331

/-! ## A097331.P11189667262682475857

`A126120((n-1)%(n+1))`
-/

namespace A097331.P11189667262682475857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A097331.P11189667262682475857

namespace A097331

/-- `A126120((n-1)%(n+1))` -/
def P11189667262682475857.Spec : Prop :=
  ∀ n, P11189667262682475857.a n = A097331 n

end A097331

/-! ## A097331.P4426990625459901142

`A208355(n-2)-a(n-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A097331

/-- `A208355(n-2)-a(n-1)` -/
def P4426990625459901142.Spec : Prop :=
  ∀ n, P4426990625459901142.a n = A097331 n

theorem P4426990625459901142.correct : P4426990625459901142.Spec := by
  intro n
  simp only [A097331]

end A097331

/-! ## A097331.P2546772194746472556

`A329687(A267528(n))`
-/

namespace A097331.P2546772194746472556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329687 (A267528 n).toNat

end

end A097331.P2546772194746472556

namespace A097331

/-- `A329687(A267528(n))` -/
def P2546772194746472556.Spec : Prop :=
  ∀ n, P2546772194746472556.a n = A097331 n

end A097331

/-! ## A097331.P14415138818516985290

`A126120(A289207(n+1))`
-/

namespace A097331.P14415138818516985290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (A289207 (n + 1)).toNat

end

end A097331.P14415138818516985290

namespace A097331

/-- `A126120(A289207(n+1))` -/
def P14415138818516985290.Spec : Prop :=
  ∀ n, P14415138818516985290.a n = A097331 n

end A097331

/-! ## A097331.P14138643325619135492

`A126120(A028310(n)-1)`
-/

namespace A097331.P14138643325619135492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (A028310 n - 1).toNat

end

end A097331.P14138643325619135492

namespace A097331

/-- `A126120(A028310(n)-1)` -/
def P14138643325619135492.Spec : Prop :=
  ∀ n, P14138643325619135492.a n = A097331 n

end A097331

/-! ## A097331.P4125230491460549717

`A126120(A063278(n+3))`
-/

namespace A097331.P4125230491460549717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (A063278 (n + 3)).toNat

end

end A097331.P4125230491460549717

namespace A097331

/-- `A126120(A063278(n+3))` -/
def P4125230491460549717.Spec : Prop :=
  ∀ n, P4125230491460549717.a n = A097331 n

end A097331

/-! ## A097331.P17884437926641298762

`A126120(A057428(n)+n)`
-/

namespace A097331.P17884437926641298762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (A057428 n + (n : ℤ)).toNat

end

end A097331.P17884437926641298762

namespace A097331

/-- `A126120(A057428(n)+n)` -/
def P17884437926641298762.Spec : Prop :=
  ∀ n, P17884437926641298762.a n = A097331 n

end A097331

/-! ## A097331.P16632160225927487613

`A126120(A004273(n)-n)`
-/

namespace A097331.P16632160225927487613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (A004273 n - (n : ℤ)).toNat

end

end A097331.P16632160225927487613

namespace A097331

/-- `A126120(A004273(n)-n)` -/
def P16632160225927487613.Spec : Prop :=
  ∀ n, P16632160225927487613.a n = A097331 n

end A097331

/-! ## A097331.P14779257760281955998

`A126120(n-A057427(n))`
-/

namespace A097331.P14779257760281955998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 ((n : ℤ) - A057427 n).toNat

end

end A097331.P14779257760281955998

namespace A097331

/-- `A126120(n-A057427(n))` -/
def P14779257760281955998.Spec : Prop :=
  ∀ n, P14779257760281955998.a n = A097331 n

end A097331

/-! ## A097331.P3769413778645274526

`A000038(n)-A210628(n)`
-/

namespace A097331.P3769413778645274526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A210628 n

end

end A097331.P3769413778645274526

namespace A097331

/-- `A000038(n)-A210628(n)` -/
def P3769413778645274526.Spec : Prop :=
  ∀ n, P3769413778645274526.a n = A097331 n

end A097331

/-! ## A097331.P647127609848990411

`A057077(n)*A090192(n)`
-/

namespace A097331.P647127609848990411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A090192 n

end

end A097331.P647127609848990411

namespace A097331

/-- `A057077(n)*A090192(n)` -/
def P647127609848990411.Spec : Prop :=
  ∀ n, P647127609848990411.a n = A097331 n

end A097331

/-! ## A097331.P2846259766359120527

`A087960(n)*A105523(n)`
-/

namespace A097331.P2846259766359120527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A105523 n

end

end A097331.P2846259766359120527

namespace A097331

/-- `A087960(n)*A105523(n)` -/
def P2846259766359120527.Spec : Prop :=
  ∀ n, P2846259766359120527.a n = A097331 n

end A097331

/-! ## A097331.P23817791152784675

`A090192(n)*A117569(n)`
-/

namespace A097331.P23817791152784675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090192 n * A117569 n

end

end A097331.P23817791152784675

namespace A097331

/-- `A090192(n)*A117569(n)` -/
def P23817791152784675.Spec : Prop :=
  ∀ n, P23817791152784675.a n = A097331 n

end A097331

/-! ## A097331.P10968489894812338432

`A090192(n)*A121238(n)`
-/

namespace A097331.P10968489894812338432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090192 n * A121238 n

end

end A097331.P10968489894812338432

namespace A097331

/-- `A090192(n)*A121238(n)` -/
def P10968489894812338432.Spec : Prop :=
  ∀ n, P10968489894812338432.a n = A097331 n

end A097331

/-! ## A097331.P3549605365624345746

`A033999(n)*A210628(n)`
-/

namespace A097331.P3549605365624345746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A210628 n

end

end A097331.P3549605365624345746

namespace A097331

/-- `A033999(n)*A210628(n)` -/
def P3549605365624345746.Spec : Prop :=
  ∀ n, P3549605365624345746.a n = A097331 n

end A097331

/-! ## A097331.P7111265310859341945

`A105523(n)*A145063(n)`
-/

namespace A097331.P7111265310859341945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105523 n * A145063 n

end

end A097331.P7111265310859341945

namespace A097331

/-- `A105523(n)*A145063(n)` -/
def P7111265310859341945.Spec : Prop :=
  ∀ n, P7111265310859341945.a n = A097331 n

end A097331

/-!
# A097332: Expansion of (1/(1-x))(1+2x/(1-x+sqrt(1-2x-3x^2))).

The programs for A097332, the canonical program `A097332.P7595539259687864480` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097332 has offset 0).

The definition of A097332 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A097332.P1887399565363698299

`∑[abs(A166587(n))]`
-/

namespace A097332.P1887399565363698299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A166587 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097332.P1887399565363698299

namespace A097332

/-- `∑[abs(A166587(n))]` -/
def P1887399565363698299.Spec : Prop :=
  ∀ n, P1887399565363698299.a n = A097332 n

end A097332

/-! ## A097332.P5200346591181760453

`∑[∑[A105695(n)]]`
-/

namespace A097332.P5200346591181760453
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105695 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097332.P5200346591181760453

namespace A097332

/-- `∑[∑[A105695(n)]]` -/
def P5200346591181760453.Spec : Prop :=
  ∀ n, P5200346591181760453.a n = A097332 n

end A097332

/-! ## A097332.P9471139368809374098

`∑[A086246(n+1)]`
-/

namespace A097332.P9471139368809374098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097332.P9471139368809374098

namespace A097332

/-- `∑[A086246(n+1)]` -/
def P9471139368809374098.Spec : Prop :=
  ∀ n, P9471139368809374098.a n = A097332 n

end A097332

/-! ## A097332.P17696761635560523264

`∑[abs(A292440(n+1))]`
-/

namespace A097332.P17696761635560523264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292440 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097332.P17696761635560523264

namespace A097332

/-- `∑[abs(A292440(n+1))]` -/
def P17696761635560523264.Spec : Prop :=
  ∀ n, P17696761635560523264.a n = A097332 n

end A097332

/-! ## A097332.P7595539259687864480

`∑[A001006(abs(1-n))]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A097332

/-- `∑[A001006(abs(1-n))]` -/
def P7595539259687864480.Spec : Prop :=
  ∀ n, P7595539259687864480.a n = A097332 n

theorem P7595539259687864480.correct : P7595539259687864480.Spec := by
  intro n
  simp only [A097332]

end A097332

/-! ## A097332.P14483115631519090644

`∑[A168049(n+1)]+1`
-/

namespace A097332.P14483115631519090644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A097332.P14483115631519090644

namespace A097332

/-- `∑[A168049(n+1)]+1` -/
def P14483115631519090644.Spec : Prop :=
  ∀ n, P14483115631519090644.a n = A097332 n

end A097332

/-! ## A097332.P9982191831686339943

`1-∑[A168051(n+1)]`
-/

namespace A097332.P9982191831686339943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097332.P9982191831686339943

namespace A097332

/-- `1-∑[A168051(n+1)]` -/
def P9982191831686339943.Spec : Prop :=
  ∀ n, P9982191831686339943.a n = A097332 n

end A097332

/-! ## A097332.P7043284746175282662

`∑[abs(Δ[A099323(n)])]+1`
-/

namespace A097332.P7043284746175282662
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099323 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A097332.P7043284746175282662

namespace A097332

/-- `∑[abs(Δ[A099323(n)])]+1` -/
def P7043284746175282662.Spec : Prop :=
  ∀ n, P7043284746175282662.a n = A097332 n

end A097332

/-! ## A097332.P14518686465850791314

`A005554(n)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A097332.P14518686465850791314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A005554 n + a (n - 2)

end

end A097332.P14518686465850791314

namespace A097332

/-- `A005554(n)+a(n-2)` -/
def P14518686465850791314.Spec : Prop :=
  ∀ n, P14518686465850791314.a n = A097332 n

end A097332

/-! ## A097332.P6962739945757171211

`A001006(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A097332.P6962739945757171211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001006 (n - 1) + a (n - 1)

end

end A097332.P6962739945757171211

namespace A097332

/-- `A001006(n-1)+a(n-1)` -/
def P6962739945757171211.Spec : Prop :=
  ∀ n, P6962739945757171211.a n = A097332 n

end A097332

/-! ## A097332.P2819580108495343340

`∑[A168049(A028310(n)+1)]`
-/

namespace A097332.P2819580108495343340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168049 (A028310 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097332.P2819580108495343340

namespace A097332

/-- `∑[A168049(A028310(n)+1)]` -/
def P2819580108495343340.Spec : Prop :=
  ∀ n, P2819580108495343340.a n = A097332 n

end A097332

/-! ## A097332.P9958916724422887013

`∑[lcm(A033999(n), A166587(n))]`
-/

namespace A097332.P9958916724422887013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A166587 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097332.P9958916724422887013

namespace A097332

/-- `∑[lcm(A033999(n), A166587(n))]` -/
def P9958916724422887013.Spec : Prop :=
  ∀ n, (P9958916724422887013.a n : ℤ) = A097332 n

end A097332

/-! ## A097332.P18279918933545031833

`∑[gcd(A166587(n), A182492(2*n))]`
-/

namespace A097332.P18279918933545031833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A166587 n) (A182492 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097332.P18279918933545031833

namespace A097332

/-- `∑[gcd(A166587(n), A182492(2*n))]` -/
def P18279918933545031833.Spec : Prop :=
  ∀ n, (P18279918933545031833.a n : ℤ) = A097332 n

end A097332

/-! ## A097332.P2863996351593207819

`A082395(n+1)+A082395(n+1)-A005043(n)`
-/

namespace A097332.P2863996351593207819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082395 (n + 1) + (A082395 (n + 1) - A005043 n)

end

end A097332.P2863996351593207819

namespace A097332

/-- `A082395(n+1)+A082395(n+1)-A005043(n)` -/
def P2863996351593207819.Spec : Prop :=
  ∀ n, P2863996351593207819.a n = A097332 n

end A097332

/-! ## A097332.P4852953921837092853

`Δ[A295112(n)/2]+1`
-/

namespace A097332.P4852953921837092853
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295112 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A097332.P4852953921837092853

namespace A097332

/-- `Δ[A295112(n)/2]+1` -/
def P4852953921837092853.Spec : Prop :=
  ∀ n, P4852953921837092853.a n = (A097332 n : ℚ)

end A097332

/-! ## A097332.P15883873681406520403

`A086615(n)+1-A001006(n)`
-/

namespace A097332.P15883873681406520403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086615 n + (1 - A001006 n)

end

end A097332.P15883873681406520403

namespace A097332

/-- `A086615(n)+1-A001006(n)` -/
def P15883873681406520403.Spec : Prop :=
  ∀ n, P15883873681406520403.a n = A097332 n

end A097332

/-! ## A097332.P13372202294753970704

`∑[2*A005043(n)]-A005043(n)`
-/

namespace A097332.P13372202294753970704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005043 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A005043 n

end

end A097332.P13372202294753970704

namespace A097332

/-- `∑[2*A005043(n)]-A005043(n)` -/
def P13372202294753970704.Spec : Prop :=
  ∀ n, P13372202294753970704.a n = A097332 n

end A097332

/-! ## A097332.P8334973877970525003

`2*A082395(n+1)-A005043(n)`
-/

namespace A097332.P8334973877970525003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A082395 (n + 1) - A005043 n

end

end A097332.P8334973877970525003

namespace A097332

/-- `2*A082395(n+1)-A005043(n)` -/
def P8334973877970525003.Spec : Prop :=
  ∀ n, P8334973877970525003.a n = A097332 n

end A097332

/-! ## A097332.P6733576312186431417

`A082395(n+1)+A082395(n+2)-A001006(n)`
-/

namespace A097332.P6733576312186431417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082395 (n + 1) + (A082395 (n + 2) - A001006 n)

end

end A097332.P6733576312186431417

namespace A097332

/-- `A082395(n+1)+A082395(n+2)-A001006(n)` -/
def P6733576312186431417.Spec : Prop :=
  ∀ n, P6733576312186431417.a n = A097332 n

end A097332

/-! ## A097332.P3366944192543455567

`A383527(n)+A383527(n)-A005773(n+1)`
-/

namespace A097332.P3366944192543455567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383527 n + (A383527 n - A005773 (n + 1))

end

end A097332.P3366944192543455567

namespace A097332

/-- `A383527(n)+A383527(n)-A005773(n+1)` -/
def P3366944192543455567.Spec : Prop :=
  ∀ n, P3366944192543455567.a n = A097332 n

end A097332

/-!
# A097333: a(n) = Sum_{k=0..n} C(n-k, floor(k/2)).

The programs for A097333, the canonical program `A097333.P3152708942594488672` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097333 has offset 0).

The definition of A097333 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097333.P3152708942594488672

`a(n-1)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=2`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A097333

/-- `a(n-1)+a(n-3)` -/
def P3152708942594488672.Spec : Prop :=
  ∀ n, (P3152708942594488672.a n : ℤ) = A097333 n

theorem P3152708942594488672.correct : P3152708942594488672.Spec := by
  intro n
  simp only [A097333]

end A097333

/-! ## A097333.P7940759702932677993

`A058278(n+3)`
-/

namespace A097333.P7940759702932677993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058278 (n + 3)

end

end A097333.P7940759702932677993

namespace A097333

/-- `A058278(n+3)` -/
def P7940759702932677993.Spec : Prop :=
  ∀ n, P7940759702932677993.a n = A097333 n

end A097333

/-! ## A097333.P16635873490028978888

`ogf((1+x)/(1-x-x^3))`
-/

namespace A097333.P16635873490028978888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -1, 0, -1] n

end

end A097333.P16635873490028978888

namespace A097333

/-- `ogf((1+x)/(1-x-x^3))` -/
def P16635873490028978888.Spec : Prop :=
  ∀ n, P16635873490028978888.a n = A097333 n

end A097333

/-! ## A097333.P12629574011418074869

`a(n-1)-floor(-a(n-3))` with `a(0)=1, a(1)=2, a(2)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A097333.P12629574011418074869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  a (n - 1) - (-a (n - 3))

end

end A097333.P12629574011418074869

namespace A097333

/-- `a(n-1)-floor(-a(n-3))` -/
def P12629574011418074869.Spec : Prop :=
  ∀ n, P12629574011418074869.a n = A097333 n

end A097333

/-! ## A097333.P9630546471369881460

`a(n-1)-ceil(-a(n-3))` with `a(0)=1, a(1)=2, a(2)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A097333.P9630546471369881460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  a (n - 1) - (-a (n - 3))

end

end A097333.P9630546471369881460

namespace A097333

/-- `a(n-1)-ceil(-a(n-3))` -/
def P9630546471369881460.Spec : Prop :=
  ∀ n, P9630546471369881460.a n = A097333 n

end A097333

/-! ## A097333.P6619655203746631542

`a(n-1)-round(-a(n-3))` with `a(0)=1, a(1)=2, a(2)=2`

`round` is left out, it is the identity on integers.
-/

namespace A097333.P6619655203746631542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  a (n - 1) - (-a (n - 3))

end

end A097333.P6619655203746631542

namespace A097333

/-- `a(n-1)-round(-a(n-3))` -/
def P6619655203746631542.Spec : Prop :=
  ∀ n, P6619655203746631542.a n = A097333 n

end A097333

/-! ## A097333.P15086106548071544030

`a(n-1)-(a(n-5)-a(n-2))` with `a(0)=1, a(1)=2, a(2)=2, a(3)=3, a(4)=5`
-/

namespace A097333.P15086106548071544030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2, 3, 5] fun n a =>
  a (n - 1) - (a (n - 5) - a (n - 2))

end

end A097333.P15086106548071544030

namespace A097333

/-- `a(n-1)-(a(n-5)-a(n-2))` -/
def P15086106548071544030.Spec : Prop :=
  ∀ n, P15086106548071544030.a n = A097333 n

end A097333

/-! ## A097333.P4892193250881165323

`∑[A058278(n)]`
-/

namespace A097333.P4892193250881165323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058278 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097333.P4892193250881165323

namespace A097333

/-- `∑[A058278(n)]` -/
def P4892193250881165323.Spec : Prop :=
  ∀ n, P4892193250881165323.a n = A097333 n

end A097333

/-! ## A097333.P684990604129080652

`A226275(n-char[2])`
-/

namespace A097333.P684990604129080652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226275 (n - (if ∃ j, f1 j = n then 1 else 0))

end

end A097333.P684990604129080652

namespace A097333

/-- `A226275(n-char[2])` -/
def P684990604129080652.Spec : Prop :=
  ∀ n, P684990604129080652.a n = A097333 n

end A097333

/-! ## A097333.P2774952289920351240

`A226916(2*(n+4))`
-/

namespace A097333.P2774952289920351240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226916 (2 * (n + 4))

end

end A097333.P2774952289920351240

namespace A097333

/-- `A226916(2*(n+4))` -/
def P2774952289920351240.Spec : Prop :=
  ∀ n, P2774952289920351240.a n = A097333 n

end A097333

/-! ## A097333.P13346398416249156591

`A003410(n-floor(atan(n)))`
-/

namespace A097333.P13346398416249156591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003410 ((n : ℤ) - ⌊Real.arctan (n : ℝ)⌋).toNat

end

end A097333.P13346398416249156591

namespace A097333

/-- `A003410(n-floor(atan(n)))` -/
def P13346398416249156591.Spec : Prop :=
  ∀ n, P13346398416249156591.a n = A097333 n

end A097333

/-! ## A097333.P5619347360980210541

`A226275(n)-A185012(n)`
-/

namespace A097333.P5619347360980210541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226275 n - A185012 n

end

end A097333.P5619347360980210541

namespace A097333

/-- `A226275(n)-A185012(n)` -/
def P5619347360980210541.Spec : Prop :=
  ∀ n, P5619347360980210541.a n = A097333 n

end A097333

/-! ## A097333.P15060682277723814750

`A135851(n+1)+A068921(n)`
-/

namespace A097333.P15060682277723814750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135851 (n + 1) + A068921 n

end

end A097333.P15060682277723814750

namespace A097333

/-- `A135851(n+1)+A068921(n)` -/
def P15060682277723814750.Spec : Prop :=
  ∀ n, P15060682277723814750.a n = A097333 n

end A097333

/-! ## A097333.P7989878265836473440

`A306276(n+1)+A277252(n)`
-/

namespace A097333.P7989878265836473440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306276 (n + 1) + A277252 n

end

end A097333.P7989878265836473440

namespace A097333

/-- `A306276(n+1)+A277252(n)` -/
def P7989878265836473440.Spec : Prop :=
  ∀ n, P7989878265836473440.a n = A097333 n

end A097333

/-! ## A097333.P11786863790737796428

`A078012(n+2)+A000930(n)`
-/

namespace A097333.P11786863790737796428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 (n + 2) + A000930 n

end

end A097333.P11786863790737796428

namespace A097333

/-- `A078012(n+2)+A000930(n)` -/
def P11786863790737796428.Spec : Prop :=
  ∀ n, P11786863790737796428.a n = A097333 n

end A097333

/-! ## A097333.P9687777759079871056

`A078012(n+2)+∑[A078012(n)]`
-/

namespace A097333.P9687777759079871056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097333.P9687777759079871056

namespace A097333

/-- `A078012(n+2)+∑[A078012(n)]` -/
def P9687777759079871056.Spec : Prop :=
  ∀ n, P9687777759079871056.a n = A097333 n

end A097333

/-! ## A097333.P859145534730479389

`A135851(n+1)+A000930(n+1)`
-/

namespace A097333.P859145534730479389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135851 (n + 1) + A000930 (n + 1)

end

end A097333.P859145534730479389

namespace A097333

/-- `A135851(n+1)+A000930(n+1)` -/
def P859145534730479389.Spec : Prop :=
  ∀ n, P859145534730479389.a n = A097333 n

end A097333

/-! ## A097333.P3193075027666263340

`A013979(n+3)-A107458(n+1)`
-/

namespace A097333.P3193075027666263340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013979 (n + 3) - A107458 (n + 1)

end

end A097333.P3193075027666263340

namespace A097333

/-- `A013979(n+3)-A107458(n+1)` -/
def P3193075027666263340.Spec : Prop :=
  ∀ n, P3193075027666263340.a n = A097333 n

end A097333

/-! ## A097333.P14484587625962790989

`A107458(n+3)+A013979(n+2)`
-/

namespace A097333.P14484587625962790989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107458 (n + 3) + A013979 (n + 2)

end

end A097333.P14484587625962790989

namespace A097333

/-- `A107458(n+3)+A013979(n+2)` -/
def P14484587625962790989.Spec : Prop :=
  ∀ n, P14484587625962790989.a n = A097333 n

end A097333

/-! ## A097333.P660039494263494443

`A078012(n+2)+A078012(n+3)`
-/

namespace A097333.P660039494263494443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 (n + 2) + A078012 (n + 3)

end

end A097333.P660039494263494443

namespace A097333

/-- `A078012(n+2)+A078012(n+3)` -/
def P660039494263494443.Spec : Prop :=
  ∀ n, P660039494263494443.a n = A097333 n

end A097333

/-!
# A097334: a(n) = Sum_{k=0..n} C(n-k, floor(k/2))*2^k.

The programs for A097334, the canonical program `A097334.P14805364941530549614` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097334 has offset 0).

The definition of A097334 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097334.P14805364941530549614

`a(n-1)+4*a(n-3)` with `a(0)=1, a(1)=3, a(2)=3`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A097334

/-- `a(n-1)+4*a(n-3)` -/
def P14805364941530549614.Spec : Prop :=
  ∀ n, (P14805364941530549614.a n : ℤ) = A097334 n

theorem P14805364941530549614.correct : P14805364941530549614.Spec := by
  intro n
  simp only [A097334]

end A097334

/-! ## A097334.P13202686839300274071

`ogf((1+2x)/(1-x-4x^3))`
-/

namespace A097334.P13202686839300274071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -1, 0, -4] n

end

end A097334.P13202686839300274071

namespace A097334

/-- `ogf((1+2x)/(1-x-4x^3))` -/
def P13202686839300274071.Spec : Prop :=
  ∀ n, P13202686839300274071.a n = A097334 n

end A097334

/-! ## A097334.P13293555593002294001

`a(n-1)+lcm(4, a(n-3))` with `a(0)=1, a(1)=3, a(2)=3`
-/

namespace A097334.P13293555593002294001
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 3] fun n a =>
  a (n - 1) + Nat.lcm 4 (a (n - 3))

end

end A097334.P13293555593002294001

namespace A097334

/-- `a(n-1)+lcm(4, a(n-3))` -/
def P13293555593002294001.Spec : Prop :=
  ∀ n, (P13293555593002294001.a n : ℤ) = A097334 n

end A097334

/-! ## A097334.P17137351339432087921

`5*a(n-3)-(a(n-3)-a(n-1))` with `a(0)=1, a(1)=3, a(2)=3`
-/

namespace A097334.P17137351339432087921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 3] fun n a =>
  5 * a (n - 3) - (a (n - 3) - a (n - 1))

end

end A097334.P17137351339432087921

namespace A097334

/-- `5*a(n-3)-(a(n-3)-a(n-1))` -/
def P17137351339432087921.Spec : Prop :=
  ∀ n, P17137351339432087921.a n = A097334 n

end A097334

/-! ## A097334.P16716850293420787510

`A001607(n)+2^n`
-/

namespace A097334.P16716850293420787510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001607 n + (2 ^ n : ℤ)

end

end A097334.P16716850293420787510

namespace A097334

/-- `A001607(n)+2^n` -/
def P16716850293420787510.Spec : Prop :=
  ∀ n, P16716850293420787510.a n = A097334 n

end A097334

/-! ## A097334.P18113174779661189736

`a(n-1)+A169998(n)+a(n-1)` with `a(0)=1`
-/

namespace A097334.P18113174779661189736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A169998 n + a (n - 1))

end

end A097334.P18113174779661189736

namespace A097334

/-- `a(n-1)+A169998(n)+a(n-1)` -/
def P18113174779661189736.Spec : Prop :=
  ∀ n, P18113174779661189736.a n = A097334 n

end A097334

/-! ## A097334.P4128320314633379452

`A122946(n+1)+A089977(n)`
-/

namespace A097334.P4128320314633379452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122946 (n + 1) + A089977 n

end

end A097334.P4128320314633379452

namespace A097334

/-- `A122946(n+1)+A089977(n)` -/
def P4128320314633379452.Spec : Prop :=
  ∀ n, P4128320314633379452.a n = A097334 n

end A097334

/-! ## A097334.P15664479201898319058

`A000051(n)+A001607(n)-1`
-/

namespace A097334.P15664479201898319058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n + (A001607 n - 1)

end

end A097334.P15664479201898319058

namespace A097334

/-- `A000051(n)+A001607(n)-1` -/
def P15664479201898319058.Spec : Prop :=
  ∀ n, P15664479201898319058.a n = A097334 n

end A097334

/-! ## A097334.P6241878061776740861

`A089977(n+1)-A110512(n+1)`
-/

namespace A097334.P6241878061776740861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089977 (n + 1) - A110512 (n + 1)

end

end A097334.P6241878061776740861

namespace A097334

/-- `A089977(n+1)-A110512(n+1)` -/
def P6241878061776740861.Spec : Prop :=
  ∀ n, P6241878061776740861.a n = A097334 n

end A097334

/-! ## A097334.P13667423614492275198

`A122946(n+2)-A001607(n+1)`
-/

namespace A097334.P13667423614492275198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122946 (n + 2) - A001607 (n + 1)

end

end A097334.P13667423614492275198

namespace A097334

/-- `A122946(n+2)-A001607(n+1)` -/
def P13667423614492275198.Spec : Prop :=
  ∀ n, P13667423614492275198.a n = A097334 n

end A097334

/-! ## A097334.P8212867672211642263

`A089977(n+1)+2*A001607(n)`
-/

namespace A097334.P8212867672211642263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089977 (n + 1) + 2 * A001607 n

end

end A097334.P8212867672211642263

namespace A097334

/-- `A089977(n+1)+2*A001607(n)` -/
def P8212867672211642263.Spec : Prop :=
  ∀ n, P8212867672211642263.a n = A097334 n

end A097334

/-! ## A097334.P8748455033757305410

`A000079(n)+A078050(n+2)/4`
-/

namespace A097334.P8748455033757305410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n : ℚ) + (A078050 (n + 2) : ℚ) / 4

end

end A097334.P8748455033757305410

namespace A097334

/-- `A000079(n)+A078050(n+2)/4` -/
def P8748455033757305410.Spec : Prop :=
  ∀ n, P8748455033757305410.a n = (A097334 n : ℚ)

end A097334

/-! ## A097334.P17386130618174939592

`A000079(n)+∑[A078050(n)]-A078050(n)`
-/

namespace A097334.P17386130618174939592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078050 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (∑ j ∈ Finset.range (n + 1), f1 j - A078050 n)

end

end A097334.P17386130618174939592

namespace A097334

/-- `A000079(n)+∑[A078050(n)]-A078050(n)` -/
def P17386130618174939592.Spec : Prop :=
  ∀ n, P17386130618174939592.a n = A097334 n

end A097334

/-! ## A097334.P7133605776869420486

`A001045(n+1)+A001607(n)+A001045(n)`
-/

namespace A097334.P7133605776869420486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) + (A001607 n + A001045 n)

end

end A097334.P7133605776869420486

namespace A097334

/-- `A001045(n+1)+A001607(n)+A001045(n)` -/
def P7133605776869420486.Spec : Prop :=
  ∀ n, P7133605776869420486.a n = A097334 n

end A097334

/-! ## A097334.P8022279490481611535

`A113726(n+1)+A113726(n)-A110512(n+1)`
-/

namespace A097334.P8022279490481611535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113726 (n + 1) + (A113726 n - A110512 (n + 1))

end

end A097334.P8022279490481611535

namespace A097334

/-- `A113726(n+1)+A113726(n)-A110512(n+1)` -/
def P8022279490481611535.Spec : Prop :=
  ∀ n, P8022279490481611535.a n = A097334 n

end A097334

/-! ## A097334.P276893517387809442

`A131572(2*n+1)+A131572(2*n+1)-A089977(n+1)`
-/

namespace A097334.P276893517387809442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131572 (2 * n + 1) + (A131572 (2 * n + 1) - A089977 (n + 1))

end

end A097334.P276893517387809442

namespace A097334

/-- `A131572(2*n+1)+A131572(2*n+1)-A089977(n+1)` -/
def P276893517387809442.Spec : Prop :=
  ∀ n, P276893517387809442.a n = A097334 n

end A097334

/-! ## A097334.P11115304633476754027

`A000079(n+1)-A089977(n+1)`
-/

namespace A097334.P11115304633476754027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - A089977 (n + 1)

end

end A097334.P11115304633476754027

namespace A097334

/-- `A000079(n+1)-A089977(n+1)` -/
def P11115304633476754027.Spec : Prop :=
  ∀ n, P11115304633476754027.a n = A097334 n

end A097334

/-! ## A097334.P5319436427468340149

`A000051(n+1)-(A089977(n+1)+1)`
-/

namespace A097334.P5319436427468340149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (n + 1) - (A089977 (n + 1) + 1)

end

end A097334.P5319436427468340149

namespace A097334

/-- `A000051(n+1)-(A089977(n+1)+1)` -/
def P5319436427468340149.Spec : Prop :=
  ∀ n, P5319436427468340149.a n = A097334 n

end A097334

/-! ## A097334.P6019679451623679857

`A083318(n+1)-(A089977(n+1)+1)`
-/

namespace A097334.P6019679451623679857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083318 (n + 1) - (A089977 (n + 1) + 1)

end

end A097334.P6019679451623679857

namespace A097334

/-- `A083318(n+1)-(A089977(n+1)+1)` -/
def P6019679451623679857.Spec : Prop :=
  ∀ n, P6019679451623679857.a n = A097334 n

end A097334

/-! ## A097334.P11001495252093388969

`(A000079(n+1)-A110512(n+1))/2`
-/

namespace A097334.P11001495252093388969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (n + 1) - A110512 (n + 1) : ℚ) / 2

end

end A097334.P11001495252093388969

namespace A097334

/-- `(A000079(n+1)-A110512(n+1))/2` -/
def P11001495252093388969.Spec : Prop :=
  ∀ n, P11001495252093388969.a n = (A097334 n : ℚ)

end A097334

/-!
# A097335: a(n) = Sum_{k=0..n} C(n-k, floor(k/2))*3^k.

The programs for A097335, the canonical program `A097335.P9812909238560370305` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097335 has offset 0).

The definition of A097335 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097335.P9812909238560370305

`a(n-1)+9*a(n-3)` with `a(0)=1, a(1)=4, a(2)=4`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A097335

/-- `a(n-1)+9*a(n-3)` -/
def P9812909238560370305.Spec : Prop :=
  ∀ n, (P9812909238560370305.a n : ℤ) = A097335 n

theorem P9812909238560370305.correct : P9812909238560370305.Spec := by
  intro n
  simp only [A097335]

end A097335

/-! ## A097335.P10347034246719278915

`a(n-1)+lcm(9, a(n-3))` with `a(0)=1, a(1)=4, a(2)=4`
-/

namespace A097335.P10347034246719278915
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 4] fun n a =>
  a (n - 1) + Nat.lcm 9 (a (n - 3))

end

end A097335.P10347034246719278915

namespace A097335

/-- `a(n-1)+lcm(9, a(n-3))` -/
def P10347034246719278915.Spec : Prop :=
  ∀ n, (P10347034246719278915.a n : ℤ) = A097335 n

end A097335

/-! ## A097335.P13772980233332731830

`10*a(n-3)-(a(n-3)-a(n-1))` with `a(0)=1, a(1)=4, a(2)=4`
-/

namespace A097335.P13772980233332731830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 4] fun n a =>
  10 * a (n - 3) - (a (n - 3) - a (n - 1))

end

end A097335.P13772980233332731830

namespace A097335

/-- `10*a(n-3)-(a(n-3)-a(n-1))` -/
def P13772980233332731830.Spec : Prop :=
  ∀ n, P13772980233332731830.a n = A097335 n

end A097335

/-! ## A097335.P1824849548684827172

`ogf((1+3x)/(1-x-9x^3))`
-/

namespace A097335.P1824849548684827172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, -1, 0, -9] n

end

end A097335.P1824849548684827172

namespace A097335

/-- `ogf((1+3x)/(1-x-9x^3))` -/
def P1824849548684827172.Spec : Prop :=
  ∀ n, P1824849548684827172.a n = A097335 n

end A097335

/-! ## A097335.P8973374996022006948

`A008486(A008486(a(n-3)))+a(n-1)` with `a(0)=1, a(1)=4, a(2)=4`
-/

namespace A097335.P8973374996022006948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 4] fun n a =>
  A008486 (A008486 (a (n - 3)).toNat).toNat + a (n - 1)

end

end A097335.P8973374996022006948

namespace A097335

/-- `A008486(A008486(a(n-3)))+a(n-1)` -/
def P8973374996022006948.Spec : Prop :=
  ∀ n, P8973374996022006948.a n = A097335 n

end A097335

/-!
# A097336: Sum k=0..n, C(n-k, floor(k/2))4^k.

The programs for A097336, the canonical program `A097336.P10913311150363484082` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097336 has offset 0).

The definition of A097336 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097336.P10913311150363484082

`a(n-1)+16*a(n-3)` with `a(0)=1, a(1)=5, a(2)=5`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A097336

/-- `a(n-1)+16*a(n-3)` -/
def P10913311150363484082.Spec : Prop :=
  ∀ n, (P10913311150363484082.a n : ℤ) = A097336 n

theorem P10913311150363484082.correct : P10913311150363484082.Spec := by
  intro n
  simp only [A097336]

end A097336

/-! ## A097336.P928726181101994580

`a(n-1)+lcm(16, a(n-3))` with `a(0)=1, a(1)=5, a(2)=5`
-/

namespace A097336.P928726181101994580
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 5] fun n a =>
  a (n - 1) + Nat.lcm 16 (a (n - 3))

end

end A097336.P928726181101994580

namespace A097336

/-- `a(n-1)+lcm(16, a(n-3))` -/
def P928726181101994580.Spec : Prop :=
  ∀ n, (P928726181101994580.a n : ℤ) = A097336 n

end A097336

/-!
# A097337: Integer part of the edge of a cube that has space-diagonal n.

The programs for A097337, the canonical program `A097337.P9085390289055085705` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097337 has offset 1).

The definition of A097337 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A097337.P6975889923634507972

`floor((n+1)/sqrt(3))`
-/

namespace A097337.P6975889923634507972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.sqrt (3 : ℝ)⌋

end

end A097337.P6975889923634507972

namespace A097337

/-- `floor((n+1)/sqrt(3))` -/
def P6975889923634507972.Spec : Prop :=
  ∀ n, P6975889923634507972.a n = A097337 (n + 1)

end A097337

/-! ## A097337.P10699427862880515867

`∑[char[∑[A080757(n)]]]`
-/

namespace A097337.P10699427862880515867
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080757 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097337.P10699427862880515867

namespace A097337

/-- `∑[char[∑[A080757(n)]]]` -/
def P10699427862880515867.Spec : Prop :=
  ∀ n, (P10699427862880515867.a n : ℤ) = A097337 (n + 1)

end A097337

/-! ## A097337.P17805834750711410300

`A194979(n+1)-1`
-/

namespace A097337.P17805834750711410300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194979 (n + 1) - 1

end

end A097337.P17805834750711410300

namespace A097337

/-- `A194979(n+1)-1` -/
def P17805834750711410300.Spec : Prop :=
  ∀ n, P17805834750711410300.a n = A097337 (n + 1)

end A097337

/-! ## A097337.P9036651605622554865

`n-A183142(n+1)`
-/

namespace A097337.P9036651605622554865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A183142 (n + 1)

end

end A097337.P9036651605622554865

namespace A097337

/-- `n-A183142(n+1)` -/
def P9036651605622554865.Spec : Prop :=
  ∀ n, P9036651605622554865.a n = A097337 (n + 1)

end A097337

/-! ## A097337.P9190151236986702732

`ceil(sqrt(A087483(n)))-1`
-/

namespace A097337.P9190151236986702732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A087483 n : ℝ)⌉ - 1

end

end A097337.P9190151236986702732

namespace A097337

/-- `ceil(sqrt(A087483(n)))-1` -/
def P9190151236986702732.Spec : Prop :=
  ∀ n, P9190151236986702732.a n = A097337 (n + 1)

end A097337

/-! ## A097337.P9085390289055085705

`∑[2-Δ[A195129(n)]]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A097337

/-- `∑[2-Δ[A195129(n)]]` -/
def P9085390289055085705.Spec : Prop :=
  ∀ n, P9085390289055085705.a n = A097337 (n + 1)

theorem P9085390289055085705.correct : P9085390289055085705.Spec := by
  intro n
  simp only [A097337, Nat.add_sub_cancel]

end A097337

/-! ## A097337.P3924633353052544550

`∑[char[A022838(n+1)]]`
-/

namespace A097337.P3924633353052544550
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097337.P3924633353052544550

namespace A097337

/-- `∑[char[A022838(n+1)]]` -/
def P3924633353052544550.Spec : Prop :=
  ∀ n, (P3924633353052544550.a n : ℤ) = A097337 (n + 1)

end A097337

/-! ## A097337.P16951777887778825795

`∑[char[A198081(n)-1]]`
-/

namespace A097337.P16951777887778825795
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198081 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097337.P16951777887778825795

namespace A097337

/-- `∑[char[A198081(n)-1]]` -/
def P16951777887778825795.Spec : Prop :=
  ∀ n, (P16951777887778825795.a n : ℤ) = A097337 (n + 1)

end A097337

/-! ## A097337.P17159155750363468112

`comp[A180122(n+1)]-n`
-/

namespace A097337.P17159155750363468112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180122 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A097337.P17159155750363468112

namespace A097337

/-- `comp[A180122(n+1)]-n` -/
def P17159155750363468112.Spec : Prop :=
  ∀ n, P17159155750363468112.a n = A097337 (n + 1)

end A097337

/-! ## A097337.P16416902613685745380

`A186539(n+1)-(n+1)`
-/

namespace A097337.P16416902613685745380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186539 (n + 1) - (n + 1 : ℤ)

end

end A097337.P16416902613685745380

namespace A097337

/-- `A186539(n+1)-(n+1)` -/
def P16416902613685745380.Spec : Prop :=
  ∀ n, P16416902613685745380.a n = A097337 (n + 1)

end A097337

/-! ## A097337.P12766158208578091598

`1-A195072(n+1)+n`
-/

namespace A097337.P12766158208578091598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A195072 (n + 1) + (n : ℤ)

end

end A097337.P12766158208578091598

namespace A097337

/-- `1-A195072(n+1)+n` -/
def P12766158208578091598.Spec : Prop :=
  ∀ n, P12766158208578091598.a n = A097337 (n + 1)

end A097337

/-! ## A097337.P8394539809330997008

`A182771(n+1)%(n+1)`
-/

namespace A097337.P8394539809330997008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182771 (n + 1)) (n + 1 : ℤ)

end

end A097337.P8394539809330997008

namespace A097337

/-- `A182771(n+1)%(n+1)` -/
def P8394539809330997008.Spec : Prop :=
  ∀ n, P8394539809330997008.a n = A097337 (n + 1)

end A097337

/-! ## A097337.P8921288238276484029

`A206908(n+1)%(n+1)`
-/

namespace A097337.P8921288238276484029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A206908 (n + 1)) (n + 1 : ℤ)

end

end A097337.P8921288238276484029

namespace A097337

/-- `A206908(n+1)%(n+1)` -/
def P8921288238276484029.Spec : Prop :=
  ∀ n, P8921288238276484029.a n = A097337 (n + 1)

end A097337

/-! ## A097337.P4701553977610829800

`n-∑[char[A054406(n+1)]]`
-/

namespace A097337.P4701553977610829800
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A097337.P4701553977610829800

namespace A097337

/-- `n-∑[char[A054406(n+1)]]` -/
def P4701553977610829800.Spec : Prop :=
  ∀ n, P4701553977610829800.a n = A097337 (n + 1)

end A097337

/-! ## A097337.P6745491579127571976

`2*(n+1)-A195129(n+1)`
-/

namespace A097337.P6745491579127571976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A195129 (n + 1)

end

end A097337.P6745491579127571976

namespace A097337

/-- `2*(n+1)-A195129(n+1)` -/
def P6745491579127571976.Spec : Prop :=
  ∀ n, P6745491579127571976.a n = A097337 (n + 1)

end A097337

/-! ## A097337.P9890022213515812674

`(A188085(n+1)-(n+1))/2`
-/

namespace A097337.P9890022213515812674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188085 (n + 1) - (n + 1 : ℤ) : ℚ) / 2

end

end A097337.P9890022213515812674

namespace A097337

/-- `(A188085(n+1)-(n+1))/2` -/
def P9890022213515812674.Spec : Prop :=
  ∀ n, P9890022213515812674.a n = (A097337 (n + 1) : ℚ)

end A097337

/-! ## A097337.P17825407509048240391

`(A188073(n+1)-(n+3))/2`
-/

namespace A097337.P17825407509048240391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188073 (n + 1) - (n + 3 : ℤ) : ℚ) / 2

end

end A097337.P17825407509048240391

namespace A097337

/-- `(A188073(n+1)-(n+3))/2` -/
def P17825407509048240391.Spec : Prop :=
  ∀ n, P17825407509048240391.a n = (A097337 (n + 1) : ℚ)

end A097337

/-! ## A097337.P6209705156930520621

`a(n-1)+1-A285684(n)` with `a(0)=0`
-/

namespace A097337.P6209705156930520621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (1 - A285684 n)

end

end A097337.P6209705156930520621

namespace A097337

/-- `a(n-1)+1-A285684(n)` -/
def P6209705156930520621.Spec : Prop :=
  ∀ n, P6209705156930520621.a n = A097337 (n + 1)

end A097337

/-! ## A097337.P14535748500446291106

`∑[A195151(Δ[A195129(n)])]`
-/

namespace A097337.P14535748500446291106
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195129 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195151 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097337.P14535748500446291106

namespace A097337

/-- `∑[A195151(Δ[A195129(n)])]` -/
def P14535748500446291106.Spec : Prop :=
  ∀ n, P14535748500446291106.a n = A097337 (n + 1)

end A097337

/-!
# A097338: Positive integers n such that 2n-11 is prime.

The programs for A097338, the canonical program `A097338.P887064449779485792` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097338 has offset 1).

The definition of A097338 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A097338.P887064449779485792

`A097069(n+1)+1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A097338

/-- `A097069(n+1)+1` -/
def P887064449779485792.Spec : Prop :=
  ∀ n, P887064449779485792.a n = A097338 (n + 1)

theorem P887064449779485792.correct : P887064449779485792.Spec := by
  intro n
  simp only [A097338, Nat.add_sub_cancel]

end A097338

/-! ## A097338.P2519052663308844117

`A089192(n+1)+2`
-/

namespace A097338.P2519052663308844117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089192 (n + 1) + 2

end

end A097338.P2519052663308844117

namespace A097338

/-- `A089192(n+1)+2` -/
def P2519052663308844117.Spec : Prop :=
  ∀ n, P2519052663308844117.a n = A097338 (n + 1)

end A097338

/-! ## A097338.P7653629506041311809

`A097363(n+1)-1`
-/

namespace A097338.P7653629506041311809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097363 (n + 1) - 1

end

end A097338.P7653629506041311809

namespace A097338

/-- `A097363(n+1)-1` -/
def P7653629506041311809.Spec : Prop :=
  ∀ n, P7653629506041311809.a n = A097338 (n + 1)

end A097338

/-! ## A097338.P5646112343759815809

`A089253(n+1)+3`
-/

namespace A097338.P5646112343759815809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089253 (n + 1) + 3

end

end A097338.P5646112343759815809

namespace A097338

/-- `A089253(n+1)+3` -/
def P5646112343759815809.Spec : Prop :=
  ∀ n, P5646112343759815809.a n = A097338 (n + 1)

end A097338

/-! ## A097338.P5133430815370654754

`A097480(n+1)-2`
-/

namespace A097338.P5133430815370654754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097480 (n + 1) - 2

end

end A097338.P5133430815370654754

namespace A097338

/-- `A097480(n+1)-2` -/
def P5133430815370654754.Spec : Prop :=
  ∀ n, P5133430815370654754.a n = A097338 (n + 1)

end A097338

/-! ## A097338.P17491068371640878519

`A098090(n+1)+4`
-/

namespace A097338.P17491068371640878519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098090 (n + 1) + 4

end

end A097338.P17491068371640878519

namespace A097338

/-- `A098090(n+1)+4` -/
def P17491068371640878519.Spec : Prop :=
  ∀ n, P17491068371640878519.a n = A097338 (n + 1)

end A097338

/-! ## A097338.P18190946209896040733

`A098605(n+1)-3`
-/

namespace A097338.P18190946209896040733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098605 (n + 1) - 3

end

end A097338.P18190946209896040733

namespace A097338

/-- `A098605(n+1)-3` -/
def P18190946209896040733.Spec : Prop :=
  ∀ n, P18190946209896040733.a n = A097338 (n + 1)

end A097338

/-! ## A097338.P2247643685214197458

`A006254(n+1)+5`
-/

namespace A097338.P2247643685214197458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1) + 5

end

end A097338.P2247643685214197458

namespace A097338

/-- `A006254(n+1)+5` -/
def P2247643685214197458.Spec : Prop :=
  ∀ n, P2247643685214197458.a n = A097338 (n + 1)

end A097338

/-! ## A097338.P13554663704136083431

`A097932(n+1)-4`
-/

namespace A097338.P13554663704136083431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097932 (n + 1) - 4

end

end A097338.P13554663704136083431

namespace A097338

/-- `A097932(n+1)-4` -/
def P13554663704136083431.Spec : Prop :=
  ∀ n, P13554663704136083431.a n = A097338 (n + 1)

end A097338

/-! ## A097338.P5397374843408213547

`A005097(n+1)+6`
-/

namespace A097338.P5397374843408213547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) + 6

end

end A097338.P5397374843408213547

namespace A097338

/-- `A005097(n+1)+6` -/
def P5397374843408213547.Spec : Prop :=
  ∀ n, P5397374843408213547.a n = A097338 (n + 1)

end A097338

/-! ## A097338.P9545855340198349662

`A067076(n+1)+7`
-/

namespace A097338.P9545855340198349662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1) + 7

end

end A097338.P9545855340198349662

namespace A097338

/-- `A067076(n+1)+7` -/
def P9545855340198349662.Spec : Prop :=
  ∀ n, P9545855340198349662.a n = A097338 (n + 1)

end A097338

/-! ## A097338.P5217368403143933246

`A298252(n+1)/2+4`
-/

namespace A097338.P5217368403143933246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298252 (n + 1) : ℚ) / 2 + 4

end

end A097338.P5217368403143933246

namespace A097338

/-- `A298252(n+1)/2+4` -/
def P5217368403143933246.Spec : Prop :=
  ∀ n, P5217368403143933246.a n = (A097338 (n + 1) : ℚ)

end A097338

/-! ## A097338.P9182280476569451992

`A177018(n+1)+4+n`
-/

namespace A097338.P9182280476569451992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177018 (n + 1) + 4 + (n : ℤ)

end

end A097338.P9182280476569451992

namespace A097338

/-- `A177018(n+1)+4+n` -/
def P9182280476569451992.Spec : Prop :=
  ∀ n, P9182280476569451992.a n = A097338 (n + 1)

end A097338

/-! ## A097338.P1468089858269429621

`A163057(n+1)+5-n`
-/

namespace A097338.P1468089858269429621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163057 (n + 1) + (5 - (n : ℤ))

end

end A097338.P1468089858269429621

namespace A097338

/-- `A163057(n+1)+5-n` -/
def P1468089858269429621.Spec : Prop :=
  ∀ n, P1468089858269429621.a n = A097338 (n + 1)

end A097338

/-! ## A097338.P16173042716930264726

`A008507(n+1)+n+7`
-/

namespace A097338.P16173042716930264726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008507 (n + 1) + (n + 7 : ℤ)

end

end A097338.P16173042716930264726

namespace A097338

/-- `A008507(n+1)+n+7` -/
def P16173042716930264726.Spec : Prop :=
  ∀ n, P16173042716930264726.a n = A097338 (n + 1)

end A097338

/-! ## A097338.P6157278790256096727

`A175540(n+1)-(n-6)`
-/

namespace A097338.P6157278790256096727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175540 (n + 1) - ((n : ℤ) - 6)

end

end A097338.P6157278790256096727

namespace A097338

/-- `A175540(n+1)-(n-6)` -/
def P6157278790256096727.Spec : Prop :=
  ∀ n, P6157278790256096727.a n = A097338 (n + 1)

end A097338

/-! ## A097338.P2946639941423520004

`A020719(n)+A008507(n+1)`
-/

namespace A097338.P2946639941423520004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020719 n + A008507 (n + 1)

end

end A097338.P2946639941423520004

namespace A097338

/-- `A020719(n)+A008507(n+1)` -/
def P2946639941423520004.Spec : Prop :=
  ∀ n, P2946639941423520004.a n = A097338 (n + 1)

end A097338

/-! ## A097338.P12228647882285187478

`A177018(n+1)+A020705(n)`
-/

namespace A097338.P12228647882285187478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177018 (n + 1) + A020705 n

end

end A097338.P12228647882285187478

namespace A097338

/-- `A177018(n+1)+A020705(n)` -/
def P12228647882285187478.Spec : Prop :=
  ∀ n, P12228647882285187478.a n = A097338 (n + 1)

end A097338

/-! ## A097338.P15772220145177421262

`A124678(n+2)+3`
-/

namespace A097338.P15772220145177421262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124678 (n + 2) + 3

end

end A097338.P15772220145177421262

namespace A097338

/-- `A124678(n+2)+3` -/
def P15772220145177421262.Spec : Prop :=
  ∀ n, P15772220145177421262.a n = A097338 (n + 1)

end A097338

/-! ## A097338.P12001584181049282822

`A111333(n+2)+5`
-/

namespace A097338.P12001584181049282822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111333 (n + 2) + 5

end

end A097338.P12001584181049282822

namespace A097338

/-- `A111333(n+2)+5` -/
def P12001584181049282822.Spec : Prop :=
  ∀ n, P12001584181049282822.a n = A097338 (n + 1)

end A097338

/-!
# A097339: a(n) = 2^n+n^3.

The programs for A097339, the canonical program `A097339.P8220756378373782918` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097339 has offset 0).

The definition of A097339 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+n^3` (program `A097339.P8220756378373782918`, by `A097339.P8220756378373782918.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A097339.P8220756378373782918

`2^n+n^3`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A097339

/-- `2^n+n^3` -/
def P8220756378373782918.Spec : Prop :=
  ∀ n, (P8220756378373782918.a n : ℤ) = A097339 n

theorem P8220756378373782918.correct : P8220756378373782918.Spec := by
  intro n
  simp only [A097339]

end A097339

/-! ## A097339.P8399374220750185904

`abs(A000578(n)+A000051(n)-1)`
-/

namespace A097339.P8399374220750185904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000578 n + A000051 n - 1|

end

end A097339.P8399374220750185904

namespace A097339

/-- `abs(A000578(n)+A000051(n)-1)` -/
def P8399374220750185904.Spec : Prop :=
  ∀ n, P8399374220750185904.a n = A097339 n

end A097339

/-! ## A097339.P17091019738609701222

`or(n*n²+A000225(n)+1, A007814(n+1))`
-/

namespace A097339.P17091019738609701222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n * n ^ 2 : ℤ) + (A000225 n + 1)) (A007814 (n + 1))

end

end A097339.P17091019738609701222

namespace A097339

/-- `or(n*n²+A000225(n)+1, A007814(n+1))` -/
def P17091019738609701222.Spec : Prop :=
  ∀ n, P17091019738609701222.a n = A097339 n

end A097339

/-! ## A097339.P10082064693560493516

`or(A033431(n)+A024013(n), A010693(n)-2)`
-/

namespace A097339.P10082064693560493516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A033431 n + A024013 n) (A010693 n - 2)

end

end A097339.P10082064693560493516

namespace A097339

/-- `or(A033431(n)+A024013(n), A010693(n)-2)` -/
def P10082064693560493516.Spec : Prop :=
  ∀ n, P10082064693560493516.a n = A097339 n

end A097339

/-! ## A097339.P6443608801705458500

`(A033431(n)+A024013(n))/(A002496(n+1)-A075408(n+1))`
-/

namespace A097339.P6443608801705458500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033431 n + A024013 n : ℚ) / (A002496 (n + 1) - A075408 (n + 1) : ℚ)

end

end A097339.P6443608801705458500

namespace A097339

/-- `(A033431(n)+A024013(n))/(A002496(n+1)-A075408(n+1))` -/
def P6443608801705458500.Spec : Prop :=
  ∀ n, P6443608801705458500.a n = (A097339 n : ℚ)

end A097339

/-! ## A097339.P3222999547021150167

`Δ[A000079(n)+C(n, 2)²]`
-/

namespace A097339.P3222999547021150167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (Nat.choose n 2 ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A097339.P3222999547021150167

namespace A097339

/-- `Δ[A000079(n)+C(n, 2)²]` -/
def P3222999547021150167.Spec : Prop :=
  ∀ n, P3222999547021150167.a n = A097339 n

end A097339

/-! ## A097339.P16404935216071366184

`abs(Δ[A000225(n)]+n*n²)`
-/

namespace A097339.P16404935216071366184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n + (n * n ^ 2 : ℤ)|

end

end A097339.P16404935216071366184

namespace A097339

/-- `abs(Δ[A000225(n)]+n*n²)` -/
def P16404935216071366184.Spec : Prop :=
  ∀ n, P16404935216071366184.a n = A097339 n

end A097339

/-! ## A097339.P15814351636755665768

`abs(A000578(n)+Δ[A000225(n)])`
-/

namespace A097339.P15814351636755665768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000578 n + (f1 (n + 1) - f1 n)|

end

end A097339.P15814351636755665768

namespace A097339

/-- `abs(A000578(n)+Δ[A000225(n)])` -/
def P15814351636755665768.Spec : Prop :=
  ∀ n, P15814351636755665768.a n = A097339 n

end A097339

/-! ## A097339.P17651491349708234960

`Δ[A000079(n)+A161680(n)²]`
-/

namespace A097339.P17651491349708234960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + A161680 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A097339.P17651491349708234960

namespace A097339

/-- `Δ[A000079(n)+A161680(n)²]` -/
def P17651491349708234960.Spec : Prop :=
  ∀ n, P17651491349708234960.a n = A097339 n

end A097339

/-! ## A097339.P3017597468893519109

`(A000578(n)+A000079(n))%A242238(n+1)`
-/

namespace A097339.P3017597468893519109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000578 n + A000079 n) (A242238 (n + 1))

end

end A097339.P3017597468893519109

namespace A097339

/-- `(A000578(n)+A000079(n))%A242238(n+1)` -/
def P3017597468893519109.Spec : Prop :=
  ∀ n, P3017597468893519109.a n = A097339 n

end A097339

/-! ## A097339.P15282448132341543884

`A024042(n)/A024013(n)`
-/

namespace A097339.P15282448132341543884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024042 n : ℚ) / (A024013 n : ℚ)

end

end A097339.P15282448132341543884

namespace A097339

/-- `A024042(n)/A024013(n)` -/
def P15282448132341543884.Spec : Prop :=
  ∀ n, P15282448132341543884.a n = (A097339 n : ℚ)

end A097339

/-! ## A097339.P9092474570530013363

`(A128789(n)+A000079(n)²)/A000079(n)`
-/

namespace A097339.P9092474570530013363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128789 n + A000079 n ^ 2 : ℚ) / (A000079 n : ℚ)

end

end A097339.P9092474570530013363

namespace A097339

/-- `(A128789(n)+A000079(n)²)/A000079(n)` -/
def P9092474570530013363.Spec : Prop :=
  ∀ n, P9092474570530013363.a n = (A097339 n : ℚ)

end A097339

/-! ## A097339.P2680917785168060343

`∑{e}[A002496(n+1), (A033431(n)+A024013(n))/#]`
-/

namespace A097339.P2680917785168060343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002496 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A033431 n + A024013 n : ℚ) / (Nat.factorization (f1 n).natAbs p : ℚ)

end

end A097339.P2680917785168060343

namespace A097339

/-- `∑{e}[A002496(n+1), (A033431(n)+A024013(n))/#]` -/
def P2680917785168060343.Spec : Prop :=
  ∀ n, P2680917785168060343.a n = (A097339 n : ℚ)

end A097339

/-!
# A097341: a(n) = Sum_{k=0..floor(n/2)} Stirling2(n-k,k) * 2^k.

The programs for A097341, there is no canonical definition to state claims against.
-/

/-! ## A097341.P12414569594697126870

`A102825(A246807(n))`
-/

namespace A097341.P12414569594697126870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102825 (A246807 n).toNat

end

end A097341.P12414569594697126870

/-! ## A097341.P772711959323124476

`A166040(A245900(n+1)-A181940(n))`
-/

namespace A097341.P772711959323124476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166040 (A245900 (n + 1) - A181940 n).toNat

end

end A097341.P772711959323124476

/-! ## A097341.P9237139389260265562

`A357952(n+1)-A037445(A173397(n+1))`
-/

namespace A097341.P9237139389260265562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357952 (n + 1) - A037445 (A173397 (n + 1)).toNat

end

end A097341.P9237139389260265562

/-!
# A097343: Triangle read by rows in which row n gives Legendre symbol (k,p) for 0

The programs for A097343, there is no canonical definition to state claims against.
-/

/-! ## A097343.P5001837410219305717

`A226520(n+4)`
-/

namespace A097343.P5001837410219305717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226520 (n + 4)

end

end A097343.P5001837410219305717

/-! ## A097343.P10786677249327958570

`Δ[A226518(n+3)]`
-/

namespace A097343.P10786677249327958570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226518 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A097343.P10786677249327958570

/-! ## A097343.P1727504474219755306

`A226520(A020705(n))^3`
-/

namespace A097343.P1727504474219755306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226520 (A020705 n).toNat ^ 3

end

end A097343.P1727504474219755306

/-! ## A097343.P12986549325282730339

`A226518(n+4)-A226518(n+3)`
-/

namespace A097343.P12986549325282730339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226518 (n + 4) - A226518 (n + 3)

end

end A097343.P12986549325282730339

/-! ## A097343.P10673540935116521678

`A226520(A008619(A020742(n)))%2`
-/

namespace A097343.P10673540935116521678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226520 (A008619 (A020742 n).toNat).toNat) 2

end

end A097343.P10673540935116521678

/-! ## A097343.P16092715929956639867

`A226520(A020705(n))-A008683(A053742(n))`
-/

namespace A097343.P16092715929956639867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226520 (A020705 n).toNat - A008683 (A053742 n).toNat

end

end A097343.P16092715929956639867

/-!
# A097344: Numerators in binomial transform of 1/(n+1)^2.

The programs for A097344, there is no canonical definition to state claims against.
-/

/-! ## A097344.P7721887763003505478

`A324499(2^n)`
-/

namespace A097344.P7721887763003505478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324499 (2 ^ n)

end

end A097344.P7721887763003505478

/-! ## A097344.P14828442796477080456

`A376556(n)+A324499(A000079(n))`
-/

namespace A097344.P14828442796477080456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376556 n + A324499 (A000079 n).toNat

end

end A097344.P14828442796477080456

/-! ## A097344.P14142468571836102557

`A324499(A000079(n))%A017502(n)`
-/

namespace A097344.P14142468571836102557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324499 (A000079 n).toNat) (A017502 n)

end

end A097344.P14142468571836102557

/-! ## A097344.P118585569861040982

`A324499(A000079(n))+A248805(n+1)`
-/

namespace A097344.P118585569861040982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324499 (A000079 n).toNat + A248805 (n + 1)

end

end A097344.P118585569861040982

/-! ## A097344.P891719175946585815

`A240228(n+1)*A324499(A000079(n))`
-/

namespace A097344.P891719175946585815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240228 (n + 1) * A324499 (A000079 n).toNat

end

end A097344.P891719175946585815

/-!
# A097346: Numerators of a Fibonacci related transform of 1/(n+1).

The programs for A097346, there is no canonical definition to state claims against.
-/

/-! ## A097346.P3719745086420095672

`A331388(A192480(n+1))`
-/

namespace A097346.P3719745086420095672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331388 (A192480 (n + 1)).toNat

end

end A097346.P3719745086420095672

/-! ## A097346.P7047244368953461989

`(n+1)*A334733(A007718(n))`
-/

namespace A097346.P7047244368953461989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A334733 (A007718 n).toNat

end

end A097346.P7047244368953461989

/-!
# A097347: Rectangular array, by antidiagonals: T(n,k) = rank of k-th n in A097291.

The programs for A097347, there is no canonical definition to state claims against.
-/

/-! ## A097347.P2286269580308552014

`A048147(n)+A036452(A322730(n))`
-/

namespace A097347.P2286269580308552014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048147 n + A036452 (A322730 n).toNat

end

end A097347.P2286269580308552014

/-!
# A097349: Numbers n such that (Sum (2k)^k, k=1..n) + 1 is prime.

The programs for A097349, there is no canonical definition to state claims against.
-/

/-! ## A097349.P11670474581272718062

`A177501(A077828(n+1))`
-/

namespace A097349.P11670474581272718062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177501 (A077828 (n + 1)).toNat

end

end A097349.P11670474581272718062

/-!
# A097351: Rectangular array T(n,k) by antidiagonals; rows are generalized Fibonacci sequences and every relatively prime pair (i,j) satisfying 1 <= i < j occurs exactly once.

The programs for A097351, there is no canonical definition to state claims against.
-/

/-! ## A097351.P2302346648925429693

`A245327(A043569(n+1))+A000038(A000032(n))`
-/

namespace A097351.P2302346648925429693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245327 (A043569 (n + 1)).toNat + A000038 (A000032 n).toNat

end

end A097351.P2302346648925429693

/-! ## A097351.P8967139486319805751

`A245327(A043569(n+1))+A000038(A043569(n+1)²)`
-/

namespace A097351.P8967139486319805751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245327 (A043569 (n + 1)).toNat + A000038 (A043569 (n + 1) ^ 2).toNat

end

end A097351.P8967139486319805751

/-! ## A097351.P18120566583344718702

`floor(A061775(A113088(n))/2)+1`
-/

namespace A097351.P18120566583344718702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A061775 (A113088 n).toNat : ℚ) / 2⌋ + 1

end

end A097351.P18120566583344718702

/-! ## A097351.P4241173912179420707

`A072643(A143543(n+1))+A010054(n+2)`
-/

namespace A097351.P4241173912179420707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072643 (A143543 (n + 1)).toNat + A010054 (n + 2)

end

end A097351.P4241173912179420707

/-! ## A097351.P843178154696835764

`A017125(lt[A323023(3*n+2), A022166(n)])`
-/

namespace A097351.P843178154696835764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323023 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022166 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017125 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A097351.P843178154696835764

/-!
# A097353: Number of digits of the (10^n)-th tetranacci number (A000078(10^n)).

The programs for A097353, there is no canonical definition to state claims against.
-/

/-! ## A097353.P9640277244441971084

`A054861(A207569(n)+A178769(n))`
-/

namespace A097353.P9640277244441971084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 (A207569 n + A178769 n).toNat

end

end A097353.P9640277244441971084

/-!
# A097355: Number of partitions of n into parts not greater than floor(log_2(n)).

The programs for A097355, there is no canonical definition to state claims against.
-/

/-! ## A097355.P14589679637131543160

`A072233(eq[n, n*A180969(n)])`
-/

namespace A097355.P14589679637131543160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A180969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A097355.P14589679637131543160

/-! ## A097355.P10155951771942229078

`A072233(eq[A057427(n), A180969(n)])`
-/

namespace A097355.P10155951771942229078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A097355.P10155951771942229078

/-!
# A097356: Number of partitions of n into parts not greater than sqrt(n).

The programs for A097356, there is no canonical definition to state claims against.
-/

/-! ## A097356.P3447950867476528985

`A026820(A179865(n+1)-A028391(n))`
-/

namespace A097356.P3447950867476528985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026820 (A179865 (n + 1) - A028391 n).toNat

end

end A097356.P3447950867476528985

/-! ## A097356.P4420193728553767256

`A369218(n)%A002764(n)`
-/

namespace A097356.P4420193728553767256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A369218 n) (A002764 n)

end

end A097356.P4420193728553767256

/-! ## A097356.P1936518576978247938

`and(A359082(n+1), A369218(n))`
-/

namespace A097356.P1936518576978247938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A359082 (n + 1)) (A369218 n)

end

end A097356.P1936518576978247938

/-! ## A097356.P16426755337913133515

`A175069(A000041(n))*A369218(n)`
-/

namespace A097356.P16426755337913133515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175069 (A000041 n).toNat * A369218 n

end

end A097356.P16426755337913133515

/-! ## A097356.P15548330715514655036

`A369218(n)^A368870(A368870(n))`
-/

namespace A097356.P15548330715514655036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A369218 n : ℚ) ^ (A368870 (A368870 n).toNat : ℤ)

end

end A097356.P15548330715514655036

/-!
# A097357: For definition see Comments lines.

The programs for A097357, there is no canonical definition to state claims against.
-/

/-! ## A097357.P11466506095254059687

`A180125(n+1)+A001222(A113972(n))`
-/

namespace A097357.P11466506095254059687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180125 (n + 1) + A001222 (A113972 n).toNat

end

end A097357.P11466506095254059687

/-! ## A097357.P18115793551095490983

`A180125(n+1)+A115362(A011782(n))`
-/

namespace A097357.P18115793551095490983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180125 (n + 1) + A115362 (A011782 n).toNat

end

end A097357.P18115793551095490983

/-! ## A097357.P2593627274094604414

`A180125(n+1)+A035263(A290556(n))`
-/

namespace A097357.P2593627274094604414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180125 (n + 1) + A035263 (A290556 n).toNat

end

end A097357.P2593627274094604414

/-! ## A097357.P3742679075083802080

`A180125(n+1)+A057427(A271619(n))`
-/

namespace A097357.P3742679075083802080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180125 (n + 1) + A057427 (A271619 n).toNat

end

end A097357.P3742679075083802080

/-!
# A097358: Primes of the form 2*(p+q) + 1, p and q prime.

The programs for A097358, there is no canonical definition to state claims against.
-/

/-! ## A097358.P2941129094969373265

`p?[2*A014091(n+1)+1]`
-/

namespace A097358.P2941129094969373265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014091 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097358.P2941129094969373265

/-! ## A097358.P15410031327516386365

`p?[A204896(n+1)+n+10]`
-/

namespace A097358.P15410031327516386365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204896 (n + 1) + (n + 10 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097358.P15410031327516386365

/-! ## A097358.P14243738338495714665

`p?[2*(A106092(n+1)+2)+1]`
-/

namespace A097358.P14243738338495714665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A106092 (n + 1) + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097358.P14243738338495714665

/-! ## A097358.P8201184248806639846

`p?[(n+3)*A270003(n+1)+1]`
-/

namespace A097358.P8201184248806639846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A270003 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097358.P8201184248806639846

/-! ## A097358.P13089922248358078495

`p?[(A008683(n+1)+C(n, 3)%2)*(n+6)]`
-/

namespace A097358.P13089922248358078495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008683 (n + 1) + ((Nat.choose n 3 % 2 : ℕ) : ℤ)) * (n + 6 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097358.P13089922248358078495

/-! ## A097358.P16261337270954965256

`p?[A005408(A014091(n+1))]`
-/

namespace A097358.P16261337270954965256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A014091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097358.P16261337270954965256

/-! ## A097358.P2398418159641088357

`p?[A126888(A014091(n+2))]`
-/

namespace A097358.P2398418159641088357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126888 (A014091 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097358.P2398418159641088357

/-! ## A097358.P7141626599989863423

`p?[A140139(A014091(n+1)+1)]`
-/

namespace A097358.P7141626599989863423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140139 (A014091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097358.P7141626599989863423

/-! ## A097358.P8532927209755026735

`p?[(2*n+7)*A001222(A141310(n))]`
-/

namespace A097358.P8532927209755026735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 7 : ℤ) * A001222 (A141310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097358.P8532927209755026735

/-! ## A097358.P14743462717079774536

`p?[gcd(2*n+1, A000038(A061358(n)))]`
-/

namespace A097358.P14743462717079774536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n + 1 : ℤ) (A000038 (A061358 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A097358.P14743462717079774536

/-!
# A097359: a(n) is the number of partitions of n into parts not greater than A020639(n).

The programs for A097359, there is no canonical definition to state claims against.
-/

/-! ## A097359.P1979069045288392100

`A026820(A020639(n+1)+∑[n])`
-/

namespace A097359.P1979069045288392100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026820 (A020639 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A097359.P1979069045288392100

/-! ## A097359.P3399749584247546904

`A026820(A000217(n)+A020639(n+1))`
-/

namespace A097359.P3399749584247546904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026820 (A000217 n + A020639 (n + 1)).toNat

end

end A097359.P3399749584247546904

/-! ## A097359.P14868328362990624563

`A026820(A057237(n+1)+A000124(n))`
-/

namespace A097359.P14868328362990624563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026820 (A057237 (n + 1) + A000124 n).toNat

end

end A097359.P14868328362990624563

/-! ## A097359.P7758515868016475178

`A026820(A061228(n+1)-A080956(n))`
-/

namespace A097359.P7758515868016475178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026820 (A061228 (n + 1) - A080956 n).toNat

end

end A097359.P7758515868016475178

/-! ## A097359.P8175101041104734192

`A026820(A179865(n+1)+A020639(n+1))`
-/

namespace A097359.P8175101041104734192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026820 (A179865 (n + 1) + A020639 (n + 1)).toNat

end

end A097359.P8175101041104734192

/-!
# A097360: Number of partitions of n into parts not less than the smallest prime factor of n.

The programs for A097360, there is no canonical definition to state claims against.
-/

/-! ## A097360.P18164056789706918518

`A026807(A020639(n+1)+∑[n])`
-/

namespace A097360.P18164056789706918518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026807 (A020639 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A097360.P18164056789706918518

/-! ## A097360.P2873272192725064934

`A026807(A074828(n+1)+∑[n])`
-/

namespace A097360.P2873272192725064934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026807 (A074828 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A097360.P2873272192725064934

/-! ## A097360.P13475026945285791555

`A026807(A000217(n)+A020639(n+1))`
-/

namespace A097360.P13475026945285791555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026807 (A000217 n + A020639 (n + 1)).toNat

end

end A097360.P13475026945285791555

/-! ## A097360.P13435808458302623616

`A026807(A061228(n+1)-A080956(n))`
-/

namespace A097360.P13435808458302623616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026807 (A061228 (n + 1) - A080956 n).toNat

end

end A097360.P13435808458302623616

/-! ## A097360.P10938472472330176011

`A026807(A000217(n)+sqrt(A088377(n+1)))`
-/

namespace A097360.P10938472472330176011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026807 (SequenceMachineLib.roundAway ((A000217 n : ℝ) + Real.sqrt (A088377 (n + 1) : ℝ))).toNat

end

end A097360.P10938472472330176011

/-! ## A097360.P634697273451888464

`A026807(A000217(n)+A061228(n+1)-(n+1))`
-/

namespace A097360.P634697273451888464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026807 (A000217 n + (A061228 (n + 1) - (n + 1 : ℤ))).toNat

end

end A097360.P634697273451888464

/-! ## A097360.P1409013755284658531

`A026807(A006530(n+1)+A000217(n)-A046665(n+1))`
-/

namespace A097360.P1409013755284658531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026807 (A006530 (n + 1) + (A000217 n - A046665 (n + 1))).toNat

end

end A097360.P1409013755284658531

/-! ## A097360.P2492907312792962741

`A026807(A074320(n+1)+A000217(n)-A006530(n+1))`
-/

namespace A097360.P2492907312792962741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026807 (A074320 (n + 1) + (A000217 n - A006530 (n + 1))).toNat

end

end A097360.P2492907312792962741

/-!
# A097361: Primes of the form 2(p+q) - 1, where p and q are consecutive primes.

The programs for A097361, the canonical program `A097361.P14403592286291128386` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097361 has offset 1).

The definition of A097361 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A097361.P14403592286291128386

`p?[2*A001043(n+1)-1]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A097361

/-- `p?[2*A001043(n+1)-1]` -/
def P14403592286291128386.Spec : Prop :=
  ∀ n, P14403592286291128386.a n = A097361 (n + 1)

theorem P14403592286291128386.correct : P14403592286291128386.Spec := by
  intro n
  simp only [A097361, Nat.add_sub_cancel]

end A097361

/-! ## A097361.P576500972115720039

`p?[4*A024675(n+1)-1]`
-/

namespace A097361.P576500972115720039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A024675 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097361.P576500972115720039

namespace A097361

/-- `p?[4*A024675(n+1)-1]` -/
def P576500972115720039.Spec : Prop :=
  ∀ n, P576500972115720039.a n = A097361 (n + 1)

end A097361

/-! ## A097361.P10692223164292916498

`p?[a(n-1)+2*A031131(n+1)]` with `a(0)=15`
-/

namespace A097361.P10692223164292916498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [15] fun n f1 =>
  f1 (n - 1) + 2 * A031131 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097361.P10692223164292916498

namespace A097361

/-- `p?[a(n-1)+2*A031131(n+1)]` -/
def P10692223164292916498.Spec : Prop :=
  ∀ n, P10692223164292916498.a n = A097361 (n + 1)

end A097361

/-! ## A097361.P2933356363853418647

`p?[A001043(n+1)+A092949(n+1)-2]`
-/

namespace A097361.P2933356363853418647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) + (A092949 (n + 1) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097361.P2933356363853418647

namespace A097361

/-- `p?[A001043(n+1)+A092949(n+1)-2]` -/
def P2933356363853418647.Spec : Prop :=
  ∀ n, P2933356363853418647.a n = A097361 (n + 1)

end A097361

/-! ## A097361.P5866889162208950074

`p?[A100484(n+2)+A100484(n+1)-1]`
-/

namespace A097361.P5866889162208950074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 2) + (A100484 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097361.P5866889162208950074

namespace A097361

/-- `p?[A100484(n+2)+A100484(n+1)-1]` -/
def P5866889162208950074.Spec : Prop :=
  ∀ n, P5866889162208950074.a n = A097361 (n + 1)

end A097361

/-! ## A097361.P17332477936570636492

`p?[A011974(n+2)-(1-A011974(n+2))]`
-/

namespace A097361.P17332477936570636492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (n + 2) - (1 - A011974 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097361.P17332477936570636492

namespace A097361

/-- `p?[A011974(n+2)-(1-A011974(n+2))]` -/
def P17332477936570636492.Spec : Prop :=
  ∀ n, P17332477936570636492.a n = A097361 (n + 1)

end A097361

/-! ## A097361.P16473098443202414854

`p?[A004277(A001043(n+1))-1]`
-/

namespace A097361.P16473098443202414854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A001043 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097361.P16473098443202414854

namespace A097361

/-- `p?[A004277(A001043(n+1))-1]` -/
def P16473098443202414854.Spec : Prop :=
  ∀ n, P16473098443202414854.a n = A097361 (n + 1)

end A097361

/-! ## A097361.P8295178564188577069

`p?[A005408(A011974(n+2)-1)]`
-/

namespace A097361.P8295178564188577069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A011974 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097361.P8295178564188577069

namespace A097361

/-- `p?[A005408(A011974(n+2)-1)]` -/
def P8295178564188577069.Spec : Prop :=
  ∀ n, P8295178564188577069.a n = A097361 (n + 1)

end A097361

/-! ## A097361.P5399358885703797465

`p?[A022998(A001043(n+2))-1]`
-/

namespace A097361.P5399358885703797465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A001043 (n + 2)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097361.P5399358885703797465

namespace A097361

/-- `p?[A022998(A001043(n+2))-1]` -/
def P5399358885703797465.Spec : Prop :=
  ∀ n, P5399358885703797465.a n = A097361 (n + 1)

end A097361

/-!
# A097362: a(n) = (n+1)/2 if n is odd, n+2 otherwise.

The programs for A097362, the canonical program `A097362.P15319810050143725646` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097362 has offset 1).

The definition of A097362 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A097362.P15319810050143725646

`floor((n+3)/gcd(2, n))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A097362

/-- `floor((n+3)/gcd(2, n))` -/
def P15319810050143725646.Spec : Prop :=
  ∀ n, P15319810050143725646.a n = A097362 (n + 1)

theorem P15319810050143725646.correct : P15319810050143725646.Spec := by
  intro n
  simp only [A097362, Nat.add_sub_cancel]

end A097362

/-! ## A097362.P13978570416760099874

`floor((n+3)/(2-n%2))`
-/

namespace A097362.P13978570416760099874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 3 : ℚ) / (2 - ((n % 2 : ℕ) : ℤ) : ℚ)⌋

end

end A097362.P13978570416760099874

namespace A097362

/-- `floor((n+3)/(2-n%2))` -/
def P13978570416760099874.Spec : Prop :=
  ∀ n, P13978570416760099874.a n = A097362 (n + 1)

end A097362

/-! ## A097362.P3258996135176109715

`floor((n+3)/(2-and(1, n)))`
-/

namespace A097362.P3258996135176109715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 3 : ℚ) / (2 - (Nat.land 1 n : ℤ) : ℚ)⌋

end

end A097362.P3258996135176109715

namespace A097362

/-- `floor((n+3)/(2-and(1, n)))` -/
def P3258996135176109715.Spec : Prop :=
  ∀ n, P3258996135176109715.a n = A097362 (n + 1)

end A097362

/-! ## A097362.P8822009079261091723

`(∑[n+2]-1)%(n+4)`
-/

namespace A097362.P8822009079261091723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) (n + 4 : ℤ)

end

end A097362.P8822009079261091723

namespace A097362

/-- `(∑[n+2]-1)%(n+4)` -/
def P8822009079261091723.Spec : Prop :=
  ∀ n, P8822009079261091723.a n = A097362 (n + 1)

end A097362

/-! ## A097362.P706304682723517071

`gcd(n+4, ∑[n+2])-1`
-/

namespace A097362.P706304682723517071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd (n + 4) (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - 1

end

end A097362.P706304682723517071

namespace A097362

/-- `gcd(n+4, ∑[n+2])-1` -/
def P706304682723517071.Spec : Prop :=
  ∀ n, P706304682723517071.a n = A097362 (n + 1)

end A097362

/-! ## A097362.P15999948682427508227

`floor(-(n+3)/or(n, -2))`
-/

namespace A097362.P15999948682427508227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊-((n + 3 : ℚ) / (Int.lor (n : ℤ) (-2) : ℚ))⌋

end

end A097362.P15999948682427508227

namespace A097362

/-- `floor(-(n+3)/or(n, -2))` -/
def P15999948682427508227.Spec : Prop :=
  ∀ n, P15999948682427508227.a n = A097362 (n + 1)

end A097362

/-! ## A097362.P12211947749839891309

`-ceil((n+3)/or(n, -2))`
-/

namespace A097362.P12211947749839891309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌈(n + 3 : ℚ) / (Int.lor (n : ℤ) (-2) : ℚ)⌉

end

end A097362.P12211947749839891309

namespace A097362

/-- `-ceil((n+3)/or(n, -2))` -/
def P12211947749839891309.Spec : Prop :=
  ∀ n, P12211947749839891309.a n = A097362 (n + 1)

end A097362

/-! ## A097362.P11191640255268933662

`and(1, n)+lcm(2, n+2)/2`
-/

namespace A097362.P11191640255268933662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℚ) + (Nat.lcm 2 (n + 2) : ℚ) / 2

end

end A097362.P11191640255268933662

namespace A097362

/-- `and(1, n)+lcm(2, n+2)/2` -/
def P11191640255268933662.Spec : Prop :=
  ∀ n, P11191640255268933662.a n = (A097362 (n + 1) : ℚ)

end A097362

/-! ## A097362.P16249596671395453933

`ceil(∑[n]/a(n-3))` with `a(0)=1, a(1)=4, a(2)=2`
-/

namespace A097362.P16249596671395453933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 2] fun n a =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (a (n - 3) : ℚ)⌉

end

end A097362.P16249596671395453933

namespace A097362

/-- `ceil(∑[n]/a(n-3))` -/
def P16249596671395453933.Spec : Prop :=
  ∀ n, P16249596671395453933.a n = A097362 (n + 1)

end A097362

/-! ## A097362.P14811342992169949668

`ogf((1+4x-2x^3)/(1-2x^2+x^4))`
-/

namespace A097362.P14811342992169949668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 0, -2] [1, 0, -2, 0, 1] n

end

end A097362.P14811342992169949668

namespace A097362

/-- `ogf((1+4x-2x^3)/(1-2x^2+x^4))` -/
def P14811342992169949668.Spec : Prop :=
  ∀ n, P14811342992169949668.a n = A097362 (n + 1)

end A097362

/-! ## A097362.P9217482086813548199

`a(n-2)+and(1, n)+1` with `a(0)=1, a(1)=4`
-/

namespace A097362.P9217482086813548199
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 2) + (Nat.land 1 n + 1)

end

end A097362.P9217482086813548199

namespace A097362

/-- `a(n-2)+and(1, n)+1` -/
def P9217482086813548199.Spec : Prop :=
  ∀ n, (P9217482086813548199.a n : ℤ) = A097362 (n + 1)

end A097362

/-! ## A097362.P3121083406321002515

`floor((n+3)/(and(1, n+1)+1))`
-/

namespace A097362.P3121083406321002515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 3 : ℚ) / (Nat.land 1 (n + 1) + 1 : ℚ)⌋

end

end A097362.P3121083406321002515

namespace A097362

/-- `floor((n+3)/(and(1, n+1)+1))` -/
def P3121083406321002515.Spec : Prop :=
  ∀ n, P3121083406321002515.a n = A097362 (n + 1)

end A097362

/-! ## A097362.P3872253433091352104

`round((2*n+5)/gcd(4, 2*n))`
-/

namespace A097362.P3872253433091352104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n + 5 : ℚ) / (Nat.gcd 4 (2 * n) : ℚ))

end

end A097362.P3872253433091352104

namespace A097362

/-- `round((2*n+5)/gcd(4, 2*n))` -/
def P3872253433091352104.Spec : Prop :=
  ∀ n, P3872253433091352104.a n = A097362 (n + 1)

end A097362

/-! ## A097362.P2061965172870343554

`floor((n+3)/(or(1, n)-(n-1)))`
-/

namespace A097362.P2061965172870343554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 3 : ℚ) / ((Nat.lor 1 n : ℤ) - ((n : ℤ) - 1) : ℚ)⌋

end

end A097362.P2061965172870343554

namespace A097362

/-- `floor((n+3)/(or(1, n)-(n-1)))` -/
def P2061965172870343554.Spec : Prop :=
  ∀ n, P2061965172870343554.a n = A097362 (n + 1)

end A097362

/-! ## A097362.P10434959649581661869

`and(1, n)+gcd(n+2, ∑[n+1])`
-/

namespace A097362.P10434959649581661869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + Nat.gcd (n + 2) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A097362.P10434959649581661869

namespace A097362

/-- `and(1, n)+gcd(n+2, ∑[n+1])` -/
def P10434959649581661869.Spec : Prop :=
  ∀ n, (P10434959649581661869.a n : ℤ) = A097362 (n + 1)

end A097362

/-! ## A097362.P4776164770392510164

`∑[a(n-2)-(-1)^n]` with `a(0)=1, a(1)=3, a(2)=-2`
-/

namespace A097362.P4776164770392510164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, -2] fun n f1 =>
  f1 (n - 2) - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097362.P4776164770392510164

namespace A097362

/-- `∑[a(n-2)-(-1)^n]` -/
def P4776164770392510164.Spec : Prop :=
  ∀ n, P4776164770392510164.a n = A097362 (n + 1)

end A097362

/-! ## A097362.P16789835054156050426

`a(n-2)-(3-n²)%4` with `a(0)=1, a(1)=4`
-/

namespace A097362.P16789835054156050426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 2) - Int.tmod (3 - (n ^ 2 : ℤ)) 4

end

end A097362.P16789835054156050426

namespace A097362

/-- `a(n-2)-(3-n²)%4` -/
def P16789835054156050426.Spec : Prop :=
  ∀ n, P16789835054156050426.a n = A097362 (n + 1)

end A097362

/-! ## A097362.P14585923557380096505

`a(n-2)-or(n+1, -2)` with `a(0)=1, a(1)=4`
-/

namespace A097362.P14585923557380096505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 2) - Int.lor (n + 1 : ℤ) (-2)

end

end A097362.P14585923557380096505

namespace A097362

/-- `a(n-2)-or(n+1, -2)` -/
def P14585923557380096505.Spec : Prop :=
  ∀ n, P14585923557380096505.a n = A097362 (n + 1)

end A097362

/-! ## A097362.P5965884279106084477

`a((2*n)%4)+a(n-2)` with `a(0)=1, a(1)=4`
-/

namespace A097362.P5965884279106084477
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (2 * n % 4) + a (n - 2)

end

end A097362.P5965884279106084477

namespace A097362

/-- `a((2*n)%4)+a(n-2)` -/
def P5965884279106084477.Spec : Prop :=
  ∀ n, (P5965884279106084477.a n : ℤ) = A097362 (n + 1)

end A097362

/-! ## A097362.P17870484047300259688

`ceil((n+1)*a(n-2)/n)` with `a(0)=1, a(1)=4`
-/

namespace A097362.P17870484047300259688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  ⌈(n + 1 : ℚ) * ((a (n - 2) : ℚ) / (n : ℚ))⌉

end

end A097362.P17870484047300259688

namespace A097362

/-- `ceil((n+1)*a(n-2)/n)` -/
def P17870484047300259688.Spec : Prop :=
  ∀ n, P17870484047300259688.a n = A097362 (n + 1)

end A097362

/-!
# A097363: Positive integers n such that 2n-13 is prime.

The programs for A097363, the canonical program `A097363.P9324045915537457052` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097363 has offset 1).

The definition of A097363 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A097363.P9324045915537457052

`A097338(n+1)+1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A097363

/-- `A097338(n+1)+1` -/
def P9324045915537457052.Spec : Prop :=
  ∀ n, P9324045915537457052.a n = A097363 (n + 1)

theorem P9324045915537457052.correct : P9324045915537457052.Spec := by
  intro n
  simp only [A097363, Nat.add_sub_cancel]

end A097363

/-! ## A097363.P4433295583370231035

`A097069(n+1)+2`
-/

namespace A097363.P4433295583370231035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097069 (n + 1) + 2

end

end A097363.P4433295583370231035

namespace A097363

/-- `A097069(n+1)+2` -/
def P4433295583370231035.Spec : Prop :=
  ∀ n, P4433295583370231035.a n = A097363 (n + 1)

end A097363

/-! ## A097363.P15104710994884579618

`A097480(n+1)-1`
-/

namespace A097363.P15104710994884579618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097480 (n + 1) - 1

end

end A097363.P15104710994884579618

namespace A097363

/-- `A097480(n+1)-1` -/
def P15104710994884579618.Spec : Prop :=
  ∀ n, P15104710994884579618.a n = A097363 (n + 1)

end A097363

/-! ## A097363.P10774808669890708914

`A089192(n+1)+3`
-/

namespace A097363.P10774808669890708914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089192 (n + 1) + 3

end

end A097363.P10774808669890708914

namespace A097363

/-- `A089192(n+1)+3` -/
def P10774808669890708914.Spec : Prop :=
  ∀ n, P10774808669890708914.a n = A097363 (n + 1)

end A097363

/-! ## A097363.P15279013660794646100

`A098605(n+1)-2`
-/

namespace A097363.P15279013660794646100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098605 (n + 1) - 2

end

end A097363.P15279013660794646100

namespace A097363

/-- `A098605(n+1)-2` -/
def P15279013660794646100.Spec : Prop :=
  ∀ n, P15279013660794646100.a n = A097363 (n + 1)

end A097363

/-! ## A097363.P9359169561027543499

`A089253(n+1)+4`
-/

namespace A097363.P9359169561027543499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089253 (n + 1) + 4

end

end A097363.P9359169561027543499

namespace A097363

/-- `A089253(n+1)+4` -/
def P9359169561027543499.Spec : Prop :=
  ∀ n, P9359169561027543499.a n = A097363 (n + 1)

end A097363

/-! ## A097363.P6298287729171311395

`A097932(n+1)-3`
-/

namespace A097363.P6298287729171311395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097932 (n + 1) - 3

end

end A097363.P6298287729171311395

namespace A097363

/-- `A097932(n+1)-3` -/
def P6298287729171311395.Spec : Prop :=
  ∀ n, P6298287729171311395.a n = A097363 (n + 1)

end A097363

/-! ## A097363.P1046854865404979887

`A098090(n+1)+5`
-/

namespace A097363.P1046854865404979887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098090 (n + 1) + 5

end

end A097363.P1046854865404979887

namespace A097363

/-- `A098090(n+1)+5` -/
def P1046854865404979887.Spec : Prop :=
  ∀ n, P1046854865404979887.a n = A097363 (n + 1)

end A097363

/-! ## A097363.P17132570131895227067

`A006254(n+1)+6`
-/

namespace A097363.P17132570131895227067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1) + 6

end

end A097363.P17132570131895227067

namespace A097363

/-- `A006254(n+1)+6` -/
def P17132570131895227067.Spec : Prop :=
  ∀ n, P17132570131895227067.a n = A097363 (n + 1)

end A097363

/-! ## A097363.P15200686513247102869

`A005097(n+1)+7`
-/

namespace A097363.P15200686513247102869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) + 7

end

end A097363.P15200686513247102869

namespace A097363

/-- `A005097(n+1)+7` -/
def P15200686513247102869.Spec : Prop :=
  ∀ n, P15200686513247102869.a n = A097363 (n + 1)

end A097363

/-! ## A097363.P5924597652333691814

`A067076(n+1)+8`
-/

namespace A097363.P5924597652333691814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1) + 8

end

end A097363.P5924597652333691814

namespace A097363

/-- `A067076(n+1)+8` -/
def P5924597652333691814.Spec : Prop :=
  ∀ n, P5924597652333691814.a n = A097363 (n + 1)

end A097363

/-! ## A097363.P7330505488415774364

`A298252(n+1)/2+5`
-/

namespace A097363.P7330505488415774364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298252 (n + 1) : ℚ) / 2 + 5

end

end A097363.P7330505488415774364

namespace A097363

/-- `A298252(n+1)/2+5` -/
def P7330505488415774364.Spec : Prop :=
  ∀ n, P7330505488415774364.a n = (A097363 (n + 1) : ℚ)

end A097363

/-! ## A097363.P1265180808216956311

`A177018(n+1)+5+n`
-/

namespace A097363.P1265180808216956311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177018 (n + 1) + 5 + (n : ℤ)

end

end A097363.P1265180808216956311

namespace A097363

/-- `A177018(n+1)+5+n` -/
def P1265180808216956311.Spec : Prop :=
  ∀ n, P1265180808216956311.a n = A097363 (n + 1)

end A097363

/-! ## A097363.P4730265408157287957

`A008507(n+1)+n+8`
-/

namespace A097363.P4730265408157287957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008507 (n + 1) + (n + 8 : ℤ)

end

end A097363.P4730265408157287957

namespace A097363

/-- `A008507(n+1)+n+8` -/
def P4730265408157287957.Spec : Prop :=
  ∀ n, P4730265408157287957.a n = A097363 (n + 1)

end A097363

/-! ## A097363.P17334334171092362352

`A020722(n)+A008507(n+1)`
-/

namespace A097363.P17334334171092362352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020722 n + A008507 (n + 1)

end

end A097363.P17334334171092362352

namespace A097363

/-- `A020722(n)+A008507(n+1)` -/
def P17334334171092362352.Spec : Prop :=
  ∀ n, P17334334171092362352.a n = A097363 (n + 1)

end A097363

/-! ## A097363.P16133875577690520458

`A163057(n+1)+A022962(n)`
-/

namespace A097363.P16133875577690520458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163057 (n + 1) + A022962 n

end

end A097363.P16133875577690520458

namespace A097363

/-- `A163057(n+1)+A022962(n)` -/
def P16133875577690520458.Spec : Prop :=
  ∀ n, P16133875577690520458.a n = A097363 (n + 1)

end A097363

/-! ## A097363.P10779086574733144944

`A177018(n+1)+A020710(n)`
-/

namespace A097363.P10779086574733144944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177018 (n + 1) + A020710 n

end

end A097363.P10779086574733144944

namespace A097363

/-- `A177018(n+1)+A020710(n)` -/
def P10779086574733144944.Spec : Prop :=
  ∀ n, P10779086574733144944.a n = A097363 (n + 1)

end A097363

/-! ## A097363.P2718400053746838420

`A175540(n+1)+A022963(n)`
-/

namespace A097363.P2718400053746838420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175540 (n + 1) + A022963 n

end

end A097363.P2718400053746838420

namespace A097363

/-- `A175540(n+1)+A022963(n)` -/
def P2718400053746838420.Spec : Prop :=
  ∀ n, P2718400053746838420.a n = A097363 (n + 1)

end A097363

/-! ## A097363.P15005162134544229015

`A163057(n+1)-A023448(n)`
-/

namespace A097363.P15005162134544229015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163057 (n + 1) - A023448 n

end

end A097363.P15005162134544229015

namespace A097363

/-- `A163057(n+1)-A023448(n)` -/
def P15005162134544229015.Spec : Prop :=
  ∀ n, P15005162134544229015.a n = A097363 (n + 1)

end A097363

/-! ## A097363.P607870556006776704

`A175540(n+1)-A023449(n)`
-/

namespace A097363.P607870556006776704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175540 (n + 1) - A023449 n

end

end A097363.P607870556006776704

namespace A097363

/-- `A175540(n+1)-A023449(n)` -/
def P607870556006776704.Spec : Prop :=
  ∀ n, P607870556006776704.a n = A097363 (n + 1)

end A097363

/-!
# A097364: Triangle read by rows, 0 <= k < n: T(n,k) = number of partitions of n such that the differences between greatest and smallest parts are k.

The programs for A097364, there is no canonical definition to state claims against.
-/

/-! ## A097364.P3552402593976931186

`round(A214258(n+1)/A005811(A118190(n)))`
-/

namespace A097364.P3552402593976931186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A214258 (n + 1) : ℚ) / (A005811 (A118190 n).toNat : ℚ))

end

end A097364.P3552402593976931186

/-! ## A097364.P12507626206251321256

`A238353(comp[∑[n-1]]%A135791(n+1))`
-/

namespace A097364.P12507626206251321256
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238353 (Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A135791 (n + 1))).toNat

end

end A097364.P12507626206251321256

/-! ## A097364.P6885739734279711485

`A238353(A007401(n+1))^A309206(n)`
-/

namespace A097364.P6885739734279711485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238353 (A007401 (n + 1)).toNat : ℚ) ^ (A309206 n : ℤ)

end

end A097364.P6885739734279711485

/-! ## A097364.P784100147779004369

`A238353(A007401(n+1)%A000765(n))`
-/

namespace A097364.P784100147779004369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238353 (Int.tmod (A007401 (n + 1)) (A000765 n)).toNat

end

end A097364.P784100147779004369

/-! ## A097364.P4672260604646843006

`A238353(A007401(n+1))%p?[A007318(n)]`
-/

namespace A097364.P4672260604646843006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238353 (A007401 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A097364.P4672260604646843006

/-!
# A097365: Largest prime factor of A096421(n).

The programs for A097365, there is no canonical definition to state claims against.
-/

/-! ## A097365.P17338063271444423134

`A006530(A096421(n+3))`
-/

namespace A097365.P17338063271444423134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A096421 (n + 3)).toNat

end

end A097365.P17338063271444423134

/-!
# A097366: Largest k such that 2^k divides A096421(n).

The programs for A097366, there is no canonical definition to state claims against.
-/

/-! ## A097366.P1675947462810432772

`val(A096421(n+3), 2)`
-/

namespace A097366.P1675947462810432772
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A096421 (n + 3)).toNat 2

end

end A097366.P1675947462810432772

/-! ## A097366.P10708011985114428344

`A304943(A132861(n))`
-/

namespace A097366.P10708011985114428344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304943 (A132861 n).toNat

end

end A097366.P10708011985114428344

/-! ## A097366.P16733042220015944289

`A336500(gcd((∑[2*n]+1)*2^n, A137447(n)))`
-/

namespace A097366.P16733042220015944289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336500 (Int.gcd (((∑ j ∈ Finset.range (n + 1), f1 j + 1) * 2 ^ n : ℕ) : ℤ) (A137447 n))

end

end A097366.P16733042220015944289

/-! ## A097366.P15449928264295358632

`A257669(A253853(n))+A110654(n)`
-/

namespace A097366.P15449928264295358632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257669 (A253853 n).toNat + A110654 n

end

end A097366.P15449928264295358632

/-! ## A097366.P17712401520544249007

`A353861(A056391(n+1)*A126796(n))`
-/

namespace A097366.P17712401520544249007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353861 (A056391 (n + 1) * A126796 n).toNat

end

end A097366.P17712401520544249007

/-!
# A097367: Fibonacci regression array: For n>=2 and 1<=k<=n-1, T(n,k) is the last term before the first nonpositive term in the sequence n, k, n-k, 2k-n, 2n-3k, 5k-3n, ...

The programs for A097367, there is no canonical definition to state claims against.
-/

/-! ## A097367.P14331005037280695126

`A059841(A045912(n))+A049581(A278818(n))`
-/

namespace A097367.P14331005037280695126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A045912 n).toNat + A049581 (A278818 n).toNat

end

end A097367.P14331005037280695126

/-! ## A097367.P3848045551919685896

`A102683(A212804(n))+A049581(A278818(n))`
-/

namespace A097367.P3848045551919685896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A212804 n).toNat + A049581 (A278818 n).toNat

end

end A097367.P3848045551919685896

/-! ## A097367.P12549920219301546550

`A001222(A335882(2*n+1))%p?[A053602(n)]`
-/

namespace A097367.P12549920219301546550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (A335882 (2 * n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A097367.P12549920219301546550

/-! ## A097367.P12310936738722830697

`A126792(A178404(n+2))`
-/

namespace A097367.P12310936738722830697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126792 (A178404 (n + 2)).toNat

end

end A097367.P12310936738722830697

/-!
# A097368: Least term in row n of the Fibonacci regression array in A097367.

The programs for A097368, there is no canonical definition to state claims against.
-/

/-! ## A097368.P10206243793936354320

`A286326(n+2)`
-/

namespace A097368.P10206243793936354320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286326 (n + 2)

end

end A097368.P10206243793936354320

/-! ## A097368.P10755007430355858002

`A028310(A286326(A103517(n)-n))`
-/

namespace A097368.P10755007430355858002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A286326 (A103517 n - (n : ℤ)).toNat).toNat

end

end A097368.P10755007430355858002

/-! ## A097368.P11946323130225772732

`A286326(A103517(n)-n)%A002148(n)`
-/

namespace A097368.P11946323130225772732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286326 (A103517 n - (n : ℤ)).toNat) (A002148 n)

end

end A097368.P11946323130225772732

/-! ## A097368.P9823887948092014929

`lcm(A020985(n), A286326(A103517(n)-n))`
-/

namespace A097368.P9823887948092014929
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A286326 (A103517 n - (n : ℤ)).toNat)

end

end A097368.P9823887948092014929

/-! ## A097368.P443040368421400010

`char[A004442(n)]*A286326(A103517(n)-n)`
-/

namespace A097368.P443040368421400010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A286326 (A103517 n - (n : ℤ)).toNat

end

end A097368.P443040368421400010

/-! ## A097368.P12247339345766751714

`A033999(2*n)*A286326(A103517(n)-n)`
-/

namespace A097368.P12247339345766751714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A286326 (A103517 n - (n : ℤ)).toNat

end

end A097368.P12247339345766751714

/-! ## A097368.P6340843611120267992

`A088705(A020742(n))*A286326(A103517(n)-n)`
-/

namespace A097368.P6340843611120267992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 (A020742 n).toNat * A286326 (A103517 n - (n : ℤ)).toNat

end

end A097368.P6340843611120267992

/-! ## A097368.P3751979629169956869

`gcd(A087299(n), A286326(A103517(n)-n))`
-/

namespace A097368.P3751979629169956869
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A087299 n) (A286326 (A103517 n - (n : ℤ)).toNat)

end

end A097368.P3751979629169956869

/-! ## A097368.P1281858178532510991

`A014963(A001972(4*n))*A286326(A103517(n)-n)`
-/

namespace A097368.P1281858178532510991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A001972 (4 * n)).toNat * A286326 (A103517 n - (n : ℤ)).toNat

end

end A097368.P1281858178532510991

/-!
# A097369: Position in row n of Fibonacci regression array (A097367) where the least term first occurs.

The programs for A097369, there is no canonical definition to state claims against.
-/

/-! ## A097369.P2058991129829430910

`ceil(∑[(13-cos(n+1))/21])`
-/

namespace A097369.P2058991129829430910
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (13 - Real.cos (n + 1 : ℝ)) / 21

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A097369.P2058991129829430910

/-! ## A097369.P5978337851009771240

`A007073(n+4)%(n+4)`
-/

namespace A097369.P5978337851009771240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007073 (n + 4)) (n + 4 : ℤ)

end

end A097369.P5978337851009771240

/-! ## A097369.P11767176549127811977

`round(A000037(9*n+10)/15)`
-/

namespace A097369.P11767176549127811977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000037 (9 * n + 10) : ℚ) / 15)

end

end A097369.P11767176549127811977

/-! ## A097369.P11047166481598633986

`round((6/16)²*A330181(n+2))`
-/

namespace A097369.P11047166481598633986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((6 : ℚ) / 16) ^ 2 * (A330181 (n + 2) : ℚ))

end

end A097369.P11047166481598633986

/-! ## A097369.P8239284159488449711

`ceil(∑[(n+1)/(A253671(n+1)+n+1)])`
-/

namespace A097369.P8239284159488449711
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A253671 (n + 1) + (n + 1 : ℤ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A097369.P8239284159488449711

/-! ## A097369.P12845334416143400912

`floor(Δ[A005206(A161532(n))]/4)`
-/

namespace A097369.P12845334416143400912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A161532 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n : ℚ) / 4⌋

end

end A097369.P12845334416143400912

/-! ## A097369.P13500901267447742023

`floor(Δ[A001965(A067998(n+3))]/4)`
-/

namespace A097369.P13500901267447742023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001965 (A067998 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n : ℚ) / 4⌋

end

end A097369.P13500901267447742023

/-! ## A097369.P6759626157133139017

`A000196(A195180(∑[A265283(n)]))`
-/

namespace A097369.P6759626157133139017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265283 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A195180 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A097369.P6759626157133139017

/-! ## A097369.P10323039758417183446

`A002265(Δ[A005206(A161532(n))])`
-/

namespace A097369.P10323039758417183446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A161532 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (f1 (n + 1) - f1 n).toNat

end

end A097369.P10323039758417183446

/-! ## A097369.P12324548593988620616

`A002265(Δ[A001965(A067998(n+3))])`
-/

namespace A097369.P12324548593988620616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001965 (A067998 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (f1 (n + 1) - f1 n).toNat

end

end A097369.P12324548593988620616

/-!
# A097373: Numbers n such that there are no primes in a sequence formed from the t digits of n where the latter terms are given by rule b(i)=sum of t previous terms and the primes are counted from initial t digits up to the largest term < n^2; where zeros are located in A098598.

The programs for A097373, there is no canonical definition to state claims against.
-/

/-! ## A097373.P6317752029686226434

`eq[0, A098598(n)]+10`
-/

namespace A097373.P6317752029686226434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098598 (n + 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 10

end

end A097373.P6317752029686226434

/-! ## A097373.P15161933317408690658

`∩[A001744(n+1), A219110(n+1)]`
-/

namespace A097373.P15161933317408690658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219110 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097373.P15161933317408690658

/-! ## A097373.P18307600451500419583

`∩[A001744(n+1), A267510(n+1)]`
-/

namespace A097373.P18307600451500419583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267510 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097373.P18307600451500419583

/-! ## A097373.P7588710937316470083

`∩[A035139(n+1), A267510(n+1)]`
-/

namespace A097373.P7588710937316470083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267510 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097373.P7588710937316470083

/-! ## A097373.P14734807161395927059

`∩[A202265(n+1), A267510(n+1)]`
-/

namespace A097373.P14734807161395927059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267510 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097373.P14734807161395927059

/-!
# A097374: Perfect 4-composites: a perfect 4-composite is a natural number that can be represented in the form a^(a^(a^........(a^(a) ) ) ) for some natural number a and some number b>=1 of up-arrows.

The programs for A097374, there is no canonical definition to state claims against.
-/

/-! ## A097374.P16815148099664924232

`A257309(n+3)`
-/

namespace A097374.P16815148099664924232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257309 (n + 3)

end

end A097374.P16815148099664924232

/-! ## A097374.P8577889722052344737

`record[A257309(A109785(comp[n²]))]`
-/

namespace A097374.P8577889722052344737
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257309 (A109785 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097374.P8577889722052344737

/-! ## A097374.P16503532195789144124

`record[A257309(A079399(n))]`
-/

namespace A097374.P16503532195789144124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257309 (A079399 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097374.P16503532195789144124

/-! ## A097374.P17782101126956525395

`A381538(record[A085030(n+1)])`
-/

namespace A097374.P17782101126956525395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085030 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381538 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A097374.P17782101126956525395

/-!
# A097376: Numbers n such that there is exactly one prime in a sequence formed from the t digits of n where the latter terms are given by rule b(i)=sum of t previous terms and the primes are counted from initial t digits up to the largest term < n^2; where ones are located in A098598.

The programs for A097376, there is no canonical definition to state claims against.
-/

/-! ## A097376.P6757806805459146709

`eq[1, A098598(n)]+10`
-/

namespace A097376.P6757806805459146709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098598 (n + 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 10

end

end A097376.P6757806805459146709

/-! ## A097376.P12904266526247261498

`∩[A085520(n+1), A346290(n+1)]`
-/

namespace A097376.P12904266526247261498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097376.P12904266526247261498

/-! ## A097376.P1623429950450853808

`∩[A085556(n+1), A346290(n+1)]`
-/

namespace A097376.P1623429950450853808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085556 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097376.P1623429950450853808

/-! ## A097376.P9400177691920406027

`∩[A092620(n+1), A346290(n+1)]`
-/

namespace A097376.P9400177691920406027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097376.P9400177691920406027

/-! ## A097376.P8232186654009621330

`∩[A117815(n+1), A346290(n+1)]`
-/

namespace A097376.P8232186654009621330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117815 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097376.P8232186654009621330

/-!
# A097377: a(n) = CubeFreeKernel(n) + 1.

The programs for A097377, the canonical program `A097377.P4336530497269463132` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097377 has offset 1).

The definition of A097377 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007948, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A097377.P4336530497269463132

`A007948(n+1)+1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A097377

/-- `A007948(n+1)+1` -/
def P4336530497269463132.Spec : Prop :=
  ∀ n, P4336530497269463132.a n = A097377 (n + 1)

theorem P4336530497269463132.correct : P4336530497269463132.Spec := by
  intro n
  simp only [A097377, Nat.add_sub_cancel]

end A097377

/-! ## A097377.P11665554671305458464

`∏{p}[n+1, gcd(n+1, #²)]+1`
-/

namespace A097377.P11665554671305458464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.gcd (n + 1) (p ^ 2) + 1

end

end A097377.P11665554671305458464

namespace A097377

/-- `∏{p}[n+1, gcd(n+1, #²)]+1` -/
def P11665554671305458464.Spec : Prop :=
  ∀ n, (P11665554671305458464.a n : ℤ) = A097377 (n + 1)

end A097377

/-! ## A097377.P4610319118161834745

`ceil((n+2)/A062378(n+1))`
-/

namespace A097377.P4610319118161834745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 2 : ℚ) / (A062378 (n + 1) : ℚ)⌉

end

end A097377.P4610319118161834745

namespace A097377

/-- `ceil((n+2)/A062378(n+1))` -/
def P4610319118161834745.Spec : Prop :=
  ∀ n, P4610319118161834745.a n = A097377 (n + 1)

end A097377

/-! ## A097377.P15328776084900421878

`gcd(n+1, A078615(n+1))+1`
-/

namespace A097377.P15328776084900421878
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A078615 (n + 1)) + 1

end

end A097377.P15328776084900421878

namespace A097377

/-- `gcd(n+1, A078615(n+1))+1` -/
def P15328776084900421878.Spec : Prop :=
  ∀ n, (P15328776084900421878.a n : ℤ) = A097377 (n + 1)

end A097377

/-! ## A097377.P2015982484963027336

`A020725(A007948(n+1))`
-/

namespace A097377.P2015982484963027336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A007948 (n + 1)).toNat

end

end A097377.P2015982484963027336

namespace A097377

/-- `A020725(A007948(n+1))` -/
def P2015982484963027336.Spec : Prop :=
  ∀ n, P2015982484963027336.a n = A097377 (n + 1)

end A097377

/-! ## A097377.P16163640674403684150

`A353897(A058035(n+1))+1`
-/

namespace A097377.P16163640674403684150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353897 (A058035 (n + 1)).toNat + 1

end

end A097377.P16163640674403684150

namespace A097377

/-- `A353897(A058035(n+1))+1` -/
def P16163640674403684150.Spec : Prop :=
  ∀ n, P16163640674403684150.a n = A097377 (n + 1)

end A097377

/-! ## A097377.P21321397949614684

`A066990(A353897(n+1))+1`
-/

namespace A097377.P21321397949614684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066990 (A353897 (n + 1)).toNat + 1

end

end A097377.P21321397949614684

namespace A097377

/-- `A066990(A353897(n+1))+1` -/
def P21321397949614684.Spec : Prop :=
  ∀ n, P21321397949614684.a n = A097377 (n + 1)

end A097377

/-! ## A097377.P5046319464941099121

`A076998(n+1)+A076618(n+1)`
-/

namespace A097377.P5046319464941099121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076998 (n + 1) + A076618 (n + 1)

end

end A097377.P5046319464941099121

namespace A097377

/-- `A076998(n+1)+A076618(n+1)` -/
def P5046319464941099121.Spec : Prop :=
  ∀ n, P5046319464941099121.a n = A097377 (n + 1)

end A097377

/-! ## A097377.P16503355139574210612

`A007947(n+1)+A076998(n+1)+1`
-/

namespace A097377.P16503355139574210612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) + (A076998 (n + 1) + 1)

end

end A097377.P16503355139574210612

namespace A097377

/-- `A007947(n+1)+A076998(n+1)+1` -/
def P16503355139574210612.Spec : Prop :=
  ∀ n, P16503355139574210612.a n = A097377 (n + 1)

end A097377

/-! ## A097377.P11301357982797904519

`A007947(n+1)*A071773(n+1)+1`
-/

namespace A097377.P11301357982797904519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A071773 (n + 1) + 1

end

end A097377.P11301357982797904519

namespace A097377

/-- `A007947(n+1)*A071773(n+1)+1` -/
def P11301357982797904519.Spec : Prop :=
  ∀ n, P11301357982797904519.a n = A097377 (n + 1)

end A097377

/-! ## A097377.P15343716205779140438

`A055229(n+1)*A066990(n+1)+1`
-/

namespace A097377.P15343716205779140438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055229 (n + 1) * A066990 (n + 1) + 1

end

end A097377.P15343716205779140438

namespace A097377

/-- `A055229(n+1)*A066990(n+1)+1` -/
def P15343716205779140438.Spec : Prop :=
  ∀ n, P15343716205779140438.a n = A097377 (n + 1)

end A097377

/-! ## A097377.P9013968278296279892

`A078615(n+1)/A055231(n+1)+1`
-/

namespace A097377.P9013968278296279892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078615 (n + 1) : ℚ) / (A055231 (n + 1) : ℚ) + 1

end

end A097377.P9013968278296279892

namespace A097377

/-- `A078615(n+1)/A055231(n+1)+1` -/
def P9013968278296279892.Spec : Prop :=
  ∀ n, P9013968278296279892.a n = (A097377 (n + 1) : ℚ)

end A097377

/-! ## A097377.P16320277248129989196

`A066990(A356194(n+1))+1`
-/

namespace A097377.P16320277248129989196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066990 (A356194 (n + 1)).toNat + 1

end

end A097377.P16320277248129989196

namespace A097377

/-- `A066990(A356194(n+1))+1` -/
def P16320277248129989196.Spec : Prop :=
  ∀ n, P16320277248129989196.a n = A097377 (n + 1)

end A097377

/-! ## A097377.P10225197333751047281

`A019555(A058035(n+1)²)+1`
-/

namespace A097377.P10225197333751047281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (A058035 (n + 1) ^ 2).toNat + 1

end

end A097377.P10225197333751047281

namespace A097377

/-- `A019555(A058035(n+1)²)+1` -/
def P10225197333751047281.Spec : Prop :=
  ∀ n, P10225197333751047281.a n = A097377 (n + 1)

end A097377

/-!
# A097378: a(n) = SquareFreeKernel(n)*CubeFreeKernel(n) + 1.

The programs for A097378, the canonical program `A097378.P12310079244189164866` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097378 has offset 1).

The definition of A097378 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A007948, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A097378.P12310079244189164866

`A007947(n+1)*A007948(n+1)+1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A097378

/-- `A007947(n+1)*A007948(n+1)+1` -/
def P12310079244189164866.Spec : Prop :=
  ∀ n, P12310079244189164866.a n = A097378 (n + 1)

theorem P12310079244189164866.correct : P12310079244189164866.Spec := by
  intro n
  simp only [A097378, Nat.add_sub_cancel]

end A097378

/-! ## A097378.P5293905958804960879

`∏{p}[n+1, gcd(n+1, #²)]*∏{p}[n+1, #]+1`
-/

namespace A097378.P5293905958804960879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), Nat.gcd (n + 1) (p ^ 2)) * (∏ p ∈ Nat.primeFactors (f2 n), p) + 1

end

end A097378.P5293905958804960879

namespace A097378

/-- `∏{p}[n+1, gcd(n+1, #²)]*∏{p}[n+1, #]+1` -/
def P5293905958804960879.Spec : Prop :=
  ∀ n, (P5293905958804960879.a n : ℤ) = A097378 (n + 1)

end A097378

/-! ## A097378.P15350359466667461544

`∏{p}[n+1, #²]*∏{p}[ceil(n/∏{p}[n+1, #]), #]+1`
-/

namespace A097378.P15350359466667461544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℚ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), p ^ 2) * (∏ p ∈ Nat.primeFactors (f2 n).natAbs, p) + 1

end

end A097378.P15350359466667461544

namespace A097378

/-- `∏{p}[n+1, #²]*∏{p}[ceil(n/∏{p}[n+1, #]), #]+1` -/
def P15350359466667461544.Spec : Prop :=
  ∀ n, (P15350359466667461544.a n : ℤ) = A097378 (n + 1)

end A097378

/-! ## A097378.P10776162557199860531

`gcd((n+1)*∏{p}[n+1, #], ∏{p}[n+1, -#]^3)+1`
-/

namespace A097378.P10776162557199860531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p) : ℕ) : ℤ) ((∏ p ∈ Nat.primeFactors (f2 n), (-(p : ℤ))) ^ 3) + 1

end

end A097378.P10776162557199860531

namespace A097378

/-- `gcd((n+1)*∏{p}[n+1, #], ∏{p}[n+1, -#]^3)+1` -/
def P10776162557199860531.Spec : Prop :=
  ∀ n, (P10776162557199860531.a n : ℤ) = A097378 (n + 1)

end A097378

/-! ## A097378.P4838836403831161329

`A078310(∏{p}[n+1, gcd(n+1, #²)])`
-/

namespace A097378.P4838836403831161329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078310 (∏ p ∈ Nat.primeFactors (f1 n), Nat.gcd (n + 1) (p ^ 2))

end

end A097378.P4838836403831161329

namespace A097378

/-- `A078310(∏{p}[n+1, gcd(n+1, #²)])` -/
def P4838836403831161329.Spec : Prop :=
  ∀ n, P4838836403831161329.a n = A097378 (n + 1)

end A097378

/-! ## A097378.P1237757072504848952

`A064549(gcd(n²+n, ∏{p}[n+1, #²]))+1`
-/

namespace A097378.P1237757072504848952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064549 (Nat.gcd (n ^ 2 + n) (∏ p ∈ Nat.primeFactors (f1 n), p ^ 2)) + 1

end

end A097378.P1237757072504848952

namespace A097378

/-- `A064549(gcd(n²+n, ∏{p}[n+1, #²]))+1` -/
def P1237757072504848952.Spec : Prop :=
  ∀ n, P1237757072504848952.a n = A097378 (n + 1)

end A097378

/-! ## A097378.P676279860326017159

`(n+1)*∏{p}[n+1, #]/A062378(n+1)+1`
-/

namespace A097378.P676279860326017159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p) : ℕ) : ℚ) / (A062378 (n + 1) : ℚ) + 1

end

end A097378.P676279860326017159

namespace A097378

/-- `(n+1)*∏{p}[n+1, #]/A062378(n+1)+1` -/
def P676279860326017159.Spec : Prop :=
  ∀ n, P676279860326017159.a n = (A097378 (n + 1) : ℚ)

end A097378

/-! ## A097378.P4887216741255981112

`A078310(A007948(n+1))`
-/

namespace A097378.P4887216741255981112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078310 (A007948 (n + 1)).toNat

end

end A097378.P4887216741255981112

namespace A097378

/-- `A078310(A007948(n+1))` -/
def P4887216741255981112.Spec : Prop :=
  ∀ n, P4887216741255981112.a n = A097378 (n + 1)

end A097378

/-! ## A097378.P7805180315766431109

`A064549(n+1)/A062378(n+1)+1`
-/

namespace A097378.P7805180315766431109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064549 (n + 1) : ℚ) / (A062378 (n + 1) : ℚ) + 1

end

end A097378.P7805180315766431109

namespace A097378

/-- `A064549(n+1)/A062378(n+1)+1` -/
def P7805180315766431109.Spec : Prop :=
  ∀ n, P7805180315766431109.a n = (A097378 (n + 1) : ℚ)

end A097378

/-! ## A097378.P721443041463066078

`A058035((n+1)²)+1`
-/

namespace A097378.P721443041463066078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058035 ((n + 1) ^ 2) + 1

end

end A097378.P721443041463066078

namespace A097378

/-- `A058035((n+1)²)+1` -/
def P721443041463066078.Spec : Prop :=
  ∀ n, P721443041463066078.a n = A097378 (n + 1)

end A097378

/-! ## A097378.P3534617624418258214

`A078310(A355263(A064549(A355263(A064549(n+1)))))`
-/

namespace A097378.P3534617624418258214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078310 (A355263 (A064549 (A355263 (A064549 (n + 1)).toNat).toNat).toNat).toNat

end

end A097378.P3534617624418258214

namespace A097378

/-- `A078310(A355263(A064549(A355263(A064549(n+1)))))` -/
def P3534617624418258214.Spec : Prop :=
  ∀ n, P3534617624418258214.a n = A097378 (n + 1)

end A097378

/-!
# A097379: Numbers m such that 1+SquareFreeKernel(m) is prime.

The programs for A097379, the canonical program `A097379.P7297816214369488730` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097379 has offset 1).

The definition of A097379 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6214 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A097379.P7297816214369488730

`eq[1, A010051(A007947(n+1)+1)]+1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A097379

/-- `eq[1, A010051(A007947(n+1)+1)]+1` -/
def P7297816214369488730.Spec : Prop :=
  ∀ n, (P7297816214369488730.a n : ℤ) = A097379 (n + 1)

theorem P7297816214369488730.correct : P7297816214369488730.Spec := by
  intro n
  simp only [A097379, Nat.add_sub_cancel]

end A097379

/-! ## A097379.P394029476690037905

`lt[∑{e}[∏{p}[n+1, #]+1, #], 2]+1`
-/

namespace A097379.P394029476690037905
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f4 j) n + 1

end

end A097379.P394029476690037905

namespace A097379

/-- `lt[∑{e}[∏{p}[n+1, #]+1, #], 2]+1` -/
def P394029476690037905.Spec : Prop :=
  ∀ n, (P394029476690037905.a n : ℤ) = A097379 (n + 1)

end A097379

/-! ## A097379.P2108989881169292830

`eq[1, A001222(∏{p}[n+1, #]+1)]+1`
-/

namespace A097379.P2108989881169292830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f3 n), p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A097379.P2108989881169292830

namespace A097379

/-- `eq[1, A001222(∏{p}[n+1, #]+1)]+1` -/
def P2108989881169292830.Spec : Prop :=
  ∀ n, (P2108989881169292830.a n : ℤ) = A097379 (n + 1)

end A097379

/-! ## A097379.P5395526742209472071

`eq[2, A000005(∏{p}[n+1, #]+1)]+1`
-/

namespace A097379.P5395526742209472071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ p ∈ Nat.primeFactors (f3 n), p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A097379.P5395526742209472071

namespace A097379

/-- `eq[2, A000005(∏{p}[n+1, #]+1)]+1` -/
def P5395526742209472071.Spec : Prop :=
  ∀ n, (P5395526742209472071.a n : ℤ) = A097379 (n + 1)

end A097379

/-! ## A097379.P9695940595081588555

`eq[∏{p}[n+1, #], A341857(∏{p}[n+1, #]+1)]+1`
-/

namespace A097379.P9695940595081588555
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341857 (∏ p ∈ Nat.primeFactors (f4 n), p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n + 1

end

end A097379.P9695940595081588555

namespace A097379

/-- `eq[∏{p}[n+1, #], A341857(∏{p}[n+1, #]+1)]+1` -/
def P9695940595081588555.Spec : Prop :=
  ∀ n, (P9695940595081588555.a n : ℤ) = A097379 (n + 1)

end A097379

/-! ## A097379.P12532754336318155646

`eq[∏{p}[n+1, #]+1, A020639(∏{p}[n+1, #]+1)]+1`
-/

namespace A097379.P12532754336318155646
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∏ p ∈ Nat.primeFactors (f4 n), p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n + 1

end

end A097379.P12532754336318155646

namespace A097379

/-- `eq[∏{p}[n+1, #]+1, A020639(∏{p}[n+1, #]+1)]+1` -/
def P12532754336318155646.Spec : Prop :=
  ∀ n, (P12532754336318155646.a n : ℤ) = A097379 (n + 1)

end A097379

/-! ## A097379.P11472315468549233677

`eq[2, A000005(A076618(n+1))]+1`
-/

namespace A097379.P11472315468549233677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A076618 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A097379.P11472315468549233677

namespace A097379

/-- `eq[2, A000005(A076618(n+1))]+1` -/
def P11472315468549233677.Spec : Prop :=
  ∀ n, (P11472315468549233677.a n : ℤ) = A097379 (n + 1)

end A097379

/-! ## A097379.P15641680790611777284

`eq[1, A322993(∏{p}[n+1, #]+1)]+1`
-/

namespace A097379.P15641680790611777284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322993 (∏ p ∈ Nat.primeFactors (f3 n), p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A097379.P15641680790611777284

namespace A097379

/-- `eq[1, A322993(∏{p}[n+1, #]+1)]+1` -/
def P15641680790611777284.Spec : Prop :=
  ∀ n, (P15641680790611777284.a n : ℤ) = A097379 (n + 1)

end A097379

/-! ## A097379.P13356714020865558922

`eq[∏{p}[n+1, #], A063428(∏{p}[n+1, #]+1)]+1`
-/

namespace A097379.P13356714020865558922
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063428 (∏ p ∈ Nat.primeFactors (f4 n), p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n + 1

end

end A097379.P13356714020865558922

namespace A097379

/-- `eq[∏{p}[n+1, #], A063428(∏{p}[n+1, #]+1)]+1` -/
def P13356714020865558922.Spec : Prop :=
  ∀ n, (P13356714020865558922.a n : ℤ) = A097379 (n + 1)

end A097379

/-!
# A097380: Numbers m such that 1+CubeFreeKernel(m) is prime.

The programs for A097380, the canonical program `A097380.P15856719573966793796` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097380 has offset 1).

The definition of A097380 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1352 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A097380.P14800616585838999949

`eq[1, A002033(A007948(n+1))]+1`
-/

namespace A097380.P14800616585838999949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 (A007948 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A097380.P14800616585838999949

namespace A097380

/-- `eq[1, A002033(A007948(n+1))]+1` -/
def P14800616585838999949.Spec : Prop :=
  ∀ n, (P14800616585838999949.a n : ℤ) = A097380 (n + 1)

end A097380

/-! ## A097380.P15856719573966793796

`eq[1, A001222(A097377(n+1))]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A097380

/-- `eq[1, A001222(A097377(n+1))]+1` -/
def P15856719573966793796.Spec : Prop :=
  ∀ n, (P15856719573966793796.a n : ℤ) = A097380 (n + 1)

theorem P15856719573966793796.correct : P15856719573966793796.Spec := by
  intro n
  simp only [A097380, Nat.add_sub_cancel]

end A097380

/-! ## A097380.P7110318096213775874

`record[n-A220114(A007948(n+1)+1)]`
-/

namespace A097380.P7110318096213775874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A220114 (A007948 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097380.P7110318096213775874

namespace A097380

/-- `record[n-A220114(A007948(n+1)+1)]` -/
def P7110318096213775874.Spec : Prop :=
  ∀ n, P7110318096213775874.a n = A097380 (n + 1)

end A097380

/-! ## A097380.P11154800871666519609

`eq[1, A001065(A007948(n+1)+1)]+1`
-/

namespace A097380.P11154800871666519609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A007948 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A097380.P11154800871666519609

namespace A097380

/-- `eq[1, A001065(A007948(n+1)+1)]+1` -/
def P11154800871666519609.Spec : Prop :=
  ∀ n, (P11154800871666519609.a n : ℤ) = A097380 (n + 1)

end A097380

/-! ## A097380.P1966722321784035912

`eq[1, A001222(A007948(n+1)+1)]+1`
-/

namespace A097380.P1966722321784035912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007948 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A097380.P1966722321784035912

namespace A097380

/-- `eq[1, A001222(A007948(n+1)+1)]+1` -/
def P1966722321784035912.Spec : Prop :=
  ∀ n, (P1966722321784035912.a n : ℤ) = A097380 (n + 1)

end A097380

/-! ## A097380.P3763662933649708027

`eq[1, A066446(A007948(n+1)+1)]+1`
-/

namespace A097380.P3763662933649708027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066446 (A007948 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A097380.P3763662933649708027

namespace A097380

/-- `eq[1, A066446(A007948(n+1)+1)]+1` -/
def P3763662933649708027.Spec : Prop :=
  ∀ n, (P3763662933649708027.a n : ℤ) = A097380 (n + 1)

end A097380

/-! ## A097380.P11586554094411632415

`eq[2, A000005(A007948(n+1)+1)]+1`
-/

namespace A097380.P11586554094411632415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A007948 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A097380.P11586554094411632415

namespace A097380

/-- `eq[2, A000005(A007948(n+1)+1)]+1` -/
def P11586554094411632415.Spec : Prop :=
  ∀ n, (P11586554094411632415.a n : ℤ) = A097380 (n + 1)

end A097380

/-! ## A097380.P16276428565676122809

`record[A000010(A097377(n+1))*A062378(n+1)]`
-/

namespace A097380.P16276428565676122809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A097377 (n + 1)).toNat * A062378 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097380.P16276428565676122809

namespace A097380

/-- `record[A000010(A097377(n+1))*A062378(n+1)]` -/
def P16276428565676122809.Spec : Prop :=
  ∀ n, P16276428565676122809.a n = A097380 (n + 1)

end A097380

/-! ## A097380.P11864160130434833685

`record[A000027(n+1)/A085099(A007948(n+1))]`
-/

namespace A097380.P11864160130434833685
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A085099 (A007948 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097380.P11864160130434833685

namespace A097380

/-- `record[A000027(n+1)/A085099(A007948(n+1))]` -/
def P11864160130434833685.Spec : Prop :=
  ∀ n, P11864160130434833685.a n = (A097380 (n + 1) : ℚ)

end A097380

/-! ## A097380.P4724810705456444931

`lt[A007948(n+1), A020639(A007948(n+1)+1)]+1`
-/

namespace A097380.P4724810705456444931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A007948 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A097380.P4724810705456444931

namespace A097380

/-- `lt[A007948(n+1), A020639(A007948(n+1)+1)]+1` -/
def P4724810705456444931.Spec : Prop :=
  ∀ n, (P4724810705456444931.a n : ℤ) = A097380 (n + 1)

end A097380

/-!
# A097381: Numbers m such that 1+SquareFreeKernel(m)*CubeFreeKernel(m) is prime.

The programs for A097381, there is no canonical definition to state claims against.
-/

/-! ## A097381.P18075968503369857697

`record[A275120(A108592(round((n+3)²/12)))]`
-/

namespace A097381.P18075968503369857697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275120 (A108592 (SequenceMachineLib.roundAway (((n + 3) ^ 2 : ℚ) / 12)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097381.P18075968503369857697

/-!
# A097382: a(h) = d(h,j) = lcm( f(h,j,1) ... f(h,j,h) ), when j=2.

The programs for A097382, there is no canonical definition to state claims against.
-/

/-! ## A097382.P9318667228722298633

`A007318(A353758(4*a(n-1)))` with `a(0)=1`
-/

namespace A097382.P9318667228722298633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007318 (A353758 (4 * a (n - 1)).toNat).toNat

end

end A097382.P9318667228722298633

/-!
# A097383: Minimum total number of comparisons to find each of the values 1 through n using a binary search with 3-way comparisons (less than, equal and greater than).

The programs for A097383, the canonical program `A097383.P6140936650001167789` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097383 has offset 1).

The definition of A097383 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097383.P6140936650001167789

`A123753(n+1)-floor(3*(n+2)/2)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A097383

/-- `A123753(n+1)-floor(3*(n+2)/2)` -/
def P6140936650001167789.Spec : Prop :=
  ∀ n, P6140936650001167789.a n = A097383 (n + 1)

theorem P6140936650001167789.correct : P6140936650001167789.Spec := by
  intro n
  simp only [A097383, Nat.add_sub_cancel]

end A097383

/-! ## A097383.P14861838760272863202

`∑[floor(log2(n+1))+n%2]`
-/

namespace A097383.P14861838760272863202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (n + 1) + n % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097383.P14861838760272863202

namespace A097383

/-- `∑[floor(log2(n+1))+n%2]` -/
def P14861838760272863202.Spec : Prop :=
  ∀ n, (P14861838760272863202.a n : ℤ) = A097383 (n + 1)

end A097383

/-! ## A097383.P17757979989320868912

`∑[floor(and(1, n)+log2(n+1))]`
-/

namespace A097383.P17757979989320868912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.land 1 n : ℝ) + Real.logb 2 (n + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097383.P17757979989320868912

namespace A097383

/-- `∑[floor(and(1, n)+log2(n+1))]` -/
def P17757979989320868912.Spec : Prop :=
  ∀ n, P17757979989320868912.a n = A097383 (n + 1)

end A097383

/-! ## A097383.P365734145921876909

`∑[floor(log2(n+1))]+ceil(n/2)`
-/

namespace A097383.P365734145921876909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌈(n : ℚ) / 2⌉

end

end A097383.P365734145921876909

namespace A097383

/-- `∑[floor(log2(n+1))]+ceil(n/2)` -/
def P365734145921876909.Spec : Prop :=
  ∀ n, P365734145921876909.a n = A097383 (n + 1)

end A097383

/-! ## A097383.P290489059035741962

`∑[floor(log2((n+1)*gcd(2, n+1)))]`
-/

namespace A097383.P290489059035741962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 ((n + 1) * Nat.gcd 2 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097383.P290489059035741962

namespace A097383

/-- `∑[floor(log2((n+1)*gcd(2, n+1)))]` -/
def P290489059035741962.Spec : Prop :=
  ∀ n, (P290489059035741962.a n : ℤ) = A097383 (n + 1)

end A097383

/-! ## A097383.P16566406233492778849

`∑[ceil(log2(((n+1)*∑[n])%(n+2)+1))]`
-/

namespace A097383.P16566406233492778849
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (((n + 1) * (∑ j ∈ Finset.range (n + 1), f2 j) % (n + 2) + 1 : ℕ) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097383.P16566406233492778849

namespace A097383

/-- `∑[ceil(log2(((n+1)*∑[n])%(n+2)+1))]` -/
def P16566406233492778849.Spec : Prop :=
  ∀ n, P16566406233492778849.a n = A097383 (n + 1)

end A097383

/-! ## A097383.P1054839574459939732

`∑[ceil(log2(gcd(2*(n+1), (n+1)²)+1))-1]`
-/

namespace A097383.P1054839574459939732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (Nat.gcd (2 * (n + 1)) ((n + 1) ^ 2) + 1 : ℝ)⌉ - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097383.P1054839574459939732

namespace A097383

/-- `∑[ceil(log2(gcd(2*(n+1), (n+1)²)+1))-1]` -/
def P1054839574459939732.Spec : Prop :=
  ∀ n, P1054839574459939732.a n = A097383 (n + 1)

end A097383

/-! ## A097383.P8795827541930437046

`∑[∑[A081729(n+1)]]`
-/

namespace A097383.P8795827541930437046
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081729 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097383.P8795827541930437046

namespace A097383

/-- `∑[∑[A081729(n+1)]]` -/
def P8795827541930437046.Spec : Prop :=
  ∀ n, P8795827541930437046.a n = A097383 (n + 1)

end A097383

/-! ## A097383.P14929882540242859283

`∑[floor(log2(A022998(n+1)))]`
-/

namespace A097383.P14929882540242859283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A022998 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097383.P14929882540242859283

namespace A097383

/-- `∑[floor(log2(A022998(n+1)))]` -/
def P14929882540242859283.Spec : Prop :=
  ∀ n, (P14929882540242859283.a n : ℤ) = A097383 (n + 1)

end A097383

/-! ## A097383.P7480247115949092449

`∑[floor(log2(A066070(n+1)))]`
-/

namespace A097383.P7480247115949092449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A066070 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097383.P7480247115949092449

namespace A097383

/-- `∑[floor(log2(A066070(n+1)))]` -/
def P7480247115949092449.Spec : Prop :=
  ∀ n, (P7480247115949092449.a n : ℤ) = A097383 (n + 1)

end A097383

/-! ## A097383.P13765019908122521085

`∑[A000035(n)+floor(log2(n+1))]`
-/

namespace A097383.P13765019908122521085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + (Nat.log 2 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097383.P13765019908122521085

namespace A097383

/-- `∑[A000035(n)+floor(log2(n+1))]` -/
def P13765019908122521085.Spec : Prop :=
  ∀ n, P13765019908122521085.a n = A097383 (n + 1)

end A097383

/-! ## A097383.P1941601066038473831

`∑[A000523(n+1)+A000035(n)]`
-/

namespace A097383.P1941601066038473831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (n + 1) + A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097383.P1941601066038473831

namespace A097383

/-- `∑[A000523(n+1)+A000035(n)]` -/
def P1941601066038473831.Spec : Prop :=
  ∀ n, P1941601066038473831.a n = A097383 (n + 1)

end A097383

/-! ## A097383.P7688657241910661373

`∑[A033265(n+1)+A033264(n+1)]`
-/

namespace A097383.P7688657241910661373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033265 (n + 1) + A033264 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097383.P7688657241910661373

namespace A097383

/-- `∑[A033265(n+1)+A033264(n+1)]` -/
def P7688657241910661373.Spec : Prop :=
  ∀ n, P7688657241910661373.a n = A097383 (n + 1)

end A097383

/-! ## A097383.P84766266406673026

`∑[A000523(n+1)+n-A052928(n)]`
-/

namespace A097383.P84766266406673026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (n + 1) + ((n : ℤ) - A052928 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097383.P84766266406673026

namespace A097383

/-- `∑[A000523(n+1)+n-A052928(n)]` -/
def P84766266406673026.Spec : Prop :=
  ∀ n, P84766266406673026.a n = A097383 (n + 1)

end A097383

/-! ## A097383.P454441141836131392

`∑[A007456(n+2)-1]`
-/

namespace A097383.P454441141836131392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007456 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097383.P454441141836131392

namespace A097383

/-- `∑[A007456(n+2)-1]` -/
def P454441141836131392.Spec : Prop :=
  ∀ n, P454441141836131392.a n = A097383 (n + 1)

end A097383

/-! ## A097383.P3003491130080597984

`∑[A070939(n+1)-A000035(n+1)]`
-/

namespace A097383.P3003491130080597984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (n + 1) - A000035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097383.P3003491130080597984

namespace A097383

/-- `∑[A070939(n+1)-A000035(n+1)]` -/
def P3003491130080597984.Spec : Prop :=
  ∀ n, P3003491130080597984.a n = A097383 (n + 1)

end A097383

/-!
# A097384: Total number of comparisons to find each of the values 1 through n using a binary search with 3-way comparisons (less than, equal and greater than), always choosing the mid-most value to compare to.

The programs for A097384, there is no canonical definition to state claims against.
-/

/-! ## A097384.P9191903415150677835

`∑[a(floor(n*tan(79)))+1]` with `a(0)=0, a(1)=2`
-/

namespace A097384.P9191903415150677835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 ⌊(n : ℝ) * Real.tan (79 : ℝ)⌋.toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097384.P9191903415150677835

/-! ## A097384.P13126283670573504516

`∑[a(floor((n-1)/2))+1]` with `a(0)=0, a(1)=2`
-/

namespace A097384.P13126283670573504516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097384.P13126283670573504516

/-! ## A097384.P7697493626253257441

`∑[abs(a(ceil(n/2)-1)+1)]` with `a(0)=0, a(1)=2`
-/

namespace A097384.P7697493626253257441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (⌈(n : ℚ) / 2⌉ - 1).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097384.P7697493626253257441

/-! ## A097384.P8638562335703555685

`∑[a(∑[n%2]-1)+3]/3` with `a(0)=0, a(1)=6`
-/

namespace A097384.P8638562335703555685
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 6] fun n f1 =>
  f1 (∑ j ∈ Finset.range (n + 1), f2 j - 1) + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3

end

end A097384.P8638562335703555685

/-! ## A097384.P1784562572617176481

`∑[∏{digits}[a(ceil(n/2)-1)+1, #]]` with `a(0)=0, a(1)=2`
-/

namespace A097384.P1784562572617176481
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  f2 (⌈(n : ℚ) / 2⌉ - 1).toNat + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).prod

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097384.P1784562572617176481

/-! ## A097384.P17386878520798672583

`∑[∑{e}[3*a(ceil(n/2)-1), #]]` with `a(0)=1, a(1)=4`
-/

namespace A097384.P17386878520798672583
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f2 =>
  3 * f2 (⌈(n : ℚ) / 2⌉ - 1).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097384.P17386878520798672583

/-! ## A097384.P13567434680389332553

`∑[floor(log2(A065268(n+2)))]`
-/

namespace A097384.P13567434680389332553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A065268 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097384.P13567434680389332553

/-! ## A097384.P3492104302530908513

`∑[floor(log2(A065292(n+2)))]`
-/

namespace A097384.P3492104302530908513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A065292 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097384.P3492104302530908513

/-! ## A097384.P2505535932245977449

`A279521(n+1)+∑[floor(log2(n+1))]`
-/

namespace A097384.P2505535932245977449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279521 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A097384.P2505535932245977449

/-! ## A097384.P16473558348629670636

`∑[ceil(log2(n+2))]-A060973(n+2)`
-/

namespace A097384.P16473558348629670636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (n + 2 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A060973 (n + 2)

end

end A097384.P16473558348629670636

/-!
# A097385: a(n) = (largest digit of n)^(smallest digit of n) + n.

The programs for A097385, the canonical program `A097385.P16831053754396584263` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097385 has offset 0).

The definition of A097385 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054054, A054055, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A097385.P16831053754396584263

`A054055(n)^A054054(n)+n`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A097385

/-- `A054055(n)^A054054(n)+n` -/
def P16831053754396584263.Spec : Prop :=
  ∀ n, P16831053754396584263.a n = (A097385 n : ℚ)

end A097385

/-! ## A097385.P15763473448474654706

`A051801(n)^A029967(n+1)+n`
-/

namespace A097385.P15763473448474654706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051801 n : ℚ) ^ (A029967 (n + 1) : ℤ) + (n : ℚ)

end

end A097385.P15763473448474654706

namespace A097385

/-- `A051801(n)^A029967(n+1)+n` -/
def P15763473448474654706.Spec : Prop :=
  ∀ n, P15763473448474654706.a n = (A097385 n : ℚ)

end A097385

/-!
# A097386: Numbers n such that (largest digit of n)^(smallest digit of n) + n is prime.

The programs for A097386, there is no canonical definition to state claims against.
-/

/-! ## A097386.P14691133480076832646

`lt[A178241(A293482(n+1)), A006530(n+1)]`
-/

namespace A097386.P14691133480076832646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178241 (A293482 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A097386.P14691133480076832646

/-!
# A097388: 2n-th derivative of the Gaussian exp(-x^2) evaluated at x=0.

The programs for A097388, the canonical program `A097388.P12380780069865256194` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097388 has offset 0).

The definition of A097388 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097388.P12380780069865256194

`(-1)^n*A001813(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A097388

/-- `(-1)^n*A001813(n)` -/
def P12380780069865256194.Spec : Prop :=
  ∀ n, P12380780069865256194.a n = A097388 n

theorem P12380780069865256194.correct : P12380780069865256194.Spec := by
  intro n
  simp only [A097388]

end A097388

/-! ## A097388.P6667973082840256001

`(-1)^n*(2*n)!/n!`
-/

namespace A097388.P6667973082840256001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n * (Nat.factorial (2 * n) : ℤ) : ℚ) / (Nat.factorial n : ℚ)

end

end A097388.P6667973082840256001

namespace A097388

/-- `(-1)^n*(2*n)!/n!` -/
def P6667973082840256001.Spec : Prop :=
  ∀ n, P6667973082840256001.a n = (A097388 n : ℚ)

end A097388

/-! ## A097388.P13741371677289215875

`∏[2-4*n]/2`
-/

namespace A097388.P13741371677289215875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (4 * n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A097388.P13741371677289215875

namespace A097388

/-- `∏[2-4*n]/2` -/
def P13741371677289215875.Spec : Prop :=
  ∀ n, P13741371677289215875.a n = (A097388 n : ℚ)

end A097388

/-! ## A097388.P4479434247022855529

`∏[2-floor(4/sinh(acot(n)))]`
-/

namespace A097388.P4479434247022855529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ⌊4 / Real.sinh (SequenceMachineLib.acot (n : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A097388.P4479434247022855529

namespace A097388

/-- `∏[2-floor(4/sinh(acot(n)))]` -/
def P4479434247022855529.Spec : Prop :=
  ∀ n, P4479434247022855529.a n = A097388 n

end A097388

/-! ## A097388.P5315580668024772085

`∏[ceil(cosh(sin(n)))-4*n]`
-/

namespace A097388.P5315580668024772085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.sin (n : ℝ))⌉ - (4 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A097388.P5315580668024772085

namespace A097388

/-- `∏[ceil(cosh(sin(n)))-4*n]` -/
def P5315580668024772085.Spec : Prop :=
  ∀ n, P5315580668024772085.a n = A097388 n

end A097388

/-! ## A097388.P10386810136555899574

`∏[a(n-1)-4]` with `a(0)=1, a(1)=-2`
-/

namespace A097388.P10386810136555899574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -2] fun n f1 =>
  f1 (n - 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A097388.P10386810136555899574

namespace A097388

/-- `∏[a(n-1)-4]` -/
def P10386810136555899574.Spec : Prop :=
  ∀ n, P10386810136555899574.a n = A097388 n

end A097388

/-! ## A097388.P1752039072792840874

`∏[2-floor(3/acot(n))-n]`
-/

namespace A097388.P1752039072792840874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ⌊3 / SequenceMachineLib.acot (n : ℝ)⌋ - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A097388.P1752039072792840874

namespace A097388

/-- `∏[2-floor(3/acot(n))-n]` -/
def P1752039072792840874.Spec : Prop :=
  ∀ n, P1752039072792840874.a n = A097388 n

end A097388

/-! ## A097388.P18402550492890608697

`(2-4*n)*a(n-1)` with `a(0)=1`
-/

namespace A097388.P18402550492890608697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 - (4 * n : ℤ)) * a (n - 1)

end

end A097388.P18402550492890608697

namespace A097388

/-- `(2-4*n)*a(n-1)` -/
def P18402550492890608697.Spec : Prop :=
  ∀ n, P18402550492890608697.a n = A097388 n

end A097388

/-! ## A097388.P17001391509285286534

`∏[ceil(atan(n+1))-3*n-n]`
-/

namespace A097388.P17001391509285286534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (n + 1 : ℝ)⌉ - (3 * n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A097388.P17001391509285286534

namespace A097388

/-- `∏[ceil(atan(n+1))-3*n-n]` -/
def P17001391509285286534.Spec : Prop :=
  ∀ n, P17001391509285286534.a n = A097388 n

end A097388

/-! ## A097388.P8267999251660581830

`A067994(2*n)`
-/

namespace A097388.P8267999251660581830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067994 (2 * n)

end

end A097388.P8267999251660581830

namespace A097388

/-- `A067994(2*n)` -/
def P8267999251660581830.Spec : Prop :=
  ∀ n, P8267999251660581830.a n = A097388 n

end A097388

/-!
# A097391: The number of hierarchies of n labeled elements with at least one subhierarchy composed of exactly 2 levels and no subhierarchy with more than 2 levels.

The programs for A097391, there is no canonical definition to state claims against.
-/

/-! ## A097391.P15394865354362199034

`record[Δ[A293551(A165157(n))]]`
-/

namespace A097391.P15394865354362199034
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293551 (A165157 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097391.P15394865354362199034

/-! ## A097391.P5729805859080012670

`Δ[A091360(n)-A000070(n)]`
-/

namespace A097391.P5729805859080012670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091360 n - A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A097391.P5729805859080012670

/-! ## A097391.P11545682329698713035

`record[A096653(n)-A255903(n)]`
-/

namespace A097391.P11545682329698713035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096653 n - A255903 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097391.P11545682329698713035

/-! ## A097391.P12193585771546391287

`record[A255961(n)-A144074(n)]`
-/

namespace A097391.P12193585771546391287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255961 n - A144074 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097391.P12193585771546391287

/-! ## A097391.P10559433295440201462

`record[A255961(n)-A261718(n)]`
-/

namespace A097391.P10559433295440201462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255961 n - A261718 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097391.P10559433295440201462

/-!
# A097392: The number of hierarchies of n labeled elements with at least one subhierarchy composed of exactly 3 levels and no subhierarchy with more than 3 levels.

The programs for A097392, there is no canonical definition to state claims against.
-/

/-! ## A097392.P2965157721961520250

`round(sqrt(A001574(n+1)+2))-(n+1)`
-/

namespace A097392.P2965157721961520250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A001574 (n + 1) + 2 : ℝ)) - (n + 1 : ℤ)

end

end A097392.P2965157721961520250

/-! ## A097392.P16906073192999940927

`A046155(Δ[A206947(n)])`
-/

namespace A097392.P16906073192999940927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206947 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 (f1 (n + 1) - f1 n).toNat

end

end A097392.P16906073192999940927

/-! ## A097392.P17269672122739172010

`∑[∑[A259361(A276901(n))]]`
-/

namespace A097392.P17269672122739172010
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A276901 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097392.P17269672122739172010

/-! ## A097392.P17402922348739666835

`∑[A172471(Δ[A128734(n)])]`
-/

namespace A097392.P17402922348739666835
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128734 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097392.P17402922348739666835

/-!
# A097393: Emirpimes: numbers n such that n and its reversal are distinct semiprimes.

The programs for A097393, there is no canonical definition to state claims against.
-/

/-! ## A097393.P17580695869390581437

`filter[A050699(n+1), A064911(#)]`
-/

namespace A097393.P17580695869390581437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A097393.P17580695869390581437

/-! ## A097393.P1223226974568261979

`filter[A050699(n+1), A101040(#)]`
-/

namespace A097393.P1223226974568261979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A097393.P1223226974568261979

/-! ## A097393.P15530016498086312721

`filter[A050699(n+1), A353799(#)]`
-/

namespace A097393.P15530016498086312721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353799 (f1 j).toNat = 1) n)

end

end A097393.P15530016498086312721

/-! ## A097393.P15917875712331231063

`∩[A050699(n+1), A085751(n+1)]`
-/

namespace A097393.P15917875712331231063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050699 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097393.P15917875712331231063

/-! ## A097393.P18262983125744103715

`filter[A109019(n+2), A064911(#)]`
-/

namespace A097393.P18262983125744103715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109019 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A097393.P18262983125744103715

/-! ## A097393.P6046261966341981561

`∩[A085751(n+1), A109019(n+1)]`
-/

namespace A097393.P6046261966341981561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097393.P6046261966341981561

/-! ## A097393.P7492687987503830986

`∩[A001358(n+1), A050699(n+1)]`
-/

namespace A097393.P7492687987503830986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050699 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097393.P7492687987503830986

/-! ## A097393.P9567610046951939137

`∩[A001358(n+1), A109019(n+1)]`
-/

namespace A097393.P9567610046951939137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097393.P9567610046951939137

/-! ## A097393.P354441636678048646

`∩[A050699(n+1), A176540(n+1)]`
-/

namespace A097393.P354441636678048646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050699 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097393.P354441636678048646

/-! ## A097393.P16594721592041879401

`∩[A109019(n+1), A176540(n+1)]`
-/

namespace A097393.P16594721592041879401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097393.P16594721592041879401

/-! ## A097393.P9830834832970096156

`∩[A050699(n+1), A323644(n+1)]`
-/

namespace A097393.P9830834832970096156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050699 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323644 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097393.P9830834832970096156

/-! ## A097393.P6503263678002114348

`∩[A050699(n+1), A346041(n+1)]`
-/

namespace A097393.P6503263678002114348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050699 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346041 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097393.P6503263678002114348

/-! ## A097393.P13048118988764814878

`∩[A109019(n+1), A323644(n+1)]`
-/

namespace A097393.P13048118988764814878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323644 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097393.P13048118988764814878

/-! ## A097393.P9573804105093440125

`∩[A109019(n+1), A346041(n+1)]`
-/

namespace A097393.P9573804105093440125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346041 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097393.P9573804105093440125

/-! ## A097393.P16915950971060081030

`∩[A050699(n+1), A088707(n+1)-1]`
-/

namespace A097393.P16915950971060081030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050699 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097393.P16915950971060081030

/-! ## A097393.P10192871733725027323

`∩[A007964(n+1), A050699(n+1)]`
-/

namespace A097393.P10192871733725027323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050699 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097393.P10192871733725027323

/-! ## A097393.P9317713140270550037

`∩[A037143(n+1), A050699(n+1)]`
-/

namespace A097393.P9317713140270550037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050699 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097393.P9317713140270550037

/-! ## A097393.P5245214454034587578

`∩[A050699(n+1), A354144(n+1)]`
-/

namespace A097393.P5245214454034587578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050699 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097393.P5245214454034587578

/-! ## A097393.P2514170359338380483

`∩[A054518(n+1), A085751(n+1)]`
-/

namespace A097393.P2514170359338380483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097393.P2514170359338380483

/-! ## A097393.P21817655512493159

`∩[A029742(n+1), A085751(n+1)]`
-/

namespace A097393.P21817655512493159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097393.P21817655512493159

/-!
# A097397: Coefficients in asymptotic expansion of normal probability function.

The programs for A097397, there is no canonical definition to state claims against.
-/

/-! ## A097397.P9022865640206004112

`A330827(C(n!, 2))`
-/

namespace A097397.P9022865640206004112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330827 (Nat.choose (Nat.factorial n) 2)

end

end A097397.P9022865640206004112

/-! ## A097397.P10410656168576036949

`A300946(∑[∑[n]-1]+1)`
-/

namespace A097397.P10410656168576036949
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300946 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A097397.P10410656168576036949

