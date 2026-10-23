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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
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
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
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
# A087900: 2*3*5*6*...*a(n) -+ 1 are primes, with a(n+1) > a(n).

The programs for A087900, there is no canonical definition to state claims against.
-/

/-! ## A087900.P7414882392747786850

`A254041(A001250(n))+A117522(n+1)`
-/

namespace A087900.P7414882392747786850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254041 (A001250 n).toNat + A117522 (n + 1)

end

end A087900.P7414882392747786850

/-! ## A087900.P9815916319267789153

`A334030(A182522(n))+A067133(n+1)`
-/

namespace A087900.P9815916319267789153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334030 (A182522 n).toNat + A067133 (n + 1)

end

end A087900.P9815916319267789153

/-!
# A087901: Twin primes associated with A087900.

The programs for A087901, there is no canonical definition to state claims against.
-/

/-! ## A087901.P15294198989622796211

`A284385(3^(n+1))-1`
-/

namespace A087901.P15294198989622796211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284385 (3 ^ (n + 1)) - 1

end

end A087901.P15294198989622796211

/-! ## A087901.P15834151757972339853

`A323782(A129645(n+2))`
-/

namespace A087901.P15834151757972339853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323782 (A129645 (n + 2)).toNat

end

end A087901.P15834151757972339853

/-!
# A087902: Least m such that A080256(m)=n and has a maximum number A000792(n) of divisors.

The programs for A087902, there is no canonical definition to state claims against.
-/

/-! ## A087902.P2778989659466291214

`record[A101278(A038574(n+1))]`
-/

namespace A087902.P2778989659466291214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101278 (A038574 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087902.P2778989659466291214

/-! ## A087902.P16040943105371904751

`record[lcm(2, A101278(A038574(n)))]`
-/

namespace A087902.P16040943105371904751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A101278 (A038574 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087902.P16040943105371904751

/-! ## A087902.P1339420533077691244

`A181821(A000792(n+2))`
-/

namespace A087902.P1339420533077691244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (A000792 (n + 2)).toNat

end

end A087902.P1339420533077691244

/-! ## A087902.P16932887611271262942

`A181821(record[A036561(n+1)])`
-/

namespace A087902.P16932887611271262942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A087902.P16932887611271262942

/-! ## A087902.P8724463506401543395

`A277331(Δ[A164397(n)])`
-/

namespace A087902.P8724463506401543395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164397 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277331 (f1 (n + 1) - f1 n).toNat

end

end A087902.P8724463506401543395

/-!
# A087903: Triangle read by rows of the numbers T(n,k) (n > 1, 0 < k < n) of set partitions of n of length k which do not have a proper subset of parts with a union equal to a subset {1,2,...,j} with j < n.

The programs for A087903, there is no canonical definition to state claims against.
-/

/-! ## A087903.P15516060831524072545

`A086329(A099375(n)+1+n)`
-/

namespace A087903.P15516060831524072545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086329 (A099375 n + 1 + (n : ℤ)).toNat

end

end A087903.P15516060831524072545

/-! ## A087903.P4468474869924228018

`A086329(A038722(comp[C(n, 2)]+1))`
-/

namespace A087903.P4468474869924228018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086329 (A038722 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)).toNat

end

end A087903.P4468474869924228018

/-! ## A087903.P11078972130876254997

`A086329(2*A004736(n+1)+n)`
-/

namespace A087903.P11078972130876254997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086329 (2 * A004736 (n + 1) + (n : ℤ)).toNat

end

end A087903.P11078972130876254997

/-! ## A087903.P14147436840587297717

`A086329(A114327(n)+A014132(n+1))`
-/

namespace A087903.P14147436840587297717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086329 (A114327 n + A014132 (n + 1)).toNat

end

end A087903.P14147436840587297717

/-! ## A087903.P75534348940064909

`A086329(A061579(n)+A003057(n+2))`
-/

namespace A087903.P75534348940064909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086329 (A061579 n + A003057 (n + 2)).toNat

end

end A087903.P75534348940064909

/-! ## A087903.P4332919270911350540

`A086329(A004736(n+1)+A004736(n+1)+n)`
-/

namespace A087903.P4332919270911350540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086329 (A004736 (n + 1) + (A004736 (n + 1) + (n : ℤ))).toNat

end

end A087903.P4332919270911350540

/-!
# A087905: a(n) = n! * Sum_{d|n} (d/n)^d.

The programs for A087905, the canonical program `A087905.P13172177241198858201` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087905 has offset 1).

The definition of A087905 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A087905.P13172177241198858201

`(n+1)!*∑{d}[n+1, (#/(n+1))^#]`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A087905

/-- `(n+1)!*∑{d}[n+1, (#/(n+1))^#]` -/
def P13172177241198858201.Spec : Prop :=
  ∀ n, P13172177241198858201.a n = (A087905 (n + 1) : ℚ)

end A087905

/-!
# A087906: a(n) = Sum_{d|n} (n-1)!/(d-1)!.

The programs for A087906, the canonical program `A087906.P17808254735741889180` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087906 has offset 1).

The definition of A087906 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A087906.P17808254735741889180

`∑{d}[n+1, n!/(#-1)!]`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A087906

/-- `∑{d}[n+1, n!/(#-1)!]` -/
def P17808254735741889180.Spec : Prop :=
  ∀ n, P17808254735741889180.a n = (A087906 (n + 1) : ℚ)

end A087906

/-! ## A087906.P14145283630250746539

`∑{d}[n+1, (n+1)!/(#!*(n+1)/#)]`
-/

namespace A087906.P14145283630250746539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (Nat.factorial (n + 1) : ℚ) / ((Nat.factorial d : ℚ) * ((n + 1 : ℚ) / (d : ℚ)))

end

end A087906.P14145283630250746539

namespace A087906

/-- `∑{d}[n+1, (n+1)!/(#!*(n+1)/#)]` -/
def P14145283630250746539.Spec : Prop :=
  ∀ n, P14145283630250746539.a n = (A087906 (n + 1) : ℚ)

end A087906

/-! ## A087906.P15575021868758789947

`A370579(n+1)/(n+1)`
-/

namespace A087906.P15575021868758789947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A370579 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A087906.P15575021868758789947

namespace A087906

/-- `A370579(n+1)/(n+1)` -/
def P15575021868758789947.Spec : Prop :=
  ∀ n, P15575021868758789947.a n = (A087906 (n + 1) : ℚ)

end A087906

/-!
# A087908: Largest integer not expressible as a nonnegative linear combination of n and n^2 + 1.

The programs for A087908, the canonical program `A087908.P16773211899636336978` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087908 has offset 1).

The definition of A087908 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A087908.P16773211899636336978

`(n+1)^3-(n+1)²-1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A087908

/-- `(n+1)^3-(n+1)²-1` -/
def P16773211899636336978.Spec : Prop :=
  ∀ n, P16773211899636336978.a n = A087908 (n + 1)

theorem P16773211899636336978.correct : P16773211899636336978.Spec := by
  intro n
  simp only [A087908, Nat.add_sub_cancel]

end A087908

/-! ## A087908.P3646980313606412079

`or(1, lcm(n, (n+1)²)-1)`
-/

namespace A087908.P3646980313606412079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((Nat.lcm n ((n + 1) ^ 2) : ℤ) - 1)

end

end A087908.P3646980313606412079

namespace A087908

/-- `or(1, lcm(n, (n+1)²)-1)` -/
def P3646980313606412079.Spec : Prop :=
  ∀ n, P3646980313606412079.a n = A087908 (n + 1)

end A087908

/-! ## A087908.P11210676375770060516

`-or(1, -(n*(n+1)²))`
-/

namespace A087908.P11210676375770060516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 1 (-(n * (n + 1) ^ 2 : ℤ))

end

end A087908.P11210676375770060516

namespace A087908

/-- `-or(1, -(n*(n+1)²))` -/
def P11210676375770060516.Spec : Prop :=
  ∀ n, P11210676375770060516.a n = A087908 (n + 1)

end A087908

/-! ## A087908.P9001194055911664990

`-xor(1, -(n*(n+1)²))`
-/

namespace A087908.P9001194055911664990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 1 (-(n * (n + 1) ^ 2 : ℤ))

end

end A087908.P9001194055911664990

namespace A087908

/-- `-xor(1, -(n*(n+1)²))` -/
def P9001194055911664990.Spec : Prop :=
  ∀ n, P9001194055911664990.a n = A087908 (n + 1)

end A087908

/-! ## A087908.P8511478978766578470

`or(1, (n+1)*∑[2*n]-1)`
-/

namespace A087908.P8511478978766578470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((((n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - 1)

end

end A087908.P8511478978766578470

namespace A087908

/-- `or(1, (n+1)*∑[2*n]-1)` -/
def P8511478978766578470.Spec : Prop :=
  ∀ n, P8511478978766578470.a n = A087908 (n + 1)

end A087908

/-! ## A087908.P275591980810735603

`xor(1, (n+1)*∑[2*n]-2)`
-/

namespace A087908.P275591980810735603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((((n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - 2)

end

end A087908.P275591980810735603

namespace A087908

/-- `xor(1, (n+1)*∑[2*n]-2)` -/
def P275591980810735603.Spec : Prop :=
  ∀ n, P275591980810735603.a n = A087908 (n + 1)

end A087908

/-! ## A087908.P11375601089387816388

`floor(n^3-∑[a(n-1)-4])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A087908.P11375601089387816388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087908.P11375601089387816388

namespace A087908

/-- `floor(n^3-∑[a(n-1)-4])` -/
def P11375601089387816388.Spec : Prop :=
  ∀ n, P11375601089387816388.a n = A087908 (n + 1)

end A087908

/-! ## A087908.P5011671918484451927

`(A059986(n)-3)/3`
-/

namespace A087908.P5011671918484451927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059986 n - 3 : ℚ) / 3

end

end A087908.P5011671918484451927

namespace A087908

/-- `(A059986(n)-3)/3` -/
def P5011671918484451927.Spec : Prop :=
  ∀ n, P5011671918484451927.a n = (A087908 (n + 1) : ℚ)

end A087908

/-! ## A087908.P4657319592920088819

`∑[A005918(n)-2+n]`
-/

namespace A087908.P4657319592920088819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005918 n - 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087908.P4657319592920088819

namespace A087908

/-- `∑[A005918(n)-2+n]` -/
def P4657319592920088819.Spec : Prop :=
  ∀ n, P4657319592920088819.a n = A087908 (n + 1)

end A087908

/-! ## A087908.P4966418124311302606

`(A035006(n+1)-2)/2`
-/

namespace A087908.P4966418124311302606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035006 (n + 1) - 2 : ℚ) / 2

end

end A087908.P4966418124311302606

namespace A087908

/-- `(A035006(n+1)-2)/2` -/
def P4966418124311302606.Spec : Prop :=
  ∀ n, P4966418124311302606.a n = (A087908 (n + 1) : ℚ)

end A087908

/-! ## A087908.P2759232753068355489

`((n+1)*A046092(n)-2)/2`
-/

namespace A087908.P2759232753068355489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A046092 n - 2 : ℚ) / 2

end

end A087908.P2759232753068355489

namespace A087908

/-- `((n+1)*A046092(n)-2)/2` -/
def P2759232753068355489.Spec : Prop :=
  ∀ n, P2759232753068355489.a n = (A087908 (n + 1) : ℚ)

end A087908

/-! ## A087908.P918678683951651760

`(A085540(n)-(n+1))/(n+1)`
-/

namespace A087908.P918678683951651760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085540 n - (n + 1 : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A087908.P918678683951651760

namespace A087908

/-- `(A085540(n)-(n+1))/(n+1)` -/
def P918678683951651760.Spec : Prop :=
  ∀ n, P918678683951651760.a n = (A087908 (n + 1) : ℚ)

end A087908

/-! ## A087908.P18389990141616225056

`(∑[2*n*A016777(n)]-2)/2`
-/

namespace A087908.P18389990141616225056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A016777 n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - 2 : ℤ) : ℚ) / 2

end

end A087908.P18389990141616225056

namespace A087908

/-- `(∑[2*n*A016777(n)]-2)/2` -/
def P18389990141616225056.Spec : Prop :=
  ∀ n, P18389990141616225056.a n = (A087908 (n + 1) : ℚ)

end A087908

/-! ## A087908.P18376969732251306986

`∑[(n+1)*3*n-A004277(n)]`
-/

namespace A087908.P18376969732251306986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (3 * n) : ℤ) - A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087908.P18376969732251306986

namespace A087908

/-- `∑[(n+1)*3*n-A004277(n)]` -/
def P18376969732251306986.Spec : Prop :=
  ∀ n, P18376969732251306986.a n = A087908 (n + 1)

end A087908

/-! ## A087908.P9078217550477638595

`(A085537(n+1)-(n+1))/(n+1)`
-/

namespace A087908.P9078217550477638595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085537 (n + 1) - (n + 1 : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A087908.P9078217550477638595

namespace A087908

/-- `(A085537(n+1)-(n+1))/(n+1)` -/
def P9078217550477638595.Spec : Prop :=
  ∀ n, P9078217550477638595.a n = (A087908 (n + 1) : ℚ)

end A087908

/-! ## A087908.P1440252698624078143

`∑[abs(n²-(∑[A086570(n)]-1))+n-1]`
-/

namespace A087908.P1440252698624078143
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086570 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) - (∑ j ∈ Finset.range (n + 1), f2 j - 1)| + ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087908.P1440252698624078143

namespace A087908

/-- `∑[abs(n²-(∑[A086570(n)]-1))+n-1]` -/
def P1440252698624078143.Spec : Prop :=
  ∀ n, P1440252698624078143.a n = A087908 (n + 1)

end A087908

/-! ## A087908.P17040275267692533665

`∑[A003215(n)-(A004273(n)+2)]`
-/

namespace A087908.P17040275267692533665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n - (A004273 n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087908.P17040275267692533665

namespace A087908

/-- `∑[A003215(n)-(A004273(n)+2)]` -/
def P17040275267692533665.Spec : Prop :=
  ∀ n, P17040275267692533665.a n = A087908 (n + 1)

end A087908

/-! ## A087908.P1235186011461212871

`∑[(A057427(n)-1+n)*A016777(n)]`
-/

namespace A087908.P1235186011461212871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n - 1 + (n : ℤ)) * A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087908.P1235186011461212871

namespace A087908

/-- `∑[(A057427(n)-1+n)*A016777(n)]` -/
def P1235186011461212871.Spec : Prop :=
  ∀ n, P1235186011461212871.a n = A087908 (n + 1)

end A087908

/-! ## A087908.P1838946882757189096

`Δ[∑[2*n*C(n, 2)]-n]`
-/

namespace A087908.P1838946882757189096
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * Nat.choose n 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087908.P1838946882757189096

namespace A087908

/-- `Δ[∑[2*n*C(n, 2)]-n]` -/
def P1838946882757189096.Spec : Prop :=
  ∀ n, P1838946882757189096.a n = A087908 (n + 1)

end A087908

/-! ## A087908.P17871049644435003688

`floor(n*(n+1)²-tanh(n+1))`
-/

namespace A087908.P17871049644435003688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n * (n + 1) ^ 2 : ℝ) - Real.tanh (n + 1 : ℝ)⌋

end

end A087908.P17871049644435003688

namespace A087908

/-- `floor(n*(n+1)²-tanh(n+1))` -/
def P17871049644435003688.Spec : Prop :=
  ∀ n, P17871049644435003688.a n = A087908 (n + 1)

end A087908

/-!
# A087909: a(n) = Sum_{d|n} (n/d)^(d-1).

The programs for A087909, the canonical program `A087909.P16712763867366152426` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087909 has offset 1).

The definition of A087909 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A087909.P16712763867366152426

`∑{d}[n+1, ((n+1)/#)^(#-1)]`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A087909

/-- `∑{d}[n+1, ((n+1)/#)^(#-1)]` -/
def P16712763867366152426.Spec : Prop :=
  ∀ n, P16712763867366152426.a n = (A087909 (n + 1) : ℚ)

end A087909

/-! ## A087909.P15361123749352165508

`A359103(n+1)/(n+1)`
-/

namespace A087909.P15361123749352165508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A359103 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A087909.P15361123749352165508

namespace A087909

/-- `A359103(n+1)/(n+1)` -/
def P15361123749352165508.Spec : Prop :=
  ∀ n, P15361123749352165508.a n = (A087909 (n + 1) : ℚ)

end A087909

/-! ## A087909.P3761156492032996780

`(A362683(n+1)-A055225(n+1))/(n+1)`
-/

namespace A087909.P3761156492032996780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A362683 (n + 1) - A055225 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A087909.P3761156492032996780

namespace A087909

/-- `(A362683(n+1)-A055225(n+1))/(n+1)` -/
def P3761156492032996780.Spec : Prop :=
  ∀ n, P3761156492032996780.a n = (A087909 (n + 1) : ℚ)

end A087909

/-! ## A087909.P4011013505940326769

`A308694(∑[n+2])`
-/

namespace A087909.P4011013505940326769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308694 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A087909.P4011013505940326769

namespace A087909

/-- `A308694(∑[n+2])` -/
def P4011013505940326769.Spec : Prop :=
  ∀ n, P4011013505940326769.a n = A087909 (n + 1)

end A087909

/-! ## A087909.P3361182364756761078

`A308694(A000096(n+1))%A274104(n)`
-/

namespace A087909.P3361182364756761078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A308694 (A000096 (n + 1)).toNat) (A274104 n)

end

end A087909.P3361182364756761078

namespace A087909

/-- `A308694(A000096(n+1))%A274104(n)` -/
def P3361182364756761078.Spec : Prop :=
  ∀ n, P3361182364756761078.a n = A087909 (n + 1)

end A087909

/-! ## A087909.P15488645101729506490

`abs(A308694(A000096(n+1))-A000038(n))`
-/

namespace A087909.P15488645101729506490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A308694 (A000096 (n + 1)).toNat - A000038 n|

end

end A087909.P15488645101729506490

namespace A087909

/-- `abs(A308694(A000096(n+1))-A000038(n))` -/
def P15488645101729506490.Spec : Prop :=
  ∀ n, P15488645101729506490.a n = A087909 (n + 1)

end A087909

/-! ## A087909.P4814304872889383789

`A308694(A000096(n+1))+A000007(A008486(n))`
-/

namespace A087909.P4814304872889383789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308694 (A000096 (n + 1)).toNat + A000007 (A008486 n).toNat

end

end A087909.P4814304872889383789

namespace A087909

/-- `A308694(A000096(n+1))+A000007(A008486(n))` -/
def P4814304872889383789.Spec : Prop :=
  ∀ n, P4814304872889383789.a n = A087909 (n + 1)

end A087909

/-! ## A087909.P11485443259054613328

`A308694(A000096(n+1))+A000007(A273641(n))`
-/

namespace A087909.P11485443259054613328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308694 (A000096 (n + 1)).toNat + A000007 (A273641 n).toNat

end

end A087909.P11485443259054613328

namespace A087909

/-- `A308694(A000096(n+1))+A000007(A273641(n))` -/
def P11485443259054613328.Spec : Prop :=
  ∀ n, P11485443259054613328.a n = A087909 (n + 1)

end A087909

/-!
# A087910: Exponent of the greatest power of 2 dividing the numerator of 2^1/1 + 2^2/2 + 2^3/3 + ... + 2^n/n.

The programs for A087910, there is no canonical definition to state claims against.
-/

/-! ## A087910.P7718822767486661066

`val(A108866(n+1), 2)`
-/

namespace A087910.P7718822767486661066
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A108866 (n + 1)).toNat 2

end

end A087910.P7718822767486661066

/-!
# A087911: Smallest prime p that is a palindrome in n different bases < p.

The programs for A087911, there is no canonical definition to state claims against.
-/

/-! ## A087911.P18020389977123459245

`p?[A320251(n)%585]`
-/

namespace A087911.P18020389977123459245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320251 n) 585

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087911.P18020389977123459245

/-!
# A087912: Exponential generating function is exp(2*x/(1-x))/(1-x).

The programs for A087912, the canonical program `A087912.P8625534817852084302` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087912 has offset 0).

The definition of A087912 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A087912.P8625534817852084302

`(2*n+1)*a(n-1)-(n-1)²*a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A087912

/-- `(2*n+1)*a(n-1)-(n-1)²*a(n-2)` -/
def P8625534817852084302.Spec : Prop :=
  ∀ n, P8625534817852084302.a n = A087912 n

theorem P8625534817852084302.correct : P8625534817852084302.Spec := by
  intro n
  simp only [A087912]

end A087912

/-! ## A087912.P10233961161399821336

`n!*A160615(n)/A160616(n)`
-/

namespace A087912.P10233961161399821336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial n : ℤ) * A160615 n : ℚ) / (A160616 n : ℚ)

end

end A087912.P10233961161399821336

namespace A087912

/-- `n!*A160615(n)/A160616(n)` -/
def P10233961161399821336.Spec : Prop :=
  ∀ n, P10233961161399821336.a n = (A087912 n : ℚ)

end A087912

/-! ## A087912.P3523705588741483583

`A289192(∑[n+3])`
-/

namespace A087912.P3523705588741483583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289192 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A087912.P3523705588741483583

namespace A087912

/-- `A289192(∑[n+3])` -/
def P3523705588741483583.Spec : Prop :=
  ∀ n, P3523705588741483583.a n = A087912 n

end A087912

/-! ## A087912.P1499915635300391713

`A052897(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A087912.P1499915635300391713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A052897 n + (n : ℤ) * a (n - 1)

end

end A087912.P1499915635300391713

namespace A087912

/-- `A052897(n)+n*a(n-1)` -/
def P1499915635300391713.Spec : Prop :=
  ∀ n, P1499915635300391713.a n = A087912 n

end A087912

/-! ## A087912.P10503197292577488375

`record[A289192(A055998(A002262(n)))]`
-/

namespace A087912.P10503197292577488375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289192 (A055998 (A002262 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087912.P10503197292577488375

namespace A087912

/-- `record[A289192(A055998(A002262(n)))]` -/
def P10503197292577488375.Spec : Prop :=
  ∀ n, P10503197292577488375.a n = A087912 n

end A087912

/-! ## A087912.P7562363756959282094

`record[A289192(A055998(A078898(n)))]`
-/

namespace A087912.P7562363756959282094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289192 (A055998 (A078898 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087912.P7562363756959282094

namespace A087912

/-- `record[A289192(A055998(A078898(n)))]` -/
def P7562363756959282094.Spec : Prop :=
  ∀ n, P7562363756959282094.a n = A087912 n

end A087912

/-! ## A087912.P17684360999000217206

`record[A289192(A055998(A252759(n+1)))]`
-/

namespace A087912.P17684360999000217206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289192 (A055998 (A252759 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087912.P17684360999000217206

namespace A087912

/-- `record[A289192(A055998(A252759(n+1)))]` -/
def P17684360999000217206.Spec : Prop :=
  ∀ n, P17684360999000217206.a n = A087912 n

end A087912

/-!
# A087913: Greatest number less than n such that the number of prime factors is one less than that of n; a(1)=0.

The programs for A087913, there is no canonical definition to state claims against.
-/

/-! ## A087913.P9158730347962300835

`(A350486(A350504(n))+1)%(n+1)`
-/

namespace A087913.P9158730347962300835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A350486 (A350504 n).toNat + 1) (n + 1 : ℤ)

end

end A087913.P9158730347962300835

/-! ## A087913.P5144911982116394125

`gcd(A049084(n+1), A334097(A018388(n+1)))`
-/

namespace A087913.P5144911982116394125
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049084 (n + 1)) (A334097 (A018388 (n + 1)).toNat)

end

end A087913.P5144911982116394125

/-! ## A087913.P3654521474806821506

`or(A069359(n+1), A365832(A251727(3*n+2)))`
-/

namespace A087913.P3654521474806821506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A069359 (n + 1)) (A365832 (A251727 (3 * n + 2)).toNat)

end

end A087913.P3654521474806821506

/-!
# A087914: Numbers m such that A007947(m) = A007947(k) and A007947(m+1) = A007947(k+1), for some k < m.

The programs for A087914, there is no canonical definition to state claims against.
-/

/-! ## A087914.P15263996485675921718

`record[A343101(n+2)]`
-/

namespace A087914.P15263996485675921718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343101 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087914.P15263996485675921718

/-! ## A087914.P7186525402783938295

`A343101(2*(n+1))`
-/

namespace A087914.P7186525402783938295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343101 (2 * (n + 1))

end

end A087914.P7186525402783938295

/-! ## A087914.P17939254637007930007

`A343101(A005843(n+1))+char[17]`
-/

namespace A087914.P17939254637007930007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343101 (A005843 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A087914.P17939254637007930007

/-! ## A087914.P3461572443126445893

`A343101(A005843(n+1))/A007318(∑[n])`
-/

namespace A087914.P3461572443126445893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343101 (A005843 (n + 1)).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A087914.P3461572443126445893

/-!
# A087915: Even numbers k such that 2*k+3 is a prime.

The programs for A087915, the canonical program `A087915.P15618837605475670392` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087915 has offset 1).

The definition of A087915 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087915.P6029910542632467001

`(p?[4*n-1]-3)/2`
-/

namespace A087915.P6029910542632467001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 3 : ℚ) / 2

end

end A087915.P6029910542632467001

namespace A087915

/-- `(p?[4*n-1]-3)/2` -/
def P6029910542632467001.Spec : Prop :=
  ∀ n, P6029910542632467001.a n = (A087915 (n + 1) : ℚ)

end A087915

/-! ## A087915.P3140654880422758669

`A104635(n+1)-1`
-/

namespace A087915.P3140654880422758669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104635 (n + 1) - 1

end

end A087915.P3140654880422758669

namespace A087915

/-- `A104635(n+1)-1` -/
def P3140654880422758669.Spec : Prop :=
  ∀ n, P3140654880422758669.a n = A087915 (n + 1)

end A087915

/-! ## A087915.P234324820527712068

`A090670(n+1)-3`
-/

namespace A087915.P234324820527712068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090670 (n + 1) - 3

end

end A087915.P234324820527712068

namespace A087915

/-- `A090670(n+1)-3` -/
def P234324820527712068.Spec : Prop :=
  ∀ n, P234324820527712068.a n = A087915 (n + 1)

end A087915

/-! ## A087915.P13298943627156132340

`2*A095278(n+1)`
-/

namespace A087915.P13298943627156132340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A095278 (n + 1)

end

end A087915.P13298943627156132340

namespace A087915

/-- `2*A095278(n+1)` -/
def P13298943627156132340.Spec : Prop :=
  ∀ n, P13298943627156132340.a n = A087915 (n + 1)

end A087915

/-! ## A087915.P2601621225682125834

`A089257(n+1)-4`
-/

namespace A087915.P2601621225682125834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089257 (n + 1) - 4

end

end A087915.P2601621225682125834

namespace A087915

/-- `A089257(n+1)-4` -/
def P2601621225682125834.Spec : Prop :=
  ∀ n, P2601621225682125834.a n = A087915 (n + 1)

end A087915

/-! ## A087915.P8467623463869429024

`A089193(n+1)-5`
-/

namespace A087915.P8467623463869429024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089193 (n + 1) - 5

end

end A087915.P8467623463869429024

namespace A087915

/-- `A089193(n+1)-5` -/
def P8467623463869429024.Spec : Prop :=
  ∀ n, P8467623463869429024.a n = A087915 (n + 1)

end A087915

/-! ## A087915.P15567294859799639725

`2*(A089986(n+1)+1)`
-/

namespace A087915.P15567294859799639725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A089986 (n + 1) + 1)

end

end A087915.P15567294859799639725

namespace A087915

/-- `2*(A089986(n+1)+1)` -/
def P15567294859799639725.Spec : Prop :=
  ∀ n, P15567294859799639725.a n = A087915 (n + 1)

end A087915

/-! ## A087915.P15618837605475670392

`2*(A005099(n+1)-1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A087915

/-- `2*(A005099(n+1)-1)` -/
def P15618837605475670392.Spec : Prop :=
  ∀ n, P15618837605475670392.a n = A087915 (n + 1)

theorem P15618837605475670392.correct : P15618837605475670392.Spec := by
  intro n
  simp only [A087915, Nat.add_sub_cancel]

end A087915

/-! ## A087915.P7721353179617312102

`2*(A156287(n+1)-2)`
-/

namespace A087915.P7721353179617312102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A156287 (n + 1) - 2)

end

end A087915.P7721353179617312102

namespace A087915

/-- `2*(A156287(n+1)-2)` -/
def P7721353179617312102.Spec : Prop :=
  ∀ n, P7721353179617312102.a n = A087915 (n + 1)

end A087915

/-! ## A087915.P11590284330123907457

`A090658(n+1)/2-2`
-/

namespace A087915.P11590284330123907457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090658 (n + 1) : ℚ) / 2 - 2

end

end A087915.P11590284330123907457

namespace A087915

/-- `A090658(n+1)/2-2` -/
def P11590284330123907457.Spec : Prop :=
  ∀ n, P11590284330123907457.a n = (A087915 (n + 1) : ℚ)

end A087915

/-! ## A087915.P16070893805890630896

`(A002145(n+1)-3)/2`
-/

namespace A087915.P16070893805890630896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002145 (n + 1) - 3 : ℚ) / 2

end

end A087915.P16070893805890630896

namespace A087915

/-- `(A002145(n+1)-3)/2` -/
def P16070893805890630896.Spec : Prop :=
  ∀ n, P16070893805890630896.a n = (A087915 (n + 1) : ℚ)

end A087915

/-! ## A087915.P13887877614613296920

`(A089217(n+1)-5)/2`
-/

namespace A087915.P13887877614613296920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089217 (n + 1) - 5 : ℚ) / 2

end

end A087915.P13887877614613296920

namespace A087915

/-- `(A089217(n+1)-5)/2` -/
def P13887877614613296920.Spec : Prop :=
  ∀ n, P13887877614613296920.a n = (A087915 (n + 1) : ℚ)

end A087915

/-! ## A087915.P18412393563101337176

`A089986(n+1)+A005099(n+1)`
-/

namespace A087915.P18412393563101337176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089986 (n + 1) + A005099 (n + 1)

end

end A087915.P18412393563101337176

namespace A087915

/-- `A089986(n+1)+A005099(n+1)` -/
def P18412393563101337176.Spec : Prop :=
  ∀ n, P18412393563101337176.a n = A087915 (n + 1)

end A087915

/-! ## A087915.P13854066479356780450

`A190105(n+1)-A156287(n+1)`
-/

namespace A087915.P13854066479356780450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190105 (n + 1) - A156287 (n + 1)

end

end A087915.P13854066479356780450

namespace A087915

/-- `A190105(n+1)-A156287(n+1)` -/
def P13854066479356780450.Spec : Prop :=
  ∀ n, P13854066479356780450.a n = A087915 (n + 1)

end A087915

/-! ## A087915.P1440309297117929080

`A002145(n+1)%A090670(n+1)`
-/

namespace A087915.P1440309297117929080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002145 (n + 1)) (A090670 (n + 1))

end

end A087915.P1440309297117929080

namespace A087915

/-- `A002145(n+1)%A090670(n+1)` -/
def P1440309297117929080.Spec : Prop :=
  ∀ n, P1440309297117929080.a n = A087915 (n + 1)

end A087915

/-! ## A087915.P7698915664225730563

`A089217(n+1)%A089193(n+1)`
-/

namespace A087915.P7698915664225730563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089217 (n + 1)) (A089193 (n + 1))

end

end A087915.P7698915664225730563

namespace A087915

/-- `A089217(n+1)%A089193(n+1)` -/
def P7698915664225730563.Spec : Prop :=
  ∀ n, P7698915664225730563.a n = A087915 (n + 1)

end A087915

/-! ## A087915.P7778440742895577602

`A090658(n+1)%A089257(n+1)`
-/

namespace A087915.P7778440742895577602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090658 (n + 1)) (A089257 (n + 1))

end

end A087915.P7778440742895577602

namespace A087915

/-- `A090658(n+1)%A089257(n+1)` -/
def P7778440742895577602.Spec : Prop :=
  ∀ n, P7778440742895577602.a n = A087915 (n + 1)

end A087915

/-! ## A087915.P5881377500606023271

`∩[2*n, A067076(n+1)]`
-/

namespace A087915.P5881377500606023271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087915.P5881377500606023271

namespace A087915

/-- `∩[2*n, A067076(n+1)]` -/
def P5881377500606023271.Spec : Prop :=
  ∀ n, (P5881377500606023271.a n : ℤ) = A087915 (n + 1)

end A087915

/-! ## A087915.P14594506927127614427

`A067076(A138971(n+1))`
-/

namespace A087915.P14594506927127614427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (A138971 (n + 1)).toNat

end

end A087915.P14594506927127614427

namespace A087915

/-- `A067076(A138971(n+1))` -/
def P14594506927127614427.Spec : Prop :=
  ∀ n, P14594506927127614427.a n = A087915 (n + 1)

end A087915

/-! ## A087915.P595458906482268968

`A067076(A080148(n+1)-1)`
-/

namespace A087915.P595458906482268968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (A080148 (n + 1) - 1).toNat

end

end A087915.P595458906482268968

namespace A087915

/-- `A067076(A080148(n+1)-1)` -/
def P595458906482268968.Spec : Prop :=
  ∀ n, P595458906482268968.a n = A087915 (n + 1)

end A087915

/-!
# A087916: Number of ordered ways to write 2n+1 as a sum of 3 odd primes.

The programs for A087916, there is no canonical definition to state claims against.
-/

/-! ## A087916.P11474134474451369123

`∑[A110657(n%A284911(n))]`
-/

namespace A087916.P11474134474451369123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (Int.tmod (n : ℤ) (A284911 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087916.P11474134474451369123

/-! ## A087916.P17112707484141815250

`∑[A110657(n)%A320449(n)]`
-/

namespace A087916.P17112707484141815250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110657 n) (A320449 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087916.P17112707484141815250

/-! ## A087916.P12109541660392691921

`∑[and(A110657(n), A291176(n+1))]`
-/

namespace A087916.P12109541660392691921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A110657 n) (A291176 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087916.P12109541660392691921

/-! ## A087916.P2567925449324906702

`∑[A028242(A028242(n))%A128842(n)]`
-/

namespace A087916.P2567925449324906702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028242 (A028242 n).toNat) (A128842 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087916.P2567925449324906702

/-! ## A087916.P11475946957757845796

`A055999(n)%∑[A043561(A218199(n+1))]`
-/

namespace A087916.P11475946957757845796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043561 (A218199 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055999 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A087916.P11475946957757845796

/-!
# A087917: Number of unordered ways to write n as a sum of 3 odious numbers (A000069).

The programs for A087917, there is no canonical definition to state claims against.
-/

/-! ## A087917.P5932077713232845418

`A001221(∏{p}[A000840(n+1)+1, #])`
-/

namespace A087917.P5932077713232845418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000840 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A087917.P5932077713232845418

/-! ## A087917.P12670606876867952604

`A001221(A319726(n)+A005201(n+1))`
-/

namespace A087917.P12670606876867952604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A319726 n + A005201 (n + 1)).toNat

end

end A087917.P12670606876867952604

/-! ## A087917.P10540821994385721798

`A001221(A151335(n+2)+A143579(n))`
-/

namespace A087917.P10540821994385721798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A151335 (n + 2) + A143579 n).toNat

end

end A087917.P10540821994385721798

/-! ## A087917.P11085740709363902321

`A157685(n+1)-A065339(A274005(n))`
-/

namespace A087917.P11085740709363902321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157685 (n + 1) - A065339 (A274005 n).toNat

end

end A087917.P11085740709363902321

/-! ## A087917.P1198106616622613419

`A152487(A047775(n+1)+A001414(n+1))`
-/

namespace A087917.P1198106616622613419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152487 (A047775 (n + 1) + A001414 (n + 1)).toNat

end

end A087917.P1198106616622613419

/-!
# A087918: Let A(n) be the matrix in the group GL(n,2) such that for 1<=i, j<=n: A[i,j] = 1 if i+j = n+1 A[i,j] = 0 if i+j != n+1. a(n) is the size of the conjugacy class of A(n) in GL(n,2).

The programs for A087918, there is no canonical definition to state claims against.
-/

/-! ## A087918.P1410110357707428637

`A002884(n+1)/A087540(n+1)`
-/

namespace A087918.P1410110357707428637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002884 (n + 1) : ℚ) / (A087540 (n + 1) : ℚ)

end

end A087918.P1410110357707428637

/-! ## A087918.P9618227218062075686

`∏[or(A051437(n), A166920(n))]`
-/

namespace A087918.P9618227218062075686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A051437 n) (A166920 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A087918.P9618227218062075686

/-! ## A087918.P537290748918266446

`A286331(∑[n+2])/A120405(A122746(n+1))`
-/

namespace A087918.P537290748918266446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286331 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A120405 (A122746 (n + 1)).toNat : ℚ)

end

end A087918.P537290748918266446

/-!
# A087919: Indices for which there is at least one twin prime pair between two consecutive prime-indexed primes.

The programs for A087919, the canonical program `A087919.P1182899045256911427` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087919 has offset 1).

The definition of A087919 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 774 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087919.P3529798730977433892

`record[A036234(n+1)-A237260(n+2)]`
-/

namespace A087919.P3529798730977433892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (n + 1) - A237260 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087919.P3529798730977433892

namespace A087919

/-- `record[A036234(n+1)-A237260(n+2)]` -/
def P3529798730977433892.Spec : Prop :=
  ∀ n, P3529798730977433892.a n = A087919 (n + 1)

end A087919

/-! ## A087919.P9931016226081809621

`record[A000720(n+2)/A176246(n+1)]`
-/

namespace A087919.P9931016226081809621
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000720 (n + 2) : ℚ) / (A176246 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087919.P9931016226081809621

namespace A087919

/-- `record[A000720(n+2)/A176246(n+1)]` -/
def P9931016226081809621.Spec : Prop :=
  ∀ n, P9931016226081809621.a n = (A087919 (n + 1) : ℚ)

end A087919

/-! ## A087919.P2651156836936645983

`record[A000720(n+2)/A028334(n+2)]`
-/

namespace A087919.P2651156836936645983
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000720 (n + 2) : ℚ) / (A028334 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087919.P2651156836936645983

namespace A087919

/-- `record[A000720(n+2)/A028334(n+2)]` -/
def P2651156836936645983.Spec : Prop :=
  ∀ n, P2651156836936645983.a n = (A087919 (n + 1) : ℚ)

end A087919

/-! ## A087919.P15489451708467681641

`record[A000720(n+2)/A046933(n+2)]`
-/

namespace A087919.P15489451708467681641
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000720 (n + 2) : ℚ) / (A046933 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087919.P15489451708467681641

namespace A087919

/-- `record[A000720(n+2)/A046933(n+2)]` -/
def P15489451708467681641.Spec : Prop :=
  ∀ n, P15489451708467681641.a n = (A087919 (n + 1) : ℚ)

end A087919

/-! ## A087919.P1182899045256911427

`record[gcd(A000720(n+1), A116127(n+1))]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A087919

/-- `record[gcd(A000720(n+1), A116127(n+1))]` -/
def P1182899045256911427.Spec : Prop :=
  ∀ n, (P1182899045256911427.a n : ℤ) = A087919 (n + 1)

theorem P1182899045256911427.correct : P1182899045256911427.Spec := by
  intro n
  simp only [A087919, Nat.add_sub_cancel]

end A087919

/-! ## A087919.P15818365400923863522

`record[A000720(n+2)%A049563(n+2)]`
-/

namespace A087919.P15818365400923863522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000720 (n + 2)) (A049563 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087919.P15818365400923863522

namespace A087919

/-- `record[A000720(n+2)%A049563(n+2)]` -/
def P15818365400923863522.Spec : Prop :=
  ∀ n, P15818365400923863522.a n = A087919 (n + 1)

end A087919

/-!
# A087920: Indices for which there is no twin prime pair between two consecutive prime-indexed primes.

The programs for A087920, there is no canonical definition to state claims against.
-/

/-! ## A087920.P1488144864882521798

`comp[A033270(A029707(n+1))]+1`
-/

namespace A087920.P1488144864882521798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A029707 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A087920.P1488144864882521798

/-! ## A087920.P13957652463485158490

`comp[A062301(n+1)*A230980(n)]`
-/

namespace A087920.P13957652463485158490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062301 (n + 1) * A230980 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A087920.P13957652463485158490

/-! ## A087920.P6157807658483207567

`lt[Δ[A242758(A000040(n+1))²], 1]+1`
-/

namespace A087920.P6157807658483207567
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242758 (A000040 (n + 1)).toNat ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A087920.P6157807658483207567

/-! ## A087920.P1799506993269408808

`lt[Δ[A242758(A008578(n+2))²], 1]+1`
-/

namespace A087920.P1799506993269408808
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242758 (A008578 (n + 2)).toNat ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A087920.P1799506993269408808

/-! ## A087920.P16741746953907154248

`eq[char[A087919(n+1)], A151933(n)]`
-/

namespace A087920.P16741746953907154248
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087919 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A087920.P16741746953907154248

/-!
# A087923: Number of ways of arranging the numbers 1 ... 2n into a 2 X n array so there is exactly one local maximum.

The programs for A087923, there is no canonical definition to state claims against.
-/

/-! ## A087923.P11852058400262808754

`A087783(∑[n+1]+2)`
-/

namespace A087923.P11852058400262808754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087783 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A087923.P11852058400262808754

/-! ## A087923.P15652757776378100469

`lcm(2, A087783(A133263(n+1)))`
-/

namespace A087923.P15652757776378100469
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A087783 (A133263 (n + 1)).toNat)

end

end A087923.P15652757776378100469

/-! ## A087923.P4559671885286398469

`record[A010054(n)*A087783(n+2)]`
-/

namespace A087923.P4559671885286398469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A087783 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087923.P4559671885286398469

/-! ## A087923.P5477910725209074990

`record[root(A087783(n+3), A058400(n+1))]`
-/

namespace A087923.P5477910725209074990
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A087783 (n + 3) : ℝ) ^ (1 / (A058400 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087923.P5477910725209074990

/-!
# A087924: Number of ways of arranging the numbers 1 ... 3n into a 3 X n array so there is exactly one local maximum.

The programs for A087924, there is no canonical definition to state claims against.
-/

/-! ## A087924.P12095521184446244583

`A087783(∑[n+2]+4)`
-/

namespace A087924.P12095521184446244583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087783 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A087924.P12095521184446244583

/-! ## A087924.P12885551065680437541

`lcm(2, A087783(A167614(n+1)))`
-/

namespace A087924.P12885551065680437541
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A087783 (A167614 (n + 1)).toNat)

end

end A087924.P12885551065680437541

/-! ## A087924.P4032504319609099289

`A087783(A167614(n+1))+A011731(n)`
-/

namespace A087924.P4032504319609099289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087783 (A167614 (n + 1)).toNat + A011731 n

end

end A087924.P4032504319609099289

/-! ## A087924.P13882811373192459218

`A087783(A167614(n+1))+A011741(n)`
-/

namespace A087924.P13882811373192459218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087783 (A167614 (n + 1)).toNat + A011741 n

end

end A087924.P13882811373192459218

/-!
# A087925: Number of ways of arranging the numbers 1 ... 4n into a 4 X n array so there is exactly one local maximum.

The programs for A087925, there is no canonical definition to state claims against.
-/

/-! ## A087925.P15635894233854694380

`A087783(A167614(n+2)+1)`
-/

namespace A087925.P15635894233854694380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087783 (A167614 (n + 2) + 1).toNat

end

end A087925.P15635894233854694380

/-! ## A087925.P1493463371534697230

`A087783(A020752(n+1))`
-/

namespace A087925.P1493463371534697230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087783 (A020752 (n + 1)).toNat

end

end A087925.P1493463371534697230

/-!
# A087933: Primes p such that pi(2^k) = p, for some k > 1.

The programs for A087933, there is no canonical definition to state claims against.
-/

/-! ## A087933.P3822662370220128386

`p?[A007053(n)]`
-/

namespace A087933.P3822662370220128386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087933.P3822662370220128386

/-!
# A087934: a(n) is the least k>=0 such that P(x)=(x-1)*(x-2)*..(x-n)-k has only 1 real root if n is odd, only 2 real roots if n is even.

The programs for A087934, there is no canonical definition to state claims against.
-/

/-! ## A087934.P15551593824443233011

`A033182(2/A032742(n+1)*A001764(n))`
-/

namespace A087934.P15551593824443233011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033182 (SequenceMachineLib.roundAway (2 / (A032742 (n + 1) : ℚ) * (A001764 n : ℚ))).toNat

end

end A087934.P15551593824443233011

/-!
# A087935: Perrin sequence of order 5.

The programs for A087935, the canonical program `A087935.P14940380281615853671` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087935 has offset 0).

The definition of A087935 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A087935.P14940380281615853671

`a(n-4)+a(n-5)` with `a(0)=5, a(1)=0, a(2)=0, a(3)=0, a(4)=4`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A087935

/-- `a(n-4)+a(n-5)` -/
def P14940380281615853671.Spec : Prop :=
  ∀ n, (P14940380281615853671.a n : ℤ) = A087935 n

theorem P14940380281615853671.correct : P14940380281615853671.Spec := by
  intro n
  simp only [A087935]

end A087935

/-! ## A087935.P11924479454831409417

`A127839(n+1)+4*A017827(n)`
-/

namespace A087935.P11924479454831409417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127839 (n + 1) + 4 * A017827 n

end

end A087935.P11924479454831409417

namespace A087935

/-- `A127839(n+1)+4*A017827(n)` -/
def P11924479454831409417.Spec : Prop :=
  ∀ n, P11924479454831409417.a n = A087935 n

end A087935

/-! ## A087935.P6700471884203969648

`Δ[A124789(n+3)]+4*A017827(n)`
-/

namespace A087935.P6700471884203969648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124789 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 4 * A017827 n

end

end A087935.P6700471884203969648

namespace A087935

/-- `Δ[A124789(n+3)]+4*A017827(n)` -/
def P6700471884203969648.Spec : Prop :=
  ∀ n, P6700471884203969648.a n = A087935 n

end A087935

/-! ## A087935.P8465363615147608043

`A127839(n+1)+4*A127839(n+6)`
-/

namespace A087935.P8465363615147608043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127839 (n + 1) + 4 * A127839 (n + 6)

end

end A087935.P8465363615147608043

namespace A087935

/-- `A127839(n+1)+4*A127839(n+6)` -/
def P8465363615147608043.Spec : Prop :=
  ∀ n, P8465363615147608043.a n = A087935 n

end A087935

/-! ## A087935.P1941128125646874817

`Δ[A017827(n+1)+A017827(n+3)]+4*A017827(n)`
-/

namespace A087935.P1941128125646874817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017827 (n + 1) + A017827 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 4 * A017827 n

end

end A087935.P1941128125646874817

namespace A087935

/-- `Δ[A017827(n+1)+A017827(n+3)]+4*A017827(n)` -/
def P1941128125646874817.Spec : Prop :=
  ∀ n, P1941128125646874817.a n = A087935 n

end A087935

/-! ## A087935.P13306810000524904598

`Δ[A124789(n+3)]+4*(A103372(n+2)-A124789(n+3))`
-/

namespace A087935.P13306810000524904598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124789 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 4 * (A103372 (n + 2) - A124789 (n + 3))

end

end A087935.P13306810000524904598

namespace A087935

/-- `Δ[A124789(n+3)]+4*(A103372(n+2)-A124789(n+3))` -/
def P13306810000524904598.Spec : Prop :=
  ∀ n, P13306810000524904598.a n = A087935 n

end A087935

/-! ## A087935.P9208791307067727713

`4*A017827(n)+A103372(n+1)+A017827(n)-A103372(n+2)`
-/

namespace A087935.P9208791307067727713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A017827 n + (A103372 (n + 1) + (A017827 n - A103372 (n + 2)))

end

end A087935.P9208791307067727713

namespace A087935

/-- `4*A017827(n)+A103372(n+1)+A017827(n)-A103372(n+2)` -/
def P9208791307067727713.Spec : Prop :=
  ∀ n, P9208791307067727713.a n = A087935 n

end A087935

/-! ## A087935.P16748848908951129212

`Δ[A124789(n+3)]+4*Δ[A124789(n+8)]`
-/

namespace A087935.P16748848908951129212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124789 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124789 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 4 * (f2 (n + 1) - f2 n)

end

end A087935.P16748848908951129212

namespace A087935

/-- `Δ[A124789(n+3)]+4*Δ[A124789(n+8)]` -/
def P16748848908951129212.Spec : Prop :=
  ∀ n, P16748848908951129212.a n = A087935 n

end A087935

/-! ## A087935.P5536340616326342377

`Δ[abs(A124746(n+3))]+4*A017827(n)`
-/

namespace A087935.P5536340616326342377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A124746 (n + 3)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 4 * A017827 n

end

end A087935.P5536340616326342377

namespace A087935

/-- `Δ[abs(A124746(n+3))]+4*A017827(n)` -/
def P5536340616326342377.Spec : Prop :=
  ∀ n, P5536340616326342377.a n = A087935 n

end A087935

/-! ## A087935.P12008509862884052977

`A306646(∑[n+4]+2)`
-/

namespace A087935.P12008509862884052977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306646 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A087935.P12008509862884052977

namespace A087935

/-- `A306646(∑[n+4]+2)` -/
def P12008509862884052977.Spec : Prop :=
  ∀ n, P12008509862884052977.a n = A087935 n

end A087935

/-!
# A087936: Perrin sequence of order 6.

The programs for A087936, the canonical program `A087936.P14360341465507260216` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087936 has offset 0).

The definition of A087936 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A087936.P14360341465507260216

`a(n-5)+a(n-6)` with `a(0)=6, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=5`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A087936

/-- `a(n-5)+a(n-6)` -/
def P14360341465507260216.Spec : Prop :=
  ∀ n, (P14360341465507260216.a n : ℤ) = A087936 n

theorem P14360341465507260216.correct : P14360341465507260216.Spec := by
  intro n
  simp only [A087936]

end A087936

/-! ## A087936.P9639716775757544924

`A127840(n+1)+5*A017837(n)`
-/

namespace A087936.P9639716775757544924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127840 (n + 1) + 5 * A017837 n

end

end A087936.P9639716775757544924

namespace A087936

/-- `A127840(n+1)+5*A017837(n)` -/
def P9639716775757544924.Spec : Prop :=
  ∀ n, P9639716775757544924.a n = A087936 n

end A087936

/-! ## A087936.P4289768036113268872

`A127840(n+1)+5*A127840(n+7)`
-/

namespace A087936.P4289768036113268872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127840 (n + 1) + 5 * A127840 (n + 7)

end

end A087936.P4289768036113268872

namespace A087936

/-- `A127840(n+1)+5*A127840(n+7)` -/
def P4289768036113268872.Spec : Prop :=
  ∀ n, P4289768036113268872.a n = A087936 n

end A087936

/-! ## A087936.P8113425312373705849

`A306646(A052905(n+2))`
-/

namespace A087936.P8113425312373705849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306646 (A052905 (n + 2)).toNat

end

end A087936.P8113425312373705849

namespace A087936

/-- `A306646(A052905(n+2))` -/
def P8113425312373705849.Spec : Prop :=
  ∀ n, P8113425312373705849.a n = A087936 n

end A087936

/-! ## A087936.P10953403739064184877

`A306646(A027379(n+3)-2)`
-/

namespace A087936.P10953403739064184877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306646 (A027379 (n + 3) - 2).toNat

end

end A087936.P10953403739064184877

namespace A087936

/-- `A306646(A027379(n+3)-2)` -/
def P10953403739064184877.Spec : Prop :=
  ∀ n, P10953403739064184877.a n = A087936 n

end A087936

/-! ## A087936.P15758861817269350638

`A306646(A167499(n+7)-A016777(n+10))`
-/

namespace A087936.P15758861817269350638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306646 (A167499 (n + 7) - A016777 (n + 10)).toNat

end

end A087936.P15758861817269350638

namespace A087936

/-- `A306646(A167499(n+7)-A016777(n+10))` -/
def P15758861817269350638.Spec : Prop :=
  ∀ n, P15758861817269350638.a n = A087936 n

end A087936

/-!
# A087937: Prime hypotenuse of primitive Pythagorean triangles with even short leg (or odd long leg).

The programs for A087937, there is no canonical definition to state claims against.
-/

/-! ## A087937.P1573174433491128975

`A002144(eq[1, and(1, A002365(n+1))]+1)`
-/

namespace A087937.P1573174433491128975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A002365 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A087937.P1573174433491128975

/-! ## A087937.P7728224634996753550

`A002144(eq[A002365(n+1), A070079(n+1)]+1)`
-/

namespace A087937.P7728224634996753550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A087937.P7728224634996753550

/-! ## A087937.P18055179175444248295

`A002313(eq[A002365(n+1), A070079(n+1)]+2)`
-/

namespace A087937.P18055179175444248295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2)

end

end A087937.P18055179175444248295

/-! ## A087937.P1053267545768556208

`A002144(eq[4*A070151(n+1), A002366(n+1)]+1)`
-/

namespace A087937.P1053267545768556208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A070151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002366 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A087937.P1053267545768556208

/-! ## A087937.P10704436091187134549

`p?[A020882(n+1)+A046086(n+1)%2]`
-/

namespace A087937.P10704436091187134549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020882 (n + 1) + Int.tmod (A046086 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087937.P10704436091187134549

/-! ## A087937.P14411782679400979262

`p?[gcd(2, A046087(n+1))*A020882(n+1)]`
-/

namespace A087937.P14411782679400979262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A046087 (n + 1)) : ℤ) * A020882 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087937.P14411782679400979262

/-!
# A087938: Prime hypotenuse of primitive Pythagorean triangles with odd short leg (or even long leg).

The programs for A087938, there is no canonical definition to state claims against.
-/

/-! ## A087938.P15667394093574044155

`A002144(record[n*A002366(n+1)%2]+1)`
-/

namespace A087938.P15667394093574044155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.tmod (A002366 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A087938.P15667394093574044155

/-! ## A087938.P13294346947776504502

`A002144(eq[A002366(n+1), A070079(n+1)]+1)`
-/

namespace A087938.P13294346947776504502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A087938.P13294346947776504502

/-! ## A087938.P3648754009509579124

`A002313(eq[A002366(n+1), A070079(n+1)]+2)`
-/

namespace A087938.P3648754009509579124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2)

end

end A087938.P3648754009509579124

/-! ## A087938.P4701239939857685017

`p?[A020882(n+1)+A046087(n+1)%2]`
-/

namespace A087938.P4701239939857685017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020882 (n + 1) + Int.tmod (A046087 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087938.P4701239939857685017

/-! ## A087938.P12904066131309691642

`p?[gcd(2, A046086(n+1))*A020882(n+1)]`
-/

namespace A087938.P12904066131309691642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A046086 (n + 1)) : ℤ) * A020882 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087938.P12904066131309691642

/-! ## A087938.P9215248597373992138

`p?[A328971(n+1)²+A328972(n+1)²]`
-/

namespace A087938.P9215248597373992138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328971 (n + 1) ^ 2 + A328972 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087938.P9215248597373992138

/-! ## A087938.P18391289667905166230

`∪[A027862(n+1), A087939(n+1)]`
-/

namespace A087938.P18391289667905166230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027862 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A087938.P18391289667905166230

/-! ## A087938.P12639352118838593565

`∪[A051859(n+1), A087939(n+1)]`
-/

namespace A087938.P12639352118838593565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A087938.P12639352118838593565

/-! ## A087938.P8880692715881484041

`∪[A067756(n+1), A087939(n+1)]`
-/

namespace A087938.P8880692715881484041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A087938.P8880692715881484041

/-! ## A087938.P2838687628610081166

`∪[A087939(n+1), A284035(n+1)]`
-/

namespace A087938.P2838687628610081166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284035 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A087938.P2838687628610081166

/-!
# A087939: Prime hypotenuse of primitive Pythagorean triangles with nonprime odd short leg.

The programs for A087939, there is no canonical definition to state claims against.
-/

/-! ## A087939.P10431160065621832879

`∩[A087938(n+1), A266965(n+1)]`
-/

namespace A087939.P10431160065621832879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266965 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087939.P10431160065621832879

/-! ## A087939.P5810389557648549654

`∩[A087938(n+1), A190151(n+1)]`
-/

namespace A087939.P5810389557648549654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087939.P5810389557648549654

/-! ## A087939.P4814170147352956238

`A087938(eq[A087897(n), A087942(n+1)])`
-/

namespace A087939.P4814170147352956238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087938 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A087939.P4814170147352956238

/-!
# A087940: a(n) = Sum_{k=0..n} binomial(n+(-1)^k, k).

The programs for A087940, the canonical program `A087940.P11801420696854602322` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087940 has offset 1).

The definition of A087940 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A087940.P11801420696854602322

`2*a(n-1)+a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=5, a(2)=9, a(3)=20`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A087940

/-- `2*a(n-1)+a(n-2)-2*a(n-3)` -/
def P11801420696854602322.Spec : Prop :=
  ∀ n, P11801420696854602322.a n = A087940 (n + 1)

theorem P11801420696854602322.correct : P11801420696854602322.Spec := by
  intro n
  simp only [A087940, Nat.add_sub_cancel]

end A087940

/-! ## A087940.P4097489287767667468

`∑[ogf((-1-3x+2x^2+x^3)/(-1+x+2x^2))]`
-/

namespace A087940.P4097489287767667468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, -2, -1] [1, -1, -2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087940.P4097489287767667468

namespace A087940

/-- `∑[ogf((-1-3x+2x^2+x^3)/(-1+x+2x^2))]` -/
def P4097489287767667468.Spec : Prop :=
  ∀ n, P4097489287767667468.a n = A087940 (n + 1)

end A087940

/-! ## A087940.P6286111166262744787

`ogf((1+3x-2x^2-x^3)/(1-2x-x^2+2x^3))`
-/

namespace A087940.P6286111166262744787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, -2, -1] [1, -2, -1, 2] n

end

end A087940.P6286111166262744787

namespace A087940

/-- `ogf((1+3x-2x^2-x^3)/(1-2x-x^2+2x^3))` -/
def P6286111166262744787.Spec : Prop :=
  ∀ n, P6286111166262744787.a n = A087940 (n + 1)

end A087940

/-! ## A087940.P17080482143191472813

`A052549(n)+and(1, n)`
-/

namespace A087940.P17080482143191472813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052549 n + (Nat.land 1 n : ℤ)

end

end A087940.P17080482143191472813

namespace A087940

/-- `A052549(n)+and(1, n)` -/
def P17080482143191472813.Spec : Prop :=
  ∀ n, P17080482143191472813.a n = A087940 (n + 1)

end A087940

/-! ## A087940.P69578059532809143

`A084215(n+1)-and(1, n+1)`
-/

namespace A087940.P69578059532809143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084215 (n + 1) - (Nat.land 1 (n + 1) : ℤ)

end

end A087940.P69578059532809143

namespace A087940

/-- `A084215(n+1)-and(1, n+1)` -/
def P69578059532809143.Spec : Prop :=
  ∀ n, P69578059532809143.a n = A087940 (n + 1)

end A087940

/-! ## A087940.P2692989169357048588

`A060182(n)+1-a(n-1)` with `a(0)=1`
-/

namespace A087940.P2692989169357048588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A060182 n + (1 - a (n - 1))

end

end A087940.P2692989169357048588

namespace A087940

/-- `A060182(n)+1-a(n-1)` -/
def P2692989169357048588.Spec : Prop :=
  ∀ n, P2692989169357048588.a n = A087940 (n + 1)

end A087940

/-! ## A087940.P18266115769959176087

`A052549(n)+A000035(n)`
-/

namespace A087940.P18266115769959176087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052549 n + A000035 n

end

end A087940.P18266115769959176087

namespace A087940

/-- `A052549(n)+A000035(n)` -/
def P18266115769959176087.Spec : Prop :=
  ∀ n, P18266115769959176087.a n = A087940 (n + 1)

end A087940

/-! ## A087940.P619388270735651801

`A052997(n)+A014113(n)`
-/

namespace A087940.P619388270735651801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052997 n + A014113 n

end

end A087940.P619388270735651801

namespace A087940

/-- `A052997(n)+A014113(n)` -/
def P619388270735651801.Spec : Prop :=
  ∀ n, P619388270735651801.a n = A087940 (n + 1)

end A087940

/-! ## A087940.P13590977206014266802

`A166920(n)+A003945(n)`
-/

namespace A087940.P13590977206014266802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166920 n + A003945 n

end

end A087940.P13590977206014266802

namespace A087940

/-- `A166920(n)+A003945(n)` -/
def P13590977206014266802.Spec : Prop :=
  ∀ n, P13590977206014266802.a n = A087940 (n + 1)

end A087940

/-! ## A087940.P9479509021962826093

`A007283(n)-A052950(n)`
-/

namespace A087940.P9479509021962826093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 n - A052950 n

end

end A087940.P9479509021962826093

namespace A087940

/-- `A007283(n)-A052950(n)` -/
def P9479509021962826093.Spec : Prop :=
  ∀ n, P9479509021962826093.a n = A087940 (n + 1)

end A087940

/-! ## A087940.P15392812225247833517

`A083582(n)-A135351(n)`
-/

namespace A087940.P15392812225247833517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083582 n - A135351 n

end

end A087940.P15392812225247833517

namespace A087940

/-- `A083582(n)-A135351(n)` -/
def P15392812225247833517.Spec : Prop :=
  ∀ n, P15392812225247833517.a n = A087940 (n + 1)

end A087940

/-! ## A087940.P4067500941077630830

`A078008(n+1)+A052997(n)`
-/

namespace A087940.P4067500941077630830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 (n + 1) + A052997 n

end

end A087940.P4067500941077630830

namespace A087940

/-- `A078008(n+1)+A052997(n)` -/
def P4067500941077630830.Spec : Prop :=
  ∀ n, P4067500941077630830.a n = A087940 (n + 1)

end A087940

/-! ## A087940.P837628154382104851

`A131577(n)+A051049(n+1)`
-/

namespace A087940.P837628154382104851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n + A051049 (n + 1)

end

end A087940.P837628154382104851

namespace A087940

/-- `A131577(n)+A051049(n+1)` -/
def P837628154382104851.Spec : Prop :=
  ∀ n, P837628154382104851.a n = A087940 (n + 1)

end A087940

/-! ## A087940.P4337765277367215000

`A140253(n)+A103204(n+1)`
-/

namespace A087940.P4337765277367215000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140253 n + A103204 (n + 1)

end

end A087940.P4337765277367215000

namespace A087940

/-- `A140253(n)+A103204(n+1)` -/
def P4337765277367215000.Spec : Prop :=
  ∀ n, P4337765277367215000.a n = A087940 (n + 1)

end A087940

/-! ## A087940.P1123872638217465628

`A042950(n+1)-A052950(n)`
-/

namespace A087940.P1123872638217465628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042950 (n + 1) - A052950 n

end

end A087940.P1123872638217465628

namespace A087940

/-- `A042950(n+1)-A052950(n)` -/
def P1123872638217465628.Spec : Prop :=
  ∀ n, P1123872638217465628.a n = A087940 (n + 1)

end A087940

/-! ## A087940.P15981867702985742358

`A166920(n+2)-A042950(n)`
-/

namespace A087940.P15981867702985742358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166920 (n + 2) - A042950 n

end

end A087940.P15981867702985742358

namespace A087940

/-- `A166920(n+2)-A042950(n)` -/
def P15981867702985742358.Spec : Prop :=
  ∀ n, P15981867702985742358.a n = A087940 (n + 1)

end A087940

/-! ## A087940.P12314881075654301960

`A140253(n+2)-A083329(n)`
-/

namespace A087940.P12314881075654301960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140253 (n + 2) - A083329 n

end

end A087940.P12314881075654301960

namespace A087940

/-- `A140253(n+2)-A083329(n)` -/
def P12314881075654301960.Spec : Prop :=
  ∀ n, P12314881075654301960.a n = A087940 (n + 1)

end A087940

/-! ## A087940.P17549982521049978771

`A052997(n)+2*A001045(n)`
-/

namespace A087940.P17549982521049978771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052997 n + 2 * A001045 n

end

end A087940.P17549982521049978771

namespace A087940

/-- `A052997(n)+2*A001045(n)` -/
def P17549982521049978771.Spec : Prop :=
  ∀ n, P17549982521049978771.a n = A087940 (n + 1)

end A087940

/-! ## A087940.P8045690696195453129

`A166920(n)+A074323(2*n)`
-/

namespace A087940.P8045690696195453129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166920 n + A074323 (2 * n)

end

end A087940.P8045690696195453129

namespace A087940

/-- `A166920(n)+A074323(2*n)` -/
def P8045690696195453129.Spec : Prop :=
  ∀ n, P8045690696195453129.a n = A087940 (n + 1)

end A087940

/-! ## A087940.P11208374920394388327

`A000975(n+2)-A328284(n+2)`
-/

namespace A087940.P11208374920394388327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (n + 2) - A328284 (n + 2)

end

end A087940.P11208374920394388327

namespace A087940

/-- `A000975(n+2)-A328284(n+2)` -/
def P11208374920394388327.Spec : Prop :=
  ∀ n, P11208374920394388327.a n = A087940 (n + 1)

end A087940

/-!
# A087942: Number of partitions of n into as many primes as n has prime factors.

The programs for A087942, there is no canonical definition to state claims against.
-/

/-! ## A087942.P9821546834116714922

`A000045(A287476(n))%A156673(2*(n+1))`
-/

namespace A087942.P9821546834116714922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 (A287476 n).toNat) (A156673 (2 * (n + 1)))

end

end A087942.P9821546834116714922

/-! ## A087942.P10343720665386748952

`A014689(A287476(n))%A261341(n+1)`
-/

namespace A087942.P10343720665386748952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014689 (A287476 n).toNat) (A261341 (n + 1))

end

end A087942.P10343720665386748952

/-! ## A087942.P11544731076425718296

`gcd(A338753(A298294(n+1)), A338776(n))`
-/

namespace A087942.P11544731076425718296
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A338753 (A298294 (n + 1)).toNat) (A338776 n)

end

end A087942.P11544731076425718296

/-! ## A087942.P9256454725217483517

`A124766(n*A017125(n))`
-/

namespace A087942.P9256454725217483517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 ((n : ℤ) * A017125 n).toNat

end

end A087942.P9256454725217483517

/-! ## A087942.P2748995267676731128

`A124766(n*A324965(n))`
-/

namespace A087942.P2748995267676731128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 ((n : ℤ) * A324965 n).toNat

end

end A087942.P2748995267676731128

/-!
# A087943: Numbers n such that 3 divides sigma(n).

The programs for A087943, the canonical program `A087943.P15313803250055201287` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087943 has offset 1).

The definition of A087943 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087943.P15313803250055201287

`lt[A074941(n+1), 1]+1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A087943

/-- `lt[A074941(n+1), 1]+1` -/
def P15313803250055201287.Spec : Prop :=
  ∀ n, (P15313803250055201287.a n : ℤ) = A087943 (n + 1)

theorem P15313803250055201287.correct : P15313803250055201287.Spec := by
  intro n
  simp only [A087943, Nat.add_sub_cancel]

end A087943

/-! ## A087943.P6267021290207410184

`lt[A353815(n+1), 1]+1`
-/

namespace A087943.P6267021290207410184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353815 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A087943.P6267021290207410184

namespace A087943

/-- `lt[A353815(n+1), 1]+1` -/
def P6267021290207410184.Spec : Prop :=
  ∀ n, (P6267021290207410184.a n : ℤ) = A087943 (n + 1)

end A087943

/-! ## A087943.P5399186120723993953

`lt[A000203(n+1)%3, 1]+1`
-/

namespace A087943.P5399186120723993953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 1)) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A087943.P5399186120723993953

namespace A087943

/-- `lt[A000203(n+1)%3, 1]+1` -/
def P5399186120723993953.Spec : Prop :=
  ∀ n, (P5399186120723993953.a n : ℤ) = A087943 (n + 1)

end A087943

/-! ## A087943.P13436877798988832744

`eq[3, gcd(A000203(n), A052369(a(n-1)+1))]` with `a(0)=1`
-/

namespace A087943.P13436877798988832744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  Int.gcd (A000203 n) (A052369 (f2 (n - 1) + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087943.P13436877798988832744

namespace A087943

/-- `eq[3, gcd(A000203(n), A052369(a(n-1)+1))]` -/
def P13436877798988832744.Spec : Prop :=
  ∀ n, (P13436877798988832744.a n : ℤ) = A087943 (n + 1)

end A087943

/-! ## A087943.P2078158307253920467

`lt[∑{d}[n+1, #]%3, 1]+1`
-/

namespace A087943.P2078158307253920467
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f2 n), d) % 3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n + 1

end

end A087943.P2078158307253920467

namespace A087943

/-- `lt[∑{d}[n+1, #]%3, 1]+1` -/
def P2078158307253920467.Spec : Prop :=
  ∀ n, (P2078158307253920467.a n : ℤ) = A087943 (n + 1)

end A087943

/-! ## A087943.P14591428989283429022

`lt[6, dr(A006352(n))]`
-/

namespace A087943.P14591428989283429022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A006352 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A087943.P14591428989283429022

namespace A087943

/-- `lt[6, dr(A006352(n))]` -/
def P14591428989283429022.Spec : Prop :=
  ∀ n, (P14591428989283429022.a n : ℤ) = A087943 (n + 1)

end A087943

/-! ## A087943.P14563620706205200577

`eq[9, dr(A004009(n))]`
-/

namespace A087943.P14563620706205200577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A004009 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087943.P14563620706205200577

namespace A087943

/-- `eq[9, dr(A004009(n))]` -/
def P14563620706205200577.Spec : Prop :=
  ∀ n, (P14563620706205200577.a n : ℤ) = A087943 (n + 1)

end A087943

/-! ## A087943.P14586418786020565068

`eq[9, gcd(9, A004016(n))]`
-/

namespace A087943.P14586418786020565068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 9 (A004016 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087943.P14586418786020565068

namespace A087943

/-- `eq[9, gcd(9, A004016(n))]` -/
def P14586418786020565068.Spec : Prop :=
  ∀ n, (P14586418786020565068.a n : ℤ) = A087943 (n + 1)

end A087943

/-! ## A087943.P18216963189435304918

`eq[3, gcd(3, A144613(n+1))]+1`
-/

namespace A087943.P18216963189435304918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A144613 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A087943.P18216963189435304918

namespace A087943

/-- `eq[3, gcd(3, A144613(n+1))]+1` -/
def P18216963189435304918.Spec : Prop :=
  ∀ n, (P18216963189435304918.a n : ℤ) = A087943 (n + 1)

end A087943

/-! ## A087943.P3303318782399813825

`eq[1, A267017(A004016(n)+1)]`
-/

namespace A087943.P3303318782399813825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267017 (A004016 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A087943.P3303318782399813825

namespace A087943

/-- `eq[1, A267017(A004016(n)+1)]` -/
def P3303318782399813825.Spec : Prop :=
  ∀ n, (P3303318782399813825.a n : ℤ) = A087943 (n + 1)

end A087943

/-! ## A087943.P5636402730564992421

`lt[(A082895(n+1)-A082901(n+1))%3, 1]+1`
-/

namespace A087943.P5636402730564992421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082895 (n + 1) - A082901 (n + 1)) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A087943.P5636402730564992421

namespace A087943

/-- `lt[(A082895(n+1)-A082901(n+1))%3, 1]+1` -/
def P5636402730564992421.Spec : Prop :=
  ∀ n, (P5636402730564992421.a n : ℤ) = A087943 (n + 1)

end A087943

/-! ## A087943.P2115867032044549398

`eq[A140132(A004016(n)+n), A140132(n)]`
-/

namespace A087943.P2115867032044549398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140132 (A004016 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140132 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087943.P2115867032044549398

namespace A087943

/-- `eq[A140132(A004016(n)+n), A140132(n)]` -/
def P2115867032044549398.Spec : Prop :=
  ∀ n, (P2115867032044549398.a n : ℤ) = A087943 (n + 1)

end A087943

/-! ## A087943.P11259754593323188248

`lt[A080425(A080398(n+1)), 1]+1`
-/

namespace A087943.P11259754593323188248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (A080398 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A087943.P11259754593323188248

namespace A087943

/-- `lt[A080425(A080398(n+1)), 1]+1` -/
def P11259754593323188248.Spec : Prop :=
  ∀ n, (P11259754593323188248.a n : ℤ) = A087943 (n + 1)

end A087943

/-! ## A087943.P16075698352984853920

`eq[2, A010872(A039653(n))]`
-/

namespace A087943.P16075698352984853920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A039653 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A087943.P16075698352984853920

namespace A087943

/-- `eq[2, A010872(A039653(n))]` -/
def P16075698352984853920.Spec : Prop :=
  ∀ n, (P16075698352984853920.a n : ℤ) = A087943 (n + 1)

end A087943

/-!
# A087944: Expansion of (1-4*x+3*x^2)/((1-2*x)*(1-4*x+x^2)).

The programs for A087944, the canonical program `A087944.P9480932538594951353` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087944 has offset 0).

The definition of A087944 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-4x+3x^2)/(1-6x+9x^2-2x^3))` (program `A087944.P9480932538594951353`, by `A087944.P9480932538594951353.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A087944.P9480932538594951353

`ogf((1-4x+3x^2)/(1-6x+9x^2-2x^3))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A087944

/-- `ogf((1-4x+3x^2)/(1-6x+9x^2-2x^3))` -/
def P9480932538594951353.Spec : Prop :=
  ∀ n, P9480932538594951353.a n = A087944 n

theorem P9480932538594951353.correct : P9480932538594951353.Spec := by
  intro n
  simp only [A087944]

end A087944

/-! ## A087944.P8822980997146262391

`6*a(n-1)-9*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=2, a(2)=6`
-/

namespace A087944.P8822980997146262391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 6] fun n a =>
  6 * a (n - 1) - 9 * a (n - 2) + 2 * a (n - 3)

end

end A087944.P8822980997146262391

namespace A087944

/-- `6*a(n-1)-9*a(n-2)+2*a(n-3)` -/
def P8822980997146262391.Spec : Prop :=
  ∀ n, P8822980997146262391.a n = A087944 n

end A087944

/-! ## A087944.P3583213578348571980

`(2^n+(2+sqrt(3))^n+(2-sqrt(3))^n)/3`
-/

namespace A087944.P3583213578348571980
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℝ) + (2 + Real.sqrt (3 : ℝ)) ^ n + (2 - Real.sqrt (3 : ℝ)) ^ n) / 3

end

end A087944.P3583213578348571980

namespace A087944

/-- `(2^n+(2+sqrt(3))^n+(2-sqrt(3))^n)/3` -/
def P3583213578348571980.Spec : Prop :=
  ∀ n, P3583213578348571980.a n = (A087944 n : ℝ)

end A087944

/-! ## A087944.P670584869895909988

`4*a(n-1)-a(n-2)-2^(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A087944.P670584869895909988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  4 * a (n - 1) - a (n - 2) - (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

end

end A087944.P670584869895909988

namespace A087944

/-- `4*a(n-1)-a(n-2)-2^(n-2)` -/
def P670584869895909988.Spec : Prop :=
  ∀ n, P670584869895909988.a n = (A087944 n : ℚ)

end A087944

/-! ## A087944.P2477723837290539582

`A336678(2*n)`
-/

namespace A087944.P2477723837290539582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336678 (2 * n)

end

end A087944.P2477723837290539582

namespace A087944

/-- `A336678(2*n)` -/
def P2477723837290539582.Spec : Prop :=
  ∀ n, P2477723837290539582.a n = A087944 n

end A087944

/-! ## A087944.P8294718205399355986

`Δ[Δ[A123020(n)]]`
-/

namespace A087944.P8294718205399355986
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123020 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087944.P8294718205399355986

namespace A087944

/-- `Δ[Δ[A123020(n)]]` -/
def P8294718205399355986.Spec : Prop :=
  ∀ n, P8294718205399355986.a n = A087944 n

end A087944

/-! ## A087944.P9377484205958240758

`record[A336678(n)/(-1)^n]`
-/

namespace A087944.P9377484205958240758
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336678 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087944.P9377484205958240758

namespace A087944

/-- `record[A336678(n)/(-1)^n]` -/
def P9377484205958240758.Spec : Prop :=
  ∀ n, P9377484205958240758.a n = (A087944 n : ℚ)

end A087944

/-! ## A087944.P10155322262507287419

`∑[A087945(log2(ceil(2^(n-1))))]`
-/

namespace A087944.P10155322262507287419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087945 (SequenceMachineLib.roundAway (Real.logb 2 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087944.P10155322262507287419

namespace A087944

/-- `∑[A087945(log2(ceil(2^(n-1))))]` -/
def P10155322262507287419.Spec : Prop :=
  ∀ n, P10155322262507287419.a n = A087944 n

end A087944

/-! ## A087944.P17437032425599621873

`A087945(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A087944.P17437032425599621873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A087945 (n - 1) + a (n - 1)

end

end A087944.P17437032425599621873

namespace A087944

/-- `A087945(n-1)+a(n-1)` -/
def P17437032425599621873.Spec : Prop :=
  ∀ n, P17437032425599621873.a n = A087944 n

end A087944

/-! ## A087944.P13865027490718800321

`A120893(n)+A001045(n)`
-/

namespace A087944.P13865027490718800321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120893 n + A001045 n

end

end A087944.P13865027490718800321

namespace A087944

/-- `A120893(n)+A001045(n)` -/
def P13865027490718800321.Spec : Prop :=
  ∀ n, P13865027490718800321.a n = A087944 n

end A087944

/-! ## A087944.P3470867988129576551

`A123020(n)+A001353(n)`
-/

namespace A087944.P3470867988129576551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123020 n + A001353 n

end

end A087944.P3470867988129576551

namespace A087944

/-- `A123020(n)+A001353(n)` -/
def P3470867988129576551.Spec : Prop :=
  ∀ n, P3470867988129576551.a n = A087944 n

end A087944

/-! ## A087944.P16896024574789363465

`A106707(n)+A087946(n)`
-/

namespace A087944.P16896024574789363465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106707 n + A087946 n

end

end A087944.P16896024574789363465

namespace A087944

/-- `A106707(n)+A087946(n)` -/
def P16896024574789363465.Spec : Prop :=
  ∀ n, P16896024574789363465.a n = A087944 n

end A087944

/-! ## A087944.P4438755802599114796

`A087946(n)-A001353(n)`
-/

namespace A087944.P4438755802599114796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087946 n - A001353 n

end

end A087944.P4438755802599114796

namespace A087944

/-- `A087946(n)-A001353(n)` -/
def P4438755802599114796.Spec : Prop :=
  ∀ n, P4438755802599114796.a n = A087944 n

end A087944

/-! ## A087944.P11255934833729033600

`A123020(n)-A106707(n)`
-/

namespace A087944.P11255934833729033600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123020 n - A106707 n

end

end A087944.P11255934833729033600

namespace A087944

/-- `A123020(n)-A106707(n)` -/
def P11255934833729033600.Spec : Prop :=
  ∀ n, P11255934833729033600.a n = A087944 n

end A087944

/-! ## A087944.P4560587092958851132

`A123020(n)+A052530(n)/2`
-/

namespace A087944.P4560587092958851132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123020 n : ℚ) + (A052530 n : ℚ) / 2

end

end A087944.P4560587092958851132

namespace A087944

/-- `A123020(n)+A052530(n)/2` -/
def P4560587092958851132.Spec : Prop :=
  ∀ n, P4560587092958851132.a n = (A087944 n : ℚ)

end A087944

/-! ## A087944.P6306996894852358809

`A087946(n)-A052530(n)/2`
-/

namespace A087944.P6306996894852358809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087946 n : ℚ) - (A052530 n : ℚ) / 2

end

end A087944.P6306996894852358809

namespace A087944

/-- `A087946(n)-A052530(n)/2` -/
def P6306996894852358809.Spec : Prop :=
  ∀ n, P6306996894852358809.a n = (A087944 n : ℚ)

end A087944

/-! ## A087944.P9635367383838627039

`A087945(n)-A052530(n)`
-/

namespace A087944.P9635367383838627039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087945 n - A052530 n

end

end A087944.P9635367383838627039

namespace A087944

/-- `A087945(n)-A052530(n)` -/
def P9635367383838627039.Spec : Prop :=
  ∀ n, P9635367383838627039.a n = A087944 n

end A087944

/-! ## A087944.P16048840321522812855

`A087945(n)+2*A106707(n)`
-/

namespace A087944.P16048840321522812855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087945 n + 2 * A106707 n

end

end A087944.P16048840321522812855

namespace A087944

/-- `A087945(n)+2*A106707(n)` -/
def P16048840321522812855.Spec : Prop :=
  ∀ n, P16048840321522812855.a n = A087944 n

end A087944

/-! ## A087944.P14170739454254919399

`A087945(n)-2*A001353(n)`
-/

namespace A087944.P14170739454254919399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087945 n - 2 * A001353 n

end

end A087944.P14170739454254919399

namespace A087944

/-- `A087945(n)-2*A001353(n)` -/
def P14170739454254919399.Spec : Prop :=
  ∀ n, P14170739454254919399.a n = A087944 n

end A087944

/-! ## A087944.P12184747571993998424

`A087946(n)+A087946(n)-A087945(n)`
-/

namespace A087944.P12184747571993998424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087946 n + (A087946 n - A087945 n)

end

end A087944.P12184747571993998424

namespace A087944

/-- `A087946(n)+A087946(n)-A087945(n)` -/
def P12184747571993998424.Spec : Prop :=
  ∀ n, P12184747571993998424.a n = A087944 n

end A087944

/-!
# A087945: Expansion of (1-2x-x^2)/((1-2x)(1-4x+x^2)).

The programs for A087945, the canonical program `A087945.P2016420805091376533` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087945 has offset 0).

The definition of A087945 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-2x-x^2)/(1-6x+9x^2-2x^3))` (program `A087945.P2016420805091376533`, by `A087945.P2016420805091376533.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A087945.P2016420805091376533

`ogf((1-2x-x^2)/(1-6x+9x^2-2x^3))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A087945

/-- `ogf((1-2x-x^2)/(1-6x+9x^2-2x^3))` -/
def P2016420805091376533.Spec : Prop :=
  ∀ n, P2016420805091376533.a n = A087945 n

theorem P2016420805091376533.correct : P2016420805091376533.Spec := by
  intro n
  simp only [A087945]

end A087945

/-! ## A087945.P7948888036570441884

`6*a(n-1)-9*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=4, a(2)=14`
-/

namespace A087945.P7948888036570441884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 14] fun n a =>
  6 * a (n - 1) - 9 * a (n - 2) + 2 * a (n - 3)

end

end A087945.P7948888036570441884

namespace A087945

/-- `6*a(n-1)-9*a(n-2)+2*a(n-3)` -/
def P7948888036570441884.Spec : Prop :=
  ∀ n, P7948888036570441884.a n = A087945 n

end A087945

/-! ## A087945.P16865241225864808632

`4*a(n-1)-a(n-2)-2^(n-2)` with `a(0)=1, a(1)=4`
-/

namespace A087945.P16865241225864808632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n a =>
  4 * a (n - 1) - a (n - 2) - (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

end

end A087945.P16865241225864808632

namespace A087945

/-- `4*a(n-1)-a(n-2)-2^(n-2)` -/
def P16865241225864808632.Spec : Prop :=
  ∀ n, P16865241225864808632.a n = (A087945 n : ℚ)

end A087945

/-! ## A087945.P4907902835623093502

`Δ[A087944(n)]`
-/

namespace A087945.P4907902835623093502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087944 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087945.P4907902835623093502

namespace A087945

/-- `Δ[A087944(n)]` -/
def P4907902835623093502.Spec : Prop :=
  ∀ n, P4907902835623093502.a n = A087945 n

end A087945

/-! ## A087945.P3994223221294409350

`Δ[A336678(2*n)]`
-/

namespace A087945.P3994223221294409350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336678 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087945.P3994223221294409350

namespace A087945

/-- `Δ[A336678(2*n)]` -/
def P3994223221294409350.Spec : Prop :=
  ∀ n, P3994223221294409350.a n = A087945 n

end A087945

/-! ## A087945.P950847541529898082

`Δ[Δ[Δ[A123020(n)]]]`
-/

namespace A087945.P950847541529898082
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123020 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087945.P950847541529898082

namespace A087945

/-- `Δ[Δ[Δ[A123020(n)]]]` -/
def P950847541529898082.Spec : Prop :=
  ∀ n, P950847541529898082.a n = A087945 n

end A087945

/-! ## A087945.P11443296238229591972

`2*A001835(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A087945.P11443296238229591972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A001835 n + 2 * a (n - 1)

end

end A087945.P11443296238229591972

namespace A087945

/-- `2*A001835(n)+2*a(n-1)` -/
def P11443296238229591972.Spec : Prop :=
  ∀ n, P11443296238229591972.a n = A087945 n

end A087945

/-! ## A087945.P11846306685123304722

`A087946(n)+A001353(n)`
-/

namespace A087945.P11846306685123304722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087946 n + A001353 n

end

end A087945.P11846306685123304722

namespace A087945

/-- `A087946(n)+A001353(n)` -/
def P11846306685123304722.Spec : Prop :=
  ∀ n, P11846306685123304722.a n = A087945 n

end A087945

/-! ## A087945.P14415925457118873648

`A123020(n)+A005320(n)`
-/

namespace A087945.P14415925457118873648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123020 n + A005320 n

end

end A087945.P14415925457118873648

namespace A087945

/-- `A123020(n)+A005320(n)` -/
def P14415925457118873648.Spec : Prop :=
  ∀ n, P14415925457118873648.a n = A087945 n

end A087945

/-! ## A087945.P17186720486433276928

`A087944(n)+A052530(n)`
-/

namespace A087945.P17186720486433276928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087944 n + A052530 n

end

end A087945.P17186720486433276928

namespace A087945

/-- `A087944(n)+A052530(n)` -/
def P17186720486433276928.Spec : Prop :=
  ∀ n, P17186720486433276928.a n = A087945 n

end A087945

/-! ## A087945.P15322685355701702236

`A087946(n)-A106707(n)`
-/

namespace A087945.P15322685355701702236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087946 n - A106707 n

end

end A087945.P15322685355701702236

namespace A087945

/-- `A087946(n)-A106707(n)` -/
def P15322685355701702236.Spec : Prop :=
  ∀ n, P15322685355701702236.a n = A087945 n

end A087945

/-! ## A087945.P469348049507365091

`Δ[A120893(n)+A001045(n)]`
-/

namespace A087945.P469348049507365091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120893 n + A001045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087945.P469348049507365091

namespace A087945

/-- `Δ[A120893(n)+A001045(n)]` -/
def P469348049507365091.Spec : Prop :=
  ∀ n, P469348049507365091.a n = A087945 n

end A087945

/-! ## A087945.P15748530176695116548

`A087944(n+1)-A087944(n)`
-/

namespace A087945.P15748530176695116548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087944 (n + 1) - A087944 n

end

end A087945.P15748530176695116548

namespace A087945

/-- `A087944(n+1)-A087944(n)` -/
def P15748530176695116548.Spec : Prop :=
  ∀ n, P15748530176695116548.a n = A087945 n

end A087945

/-! ## A087945.P14345143228416093582

`A087944(n)+2*A001353(n)`
-/

namespace A087945.P14345143228416093582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087944 n + 2 * A001353 n

end

end A087945.P14345143228416093582

namespace A087945

/-- `A087944(n)+2*A001353(n)` -/
def P14345143228416093582.Spec : Prop :=
  ∀ n, P14345143228416093582.a n = A087945 n

end A087945

/-! ## A087945.P872459813753844356

`2*A099780(n)-A000079(n)`
-/

namespace A087945.P872459813753844356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A099780 n - A000079 n

end

end A087945.P872459813753844356

namespace A087945

/-- `2*A099780(n)-A000079(n)` -/
def P872459813753844356.Spec : Prop :=
  ∀ n, P872459813753844356.a n = A087945 n

end A087945

/-! ## A087945.P4381916746082084453

`A123020(n)+3*A001353(n)`
-/

namespace A087945.P4381916746082084453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123020 n + 3 * A001353 n

end

end A087945.P4381916746082084453

namespace A087945

/-- `A123020(n)+3*A001353(n)` -/
def P4381916746082084453.Spec : Prop :=
  ∀ n, P4381916746082084453.a n = A087945 n

end A087945

/-! ## A087945.P15171633547724473937

`A087946(n)+A052530(n)/2`
-/

namespace A087945.P15171633547724473937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087946 n : ℚ) + (A052530 n : ℚ) / 2

end

end A087945.P15171633547724473937

namespace A087945

/-- `A087946(n)+A052530(n)/2` -/
def P15171633547724473937.Spec : Prop :=
  ∀ n, P15171633547724473937.a n = (A087945 n : ℚ)

end A087945

/-! ## A087945.P17573072614032204071

`2*A087946(n)-A087944(n)`
-/

namespace A087945.P17573072614032204071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A087946 n - A087944 n

end

end A087945.P17573072614032204071

namespace A087945

/-- `2*A087946(n)-A087944(n)` -/
def P17573072614032204071.Spec : Prop :=
  ∀ n, P17573072614032204071.a n = A087945 n

end A087945

/-! ## A087945.P16654674439401667058

`A087944(n)-2*A106707(n)`
-/

namespace A087945.P16654674439401667058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087944 n - 2 * A106707 n

end

end A087945.P16654674439401667058

namespace A087945

/-- `A087944(n)-2*A106707(n)` -/
def P16654674439401667058.Spec : Prop :=
  ∀ n, P16654674439401667058.a n = A087945 n

end A087945

/-! ## A087945.P14054946887633687725

`Δ[(A099780(n)+A001835(n))/2]`
-/

namespace A087945.P14054946887633687725
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099780 n + A001835 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087945.P14054946887633687725

namespace A087945

/-- `Δ[(A099780(n)+A001835(n))/2]` -/
def P14054946887633687725.Spec : Prop :=
  ∀ n, P14054946887633687725.a n = (A087945 n : ℚ)

end A087945

/-!
# A087946: Expansion of (1-3x+x^2)/((1-2x)(1-4x+x^2)).

The programs for A087946, the canonical program `A087946.P16651520507731107330` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087946 has offset 0).

The definition of A087946 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-3x+x^2)/(1-6x+9x^2-2x^3))` (program `A087946.P16651520507731107330`, by `A087946.P16651520507731107330.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A087946.P16651520507731107330

`ogf((1-3x+x^2)/(1-6x+9x^2-2x^3))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A087946

/-- `ogf((1-3x+x^2)/(1-6x+9x^2-2x^3))` -/
def P16651520507731107330.Spec : Prop :=
  ∀ n, P16651520507731107330.a n = A087946 n

theorem P16651520507731107330.correct : P16651520507731107330.Spec := by
  intro n
  simp only [A087946]

end A087946

/-! ## A087946.P16921953081613471812

`6*a(n-1)-9*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=3, a(2)=10`
-/

namespace A087946.P16921953081613471812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 10] fun n a =>
  6 * a (n - 1) - 9 * a (n - 2) + 2 * a (n - 3)

end

end A087946.P16921953081613471812

namespace A087946

/-- `6*a(n-1)-9*a(n-2)+2*a(n-3)` -/
def P16921953081613471812.Spec : Prop :=
  ∀ n, P16921953081613471812.a n = A087946 n

end A087946

/-! ## A087946.P10740609351946422504

`A087944(n+1)/2`
-/

namespace A087946.P10740609351946422504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087944 (n + 1) : ℚ) / 2

end

end A087946.P10740609351946422504

namespace A087946

/-- `A087944(n+1)/2` -/
def P10740609351946422504.Spec : Prop :=
  ∀ n, P10740609351946422504.a n = (A087946 n : ℚ)

end A087946

/-! ## A087946.P13925306783533630523

`4*a(n-1)-a(n-2)-2^(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A087946.P13925306783533630523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  4 * a (n - 1) - a (n - 2) - (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

end

end A087946.P13925306783533630523

namespace A087946

/-- `4*a(n-1)-a(n-2)-2^(n-2)` -/
def P13925306783533630523.Spec : Prop :=
  ∀ n, P13925306783533630523.a n = (A087946 n : ℚ)

end A087946

/-! ## A087946.P9182634281897542240

`A336678(Δ[n²])`
-/

namespace A087946.P9182634281897542240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336678 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A087946.P9182634281897542240

namespace A087946

/-- `A336678(Δ[n²])` -/
def P9182634281897542240.Spec : Prop :=
  ∀ n, P9182634281897542240.a n = A087946 n

end A087946

/-! ## A087946.P17364119971145631029

`record[A336678(n*n%2)]`
-/

namespace A087946.P17364119971145631029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336678 (n * (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087946.P17364119971145631029

namespace A087946

/-- `record[A336678(n*n%2)]` -/
def P17364119971145631029.Spec : Prop :=
  ∀ n, P17364119971145631029.a n = A087946 n

end A087946

/-! ## A087946.P6305228967595499402

`A123020(n+2)-2^n`
-/

namespace A087946.P6305228967595499402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123020 (n + 2) - (2 ^ n : ℤ)

end

end A087946.P6305228967595499402

namespace A087946

/-- `A123020(n+2)-2^n` -/
def P6305228967595499402.Spec : Prop :=
  ∀ n, P6305228967595499402.a n = A087946 n

end A087946

/-! ## A087946.P16006806217013748319

`∑[A099780(n)]+1-2^n`
-/

namespace A087946.P16006806217013748319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099780 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 - (2 ^ n : ℤ)

end

end A087946.P16006806217013748319

namespace A087946

/-- `∑[A099780(n)]+1-2^n` -/
def P16006806217013748319.Spec : Prop :=
  ∀ n, P16006806217013748319.a n = A087946 n

end A087946

/-! ## A087946.P13544088354295587349

`A001353(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A087946.P13544088354295587349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001353 n + 2 * a (n - 1)

end

end A087946.P13544088354295587349

namespace A087946

/-- `A001353(n)+2*a(n-1)` -/
def P13544088354295587349.Spec : Prop :=
  ∀ n, P13544088354295587349.a n = A087946 n

end A087946

/-! ## A087946.P7249907580658387699

`2*a(n-1)-A106707(n)` with `a(0)=1`
-/

namespace A087946.P7249907580658387699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) - A106707 n

end

end A087946.P7249907580658387699

namespace A087946

/-- `2*a(n-1)-A106707(n)` -/
def P7249907580658387699.Spec : Prop :=
  ∀ n, P7249907580658387699.a n = A087946 n

end A087946

/-! ## A087946.P5314500313775413121

`A249578(3*n)+2*a(n-1)` with `a(0)=1`
-/

namespace A087946.P5314500313775413121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A249578 (3 * n) + 2 * a (n - 1)

end

end A087946.P5314500313775413121

namespace A087946

/-- `A249578(3*n)+2*a(n-1)` -/
def P5314500313775413121.Spec : Prop :=
  ∀ n, P5314500313775413121.a n = A087946 n

end A087946

/-! ## A087946.P5961409402891904642

`A006253(n)+A001045(n)`
-/

namespace A087946.P5961409402891904642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006253 n + A001045 n

end

end A087946.P5961409402891904642

namespace A087946

/-- `A006253(n)+A001045(n)` -/
def P5961409402891904642.Spec : Prop :=
  ∀ n, P5961409402891904642.a n = A087946 n

end A087946

/-! ## A087946.P3043502677949101259

`A087944(n)+A001353(n)`
-/

namespace A087946.P3043502677949101259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087944 n + A001353 n

end

end A087946.P3043502677949101259

namespace A087946

/-- `A087944(n)+A001353(n)` -/
def P3043502677949101259.Spec : Prop :=
  ∀ n, P3043502677949101259.a n = A087946 n

end A087946

/-! ## A087946.P15363394370216157441

`A087944(n)-A106707(n)`
-/

namespace A087946.P15363394370216157441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087944 n - A106707 n

end

end A087946.P15363394370216157441

namespace A087946

/-- `A087944(n)-A106707(n)` -/
def P15363394370216157441.Spec : Prop :=
  ∀ n, P15363394370216157441.a n = A087946 n

end A087946

/-! ## A087946.P10185284660460038933

`A006253(n)+Δ[A005578(n)]`
-/

namespace A087946.P10185284660460038933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006253 n + (f1 (n + 1) - f1 n)

end

end A087946.P10185284660460038933

namespace A087946

/-- `A006253(n)+Δ[A005578(n)]` -/
def P10185284660460038933.Spec : Prop :=
  ∀ n, P10185284660460038933.a n = A087946 n

end A087946

/-! ## A087946.P2064541188884726563

`A087944(n)+Δ[A101879(n)]`
-/

namespace A087946.P2064541188884726563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101879 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087944 n + (f1 (n + 1) - f1 n)

end

end A087946.P2064541188884726563

namespace A087946

/-- `A087944(n)+Δ[A101879(n)]` -/
def P2064541188884726563.Spec : Prop :=
  ∀ n, P2064541188884726563.a n = A087946 n

end A087946

/-! ## A087946.P5488145578740434830

`A006253(n)+A014113(n)/2`
-/

namespace A087946.P5488145578740434830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006253 n : ℚ) + (A014113 n : ℚ) / 2

end

end A087946.P5488145578740434830

namespace A087946

/-- `A006253(n)+A014113(n)/2` -/
def P5488145578740434830.Spec : Prop :=
  ∀ n, P5488145578740434830.a n = (A087946 n : ℚ)

end A087946

/-! ## A087946.P1943439777267259485

`∑[A001835(n)]+A087944(n)-1`
-/

namespace A087946.P1943439777267259485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001835 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A087944 n - 1)

end

end A087946.P1943439777267259485

namespace A087946

/-- `∑[A001835(n)]+A087944(n)-1` -/
def P1943439777267259485.Spec : Prop :=
  ∀ n, P1943439777267259485.a n = A087946 n

end A087946

/-! ## A087946.P8309132912143474060

`∑[A099780(n)]+1-A000079(n)`
-/

namespace A087946.P8309132912143474060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099780 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A000079 n)

end

end A087946.P8309132912143474060

namespace A087946

/-- `∑[A099780(n)]+1-A000079(n)` -/
def P8309132912143474060.Spec : Prop :=
  ∀ n, P8309132912143474060.a n = A087946 n

end A087946

/-! ## A087946.P16933840976162679596

`A006253(n)+Δ[A052953(n)/2]`
-/

namespace A087946.P16933840976162679596
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052953 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006253 n : ℚ) + (f1 (n + 1) - f1 n)

end

end A087946.P16933840976162679596

namespace A087946

/-- `A006253(n)+Δ[A052953(n)/2]` -/
def P16933840976162679596.Spec : Prop :=
  ∀ n, P16933840976162679596.a n = (A087946 n : ℚ)

end A087946

/-!
# A087948: Sum of successive remainders in computing euclidean algorithm for (1, -1/sqrt(-n)) has real and imaginary parts equal.

The programs for A087948, there is no canonical definition to state claims against.
-/

/-! ## A087948.P5479790664382583535

`eq[A002828(n²), A015933(A276689(n))]`
-/

namespace A087948.P5479790664382583535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015933 (A276689 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087948.P5479790664382583535

/-! ## A087948.P11274212580520410556

`eq[A015933(A276689(n)), A178334(n)]`
-/

namespace A087948.P11274212580520410556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015933 (A276689 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087948.P11274212580520410556

/-! ## A087948.P12579000936291821020

`eq[A276689(n)%4, A151933(n)]`
-/

namespace A087948.P12579000936291821020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276689 n) 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087948.P12579000936291821020

/-! ## A087948.P15284706062466608005

`eq[A151933(n), A166486(A276689(n))]`
-/

namespace A087948.P15284706062466608005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 (A276689 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087948.P15284706062466608005

/-! ## A087948.P13008287499237995601

`eq[A015933(A276689(n)), A178489(n)]`
-/

namespace A087948.P13008287499237995601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015933 (A276689 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178489 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087948.P13008287499237995601

/-!
# A087949: G.f. satisfies A(x) = 1 + x*A(x*A(x)).

The programs for A087949, there is no canonical definition to state claims against.
-/

/-! ## A087949.P6827258539751106820

`A381566(∑[n+1]+n)`
-/

namespace A087949.P6827258539751106820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381566 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A087949.P6827258539751106820

/-! ## A087949.P11924119248457442367

`∑[∑[A002264(A024430(n))]]+1`
-/

namespace A087949.P11924119248457442367
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A024430 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A087949.P11924119248457442367

/-! ## A087949.P15165373263194899382

`A325353(A122491(n))`
-/

namespace A087949.P15165373263194899382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325353 (A122491 n).toNat

end

end A087949.P15165373263194899382

/-! ## A087949.P13785628369477308798

`A054404(A275780(n)+1)`
-/

namespace A087949.P13785628369477308798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A275780 n + 1).toNat

end

end A087949.P13785628369477308798

/-!
# A087950: Numerators k for which the partial quotients of the k-CF of sqrt(2) are periodic, where a k-CF is defined as the continued fraction representation having k as the constant numerator: x = q_0 + k/(q_1 + k/(q_2 + k/(q_3 +...))).

The programs for A087950, there is no canonical definition to state claims against.
-/

/-! ## A087950.P11133434055298804944

`lt[A063730(n), A095178(n)]+1`
-/

namespace A087950.P11133434055298804944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063730 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095178 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A087950.P11133434055298804944

/-! ## A087950.P9886822030228290124

`∑[A118383(Δ[A270339(n+1)])]`
-/

namespace A087950.P9886822030228290124
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270339 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118383 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087950.P9886822030228290124

/-! ## A087950.P12231315453191276842

`A344742(lt[A000051(n), A004283(3*n+1)])`
-/

namespace A087950.P12231315453191276842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004283 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344742 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A087950.P12231315453191276842

/-! ## A087950.P13206141969530796804

`A344742(lt[A000079(n), A004283(3*n+1)])`
-/

namespace A087950.P13206141969530796804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004283 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344742 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A087950.P13206141969530796804

/-! ## A087950.P3987948906562892381

`lt[A002144(n+1), A160495(A054819(2*n+1))]`
-/

namespace A087950.P3987948906562892381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160495 (A054819 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A087950.P3987948906562892381

/-!
# A087952: Smallest prime == 1 (mod n) and > n^2.

The programs for A087952, there is no canonical definition to state claims against.
-/

/-! ## A087952.P7891900329592428556

`A077316(A086685(n+1)+A000124(n))`
-/

namespace A087952.P7891900329592428556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077316 (A086685 (n + 1) + A000124 n).toNat

end

end A087952.P7891900329592428556

/-! ## A087952.P5349930344109761757

`(n+1)*A087554(n+1)+1`
-/

namespace A087952.P5349930344109761757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A087554 (n + 1) + 1

end

end A087952.P5349930344109761757

/-! ## A087952.P5504661496726904442

`A004482((n+1)*A087554(n+1))`
-/

namespace A087952.P5504661496726904442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 ((n + 1 : ℤ) * A087554 (n + 1)).toNat

end

end A087952.P5504661496726904442

/-! ## A087952.P11605728507614586386

`A007918((n+1)*A087554(n+1))`
-/

namespace A087952.P11605728507614586386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 ((n + 1 : ℤ) * A087554 (n + 1)).toNat

end

end A087952.P11605728507614586386

/-! ## A087952.P10224177072773016507

`A020725((n+1)*A087554(n+1))`
-/

namespace A087952.P10224177072773016507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 ((n + 1 : ℤ) * A087554 (n + 1)).toNat

end

end A087952.P10224177072773016507

/-! ## A087952.P14794725557898318631

`A034694((n+1)*A087554(n+1))`
-/

namespace A087952.P14794725557898318631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 ((n + 1 : ℤ) * A087554 (n + 1)).toNat

end

end A087952.P14794725557898318631

/-! ## A087952.P15654204307818349372

`A079228((n+1)*A087554(n+1))`
-/

namespace A087952.P15654204307818349372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079228 ((n + 1 : ℤ) * A087554 (n + 1)).toNat

end

end A087952.P15654204307818349372

/-! ## A087952.P8292301481335696405

`A086507((n+1)*A087554(n+1))`
-/

namespace A087952.P8292301481335696405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086507 ((n + 1 : ℤ) * A087554 (n + 1)).toNat

end

end A087952.P8292301481335696405

/-! ## A087952.P15897550441501528173

`A141310((n+1)*A087554(n+1))`
-/

namespace A087952.P15897550441501528173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 ((n + 1 : ℤ) * A087554 (n + 1)).toNat

end

end A087952.P15897550441501528173

/-! ## A087952.P11869094124334076940

`A151800((n+1)*A087554(n+1))`
-/

namespace A087952.P11869094124334076940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 ((n + 1 : ℤ) * A087554 (n + 1)).toNat

end

end A087952.P11869094124334076940

/-!
# A087953: a(n) = floor((Fibonacci(2*n+1)+1)/2).

The programs for A087953, the canonical program `A087953.P5725183188863200356` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087953 has offset 0).

The definition of A087953 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087953.P5725183188863200356

`or(1, A108479(n))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A087953

/-- `or(1, A108479(n))` -/
def P5725183188863200356.Spec : Prop :=
  ∀ n, P5725183188863200356.a n = A087953 n

theorem P5725183188863200356.correct : P5725183188863200356.Spec := by
  intro n
  simp only [A087953]

end A087953

/-! ## A087953.P1264778323089914471

`or(1, A109961(n))`
-/

namespace A087953.P1264778323089914471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A109961 n)

end

end A087953.P1264778323089914471

namespace A087953

/-- `or(1, A109961(n))` -/
def P1264778323089914471.Spec : Prop :=
  ∀ n, P1264778323089914471.a n = A087953 n

end A087953

/-! ## A087953.P15738396436329687169

`A173173(Δ[n²])`
-/

namespace A087953.P15738396436329687169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173173 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A087953.P15738396436329687169

namespace A087953

/-- `A173173(Δ[n²])` -/
def P15738396436329687169.Spec : Prop :=
  ∀ n, P15738396436329687169.a n = A087953 n

end A087953

/-! ## A087953.P11423985484471726960

`A173673(4*n+3)`
-/

namespace A087953.P11423985484471726960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173673 (4 * n + 3)

end

end A087953.P11423985484471726960

namespace A087953

/-- `A173673(4*n+3)` -/
def P11423985484471726960.Spec : Prop :=
  ∀ n, P11423985484471726960.a n = A087953 n

end A087953

/-! ## A087953.P12189198042579915907

`or(1, A005252(2*n))`
-/

namespace A087953.P12189198042579915907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A005252 (2 * n))

end

end A087953.P12189198042579915907

namespace A087953

/-- `or(1, A005252(2*n))` -/
def P12189198042579915907.Spec : Prop :=
  ∀ n, P12189198042579915907.a n = A087953 n

end A087953

/-! ## A087953.P7551134340746171997

`or(1, A094686(2*n))`
-/

namespace A087953.P7551134340746171997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A094686 (2 * n))

end

end A087953.P7551134340746171997

namespace A087953

/-- `or(1, A094686(2*n))` -/
def P7551134340746171997.Spec : Prop :=
  ∀ n, P7551134340746171997.a n = A087953 n

end A087953

/-! ## A087953.P4624037517811220962

`A173434(Δ[n²])+1`
-/

namespace A087953.P4624037517811220962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173434 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A087953.P4624037517811220962

namespace A087953

/-- `A173434(Δ[n²])+1` -/
def P4624037517811220962.Spec : Prop :=
  ∀ n, P4624037517811220962.a n = A087953 n

end A087953

/-! ## A087953.P10247023068182501572

`A201864(Δ[n²])+1`
-/

namespace A087953.P10247023068182501572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201864 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A087953.P10247023068182501572

namespace A087953

/-- `A201864(Δ[n²])+1` -/
def P10247023068182501572.Spec : Prop :=
  ∀ n, P10247023068182501572.a n = A087953 n

end A087953

/-! ## A087953.P14071806649870597345

`∑[A293505(2*n)]+1`
-/

namespace A087953.P14071806649870597345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293505 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A087953.P14071806649870597345

namespace A087953

/-- `∑[A293505(2*n)]+1` -/
def P14071806649870597345.Spec : Prop :=
  ∀ n, P14071806649870597345.a n = A087953 n

end A087953

/-! ## A087953.P11566629795845506114

`or(1, A004695(2*n+1))`
-/

namespace A087953.P11566629795845506114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A004695 (2 * n + 1))

end

end A087953.P11566629795845506114

namespace A087953

/-- `or(1, A004695(2*n+1))` -/
def P11566629795845506114.Spec : Prop :=
  ∀ n, P11566629795845506114.a n = A087953 n

end A087953

/-! ## A087953.P7352771513689118801

`or(1, A293505(2*n+1))`
-/

namespace A087953.P7352771513689118801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A293505 (2 * n + 1))

end

end A087953.P7352771513689118801

namespace A087953

/-- `or(1, A293505(2*n+1))` -/
def P7352771513689118801.Spec : Prop :=
  ∀ n, P7352771513689118801.a n = A087953 n

end A087953

/-! ## A087953.P15056852804189316326

`1-∑[A106511(2*n+1)]`
-/

namespace A087953.P15056852804189316326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106511 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087953.P15056852804189316326

namespace A087953

/-- `1-∑[A106511(2*n+1)]` -/
def P15056852804189316326.Spec : Prop :=
  ∀ n, P15056852804189316326.a n = A087953 n

end A087953

/-! ## A087953.P16008545219436059791

`2*A004697(2*n+1)+1`
-/

namespace A087953.P16008545219436059791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004697 (2 * n + 1) + 1

end

end A087953.P16008545219436059791

namespace A087953

/-- `2*A004697(2*n+1)+1` -/
def P16008545219436059791.Spec : Prop :=
  ∀ n, P16008545219436059791.a n = A087953 n

end A087953

/-! ## A087953.P4321714781885514826

`2*A293553(2*n+1)+1`
-/

namespace A087953.P4321714781885514826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A293553 (2 * n + 1) + 1

end

end A087953.P4321714781885514826

namespace A087953

/-- `2*A293553(2*n+1)+1` -/
def P4321714781885514826.Spec : Prop :=
  ∀ n, P4321714781885514826.a n = A087953 n

end A087953

/-! ## A087953.P6547782397118213746

`2*A293552(2*n+1)-1`
-/

namespace A087953.P6547782397118213746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A293552 (2 * n + 1) - 1

end

end A087953.P6547782397118213746

namespace A087953

/-- `2*A293552(2*n+1)-1` -/
def P6547782397118213746.Spec : Prop :=
  ∀ n, P6547782397118213746.a n = A087953 n

end A087953

/-! ## A087953.P9330549928330641198

`floor(∑[A000045(2*n)/2])+1`
-/

namespace A087953.P9330549928330641198
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (2 * n) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ + 1

end

end A087953.P9330549928330641198

namespace A087953

/-- `floor(∑[A000045(2*n)/2])+1` -/
def P9330549928330641198.Spec : Prop :=
  ∀ n, P9330549928330641198.a n = A087953 n

end A087953

/-! ## A087953.P13617351206066241879

`A022003(n)+A005252(2*n)`
-/

namespace A087953.P13617351206066241879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n + A005252 (2 * n)

end

end A087953.P13617351206066241879

namespace A087953

/-- `A022003(n)+A005252(2*n)` -/
def P13617351206066241879.Spec : Prop :=
  ∀ n, P13617351206066241879.a n = A087953 n

end A087953

/-! ## A087953.P12997615027162510871

`or(1, A201864(A016777(n)-n))`
-/

namespace A087953.P12997615027162510871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A201864 (A016777 n - (n : ℤ)).toNat)

end

end A087953.P12997615027162510871

namespace A087953

/-- `or(1, A201864(A016777(n)-n))` -/
def P12997615027162510871.Spec : Prop :=
  ∀ n, P12997615027162510871.a n = A087953 n

end A087953

/-! ## A087953.P4596890414046579556

`A174618(A047261(2*(n+1))-2)`
-/

namespace A087953.P4596890414046579556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174618 (A047261 (2 * (n + 1)) - 2).toNat

end

end A087953.P4596890414046579556

namespace A087953

/-- `A174618(A047261(2*(n+1))-2)` -/
def P4596890414046579556.Spec : Prop :=
  ∀ n, P4596890414046579556.a n = A087953 n

end A087953

/-! ## A087953.P3626161080001111577

`A094686(2*n)+A079978(n+1)`
-/

namespace A087953.P3626161080001111577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094686 (2 * n) + A079978 (n + 1)

end

end A087953.P3626161080001111577

namespace A087953

/-- `A094686(2*n)+A079978(n+1)` -/
def P3626161080001111577.Spec : Prop :=
  ∀ n, P3626161080001111577.a n = A087953 n

end A087953

/-!
# A087955: a(n) is the square of the n-th partial sum minus the n-th partial sum of the squares, divided by a(n-1), for all n>=1, starting with a(0)=1, a(1)=2.

The programs for A087955, the canonical program `A087955.P9460918835038591028` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087955 has offset 0).

The definition of A087955 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A087955.P9460918835038591028

`a(n-1)+3*a(n-2)-a(n-3)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=8`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A087955

/-- `a(n-1)+3*a(n-2)-a(n-3)` -/
def P9460918835038591028.Spec : Prop :=
  ∀ n, P9460918835038591028.a n = A087955 n

theorem P9460918835038591028.correct : P9460918835038591028.Spec := by
  intro n
  simp only [A087955]

end A087955

/-! ## A087955.P9050024853427109006

`ogf((1+x-3x^2+x^3)/(1-x-3x^2+x^3))`
-/

namespace A087955.P9050024853427109006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -3, 1] [1, -1, -3, 1] n

end

end A087955.P9050024853427109006

namespace A087955

/-- `ogf((1+x-3x^2+x^3)/(1-x-3x^2+x^3))` -/
def P9050024853427109006.Spec : Prop :=
  ∀ n, P9050024853427109006.a n = A087955 n

end A087955

/-! ## A087955.P2944020591150435339

`A087640(n)+A052973(abs(A023443(n)))`
-/

namespace A087955.P2944020591150435339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087640 n + A052973 |A023443 n|.toNat

end

end A087955.P2944020591150435339

namespace A087955

/-- `A087640(n)+A052973(abs(A023443(n)))` -/
def P2944020591150435339.Spec : Prop :=
  ∀ n, P2944020591150435339.a n = A087955 n

end A087955

/-! ## A087955.P14027601515289089965

`A087956(n)-A052973(abs(A023443(n)))`
-/

namespace A087955.P14027601515289089965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087956 n - A052973 |A023443 n|.toNat

end

end A087955.P14027601515289089965

namespace A087955

/-- `A087956(n)-A052973(abs(A023443(n)))` -/
def P14027601515289089965.Spec : Prop :=
  ∀ n, P14027601515289089965.a n = A087955 n

end A087955

/-! ## A087955.P9373815537977030367

`A087640(n)+A087957(n)-A087956(n)`
-/

namespace A087955.P9373815537977030367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087640 n + (A087957 n - A087956 n)

end

end A087955.P9373815537977030367

namespace A087955

/-- `A087640(n)+A087957(n)-A087956(n)` -/
def P9373815537977030367.Spec : Prop :=
  ∀ n, P9373815537977030367.a n = A087955 n

end A087955

/-! ## A087955.P9755815872748008498

`A087640(n)+A087958(n)-A087957(n)`
-/

namespace A087955.P9755815872748008498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087640 n + (A087958 n - A087957 n)

end

end A087955.P9755815872748008498

namespace A087955

/-- `A087640(n)+A087958(n)-A087957(n)` -/
def P9755815872748008498.Spec : Prop :=
  ∀ n, P9755815872748008498.a n = A087955 n

end A087955

/-! ## A087955.P2798647840301942222

`A087956(n)+A087957(n)-A087958(n)`
-/

namespace A087955.P2798647840301942222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087956 n + (A087957 n - A087958 n)

end

end A087955.P2798647840301942222

namespace A087955

/-- `A087956(n)+A087957(n)-A087958(n)` -/
def P2798647840301942222.Spec : Prop :=
  ∀ n, P2798647840301942222.a n = A087955 n

end A087955

/-! ## A087955.P15086239932597731884

`A087640(n)+A382683(n)-A052973(n)`
-/

namespace A087955.P15086239932597731884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087640 n + (A382683 n - A052973 n)

end

end A087955.P15086239932597731884

namespace A087955

/-- `A087640(n)+A382683(n)-A052973(n)` -/
def P15086239932597731884.Spec : Prop :=
  ∀ n, P15086239932597731884.a n = A087955 n

end A087955

/-! ## A087955.P8673924174525564815

`A052973(n)+A087956(n)-A382683(n)`
-/

namespace A087955.P8673924174525564815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052973 n + (A087956 n - A382683 n)

end

end A087955.P8673924174525564815

namespace A087955

/-- `A052973(n)+A087956(n)-A382683(n)` -/
def P8673924174525564815.Spec : Prop :=
  ∀ n, P8673924174525564815.a n = A087955 n

end A087955

/-! ## A087955.P18004125197754393178

`A036453(n+1)*A125691(abs(A023443(n)))`
-/

namespace A087955.P18004125197754393178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A125691 |A023443 n|.toNat

end

end A087955.P18004125197754393178

namespace A087955

/-- `A036453(n+1)*A125691(abs(A023443(n)))` -/
def P18004125197754393178.Spec : Prop :=
  ∀ n, P18004125197754393178.a n = A087955 n

end A087955

/-! ## A087955.P36283505623686667

`A307464(n+1)+A087640(n)-A125691(n)`
-/

namespace A087955.P36283505623686667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307464 (n + 1) + (A087640 n - A125691 n)

end

end A087955.P36283505623686667

namespace A087955

/-- `A307464(n+1)+A087640(n)-A125691(n)` -/
def P36283505623686667.Spec : Prop :=
  ∀ n, P36283505623686667.a n = A087955 n

end A087955

/-! ## A087955.P17817173521210746604

`A087956(n)+A125691(n)-A307464(n+1)`
-/

namespace A087955.P17817173521210746604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087956 n + (A125691 n - A307464 (n + 1))

end

end A087955.P17817173521210746604

namespace A087955

/-- `A087956(n)+A125691(n)-A307464(n+1)` -/
def P17817173521210746604.Spec : Prop :=
  ∀ n, P17817173521210746604.a n = A087955 n

end A087955

/-! ## A087955.P10059500548295397709

`Δ[Δ[A087640(n)]]`
-/

namespace A087955.P10059500548295397709
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087640 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087955.P10059500548295397709

namespace A087955

/-- `Δ[Δ[A087640(n)]]` -/
def P10059500548295397709.Spec : Prop :=
  ∀ n, P10059500548295397709.a n = A087955 n

end A087955

/-! ## A087955.P12075221480673201908

`(A087956(n)+A087640(n))/2`
-/

namespace A087955.P12075221480673201908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087956 n + A087640 n : ℚ) / 2

end

end A087955.P12075221480673201908

namespace A087955

/-- `(A087956(n)+A087640(n))/2` -/
def P12075221480673201908.Spec : Prop :=
  ∀ n, P12075221480673201908.a n = (A087955 n : ℚ)

end A087955

/-! ## A087955.P11669249541141343828

`2*A087956(n)-A087957(n)`
-/

namespace A087955.P11669249541141343828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A087956 n - A087957 n

end

end A087955.P11669249541141343828

namespace A087955

/-- `2*A087956(n)-A087957(n)` -/
def P11669249541141343828.Spec : Prop :=
  ∀ n, P11669249541141343828.a n = A087955 n

end A087955

/-! ## A087955.P11834228530170748017

`A382683(n+1)+A087640(n)-A087640(n+1)`
-/

namespace A087955.P11834228530170748017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382683 (n + 1) + (A087640 n - A087640 (n + 1))

end

end A087955.P11834228530170748017

namespace A087955

/-- `A382683(n+1)+A087640(n)-A087640(n+1)` -/
def P11834228530170748017.Spec : Prop :=
  ∀ n, P11834228530170748017.a n = A087955 n

end A087955

/-!
# A087956: a(n) is the square of the n-th partial sum minus the n-th partial sum of the squares, divided by a(n-1), for all n>=1, starting with a(0)=1, a(1)=3.

The programs for A087956, the canonical program `A087956.P8434398680015199315` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087956 has offset 0).

The definition of A087956 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A087956.P8434398680015199315

`a(n-1)+3*a(n-2)-a(n-3)` with `a(0)=1, a(1)=3, a(2)=2, a(3)=11`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A087956

/-- `a(n-1)+3*a(n-2)-a(n-3)` -/
def P8434398680015199315.Spec : Prop :=
  ∀ n, P8434398680015199315.a n = A087956 n

theorem P8434398680015199315.correct : P8434398680015199315.Spec := by
  intro n
  simp only [A087956]

end A087956

/-! ## A087956.P7793945759692014692

`ogf((1+2x-4x^2+x^3)/(1-x-3x^2+x^3))`
-/

namespace A087956.P7793945759692014692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -4, 1] [1, -1, -3, 1] n

end

end A087956.P7793945759692014692

namespace A087956

/-- `ogf((1+2x-4x^2+x^3)/(1-x-3x^2+x^3))` -/
def P7793945759692014692.Spec : Prop :=
  ∀ n, P7793945759692014692.a n = A087956 n

end A087956

/-! ## A087956.P5105251012824781351

`A052973((n+1)%(2*n+1))`
-/

namespace A087956.P5105251012824781351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052973 ((n + 1) % (2 * n + 1))

end

end A087956.P5105251012824781351

namespace A087956

/-- `A052973((n+1)%(2*n+1))` -/
def P5105251012824781351.Spec : Prop :=
  ∀ n, P5105251012824781351.a n = A087956 n

end A087956

/-! ## A087956.P14831285288256477036

`A052973(abs(A131738(n)))`
-/

namespace A087956.P14831285288256477036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052973 |A131738 n|.toNat

end

end A087956.P14831285288256477036

namespace A087956

/-- `A052973(abs(A131738(n)))` -/
def P14831285288256477036.Spec : Prop :=
  ∀ n, P14831285288256477036.a n = A087956 n

end A087956

/-! ## A087956.P6267066280828097972

`A052973(A087156(n+1))`
-/

namespace A087956.P6267066280828097972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052973 (A087156 (n + 1)).toNat

end

end A087956.P6267066280828097972

namespace A087956

/-- `A052973(A087156(n+1))` -/
def P6267066280828097972.Spec : Prop :=
  ∀ n, P6267066280828097972.a n = A087956 n

end A087956

/-! ## A087956.P18246967800307315239

`A052973(A199969(n+2))`
-/

namespace A087956.P18246967800307315239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052973 (A199969 (n + 2)).toNat

end

end A087956.P18246967800307315239

namespace A087956

/-- `A052973(A199969(n+2))` -/
def P18246967800307315239.Spec : Prop :=
  ∀ n, P18246967800307315239.a n = A087956 n

end A087956

/-! ## A087956.P14219411215531826321

`A052973(A057427(n)+n)`
-/

namespace A087956.P14219411215531826321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052973 (A057427 n + (n : ℤ)).toNat

end

end A087956.P14219411215531826321

namespace A087956

/-- `A052973(A057427(n)+n)` -/
def P14219411215531826321.Spec : Prop :=
  ∀ n, P14219411215531826321.a n = A087956 n

end A087956

/-! ## A087956.P16750307610264670586

`A052973(n-A057428(n))`
-/

namespace A087956.P16750307610264670586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052973 ((n : ℤ) - A057428 n).toNat

end

end A087956.P16750307610264670586

namespace A087956

/-- `A052973(n-A057428(n))` -/
def P16750307610264670586.Spec : Prop :=
  ∀ n, P16750307610264670586.a n = A087956 n

end A087956

/-! ## A087956.P6196112110542503920

`A052973(A057428(n)²+n)`
-/

namespace A087956.P6196112110542503920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052973 (A057428 n ^ 2 + (n : ℤ)).toNat

end

end A087956.P6196112110542503920

namespace A087956

/-- `A052973(A057428(n)²+n)` -/
def P6196112110542503920.Spec : Prop :=
  ∀ n, P6196112110542503920.a n = A087956 n

end A087956

/-! ## A087956.P12207326577106797979

`A052973(n+1)+A000007(n)`
-/

namespace A087956.P12207326577106797979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052973 (n + 1) + A000007 n

end

end A087956.P12207326577106797979

namespace A087956

/-- `A052973(n+1)+A000007(n)` -/
def P12207326577106797979.Spec : Prop :=
  ∀ n, P12207326577106797979.a n = A087956 n

end A087956

/-! ## A087956.P9244019097968319419

`A052973(1-(A000007(n)-n))`
-/

namespace A087956.P9244019097968319419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052973 (1 - (A000007 n - (n : ℤ))).toNat

end

end A087956.P9244019097968319419

namespace A087956

/-- `A052973(1-(A000007(n)-n))` -/
def P9244019097968319419.Spec : Prop :=
  ∀ n, P9244019097968319419.a n = A087956 n

end A087956

/-! ## A087956.P15889891163916535448

`A052973(A131738(2*n)-n)`
-/

namespace A087956.P15889891163916535448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052973 (A131738 (2 * n) - (n : ℤ)).toNat

end

end A087956.P15889891163916535448

namespace A087956

/-- `A052973(A131738(2*n)-n)` -/
def P15889891163916535448.Spec : Prop :=
  ∀ n, P15889891163916535448.a n = A087956 n

end A087956

/-! ## A087956.P392208919926779863

`A052973(n/A028310(n)+n)`
-/

namespace A087956.P392208919926779863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052973 (SequenceMachineLib.roundAway ((n : ℚ) / (A028310 n : ℚ) + (n : ℚ))).toNat

end

end A087956.P392208919926779863

namespace A087956

/-- `A052973(n/A028310(n)+n)` -/
def P392208919926779863.Spec : Prop :=
  ∀ n, P392208919926779863.a n = A087956 n

end A087956

/-! ## A087956.P1277602116369497824

`A057428(n)+A052973(n+1)+1`
-/

namespace A087956.P1277602116369497824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + (A052973 (n + 1) + 1)

end

end A087956.P1277602116369497824

namespace A087956

/-- `A057428(n)+A052973(n+1)+1` -/
def P1277602116369497824.Spec : Prop :=
  ∀ n, P1277602116369497824.a n = A087956 n

end A087956

/-! ## A087956.P14849612149396686462

`A063524(n+1)+A052973(n+1)`
-/

namespace A087956.P14849612149396686462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (n + 1) + A052973 (n + 1)

end

end A087956.P14849612149396686462

namespace A087956

/-- `A063524(n+1)+A052973(n+1)` -/
def P14849612149396686462.Spec : Prop :=
  ∀ n, P14849612149396686462.a n = A087956 n

end A087956

/-! ## A087956.P6751124727043060978

`A052973(2*n+1-A028310(n))`
-/

namespace A087956.P6751124727043060978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052973 ((2 * n + 1 : ℤ) - A028310 n).toNat

end

end A087956.P6751124727043060978

namespace A087956

/-- `A052973(2*n+1-A028310(n))` -/
def P6751124727043060978.Spec : Prop :=
  ∀ n, P6751124727043060978.a n = A087956 n

end A087956

/-! ## A087956.P8777498160102522856

`A052973(A000040(n+1)%2+n)`
-/

namespace A087956.P8777498160102522856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052973 (Int.tmod (A000040 (n + 1)) 2 + (n : ℤ)).toNat

end

end A087956.P8777498160102522856

namespace A087956

/-- `A052973(A000040(n+1)%2+n)` -/
def P8777498160102522856.Spec : Prop :=
  ∀ n, P8777498160102522856.a n = A087956 n

end A087956

/-! ## A087956.P15203523395656262396

`A052973(xor(-xor(n, -1), A000007(n)))`
-/

namespace A087956.P15203523395656262396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052973 (Int.xor (-Int.xor (n : ℤ) (-1)) (A000007 n)).toNat

end

end A087956.P15203523395656262396

namespace A087956

/-- `A052973(xor(-xor(n, -1), A000007(n)))` -/
def P15203523395656262396.Spec : Prop :=
  ∀ n, P15203523395656262396.a n = A087956 n

end A087956

/-!
# A087957: a(n) is the square of the n-th partial sum minus the n-th partial sum of the squares, divided by a(n-1), for all n>=1, starting with a(0)=1, a(1)=4.

The programs for A087957, the canonical program `A087957.P6064242303343854697` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087957 has offset 0).

The definition of A087957 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A087957.P6064242303343854697

`a(n-1)+3*a(n-2)-a(n-3)` with `a(0)=1, a(1)=4, a(2)=2, a(3)=14`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A087957

/-- `a(n-1)+3*a(n-2)-a(n-3)` -/
def P6064242303343854697.Spec : Prop :=
  ∀ n, P6064242303343854697.a n = A087957 n

theorem P6064242303343854697.correct : P6064242303343854697.Spec := by
  intro n
  simp only [A087957]

end A087957

/-! ## A087957.P4783532849220917878

`ogf((1+3x-5x^2+x^3)/(1-x-3x^2+x^3))`
-/

namespace A087957.P4783532849220917878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, -5, 1] [1, -1, -3, 1] n

end

end A087957.P4783532849220917878

namespace A087957

/-- `ogf((1+3x-5x^2+x^3)/(1-x-3x^2+x^3))` -/
def P4783532849220917878.Spec : Prop :=
  ∀ n, P4783532849220917878.a n = A087957 n

end A087957

/-! ## A087957.P3886090894912023314

`A087956(n)+A052973(abs(A023443(n)))`
-/

namespace A087957.P3886090894912023314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087956 n + A052973 |A023443 n|.toNat

end

end A087957.P3886090894912023314

namespace A087957

/-- `A087956(n)+A052973(abs(A023443(n)))` -/
def P3886090894912023314.Spec : Prop :=
  ∀ n, P3886090894912023314.a n = A087957 n

end A087957

/-! ## A087957.P5783423232996333303

`A087958(n)-A052973(abs(A023443(n)))`
-/

namespace A087957.P5783423232996333303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087958 n - A052973 |A023443 n|.toNat

end

end A087957.P5783423232996333303

namespace A087957

/-- `A087958(n)-A052973(abs(A023443(n)))` -/
def P5783423232996333303.Spec : Prop :=
  ∀ n, P5783423232996333303.a n = A087957 n

end A087957

/-! ## A087957.P291406651998022164

`A087640(n)+A087958(n)-A087955(n)`
-/

namespace A087957.P291406651998022164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087640 n + (A087958 n - A087955 n)

end

end A087957.P291406651998022164

namespace A087957

/-- `A087640(n)+A087958(n)-A087955(n)` -/
def P291406651998022164.Spec : Prop :=
  ∀ n, P291406651998022164.a n = A087957 n

end A087957

/-! ## A087957.P13458389723152913913

`A087955(n)+A087956(n)-A087640(n)`
-/

namespace A087957.P13458389723152913913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087955 n + (A087956 n - A087640 n)

end

end A087957.P13458389723152913913

namespace A087957

/-- `A087955(n)+A087956(n)-A087640(n)` -/
def P13458389723152913913.Spec : Prop :=
  ∀ n, P13458389723152913913.a n = A087957 n

end A087957

/-! ## A087957.P18225924216077516638

`A087955(n)+A087958(n)-A087956(n)`
-/

namespace A087957.P18225924216077516638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087955 n + (A087958 n - A087956 n)

end

end A087957.P18225924216077516638

namespace A087957

/-- `A087955(n)+A087958(n)-A087956(n)` -/
def P18225924216077516638.Spec : Prop :=
  ∀ n, P18225924216077516638.a n = A087957 n

end A087957

/-! ## A087957.P12959257942902288329

`A052973(n)+A087958(n)-A382683(n)`
-/

namespace A087957.P12959257942902288329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052973 n + (A087958 n - A382683 n)

end

end A087957.P12959257942902288329

namespace A087957

/-- `A052973(n)+A087958(n)-A382683(n)` -/
def P12959257942902288329.Spec : Prop :=
  ∀ n, P12959257942902288329.a n = A087957 n

end A087957

/-! ## A087957.P720771671244439028

`A087956(n)+A382683(n)-A052973(n)`
-/

namespace A087957.P720771671244439028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087956 n + (A382683 n - A052973 n)

end

end A087957.P720771671244439028

namespace A087957

/-- `A087956(n)+A382683(n)-A052973(n)` -/
def P720771671244439028.Spec : Prop :=
  ∀ n, P720771671244439028.a n = A087957 n

end A087957

/-! ## A087957.P16248134242279944686

`A307464(n+1)+A087956(n)-A125691(n)`
-/

namespace A087957.P16248134242279944686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307464 (n + 1) + (A087956 n - A125691 n)

end

end A087957.P16248134242279944686

namespace A087957

/-- `A307464(n+1)+A087956(n)-A125691(n)` -/
def P16248134242279944686.Spec : Prop :=
  ∀ n, P16248134242279944686.a n = A087957 n

end A087957

/-! ## A087957.P9972127028122253547

`2*A087956(n)-A087955(n)`
-/

namespace A087957.P9972127028122253547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A087956 n - A087955 n

end

end A087957.P9972127028122253547

namespace A087957

/-- `2*A087956(n)-A087955(n)` -/
def P9972127028122253547.Spec : Prop :=
  ∀ n, P9972127028122253547.a n = A087957 n

end A087957

/-! ## A087957.P292323622690934260

`(A087958(n)+A087956(n))/2`
-/

namespace A087957.P292323622690934260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087958 n + A087956 n : ℚ) / 2

end

end A087957.P292323622690934260

namespace A087957

/-- `(A087958(n)+A087956(n))/2` -/
def P292323622690934260.Spec : Prop :=
  ∀ n, P292323622690934260.a n = (A087957 n : ℚ)

end A087957

/-! ## A087957.P9790074307101964917

`abs(Δ[A087640(n)+A052973(n)])`
-/

namespace A087957.P9790074307101964917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087640 n + A052973 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A087957.P9790074307101964917

namespace A087957

/-- `abs(Δ[A087640(n)+A052973(n)])` -/
def P9790074307101964917.Spec : Prop :=
  ∀ n, P9790074307101964917.a n = A087957 n

end A087957

/-! ## A087957.P15230281937871558348

`A087640(n+1)+A087958(n)-A382683(n+1)`
-/

namespace A087957.P15230281937871558348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087640 (n + 1) + (A087958 n - A382683 (n + 1))

end

end A087957.P15230281937871558348

namespace A087957

/-- `A087640(n+1)+A087958(n)-A382683(n+1)` -/
def P15230281937871558348.Spec : Prop :=
  ∀ n, P15230281937871558348.a n = A087957 n

end A087957

/-! ## A087957.P11094337701185481403

`A382683(n+1)+A087956(n)-A087640(n+1)`
-/

namespace A087957.P11094337701185481403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382683 (n + 1) + (A087956 n - A087640 (n + 1))

end

end A087957.P11094337701185481403

namespace A087957

/-- `A382683(n+1)+A087956(n)-A087640(n+1)` -/
def P11094337701185481403.Spec : Prop :=
  ∀ n, P11094337701185481403.a n = A087957 n

end A087957

/-!
# A087958: a(n) is the square of the n-th partial sum minus the n-th partial sum of the squares, divided by a(n-1), for all n>=1, starting with a(0)=1, a(1)=5.

The programs for A087958, the canonical program `A087958.P16216986198877529809` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087958 has offset 0).

The definition of A087958 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A087958.P16216986198877529809

`a(n-1)+3*a(n-2)-a(n-3)` with `a(0)=1, a(1)=5, a(2)=2, a(3)=17`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A087958

/-- `a(n-1)+3*a(n-2)-a(n-3)` -/
def P16216986198877529809.Spec : Prop :=
  ∀ n, P16216986198877529809.a n = A087958 n

theorem P16216986198877529809.correct : P16216986198877529809.Spec := by
  intro n
  simp only [A087958]

end A087958

/-! ## A087958.P17162883078152247820

`ogf((1+4x-6x^2+x^3)/(1-x-3x^2+x^3))`
-/

namespace A087958.P17162883078152247820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, -6, 1] [1, -1, -3, 1] n

end

end A087958.P17162883078152247820

namespace A087958

/-- `ogf((1+4x-6x^2+x^3)/(1-x-3x^2+x^3))` -/
def P17162883078152247820.Spec : Prop :=
  ∀ n, P17162883078152247820.a n = A087958 n

end A087958

/-! ## A087958.P878352598650460452

`A087957(n)+A052973(abs(A023443(n)))`
-/

namespace A087958.P878352598650460452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087957 n + A052973 |A023443 n|.toNat

end

end A087958.P878352598650460452

namespace A087958

/-- `A087957(n)+A052973(abs(A023443(n)))` -/
def P878352598650460452.Spec : Prop :=
  ∀ n, P878352598650460452.a n = A087958 n

end A087958

/-! ## A087958.P17674185087850064740

`A087955(n)+A087957(n)-A087640(n)`
-/

namespace A087958.P17674185087850064740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087955 n + (A087957 n - A087640 n)

end

end A087958.P17674185087850064740

namespace A087958

/-- `A087955(n)+A087957(n)-A087640(n)` -/
def P17674185087850064740.Spec : Prop :=
  ∀ n, P17674185087850064740.a n = A087958 n

end A087958

/-! ## A087958.P6851675309888300824

`A087956(n)+A087956(n)-A087640(n)`
-/

namespace A087958.P6851675309888300824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087956 n + (A087956 n - A087640 n)

end

end A087958.P6851675309888300824

namespace A087958

/-- `A087956(n)+A087956(n)-A087640(n)` -/
def P6851675309888300824.Spec : Prop :=
  ∀ n, P6851675309888300824.a n = A087958 n

end A087958

/-! ## A087958.P11948331489535381793

`A087956(n)+A087957(n)-A087955(n)`
-/

namespace A087958.P11948331489535381793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087956 n + (A087957 n - A087955 n)

end

end A087958.P11948331489535381793

namespace A087958

/-- `A087956(n)+A087957(n)-A087955(n)` -/
def P11948331489535381793.Spec : Prop :=
  ∀ n, P11948331489535381793.a n = A087958 n

end A087958

/-! ## A087958.P2175478814879334498

`A087957(n)+A382683(n)-A052973(n)`
-/

namespace A087958.P2175478814879334498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087957 n + (A382683 n - A052973 n)

end

end A087958.P2175478814879334498

namespace A087958

/-- `A087957(n)+A382683(n)-A052973(n)` -/
def P2175478814879334498.Spec : Prop :=
  ∀ n, P2175478814879334498.a n = A087958 n

end A087958

/-! ## A087958.P5089170395586657304

`2*A087956(n)-A087640(n)`
-/

namespace A087958.P5089170395586657304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A087956 n - A087640 n

end

end A087958.P5089170395586657304

namespace A087958

/-- `2*A087956(n)-A087640(n)` -/
def P5089170395586657304.Spec : Prop :=
  ∀ n, P5089170395586657304.a n = A087958 n

end A087958

/-! ## A087958.P15506720091652802931

`2*A087957(n)-A087956(n)`
-/

namespace A087958.P15506720091652802931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A087957 n - A087956 n

end

end A087958.P15506720091652802931

namespace A087958

/-- `2*A087957(n)-A087956(n)` -/
def P15506720091652802931.Spec : Prop :=
  ∀ n, P15506720091652802931.a n = A087958 n

end A087958

/-! ## A087958.P11768365362951529108

`A382683(n+1)+A087957(n)-A087640(n+1)`
-/

namespace A087958.P11768365362951529108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382683 (n + 1) + (A087957 n - A087640 (n + 1))

end

end A087958.P11768365362951529108

namespace A087958

/-- `A382683(n+1)+A087957(n)-A087640(n+1)` -/
def P11768365362951529108.Spec : Prop :=
  ∀ n, P11768365362951529108.a n = A087958 n

end A087958

/-!
# A087959: G.f. satisfies A(x) = 1 + x*A(x*A(x*A(x))).

The programs for A087959, there is no canonical definition to state claims against.
-/

/-! ## A087959.P7396537901485699529

`A059995(or(18, A301412(n)))`
-/

namespace A087959.P7396537901485699529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (Int.lor 18 (A301412 n)).toNat

end

end A087959.P7396537901485699529

/-! ## A087959.P7861095601508726510

`A195177(∑[A074664(n+1)])`
-/

namespace A087959.P7861095601508726510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074664 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A087959.P7861095601508726510

/-! ## A087959.P17959022393559448945

`A195177(∑[A127745(n+1)+A126120(2*n)])`
-/

namespace A087959.P17959022393559448945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127745 (n + 1) + A126120 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A087959.P17959022393559448945

/-!
# A087960: a(n) = (-1)^binomial(n+1,2).

The programs for A087960, the canonical program `A087960.P9406527830484805982` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087960 has offset 0).

The definition of A087960 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(-1)^C(n+1, 2)` (program `A087960.P9406527830484805982`, by `A087960.P9406527830484805982.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A087960.P9406527830484805982

`(-1)^C(n+1, 2)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A087960

/-- `(-1)^C(n+1, 2)` -/
def P9406527830484805982.Spec : Prop :=
  ∀ n, P9406527830484805982.a n = A087960 n

theorem P9406527830484805982.correct : P9406527830484805982.Spec := by
  intro n
  simp only [A087960]

end A087960

/-!
# A087961: E.g.f. f(x) satisfies f(x*f(x)) = exp(x).

The programs for A087961, there is no canonical definition to state claims against.
-/

/-! ## A087961.P18426362403835850177

`A396799(n+1)/(n+1)`
-/

namespace A087961.P18426362403835850177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A396799 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A087961.P18426362403835850177

/-! ## A087961.P4018964645748666083

`A396860(∑[n+1]+n)`
-/

namespace A087961.P4018964645748666083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396860 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A087961.P4018964645748666083

/-!
# A087962: Satisfies Sum_{n>=0} a(n)*x^n/n! = log(f(x)) = series reversion of x*f(x), where f(x*f(x)) = exp(x) and f(x) = Sum_{n>=0} A087961(n)*x^n/n!.

The programs for A087962, there is no canonical definition to state claims against.
-/

/-! ## A087962.P12981079730719795104

`n*A098434(A001586(n))`
-/

namespace A087962.P12981079730719795104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A098434 (A001586 n).toNat

end

end A087962.P12981079730719795104

/-!
# A087963: Exponent of highest power of 2 dividing 3*prime(n)+1.

The programs for A087963, the canonical program `A087963.P17452282145644083475` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087963 has offset 1).

The definition of A087963 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087963.P17452282145644083475

`val(A001748(n+1)+1, 2)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A087963

/-- `val(A001748(n+1)+1, 2)` -/
def P17452282145644083475.Spec : Prop :=
  ∀ n, (P17452282145644083475.a n : ℤ) = A087963 (n + 1)

theorem P17452282145644083475.correct : P17452282145644083475.Spec := by
  intro n
  simp only [A087963, Nat.add_sub_cancel]

end A087963

/-! ## A087963.P14335252898992254719

`val(A247159(n+1)-2, 2)`
-/

namespace A087963.P14335252898992254719
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A247159 (n + 1) - 2).toNat 2

end

end A087963.P14335252898992254719

namespace A087963

/-- `val(A247159(n+1)-2, 2)` -/
def P14335252898992254719.Spec : Prop :=
  ∀ n, (P14335252898992254719.a n : ℤ) = A087963 (n + 1)

end A087963

/-! ## A087963.P7320766095599751387

`val(3*A000040(n+1)+1, 2)`
-/

namespace A087963.P7320766095599751387
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (3 * A000040 (n + 1) + 1).toNat 2

end

end A087963.P7320766095599751387

namespace A087963

/-- `val(3*A000040(n+1)+1, 2)` -/
def P7320766095599751387.Spec : Prop :=
  ∀ n, (P7320766095599751387.a n : ℤ) = A087963 (n + 1)

end A087963

/-! ## A087963.P13221482000903919128

`val(3*record[A020639(n+2)]+1, 2)`
-/

namespace A087963.P13221482000903919128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (3 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat 2

end

end A087963.P13221482000903919128

namespace A087963

/-- `val(3*record[A020639(n+2)]+1, 2)` -/
def P13221482000903919128.Spec : Prop :=
  ∀ n, (P13221482000903919128.a n : ℤ) = A087963 (n + 1)

end A087963

/-! ## A087963.P9247224451150051050

`A371093(A000040(n+1))`
-/

namespace A087963.P9247224451150051050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371093 (A000040 (n + 1)).toNat

end

end A087963.P9247224451150051050

namespace A087963

/-- `A371093(A000040(n+1))` -/
def P9247224451150051050.Spec : Prop :=
  ∀ n, P9247224451150051050.a n = A087963 (n + 1)

end A087963

/-! ## A087963.P8408054183043768395

`A371093(A008578(n+2))`
-/

namespace A087963.P8408054183043768395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371093 (A008578 (n + 2)).toNat

end

end A087963.P8408054183043768395

namespace A087963

/-- `A371093(A008578(n+2))` -/
def P8408054183043768395.Spec : Prop :=
  ∀ n, P8408054183043768395.a n = A087963 (n + 1)

end A087963

/-! ## A087963.P14015283613898282480

`A371093(A182986(n+2))`
-/

namespace A087963.P14015283613898282480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371093 (A182986 (n + 2)).toNat

end

end A087963.P14015283613898282480

namespace A087963

/-- `A371093(A182986(n+2))` -/
def P14015283613898282480.Spec : Prop :=
  ∀ n, P14015283613898282480.a n = A087963 (n + 1)

end A087963

/-! ## A087963.P1503998423863578715

`val(A114557(2*n+1)+A114557(2*(n+1)), 2)`
-/

namespace A087963.P1503998423863578715
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A114557 (2 * n + 1) + A114557 (2 * (n + 1))).toNat 2

end

end A087963.P1503998423863578715

namespace A087963

/-- `val(A114557(2*n+1)+A114557(2*(n+1)), 2)` -/
def P1503998423863578715.Spec : Prop :=
  ∀ n, (P1503998423863578715.a n : ℤ) = A087963 (n + 1)

end A087963

/-! ## A087963.P3422235994617780504

`val(A006370(p?[xor(1, n)+1]), 2)`
-/

namespace A087963.P3422235994617780504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A006370 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))).toNat 2

end

end A087963.P3422235994617780504

namespace A087963

/-- `val(A006370(p?[xor(1, n)+1]), 2)` -/
def P3422235994617780504.Spec : Prop :=
  ∀ n, (P3422235994617780504.a n : ℤ) = A087963 (n + 1)

end A087963

/-! ## A087963.P618283339566919878

`val(A017197(Δ[A007504(n)]), 2)`
-/

namespace A087963.P618283339566919878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A017197 (f1 (n + 1) - f1 n).toNat).toNat 2

end

end A087963.P618283339566919878

namespace A087963

/-- `val(A017197(Δ[A007504(n)]), 2)` -/
def P618283339566919878.Spec : Prop :=
  ∀ n, (P618283339566919878.a n : ℤ) = A087963 (n + 1)

end A087963

/-! ## A087963.P13802663674885226758

`val(A016779(Δ[A007504(n)]), 8)`
-/

namespace A087963.P13802663674885226758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A016779 (f1 (n + 1) - f1 n).toNat).toNat 8

end

end A087963.P13802663674885226758

namespace A087963

/-- `val(A016779(Δ[A007504(n)]), 8)` -/
def P13802663674885226758.Spec : Prop :=
  ∀ n, (P13802663674885226758.a n : ℤ) = A087963 (n + 1)

end A087963

/-! ## A087963.P2201665083965409763

`val(A016777(p?[A107750(n)]), 2)`
-/

namespace A087963.P2201665083965409763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107750 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A016777 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat 2

end

end A087963.P2201665083965409763

namespace A087963

/-- `val(A016777(p?[A107750(n)]), 2)` -/
def P2201665083965409763.Spec : Prop :=
  ∀ n, (P2201665083965409763.a n : ℤ) = A087963 (n + 1)

end A087963

/-! ## A087963.P13660602928771082557

`val(A017198(p?[A080412(n)]), 4)`
-/

namespace A087963.P13660602928771082557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080412 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A017198 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat 4

end

end A087963.P13660602928771082557

namespace A087963

/-- `val(A017198(p?[A080412(n)]), 4)` -/
def P13660602928771082557.Spec : Prop :=
  ∀ n, (P13660602928771082557.a n : ℤ) = A087963 (n + 1)

end A087963

/-! ## A087963.P9796585801707564701

`val(A016777(record[A093074(n+1)]), 2)`
-/

namespace A087963.P9796585801707564701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A016777 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat 2

end

end A087963.P9796585801707564701

namespace A087963

/-- `val(A016777(record[A093074(n+1)]), 2)` -/
def P9796585801707564701.Spec : Prop :=
  ∀ n, (P9796585801707564701.a n : ℤ) = A087963 (n + 1)

end A087963

/-! ## A087963.P4147411891777638169

`val(A006370(record[A006530(n+2)]), 2)`
-/

namespace A087963.P4147411891777638169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A006370 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat 2

end

end A087963.P4147411891777638169

namespace A087963

/-- `val(A006370(record[A006530(n+2)]), 2)` -/
def P4147411891777638169.Spec : Prop :=
  ∀ n, (P4147411891777638169.a n : ℤ) = A087963 (n + 1)

end A087963

/-! ## A087963.P7951174585403199264

`val(A016777(record[A020639(n+2)]), 2)`
-/

namespace A087963.P7951174585403199264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A016777 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat 2

end

end A087963.P7951174585403199264

namespace A087963

/-- `val(A016777(record[A020639(n+2)]), 2)` -/
def P7951174585403199264.Spec : Prop :=
  ∀ n, (P7951174585403199264.a n : ℤ) = A087963 (n + 1)

end A087963

/-! ## A087963.P13074974247103966227

`A087229(p?[A090223(n)])-2`
-/

namespace A087963.P13074974247103966227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087229 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 2

end

end A087963.P13074974247103966227

namespace A087963

/-- `A087229(p?[A090223(n)])-2` -/
def P13074974247103966227.Spec : Prop :=
  ∀ n, P13074974247103966227.a n = A087963 (n + 1)

end A087963

/-! ## A087963.P16485982701670137078

`val(A006370(p?[A006370(n)]), 2)`
-/

namespace A087963.P16485982701670137078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A006370 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat 2

end

end A087963.P16485982701670137078

namespace A087963

/-- `val(A006370(p?[A006370(n)]), 2)` -/
def P16485982701670137078.Spec : Prop :=
  ∀ n, (P16485982701670137078.a n : ℤ) = A087963 (n + 1)

end A087963

/-! ## A087963.P14787851646878086370

`A087230(2*A000040(n+1))-2`
-/

namespace A087963.P14787851646878086370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087230 (2 * A000040 (n + 1)).toNat - 2

end

end A087963.P14787851646878086370

namespace A087963

/-- `A087230(2*A000040(n+1))-2` -/
def P14787851646878086370.Spec : Prop :=
  ∀ n, P14787851646878086370.a n = A087963 (n + 1)

end A087963

/-! ## A087963.P11596090093366971126

`A007814(A112773(n+2)+1)`
-/

namespace A087963.P11596090093366971126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A112773 (n + 2) + 1).toNat

end

end A087963.P11596090093366971126

namespace A087963

/-- `A007814(A112773(n+2)+1)` -/
def P11596090093366971126.Spec : Prop :=
  ∀ n, P11596090093366971126.a n = A087963 (n + 1)

end A087963

/-!
# A087964: a(n) is the least prime p such that exponent of highest power of 2 dividing 3p+1 equals n.

The programs for A087964, there is no canonical definition to state claims against.
-/

/-! ## A087964.P1900710732965412840

`A076566(A266964(n+1)²)`
-/

namespace A087964.P1900710732965412840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076566 (A266964 (n + 1) ^ 2).toNat

end

end A087964.P1900710732965412840

/-!
# A087965: Numbers k such that 2^k - 1 is divisible by (k-1).

The programs for A087965, there is no canonical definition to state claims against.
-/

/-! ## A087965.P9638914699711959734

`A187787(n+1)+1`
-/

namespace A087965.P9638914699711959734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187787 (n + 1) + 1

end

end A087965.P9638914699711959734

/-! ## A087965.P5620821749764035949

`A092486(A187787(n+1))`
-/

namespace A087965.P5620821749764035949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 (A187787 (n + 1)).toNat

end

end A087965.P5620821749764035949

/-! ## A087965.P13941794885057209342

`eq[n, 2*A082495(n+1)]+2`
-/

namespace A087965.P13941794885057209342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A082495 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A087965.P13941794885057209342

/-! ## A087965.P9866537433073501513

`eq[A082493(n+1), A082495(n+1)]+2`
-/

namespace A087965.P9866537433073501513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082495 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A087965.P9866537433073501513

/-! ## A087965.P13079463749488628455

`eq[A082495(n+1), A215747(n+1)]+2`
-/

namespace A087965.P13079463749488628455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082495 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215747 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A087965.P13079463749488628455

/-!
# A087966: a(n) = gcd(-1 + 2^n, n^2).

The programs for A087966, the canonical program `A087966.P1118456457578894597` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087966 has offset 1).

The definition of A087966 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(-1+2^(n+1), (n+1)²)` (program `A087966.P1118456457578894597`, by `A087966.P1118456457578894597.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A087966.P14912995437939366803

`gcd(2^(n+1)-1, (n+1)²)`
-/

namespace A087966.P14912995437939366803
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((2 ^ (n + 1) : ℤ) - 1) ((n + 1) ^ 2 : ℤ)

end

end A087966.P14912995437939366803

namespace A087966

/-- `gcd(2^(n+1)-1, (n+1)²)` -/
def P14912995437939366803.Spec : Prop :=
  ∀ n, (P14912995437939366803.a n : ℤ) = A087966 (n + 1)

theorem P14912995437939366803.correct : P14912995437939366803.Spec := by
  intro n
  simp only [A087966, Nat.add_sub_cancel, A087966.P14912995437939366803.a, A087966.P1118456457578894597.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A087966

/-! ## A087966.P1118456457578894597

`gcd(-1+2^(n+1), (n+1)²)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A087966

/-- `gcd(-1+2^(n+1), (n+1)²)` -/
def P1118456457578894597.Spec : Prop :=
  ∀ n, (P1118456457578894597.a n : ℤ) = A087966 (n + 1)

theorem P1118456457578894597.correct : P1118456457578894597.Spec := by
  intro n
  simp only [A087966, Nat.add_sub_cancel]

end A087966

/-! ## A087966.P11995963184022169249

`A064549(A014491(n+1))`
-/

namespace A087966.P11995963184022169249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064549 (A014491 (n + 1)).toNat

end

end A087966.P11995963184022169249

namespace A087966

/-- `A064549(A014491(n+1))` -/
def P11995963184022169249.Spec : Prop :=
  ∀ n, P11995963184022169249.a n = A087966 (n + 1)

end A087966

/-! ## A087966.P4279231889904187953

`A007947(A014491(n+1)²)*A014491(n+1)`
-/

namespace A087966.P4279231889904187953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A014491 (n + 1) ^ 2).toNat * A014491 (n + 1)

end

end A087966.P4279231889904187953

namespace A087966

/-- `A007947(A014491(n+1)²)*A014491(n+1)` -/
def P4279231889904187953.Spec : Prop :=
  ∀ n, P4279231889904187953.a n = A087966 (n + 1)

end A087966

/-! ## A087966.P9225454443342014990

`A026741(gcd((n+1)²², A000225(n+1)))`
-/

namespace A087966.P9225454443342014990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (Int.gcd (((n + 1) ^ 2) ^ 2 : ℤ) (A000225 (n + 1)))

end

end A087966.P9225454443342014990

namespace A087966

/-- `A026741(gcd((n+1)²², A000225(n+1)))` -/
def P9225454443342014990.Spec : Prop :=
  ∀ n, P9225454443342014990.a n = A087966 (n + 1)

end A087966

/-! ## A087966.P2009914321957478858

`A129527(gcd(2*(n+1)², ∑[A000079(n)]))`
-/

namespace A087966.P2009914321957478858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129527 (Int.gcd (2 * (n + 1) ^ 2 : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A087966.P2009914321957478858

namespace A087966

/-- `A129527(gcd(2*(n+1)², ∑[A000079(n)]))` -/
def P2009914321957478858.Spec : Prop :=
  ∀ n, P2009914321957478858.a n = A087966 (n + 1)

end A087966

/-!
# A087967: Integers m such that gcd(2^m-1, m^2) is not a square number.

The programs for A087967, there is no canonical definition to state claims against.
-/

/-! ## A087967.P8645251228587351433

`filter[A162002(n+3), A347244(#)]`
-/

namespace A087967.P8645251228587351433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162002 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347244 (f1 j).toNat = 1) n)

end

end A087967.P8645251228587351433

/-! ## A087967.P3562334155522505933

`A339979(n+1)/A000122(4^n)`
-/

namespace A087967.P3562334155522505933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339979 (n + 1) : ℚ) / (A000122 (4 ^ n) : ℚ)

end

end A087967.P3562334155522505933

/-! ## A087967.P16322069683378433751

`∩[A038838(n+1), A162002(n+1)]`
-/

namespace A087967.P16322069683378433751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162002 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087967.P16322069683378433751

/-!
# A087968: a(n) = gcd(1 + 2^n, n^2).

The programs for A087968, the canonical program `A087968.P17839215906679769118` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087968 has offset 1).

The definition of A087968 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(1+2^(n+1), (n+1)²)` (program `A087968.P17839215906679769118`, by `A087968.P17839215906679769118.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A087968.P17839215906679769118

`gcd(1+2^(n+1), (n+1)²)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A087968

/-- `gcd(1+2^(n+1), (n+1)²)` -/
def P17839215906679769118.Spec : Prop :=
  ∀ n, (P17839215906679769118.a n : ℤ) = A087968 (n + 1)

theorem P17839215906679769118.correct : P17839215906679769118.Spec := by
  intro n
  simp only [A087968, Nat.add_sub_cancel]

end A087968

/-! ## A087968.P17071082815980462040

`A087966(2*(n+1))/A087966(n+1)`
-/

namespace A087968.P17071082815980462040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087966 (2 * (n + 1)) : ℚ) / (A087966 (n + 1) : ℚ)

end

end A087968.P17071082815980462040

namespace A087968

/-- `A087966(2*(n+1))/A087966(n+1)` -/
def P17071082815980462040.Spec : Prop :=
  ∀ n, P17071082815980462040.a n = (A087968 (n + 1) : ℚ)

end A087968

/-! ## A087968.P15823527412450963420

`A087966(A103517(n))/A000027(A087966(n+1))`
-/

namespace A087968.P15823527412450963420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087966 (A103517 n).toNat : ℚ) / (A000027 (A087966 (n + 1)).toNat : ℚ)

end

end A087968.P15823527412450963420

namespace A087968

/-- `A087966(A103517(n))/A000027(A087966(n+1))` -/
def P15823527412450963420.Spec : Prop :=
  ∀ n, P15823527412450963420.a n = (A087968 (n + 1) : ℚ)

end A087968

/-! ## A087968.P4604976777739743960

`A000027(gcd((n+1)², A000051(n+1)))`
-/

namespace A087968.P4604976777739743960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.gcd ((n + 1) ^ 2 : ℤ) (A000051 (n + 1)))

end

end A087968.P4604976777739743960

namespace A087968

/-- `A000027(gcd((n+1)², A000051(n+1)))` -/
def P4604976777739743960.Spec : Prop :=
  ∀ n, P4604976777739743960.a n = A087968 (n + 1)

end A087968

/-! ## A087968.P2283743789483683064

`A050399(A069226(n+1)²)/A069226(n+1)`
-/

namespace A087968.P2283743789483683064
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050399 (A069226 (n + 1) ^ 2).toNat : ℚ) / (A069226 (n + 1) : ℚ)

end

end A087968.P2283743789483683064

namespace A087968

/-- `A050399(A069226(n+1)²)/A069226(n+1)` -/
def P2283743789483683064.Spec : Prop :=
  ∀ n, P2283743789483683064.a n = (A087968 (n + 1) : ℚ)

end A087968

/-!
# A087969: Integers m such that gcd(2^m+1, m^2) is not a square.

The programs for A087969, there is no canonical definition to state claims against.
-/

/-! ## A087969.P1869316898717522619

`lt[A046799(n), A001222(A046798(n))]`
-/

namespace A087969.P1869316898717522619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046799 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A046798 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A087969.P1869316898717522619

/-!
# A087970: Maximal term in Collatz-iteration started at 2^n+1.

The programs for A087970, there is no canonical definition to state claims against.
-/

/-! ## A087970.P17986885994012068993

`A025586(2^n+1)`
-/

namespace A087970.P17986885994012068993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025586 (2 ^ n + 1)

end

end A087970.P17986885994012068993

/-! ## A087970.P5958119458027506994

`lcm(2, A025586(A000051(n)))`
-/

namespace A087970.P5958119458027506994
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A025586 (A000051 n).toNat)

end

end A087970.P5958119458027506994

/-! ## A087970.P3921974541216411604

`A332640(n)+A025586(A000051(n))`
-/

namespace A087970.P3921974541216411604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332640 n + A025586 (A000051 n).toNat

end

end A087970.P3921974541216411604

/-! ## A087970.P10932499251188328193

`A025586(A000051(n))%A041958(n)`
-/

namespace A087970.P10932499251188328193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025586 (A000051 n).toNat) (A041958 n)

end

end A087970.P10932499251188328193

/-! ## A087970.P8442944303774391630

`A241690(n+1)+A025586(A000051(n))`
-/

namespace A087970.P8442944303774391630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241690 (n + 1) + A025586 (A000051 n).toNat

end

end A087970.P8442944303774391630

/-!
# A087971: Maximal term in Collatz-iteration started at 3^n-1.

The programs for A087971, there is no canonical definition to state claims against.
-/

/-! ## A087971.P5081758812892290223

`A025586(3^(n+1)-1)`
-/

namespace A087971.P5081758812892290223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025586 (3 ^ (n + 1) - 1)

end

end A087971.P5081758812892290223

/-! ## A087971.P18362277320378120301

`A087251(A328314(∑[3*a(n-1)]))` with `a(0)=2`
-/

namespace A087971.P18362277320378120301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087251 (A328314 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A087971.P18362277320378120301

/-! ## A087971.P15033141818724638744

`A375280(3^(n+1)-1)`
-/

namespace A087971.P15033141818724638744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375280 (3 ^ (n + 1) - 1)

end

end A087971.P15033141818724638744

/-! ## A087971.P16295290081880811233

`A000027(A025586(∑[3^n+3^n]))`
-/

namespace A087971.P16295290081880811233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n + 3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A025586 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A087971.P16295290081880811233

/-!
# A087972: Maximal term in Collatz-iteration started at 3^n+1.

The programs for A087972, there is no canonical definition to state claims against.
-/

/-! ## A087972.P14671046992591521508

`A025586(3^n+1)`
-/

namespace A087972.P14671046992591521508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025586 (3 ^ n + 1)

end

end A087972.P14671046992591521508

/-! ## A087972.P15436986528731925630

`2*A365478(A007051(n))`
-/

namespace A087972.P15436986528731925630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A365478 (A007051 n).toNat

end

end A087972.P15436986528731925630

/-! ## A087972.P11738479894283662069

`A375280(3^n+1)`
-/

namespace A087972.P11738479894283662069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375280 (3 ^ n + 1)

end

end A087972.P11738479894283662069

/-! ## A087972.P11604197294981745279

`lcm(2, A375280(A034472(n)))`
-/

namespace A087972.P11604197294981745279
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A375280 (A034472 n).toNat)

end

end A087972.P11604197294981745279

/-! ## A087972.P13696885261821351599

`A035322(n+1)+A025586(A034472(n))`
-/

namespace A087972.P13696885261821351599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035322 (n + 1) + A025586 (A034472 n).toNat

end

end A087972.P13696885261821351599

/-!
# A087973: Maximal term in Collatz-iteration started at 3^n.

The programs for A087973, there is no canonical definition to state claims against.
-/

/-! ## A087973.P1987504803660897344

`A087972(n+2)`
-/

namespace A087973.P1987504803660897344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087972 (n + 2)

end

end A087973.P1987504803660897344

/-! ## A087973.P11755099864983999510

`A025586(3^(n+1))`
-/

namespace A087973.P11755099864983999510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025586 (3 ^ (n + 1))

end

end A087973.P11755099864983999510

/-! ## A087973.P5986578866493393766

`lcm(2, A087972(A030545(n)))`
-/

namespace A087973.P5986578866493393766
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A087972 (A030545 n).toNat)

end

end A087973.P5986578866493393766

/-! ## A087973.P3188980505097678923

`A007318(∑[n])*A087972(A030545(n))`
-/

namespace A087973.P3188980505097678923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A087972 (A030545 n).toNat

end

end A087973.P3188980505097678923

/-! ## A087973.P6275674322073134927

`A087972(A030545(n))/A007318(C(2, n))`
-/

namespace A087973.P6275674322073134927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087972 (A030545 n).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A087973.P6275674322073134927

/-!
# A087974: Largest value of number of distinct prime factors arising in the 3x+1 iteration trajectory started with n.

The programs for A087974, there is no canonical definition to state claims against.
-/

/-! ## A087974.P3244390152459678490

`A001221(A163381(n+1)*A175310(n))`
-/

namespace A087974.P3244390152459678490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A163381 (n + 1) * A175310 n).toNat

end

end A087974.P3244390152459678490

/-! ## A087974.P5110698266810163738

`A001222(lcm(A163381(n+1), A175310(n)))`
-/

namespace A087974.P5110698266810163738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lcm (A163381 (n + 1)) (A175310 n))

end

end A087974.P5110698266810163738

/-! ## A087974.P2336269087654705340

`A001221(A054496(n+1)*A139391(n+1))`
-/

namespace A087974.P2336269087654705340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A054496 (n + 1) * A139391 (n + 1)).toNat

end

end A087974.P2336269087654705340

/-! ## A087974.P17644557761232985148

`A001221(lcm(A054496(n+1), A139391(n+1)))`
-/

namespace A087974.P17644557761232985148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lcm (A054496 (n + 1)) (A139391 (n + 1)))

end

end A087974.P17644557761232985148

/-! ## A087974.P2879870408952085187

`A087991(A000120(2*(n+1))*A006512(3*n+1))`
-/

namespace A087974.P2879870408952085187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087991 (A000120 (2 * (n + 1)) * A006512 (3 * n + 1)).toNat

end

end A087974.P2879870408952085187

/-!
# A087975: a(n) is the smallest number having n as the largest number of distinct prime factors of any term in its 3x+1 trajectory.

The programs for A087975, there is no canonical definition to state claims against.
-/

/-! ## A087975.P10786067842500440203

`or(A087401(A261053(n)), A238480(n+1))`
-/

namespace A087975.P10786067842500440203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A087401 (A261053 n).toNat) (A238480 (n + 1))

end

end A087975.P10786067842500440203

/-! ## A087975.P5948845456092718010

`A364349(A041375(n)+A008683(3*n+2))`
-/

namespace A087975.P5948845456092718010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364349 (A041375 n + A008683 (3 * n + 2)).toNat

end

end A087975.P5948845456092718010

/-!
# A087976: a(n) = A001221(A025586(n)), the number of distinct prime-factors of maximal term in 3x+1 iteration list started at n.

The programs for A087976, there is no canonical definition to state claims against.
-/

/-! ## A087976.P1719219771509957473

`A001221(A025586(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A087976.P1719219771509957473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A025586 (n + 1)).toNat

end

end A087976.P1719219771509957473

/-! ## A087976.P9046408597339698931

`∑{p}[A025586(n+1), A339890(#)]`
-/

namespace A087976.P9046408597339698931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A339890 p

end

end A087976.P9046408597339698931

/-! ## A087976.P11693956032741900027

`A001222(∏{p}[A025586(n+1), #])`
-/

namespace A087976.P11693956032741900027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A087976.P11693956032741900027

/-! ## A087976.P10824660134848963229

`A001221(A270570(2*(n+1)))`
-/

namespace A087976.P10824660134848963229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A270570 (2 * (n + 1))).toNat

end

end A087976.P10824660134848963229

/-! ## A087976.P14782563495645820911

`∑{d}[A025586(n+1), A010051(#)]`
-/

namespace A087976.P14782563495645820911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A010051 d

end

end A087976.P14782563495645820911

/-! ## A087976.P1110411679972495503

`A001221(A087251(A328314(n+1)))`
-/

namespace A087976.P1110411679972495503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A087251 (A328314 (n + 1)).toNat).toNat

end

end A087976.P1110411679972495503

/-! ## A087976.P13969100204454242570

`A001221(A220237(A186701(n+1)))`
-/

namespace A087976.P13969100204454242570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A220237 (A186701 (n + 1)).toNat).toNat

end

end A087976.P13969100204454242570

/-!
# A087977: a(n) is the first term in the first chain of at least n consecutive numbers each having exactly four distinct prime factors.

The programs for A087977, there is no canonical definition to state claims against.
-/

/-! ## A087977.P13141754240879482883

`A185042(A143201(n+1)!+n)`
-/

namespace A087977.P13141754240879482883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185042 (Nat.factorial (A143201 (n + 1)).toNat + n)

end

end A087977.P13141754240879482883

/-! ## A087977.P6912797192129440564

`A185042(or(n+1, A324228(n+1)))`
-/

namespace A087977.P6912797192129440564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185042 (Int.lor (n + 1 : ℤ) (A324228 (n + 1))).toNat

end

end A087977.P6912797192129440564

/-!
# A087978: a(n) is the first term in a chain of at least n consecutive numbers, each having exactly m = 5 distinct prime factors.

The programs for A087978, there is no canonical definition to state claims against.
-/

/-! ## A087978.P563882314472350402

`A384507(comp[A034342(2*n+5)-1]+1)`
-/

namespace A087978.P563882314472350402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034342 (2 * n + 5) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384507 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A087978.P563882314472350402

/-! ## A087978.P18110243405259098957

`A083911(A011782(n))*A384507(n+1)`
-/

namespace A087978.P18110243405259098957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083911 (A011782 n).toNat * A384507 (n + 1)

end

end A087978.P18110243405259098957

/-! ## A087978.P7597017881999738587

`A384507(n+1)+A010815(A299111(n+1))`
-/

namespace A087978.P7597017881999738587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384507 (n + 1) + A010815 (A299111 (n + 1)).toNat

end

end A087978.P7597017881999738587

/-! ## A087978.P16756066487010318459

`A384507(n+1)+A174725(A182474(n+1))`
-/

namespace A087978.P16756066487010318459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384507 (n + 1) + A174725 (A182474 (n + 1)).toNat

end

end A087978.P16756066487010318459

/-! ## A087978.P12569412064897840159

`A305079(A333424(n+1))*A384507(n+1)`
-/

namespace A087978.P12569412064897840159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305079 (A333424 (n + 1)).toNat * A384507 (n + 1)

end

end A087978.P12569412064897840159

/-!
# A087979: a(n) = Min {x : sigma(x) = phi(n*x), x is not a prime}, least nonprime solutions to sigma(x) = phi(n*x).

The programs for A087979, there is no canonical definition to state claims against.
-/

/-! ## A087979.P4786161329868600511

`A256527(char[3]+1+n)`
-/

namespace A087979.P4786161329868600511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256527 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n)

end

end A087979.P4786161329868600511

/-! ## A087979.P4809527020765807636

`A088830(A088847(n+1)*A351086(n))`
-/

namespace A087979.P4809527020765807636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088830 (A088847 (n + 1) * A351086 n).toNat

end

end A087979.P4809527020765807636

/-! ## A087979.P10699533311459806647

`A088830(A088847(n+1)^A351086(n))`
-/

namespace A087979.P10699533311459806647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088830 (SequenceMachineLib.roundAway ((A088847 (n + 1) : ℚ) ^ (A351086 n : ℤ))).toNat

end

end A087979.P10699533311459806647

/-! ## A087979.P3923259742544997918

`A088830(C(A088847(n+1), A351086(n)))`
-/

namespace A087979.P3923259742544997918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088830 (Nat.choose (A088847 (n + 1)).toNat (A351086 n).toNat)

end

end A087979.P3923259742544997918

/-! ## A087979.P7790117562450281017

`A088830(A088847(n+1)%A174197(n+1))`
-/

namespace A087979.P7790117562450281017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088830 (Int.tmod (A088847 (n + 1)) (A174197 (n + 1))).toNat

end

end A087979.P7790117562450281017

/-!
# A087980: Numbers whose prime factors are consecutive primes starting from 2 and with strictly decreasing prime exponents.

The programs for A087980, there is no canonical definition to state claims against.
-/

/-! ## A087980.P4401298768448036312

`record[A071364(A181820(n+1))*A307107(n+1)]`
-/

namespace A087980.P4401298768448036312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (A181820 (n + 1)).toNat * A307107 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087980.P4401298768448036312

/-! ## A087980.P2071798876599868085

`record[A181821(A182861(n+1))*A307107(n+1)]`
-/

namespace A087980.P2071798876599868085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (A182861 (n + 1)).toNat * A307107 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087980.P2071798876599868085

/-! ## A087980.P12719086966950411968

`record[A025487(n+1)/A003557(A181820(n+1))]`
-/

namespace A087980.P12719086966950411968
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025487 (n + 1) : ℚ) / (A003557 (A181820 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087980.P12719086966950411968

/-! ## A087980.P14583494739831628838

`∩[A025487(n+1), A356021(n+1)]`
-/

namespace A087980.P14583494739831628838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087980.P14583494739831628838

/-! ## A087980.P12438905754164441346

`∩[A181824(n+1), A356021(n+1)]`
-/

namespace A087980.P12438905754164441346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181824 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087980.P12438905754164441346

/-! ## A087980.P3913951896590135954

`∩[A333964(n+1), A356021(n+1)]`
-/

namespace A087980.P3913951896590135954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087980.P3913951896590135954

/-! ## A087980.P12004004131408345279

`record[A025487(n+1)*A341629(A181815(n+1))]`
-/

namespace A087980.P12004004131408345279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1) * A341629 (A181815 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087980.P12004004131408345279

/-! ## A087980.P16787288891922666477

`filter[A133813(n+1), A365429(#)]`
-/

namespace A087980.P16787288891922666477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365429 (f1 j).toNat = 1) n)

end

end A087980.P16787288891922666477

/-! ## A087980.P17989929741001331160

`filter[A133813(n+1), A373252(#)]`
-/

namespace A087980.P17989929741001331160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373252 (f1 j).toNat = 1) n)

end

end A087980.P17989929741001331160

/-! ## A087980.P8389834028860587826

`∩[A025487(n+1), A133813(n+1)]`
-/

namespace A087980.P8389834028860587826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087980.P8389834028860587826

/-!
# A087981: Expansion of e.g.f.: exp(-2*x) / (1-x)^2.

The programs for A087981, the canonical program `A087981.P5853151431127626251` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087981 has offset 0).

The definition of A087981 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A087981.P5853151431127626251

`n*(n+3)/(n+2)*a(n-1)-(-2)^(n+1)/(n+2)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A087981

/-- `n*(n+3)/(n+2)*a(n-1)-(-2)^(n+1)/(n+2)` -/
def P5853151431127626251.Spec : Prop :=
  ∀ n, P5853151431127626251.a n = (A087981 n : ℚ)

end A087981

/-! ## A087981.P8058678638898471341

`(a(n-1)+2*a(n-2))*(n-1)` with `a(0)=1, a(1)=0`
-/

namespace A087981.P8058678638898471341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  (a (n - 1) + 2 * a (n - 2)) * ((n : ℤ) - 1)

end

end A087981.P8058678638898471341

namespace A087981

/-- `(a(n-1)+2*a(n-2))*(n-1)` -/
def P8058678638898471341.Spec : Prop :=
  ∀ n, P8058678638898471341.a n = A087981 n

end A087981

/-! ## A087981.P9393503665249361805

`(2-(2*(1-a(n-2))-a(n-1)))*(n-1)` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A087981.P9393503665249361805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2] fun n a =>
  (2 - (2 * (1 - a (n - 2)) - a (n - 1))) * ((n : ℤ) - 1)

end

end A087981.P9393503665249361805

namespace A087981

/-- `(2-(2*(1-a(n-2))-a(n-1)))*(n-1)` -/
def P9393503665249361805.Spec : Prop :=
  ∀ n, P9393503665249361805.a n = A087981 n

end A087981

/-! ## A087981.P6189312793638018271

`A000023(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A087981.P6189312793638018271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000023 n + (n : ℤ) * a (n - 1)

end

end A087981.P6189312793638018271

namespace A087981

/-- `A000023(n)+n*a(n-1)` -/
def P6189312793638018271.Spec : Prop :=
  ∀ n, P6189312793638018271.a n = A087981 n

end A087981

/-! ## A087981.P6817699196334665299

`A088127(n)-A037256(n)`
-/

namespace A087981.P6817699196334665299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088127 n - A037256 n

end

end A087981.P6817699196334665299

namespace A087981

/-- `A088127(n)-A037256(n)` -/
def P6817699196334665299.Spec : Prop :=
  ∀ n, P6817699196334665299.a n = A087981 n

end A087981

/-! ## A087981.P13783798154449251732

`A000023(n+1)+2*A000023(n)`
-/

namespace A087981.P13783798154449251732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000023 (n + 1) + 2 * A000023 n

end

end A087981.P13783798154449251732

namespace A087981

/-- `A000023(n+1)+2*A000023(n)` -/
def P13783798154449251732.Spec : Prop :=
  ∀ n, P13783798154449251732.a n = A087981 n

end A087981

/-! ## A087981.P2661793691288588590

`A335111(n+1)+2*A335111(n)`
-/

namespace A087981.P2661793691288588590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335111 (n + 1) + 2 * A335111 n

end

end A087981.P2661793691288588590

namespace A087981

/-- `A335111(n+1)+2*A335111(n)` -/
def P2661793691288588590.Spec : Prop :=
  ∀ n, P2661793691288588590.a n = A087981 n

end A087981

/-! ## A087981.P8035688360377174418

`A088127(n)+A037256(n)*A057428(n)`
-/

namespace A087981.P8035688360377174418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088127 n + A037256 n * A057428 n

end

end A087981.P8035688360377174418

namespace A087981

/-- `A088127(n)+A037256(n)*A057428(n)` -/
def P8035688360377174418.Spec : Prop :=
  ∀ n, P8035688360377174418.a n = A087981 n

end A087981

/-! ## A087981.P16245812575156943571

`record[A047920(n)]-2*A037256(n)`
-/

namespace A087981.P16245812575156943571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 2 * A037256 n

end

end A087981.P16245812575156943571

namespace A087981

/-- `record[A047920(n)]-2*A037256(n)` -/
def P16245812575156943571.Spec : Prop :=
  ∀ n, P16245812575156943571.a n = A087981 n

end A087981

/-! ## A087981.P13778726823852084891

`record[A094587(n)]-2*A037256(n)`
-/

namespace A087981.P13778726823852084891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 2 * A037256 n

end

end A087981.P13778726823852084891

namespace A087981

/-- `record[A094587(n)]-2*A037256(n)` -/
def P13778726823852084891.Spec : Prop :=
  ∀ n, P13778726823852084891.a n = A087981 n

end A087981

/-!
# A087982: Maximal permanent of a nonsingular n X n (+1,-1)-matrix.

The programs for A087982, there is no canonical definition to state claims against.
-/

/-! ## A087982.P13255933811797217256

`and(n+3, a(n-1))+n!` with `a(0)=1, a(1)=0`
-/

namespace A087982.P13255933811797217256
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  Nat.land (n + 3) (a (n - 1)) + Nat.factorial n

end

end A087982.P13255933811797217256

/-!
# A087983: Number of different values taken by the permanent of n X n (0,1)-matrices.

The programs for A087983, there is no canonical definition to state claims against.
-/

/-! ## A087983.P8910803778097972973

`A196390(A200719(n)+n)`
-/

namespace A087983.P8910803778097972973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196390 (A200719 n + (n : ℤ)).toNat

end

end A087983.P8910803778097972973

/-! ## A087983.P2689364007987486098

`∑[A002635(∑[A211249(n)])]`
-/

namespace A087983.P2689364007987486098
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211249 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087983.P2689364007987486098

/-! ## A087983.P13571533810379614321

`A189663(A306838(n))+A020112(n)`
-/

namespace A087983.P13571533810379614321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189663 (A306838 n).toNat + A020112 n

end

end A087983.P13571533810379614321

/-!
# A087984: 9-ish numbers (A011539) which are not lunar primes (A087097).

The programs for A087984, there is no canonical definition to state claims against.
-/

/-! ## A087984.P5422055868363911999

`A133626(A028310(n))%A275343(n+1)`
-/

namespace A087984.P5422055868363911999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133626 (A028310 n).toNat) (A275343 (n + 1))

end

end A087984.P5422055868363911999

/-! ## A087984.P5167048067089894324

`A133626(A065033(2*n))%A275343(n+1)`
-/

namespace A087984.P5167048067089894324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133626 (A065033 (2 * n)).toNat) (A275343 (n + 1))

end

end A087984.P5167048067089894324

/-! ## A087984.P275862334123694573

`∩[A101242(n+1), A179506(n+1)]`
-/

namespace A087984.P275862334123694573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087984.P275862334123694573

/-!
# A087986: a(n) is the smallest prime p such that 1 + 2^n*p is divisible by the following prime, or 0 if no such prime exists.

The programs for A087986, there is no canonical definition to state claims against.
-/

/-! ## A087986.P12613975975063483171

`A084958(A006519(n+4))%A281921(n+1)`
-/

namespace A087986.P12613975975063483171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084958 (A006519 (n + 4)).toNat) (A281921 (n + 1))

end

end A087986.P12613975975063483171

/-!
# A087988: Palindromic numbers whose squares and cubes are equally palindromic.

The programs for A087988, there is no canonical definition to state claims against.
-/

/-! ## A087988.P16512457082052070598

`A069748(comp[∑[2*n]²])`
-/

namespace A087988.P16512457082052070598
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069748 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A087988.P16512457082052070598

/-! ## A087988.P13168729949168172102

`A002780(comp[A245581(n)²])`
-/

namespace A087988.P13168729949168172102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245581 n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002780 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A087988.P13168729949168172102

/-! ## A087988.P13101462452230826747

`A002780(comp[A104986(2*n)²])`
-/

namespace A087988.P13101462452230826747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104986 (2 * n) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002780 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A087988.P13101462452230826747

/-! ## A087988.P16891989829093036344

`∩[A002780(n+1), A080897(n)]`
-/

namespace A087988.P16891989829093036344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080897 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087988.P16891989829093036344

/-! ## A087988.P18092384765003652828

`∩[A002780(n+1), A105116(n)]`
-/

namespace A087988.P18092384765003652828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105116 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087988.P18092384765003652828

/-!
# A087990: Number of palindromic divisors of n.

The programs for A087990, there is no canonical definition to state claims against.
-/

/-! ## A087990.P2190057608978256306

`∑{d}[n+1, A136522(#)]`
-/

namespace A087990.P2190057608978256306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A136522 d

end

end A087990.P2190057608978256306

/-! ## A087990.P17296922660376303491

`∑{d}[n+1, (2-4/2)^A338827(#)]`
-/

namespace A087990.P17296922660376303491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (2 - (4 : ℚ) / 2) ^ (A338827 d : ℤ)

end

end A087990.P17296922660376303491

/-! ## A087990.P6604265458345383276

`∑{d}[n+1, A000007(A064834(#))]`
-/

namespace A087990.P6604265458345383276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000007 (A064834 d).toNat

end

end A087990.P6604265458345383276

/-! ## A087990.P17819338637576093845

`Δ[A006218(n)]-A087991(n+1)`
-/

namespace A087990.P17819338637576093845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A087991 (n + 1)

end

end A087990.P17819338637576093845

/-! ## A087990.P7590164238884213637

`A000005(n+1)-A087991(n+1)`
-/

namespace A087990.P7590164238884213637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A087991 (n + 1)

end

end A087990.P7590164238884213637

/-! ## A087990.P8476463843683541480

`A334954(n+1)-(A087991(n+1)+1)`
-/

namespace A087990.P8476463843683541480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 1) - (A087991 (n + 1) + 1)

end

end A087990.P8476463843683541480

/-! ## A087990.P17661939688020838554

`A028310(∏{e}[n+1, #+1]-A087991(n+1))`
-/

namespace A087990.P17661939688020838554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - A087991 (n + 1)).toNat

end

end A087990.P17661939688020838554

/-! ## A087990.P10564892728160991921

`A028310(∑{d}[n+1, gcd(n, #)]-A087991(n+1))`
-/

namespace A087990.P10564892728160991921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (((∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d : ℕ) : ℤ) - A087991 (n + 1)).toNat

end

end A087990.P10564892728160991921

/-! ## A087990.P12443513918619456022

`A336041(n+1)+A349658(n+1)-A087991(n+1)`
-/

namespace A087990.P12443513918619456022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336041 (n + 1) + (A349658 (n + 1) - A087991 (n + 1))

end

end A087990.P12443513918619456022

/-! ## A087990.P3736475907192401267

`A353351(n+1)+A353352(n+1)-A087991(n+1)`
-/

namespace A087990.P3736475907192401267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353351 (n + 1) + (A353352 (n + 1) - A087991 (n + 1))

end

end A087990.P3736475907192401267

/-! ## A087990.P8426607735279891919

`A353361(n+1)+A353362(n+1)-A087991(n+1)`
-/

namespace A087990.P8426607735279891919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353361 (n + 1) + (A353362 (n + 1) - A087991 (n + 1))

end

end A087990.P8426607735279891919

/-! ## A087990.P3573029847183401187

`A353375(n+1)+A353376(n+1)-A087991(n+1)`
-/

namespace A087990.P3573029847183401187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353375 (n + 1) + (A353376 (n + 1) - A087991 (n + 1))

end

end A087990.P3573029847183401187

/-! ## A087990.P7958555736176019256

`∑{d}[n+1, A000007(A338827(#))]`
-/

namespace A087990.P7958555736176019256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000007 (A338827 d).toNat

end

end A087990.P7958555736176019256

/-! ## A087990.P13377348322382352018

`∑{d}[n+1, A057427(#)]-A087991(n+1)`
-/

namespace A087990.P13377348322382352018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057427 d - A087991 (n + 1)

end

end A087990.P13377348322382352018

/-! ## A087990.P9281959185671288900

`A355698(A083230(A355302(n+1))+n)`
-/

namespace A087990.P9281959185671288900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355698 (A083230 (A355302 (n + 1)).toNat + (n : ℤ)).toNat

end

end A087990.P9281959185671288900

/-!
# A087991: Number of non-palindromic divisors of n.

The programs for A087991, there is no canonical definition to state claims against.
-/

/-! ## A087991.P13150876921512890942

`A000005(n+1)-A087990(n+1)`
-/

namespace A087991.P13150876921512890942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A087990 (n + 1)

end

end A087991.P13150876921512890942

/-! ## A087991.P18292347289399805158

`Δ[A006218(n)]-A087990(n+1)`
-/

namespace A087991.P18292347289399805158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A087990 (n + 1)

end

end A087991.P18292347289399805158

/-! ## A087991.P2546612253547598673

`Δ[A054519(n)]-A087990(n+1)`
-/

namespace A087991.P2546612253547598673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A087990 (n + 1)

end

end A087991.P2546612253547598673

/-! ## A087991.P14593364973910020284

`A028310(∏{e}[n+1, #+1])-A087990(n+1)`
-/

namespace A087991.P14593364973910020284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) - A087990 (n + 1)

end

end A087991.P14593364973910020284

/-! ## A087991.P10160082750409864746

`A054519(n+1)-(A087990(n+1)+A054519(n))`
-/

namespace A087991.P10160082750409864746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 (n + 1) - (A087990 (n + 1) + A054519 n)

end

end A087991.P10160082750409864746

/-! ## A087991.P8884440542799691237

`A336041(n+1)+A349658(n+1)-A087990(n+1)`
-/

namespace A087991.P8884440542799691237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336041 (n + 1) + (A349658 (n + 1) - A087990 (n + 1))

end

end A087991.P8884440542799691237

/-! ## A087991.P18159489862365405590

`A353351(n+1)+A353352(n+1)-A087990(n+1)`
-/

namespace A087991.P18159489862365405590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353351 (n + 1) + (A353352 (n + 1) - A087990 (n + 1))

end

end A087991.P18159489862365405590

/-! ## A087991.P1150868624499967046

`A353361(n+1)+A353362(n+1)-A087990(n+1)`
-/

namespace A087991.P1150868624499967046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353361 (n + 1) + (A353362 (n + 1) - A087990 (n + 1))

end

end A087991.P1150868624499967046

/-! ## A087991.P813793494320435793

`A353375(n+1)+A353376(n+1)-A087990(n+1)`
-/

namespace A087991.P813793494320435793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353375 (n + 1) + (A353376 (n + 1) - A087990 (n + 1))

end

end A087991.P813793494320435793

/-! ## A087991.P12910582137186674648

`∑{d}[n+1, A057427(#)]-A087990(n+1)`
-/

namespace A087991.P12910582137186674648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057427 d - A087990 (n + 1)

end

end A087991.P12910582137186674648

/-! ## A087991.P12458229633576423670

`Δ[eq[1, A275055(n+1)]]-A087990(n+1)`
-/

namespace A087991.P12458229633576423670
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275055 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A087990 (n + 1)

end

end A087991.P12458229633576423670

/-! ## A087991.P5801624206238571681

`∑{d}[n+1, A138707(A138708(#))]-A087990(n+1)`
-/

namespace A087991.P5801624206238571681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A138707 (A138708 d).toNat - A087990 (n + 1)

end

end A087991.P5801624206238571681

/-! ## A087991.P13452798488831454553

`∑{d}[n+1, and(1, A062128(A033665(#)))]`
-/

namespace A087991.P13452798488831454553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.land 1 (A062128 (A033665 d).toNat)

end

end A087991.P13452798488831454553

/-! ## A087991.P3598619899880060782

`∑{d}[n+1, A377191(#)]`
-/

namespace A087991.P3598619899880060782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A377191 d

end

end A087991.P3598619899880060782

/-!
# A087993: Numbers k for which the quotient q(k)=(k+rev(k))/abs(k-rev(k)) is an integer.

The programs for A087993, there is no canonical definition to state claims against.
-/

/-! ## A087993.P8111083858997080906

`A033618(A033643(n+4))*A033651(n)`
-/

namespace A087993.P8111083858997080906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033618 (A033643 (n + 4)).toNat * A033651 n

end

end A087993.P8111083858997080906

/-!
# A087995: Base-10 palindromes that cannot be formed by performing reverse-and-add operations on any previous nonpalindromic positive integers.

The programs for A087995, there is no canonical definition to state claims against.
-/

/-! ## A087995.P3830195164938734511

`A056142(comp[a(n-1)+2])` with `a(0)=10`
-/

namespace A087995.P3830195164938734511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [10] fun n f1 =>
  f1 (n - 1) + 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056142 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A087995.P3830195164938734511

/-! ## A087995.P13614393716940715894

`A002113(∑{digits}[n, gcd(n, n*#)]+1)`
-/

namespace A087995.P13614393716940715894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.gcd n (n * x)).sum + 1)

end

end A087995.P13614393716940715894

/-! ## A087995.P810351044770868641

`A002113(n*∑{digits}[n, and(1, #)!]+1)`
-/

namespace A087995.P810351044770868641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n * ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.factorial (Nat.land 1 x)).sum + 1)

end

end A087995.P810351044770868641

/-! ## A087995.P12502110787402808442

`A002113(n*∑{digits}[n, 10^#]%9+1)`
-/

namespace A087995.P12502110787402808442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n * (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 10 ^ x).sum % 9) + 1)

end

end A087995.P12502110787402808442

/-! ## A087995.P4783549979323385988

`A056142(lt[(n+2)*(1-gcd(n+3, n-1)/2), 6])`
-/

namespace A087995.P4783549979323385988
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * (1 - (Int.gcd (n + 3 : ℤ) ((n : ℤ) - 1) : ℚ) / 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056142 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A087995.P4783549979323385988

/-! ## A087995.P11899734559275281112

`A056142(lt[A142150(n), 5])`
-/

namespace A087995.P11899734559275281112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056142 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A087995.P11899734559275281112

/-! ## A087995.P1153284005745347617

`A056142(lt[A158416(n), 6])`
-/

namespace A087995.P1153284005745347617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056142 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A087995.P1153284005745347617

/-! ## A087995.P15535842012481539029

`A056142(lt[A038608(n), 9])`
-/

namespace A087995.P15535842012481539029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056142 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A087995.P15535842012481539029

/-! ## A087995.P4412755318047535133

`A056142(lt[A237420(n), 9])`
-/

namespace A087995.P4412755318047535133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237420 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056142 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A087995.P4412755318047535133

/-! ## A087995.P8602712056016699001

`record[A056142(n)%A174029(n)]`
-/

namespace A087995.P8602712056016699001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056142 n) (A174029 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087995.P8602712056016699001

/-!
# A087998: a(n) = smallest number x such that sigma(x) = 2x + 2n.

The programs for A087998, there is no canonical definition to state claims against.
-/

/-! ## A087998.P11839871809331089383

`filter[A082731(2*n), A005171(#)]`
-/

namespace A087998.P11839871809331089383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082731 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A087998.P11839871809331089383

/-! ## A087998.P12001517866402550184

`filter[A082731(2*n), A049240(#)]`
-/

namespace A087998.P12001517866402550184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082731 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A087998.P12001517866402550184

/-! ## A087998.P10485806886224424760

`filter[A082731(2*n), A066247(#)]`
-/

namespace A087998.P10485806886224424760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082731 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A087998.P10485806886224424760

/-! ## A087998.P10859262540117889652

`filter[A082731(2*n), A178226(#)]`
-/

namespace A087998.P10859262540117889652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082731 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178226 (f1 j).toNat = 1) n)

end

end A087998.P10859262540117889652

/-! ## A087998.P10434828304741165380

`filter[A082731(2*n), A202238(#)]`
-/

namespace A087998.P10434828304741165380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082731 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A087998.P10434828304741165380

/-!
# A087999: a(n) is the LCM of palindromic divisors of n.

The programs for A087999, there is no canonical definition to state claims against.
-/

/-! ## A087999.P15035765573293033610

`∏{d}[n+1, A014963(A080436(#))]`
-/

namespace A087999.P15035765573293033610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A014963 (A080436 d).toNat

end

end A087999.P15035765573293033610

/-! ## A087999.P11090348550716027442

`gcd(n+1, A204831(A262079(n+1)))`
-/

namespace A087999.P11090348550716027442
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A204831 (A262079 (n + 1)).toNat)

end

end A087999.P11090348550716027442

/-! ## A087999.P12206390395085561138

`A355263(A184392(n+1))`
-/

namespace A087999.P12206390395085561138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355263 (A184392 (n + 1)).toNat

end

end A087999.P12206390395085561138

/-! ## A087999.P10987076387827165527

`gcd(A098175(n+1), A188649(n+1))`
-/

namespace A087999.P10987076387827165527
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A098175 (n + 1)) (A188649 (n + 1))

end

end A087999.P10987076387827165527

