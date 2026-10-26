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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
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
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C012
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
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
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
# A227000: Numbers k such that (k+1)^2-k^2 and (k+1)^3-k^3 are both prime.

The programs for A227000, there is no canonical definition to state claims against.
-/

/-! ## A227000.P1940178059991377468

`floor(A120460(n+1)/2)`
-/

namespace A227000.P1940178059991377468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A120460 (n + 1) : ℚ) / 2⌋

end

end A227000.P1940178059991377468

/-! ## A227000.P8630814397202168692

`floor(p?[2*A111251(n+1)+1]/2)`
-/

namespace A227000.P8630814397202168692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A111251 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 2⌋

end

end A227000.P8630814397202168692

/-! ## A227000.P7358676961141463311

`floor(p?[2*A002504(n+1)-1]/2)`
-/

namespace A227000.P7358676961141463311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002504 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 2⌋

end

end A227000.P7358676961141463311

/-! ## A227000.P9624991736546790227

`A002616(A120460(n+1))`
-/

namespace A227000.P9624991736546790227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002616 (A120460 (n + 1)).toNat

end

end A227000.P9624991736546790227

/-! ## A227000.P18237544916876360975

`A004526(A120460(n+1)-1)`
-/

namespace A227000.P18237544916876360975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A120460 (n + 1) - 1).toNat

end

end A227000.P18237544916876360975

/-! ## A227000.P9824526103377211936

`filter[A111251(n+1), A101264(#)]`
-/

namespace A227000.P9824526103377211936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101264 (f1 j).toNat = 1) n)

end

end A227000.P9824526103377211936

/-! ## A227000.P10668569558425709526

`A000010(2*A120460(n+1))/2`
-/

namespace A227000.P10668569558425709526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (2 * A120460 (n + 1)).toNat : ℚ) / 2

end

end A227000.P10668569558425709526

/-! ## A227000.P17121873569651243722

`A000010(lcm(2, A120460(n+1)))/2`
-/

namespace A227000.P17121873569651243722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (Int.lcm 2 (A120460 (n + 1))) : ℚ) / 2

end

end A227000.P17121873569651243722

/-! ## A227000.P17520035208449894415

`eq[A005451(2*n+1), A350090(n)]`
-/

namespace A227000.P17520035208449894415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005451 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350090 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227000.P17520035208449894415

/-! ## A227000.P6259088960207045825

`eq[A023890(2*n+1), A350090(n)]`
-/

namespace A227000.P6259088960207045825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023890 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350090 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227000.P6259088960207045825

/-!
# A227001: Let x0 x1 x2...xq denote the decimal expansion of n. Sequence lists numbers n such that x0/x1 + x1/x2 + ... + xq/x0 is an integer.

The programs for A227001, there is no canonical definition to state claims against.
-/

/-! ## A227001.P16430820146371617110

`∩[A177872(n+1), A353729(n+1)]`
-/

namespace A227001.P16430820146371617110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227001.P16430820146371617110

/-!
# A227003: Number of primitive Heronian triangles with area 6n.

The programs for A227003, there is no canonical definition to state claims against.
-/

/-! ## A227003.P12043898742995964485

`∑{d}[n+1, A051585(#)*A271102((n+1)/#)]`
-/

namespace A227003.P12043898742995964485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A051585 d * A271102 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A227003.P12043898742995964485

/-! ## A227003.P16944394024621245625

`and(A112380(n), A112384(A303016(n+1)))`
-/

namespace A227003.P16944394024621245625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A112380 n) (A112384 (A303016 (n + 1)).toNat)

end

end A227003.P16944394024621245625

/-! ## A227003.P4855936034299285883

`A333397(3*(n+1))+A333382(A333403(n+3))`
-/

namespace A227003.P4855936034299285883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333397 (3 * (n + 1)) + A333382 (A333403 (n + 3)).toNat

end

end A227003.P4855936034299285883

/-! ## A227003.P8093500071521067971

`A323308(3*n+5)*A330935(A081720(n+1))`
-/

namespace A227003.P8093500071521067971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323308 (3 * n + 5) * A330935 (A081720 (n + 1)).toNat

end

end A227003.P8093500071521067971

/-! ## A227003.P325183502008769787

`A127153(gcd(A099920(n+2), A106230(3*n+1)))`
-/

namespace A227003.P325183502008769787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127153 (Int.gcd (A099920 (n + 2)) (A106230 (3 * n + 1)))

end

end A227003.P325183502008769787

/-!
# A227005: Number of Hamiltonian circuits in a 2n X 2n square lattice of nodes, reduced for symmetry, where the orbits under the symmetry group of the square, D4, have 2 elements.

The programs for A227005, there is no canonical definition to state claims against.
-/

/-! ## A227005.P580580743784518219

`A193928(∑[∏[n!]])`
-/

namespace A227005.P580580743784518219
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193928 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A227005.P580580743784518219

/-!
# A227006: Numbers k such that k-1 is not squarefree or a prime divisor of k-1 is in the sequence.

The programs for A227006, there is no canonical definition to state claims against.
-/

/-! ## A227006.P17303661842082598915

`lt[A294884(A255107(n+1)), n]`
-/

namespace A227006.P17303661842082598915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294884 (A255107 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A227006.P17303661842082598915

/-!
# A227007: Numbers k such that k-1 is squarefree and every prime divisor of k-1 is in the sequence.

The programs for A227007, there is no canonical definition to state claims against.
-/

/-! ## A227007.P8608681982987695858

`a(n-1)+a(and(n, n-1))-1` with `a(0)=2`
-/

namespace A227007.P8608681982987695858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat - 1)

end

end A227007.P8608681982987695858

/-! ## A227007.P1210555823533615620

`a(n-1)-(1-a(and(n, n-1)))` with `a(0)=2`
-/

namespace A227007.P1210555823533615620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) - (1 - a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat)

end

end A227007.P1210555823533615620

/-! ## A227007.P17673468134731692874

`a(n-gcd(8, n))+a(n-1)-1` with `a(0)=2`
-/

namespace A227007.P17673468134731692874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - Nat.gcd 8 n) + (a (n - 1) - 1)

end

end A227007.P17673468134731692874

/-! ## A227007.P14029854402689594594

`A191614(n+1)+1`
-/

namespace A227007.P14029854402689594594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191614 (n + 1) + 1

end

end A227007.P14029854402689594594

/-! ## A227007.P3350602528194075034

`eq[1, A343068(n+1)]+2`
-/

namespace A227007.P3350602528194075034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343068 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A227007.P3350602528194075034

/-!
# A227010: Places n where A225867(n) = 4.

The programs for A227010, there is no canonical definition to state claims against.
-/

/-! ## A227010.P9795880886253033770

`eq[4, A225867(n+6)]+6`
-/

namespace A227010.P9795880886253033770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225867 (n + 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 6

end

end A227010.P9795880886253033770

/-! ## A227010.P9518121875698587332

`A020715(eq[4, A225867(n+6)])`
-/

namespace A227010.P9518121875698587332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225867 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020715 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227010.P9518121875698587332

/-! ## A227010.P307741635520151726

`lt[A000005(A188508(n+1)), A066657(n)]`
-/

namespace A227010.P307741635520151726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A188508 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A227010.P307741635520151726

/-!
# A227011: Integers m such that phi(sigma(k))/sigma(phi(k)) > phi(sigma(m))/sigma(phi(m)) for all k

The programs for A227011, there is no canonical definition to state claims against.
-/

/-! ## A227011.P14145168818907205070

`A321689(n)+record[A065558(n+1)]`
-/

namespace A227011.P14145168818907205070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065558 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321689 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227011.P14145168818907205070

/-!
# A227012: a(n) = floor(M(g(n-1)+1, ..., g(n))), where M = harmonic mean and g(n) = n^3.

The programs for A227012, the canonical program `A227012.P1693384835396072612` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227012 has offset 1).

The definition of A227012 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227012.P12525840343365104703

`round(sqrt(((1/2+n)^3)²+1))`
-/

namespace A227012.P12525840343365104703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((((1 : ℚ) / 2 + (n : ℚ)) ^ 3) ^ 2 + 1 : ℝ))

end

end A227012.P12525840343365104703

namespace A227012

/-- `round(sqrt(((1/2+n)^3)²+1))` -/
def P12525840343365104703.Spec : Prop :=
  ∀ n, P12525840343365104703.a n = A227012 (n + 1)

end A227012

/-! ## A227012.P1693384835396072612

`A065033(A004526(n))+A059270(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A227012

/-- `A065033(A004526(n))+A059270(n)` -/
def P1693384835396072612.Spec : Prop :=
  ∀ n, P1693384835396072612.a n = A227012 (n + 1)

theorem P1693384835396072612.correct : P1693384835396072612.Spec := by
  intro n
  simp only [A227012, Nat.add_sub_cancel]

end A227012

/-! ## A227012.P6330617454146458731

`A065033(A123108(n))+A059270(n)`
-/

namespace A227012.P6330617454146458731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A123108 n).toNat + A059270 n

end

end A227012.P6330617454146458731

namespace A227012

/-- `A065033(A123108(n))+A059270(n)` -/
def P6330617454146458731.Spec : Prop :=
  ∀ n, P6330617454146458731.a n = A227012 (n + 1)

end A227012

/-! ## A227012.P10253798856895653048

`A059270(n)+A008619(n%A008619(n+1))`
-/

namespace A227012.P10253798856895653048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059270 n + A008619 (Int.tmod (n : ℤ) (A008619 (n + 1))).toNat

end

end A227012.P10253798856895653048

namespace A227012

/-- `A059270(n)+A008619(n%A008619(n+1))` -/
def P10253798856895653048.Spec : Prop :=
  ∀ n, P10253798856895653048.a n = A227012 (n + 1)

end A227012

/-! ## A227012.P16093579147916853417

`A065033(A065033(n+1)-1)+A059270(n)`
-/

namespace A227012.P16093579147916853417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A065033 (n + 1) - 1).toNat + A059270 n

end

end A227012.P16093579147916853417

namespace A227012

/-- `A065033(A065033(n+1)-1)+A059270(n)` -/
def P16093579147916853417.Spec : Prop :=
  ∀ n, P16093579147916853417.a n = A227012 (n + 1)

end A227012

/-!
# A227013: a(n) = floor(M(g(n-1)+1,..,g(n))), where M is the harmonic mean and g(n) = n^4.

The programs for A227013, the canonical program `A227013.P4672770896026051974` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227013 has offset 1).

The definition of A227013 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227013.P4672770896026051974

`A107750(∑[n]+1)+∑[2*n]²`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A227013

/-- `A107750(∑[n]+1)+∑[2*n]²` -/
def P4672770896026051974.Spec : Prop :=
  ∀ n, P4672770896026051974.a n = A227013 (n + 1)

theorem P4672770896026051974.correct : P4672770896026051974.Spec := by
  intro n
  simp only [A227013, Nat.add_sub_cancel]

end A227013

/-! ## A227013.P7750335152591193726

`∑[2*n]²+A107750(A000124(n))`
-/

namespace A227013.P7750335152591193726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) + A107750 (A000124 n).toNat

end

end A227013.P7750335152591193726

namespace A227013

/-- `∑[2*n]²+A107750(A000124(n))` -/
def P7750335152591193726.Spec : Prop :=
  ∀ n, P7750335152591193726.a n = A227013 (n + 1)

end A227013

/-! ## A227013.P2466591535419118160

`A262397(A003215(n))+C(n, n²)`
-/

namespace A227013.P2466591535419118160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262397 (A003215 n).toNat + (Nat.choose n (n ^ 2) : ℤ)

end

end A227013.P2466591535419118160

namespace A227013

/-- `A262397(A003215(n))+C(n, n²)` -/
def P2466591535419118160.Spec : Prop :=
  ∀ n, P2466591535419118160.a n = A227013 (n + 1)

end A227013

/-! ## A227013.P11377721100937979238

`A262397(A003215(n))+char[A024003(n)]`
-/

namespace A227013.P11377721100937979238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024003 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262397 (A003215 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A227013.P11377721100937979238

namespace A227013

/-- `A262397(A003215(n))+char[A024003(n)]` -/
def P11377721100937979238.Spec : Prop :=
  ∀ n, P11377721100937979238.a n = A227013 (n + 1)

end A227013

/-! ## A227013.P2842760778440531794

`A262397(A003215(n))+A019590(n+1)`
-/

namespace A227013.P2842760778440531794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262397 (A003215 n).toNat + A019590 (n + 1)

end

end A227013.P2842760778440531794

namespace A227013

/-- `A262397(A003215(n))+A019590(n+1)` -/
def P2842760778440531794.Spec : Prop :=
  ∀ n, P2842760778440531794.a n = A227013 (n + 1)

end A227013

/-! ## A227013.P12097947145228971811

`A262397(A003215(n))+A000007(n²-n)`
-/

namespace A227013.P12097947145228971811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262397 (A003215 n).toNat + A000007 (n ^ 2 - n)

end

end A227013.P12097947145228971811

namespace A227013

/-- `A262397(A003215(n))+A000007(n²-n)` -/
def P12097947145228971811.Spec : Prop :=
  ∀ n, P12097947145228971811.a n = A227013 (n + 1)

end A227013

/-! ## A227013.P5239909965694533427

`A262397(A003215(n))+A000035(A062354(n+1))`
-/

namespace A227013.P5239909965694533427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262397 (A003215 n).toNat + A000035 (A062354 (n + 1)).toNat

end

end A227013.P5239909965694533427

namespace A227013

/-- `A262397(A003215(n))+A000035(A062354(n+1))` -/
def P5239909965694533427.Spec : Prop :=
  ∀ n, P5239909965694533427.a n = A227013 (n + 1)

end A227013

/-!
# A227015: a(n) = floor(M(g(n-1)+1, ..., g(n))), where M = harmonic mean and g(n) = n^3 + n^2 + n + 1.

The programs for A227015, there is no canonical definition to state claims against.
-/

/-! ## A227015.P822890544931666087

`A081436(n)+A055642(A224957(n+3))`
-/

namespace A227015.P822890544931666087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081436 n + A055642 (A224957 (n + 3)).toNat

end

end A227015.P822890544931666087

/-! ## A227015.P9102241776697722616

`A235355(2*n+1)+A055642(A276086(2*n+1))`
-/

namespace A227015.P9102241776697722616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 (2 * n + 1) + A055642 (A276086 (2 * n + 1)).toNat

end

end A227015.P9102241776697722616

/-! ## A227015.P11265254247370926416

`A081436(n)+A055642(A139056(n+1))`
-/

namespace A227015.P11265254247370926416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081436 n + A055642 (A139056 (n + 1)).toNat

end

end A227015.P11265254247370926416

/-! ## A227015.P9567850904061313840

`A212632(A000217(n+1))+A081436(n)`
-/

namespace A227015.P9567850904061313840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212632 (A000217 (n + 1)).toNat + A081436 n

end

end A227015.P9567850904061313840

/-!
# A227016: Floor(M(g(n-1)+1,..,g(n))), where M = harmonic mean and g(n) = n(n + 1)(n + 2)/6.

The programs for A227016, there is no canonical definition to state claims against.
-/

/-! ## A227016.P537291852997739997

`A065033(A000330(n+1)-A008621(n+1))`
-/

namespace A227016.P537291852997739997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A000330 (n + 1) - A008621 (n + 1)).toNat

end

end A227016.P537291852997739997

/-! ## A227016.P10771034855080992965

`A065033(A159914(2*(n+2))-A110656(2*(n+2)))`
-/

namespace A227016.P10771034855080992965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A159914 (2 * (n + 2)) - A110656 (2 * (n + 2))).toNat

end

end A227016.P10771034855080992965

/-! ## A227016.P8949768993520284014

`A131941(A000005(A000079(n)))-A189663(n+1)`
-/

namespace A227016.P8949768993520284014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131941 (A000005 (A000079 n).toNat).toNat - A189663 (n + 1)

end

end A227016.P8949768993520284014

/-! ## A227016.P16113451824339765480

`A014112(n+1)+A014093(A058396(n))`
-/

namespace A227016.P16113451824339765480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014112 (n + 1) + A014093 (A058396 n).toNat

end

end A227016.P16113451824339765480

/-!
# A227017: Floor(M(g(n-1)+1,..,g(n))), where M = harmonic mean and g(n) = n(3n-1)/2 = A000326(n).

The programs for A227017, the canonical program `A227017.P9033051953499663239` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227017 has offset 1).

The definition of A227017 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227017.P17432427167275317039

`floor(cosh(log((n+1)²)))+n²`
-/

namespace A227017.P17432427167275317039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cosh (Real.log ((n + 1) ^ 2 : ℝ))⌋ + (n ^ 2 : ℤ)

end

end A227017.P17432427167275317039

namespace A227017

/-- `floor(cosh(log((n+1)²)))+n²` -/
def P17432427167275317039.Spec : Prop :=
  ∀ n, P17432427167275317039.a n = A227017 (n + 1)

end A227017

/-! ## A227017.P9033051953499663239

`∑[a(n-2)+6]` with `a(0)=1, a(1)=2, a(2)=5, a(3)=9`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A227017

/-- `∑[a(n-2)+6]` -/
def P9033051953499663239.Spec : Prop :=
  ∀ n, (P9033051953499663239.a n : ℤ) = A227017 (n + 1)

theorem P9033051953499663239.correct : P9033051953499663239.Spec := by
  intro n
  simp only [A227017, Nat.add_sub_cancel]

end A227017

/-! ## A227017.P13004864340496683551

`∑[∑[6-a(n-1)]]` with `a(0)=1, a(1)=1, a(2)=3, a(3)=4`
-/

namespace A227017.P13004864340496683551
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3, 4] fun n f2 =>
  6 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227017.P13004864340496683551

namespace A227017

/-- `∑[∑[6-a(n-1)]]` -/
def P13004864340496683551.Spec : Prop :=
  ∀ n, P13004864340496683551.a n = A227017 (n + 1)

end A227017

/-! ## A227017.P13735494610181130685

`floor(abs(∑[6*n-1])/2)+1`
-/

namespace A227017.P13735494610181130685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((|∑ j ∈ Finset.range (n + 1), f1 j| : ℤ) : ℚ) / 2⌋ + 1

end

end A227017.P13735494610181130685

namespace A227017

/-- `floor(abs(∑[6*n-1])/2)+1` -/
def P13735494610181130685.Spec : Prop :=
  ∀ n, P13735494610181130685.a n = A227017 (n + 1)

end A227017

/-! ## A227017.P4470685678138176397

`abs(1-(or(1, a(n-1)+n+n)+n))` with `a(0)=1`
-/

namespace A227017.P4470685678138176397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |1 - (Int.lor 1 (a (n - 1) + (n : ℤ) + (n : ℤ)) + (n : ℤ))|

end

end A227017.P4470685678138176397

namespace A227017

/-- `abs(1-(or(1, a(n-1)+n+n)+n))` -/
def P4470685678138176397.Spec : Prop :=
  ∀ n, P4470685678138176397.a n = A227017 (n + 1)

end A227017

/-! ## A227017.P8097493392720285361

`floor(cosh(log(A056109(n))))`
-/

namespace A227017.P8097493392720285361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cosh (Real.log (A056109 n : ℝ))⌋

end

end A227017.P8097493392720285361

namespace A227017

/-- `floor(cosh(log(A056109(n))))` -/
def P8097493392720285361.Spec : Prop :=
  ∀ n, P8097493392720285361.a n = A227017 (n + 1)

end A227017

/-! ## A227017.P5886676456810127552

`∑[abs(3*n-char[A004275(n)])]`
-/

namespace A227017.P5886676456810127552
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(3 * n : ℤ) - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227017.P5886676456810127552

namespace A227017

/-- `∑[abs(3*n-char[A004275(n)])]` -/
def P5886676456810127552.Spec : Prop :=
  ∀ n, P5886676456810127552.a n = A227017 (n + 1)

end A227017

/-! ## A227017.P9938751640077702396

`ceil((3*n+2)*A028310(n)/2)`
-/

namespace A227017.P9938751640077702396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((3 * n + 2 : ℤ) * A028310 n : ℚ) / 2⌉

end

end A227017.P9938751640077702396

namespace A227017

/-- `ceil((3*n+2)*A028310(n)/2)` -/
def P9938751640077702396.Spec : Prop :=
  ∀ n, P9938751640077702396.a n = A227017 (n + 1)

end A227017

/-! ## A227017.P11568175490900738928

`ceil((abs(A003215(n)-(n+2))+1)/2)`
-/

namespace A227017.P11568175490900738928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(|A003215 n - (n + 2 : ℤ)| + 1 : ℚ) / 2⌉

end

end A227017.P11568175490900738928

namespace A227017

/-- `ceil((abs(A003215(n)-(n+2))+1)/2)` -/
def P11568175490900738928.Spec : Prop :=
  ∀ n, P11568175490900738928.a n = A227017 (n + 1)

end A227017

/-! ## A227017.P7154695949908734455

`ceil((2*n+n+2)*A004277(n)/4)`
-/

namespace A227017.P7154695949908734455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 * n + (n + 2) : ℤ) * A004277 n : ℚ) / 4⌉

end

end A227017.P7154695949908734455

namespace A227017

/-- `ceil((2*n+n+2)*A004277(n)/4)` -/
def P7154695949908734455.Spec : Prop :=
  ∀ n, P7154695949908734455.a n = A227017 (n + 1)

end A227017

/-! ## A227017.P6559811754313708724

`ceil(sqrt(((3*n+2)²-3)*A000290(n)+1-n)/2)`
-/

namespace A227017.P6559811754313708724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((((3 * n + 2) ^ 2 : ℤ) - 3) * A000290 n + 1 - (n : ℤ) : ℝ) / 2⌉

end

end A227017.P6559811754313708724

namespace A227017

/-- `ceil(sqrt(((3*n+2)²-3)*A000290(n)+1-n)/2)` -/
def P6559811754313708724.Spec : Prop :=
  ∀ n, P6559811754313708724.a n = A227017 (n + 1)

end A227017

/-! ## A227017.P13892881383795437016

`record[∑[∑[∑[ogf((1-2x+3x^2+4x^3)/(1+x))]]]]`
-/

namespace A227017.P13892881383795437016
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 3, 4] [1, 1] n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227017.P13892881383795437016

namespace A227017

/-- `record[∑[∑[∑[ogf((1-2x+3x^2+4x^3)/(1+x))]]]]` -/
def P13892881383795437016.Spec : Prop :=
  ∀ n, P13892881383795437016.a n = A227017 (n + 1)

end A227017

/-! ## A227017.P2798295151304359977

`record[A051890(n)-(ceil(n²/2)+1)]`
-/

namespace A227017.P2798295151304359977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051890 n - (⌈(n ^ 2 : ℚ) / 2⌉ + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227017.P2798295151304359977

namespace A227017

/-- `record[A051890(n)-(ceil(n²/2)+1)]` -/
def P2798295151304359977.Spec : Prop :=
  ∀ n, P2798295151304359977.a n = A227017 (n + 1)

end A227017

/-! ## A227017.P16969881148715408992

`floor(A282513(2*n)+acot(n))`
-/

namespace A227017.P16969881148715408992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A282513 (2 * n) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A227017.P16969881148715408992

namespace A227017

/-- `floor(A282513(2*n)+acot(n))` -/
def P16969881148715408992.Spec : Prop :=
  ∀ n, P16969881148715408992.a n = A227017 (n + 1)

end A227017

/-! ## A227017.P16983256612253943632

`A186423(A004277(n))`
-/

namespace A227017.P16983256612253943632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186423 (A004277 n).toNat

end

end A227017.P16983256612253943632

namespace A227017

/-- `A186423(A004277(n))` -/
def P16983256612253943632.Spec : Prop :=
  ∀ n, P16983256612253943632.a n = A227017 (n + 1)

end A227017

/-! ## A227017.P2480771242482564286

`A186423(A004275(n+1))`
-/

namespace A227017.P2480771242482564286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186423 (A004275 (n + 1)).toNat

end

end A227017.P2480771242482564286

namespace A227017

/-- `A186423(A004275(n+1))` -/
def P2480771242482564286.Spec : Prop :=
  ∀ n, P2480771242482564286.a n = A227017 (n + 1)

end A227017

/-! ## A227017.P12736449112434397110

`A396811(A004280(n+2))`
-/

namespace A227017.P12736449112434397110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396811 (A004280 (n + 2)).toNat

end

end A227017.P12736449112434397110

namespace A227017

/-- `A396811(A004280(n+2))` -/
def P12736449112434397110.Spec : Prop :=
  ∀ n, P12736449112434397110.a n = A227017 (n + 1)

end A227017

/-! ## A227017.P17326895152896015236

`A186423(record[Δ[A186423(n)]])`
-/

namespace A227017.P17326895152896015236
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186423 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186423 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A227017.P17326895152896015236

namespace A227017

/-- `A186423(record[Δ[A186423(n)]])` -/
def P17326895152896015236.Spec : Prop :=
  ∀ n, P17326895152896015236.a n = A227017 (n + 1)

end A227017

/-! ## A227017.P6024728411106810036

`A156040(A140106(2*n+1)+2*n)`
-/

namespace A227017.P6024728411106810036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156040 (A140106 (2 * n + 1) + (2 * n : ℤ)).toNat

end

end A227017.P6024728411106810036

namespace A227017

/-- `A156040(A140106(2*n+1)+2*n)` -/
def P6024728411106810036.Spec : Prop :=
  ∀ n, P6024728411106810036.a n = A227017 (n + 1)

end A227017

/-! ## A227017.P1701230564069117068

`A056829(A033627(n+2))`
-/

namespace A227017.P1701230564069117068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056829 (A033627 (n + 2)).toNat

end

end A227017.P1701230564069117068

namespace A227017

/-- `A056829(A033627(n+2))` -/
def P1701230564069117068.Spec : Prop :=
  ∀ n, P1701230564069117068.a n = A227017 (n + 1)

end A227017

/-!
# A227018: a(n) = floor(M(g(n-1)+1,..,g(n))), where M = harmonic mean and g(n) = n*(n + 1)*(n + 2)*(n + 3)/24.

The programs for A227018, there is no canonical definition to state claims against.
-/

/-! ## A227018.P16478146763659669684

`A001462(A000581(n+8)-A007742(n))`
-/

namespace A227018.P16478146763659669684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A000581 (n + 8) - A007742 n).toNat

end

end A227018.P16478146763659669684

/-! ## A227018.P14065242599097890777

`A185283(A157053(n+1))-A325364(2*n+1)`
-/

namespace A227018.P14065242599097890777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185283 (A157053 (n + 1)).toNat - A325364 (2 * n + 1)

end

end A227018.P14065242599097890777

/-!
# A227019: Numbers k such that exactly one of {2^k-1, 2^k+1, 2^k+3} is semiprime.

The programs for A227019, there is no canonical definition to state claims against.
-/

/-! ## A227019.P5676107115617572916

`lt[3, p?[A002033(A247136(n+1))]]`
-/

namespace A227019.P5676107115617572916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 (A247136 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A227019.P5676107115617572916

/-! ## A227019.P8619065051222533167

`lt[A000005(n+1), dr(A136753(n+1))]`
-/

namespace A227019.P8619065051222533167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A136753 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A227019.P8619065051222533167

/-! ## A227019.P15351854573039848228

`A003056(A277192(A002327(n+1)+n))`
-/

namespace A227019.P15351854573039848228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A277192 (A002327 (n + 1) + (n : ℤ)).toNat).toNat

end

end A227019.P15351854573039848228

/-!
# A227020: Number of n X n (0,1,2) arrays of permanents of 2X2 subblocks of some (n+1)X(n+1) binary array with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A227020, there is no canonical definition to state claims against.
-/

/-! ## A227020.P13538373871773152434

`A227025(∑[4*n]+1)`
-/

namespace A227020.P13538373871773152434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227025 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A227020.P13538373871773152434

/-! ## A227020.P12234089342233667254

`record[A227025(A330613(n+1))]`
-/

namespace A227020.P12234089342233667254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227025 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227020.P12234089342233667254

/-! ## A227020.P14334664304027443999

`record[A003982(n)*A227025(n+1)]`
-/

namespace A227020.P14334664304027443999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A227025 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227020.P14334664304027443999

/-!
# A227021: Number of n X 2 (0,1,2) arrays of permanents of 2 X 2 subblocks of some (n+1) X 3 binary array with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A227021, there is no canonical definition to state claims against.
-/

/-! ## A227021.P13896179537829934635

`A227025(∑[n+1]+2)`
-/

namespace A227021.P13896179537829934635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227025 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A227021.P13896179537829934635

/-! ## A227021.P1295880678919280513

`record[A227025(n+2)/A059434(n)]`
-/

namespace A227021.P1295880678919280513
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227025 (n + 2) : ℚ) / (A059434 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227021.P1295880678919280513

/-! ## A227021.P5976850663409839828

`A008835(n+1)*A227025(A000096(n)+3)`
-/

namespace A227021.P5976850663409839828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008835 (n + 1) * A227025 (A000096 n + 3).toNat

end

end A227021.P5976850663409839828

/-! ## A227021.P9504360334252702279

`A227025(A000096(n)+3)%A316640(n+1)`
-/

namespace A227021.P9504360334252702279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A227025 (A000096 n + 3).toNat) (A316640 (n + 1))

end

end A227021.P9504360334252702279

/-! ## A227021.P12950051256706365654

`record[and(A167374(n+1), A227025(n+2))]`
-/

namespace A227021.P12950051256706365654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A167374 (n + 1)) (A227025 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227021.P12950051256706365654

/-!
# A227022: Number of nX3 (0,1,2) arrays of permanents of 2X2 subblocks of some (n+1)X4 binary array with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A227022, there is no canonical definition to state claims against.
-/

/-! ## A227022.P14302795131318876882

`A227025(∑[n+2]+4)`
-/

namespace A227022.P14302795131318876882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227025 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A227022.P14302795131318876882

/-! ## A227022.P2552002234465879068

`and(-1, A227025(A167614(n+1)))`
-/

namespace A227022.P2552002234465879068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A227025 (A167614 (n + 1)).toNat)

end

end A227022.P2552002234465879068

/-! ## A227022.P6072460447642097139

`record[A227025(A167544(n+4)+6)]`
-/

namespace A227022.P6072460447642097139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227025 (A167544 (n + 4) + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227022.P6072460447642097139

/-! ## A227022.P2888044821658184658

`A227025(A167614(n+1))+A185294(n)`
-/

namespace A227022.P2888044821658184658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227025 (A167614 (n + 1)).toNat + A185294 n

end

end A227022.P2888044821658184658

/-! ## A227022.P18225298932950274357

`A326547(n)+A227025(A167614(n+1))`
-/

namespace A227022.P18225298932950274357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326547 n + A227025 (A167614 (n + 1)).toNat

end

end A227022.P18225298932950274357

/-!
# A227023: Number of nX4 (0,1,2) arrays of permanents of 2X2 subblocks of some (n+1)X5 binary array with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A227023, there is no canonical definition to state claims against.
-/

/-! ## A227023.P9199776740525462333

`A227025(∑[n+3]%(3^(n+2))+7)`
-/

namespace A227023.P9199776740525462333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227025 ((∑ j ∈ Finset.range (n + 1), f1 j) % 3 ^ (n + 2) + 7)

end

end A227023.P9199776740525462333

/-! ## A227023.P7822840284976305983

`A227025(∑[2*n+3-∑[floor(n^(1/5))]]+7)`
-/

namespace A227023.P7822840284976305983
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) ^ ((1 : ℚ) / 5 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227025 (∑ j ∈ Finset.range (n + 1), f1 j + 7).toNat

end

end A227023.P7822840284976305983

/-! ## A227023.P15693203830274402021

`A227025(A052905(n)+9)*A260897(n+1)`
-/

namespace A227023.P15693203830274402021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227025 (A052905 n + 9).toNat * A260897 (n + 1)

end

end A227023.P15693203830274402021

/-! ## A227023.P6046606580564441970

`A227025(A141214(n+1))*A242718(n+1)`
-/

namespace A227023.P6046606580564441970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227025 (A141214 (n + 1)).toNat * A242718 (n + 1)

end

end A227023.P6046606580564441970

/-! ## A227023.P4587576319348419085

`A227025(A027379(n+2))*A242718(n+1)`
-/

namespace A227023.P4587576319348419085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227025 (A027379 (n + 2)).toNat * A242718 (n + 1)

end

end A227023.P4587576319348419085

/-!
# A227024: Number of nX5 (0,1,2) arrays of permanents of 2X2 subblocks of some (n+1)X6 binary array with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A227024, there is no canonical definition to state claims against.
-/

/-! ## A227024.P4523625059689004531

`A227025(A374005(n+1))`
-/

namespace A227024.P4523625059689004531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227025 (A374005 (n + 1)).toNat

end

end A227024.P4523625059689004531

/-! ## A227024.P8043995458484221489

`A227025(A155212(n)+13)`
-/

namespace A227024.P8043995458484221489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227025 (A155212 n + 13).toNat

end

end A227024.P8043995458484221489

/-! ## A227024.P9125648979527976094

`A227025(A056000(n)+15)`
-/

namespace A227024.P9125648979527976094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227025 (A056000 n + 15).toNat

end

end A227024.P9125648979527976094

/-! ## A227024.P7370789175932893703

`A227025(eq[7, A066657(n)])`
-/

namespace A227024.P7370789175932893703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227025 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227024.P7370789175932893703

/-! ## A227024.P8293850251432791832

`A227025(A000124(n+4)+4)`
-/

namespace A227024.P8293850251432791832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227025 (A000124 (n + 4) + 4).toNat

end

end A227024.P8293850251432791832

/-!
# A227027: Triangular numbers representable as x!/y! with y < x-1.

The programs for A227027, there is no canonical definition to state claims against.
-/

/-! ## A227027.P14576320568912795472

`∩[C(n+1, 2), A045619(n+2)]`
-/

namespace A227027.P14576320568912795472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045619 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227027.P14576320568912795472

/-! ## A227027.P12033955580502508871

`∩[A045619(n+2), A000217(n)]`
-/

namespace A227027.P12033955580502508871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045619 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227027.P12033955580502508871

/-! ## A227027.P9296971518889257268

`∩[A045619(n+1), A000096(n)+1]`
-/

namespace A227027.P9296971518889257268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227027.P9296971518889257268

/-! ## A227027.P9824947434057695752

`∩[A045619(n+1), A133263(n)-2]`
-/

namespace A227027.P9824947434057695752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133263 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227027.P9824947434057695752

/-! ## A227027.P3701758799912028243

`∩[A008805(2*(n+1)), A045619(n+1)]`
-/

namespace A227027.P3701758799912028243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227027.P3701758799912028243

/-!
# A227028: Triangular numbers whose binary conversion, read in decimal, is prime.

The programs for A227028, there is no canonical definition to state claims against.
-/

/-! ## A227028.P13860878440671845899

`∩[A036952(n+1), A000217(n)]`
-/

namespace A227028.P13860878440671845899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227028.P13860878440671845899

/-! ## A227028.P10490733291691780090

`∩[A036952(n+1), A001972(n)]`
-/

namespace A227028.P10490733291691780090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001972 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227028.P10490733291691780090

/-! ## A227028.P1740815161273744386

`∩[A036952(n+1), A253145(n)]`
-/

namespace A227028.P1740815161273744386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227028.P1740815161273744386

/-! ## A227028.P11818615979947085772

`∩[A014493(n+1), A036952(n+1)]`
-/

namespace A227028.P11818615979947085772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036952 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227028.P11818615979947085772

/-! ## A227028.P15949596074949735069

`∩[A036952(n+1), A074134(n+1)]`
-/

namespace A227028.P15949596074949735069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227028.P15949596074949735069

/-!
# A227029: Primitive solutions c to Diophantine equation a^2 + b^3 = c^5, with a, b, c > 0.

The programs for A227029, there is no canonical definition to state claims against.
-/

/-! ## A227029.P3107536443519341913

`record[A178130(floor(n/(xor(n, n+1)+1))+1)]`
-/

namespace A227029.P3107536443519341913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178130 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227029.P3107536443519341913

/-! ## A227029.P5132738603054913874

`record[A178130(A065648(n))]`
-/

namespace A227029.P5132738603054913874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178130 (A065648 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227029.P5132738603054913874

/-! ## A227029.P6048386023649180233

`record[A178130(A106466(n))]`
-/

namespace A227029.P6048386023649180233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178130 (A106466 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227029.P6048386023649180233

/-! ## A227029.P13250696910066167624

`record[A178130(A117910(n))]`
-/

namespace A227029.P13250696910066167624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178130 (A117910 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227029.P13250696910066167624

/-! ## A227029.P8700287138937304134

`record[A178130(A126759(n))]`
-/

namespace A227029.P8700287138937304134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178130 (A126759 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227029.P8700287138937304134

/-!
# A227030: Numbers that are neither the difference nor the product of two primes.

The programs for A227030, the canonical program `A227030.P6687707257327818715` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227030 has offset 1).

The definition of A227030 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6049 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227030.P6687707257327818715

`∩[A007921(n+1), A176847(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A227030

/-- `∩[A007921(n+1), A176847(n+1)]` -/
def P6687707257327818715.Spec : Prop :=
  ∀ n, (P6687707257327818715.a n : ℤ) = A227030 (n + 1)

theorem P6687707257327818715.correct : P6687707257327818715.Spec := by
  intro n
  simp only [A227030, Nat.add_sub_cancel]

end A227030

/-! ## A227030.P13988330453466213757

`∩[A007921(n+1), A100959(n+1)]`
-/

namespace A227030.P13988330453466213757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007921 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227030.P13988330453466213757

namespace A227030

/-- `∩[A007921(n+1), A100959(n+1)]` -/
def P13988330453466213757.Spec : Prop :=
  ∀ n, (P13988330453466213757.a n : ℤ) = A227030 (n + 1)

end A227030

/-! ## A227030.P5852459081392712426

`∩[A175553(n+2), A176847(n+2)]`
-/

namespace A227030.P5852459081392712426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175553 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176847 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227030.P5852459081392712426

namespace A227030

/-- `∩[A175553(n+2), A176847(n+2)]` -/
def P5852459081392712426.Spec : Prop :=
  ∀ n, (P5852459081392712426.a n : ℤ) = A227030 (n + 1)

end A227030

/-! ## A227030.P16792280664591973992

`eq[A064911(abs(1-n)+1), A073610(n+4)]`
-/

namespace A227030.P16792280664591973992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073610 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227030.P16792280664591973992

namespace A227030

/-- `eq[A064911(abs(1-n)+1), A073610(n+4)]` -/
def P16792280664591973992.Spec : Prop :=
  ∀ n, (P16792280664591973992.a n : ℤ) = A227030 (n + 1)

end A227030

/-! ## A227030.P2985322931597879333

`∩[A007921(n+1), A325337(n+1)]`
-/

namespace A227030.P2985322931597879333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007921 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227030.P2985322931597879333

namespace A227030

/-- `∩[A007921(n+1), A325337(n+1)]` -/
def P2985322931597879333.Spec : Prop :=
  ∀ n, (P2985322931597879333.a n : ℤ) = A227030 (n + 1)

end A227030

/-!
# A227031: Odd primes such that the previous prime is not the larger part of a twin prime pair.

The programs for A227031, the canonical program `A227031.P3728284765124950011` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227031 has offset 1).

The definition of A227031 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8730 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227031.P3728284765124950011

`p?[A062301(n+1)+p?[2*n+1]]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A227031

/-- `p?[A062301(n+1)+p?[2*n+1]]` -/
def P3728284765124950011.Spec : Prop :=
  ∀ n, P3728284765124950011.a n = A227031 (n + 1)

theorem P3728284765124950011.correct : P3728284765124950011.Spec := by
  intro n
  simp only [A227031, Nat.add_sub_cancel]

end A227031

/-! ## A227031.P5560058732246605794

`A000040(record[A062302(n+1)+2])`
-/

namespace A227031.P5560058732246605794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062302 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A227031.P5560058732246605794

namespace A227031

/-- `A000040(record[A062302(n+1)+2])` -/
def P5560058732246605794.Spec : Prop :=
  ∀ n, P5560058732246605794.a n = A227031 (n + 1)

end A227031

/-! ## A227031.P10897230885892133619

`A000040(comp[A029707(n+1)]+2)`
-/

namespace A227031.P10897230885892133619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029707 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2)

end

end A227031.P10897230885892133619

namespace A227031

/-- `A000040(comp[A029707(n+1)]+2)` -/
def P10897230885892133619.Spec : Prop :=
  ∀ n, P10897230885892133619.a n = A227031 (n + 1)

end A227031

/-! ## A227031.P678011096763491612

`A151800(A025584(n+1))`
-/

namespace A227031.P678011096763491612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A025584 (n + 1)).toNat

end

end A227031.P678011096763491612

namespace A227031

/-- `A151800(A025584(n+1))` -/
def P678011096763491612.Spec : Prop :=
  ∀ n, P678011096763491612.a n = A227031 (n + 1)

end A227031

/-! ## A227031.P15554987015119197409

`A000040(A000720(A025584(n+1))+1)`
-/

namespace A227031.P15554987015119197409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (A025584 (n + 1)).toNat + 1).toNat

end

end A227031.P15554987015119197409

namespace A227031

/-- `A000040(A000720(A025584(n+1))+1)` -/
def P15554987015119197409.Spec : Prop :=
  ∀ n, P15554987015119197409.a n = A227031 (n + 1)

end A227031

/-! ## A227031.P6645238136764621725

`A000040(A000720(A100317(2*n+1)+1)+1)`
-/

namespace A227031.P6645238136764621725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (A100317 (2 * n + 1) + 1).toNat + 1).toNat

end

end A227031.P6645238136764621725

namespace A227031

/-- `A000040(A000720(A100317(2*n+1)+1)+1)` -/
def P6645238136764621725.Spec : Prop :=
  ∀ n, P6645238136764621725.a n = A227031 (n + 1)

end A227031

/-! ## A227031.P2766129344267478318

`A151800(p?[A141468(n+1)+2])`
-/

namespace A227031.P2766129344267478318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A227031.P2766129344267478318

namespace A227031

/-- `A151800(p?[A141468(n+1)+2])` -/
def P2766129344267478318.Spec : Prop :=
  ∀ n, P2766129344267478318.a n = A227031 (n + 1)

end A227031

/-! ## A227031.P12218514120094694931

`A151800(p?[comp[A151800(n)+2]])`
-/

namespace A227031.P12218514120094694931
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n + 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A227031.P12218514120094694931

namespace A227031

/-- `A151800(p?[comp[A151800(n)+2]])` -/
def P12218514120094694931.Spec : Prop :=
  ∀ n, P12218514120094694931.a n = A227031 (n + 1)

end A227031

/-! ## A227031.P14715420233520469883

`A067792(p?[comp[A067829(n+2)]])`
-/

namespace A227031.P14715420233520469883
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067829 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067792 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A227031.P14715420233520469883

namespace A227031

/-- `A067792(p?[comp[A067829(n+2)]])` -/
def P14715420233520469883.Spec : Prop :=
  ∀ n, P14715420233520469883.a n = A227031 (n + 1)

end A227031

/-! ## A227031.P5987847035844992217

`A151800(record[A151800(2*n+1)-A055672(2*n+1)])`
-/

namespace A227031.P5987847035844992217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (2 * n + 1) - A055672 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A227031.P5987847035844992217

namespace A227031

/-- `A151800(record[A151800(2*n+1)-A055672(2*n+1)])` -/
def P5987847035844992217.Spec : Prop :=
  ∀ n, P5987847035844992217.a n = A227031 (n + 1)

end A227031

/-! ## A227031.P16632312180681676237

`A003961(p?[comp[A006512(n+1)]])`
-/

namespace A227031.P16632312180681676237
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A227031.P16632312180681676237

namespace A227031

/-- `A003961(p?[comp[A006512(n+1)]])` -/
def P16632312180681676237.Spec : Prop :=
  ∀ n, P16632312180681676237.a n = A227031 (n + 1)

end A227031

/-! ## A227031.P16549507819068375662

`A003961(p?[comp[A014091(n+1)]])`
-/

namespace A227031.P16549507819068375662
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014091 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A227031.P16549507819068375662

namespace A227031

/-- `A003961(p?[comp[A014091(n+1)]])` -/
def P16549507819068375662.Spec : Prop :=
  ∀ n, P16549507819068375662.a n = A227031 (n + 1)

end A227031

/-! ## A227031.P17044472350838457432

`record[A000040(A062602(A000040(n+1))+2)]`
-/

namespace A227031.P17044472350838457432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A062602 (A000040 (n + 1)).toNat + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227031.P17044472350838457432

namespace A227031

/-- `record[A000040(A062602(A000040(n+1))+2)]` -/
def P17044472350838457432.Spec : Prop :=
  ∀ n, P17044472350838457432.a n = A227031 (n + 1)

end A227031

/-! ## A227031.P7108715580169939396

`A003961(2*A025584(n+1)-A025584(n+1))`
-/

namespace A227031.P7108715580169939396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (2 * A025584 (n + 1) - A025584 (n + 1)).toNat

end

end A227031.P7108715580169939396

namespace A227031

/-- `A003961(2*A025584(n+1)-A025584(n+1))` -/
def P7108715580169939396.Spec : Prop :=
  ∀ n, P7108715580169939396.a n = A227031 (n + 1)

end A227031

/-! ## A227031.P8440418641317153779

`A067792(p?[comp[A067792(n+1)+2]])`
-/

namespace A227031.P8440418641317153779
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067792 (n + 1) + 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067792 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A227031.P8440418641317153779

namespace A227031

/-- `A067792(p?[comp[A067792(n+1)+2]])` -/
def P8440418641317153779.Spec : Prop :=
  ∀ n, P8440418641317153779.a n = A227031 (n + 1)

end A227031

/-!
# A227033: Expansion of (phi(x) / f(-x^4))^2 in powers of x where phi(), f() are Ramanujan theta functions.

The programs for A227033, there is no canonical definition to state claims against.
-/

/-! ## A227033.P12297393424393417486

`abs(A058493(A006368(n)))`
-/

namespace A227033.P12297393424393417486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A058493 (A006368 n).toNat|

end

end A227033.P12297393424393417486

/-! ## A227033.P416977766283648511

`A087960(n)*A112149(A006368(n))`
-/

namespace A227033.P416977766283648511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A112149 (A006368 n).toNat

end

end A227033.P416977766283648511

/-! ## A227033.P4919782932268746853

`gcd(A000038(n), A058493(A006368(n)))`
-/

namespace A227033.P4919782932268746853
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A058493 (A006368 n).toNat)

end

end A227033.P4919782932268746853

/-! ## A227033.P18178443346538818386

`lcm(A000034(n), A058493(A006368(n)))`
-/

namespace A227033.P18178443346538818386
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A058493 (A006368 n).toNat)

end

end A227033.P18178443346538818386

/-! ## A227033.P15380388920371151625

`lcm(A112149(A006368(n)), A257075(n))`
-/

namespace A227033.P15380388920371151625
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A112149 (A006368 n).toNat) (A257075 n)

end

end A227033.P15380388920371151625

/-! ## A227033.P1367787691222334903

`abs(A097807(n)*A112149(A006368(n)))`
-/

namespace A227033.P1367787691222334903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A097807 n * A112149 (A006368 n).toNat|

end

end A227033.P1367787691222334903

/-! ## A227033.P2263298967903774495

`abs(A112149(A006368(n))%A000412(n))`
-/

namespace A227033.P2263298967903774495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A112149 (A006368 n).toNat) (A000412 n)|

end

end A227033.P2263298967903774495

/-! ## A227033.P1313747500616204845

`abs(A094267(n²)*A112149(A006368(n)))`
-/

namespace A227033.P1313747500616204845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A094267 (n ^ 2) * A112149 (A006368 n).toNat|

end

end A227033.P1313747500616204845

/-!
# A227034: Composite numbers such that product_{i=1..k} (p_i/(p_i-1)) / sum_{i=1..k} (p_i/(p_i-1)) is an integer, where p_i are the k prime factors of n (with multiplicity).

The programs for A227034, there is no canonical definition to state claims against.
-/

/-! ## A227034.P1939522995298573940

`A099735(A397467(n+1))`
-/

namespace A227034.P1939522995298573940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099735 (A397467 (n + 1)).toNat

end

end A227034.P1939522995298573940

/-!
# A227035: a(n) = Sum_{k=0..floor(n/4)} binomial(n,4*k)*binomial(5*k,k)/(4*k+1).

The programs for A227035, there is no canonical definition to state claims against.
-/

/-! ## A227035.P39907970058502346

`A157271(A376835(n))`
-/

namespace A227035.P39907970058502346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A376835 n).toNat

end

end A227035.P39907970058502346

/-! ## A227035.P6107938327909242076

`A224875(A379464(n))`
-/

namespace A227035.P6107938327909242076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224875 (A379464 n).toNat

end

end A227035.P6107938327909242076

/-! ## A227035.P10845122668717900489

`A366098(n)+A069846(A366054(n))`
-/

namespace A227035.P10845122668717900489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366098 n + A069846 (A366054 n).toNat

end

end A227035.P10845122668717900489

/-! ## A227035.P2655923185135528893

`A368913(A366096(n))+A366098(n)`
-/

namespace A227035.P2655923185135528893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368913 (A366096 n).toNat + A366098 n

end

end A227035.P2655923185135528893

/-! ## A227035.P5399875910522752558

`A366098(n)+A361498(A034710(n+1))`
-/

namespace A227035.P5399875910522752558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366098 n + A361498 (A034710 (n + 1)).toNat

end

end A227035.P5399875910522752558

/-!
# A227036: Expansion of 2*(1+x^2)/((1-x)*(1-x-2*x^3)).

The programs for A227036, the canonical program `A227036.P12638022023496132847` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227036 has offset 0).

The definition of A227036 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((2+2x^2)/(1-2x+x^2-2x^3+2x^4))` (program `A227036.P12638022023496132847`, by `A227036.P12638022023496132847.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A227036.P12638022023496132847

`ogf((2+2x^2)/(1-2x+x^2-2x^3+2x^4))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A227036

/-- `ogf((2+2x^2)/(1-2x+x^2-2x^3+2x^4))` -/
def P12638022023496132847.Spec : Prop :=
  ∀ n, P12638022023496132847.a n = A227036 n

theorem P12638022023496132847.correct : P12638022023496132847.Spec := by
  intro n
  simp only [A227036]

end A227036

/-! ## A227036.P14975172431967129230

`∑[a(n-1)+2*a(n-3)]` with `a(0)=2, a(1)=2, a(2)=4`
-/

namespace A227036.P14975172431967129230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 4] fun n f1 =>
  f1 (n - 1) + 2 * f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227036.P14975172431967129230

namespace A227036

/-- `∑[a(n-1)+2*a(n-3)]` -/
def P14975172431967129230.Spec : Prop :=
  ∀ n, (P14975172431967129230.a n : ℤ) = A227036 n

end A227036

/-! ## A227036.P10734627968499898937

`∑[a(n-3)+a(n-1)+a(n-3)]` with `a(0)=2, a(1)=2, a(2)=4`
-/

namespace A227036.P10734627968499898937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 4] fun n f1 =>
  f1 (n - 3) + (f1 (n - 1) + f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227036.P10734627968499898937

namespace A227036

/-- `∑[a(n-3)+a(n-1)+a(n-3)]` -/
def P10734627968499898937.Spec : Prop :=
  ∀ n, (P10734627968499898937.a n : ℤ) = A227036 n

end A227036

/-! ## A227036.P9484780288430828185

`2*A164395(n)`
-/

namespace A227036.P9484780288430828185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A164395 n

end

end A227036.P9484780288430828185

namespace A227036

/-- `2*A164395(n)` -/
def P9484780288430828185.Spec : Prop :=
  ∀ n, P9484780288430828185.a n = A227036 n

end A227036

/-! ## A227036.P18069862349118683941

`A203175(n+4)-2`
-/

namespace A227036.P18069862349118683941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203175 (n + 4) - 2

end

end A227036.P18069862349118683941

namespace A227036

/-- `A203175(n+4)-2` -/
def P18069862349118683941.Spec : Prop :=
  ∀ n, P18069862349118683941.a n = A227036 n

end A227036

/-! ## A227036.P2845024631358373964

`∑[abs(A078044(n+1))]`
-/

namespace A227036.P2845024631358373964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A078044 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227036.P2845024631358373964

namespace A227036

/-- `∑[abs(A078044(n+1))]` -/
def P2845024631358373964.Spec : Prop :=
  ∀ n, P2845024631358373964.a n = A227036 n

end A227036

/-! ## A227036.P5778688049585699940

`∑[2*A203175(n+1)]`
-/

namespace A227036.P5778688049585699940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A203175 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227036.P5778688049585699940

namespace A227036

/-- `∑[2*A203175(n+1)]` -/
def P5778688049585699940.Spec : Prop :=
  ∀ n, P5778688049585699940.a n = A227036 n

end A227036

/-! ## A227036.P1463441519882707064

`2*(A003476(n+2)-1)`
-/

namespace A227036.P1463441519882707064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A003476 (n + 2) - 1)

end

end A227036.P1463441519882707064

namespace A227036

/-- `2*(A003476(n+2)-1)` -/
def P1463441519882707064.Spec : Prop :=
  ∀ n, P1463441519882707064.a n = A227036 n

end A227036

/-! ## A227036.P15560683435216205528

`∑[2*Δ[A003476(n+1)]]`
-/

namespace A227036.P15560683435216205528
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003476 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227036.P15560683435216205528

namespace A227036

/-- `∑[2*Δ[A003476(n+1)]]` -/
def P15560683435216205528.Spec : Prop :=
  ∀ n, P15560683435216205528.a n = A227036 n

end A227036

/-! ## A227036.P16381381579179276630

`A003479(n)+∑[A003229(n)]`
-/

namespace A227036.P16381381579179276630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003229 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003479 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227036.P16381381579179276630

namespace A227036

/-- `A003479(n)+∑[A003229(n)]` -/
def P16381381579179276630.Spec : Prop :=
  ∀ n, P16381381579179276630.a n = A227036 n

end A227036

/-! ## A227036.P1799919388946863707

`∑[A077949(n+1)+A077949(n)]`
-/

namespace A227036.P1799919388946863707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077949 (n + 1) + A077949 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227036.P1799919388946863707

namespace A227036

/-- `∑[A077949(n+1)+A077949(n)]` -/
def P1799919388946863707.Spec : Prop :=
  ∀ n, P1799919388946863707.a n = A227036 n

end A227036

/-! ## A227036.P9775265838747014097

`2*(A033999(2*n+1)+A003476(n+2))`
-/

namespace A227036.P9775265838747014097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A033999 (2 * n + 1) + A003476 (n + 2))

end

end A227036.P9775265838747014097

namespace A227036

/-- `2*(A033999(2*n+1)+A003476(n+2))` -/
def P9775265838747014097.Spec : Prop :=
  ∀ n, P9775265838747014097.a n = A227036 n

end A227036

/-! ## A227036.P10872614215737148560

`A164395(A005843(n)/2)+A164395(n)`
-/

namespace A227036.P10872614215737148560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164395 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat + A164395 n

end

end A227036.P10872614215737148560

namespace A227036

/-- `A164395(A005843(n)/2)+A164395(n)` -/
def P10872614215737148560.Spec : Prop :=
  ∀ n, P10872614215737148560.a n = A227036 n

end A227036

/-! ## A227036.P2891670462296932161

`A164395(A005843(n)-n)+A164395(n)`
-/

namespace A227036.P2891670462296932161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164395 (A005843 n - (n : ℤ)).toNat + A164395 n

end

end A227036.P2891670462296932161

namespace A227036

/-- `A164395(A005843(n)-n)+A164395(n)` -/
def P2891670462296932161.Spec : Prop :=
  ∀ n, P2891670462296932161.a n = A227036 n

end A227036

/-! ## A227036.P1369091416316052032

`Δ[A164395(n+2)]-2`
-/

namespace A227036.P1369091416316052032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164395 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A227036.P1369091416316052032

namespace A227036

/-- `Δ[A164395(n+2)]-2` -/
def P1369091416316052032.Spec : Prop :=
  ∀ n, P1369091416316052032.a n = A227036 n

end A227036

/-!
# A227037: Partial sums of A013999.

The programs for A227037, the canonical program `A227037.P7362488566615932298` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227037 has offset 0).

The definition of A227037 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A227037.P7362488566615932298

`(n+3)*a(n-1)-2*(n+1)*a(n-2)+(n+1)*a(n-3)` with `a(0)=1, a(1)=2, a(2)=4`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A227037

/-- `(n+3)*a(n-1)-2*(n+1)*a(n-2)+(n+1)*a(n-3)` -/
def P7362488566615932298.Spec : Prop :=
  ∀ n, P7362488566615932298.a n = A227037 n

theorem P7362488566615932298.correct : P7362488566615932298.Spec := by
  intro n
  simp only [A227037]

end A227037

/-! ## A227037.P3925095730725954512

`∑[A013999(n)]`
-/

namespace A227037.P3925095730725954512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227037.P3925095730725954512

namespace A227037

/-- `∑[A013999(n)]` -/
def P3925095730725954512.Spec : Prop :=
  ∀ n, P3925095730725954512.a n = A227037 n

end A227037

/-! ## A227037.P9268055694682234612

`∑[∑[A184185(n+1)]+1]`
-/

namespace A227037.P9268055694682234612
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184185 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227037.P9268055694682234612

namespace A227037

/-- `∑[∑[A184185(n+1)]+1]` -/
def P9268055694682234612.Spec : Prop :=
  ∀ n, P9268055694682234612.a n = A227037 n

end A227037

/-! ## A227037.P9301298953197784862

`∑[∑[A184185(A184985(n+1))]]`
-/

namespace A227037.P9301298953197784862
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184185 (A184985 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227037.P9301298953197784862

namespace A227037

/-- `∑[∑[A184185(A184985(n+1))]]` -/
def P9301298953197784862.Spec : Prop :=
  ∀ n, P9301298953197784862.a n = A227037 n

end A227037

/-! ## A227037.P605203599193176729

`∑[∑[A184185(A178334(n)+n)]]`
-/

namespace A227037.P605203599193176729
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184185 (A178334 n + (n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227037.P605203599193176729

namespace A227037

/-- `∑[∑[A184185(A178334(n)+n)]]` -/
def P605203599193176729.Spec : Prop :=
  ∀ n, P605203599193176729.a n = A227037 n

end A227037

/-! ## A227037.P8148728677569680722

`a(n-1)+A013999(n)+A000007(n)` with `a(0)=1`
-/

namespace A227037.P8148728677569680722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A013999 n + A000007 n)

end

end A227037.P8148728677569680722

namespace A227037

/-- `a(n-1)+A013999(n)+A000007(n)` -/
def P8148728677569680722.Spec : Prop :=
  ∀ n, P8148728677569680722.a n = A227037 n

end A227037

/-!
# A227038: Number of (weakly) unimodal compositions of n where all parts 1, 2, ..., m appear where m is the largest part.

The programs for A227038, there is no canonical definition to state claims against.
-/

/-! ## A227038.P2565398502569018110

`A107429(round(sqrt(n²+1)))-A332743(n)`
-/

namespace A227038.P2565398502569018110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107429 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat - A332743 n

end

end A227038.P2565398502569018110

/-! ## A227038.P8417182515582943051

`A003056(or(A002524(n), A113863(n)))`
-/

namespace A227038.P8417182515582943051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.lor (A002524 n) (A113863 n)).toNat

end

end A227038.P8417182515582943051

/-! ## A227038.P17136580296911508569

`A156077(A277579(2*n+3))%A260343(n+1)`
-/

namespace A227038.P17136580296911508569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156077 (A277579 (2 * n + 3)).toNat) (A260343 (n + 1))

end

end A227038.P17136580296911508569

/-!
# A227041: Triangle of numerators of harmonic mean of n and m, 1 <= m <= n.

The programs for A227041, there is no canonical definition to state claims against.
-/

/-! ## A227041.P16812051467625895163

`A000034(A221919(n+1))*A221918(n+1)`
-/

namespace A227041.P16812051467625895163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A221919 (n + 1)).toNat * A221918 (n + 1)

end

end A227041.P16812051467625895163

/-! ## A227041.P16757691460668949616

`A221918(round(sqrt(2*(n+1)))²+2*(n+1))`
-/

namespace A227041.P16757691460668949616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221918 (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 + (2 * (n + 1) : ℤ)).toNat

end

end A227041.P16757691460668949616

/-! ## A227041.P10865010419829888293

`2*A221918(n+1)/A221919(n+1)*A227042(n+1)`
-/

namespace A227041.P10865010419829888293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A221918 (n + 1) : ℚ) / (A221919 (n + 1) : ℚ) * (A227042 (n + 1) : ℚ))

end

end A227041.P10865010419829888293

/-! ## A227041.P4969871163031334433

`A392049(A084855(n+1))`
-/

namespace A227041.P4969871163031334433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392049 (A084855 (n + 1)).toNat

end

end A227041.P4969871163031334433

/-! ## A227041.P16118355976450229830

`A392049(A084854(n+1))`
-/

namespace A227041.P16118355976450229830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392049 (A084854 (n + 1)).toNat

end

end A227041.P16118355976450229830

/-!
# A227042: Triangle of denominators of harmonic mean of n and m, 1 <= m <= n.

The programs for A227042, there is no canonical definition to state claims against.
-/

/-! ## A227042.P8004021376605513420

`lcm(2, A221919(n+1))/2`
-/

namespace A227042.P8004021376605513420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A221919 (n + 1)) : ℚ) / 2

end

end A227042.P8004021376605513420

/-! ## A227042.P9071745366381787606

`A026741(A221919(n+1))`
-/

namespace A227042.P9071745366381787606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A221919 (n + 1)).toNat

end

end A227042.P9071745366381787606

/-! ## A227042.P4316652643304889627

`A221919(A185870(n+1))`
-/

namespace A227042.P4316652643304889627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221919 (A185870 (n + 1)).toNat

end

end A227042.P4316652643304889627

/-! ## A227042.P11215037129379323971

`A030065(2*A221919(n+1))`
-/

namespace A227042.P11215037129379323971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030065 (2 * A221919 (n + 1)).toNat

end

end A227042.P11215037129379323971

/-! ## A227042.P9276857179909962525

`A060819(2*A221919(n+1))`
-/

namespace A227042.P9276857179909962525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (2 * A221919 (n + 1)).toNat

end

end A227042.P9276857179909962525

/-! ## A227042.P9048677084995458276

`A060789(3*A221919(n+1))`
-/

namespace A227042.P9048677084995458276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060789 (3 * A221919 (n + 1)).toNat

end

end A227042.P9048677084995458276

/-! ## A227042.P433483203988105995

`A051724(6*A221919(n+1))`
-/

namespace A227042.P433483203988105995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (6 * A221919 (n + 1)).toNat

end

end A227042.P433483203988105995

/-! ## A227042.P16229340684596980447

`A106617(8*A221919(n+1))`
-/

namespace A227042.P16229340684596980447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106617 (8 * A221919 (n + 1)).toNat

end

end A227042.P16229340684596980447

/-! ## A227042.P1590483091265226173

`A106621(10*A221919(n+1))`
-/

namespace A227042.P1590483091265226173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106621 (10 * A221919 (n + 1)).toNat

end

end A227042.P1590483091265226173

/-! ## A227042.P3957070717586763876

`A001281(lcm(2, A221919(n+1)))`
-/

namespace A227042.P3957070717586763876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (Int.lcm 2 (A221919 (n + 1)))

end

end A227042.P3957070717586763876

/-!
# A227043: Numerator of harmonic mean H(n,2), n>= 0.

The programs for A227043, the canonical program `A227043.P6803516418857868885` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227043 has offset 0).

The definition of A227043 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A227043.P6803516418857868885

`4*n/gcd(n+2, 8)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A227043

/-- `4*n/gcd(n+2, 8)` -/
def P6803516418857868885.Spec : Prop :=
  ∀ n, P6803516418857868885.a n = (A227043 n : ℚ)

end A227043

/-! ## A227043.P3402214486907201348

`lcm(n+2, 4*n)/(n+2)`
-/

namespace A227043.P3402214486907201348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 2) (4 * n) : ℚ) / (n + 2 : ℚ)

end

end A227043.P3402214486907201348

namespace A227043

/-- `lcm(n+2, 4*n)/(n+2)` -/
def P3402214486907201348.Spec : Prop :=
  ∀ n, P3402214486907201348.a n = (A227043 n : ℚ)

end A227043

/-! ## A227043.P16996125450752861192

`A064680(n)*A247004(2*n)`
-/

namespace A227043.P16996125450752861192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 n * A247004 (2 * n)

end

end A227043.P16996125450752861192

namespace A227043

/-- `A064680(n)*A247004(2*n)` -/
def P16996125450752861192.Spec : Prop :=
  ∀ n, P16996125450752861192.a n = A227043 n

end A227043

/-! ## A227043.P17416568840744351118

`A026741(n)*A176895(A029579(n))`
-/

namespace A227043.P17416568840744351118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n * A176895 (A029579 n).toNat

end

end A227043.P17416568840744351118

namespace A227043

/-- `A026741(n)*A176895(A029579(n))` -/
def P17416568840744351118.Spec : Prop :=
  ∀ n, P17416568840744351118.a n = A227043 n

end A227043

/-! ## A227043.P18282076804241312728

`4*n/A109011(n+2)`
-/

namespace A227043.P18282076804241312728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * ((n : ℚ) / (A109011 (n + 2) : ℚ))

end

end A227043.P18282076804241312728

namespace A227043

/-- `4*n/A109011(n+2)` -/
def P18282076804241312728.Spec : Prop :=
  ∀ n, P18282076804241312728.a n = (A227043 n : ℚ)

end A227043

/-! ## A227043.P4328186930690051087

`n/2*A205383(n+2)`
-/

namespace A227043.P4328186930690051087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A205383 (n + 2) : ℚ)

end

end A227043.P4328186930690051087

namespace A227043

/-- `n/2*A205383(n+2)` -/
def P4328186930690051087.Spec : Prop :=
  ∀ n, P4328186930690051087.a n = (A227043 n : ℚ)

end A227043

/-! ## A227043.P15055394569326639030

`4*n/A143771(3*(n+7))`
-/

namespace A227043.P15055394569326639030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * n : ℚ) / (A143771 (3 * (n + 7)) : ℚ)

end

end A227043.P15055394569326639030

namespace A227043

/-- `4*n/A143771(3*(n+7))` -/
def P15055394569326639030.Spec : Prop :=
  ∀ n, P15055394569326639030.a n = (A227043 n : ℚ)

end A227043

/-! ## A227043.P14215061188220187853

`A188134(2*n)*A247004(2*n)`
-/

namespace A227043.P14215061188220187853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188134 (2 * n) * A247004 (2 * n)

end

end A227043.P14215061188220187853

namespace A227043

/-- `A188134(2*n)*A247004(2*n)` -/
def P14215061188220187853.Spec : Prop :=
  ∀ n, P14215061188220187853.a n = A227043 n

end A227043

/-! ## A227043.P5508246949464043475

`A026741(n*A205383(n+2))`
-/

namespace A227043.P5508246949464043475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 ((n : ℤ) * A205383 (n + 2)).toNat

end

end A227043.P5508246949464043475

namespace A227043

/-- `A026741(n*A205383(n+2))` -/
def P5508246949464043475.Spec : Prop :=
  ∀ n, P5508246949464043475.a n = A227043 n

end A227043

/-!
# A227044: a(n) = Sum_{k>=1} k^(2*n)/(2^k).

The programs for A227044, there is no canonical definition to state claims against.
-/

/-! ## A227044.P16876699378050795515

`A000629(2*n)`
-/

namespace A227044.P16876699378050795515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000629 (2 * n)

end

end A227044.P16876699378050795515

/-! ## A227044.P8622817546052394098

`record[A162312(∑[n])]`
-/

namespace A227044.P8622817546052394098
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162312 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227044.P8622817546052394098

/-! ## A227044.P16112249458143415156

`A002050(2*n)+1`
-/

namespace A227044.P16112249458143415156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002050 (2 * n) + 1

end

end A227044.P16112249458143415156

/-! ## A227044.P12269396733994182513

`A162312(n*Δ[n²])`
-/

namespace A227044.P12269396733994182513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162312 ((n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A227044.P12269396733994182513

/-! ## A227044.P17747901169657385239

`round((A249940(n)-1)/2)`
-/

namespace A227044.P17747901169657385239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A249940 n - 1 : ℚ) / 2)

end

end A227044.P17747901169657385239

/-!
# A227045: G.f.: 1/(1 - q/G(0)) where G(k) = 1 - q^(k+1) / (1 - q^(k+1) / G(k+1) ).

The programs for A227045, there is no canonical definition to state claims against.
-/

/-! ## A227045.P3752226166879894935

`A008615(A341803(n)+5)`
-/

namespace A227045.P3752226166879894935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A341803 n + 5).toNat

end

end A227045.P3752226166879894935

/-! ## A227045.P10635375281718046452

`A117910(A341803(n)+char[A299321(n+1)])`
-/

namespace A227045.P10635375281718046452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299321 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117910 (A341803 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A227045.P10635375281718046452

/-! ## A227045.P5967817845106381657

`A023190(A118398(n))`
-/

namespace A227045.P5967817845106381657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023190 (A118398 n).toNat

end

end A227045.P5967817845106381657

/-!
# A227047: Expansion of x^2*(1+x^2) / ( (x^2-x+1)*(-x^2-x+1)*(1+x+x^2) ).

The programs for A227047, the canonical program `A227047.P17445397745482103484` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227047 has offset 0).

The definition of A227047 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x^2+x^4)/(1-x-x^3-x^5-x^6))` (program `A227047.P17445397745482103484`, by `A227047.P17445397745482103484.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A227047.P17445397745482103484

`ogf((x^2+x^4)/(1-x-x^3-x^5-x^6))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A227047

/-- `ogf((x^2+x^4)/(1-x-x^3-x^5-x^6))` -/
def P17445397745482103484.Spec : Prop :=
  ∀ n, P17445397745482103484.a n = A227047 n

theorem P17445397745482103484.correct : P17445397745482103484.Spec := by
  intro n
  simp only [A227047]

end A227047

/-! ## A227047.P1372707561709308820

`a(n-1)+a(n-3)+a(n-5)+a(n-6)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1, a(4)=2, a(5)=3`
-/

namespace A227047.P1372707561709308820
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 1, 2, 3] fun n a =>
  a (n - 1) + a (n - 3) + a (n - 5) + a (n - 6)

end

end A227047.P1372707561709308820

namespace A227047

/-- `a(n-1)+a(n-3)+a(n-5)+a(n-6)` -/
def P1372707561709308820.Spec : Prop :=
  ∀ n, (P1372707561709308820.a n : ℤ) = A227047 n

end A227047

/-! ## A227047.P6678918363436783179

`A004695(n+1)-A004697(n)`
-/

namespace A227047.P6678918363436783179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004695 (n + 1) - A004697 n

end

end A227047.P6678918363436783179

namespace A227047

/-- `A004695(n+1)-A004697(n)` -/
def P6678918363436783179.Spec : Prop :=
  ∀ n, P6678918363436783179.a n = A227047 n

end A227047

/-! ## A227047.P10661387568905580632

`A000045(n+1)-A079962(n)`
-/

namespace A227047.P10661387568905580632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) - A079962 n

end

end A227047.P10661387568905580632

namespace A227047

/-- `A000045(n+1)-A079962(n)` -/
def P10661387568905580632.Spec : Prop :=
  ∀ n, P10661387568905580632.a n = A227047 n

end A227047

/-! ## A227047.P17111592174257041492

`A079977(2*n)-A079962(n)`
-/

namespace A227047.P17111592174257041492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079977 (2 * n) - A079962 n

end

end A227047.P17111592174257041492

namespace A227047

/-- `A079977(2*n)-A079962(n)` -/
def P17111592174257041492.Spec : Prop :=
  ∀ n, P17111592174257041492.a n = A227047 n

end A227047

/-! ## A227047.P14541115266152657018

`A174619(2*n+1)-A079962(n)`
-/

namespace A227047.P14541115266152657018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174619 (2 * n + 1) - A079962 n

end

end A227047.P14541115266152657018

namespace A227047

/-- `A174619(2*n+1)-A079962(n)` -/
def P14541115266152657018.Spec : Prop :=
  ∀ n, P14541115266152657018.a n = A227047 n

end A227047

/-! ## A227047.P16089611553735511821

`A000045(n)-(A079962(n)-Δ[A000045(n)])`
-/

namespace A227047.P16089611553735511821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - (A079962 n - (f1 (n + 1) - f1 n))

end

end A227047.P16089611553735511821

namespace A227047

/-- `A000045(n)-(A079962(n)-Δ[A000045(n)])` -/
def P16089611553735511821.Spec : Prop :=
  ∀ n, P16089611553735511821.a n = A227047 n

end A227047

/-! ## A227047.P12989218912958434676

`round(ϕ^n/4)`
-/

namespace A227047.P12989218912958434676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ n / 4)

end

end A227047.P12989218912958434676

namespace A227047

/-- `round(ϕ^n/4)` -/
def P12989218912958434676.Spec : Prop :=
  ∀ n, P12989218912958434676.a n = A227047 n

end A227047

/-! ## A227047.P16196150484760572119

`floor(∑[a(n-1)+a(n-2)]/4)` with `a(0)=3, a(1)=-1`
-/

namespace A227047.P16196150484760572119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, -1] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 4⌋

end

end A227047.P16196150484760572119

namespace A227047

/-- `floor(∑[a(n-1)+a(n-2)]/4)` -/
def P16196150484760572119.Spec : Prop :=
  ∀ n, P16196150484760572119.a n = A227047 n

end A227047

/-! ## A227047.P9941560014543860108

`floor(A001612(n)/4)`
-/

namespace A227047.P9941560014543860108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001612 n : ℚ) / 4⌋

end

end A227047.P9941560014543860108

namespace A227047

/-- `floor(A001612(n)/4)` -/
def P9941560014543860108.Spec : Prop :=
  ∀ n, P9941560014543860108.a n = A227047 n

end A227047

/-! ## A227047.P16861262809350821218

`floor((A000032(n)+1)/4)`
-/

namespace A227047.P16861262809350821218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000032 n + 1 : ℚ) / 4⌋

end

end A227047.P16861262809350821218

namespace A227047

/-- `floor((A000032(n)+1)/4)` -/
def P16861262809350821218.Spec : Prop :=
  ∀ n, P16861262809350821218.a n = A227047 n

end A227047

/-! ## A227047.P2749461002640165171

`floor((A000211(n)-1)/4)`
-/

namespace A227047.P2749461002640165171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000211 n - 1 : ℚ) / 4⌋

end

end A227047.P2749461002640165171

namespace A227047

/-- `floor((A000211(n)-1)/4)` -/
def P2749461002640165171.Spec : Prop :=
  ∀ n, P2749461002640165171.a n = A227047 n

end A227047

/-! ## A227047.P18321623048377702764

`floor((A118658(n)+A000045(n)+1)/4)`
-/

namespace A227047.P18321623048377702764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A118658 n + A000045 n + 1 : ℚ) / 4⌋

end

end A227047.P18321623048377702764

namespace A227047

/-- `floor((A118658(n)+A000045(n)+1)/4)` -/
def P18321623048377702764.Spec : Prop :=
  ∀ n, P18321623048377702764.a n = A227047 n

end A227047

/-! ## A227047.P9554678884298303824

`floor((A212804(n)+A001611(n+1))/4)`
-/

namespace A227047.P9554678884298303824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A212804 n + A001611 (n + 1) : ℚ) / 4⌋

end

end A227047.P9554678884298303824

namespace A227047

/-- `floor((A212804(n)+A001611(n+1))/4)` -/
def P9554678884298303824.Spec : Prop :=
  ∀ n, P9554678884298303824.a n = A227047 n

end A227047

/-! ## A227047.P16884737982678493644

`floor((A212804(n)+A000045(n+1)+1)/4)`
-/

namespace A227047.P16884737982678493644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A212804 n + A000045 (n + 1) + 1 : ℚ) / 4⌋

end

end A227047.P16884737982678493644

namespace A227047

/-- `floor((A212804(n)+A000045(n+1)+1)/4)` -/
def P16884737982678493644.Spec : Prop :=
  ∀ n, P16884737982678493644.a n = A227047 n

end A227047

/-! ## A227047.P14194748985811554283

`ceil((A000032(n)-2)/A000032(C(2, n+2))²)`
-/

namespace A227047.P14194748985811554283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000032 n - 2 : ℚ) / (A000032 (Nat.choose 2 (n + 2)) ^ 2 : ℚ)⌉

end

end A227047.P14194748985811554283

namespace A227047

/-- `ceil((A000032(n)-2)/A000032(C(2, n+2))²)` -/
def P14194748985811554283.Spec : Prop :=
  ∀ n, P14194748985811554283.a n = A227047 n

end A227047

/-! ## A227047.P9421253983065079273

`ceil((A008683(A155555(n+1))+A000032(n)-1)/4)`
-/

namespace A227047.P9421253983065079273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008683 (A155555 (n + 1)).toNat + (A000032 n - 1) : ℚ) / 4⌉

end

end A227047.P9421253983065079273

namespace A227047

/-- `ceil((A008683(A155555(n+1))+A000032(n)-1)/4)` -/
def P9421253983065079273.Spec : Prop :=
  ∀ n, P9421253983065079273.a n = A227047 n

end A227047

/-! ## A227047.P6549823831686440484

`Δ[ceil(A000032(n+1)/4)]`
-/

namespace A227047.P6549823831686440484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000032 (n + 1) : ℚ) / 4⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A227047.P6549823831686440484

namespace A227047

/-- `Δ[ceil(A000032(n+1)/4)]` -/
def P6549823831686440484.Spec : Prop :=
  ∀ n, P6549823831686440484.a n = A227047 n

end A227047

/-!
# A227050: Number of essentially different ways of arranging numbers 1 through 2n around a circle so that the sum and absolute difference of each pair of adjacent numbers are prime.

The programs for A227050, there is no canonical definition to state claims against.
-/

/-! ## A227050.P10366027902783532040

`A085859(A324070(n)+n²)`
-/

namespace A227050.P10366027902783532040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085859 (A324070 n + (n ^ 2 : ℤ)).toNat

end

end A227050.P10366027902783532040

/-! ## A227050.P2570087856416084205

`A347689(A209192(n+1)-(n+1))`
-/

namespace A227050.P2570087856416084205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347689 (A209192 (n + 1) - (n + 1 : ℤ)).toNat

end

end A227050.P2570087856416084205

/-! ## A227050.P7089145532578530970

`A047813(A000034(n)*A184954(n))`
-/

namespace A227050.P7089145532578530970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A000034 n * A184954 n).toNat

end

end A227050.P7089145532578530970

/-! ## A227050.P10232663499686797418

`A056933(A025591(n))%A099965(n)`
-/

namespace A227050.P10232663499686797418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056933 (A025591 n).toNat) (A099965 n)

end

end A227050.P10232663499686797418

/-! ## A227050.P6625273136840717550

`A000302(n)%A038568(A350354(n))`
-/

namespace A227050.P6625273136840717550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000302 n) (A038568 (A350354 n).toNat)

end

end A227050.P6625273136840717550

/-!
# A227052: a(n) = (n^2)! / (n^2-n)! = number of ways of placing n labeled balls into n^2 labeled boxes with at most one ball in each box.

The programs for A227052, the canonical program `A227052.P17317837948493663408` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227052 has offset 0).

The definition of A227052 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A227052.P17317837948493663408

`n²!/(n²-n)!`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A227052

/-- `n²!/(n²-n)!` -/
def P17317837948493663408.Spec : Prop :=
  ∀ n, P17317837948493663408.a n = (A227052 n : ℚ)

end A227052

/-! ## A227052.P296840404201655922

`n!*C(n², n)`
-/

namespace A227052.P296840404201655922
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * Nat.choose (n ^ 2) n

end

end A227052.P296840404201655922

namespace A227052

/-- `n!*C(n², n)` -/
def P296840404201655922.Spec : Prop :=
  ∀ n, (P296840404201655922.a n : ℤ) = A227052 n

end A227052

/-! ## A227052.P14584439823083426430

`n!*A014062(n)`
-/

namespace A227052.P14584439823083426430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A014062 n

end

end A227052.P14584439823083426430

namespace A227052

/-- `n!*A014062(n)` -/
def P14584439823083426430.Spec : Prop :=
  ∀ n, P14584439823083426430.a n = A227052 n

end A227052

/-! ## A227052.P7220337054347683329

`C(n², n)*A000142(n)`
-/

namespace A227052.P7220337054347683329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n ^ 2) n : ℤ) * A000142 n

end

end A227052.P7220337054347683329

namespace A227052

/-- `C(n², n)*A000142(n)` -/
def P7220337054347683329.Spec : Prop :=
  ∀ n, P7220337054347683329.a n = A227052 n

end A227052

/-! ## A227052.P13999598490323640802

`A000142(n)*A014062(n)`
-/

namespace A227052.P13999598490323640802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A014062 n

end

end A227052.P13999598490323640802

namespace A227052

/-- `A000142(n)*A014062(n)` -/
def P13999598490323640802.Spec : Prop :=
  ∀ n, P13999598490323640802.a n = A227052 n

end A227052

/-!
# A227053: a(n) = (n^3)! / (n^3-n)! = number of ways of placing n labeled balls into n^3 labeled boxes with at most one ball in each box.

The programs for A227053, there is no canonical definition to state claims against.
-/

/-! ## A227053.P13993864022695192128

`n!*C(n^3, n)`
-/

namespace A227053.P13993864022695192128
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * Nat.choose (n ^ 3) n

end

end A227053.P13993864022695192128

/-! ## A227053.P6508251995793239578

`C(n^3, n)*∏[ceil(abs(γ-n))]`
-/

namespace A227053.P6508251995793239578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n ^ 3) n : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A227053.P6508251995793239578

/-! ## A227053.P18222621877870111060

`abs(∏[or(-n, 2^n)])*C(n^3, n)`
-/

namespace A227053.P18222621877870111060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-(n : ℤ)) (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j| * (Nat.choose (n ^ 3) n : ℤ)

end

end A227053.P18222621877870111060

/-! ## A227053.P18331575048853352566

`n!*A107444(A028310(n))`
-/

namespace A227053.P18331575048853352566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A107444 (A028310 n).toNat

end

end A227053.P18331575048853352566

/-! ## A227053.P10560076825337057618

`A000142(n)*A107444(A028310(n))`
-/

namespace A227053.P10560076825337057618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A107444 (A028310 n).toNat

end

end A227053.P10560076825337057618

/-!
# A227054: a(n) = least triangular number t > 0 such that n*t is a triangular number, or 0 if no such t exists.

The programs for A227054, there is no canonical definition to state claims against.
-/

/-! ## A227054.P2954579554890627963

`gcd(A133698(n+1), A389657(n+1))`
-/

namespace A227054.P2954579554890627963
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A133698 (n + 1)) (A389657 (n + 1))

end

end A227054.P2954579554890627963

/-! ## A227054.P10632947540990996314

`A389657(n+1)+A209229(A389679(2*n+3))`
-/

namespace A227054.P10632947540990996314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389657 (n + 1) + A209229 (A389679 (2 * n + 3)).toNat

end

end A227054.P10632947540990996314

/-! ## A227054.P14292280415051340312

`A389657(n+1)+A389639(A326751(2*n+5))`
-/

namespace A227054.P14292280415051340312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389657 (n + 1) + A389639 (A326751 (2 * n + 5)).toNat

end

end A227054.P14292280415051340312

/-! ## A227054.P12528665379238418034

`A389657(n+1)+A010052(A389674(n+1))`
-/

namespace A227054.P12528665379238418034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389657 (n + 1) + A010052 (A389674 (n + 1)).toNat

end

end A227054.P12528665379238418034

/-! ## A227054.P17361324875901631312

`A389657(n+1)+A036987(A389676(3*n+2))`
-/

namespace A227054.P17361324875901631312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389657 (n + 1) + A036987 (A389676 (3 * n + 2)).toNat

end

end A227054.P17361324875901631312

/-!
# A227055: Number of n X n -2..2 arrays of 2X2 subblock diagonal sums minus antidiagonal sums for some (n+1)X(n+1) binary array with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A227055, there is no canonical definition to state claims against.
-/

/-! ## A227055.P12257759898726794334

`A227060(∑[4*n]+1)`
-/

namespace A227055.P12257759898726794334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227060 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A227055.P12257759898726794334

/-! ## A227055.P12416149845490374559

`A089006(n+2)-(2*(n+1)+1)`
-/

namespace A227055.P12416149845490374559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089006 (n + 2) - (2 * (n + 1) + 1 : ℤ)

end

end A227055.P12416149845490374559

/-! ## A227055.P9134436906436308251

`A227060(A001844(n))+char[8]`
-/

namespace A227055.P9134436906436308251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227060 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A227055.P9134436906436308251

/-! ## A227055.P14642962429323503005

`record[A003982(n)*A227060(n+1)]`
-/

namespace A227055.P14642962429323503005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A227060 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227055.P14642962429323503005

/-!
# A227056: Number of n X 2 -2..2 arrays of 2 X 2 subblock diagonal sums minus antidiagonal sums for some (n+1) X 3 binary array with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A227056, the canonical program `A227056.P12583909736503362194` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227056 has offset 1).

The definition of A227056 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227056.P12583909736503362194

`A184138(n+2)-(n+4)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A227056

/-- `A184138(n+2)-(n+4)` -/
def P12583909736503362194.Spec : Prop :=
  ∀ n, P12583909736503362194.a n = A227056 (n + 1)

theorem P12583909736503362194.correct : P12583909736503362194.Spec := by
  intro n
  simp only [A227056, Nat.add_sub_cancel]

end A227056

/-! ## A227056.P3971721756956735546

`A227060(∑[n+1]+2)`
-/

namespace A227056.P3971721756956735546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227060 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A227056.P3971721756956735546

namespace A227056

/-- `A227060(∑[n+1]+2)` -/
def P3971721756956735546.Spec : Prop :=
  ∀ n, P3971721756956735546.a n = A227056 (n + 1)

end A227056

/-! ## A227056.P6597817095577169735

`record[A227060(A133263(A008624(n)))]`
-/

namespace A227056.P6597817095577169735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227060 (A133263 (A008624 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227056.P6597817095577169735

namespace A227056

/-- `record[A227060(A133263(A008624(n)))]` -/
def P6597817095577169735.Spec : Prop :=
  ∀ n, P6597817095577169735.a n = A227056 (n + 1)

end A227056

/-! ## A227056.P6993545382915546299

`record[A227060(A133263(A123108(n)))]`
-/

namespace A227056.P6993545382915546299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227060 (A133263 (A123108 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227056.P6993545382915546299

namespace A227056

/-- `record[A227060(A133263(A123108(n)))]` -/
def P6993545382915546299.Spec : Prop :=
  ∀ n, P6993545382915546299.a n = A227056 (n + 1)

end A227056

/-! ## A227056.P8879472336021306121

`A227060(A000096(n+1))%A227057(n+1)`
-/

namespace A227056.P8879472336021306121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A227060 (A000096 (n + 1)).toNat) (A227057 (n + 1))

end

end A227056.P8879472336021306121

namespace A227056

/-- `A227060(A000096(n+1))%A227057(n+1)` -/
def P8879472336021306121.Spec : Prop :=
  ∀ n, P8879472336021306121.a n = A227056 (n + 1)

end A227056

/-!
# A227057: Number of nX3 -2..2 arrays of 2X2 subblock diagonal sums minus antidiagonal sums for some (n+1)X4 binary array with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A227057, there is no canonical definition to state claims against.
-/

/-! ## A227057.P6564994373554192595

`A184139(n+2)-(n+5)`
-/

namespace A227057.P6564994373554192595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184139 (n + 2) - (n + 5 : ℤ)

end

end A227057.P6564994373554192595

/-! ## A227057.P8242471901613431478

`A227060(∑[n+2]+4)`
-/

namespace A227057.P8242471901613431478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227060 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A227057.P8242471901613431478

/-! ## A227057.P16588750725901479053

`A227060(A167614(n+1))+A178798(n)`
-/

namespace A227057.P16588750725901479053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227060 (A167614 (n + 1)).toNat + A178798 n

end

end A227057.P16588750725901479053

/-! ## A227057.P16247746071379907596

`A014502(n)*A227060(A167614(n+1))`
-/

namespace A227057.P16247746071379907596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014502 n * A227060 (A167614 (n + 1)).toNat

end

end A227057.P16247746071379907596

/-! ## A227057.P71224643492420090

`lcm(A033999(n), A227060(A167614(n+1)))`
-/

namespace A227057.P71224643492420090
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A227060 (A167614 (n + 1)).toNat)

end

end A227057.P71224643492420090

/-!
# A227058: Number of nX4 -2..2 arrays of 2X2 subblock diagonal sums minus antidiagonal sums for some (n+1)X5 binary array with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A227058, there is no canonical definition to state claims against.
-/

/-! ## A227058.P2793818251934704763

`A184140(n+2)-(n+6)`
-/

namespace A227058.P2793818251934704763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184140 (n + 2) - (n + 6 : ℤ)

end

end A227058.P2793818251934704763

/-! ## A227058.P14242058614620732564

`A227060(A374004(n+1))`
-/

namespace A227058.P14242058614620732564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227060 (A374004 (n + 1)).toNat

end

end A227058.P14242058614620732564

/-! ## A227058.P5690754930929969325

`A227060(A141214(n)+7)`
-/

namespace A227058.P5690754930929969325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227060 (A141214 n + 7).toNat

end

end A227058.P5690754930929969325

/-! ## A227058.P15181278929849766015

`A227060(A052905(n)+9)`
-/

namespace A227058.P15181278929849766015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227060 (A052905 n + 9).toNat

end

end A227058.P15181278929849766015

/-! ## A227058.P5477119846473195155

`A227060(A055999(n)+10)`
-/

namespace A227058.P5477119846473195155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227060 (A055999 n + 10).toNat

end

end A227058.P5477119846473195155

/-!
# A227059: Number of nX5 -2..2 arrays of 2X2 subblock diagonal sums minus antidiagonal sums for some (n+1)X6 binary array with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A227059, there is no canonical definition to state claims against.
-/

/-! ## A227059.P8637800875338129419

`A184141(n+2)-(n+7)`
-/

namespace A227059.P8637800875338129419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184141 (n + 2) - (n + 7 : ℤ)

end

end A227059.P8637800875338129419

/-! ## A227059.P11263429075997870125

`A227060(A374005(n+1))`
-/

namespace A227059.P11263429075997870125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227060 (A374005 (n + 1)).toNat

end

end A227059.P11263429075997870125

/-! ## A227059.P5070480076628435713

`A227060(A167499(n+3))`
-/

namespace A227059.P5070480076628435713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227060 (A167499 (n + 3)).toNat

end

end A227059.P5070480076628435713

/-! ## A227059.P7229432221963648778

`A227060(A155212(n)+13)`
-/

namespace A227059.P7229432221963648778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227060 (A155212 n + 13).toNat

end

end A227059.P7229432221963648778

/-! ## A227059.P18179010867566815260

`A227060(A056000(n)+15)`
-/

namespace A227059.P18179010867566815260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227060 (A056000 n + 15).toNat

end

end A227059.P18179010867566815260

/-!
# A227060: T(n,k)=Number of nXk -2..2 arrays of 2X2 subblock diagonal sums minus antidiagonal sums for some (n+1)X(k+1) binary array with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A227060, there is no canonical definition to state claims against.
-/

/-! ## A227060.P10942519483432536986

`A233583(A232797(n+1)-(comp[∑[n]]-n))`
-/

namespace A227060.P10942519483432536986
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A232797 (n + 1) - ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ))).toNat

end

end A227060.P10942519483432536986

/-! ## A227060.P11299797194442361981

`A232797(n+1)-A357186(A001358(3*(n+1)))`
-/

namespace A227060.P11299797194442361981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232797 (n + 1) - A357186 (A001358 (3 * (n + 1))).toNat

end

end A227060.P11299797194442361981

/-!
# A227062: Numbers whose base-5 sum of digits is 5.

The programs for A227062, the canonical program `A227062.P17655102543388537746` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227062 has offset 1).

The definition of A227062 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 236 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227062.P17655102543388537746

`eq[5, A053824(n)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A227062

/-- `eq[5, A053824(n)]` -/
def P17655102543388537746.Spec : Prop :=
  ∀ n, (P17655102543388537746.a n : ℤ) = A227062 (n + 1)

theorem P17655102543388537746.correct : P17655102543388537746.Spec := by
  intro n
  simp only [A227062, Nat.add_sub_cancel]

end A227062

/-! ## A227062.P14224928122458024708

`eq[6, A173525(n+1)]`
-/

namespace A227062.P14224928122458024708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173525 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A227062.P14224928122458024708

namespace A227062

/-- `eq[6, A173525(n+1)]` -/
def P14224928122458024708.Spec : Prop :=
  ∀ n, (P14224928122458024708.a n : ℤ) = A227062 (n + 1)

end A227062

/-! ## A227062.P13814906445630681977

`eq[A008425(n), A053840(n)]`
-/

namespace A227062.P13814906445630681977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008425 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053840 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227062.P13814906445630681977

namespace A227062

/-- `eq[A008425(n), A053840(n)]` -/
def P13814906445630681977.Spec : Prop :=
  ∀ n, (P13814906445630681977.a n : ℤ) = A227062 (n + 1)

end A227062

/-! ## A227062.P15266296775440338633

`eq[A022067(n), A053840(n)]`
-/

namespace A227062.P15266296775440338633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022067 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053840 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227062.P15266296775440338633

namespace A227062

/-- `eq[A022067(n), A053840(n)]` -/
def P15266296775440338633.Spec : Prop :=
  ∀ n, (P15266296775440338633.a n : ℤ) = A227062 (n + 1)

end A227062

/-! ## A227062.P12926676173845568589

`eq[A022075(n), A053840(n)]`
-/

namespace A227062.P12926676173845568589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022075 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053840 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227062.P12926676173845568589

namespace A227062

/-- `eq[A022075(n), A053840(n)]` -/
def P12926676173845568589.Spec : Prop :=
  ∀ n, (P12926676173845568589.a n : ℤ) = A227062 (n + 1)

end A227062

/-! ## A227062.P3061945181671288689

`eq[A022083(n), A053840(n)]`
-/

namespace A227062.P3061945181671288689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022083 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053840 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227062.P3061945181671288689

namespace A227062

/-- `eq[A022083(n), A053840(n)]` -/
def P3061945181671288689.Spec : Prop :=
  ∀ n, (P3061945181671288689.a n : ℤ) = A227062 (n + 1)

end A227062

/-! ## A227062.P1805432166145082294

`eq[A053840(n), A143520(n+1)]`
-/

namespace A227062.P1805432166145082294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053840 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143520 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227062.P1805432166145082294

namespace A227062

/-- `eq[A053840(n), A143520(n+1)]` -/
def P1805432166145082294.Spec : Prop :=
  ∀ n, (P1805432166145082294.a n : ℤ) = A227062 (n + 1)

end A227062

/-! ## A227062.P2150155277831809474

`eq[1, A004092(A230865(n)-n)]`
-/

namespace A227062.P2150155277831809474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 (A230865 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A227062.P2150155277831809474

namespace A227062

/-- `eq[1, A004092(A230865(n)-n)]` -/
def P2150155277831809474.Spec : Prop :=
  ∀ n, (P2150155277831809474.a n : ℤ) = A227062 (n + 1)

end A227062

/-! ## A227062.P9490000923038425461

`eq[A230865(n), A287932(n+3)]`
-/

namespace A227062.P9490000923038425461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230865 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287932 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227062.P9490000923038425461

namespace A227062

/-- `eq[A230865(n), A287932(n+3)]` -/
def P9490000923038425461.Spec : Prop :=
  ∀ n, (P9490000923038425461.a n : ℤ) = A227062 (n + 1)

end A227062

/-! ## A227062.P1170795701205527133

`eq[A098181(A098181(n))+2, A230865(n)]`
-/

namespace A227062.P1170795701205527133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098181 (A098181 n).toNat + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230865 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227062.P1170795701205527133

namespace A227062

/-- `eq[A098181(A098181(n))+2, A230865(n)]` -/
def P1170795701205527133.Spec : Prop :=
  ∀ n, (P1170795701205527133.a n : ℤ) = A227062 (n + 1)

end A227062

/-! ## A227062.P17180239369662006038

`eq[A008706(n+1), A230865(A008706(n))]`
-/

namespace A227062.P17180239369662006038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230865 (A008706 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227062.P17180239369662006038

namespace A227062

/-- `eq[A008706(n+1), A230865(A008706(n))]` -/
def P17180239369662006038.Spec : Prop :=
  ∀ n, (P17180239369662006038.a n : ℤ) = A227062 (n + 1)

end A227062

/-!
# A227063: Prime in the middle of a list of 7 consecutive primes such that each of them is a member of a twin pair.

The programs for A227063, there is no canonical definition to state claims against.
-/

/-! ## A227063.P981217812159799104

`∩[A069467(n+1), A227323(n+1)]`
-/

namespace A227063.P981217812159799104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069467 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227063.P981217812159799104

/-!
# A227064: Primes prime(k) such that the gap prime(k-1) - prime(k-2) equals the gap prime(k+2) - prime(k+1).

The programs for A227064, the canonical program `A227064.P15989366321493760190` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227064 has offset 1).

The definition of A227064 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1080 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227064.P15989366321493760190

`A004139(A022886(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A227064

/-- `A004139(A022886(n+1))` -/
def P15989366321493760190.Spec : Prop :=
  ∀ n, P15989366321493760190.a n = A227064 (n + 1)

theorem P15989366321493760190.correct : P15989366321493760190.Spec := by
  intro n
  simp only [A227064, Nat.add_sub_cancel]

end A227064

/-! ## A227064.P18186460383493645993

`A065091(A022886(n+1)+1)`
-/

namespace A227064.P18186460383493645993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A022886 (n + 1) + 1).toNat

end

end A227064.P18186460383493645993

namespace A227064

/-- `A065091(A022886(n+1)+1)` -/
def P18186460383493645993.Spec : Prop :=
  ∀ n, P18186460383493645993.a n = A227064 (n + 1)

end A227064

/-! ## A227064.P3695069733850619751

`A000040(A022886(n+1)+2)`
-/

namespace A227064.P3695069733850619751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A022886 (n + 1) + 2).toNat

end

end A227064.P3695069733850619751

namespace A227064

/-- `A000040(A022886(n+1)+2)` -/
def P3695069733850619751.Spec : Prop :=
  ∀ n, P3695069733850619751.a n = A227064 (n + 1)

end A227064

/-! ## A227064.P2964345561857251015

`A006005(A022886(n+1)+2)`
-/

namespace A227064.P2964345561857251015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A022886 (n + 1) + 2).toNat

end

end A227064.P2964345561857251015

namespace A227064

/-- `A006005(A022886(n+1)+2)` -/
def P2964345561857251015.Spec : Prop :=
  ∀ n, P2964345561857251015.a n = A227064 (n + 1)

end A227064

/-! ## A227064.P16355407283469743648

`A008578(A022886(n+1)+3)`
-/

namespace A227064.P16355407283469743648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A022886 (n + 1) + 3).toNat

end

end A227064.P16355407283469743648

namespace A227064

/-- `A008578(A022886(n+1)+3)` -/
def P16355407283469743648.Spec : Prop :=
  ∀ n, P16355407283469743648.a n = A227064 (n + 1)

end A227064

/-! ## A227064.P10874629157996915367

`A045966(A022887(n+1))`
-/

namespace A227064.P10874629157996915367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045966 (A022887 (n + 1)).toNat

end

end A227064.P10874629157996915367

namespace A227064

/-- `A045966(A022887(n+1))` -/
def P10874629157996915367.Spec : Prop :=
  ∀ n, P10874629157996915367.a n = A227064 (n + 1)

end A227064

/-!
# A227065: The number of partitions of 2n into exactly two parts such that the smaller and larger parts are not both prime.

The programs for A227065, there is no canonical definition to state claims against.
-/

/-! ## A227065.P1126766439769977197

`n+1-A045917(n+1)`
-/

namespace A227065.P1126766439769977197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A045917 (n + 1)

end

end A227065.P1126766439769977197

/-! ## A227065.P10904303025494073248

`n+1-A068307(2*(n+2))`
-/

namespace A227065.P10904303025494073248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A068307 (2 * (n + 2))

end

end A227065.P10904303025494073248

/-! ## A227065.P13625570229573128167

`n+1-(A002375(n+1)+char[1])`
-/

namespace A227065.P13625570229573128167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (A002375 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A227065.P13625570229573128167

/-! ## A227065.P18127832039933915789

`n+1-A226237(n+1)/(2*(n+1))`
-/

namespace A227065.P18127832039933915789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) - (A226237 (n + 1) : ℚ) / (2 * (n + 1) : ℚ)

end

end A227065.P18127832039933915789

/-! ## A227065.P17994831138749287510

`n+1-(char[1]+round(A002372(n+1)/2))`
-/

namespace A227065.P17994831138749287510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + SequenceMachineLib.roundAway ((A002372 (n + 1) : ℚ) / 2))

end

end A227065.P17994831138749287510

/-! ## A227065.P10923664994034817390

`A024000(A045917(n+1))+n`
-/

namespace A227065.P10923664994034817390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A045917 (n + 1)).toNat + (n : ℤ)

end

end A227065.P10923664994034817390

/-! ## A227065.P2615968506977590649

`A334207(n+1)+A291564(n+1)`
-/

namespace A227065.P2615968506977590649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334207 (n + 1) + A291564 (n + 1)

end

end A227065.P2615968506977590649

/-! ## A227065.P4896270958482605318

`A014684(n+1)-A061357(n+1)`
-/

namespace A227065.P4896270958482605318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014684 (n + 1) - A061357 (n + 1)

end

end A227065.P4896270958482605318

/-! ## A227065.P16935505254283510863

`1-A110654(A035026(n+1))+n`
-/

namespace A227065.P16935505254283510863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A110654 (A035026 (n + 1)).toNat + (n : ℤ)

end

end A227065.P16935505254283510863

/-! ## A227065.P8979523369421547347

`1-A002375(A348776(n+1))+n`
-/

namespace A227065.P8979523369421547347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A002375 (A348776 (n + 1)).toNat + (n : ℤ)

end

end A227065.P8979523369421547347

/-! ## A227065.P4987313832589691097

`n+1-(A061357(n+1)+A010051(n+1))`
-/

namespace A227065.P4987313832589691097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (A061357 (n + 1) + A010051 (n + 1))

end

end A227065.P4987313832589691097

/-! ## A227065.P7622386198666558396

`A028310(n)+1-A028310(A002375(n+1))`
-/

namespace A227065.P7622386198666558396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + (1 - A028310 (A002375 (n + 1)).toNat)

end

end A227065.P7622386198666558396

/-! ## A227065.P7100471481116287652

`A163985(n+1)-(A190353(2*(n+1))+n)`
-/

namespace A227065.P7100471481116287652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163985 (n + 1) - (A190353 (2 * (n + 1)) + (n : ℤ))

end

end A227065.P7100471481116287652

/-! ## A227065.P14414560313495750781

`A008619(2*n-A035026(n+1))`
-/

namespace A227065.P14414560313495750781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 ((2 * n : ℤ) - A035026 (n + 1)).toNat

end

end A227065.P14414560313495750781

/-! ## A227065.P16691746979564106951

`A008619(n-A035026(n+1)+n)`
-/

namespace A227065.P16691746979564106951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 ((n : ℤ) - A035026 (n + 1) + (n : ℤ)).toNat

end

end A227065.P16691746979564106951

/-! ## A227065.P15059732086906023307

`A004526(A005408(n)+1-A035026(n+1))`
-/

namespace A227065.P15059732086906023307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A005408 n + (1 - A035026 (n + 1))).toNat

end

end A227065.P15059732086906023307

/-! ## A227065.P9708400424462771991

`A295629(2*(n+1))`
-/

namespace A227065.P9708400424462771991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295629 (2 * (n + 1))

end

end A227065.P9708400424462771991

/-! ## A227065.P8884019330056301942

`∑[1-Δ[A061358(2*n)]]`
-/

namespace A227065.P8884019330056301942
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227065.P8884019330056301942

/-! ## A227065.P10699815760863890944

`1-A061358(2*(n+1))+n`
-/

namespace A227065.P10699815760863890944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A061358 (2 * (n + 1)) + (n : ℤ)

end

end A227065.P10699815760863890944

/-! ## A227065.P17773240034638913693

`n+1-A083338(2*(n+1))`
-/

namespace A227065.P17773240034638913693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A083338 (2 * (n + 1))

end

end A227065.P17773240034638913693

/-!
# A227066: Number of primes between n and 2n inclusive equals the number of primes between 2n and 3n inclusive.

The programs for A227066, there is no canonical definition to state claims against.
-/

/-! ## A227066.P7128955268672444791

`eq[A035250(n+1), A289493(n+1)]+1`
-/

namespace A227066.P7128955268672444791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035250 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289493 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A227066.P7128955268672444791

/-! ## A227066.P6766301203227307947

`A020725(eq[A035250(n+1), A289493(n+1)])`
-/

namespace A227066.P6766301203227307947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035250 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289493 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A227066.P6766301203227307947

/-! ## A227066.P4268565458775767792

`A065475(eq[A035250(n+1), A289493(n+1)])`
-/

namespace A227066.P4268565458775767792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035250 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289493 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A227066.P4268565458775767792

/-! ## A227066.P9926023796254784104

`A153152(eq[A035250(n+1), A289493(n+1)])`
-/

namespace A227066.P9926023796254784104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035250 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289493 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A227066.P9926023796254784104

/-!
# A227068: Least number with exactly n divisors less than its square root.

The programs for A227068, there is no canonical definition to state claims against.
-/

/-! ## A227068.P6233617653155368643

`A046523(A331082(n+1))`
-/

namespace A227068.P6233617653155368643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A331082 (n + 1)).toNat

end

end A227068.P6233617653155368643

/-! ## A227068.P13776165591416112741

`A140635(A364585(n+1))`
-/

namespace A227068.P13776165591416112741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140635 (A364585 (n + 1)).toNat

end

end A227068.P13776165591416112741

/-! ## A227068.P9880488582751745340

`A355303(2*(A029966(n+1)+1))`
-/

namespace A227068.P9880488582751745340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355303 (2 * (A029966 (n + 1) + 1)).toNat

end

end A227068.P9880488582751745340

/-! ## A227068.P12325233003829778180

`A355303(2*(n+1))%A103363(n+1)`
-/

namespace A227068.P12325233003829778180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A355303 (2 * (n + 1))) (A103363 (n + 1))

end

end A227068.P12325233003829778180

/-! ## A227068.P13298701194197664071

`A355303(2*n+2)%A383518(n+1)`
-/

namespace A227068.P13298701194197664071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A355303 (2 * n + 2)) (A383518 (n + 1))

end

end A227068.P13298701194197664071

/-!
# A227070: Powers n such that the set s(n) = {k > 0 such that k^n ends with k} does not occur for smaller n.

The programs for A227070, there is no canonical definition to state claims against.
-/

/-! ## A227070.P11137464821795450631

`∑[A164768(round(acot(n)+n)-1)]`
-/

namespace A227070.P11137464821795450631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164768 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227070.P11137464821795450631

/-! ## A227070.P754444914208418287

`A164768(n-1)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A227070.P754444914208418287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A164768 (n - 1) + a (n - 1)

end

end A227070.P754444914208418287

/-! ## A227070.P6223579571312005164

`record[A103391(A003592(n+1))]`
-/

namespace A227070.P6223579571312005164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (A003592 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227070.P6223579571312005164

/-! ## A227070.P3770938979930846642

`record[A103391(A337801(n+1))]`
-/

namespace A227070.P3770938979930846642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (A337801 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227070.P3770938979930846642

/-! ## A227070.P8181088781172166053

`eq[1, A077196(A008706(n))]+1`
-/

namespace A227070.P8181088781172166053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077196 (A008706 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A227070.P8181088781172166053

/-!
# A227071: Let s(m) = the set of k > 0 such that k^m ends with k. Then a(n) = least m such that s(m) = s(n).

The programs for A227071, the canonical program `A227071.P9639457389400369433` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227071 has offset 1).

The definition of A227071 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227071.P9639457389400369433

`A132741(A028310(n))+A057427(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A227071

/-- `A132741(A028310(n))+A057427(n)` -/
def P9639457389400369433.Spec : Prop :=
  ∀ n, P9639457389400369433.a n = A227071 (n + 1)

theorem P9639457389400369433.correct : P9639457389400369433.Spec := by
  intro n
  simp only [A227071, Nat.add_sub_cancel]

end A227071

/-! ## A227071.P2817373111312055503

`A132741(n)+a(A051626(A006519(n)))` with `a(0)=1`
-/

namespace A227071.P2817373111312055503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A132741 n + a (A051626 (A006519 n).toNat).toNat

end

end A227071.P2817373111312055503

namespace A227071

/-- `A132741(n)+a(A051626(A006519(n)))` -/
def P2817373111312055503.Spec : Prop :=
  ∀ n, P2817373111312055503.a n = A227071 (n + 1)

end A227071

/-! ## A227071.P17272959787551460699

`A132741(n)+a(A007814(A132740(n)))` with `a(0)=1`
-/

namespace A227071.P17272959787551460699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A132741 n + a (A007814 (A132740 n).toNat).toNat

end

end A227071.P17272959787551460699

namespace A227071

/-- `A132741(n)+a(A007814(A132740(n)))` -/
def P17272959787551460699.Spec : Prop :=
  ∀ n, P17272959787551460699.a n = A227071 (n + 1)

end A227071

/-! ## A227071.P13358806301709513554

`n/A132740(A257088(n))+1`
-/

namespace A227071.P13358806301709513554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A132740 (A257088 n).toNat : ℚ) + 1

end

end A227071.P13358806301709513554

namespace A227071

/-- `n/A132740(A257088(n))+1` -/
def P13358806301709513554.Spec : Prop :=
  ∀ n, P13358806301709513554.a n = (A227071 (n + 1) : ℚ)

end A227071

/-! ## A227071.P8372576343235643855

`n/A132740(A004277(n))+1`
-/

namespace A227071.P8372576343235643855
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A132740 (A004277 n).toNat : ℚ) + 1

end

end A227071.P8372576343235643855

namespace A227071

/-- `n/A132740(A004277(n))+1` -/
def P8372576343235643855.Spec : Prop :=
  ∀ n, P8372576343235643855.a n = (A227071 (n + 1) : ℚ)

end A227071

/-! ## A227071.P8200816285949800946

`A132741(n)+a(A244612(A257668(n)))` with `a(0)=1`
-/

namespace A227071.P8200816285949800946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A132741 n + a (A244612 (A257668 n).toNat).toNat

end

end A227071.P8200816285949800946

namespace A227071

/-- `A132741(n)+a(A244612(A257668(n)))` -/
def P8200816285949800946.Spec : Prop :=
  ∀ n, P8200816285949800946.a n = A227071 (n + 1)

end A227071

/-! ## A227071.P17524481232025699734

`n/A132740(A008574(n))+1`
-/

namespace A227071.P17524481232025699734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A132740 (A008574 n).toNat : ℚ) + 1

end

end A227071.P17524481232025699734

namespace A227071

/-- `n/A132740(A008574(n))+1` -/
def P17524481232025699734.Spec : Prop :=
  ∀ n, P17524481232025699734.a n = (A227071 (n + 1) : ℚ)

end A227071

/-! ## A227071.P14951743496475441269

`n/A132740(A008706(n))+1`
-/

namespace A227071.P14951743496475441269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A132740 (A008706 n).toNat : ℚ) + 1

end

end A227071.P14951743496475441269

namespace A227071

/-- `n/A132740(A008706(n))+1` -/
def P14951743496475441269.Spec : Prop :=
  ∀ n, P14951743496475441269.a n = (A227071 (n + 1) : ℚ)

end A227071

/-! ## A227071.P17729869074047675818

`n/A132740(A234275(n))+1`
-/

namespace A227071.P17729869074047675818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A132740 (A234275 n).toNat : ℚ) + 1

end

end A227071.P17729869074047675818

namespace A227071

/-- `n/A132740(A234275(n))+1` -/
def P17729869074047675818.Spec : Prop :=
  ∀ n, P17729869074047675818.a n = (A227071 (n + 1) : ℚ)

end A227071

/-! ## A227071.P1834325521306440334

`gcd(n, A004647(n))%(n+1)+1`
-/

namespace A227071.P1834325521306440334
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A004647 n) % (n + 1) + 1

end

end A227071.P1834325521306440334

namespace A227071

/-- `gcd(n, A004647(n))%(n+1)+1` -/
def P1834325521306440334.Spec : Prop :=
  ∀ n, (P1834325521306440334.a n : ℤ) = A227071 (n + 1)

end A227071

/-! ## A227071.P3122569426294724779

`gcd(n, A048355(n+1))+1`
-/

namespace A227071.P3122569426294724779
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A048355 (n + 1)) + 1

end

end A227071.P3122569426294724779

namespace A227071

/-- `gcd(n, A048355(n+1))+1` -/
def P3122569426294724779.Spec : Prop :=
  ∀ n, (P3122569426294724779.a n : ℤ) = A227071 (n + 1)

end A227071

/-! ## A227071.P5217095759151495884

`floor(gcd(4*n, 2*A011557(n))/4)+1`
-/

namespace A227071.P5217095759151495884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.gcd (4 * n : ℤ) (2 * A011557 n) : ℚ) / 4⌋ + 1

end

end A227071.P5217095759151495884

namespace A227071

/-- `floor(gcd(4*n, 2*A011557(n))/4)+1` -/
def P5217095759151495884.Spec : Prop :=
  ∀ n, P5217095759151495884.a n = A227071 (n + 1)

end A227071

/-!
# A227072: Positive numbers with nondecreasing digits such that sum of cubes of the digits equals the square of the sum of the digits.

The programs for A227072, there is no canonical definition to state claims against.
-/

/-! ## A227072.P11572923679724014147

`∩[A227073(n+1), A179239(n)]`
-/

namespace A227072.P11572923679724014147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179239 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227072.P11572923679724014147

/-! ## A227072.P6656099588290703276

`∩[A105945(n+1), A227073(n+1)]`
-/

namespace A227072.P6656099588290703276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227072.P6656099588290703276

/-! ## A227072.P2714093172477412158

`∩[A105945(n+1), A368550(n+1)]`
-/

namespace A227072.P2714093172477412158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227072.P2714093172477412158

/-!
# A227073: Positive numbers without the digit 0 such that sum of cubes of the digits equals the square of the sum of the digits.

The programs for A227073, there is no canonical definition to state claims against.
-/

/-! ## A227073.P6280847379390650648

`filter[A368550(n+1), A168046(#)]`
-/

namespace A227073.P6280847379390650648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A227073.P6280847379390650648

/-! ## A227073.P4094059002790752046

`∩[A001729(n+1), A368550(n+1)]`
-/

namespace A227073.P4094059002790752046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227073.P4094059002790752046

/-! ## A227073.P6579182701506682410

`∩[A039116(n+1), A368550(n+1)]`
-/

namespace A227073.P6579182701506682410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227073.P6579182701506682410

/-! ## A227073.P845303936130260288

`∩[A039117(n+1), A368550(n+1)]`
-/

namespace A227073.P845303936130260288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227073.P845303936130260288

/-! ## A227073.P10858396299631095292

`∩[A039118(n+1), A368550(n+1)]`
-/

namespace A227073.P10858396299631095292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227073.P10858396299631095292

/-!
# A227074: A triangle formed like Pascal's triangle, but with 4^n on the borders instead of 1.

The programs for A227074, there is no canonical definition to state claims against.
-/

/-! ## A227074.P4111460260919833401

`A110545(A257622(n))`
-/

namespace A227074.P4111460260919833401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110545 (A257622 n).toNat

end

end A227074.P4111460260919833401

/-! ## A227074.P4725882296578608882

`A090881(A317644(n))`
-/

namespace A227074.P4725882296578608882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090881 (A317644 n).toNat

end

end A227074.P4725882296578608882

/-! ## A227074.P2205276376242062128

`A100762(11*A257622(n))`
-/

namespace A227074.P2205276376242062128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100762 (11 * A257622 n).toNat

end

end A227074.P2205276376242062128

/-! ## A227074.P15505017817405839726

`gcd(∏[A257605(n+2)], A257622(n))`
-/

namespace A227074.P15505017817405839726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257605 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∏ j ∈ Finset.range (n + 1), f1 j) (A257622 n)

end

end A227074.P15505017817405839726

/-! ## A227074.P5913645596102483287

`A038208(n)^A078689(A155495(n))`
-/

namespace A227074.P5913645596102483287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038208 n : ℚ) ^ (A078689 (A155495 n).toNat : ℤ)

end

end A227074.P5913645596102483287

/-!
# A227075: A triangle formed like Pascal's triangle, but with 3^n on the borders instead of 1.

The programs for A227075, there is no canonical definition to state claims against.
-/

/-! ## A227075.P8462658928680691511

`A090880(A317644(n))`
-/

namespace A227075.P8462658928680691511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090880 (A317644 n).toNat

end

end A227075.P8462658928680691511

/-! ## A227075.P16838258053386226103

`A211400(n+1)*A339903(A223263(n+1))`
-/

namespace A227075.P16838258053386226103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211400 (n + 1) * A339903 (A223263 (n + 1)).toNat

end

end A227075.P16838258053386226103

/-! ## A227075.P2216622261422693474

`A064614(A317764(n+1)^A333807(n+1))`
-/

namespace A227075.P2216622261422693474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064614 (SequenceMachineLib.roundAway ((A317764 (n + 1) : ℚ) ^ (A333807 (n + 1) : ℤ))).toNat

end

end A227075.P2216622261422693474

/-!
# A227076: A triangle formed like Pascal's triangle, but with 5^n on the borders instead of 1.

The programs for A227076, there is no canonical definition to state claims against.
-/

/-! ## A227076.P14332705905241930290

`A090882(A317644(n))`
-/

namespace A227076.P14332705905241930290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090882 (A317644 n).toNat

end

end A227076.P14332705905241930290

/-! ## A227076.P2586044986019779982

`∏{e}[A212709(n+1), 5*#]`
-/

namespace A227076.P2586044986019779982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212709 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, 5 * Nat.factorization (f1 n).natAbs p

end

end A227076.P2586044986019779982

/-! ## A227076.P550043427489387437

`A097754(A201496(n+1))`
-/

namespace A227076.P550043427489387437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097754 (A201496 (n + 1)).toNat

end

end A227076.P550043427489387437

/-!
# A227077: y solutions to the Diophantine equation 2*x^2*(x^2 - 1) = 3*(y^2 - 1).

The programs for A227077, there is no canonical definition to state claims against.
-/

/-! ## A227077.P12970626202444768242

`A080806(comp[or(4, n)]+1)`
-/

namespace A227077.P12970626202444768242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 4 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080806 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A227077.P12970626202444768242

/-!
# A227078: The Ramanujan-Nagell squares: A038198(n)^2.

The programs for A227078, there is no canonical definition to state claims against.
-/

/-! ## A227078.P8233621341108309726

`A038198(n+1)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A227078.P8233621341108309726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038198 (n + 1) ^ 2

end

end A227078.P8233621341108309726

/-!
# A227079: Solutions n to the Diophantine equation: n = (2*x^2 - 1)^2 = (6*y^2 - 5).

The programs for A227079, there is no canonical definition to state claims against.
-/

/-! ## A227079.P13272377798911792776

`A005897(A227077(n))-7`
-/

namespace A227079.P13272377798911792776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005897 (A227077 n).toNat - 7

end

end A227079.P13272377798911792776

/-!
# A227080: Numbers whose base-6 sum of digits is 6.

The programs for A227080, the canonical program `A227080.P1696635524758973866` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227080 has offset 1).

The definition of A227080 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 296 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227080.P1696635524758973866

`eq[6, A053827(n)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A227080

/-- `eq[6, A053827(n)]` -/
def P1696635524758973866.Spec : Prop :=
  ∀ n, (P1696635524758973866.a n : ℤ) = A227080 (n + 1)

theorem P1696635524758973866.correct : P1696635524758973866.Spec := by
  intro n
  simp only [A227080, Nat.add_sub_cancel]

end A227080

/-! ## A227080.P17421122673031109207

`eq[7, A173526(n+1)]`
-/

namespace A227080.P17421122673031109207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173526 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A227080.P17421122673031109207

namespace A227080

/-- `eq[7, A173526(n+1)]` -/
def P17421122673031109207.Spec : Prop :=
  ∀ n, (P17421122673031109207.a n : ℤ) = A227080 (n + 1)

end A227080

/-! ## A227080.P5674383725657727644

`eq[6, n-5*A054895(n)]`
-/

namespace A227080.P5674383725657727644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 5 * A054895 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A227080.P5674383725657727644

namespace A227080

/-- `eq[6, n-5*A054895(n)]` -/
def P5674383725657727644.Spec : Prop :=
  ∀ n, (P5674383725657727644.a n : ℤ) = A227080 (n + 1)

theorem P5674383725657727644.correct : P5674383725657727644.Spec := by
  intro n
  simp only [A227080, Nat.add_sub_cancel, A227080.P5674383725657727644.f1, A227080.P5674383725657727644.f2, A227080.P5674383725657727644.a, A227080.P1696635524758973866.f1, A227080.P1696635524758973866.f2, A227080.P1696635524758973866.a, A053827, A053827.P15972254016312287163.a, A054895, A054895.P15754295407001771698.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A227080

/-! ## A227080.P4418811201239706235

`eq[6, A053830(A037472(n))]`
-/

namespace A227080.P4418811201239706235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 (A037472 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A227080.P4418811201239706235

namespace A227080

/-- `eq[6, A053830(A037472(n))]` -/
def P4418811201239706235.Spec : Prop :=
  ∀ n, (P4418811201239706235.a n : ℤ) = A227080 (n + 1)

end A227080

/-! ## A227080.P8345792408654043978

`eq[6, A053828(A020657(n+1))]`
-/

namespace A227080.P8345792408654043978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 (A020657 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A227080.P8345792408654043978

namespace A227080

/-- `eq[6, A053828(A020657(n+1))]` -/
def P8345792408654043978.Spec : Prop :=
  ∀ n, (P8345792408654043978.a n : ℤ) = A227080 (n + 1)

end A227080

/-! ## A227080.P4174413408430248327

`eq[A023916(n), A053841(n)]`
-/

namespace A227080.P4174413408430248327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023916 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053841 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227080.P4174413408430248327

namespace A227080

/-- `eq[A023916(n), A053841(n)]` -/
def P4174413408430248327.Spec : Prop :=
  ∀ n, (P4174413408430248327.a n : ℤ) = A227080 (n + 1)

end A227080

/-! ## A227080.P11178172216914622319

`eq[6, A053829(A037471(n))]`
-/

namespace A227080.P11178172216914622319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 (A037471 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A227080.P11178172216914622319

namespace A227080

/-- `eq[6, A053829(A037471(n))]` -/
def P11178172216914622319.Spec : Prop :=
  ∀ n, (P11178172216914622319.a n : ℤ) = A227080 (n + 1)

end A227080

/-! ## A227080.P15953562696100435401

`eq[6, A326746(A007092(n))]`
-/

namespace A227080.P15953562696100435401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326746 (A007092 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A227080.P15953562696100435401

namespace A227080

/-- `eq[6, A326746(A007092(n))]` -/
def P15953562696100435401.Spec : Prop :=
  ∀ n, (P15953562696100435401.a n : ℤ) = A227080 (n + 1)

end A227080

/-!
# A227081: Row sums of A124576.

The programs for A227081, there is no canonical definition to state claims against.
-/

/-! ## A227081.P891960482412248141

`(3*6^n)%A050007(6^n+1-2^n)`
-/

namespace A227081.P891960482412248141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 * 6 ^ n : ℤ) (A050007 ((6 ^ n : ℤ) + (1 - (2 ^ n : ℤ))).toNat)

end

end A227081.P891960482412248141

/-! ## A227081.P11299348754352274957

`A055035(A210346(n+1)+A027750(n+1))`
-/

namespace A227081.P11299348754352274957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055035 (A210346 (n + 1) + A027750 (n + 1)).toNat

end

end A227081.P11299348754352274957

/-!
# A227082: a(n) is the least positive integer not yet in the sequence coprime to a(d) for every proper divisor d of n.

The programs for A227082, there is no canonical definition to state claims against.
-/

/-! ## A227082.P5065868824999062629

`A227142(∑[A322297(A183927(n+1))])`
-/

namespace A227082.P5065868824999062629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322297 (A183927 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227142 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A227082.P5065868824999062629

/-! ## A227082.P17813107108019727123

`A090106(A227142(n+1))`
-/

namespace A227082.P17813107108019727123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090106 (A227142 (n + 1)).toNat

end

end A227082.P17813107108019727123

/-! ## A227082.P14254870324926714987

`A227142(∑[A331039(n)!²])`
-/

namespace A227082.P14254870324926714987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A331039 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227142 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A227082.P14254870324926714987

/-! ## A227082.P1549714895214655501

`A087709(3*A227142(n+1))`
-/

namespace A227082.P1549714895214655501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087709 (3 * A227142 (n + 1)).toNat

end

end A227082.P1549714895214655501

/-! ## A227082.P13126425734340990192

`A227142(n+1)^A331039(n)!`
-/

namespace A227082.P13126425734340990192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227142 (n + 1) ^ Nat.factorial (A331039 n).toNat

end

end A227082.P13126425734340990192

/-!
# A227083: Number of ways to write n as a + b/2 with a and b terms of the sequence A008407.

The programs for A227083, there is no canonical definition to state claims against.
-/

/-! ## A227083.P6393285842242939738

`A275806(Δ[A000016(n)]*A000196(n))`
-/

namespace A227083.P6393285842242939738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000016 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275806 ((f1 (n + 1) - f1 n) * A000196 n).toNat

end

end A227083.P6393285842242939738

/-! ## A227083.P16293632252091526301

`A275806(A027379(n)²)-1`
-/

namespace A227083.P16293632252091526301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275806 (A027379 n ^ 2).toNat - 1

end

end A227083.P16293632252091526301

/-! ## A227083.P7213957768243102230

`A275806(Δ[A016777(A000016(n))])`
-/

namespace A227083.P7213957768243102230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A000016 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275806 (f1 (n + 1) - f1 n).toNat

end

end A227083.P7213957768243102230

/-! ## A227083.P14101150952625071973

`A275806(Δ[A016789(A000016(n))])`
-/

namespace A227083.P14101150952625071973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A000016 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275806 (f1 (n + 1) - f1 n).toNat

end

end A227083.P14101150952625071973

/-! ## A227083.P5448245107848399246

`A303975(A383143(n)+A342915(n+1))`
-/

namespace A227083.P5448245107848399246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303975 (A383143 n + A342915 (n + 1)).toNat

end

end A227083.P5448245107848399246

/-!
# A227084: Number of n X n binary arrays indicating whether each 2X2 subblock of a larger binary array has lexicographically increasing rows and columns, for some larger (n+1)X(n+1) binary array with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A227084, there is no canonical definition to state claims against.
-/

/-! ## A227084.P14473005764608716363

`A227089(∑[4*n]+1)`
-/

namespace A227084.P14473005764608716363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227089 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A227084.P14473005764608716363

/-! ## A227084.P18296063212447534848

`record[A227089(A330613(n+1))]`
-/

namespace A227084.P18296063212447534848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227089 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227084.P18296063212447534848

/-! ## A227084.P10470425732301730103

`A227089(A001844(n))+char[19]`
-/

namespace A227084.P10470425732301730103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227089 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A227084.P10470425732301730103

/-! ## A227084.P1323725489788086177

`record[A227089(A292268(and(n, -(n+2))))]`
-/

namespace A227084.P1323725489788086177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227089 (A292268 (Int.land (n : ℤ) (-(n + 2 : ℤ))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227084.P1323725489788086177

/-!
# A227085: Number of n X 2 binary arrays indicating whether each 2 X 2 subblock of a larger binary array has lexicographically increasing rows and columns, for some larger (n+1) X 3 binary array with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A227085, the canonical program `A227085.P11458989496876852287` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227085 has offset 1).

The definition of A227085 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227085.P11458989496876852287

`∑[∑[∑[∑[n]+1]+2]]+1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A227085

/-- `∑[∑[∑[∑[n]+1]+2]]+1` -/
def P11458989496876852287.Spec : Prop :=
  ∀ n, (P11458989496876852287.a n : ℤ) = A227085 (n + 1)

theorem P11458989496876852287.correct : P11458989496876852287.Spec := by
  intro n
  simp only [A227085, Nat.add_sub_cancel]

end A227085

/-! ## A227085.P5778773501056797273

`abs(A000217(n)+Δ[A055796(n)])`
-/

namespace A227085.P5778773501056797273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055796 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000217 n + (f1 (n + 1) - f1 n)|

end

end A227085.P5778773501056797273

namespace A227085

/-- `abs(A000217(n)+Δ[A055796(n)])` -/
def P5778773501056797273.Spec : Prop :=
  ∀ n, P5778773501056797273.a n = A227085 (n + 1)

end A227085

/-! ## A227085.P17231818150592110386

`Δ[A055796(n)-(n-A004006(n))]`
-/

namespace A227085.P17231818150592110386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055796 n - ((n : ℤ) - A004006 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A227085.P17231818150592110386

namespace A227085

/-- `Δ[A055796(n)-(n-A004006(n))]` -/
def P17231818150592110386.Spec : Prop :=
  ∀ n, P17231818150592110386.a n = A227085 (n + 1)

end A227085

/-! ## A227085.P18268039149053563259

`Δ[A000330(n)+∑[A027928(n+3)]]`
-/

namespace A227085.P18268039149053563259
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027928 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A227085.P18268039149053563259

namespace A227085

/-- `Δ[A000330(n)+∑[A027928(n+3)]]` -/
def P18268039149053563259.Spec : Prop :=
  ∀ n, P18268039149053563259.a n = A227085 (n + 1)

end A227085

/-! ## A227085.P213105937819741871

`∑[A027927(n+3)+A004280(n+2)]`
-/

namespace A227085.P213105937819741871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027927 (n + 3) + A004280 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227085.P213105937819741871

namespace A227085

/-- `∑[A027927(n+3)+A004280(n+2)]` -/
def P213105937819741871.Spec : Prop :=
  ∀ n, P213105937819741871.a n = A227085 (n + 1)

end A227085

/-! ## A227085.P16786344098510040950

`(A000217(n)+Δ[A055796(n)])%A267169(n+1)`
-/

namespace A227085.P16786344098510040950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055796 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 n + (f1 (n + 1) - f1 n)) (A267169 (n + 1))

end

end A227085.P16786344098510040950

namespace A227085

/-- `(A000217(n)+Δ[A055796(n)])%A267169(n+1)` -/
def P16786344098510040950.Spec : Prop :=
  ∀ n, P16786344098510040950.a n = A227085 (n + 1)

end A227085

/-!
# A227086: Number of n X 3 binary arrays indicating whether each 2 X 2 subblock of a larger binary array has lexicographically increasing rows and columns, for some larger (n+1) X 4 binary array with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A227086, there is no canonical definition to state claims against.
-/

/-! ## A227086.P4882477816059861734

`A227089(∑[n+2]+4)`
-/

namespace A227086.P4882477816059861734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227089 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A227086.P4882477816059861734

/-! ## A227086.P4305561278519510679

`A227089(A167614(n+1))+char[17]`
-/

namespace A227086.P4305561278519510679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227089 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A227086.P4305561278519510679

/-! ## A227086.P15007358785710944343

`A016240(n)*A227089(A167614(n+1))`
-/

namespace A227086.P15007358785710944343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016240 n * A227089 (A167614 (n + 1)).toNat

end

end A227086.P15007358785710944343

/-! ## A227086.P16718777945654008753

`A227089(A167614(n+1))%A016964(n)`
-/

namespace A227086.P16718777945654008753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A227089 (A167614 (n + 1)).toNat) (A016964 n)

end

end A227086.P16718777945654008753

/-! ## A227086.P10929905260339531162

`or(A015070(n), A227089(A167614(n+1)))`
-/

namespace A227086.P10929905260339531162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A015070 n) (A227089 (A167614 (n + 1)).toNat)

end

end A227086.P10929905260339531162

/-!
# A227087: Number of nX4 binary arrays indicating whether each 2X2 subblock of a larger binary array has lexicographically increasing rows and columns, for some larger (n+1)X5 binary array with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A227087, there is no canonical definition to state claims against.
-/

/-! ## A227087.P11559081516020513986

`A227089(∑[n+3]+7)`
-/

namespace A227087.P11559081516020513986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227089 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A227087.P11559081516020513986

/-!
# A227088: Number of nX5 binary arrays indicating whether each 2X2 subblock of a larger binary array has lexicographically increasing rows and columns, for some larger (n+1)X6 binary array with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A227088, there is no canonical definition to state claims against.
-/

/-! ## A227088.P10634206391523071656

`A227089(A374005(n+1))`
-/

namespace A227088.P10634206391523071656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227089 (A374005 (n + 1)).toNat

end

end A227088.P10634206391523071656

/-! ## A227088.P14984462621805090674

`A227089(A167499(n+3))`
-/

namespace A227088.P14984462621805090674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227089 (A167499 (n + 3)).toNat

end

end A227088.P14984462621805090674

/-! ## A227088.P9122773894443311401

`A227089(A155212(n)+13)`
-/

namespace A227088.P9122773894443311401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227089 (A155212 n + 13).toNat

end

end A227088.P9122773894443311401

/-! ## A227088.P3323798041318150994

`A227089(A056000(n)+15)`
-/

namespace A227088.P3323798041318150994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227089 (A056000 n + 15).toNat

end

end A227088.P3323798041318150994

/-! ## A227088.P9593804307545316672

`A227089(eq[7, A066657(n)])`
-/

namespace A227088.P9593804307545316672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227089 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227088.P9593804307545316672

/-!
# A227089: T(n,k)=Number of nXk binary arrays indicating whether each 2X2 subblock of a larger binary array has lexicographically increasing rows and columns, for some larger (n+1)X(k+1) binary array with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A227089, there is no canonical definition to state claims against.
-/

/-! ## A227089.P12399718012469106342

`A368728(A223770(n+1))`
-/

namespace A227089.P12399718012469106342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368728 (A223770 (n + 1)).toNat

end

end A227089.P12399718012469106342

/-! ## A227089.P802656597475829871

`A368728(A223777(n+1))`
-/

namespace A227089.P802656597475829871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368728 (A223777 (n + 1)).toNat

end

end A227089.P802656597475829871

/-! ## A227089.P12532611011683592138

`A223777(n+1)+A201195(A084193(∑[n]))`
-/

namespace A227089.P12532611011683592138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223777 (n + 1) + A201195 (A084193 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A227089.P12532611011683592138

/-!
# A227090: Numbers k such that k^2+1 with its digits reversed is prime (ignoring leading zeros).

The programs for A227090, there is no canonical definition to state claims against.
-/

/-! ## A227090.P2342090705863270990

`eq[1, A001222(A004086(n²+1))]`
-/

namespace A227090.P2342090705863270990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A004086 (n ^ 2 + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A227090.P2342090705863270990

/-! ## A227090.P7015045411490103526

`eq[1, A010051(A004086((n+1)²+1))]+1`
-/

namespace A227090.P7015045411490103526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A004086 ((n + 1) ^ 2 + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A227090.P7015045411490103526

/-! ## A227090.P15897812787780257787

`lt[1, A010051(A004086((char[6]+n)²+1))+1]`
-/

namespace A227090.P15897812787780257787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A004086 (((if ∃ j, f3 j = n then 1 else 0) + n) ^ 2 + 1)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A227090.P15897812787780257787

/-! ## A227090.P8971932535676865267

`eq[2, A000005(A135020(2*(n²+1)))]`
-/

namespace A227090.P8971932535676865267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A135020 (2 * (n ^ 2 + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A227090.P8971932535676865267

/-! ## A227090.P4867324325298953985

`eq[A063647(n+1), A231516(A059888(n+1))]`
-/

namespace A227090.P4867324325298953985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063647 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231516 (A059888 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227090.P4867324325298953985

/-!
# A227091: Number of solutions to x^2 == 1 (mod n) in Z[i]/nZ[i].

The programs for A227091, there is no canonical definition to state claims against.
-/

/-! ## A227091.P4611584311960829418

`A073103(A022998(n+1))`
-/

namespace A227091.P4611584311960829418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073103 (A022998 (n + 1)).toNat

end

end A227091.P4611584311960829418

/-! ## A227091.P13310362685336263656

`A073103(A059029(n)+1)`
-/

namespace A227091.P13310362685336263656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073103 (A059029 n + 1).toNat

end

end A227091.P13310362685336263656

/-! ## A227091.P1304842025500188952

`A073103(A257088(n+1))`
-/

namespace A227091.P1304842025500188952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073103 (A257088 (n + 1)).toNat

end

end A227091.P1304842025500188952

/-! ## A227091.P17408469387647667671

`A073103(A026741(n+2)+A026741(n))`
-/

namespace A227091.P17408469387647667671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073103 (A026741 (n + 2) + A026741 n).toNat

end

end A227091.P17408469387647667671

/-! ## A227091.P16712938252256703118

`A073103(2*(n+1))`
-/

namespace A227091.P16712938252256703118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073103 (2 * (n + 1))

end

end A227091.P16712938252256703118

/-! ## A227091.P16131475409309588864

`2^A357906(2*(n+1))`
-/

namespace A227091.P16131475409309588864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A357906 (2 * (n + 1)) : ℤ)

end

end A227091.P16131475409309588864

/-! ## A227091.P13920941938717446133

`A000010(2*(n+1))/A250207(2*(n+1))`
-/

namespace A227091.P13920941938717446133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (2 * (n + 1)) : ℚ) / (A250207 (2 * (n + 1)) : ℚ)

end

end A227091.P13920941938717446133

/-! ## A227091.P1394749325238437454

`A060839(n+1)*A087692(2*(n+1))/A250207(2*(n+1))`
-/

namespace A227091.P1394749325238437454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060839 (n + 1) * A087692 (2 * (n + 1)) : ℚ) / (A250207 (2 * (n + 1)) : ℚ)

end

end A227091.P1394749325238437454

/-! ## A227091.P5625523215972461387

`A293482(2*(n+1))/A250207(2*(n+1))*A319099(n+1)`
-/

namespace A227091.P5625523215972461387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293482 (2 * (n + 1)) : ℚ) / (A250207 (2 * (n + 1)) : ℚ) * (A319099 (n + 1) : ℚ)

end

end A227091.P5625523215972461387

/-! ## A227091.P4840834405117896459

`A293484(2*(n+1))*A319101(n+1)/A250207(2*(n+1))`
-/

namespace A227091.P4840834405117896459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293484 (2 * (n + 1)) * A319101 (n + 1) : ℚ) / (A250207 (2 * (n + 1)) : ℚ)

end

end A227091.P4840834405117896459

/-! ## A227091.P677858784495742323

`A247257(2*(n+1))/A250207(2*(n+1))*A293485(2*(n+1))`
-/

namespace A227091.P677858784495742323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247257 (2 * (n + 1)) : ℚ) / (A250207 (2 * (n + 1)) : ℚ) * (A293485 (2 * (n + 1)) : ℚ)

end

end A227091.P677858784495742323

/-! ## A227091.P12683885425683077023

`A293483(2*(n+1))/A250207(2*(n+1))*A319100(2*(n+1))`
-/

namespace A227091.P12683885425683077023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293483 (2 * (n + 1)) : ℚ) / (A250207 (2 * (n + 1)) : ℚ) * (A319100 (2 * (n + 1)) : ℚ)

end

end A227091.P12683885425683077023

/-!
# A227092: Numbers whose base-7 sum of digits is 7.

The programs for A227092, the canonical program `A227092.P470339664613846370` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227092 has offset 1).

The definition of A227092 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 305 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227092.P470339664613846370

`eq[7, A053828(n)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A227092

/-- `eq[7, A053828(n)]` -/
def P470339664613846370.Spec : Prop :=
  ∀ n, (P470339664613846370.a n : ℤ) = A227092 (n + 1)

theorem P470339664613846370.correct : P470339664613846370.Spec := by
  intro n
  simp only [A227092, Nat.add_sub_cancel]

end A227092

/-! ## A227092.P17555137652111447267

`eq[8, A173527(n+1)]`
-/

namespace A227092.P17555137652111447267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173527 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A227092.P17555137652111447267

namespace A227092

/-- `eq[8, A173527(n+1)]` -/
def P17555137652111447267.Spec : Prop :=
  ∀ n, (P17555137652111447267.a n : ℤ) = A227092 (n + 1)

end A227092

/-! ## A227092.P11962184412501351603

`eq[A053842(n), A100219(n)]`
-/

namespace A227092.P11962184412501351603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053842 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100219 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227092.P11962184412501351603

namespace A227092

/-- `eq[A053842(n), A100219(n)]` -/
def P11962184412501351603.Spec : Prop :=
  ∀ n, (P11962184412501351603.a n : ℤ) = A227092 (n + 1)

end A227092

/-! ## A227092.P16976839152925842848

`eq[A053842(n), A101676(n)]`
-/

namespace A227092.P16976839152925842848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053842 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101676 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227092.P16976839152925842848

namespace A227092

/-- `eq[A053842(n), A101676(n)]` -/
def P16976839152925842848.Spec : Prop :=
  ∀ n, (P16976839152925842848.a n : ℤ) = A227092 (n + 1)

end A227092

/-! ## A227092.P7489985767481369963

`eq[A053842(n)², A109265(n)]`
-/

namespace A227092.P7489985767481369963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053842 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109265 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227092.P7489985767481369963

namespace A227092

/-- `eq[A053842(n)², A109265(n)]` -/
def P7489985767481369963.Spec : Prop :=
  ∀ n, (P7489985767481369963.a n : ℤ) = A227092 (n + 1)

end A227092

/-! ## A227092.P409556180643726756

`eq[A033668(n), A053842(n)]`
-/

namespace A227092.P409556180643726756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033668 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053842 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227092.P409556180643726756

namespace A227092

/-- `eq[A033668(n), A053842(n)]` -/
def P409556180643726756.Spec : Prop :=
  ∀ n, (P409556180643726756.a n : ℤ) = A227092 (n + 1)

end A227092

/-! ## A227092.P694528251600964358

`eq[7, A007953(A007093(n))]`
-/

namespace A227092.P694528251600964358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A007093 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A227092.P694528251600964358

namespace A227092

/-- `eq[7, A007953(A007093(n))]` -/
def P694528251600964358.Spec : Prop :=
  ∀ n, (P694528251600964358.a n : ℤ) = A227092 (n + 1)

end A227092

/-! ## A227092.P9030514505765223229

`eq[A005129(n), A053842(n)]`
-/

namespace A227092.P9030514505765223229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005129 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053842 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227092.P9030514505765223229

namespace A227092

/-- `eq[A005129(n), A053842(n)]` -/
def P9030514505765223229.Spec : Prop :=
  ∀ n, (P9030514505765223229.a n : ℤ) = A227092 (n + 1)

end A227092

/-!
# A227093: Decimal expansion of 1/9899.

The programs for A227093, there is no canonical definition to state claims against.
-/

/-! ## A227093.P15808207024640685555

`A227320(A264110(n+1))%A283463(n+1)`
-/

namespace A227093.P15808207024640685555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A227320 (A264110 (n + 1)).toNat) (A283463 (n + 1))

end

end A227093.P15808207024640685555

/-!
# A227094: Binomial transform of A013999.

The programs for A227094, there is no canonical definition to state claims against.
-/

/-! ## A227094.P5867261546610290155

`∑[or(1, A319778(2*n))]`
-/

namespace A227094.P5867261546610290155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A319778 (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227094.P5867261546610290155

/-! ## A227094.P15232270536189076616

`∑[A008616(A147740(n+2))]`
-/

namespace A227094.P15232270536189076616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A147740 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227094.P15232270536189076616

/-!
# A227095: Numbers whose base-8 sum of digits is 8.

The programs for A227095, the canonical program `A227095.P16618635948200259415` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227095 has offset 1).

The definition of A227095 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 355 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227095.P434696945924810078

`eq[8, A053829(n)]`
-/

namespace A227095.P434696945924810078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A227095.P434696945924810078

namespace A227095

/-- `eq[8, A053829(n)]` -/
def P434696945924810078.Spec : Prop :=
  ∀ n, (P434696945924810078.a n : ℤ) = A227095 (n + 1)

end A227095

/-! ## A227095.P16618635948200259415

`eq[9, A173528(n+1)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A227095

/-- `eq[9, A173528(n+1)]` -/
def P16618635948200259415.Spec : Prop :=
  ∀ n, (P16618635948200259415.a n : ℤ) = A227095 (n + 1)

theorem P16618635948200259415.correct : P16618635948200259415.Spec := by
  intro n
  simp only [A227095, Nat.add_sub_cancel]

end A227095

/-! ## A227095.P13690731472270000831

`eq[8, n-7*A054897(n)]`
-/

namespace A227095.P13690731472270000831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 7 * A054897 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A227095.P13690731472270000831

namespace A227095

/-- `eq[8, n-7*A054897(n)]` -/
def P13690731472270000831.Spec : Prop :=
  ∀ n, (P13690731472270000831.a n : ℤ) = A227095 (n + 1)

end A227095

/-! ## A227095.P17329047226489836889

`eq[8, A053830(A037477(n))]`
-/

namespace A227095.P17329047226489836889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 (A037477 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A227095.P17329047226489836889

namespace A227095

/-- `eq[8, A053830(A037477(n))]` -/
def P17329047226489836889.Spec : Prop :=
  ∀ n, (P17329047226489836889.a n : ℤ) = A227095 (n + 1)

end A227095

/-! ## A227095.P11959922521824129836

`eq[A053843(n), A213904(n+1)]`
-/

namespace A227095.P11959922521824129836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053843 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213904 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227095.P11959922521824129836

namespace A227095

/-- `eq[A053843(n), A213904(n+1)]` -/
def P11959922521824129836.Spec : Prop :=
  ∀ n, (P11959922521824129836.a n : ℤ) = A227095 (n + 1)

end A227095

/-! ## A227095.P13741984906382947258

`eq[8, A007953(A007094(n))]`
-/

namespace A227095.P13741984906382947258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A007094 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A227095.P13741984906382947258

namespace A227095

/-- `eq[8, A007953(A007094(n))]` -/
def P13741984906382947258.Spec : Prop :=
  ∀ n, (P13741984906382947258.a n : ℤ) = A227095 (n + 1)

end A227095

/-!
# A227096: Self-convolution of A013999.

The programs for A227096, there is no canonical definition to state claims against.
-/

/-! ## A227096.P13987786808635802956

`A251607(A001906(n)+3)`
-/

namespace A227096.P13987786808635802956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251607 (A001906 n + 3).toNat

end

end A227096.P13987786808635802956

/-! ## A227096.P6962281301726376190

`A194640(or(n, A002872(n)))`
-/

namespace A227096.P6962281301726376190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (Int.lor (n : ℤ) (A002872 n)).toNat

end

end A227096.P6962281301726376190

/-!
# A227097: a(n) = n successive applications of the <*>(3,2) operator to 1.

The programs for A227097, there is no canonical definition to state claims against.
-/

/-! ## A227097.P14503808569887856857

`or(3^(n%2), A000005(∏[n+6]/6))`
-/

namespace A227097.P14503808569887856857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (3 ^ (n % 2) : ℤ) (A000005 (SequenceMachineLib.roundAway (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 6)).toNat)

end

end A227097.P14503808569887856857

/-! ## A227097.P7786052495592293086

`A172253(A189890(n))`
-/

namespace A227097.P7786052495592293086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172253 (A189890 n).toNat

end

end A227097.P7786052495592293086

/-!
# A227098: Number of n X n 0,1 arrays indicating 2X2 subblocks of some larger (n+1)X(n+1) binary array having a sum of two, with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A227098, there is no canonical definition to state claims against.
-/

/-! ## A227098.P4981542487553365848

`A227103((n+1)²+n²)`
-/

namespace A227098.P4981542487553365848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227103 ((n + 1) ^ 2 + n ^ 2)

end

end A227098.P4981542487553365848

/-!
# A227099: Number of n X 2 0,1 arrays indicating 2 X 2 subblocks of some larger (n+1) X 3 binary array having a sum of two, with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A227099, there is no canonical definition to state claims against.
-/

/-! ## A227099.P11402340115947063640

`A227103(∑[n+1]+2)`
-/

namespace A227099.P11402340115947063640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227103 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A227099.P11402340115947063640

/-! ## A227099.P13215035957522191700

`record[A010054(n)*A227103(n+2)]`
-/

namespace A227099.P13215035957522191700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A227103 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227099.P13215035957522191700

/-! ## A227099.P10319302396441989971

`record[A227103(Δ[A003453(n+5)])]`
-/

namespace A227099.P10319302396441989971
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227103 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227099.P10319302396441989971

/-! ## A227099.P2666552881702191505

`record[gcd(A004247(n+2), A227103(n+2))]`
-/

namespace A227099.P2666552881702191505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004247 (n + 2)) (A227103 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227099.P2666552881702191505

/-! ## A227099.P14616993322042996944

`record[gcd(A103328(n), A227103(n+3))]`
-/

namespace A227099.P14616993322042996944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A103328 n) (A227103 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227099.P14616993322042996944

