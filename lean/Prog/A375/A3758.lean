import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
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
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C042
import Seq.B000.C045
import Seq.B000.C047
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C004
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C001
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
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A375802: Lexicographically earliest sequence of positive integers such that the sum of the inverses of the indices where the sequence has the same value is at most 1.

The programs for A375802, there is no canonical definition to state claims against.
-/

/-! ## A375802.P10646176996160188142

`A070939(A324692(n+1)+A025528(n+1))`
-/

namespace A375802.P10646176996160188142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A324692 (n + 1) + A025528 (n + 1)).toNat

end

end A375802.P10646176996160188142

/-! ## A375802.P16964262365009254671

`A055642((n+1)*(A134237(n+1)+1)²)`
-/

namespace A375802.P16964262365009254671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 ((n + 1 : ℤ) * (A134237 (n + 1) + 1) ^ 2).toNat

end

end A375802.P16964262365009254671

/-! ## A375802.P14779592349885775019

`A055642(A008458(n)*A182848(n+1))`
-/

namespace A375802.P14779592349885775019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A008458 n * A182848 (n + 1)).toNat

end

end A375802.P14779592349885775019

/-! ## A375802.P4490417003341990304

`A055642(A156898(3*n+2)*A293869(n+1))`
-/

namespace A375802.P4490417003341990304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A156898 (3 * n + 2) * A293869 (n + 1)).toNat

end

end A375802.P4490417003341990304

/-! ## A375802.P4477186913479923376

`A055642(A293869(n+1)*A309126(3*n+2))`
-/

namespace A375802.P4477186913479923376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A293869 (n + 1) * A309126 (3 * n + 2)).toNat

end

end A375802.P4477186913479923376

/-!
# A375803: a(n) = Fibonacci(n-1) * Fibonacci(n+1) * Fibonacci(2*n-1) * Fibonacci(2*n+1).

The programs for A375803, the canonical program `A375803.P15871120865266231803` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375803 has offset 1).

The definition of A375803 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n)*A000045(n+2)*A000045(2*(n+1)-1)*A000045(2*(n+1)+1)` (program `A375803.P15871120865266231803`, by `A375803.P15871120865266231803.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A375803.P16994660363553380028

`A059929(n)*A064170(n+3)`
-/

namespace A375803.P16994660363553380028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059929 n * A064170 (n + 3)

end

end A375803.P16994660363553380028

namespace A375803

/-- `A059929(n)*A064170(n+3)` -/
def P16994660363553380028.Spec : Prop :=
  ∀ n, P16994660363553380028.a n = A375803 (n + 1)

end A375803

/-! ## A375803.P1262696694182354091

`A059929(n)*A059929(2*(n+1)-1)`
-/

namespace A375803.P1262696694182354091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059929 n * A059929 (2 * (n + 1) - 1)

end

end A375803.P1262696694182354091

namespace A375803

/-- `A059929(n)*A059929(2*(n+1)-1)` -/
def P1262696694182354091.Spec : Prop :=
  ∀ n, P1262696694182354091.a n = A375803 (n + 1)

end A375803

/-! ## A375803.P15871120865266231803

`A000045(n)*A000045(n+2)*A000045(2*(n+1)-1)*A000045(2*(n+1)+1)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A375803

/-- `A000045(n)*A000045(n+2)*A000045(2*(n+1)-1)*A000045(2*(n+1)+1)` -/
def P15871120865266231803.Spec : Prop :=
  ∀ n, P15871120865266231803.a n = A375803 (n + 1)

theorem P15871120865266231803.correct : P15871120865266231803.Spec := by
  intro n
  simp only [A375803, Nat.add_sub_cancel]

end A375803

/-! ## A375803.P5600505040099081941

`A059929(n)*A375804(n+1)/A292696(n+1)`
-/

namespace A375803.P5600505040099081941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059929 n * A375804 (n + 1) : ℚ) / (A292696 (n + 1) : ℚ)

end

end A375803.P5600505040099081941

namespace A375803

/-- `A059929(n)*A375804(n+1)/A292696(n+1)` -/
def P5600505040099081941.Spec : Prop :=
  ∀ n, P5600505040099081941.a n = (A375803 (n + 1) : ℚ)

end A375803

/-!
# A375804: a(n) = Lucas(n-1) * Lucas(n+1) * Fibonacci(2*n-1) * Fibonacci(2*n+1).

The programs for A375804, the canonical program `A375804.P4009701669286425089` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375804 has offset 1).

The definition of A375804 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000032(n)*A000032(n+2)*A000045(2*(n+1)-1)*A000045(2*(n+1)+1)` (program `A375804.P4009701669286425089`, by `A375804.P4009701669286425089.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A375804.P1759534372419539199

`A292696(n+1)*A064170(n+3)`
-/

namespace A375804.P1759534372419539199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292696 (n + 1) * A064170 (n + 3)

end

end A375804.P1759534372419539199

namespace A375804

/-- `A292696(n+1)*A064170(n+3)` -/
def P1759534372419539199.Spec : Prop :=
  ∀ n, P1759534372419539199.a n = A375804 (n + 1)

end A375804

/-! ## A375804.P4009701669286425089

`A000032(n)*A000032(n+2)*A000045(2*(n+1)-1)*A000045(2*(n+1)+1)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A375804

/-- `A000032(n)*A000032(n+2)*A000045(2*(n+1)-1)*A000045(2*(n+1)+1)` -/
def P4009701669286425089.Spec : Prop :=
  ∀ n, P4009701669286425089.a n = A375804 (n + 1)

theorem P4009701669286425089.correct : P4009701669286425089.Spec := by
  intro n
  simp only [A375804, Nat.add_sub_cancel]

end A375804

/-! ## A375804.P14447763828800221880

`A059929(2*n+1)*A292696(n+1)`
-/

namespace A375804.P14447763828800221880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059929 (2 * n + 1) * A292696 (n + 1)

end

end A375804.P14447763828800221880

namespace A375804

/-- `A059929(2*n+1)*A292696(n+1)` -/
def P14447763828800221880.Spec : Prop :=
  ∀ n, P14447763828800221880.a n = A375804 (n + 1)

end A375804

/-!
# A375806: Expansion of e.g.f. 1/(1 + (log(1 - x^2))/x)^2.

The programs for A375806, there is no canonical definition to state claims against.
-/

/-! ## A375806.P7451710120899016583

`A333217(A378580(n))+1`
-/

namespace A375806.P7451710120899016583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333217 (A378580 n).toNat + 1

end

end A375806.P7451710120899016583

/-! ## A375806.P6460823252710326326

`A120963(n)*A206718(A213092(n))`
-/

namespace A375806.P6460823252710326326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120963 n * A206718 (A213092 n).toNat

end

end A375806.P6460823252710326326

/-!
# A375808: Expansion of e.g.f. 1/(1 + (log(1 - x^3))/x^2)^2.

The programs for A375808, there is no canonical definition to state claims against.
-/

/-! ## A375808.P17474572108030041075

`A008588(A375812(n))/6`
-/

namespace A375808.P17474572108030041075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008588 (A375812 n).toNat : ℚ) / 6

end

end A375808.P17474572108030041075

/-! ## A375808.P7220710447013407352

`A375812(n^A185620(n))`
-/

namespace A375808.P7220710447013407352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375812 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A185620 n : ℤ))).toNat

end

end A375808.P7220710447013407352

/-! ## A375808.P14622551445106802182

`A000142(n)*A248213(A008000(n))`
-/

namespace A375808.P14622551445106802182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A248213 (A008000 n).toNat

end

end A375808.P14622551445106802182

/-!
# A375809: Expansion of e.g.f. 1/(1 + (log(1 - x^3))/x^2)^3.

The programs for A375809, there is no canonical definition to state claims against.
-/

/-! ## A375809.P8641253163563813506

`A375813(n)+A000035(A076726(n))`
-/

namespace A375809.P8641253163563813506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375813 n + A000035 (A076726 n).toNat

end

end A375809.P8641253163563813506

/-! ## A375809.P9671822776144141003

`A375813(n)+A277885(A048876(n))`
-/

namespace A375809.P9671822776144141003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375813 n + A277885 (A048876 n).toNat

end

end A375809.P9671822776144141003

/-! ## A375809.P12430060156379538888

`A388072(A007798(n))+A375813(n)`
-/

namespace A375809.P12430060156379538888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388072 (A007798 n).toNat + A375813 n

end

end A375809.P12430060156379538888

/-!
# A375810: Expansion of e.g.f. 1/(1 - (exp(x^2) - 1)/x)^2.

The programs for A375810, there is no canonical definition to state claims against.
-/

/-! ## A375810.P12395381282220022023

`A272574((n+1)*a(n-1))` with `a(0)=1`
-/

namespace A375810.P12395381282220022023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272574 ((n + 1 : ℤ) * a (n - 1)).toNat

end

end A375810.P12395381282220022023

/-! ## A375810.P16445281786891601521

`A002720(n)-A334265(A000085(n))`
-/

namespace A375810.P16445281786891601521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002720 n - A334265 (A000085 n).toNat

end

end A375810.P16445281786891601521

/-!
# A375811: Expansion of e.g.f. 1/(1 - (exp(x^2) - 1)/x)^3.

The programs for A375811, there is no canonical definition to state claims against.
-/

/-! ## A375811.P3999177326834597193

`A289441(A000142(n)*A064428(2*(n+2)))`
-/

namespace A375811.P3999177326834597193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289441 (A000142 n * A064428 (2 * (n + 2))).toNat

end

end A375811.P3999177326834597193

/-!
# A375815: Lexicographically earliest sequence of positive integers such that for any n > 0, Sum_{k = 1..n} 1/(a(k)*a(n+1-k)) <= 1.

The programs for A375815, there is no canonical definition to state claims against.
-/

/-! ## A375815.P7965349872345753530

`A325678(A284895(n+1)+A060119(n))`
-/

namespace A375815.P7965349872345753530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (A284895 (n + 1) + A060119 n).toNat

end

end A375815.P7965349872345753530

/-! ## A375815.P12016878642652473582

`A003056(lt[A335488(n+1), A120291(n+1)])`
-/

namespace A375815.P12016878642652473582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120291 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A375815.P12016878642652473582

/-! ## A375815.P13717042355721889363

`A000196(A329133(2*n+1)+A329133(n+1))`
-/

namespace A375815.P13717042355721889363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A329133 (2 * n + 1) + A329133 (n + 1)).toNat

end

end A375815.P13717042355721889363

/-! ## A375815.P2216898923416213770

`A000196(A342495(2*(n+1))+A342495(n))`
-/

namespace A375815.P2216898923416213770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A342495 (2 * (n + 1)) + A342495 n).toNat

end

end A375815.P2216898923416213770

/-! ## A375815.P9867049374050773140

`A088519(A307699(n+2))`
-/

namespace A375815.P9867049374050773140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088519 (A307699 (n + 2)).toNat

end

end A375815.P9867049374050773140

/-!
# A375817: In an n X n grid draw straight walls between cells, starting at a border, such that the resulting figure is connected and has only one-cell wide paths; a(n) is the number of solutions not reduced for symmetries.

The programs for A375817, there is no canonical definition to state claims against.
-/

/-! ## A375817.P1867284348002475452

`A375858((n+1)²+n²)`
-/

namespace A375817.P1867284348002475452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375858 ((n + 1) ^ 2 + n ^ 2)

end

end A375817.P1867284348002475452

/-! ## A375817.P8623021802247561778

`record[A375858(A092530(n)+1)]`
-/

namespace A375817.P8623021802247561778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375858 (A092530 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A375817.P8623021802247561778

/-!
# A375818: Primes p such that there exists an elliptic curve E/Q with good reduction away from p.

The programs for A375818, there is no canonical definition to state claims against.
-/

/-! ## A375818.P17660849491964610413

`eq[A003415(n), A006519(A358291(n))]`
-/

namespace A375818.P17660849491964610413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A358291 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A375818.P17660849491964610413

/-! ## A375818.P5500833090797407557

`A000040(record[A338480(n+1)+A032741(n)])`
-/

namespace A375818.P5500833090797407557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338480 (n + 1) + A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A375818.P5500833090797407557

/-! ## A375818.P603448842120336575

`A000040(lt[A211673(n+1), A247566(n+2)])`
-/

namespace A375818.P603448842120336575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247566 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A375818.P603448842120336575

/-!
# A375821: Number of ways to tile a 3-row parallelogram of length n with triangular and rectangular tiles, each of size 3.

The programs for A375821, the canonical program `A375821.P8801359538338497111` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375821 has offset 0).

The definition of A375821 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A375821.P17241914319427855827

`ogf((1-x-x^3)/(1-2x-4x^3+x^4+x^6))`
-/

namespace A375821.P17241914319427855827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 0, -1] [1, -2, 0, -4, 1, 0, 1] n

end

end A375821.P17241914319427855827

namespace A375821

/-- `ogf((1-x-x^3)/(1-2x-4x^3+x^4+x^6))` -/
def P17241914319427855827.Spec : Prop :=
  ∀ n, P17241914319427855827.a n = A375821 n

end A375821

/-! ## A375821.P8801359538338497111

`2*a(n-1)+4*a(n-3)-a(n-4)-a(n-6)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=7, a(4)=17, a(5)=41`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A375821

/-- `2*a(n-1)+4*a(n-3)-a(n-4)-a(n-6)` -/
def P8801359538338497111.Spec : Prop :=
  ∀ n, P8801359538338497111.a n = A375821 n

theorem P8801359538338497111.correct : P8801359538338497111.Spec := by
  intro n
  simp only [A375821]

end A375821

/-! ## A375821.P5186506469706991288

`(A077939(n)+A077961(n))/2`
-/

namespace A375821.P5186506469706991288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077939 n + A077961 n : ℚ) / 2

end

end A375821.P5186506469706991288

namespace A375821

/-- `(A077939(n)+A077961(n))/2` -/
def P5186506469706991288.Spec : Prop :=
  ∀ n, P5186506469706991288.a n = (A375821 n : ℚ)

end A375821

/-! ## A375821.P7959155756918537849

`A375823(n)+A077961(n)`
-/

namespace A375821.P7959155756918537849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375823 n + A077961 n

end

end A375821.P7959155756918537849

namespace A375821

/-- `A375823(n)+A077961(n)` -/
def P7959155756918537849.Spec : Prop :=
  ∀ n, P7959155756918537849.a n = A375821 n

end A375821

/-! ## A375821.P7506779970996073989

`A375823(n)+1-A077888(n+2)`
-/

namespace A375821.P7506779970996073989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375823 n + (1 - A077888 (n + 2))

end

end A375821.P7506779970996073989

namespace A375821

/-- `A375823(n)+1-A077888(n+2)` -/
def P7506779970996073989.Spec : Prop :=
  ∀ n, P7506779970996073989.a n = A375821 n

end A375821

/-! ## A375821.P10833684974265247581

`A375823(n)+A077962(n)*A153881(A093178(n))`
-/

namespace A375821.P10833684974265247581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375823 n + A077962 n * A153881 (A093178 n).toNat

end

end A375821.P10833684974265247581

namespace A375821

/-- `A375823(n)+A077962(n)*A153881(A093178(n))` -/
def P10833684974265247581.Spec : Prop :=
  ∀ n, P10833684974265247581.a n = A375821 n

end A375821

/-! ## A375821.P9149663482146665437

`A077939(n)-A375823(n)`
-/

namespace A375821.P9149663482146665437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077939 n - A375823 n

end

end A375821.P9149663482146665437

namespace A375821

/-- `A077939(n)-A375823(n)` -/
def P9149663482146665437.Spec : Prop :=
  ∀ n, P9149663482146665437.a n = A375821 n

end A375821

/-! ## A375821.P2881401949350738304

`abs(A077986(n))-A375823(n)`
-/

namespace A375821.P2881401949350738304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A077986 n| - A375823 n

end

end A375821.P2881401949350738304

namespace A375821

/-- `abs(A077986(n))-A375823(n)` -/
def P2881401949350738304.Spec : Prop :=
  ∀ n, P2881401949350738304.a n = A375821 n

end A375821

/-! ## A375821.P5373137208172884996

`A033999(n)*A077986(n)-A375823(n)`
-/

namespace A375821.P5373137208172884996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A077986 n - A375823 n

end

end A375821.P5373137208172884996

namespace A375821

/-- `A033999(n)*A077986(n)-A375823(n)` -/
def P5373137208172884996.Spec : Prop :=
  ∀ n, P5373137208172884996.a n = A375821 n

end A375821

/-! ## A375821.P1142839839915425956

`lcm(A008836(n+1), A077986(n))-A375823(n)`
-/

namespace A375821.P1142839839915425956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A008836 (n + 1)) (A077986 n) : ℤ) - A375823 n

end

end A375821.P1142839839915425956

namespace A375821

/-- `lcm(A008836(n+1), A077986(n))-A375823(n)` -/
def P1142839839915425956.Spec : Prop :=
  ∀ n, P1142839839915425956.a n = A375821 n

end A375821

/-! ## A375821.P4337860137056335110

`A109545(n+1)+A109545(n)-A077997(n)-A375823(n)`
-/

namespace A375821.P4337860137056335110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109545 (n + 1) + (A109545 n - A077997 n) - A375823 n

end

end A375821.P4337860137056335110

namespace A375821

/-- `A109545(n+1)+A109545(n)-A077997(n)-A375823(n)` -/
def P4337860137056335110.Spec : Prop :=
  ∀ n, P4337860137056335110.a n = A375821 n

end A375821

/-!
# A375823: Number of ways to tile a 3-row trapezoid of average length n with triangular and rectangular tiles, each of size 3.

The programs for A375823, the canonical program `A375823.P15164006349482131498` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375823 has offset 0).

The definition of A375823 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A375823.P3120852685947214739

`ogf((x+x^2)/(1-2x-4x^3+x^4+x^6))`
-/

namespace A375823.P3120852685947214739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1] [1, -2, 0, -4, 1, 0, 1] n

end

end A375823.P3120852685947214739

namespace A375823

/-- `ogf((x+x^2)/(1-2x-4x^3+x^4+x^6))` -/
def P3120852685947214739.Spec : Prop :=
  ∀ n, P3120852685947214739.a n = A375823 n

end A375823

/-! ## A375823.P15164006349482131498

`2*a(n-1)+4*a(n-3)-a(n-4)-a(n-6)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=6, a(4)=16, a(5)=43`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A375823

/-- `2*a(n-1)+4*a(n-3)-a(n-4)-a(n-6)` -/
def P15164006349482131498.Spec : Prop :=
  ∀ n, P15164006349482131498.a n = A375823 n

theorem P15164006349482131498.correct : P15164006349482131498.Spec := by
  intro n
  simp only [A375823]

end A375823

/-! ## A375823.P18274451753006929469

`(A077939(n)-A077961(n))/2`
-/

namespace A375823.P18274451753006929469
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077939 n - A077961 n : ℚ) / 2

end

end A375823.P18274451753006929469

namespace A375823

/-- `(A077939(n)-A077961(n))/2` -/
def P18274451753006929469.Spec : Prop :=
  ∀ n, P18274451753006929469.a n = (A375823 n : ℚ)

end A375823

/-! ## A375823.P10325534219401016874

`A375821(n)-A077961(n)`
-/

namespace A375823.P10325534219401016874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375821 n - A077961 n

end

end A375823.P10325534219401016874

namespace A375823

/-- `A375821(n)-A077961(n)` -/
def P10325534219401016874.Spec : Prop :=
  ∀ n, P10325534219401016874.a n = A375823 n

end A375823

/-! ## A375823.P17426793964886265747

`A077939(n)-A375821(n)`
-/

namespace A375823.P17426793964886265747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077939 n - A375821 n

end

end A375823.P17426793964886265747

namespace A375823

/-- `A077939(n)-A375821(n)` -/
def P17426793964886265747.Spec : Prop :=
  ∀ n, P17426793964886265747.a n = A375823 n

end A375823

/-! ## A375823.P2147421378121357934

`abs(A077986(n))-A375821(n)`
-/

namespace A375823.P2147421378121357934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A077986 n| - A375821 n

end

end A375823.P2147421378121357934

namespace A375823

/-- `abs(A077986(n))-A375821(n)` -/
def P2147421378121357934.Spec : Prop :=
  ∀ n, P2147421378121357934.a n = A375823 n

end A375823

/-! ## A375823.P10633466458991810789

`A109545(n+1)+A109545(n)-A077997(n)-A375821(n)`
-/

namespace A375823.P10633466458991810789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109545 (n + 1) + (A109545 n - A077997 n) - A375821 n

end

end A375823.P10633466458991810789

namespace A375823

/-- `A109545(n+1)+A109545(n)-A077997(n)-A375821(n)` -/
def P10633466458991810789.Spec : Prop :=
  ∀ n, P10633466458991810789.a n = A375823 n

end A375823

/-!
# A375824: Triangular numbers whose sum of digits is 9.

The programs for A375824, there is no canonical definition to state claims against.
-/

/-! ## A375824.P18103511636942527149

`∩[A117404(n+1), A242454(n+1)]`
-/

namespace A375824.P18103511636942527149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375824.P18103511636942527149

/-! ## A375824.P11592611550046091987

`∩[A052223(n+1), A000217(n)]`
-/

namespace A375824.P11592611550046091987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375824.P11592611550046091987

/-! ## A375824.P5829850280105609151

`∩[A052223(n+1), A253145(n)]`
-/

namespace A375824.P5829850280105609151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375824.P5829850280105609151

/-! ## A375824.P16316199113716615900

`∩[A052223(n+1), A061900(n+1)]`
-/

namespace A375824.P16316199113716615900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061900 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375824.P16316199113716615900

/-! ## A375824.P16515771480345083143

`∩[A052223(n+1), A074134(n+1)]`
-/

namespace A375824.P16515771480345083143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375824.P16515771480345083143

/-!
# A375825: Triangle read by rows where row n is the Eytzinger array layout of n elements (a permutation of {1..n}).

The programs for A375825, there is no canonical definition to state claims against.
-/

/-! ## A375825.P7114284183684667600

`A270650(A038040(n+1)^A363827(n+2))`
-/

namespace A375825.P7114284183684667600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270650 (SequenceMachineLib.roundAway ((A038040 (n + 1) : ℚ) ^ (A363827 (n + 2) : ℤ))).toNat

end

end A375825.P7114284183684667600

/-! ## A375825.P11028741255080989366

`A363854(A298807(n+1))`
-/

namespace A375825.P11028741255080989366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363854 (A298807 (n + 1)).toNat

end

end A375825.P11028741255080989366

/-! ## A375825.P4268658087671197403

`A001222(xor(n, A171827(2*(n+2))))`
-/

namespace A375825.P4268658087671197403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.xor (n : ℤ) (A171827 (2 * (n + 2)))).toNat

end

end A375825.P4268658087671197403

/-! ## A375825.P9064218271916294607

`A001222(A208447(n)+A139116(n+1))`
-/

namespace A375825.P9064218271916294607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A208447 n + A139116 (n + 1)).toNat

end

end A375825.P9064218271916294607

/-! ## A375825.P16773216803094993372

`A064547(A015957(n+2)+A001787(n))`
-/

namespace A375825.P16773216803094993372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (A015957 (n + 2) + A001787 n).toNat

end

end A375825.P16773216803094993372

/-!
# A375830: E.g.f. satisfies A(x) = 1/(1 - x^2*A(x))^x.

The programs for A375830, there is no canonical definition to state claims against.
-/

/-! ## A375830.P3329214959641387983

`A066099(A053556(n))*A375831(n)`
-/

namespace A375830.P3329214959641387983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066099 (A053556 n).toNat * A375831 n

end

end A375830.P3329214959641387983

/-! ## A375830.P13397744067787725744

`A138121(A113031(n+1))*A357966(n)`
-/

namespace A375830.P13397744067787725744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138121 (A113031 (n + 1)).toNat * A357966 n

end

end A375830.P13397744067787725744

/-! ## A375830.P5242866730701497473

`A368330(A276142(n+1))*A375831(n)`
-/

namespace A375830.P5242866730701497473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368330 (A276142 (n + 1)).toNat * A375831 n

end

end A375830.P5242866730701497473

/-! ## A375830.P4359132684069928849

`A004525(A375680(n))`
-/

namespace A375830.P4359132684069928849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A375680 n).toNat

end

end A375830.P4359132684069928849

/-!
# A375831: E.g.f. satisfies A(x) = exp(x * (exp(x^2*A(x)) - 1)).

The programs for A375831, there is no canonical definition to state claims against.
-/

/-! ## A375831.P16278432302071646979

`A004525(A375664(n))`
-/

namespace A375831.P16278432302071646979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A375664 n).toNat

end

end A375831.P16278432302071646979

/-! ## A375831.P7292193711324475318

`A004526(A375664(n)+1)`
-/

namespace A375831.P7292193711324475318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A375664 n + 1).toNat

end

end A375831.P7292193711324475318

/-! ## A375831.P2481569916179134688

`A123108(A375664(n)+1)`
-/

namespace A375831.P2481569916179134688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A375664 n + 1).toNat

end

end A375831.P2481569916179134688

/-! ## A375831.P13661695267391929928

`A004524(A375664(n)+2)`
-/

namespace A375831.P13661695267391929928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A375664 n + 2).toNat

end

end A375831.P13661695267391929928

/-!
# A375832: E.g.f. satisfies A(x) = 1/(1 + x*log(1 - x^2*A(x))).

The programs for A375832, there is no canonical definition to state claims against.
-/

/-! ## A375832.P4243760533457448698

`A104607(A242783(n))*A375833(n)`
-/

namespace A375832.P4243760533457448698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104607 (A242783 n).toNat * A375833 n

end

end A375832.P4243760533457448698

/-! ## A375832.P11620381903129989361

`A368330(A006389(n))*A375833(n)`
-/

namespace A375832.P11620381903129989361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368330 (A006389 n).toNat * A375833 n

end

end A375832.P11620381903129989361

/-! ## A375832.P17005263619089123494

`A006928(A000142(n))*A375561(n)`
-/

namespace A375832.P17005263619089123494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006928 (A000142 n).toNat * A375561 n

end

end A375832.P17005263619089123494

/-! ## A375832.P4421886850559756455

`A053735(A000142(n))*A375167(n)`
-/

namespace A375832.P4421886850559756455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A000142 n).toNat * A375167 n

end

end A375832.P4421886850559756455

/-!
# A375833: E.g.f. satisfies A(x) = 1/(1 - x*(exp(x^2*A(x)) - 1)).

The programs for A375833, there is no canonical definition to state claims against.
-/

/-! ## A375833.P4768526899331458181

`A375832(n)/A104607(A242783(n))`
-/

namespace A375833.P4768526899331458181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A375832 n : ℚ) / (A104607 (A242783 n).toNat : ℚ)

end

end A375833.P4768526899331458181

/-! ## A375833.P14143536294330629849

`A375832(n)/A357181(A122584(n+1))`
-/

namespace A375833.P14143536294330629849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A375832 n : ℚ) / (A357181 (A122584 (n + 1)).toNat : ℚ)

end

end A375833.P14143536294330629849

/-! ## A375833.P7697998428061344304

`A353226(n)/A099563(A053556(n))*A228179(n+2)`
-/

namespace A375833.P7697998428061344304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353226 n : ℚ) / (A099563 (A053556 n).toNat : ℚ) * (A228179 (n + 2) : ℚ)

end

end A375833.P7697998428061344304

/-! ## A375833.P14661300805589864753

`A051176(A375665(n))`
-/

namespace A375833.P14661300805589864753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (A375665 n).toNat

end

end A375833.P14661300805589864753

/-!
# A375835: Triangle read by rows: T(n, k) is the number of chains of length k in the poset of permutations of an n-set.

The programs for A375835, there is no canonical definition to state claims against.
-/

/-! ## A375835.P349691708838675320

`A084938(n)*A165413(A156234(n))`
-/

namespace A375835.P349691708838675320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 n * A165413 (A156234 n).toNat

end

end A375835.P349691708838675320

/-! ## A375835.P2397716689384134232

`A276891(n)*A289314(A022904(n+1))`
-/

namespace A375835.P2397716689384134232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276891 n * A289314 (A022904 (n + 1)).toNat

end

end A375835.P2397716689384134232

/-! ## A375835.P3933905119852002953

`A288874(n)*A381453(A350910(2*n+1))`
-/

namespace A375835.P3933905119852002953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288874 n * A381453 (A350910 (2 * n + 1)).toNat

end

end A375835.P3933905119852002953

/-! ## A375835.P4201847196491385771

`A001519(A276890(n))*A331958(A268438(n))`
-/

namespace A375835.P4201847196491385771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (A276890 n).toNat * A331958 (A268438 n).toNat

end

end A375835.P4201847196491385771

/-! ## A375835.P13397267620264396116

`A040001(A107803(n+2))*A331958(A268438(n))`
-/

namespace A375835.P13397267620264396116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A107803 (n + 2)).toNat * A331958 (A268438 n).toNat

end

end A375835.P13397267620264396116

/-!
# A375836: Number of chains in the poset of permutations of [n].

The programs for A375836, there is no canonical definition to state claims against.
-/

/-! ## A375836.P16801670267733038313

`2*A375838(n)-1`
-/

namespace A375836.P16801670267733038313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A375838 n - 1

end

end A375836.P16801670267733038313

/-! ## A375836.P8085896219446015971

`∑{#}[n, A375835(C(n+1, 2)+#)]`
-/

namespace A375836.P8085896219446015971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A375835 (Nat.choose (n + 1) 2 + k)

end

end A375836.P8085896219446015971

/-! ## A375836.P11656729763753852728

`A375838(n)+A375838(n)-A057427(n+1)`
-/

namespace A375836.P11656729763753852728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375838 n + (A375838 n - A057427 (n + 1))

end

end A375836.P11656729763753852728

/-!
# A375837: Triangle read by rows: T(n,k) is the number of rooted chains starting with the cycle (1)(2)(3)...(n) of length k of permutation poset of n letters.

The programs for A375837, there is no canonical definition to state claims against.
-/

/-! ## A375837.P4948919067872580217

`A016777(2*(n+2))%A256094(A256068(n+1))`
-/

namespace A375837.P4948919067872580217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016777 (2 * (n + 2))) (A256094 (A256068 (n + 1)).toNat)

end

end A375837.P4948919067872580217

/-! ## A375837.P5618508684015679713

`∑{e}[A373451(n)^(n+1)+1, #]`
-/

namespace A375837.P5618508684015679713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373451 n ^ (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A375837.P5618508684015679713

/-! ## A375837.P13077608064916724957

`A116433(A256311(n))`
-/

namespace A375837.P13077608064916724957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116433 (A256311 n).toNat

end

end A375837.P13077608064916724957

/-! ## A375837.P13575399917990840042

`A106165(A340556(n))`
-/

namespace A375837.P13575399917990840042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106165 (A340556 n).toNat

end

end A375837.P13575399917990840042

/-! ## A375837.P14076776381007909353

`A153112(A361951(n))`
-/

namespace A375837.P14076776381007909353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153112 (A361951 n).toNat

end

end A375837.P14076776381007909353

/-!
# A375838: Number of rooted chains starting with the cycle (1)(2)(3)...(n) in the permutation poset of [n].

The programs for A375838, there is no canonical definition to state claims against.
-/

/-! ## A375838.P12280124776306649475

`(A375836(n)+1)/2`
-/

namespace A375838.P12280124776306649475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A375836 n + 1 : ℚ) / 2

end

end A375838.P12280124776306649475

/-! ## A375838.P10282367924356586629

`∑{#}[n, A375837(C(n+1, 2)+#)]`
-/

namespace A375838.P10282367924356586629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A375837 (Nat.choose (n + 1) 2 + k)

end

end A375838.P10282367924356586629

/-! ## A375838.P129097910544584053

`round(A375836(n)/2)`
-/

namespace A375838.P129097910544584053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A375836 n : ℚ) / 2)

end

end A375838.P129097910544584053

/-! ## A375838.P7185403783418677352

`(A375836(n)+1)*2^A008683(A020483(n))`
-/

namespace A375838.P7185403783418677352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A375836 n + 1 : ℚ) * (2 : ℚ) ^ (A008683 (A020483 n).toNat : ℤ)

end

end A375838.P7185403783418677352

/-!
# A375846: Right border of triangle A375761.

The programs for A375846, there is no canonical definition to state claims against.
-/

/-! ## A375846.P11754445434109356148

`A375761(C(n+1, 2)+n+1)`
-/

namespace A375846.P11754445434109356148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375761 (Nat.choose (n + 1) 2 + (n + 1))

end

end A375846.P11754445434109356148

/-! ## A375846.P7246932687273877410

`A375761(∑[n+1])`
-/

namespace A375846.P7246932687273877410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375761 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A375846.P7246932687273877410

/-!
# A375847: The maximum exponent in the prime factorization of the largest unitary cubefree divisor of n.

The programs for A375847, the canonical program `A375847.P17445799609961011630` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375847 has offset 1).

The definition of A375847 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A360539, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A375847.P17445799609961011630

`A051903(A360539(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A375847

/-- `A051903(A360539(n+1))` -/
def P17445799609961011630.Spec : Prop :=
  ∀ n, P17445799609961011630.a n = A375847 (n + 1)

theorem P17445799609961011630.correct : P17445799609961011630.Spec := by
  intro n
  simp only [A375847, Nat.add_sub_cancel]

end A375847

/-! ## A375847.P18034490168019889076

`A061395(A366147(n+1))`
-/

namespace A375847.P18034490168019889076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A366147 (n + 1)).toNat

end

end A375847.P18034490168019889076

namespace A375847

/-- `A061395(A366147(n+1))` -/
def P18034490168019889076.Spec : Prop :=
  ∀ n, P18034490168019889076.a n = A375847 (n + 1)

end A375847

/-! ## A375847.P17410054705148083098

`A107464(A181819(n+1))%3`
-/

namespace A375847.P17410054705148083098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107464 (A181819 (n + 1)).toNat) 3

end

end A375847.P17410054705148083098

namespace A375847

/-- `A107464(A181819(n+1))%3` -/
def P17410054705148083098.Spec : Prop :=
  ∀ n, P17410054705148083098.a n = A375847 (n + 1)

end A375847

/-! ## A375847.P3394198644843308413

`A073267(∏{p}[A366147(n+1), #])`
-/

namespace A375847.P3394198644843308413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366147 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073267 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A375847.P3394198644843308413

namespace A375847

/-- `A073267(∏{p}[A366147(n+1), #])` -/
def P3394198644843308413.Spec : Prop :=
  ∀ n, P3394198644843308413.a n = A375847 (n + 1)

end A375847

/-! ## A375847.P12216364459567010176

`A353862(∏{p}[A366147(n+1), #])`
-/

namespace A375847.P12216364459567010176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366147 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353862 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A375847.P12216364459567010176

namespace A375847

/-- `A353862(∏{p}[A366147(n+1), #])` -/
def P12216364459567010176.Spec : Prop :=
  ∀ n, P12216364459567010176.a n = A375847 (n + 1)

end A375847

/-! ## A375847.P12217428382380963741

`A051903(A197863(n+1)/A368886(n+1))`
-/

namespace A375847.P12217428382380963741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.roundAway ((A197863 (n + 1) : ℚ) / (A368886 (n + 1) : ℚ))).toNat

end

end A375847.P12217428382380963741

namespace A375847

/-- `A051903(A197863(n+1)/A368886(n+1))` -/
def P12217428382380963741.Spec : Prop :=
  ∀ n, P12217428382380963741.a n = A375847 (n + 1)

end A375847

/-! ## A375847.P3687182530191265672

`A392278(A367932(A367932(A365684(n+1))))`
-/

namespace A375847.P3687182530191265672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392278 (A367932 (A367932 (A365684 (n + 1)).toNat).toNat).toNat

end

end A375847.P3687182530191265672

namespace A375847

/-- `A392278(A367932(A367932(A365684(n+1))))` -/
def P3687182530191265672.Spec : Prop :=
  ∀ n, P3687182530191265672.a n = A375847 (n + 1)

end A375847

/-! ## A375847.P16523156648122521932

`A363487(A366147(n+1)²)`
-/

namespace A375847.P16523156648122521932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363487 (A366147 (n + 1) ^ 2).toNat

end

end A375847.P16523156648122521932

namespace A375847

/-- `A363487(A366147(n+1)²)` -/
def P16523156648122521932.Spec : Prop :=
  ∀ n, P16523156648122521932.a n = A375847 (n + 1)

end A375847

/-!
# A375848: The maximum exponent in the prime factorization of the numbers whose maximum exponent in their prime factorization is an evil number (A374590).

The programs for A375848, the canonical program `A375848.P3349839009645680969` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375848 has offset 1).

The definition of A375848 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A375848.P3349839009645680969

`filter[A051903(n+1), A010059(#)]`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A375848

/-- `filter[A051903(n+1), A010059(#)]` -/
def P3349839009645680969.Spec : Prop :=
  ∀ n, P3349839009645680969.a n = A375848 (n + 1)

theorem P3349839009645680969.correct : P3349839009645680969.Spec := by
  intro n
  simp only [A375848, Nat.add_sub_cancel]

end A375848

/-!
# A375852: Numbers congruent to {0, 1, 3, 6, 7, 9, 12, 15} mod 18.

The programs for A375852, the canonical program `A375852.P3129946169439191661` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375852 has offset 1).

The definition of A375852 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A375852.P3129946169439191661

`ogf((x+x^2+2x^3-x^4+3x^5+3x^7)/(1-2x+2x^2-2x^3+2x^4-2x^5+2x^6-2x^7+x^8))`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A375852

/-- `ogf((x+x^2+2x^3-x^4+3x^5+3x^7)/(1-2x+2x^2-2x^3+2x^4-2x^5+2x^6-2x^7+x^8))` -/
def P3129946169439191661.Spec : Prop :=
  ∀ n, P3129946169439191661.a n = A375852 (n + 1)

theorem P3129946169439191661.correct : P3129946169439191661.Spec := by
  intro n
  simp only [A375852, Nat.add_sub_cancel]

end A375852

/-! ## A375852.P8022826770874438667

`A047242(A248375(n+1))`
-/

namespace A375852.P8022826770874438667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047242 (A248375 (n + 1)).toNat

end

end A375852.P8022826770874438667

namespace A375852

/-- `A047242(A248375(n+1))` -/
def P8022826770874438667.Spec : Prop :=
  ∀ n, P8022826770874438667.a n = A375852 (n + 1)

end A375852

/-! ## A375852.P15824152145814686867

`∩[A047242(n+1), A060464(n+1)]`
-/

namespace A375852.P15824152145814686867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060464 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375852.P15824152145814686867

namespace A375852

/-- `∩[A047242(n+1), A060464(n+1)]` -/
def P15824152145814686867.Spec : Prop :=
  ∀ n, (P15824152145814686867.a n : ℤ) = A375852 (n + 1)

end A375852

/-! ## A375852.P3590521772451301263

`eq[A164965(n), A254046(n+1)]`
-/

namespace A375852.P3590521772451301263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164965 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254046 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A375852.P3590521772451301263

namespace A375852

/-- `eq[A164965(n), A254046(n+1)]` -/
def P3590521772451301263.Spec : Prop :=
  ∀ n, (P3590521772451301263.a n : ℤ) = A375852 (n + 1)

end A375852

/-! ## A375852.P16949667624487034260

`eq[A007949(n+5), A128834(n)]`
-/

namespace A375852.P16949667624487034260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A375852.P16949667624487034260

namespace A375852

/-- `eq[A007949(n+5), A128834(n)]` -/
def P16949667624487034260.Spec : Prop :=
  ∀ n, (P16949667624487034260.a n : ℤ) = A375852 (n + 1)

end A375852

/-! ## A375852.P13452692353557411903

`∪[A061641(n+1), A309180(n+1)]`
-/

namespace A375852.P13452692353557411903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A375852.P13452692353557411903

namespace A375852

/-- `∪[A061641(n+1), A309180(n+1)]` -/
def P13452692353557411903.Spec : Prop :=
  ∀ n, (P13452692353557411903.a n : ℤ) = A375852 (n + 1)

end A375852

/-! ## A375852.P6201528621588747557

`lt[A344619(A104706(n+1)), A010888(2*(n+2))]`
-/

namespace A375852.P6201528621588747557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344619 (A104706 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A375852.P6201528621588747557

namespace A375852

/-- `lt[A344619(A104706(n+1)), A010888(2*(n+2))]` -/
def P6201528621588747557.Spec : Prop :=
  ∀ n, (P6201528621588747557.a n : ℤ) = A375852 (n + 1)

end A375852

/-!
# A375856: a(n) = A360706(1) XOR ... XOR A360706(n) (where XOR denotes the bitwise XOR operator).

The programs for A375856, there is no canonical definition to state claims against.
-/

/-! ## A375856.P978648458297199916

`xor(a(n-1), A360706(n+1))` with `a(0)=1`
-/

namespace A375856.P978648458297199916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (a (n - 1)) (A360706 (n + 1))

end

end A375856.P978648458297199916

/-!
# A375858: Array T(n,m) read by antidiagonals: In an n X m grid draw straight walls between cells, starting at a border, such that the resulting figure is connected and has only one-cell wide paths; T(n,m) is the number of solutions.

The programs for A375858, there is no canonical definition to state claims against.
-/

/-! ## A375858.P3892863575553269766

`A005187(A157152(n))%A356956(2*n+5)`
-/

namespace A375858.P3892863575553269766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005187 (A157152 n).toNat) (A356956 (2 * n + 5))

end

end A375858.P3892863575553269766

/-! ## A375858.P17893860930202770680

`A089279(A152654(n))`
-/

namespace A375858.P17893860930202770680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089279 (A152654 n).toNat

end

end A375858.P17893860930202770680

/-! ## A375858.P12725614165835079824

`A213508(A157152(n))`
-/

namespace A375858.P12725614165835079824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213508 (A157152 n).toNat

end

end A375858.P12725614165835079824

/-! ## A375858.P8000966340734037014

`A168287(n)-A294929(A026632(n))`
-/

namespace A375858.P8000966340734037014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168287 n - A294929 (A026632 n).toNat

end

end A375858.P8000966340734037014

/-! ## A375858.P17352814670162249060

`A168287(n)-A051765(A008288(n))²`
-/

namespace A375858.P17352814670162249060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168287 n - A051765 (A008288 n).toNat ^ 2

end

end A375858.P17352814670162249060

/-!
# A375859: In an n X n grid draw straight walls between cells, starting at a border, such that the resulting figure is connected and has only one-cell wide paths; a(n) is the number of solutions up to rotations.

The programs for A375859, there is no canonical definition to state claims against.
-/

/-! ## A375859.P9424114640524806502

`A173557(A007756(2*(n+2)))-A375136(n+1)`
-/

namespace A375859.P9424114640524806502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (A007756 (2 * (n + 2))).toNat - A375136 (n + 1)

end

end A375859.P9424114640524806502

/-!
# A375860: In an n X n grid draw straight walls between cells, starting at a border, such that the resulting figure is connected and has only one-cell wide paths; a(n) is the number of solutions up to symmetries of the rectangle.

The programs for A375860, there is no canonical definition to state claims against.
-/

/-! ## A375860.P15572018964582275895

`A375861((n+1)²+n²)`
-/

namespace A375860.P15572018964582275895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375861 ((n + 1) ^ 2 + n ^ 2)

end

end A375860.P15572018964582275895

/-! ## A375860.P5222080941110764005

`lcm(A000034(n), A375861(A001844(n)))`
-/

namespace A375860.P5222080941110764005
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A375861 (A001844 n).toNat)

end

end A375860.P5222080941110764005

/-! ## A375860.P17291341818438506457

`or(A000007(n), A375861(A001844(n)))`
-/

namespace A375860.P17291341818438506457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A375861 (A001844 n).toNat)

end

end A375860.P17291341818438506457

/-! ## A375860.P5412949975338521294

`A375861(A001844(n))+A000007(2*n+1)`
-/

namespace A375860.P5412949975338521294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375861 (A001844 n).toNat + A000007 (2 * n + 1)

end

end A375860.P5412949975338521294

/-!
# A375861: Array T(n,m) read by antidiagonals: In an n X m grid draw straight walls between cells, starting at a border, such that the resulting figure is connected and has only one-cell wide paths; T(n,m) is the number of solutions up to symmetries of the rectangle.

The programs for A375861, there is no canonical definition to state claims against.
-/

/-! ## A375861.P13427848840321529842

`A023604(A173584(n))`
-/

namespace A375861.P13427848840321529842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023604 (A173584 n).toNat

end

end A375861.P13427848840321529842

/-! ## A375861.P10157468998850911018

`A140859(A082039(n))`
-/

namespace A375861.P10157468998850911018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140859 (A082039 n).toNat

end

end A375861.P10157468998850911018

/-! ## A375861.P4364274315849607048

`A084824(A146986(n))`
-/

namespace A375861.P4364274315849607048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084824 (A146986 n).toNat

end

end A375861.P4364274315849607048

/-! ## A375861.P10598574057687562604

`A083023(A157274(n))`
-/

namespace A375861.P10598574057687562604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083023 (A157274 n).toNat

end

end A375861.P10598574057687562604

/-! ## A375861.P11257812164664022258

`A204164(A174528(n))`
-/

namespace A375861.P11257812164664022258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204164 (A174528 n).toNat

end

end A375861.P11257812164664022258

/-!
# A375863: a(1) = 0 and a(n) = A050603(n-1)^2 for n > 0. Lexicographically earliest nonnegative sequence of integers such that the Gilbreath transform of a(1..n) gives floor(log_2(n)).

The programs for A375863, there is no canonical definition to state claims against.
-/

/-! ## A375863.P5992238760551649874

`∑{e}[and(1+n, -n), #²]`
-/

namespace A375863.P5992238760551649874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (1 + n : ℤ) (-(n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p ^ 2

end

end A375863.P5992238760551649874

/-! ## A375863.P2708470575819274026

`val((n%2)^n+n, 2)²`
-/

namespace A375863.P2708470575819274026
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((n % 2) ^ n + n) 2 ^ 2

end

end A375863.P2708470575819274026

/-! ## A375863.P9408439927435478604

`∑{e}[and(n+1, n-2*n), #]²`
-/

namespace A375863.P9408439927435478604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) ((n : ℤ) - (2 * n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p) ^ 2

end

end A375863.P9408439927435478604

/-! ## A375863.P15004060356985278867

`Δ[(1-val(n, 2))^a(n-1)]²` with `a(0)=1`
-/

namespace A375863.P15004060356985278867
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [1] fun n f1 =>
  (1 - (SequenceMachineLib.valuation n 2 : ℤ) : ℝ) ^ (f1 (n - 1))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A375863.P15004060356985278867

/-! ## A375863.P9281928096015429805

`Δ[val(n+14*a(n-1), 2)]²` with `a(0)=0`
-/

namespace A375863.P9281928096015429805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  SequenceMachineLib.valuation (n + 14 * f1 (n - 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2

end

end A375863.P9281928096015429805

/-! ## A375863.P6704152364894775180

`(∏{e}[and(n+1, -n), #]%(n+1))²`
-/

namespace A375863.P6704152364894775180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (-(n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p) % (n + 1)) ^ 2

end

end A375863.P6704152364894775180

/-! ## A375863.P13185306281710315618

`(val(∑[2*n], 2)^a(n-2))²` with `a(0)=0, a(1)=1`
-/

namespace A375863.P13185306281710315618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  (SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) 2 ^ a (n - 2)) ^ 2

end

end A375863.P13185306281710315618

/-! ## A375863.P8181783901457224079

`∑{e}[n+1-and(n+1, n-1), #²]`
-/

namespace A375863.P8181783901457224079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - Int.land (n + 1 : ℤ) ((n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p ^ 2

end

end A375863.P8181783901457224079

/-! ## A375863.P576262724381577215

`∑{e}[or(n+1, n-1)-(n-1), #²]`
-/

namespace A375863.P576262724381577215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) ((n : ℤ) - 1) - ((n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p ^ 2

end

end A375863.P576262724381577215

/-! ## A375863.P14396104933440876563

`val(A163755(n), 2)²`
-/

namespace A375863.P14396104933440876563
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A163755 n).toNat 2 ^ 2

end

end A375863.P14396104933440876563

/-!
# A375865: Number of shapes of a Rubik's Snake with n wedges.

The programs for A375865, there is no canonical definition to state claims against.
-/

/-! ## A375865.P15936434316727534078

`A110657(A267975(n+1))`
-/

namespace A375865.P15936434316727534078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (A267975 (n + 1)).toNat

end

end A375865.P15936434316727534078

/-! ## A375865.P7991891992108999577

`A172025(n)+A107652(A048854(n))`
-/

namespace A375865.P7991891992108999577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172025 n + A107652 (A048854 n).toNat

end

end A375865.P7991891992108999577

/-!
# A375867: E.g.f. satisfies A(x) = exp( 2 * (exp(x*A(x)^(1/2)) - 1) ).

The programs for A375867, there is no canonical definition to state claims against.
-/

/-! ## A375867.P1725254141858262976

`A305847(A355100(n))`
-/

namespace A375867.P1725254141858262976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305847 (A355100 n).toNat

end

end A375867.P1725254141858262976

/-!
# A375868: E.g.f. satisfies A(x) = exp( 2 * (exp(x*A(x)) - 1) ).

The programs for A375868, there is no canonical definition to state claims against.
-/

/-! ## A375868.P16673002718813022156

`A007674(A330052(n)+A158690(n))`
-/

namespace A375868.P16673002718813022156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007674 (A330052 n + A158690 n).toNat

end

end A375868.P16673002718813022156

/-!
# A375869: E.g.f. satisfies A(x) = exp( 3 * (exp(x*A(x)^(2/3)) - 1) ).

The programs for A375869, there is no canonical definition to state claims against.
-/

/-! ## A375869.P9607598367128731547

`∑[A023757(A262977(n))]+1`
-/

namespace A375869.P9607598367128731547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023757 (A262977 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A375869.P9607598367128731547

/-!
# A375873: A family of triangles T(m), m >= 0, read by triangles and then by rows; let P(m) be the triangle made up of the first m+1 rows of Pascal's triangle (A007318), R(m) (respectively L(m)) be P(m) rotated to the right (respectively to the left), T(m)(n, k) = gcd(P(m)(n, k), R(m)(n, k), L(m)(n, k)).

The programs for A375873, there is no canonical definition to state claims against.
-/

/-! ## A375873.P12471826241651959768

`A000003(gcd(A007623(n+3), A320461(n+1)))`
-/

namespace A375873.P12471826241651959768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000003 (Int.gcd (A007623 (n + 3)) (A320461 (n + 1)))

end

end A375873.P12471826241651959768

/-! ## A375873.P9449054569777550524

`gcd(A001358(3*(n+1)), A185315(A232440(n+5)))`
-/

namespace A375873.P9449054569777550524
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001358 (3 * (n + 1))) (A185315 (A232440 (n + 5)).toNat)

end

end A375873.P9449054569777550524

/-! ## A375873.P11278593195592744365

`gcd(A121265(A210961(n+4)), A211985(3*n+5))`
-/

namespace A375873.P11278593195592744365
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A121265 ((A210961 (n + 4)).toNat + 10)) (A211985 (3 * n + 5))

end

end A375873.P11278593195592744365

/-! ## A375873.P6916141896644454577

`runs[Δ[A038839(n+3)]]`
-/

namespace A375873.P6916141896644454577
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038839 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A375873.P6916141896644454577

/-! ## A375873.P14802125575599968510

`runs[A218543(n+3)%8]`
-/

namespace A375873.P14802125575599968510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A218543 (n + 3)) 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A375873.P14802125575599968510

/-!
# A375875: Smallest n-bit Carmichael number, or 0 if no such number exists.

The programs for A375875, there is no canonical definition to state claims against.
-/

/-! ## A375875.P7563360904578941326

`A002997(eq[A000700(n+2), A365394(n)])`
-/

namespace A375875.P7563360904578941326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365394 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002997 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A375875.P7563360904578941326

/-! ## A375875.P17603818850723579695

`A002997(eq[A217152(n+1), A320655(n+1)])`
-/

namespace A375875.P17603818850723579695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320655 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002997 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A375875.P17603818850723579695

/-! ## A375875.P942121441580241171

`A002997(A102528(n+1)%A090856(3*(n+1)))`
-/

namespace A375875.P942121441580241171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002997 (Int.tmod (A102528 (n + 1)) (A090856 (3 * (n + 1)))).toNat

end

end A375875.P942121441580241171

/-!
# A375876: E.g.f. satisfies A(x) = exp( 2 * (exp(x) - 1) * A(x)^(1/2) ).

The programs for A375876, there is no canonical definition to state claims against.
-/

/-! ## A375876.P6912649639511890651

`A159481(∑[A000108(2*n)]+1)`
-/

namespace A375876.P6912649639511890651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159481 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A375876.P6912649639511890651

/-!
# A375877: E.g.f. satisfies A(x) = exp( 3 * (exp(x) - 1) * A(x)^(1/3) ).

The programs for A375877, there is no canonical definition to state claims against.
-/

/-! ## A375877.P16869234383958559023

`A308017(A218300(n))+A001911(n)`
-/

namespace A375877.P16869234383958559023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308017 (A218300 n).toNat + A001911 n

end

end A375877.P16869234383958559023

/-!
# A375878: E.g.f. satisfies A(x) = 1/(1 - x)^(2*A(x)^(1/2)).

The programs for A375878, there is no canonical definition to state claims against.
-/

/-! ## A375878.P59451299263347695

`A026741(A102087(n+1))`
-/

namespace A375878.P59451299263347695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A102087 (n + 1)).toNat

end

end A375878.P59451299263347695

/-!
# A375879: E.g.f. satisfies A(x) = 1/(1 - x)^(3*A(x)^(1/3)).

The programs for A375879, there is no canonical definition to state claims against.
-/

/-! ## A375879.P2377290659353923439

`A032742(A052577(n)+A052568(n))`
-/

namespace A375879.P2377290659353923439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A052577 n + A052568 n).toNat

end

end A375879.P2377290659353923439

/-!
# A375880: a(n) = 2^(2n+1)*cos(nA), where A is the angle opposite side BC in a triangle ABC having sidelengths |BC|=2, |CA| = 3, |AB| = 4; ABC is the smallest integer-sided scalene triangle.

The programs for A375880, the canonical program `A375880.P10596184855431071707` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375880 has offset 0).

The definition of A375880 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A375880.P5167865186675531704

`ogf((2-7x)/(1-7x+16x^2))`
-/

namespace A375880.P5167865186675531704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -7] [1, -7, 16] n

end

end A375880.P5167865186675531704

namespace A375880

/-- `ogf((2-7x)/(1-7x+16x^2))` -/
def P5167865186675531704.Spec : Prop :=
  ∀ n, P5167865186675531704.a n = A375880 n

end A375880

/-! ## A375880.P10596184855431071707

`7*a(n-1)-16*a(n-2)` with `a(0)=2, a(1)=7`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A375880

/-- `7*a(n-1)-16*a(n-2)` -/
def P10596184855431071707.Spec : Prop :=
  ∀ n, P10596184855431071707.a n = A375880 n

theorem P10596184855431071707.correct : P10596184855431071707.Spec := by
  intro n
  simp only [A375880]

end A375880

/-!
# A375881: a(n) = 2^(3n+1)*cos(nB), where B is the angle opposite side CA in a triangle ABC having sidelengths |BC|=2, |CA| = 3, |AB| = 4; ABC is the smallest integer-sided scalene triangle.

The programs for A375881, the canonical program `A375881.P17677284420304351363` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375881 has offset 0).

The definition of A375881 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A375881.P15815644371705283874

`ogf((2-11x)/(1-11x+64x^2))`
-/

namespace A375881.P15815644371705283874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -11] [1, -11, 64] n

end

end A375881.P15815644371705283874

namespace A375881

/-- `ogf((2-11x)/(1-11x+64x^2))` -/
def P15815644371705283874.Spec : Prop :=
  ∀ n, P15815644371705283874.a n = A375881 n

end A375881

/-! ## A375881.P17677284420304351363

`11*a(n-1)-64*a(n-2)` with `a(0)=2, a(1)=11`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A375881

/-- `11*a(n-1)-64*a(n-2)` -/
def P17677284420304351363.Spec : Prop :=
  ∀ n, P17677284420304351363.a n = A375881 n

theorem P17677284420304351363.correct : P17677284420304351363.Spec := by
  intro n
  simp only [A375881]

end A375881

/-!
# A375882: a(n) = 4^n*cos(nC), where C is the angle opposite side AB in a triangle ABC having sidelengths |BC|=2, |CA| = 3, |AB| = 4; ABC is the smallest integer-sided scalene triangle.

The programs for A375882, the canonical program `A375882.P13675397370002014146` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375882 has offset 0).

The definition of A375882 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A375882.P13675397370002014146

`ogf((1+x)/(1+2x+16x^2))`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A375882

/-- `ogf((1+x)/(1+2x+16x^2))` -/
def P13675397370002014146.Spec : Prop :=
  ∀ n, P13675397370002014146.a n = A375882 n

theorem P13675397370002014146.correct : P13675397370002014146.Spec := by
  intro n
  simp only [A375882]

end A375882

/-! ## A375882.P4989773900037239940

`(1-2*n%2)*Δ[A375885(n)]`
-/

namespace A375882.P4989773900037239940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375885 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((2 * (n % 2) : ℕ) : ℤ)) * (f1 (n + 1) - f1 n)

end

end A375882.P4989773900037239940

namespace A375882

/-- `(1-2*n%2)*Δ[A375885(n)]` -/
def P4989773900037239940.Spec : Prop :=
  ∀ n, P4989773900037239940.a n = A375882 n

end A375882

/-! ## A375882.P16599690674465527851

`Δ[A375885(n)]*A008836(A134818(n+1))`
-/

namespace A375882.P16599690674465527851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375885 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A008836 (A134818 (n + 1)).toNat

end

end A375882.P16599690674465527851

namespace A375882

/-- `Δ[A375885(n)]*A008836(A134818(n+1))` -/
def P16599690674465527851.Spec : Prop :=
  ∀ n, P16599690674465527851.a n = A375882 n

end A375882

/-!
# A375883: a(n) = 2^(2n-1)*sin(nA)/sqrt(15), where A is the angle opposite side BC in a triangle ABC having sidelengths |BC|=2, |CA| = 3, |AB| = 4; ABC is the smallest integer-sided scalene triangle.

The programs for A375883, the canonical program `A375883.P13976698155992022764` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375883 has offset 0).

The definition of A375883 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A375883.P16518488141286483802

`ogf(x/(1-7x+16x^2))`
-/

namespace A375883.P16518488141286483802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -7, 16] n

end

end A375883.P16518488141286483802

namespace A375883

/-- `ogf(x/(1-7x+16x^2))` -/
def P16518488141286483802.Spec : Prop :=
  ∀ n, P16518488141286483802.a n = A375883 n

end A375883

/-! ## A375883.P13976698155992022764

`7*a(n-1)-16*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A375883

/-- `7*a(n-1)-16*a(n-2)` -/
def P13976698155992022764.Spec : Prop :=
  ∀ n, P13976698155992022764.a n = A375883 n

theorem P13976698155992022764.correct : P13976698155992022764.Spec := by
  intro n
  simp only [A375883]

end A375883

/-! ## A375883.P17676701250159714562

`∑{#}[n, C(n, #)*A190971(#)]`
-/

namespace A375883.P17676701250159714562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A190971 k

end

end A375883.P17676701250159714562

namespace A375883

/-- `∑{#}[n, C(n, #)*A190971(#)]` -/
def P17676701250159714562.Spec : Prop :=
  ∀ n, P17676701250159714562.a n = A375883 n

end A375883

/-! ## A375883.P11340147538772455318

`A375894(n)/A154589(n)`
-/

namespace A375883.P11340147538772455318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A375894 n : ℚ) / (A154589 n : ℚ)

end

end A375883.P11340147538772455318

namespace A375883

/-- `A375894(n)/A154589(n)` -/
def P11340147538772455318.Spec : Prop :=
  ∀ n, P11340147538772455318.a n = (A375883 n : ℚ)

end A375883

/-!
# A375884: a(n) = 2^(2n-1) sin(nB)/(3 sqrt(15)), where B is the angle opposite side CA in a triangle ABC having sidelengths |BC|=2, |CA| = 3, |AB| = 4; ABC is the smallest integer-sided scalene triangle.

The programs for A375884, the canonical program `A375884.P3401720235800029210` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375884 has offset 0).

The definition of A375884 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A375884.P3401720235800029210

`ogf(x/(1-11x+64x^2))`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A375884

/-- `ogf(x/(1-11x+64x^2))` -/
def P3401720235800029210.Spec : Prop :=
  ∀ n, P3401720235800029210.a n = A375884 n

theorem P3401720235800029210.correct : P3401720235800029210.Spec := by
  intro n
  simp only [A375884]

end A375884

/-! ## A375884.P7987069699805112764

`11*a(n-1)-64*a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A375884.P7987069699805112764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  11 * a (n - 1) - 64 * a (n - 2)

end

end A375884.P7987069699805112764

namespace A375884

/-- `11*a(n-1)-64*a(n-2)` -/
def P7987069699805112764.Spec : Prop :=
  ∀ n, P7987069699805112764.a n = A375884 n

end A375884

/-!
# A375885: a(n) = 4^n sin(nC)/sqrt(15), where B is the angle opposite side CA in a triangle ABC having sidelengths |BC|=2, |CA| = 3, |AB| = 4; ABC is the smallest integer-sided scalene triangle.

The programs for A375885, the canonical program `A375885.P9549654728609055202` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375885 has offset 0).

The definition of A375885 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A375885.P17304268334071948412

`ogf(x/(1-2x+16x^2))`
-/

namespace A375885.P17304268334071948412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -2, 16] n

end

end A375885.P17304268334071948412

namespace A375885

/-- `ogf(x/(1-2x+16x^2))` -/
def P17304268334071948412.Spec : Prop :=
  ∀ n, P17304268334071948412.a n = A375885 n

end A375885

/-! ## A375885.P9549654728609055202

`2*a(n-1)-16*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A375885

/-- `2*a(n-1)-16*a(n-2)` -/
def P9549654728609055202.Spec : Prop :=
  ∀ n, P9549654728609055202.a n = A375885 n

theorem P9549654728609055202.correct : P9549654728609055202.Spec := by
  intro n
  simp only [A375885]

end A375885

/-! ## A375885.P483285870948014413

`2*(a(n-1)-8*a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A375885.P483285870948014413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * (a (n - 1) - 8 * a (n - 2))

end

end A375885.P483285870948014413

namespace A375885

/-- `2*(a(n-1)-8*a(n-2))` -/
def P483285870948014413.Spec : Prop :=
  ∀ n, P483285870948014413.a n = A375885 n

theorem P483285870948014413.correct : P483285870948014413.Spec := by
  intro n
  simp only [A375885, Nat.add_sub_cancel, A375885.P483285870948014413.a, A375885.P9549654728609055202.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A375885

/-!
# A375886: Numbers k such that 2k and 4k have the same number of Goldbach partitions into primes.

The programs for A375886, there is no canonical definition to state claims against.
-/

/-! ## A375886.P17797862888681241280

`eq[A045917(2*(n+1)), A045917(n+1)]+1`
-/

namespace A375886.P17797862888681241280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A375886.P17797862888681241280

/-! ## A375886.P12527990255859880933

`A114218(n+1)+A114218(A174522(n))`
-/

namespace A375886.P12527990255859880933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114218 (n + 1) + A114218 (A174522 n).toNat

end

end A375886.P12527990255859880933

/-! ## A375886.P6483144146809855091

`A114218(n+1)+A114218(A327716(n))`
-/

namespace A375886.P6483144146809855091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114218 (n + 1) + A114218 (A327716 n).toNat

end

end A375886.P6483144146809855091

/-! ## A375886.P9111230262536369921

`A026424(eq[A026803(n+5), A327126(n)])`
-/

namespace A375886.P9111230262536369921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026803 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327126 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026424 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A375886.P9111230262536369921

/-!
# A375888: Rectangular array: row n shows all k such that n is the number of rises in the trajectory of k in the Collatz problem.

The programs for A375888, there is no canonical definition to state claims against.
-/

/-! ## A375888.P1891263356459754102

`A354236(∑[char[∑[n]]]²-n)`
-/

namespace A375888.P1891263356459754102
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354236 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A375888.P1891263356459754102

/-! ## A375888.P17669454769863806263

`A354236(A038722(n+1))%A111643(n)`
-/

namespace A375888.P17669454769863806263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A354236 (A038722 (n + 1)).toNat) (A111643 n)

end

end A375888.P17669454769863806263

/-! ## A375888.P16984791599456443091

`A358755(2*n+3)+A354236(A038722(n+1))`
-/

namespace A375888.P16984791599456443091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358755 (2 * n + 3) + A354236 (A038722 (n + 1)).toNat

end

end A375888.P16984791599456443091

/-!
# A375894: a(n) = 8^n*sin (nB - nC)/sqrt(15), where A, B, C are, respectively, the angles opposite sides BC, CA, AB in a triangle ABC having sidelengths |BC| = 2, |CA| = 3, |AB| = 4; ABC is the smallest integer-sided scalene triangle.

The programs for A375894, the canonical program `A375894.P14617638518164564006` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375894 has offset 0).

The definition of A375894 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A375894.P14617638518164564006

`14*a(n-1)-64*a(n-2)` with `a(0)=0, a(1)=-1`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A375894

/-- `14*a(n-1)-64*a(n-2)` -/
def P14617638518164564006.Spec : Prop :=
  ∀ n, P14617638518164564006.a n = A375894 n

theorem P14617638518164564006.correct : P14617638518164564006.Spec := by
  intro n
  simp only [A375894]

end A375894

/-! ## A375894.P8470490381765961113

`A154589(n)*A375883(n)`
-/

namespace A375894.P8470490381765961113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154589 n * A375883 n

end

end A375894.P8470490381765961113

namespace A375894

/-- `A154589(n)*A375883(n)` -/
def P8470490381765961113.Spec : Prop :=
  ∀ n, P8470490381765961113.a n = A375894 n

end A375894

/-! ## A375894.P2639440515187437596

`A157823(n)*A375883(n)`
-/

namespace A375894.P2639440515187437596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157823 n * A375883 n

end

end A375894.P2639440515187437596

namespace A375894

/-- `A157823(n)*A375883(n)` -/
def P2639440515187437596.Spec : Prop :=
  ∀ n, P2639440515187437596.a n = A375894 n

end A375894

/-!
# A375895: a(n) = (32)^n*sin (nC - nA)/(6 sqrt(15)), where A, B, C are, respectively, the angles opposite sides BC, CA, AB in a triangle ABC having sidelengths |BC| = 2, |CA| = 3, |AB| = 4; ABC is the smallest integer-sided scalene triangle.

The programs for A375895, there is no canonical definition to state claims against.
-/

/-! ## A375895.P11008604529986300274

`A057521(A379491(n+1))*A375884(n)`
-/

namespace A375895.P11008604529986300274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (A379491 (n + 1)).toNat * A375884 n

end

end A375895.P11008604529986300274

/-!
# A375897: E.g.f. satisfies A(x) = 1 / (2 - exp(x * A(x)^(1/2)))^2.

The programs for A375897, there is no canonical definition to state claims against.
-/

/-! ## A375897.P2715766718971715433

`A376179(∑[∑[A376146(n)]])`
-/

namespace A375897.P2715766718971715433
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376146 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376179 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A375897.P2715766718971715433

/-!
# A375898: E.g.f. satisfies A(x) = 1 / (2 - exp(x * A(x)^(1/3)))^3.

The programs for A375898, there is no canonical definition to state claims against.
-/

/-! ## A375898.P5973785171577703639

`A255385(A364338(n))+A000045(n)`
-/

namespace A375898.P5973785171577703639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255385 (A364338 n).toNat + A000045 n

end

end A375898.P5973785171577703639

/-!
# A375899: E.g.f. satisfies A(x) = 1 / (1 + log(1 - x * A(x)^(1/2)))^2.

The programs for A375899, there is no canonical definition to state claims against.
-/

/-! ## A375899.P8627665486340331853

`A011373(A168593(n)+2)`
-/

namespace A375899.P8627665486340331853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011373 (A168593 n + 2).toNat

end

end A375899.P8627665486340331853

