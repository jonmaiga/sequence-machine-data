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
import Seq.B000.C013
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
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C044
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
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
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
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
# A089700: Smallest n-digit member of A089699.

The programs for A089700, there is no canonical definition to state claims against.
-/

/-! ## A089700.P10980848105986251305

`A328847(A186446(n))+A002275(n+1)`
-/

namespace A089700.P10980848105986251305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328847 (A186446 n).toNat + A002275 (n + 1)

end

end A089700.P10980848105986251305

/-!
# A089702: a(1) = 2 then primes in nondecreasing order such that every concatenation is prime.

The programs for A089702, there is no canonical definition to state claims against.
-/

/-! ## A089702.P18004367144573087809

`A278699(n+1)%A197638(A006248(n+1))`
-/

namespace A089702.P18004367144573087809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278699 (n + 1)) (A197638 (A006248 (n + 1)).toNat)

end

end A089702.P18004367144573087809

/-!
# A089703: Primes arising in A089702.

The programs for A089703, there is no canonical definition to state claims against.
-/

/-! ## A089703.P17437566460162630949

`A158191(∑[A293588(n)])`
-/

namespace A089703.P17437566460162630949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158191 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A089703.P17437566460162630949

/-! ## A089703.P6012469867514299568

`A158191(A293588(n)+n)`
-/

namespace A089703.P6012469867514299568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158191 (A293588 n + (n : ℤ)).toNat

end

end A089703.P6012469867514299568

/-!
# A089704: Primes in which the unit place digit is 1 and the k-th most significant digit is prime (2,3,5,7) if k is prime else is composite (4,6,8,9,0).

The programs for A089704, there is no canonical definition to state claims against.
-/

/-! ## A089704.P6136182723714723434

`p?[(xor(1, n)+1)*A342992(n+1)]`
-/

namespace A089704.P6136182723714723434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 n + 1 : ℤ) * A342992 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089704.P6136182723714723434

/-! ## A089704.P5174081092458019248

`∩[A156976(n+1), A187126(n+1)]`
-/

namespace A089704.P5174081092458019248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156976 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089704.P5174081092458019248

/-!
# A089707: Smallest number beginning with 1 and having exactly n divisors.

The programs for A089707, there is no canonical definition to state claims against.
-/

/-! ## A089707.P16416289385663954368

`A086549(A037019(n+1))`
-/

namespace A089707.P16416289385663954368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086549 (A037019 (n + 1)).toNat

end

end A089707.P16416289385663954368

/-!
# A089708: a(1) = 1, a(2) = 2, a(n) = a(n-1) + d where d is the sum of the absolute differences between all pairs of previous terms.

The programs for A089708, the canonical program `A089708.P2511846830078133693` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089708 has offset 1).

The definition of A089708 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A089708.P2511846830078133693

`(n+2)*(a(n-1)-a(n-2))+a(n-3)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=7`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A089708

/-- `(n+2)*(a(n-1)-a(n-2))+a(n-3)` -/
def P2511846830078133693.Spec : Prop :=
  ∀ n, P2511846830078133693.a n = A089708 (n + 1)

theorem P2511846830078133693.correct : P2511846830078133693.Spec := by
  intro n
  simp only [A089708, Nat.add_sub_cancel]

end A089708

/-! ## A089708.P9672965981493589304

`∑[(n+1)*a(n-1)-a(n-2)]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=4`
-/

namespace A089708.P9672965981493589304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 4] fun n f1 =>
  (n + 1 : ℤ) * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089708.P9672965981493589304

namespace A089708

/-- `∑[(n+1)*a(n-1)-a(n-2)]` -/
def P9672965981493589304.Spec : Prop :=
  ∀ n, P9672965981493589304.a n = A089708 (n + 1)

end A089708

/-! ## A089708.P5297287552406729712

`∑[A007754(abs(∑[n+2]-3))]`
-/

namespace A089708.P5297287552406729712
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007754 |((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 3|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089708.P5297287552406729712

namespace A089708

/-- `∑[A007754(abs(∑[n+2]-3))]` -/
def P5297287552406729712.Spec : Prop :=
  ∀ n, P5297287552406729712.a n = A089708 (n + 1)

end A089708

/-! ## A089708.P12509280242935777581

`A159927(A152947(n+1))+A073424(∑[n])`
-/

namespace A089708.P12509280242935777581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159927 (A152947 (n + 1)).toNat + A073424 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A089708.P12509280242935777581

namespace A089708

/-- `A159927(A152947(n+1))+A073424(∑[n])` -/
def P12509280242935777581.Spec : Prop :=
  ∀ n, P12509280242935777581.a n = A089708 (n + 1)

end A089708

/-! ## A089708.P9855008817936408425

`A159927(A152947(n+1))+char[A009999(n)]`
-/

namespace A089708.P9855008817936408425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009999 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159927 (A152947 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A089708.P9855008817936408425

namespace A089708

/-- `A159927(A152947(n+1))+char[A009999(n)]` -/
def P9855008817936408425.Spec : Prop :=
  ∀ n, P9855008817936408425.a n = A089708 (n + 1)

end A089708

/-! ## A089708.P4647655393429028795

`A159927(C(n, 2)+1)+A001221(A102376(n))`
-/

namespace A089708.P4647655393429028795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159927 (Nat.choose n 2 + 1) + A001221 (A102376 n).toNat

end

end A089708.P4647655393429028795

namespace A089708

/-- `A159927(C(n, 2)+1)+A001221(A102376(n))` -/
def P4647655393429028795.Spec : Prop :=
  ∀ n, P4647655393429028795.a n = A089708 (n + 1)

end A089708

/-! ## A089708.P7032103692306475327

`A159927(A152947(n+1))+char[A009195(n+1)]`
-/

namespace A089708.P7032103692306475327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009195 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159927 (A152947 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A089708.P7032103692306475327

namespace A089708

/-- `A159927(A152947(n+1))+char[A009195(n+1)]` -/
def P7032103692306475327.Spec : Prop :=
  ∀ n, P7032103692306475327.a n = A089708 (n + 1)

end A089708

/-! ## A089708.P13594383739188355805

`A159927(A152947(n+1))+char[A032742(n+1)]`
-/

namespace A089708.P13594383739188355805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159927 (A152947 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A089708.P13594383739188355805

namespace A089708

/-- `A159927(A152947(n+1))+char[A032742(n+1)]` -/
def P13594383739188355805.Spec : Prop :=
  ∀ n, P13594383739188355805.a n = A089708 (n + 1)

end A089708

/-!
# A089709: a(1) = 1, a(2) = 2; for n>2, a(n) = sum_{r=1..n} {sum of all previous terms taken r at a time}.

The programs for A089709, the canonical program `A089709.P14511781359215331175` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089709 has offset 1).

The definition of A089709 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A089709.P14511781359215331175

`(2^(n-1)+2)*a(n-1)` with `a(0)=1, a(1)=2, a(2)=6`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A089709

/-- `(2^(n-1)+2)*a(n-1)` -/
def P14511781359215331175.Spec : Prop :=
  ∀ n, P14511781359215331175.a n = (A089709 (n + 1) : ℚ)

end A089709

/-! ## A089709.P14004605671365115884

`ceil(A139486(n)/2)`
-/

namespace A089709.P14004605671365115884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A139486 n : ℚ) / 2⌉

end

end A089709.P14004605671365115884

namespace A089709

/-- `ceil(A139486(n)/2)` -/
def P14004605671365115884.Spec : Prop :=
  ∀ n, P14004605671365115884.a n = A089709 (n + 1)

end A089709

/-! ## A089709.P4023912971670688226

`round(∏[A056469(n)]/4)`
-/

namespace A089709.P4023912971670688226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056469 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 4)

end

end A089709.P4023912971670688226

namespace A089709

/-- `round(∏[A056469(n)]/4)` -/
def P4023912971670688226.Spec : Prop :=
  ∀ n, P4023912971670688226.a n = A089709 (n + 1)

end A089709

/-! ## A089709.P9027368007568028073

`∏[A256994(n+1)-1]`
-/

namespace A089709.P9027368007568028073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256994 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A089709.P9027368007568028073

namespace A089709

/-- `∏[A256994(n+1)-1]` -/
def P9027368007568028073.Spec : Prop :=
  ∀ n, P9027368007568028073.a n = A089709 (n + 1)

end A089709

/-! ## A089709.P15394798402353352391

`a(n-1)*A089985(n)` with `a(0)=1`
-/

namespace A089709.P15394798402353352391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A089985 n

end

end A089709.P15394798402353352391

namespace A089709

/-- `a(n-1)*A089985(n)` -/
def P15394798402353352391.Spec : Prop :=
  ∀ n, P15394798402353352391.a n = A089709 (n + 1)

end A089709

/-!
# A089713: a(n) is the largest prime that is the concatenation of n and m for some m < n, or 0 if no such prime exists.

The programs for A089713, there is no canonical definition to state claims against.
-/

/-! ## A089713.P15214788725674302484

`A000040(A138390(2*(n+2)))%A002426(3*n+1)`
-/

namespace A089713.P15214788725674302484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A138390 (2 * (n + 2))).toNat) (A002426 (3 * n + 1))

end

end A089713.P15214788725674302484

/-!
# A089715: a(n) = {A089713(n)+A070219(n)}/2.

The programs for A089715, there is no canonical definition to state claims against.
-/

/-! ## A089715.P13580623019758933908

`(A089713(n+3)+A070219(n+3))/2`
-/

namespace A089715.P13580623019758933908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089713 (n + 3) + A070219 (n + 3) : ℚ) / 2

end

end A089715.P13580623019758933908

/-!
# A089716: Primes that are both congruent to 1 mod 10 and congruent to 1 or 2 mod 9.

The programs for A089716, the canonical program `A089716.P772624454897083477` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089716 has offset 1).

The definition of A089716 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6559 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089716.P772624454897083477

`p?[a(n-2)+45]` with `a(0)=1, a(1)=11`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A089716

/-- `p?[a(n-2)+45]` -/
def P772624454897083477.Spec : Prop :=
  ∀ n, (P772624454897083477.a n : ℤ) = A089716 (n + 1)

theorem P772624454897083477.correct : P772624454897083477.Spec := by
  intro n
  simp only [A089716, Nat.add_sub_cancel]

end A089716

/-! ## A089716.P12094106058139086622

`p?[(C(n, 3)+1)%3+10*n]`
-/

namespace A089716.P12094106058139086622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 3 + 1) % 3 + 10 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A089716.P12094106058139086622

namespace A089716

/-- `p?[(C(n, 3)+1)%3+10*n]` -/
def P12094106058139086622.Spec : Prop :=
  ∀ n, (P12094106058139086622.a n : ℤ) = A089716 (n + 1)

end A089716

/-! ## A089716.P3540769174237971077

`p?[5*(n-2-dr(n+1)+n)+1]`
-/

namespace A089716.P3540769174237971077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * ((n : ℤ) - 2 - (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℤ) + (n : ℤ)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089716.P3540769174237971077

namespace A089716

/-- `p?[5*(n-2-dr(n+1)+n)+1]` -/
def P3540769174237971077.Spec : Prop :=
  ∀ n, P3540769174237971077.a n = A089716 (n + 1)

end A089716

/-! ## A089716.P2790077005981570174

`p?[(n%9)!+10*n]`
-/

namespace A089716.P2790077005981570174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n % 9) + 10 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A089716.P2790077005981570174

namespace A089716

/-- `p?[(n%9)!+10*n]` -/
def P2790077005981570174.Spec : Prop :=
  ∀ n, (P2790077005981570174.a n : ℤ) = A089716 (n + 1)

end A089716

/-! ## A089716.P12825827979325878242

`p?[(dr(n+1)-1)!+10*n]`
-/

namespace A089716.P12825827979325878242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℤ) - 1).toNat + 10 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A089716.P12825827979325878242

namespace A089716

/-- `p?[(dr(n+1)-1)!+10*n]` -/
def P12825827979325878242.Spec : Prop :=
  ∀ n, (P12825827979325878242.a n : ℤ) = A089716 (n + 1)

end A089716

/-! ## A089716.P11210639929259297996

`∪[A142312(n+1), A142317(n+1)]`
-/

namespace A089716.P11210639929259297996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142317 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A089716.P11210639929259297996

namespace A089716

/-- `∪[A142312(n+1), A142317(n+1)]` -/
def P11210639929259297996.Spec : Prop :=
  ∀ n, (P11210639929259297996.a n : ℤ) = A089716 (n + 1)

end A089716

/-! ## A089716.P13452434443729205051

`p?[A017401(A008854(n+1))-A054967(n+1)]`
-/

namespace A089716.P13452434443729205051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017401 (A008854 (n + 1)).toNat - A054967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089716.P13452434443729205051

namespace A089716

/-- `p?[A017401(A008854(n+1))-A054967(n+1)]` -/
def P13452434443729205051.Spec : Prop :=
  ∀ n, P13452434443729205051.a n = A089716 (n + 1)

end A089716

/-! ## A089716.P354182629682901280

`filter[A272299(n+1), A185705(#)]`
-/

namespace A089716.P354182629682901280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272299 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185705 (f1 j).toNat = 1) n)

end

end A089716.P354182629682901280

namespace A089716

/-- `filter[A272299(n+1), A185705(#)]` -/
def P354182629682901280.Spec : Prop :=
  ∀ n, P354182629682901280.a n = A089716 (n + 1)

end A089716

/-! ## A089716.P14922740496061045408

`filter[A281899(n+1), A185705(#)]`
-/

namespace A089716.P14922740496061045408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185705 (f1 j).toNat = 1) n)

end

end A089716.P14922740496061045408

namespace A089716

/-- `filter[A281899(n+1), A185705(#)]` -/
def P14922740496061045408.Spec : Prop :=
  ∀ n, P14922740496061045408.a n = A089716 (n + 1)

end A089716

/-! ## A089716.P4831097986779002722

`∩[A030430(n+1), A272299(n)]`
-/

namespace A089716.P4831097986779002722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272299 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089716.P4831097986779002722

namespace A089716

/-- `∩[A030430(n+1), A272299(n)]` -/
def P4831097986779002722.Spec : Prop :=
  ∀ n, (P4831097986779002722.a n : ℤ) = A089716 (n + 1)

end A089716

/-! ## A089716.P13606857448122159230

`∩[A030430(n+1), A281899(n)]`
-/

namespace A089716.P13606857448122159230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281899 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089716.P13606857448122159230

namespace A089716

/-- `∩[A030430(n+1), A281899(n)]` -/
def P13606857448122159230.Spec : Prop :=
  ∀ n, (P13606857448122159230.a n : ℤ) = A089716 (n + 1)

end A089716

/-! ## A089716.P6066133544439314471

`∩[A045453(n+1), A272299(n)]`
-/

namespace A089716.P6066133544439314471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272299 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089716.P6066133544439314471

namespace A089716

/-- `∩[A045453(n+1), A272299(n)]` -/
def P6066133544439314471.Spec : Prop :=
  ∀ n, (P6066133544439314471.a n : ℤ) = A089716 (n + 1)

end A089716

/-! ## A089716.P16710053823642484999

`∩[A045453(n+1), A281899(n)]`
-/

namespace A089716.P16710053823642484999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281899 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089716.P16710053823642484999

namespace A089716

/-- `∩[A045453(n+1), A281899(n)]` -/
def P16710053823642484999.Spec : Prop :=
  ∀ n, (P16710053823642484999.a n : ℤ) = A089716 (n + 1)

end A089716

/-! ## A089716.P2925754228267241486

`∩[A090756(n+1), A272299(n)]`
-/

namespace A089716.P2925754228267241486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272299 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089716.P2925754228267241486

namespace A089716

/-- `∩[A090756(n+1), A272299(n)]` -/
def P2925754228267241486.Spec : Prop :=
  ∀ n, (P2925754228267241486.a n : ℤ) = A089716 (n + 1)

end A089716

/-! ## A089716.P12389974275593633643

`∩[A090756(n+1), A281899(n)]`
-/

namespace A089716.P12389974275593633643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281899 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089716.P12389974275593633643

namespace A089716

/-- `∩[A090756(n+1), A281899(n)]` -/
def P12389974275593633643.Spec : Prop :=
  ∀ n, (P12389974275593633643.a n : ℤ) = A089716 (n + 1)

end A089716

/-! ## A089716.P10478337951846562668

`filter[A007310(3*n+1), A185705(#)]`
-/

namespace A089716.P10478337951846562668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185705 (f1 j).toNat = 1) n)

end

end A089716.P10478337951846562668

namespace A089716

/-- `filter[A007310(3*n+1), A185705(#)]` -/
def P10478337951846562668.Spec : Prop :=
  ∀ n, P10478337951846562668.a n = A089716 (n + 1)

end A089716

/-! ## A089716.P17125320391544630557

`filter[A028841(2*n+1), A185705(#)]`
-/

namespace A089716.P17125320391544630557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028841 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185705 (f1 j).toNat = 1) n)

end

end A089716.P17125320391544630557

namespace A089716

/-- `filter[A028841(2*n+1), A185705(#)]` -/
def P17125320391544630557.Spec : Prop :=
  ∀ n, P17125320391544630557.a n = A089716 (n + 1)

end A089716

/-! ## A089716.P8509870624484532404

`filter[A026184(3*n+1), A185705(#)]`
-/

namespace A089716.P8509870624484532404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026184 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185705 (f1 j).toNat = 1) n)

end

end A089716.P8509870624484532404

namespace A089716

/-- `filter[A026184(3*n+1), A185705(#)]` -/
def P8509870624484532404.Spec : Prop :=
  ∀ n, P8509870624484532404.a n = A089716 (n + 1)

end A089716

/-! ## A089716.P6674590685383656187

`filter[A287746(3*n+1), A185705(#)]`
-/

namespace A089716.P6674590685383656187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287746 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185705 (f1 j).toNat = 1) n)

end

end A089716.P6674590685383656187

namespace A089716

/-- `filter[A287746(3*n+1), A185705(#)]` -/
def P6674590685383656187.Spec : Prop :=
  ∀ n, P6674590685383656187.a n = A089716 (n + 1)

end A089716

/-! ## A089716.P12075425209182181840

`filter[A047253(3*n+1), A185705(#)]`
-/

namespace A089716.P12075425209182181840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047253 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185705 (f1 j).toNat = 1) n)

end

end A089716.P12075425209182181840

namespace A089716

/-- `filter[A047253(3*n+1), A185705(#)]` -/
def P12075425209182181840.Spec : Prop :=
  ∀ n, P12075425209182181840.a n = A089716 (n + 1)

end A089716

/-!
# A089717: Triangular numbers with palindromic indices.

The programs for A089717, there is no canonical definition to state claims against.
-/

/-! ## A089717.P15634273503248083975

`A000217(A002113(n+1))`
-/

namespace A089717.P15634273503248083975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A002113 (n + 1)).toNat

end

end A089717.P15634273503248083975

/-! ## A089717.P3127941928981850237

`C(1+A002113(n+1), 2)`
-/

namespace A089717.P3127941928981850237
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (1 + A002113 (n + 1)).toNat 2

end

end A089717.P3127941928981850237

/-! ## A089717.P4189494969116126607

`C(A014187(n)^(1/3)+1, 2)`
-/

namespace A089717.P4189494969116126607
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((A014187 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ) + 1)).toNat 2

end

end A089717.P4189494969116126607

/-! ## A089717.P5738593571636614885

`C(eq[n, A004086(n)]+1, 2)`
-/

namespace A089717.P5738593571636614885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) 2

end

end A089717.P5738593571636614885

/-! ## A089717.P6366975291460575859

`A000217(A014187(n)^(1/3))`
-/

namespace A089717.P6366975291460575859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.roundAway ((A014187 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ))).toNat

end

end A089717.P6366975291460575859

/-! ## A089717.P1985566729161113638

`C(eq[0, A261424(n)]+1, 2)`
-/

namespace A089717.P1985566729161113638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261424 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) 2

end

end A089717.P1985566729161113638

/-! ## A089717.P10896199325981434923

`record[C(A262087(n)+1, 2)]`
-/

namespace A089717.P10896199325981434923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A262087 n + 1).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089717.P10896199325981434923

/-! ## A089717.P14696408397746215657

`record[C(A265525(n)+1, 2)]`
-/

namespace A089717.P14696408397746215657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A265525 n + 1).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089717.P14696408397746215657

/-! ## A089717.P9884227420800120478

`record[C(A331472(n)+1, 2)]`
-/

namespace A089717.P9884227420800120478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A331472 n + 1).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089717.P9884227420800120478

/-! ## A089717.P10747063712246952107

`record[gcd(C(n+1, 2), A064834(n))]`
-/

namespace A089717.P10747063712246952107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose (n + 1) 2 : ℤ) (A064834 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089717.P10747063712246952107

/-! ## A089717.P7693659062448085982

`C(record[gcd(n, A261423(n))]+1, 2)`
-/

namespace A089717.P7693659062448085982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A261423 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1) 2

end

end A089717.P7693659062448085982

/-! ## A089717.P5464345215086331848

`A000217(record[A265525(n)])`
-/

namespace A089717.P5464345215086331848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A089717.P5464345215086331848

/-! ## A089717.P12662886789394136852

`A000217(record[n*A136522(n)])`
-/

namespace A089717.P12662886789394136852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A136522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A089717.P12662886789394136852

/-! ## A089717.P12661511038986512782

`A014206(A335779(n+1))/2-1`
-/

namespace A089717.P12661511038986512782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014206 (A335779 (n + 1)).toNat : ℚ) / 2 - 1

end

end A089717.P12661511038986512782

/-!
# A089718: a(0) = 1, a(n) = number obtained by multiplying each digit of a(n-1) by n. May be called digitfactorial of n.

The programs for A089718, there is no canonical definition to state claims against.
-/

/-! ## A089718.P13411039120954191405

`n*A111705(a(n-1))` with `a(0)=1`
-/

namespace A089718.P13411039120954191405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * A111705 (a (n - 1)).toNat

end

end A089718.P13411039120954191405

/-! ## A089718.P8938343116873274873

`n*(A305734(a(n-1))+1)` with `a(0)=1`
-/

namespace A089718.P8938343116873274873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * (A305734 (a (n - 1)).toNat + 1)

end

end A089718.P8938343116873274873

/-!
# A089719: Pseudofactor sets of primes ending in 1: 9 greater than 3.

The programs for A089719, there is no canonical definition to state claims against.
-/

/-! ## A089719.P14071837943395406628

`p?[round((dr(n)+3)/7)+10*(n+1)]`
-/

namespace A089719.P14071837943395406628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.digitalRoot (n : ℤ) + 3 : ℚ) / 7) + (10 * (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089719.P14071837943395406628

/-! ## A089719.P16210159054410581518

`p?[A004496(10*n)+3]`
-/

namespace A089719.P16210159054410581518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004496 (10 * n) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089719.P16210159054410581518

/-! ## A089719.P3249588696413450157

`p?[A004492(10*n+18)]`
-/

namespace A089719.P3249588696413450157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004492 (10 * n + 18)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089719.P3249588696413450157

/-! ## A089719.P8287291012019604201

`p?[A004495(5*(n+1))+4]`
-/

namespace A089719.P8287291012019604201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004495 (5 * (n + 1)) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089719.P8287291012019604201

/-! ## A089719.P11445133296396779852

`p?[A004497(5*n+1)+4]`
-/

namespace A089719.P11445133296396779852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004497 (5 * n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089719.P11445133296396779852

/-!
# A089720: Primes == 1 or 11 (mod 70).

The programs for A089720, the canonical program `A089720.P5133897468678085491` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089720 has offset 1).

The definition of A089720 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6514 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089720.P17935396164336484893

`∪[A142076(n+1), A142083(n+1)]`
-/

namespace A089720.P17935396164336484893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142083 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A089720.P17935396164336484893

namespace A089720

/-- `∪[A142076(n+1), A142083(n+1)]` -/
def P17935396164336484893.Spec : Prop :=
  ∀ n, (P17935396164336484893.a n : ℤ) = A089720 (n + 1)

end A089720

/-! ## A089720.P5133897468678085491

`p?[a(n-2)+35]` with `a(0)=1, a(1)=11`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A089720

/-- `p?[a(n-2)+35]` -/
def P5133897468678085491.Spec : Prop :=
  ∀ n, (P5133897468678085491.a n : ℤ) = A089720 (n + 1)

theorem P5133897468678085491.correct : P5133897468678085491.Spec := by
  intro n
  simp only [A089720, Nat.add_sub_cancel]

end A089720

/-! ## A089720.P16983679780470812521

`∩[A030430(n+1), A045469(n+1)]`
-/

namespace A089720.P16983679780470812521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045469 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089720.P16983679780470812521

namespace A089720

/-- `∩[A030430(n+1), A045469(n+1)]` -/
def P16983679780470812521.Spec : Prop :=
  ∀ n, (P16983679780470812521.a n : ℤ) = A089720 (n + 1)

end A089720

/-! ## A089720.P15683727826309163082

`∩[A045453(n+1), A045469(n+1)]`
-/

namespace A089720.P15683727826309163082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045469 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089720.P15683727826309163082

namespace A089720

/-- `∩[A045453(n+1), A045469(n+1)]` -/
def P15683727826309163082.Spec : Prop :=
  ∀ n, (P15683727826309163082.a n : ℤ) = A089720 (n + 1)

end A089720

/-! ## A089720.P7110983580145503346

`∩[A045469(n+1), A090756(n+1)]`
-/

namespace A089720.P7110983580145503346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089720.P7110983580145503346

namespace A089720

/-- `∩[A045469(n+1), A090756(n+1)]` -/
def P7110983580145503346.Spec : Prop :=
  ∀ n, (P7110983580145503346.a n : ℤ) = A089720 (n + 1)

end A089720

/-! ## A089720.P2579586449383965164

`∩[A045469(n+1), A327752(n+1)]`
-/

namespace A089720.P2579586449383965164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089720.P2579586449383965164

namespace A089720

/-- `∩[A045469(n+1), A327752(n+1)]` -/
def P2579586449383965164.Spec : Prop :=
  ∀ n, (P2579586449383965164.a n : ℤ) = A089720 (n + 1)

end A089720

/-! ## A089720.P16683393402028722339

`∩[A030430(n+1), A045461(n+1)]`
-/

namespace A089720.P16683393402028722339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045461 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089720.P16683393402028722339

namespace A089720

/-- `∩[A030430(n+1), A045461(n+1)]` -/
def P16683393402028722339.Spec : Prop :=
  ∀ n, (P16683393402028722339.a n : ℤ) = A089720 (n + 1)

end A089720

/-! ## A089720.P9292925510522015598

`∩[A045453(n+1), A045461(n+1)]`
-/

namespace A089720.P9292925510522015598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045461 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089720.P9292925510522015598

namespace A089720

/-- `∩[A045453(n+1), A045461(n+1)]` -/
def P9292925510522015598.Spec : Prop :=
  ∀ n, (P9292925510522015598.a n : ℤ) = A089720 (n + 1)

end A089720

/-! ## A089720.P6566803956334171209

`∩[A045461(n+1), A090756(n+1)]`
-/

namespace A089720.P6566803956334171209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045461 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089720.P6566803956334171209

namespace A089720

/-- `∩[A045461(n+1), A090756(n+1)]` -/
def P6566803956334171209.Spec : Prop :=
  ∀ n, (P6566803956334171209.a n : ℤ) = A089720 (n + 1)

end A089720

/-! ## A089720.P13634455757746157867

`∩[A045461(n+1), A327752(n+1)]`
-/

namespace A089720.P13634455757746157867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045461 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089720.P13634455757746157867

namespace A089720

/-- `∩[A045461(n+1), A327752(n+1)]` -/
def P13634455757746157867.Spec : Prop :=
  ∀ n, (P13634455757746157867.a n : ℤ) = A089720 (n + 1)

end A089720

/-! ## A089720.P5667505693308710611

`∩[A004615(n+1), A045461(n+1)]`
-/

namespace A089720.P5667505693308710611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045461 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089720.P5667505693308710611

namespace A089720

/-- `∩[A004615(n+1), A045461(n+1)]` -/
def P5667505693308710611.Spec : Prop :=
  ∀ n, (P5667505693308710611.a n : ℤ) = A089720 (n + 1)

end A089720

/-! ## A089720.P10272933730561480019

`∩[A004615(n+1), A045469(n+1)]`
-/

namespace A089720.P10272933730561480019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045469 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089720.P10272933730561480019

namespace A089720

/-- `∩[A004615(n+1), A045469(n+1)]` -/
def P10272933730561480019.Spec : Prop :=
  ∀ n, (P10272933730561480019.a n : ℤ) = A089720 (n + 1)

end A089720

/-! ## A089720.P843648878947993883

`p?[A047354(n+2)+9*A047354(n+1)]`
-/

namespace A089720.P843648878947993883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047354 (n + 2) + 9 * A047354 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089720.P843648878947993883

namespace A089720

/-- `p?[A047354(n+2)+9*A047354(n+1)]` -/
def P843648878947993883.Spec : Prop :=
  ∀ n, P843648878947993883.a n = A089720 (n + 1)

end A089720

/-! ## A089720.P14269271968594687956

`p?[∑[A040865(n+1)]]`
-/

namespace A089720.P14269271968594687956
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040865 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089720.P14269271968594687956

namespace A089720

/-- `p?[∑[A040865(n+1)]]` -/
def P14269271968594687956.Spec : Prop :=
  ∀ n, P14269271968594687956.a n = A089720 (n + 1)

end A089720

/-! ## A089720.P15133547796632192342

`p?[A008851(n+2)+6*A008851(n+1)]`
-/

namespace A089720.P15133547796632192342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008851 (n + 2) + 6 * A008851 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089720.P15133547796632192342

namespace A089720

/-- `p?[A008851(n+2)+6*A008851(n+1)]` -/
def P15133547796632192342.Spec : Prop :=
  ∀ n, P15133547796632192342.a n = A089720 (n + 1)

end A089720

/-! ## A089720.P17100577572532027066

`∩[A045461(n+1), A331194(n+1)]`
-/

namespace A089720.P17100577572532027066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045461 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089720.P17100577572532027066

namespace A089720

/-- `∩[A045461(n+1), A331194(n+1)]` -/
def P17100577572532027066.Spec : Prop :=
  ∀ n, (P17100577572532027066.a n : ℤ) = A089720 (n + 1)

end A089720

/-! ## A089720.P17399680002384707121

`∩[A045469(n+1), A331194(n+1)]`
-/

namespace A089720.P17399680002384707121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089720.P17399680002384707121

namespace A089720

/-- `∩[A045469(n+1), A331194(n+1)]` -/
def P17399680002384707121.Spec : Prop :=
  ∀ n, (P17399680002384707121.a n : ℤ) = A089720 (n + 1)

end A089720

/-! ## A089720.P11202890544167740053

`∩[A045461(n+1), A017281(n)]`
-/

namespace A089720.P11202890544167740053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045461 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089720.P11202890544167740053

namespace A089720

/-- `∩[A045461(n+1), A017281(n)]` -/
def P11202890544167740053.Spec : Prop :=
  ∀ n, (P11202890544167740053.a n : ℤ) = A089720 (n + 1)

end A089720

/-! ## A089720.P7172899720156140967

`∩[A045469(n+1), A017281(n)]`
-/

namespace A089720.P7172899720156140967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089720.P7172899720156140967

namespace A089720

/-- `∩[A045469(n+1), A017281(n)]` -/
def P7172899720156140967.Spec : Prop :=
  ∀ n, (P7172899720156140967.a n : ℤ) = A089720 (n + 1)

end A089720

/-! ## A089720.P304741884358681864

`p?[A014016(n)²*A017281(n)]`
-/

namespace A089720.P304741884358681864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014016 n ^ 2 * A017281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089720.P304741884358681864

namespace A089720

/-- `p?[A014016(n)²*A017281(n)]` -/
def P304741884358681864.Spec : Prop :=
  ∀ n, P304741884358681864.a n = A089720 (n + 1)

end A089720

/-!
# A089721: Primes ending in 1 such that floor(p/7) ends in a digit > 3.

The programs for A089721, the canonical program `A089721.P6798565344662168487` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089721 has offset 1).

The definition of A089721 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2493 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089721.P14514377927697614532

`∩[A004615(n+1), A042992(n+1)]`
-/

namespace A089721.P14514377927697614532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042992 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089721.P14514377927697614532

namespace A089721

/-- `∩[A004615(n+1), A042992(n+1)]` -/
def P14514377927697614532.Spec : Prop :=
  ∀ n, (P14514377927697614532.a n : ℤ) = A089721 (n + 1)

end A089721

/-! ## A089721.P10402822032188925246

`∩[A004615(n+1), A045312(n+1)]`
-/

namespace A089721.P10402822032188925246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089721.P10402822032188925246

namespace A089721

/-- `∩[A004615(n+1), A045312(n+1)]` -/
def P10402822032188925246.Spec : Prop :=
  ∀ n, (P10402822032188925246.a n : ℤ) = A089721 (n + 1)

end A089721

/-! ## A089721.P17190056396577529007

`∩[A030430(n+1), A042992(n+1)]`
-/

namespace A089721.P17190056396577529007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042992 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089721.P17190056396577529007

namespace A089721

/-- `∩[A030430(n+1), A042992(n+1)]` -/
def P17190056396577529007.Spec : Prop :=
  ∀ n, (P17190056396577529007.a n : ℤ) = A089721 (n + 1)

end A089721

/-! ## A089721.P530819640022914410

`∩[A030430(n+1), A045312(n+1)]`
-/

namespace A089721.P530819640022914410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089721.P530819640022914410

namespace A089721

/-- `∩[A030430(n+1), A045312(n+1)]` -/
def P530819640022914410.Spec : Prop :=
  ∀ n, (P530819640022914410.a n : ℤ) = A089721 (n + 1)

end A089721

/-! ## A089721.P13261245489756682994

`∩[A042992(n+1), A090756(n+1)]`
-/

namespace A089721.P13261245489756682994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089721.P13261245489756682994

namespace A089721

/-- `∩[A042992(n+1), A090756(n+1)]` -/
def P13261245489756682994.Spec : Prop :=
  ∀ n, (P13261245489756682994.a n : ℤ) = A089721 (n + 1)

end A089721

/-! ## A089721.P6927868754170893443

`∩[A045312(n+1), A090756(n+1)]`
-/

namespace A089721.P6927868754170893443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089721.P6927868754170893443

namespace A089721

/-- `∩[A045312(n+1), A090756(n+1)]` -/
def P6927868754170893443.Spec : Prop :=
  ∀ n, (P6927868754170893443.a n : ℤ) = A089721 (n + 1)

end A089721

/-! ## A089721.P6798565344662168487

`∩[A042992(n+1), A327752(n+1)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A089721

/-- `∩[A042992(n+1), A327752(n+1)]` -/
def P6798565344662168487.Spec : Prop :=
  ∀ n, (P6798565344662168487.a n : ℤ) = A089721 (n + 1)

theorem P6798565344662168487.correct : P6798565344662168487.Spec := by
  intro n
  simp only [A089721, Nat.add_sub_cancel]

end A089721

/-! ## A089721.P509428213073780134

`∩[A045312(n+1), A327752(n+1)]`
-/

namespace A089721.P509428213073780134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089721.P509428213073780134

namespace A089721

/-- `∩[A045312(n+1), A327752(n+1)]` -/
def P509428213073780134.Spec : Prop :=
  ∀ n, (P509428213073780134.a n : ℤ) = A089721 (n + 1)

end A089721

/-! ## A089721.P1331295605401266625

`∩[A042992(n+1), A331194(n+1)]`
-/

namespace A089721.P1331295605401266625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089721.P1331295605401266625

namespace A089721

/-- `∩[A042992(n+1), A331194(n+1)]` -/
def P1331295605401266625.Spec : Prop :=
  ∀ n, (P1331295605401266625.a n : ℤ) = A089721 (n + 1)

end A089721

/-! ## A089721.P16306823251544609008

`∩[A045312(n+1), A331194(n+1)]`
-/

namespace A089721.P16306823251544609008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089721.P16306823251544609008

namespace A089721

/-- `∩[A045312(n+1), A331194(n+1)]` -/
def P16306823251544609008.Spec : Prop :=
  ∀ n, (P16306823251544609008.a n : ℤ) = A089721 (n + 1)

end A089721

/-! ## A089721.P17149291601256181366

`p?[A017281(n)-A014016(n)]`
-/

namespace A089721.P17149291601256181366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n - A014016 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089721.P17149291601256181366

namespace A089721

/-- `p?[A017281(n)-A014016(n)]` -/
def P17149291601256181366.Spec : Prop :=
  ∀ n, P17149291601256181366.a n = A089721 (n + 1)

end A089721

/-! ## A089721.P12699162129231780741

`p?[A017281(n)-A014023(n)]`
-/

namespace A089721.P12699162129231780741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n - A014023 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089721.P12699162129231780741

namespace A089721

/-- `p?[A017281(n)-A014023(n)]` -/
def P12699162129231780741.Spec : Prop :=
  ∀ n, P12699162129231780741.a n = A089721 (n + 1)

end A089721

/-! ## A089721.P17192288201122348106

`∩[A042992(n+1), A017281(n)]`
-/

namespace A089721.P17192288201122348106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089721.P17192288201122348106

namespace A089721

/-- `∩[A042992(n+1), A017281(n)]` -/
def P17192288201122348106.Spec : Prop :=
  ∀ n, (P17192288201122348106.a n : ℤ) = A089721 (n + 1)

end A089721

/-! ## A089721.P3600944461671915688

`∩[A045312(n+1), A017281(n)]`
-/

namespace A089721.P3600944461671915688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089721.P3600944461671915688

namespace A089721

/-- `∩[A045312(n+1), A017281(n)]` -/
def P3600944461671915688.Spec : Prop :=
  ∀ n, (P3600944461671915688.a n : ℤ) = A089721 (n + 1)

end A089721

/-! ## A089721.P622854792335986802

`p?[A017365(A047369(n+1))+3]`
-/

namespace A089721.P622854792335986802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017365 (A047369 (n + 1)).toNat + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089721.P622854792335986802

namespace A089721

/-- `p?[A017365(A047369(n+1))+3]` -/
def P622854792335986802.Spec : Prop :=
  ∀ n, P622854792335986802.a n = A089721 (n + 1)

end A089721

/-! ## A089721.P17783237760710720531

`p?[10*(lcm(n, A099859(n+4))-1)+1]`
-/

namespace A089721.P17783237760710720531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * ((Int.lcm (n : ℤ) (A099859 (n + 4)) : ℤ) - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089721.P17783237760710720531

namespace A089721

/-- `p?[10*(lcm(n, A099859(n+4))-1)+1]` -/
def P17783237760710720531.Spec : Prop :=
  ∀ n, P17783237760710720531.a n = A089721 (n + 1)

end A089721

/-! ## A089721.P9607123392982443928

`∩[A042992(n+1), A277588(n+1)]`
-/

namespace A089721.P9607123392982443928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089721.P9607123392982443928

namespace A089721

/-- `∩[A042992(n+1), A277588(n+1)]` -/
def P9607123392982443928.Spec : Prop :=
  ∀ n, (P9607123392982443928.a n : ℤ) = A089721 (n + 1)

end A089721

/-! ## A089721.P10014634791410056436

`∩[A045312(n+1), A277588(n+1)]`
-/

namespace A089721.P10014634791410056436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089721.P10014634791410056436

namespace A089721

/-- `∩[A045312(n+1), A277588(n+1)]` -/
def P10014634791410056436.Spec : Prop :=
  ∀ n, (P10014634791410056436.a n : ℤ) = A089721 (n + 1)

end A089721

/-! ## A089721.P15468791034279120454

`∩[A042992(n+1), A225297(n+1)]`
-/

namespace A089721.P15468791034279120454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225297 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089721.P15468791034279120454

namespace A089721

/-- `∩[A042992(n+1), A225297(n+1)]` -/
def P15468791034279120454.Spec : Prop :=
  ∀ n, (P15468791034279120454.a n : ℤ) = A089721 (n + 1)

end A089721

/-! ## A089721.P11236994981746751779

`∩[A045312(n+1), A225297(n+1)]`
-/

namespace A089721.P11236994981746751779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225297 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089721.P11236994981746751779

namespace A089721

/-- `∩[A045312(n+1), A225297(n+1)]` -/
def P11236994981746751779.Spec : Prop :=
  ∀ n, (P11236994981746751779.a n : ℤ) = A089721 (n + 1)

end A089721

/-!
# A089723: a(1)=1; for n>1, a(n) gives number of ways to write n as n = x^y, 2 <= x, 1 <= y.

The programs for A089723, the canonical program `A089723.P6186478602489897131` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089723 has offset 1).

The definition of A089723 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089723.P6186478602489897131

`∏{e}[A052409(n+1), 1+#]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A089723

/-- `∏{e}[A052409(n+1), 1+#]` -/
def P6186478602489897131.Spec : Prop :=
  ∀ n, (P6186478602489897131.a n : ℤ) = A089723 (n + 1)

theorem P6186478602489897131.correct : P6186478602489897131.Spec := by
  intro n
  simp only [A089723, Nat.add_sub_cancel]

end A089723

/-! ## A089723.P17501558931308612808

`∏{e}[A132349(n+1), #+1]`
-/

namespace A089723.P17501558931308612808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132349 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A089723.P17501558931308612808

namespace A089723

/-- `∏{e}[A132349(n+1), #+1]` -/
def P17501558931308612808.Spec : Prop :=
  ∀ n, (P17501558931308612808.a n : ℤ) = A089723 (n + 1)

end A089723

/-! ## A089723.P2819089348566280871

`∏{e}[A158378(n+1), #+1]`
-/

namespace A089723.P2819089348566280871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158378 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A089723.P2819089348566280871

namespace A089723

/-- `∏{e}[A158378(n+1), #+1]` -/
def P2819089348566280871.Spec : Prop :=
  ∀ n, (P2819089348566280871.a n : ℤ) = A089723 (n + 1)

end A089723

/-! ## A089723.P15204824418514696507

`A000005(A253641(n+1))`
-/

namespace A089723.P15204824418514696507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A253641 (n + 1)).toNat

end

end A089723.P15204824418514696507

namespace A089723

/-- `A000005(A253641(n+1))` -/
def P15204824418514696507.Spec : Prop :=
  ∀ n, P15204824418514696507.a n = A089723 (n + 1)

end A089723

/-! ## A089723.P8913568380578692550

`A201206(A316782(n+1))`
-/

namespace A089723.P8913568380578692550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201206 (A316782 (n + 1)).toNat

end

end A089723.P8913568380578692550

namespace A089723

/-- `A201206(A316782(n+1))` -/
def P8913568380578692550.Spec : Prop :=
  ∀ n, P8913568380578692550.a n = A089723 (n + 1)

end A089723

/-! ## A089723.P9953764260173719197

`A032741(A052409(n+1))+1`
-/

namespace A089723.P9953764260173719197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A052409 (n + 1)).toNat + 1

end

end A089723.P9953764260173719197

namespace A089723

/-- `A032741(A052409(n+1))+1` -/
def P9953764260173719197.Spec : Prop :=
  ∀ n, P9953764260173719197.a n = A089723 (n + 1)

end A089723

/-! ## A089723.P17356270478758170713

`A088904(A046523(n+1)+1)`
-/

namespace A089723.P17356270478758170713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088904 (A046523 (n + 1) + 1).toNat

end

end A089723.P17356270478758170713

namespace A089723

/-- `A088904(A046523(n+1)+1)` -/
def P17356270478758170713.Spec : Prop :=
  ∀ n, P17356270478758170713.a n = A089723 (n + 1)

end A089723

/-! ## A089723.P2448554796188719329

`A088904(A071364(n+1)+1)`
-/

namespace A089723.P2448554796188719329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088904 (A071364 (n + 1) + 1).toNat

end

end A089723.P2448554796188719329

namespace A089723

/-- `A088904(A071364(n+1)+1)` -/
def P2448554796188719329.Spec : Prop :=
  ∀ n, P2448554796188719329.a n = A089723 (n + 1)

end A089723

/-! ## A089723.P3470680502622096895

`A032741(A132349(n+1))+1`
-/

namespace A089723.P3470680502622096895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A132349 (n + 1)).toNat + 1

end

end A089723.P3470680502622096895

namespace A089723

/-- `A032741(A132349(n+1))+1` -/
def P3470680502622096895.Spec : Prop :=
  ∀ n, P3470680502622096895.a n = A089723 (n + 1)

end A089723

/-! ## A089723.P7216579217338854046

`A032741(A158378(n+1))+1`
-/

namespace A089723.P7216579217338854046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A158378 (n + 1)).toNat + 1

end

end A089723.P7216579217338854046

namespace A089723

/-- `A032741(A158378(n+1))+1` -/
def P7216579217338854046.Spec : Prop :=
  ∀ n, P7216579217338854046.a n = A089723 (n + 1)

end A089723

/-! ## A089723.P4171716520107706278

`A259362(n+1)+A057427(n)`
-/

namespace A089723.P4171716520107706278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259362 (n + 1) + A057427 n

end

end A089723.P4171716520107706278

namespace A089723

/-- `A259362(n+1)+A057427(n)` -/
def P4171716520107706278.Spec : Prop :=
  ∀ n, P4171716520107706278.a n = A089723 (n + 1)

end A089723

/-! ## A089723.P10015080449912539729

`A259362(n+1)-A057428(n)`
-/

namespace A089723.P10015080449912539729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259362 (n + 1) - A057428 n

end

end A089723.P10015080449912539729

namespace A089723

/-- `A259362(n+1)-A057428(n)` -/
def P10015080449912539729.Spec : Prop :=
  ∀ n, P10015080449912539729.a n = A089723 (n + 1)

theorem P10015080449912539729.correct : P10015080449912539729.Spec := by
  intro n
  simp only [A089723, Nat.add_sub_cancel, A089723.P10015080449912539729.a, A089723.P6186478602489897131.f1, A089723.P6186478602489897131.a, A052409, A052409.P7338948793466901153.a, A057428, A057428.P8574537373872850588.a, A259362, A259362.P4800518536678881889.a, A051903, A051903.P10704508922429453281.f1, A051903.P10704508922429453281.a, A051904, A051904.P9263651810596342710.a, A046523, A046523.P3407874444772092792.a, A071178, A071178.P17375525505785378954.a, A006530, A006530.P13372528560459906635.a, A181819, A181819.P15090535388863431201.a, A181821, A181821.P11277667539367847379.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A089723

/-! ## A089723.P2802371721661911849

`A000005(n+1)-A178638(n+1)`
-/

namespace A089723.P2802371721661911849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A178638 (n + 1)

end

end A089723.P2802371721661911849

namespace A089723

/-- `A000005(n+1)-A178638(n+1)` -/
def P2802371721661911849.Spec : Prop :=
  ∀ n, P2802371721661911849.a n = A089723 (n + 1)

theorem P2802371721661911849.correct : P2802371721661911849.Spec := by
  intro n
  simp only [A089723, Nat.add_sub_cancel, A089723.P2802371721661911849.a, A089723.P6186478602489897131.f1, A089723.P6186478602489897131.a, A000005, A000005.P16091521709108585461.a, A052409, A052409.P7338948793466901153.a, A178638, A178638.P8804259736585962114.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051903, A051903.P10704508922429453281.f1, A051903.P10704508922429453281.a, A051904, A051904.P9263651810596342710.a, A046523, A046523.P3407874444772092792.a, A051731, A051731.P11318043630102858095.a, A071178, A071178.P17375525505785378954.a, A000007, A000007.P6599383543502402472.a, A006530, A006530.P13372528560459906635.a, A048158, A048158.P1757030368331788429.a, A181819, A181819.P15090535388863431201.a, A181821, A181821.P11277667539367847379.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A089723

/-! ## A089723.P18294972974987472089

`∑{d}[n+1, A008683(#)*A169594((n+1)/#)]`
-/

namespace A089723.P18294972974987472089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A169594 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A089723.P18294972974987472089

namespace A089723

/-- `∑{d}[n+1, A008683(#)*A169594((n+1)/#)]` -/
def P18294972974987472089.Spec : Prop :=
  ∀ n, P18294972974987472089.a n = A089723 (n + 1)

end A089723

/-! ## A089723.P5680140749849583619

`∑{d}[A253641(n+1), A253641(A253641(#))]`
-/

namespace A089723.P5680140749849583619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253641 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A253641 (A253641 d).toNat

end

end A089723.P5680140749849583619

namespace A089723

/-- `∑{d}[A253641(n+1), A253641(A253641(#))]` -/
def P5680140749849583619.Spec : Prop :=
  ∀ n, P5680140749849583619.a n = A089723 (n + 1)

end A089723

/-! ## A089723.P1012506444660969270

`∑{d}[A316782(n+1), A316782(A316782(#))]`
-/

namespace A089723.P1012506444660969270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A316782 (A316782 d).toNat

end

end A089723.P1012506444660969270

namespace A089723

/-- `∑{d}[A316782(n+1), A316782(A316782(#))]` -/
def P1012506444660969270.Spec : Prop :=
  ∀ n, P1012506444660969270.a n = A089723 (n + 1)

end A089723

/-! ## A089723.P14587331039987959074

`A322794(A316782(n+1)²)`
-/

namespace A089723.P14587331039987959074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322794 (A316782 (n + 1) ^ 2).toNat

end

end A089723.P14587331039987959074

namespace A089723

/-- `A322794(A316782(n+1)²)` -/
def P14587331039987959074.Spec : Prop :=
  ∀ n, P14587331039987959074.a n = A089723 (n + 1)

end A089723

/-! ## A089723.P16584015272321505295

`A000196(A294338((n+1)²))`
-/

namespace A089723.P16584015272321505295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A294338 ((n + 1) ^ 2)).toNat

end

end A089723.P16584015272321505295

namespace A089723

/-- `A000196(A294338((n+1)²))` -/
def P16584015272321505295.Spec : Prop :=
  ∀ n, P16584015272321505295.a n = A089723 (n + 1)

end A089723

/-!
# A089724: Numbers p satisfying the following conditions: p is a prime of form 10k+9 and the function f[p,7,10] applied to p is not greater than 5, where f[p,7,10]=10*fractionalpart[n/70]=1*.((n/70)-Floor[n/70]).

The programs for A089724, there is no canonical definition to state claims against.
-/

/-! ## A089724.P11478628107028455707

`p?[5*(comp[4*(n+1)]+n)-1]`
-/

namespace A089724.P11478628107028455707
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089724.P11478628107028455707

/-! ## A089724.P16650830168037068062

`filter[A045358(n+1), A185709(#)]`
-/

namespace A089724.P16650830168037068062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185709 (f1 j).toNat = 1) n)

end

end A089724.P16650830168037068062

/-! ## A089724.P13017290387617196738

`filter[A045367(n+1), A185709(#)]`
-/

namespace A089724.P13017290387617196738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045367 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185709 (f1 j).toNat = 1) n)

end

end A089724.P13017290387617196738

/-! ## A089724.P10519313785875834439

`filter[A047387(n+1), A185709(#)]`
-/

namespace A089724.P10519313785875834439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047387 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185709 (f1 j).toNat = 1) n)

end

end A089724.P10519313785875834439

/-! ## A089724.P10068003278982495984

`filter[A047388(n+2), A185709(#)]`
-/

namespace A089724.P10068003278982495984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047388 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185709 (f1 j).toNat = 1) n)

end

end A089724.P10068003278982495984

/-!
# A089725: Let f(n) = (2n+1), g(n) = (n-1)/2. Then a(n) = f(f(f(...(n)))), where one gets prime at every step. If f(n) is not a prime then a(n) = g(g(g...(n)))) where one gets a prime at every step. If f(n) and g(n) both are composite then a(n) = 0.

The programs for A089725, there is no canonical definition to state claims against.
-/

/-! ## A089725.P15161987450837960303

`A068640(n+1)+A051344(A022113(n))`
-/

namespace A089725.P15161987450837960303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068640 (n + 1) + A051344 (A022113 n).toNat

end

end A089725.P15161987450837960303

/-! ## A089725.P14572654531396866753

`or(A067898(A188006(n+1)), A068640(n+1))`
-/

namespace A089725.P14572654531396866753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A067898 (A188006 (n + 1)).toNat) (A068640 (n + 1))

end

end A089725.P14572654531396866753

/-! ## A089725.P4136124345230532963

`or(A051344(A365046(n+2)), A068640(n+1))`
-/

namespace A089725.P4136124345230532963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A051344 (A365046 (n + 2)).toNat) (A068640 (n + 1))

end

end A089725.P4136124345230532963

/-!
# A089726: Smallest prime of the form nk+1, k > n.

The programs for A089726, there is no canonical definition to state claims against.
-/

/-! ## A089726.P7546455213032306140

`(n+1)*A074846(n+1)+1`
-/

namespace A089726.P7546455213032306140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A074846 (n + 1) + 1

end

end A089726.P7546455213032306140

/-! ## A089726.P4265472763992288494

`(n+1)*(A082465(n+1)+1+n)+1`
-/

namespace A089726.P4265472763992288494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A082465 (n + 1) + 1 + (n : ℤ)) + 1

end

end A089726.P4265472763992288494

/-! ## A089726.P887996082983393063

`A290838((n+1)*A074846(n+1))`
-/

namespace A089726.P887996082983393063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290838 ((n + 1 : ℤ) * A074846 (n + 1)).toNat

end

end A089726.P887996082983393063

/-! ## A089726.P14320285391775025977

`A141310((n+1)*A074846(n+1))`
-/

namespace A089726.P14320285391775025977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 ((n + 1 : ℤ) * A074846 (n + 1)).toNat

end

end A089726.P14320285391775025977

/-! ## A089726.P4059241943380362853

`A020725((n+1)*A074846(n+1))`
-/

namespace A089726.P4059241943380362853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 ((n + 1 : ℤ) * A074846 (n + 1)).toNat

end

end A089726.P4059241943380362853

/-!
# A089727: Largest prime of the form n*k+1, k <= n.

The programs for A089727, there is no canonical definition to state claims against.
-/

/-! ## A089727.P7713029096174834524

`(1+n)*A171751(n+1)+1`
-/

namespace A089727.P7713029096174834524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) * A171751 (n + 1) + 1

end

end A089727.P7713029096174834524

/-! ## A089727.P14056458274546749087

`A004482((n+1)*A171751(n+1))`
-/

namespace A089727.P14056458274546749087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 ((n + 1 : ℤ) * A171751 (n + 1)).toNat

end

end A089727.P14056458274546749087

/-! ## A089727.P2715945126669836782

`A020725((n+1)*A171751(n+1))`
-/

namespace A089727.P2715945126669836782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 ((n + 1 : ℤ) * A171751 (n + 1)).toNat

end

end A089727.P2715945126669836782

/-! ## A089727.P16324836921817640765

`A034694((n+1)*A171751(n+1))`
-/

namespace A089727.P16324836921817640765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 ((n + 1 : ℤ) * A171751 (n + 1)).toNat

end

end A089727.P16324836921817640765

/-! ## A089727.P3360552482227202098

`A057174((n+1)*A171751(n+1))`
-/

namespace A089727.P3360552482227202098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057174 ((n + 1 : ℤ) * A171751 (n + 1)).toNat

end

end A089727.P3360552482227202098

/-! ## A089727.P8277766551847634316

`A141310((n+1)*A171751(n+1))`
-/

namespace A089727.P8277766551847634316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 ((n + 1 : ℤ) * A171751 (n + 1)).toNat

end

end A089727.P8277766551847634316

/-! ## A089727.P9484734309344129527

`A151800((n+1)*A171751(n+1))`
-/

namespace A089727.P9484734309344129527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 ((n + 1 : ℤ) * A171751 (n + 1)).toNat

end

end A089727.P9484734309344129527

/-! ## A089727.P17416833611008941438

`A290838((n+1)*A171751(n+1))`
-/

namespace A089727.P17416833611008941438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290838 ((n + 1 : ℤ) * A171751 (n + 1)).toNat

end

end A089727.P17416833611008941438

/-!
# A089731: Triangle of T(n,k)=number of peakless Motzkin paths of length n having k (1,0) steps at level zero (can be easily translated into RNA secondary structure terminology).

The programs for A089731, there is no canonical definition to state claims against.
-/

/-! ## A089731.P14052146026486842442

`A166299(A056537(n+1)-1)`
-/

namespace A089731.P14052146026486842442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166299 (A056537 (n + 1) - 1).toNat

end

end A089731.P14052146026486842442

/-! ## A089731.P7292438797211736931

`A127287(A097098(n)%A141214(n))`
-/

namespace A089731.P7292438797211736931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127287 (Int.tmod (A097098 n) (A141214 n)).toNat

end

end A089731.P7292438797211736931

/-! ## A089731.P10751747926821633807

`A233279(A097098(n)+A185255(n)²²)`
-/

namespace A089731.P10751747926821633807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233279 (A097098 n + (A185255 n ^ 2) ^ 2).toNat

end

end A089731.P10751747926821633807

/-! ## A089731.P4808694909895846602

`A007496(A097098(n)+1)`
-/

namespace A089731.P4808694909895846602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007496 (A097098 n + 1).toNat

end

end A089731.P4808694909895846602

/-! ## A089731.P7714677660781484544

`and(A060152(n+1), A097098(n))`
-/

namespace A089731.P7714677660781484544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060152 (n + 1)) (A097098 n)

end

end A089731.P7714677660781484544

/-!
# A089732: Triangle read by rows: T(n,k) = number of peakless Motzkin paths of length n having k (1,1) steps (can be easily translated into RNA secondary structure terminology). Except for row 0, row n has ceiling(n/2) entries.

The programs for A089732, the canonical program `A089732.P16063154535274882972` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089732 has offset 0).

The definition of A089732 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5042 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089732.P16063154535274882972

`A001263(A056536(abs(1-n)+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A089732

/-- `A001263(A056536(abs(1-n)+1))` -/
def P16063154535274882972.Spec : Prop :=
  ∀ n, P16063154535274882972.a n = A089732 n

theorem P16063154535274882972.correct : P16063154535274882972.Spec := by
  intro n
  simp only [A089732]

end A089732

/-!
# A089733: Begin with 1; add a distinct prime to get a composite number, then add a distinct composite number to get a prime; repeat.

The programs for A089733, there is no canonical definition to state claims against.
-/

/-! ## A089733.P15123317835695791099

`∑[A103824(n+1)]`
-/

namespace A089733.P15123317835695791099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103824 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089733.P15123317835695791099

/-! ## A089733.P1146206863603780073

`A103824(2*n+1-n)+a(n-1)` with `a(0)=1`
-/

namespace A089733.P1146206863603780073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A103824 (2 * n + 1 - n) + a (n - 1)

end

end A089733.P1146206863603780073

/-!
# A089734: Smallest b (b >=0) such that 6*n+1= p + 2*b^2, p prime.

The programs for A089734, there is no canonical definition to state claims against.
-/

/-! ## A089734.P7387653719219875645

`round(log2(A255274(3*(n+1))))`
-/

namespace A089734.P7387653719219875645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A255274 (3 * (n + 1)) : ℝ))

end

end A089734.P7387653719219875645

/-! ## A089734.P12321380148738948565

`floor(sqrt(A002373(3*n+5)))-1`
-/

namespace A089734.P12321380148738948565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A002373 (3 * n + 5)) - 1

end

end A089734.P12321380148738948565

/-! ## A089734.P6123537121195003117

`floor(sqrt(A020481(3*n+5)))-1`
-/

namespace A089734.P6123537121195003117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A020481 (3 * n + 5)) - 1

end

end A089734.P6123537121195003117

/-! ## A089734.P18232667500103016909

`A171611(A002373(3*n+5))`
-/

namespace A089734.P18232667500103016909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171611 (A002373 (3 * n + 5)).toNat

end

end A089734.P18232667500103016909

/-! ## A089734.P17041788425264992312

`A000194(A255274(3*(n+1))-1)`
-/

namespace A089734.P17041788425264992312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A255274 (3 * (n + 1)) - 1).toNat

end

end A089734.P17041788425264992312

/-! ## A089734.P13339040511221931364

`A070564(A255274(3*(n+1))-1)`
-/

namespace A089734.P13339040511221931364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070564 (A255274 (3 * (n + 1)) - 1).toNat

end

end A089734.P13339040511221931364

/-! ## A089734.P2955948587457282139

`A172263(A255274(3*(n+1))-1)`
-/

namespace A089734.P2955948587457282139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172263 (A255274 (3 * (n + 1)) - 1).toNat

end

end A089734.P2955948587457282139

/-! ## A089734.P6951879205027536096

`A085141(A002373(3*n+5)-2)`
-/

namespace A089734.P6951879205027536096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085141 (A002373 (3 * n + 5) - 2).toNat

end

end A089734.P6951879205027536096

/-! ## A089734.P12555211199482658492

`A024936(A002373(3*n+5)-3)`
-/

namespace A089734.P12555211199482658492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024936 (A002373 (3 * n + 5) - 3).toNat

end

end A089734.P12555211199482658492

/-! ## A089734.P4711752306063579815

`A085141(xor(3, A002373(3*n+5)))`
-/

namespace A089734.P4711752306063579815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085141 (Int.xor 3 (A002373 (3 * n + 5))).toNat

end

end A089734.P4711752306063579815

/-!
# A089735: Self-convolution of A004148 (the RNA secondary structure numbers) with itself.

The programs for A089735, the canonical program `A089735.P2514923300977859866` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089735 has offset 0).

The definition of A089735 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A089735.P2514923300977859866

`A004148(n+2)-A004148(n+1)+A004148(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A089735

/-- `A004148(n+2)-A004148(n+1)+A004148(n)` -/
def P2514923300977859866.Spec : Prop :=
  ∀ n, P2514923300977859866.a n = A089735 n

theorem P2514923300977859866.correct : P2514923300977859866.Spec := by
  intro n
  simp only [A089735]

end A089735

/-! ## A089735.P224089790083683988

`A292460(n)+A097779(n+2)`
-/

namespace A089735.P224089790083683988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292460 n + A097779 (n + 2)

end

end A089735.P224089790083683988

namespace A089735

/-- `A292460(n)+A097779(n+2)` -/
def P224089790083683988.Spec : Prop :=
  ∀ n, P224089790083683988.a n = A089735 n

end A089735

/-! ## A089735.P743540099983322225

`A097779(n+2)+A004148(n+1)`
-/

namespace A089735.P743540099983322225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097779 (n + 2) + A004148 (n + 1)

end

end A089735.P743540099983322225

namespace A089735

/-- `A097779(n+2)+A004148(n+1)` -/
def P743540099983322225.Spec : Prop :=
  ∀ n, P743540099983322225.a n = A089735 n

end A089735

/-! ## A089735.P11408652062905905589

`∑{#}[n, A004148(#)*A004148(n-#)]`
-/

namespace A089735.P11408652062905905589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A004148 k * A004148 (n - k)

end

end A089735.P11408652062905905589

namespace A089735

/-- `∑{#}[n, A004148(#)*A004148(n-#)]` -/
def P11408652062905905589.Spec : Prop :=
  ∀ n, P11408652062905905589.a n = A089735 n

end A089735

/-! ## A089735.P3795818118126782037

`Δ[A187260(n+2)]`
-/

namespace A089735.P3795818118126782037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187260 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A089735.P3795818118126782037

namespace A089735

/-- `Δ[A187260(n+2)]` -/
def P3795818118126782037.Spec : Prop :=
  ∀ n, P3795818118126782037.a n = A089735 n

end A089735

/-! ## A089735.P890963764990135480

`A110237(A033638(n+1))`
-/

namespace A089735.P890963764990135480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110237 (A033638 (n + 1)).toNat

end

end A089735.P890963764990135480

namespace A089735

/-- `A110237(A033638(n+1))` -/
def P890963764990135480.Spec : Prop :=
  ∀ n, P890963764990135480.a n = A089735 n

end A089735

/-! ## A089735.P2155418615400304003

`Δ[record[A187260(A008611(n))]]`
-/

namespace A089735.P2155418615400304003
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187260 (A008611 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A089735.P2155418615400304003

namespace A089735

/-- `Δ[record[A187260(A008611(n))]]` -/
def P2155418615400304003.Spec : Prop :=
  ∀ n, P2155418615400304003.a n = A089735 n

end A089735

/-! ## A089735.P5311378558376448152

`Δ[record[A187260(A008612(n))]]`
-/

namespace A089735.P5311378558376448152
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187260 (A008612 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A089735.P5311378558376448152

namespace A089735

/-- `Δ[record[A187260(A008612(n))]]` -/
def P5311378558376448152.Spec : Prop :=
  ∀ n, P5311378558376448152.a n = A089735 n

end A089735

/-! ## A089735.P13343245805982896369

`A004148(n)+Δ[A292460(n)]`
-/

namespace A089735.P13343245805982896369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292460 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004148 n + (f1 (n + 1) - f1 n)

end

end A089735.P13343245805982896369

namespace A089735

/-- `A004148(n)+Δ[A292460(n)]` -/
def P13343245805982896369.Spec : Prop :=
  ∀ n, P13343245805982896369.a n = A089735 n

theorem P13343245805982896369.correct : P13343245805982896369.Spec := by
  intro n
  simp only [A089735, Nat.add_sub_cancel, A089735.P13343245805982896369.f1, A089735.P13343245805982896369.a, A089735.P2514923300977859866.a, A004148, A004148.P7741593686067908301.f1, A004148.P7741593686067908301.a, A292460, A292460.P18157025187125229937.a, A001006, A001006.P11199602840237397285.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A089735

/-! ## A089735.P789527204833864947

`A004148(n)+Δ[A004148(n+1)]`
-/

namespace A089735.P789527204833864947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004148 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004148 n + (f1 (n + 1) - f1 n)

end

end A089735.P789527204833864947

namespace A089735

/-- `A004148(n)+Δ[A004148(n+1)]` -/
def P789527204833864947.Spec : Prop :=
  ∀ n, P789527204833864947.a n = A089735 n

theorem P789527204833864947.correct : P789527204833864947.Spec := by
  intro n
  simp only [A089735, Nat.add_sub_cancel, A089735.P789527204833864947.f1, A089735.P789527204833864947.a, A089735.P2514923300977859866.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A089735

/-! ## A089735.P8817049215387097389

`A292460(n+1)+A004148(n)-A292460(n)`
-/

namespace A089735.P8817049215387097389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292460 (n + 1) + (A004148 n - A292460 n)

end

end A089735.P8817049215387097389

namespace A089735

/-- `A292460(n+1)+A004148(n)-A292460(n)` -/
def P8817049215387097389.Spec : Prop :=
  ∀ n, P8817049215387097389.a n = A089735 n

theorem P8817049215387097389.correct : P8817049215387097389.Spec := by
  intro n
  simp only [A089735, Nat.add_sub_cancel, A089735.P8817049215387097389.a, A089735.P2514923300977859866.a, A004148, A004148.P7741593686067908301.f1, A004148.P7741593686067908301.a, A292460, A292460.P18157025187125229937.a, A001006, A001006.P11199602840237397285.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A089735

/-! ## A089735.P5223290698024641651

`A097724(∑[n+1]+1)`
-/

namespace A089735.P5223290698024641651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097724 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A089735.P5223290698024641651

namespace A089735

/-- `A097724(∑[n+1]+1)` -/
def P5223290698024641651.Spec : Prop :=
  ∀ n, P5223290698024641651.a n = A089735 n

end A089735

/-! ## A089735.P12636569386948018063

`record[A097724(ceil(n²/8))]`
-/

namespace A089735.P12636569386948018063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097724 ⌈(n ^ 2 : ℚ) / 8⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089735.P12636569386948018063

namespace A089735

/-- `record[A097724(ceil(n²/8))]` -/
def P12636569386948018063.Spec : Prop :=
  ∀ n, P12636569386948018063.a n = A089735 n

end A089735

/-!
# A089736: Triangle read by rows: T(n,k) = number of peakless Motzkin paths of length n having k (1,1) steps starting at level zero (can be easily expressed also in RNA secondary structure terminology).

The programs for A089736, there is no canonical definition to state claims against.
-/

/-! ## A089736.P801600528314842217

`A089741(n)+A010051(A022171(n))`
-/

namespace A089736.P801600528314842217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089741 n + A010051 (A022171 n).toNat

end

end A089736.P801600528314842217

/-! ## A089736.P6559168998150604283

`A089741(n)+A010051(A022177(n))`
-/

namespace A089736.P6559168998150604283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089741 n + A010051 (A022177 n).toNat

end

end A089736.P6559168998150604283

/-! ## A089736.P5770352455905644070

`A089741(n)+A044941(A000079(n))`
-/

namespace A089736.P5770352455905644070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089741 n + A044941 (A000079 n).toNat

end

end A089736.P5770352455905644070

/-!
# A089737: Number of (1,1) steps starting at level zero in all peakless Motzkin paths of length n+3.

The programs for A089737, the canonical program `A089737.P44302920842506865` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089737 has offset 0).

The definition of A089737 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A089737.P44302920842506865

`A004148(n+5)-2*A004148(n+4)+A004148(n+3)-A004148(n+2)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A089737

/-- `A004148(n+5)-2*A004148(n+4)+A004148(n+3)-A004148(n+2)` -/
def P44302920842506865.Spec : Prop :=
  ∀ n, P44302920842506865.a n = A089737 n

theorem P44302920842506865.correct : P44302920842506865.Spec := by
  intro n
  simp only [A089737]

end A089737

/-! ## A089737.P7145192168716246756

`A098075(n+1)-A089735(n+1)`
-/

namespace A089737.P7145192168716246756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098075 (n + 1) - A089735 (n + 1)

end

end A089737.P7145192168716246756

namespace A089737

/-- `A098075(n+1)-A089735(n+1)` -/
def P7145192168716246756.Spec : Prop :=
  ∀ n, P7145192168716246756.a n = A089737 n

end A089737

/-! ## A089737.P5879414191798833315

`Δ[A004148(n+4)-A187260(n+4)]`
-/

namespace A089737.P5879414191798833315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004148 (n + 4) - A187260 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A089737.P5879414191798833315

namespace A089737

/-- `Δ[A004148(n+4)-A187260(n+4)]` -/
def P5879414191798833315.Spec : Prop :=
  ∀ n, P5879414191798833315.a n = A089737 n

end A089737

/-! ## A089737.P10732538329560375444

`Δ[Δ[A292460(n+2)]]-A292460(n+1)`
-/

namespace A089737.P10732538329560375444
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292460 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A292460 (n + 1)

end

end A089737.P10732538329560375444

namespace A089737

/-- `Δ[Δ[A292460(n+2)]]-A292460(n+1)` -/
def P10732538329560375444.Spec : Prop :=
  ∀ n, P10732538329560375444.a n = A089737 n

theorem P10732538329560375444.correct : P10732538329560375444.Spec := by
  intro n
  simp only [A089737, Nat.add_sub_cancel, A089737.P10732538329560375444.f2, A089737.P10732538329560375444.f1, A089737.P10732538329560375444.a, A089737.P44302920842506865.a, A004148, A004148.P7741593686067908301.f1, A004148.P7741593686067908301.a, A292460, A292460.P18157025187125229937.a, A001006, A001006.P11199602840237397285.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A089737

/-! ## A089737.P14419027342976654331

`Δ[Δ[A004148(n+3)]]-A004148(n+2)`
-/

namespace A089737.P14419027342976654331
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004148 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A004148 (n + 2)

end

end A089737.P14419027342976654331

namespace A089737

/-- `Δ[Δ[A004148(n+3)]]-A004148(n+2)` -/
def P14419027342976654331.Spec : Prop :=
  ∀ n, P14419027342976654331.a n = A089737 n

theorem P14419027342976654331.correct : P14419027342976654331.Spec := by
  intro n
  simp only [A089737, Nat.add_sub_cancel, A089737.P14419027342976654331.f2, A089737.P14419027342976654331.f1, A089737.P14419027342976654331.a, A089737.P44302920842506865.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A089737

/-! ## A089737.P16445481598506870169

`Δ[Δ[A203019(n+5)]]-A203019(n+4)`
-/

namespace A089737.P16445481598506870169
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203019 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A203019 (n + 4)

end

end A089737.P16445481598506870169

namespace A089737

/-- `Δ[Δ[A203019(n+5)]]-A203019(n+4)` -/
def P16445481598506870169.Spec : Prop :=
  ∀ n, P16445481598506870169.a n = A089737 n

end A089737

/-!
# A089738: Triangle of T(n,k)=number of peakless Motzkin paths of length n containing k valleys (can be easily expressed using RNA secondary structure terminology).

The programs for A089738, there is no canonical definition to state claims against.
-/

/-! ## A089738.P292542043401028125

`A110333(n)-A296210(A278769(n))`
-/

namespace A089738.P292542043401028125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110333 n - A296210 (A278769 n).toNat

end

end A089738.P292542043401028125

/-! ## A089738.P8541363854747490114

`A110333(n)-A186733(A209178(n+1))`
-/

namespace A089738.P8541363854747490114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110333 n - A186733 (A209178 (n + 1)).toNat

end

end A089738.P8541363854747490114

/-! ## A089738.P4967837911390180668

`A110333(n)-A244221(A278798(n+1))`
-/

namespace A089738.P4967837911390180668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110333 n - A244221 (A278798 (n + 1)).toNat

end

end A089738.P4967837911390180668

/-!
# A089739: Let b(m)= base ten expansion of prime(n); then a(n)=Sum[Mod(10-b(l),10)*10^l,{l,1,10}].

The programs for A089739, there is no canonical definition to state claims against.
-/

/-! ## A089739.P42877114193981204

`A055120(record[A166333(n)])`
-/

namespace A089739.P42877114193981204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055120 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A089739.P42877114193981204

/-! ## A089739.P4478629831741385340

`A055120(A008578(n+1))`
-/

namespace A089739.P4478629831741385340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055120 (A008578 (n + 1)).toNat

end

end A089739.P4478629831741385340

/-! ## A089739.P8377639772984513099

`A055120(A015919(n+1))`
-/

namespace A089739.P8377639772984513099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055120 (A015919 (n + 1)).toNat

end

end A089739.P8377639772984513099

/-! ## A089739.P13317818439677865510

`A055120(A064555(n+1))`
-/

namespace A089739.P13317818439677865510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055120 (A064555 (n + 1)).toNat

end

end A089739.P13317818439677865510

/-! ## A089739.P12690229558045122594

`A055120(A324050(n+1))`
-/

namespace A089739.P12690229558045122594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055120 (A324050 (n + 1)).toNat

end

end A089739.P12690229558045122594

/-! ## A089739.P2671391880569818578

`A055120(A158611(n+2))`
-/

namespace A089739.P2671391880569818578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055120 (A158611 (n + 2)).toNat

end

end A089739.P2671391880569818578

/-! ## A089739.P230360915273411929

`A055120(eq[1, A072491(n)])`
-/

namespace A089739.P230360915273411929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055120 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A089739.P230360915273411929

/-! ## A089739.P4672481491884962612

`A055120(eq[1, A074206(n)])`
-/

namespace A089739.P4672481491884962612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055120 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A089739.P4672481491884962612

/-! ## A089739.P72067885630153843

`A055120(eq[1, A078898(n)])`
-/

namespace A089739.P72067885630153843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055120 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A089739.P72067885630153843

/-! ## A089739.P2784787342787467444

`A055120(eq[1, A107286(n)])`
-/

namespace A089739.P2784787342787467444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055120 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A089739.P2784787342787467444

/-!
# A089740: Primes which are digital complements (A055120) of primes.

The programs for A089740, there is no canonical definition to state claims against.
-/

/-! ## A089740.P9264320366843023117

`p?[A055120(p?[A055120(n)])]`
-/

namespace A089740.P9264320366843023117
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055120 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055120 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089740.P9264320366843023117

/-! ## A089740.P11034226611952419558

`eq[2, A072491(A055120(n))+A072491(n)]`
-/

namespace A089740.P11034226611952419558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 (A055120 n).toNat + A072491 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089740.P11034226611952419558

/-! ## A089740.P1689525292178035996

`eq[2, A074206(A055120(n))+A074206(n)]`
-/

namespace A089740.P1689525292178035996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A055120 n).toNat + A074206 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089740.P1689525292178035996

/-! ## A089740.P1380217295900172369

`eq[2, A078898(A055120(n))+A078898(n)]`
-/

namespace A089740.P1380217295900172369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A055120 n).toNat + A078898 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089740.P1380217295900172369

/-! ## A089740.P3284385564092440656

`eq[2, A107286(A055120(n))+A107286(n)]`
-/

namespace A089740.P3284385564092440656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (A055120 n).toNat + A107286 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089740.P3284385564092440656

/-! ## A089740.P17034131284784211381

`eq[2, A309892(A055120(n))+A309892(n)]`
-/

namespace A089740.P17034131284784211381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309892 (A055120 n).toNat + A309892 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089740.P17034131284784211381

/-! ## A089740.P16201251748310415372

`eq[n*A325142(A055120(n)), A325142(n)]`
-/

namespace A089740.P16201251748310415372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A325142 (A055120 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A089740.P16201251748310415372

/-!
# A089741: Triangle read by rows: T(n,k) = number of peakless Motzkin paths of length n containing k UHH...HD's, where U=(1,1), D=(1,-1) and H=(1,0) (can be easily expressed using RNA secondary structure terminology).

The programs for A089741, there is no canonical definition to state claims against.
-/

/-! ## A089741.P9453154842050266548

`A089736(n)-A010051(A022171(n))`
-/

namespace A089741.P9453154842050266548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089736 n - A010051 (A022171 n).toNat

end

end A089741.P9453154842050266548

/-! ## A089741.P14648898011420800705

`A089736(n)-A010051(A022177(n))`
-/

namespace A089741.P14648898011420800705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089736 n - A010051 (A022177 n).toNat

end

end A089741.P14648898011420800705

/-! ## A089741.P13748943469615908732

`A089736(n)-A044941(A000079(n))`
-/

namespace A089741.P13748943469615908732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089736 n - A044941 (A000079 n).toNat

end

end A089741.P13748943469615908732

/-! ## A089741.P16378233527901076785

`A048266(A089736(n))`
-/

namespace A089741.P16378233527901076785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048266 (A089736 n).toNat

end

end A089741.P16378233527901076785

/-! ## A089741.P12291138660817333390

`A284103(A188644(n))+A089736(n)`
-/

namespace A089741.P12291138660817333390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284103 (A188644 n).toNat + A089736 n

end

end A089741.P12291138660817333390

/-!
# A089742: Number of subwords UHH...HD in all peakless Motzkin paths of length n+3, where U=(1,1), D=(1,-1) and H=(1,0).

The programs for A089742, the canonical program `A089742.P7656653246311879838` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089742 has offset 0).

The definition of A089742 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 242 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089742.P3711790055097367472

`A187258(n+3)`
-/

namespace A089742.P3711790055097367472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187258 (n + 3)

end

end A089742.P3711790055097367472

namespace A089742

/-- `A187258(n+3)` -/
def P3711790055097367472.Spec : Prop :=
  ∀ n, P3711790055097367472.a n = A089742 n

end A089742

/-! ## A089742.P7656653246311879838

`∑[A110236(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A089742

/-- `∑[A110236(n+1)]` -/
def P7656653246311879838.Spec : Prop :=
  ∀ n, P7656653246311879838.a n = A089742 n

theorem P7656653246311879838.correct : P7656653246311879838.Spec := by
  intro n
  simp only [A089742]

end A089742

/-! ## A089742.P3170868806367202009

`∑[record[A110236(A152271(n))]]`
-/

namespace A089742.P3170868806367202009
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110236 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089742.P3170868806367202009

namespace A089742

/-- `∑[record[A110236(A152271(n))]]` -/
def P3170868806367202009.Spec : Prop :=
  ∀ n, P3170868806367202009.a n = A089742 n

end A089742

/-! ## A089742.P3590559211054368348

`∑[A051286(n)+Δ[A166287(n+1)]]`
-/

namespace A089742.P3590559211054368348
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166287 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051286 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089742.P3590559211054368348

namespace A089742

/-- `∑[A051286(n)+Δ[A166287(n+1)]]` -/
def P3590559211054368348.Spec : Prop :=
  ∀ n, P3590559211054368348.a n = A089742 n

end A089742

/-! ## A089742.P11024757068573714781

`∑[∑[A051291(n+1)-A051286(n+1)]]`
-/

namespace A089742.P11024757068573714781
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051291 (n + 1) - A051286 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089742.P11024757068573714781

namespace A089742

/-- `∑[∑[A051291(n+1)-A051286(n+1)]]` -/
def P11024757068573714781.Spec : Prop :=
  ∀ n, P11024757068573714781.a n = A089742 n

end A089742

/-! ## A089742.P16481699603026196952

`∑[record[A110236(A020986(n))]]`
-/

namespace A089742.P16481699603026196952
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110236 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089742.P16481699603026196952

namespace A089742

/-- `∑[record[A110236(A020986(n))]]` -/
def P16481699603026196952.Spec : Prop :=
  ∀ n, P16481699603026196952.a n = A089742 n

end A089742

/-! ## A089742.P15141798745413221944

`∑[A079487(A001844(n+1))]`
-/

namespace A089742.P15141798745413221944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079487 (A001844 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089742.P15141798745413221944

namespace A089742

/-- `∑[A079487(A001844(n+1))]` -/
def P15141798745413221944.Spec : Prop :=
  ∀ n, P15141798745413221944.a n = A089742 n

end A089742

/-! ## A089742.P5920362577621146084

`∑[record[A079487(A330613(n+1))]]`
-/

namespace A089742.P5920362577621146084
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079487 (A330613 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089742.P5920362577621146084

namespace A089742

/-- `∑[record[A079487(A330613(n+1))]]` -/
def P5920362577621146084.Spec : Prop :=
  ∀ n, P5920362577621146084.a n = A089742 n

end A089742

/-!
# A089743: Numbers that are the leading digits of a palindromic prime.

The programs for A089743, there is no canonical definition to state claims against.
-/

/-! ## A089743.P2015269725568993459

`∪[A007689(n), A082768(n+1)]`
-/

namespace A089743.P2015269725568993459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007689 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082768 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A089743.P2015269725568993459

/-! ## A089743.P11800180182501814042

`∪[A013013(n), A082768(n+1)]`
-/

namespace A089743.P11800180182501814042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013013 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082768 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A089743.P11800180182501814042

/-! ## A089743.P11288595256063524643

`∪[A018012(n), A082768(n+1)]`
-/

namespace A089743.P11288595256063524643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018012 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082768 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A089743.P11288595256063524643

/-! ## A089743.P11995148351611533943

`∪[A024576(n), A082768(n+1)]`
-/

namespace A089743.P11995148351611533943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024576 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082768 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A089743.P11995148351611533943

/-! ## A089743.P2405522350328088383

`∪[A025537(n), A082768(n+1)]`
-/

namespace A089743.P2405522350328088383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025537 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082768 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A089743.P2405522350328088383

/-! ## A089743.P11088209074194086912

`∪[A026135(n), A082768(n+1)]`
-/

namespace A089743.P11088209074194086912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026135 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082768 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A089743.P11088209074194086912

/-! ## A089743.P15874895656593765235

`∪[A026580(n), A082768(n+1)]`
-/

namespace A089743.P15874895656593765235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026580 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082768 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A089743.P15874895656593765235

/-! ## A089743.P10457380274672294937

`∪[A027035(n), A082768(n+1)]`
-/

namespace A089743.P10457380274672294937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082768 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A089743.P10457380274672294937

/-! ## A089743.P7848281870543852526

`∪[A033482(n), A082768(n+1)]`
-/

namespace A089743.P7848281870543852526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033482 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082768 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A089743.P7848281870543852526

/-! ## A089743.P1955678028390366672

`∪[A082768(n+1), A036681(n)]`
-/

namespace A089743.P1955678028390366672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082768 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036681 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A089743.P1955678028390366672

/-!
# A089744: Least palindromic prime beginning with A089743(n).

The programs for A089744, there is no canonical definition to state claims against.
-/

/-! ## A089744.P8407891490280911596

`p?[A109864(n+1)]`
-/

namespace A089744.P8407891490280911596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089744.P8407891490280911596

/-! ## A089744.P11431263006846805975

`A109864(A089743(n+1))`
-/

namespace A089744.P11431263006846805975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109864 (A089743 (n + 1)).toNat

end

end A089744.P11431263006846805975

/-! ## A089744.P14994094278393949813

`filter[A109864(n+1), A014306(#)]`
-/

namespace A089744.P14994094278393949813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014306 (f1 j).toNat = 1) n)

end

end A089744.P14994094278393949813

/-! ## A089744.P17467415011158324138

`filter[A109864(n+1), A098725(#)]`
-/

namespace A089744.P17467415011158324138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A089744.P17467415011158324138

/-! ## A089744.P8604263279397074976

`filter[A109864(n+1), A166486(#)]`
-/

namespace A089744.P8604263279397074976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A089744.P8604263279397074976

/-!
# A089745: a(n) = direuler(p=2,n,1/(1-X)/(1-p*n*X))[n].

The programs for A089745, there is no canonical definition to state claims against.
-/

/-! ## A089745.P4597143931807734250

`∑{d}[n+1, #*(n+1)^A001222(#)]`
-/

namespace A089745.P4597143931807734250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℚ) * (n + 1 : ℚ) ^ (A001222 d : ℤ)

end

end A089745.P4597143931807734250

/-!
# A089747: Numbers n such that n^2 - 2n + 5 is prime.

The programs for A089747, there is no canonical definition to state claims against.
-/

/-! ## A089747.P7376039674028986581

`A007591(round(sqrt(n²+1)))+n-abs(1-n)`
-/

namespace A089747.P7376039674028986581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007591 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + ((n : ℤ) - |1 - (n : ℤ)|)

end

end A089747.P7376039674028986581

/-! ## A089747.P6605109456256671027

`A158388(n)+A007591(A028310(n))`
-/

namespace A089747.P6605109456256671027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n + A007591 (A028310 n).toNat

end

end A089747.P6605109456256671027

/-! ## A089747.P7175305569680082136

`(A007591(A028310(n))+1)*A057427(n)`
-/

namespace A089747.P7175305569680082136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007591 (A028310 n).toNat + 1) * A057427 n

end

end A089747.P7175305569680082136

/-! ## A089747.P7009035614221696735

`(A007591(A028310(n))+1)%A001844(n)`
-/

namespace A089747.P7009035614221696735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007591 (A028310 n).toNat + 1) (A001844 n)

end

end A089747.P7009035614221696735

/-! ## A089747.P4013638172406988219

`(A007591(A028310(n))+1)*A197353(round(n/(n+1)))`
-/

namespace A089747.P4013638172406988219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007591 (A028310 n).toNat + 1) * A197353 (SequenceMachineLib.roundAway ((n : ℚ) / (n + 1 : ℚ))).toNat

end

end A089747.P4013638172406988219

/-! ## A089747.P5916411818807813791

`(A007591(A028310(n))+1)*A053615(round(n/(n+1))²)`
-/

namespace A089747.P5916411818807813791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007591 (A028310 n).toNat + 1) * A053615 (SequenceMachineLib.roundAway ((n : ℚ) / (n + 1 : ℚ)) ^ 2).toNat

end

end A089747.P5916411818807813791

/-! ## A089747.P742101760329737366

`record[A007591(A260739(n+1))-A033999(n)]`
-/

namespace A089747.P742101760329737366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007591 (A260739 (n + 1)).toNat - A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089747.P742101760329737366

/-! ## A089747.P17757711421188961278

`eq[1, ∑{e}[(1-n)²+4, #]]`
-/

namespace A089747.P17757711421188961278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2 + 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A089747.P17757711421188961278

/-! ## A089747.P11376248792321756822

`lt[∑{e}[(1-n)²+4, #], 2]`
-/

namespace A089747.P11376248792321756822
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2 + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A089747.P11376248792321756822

/-! ## A089747.P4316470747311344372

`eq[2, A000005((1-n)²+4)]`
-/

namespace A089747.P4316470747311344372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((1 - (n : ℤ)) ^ 2 + 4).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089747.P4316470747311344372

/-!
# A089748: Numbers k that divide (sum of proper divisors of k + product of proper divisors of k).

The programs for A089748, there is no canonical definition to state claims against.
-/

/-! ## A089748.P2087408304635764983

`lcm(2, A007691(n+1))`
-/

namespace A089748.P2087408304635764983
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A007691 (n + 1))

end

end A089748.P2087408304635764983

/-! ## A089748.P10737535856358465048

`lcm(4, A194771(n+1))/2`
-/

namespace A089748.P10737535856358465048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 4 (A194771 (n + 1)) : ℚ) / 2

end

end A089748.P10737535856358465048

/-! ## A089748.P2460674850927903325

`A007691(n%a(n-1)+1)` with `a(0)=2`
-/

namespace A089748.P2460674850927903325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A007691 (Int.tmod (n : ℤ) (a (n - 1)) + 1).toNat

end

end A089748.P2460674850927903325

/-! ## A089748.P14237593092150693357

`A007691(floor(atan(a(n-1)+1)+n))` with `a(0)=2`
-/

namespace A089748.P14237593092150693357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A007691 ⌊Real.arctan (a (n - 1) + 1 : ℝ) + (n : ℝ)⌋.toNat

end

end A089748.P14237593092150693357

/-! ## A089748.P6105984053373962701

`A007691(n+1)+A000007(n)`
-/

namespace A089748.P6105984053373962701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007691 (n + 1) + A000007 n

end

end A089748.P6105984053373962701

/-!
# A089749: a(n) = smallest m > a(n-1) such that concatenation nm is a prime.

The programs for A089749, there is no canonical definition to state claims against.
-/

/-! ## A089749.P14461449523248240832

`A089798(A260680(n+1))+A032667(n+1)`
-/

namespace A089749.P14461449523248240832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089798 (A260680 (n + 1)).toNat + A032667 (n + 1)

end

end A089749.P14461449523248240832

/-! ## A089749.P6308472303261646052

`A032667(n+1)-A089798(A050682(n+3))`
-/

namespace A089749.P6308472303261646052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032667 (n + 1) - A089798 (A050682 (n + 3)).toNat

end

end A089749.P6308472303261646052

/-! ## A089749.P17390308401939487017

`eq[2, A249800(∑[A014963(2*n+5)])]`
-/

namespace A089749.P17390308401939487017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249800 (∑ j ∈ Finset.range (n + 1), f3 j).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089749.P17390308401939487017

/-! ## A089749.P7073455251640133309

`A032667(A032555(n+1))-A185348(A008619(n))`
-/

namespace A089749.P7073455251640133309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032667 (A032555 (n + 1)).toNat - A185348 (A008619 n).toNat

end

end A089749.P7073455251640133309

/-! ## A089749.P708366807397101371

`A032667(A032555(n+1))-A185348(A003602(n+1))`
-/

namespace A089749.P708366807397101371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032667 (A032555 (n + 1)).toNat - A185348 (A003602 (n + 1)).toNat

end

end A089749.P708366807397101371

/-!
# A089753: Number of projections of alternating knots and links with n crossings.

The programs for A089753, there is no canonical definition to state claims against.
-/

/-! ## A089753.P1857327442765401031

`A192112(A271839(3*n))+A113201(n+4)`
-/

namespace A089753.P1857327442765401031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192112 (A271839 (3 * n)).toNat + A113201 (n + 4)

end

end A089753.P1857327442765401031

/-! ## A089753.P6932554782655566658

`A344618(A008592(n))+A000988(n)`
-/

namespace A089753.P6932554782655566658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344618 (A008592 n).toNat + A000988 n

end

end A089753.P6932554782655566658

/-! ## A089753.P17199734936976910847

`A309992(n)+A105518(A030017(n+1))`
-/

namespace A089753.P17199734936976910847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309992 n + A105518 (A030017 (n + 1)).toNat

end

end A089753.P17199734936976910847

/-! ## A089753.P18213912323367294162

`A327642(n)+A105518(A030017(n+1))`
-/

namespace A089753.P18213912323367294162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327642 n + A105518 (A030017 (n + 1)).toNat

end

end A089753.P18213912323367294162

/-!
# A089754: Smallest prime ending (least significant side) in n if possible else beginning in n.

The programs for A089754, there is no canonical definition to state claims against.
-/

/-! ## A089754.P15396991183448488629

`A062584(A077342(n+1))%record[A062584(n²)]`
-/

namespace A089754.P15396991183448488629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062584 (A077342 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A089754.P15396991183448488629

/-! ## A089754.P182916923881351183

`A062584(A077342(n+1))+A000038(A048162(n))`
-/

namespace A089754.P182916923881351183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 (A077342 (n + 1)).toNat + A000038 (A048162 n).toNat

end

end A089754.P182916923881351183

/-! ## A089754.P15538883536833849442

`A040001(A108411(n))*A062584(A077342(n+1))`
-/

namespace A089754.P15538883536833849442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A108411 n).toNat * A062584 (A077342 (n + 1)).toNat

end

end A089754.P15538883536833849442

/-! ## A089754.P1846732884524711634

`A062584(A077342(n+1))+A000038(A163673(n+1))`
-/

namespace A089754.P1846732884524711634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 (A077342 (n + 1)).toNat + A000038 (A163673 (n + 1)).toNat

end

end A089754.P1846732884524711634

/-!
# A089755: a(1)=11; for n>1, a(n) is the smallest prime not occurring earlier beginning with a(n-1) without its first digit. Single-digit primes are not allowed unless they arise from the previous term as multi-digit number with leading zero(s) (i.e., a(n-1) has 0 as second digit) which are remembered for the subsequent left-truncations.

The programs for A089755, there is no canonical definition to state claims against.
-/

/-! ## A089755.P16782612293941901428

`A262254(A061147(n+1))`
-/

namespace A089755.P16782612293941901428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262254 (A061147 (n + 1)).toNat

end

end A089755.P16782612293941901428

/-! ## A089755.P11641439919159455068

`A262254(A061497(n+1))`
-/

namespace A089755.P11641439919159455068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262254 (A061497 (n + 1)).toNat

end

end A089755.P11641439919159455068

/-! ## A089755.P5618180398084712907

`A262254(A062003(n+1))`
-/

namespace A089755.P5618180398084712907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262254 (A062003 (n + 1)).toNat

end

end A089755.P5618180398084712907

/-! ## A089755.P17326173341131507771

`A262254(A062399(n)+1)`
-/

namespace A089755.P17326173341131507771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262254 (A062399 n + 1).toNat

end

end A089755.P17326173341131507771

/-! ## A089755.P6810719881721829838

`A262254(A074156(n+1))`
-/

namespace A089755.P6810719881721829838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262254 (A074156 (n + 1)).toNat

end

end A089755.P6810719881721829838

/-!
# A089756: a(1)=1 and a(i+1)=a(i)+9 if a(i)<=35, and a(i+1)=a(i)-35 if a(i)>35.

The programs for A089756, the canonical program `A089756.P12318471020581454238` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089756 has offset 1).

The definition of A089756 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089756.P12318471020581454238

`(9*n)%44+1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A089756

/-- `(9*n)%44+1` -/
def P12318471020581454238.Spec : Prop :=
  ∀ n, (P12318471020581454238.a n : ℤ) = A089756 (n + 1)

theorem P12318471020581454238.correct : P12318471020581454238.Spec := by
  intro n
  simp only [A089756, Nat.add_sub_cancel]

end A089756

/-!
# A089759: Table T(n,k), 0<=k, 0<=n, read by antidiagonals, defined by T(n,k) = (k*n)! / (n!)^k.

The programs for A089759, the canonical program `A089759.P9061159449672512398` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089759 has offset 0).

The definition of A089759 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A089759.P9061159449672512398

`((row(n)-col(n))*col(n))!/col(n)!^(row(n)-col(n))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A089759

/-- `((row(n)-col(n))*col(n))!/col(n)!^(row(n)-col(n))` -/
def P9061159449672512398.Spec : Prop :=
  ∀ n, P9061159449672512398.a n = (A089759 n : ℚ)

end A089759

/-! ## A089759.P7206377347201685528

`A187783(∑[2*n]%comp[∑[n]])`
-/

namespace A089759.P7206377347201685528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187783 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A089759.P7206377347201685528

namespace A089759

/-- `A187783(∑[2*n]%comp[∑[n]])` -/
def P7206377347201685528.Spec : Prop :=
  ∀ n, P7206377347201685528.a n = A089759 n

end A089759

/-! ## A089759.P1424577065820013807

`A187783(∑[char[∑[n]]]²-n-1)`
-/

namespace A089759.P1424577065820013807
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187783 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A089759.P1424577065820013807

namespace A089759

/-- `A187783(∑[char[∑[n]]]²-n-1)` -/
def P1424577065820013807.Spec : Prop :=
  ∀ n, P1424577065820013807.a n = A089759 n

end A089759

/-! ## A089759.P7696853656219724590

`or(A010054(n), A187783(A061579(n)))`
-/

namespace A089759.P7696853656219724590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 n) (A187783 (A061579 n).toNat)

end

end A089759.P7696853656219724590

namespace A089759

/-- `or(A010054(n), A187783(A061579(n)))` -/
def P7696853656219724590.Spec : Prop :=
  ∀ n, P7696853656219724590.a n = A089759 n

end A089759

/-! ## A089759.P14937589880316137763

`A306641(n)/A309010(n)`
-/

namespace A089759.P14937589880316137763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306641 n : ℚ) / (A309010 n : ℚ)

end

end A089759.P14937589880316137763

namespace A089759

/-- `A306641(n)/A309010(n)` -/
def P14937589880316137763.Spec : Prop :=
  ∀ n, P14937589880316137763.a n = (A089759 n : ℚ)

end A089759

/-! ## A089759.P12439892161433676762

`(col(n)*(row(n)-col(n)))!/col(n)!^(row(n)-col(n))`
-/

namespace A089759.P12439892161433676762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ((SequenceMachineLib.triCol n : ℤ) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ))).toNat : ℚ) / (Nat.factorial (SequenceMachineLib.triCol n) : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ)

end

end A089759.P12439892161433676762

namespace A089759

/-- `(col(n)*(row(n)-col(n)))!/col(n)!^(row(n)-col(n))` -/
def P12439892161433676762.Spec : Prop :=
  ∀ n, P12439892161433676762.a n = (A089759 n : ℚ)

end A089759

/-! ## A089759.P6718314346929207660

`A187783(A061579(n))+floor(n/A000351(n))`
-/

namespace A089759.P6718314346929207660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187783 (A061579 n).toNat + ⌊(n : ℚ) / (A000351 n : ℚ)⌋

end

end A089759.P6718314346929207660

namespace A089759

/-- `A187783(A061579(n))+floor(n/A000351(n))` -/
def P6718314346929207660.Spec : Prop :=
  ∀ n, P6718314346929207660.a n = A089759 n

end A089759

/-!
# A089762: a(1) = 1, then nonzero digits (1 to 9) such that every n-th concatenation is prime if n is prime else it is composite. The previous digits are so chosen that a single digit with prime index gives a prime.

The programs for A089762, there is no canonical definition to state claims against.
-/

/-! ## A089762.P11794211512985291813

`gcd(A025480(A018163(n)), A061800(n))`
-/

namespace A089762.P11794211512985291813
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025480 (A018163 n).toNat) (A061800 n)

end

end A089762.P11794211512985291813

/-!
# A089763: a(1) = 1, then the least n-digit prime such that the k-th digit from the Most significant side is prime if k is prime else is composite. The most significant digit is always a 1. 0 if no such prime exists.

The programs for A089763, there is no canonical definition to state claims against.
-/

/-! ## A089763.P18161508642036136822

`A005408(xor(A071172(n), A318974(n+1)))`
-/

namespace A089763.P18161508642036136822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (Int.xor (A071172 n) (A318974 (n + 1))).toNat

end

end A089763.P18161508642036136822

/-!
# A089766: Smallest prime obtained as k*n! concatenated with a 1 for some k.

The programs for A089766, there is no canonical definition to state claims against.
-/

/-! ## A089766.P1206526907923326107

`A070846(5*n!)`
-/

namespace A089766.P1206526907923326107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070846 (5 * Nat.factorial n)

end

end A089766.P1206526907923326107

/-! ## A089766.P16845002365620054034

`A070846(A008587(n!))`
-/

namespace A089766.P16845002365620054034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070846 (A008587 (Nat.factorial n)).toNat

end

end A089766.P16845002365620054034

/-! ## A089766.P16020473394993242366

`A070846(A008706(n!))`
-/

namespace A089766.P16020473394993242366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070846 (A008706 (Nat.factorial n)).toNat

end

end A089766.P16020473394993242366

/-! ## A089766.P16788979497052071318

`A070846(A173319(n)-1)`
-/

namespace A089766.P16788979497052071318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070846 (A173319 n - 1).toNat

end

end A089766.P16788979497052071318

/-!
# A089767: Squares which when concatenated with a 1 gives prime.

The programs for A089767, there is no canonical definition to state claims against.
-/

/-! ## A089767.P9532191159883179361

`floor(A201709(n+1)/10)`
-/

namespace A089767.P9532191159883179361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A201709 (n + 1) : ℚ) / 10⌋

end

end A089767.P9532191159883179361

/-! ## A089767.P7284955932225136033

`round(A201709(1+n)/10)`
-/

namespace A089767.P7284955932225136033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A201709 (1 + n) : ℚ) / 10)

end

end A089767.P7284955932225136033

/-! ## A089767.P7289191413029561422

`ceil(A008683(A008578(n+4))+A201709(n+1)/10)`
-/

namespace A089767.P7289191413029561422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008683 (A008578 (n + 4)).toNat : ℚ) + (A201709 (n + 1) : ℚ) / 10⌉

end

end A089767.P7289191413029561422

/-! ## A089767.P7225012612599082686

`ceil(A201709(n+1)/10-A342892(A000290(n)))`
-/

namespace A089767.P7225012612599082686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A201709 (n + 1) : ℚ) / 10 - (A342892 (A000290 n).toNat : ℚ)⌉

end

end A089767.P7225012612599082686

/-! ## A089767.P6208971032011288713

`floor(p?[10*n²+1]/10)`
-/

namespace A089767.P6208971032011288713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 10⌋

end

end A089767.P6208971032011288713

/-! ## A089767.P7970885187394802037

`∩[A179445(n+1), n²]`
-/

namespace A089767.P7970885187394802037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179445 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A089767.P7970885187394802037

/-! ## A089767.P13446578553346024940

`∩[A000290(n), A179445(n+1)]`
-/

namespace A089767.P13446578553346024940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179445 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089767.P13446578553346024940

/-!
# A089770: Smallest n-digit prime containing no prime substrings, or 0 if no such number exists.

The programs for A089770, there is no canonical definition to state claims against.
-/

/-! ## A089770.P9926197484244165324

`A213305(∑[n]+n)`
-/

namespace A089770.P9926197484244165324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213305 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A089770.P9926197484244165324

/-! ## A089770.P6867772541525609171

`record[A103452(n)*A213305(n)]`
-/

namespace A089770.P6867772541525609171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n * A213305 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089770.P6867772541525609171

/-! ## A089770.P1919065778186869403

`record[A104984(n)*A213305(n)]`
-/

namespace A089770.P1919065778186869403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104984 n * A213305 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089770.P1919065778186869403

/-! ## A089770.P4342530280924412448

`record[A132013(n)*A213305(n)]`
-/

namespace A089770.P4342530280924412448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132013 n * A213305 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089770.P4342530280924412448

/-! ## A089770.P3720626677868280637

`record[A213305(n)/A038303(n)]`
-/

namespace A089770.P3720626677868280637
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213305 n : ℚ) / (A038303 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089770.P3720626677868280637

/-!
# A089772: a(n) = Lucas(11*n).

The programs for A089772, the canonical program `A089772.P10457923420514491346` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089772 has offset 0).

The definition of A089772 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000032(11*n)` (program `A089772.P10457923420514491346`, by `A089772.P10457923420514491346.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A089772.P980850548490416021

`199*a(n-1)+a(n-2)` with `a(0)=2, a(1)=199`
-/

namespace A089772.P980850548490416021
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 199] fun n a =>
  199 * a (n - 1) + a (n - 2)

end

end A089772.P980850548490416021

namespace A089772

/-- `199*a(n-1)+a(n-2)` -/
def P980850548490416021.Spec : Prop :=
  ∀ n, (P980850548490416021.a n : ℤ) = A089772 n

end A089772

/-! ## A089772.P10457923420514491346

`A000032(11*n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A089772

/-- `A000032(11*n)` -/
def P10457923420514491346.Spec : Prop :=
  ∀ n, P10457923420514491346.a n = A089772 n

theorem P10457923420514491346.correct : P10457923420514491346.Spec := by
  intro n
  simp only [A089772]

end A089772

/-! ## A089772.P8247104592487000782

`A127218(22*n)`
-/

namespace A089772.P8247104592487000782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127218 (22 * n)

end

end A089772.P8247104592487000782

namespace A089772

/-- `A127218(22*n)` -/
def P8247104592487000782.Spec : Prop :=
  ∀ n, P8247104592487000782.a n = A089772 n

end A089772

/-! ## A089772.P16440553493886899567

`A303427(22*n)`
-/

namespace A089772.P16440553493886899567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303427 (22 * n)

end

end A089772.P16440553493886899567

namespace A089772

/-- `A303427(22*n)` -/
def P16440553493886899567.Spec : Prop :=
  ∀ n, P16440553493886899567.a n = A089772 n

end A089772

/-! ## A089772.P6251878802644706858

`A001612(11*n)-1`
-/

namespace A089772.P6251878802644706858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001612 (11 * n) - 1

end

end A089772.P6251878802644706858

namespace A089772

/-- `A001612(11*n)-1` -/
def P6251878802644706858.Spec : Prop :=
  ∀ n, P6251878802644706858.a n = A089772 n

end A089772

/-!
# A089774: Primes of the form 1 followed by powers of 3.

The programs for A089774, there is no canonical definition to state claims against.
-/

/-! ## A089774.P7972878529800574664

`p?[A162672(3^n)]`
-/

namespace A089774.P7972878529800574664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162672 (3 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089774.P7972878529800574664

/-! ## A089774.P14641812364667950892

`p?[A321485(3^n)]`
-/

namespace A089774.P14641812364667950892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321485 (3 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089774.P14641812364667950892

/-!
# A089775: Lucas numbers L(12n).

The programs for A089775, the canonical program `A089775.P12510251531301566036` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089775 has offset 0).

The definition of A089775 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A089775.P12510251531301566036

`322*a(n-1)-a(n-2)` with `a(0)=2, a(1)=322`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A089775

/-- `322*a(n-1)-a(n-2)` -/
def P12510251531301566036.Spec : Prop :=
  ∀ n, P12510251531301566036.a n = A089775 n

theorem P12510251531301566036.correct : P12510251531301566036.Spec := by
  intro n
  simp only [A089775]

end A089775

/-! ## A089775.P10869069466587321299

`A000032(12*n)`
-/

namespace A089775.P10869069466587321299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (12 * n)

end

end A089775.P10869069466587321299

namespace A089775

/-- `A000032(12*n)` -/
def P10869069466587321299.Spec : Prop :=
  ∀ n, P10869069466587321299.a n = A089775 n

end A089775

/-! ## A089775.P6059485818670329393

`lcm(2, ceil(ϕ^(6*n)))²-2`
-/

namespace A089775.P6059485818670329393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 ⌈Real.goldenRatio ^ (6 * n)⌉ ^ 2 : ℤ) - 2

end

end A089775.P6059485818670329393

namespace A089775

/-- `lcm(2, ceil(ϕ^(6*n)))²-2` -/
def P6059485818670329393.Spec : Prop :=
  ∀ n, P6059485818670329393.a n = A089775 n

end A089775

/-! ## A089775.P9249305444721586174

`xor(3, floor(ϕ^(6*n)))²-2`
-/

namespace A089775.P9249305444721586174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 ⌊Real.goldenRatio ^ (6 * n)⌋ ^ 2 - 2

end

end A089775.P9249305444721586174

namespace A089775

/-- `xor(3, floor(ϕ^(6*n)))²-2` -/
def P9249305444721586174.Spec : Prop :=
  ∀ n, P9249305444721586174.a n = A089775 n

end A089775

/-! ## A089775.P9121280834927147363

`(2+sqrt(5))^(4*n)+(2-sqrt(5))^(4*n)`
-/

namespace A089775.P9121280834927147363
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 + Real.sqrt (5 : ℝ)) ^ (4 * n) + (2 - Real.sqrt (5 : ℝ)) ^ (4 * n)

end

end A089775.P9121280834927147363

namespace A089775

/-- `(2+sqrt(5))^(4*n)+(2-sqrt(5))^(4*n)` -/
def P9121280834927147363.Spec : Prop :=
  ∀ n, P9121280834927147363.a n = (A089775 n : ℝ)

end A089775

/-!
# A089776: If n mod 10 is 1, 3, 7, or 9, then a(n) = least prime of the form 1 followed by n^r; else a(n) = least prime of the form n^r followed by a 1. In both cases r must be > 1 and a(n) = 0 if no such prime exists.

The programs for A089776, there is no canonical definition to state claims against.
-/

/-! ## A089776.P7238660861897809812

`A224321(A033317(2*n+5)+n+1)`
-/

namespace A089776.P7238660861897809812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224321 (A033317 (2 * n + 5) + (n + 1 : ℤ)).toNat

end

end A089776.P7238660861897809812

/-!
# A089777: a(n) = smallest prime of the form n followed by a prime.

The programs for A089777, there is no canonical definition to state claims against.
-/

/-! ## A089777.P16229338785964525785

`A007918(A287384(n)+10*n+11)`
-/

namespace A089777.P16229338785964525785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A287384 n + (10 * n + 11 : ℤ)).toNat

end

end A089777.P16229338785964525785

/-! ## A089777.P12893759959466672982

`A266620(10*n+11)%A266228(3*n+11)`
-/

namespace A089777.P12893759959466672982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266620 (10 * n + 11)) (A266228 (3 * n + 11))

end

end A089777.P12893759959466672982

/-! ## A089777.P6706214684261408743

`A096915(A096915(n+1)!)+A017341(n)`
-/

namespace A089777.P6706214684261408743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096915 (Nat.factorial (A096915 (n + 1)).toNat) + A017341 n

end

end A089777.P6706214684261408743

/-! ## A089777.P6193910350520203093

`A006530(A129116(2*(n+1))*A151800(10*n+11))`
-/

namespace A089777.P6193910350520203093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A129116 (2 * (n + 1)) * A151800 (10 * n + 11)).toNat

end

end A089777.P6193910350520203093

/-! ## A089777.P6706447935800530730

`A093413(A168224(n+3)+n)`
-/

namespace A089777.P6706447935800530730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093413 (A168224 (n + 3) + (n : ℤ)).toNat

end

end A089777.P6706447935800530730

/-!
# A089779: Let n range through the odd numbers skipping multiples of 5; a(n) = n-th prime ending in n.

The programs for A089779, there is no canonical definition to state claims against.
-/

/-! ## A089779.P7391400468923395644

`A110406(A008245(n))`
-/

namespace A089779.P7391400468923395644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110406 (A008245 n).toNat

end

end A089779.P7391400468923395644

/-!
# A089780: Lexicographically earliest sequence of nonnegative integers such that concatenation of n terms beginning with a(n) is prime.

The programs for A089780, there is no canonical definition to state claims against.
-/

/-! ## A089780.P13830011916356839542

`A165810(A153982(n))%A040544(n)`
-/

namespace A089780.P13830011916356839542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165810 (A153982 n).toNat) (A040544 n)

end

end A089780.P13830011916356839542

/-! ## A089780.P15118144328719019064

`A272207(n+1)%A010199(A000129(n))`
-/

namespace A089780.P15118144328719019064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A272207 (n + 1)) (A010199 (A000129 n).toNat)

end

end A089780.P15118144328719019064

/-! ## A089780.P15886513693229179466

`A286268(A124459(n+1))%A010199(n)`
-/

namespace A089780.P15886513693229179466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286268 (A124459 (n + 1)).toNat) (A010199 n)

end

end A089780.P15886513693229179466

/-!
# A089781: Successive coprime numbers with distinct successive differences: gcd(a(k+1),a(k)) = gcd(a(m+1),a(m)) = 1 and a(k+1)-a(k) = a(m+1)-a(m) <==> m=k.

The programs for A089781, the canonical program `A089781.P7890574848929628783` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089781 has offset 1).

The definition of A089781 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089781.P7890574848929628783

`∑[n]+gcd(4, n)%3`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A089781

/-- `∑[n]+gcd(4, n)%3` -/
def P7890574848929628783.Spec : Prop :=
  ∀ n, (P7890574848929628783.a n : ℤ) = A089781 (n + 1)

theorem P7890574848929628783.correct : P7890574848929628783.Spec := by
  intro n
  simp only [A089781, Nat.add_sub_cancel]

end A089781

/-! ## A089781.P303366211752486089

`∑[xor(n, char[or(2, n)])]+1`
-/

namespace A089781.P303366211752486089
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A089781.P303366211752486089

namespace A089781

/-- `∑[xor(n, char[or(2, n)])]+1` -/
def P303366211752486089.Spec : Prop :=
  ∀ n, (P303366211752486089.a n : ℤ) = A089781 (n + 1)

end A089781

/-! ## A089781.P7466958204518648676

`or(∑[n]+1, (n+1)%2)`
-/

namespace A089781.P7466958204518648676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (∑ j ∈ Finset.range (n + 1), f1 j + 1) ((n + 1) % 2)

end

end A089781.P7466958204518648676

namespace A089781

/-- `or(∑[n]+1, (n+1)%2)` -/
def P7466958204518648676.Spec : Prop :=
  ∀ n, (P7466958204518648676.a n : ℤ) = A089781 (n + 1)

end A089781

/-! ## A089781.P7186028827049953732

`or(∑[n]+1, and(1, n+1))`
-/

namespace A089781.P7186028827049953732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (∑ j ∈ Finset.range (n + 1), f1 j + 1) (Nat.land 1 (n + 1))

end

end A089781.P7186028827049953732

namespace A089781

/-- `or(∑[n]+1, and(1, n+1))` -/
def P7186028827049953732.Spec : Prop :=
  ∀ n, (P7186028827049953732.a n : ℤ) = A089781 (n + 1)

end A089781

/-! ## A089781.P12616097779073515310

`char[4*n+2]+∑[n]+1`
-/

namespace A089781.P12616097779073515310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + (∑ j ∈ Finset.range (n + 1), f2 j + 1)

end

end A089781.P12616097779073515310

namespace A089781

/-- `char[4*n+2]+∑[n]+1` -/
def P12616097779073515310.Spec : Prop :=
  ∀ n, (P12616097779073515310.a n : ℤ) = A089781 (n + 1)

end A089781

/-! ## A089781.P16727027633866442642

`∑[a(n-4)+4]` with `a(0)=1, a(1)=1, a(2)=3, a(3)=2, a(4)=4`
-/

namespace A089781.P16727027633866442642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3, 2, 4] fun n f1 =>
  f1 (n - 4) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089781.P16727027633866442642

namespace A089781

/-- `∑[a(n-4)+4]` -/
def P16727027633866442642.Spec : Prop :=
  ∀ n, (P16727027633866442642.a n : ℤ) = A089781 (n + 1)

end A089781

/-! ## A089781.P15600425840451536563

`or(A000217(n)+1, A059841(n))`
-/

namespace A089781.P15600425840451536563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000217 n + 1) (A059841 n)

end

end A089781.P15600425840451536563

namespace A089781

/-- `or(A000217(n)+1, A059841(n))` -/
def P15600425840451536563.Spec : Prop :=
  ∀ n, P15600425840451536563.a n = A089781 (n + 1)

end A089781

/-! ## A089781.P14942117950066156679

`or(1-A000035(n), A000124(n))`
-/

namespace A089781.P14942117950066156679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (1 - A000035 n) (A000124 n)

end

end A089781.P14942117950066156679

namespace A089781

/-- `or(1-A000035(n), A000124(n))` -/
def P14942117950066156679.Spec : Prop :=
  ∀ n, P14942117950066156679.a n = A089781 (n + 1)

end A089781

/-!
# A089782: Smallest prime of the form prime(k) concatenated with prime(k+n).

The programs for A089782, there is no canonical definition to state claims against.
-/

/-! ## A089782.P14761249043378376966

`A090312(and(A061931(n+1), A377256(3*(n+1))))`
-/

namespace A089782.P14761249043378376966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090312 (Int.land (A061931 (n + 1)) (A377256 (3 * (n + 1)))).toNat

end

end A089782.P14761249043378376966

/-!
# A089785: a(n) is the least prime(k) such that the concatenation of prime(k) and prime(k-n) is prime.

The programs for A089785, there is no canonical definition to state claims against.
-/

/-! ## A089785.P8226552227696223266

`A000040(A183014((n+1)²)+n+2)`
-/

namespace A089785.P8226552227696223266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A183014 ((n + 1) ^ 2) + (n + 2 : ℤ)).toNat

end

end A089785.P8226552227696223266

/-! ## A089785.P12870512007614589458

`A186685(A001470(n))+A000040(n+3)`
-/

namespace A089785.P12870512007614589458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186685 (A001470 n).toNat + A000040 (n + 3)

end

end A089785.P12870512007614589458

/-! ## A089785.P7688225461900254177

`A187794(A094976(n))+A000040(n+3)`
-/

namespace A089785.P7688225461900254177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187794 (A094976 n).toNat + A000040 (n + 3)

end

end A089785.P7688225461900254177

/-! ## A089785.P12404817471459089005

`A006530(A090076(n+1)*A193861(n))`
-/

namespace A089785.P12404817471459089005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A090076 (n + 1) * A193861 n).toNat

end

end A089785.P12404817471459089005

/-! ## A089785.P2999426265253764659

`A186685(A287892(n))+A049561(n+3)`
-/

namespace A089785.P2999426265253764659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186685 (A287892 n).toNat + A049561 (n + 3)

end

end A089785.P2999426265253764659

/-!
# A089787: a(4n-3), a(4n-2), a(4n-1), and a(4n) are the units digit of the n-th prime followed by 1, 3, 7, and 9 respectively.

The programs for A089787, there is no canonical definition to state claims against.
-/

/-! ## A089787.P5621264367150138559

`A065520(A187829(n+1)+10)`
-/

namespace A089787.P5621264367150138559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065520 (A187829 (n + 1) + 10).toNat

end

end A089787.P5621264367150138559

/-! ## A089787.P12786512031663868780

`A065520(A077168(n)+10)`
-/

namespace A089787.P12786512031663868780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065520 (A077168 n + 10).toNat

end

end A089787.P12786512031663868780

/-!
# A089789: Number of irreducible factors of Gauss polynomials.

The programs for A089789, there is no canonical definition to state claims against.
-/

/-! ## A089789.P7133641252223617166

`∑{e}[A022166(n)%A016755(n), #]`
-/

namespace A089789.P7133641252223617166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022166 n) (A016755 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A089789.P7133641252223617166

/-! ## A089789.P2749320305391292353

`∑{e}[A022166(n), #]`
-/

namespace A089789.P2749320305391292353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022166 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A089789.P2749320305391292353

/-! ## A089789.P2810359223353952094

`log2(∏{e}[A022166(n), A000070(#)])`
-/

namespace A089789.P2810359223353952094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022166 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000070 (Nat.factorization (f1 n).natAbs p) : ℤ) : ℝ)

end

end A089789.P2810359223353952094

/-! ## A089789.P14624187550654764654

`log2(∏{e}[A022166(n), A139582(#)])`
-/

namespace A089789.P14624187550654764654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022166 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, A139582 (Nat.factorization (f1 n).natAbs p) : ℤ) : ℝ)

end

end A089789.P14624187550654764654

/-! ## A089789.P17957829502932253091

`A056239(∏{e}[A022166(n), #+1])`
-/

namespace A089789.P17957829502932253091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022166 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1))

end

end A089789.P17957829502932253091

/-!
# A089791: Number of projections of rational knots with n crossings.

The programs for A089791, there is no canonical definition to state claims against.
-/

/-! ## A089791.P9156760916526281173

`A008619(or(A148515(n), A294811(n)))`
-/

namespace A089791.P9156760916526281173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.lor (A148515 n) (A294811 n)).toNat

end

end A089791.P9156760916526281173

/-! ## A089791.P6168510287175365658

`A220413(A266012(n+5)+A007717(n))`
-/

namespace A089791.P6168510287175365658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220413 (A266012 (n + 5) + A007717 n).toNat

end

end A089791.P6168510287175365658

/-! ## A089791.P12442630986754325137

`A008651(A008475(n+1)*A215338(n+1))`
-/

namespace A089791.P12442630986754325137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (A008475 (n + 1) * A215338 (n + 1)).toNat

end

end A089791.P12442630986754325137

/-! ## A089791.P17647617251590789201

`A083382(A248119(n)+A000005(2*(n+2)))`
-/

namespace A089791.P17647617251590789201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083382 (A248119 (n + 19) + A000005 (2 * (n + 2))).toNat

end

end A089791.P17647617251590789201

/-!
# A089792: a(n) = n - (exponent of highest power of 3 dividing n!).

The programs for A089792, the canonical program `A089792.P9464686631977204043` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089792 has offset 0).

The definition of A089792 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A089792.P9464686631977204043

`n-A054861(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A089792

/-- `n-A054861(n)` -/
def P9464686631977204043.Spec : Prop :=
  ∀ n, P9464686631977204043.a n = A089792 n

theorem P9464686631977204043.correct : P9464686631977204043.Spec := by
  intro n
  simp only [A089792]

end A089792

/-! ## A089792.P11853245502052649821

`a(n-1)+1-A007949(n)` with `a(0)=0`
-/

namespace A089792.P11853245502052649821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 1 - A007949 n

end

end A089792.P11853245502052649821

namespace A089792

/-- `a(n-1)+1-A007949(n)` -/
def P11853245502052649821.Spec : Prop :=
  ∀ n, P11853245502052649821.a n = A089792 n

end A089792

/-! ## A089792.P1216570440843372840

`n-val(n!, 3)`
-/

namespace A089792.P1216570440843372840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.valuation (Nat.factorial n) 3 : ℤ)

end

end A089792.P1216570440843372840

namespace A089792

/-- `n-val(n!, 3)` -/
def P1216570440843372840.Spec : Prop :=
  ∀ n, P1216570440843372840.a n = A089792 n

end A089792

/-! ## A089792.P5789750255237925923

`a(n-1)+1-val(n, 3)` with `a(0)=0`
-/

namespace A089792.P5789750255237925923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (1 - (SequenceMachineLib.valuation n 3 : ℤ))

end

end A089792.P5789750255237925923

namespace A089792

/-- `a(n-1)+1-val(n, 3)` -/
def P5789750255237925923.Spec : Prop :=
  ∀ n, P5789750255237925923.a n = A089792 n

end A089792

/-! ## A089792.P2804004265749517050

`1-(val(n, 3)-a(n-1))` with `a(0)=0`
-/

namespace A089792.P2804004265749517050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - ((SequenceMachineLib.valuation n 3 : ℤ) - a (n - 1))

end

end A089792.P2804004265749517050

namespace A089792

/-- `1-(val(n, 3)-a(n-1))` -/
def P2804004265749517050.Spec : Prop :=
  ∀ n, P2804004265749517050.a n = A089792 n

end A089792

/-! ## A089792.P16021631519104935274

`A230641(n)/2`
-/

namespace A089792.P16021631519104935274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230641 n : ℚ) / 2

end

end A089792.P16021631519104935274

namespace A089792

/-- `A230641(n)/2` -/
def P16021631519104935274.Spec : Prop :=
  ∀ n, P16021631519104935274.a n = (A089792 n : ℚ)

theorem P16021631519104935274.correct : P16021631519104935274.Spec := by
  intro n
  simp only [A089792, Nat.add_sub_cancel, A089792.P16021631519104935274.a, A089792.P9464686631977204043.a, A054861, A054861.P6137810495506521191.a, A230641, A230641.P12572480448472300178.a, A053735, A053735.P3640341592284089632.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A089792

/-! ## A089792.P13258071253109243141

`2*n-A004128(n)`
-/

namespace A089792.P13258071253109243141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A004128 n

end

end A089792.P13258071253109243141

namespace A089792

/-- `2*n-A004128(n)` -/
def P13258071253109243141.Spec : Prop :=
  ∀ n, P13258071253109243141.a n = A089792 n

end A089792

/-! ## A089792.P11139227350780915231

`(A053735(n)+n)/2`
-/

namespace A089792.P11139227350780915231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053735 n + (n : ℤ) : ℚ) / 2

end

end A089792.P11139227350780915231

namespace A089792

/-- `(A053735(n)+n)/2` -/
def P11139227350780915231.Spec : Prop :=
  ∀ n, P11139227350780915231.a n = (A089792 n : ℚ)

theorem P11139227350780915231.correct : P11139227350780915231.Spec := by
  intro n
  simp only [A089792, Nat.add_sub_cancel, A089792.P11139227350780915231.a, A089792.P9464686631977204043.a, A053735, A053735.P3640341592284089632.a, A054861, A054861.P6137810495506521191.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A089792

/-! ## A089792.P2906734123281558936

`n-A344853(n)/2`
-/

namespace A089792.P2906734123281558936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - (A344853 n : ℚ) / 2

end

end A089792.P2906734123281558936

namespace A089792

/-- `n-A344853(n)/2` -/
def P2906734123281558936.Spec : Prop :=
  ∀ n, P2906734123281558936.a n = (A089792 n : ℚ)

theorem P2906734123281558936.correct : P2906734123281558936.Spec := by
  intro n
  simp only [A089792, Nat.add_sub_cancel, A089792.P2906734123281558936.a, A089792.P9464686631977204043.a, A054861, A054861.P6137810495506521191.a, A344853, A344853.P1953230496886263085.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A089792

/-! ## A089792.P17966327370825851593

`2*n-comp[A096346(n)]`
-/

namespace A089792.P17966327370825851593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096346 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A089792.P17966327370825851593

namespace A089792

/-- `2*n-comp[A096346(n)]` -/
def P17966327370825851593.Spec : Prop :=
  ∀ n, P17966327370825851593.a n = A089792 n

end A089792

/-! ## A089792.P10439777717324936653

`n-∑[val(A028310(n), 3)]`
-/

namespace A089792.P10439777717324936653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A028310 n).toNat 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A089792.P10439777717324936653

namespace A089792

/-- `n-∑[val(A028310(n), 3)]` -/
def P10439777717324936653.Spec : Prop :=
  ∀ n, P10439777717324936653.a n = A089792 n

end A089792

/-! ## A089792.P15383547243652157796

`Δ[n²]-A120514(n+1)`
-/

namespace A089792.P15383547243652157796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A120514 (n + 1)

end

end A089792.P15383547243652157796

namespace A089792

/-- `Δ[n²]-A120514(n+1)` -/
def P15383547243652157796.Spec : Prop :=
  ∀ n, P15383547243652157796.a n = A089792 n

end A089792

/-! ## A089792.P16094434310899064135

`A054861(n)+A053735(n)`
-/

namespace A089792.P16094434310899064135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 n + A053735 n

end

end A089792.P16094434310899064135

namespace A089792

/-- `A054861(n)+A053735(n)` -/
def P16094434310899064135.Spec : Prop :=
  ∀ n, P16094434310899064135.a n = A089792 n

theorem P16094434310899064135.correct : P16094434310899064135.Spec := by
  intro n
  simp only [A089792, Nat.add_sub_cancel, A089792.P16094434310899064135.a, A089792.P9464686631977204043.a, A053735, A053735.P3640341592284089632.a, A054861, A054861.P6137810495506521191.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A089792

/-! ## A089792.P11254640519886402520

`n-A001281(A344853(n))`
-/

namespace A089792.P11254640519886402520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A001281 (A344853 n).toNat

end

end A089792.P11254640519886402520

namespace A089792

/-- `n-A001281(A344853(n))` -/
def P11254640519886402520.Spec : Prop :=
  ∀ n, P11254640519886402520.a n = A089792 n

end A089792

/-! ## A089792.P262021186447464808

`A004128(n)-A344853(n)`
-/

namespace A089792.P262021186447464808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004128 n - A344853 n

end

end A089792.P262021186447464808

namespace A089792

/-- `A004128(n)-A344853(n)` -/
def P262021186447464808.Spec : Prop :=
  ∀ n, P262021186447464808.a n = A089792 n

end A089792

/-! ## A089792.P11201666992595917721

`A189674(n+1)+A081603(n)`
-/

namespace A089792.P11201666992595917721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189674 (n + 1) + A081603 n

end

end A089792.P11201666992595917721

namespace A089792

/-- `A189674(n+1)+A081603(n)` -/
def P11201666992595917721.Spec : Prop :=
  ∀ n, P11201666992595917721.a n = A089792 n

end A089792

/-! ## A089792.P16881509301668615153

`A189641(n+1)+A160384(n)`
-/

namespace A089792.P16881509301668615153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189641 (n + 1) + A160384 n

end

end A089792.P16881509301668615153

namespace A089792

/-- `A189641(n+1)+A160384(n)` -/
def P16881509301668615153.Spec : Prop :=
  ∀ n, P16881509301668615153.a n = A089792 n

end A089792

/-! ## A089792.P1510411694015916487

`(A003313(A006047(n))+n)/2`
-/

namespace A089792.P1510411694015916487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003313 (A006047 n).toNat + (n : ℤ) : ℚ) / 2

end

end A089792.P1510411694015916487

namespace A089792

/-- `(A003313(A006047(n))+n)/2` -/
def P1510411694015916487.Spec : Prop :=
  ∀ n, P1510411694015916487.a n = (A089792 n : ℚ)

end A089792

/-! ## A089792.P795161617293131398

`(A096288(n)+A011371(n))/2`
-/

namespace A089792.P795161617293131398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096288 n + A011371 n : ℚ) / 2

end

end A089792.P795161617293131398

namespace A089792

/-- `(A096288(n)+A011371(n))/2` -/
def P795161617293131398.Spec : Prop :=
  ∀ n, P795161617293131398.a n = (A089792 n : ℚ)

theorem P795161617293131398.correct : P795161617293131398.Spec := by
  intro n
  simp only [A089792, Nat.add_sub_cancel, A089792.P795161617293131398.a, A089792.P9464686631977204043.a, A011371, A011371.P12398255777927387864.a, A054861, A054861.P6137810495506521191.a, A096288, A096288.P13797560073647368963.a, A000120, A000120.P2816527436160941581.a, A053735, A053735.P3640341592284089632.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A089792

/-! ## A089792.P14973189557747065660

`(A180017(n)+A092391(n))/2`
-/

namespace A089792.P14973189557747065660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180017 n + A092391 n : ℚ) / 2

end

end A089792.P14973189557747065660

namespace A089792

/-- `(A180017(n)+A092391(n))/2` -/
def P14973189557747065660.Spec : Prop :=
  ∀ n, P14973189557747065660.a n = (A089792 n : ℚ)

theorem P14973189557747065660.correct : P14973189557747065660.Spec := by
  intro n
  simp only [A089792, Nat.add_sub_cancel, A089792.P14973189557747065660.a, A089792.P9464686631977204043.a, A054861, A054861.P6137810495506521191.a, A092391, A092391.P1831081500129819331.a, A180017, A180017.P1955405444060819929.a, A000120, A000120.P2816527436160941581.a, A011371, A011371.P12398255777927387864.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A089792

/-!
# A089793: a(n) = the first prime in the earliest chain of 2n+1 consecutive primes whose sum is prime.

The programs for A089793, there is no canonical definition to state claims against.
-/

/-! ## A089793.P12529014874977173608

`A000040(A215235(n))`
-/

namespace A089793.P12529014874977173608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A215235 n).toNat

end

end A089793.P12529014874977173608

/-! ## A089793.P11716353718381986115

`A318351(n)-A000007(n)`
-/

namespace A089793.P11716353718381986115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318351 n - A000007 n

end

end A089793.P11716353718381986115

/-! ## A089793.P17323806782321022662

`A007918(A318351(n)%A016754(n))`
-/

namespace A089793.P17323806782321022662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (Int.tmod (A318351 n) (A016754 n)).toNat

end

end A089793.P17323806782321022662

/-! ## A089793.P7152378541079562630

`A318351(n)-A318304(A318307(n+1))`
-/

namespace A089793.P7152378541079562630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318351 n - A318304 (A318307 (n + 1)).toNat

end

end A089793.P7152378541079562630

/-! ## A089793.P2113902791864896210

`A318351(n)-A318304(A318316(n+1))`
-/

namespace A089793.P2113902791864896210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318351 n - A318304 (A318316 (n + 1)).toNat

end

end A089793.P2113902791864896210

/-! ## A089793.P8035864876513552872

`A093074(n+1)+A318351(n)-A093074(A093074(n+1))`
-/

namespace A089793.P8035864876513552872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1) + (A318351 n - A093074 (A093074 (n + 1)).toNat)

end

end A089793.P8035864876513552872

/-! ## A089793.P14430569278458155754

`A318351(n)-A331281(A000040(n+1))`
-/

namespace A089793.P14430569278458155754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318351 n - A331281 (A000040 (n + 1)).toNat

end

end A089793.P14430569278458155754

/-! ## A089793.P16474949176567072787

`A007610(Δ[n²])`
-/

namespace A089793.P16474949176567072787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007610 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A089793.P16474949176567072787

/-! ## A089793.P6185935570196857492

`A068066(Δ[n²])`
-/

namespace A089793.P6185935570196857492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068066 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A089793.P6185935570196857492

/-! ## A089793.P8400779377972062537

`A007610(2*n+1)/and(1, n)!`
-/

namespace A089793.P8400779377972062537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007610 (2 * n + 1) : ℚ) / (Nat.factorial (Nat.land 1 n) : ℚ)

end

end A089793.P8400779377972062537

/-!
# A089796: Series reversion of g.f. A(x) is -A(-x).

The programs for A089796, there is no canonical definition to state claims against.
-/

/-! ## A089796.P1628736441508573416

`A006196(A151713(n)!+n)`
-/

namespace A089796.P1628736441508573416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006196 (Nat.factorial (A151713 n).toNat + n)

end

end A089796.P1628736441508573416

/-! ## A089796.P278246091958651940

`A006196((n+1)^A035115(n+1))`
-/

namespace A089796.P278246091958651940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006196 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A035115 (n + 1) : ℤ))).toNat

end

end A089796.P278246091958651940

/-! ## A089796.P18199041272318260303

`A006196(n+1)%A073459(n+1)`
-/

namespace A089796.P18199041272318260303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006196 (n + 1)) (A073459 (n + 1))

end

end A089796.P18199041272318260303

/-! ## A089796.P12146600592192547973

`A006196(n+1)+A000007(A060546(n))`
-/

namespace A089796.P12146600592192547973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006196 (n + 1) + A000007 (A060546 n).toNat

end

end A089796.P12146600592192547973

/-! ## A089796.P14233261339271900851

`A006196(n+1)^A250261(A053383(n))`
-/

namespace A089796.P14233261339271900851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006196 (n + 1) : ℚ) ^ (A250261 (A053383 n).toNat : ℤ)

end

end A089796.P14233261339271900851

/-!
# A089798: Expansion of Jacobi theta function theta_4(q^2).

The programs for A089798, the canonical program `A089798.P15808584881803484969` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089798 has offset 0).

The definition of A089798 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089798.P2152511361922441141

`(2-A000122(n))*A214507(n)`
-/

namespace A089798.P2152511361922441141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000122 n) * A214507 n

end

end A089798.P2152511361922441141

namespace A089798

/-- `(2-A000122(n))*A214507(n)` -/
def P2152511361922441141.Spec : Prop :=
  ∀ n, P2152511361922441141.a n = A089798 n

end A089798

/-! ## A089798.P18347853570816808312

`2*A214507(n)-A002448(n)`
-/

namespace A089798.P18347853570816808312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A214507 n - A002448 n

end

end A089798.P18347853570816808312

namespace A089798

/-- `2*A214507(n)-A002448(n)` -/
def P18347853570816808312.Spec : Prop :=
  ∀ n, P18347853570816808312.a n = A089798 n

end A089798

/-! ## A089798.P4537768760467508136

`A101675(n)*A204843(2*n)`
-/

namespace A089798.P4537768760467508136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101675 n * A204843 (2 * n)

end

end A089798.P4537768760467508136

namespace A089798

/-- `A101675(n)*A204843(2*n)` -/
def P4537768760467508136.Spec : Prop :=
  ∀ n, P4537768760467508136.a n = A089798 n

end A089798

/-! ## A089798.P15808584881803484969

`and(A176742(n), A185916(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A089798

/-- `and(A176742(n), A185916(n+1))` -/
def P15808584881803484969.Spec : Prop :=
  ∀ n, P15808584881803484969.a n = A089798 n

theorem P15808584881803484969.correct : P15808584881803484969.Spec := by
  intro n
  simp only [A089798]

end A089798

/-! ## A089798.P8987260528159539292

`A002448(∑[-(n*(-1)^n)]+n)`
-/

namespace A089798.P8987260528159539292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n : ℤ) * (-1) ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002448 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A089798.P8987260528159539292

namespace A089798

/-- `A002448(∑[-(n*(-1)^n)]+n)` -/
def P8987260528159539292.Spec : Prop :=
  ∀ n, P8987260528159539292.a n = A089798 n

end A089798

/-! ## A089798.P17324850880479853901

`(1-and(2, n))*A000122(Δ[n*floor(n/2)])`
-/

namespace A089798.P17324850880479853901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.land 2 n : ℤ)) * A000122 (f1 (n + 1) - f1 n).toNat

end

end A089798.P17324850880479853901

namespace A089798

/-- `(1-and(2, n))*A000122(Δ[n*floor(n/2)])` -/
def P17324850880479853901.Spec : Prop :=
  ∀ n, P17324850880479853901.a n = A089798 n

end A089798

/-! ## A089798.P4416444222122533273

`xor(A000122(2*n), n)-n`
-/

namespace A089798.P4416444222122533273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000122 (2 * n)) (n : ℤ) - (n : ℤ)

end

end A089798.P4416444222122533273

namespace A089798

/-- `xor(A000122(2*n), n)-n` -/
def P4416444222122533273.Spec : Prop :=
  ∀ n, P4416444222122533273.a n = A089798 n

end A089798

/-! ## A089798.P8230337377469405741

`xor(n, A002448(2*n))-n`
-/

namespace A089798.P8230337377469405741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A002448 (2 * n)) - (n : ℤ)

end

end A089798.P8230337377469405741

namespace A089798

/-- `xor(n, A002448(2*n))-n` -/
def P8230337377469405741.Spec : Prop :=
  ∀ n, P8230337377469405741.a n = A089798 n

end A089798

/-! ## A089798.P18111255764906697525

`(-1)^∑[n]*A000122(comp[or(2, n)-1])`
-/

namespace A089798.P18111255764906697525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j) * A000122 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

end

end A089798.P18111255764906697525

namespace A089798

/-- `(-1)^∑[n]*A000122(comp[or(2, n)-1])` -/
def P18111255764906697525.Spec : Prop :=
  ∀ n, P18111255764906697525.a n = A089798 n

end A089798

/-! ## A089798.P15387458345822627911

`(-1)^∑[n]*A000122(n*ratio[gcd(2, n)])`
-/

namespace A089798.P15387458345822627911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j) * A000122 (SequenceMachineLib.roundAway ((n : ℚ) * ((f2 (n + 1) : ℚ) / (f2 n : ℚ)))).toNat

end

end A089798.P15387458345822627911

namespace A089798

/-- `(-1)^∑[n]*A000122(n*ratio[gcd(2, n)])` -/
def P15387458345822627911.Spec : Prop :=
  ∀ n, P15387458345822627911.a n = A089798 n

end A089798

/-! ## A089798.P7392542013498861968

`A000122(2*n)*A056594(n)`
-/

namespace A089798.P7392542013498861968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (2 * n) * A056594 n

end

end A089798.P7392542013498861968

namespace A089798

/-- `A000122(2*n)*A056594(n)` -/
def P7392542013498861968.Spec : Prop :=
  ∀ n, P7392542013498861968.a n = A089798 n

end A089798

/-! ## A089798.P8193444054173964221

`A000122(2*n)*A057077(n)`
-/

namespace A089798.P8193444054173964221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (2 * n) * A057077 n

end

end A089798.P8193444054173964221

namespace A089798

/-- `A000122(2*n)*A057077(n)` -/
def P8193444054173964221.Spec : Prop :=
  ∀ n, P8193444054173964221.a n = A089798 n

end A089798

/-! ## A089798.P15349173763484559103

`A000122(2*n)*A087960(n)`
-/

namespace A089798.P15349173763484559103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (2 * n) * A087960 n

end

end A089798.P15349173763484559103

namespace A089798

/-- `A000122(2*n)*A087960(n)` -/
def P15349173763484559103.Spec : Prop :=
  ∀ n, P15349173763484559103.a n = A089798 n

end A089798

/-! ## A089798.P16993920972672924581

`A000122(2*n)*A214507(n)`
-/

namespace A089798.P16993920972672924581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (2 * n) * A214507 n

end

end A089798.P16993920972672924581

namespace A089798

/-- `A000122(2*n)*A214507(n)` -/
def P16993920972672924581.Spec : Prop :=
  ∀ n, P16993920972672924581.a n = A089798 n

end A089798

/-! ## A089798.P15423064898664531364

`A002448(2*n)*A214507(n)`
-/

namespace A089798.P15423064898664531364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002448 (2 * n) * A214507 n

end

end A089798.P15423064898664531364

namespace A089798

/-- `A002448(2*n)*A214507(n)` -/
def P15423064898664531364.Spec : Prop :=
  ∀ n, P15423064898664531364.a n = A089798 n

end A089798

/-! ## A089798.P7008205080546146838

`A000122(2*n)*A091337(n+1)`
-/

namespace A089798.P7008205080546146838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (2 * n) * A091337 (n + 1)

end

end A089798.P7008205080546146838

namespace A089798

/-- `A000122(2*n)*A091337(n+1)` -/
def P7008205080546146838.Spec : Prop :=
  ∀ n, P7008205080546146838.a n = A089798 n

end A089798

/-! ## A089798.P6088540591991859558

`A000122(2*n)*A112299(n+1)`
-/

namespace A089798.P6088540591991859558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (2 * n) * A112299 (n + 1)

end

end A089798.P6088540591991859558

namespace A089798

/-- `A000122(2*n)*A112299(n+1)` -/
def P6088540591991859558.Spec : Prop :=
  ∀ n, P6088540591991859558.a n = A089798 n

end A089798

/-! ## A089798.P2047020371978218220

`A000122(2*n)*A185276(n+1)`
-/

namespace A089798.P2047020371978218220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (2 * n) * A185276 (n + 1)

end

end A089798.P2047020371978218220

namespace A089798

/-- `A000122(2*n)*A185276(n+1)` -/
def P2047020371978218220.Spec : Prop :=
  ∀ n, P2047020371978218220.a n = A089798 n

end A089798

/-! ## A089798.P14554948038953777672

`A000122(2*n)*A209615(n+1)`
-/

namespace A089798.P14554948038953777672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (2 * n) * A209615 (n + 1)

end

end A089798.P14554948038953777672

namespace A089798

/-- `A000122(2*n)*A209615(n+1)` -/
def P14554948038953777672.Spec : Prop :=
  ∀ n, P14554948038953777672.a n = A089798 n

end A089798

/-! ## A089798.P10299812552596809569

`A000122(2*n)*A143431(n+2)`
-/

namespace A089798.P10299812552596809569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (2 * n) * A143431 (n + 2)

end

end A089798.P10299812552596809569

namespace A089798

/-- `A000122(2*n)*A143431(n+2)` -/
def P10299812552596809569.Spec : Prop :=
  ∀ n, P10299812552596809569.a n = A089798 n

end A089798

/-!
# A089799: Expansion of Jacobi theta function theta_2(q^(1/2))/q^(1/8).

The programs for A089799, the canonical program `A089799.P8958750520691012520` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089799 has offset 0).

The definition of A089799 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089799.P8958750520691012520

`T(n-1,k)` with `a(0)=2`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A089799

/-- `T(n-1,k)` -/
def P8958750520691012520.Spec : Prop :=
  ∀ n, (P8958750520691012520.a n : ℤ) = A089799 n

theorem P8958750520691012520.correct : P8958750520691012520.Spec := by
  intro n
  simp only [A089799]

end A089799

/-! ## A089799.P14150594392886195266

`T(n-2,k)` with `a(0)=2, a(1)=2`
-/

namespace A089799.P14150594392886195266
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 2] fun n a =>
  SequenceMachineLib.triUp2 a n

end

end A089799.P14150594392886195266

namespace A089799

/-- `T(n-2,k)` -/
def P14150594392886195266.Spec : Prop :=
  ∀ n, (P14150594392886195266.a n : ℤ) = A089799 n

end A089799

/-! ## A089799.P11461635641735969882

`2*char[∑[n]]`
-/

namespace A089799.P11461635641735969882
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f1 j = n then 1 else 0)

end

end A089799.P11461635641735969882

namespace A089799

/-- `2*char[∑[n]]` -/
def P11461635641735969882.Spec : Prop :=
  ∀ n, (P11461635641735969882.a n : ℤ) = A089799 n

end A089799

/-! ## A089799.P5575234226789406515

`ceil(tan(char[∑[n]]))`
-/

namespace A089799.P5575234226789406515
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tan ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌉

end

end A089799.P5575234226789406515

namespace A089799

/-- `ceil(tan(char[∑[n]]))` -/
def P5575234226789406515.Spec : Prop :=
  ∀ n, P5575234226789406515.a n = A089799 n

end A089799

/-! ## A089799.P13363294912647771102

`round(tan(char[∑[n]]))`
-/

namespace A089799.P13363294912647771102
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tan ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))

end

end A089799.P13363294912647771102

namespace A089799

/-- `round(tan(char[∑[n]]))` -/
def P13363294912647771102.Spec : Prop :=
  ∀ n, P13363294912647771102.a n = A089799 n

end A089799

/-! ## A089799.P14475679603151376743

`ceil(asin(char[∑[n]]))`
-/

namespace A089799.P14475679603151376743
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arcsin ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌉

end

end A089799.P14475679603151376743

namespace A089799

/-- `ceil(asin(char[∑[n]]))` -/
def P14475679603151376743.Spec : Prop :=
  ∀ n, P14475679603151376743.a n = A089799 n

end A089799

/-! ## A089799.P16149414525641295624

`round(asin(char[∑[n]]))`
-/

namespace A089799.P16149414525641295624
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arcsin ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))

end

end A089799.P16149414525641295624

namespace A089799

/-- `round(asin(char[∑[n]]))` -/
def P16149414525641295624.Spec : Prop :=
  ∀ n, P16149414525641295624.a n = A089799 n

end A089799

/-! ## A089799.P12045899625108659736

`ceil(sinh(char[∑[n]]))`
-/

namespace A089799.P12045899625108659736
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sinh ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌉

end

end A089799.P12045899625108659736

namespace A089799

/-- `ceil(sinh(char[∑[n]]))` -/
def P12045899625108659736.Spec : Prop :=
  ∀ n, P12045899625108659736.a n = A089799 n

end A089799

/-! ## A089799.P3813323281733535927

`T(T(n-1,k+1), col(n))` with `a(0)=2`
-/

namespace A089799.P3813323281733535927
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  SequenceMachineLib.triAt a ((SequenceMachineLib.triUpRight a n : ℕ) : ℤ) (SequenceMachineLib.triCol n : ℤ)

end

end A089799.P3813323281733535927

namespace A089799

/-- `T(T(n-1,k+1), col(n))` -/
def P3813323281733535927.Spec : Prop :=
  ∀ n, (P3813323281733535927.a n : ℤ) = A089799 n

end A089799

/-! ## A089799.P11550829719765110069

`and(2, -char[∑[n]])`
-/

namespace A089799.P11550829719765110069
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (-((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A089799.P11550829719765110069

namespace A089799

/-- `and(2, -char[∑[n]])` -/
def P11550829719765110069.Spec : Prop :=
  ∀ n, P11550829719765110069.a n = A089799 n

end A089799

/-! ## A089799.P9270028692921739277

`floor(tan(char[∑[n]])²)`
-/

namespace A089799.P9270028692921739277
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ) ^ 2⌋

end

end A089799.P9270028692921739277

namespace A089799

/-- `floor(tan(char[∑[n]])²)` -/
def P9270028692921739277.Spec : Prop :=
  ∀ n, P9270028692921739277.a n = A089799 n

end A089799

/-! ## A089799.P1062122252985468948

`floor(asin(char[∑[n]])²)`
-/

namespace A089799.P1062122252985468948
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arcsin ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ) ^ 2⌋

end

end A089799.P1062122252985468948

namespace A089799

/-- `floor(asin(char[∑[n]])²)` -/
def P1062122252985468948.Spec : Prop :=
  ∀ n, P1062122252985468948.a n = A089799 n

end A089799

/-! ## A089799.P191703178423103674

`ceil(acos(char[comp[∑[n]]]))`
-/

namespace A089799.P191703178423103674
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arccos ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌉

end

end A089799.P191703178423103674

namespace A089799

/-- `ceil(acos(char[comp[∑[n]]]))` -/
def P191703178423103674.Spec : Prop :=
  ∀ n, P191703178423103674.a n = A089799 n

end A089799

/-! ## A089799.P316486955528782641

`round(acos(char[comp[∑[n]]]))`
-/

namespace A089799.P316486955528782641
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arccos ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))

end

end A089799.P316486955528782641

namespace A089799

/-- `round(acos(char[comp[∑[n]]]))` -/
def P316486955528782641.Spec : Prop :=
  ∀ n, P316486955528782641.a n = A089799 n

end A089799

/-! ## A089799.P13825381357580011724

`floor(sinh(tan(char[∑[n]])))`
-/

namespace A089799.P13825381357580011724
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh (Real.tan ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))⌋

end

end A089799.P13825381357580011724

namespace A089799

/-- `floor(sinh(tan(char[∑[n]])))` -/
def P13825381357580011724.Spec : Prop :=
  ∀ n, P13825381357580011724.a n = A089799 n

end A089799

/-! ## A089799.P8613409307310225931

`floor(sinh(asin(char[∑[n]])))`
-/

namespace A089799.P8613409307310225931
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh (Real.arcsin ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))⌋

end

end A089799.P8613409307310225931

namespace A089799

/-- `floor(sinh(asin(char[∑[n]])))` -/
def P8613409307310225931.Spec : Prop :=
  ∀ n, P8613409307310225931.a n = A089799 n

end A089799

/-! ## A089799.P17583418559342215061

`C(2, 3^col(n))`
-/

namespace A089799.P17583418559342215061
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (3 ^ SequenceMachineLib.triCol n)

end

end A089799.P17583418559342215061

namespace A089799

/-- `C(2, 3^col(n))` -/
def P17583418559342215061.Spec : Prop :=
  ∀ n, (P17583418559342215061.a n : ℤ) = A089799 n

end A089799

/-! ## A089799.P10463811553815965171

`2%(char[∑[n]]+2)`
-/

namespace A089799.P10463811553815965171
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 % ((if ∃ j, f1 j = n then 1 else 0) + 2)

end

end A089799.P10463811553815965171

namespace A089799

/-- `2%(char[∑[n]]+2)` -/
def P10463811553815965171.Spec : Prop :=
  ∀ n, (P10463811553815965171.a n : ℤ) = A089799 n

end A089799

/-! ## A089799.P14325946473832770669

`val(char[∑[n]]+3, 2)`
-/

namespace A089799.P14325946473832770669
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((if ∃ j, f1 j = n then 1 else 0) + 3) 2

end

end A089799.P14325946473832770669

namespace A089799

/-- `val(char[∑[n]]+3, 2)` -/
def P14325946473832770669.Spec : Prop :=
  ∀ n, (P14325946473832770669.a n : ℤ) = A089799 n

end A089799

/-! ## A089799.P5559212608540750039

`C(2, (col(n)+1)²)`
-/

namespace A089799.P5559212608540750039
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 ((SequenceMachineLib.triCol n + 1) ^ 2)

end

end A089799.P5559212608540750039

namespace A089799

/-- `C(2, (col(n)+1)²)` -/
def P5559212608540750039.Spec : Prop :=
  ∀ n, (P5559212608540750039.a n : ℤ) = A089799 n

end A089799

