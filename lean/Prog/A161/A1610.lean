import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B010.C000
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
import SequenceMachineLib.Triangle

/-!
# A161001: Those positive integers n that when read in binary contains runs of 0's and 1's being of distinct lengths, the list of lengths forming a permutation of some number of consecutive positive integers.

The programs for A161001, there is no canonical definition to state claims against.
-/

/-! ## A161001.P4988944616852751905

`eq[1, A292900(∏{p}[n+1, #])]`
-/

namespace A161001.P4988944616852751905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292900 (∏ p ∈ Nat.primeFactors (f3 n), p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161001.P4988944616852751905

/-! ## A161001.P1758712556927706726

`eq[1, A292900(A007947(n+1))]`
-/

namespace A161001.P1758712556927706726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292900 (A007947 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161001.P1758712556927706726

/-! ## A161001.P5529950918639873156

`eq[1, A292900(A014963(n+1))]`
-/

namespace A161001.P5529950918639873156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292900 (A014963 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161001.P5529950918639873156

/-! ## A161001.P7381541134386727159

`eq[1, A292900(A015052(n+1))]`
-/

namespace A161001.P7381541134386727159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292900 (A015052 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161001.P7381541134386727159

/-! ## A161001.P1178777505303588184

`eq[A205531(A101508(n)), A284272(n)]`
-/

namespace A161001.P1178777505303588184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205531 (A101508 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284272 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161001.P1178777505303588184

/-!
# A161002: Least prime of three consecutive primes (p1,p2,p3) such that p2-p1 and p3-p2 are both perfect squares.

The programs for A161002, there is no canonical definition to state claims against.
-/

/-! ## A161002.P12806825980817784159

`A151799(A353088(n+1))`
-/

namespace A161002.P12806825980817784159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151799 (A353088 (n + 1)).toNat

end

end A161002.P12806825980817784159

/-! ## A161002.P7571653082794110606

`A300840(A353088(n+1)+A185203(n))`
-/

namespace A161002.P7571653082794110606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300840 (A353088 (n + 1) + A185203 n).toNat

end

end A161002.P7571653082794110606

/-!
# A161003: A list of the composite numbers divided by their largest prime factors.

The programs for A161003, the canonical program `A161003.P1160852448560439033` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161003 has offset 1).

The definition of A161003 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A161003.P1160852448560439033

`A002808(n+1)/A052369(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A161003

/-- `A002808(n+1)/A052369(n+1)` -/
def P1160852448560439033.Spec : Prop :=
  ∀ n, P1160852448560439033.a n = (A161003 (n + 1) : ℚ)

end A161003

/-! ## A161003.P14345322768631309192

`A018252(n+2)/A052369(n+1)`
-/

namespace A161003.P14345322768631309192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018252 (n + 2) : ℚ) / (A052369 (n + 1) : ℚ)

end

end A161003.P14345322768631309192

namespace A161003

/-- `A018252(n+2)/A052369(n+1)` -/
def P14345322768631309192.Spec : Prop :=
  ∀ n, P14345322768631309192.a n = (A161003 (n + 1) : ℚ)

end A161003

/-! ## A161003.P12332113135714432156

`A141468(n+3)/A006530(A141468(n+3))`
-/

namespace A161003.P12332113135714432156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141468 (n + 3) : ℚ) / (A006530 (A141468 (n + 3)).toNat : ℚ)

end

end A161003.P12332113135714432156

namespace A161003

/-- `A141468(n+3)/A006530(A141468(n+3))` -/
def P12332113135714432156.Spec : Prop :=
  ∀ n, P12332113135714432156.a n = (A161003 (n + 1) : ℚ)

end A161003

/-! ## A161003.P16009539909133184133

`(A072668(n+1)+1)/A006530(comp[A351078(n)])`
-/

namespace A161003.P16009539909133184133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072668 (n + 1) + 1 : ℚ) / (A006530 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) : ℚ)

end

end A161003.P16009539909133184133

namespace A161003

/-- `(A072668(n+1)+1)/A006530(comp[A351078(n)])` -/
def P16009539909133184133.Spec : Prop :=
  ∀ n, P16009539909133184133.a n = (A161003 (n + 1) : ℚ)

end A161003

/-! ## A161003.P10123893993463965543

`(A079696(n+1)-1)/A006530(comp[A351078(n)])`
-/

namespace A161003.P10123893993463965543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079696 (n + 1) - 1 : ℚ) / (A006530 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) : ℚ)

end

end A161003.P10123893993463965543

namespace A161003

/-- `(A079696(n+1)-1)/A006530(comp[A351078(n)])` -/
def P10123893993463965543.Spec : Prop :=
  ∀ n, P10123893993463965543.a n = (A161003 (n + 1) : ℚ)

end A161003

/-! ## A161003.P13042658729072488840

`A002808(n+1)/A006530(2*A002808(n+1))`
-/

namespace A161003.P13042658729072488840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002808 (n + 1) : ℚ) / (A006530 (2 * A002808 (n + 1)).toNat : ℚ)

end

end A161003.P13042658729072488840

namespace A161003

/-- `A002808(n+1)/A006530(2*A002808(n+1))` -/
def P13042658729072488840.Spec : Prop :=
  ∀ n, P13042658729072488840.a n = (A161003 (n + 1) : ℚ)

end A161003

/-! ## A161003.P9318376043718657614

`lt[1, A107463(n)]/A006530(A072668(n+1)+1)`
-/

namespace A161003.P9318376043718657614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℚ) / (A006530 (A072668 (n + 1) + 1).toNat : ℚ)

end

end A161003.P9318376043718657614

namespace A161003

/-- `lt[1, A107463(n)]/A006530(A072668(n+1)+1)` -/
def P9318376043718657614.Spec : Prop :=
  ∀ n, P9318376043718657614.a n = (A161003 (n + 1) : ℚ)

end A161003

/-! ## A161003.P18386193583288224865

`lt[1, A175126(n)]/A006530(A072668(n+1)+1)`
-/

namespace A161003.P18386193583288224865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℚ) / (A006530 (A072668 (n + 1) + 1).toNat : ℚ)

end

end A161003.P18386193583288224865

namespace A161003

/-- `lt[1, A175126(n)]/A006530(A072668(n+1)+1)` -/
def P18386193583288224865.Spec : Prop :=
  ∀ n, P18386193583288224865.a n = (A161003 (n + 1) : ℚ)

end A161003

/-! ## A161003.P3736182750984694256

`lt[1, A107463(n)]/A006530(A079696(n+1)-1)`
-/

namespace A161003.P3736182750984694256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℚ) / (A006530 (A079696 (n + 1) - 1).toNat : ℚ)

end

end A161003.P3736182750984694256

namespace A161003

/-- `lt[1, A107463(n)]/A006530(A079696(n+1)-1)` -/
def P3736182750984694256.Spec : Prop :=
  ∀ n, P3736182750984694256.a n = (A161003 (n + 1) : ℚ)

end A161003

/-! ## A161003.P4132473215670199874

`A002808(n+1)/(A002808(n+1)-A085273(n+1))`
-/

namespace A161003.P4132473215670199874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002808 (n + 1) : ℚ) / (A002808 (n + 1) - A085273 (n + 1) : ℚ)

end

end A161003.P4132473215670199874

namespace A161003

/-- `A002808(n+1)/(A002808(n+1)-A085273(n+1))` -/
def P4132473215670199874.Spec : Prop :=
  ∀ n, P4132473215670199874.a n = (A161003 (n + 1) : ℚ)

end A161003

/-! ## A161003.P15042149133779318022

`A002808(n+1)/(A085275(n+1)-A002808(n+1))`
-/

namespace A161003.P15042149133779318022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002808 (n + 1) : ℚ) / (A085275 (n + 1) - A002808 (n + 1) : ℚ)

end

end A161003.P15042149133779318022

namespace A161003

/-- `A002808(n+1)/(A085275(n+1)-A002808(n+1))` -/
def P15042149133779318022.Spec : Prop :=
  ∀ n, P15042149133779318022.a n = (A161003 (n + 1) : ℚ)

end A161003

/-! ## A161003.P2975935129076661112

`(A161986(n+1)-A161849(n+1))/A052369(n+1)`
-/

namespace A161003.P2975935129076661112
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161986 (n + 1) - A161849 (n + 1) : ℚ) / (A052369 (n + 1) : ℚ)

end

end A161003.P2975935129076661112

namespace A161003

/-- `(A161986(n+1)-A161849(n+1))/A052369(n+1)` -/
def P2975935129076661112.Spec : Prop :=
  ∀ n, P2975935129076661112.a n = (A161003 (n + 1) : ℚ)

end A161003

/-! ## A161003.P8862941971261629927

`A056608(n+1)/A052369(n+1)*A160180(n+1)`
-/

namespace A161003.P8862941971261629927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056608 (n + 1) : ℚ) / (A052369 (n + 1) : ℚ) * (A160180 (n + 1) : ℚ)

end

end A161003.P8862941971261629927

namespace A161003

/-- `A056608(n+1)/A052369(n+1)*A160180(n+1)` -/
def P8862941971261629927.Spec : Prop :=
  ∀ n, P8862941971261629927.a n = (A161003 (n + 1) : ℚ)

end A161003

/-! ## A161003.P1901702808917227026

`A002808(n+1)/A006530(A002808(n+1)/A056608(n+1))`
-/

namespace A161003.P1901702808917227026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002808 (n + 1) : ℚ) / (A006530 (SequenceMachineLib.roundAway ((A002808 (n + 1) : ℚ) / (A056608 (n + 1) : ℚ))).toNat : ℚ)

end

end A161003.P1901702808917227026

namespace A161003

/-- `A002808(n+1)/A006530(A002808(n+1)/A056608(n+1))` -/
def P1901702808917227026.Spec : Prop :=
  ∀ n, P1901702808917227026.a n = (A161003 (n + 1) : ℚ)

end A161003

/-! ## A161003.P11913174031856982434

`A052126(Δ[A053767(n)])`
-/

namespace A161003.P11913174031856982434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (f1 (n + 1) - f1 n).toNat

end

end A161003.P11913174031856982434

namespace A161003

/-- `A052126(Δ[A053767(n)])` -/
def P11913174031856982434.Spec : Prop :=
  ∀ n, P11913174031856982434.a n = A161003 (n + 1)

end A161003

/-! ## A161003.P3079005966422673515

`A070821(A282671(n+1))`
-/

namespace A161003.P3079005966422673515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070821 (A282671 (n + 1)).toNat

end

end A161003.P3079005966422673515

namespace A161003

/-- `A070821(A282671(n+1))` -/
def P3079005966422673515.Spec : Prop :=
  ∀ n, P3079005966422673515.a n = A161003 (n + 1)

end A161003

/-! ## A161003.P16279243868459812926

`A325133(A129401(n+1))`
-/

namespace A161003.P16279243868459812926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325133 (A129401 (n + 1)).toNat

end

end A161003.P16279243868459812926

namespace A161003

/-- `A325133(A129401(n+1))` -/
def P16279243868459812926.Spec : Prop :=
  ∀ n, P16279243868459812926.a n = A161003 (n + 1)

end A161003

/-!
# A161005: Sums of adjacent amicable numbers, a(n) = A063990(2n-1) + A063990(2n).

The programs for A161005, there is no canonical definition to state claims against.
-/

/-! ## A161005.P12934192651112587201

`A063990(2*(n+1)-1)+A063990(2*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A161005.P12934192651112587201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063990 (2 * (n + 1) - 1) + A063990 (2 * (n + 1))

end

end A161005.P12934192651112587201

/-! ## A161005.P9073963385475179101

`A306613(2*n+1)+A279812(2*n+1)`
-/

namespace A161005.P9073963385475179101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306613 (2 * n + 1) + A279812 (2 * n + 1)

end

end A161005.P9073963385475179101

/-! ## A161005.P5654311962071242317

`(A279812(2*n+1)+A279812(2*(n+1)))/2`
-/

namespace A161005.P5654311962071242317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279812 (2 * n + 1) + A279812 (2 * (n + 1)) : ℚ) / 2

end

end A161005.P5654311962071242317

/-! ## A161005.P12903955149628175885

`A279812(2*(n+1))-A178542(n+1)`
-/

namespace A161005.P12903955149628175885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279812 (2 * (n + 1)) - A178542 (n + 1)

end

end A161005.P12903955149628175885

/-! ## A161005.P12832297798776700624

`A063990(2*n+1)+A000027(A063990(2*(n+1)))`
-/

namespace A161005.P12832297798776700624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063990 (2 * n + 1) + A000027 (A063990 (2 * (n + 1))).toNat

end

end A161005.P12832297798776700624

/-!
# A161006: Convolution of A000108 (Catalan numbers) with A126120 (Catalan numbers interpolated with 0's).

The programs for A161006, there is no canonical definition to state claims against.
-/

/-! ## A161006.P17580552509725756163

`A126120(n)+Δ[A006251(n)]`
-/

namespace A161006.P17580552509725756163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 n + (f1 (n + 1) - f1 n)

end

end A161006.P17580552509725756163

/-! ## A161006.P6187274109192361103

`Δ[A166588(n)+A006251(n)]`
-/

namespace A161006.P6187274109192361103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166588 n + A006251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161006.P6187274109192361103

/-! ## A161006.P4709632762435021791

`Δ[A006251(n)+∑[A097331(n)]]`
-/

namespace A161006.P4709632762435021791
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006251 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161006.P4709632762435021791

/-! ## A161006.P3673158192565400931

`A097331(n+1)+Δ[A006251(n)]`
-/

namespace A161006.P3673158192565400931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (n + 1) + (f1 (n + 1) - f1 n)

end

end A161006.P3673158192565400931

/-! ## A161006.P17538684722874727604

`A073192(n+1)+A187916(n+1)-A000108(n+1)`
-/

namespace A161006.P17538684722874727604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073192 (n + 1) + (A187916 (n + 1) - A000108 (n + 1))

end

end A161006.P17538684722874727604

/-! ## A161006.P12054019562874875253

`A073190(n+2)-Δ[A014137(n)]`
-/

namespace A161006.P12054019562874875253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073190 (n + 2) - (f1 (n + 1) - f1 n)

end

end A161006.P12054019562874875253

/-! ## A161006.P12101422897569952463

`A073190(n+2)-A000108(n+1)`
-/

namespace A161006.P12101422897569952463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073190 (n + 2) - A000108 (n + 1)

end

end A161006.P12101422897569952463

/-!
# A161007: a(n+1) = 2*a(n) + 16*a(n-1), a(0)=0, a(1)=1.

The programs for A161007, the canonical program `A161007.P2914204989081213446` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161007 has offset 0).

The definition of A161007 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A161007.P5637157931475362675

`ogf(x/(1-2x-16x^2))`
-/

namespace A161007.P5637157931475362675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -2, -16] n

end

end A161007.P5637157931475362675

namespace A161007

/-- `ogf(x/(1-2x-16x^2))` -/
def P5637157931475362675.Spec : Prop :=
  ∀ n, P5637157931475362675.a n = A161007 n

end A161007

/-! ## A161007.P2914204989081213446

`((1+sqrt(17))^n-(1-sqrt(17))^n)/(2*sqrt(17))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A161007

/-- `((1+sqrt(17))^n-(1-sqrt(17))^n)/(2*sqrt(17))` -/
def P2914204989081213446.Spec : Prop :=
  ∀ n, P2914204989081213446.a n = (A161007 n : ℝ)

end A161007

/-! ## A161007.P4609995226353199345

`2*(a(n-1)+8*a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A161007.P4609995226353199345
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * (a (n - 1) + 8 * a (n - 2))

end

end A161007.P4609995226353199345

namespace A161007

/-- `2*(a(n-1)+8*a(n-2))` -/
def P4609995226353199345.Spec : Prop :=
  ∀ n, (P4609995226353199345.a n : ℤ) = A161007 n

end A161007

/-! ## A161007.P14081726283537239668

`A006131(log2(A011782(n)))*A131577(n)`
-/

namespace A161007.P14081726283537239668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006131 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat * A131577 n

end

end A161007.P14081726283537239668

namespace A161007

/-- `A006131(log2(A011782(n)))*A131577(n)` -/
def P14081726283537239668.Spec : Prop :=
  ∀ n, P14081726283537239668.a n = A161007 n

end A161007

/-! ## A161007.P15889445575714714989

`(A026597(n)-A006131(n))*A011782(n)`
-/

namespace A161007.P15889445575714714989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A026597 n - A006131 n) * A011782 n

end

end A161007.P15889445575714714989

namespace A161007

/-- `(A026597(n)-A006131(n))*A011782(n)` -/
def P15889445575714714989.Spec : Prop :=
  ∀ n, P15889445575714714989.a n = A161007 n

end A161007

/-! ## A161007.P18286654773022804786

`(A006131(n)-A052923(n))*A011782(n)`
-/

namespace A161007.P18286654773022804786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006131 n - A052923 n) * A011782 n

end

end A161007.P18286654773022804786

namespace A161007

/-- `(A006131(n)-A052923(n))*A011782(n)` -/
def P18286654773022804786.Spec : Prop :=
  ∀ n, P18286654773022804786.a n = A161007 n

end A161007

/-! ## A161007.P4033430437097238247

`(A102446(n)-A072265(n))*A011782(n)`
-/

namespace A161007.P4033430437097238247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A102446 n - A072265 n) * A011782 n

end

end A161007.P4033430437097238247

namespace A161007

/-- `(A102446(n)-A072265(n))*A011782(n)` -/
def P4033430437097238247.Spec : Prop :=
  ∀ n, P4033430437097238247.a n = A161007 n

end A161007

/-!
# A161009: Tribonacci left-bounded rhombic triangle.

The programs for A161009, there is no canonical definition to state claims against.
-/

/-! ## A161009.P17550239920509516122

`A400464(A108916(n))`
-/

namespace A161009.P17550239920509516122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400464 (A108916 n).toNat

end

end A161009.P17550239920509516122

/-! ## A161009.P6819919389272887835

`A111960(n)-A353481(A002524(n))`
-/

namespace A161009.P6819919389272887835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111960 n - A353481 (A002524 n).toNat

end

end A161009.P6819919389272887835

/-! ## A161009.P6870477170037277066

`A111960(n)-A185044(A343488(n))`
-/

namespace A161009.P6870477170037277066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111960 n - A185044 (A343488 n).toNat

end

end A161009.P6870477170037277066

/-! ## A161009.P4913823366323875630

`A048766(A104259(n)*A193735(n))`
-/

namespace A161009.P4913823366323875630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A104259 n * A193735 n).toNat

end

end A161009.P4913823366323875630

/-! ## A161009.P10206994726343837084

`A111960(n)+A010815(A090506(n+1))`
-/

namespace A161009.P10206994726343837084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111960 n + A010815 (A090506 (n + 1)).toNat

end

end A161009.P10206994726343837084

/-!
# A161010: a(n) = Sum_{d|n} Moebius(n/d)*d^(b-1)/phi(n) for b = 14.

The programs for A161010, there is no canonical definition to state claims against.
-/

/-! ## A161010.P2476189575579280195

`A263950(eq[29, A066657(n)])`
-/

namespace A161010.P2476189575579280195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263950 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A161010.P2476189575579280195

/-!
# A161020: All the non-repdigit terms of A160818.

The programs for A161020, there is no canonical definition to state claims against.
-/

/-! ## A161020.P7814309383637756330

`∩[A160818(n+1), A276413(n+1)]`
-/

namespace A161020.P7814309383637756330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160818 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161020.P7814309383637756330

/-!
# A161025: a(n) = Sum_{d|n} Moebius(n/d)*d^(b-1)/phi(n) for b = 15.

The programs for A161025, the canonical program `A161025.P466438066947704357` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161025 has offset 1).

The definition of A161025 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161025.P466438066947704357

`A160897(1+n)*A351302(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A161025

/-- `A160897(1+n)*A351302(n+1)` -/
def P466438066947704357.Spec : Prop :=
  ∀ n, P466438066947704357.a n = A161025 (n + 1)

theorem P466438066947704357.correct : P466438066947704357.Spec := by
  intro n
  simp only [A161025, Nat.add_sub_cancel]

end A161025

/-! ## A161025.P6279486354744110662

`A069092(n+1)/A000010(n+1)*A351302(n+1)`
-/

namespace A161025.P6279486354744110662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069092 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ) * (A351302 (n + 1) : ℚ)

end

end A161025.P6279486354744110662

namespace A161025

/-- `A069092(n+1)/A000010(n+1)*A351302(n+1)` -/
def P6279486354744110662.Spec : Prop :=
  ∀ n, P6279486354744110662.a n = (A161025 (n + 1) : ℚ)

end A161025

/-! ## A161025.P5811469437024905281

`∑{d}[n+1, A034444(#)*A069092((n+1)/#)]*A160897(n+1)`
-/

namespace A161025.P5811469437024905281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), A034444 d * A069092 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat) * A160897 (n + 1)

end

end A161025.P5811469437024905281

namespace A161025

/-- `∑{d}[n+1, A034444(#)*A069092((n+1)/#)]*A160897(n+1)` -/
def P5811469437024905281.Spec : Prop :=
  ∀ n, P5811469437024905281.a n = A161025 (n + 1)

end A161025

/-! ## A161025.P15867640900205930528

`∑{d}[n+1, A008683(#)*A344303((n+1)/#)]*A351302(n+1)`
-/

namespace A161025.P15867640900205930528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), A008683 d * A344303 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat) * A351302 (n + 1)

end

end A161025.P15867640900205930528

namespace A161025

/-- `∑{d}[n+1, A008683(#)*A344303((n+1)/#)]*A351302(n+1)` -/
def P15867640900205930528.Spec : Prop :=
  ∀ n, P15867640900205930528.a n = A161025 (n + 1)

end A161025

/-! ## A161025.P10058230303553501799

`A001015(A003557(n+1))*A160897(n+1)*A351270(n+1)`
-/

namespace A161025.P10058230303553501799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001015 (A003557 (n + 1)).toNat * A160897 (n + 1) * A351270 (n + 1)

end

end A161025.P10058230303553501799

namespace A161025

/-- `A001015(A003557(n+1))*A160897(n+1)*A351270(n+1)` -/
def P10058230303553501799.Spec : Prop :=
  ∀ n, P10058230303553501799.a n = A161025 (n + 1)

end A161025

/-! ## A161025.P3969468646700068088

`A263950(eq[15, A131818(n+1)])`
-/

namespace A161025.P3969468646700068088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263950 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A161025.P3969468646700068088

namespace A161025

/-- `A263950(eq[15, A131818(n+1)])` -/
def P3969468646700068088.Spec : Prop :=
  ∀ n, P3969468646700068088.a n = A161025 (n + 1)

end A161025

/-!
# A161026: Number of partitions of n into Fibonacci numbers where every part appears at least 2 times.

The programs for A161026, there is no canonical definition to state claims against.
-/

/-! ## A161026.P5321467233542774228

`A161293(n)-A185284(A091769(n))`
-/

namespace A161026.P5321467233542774228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161293 n - A185284 (A091769 n).toNat

end

end A161026.P5321467233542774228

/-! ## A161026.P11731915283600769183

`A161293(n)-A133010(A325832(n))`
-/

namespace A161026.P11731915283600769183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161293 n - A133010 (A325832 n).toNat

end

end A161026.P11731915283600769183

/-! ## A161026.P18118704387581327597

`A161293(n)-A055641(A138728(n+1))`
-/

namespace A161026.P18118704387581327597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161293 n - A055641 (A138728 (n + 1)).toNat

end

end A161026.P18118704387581327597

/-! ## A161026.P10496858857009060811

`A339220(n)-A055641(A138728(n+1))`
-/

namespace A161026.P10496858857009060811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339220 n - A055641 (A138728 (n + 1)).toNat

end

end A161026.P10496858857009060811

/-!
# A161027: Number of partitions of n into Fibonacci numbers where every part appears at least 3 times.

The programs for A161027, there is no canonical definition to state claims against.
-/

/-! ## A161027.P14771233486066247081

`∏{e}[A000079(n), A161078(#)]`
-/

namespace A161027.P14771233486066247081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A161078 (Nat.factorization (f1 n).natAbs p)

end

end A161027.P14771233486066247081

/-! ## A161027.P7694757031786519492

`A100405(n)-A044941(A192317(n))`
-/

namespace A161027.P7694757031786519492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100405 n - A044941 (A192317 n).toNat

end

end A161027.P7694757031786519492

/-! ## A161027.P16671755178699984130

`A100405(n)-A248639(A091320(n+1))`
-/

namespace A161027.P16671755178699984130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100405 n - A248639 (A091320 (n + 1)).toNat

end

end A161027.P16671755178699984130

/-! ## A161027.P11714763976581841732

`A100405(n)-A353676(A197109(n+1))`
-/

namespace A161027.P11714763976581841732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100405 n - A353676 (A197109 (n + 1)).toNat

end

end A161027.P11714763976581841732

/-!
# A161028: Number of partitions of n into Fibonacci numbers where every part appears at least 4 times.

The programs for A161028, there is no canonical definition to state claims against.
-/

/-! ## A161028.P4278049365744466034

`∏{e}[2^n, A161079(#)]`
-/

namespace A161028.P4278049365744466034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A161079 (Nat.factorization (f1 n) p)

end

end A161028.P4278049365744466034

/-! ## A161028.P17130862368507160718

`∏{e}[2^n, A161243(#)]`
-/

namespace A161028.P17130862368507160718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A161243 (Nat.factorization (f1 n) p)

end

end A161028.P17130862368507160718

/-! ## A161028.P18433779312691956295

`∏{e}[2^n, A161295(#)]`
-/

namespace A161028.P18433779312691956295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A161295 (Nat.factorization (f1 n) p)

end

end A161028.P18433779312691956295

/-! ## A161028.P17380415152576163835

`∏{e}[A000079(n), A161309(#)]`
-/

namespace A161028.P17380415152576163835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A161309 (Nat.factorization (f1 n).natAbs p)

end

end A161028.P17380415152576163835

/-! ## A161028.P13907726087316063992

`A160974(n)-A133010(A161293(n+4))`
-/

namespace A161028.P13907726087316063992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160974 n - A133010 (A161293 (n + 4)).toNat

end

end A161028.P13907726087316063992

/-!
# A161029: Number of partitions of n into positive Fibonacci numbers where every part appears at least 5 times.

The programs for A161029, there is no canonical definition to state claims against.
-/

/-! ## A161029.P17969631465499119953

`∑{d}[n+1, A161244(#)*A268814((n+1)/#-1)]`
-/

namespace A161029.P17969631465499119953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A161244 d * A268814 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A161029.P17969631465499119953

/-! ## A161029.P7772227028916699589

`∑{d}[n+1, A161310(#)*A268814((n+1)/#-1)]`
-/

namespace A161029.P7772227028916699589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A161310 d * A268814 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A161029.P7772227028916699589

/-! ## A161029.P3431589824691910825

`∑{d}[n+1, A161244(#)*A324011((n+1)/#-1)]`
-/

namespace A161029.P3431589824691910825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A161244 d * A324011 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A161029.P3431589824691910825

/-!
# A161030: Number of partitions of n into positive Fibonacci numbers where every part appears at least 6 times.

The programs for A161030, there is no canonical definition to state claims against.
-/

/-! ## A161030.P5816638231310557908

`A161081(n+1)-A161037(A194917(2*n+1))`
-/

namespace A161030.P5816638231310557908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161081 (n + 1) - A161037 (A194917 (2 * n + 1)).toNat

end

end A161030.P5816638231310557908

/-! ## A161030.P13561973377533996179

`A161081(n+1)-A161037(A194983(2*(n+1)))`
-/

namespace A161030.P13561973377533996179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161081 (n + 1) - A161037 (A194983 (2 * (n + 1))).toNat

end

end A161030.P13561973377533996179

/-! ## A161030.P15351594121513984361

`A161081(n+1)-A161036(A194983(2*n+3))`
-/

namespace A161030.P15351594121513984361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161081 (n + 1) - A161036 (A194983 (2 * n + 3)).toNat

end

end A161030.P15351594121513984361

/-! ## A161030.P14896232296276955227

`A161081(n+1)-A185284(A161081(n+1))`
-/

namespace A161030.P14896232296276955227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161081 (n + 1) - A185284 (A161081 (n + 1)).toNat

end

end A161030.P14896232296276955227

/-!
# A161031: Number of partitions of n into Fibonacci numbers where every part appears at least 7 times.

The programs for A161031, there is no canonical definition to state claims against.
-/

/-! ## A161031.P15473461402546268387

`∑{d}[n+1, A161246(#)*A342136((n+1)/#-1)]`
-/

namespace A161031.P15473461402546268387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A161246 d * A342136 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A161031.P15473461402546268387

/-! ## A161031.P13335143746037262372

`∑{d}[n+1, A161312(#)*A342136((n+1)/#-1)]`
-/

namespace A161031.P13335143746037262372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A161312 d * A342136 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A161031.P13335143746037262372

/-!
# A161032: Number of partitions of n into positive Fibonacci numbers where every part appears at least 8 times.

The programs for A161032, there is no canonical definition to state claims against.
-/

/-! ## A161032.P14537824261952014362

`∑{d}[n+1, A161247(#)*A324012((n+1)/#-1)]`
-/

namespace A161032.P14537824261952014362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A161247 d * A324012 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A161032.P14537824261952014362

/-!
# A161033: Number of partitions of n into positive Fibonacci numbers where every part appears at least 9 times.

The programs for A161033, there is no canonical definition to state claims against.
-/

/-! ## A161033.P5034272255870615072

`∑{d}[n+1, A161300(#)*A330055((n+1)/#-1)]`
-/

namespace A161033.P5034272255870615072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A161300 d * A330055 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A161033.P5034272255870615072

/-! ## A161033.P5803450648234532252

`∑{d}[n+1, A161248(#)*A369926((n+1)/#-1)]`
-/

namespace A161033.P5803450648234532252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A161248 d * A369926 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A161033.P5803450648234532252

/-! ## A161033.P18247002036837735482

`∑{d}[n+1, A161314(#)*A369926((n+1)/#-1)]`
-/

namespace A161033.P18247002036837735482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A161314 d * A369926 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A161033.P18247002036837735482

/-!
# A161039: Number of partitions of n into odd numbers where every part appears at least 3 times.

The programs for A161039, there is no canonical definition to state claims against.
-/

/-! ## A161039.P11920227492174656433

`A185284(A069011(n))+A161104(n+1)`
-/

namespace A161039.P11920227492174656433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A069011 n).toNat + A161104 (n + 1)

end

end A161039.P11920227492174656433

/-! ## A161039.P10750729932418790132

`A267528(A161065(n+1))%A008619(A034297(n))`
-/

namespace A161039.P10750729932418790132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267528 (A161065 (n + 1)).toNat) (A008619 (A034297 n).toNat)

end

end A161039.P10750729932418790132

/-!
# A161041: Number of partitions of n into odd numbers where every part appears at least 5 times.

The programs for A161041, there is no canonical definition to state claims against.
-/

/-! ## A161041.P9274866942441790456

`∑{d}[n+1, A161067(#)*A268814((n+1)/#-1)]`
-/

namespace A161041.P9274866942441790456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A161067 d * A268814 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A161041.P9274866942441790456

/-! ## A161041.P7724634048875584492

`∑{d}[n+1, A161106(#)*A268814((n+1)/#-1)]`
-/

namespace A161041.P7724634048875584492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A161106 d * A268814 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A161041.P7724634048875584492

/-! ## A161041.P13971836908451301433

`∑{d}[n+1, A161067(#)*A324011((n+1)/#-1)]`
-/

namespace A161041.P13971836908451301433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A161067 d * A324011 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A161041.P13971836908451301433

/-! ## A161041.P9442992219219524399

`∑{d}[n+1, A161106(#)*A324011((n+1)/#-1)]`
-/

namespace A161041.P9442992219219524399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A161106 d * A324011 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A161041.P9442992219219524399

/-! ## A161041.P16940837100703452743

`A185284(A057164(n))+A161067(n+1)`
-/

namespace A161041.P16940837100703452743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A057164 n).toNat + A161067 (n + 1)

end

end A161041.P16940837100703452743

/-!
# A161042: Number of partitions of n into odd numbers where every part appears at least 6 times.

The programs for A161042, there is no canonical definition to state claims against.
-/

/-! ## A161042.P14333883894742539972

`A185284(A161046(3*n+1))+A130945(A161107(n+1))`
-/

namespace A161042.P14333883894742539972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A161046 (3 * n + 1)).toNat + A130945 (A161107 (n + 1)).toNat

end

end A161042.P14333883894742539972

/-! ## A161042.P18035915742973643519

`A185284(A161070(3*n+2))+A130945(A161107(n+1))`
-/

namespace A161042.P18035915742973643519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A161070 (3 * n + 2)).toNat + A130945 (A161107 (n + 1)).toNat

end

end A161042.P18035915742973643519

/-! ## A161042.P17369372972065653961

`A004271(A161068(n+1)%A118039(n))`
-/

namespace A161042.P17369372972065653961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 (Int.tmod (A161068 (n + 1)) (A118039 n)).toNat

end

end A161042.P17369372972065653961

/-!
# A161043: Number of partitions of n into odd numbers where every part appears at least 7 times.

The programs for A161043, there is no canonical definition to state claims against.
-/

/-! ## A161043.P8006896755904894292

`A161069(n+1)+A185284(n)%A010263(n)`
-/

namespace A161043.P8006896755904894292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161069 (n + 1) + Int.tmod (A185284 n) (A010263 n)

end

end A161043.P8006896755904894292

/-! ## A161043.P1004364054497700763

`or(A161069(n+1), A185284(A297876(n+1)))`
-/

namespace A161043.P1004364054497700763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A161069 (n + 1)) (A185284 (A297876 (n + 1)).toNat)

end

end A161043.P1004364054497700763

/-! ## A161043.P1306090993884660265

`or(A161108(n+1), A185284(A297876(n+1)))`
-/

namespace A161043.P1306090993884660265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A161108 (n + 1)) (A185284 (A297876 (n + 1)).toNat)

end

end A161043.P1306090993884660265

/-! ## A161043.P13044704691581477349

`A161069(n+1)+A185284(A297876(n+1))*A185284(n)`
-/

namespace A161043.P13044704691581477349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161069 (n + 1) + A185284 (A297876 (n + 1)).toNat * A185284 n

end

end A161043.P13044704691581477349

/-! ## A161043.P5516862969500158096

`A161108(n+1)+A185284(A297876(n+1))*A185284(n)`
-/

namespace A161043.P5516862969500158096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161108 (n + 1) + A185284 (A297876 (n + 1)).toNat * A185284 n

end

end A161043.P5516862969500158096

/-!
# A161044: Number of partitions of n into odd numbers where every part appears at least 8 times.

The programs for A161044, there is no canonical definition to state claims against.
-/

/-! ## A161044.P15508160225936810399

`∑{d}[n+1, A161109(#)*A324012((n+1)/#-1)]`
-/

namespace A161044.P15508160225936810399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A161109 d * A324012 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A161044.P15508160225936810399

/-! ## A161044.P16040140992941448396

`A322996(A185245(n))+A161070(n+1)`
-/

namespace A161044.P16040140992941448396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322996 (A185245 n).toNat + A161070 (n + 1)

end

end A161044.P16040140992941448396

/-! ## A161044.P18321071182829596157

`A322996(A185245(n))+A161109(n+1)`
-/

namespace A161044.P18321071182829596157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322996 (A185245 n).toNat + A161109 (n + 1)

end

end A161044.P18321071182829596157

/-! ## A161044.P10580103779551166224

`A161070(∑[A185245(n)!])`
-/

namespace A161044.P10580103779551166224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A185245 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161070 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A161044.P10580103779551166224

/-! ## A161044.P3772212281111701847

`A161109(∑[A185245(n)!])`
-/

namespace A161044.P3772212281111701847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A185245 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161109 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A161044.P3772212281111701847

/-!
# A161045: Number of partitions of n into odd numbers where every part appears at least 9 times.

The programs for A161045, there is no canonical definition to state claims against.
-/

/-! ## A161045.P16816771190392737863

`∑{d}[n+1, A161071(#)*A330054((n+1)/#-1)]`
-/

namespace A161045.P16816771190392737863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A161071 d * A330054 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A161045.P16816771190392737863

/-! ## A161045.P4233108960075847419

`∑{d}[n+1, A161110(#)*A330054((n+1)/#-1)]`
-/

namespace A161045.P4233108960075847419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A161110 d * A330054 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A161045.P4233108960075847419

/-! ## A161045.P14774082606385906088

`∑{d}[n+1, A161071(#)*A369926((n+1)/#-1)]`
-/

namespace A161045.P14774082606385906088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A161071 d * A369926 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A161045.P14774082606385906088

/-! ## A161045.P5327101929073908058

`∑{d}[n+1, A161110(#)*A369926((n+1)/#-1)]`
-/

namespace A161045.P5327101929073908058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A161110 d * A369926 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A161045.P5327101929073908058

/-! ## A161045.P8053813276890012010

`A186745(A185305(n+1))+A161071(n+1)`
-/

namespace A161045.P8053813276890012010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186745 (A185305 (n + 1)).toNat + A161071 (n + 1)

end

end A161045.P8053813276890012010

/-!
# A161046: Number of partitions of n into odd numbers where every part appears at least 10 times.

The programs for A161046, there is no canonical definition to state claims against.
-/

/-! ## A161046.P10939293317395455995

`A161111(n+1)+and(A025466(2*(n+1)), A094277(n+1))`
-/

namespace A161046.P10939293317395455995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161111 (n + 1) + Int.land (A025466 (2 * (n + 1))) (A094277 (n + 1))

end

end A161046.P10939293317395455995

/-! ## A161046.P6886954087595237116

`A161072(lt[A161104(n+1), n+2]+1)`
-/

namespace A161046.P6886954087595237116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161104 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161072 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A161046.P6886954087595237116

/-! ## A161046.P10912626607890912297

`∑{d}[n+1, A161072(#)*A330054((n+1)/#-1)]`
-/

namespace A161046.P10912626607890912297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A161072 d * A330054 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A161046.P10912626607890912297

/-! ## A161046.P10513442390603540513

`∑{d}[n+1, A161111(#)*A330054((n+1)/#-1)]`
-/

namespace A161046.P10513442390603540513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A161111 d * A330054 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A161046.P10513442390603540513

/-! ## A161046.P6767520808490893898

`∑{d}[n+1, A161072(#)*A369926((n+1)/#-1)]`
-/

namespace A161046.P6767520808490893898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A161072 d * A369926 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A161046.P6767520808490893898

/-! ## A161046.P17637119685084220665

`∑{d}[n+1, A161111(#)*A369926((n+1)/#-1)]`
-/

namespace A161046.P17637119685084220665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A161111 d * A369926 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A161046.P17637119685084220665

/-! ## A161046.P1809638146105950526

`A161111(n+1)+A055641(A254766(n+1))`
-/

namespace A161046.P1809638146105950526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161111 (n + 1) + A055641 (A254766 (n + 1)).toNat

end

end A161046.P1809638146105950526

/-!
# A161047: Number of partitions of n into odd numbers where every part appears at least 11 times.

The programs for A161047, there is no canonical definition to state claims against.
-/

/-! ## A161047.P6547676993802324302

`A185284(A161112(2*(n+1)))+A161112(n+1)`
-/

namespace A161047.P6547676993802324302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A161112 (2 * (n + 1))).toNat + A161112 (n + 1)

end

end A161047.P6547676993802324302

/-! ## A161047.P3642657320552855752

`A297046(A065094(n+2))`
-/

namespace A161047.P3642657320552855752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297046 (A065094 (n + 2)).toNat

end

end A161047.P3642657320552855752

/-! ## A161047.P105428343755280499

`A297046(A033499(n+1))`
-/

namespace A161047.P105428343755280499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297046 (A033499 (n + 1)).toNat

end

end A161047.P105428343755280499

/-!
# A161048: Number of partitions of n into odd numbers where every part appears at least 12 times.

The programs for A161048, there is no canonical definition to state claims against.
-/

/-! ## A161048.P16622260469218853859

`A085170(A161113(1+n)%A151728(n))`
-/

namespace A161048.P16622260469218853859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085170 (Int.tmod (A161113 (1 + n)) (A151728 n)).toNat

end

end A161048.P16622260469218853859

/-! ## A161048.P7622860090148826877

`∑{d}[n+1, A057405(#-1)*A161074((n+1)/#)]`
-/

namespace A161048.P7622860090148826877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057405 (d - 1) * A161074 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A161048.P7622860090148826877

/-! ## A161048.P6495509743699630055

`∑{d}[n+1, A057405(#-1)*A161113((n+1)/#)]`
-/

namespace A161048.P6495509743699630055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057405 (d - 1) * A161113 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A161048.P6495509743699630055

/-! ## A161048.P1123767791099960246

`∑{d}[n+1, A057402(#-1)*A161074((n+1)/#)]`
-/

namespace A161048.P1123767791099960246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057402 (d - 1) * A161074 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A161048.P1123767791099960246

/-! ## A161048.P12915397381413655817

`∑{d}[n+1, A057402(#-1)*A161113((n+1)/#)]`
-/

namespace A161048.P12915397381413655817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057402 (d - 1) * A161113 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A161048.P12915397381413655817

/-!
# A161049: Number of partitions of n into odd numbers where every part appears at least 13 times.

The programs for A161049, there is no canonical definition to state claims against.
-/

/-! ## A161049.P1959866193370132968

`∑{d}[n+1, A161101(#)*A262430((n+1)/#-1)]`
-/

namespace A161049.P1959866193370132968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A161101 d * A262430 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A161049.P1959866193370132968

/-! ## A161049.P3334138942384875299

`A297046(A032501(n+2))`
-/

namespace A161049.P3334138942384875299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297046 (A032501 (n + 2)).toNat

end

end A161049.P3334138942384875299

/-! ## A161049.P14531142881883704159

`A327103(A308920(n))`
-/

namespace A161049.P14531142881883704159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327103 (A308920 n).toNat

end

end A161049.P14531142881883704159

/-!
# A161050: Number of partitions of n into odd numbers where every part appears at least 14 times.

The programs for A161050, there is no canonical definition to state claims against.
-/

/-! ## A161050.P4492075043728195854

`∑{d}[n+1, A161102(#)*A262430((n+1)/#-1)]`
-/

namespace A161050.P4492075043728195854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A161102 d * A262430 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A161050.P4492075043728195854

/-!
# A161051: Number of partitions of 2n into powers of two where every part appears at least twice.

The programs for A161051, the canonical program `A161051.P17687368643804515329` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161051 has offset 1).

The definition of A161051 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161051.P17687368643804515329

`Δ[a(n-1)+a(A113497(n)%n)]` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A161051

/-- `Δ[a(n-1)+a(A113497(n)%n)]` -/
def P17687368643804515329.Spec : Prop :=
  ∀ n, P17687368643804515329.a n = A161051 (n + 1)

theorem P17687368643804515329.correct : P17687368643804515329.Spec := by
  intro n
  simp only [A161051, Nat.add_sub_cancel]

end A161051

/-! ## A161051.P6490506200187539159

`Δ[A018819(n)+a(n-3)]` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A161051.P6490506200187539159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n f1 =>
  A018819 n + f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161051.P6490506200187539159

namespace A161051

/-- `Δ[A018819(n)+a(n-3)]` -/
def P6490506200187539159.Spec : Prop :=
  ∀ n, P6490506200187539159.a n = A161051 (n + 1)

end A161051

/-! ## A161051.P5819639769750201786

`Δ[a(n-1)+a(A028242(n)-1)]` with `a(0)=1, a(1)=1`
-/

namespace A161051.P5819639769750201786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + f1 (A028242 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A161051.P5819639769750201786

namespace A161051

/-- `Δ[a(n-1)+a(A028242(n)-1)]` -/
def P5819639769750201786.Spec : Prop :=
  ∀ n, P5819639769750201786.a n = A161051 (n + 1)

end A161051

/-! ## A161051.P10521326560059565396

`Δ[a(n-1)+a(n-A030451(n))]` with `a(0)=1, a(1)=1`
-/

namespace A161051.P10521326560059565396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + f1 ((n : ℤ) - A030451 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A161051.P10521326560059565396

namespace A161051

/-- `Δ[a(n-1)+a(n-A030451(n))]` -/
def P10521326560059565396.Spec : Prop :=
  ∀ n, P10521326560059565396.a n = A161051 (n + 1)

end A161051

/-! ## A161051.P13650027135677417720

`A018819(n+1)-(a(n-2)+a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A161051.P13650027135677417720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A018819 (n + 1) - (a (n - 2) + a (n - 1))

end

end A161051.P13650027135677417720

namespace A161051

/-- `A018819(n+1)-(a(n-2)+a(n-1))` -/
def P13650027135677417720.Spec : Prop :=
  ∀ n, P13650027135677417720.a n = A161051 (n + 1)

end A161051

/-! ## A161051.P12705277128822407892

`Δ[A339277(n)]`
-/

namespace A161051.P12705277128822407892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161051.P12705277128822407892

namespace A161051

/-- `Δ[A339277(n)]` -/
def P12705277128822407892.Spec : Prop :=
  ∀ n, P12705277128822407892.a n = A161051 (n + 1)

end A161051

/-! ## A161051.P6009933751595983000

`A339277(n+1)-A339277(n)`
-/

namespace A161051.P6009933751595983000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339277 (n + 1) - A339277 n

end

end A161051.P6009933751595983000

namespace A161051

/-- `A339277(n+1)-A339277(n)` -/
def P6009933751595983000.Spec : Prop :=
  ∀ n, P6009933751595983000.a n = A161051 (n + 1)

end A161051

/-! ## A161051.P889514615174277920

`record[A339277(A142150(n))]-A339277(n)`
-/

namespace A161051.P889514615174277920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339277 (A142150 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A339277 n

end

end A161051.P889514615174277920

namespace A161051

/-- `record[A339277(A142150(n))]-A339277(n)` -/
def P889514615174277920.Spec : Prop :=
  ∀ n, P889514615174277920.a n = A161051 (n + 1)

end A161051

/-!
# A161052: Number of partitions of n into powers of two where every part appears at least 3 times.

The programs for A161052, there is no canonical definition to state claims against.
-/

/-! ## A161052.P17690873529245882462

`A178798(A337983(n))+A161256(n+1)`
-/

namespace A161052.P17690873529245882462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A337983 n).toNat + A161256 (n + 1)

end

end A161052.P17690873529245882462

/-! ## A161052.P16466210625838381284

`A161256(n+1)-A025469(A303851(n))`
-/

namespace A161052.P16466210625838381284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161256 (n + 1) - A025469 (A303851 n).toNat

end

end A161052.P16466210625838381284

/-! ## A161052.P9878568884529592038

`A161256(n+1)-A185284(A161258(2*(n+2)))`
-/

namespace A161052.P9878568884529592038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161256 (n + 1) - A185284 (A161258 (2 * (n + 2))).toNat

end

end A161052.P9878568884529592038

/-!
# A161053: Number of partitions of n into powers of two where every part appears at least 4 times.

The programs for A161053, there is no canonical definition to state claims against.
-/

/-! ## A161053.P3548277517613614667

`A161257(n+1)-A073490(A234517(n+1))`
-/

namespace A161053.P3548277517613614667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161257 (n + 1) - A073490 (A234517 (n + 1)).toNat

end

end A161053.P3548277517613614667

/-! ## A161053.P12117909120942877191

`A161229(A187829(n+1))`
-/

namespace A161053.P12117909120942877191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161229 (A187829 (n + 1)).toNat

end

end A161053.P12117909120942877191

/-!
# A161054: Number of partitions of n into powers of two where every part appears at least 5 times.

The programs for A161054, there is no canonical definition to state claims against.
-/

/-! ## A161054.P6462168607261797941

`A161258(n+1)-A185284(n)*A238469(3*n+4)`
-/

namespace A161054.P6462168607261797941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161258 (n + 1) - A185284 n * A238469 (3 * n + 4)

end

end A161054.P6462168607261797941

/-! ## A161054.P14607976469897464249

`A161258(n+1)-A086483(A184946(n))`
-/

namespace A161054.P14607976469897464249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161258 (n + 1) - A086483 (A184946 n).toNat

end

end A161054.P14607976469897464249

/-! ## A161054.P2316914072094829538

`A161258(n+1)-A238469(A141214(n))`
-/

namespace A161054.P2316914072094829538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161258 (n + 1) - A238469 (A141214 n).toNat

end

end A161054.P2316914072094829538

/-! ## A161054.P12042736723177102102

`A161258(n+1)+A238469(6*A141214(n))`
-/

namespace A161054.P12042736723177102102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161258 (n + 1) + A238469 (6 * A141214 n).toNat

end

end A161054.P12042736723177102102

/-! ## A161054.P18319632013339228304

`A161258(n+1)-A161258(A108104(A185238(n)))`
-/

namespace A161054.P18319632013339228304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161258 (n + 1) - A161258 (A108104 (A185238 n).toNat).toNat

end

end A161054.P18319632013339228304

/-!
# A161055: Number of partitions of n into powers of two where every part appears at least 6 times.

The programs for A161055, there is no canonical definition to state claims against.
-/

/-! ## A161055.P7498716253746115410

`A161259(n+1)-A173923(A076303(n+1))`
-/

namespace A161055.P7498716253746115410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161259 (n + 1) - A173923 (A076303 (n + 1)).toNat

end

end A161055.P7498716253746115410

/-! ## A161055.P13738736892755620919

`∑{d}[n+1, A002562(#)*A161231((n+1)/#)]`
-/

namespace A161055.P13738736892755620919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002562 d * A161231 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A161055.P13738736892755620919

/-! ## A161055.P3111113317890111994

`∑{d}[n+1, A161231(#)*A364278((n+1)/#-1)]`
-/

namespace A161055.P3111113317890111994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A161231 d * A364278 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A161055.P3111113317890111994

/-!
# A161056: Number of partitions of n into powers of two where every part appears at least 7 times.

The programs for A161056, there is no canonical definition to state claims against.
-/

/-! ## A161056.P5171229706396055302

`A089870(A161260(n+1)%A316092(n+1))`
-/

namespace A161056.P5171229706396055302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089870 (Int.tmod (A161260 (n + 1)) (A316092 (n + 1))).toNat

end

end A161056.P5171229706396055302

/-! ## A161056.P8104705172336481942

`∑{d}[n+1, A161232(#)*A333163((n+1)/#-1)]`
-/

namespace A161056.P8104705172336481942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A161232 d * A333163 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A161056.P8104705172336481942

/-!
# A161057: Number of partitions of n into powers of two where every part appears at least 8 times.

The programs for A161057, there is no canonical definition to state claims against.
-/

/-! ## A161057.P6581542579070876224

`A161261(n+1)-A185284(A321445(n))`
-/

namespace A161057.P6581542579070876224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161261 (n + 1) - A185284 (A321445 n).toNat

end

end A161057.P6581542579070876224

/-! ## A161057.P7886768418387573754

`A161261(n+1)-A025465(A168323(n+1))`
-/

namespace A161057.P7886768418387573754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161261 (n + 1) - A025465 (A168323 (n + 1)).toNat

end

end A161057.P7886768418387573754

/-! ## A161057.P10383806951443750075

`A161261(n+1)-A018843(A240020(n+1))`
-/

namespace A161057.P10383806951443750075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161261 (n + 1) - A018843 (A240020 (n + 1)).toNat

end

end A161057.P10383806951443750075

/-!
# A161058: Number of partitions of n into powers of two where every part appears at least 9 times.

The programs for A161058, there is no canonical definition to state claims against.
-/

/-! ## A161058.P17761799230661219335

`A161262(n+1)-A000007(A332839(n+1))`
-/

namespace A161058.P17761799230661219335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161262 (n + 1) - A000007 (A332839 (n + 1)).toNat

end

end A161058.P17761799230661219335

/-! ## A161058.P10476870278071184136

`A161262(1+n)-A063524(A258646(n))`
-/

namespace A161058.P10476870278071184136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161262 (1 + n) - A063524 (A258646 n).toNat

end

end A161058.P10476870278071184136

/-! ## A161058.P11616971831713427524

`A161262(n+1)-∑{d}[A258646(n), A008683(#)]`
-/

namespace A161058.P11616971831713427524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258646 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161262 (n + 1) - ∑ d ∈ Nat.divisors (f1 n).natAbs, A008683 d

end

end A161058.P11616971831713427524

/-! ## A161058.P6914011957974910777

`A161262(n+1)-A025437(A341100(n+1))`
-/

namespace A161058.P6914011957974910777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161262 (n + 1) - A025437 (A341100 (n + 1)).toNat

end

end A161058.P6914011957974910777

/-!
# A161059: Number of partitions of n into powers of two where every part appears at least 10 times.

The programs for A161059, there is no canonical definition to state claims against.
-/

/-! ## A161059.P1276746763485368676

`∑{d}[n+1, A006835(#-1)*A160980((n+1)/#)]`
-/

namespace A161059.P1276746763485368676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A006835 (d - 1) * A160980 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A161059.P1276746763485368676

/-! ## A161059.P13431678269357246841

`∑{d}[n+1, A006835(#-1)*A161034((n+1)/#)]`
-/

namespace A161059.P13431678269357246841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A006835 (d - 1) * A161034 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A161059.P13431678269357246841

/-!
# A161060: Number of partitions of n into powers of two where every part appears at least 11 times.

The programs for A161060, there is no canonical definition to state claims against.
-/

/-! ## A161060.P10191953022582356535

`∑{d}[n+1, A006649(#-1)*A161236((n+1)/#)]`
-/

namespace A161060.P10191953022582356535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A006649 (d - 1) * A161236 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A161060.P10191953022582356535

/-! ## A161060.P9984407473494569154

`∑{d}[n+1, A161289(#)*A330054((n+1)/#-1)]`
-/

namespace A161060.P9984407473494569154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A161289 d * A330054 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A161060.P9984407473494569154

/-! ## A161060.P390948592199965462

`∑{d}[n+1, A161289(#)*A330055((n+1)/#-1)]`
-/

namespace A161060.P390948592199965462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A161289 d * A330055 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A161060.P390948592199965462

/-! ## A161060.P5378891610815645539

`∑{d}[n+1, A161289(#)*A369926((n+1)/#-1)]`
-/

namespace A161060.P5378891610815645539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A161289 d * A369926 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A161060.P5378891610815645539

/-!
# A161061: Number of partitions of n into powers of two where every part appears at least 12 times.

The programs for A161061, there is no canonical definition to state claims against.
-/

/-! ## A161061.P6623126535601273032

`∑{d}[n+1, A057405(#-1)*A161290((n+1)/#)]`
-/

namespace A161061.P6623126535601273032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057405 (d - 1) * A161290 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A161061.P6623126535601273032

/-! ## A161061.P12340936560534560733

`∑{d}[n+1, A057402(#-1)*A161290((n+1)/#)]`
-/

namespace A161061.P12340936560534560733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057402 (d - 1) * A161290 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A161061.P12340936560534560733

/-! ## A161061.P17275503431686434304

`∑{d}[n+1, A161290(#)*A330055((n+1)/#-1)]`
-/

namespace A161061.P17275503431686434304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A161290 d * A330055 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A161061.P17275503431686434304

/-! ## A161061.P4212132141130867490

`∑{d}[n+1, A161290(#)*A369926((n+1)/#-1)]`
-/

namespace A161061.P4212132141130867490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A161290 d * A369926 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A161061.P4212132141130867490

/-!
# A161063: Number of partitions of n into powers of two where every part appears at least 14 times.

The programs for A161063, there is no canonical definition to state claims against.
-/

/-! ## A161063.P1397621538356951251

`∑{d}[n+1, A057401(#-1)*A161292((n+1)/#)]`
-/

namespace A161063.P1397621538356951251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057401 (d - 1) * A161292 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A161063.P1397621538356951251

/-!
# A161064: Number of partitions of n into powers of two minus one where every part appears at least 2 times.

The programs for A161064, there is no canonical definition to state claims against.
-/

/-! ## A161064.P4946812920360403433

`A054404(Δ[Δ[A339279(3*n+1)]])`
-/

namespace A161064.P4946812920360403433
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339279 (3 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (f1 (n + 1) - f1 n).toNat

end

end A161064.P4946812920360403433

/-! ## A161064.P8497876162409172533

`A103221(∑[A062756(A022095(n))])`
-/

namespace A161064.P8497876162409172533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (A022095 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A161064.P8497876162409172533

/-! ## A161064.P11230371798693045511

`A183094(A317783(n))+A029170(n+1)`
-/

namespace A161064.P11230371798693045511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183094 (A317783 n).toNat + A029170 (n + 1)

end

end A161064.P11230371798693045511

/-! ## A161064.P3933947578430714980

`A025798(lt[A025803(3*n+4), 2*n])`
-/

namespace A161064.P3933947578430714980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025803 (3 * n + 4)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025798 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A161064.P3933947578430714980

/-! ## A161064.P16515306882451572111

`A157231(n+1)-A057428(A385061(2*(n+1)))`
-/

namespace A161064.P16515306882451572111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157231 (n + 1) - A057428 (A385061 (2 * (n + 1))).toNat

end

end A161064.P16515306882451572111

/-!
# A161065: Number of partitions of n into powers of two minus one where every part appears at least 3 times.

The programs for A161065, there is no canonical definition to state claims against.
-/

/-! ## A161065.P500738627020622385

`A130945(A161104(n+1))-A185284(A130945(n+1))`
-/

namespace A161065.P500738627020622385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130945 (A161104 (n + 1)).toNat - A185284 (A130945 (n + 1)).toNat

end

end A161065.P500738627020622385

/-! ## A161065.P2589745971462950524

`A057164(A161104(n+1))-A185284(A065650(n))`
-/

namespace A161065.P2589745971462950524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A161104 (n + 1)).toNat - A185284 (A065650 n).toNat

end

end A161065.P2589745971462950524

/-!
# A161066: Number of partitions of n into powers of two minus one where every part appears at least 4 times.

The programs for A161066, there is no canonical definition to state claims against.
-/

/-! ## A161066.P10015598013271572798

`A161072(lt[A161038(n+1), A161070(n+1)])`
-/

namespace A161066.P10015598013271572798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161070 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161072 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A161066.P10015598013271572798

/-! ## A161066.P4170701729994950966

`A161111(lt[A161038(n+1), A161070(n+1)])`
-/

namespace A161066.P4170701729994950966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161070 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161111 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A161066.P4170701729994950966

/-!
# A161067: Number of partitions of n into powers of two minus one where every part appears at least 5 times.

The programs for A161067, there is no canonical definition to state claims against.
-/

/-! ## A161067.P9519361728303680647

`A161106(n+1)-A127686(A185977(2*n+5))`
-/

namespace A161067.P9519361728303680647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161106 (n + 1) - A127686 (A185977 (2 * n + 5)).toNat

end

end A161067.P9519361728303680647

/-! ## A161067.P16052395862995319085

`A161106(n+1)-A000007(A144879(n+1))`
-/

namespace A161067.P16052395862995319085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161106 (n + 1) - A000007 (A144879 (n + 1)).toNat

end

end A161067.P16052395862995319085

/-! ## A161067.P16055579976256688856

`A029915(A161106(n+1)^A122698(n+1)!)`
-/

namespace A161067.P16055579976256688856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029915 (A161106 (n + 1) ^ Nat.factorial (A122698 (n + 1)).toNat).toNat

end

end A161067.P16055579976256688856

/-!
# A161068: Number of partitions of n into powers of two minus one where every part appears at least 6 times.

The programs for A161068, there is no canonical definition to state claims against.
-/

/-! ## A161068.P1796949671492119132

`A089854(A161107(n+1)%A005496(n))`
-/

namespace A161068.P1796949671492119132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089854 (Int.tmod (A161107 (n + 1)) (A005496 n)).toNat

end

end A161068.P1796949671492119132

/-! ## A161068.P14298416952248259783

`A161107(n+1)-A161112(A161148(2*n+5))`
-/

namespace A161068.P14298416952248259783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161107 (n + 1) - A161112 (A161148 (2 * n + 5)).toNat

end

end A161068.P14298416952248259783

/-!
# A161069: Number of partitions of n into powers of two minus one where every part appears at least 7 times.

The programs for A161069, there is no canonical definition to state claims against.
-/

/-! ## A161069.P4762376276799088007

`A161108(n+1)-A185284(A173387(n+1))`
-/

namespace A161069.P4762376276799088007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161108 (n + 1) - A185284 (A173387 (n + 1)).toNat

end

end A161069.P4762376276799088007

/-! ## A161069.P8006905221746249080

`A161108(n+1)-A185284(A161081(n+1))`
-/

namespace A161069.P8006905221746249080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161108 (n + 1) - A185284 (A161081 (n + 1)).toNat

end

end A161069.P8006905221746249080

/-!
# A161070: Number of partitions of n into powers of two minus one where every part appears at least 8 times.

The programs for A161070, there is no canonical definition to state claims against.
-/

/-! ## A161070.P12738099183604301601

`A161109(n+1)-A185284(A161083(n+5))`
-/

namespace A161070.P12738099183604301601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161109 (n + 1) - A185284 (A161083 (n + 5)).toNat

end

end A161070.P12738099183604301601

/-!
# A161071: Number of partitions of n into powers of two minus one where every part appears at least 9 times.

The programs for A161071, there is no canonical definition to state claims against.
-/

/-! ## A161071.P663885020099756823

`A161110(n+1)-A185284(A062830(n+1))`
-/

namespace A161071.P663885020099756823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161110 (n + 1) - A185284 (A062830 (n + 1)).toNat

end

end A161071.P663885020099756823

/-! ## A161071.P6425830492842244882

`A161110(n+1)-A185284(A161112(2*(n+2)))`
-/

namespace A161071.P6425830492842244882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161110 (n + 1) - A185284 (A161112 (2 * (n + 2))).toNat

end

end A161071.P6425830492842244882

/-!
# A161072: Number of partitions of n into powers of two minus one where every part appears at least 10 times.

The programs for A161072, there is no canonical definition to state claims against.
-/

/-! ## A161072.P1118746255194128693

`A161111(n+1)-A185284(A161042(n+4))`
-/

namespace A161072.P1118746255194128693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161111 (n + 1) - A185284 (A161042 (n + 4)).toNat

end

end A161072.P1118746255194128693

/-! ## A161072.P11060449731344878547

`A261423(A161111(n+1)%A122089(n+1))`
-/

namespace A161072.P11060449731344878547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261423 (Int.tmod (A161111 (n + 1)) (A122089 (n + 1))).toNat

end

end A161072.P11060449731344878547

/-!
# A161077: Number of partitions of n into primes or 1 where every part appears at least 2 times.

The programs for A161077, there is no canonical definition to state claims against.
-/

/-! ## A161077.P11849879216585633550

`Δ[A339218(n)]+∑[A339218(n)]`
-/

namespace A161077.P11849879216585633550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339218 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A161077.P11849879216585633550

/-! ## A161077.P6559769968433191327

`∑[A339218(n+1)]+1-A339218(n)`
-/

namespace A161077.P6559769968433191327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A339218 n)

end

end A161077.P6559769968433191327

/-! ## A161077.P10398524237808185558

`A161026(or(A161037(n+1), A187829(n+1)))`
-/

namespace A161077.P10398524237808185558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161026 (Int.lor (A161037 (n + 1)) (A187829 (n + 1))).toNat

end

end A161077.P10398524237808185558

/-!
# A161078: Number of partitions of n into primes or 1 where every part appears at least 3 times.

The programs for A161078, there is no canonical definition to state claims against.
-/

/-! ## A161078.P12906250983269480954

`A344246(A058343(n)!)+A161027(n+1)`
-/

namespace A161078.P12906250983269480954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344246 (Nat.factorial (A058343 n).toNat + 24) + A161027 (n + 1)

end

end A161078.P12906250983269480954

/-!
# A161079: Number of partitions of n into primes or 1 where every part appears at least 4 times.

The programs for A161079, there is no canonical definition to state claims against.
-/

/-! ## A161079.P10602359313637785734

`∑[Δ[A161028(n)]%A121648(n)]`
-/

namespace A161079.P10602359313637785734
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161028 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A121648 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161079.P10602359313637785734

/-!
# A161081: Number of partitions of n into primes or 1 where every part appears at least 6 times.

The programs for A161081, there is no canonical definition to state claims against.
-/

/-! ## A161081.P2821289506638555887

`A161036(A194917(2*(n+1)))+A161030(n+1)`
-/

namespace A161081.P2821289506638555887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161036 (A194917 (2 * (n + 1))).toNat + A161030 (n + 1)

end

end A161081.P2821289506638555887

/-! ## A161081.P10863567012204790788

`A161037(A194917(2*n+1))+A161030(n+1)`
-/

namespace A161081.P10863567012204790788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161037 (A194917 (2 * n + 1)).toNat + A161030 (n + 1)

end

end A161081.P10863567012204790788

/-! ## A161081.P15304840321895176175

`A161037(A194983(2*(n+1)))+A161030(n+1)`
-/

namespace A161081.P15304840321895176175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161037 (A194983 (2 * (n + 1))).toNat + A161030 (n + 1)

end

end A161081.P15304840321895176175

/-! ## A161081.P5734609056085128907

`A161036(A194987(2*(n+1)))+A161030(n+1)`
-/

namespace A161081.P5734609056085128907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161036 (A194987 (2 * (n + 1))).toNat + A161030 (n + 1)

end

end A161081.P5734609056085128907

/-!
# A161088: Number of partitions of n into primes or 1 where every part appears at least 13 times.

The programs for A161088, there is no canonical definition to state claims against.
-/

/-! ## A161088.P9468057691136326670

`or(A161037(n+1), A185284(A161063(n+1)))`
-/

namespace A161088.P9468057691136326670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A161037 (n + 1)) (A185284 (A161063 (n + 1)).toNat)

end

end A161088.P9468057691136326670

/-!
# A161090: Number of partitions of n into squares where every part appears at least 2 times.

The programs for A161090, there is no canonical definition to state claims against.
-/

/-! ## A161090.P1555723325253957513

`A178487(n*ratio[gcd(2, n)]*A317669(n))`
-/

namespace A161090.P1555723325253957513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178487 (SequenceMachineLib.roundAway ((n : ℚ) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ)) * (A317669 n : ℚ))).toNat

end

end A161090.P1555723325253957513

/-! ## A161090.P774575580743581110

`A008619(A005044(n))%A153687(n+1)`
-/

namespace A161090.P774575580743581110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008619 (A005044 n).toNat) (A153687 (n + 1))

end

end A161090.P774575580743581110

/-! ## A161090.P10613526420772236713

`A005686(((2*n+7-3*(-1)^n)/4)%A191755(n))`
-/

namespace A161090.P10613526420772236713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005686 (Int.tmod (SequenceMachineLib.roundAway (((2 * n : ℤ) + (7 - 3 * (-1) ^ n) : ℚ) / 4)) (A191755 n)).toNat

end

end A161090.P10613526420772236713

/-! ## A161090.P6817000685889768350

`A287272(A301765(n+2))`
-/

namespace A161090.P6817000685889768350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287272 (A301765 (n + 2)).toNat

end

end A161090.P6817000685889768350

/-! ## A161090.P18177375230093507086

`A341644(A068911(n))`
-/

namespace A161090.P18177375230093507086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341644 (A068911 n).toNat

end

end A161090.P18177375230093507086

/-!
# A161091: Number of partitions of n into squares where every part appears at least 3 times.

The programs for A161091, there is no canonical definition to state claims against.
-/

/-! ## A161091.P17558290584986696250

`A161095(lt[A161038(n+1), A161094(n+1)])`
-/

namespace A161091.P17558290584986696250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161095 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A161091.P17558290584986696250

/-! ## A161091.P6817624542395266555

`A196228(A132045(A246552(n))²)`
-/

namespace A161091.P6817624542395266555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196228 (A132045 (A246552 n).toNat ^ 2).toNat

end

end A161091.P6817624542395266555

/-!
# A161094: Number of partitions of n into squares where every part appears at least 6 times.

The programs for A161094, there is no canonical definition to state claims against.
-/

/-! ## A161094.P16069239105343003432

`A161098(lt[A161078(n+3), A161127(n+3)])`
-/

namespace A161094.P16069239105343003432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161078 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161127 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161098 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A161094.P16069239105343003432

/-! ## A161094.P8166132337545868781

`A297045(A156562((n+1)²))`
-/

namespace A161094.P8166132337545868781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297045 (A156562 ((n + 1) ^ 2)).toNat

end

end A161094.P8166132337545868781

/-! ## A161094.P292121326995670837

`A297041(A322100(n+1)+A005574(n+1))`
-/

namespace A161094.P292121326995670837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297041 (A322100 (n + 1) + A005574 (n + 1)).toNat

end

end A161094.P292121326995670837

/-! ## A161094.P9903673990789016355

`A166374(n+1)%A000196(A295283(2*n+1))`
-/

namespace A161094.P9903673990789016355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166374 (n + 1)) (A000196 (A295283 (2 * n + 1)).toNat)

end

end A161094.P9903673990789016355

/-!
# A161095: Number of partitions of n into squares where every part appears at least 7 times.

The programs for A161095, there is no canonical definition to state claims against.
-/

/-! ## A161095.P4551915804388373988

`A161102(2*(n+1)-A170957(n))`
-/

namespace A161095.P4551915804388373988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161102 ((2 * (n + 1) : ℤ) - A170957 n).toNat

end

end A161095.P4551915804388373988

/-! ## A161095.P17945913437326929296

`A297046(∑[3*A304479(n+1)])`
-/

namespace A161095.P17945913437326929296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A304479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297046 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A161095.P17945913437326929296

/-! ## A161095.P14940422503218710679

`A225654(A005472(n+2))`
-/

namespace A161095.P14940422503218710679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225654 (A005472 (n + 2)).toNat

end

end A161095.P14940422503218710679

/-! ## A161095.P5248745049876168894

`A323022(A224810(n+1))`
-/

namespace A161095.P5248745049876168894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323022 (A224810 (n + 1)).toNat

end

end A161095.P5248745049876168894

/-! ## A161095.P15245742881072505311

`A297046(A180452(n+2))`
-/

namespace A161095.P15245742881072505311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297046 (A180452 (n + 2)).toNat

end

end A161095.P15245742881072505311

/-!
# A161096: Number of partitions of n into squares where every part appears at least 8 times.

The programs for A161096, there is no canonical definition to state claims against.
-/

/-! ## A161096.P1524714068658751722

`ceil(∑{e}[A346030(n+1), A346034(#)]/3)`
-/

namespace A161096.P1524714068658751722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346030 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ p ∈ Nat.primeFactors (f1 n).natAbs, A346034 (Nat.factorization (f1 n).natAbs p) : ℤ) : ℚ) / 3⌉

end

end A161096.P1524714068658751722

/-! ## A161096.P17073427457896102361

`∑{d}[n+1, A267202(#)*A297036((n+1)/#)]`
-/

namespace A161096.P17073427457896102361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A267202 d * A297036 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A161096.P17073427457896102361

/-! ## A161096.P12830797662603726542

`A297046(A092533(n)*A116623(n))`
-/

namespace A161096.P12830797662603726542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297046 (A092533 n * A116623 n).toNat

end

end A161096.P12830797662603726542

/-! ## A161096.P9889850576213411007

`A161048(A208150(2*(n+1))+A013928(2*(n+1)))`
-/

namespace A161096.P9889850576213411007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161048 (A208150 (2 * (n + 1)) + A013928 (2 * (n + 1))).toNat

end

end A161096.P9889850576213411007

/-! ## A161096.P9089954942672999010

`A297046(A383402(n+1))`
-/

namespace A161096.P9089954942672999010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297046 (A383402 (n + 1)).toNat

end

end A161096.P9089954942672999010

/-!
# A161097: Number of partitions of n into squares where every part appears at least 9 times.

The programs for A161097, there is no canonical definition to state claims against.
-/

/-! ## A161097.P2615240100775089568

`A130467(n+2)%A077564(A000196(n+1))`
-/

namespace A161097.P2615240100775089568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130467 (n + 2)) (A077564 (A000196 (n + 1)).toNat)

end

end A161097.P2615240100775089568

/-! ## A161097.P11657582288797891986

`A227945(A023181(n+1))-1`
-/

namespace A161097.P11657582288797891986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227945 (A023181 (n + 1)).toNat - 1

end

end A161097.P11657582288797891986

/-! ## A161097.P1697032556705261473

`A355032(n+1)%A339569(n+1)`
-/

namespace A161097.P1697032556705261473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A355032 (n + 1)) (A339569 (n + 1))

end

end A161097.P1697032556705261473

/-! ## A161097.P11830699833048613629

`A161087(A316979(2*(n+1))+2*(row(n)+1)+1)`
-/

namespace A161097.P11830699833048613629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161087 (A316979 (2 * (n + 1)) + (2 * (SequenceMachineLib.triRow n + 1) : ℤ) + 1).toNat

end

end A161097.P11830699833048613629

/-! ## A161097.P16224269212164083083

`A355032(n+1)%A276625(A355028(n))`
-/

namespace A161097.P16224269212164083083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A355032 (n + 1)) (A276625 (A355028 n).toNat)

end

end A161097.P16224269212164083083

/-!
# A161098: Number of partitions of n into squares where every part appears at least 10 times.

The programs for A161098, there is no canonical definition to state claims against.
-/

/-! ## A161098.P16685542794670761903

`ceil(A326529(n)/A318847(n+1))`
-/

namespace A161098.P16685542794670761903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A326529 n : ℚ) / (A318847 (n + 1) : ℚ)⌉

end

end A161098.P16685542794670761903

/-! ## A161098.P13723508724403158861

`A004216(A069799(n+1)%A331456(n))`
-/

namespace A161098.P13723508724403158861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (Int.tmod (A069799 (n + 1)) (A331456 n)).toNat

end

end A161098.P13723508724403158861

/-! ## A161098.P11783944555214308675

`A244226(3*(n+1))%A055642(A193456(n+1))`
-/

namespace A161098.P11783944555214308675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244226 (3 * (n + 1))) (A055642 (A193456 (n + 1)).toNat)

end

end A161098.P11783944555214308675

/-! ## A161098.P7387043046260442192

`A161102(lt[2^A384931(n), A161135(n+4)])`
-/

namespace A161098.P7387043046260442192
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A384931 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161135 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161102 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A161098.P7387043046260442192

/-! ## A161098.P155054188888998005

`A257696(A325648(n+1))`
-/

namespace A161098.P155054188888998005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257696 (A325648 (n + 1)).toNat

end

end A161098.P155054188888998005

/-!
# A161099: Number of partitions of n into squares where every part appears at least 11 times.

The programs for A161099, there is no canonical definition to state claims against.
-/

/-! ## A161099.P12390451466897682855

`floor(A307188(A307204(n))/A307222(n+1))`
-/

namespace A161099.P12390451466897682855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A307188 (A307204 n).toNat : ℚ) / (A307222 (n + 1) : ℚ)⌋

end

end A161099.P12390451466897682855

/-! ## A161099.P16802209448593760030

`A161098(A106744(n+1)+1)`
-/

namespace A161099.P16802209448593760030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161098 (A106744 (n + 1) + 1).toNat

end

end A161099.P16802209448593760030

/-! ## A161099.P4630603177253787049

`A161098(A106744(n+2))`
-/

namespace A161099.P4630603177253787049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161098 (A106744 (n + 2)).toNat

end

end A161099.P4630603177253787049

/-! ## A161099.P16350090623825067949

`A152715(n+1)%A204551(n+1)`
-/

namespace A161099.P16350090623825067949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152715 (n + 1)) (A204551 (n + 1))

end

end A161099.P16350090623825067949

/-! ## A161099.P12369781525195653943

`A161102(lt[A081248(n+1), A161135(n+4)])`
-/

namespace A161099.P12369781525195653943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161135 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161102 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A161099.P12369781525195653943

