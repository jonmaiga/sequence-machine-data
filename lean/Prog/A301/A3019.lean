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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C047
import Seq.B000.C051
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C008
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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
# A301900: Heinz numbers of strict non-knapsack partitions. Squarefree numbers such that more than one divisor has the same Heinz weight A056239(d).

The programs for A301900, there is no canonical definition to state claims against.
-/

/-! ## A301900.P13251085744147673517

`filter[A299729(n+1), A008966(#)]`
-/

namespace A301900.P13251085744147673517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299729 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A301900.P13251085744147673517

/-! ## A301900.P4320926037342626040

`filter[A299729(n+1), A046951(#)]`
-/

namespace A301900.P4320926037342626040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299729 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A046951 (f1 j).toNat = 1) n)

end

end A301900.P4320926037342626040

/-! ## A301900.P4865014717708827952

`filter[A299729(n+1), A354819(#)]`
-/

namespace A301900.P4865014717708827952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299729 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A301900.P4865014717708827952

/-! ## A301900.P4979803467296642331

`filter[A299729(n+1), A380469(#)]`
-/

namespace A301900.P4979803467296642331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299729 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380469 (f1 j).toNat = 1) n)

end

end A301900.P4979803467296642331

/-! ## A301900.P16188395436184821226

`∩[A000469(n+1), A299729(n+1)]`
-/

namespace A301900.P16188395436184821226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A301900.P16188395436184821226

/-!
# A301901: Number of n X n 0..1 arrays with every element equal to 0, 2 or 3 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301901, there is no canonical definition to state claims against.
-/

/-! ## A301901.P9391630180992619552

`A301906(∑[4*n]+1)`
-/

namespace A301901.P9391630180992619552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301906 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A301901.P9391630180992619552

/-! ## A301901.P9298260234349593130

`A384753(A282960(n))`
-/

namespace A301901.P9298260234349593130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384753 (A282960 n).toNat

end

end A301901.P9298260234349593130

/-!
# A301902: Number of n X 3 0..1 arrays with every element equal to 0, 2 or 3 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301902, the canonical program `A301902.P2630632904584556270` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301902 has offset 1).

The definition of A301902 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 221 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A301902.P4825193079711301905

`ogf((-1+x+4x^2)/(-1+3x+x^2-4x^3))`
-/

namespace A301902.P4825193079711301905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -4] [1, -3, -1, 4] n

end

end A301902.P4825193079711301905

namespace A301902

/-- `ogf((-1+x+4x^2)/(-1+3x+x^2-4x^3))` -/
def P4825193079711301905.Spec : Prop :=
  ∀ n, P4825193079711301905.a n = A301902 (n + 1)

end A301902

/-! ## A301902.P2630632904584556270

`3*a(n-1)+a(n-2)-4*a(n-3)` with `a(0)=1, a(1)=2, a(2)=3`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A301902

/-- `3*a(n-1)+a(n-2)-4*a(n-3)` -/
def P2630632904584556270.Spec : Prop :=
  ∀ n, P2630632904584556270.a n = A301902 (n + 1)

theorem P2630632904584556270.correct : P2630632904584556270.Spec := by
  intro n
  simp only [A301902, Nat.add_sub_cancel]

end A301902

/-! ## A301902.P5842135140248258328

`A301906(∑[n+3]+1)`
-/

namespace A301902.P5842135140248258328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301906 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A301902.P5842135140248258328

namespace A301902

/-- `A301906(∑[n+3]+1)` -/
def P5842135140248258328.Spec : Prop :=
  ∀ n, P5842135140248258328.a n = A301902 (n + 1)

end A301902

/-! ## A301902.P17017570956045169676

`record[A301906(∑[ceil(C(or(1, n), n)/2)])]`
-/

namespace A301902.P17017570956045169676
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (Nat.lor 1 n) n : ℚ) / 2⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301906 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301902.P17017570956045169676

namespace A301902

/-- `record[A301906(∑[ceil(C(or(1, n), n)/2)])]` -/
def P17017570956045169676.Spec : Prop :=
  ∀ n, P17017570956045169676.a n = A301902 (n + 1)

end A301902

/-! ## A301902.P12460208129090071322

`record[A301906(A101881(n))]`
-/

namespace A301902.P12460208129090071322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301906 (A101881 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301902.P12460208129090071322

namespace A301902

/-- `record[A301906(A101881(n))]` -/
def P12460208129090071322.Spec : Prop :=
  ∀ n, P12460208129090071322.a n = A301902 (n + 1)

end A301902

/-!
# A301903: Number of nX5 0..1 arrays with every element equal to 0, 2 or 3 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301903, there is no canonical definition to state claims against.
-/

/-! ## A301903.P16055706696323687682

`A301906(A046691(n+3))`
-/

namespace A301903.P16055706696323687682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301906 (A046691 (n + 3)).toNat

end

end A301903.P16055706696323687682

/-!
# A301904: Number of nX6 0..1 arrays with every element equal to 0, 2 or 3 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301904, there is no canonical definition to state claims against.
-/

/-! ## A301904.P6856007135281488199

`A301906(∑[n+6]+10)`
-/

namespace A301904.P6856007135281488199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301906 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A301904.P6856007135281488199

/-!
# A301905: Number of nX7 0..1 arrays with every element equal to 0, 2 or 3 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301905, there is no canonical definition to state claims against.
-/

/-! ## A301905.P17856150742758209152

`A301906(A055999(n+4))`
-/

namespace A301905.P17856150742758209152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301906 (A055999 (n + 4)).toNat

end

end A301905.P17856150742758209152

/-!
# A301906: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 2 or 3 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301906, there is no canonical definition to state claims against.
-/

/-! ## A301906.P10070966929375523070

`A302150(n+1)-A081603(A022167(n))`
-/

namespace A301906.P10070966929375523070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302150 (n + 1) - A081603 (A022167 n).toNat

end

end A301906.P10070966929375523070

/-! ## A301906.P2627399624394189392

`A302150(n+1)+A016389(A022166(n))`
-/

namespace A301906.P2627399624394189392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302150 (n + 1) + A016389 (A022166 n).toNat

end

end A301906.P2627399624394189392

/-! ## A301906.P569305032773587879

`A302150(n+1)+A016389(A176561(n))`
-/

namespace A301906.P569305032773587879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302150 (n + 1) + A016389 (A176561 n).toNat

end

end A301906.P569305032773587879

/-! ## A301906.P6604316370356861861

`A302150(n+1)-A014707(A022171(n))`
-/

namespace A301906.P6604316370356861861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302150 (n + 1) - A014707 (A022171 n).toNat

end

end A301906.P6604316370356861861

/-! ## A301906.P3182568632424289003

`A302150(n+1)-A025469(A022345(n))`
-/

namespace A301906.P3182568632424289003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302150 (n + 1) - A025469 (A022345 n).toNat

end

end A301906.P3182568632424289003

/-!
# A301907: Number of 3Xn 0..1 arrays with every element equal to 0, 2 or 3 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301907, there is no canonical definition to state claims against.
-/

/-! ## A301907.P17822380816972509901

`A301906(∑[n+2]+4)`
-/

namespace A301907.P17822380816972509901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301906 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A301907.P17822380816972509901

/-!
# A301908: Number of 4Xn 0..1 arrays with every element equal to 0, 2 or 3 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301908, there is no canonical definition to state claims against.
-/

/-! ## A301908.P4834553761055608673

`A301906(A141214(n)+7)`
-/

namespace A301908.P4834553761055608673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301906 (A141214 n + 7).toNat

end

end A301908.P4834553761055608673

/-!
# A301909: Number of 5Xn 0..1 arrays with every element equal to 0, 2 or 3 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301909, there is no canonical definition to state claims against.
-/

/-! ## A301909.P17867194934208180607

`A301906(A167499(n+3))`
-/

namespace A301909.P17867194934208180607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301906 (A167499 (n + 3)).toNat

end

end A301909.P17867194934208180607

/-!
# A301910: Number of 6Xn 0..1 arrays with every element equal to 0, 2 or 3 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301910, there is no canonical definition to state claims against.
-/

/-! ## A301910.P8440978426911247623

`A301906(A167499(n+4)+1)`
-/

namespace A301910.P8440978426911247623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301906 (A167499 (n + 4) + 1).toNat

end

end A301910.P8440978426911247623

/-!
# A301911: Number of 7Xn 0..1 arrays with every element equal to 0, 2 or 3 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301911, there is no canonical definition to state claims against.
-/

/-! ## A301911.P16498729176250044868

`A301906(A167499(n+5)+2)`
-/

namespace A301911.P16498729176250044868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301906 (A167499 (n + 5) + 2).toNat

end

end A301911.P16498729176250044868

/-!
# A301912: Numbers k such that the decimal representation of k ends that of the sum of the first k cubes.

The programs for A301912, there is no canonical definition to state claims against.
-/

/-! ## A301912.P3435714819017883637

`A003226(∑[A167015(n)!])`
-/

namespace A301912.P3435714819017883637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A167015 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003226 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A301912.P3435714819017883637

/-! ## A301912.P1899585703960769023

`A006318(n)-A210258(A114793(n+1))`
-/

namespace A301912.P1899585703960769023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006318 n - A210258 (A114793 (n + 1)).toNat

end

end A301912.P1899585703960769023

/-!
# A301913: Primes which divide numbers of the form 3^k + 2 for k >= 1.

The programs for A301913, there is no canonical definition to state claims against.
-/

/-! ## A301913.P7854215394962357703

`p?[A179416(n)+A174896(n+1)]`
-/

namespace A301913.P7854215394962357703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179416 n + A174896 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A301913.P7854215394962357703

/-! ## A301913.P8687035842178414360

`record[A006530(C(A253563(n)+5+n, 3))]`
-/

namespace A301913.P8687035842178414360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.choose (A253563 n + 5 + (n : ℤ)).toNat 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301913.P8687035842178414360

/-! ## A301913.P14830705559413586962

`p?[A178334(A275176(n))+A064269(n+1)]`
-/

namespace A301913.P14830705559413586962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (A275176 n).toNat + A064269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A301913.P14830705559413586962

/-! ## A301913.P15330038118932412775

`A110359(A301915(n+1))`
-/

namespace A301913.P15330038118932412775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110359 (A301915 (n + 1)).toNat

end

end A301913.P15330038118932412775

/-! ## A301913.P16880362892058325966

`∩[A267304(n+1), A364867(n+1)]`
-/

namespace A301913.P16880362892058325966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364867 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A301913.P16880362892058325966

/-!
# A301915: a(n) is the multiplicative order of 3, modulo A301913(n).

The programs for A301915, there is no canonical definition to state claims against.
-/

/-! ## A301915.P8313523676938922424

`A007734(A301913(1+n))`
-/

namespace A301915.P8313523676938922424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007734 (A301913 (1 + n)).toNat

end

end A301915.P8313523676938922424

/-! ## A301915.P6556254053121632006

`A054704(2*A301913(n+1))`
-/

namespace A301915.P6556254053121632006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054704 (2 * A301913 (n + 1)).toNat

end

end A301915.P6556254053121632006

/-! ## A301915.P8577655344675940068

`A070676(2*A301913(n+1))`
-/

namespace A301915.P8577655344675940068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070676 (2 * A301913 (n + 1)).toNat

end

end A301915.P8577655344675940068

/-!
# A301916: Primes which divide numbers of the form 3^k + 1.

The programs for A301916, there is no canonical definition to state claims against.
-/

/-! ## A301916.P14731557353318325833

`A000040(lt[0, A240658(n+1)]+1)`
-/

namespace A301916.P14731557353318325833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240658 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A301916.P14731557353318325833

/-! ## A301916.P8723106056993374000

`record[A000040(n+1)%A304726(A240658(n+1))]`
-/

namespace A301916.P8723106056993374000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (A304726 (A240658 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301916.P8723106056993374000

/-! ## A301916.P2694975068149752629

`record[A008578(n+2)%A304726(A240658(n+1))]`
-/

namespace A301916.P2694975068149752629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008578 (n + 2)) (A304726 (A240658 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301916.P2694975068149752629

/-! ## A301916.P16616188578294654076

`p?[A000034(A053446(n+1))*A001651(n+1)]`
-/

namespace A301916.P16616188578294654076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A053446 (n + 1)).toNat * A001651 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A301916.P16616188578294654076

/-! ## A301916.P3692200668309337225

`p?[(n+1)*A000034(A007734(n+1))]`
-/

namespace A301916.P3692200668309337225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000034 (A007734 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A301916.P3692200668309337225

/-! ## A301916.P13904031231657344820

`p?[(n+1)*A322584(A007734(n+1)+1)]`
-/

namespace A301916.P13904031231657344820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A322584 (A007734 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A301916.P13904031231657344820

/-! ## A301916.P13293628469878376922

`A301918(A065475(n+1))`
-/

namespace A301916.P13293628469878376922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301918 (A065475 (n + 1)).toNat

end

end A301916.P13293628469878376922

/-! ## A301916.P13119071169627772690

`A064614(A301918(n+2))`
-/

namespace A301916.P13119071169627772690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064614 (A301918 (n + 2)).toNat

end

end A301916.P13119071169627772690

/-! ## A301916.P8265463317029876689

`filter[A301918(n+1), A011655(#)]`
-/

namespace A301916.P8265463317029876689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011655 (f1 j).toNat = 1) n)

end

end A301916.P8265463317029876689

/-!
# A301917: a(n) is the least k for which A301916(n) divides 3^k + 1.

The programs for A301917, there is no canonical definition to state claims against.
-/

/-! ## A301917.P2496420098514199961

`A240658(lt[0, A240658(n+1)]+1)`
-/

namespace A301917.P2496420098514199961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240658 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240658 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A301917.P2496420098514199961

/-! ## A301917.P4537195234683780180

`A007740(A301916(n+1))`
-/

namespace A301917.P4537195234683780180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007740 (A301916 (n + 1)).toNat

end

end A301917.P4537195234683780180

/-! ## A301917.P1952208713990639869

`A007734(A301916(n+1))/A040000(n)`
-/

namespace A301917.P1952208713990639869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007734 (A301916 (n + 1)).toNat : ℚ) / (A040000 n : ℚ)

end

end A301917.P1952208713990639869

/-! ## A301917.P1594876948937902819

`A007734(A301916(n+1)+A000038(n))/2`
-/

namespace A301917.P1594876948937902819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007734 (A301916 (n + 1) + A000038 n).toNat : ℚ) / 2

end

end A301917.P1594876948937902819

/-! ## A301917.P14203182928706560908

`A007734(A301916(n+1))/gcd(2, A293524(n+1))`
-/

namespace A301917.P14203182928706560908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007734 (A301916 (n + 1)).toNat : ℚ) / (Int.gcd 2 (A293524 (n + 1)) : ℚ)

end

end A301917.P14203182928706560908

/-! ## A301917.P7801751904062594768

`A007734(A301916(n+1))/A014963(A001316(n))`
-/

namespace A301917.P7801751904062594768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007734 (A301916 (n + 1)).toNat : ℚ) / (A014963 (A001316 n).toNat : ℚ)

end

end A301917.P7801751904062594768

/-! ## A301917.P7369277003847015069

`A007734(A301916(n+1))/A020639(A103517(n))`
-/

namespace A301917.P7369277003847015069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007734 (A301916 (n + 1)).toNat : ℚ) / (A020639 (A103517 n).toNat : ℚ)

end

end A301917.P7369277003847015069

/-! ## A301917.P2292473803185379316

`A007734(A301916(n+1))/A020639(A001223(n+1))`
-/

namespace A301917.P2292473803185379316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007734 (A301916 (n + 1)).toNat : ℚ) / (A020639 (A001223 (n + 1)).toNat : ℚ)

end

end A301917.P2292473803185379316

/-! ## A301917.P8765484071664289639

`A007734(A301916(n+1))/A014963(A034444(n+1))`
-/

namespace A301917.P8765484071664289639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007734 (A301916 (n + 1)).toNat : ℚ) / (A014963 (A034444 (n + 1)).toNat : ℚ)

end

end A301917.P8765484071664289639

/-! ## A301917.P4183874838631222159

`A007734(A301916(n+1))/A304442(A020639(n+1))`
-/

namespace A301917.P4183874838631222159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007734 (A301916 (n + 1)).toNat : ℚ) / (A304442 (A020639 (n + 1)).toNat : ℚ)

end

end A301917.P4183874838631222159

/-! ## A301917.P1253722353793897413

`A007734(A301916(n+1))/A279060(A123365(n+1))`
-/

namespace A301917.P1253722353793897413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007734 (A301916 (n + 1)).toNat : ℚ) / (A279060 (A123365 (n + 1)).toNat : ℚ)

end

end A301917.P1253722353793897413

/-! ## A301917.P1119113077215836594

`A007734(A301916(n+1))/A304442(A227196(n+1))`
-/

namespace A301917.P1119113077215836594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007734 (A301916 (n + 1)).toNat : ℚ) / (A304442 (A227196 (n + 1)).toNat : ℚ)

end

end A301917.P1119113077215836594

/-! ## A301917.P6138337268590561112

`A007734(2*A301916(n+1))/2`
-/

namespace A301917.P6138337268590561112
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007734 (2 * A301916 (n + 1)).toNat : ℚ) / 2

end

end A301917.P6138337268590561112

/-! ## A301917.P4800557102891146680

`A007734(A301916(n+1))/A014963(A165825(n+1))`
-/

namespace A301917.P4800557102891146680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007734 (A301916 (n + 1)).toNat : ℚ) / (A014963 (A165825 (n + 1)).toNat : ℚ)

end

end A301917.P4800557102891146680

/-!
# A301918: Primes which divide numbers of the form 3^k+3.

The programs for A301918, there is no canonical definition to state claims against.
-/

/-! ## A301918.P4159498318869356024

`∪[A037028(n), A045318(n+1)]`
-/

namespace A301918.P4159498318869356024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037028 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045318 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A301918.P4159498318869356024

/-! ## A301918.P9027921805193979524

`∪[A045318(n+1), A263570(n)]`
-/

namespace A301918.P9027921805193979524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045318 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263570 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A301918.P9027921805193979524

/-! ## A301918.P9309260211566792664

`∪[A015884(n), A301916(n+1)]`
-/

namespace A301918.P9309260211566792664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015884 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301916 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A301918.P9309260211566792664

/-! ## A301918.P18026786050040682117

`∪[A301916(n+1), A030463(n)]`
-/

namespace A301918.P18026786050040682117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030463 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A301918.P18026786050040682117

/-! ## A301918.P13661638258228662401

`∪[A037028(n), A301916(n+1)]`
-/

namespace A301918.P13661638258228662401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037028 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301916 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A301918.P13661638258228662401

/-! ## A301918.P17594299430521921112

`∪[A061171(n), A301916(n+1)]`
-/

namespace A301918.P17594299430521921112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061171 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301916 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A301918.P17594299430521921112

/-! ## A301918.P17660265725499584592

`∪[A301916(n+1), A094319(n)]`
-/

namespace A301918.P17660265725499584592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094319 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A301918.P17660265725499584592

/-! ## A301918.P11741898466349020399

`∪[A301916(n+1), A140870(n)]`
-/

namespace A301918.P11741898466349020399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140870 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A301918.P11741898466349020399

/-! ## A301918.P14241578418991429082

`∪[A263570(n), A301916(n+1)]`
-/

namespace A301918.P14241578418991429082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263570 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301916 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A301918.P14241578418991429082

/-! ## A301918.P5954501513981826721

`∪[A301916(n+1), A374150(n)]`
-/

namespace A301918.P5954501513981826721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374150 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A301918.P5954501513981826721

/-!
# A301921: Expansion of e.g.f. 1/(1 - (exp(x) - 1)/(1 - (exp(x) - 1)^2/(1 - (exp(x) - 1)^3/(1 - ...)))), a continued fraction.

The programs for A301921, there is no canonical definition to state claims against.
-/

/-! ## A301921.P12177419320063202105

`A005206(A000556(n))`
-/

namespace A301921.P12177419320063202105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A000556 n).toNat

end

end A301921.P12177419320063202105

/-! ## A301921.P1099978656296335397

`A028310(A320352(n))`
-/

namespace A301921.P1099978656296335397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A320352 n).toNat

end

end A301921.P1099978656296335397

/-!
# A301922: Regular triangle where T(n,k) is the number of unlabeled k-uniform hypergraphs spanning n vertices.

The programs for A301922, there is no canonical definition to state claims against.
-/

/-! ## A301922.P18163457174578860372

`A334387(A144510(n+1))`
-/

namespace A301922.P18163457174578860372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334387 (A144510 (n + 1)).toNat

end

end A301922.P18163457174578860372

/-! ## A301922.P13460447082639416637

`A094802(or(A125860(n), A262071(n)))`
-/

namespace A301922.P13460447082639416637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094802 (Int.lor (A125860 n) (A262071 n)).toNat

end

end A301922.P13460447082639416637

/-! ## A301922.P13126761224165111461

`or(A125806(n), A343750(A125800(n)))`
-/

namespace A301922.P13126761224165111461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A125806 n) (A343750 (A125800 n).toNat)

end

end A301922.P13126761224165111461

/-! ## A301922.P5538317461853590752

`or(A120126(A349933(n)), A125800(n))`
-/

namespace A301922.P5538317461853590752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A120126 (A349933 n).toNat) (A125800 n)

end

end A301922.P5538317461853590752

/-!
# A301924: Regular triangle where T(n,k) is the number of unlabeled k-uniform connected hypergraphs spanning n vertices.

The programs for A301924, there is no canonical definition to state claims against.
-/

/-! ## A301924.P2060246255264790345

`A120126(A349933(n)-A073424(n))`
-/

namespace A301924.P2060246255264790345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120126 (A349933 n - A073424 n).toNat

end

end A301924.P2060246255264790345

/-! ## A301924.P10430439380674892096

`A334387(A144510(n+1))-A111146(A352366(n))`
-/

namespace A301924.P10430439380674892096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334387 (A144510 (n + 1)).toNat - A111146 (A352366 n).toNat

end

end A301924.P10430439380674892096

/-! ## A301924.P7087206665218376750

`A262071(n)-A322337(A143007(n))`
-/

namespace A301924.P7087206665218376750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262071 n - A322337 (A143007 n).toNat

end

end A301924.P7087206665218376750

/-! ## A301924.P18145150225669498180

`A122538(n)-A124761(A297506(n+1))`
-/

namespace A301924.P18145150225669498180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122538 n - A124761 (A297506 (n + 1)).toNat

end

end A301924.P18145150225669498180

/-!
# A301925: a(n) is the smallest prime p such that the gap between p and the next prime is 4*n.

The programs for A301925, there is no canonical definition to state claims against.
-/

/-! ## A301925.P17024944776329051741

`A000230((1+n)*2)`
-/

namespace A301925.P17024944776329051741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000230 ((1 + n) * 2)

end

end A301925.P17024944776329051741

/-! ## A301925.P9351668239356183676

`A075067(Δ[n²])-2`
-/

namespace A301925.P9351668239356183676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075067 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 2

end

end A301925.P9351668239356183676

/-! ## A301925.P2210224765852223259

`A174350(∑[record[xor(3, n)]])`
-/

namespace A301925.P2210224765852223259
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174350 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A301925.P2210224765852223259

/-! ## A301925.P5666648513160433501

`A045881(2*(n+1))-1`
-/

namespace A301925.P5666648513160433501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045881 (2 * (n + 1)) - 1

end

end A301925.P5666648513160433501

/-! ## A301925.P12012061585695305988

`A231609(A130883(n+1))`
-/

namespace A301925.P12012061585695305988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231609 (A130883 (n + 1)).toNat

end

end A301925.P12012061585695305988

/-!
# A301926: a(n+3) = a(n) + 24*n + 32, a(0)=0, a(1)=3, a(2)=13.

The programs for A301926, the canonical program `A301926.P13768867745931816258` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301926 has offset 0).

The definition of A301926 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A301926.P16160976633713767168

`ogf((3x+7x^2+9x^3+5x^4)/(1-2x+x^2-x^3+2x^4-x^5))`
-/

namespace A301926.P16160976633713767168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 7, 9, 5] [1, -2, 1, -1, 2, -1] n

end

end A301926.P16160976633713767168

namespace A301926

/-- `ogf((3x+7x^2+9x^3+5x^4)/(1-2x+x^2-x^3+2x^4-x^5))` -/
def P16160976633713767168.Spec : Prop :=
  ∀ n, P16160976633713767168.a n = A301926 n

end A301926

/-! ## A301926.P13768867745931816258

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=0, a(1)=3, a(2)=13, a(3)=32, a(4)=59`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A301926

/-- `2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` -/
def P13768867745931816258.Spec : Prop :=
  ∀ n, P13768867745931816258.a n = A301926 n

theorem P13768867745931816258.correct : P13768867745931816258.Spec := by
  intro n
  simp only [A301926]

end A301926

/-! ## A301926.P5886773437836098680

`round((1/3-2*n)²)`
-/

namespace A301926.P5886773437836098680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((1 : ℚ) / 3 - (2 * n : ℚ)) ^ 2)

end

end A301926.P5886773437836098680

namespace A301926

/-- `round((1/3-2*n)²)` -/
def P5886773437836098680.Spec : Prop :=
  ∀ n, P5886773437836098680.a n = A301926 n

end A301926

/-! ## A301926.P14482751468637342603

`(2*n)²-lt[val(n+2, 2), 2]`
-/

namespace A301926.P14482751468637342603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 2) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 : ℤ) - (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ)

end

end A301926.P14482751468637342603

namespace A301926

/-- `(2*n)²-lt[val(n+2, 2), 2]` -/
def P14482751468637342603.Spec : Prop :=
  ∀ n, P14482751468637342603.a n = A301926 n

end A301926

/-! ## A301926.P399411642361824716

`(2*n)²-lt[xor(3, n-2), n]`
-/

namespace A301926.P399411642361824716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 ((n : ℤ) - 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 : ℤ) - (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ)

end

end A301926.P399411642361824716

namespace A301926

/-- `(2*n)²-lt[xor(3, n-2), n]` -/
def P399411642361824716.Spec : Prop :=
  ∀ n, P399411642361824716.a n = A301926 n

end A301926

/-! ## A301926.P10940431904215181046

`(2*n)²-lt[n+2, lcm(4, n+2)]`
-/

namespace A301926.P10940431904215181046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 : ℤ) - (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ)

end

end A301926.P10940431904215181046

namespace A301926

/-- `(2*n)²-lt[n+2, lcm(4, n+2)]` -/
def P10940431904215181046.Spec : Prop :=
  ∀ n, P10940431904215181046.a n = A301926 n

end A301926

/-! ## A301926.P558223596517033281

`(2*n)²-∪[2*n+1, 4*n]`
-/

namespace A301926.P558223596517033281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 : ℤ) - (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n : ℤ)

end

end A301926.P558223596517033281

namespace A301926

/-- `(2*n)²-∪[2*n+1, 4*n]` -/
def P558223596517033281.Spec : Prop :=
  ∀ n, P558223596517033281.a n = A301926 n

end A301926

/-! ## A301926.P1447929236951594571

`(2*n)²-lt[n-1, and(n+1, n+2)]`
-/

namespace A301926.P1447929236951594571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (n + 1) (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 : ℤ) - (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ)

end

end A301926.P1447929236951594571

namespace A301926

/-- `(2*n)²-lt[n-1, and(n+1, n+2)]` -/
def P1447929236951594571.Spec : Prop :=
  ∀ n, P1447929236951594571.a n = A301926 n

end A301926

/-! ## A301926.P16194907331904051961

`8*n²-A262997(n)`
-/

namespace A301926.P16194907331904051961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n ^ 2 : ℤ) - A262997 n

end

end A301926.P16194907331904051961

namespace A301926

/-- `8*n²-A262997(n)` -/
def P16194907331904051961.Spec : Prop :=
  ∀ n, P16194907331904051961.a n = A301926 n

end A301926

/-! ## A301926.P13751003648532061038

`(2*n)²-comp[A016825(n)]`
-/

namespace A301926.P13751003648532061038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A301926.P13751003648532061038

namespace A301926

/-- `(2*n)²-comp[A016825(n)]` -/
def P13751003648532061038.Spec : Prop :=
  ∀ n, P13751003648532061038.a n = A301926 n

end A301926

/-! ## A301926.P2254691406271956268

`(2*n)²-A042965(n+1)`
-/

namespace A301926.P2254691406271956268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 : ℤ) - A042965 (n + 1)

end

end A301926.P2254691406271956268

namespace A301926

/-- `(2*n)²-A042965(n+1)` -/
def P2254691406271956268.Spec : Prop :=
  ∀ n, P2254691406271956268.a n = A301926 n

end A301926

/-! ## A301926.P812045423248035864

`(2*n)²-∑[A000041(a(n-3))]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A301926.P812045423248035864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n f1 =>
  A000041 (f1 (n - 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301926.P812045423248035864

namespace A301926

/-- `(2*n)²-∑[A000041(a(n-3))]` -/
def P812045423248035864.Spec : Prop :=
  ∀ n, P812045423248035864.a n = A301926 n

end A301926

/-! ## A301926.P11721663742636099412

`A004396(n)+A002939(n)`
-/

namespace A301926.P11721663742636099412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + A002939 n

end

end A301926.P11721663742636099412

namespace A301926

/-- `A004396(n)+A002939(n)` -/
def P11721663742636099412.Spec : Prop :=
  ∀ n, P11721663742636099412.a n = A301926 n

end A301926

/-! ## A301926.P1880242826265782058

`A033429(n)-A262523(n)`
-/

namespace A301926.P1880242826265782058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033429 n - A262523 n

end

end A301926.P1880242826265782058

namespace A301926

/-- `A033429(n)-A262523(n)` -/
def P1880242826265782058.Spec : Prop :=
  ∀ n, P1880242826265782058.a n = A301926 n

end A301926

/-! ## A301926.P15930533625459989844

`A047222(n+1)+A001107(n)`
-/

namespace A301926.P15930533625459989844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047222 (n + 1) + A001107 n

end

end A301926.P15930533625459989844

namespace A301926

/-- `A047222(n+1)+A001107(n)` -/
def P15930533625459989844.Spec : Prop :=
  ∀ n, P15930533625459989844.a n = A301926 n

end A301926

/-! ## A301926.P12002596010254371563

`A007742(n)-A047386(n+1)`
-/

namespace A301926.P12002596010254371563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007742 n - A047386 (n + 1)

end

end A301926.P12002596010254371563

namespace A301926

/-- `A007742(n)-A047386(n+1)` -/
def P12002596010254371563.Spec : Prop :=
  ∀ n, P12002596010254371563.a n = A301926 n

end A301926

/-! ## A301926.P2534191678794546161

`A054556(n+1)-A086161(n)`
-/

namespace A301926.P2534191678794546161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054556 (n + 1) - A086161 n

end

end A301926.P2534191678794546161

namespace A301926

/-- `A054556(n+1)-A086161(n)` -/
def P2534191678794546161.Spec : Prop :=
  ∀ n, P2534191678794546161.a n = A301926 n

end A301926

/-! ## A301926.P15163471731369320763

`A262997(n)-A047395(n+1)`
-/

namespace A301926.P15163471731369320763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262997 n - A047395 (n + 1)

end

end A301926.P15163471731369320763

namespace A301926

/-- `A262997(n)-A047395(n+1)` -/
def P15163471731369320763.Spec : Prop :=
  ∀ n, P15163471731369320763.a n = A301926 n

end A301926

/-! ## A301926.P1932933216819310084

`A068377(n+1)-A298786(n)`
-/

namespace A301926.P1932933216819310084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068377 (n + 1) - A298786 n

end

end A301926.P1932933216819310084

namespace A301926

/-- `A068377(n+1)-A298786(n)` -/
def P1932933216819310084.Spec : Prop :=
  ∀ n, P1932933216819310084.a n = A301926 n

end A301926

/-! ## A301926.P17681867891297701775

`A004396(n)+2*A000384(n)`
-/

namespace A301926.P17681867891297701775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + 2 * A000384 n

end

end A301926.P17681867891297701775

namespace A301926

/-- `A004396(n)+2*A000384(n)` -/
def P17681867891297701775.Spec : Prop :=
  ∀ n, P17681867891297701775.a n = A301926 n

end A301926

/-!
# A301927: G.f. A(x) satisfies: x = Sum_{n>=1} x^n / ( (1-x)^(n^2) * A(x)^n ).

The programs for A301927, there is no canonical definition to state claims against.
-/

/-! ## A301927.P11148963052001034013

`∑{#}[n, C(n, #)*A303058(#)]`
-/

namespace A301927.P11148963052001034013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A303058 k

end

end A301927.P11148963052001034013

/-!
# A301928: G.f. satisfies: A(x) = Sum_{n>=0} x^n * A(x)^(2*n^2) / (1 + x*A(x)^(2*n))^n.

The programs for A301928, there is no canonical definition to state claims against.
-/

/-! ## A301928.P1398001442489654359

`A000258(n)-A183063(A005867(n))`
-/

namespace A301928.P1398001442489654359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000258 n - A183063 (A005867 n).toNat

end

end A301928.P1398001442489654359

/-! ## A301928.P15709580628906288480

`A342750(A148401(n))`
-/

namespace A301928.P15709580628906288480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342750 (A148401 n).toNat

end

end A301928.P15709580628906288480

/-!
# A301929: G.f. A(x) satisfies: x = Sum_{n>=1} (1+x)^(n^2) * x^n / A(x)^n.

The programs for A301929, there is no canonical definition to state claims against.
-/

/-! ## A301929.P88663953008501483

`A125654(n)+A101402(A316107(n))`
-/

namespace A301929.P88663953008501483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125654 n + A101402 (A316107 n).toNat

end

end A301929.P88663953008501483

/-! ## A301929.P12433340434610763933

`A036234(ceil(sqrt(A179423(n))))`
-/

namespace A301929.P12433340434610763933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 ⌈Real.sqrt (A179423 n : ℝ)⌉.toNat

end

end A301929.P12433340434610763933

/-! ## A301929.P5130063680817622514

`floor(A154486(a(n-1))/sqrt(2))` with `a(0)=1, a(1)=2`
-/

namespace A301929.P5130063680817622514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ⌊(A154486 (a (n - 1)).toNat : ℝ) / Real.sqrt (2 : ℝ)⌋

end

end A301929.P5130063680817622514

/-!
# A301931: G.f. A(x) satisfies: A(x) = x*(1 + A(x)*A'(x)) / (1 - A(x)*A'(x)).

The programs for A301931, there is no canonical definition to state claims against.
-/

/-! ## A301931.P11388400966495446388

`A094520(A001813(n))`
-/

namespace A301931.P11388400966495446388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094520 (A001813 n).toNat

end

end A301931.P11388400966495446388

/-!
# A301932: G.f. A(x) satisfies: A(x) = x*(1 + 3*A(x)*A'(x)) / (1 + A(x)*A'(x)).

The programs for A301932, there is no canonical definition to state claims against.
-/

/-! ## A301932.P15902036803145933919

`A057358(∑[(10^n+17)/9])`
-/

namespace A301932.P15902036803145933919
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 ^ n + 17 : ℚ) / 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057358 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A301932.P15902036803145933919

/-!
# A301933: G.f. A(x) satisfies: A(x) = x*(1 + 4*A(x)*A'(x)) / (1 + A(x)*A'(x)).

The programs for A301933, there is no canonical definition to state claims against.
-/

/-! ## A301933.P12583147275215623932

`A118763(A322539(n))+A002378(n)`
-/

namespace A301933.P12583147275215623932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118763 (A322539 n).toNat + A002378 n

end

end A301933.P12583147275215623932

/-!
# A301934: Number of positive subset-sum trees of weight n.

The programs for A301934, there is no canonical definition to state claims against.
-/

/-! ## A301934.P1942021141895645015

`A300250(A290575(n))`
-/

namespace A301934.P1942021141895645015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300250 (A290575 n).toNat

end

end A301934.P1942021141895645015

/-!
# A301935: Number of positive subset-sum trees whose composite a positive subset-sum of the integer partition with Heinz number n.

The programs for A301935, there is no canonical definition to state claims against.
-/

/-! ## A301935.P8766095011168759550

`A255239(A293514(n+1))-1`
-/

namespace A301935.P8766095011168759550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255239 (A293514 (n + 1)).toNat - 1

end

end A301935.P8766095011168759550

/-! ## A301935.P2394297384761990473

`A270613(A006241(n+1))%A048883(n)`
-/

namespace A301935.P2394297384761990473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A270613 (A006241 (n + 1)).toNat) (A048883 n)

end

end A301935.P2394297384761990473

/-! ## A301935.P7397461167684037744

`A300795(A006241(n+1))%A313835(n)`
-/

namespace A301935.P7397461167684037744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300795 (A006241 (n + 1)).toNat) (A313835 n)

end

end A301935.P7397461167684037744

/-! ## A301935.P9658052214497410763

`A241322(A293524(n+1))%A311625(n)`
-/

namespace A301935.P9658052214497410763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241322 (A293524 (n + 1)).toNat) (A311625 n)

end

end A301935.P9658052214497410763

/-! ## A301935.P8004223248772945419

`∑{e}[A334470(n+1), A000032(A000010(#))]`
-/

namespace A301935.P8004223248772945419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334470 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000032 (A000010 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A301935.P8004223248772945419

/-!
# A301937: a(n) is the smallest number whose Collatz ('3x+1') trajectory crosses its initial value exactly n times.

The programs for A301937, there is no canonical definition to state claims against.
-/

/-! ## A301937.P15097584624791338622

`fo[A304030(n+1)]+1`
-/

namespace A301937.P15097584624791338622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304030 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A301937.P15097584624791338622

/-!
# A301939: Integers whose arithmetic derivative is equal to their Dedekind function.

The programs for A301939, there is no canonical definition to state claims against.
-/

/-! ## A301939.P3831390255131078306

`∩[A057109(n+1), A345003(n+1)]`
-/

namespace A301939.P3831390255131078306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345003 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A301939.P3831390255131078306

/-! ## A301939.P5287315657565063964

`∩[A339497(n+1), A345003(n+1)]`
-/

namespace A301939.P5287315657565063964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339497 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345003 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A301939.P5287315657565063964

/-! ## A301939.P16806469738056377752

`∩[A059172(n+1), A345003(n+1)]`
-/

namespace A301939.P16806469738056377752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345003 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A301939.P16806469738056377752

/-! ## A301939.P1296911367659798008

`∩[A341645(n+1), A345003(n+1)]`
-/

namespace A301939.P1296911367659798008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345003 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A301939.P1296911367659798008

/-! ## A301939.P8874113208629529959

`filter[A345003(n+1), A380439(#)]`
-/

namespace A301939.P8874113208629529959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345003 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380439 (f1 j).toNat = 1) n)

end

end A301939.P8874113208629529959

/-!
# A301941: a(n) is the smallest positive integer k such that n + k divides n^2 + k, or 0 if no such k exists.

The programs for A301941, there is no canonical definition to state claims against.
-/

/-! ## A301941.P448926112715721503

`A307300(∑[A052047(n+1)]+1)`
-/

namespace A301941.P448926112715721503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307300 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A301941.P448926112715721503

/-!
# A301943: Number of primes of the form b^2+1 for b <= 10^n that end in 1.

The programs for A301943, there is no canonical definition to state claims against.
-/

/-! ## A301943.P5023175576956197522

`A206709(n+1)-(A301944(n+1)+2)`
-/

namespace A301943.P5023175576956197522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206709 (n + 1) - (A301944 (n + 1) + 2)

end

end A301943.P5023175576956197522

/-! ## A301943.P17653616311868377828

`ceil(A215047(n+1)+acot(n))-(A301944(n+1)+2)`
-/

namespace A301943.P17653616311868377828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A215047 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌉ - (A301944 (n + 1) + 2)

end

end A301943.P17653616311868377828

/-! ## A301943.P653199289359832584

`A215047(n+1)+A002496(n+1)%4-(A301944(n+1)+2)`
-/

namespace A301943.P653199289359832584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215047 (n + 1) + Int.tmod (A002496 (n + 1)) 4 - (A301944 (n + 1) + 2)

end

end A301943.P653199289359832584

/-! ## A301943.P8485284241407310808

`A215047(n+1)+A000032(floor(n^(1/5)))-(A301944(n+1)+2)`
-/

namespace A301943.P8485284241407310808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215047 (n + 1) + A000032 ⌊(n : ℝ) ^ ((1 : ℚ) / 5 : ℝ)⌋.toNat - (A301944 (n + 1) + 2)

end

end A301943.P8485284241407310808

/-! ## A301943.P4239453135990035862

`A083844(2*(n+1))+val(A000040(n+1), 2)-(A301944(n+1)+2)`
-/

namespace A301943.P4239453135990035862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083844 (2 * (n + 1)) + (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 2 : ℤ) - (A301944 (n + 1) + 2)

end

end A301943.P4239453135990035862

/-!
# A301944: Number of primes of the form b^2 + 1 for b <= 10^n that end in 7.

The programs for A301944, there is no canonical definition to state claims against.
-/

/-! ## A301944.P5791947536746772157

`A206709(n+1)-(A301943(n+1)+2)`
-/

namespace A301944.P5791947536746772157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206709 (n + 1) - (A301943 (n + 1) + 2)

end

end A301944.P5791947536746772157

/-! ## A301944.P15627478632038544

`ceil(A215047(n+1)+acot(n))-(A301943(n+1)+2)`
-/

namespace A301944.P15627478632038544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A215047 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌉ - (A301943 (n + 1) + 2)

end

end A301944.P15627478632038544

/-! ## A301944.P2714201259716702481

`A215047(n+1)+A002496(n+1)%4-(A301943(n+1)+2)`
-/

namespace A301944.P2714201259716702481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215047 (n + 1) + Int.tmod (A002496 (n + 1)) 4 - (A301943 (n + 1) + 2)

end

end A301944.P2714201259716702481

/-! ## A301944.P8109874790668400050

`A215047(n+1)+A000032(floor(n^(1/5)))-(A301943(n+1)+2)`
-/

namespace A301944.P8109874790668400050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215047 (n + 1) + A000032 ⌊(n : ℝ) ^ ((1 : ℚ) / 5 : ℝ)⌋.toNat - (A301943 (n + 1) + 2)

end

end A301944.P8109874790668400050

/-! ## A301944.P11337202493661772435

`A083844(2*(n+1))+val(A000040(n+1), 2)-(A301943(n+1)+2)`
-/

namespace A301944.P11337202493661772435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083844 (2 * (n + 1)) + (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 2 : ℤ) - (A301943 (n + 1) + 2)

end

end A301944.P11337202493661772435

/-!
# A301945: Number of n X n 0..1 arrays with every element equal to 1, 2 or 3 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301945, there is no canonical definition to state claims against.
-/

/-! ## A301945.P8366340524200113358

`A301951(∑[4*n]+1)`
-/

namespace A301945.P8366340524200113358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301951 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A301945.P8366340524200113358

/-! ## A301945.P1881974768143882053

`record[A301951(Δ[A235355(n)])]`
-/

namespace A301945.P1881974768143882053
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301951 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301945.P1881974768143882053

/-! ## A301945.P12271521777996063467

`record[A003982(n)*A301951(n+1)]`
-/

namespace A301945.P12271521777996063467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A301951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301945.P12271521777996063467

/-! ## A301945.P15401781361125741956

`record[A115718(n)*A301951(n+1)]`
-/

namespace A301945.P15401781361125741956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115718 n * A301951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301945.P15401781361125741956

/-!
# A301946: Number of nX3 0..1 arrays with every element equal to 1, 2 or 3 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301946, the canonical program `A301946.P9719519349441181191` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301946 has offset 1).

The definition of A301946 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A301946.P4602703200523790801

`ogf((1+x-x^2)/(1-4x-x^2+2x^3))`
-/

namespace A301946.P4602703200523790801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1] [1, -4, -1, 2] n

end

end A301946.P4602703200523790801

namespace A301946

/-- `ogf((1+x-x^2)/(1-4x-x^2+2x^3))` -/
def P4602703200523790801.Spec : Prop :=
  ∀ n, P4602703200523790801.a n = A301946 (n + 1)

end A301946

/-! ## A301946.P9719519349441181191

`4*a(n-1)+a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=5, a(2)=20`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A301946

/-- `4*a(n-1)+a(n-2)-2*a(n-3)` -/
def P9719519349441181191.Spec : Prop :=
  ∀ n, P9719519349441181191.a n = A301946 (n + 1)

theorem P9719519349441181191.correct : P9719519349441181191.Spec := by
  intro n
  simp only [A301946, Nat.add_sub_cancel]

end A301946

/-! ## A301946.P14654601277321581556

`Δ[A052990(n)/2]`
-/

namespace A301946.P14654601277321581556
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052990 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A301946.P14654601277321581556

namespace A301946

/-- `Δ[A052990(n)/2]` -/
def P14654601277321581556.Spec : Prop :=
  ∀ n, P14654601277321581556.a n = (A301946 (n + 1) : ℚ)

end A301946

/-! ## A301946.P13634147687345112256

`(A052990(n+1)-A052990(n))/2`
-/

namespace A301946.P13634147687345112256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052990 (n + 1) - A052990 n : ℚ) / 2

end

end A301946.P13634147687345112256

namespace A301946

/-- `(A052990(n+1)-A052990(n))/2` -/
def P13634147687345112256.Spec : Prop :=
  ∀ n, P13634147687345112256.a n = (A301946 (n + 1) : ℚ)

end A301946

/-! ## A301946.P16773468785377405535

`A301951(∑[n+3]+1)`
-/

namespace A301946.P16773468785377405535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301951 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A301946.P16773468785377405535

namespace A301946

/-- `A301951(∑[n+3]+1)` -/
def P16773468785377405535.Spec : Prop :=
  ∀ n, P16773468785377405535.a n = A301946 (n + 1)

end A301946

/-!
# A301947: Number of nX4 0..1 arrays with every element equal to 1, 2 or 3 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301947, there is no canonical definition to state claims against.
-/

/-! ## A301947.P8538300130726014623

`A301951(A141214(n+1))`
-/

namespace A301947.P8538300130726014623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301951 (A141214 (n + 1)).toNat

end

end A301947.P8538300130726014623

/-!
# A301948: Number of nX5 0..1 arrays with every element equal to 1, 2 or 3 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301948, there is no canonical definition to state claims against.
-/

/-! ## A301948.P17145087670312319855

`A301951(Δ[A264443(n)])`
-/

namespace A301948.P17145087670312319855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301951 (f1 (n + 1) - f1 n).toNat

end

end A301948.P17145087670312319855

/-!
# A301949: Number of nX6 0..1 arrays with every element equal to 1, 2 or 3 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301949, there is no canonical definition to state claims against.
-/

/-! ## A301949.P1722212809655417985

`A301951(A052905(n+3))`
-/

namespace A301949.P1722212809655417985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301951 (A052905 (n + 3)).toNat

end

end A301949.P1722212809655417985

/-!
# A301950: Number of nX7 0..1 arrays with every element equal to 1, 2 or 3 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301950, there is no canonical definition to state claims against.
-/

/-! ## A301950.P5382546506179192175

`A301951(eq[4, A219347(n)])`
-/

namespace A301950.P5382546506179192175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301951 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301950.P5382546506179192175

/-!
# A301951: T(n,k)=Number of nXk 0..1 arrays with every element equal to 1, 2 or 3 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301951, there is no canonical definition to state claims against.
-/

/-! ## A301951.P14419168262342019141

`A163352(A211402(n+1))`
-/

namespace A301951.P14419168262342019141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163352 (A211402 (n + 1)).toNat

end

end A301951.P14419168262342019141

/-! ## A301951.P15717588788546465480

`A186233(A319600(n+1)+1)`
-/

namespace A301951.P15717588788546465480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186233 (A319600 (n + 1) + 1).toNat

end

end A301951.P15717588788546465480

/-! ## A301951.P12331920528372257002

`round(A132016(A219421(n+1))/4)`
-/

namespace A301951.P12331920528372257002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A132016 (A219421 (n + 1)).toNat : ℚ) / 4)

end

end A301951.P12331920528372257002

/-! ## A301951.P12880362539691725615

`A211275(A297595(n+1)+A185293(n))`
-/

namespace A301951.P12880362539691725615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211275 (A297595 (n + 1) + A185293 n).toNat

end

end A301951.P12880362539691725615

/-! ## A301951.P18004749091716227519

`A008615(A318016(n+1)^A290216(n))`
-/

namespace A301951.P18004749091716227519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (SequenceMachineLib.roundAway ((A318016 (n + 1) : ℚ) ^ (A290216 n : ℤ))).toNat

end

end A301951.P18004749091716227519

/-!
# A301952: Number of 3Xn 0..1 arrays with every element equal to 1, 2 or 3 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301952, there is no canonical definition to state claims against.
-/

/-! ## A301952.P9660178645471794233

`A301951(∑[n+2]+4)`
-/

namespace A301952.P9660178645471794233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301951 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A301952.P9660178645471794233

/-!
# A301953: Number of 4Xn 0..1 arrays with every element equal to 1, 2 or 3 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301953, there is no canonical definition to state claims against.
-/

/-! ## A301953.P1086647213472850931

`A301951(A141214(n)+7)`
-/

namespace A301953.P1086647213472850931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301951 (A141214 n + 7).toNat

end

end A301953.P1086647213472850931

/-!
# A301954: Number of 5 X n 0..1 arrays with every element equal to 1, 2 or 3 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301954, there is no canonical definition to state claims against.
-/

/-! ## A301954.P5112905793202842632

`A301951(A167499(n+3))`
-/

namespace A301954.P5112905793202842632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301951 (A167499 (n + 3)).toNat

end

end A301954.P5112905793202842632

/-!
# A301955: Number of 6Xn 0..1 arrays with every element equal to 1, 2 or 3 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301955, there is no canonical definition to state claims against.
-/

/-! ## A301955.P17617725684776928152

`A301951(A046691(n+3)+10)`
-/

namespace A301955.P17617725684776928152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301951 (A046691 (n + 3) + 10).toNat

end

end A301955.P17617725684776928152

/-!
# A301956: Number of 7Xn 0..1 arrays with every element equal to 1, 2 or 3 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301956, there is no canonical definition to state claims against.
-/

/-! ## A301956.P4705592906013605600

`A301951(A056119(n)+28)`
-/

namespace A301956.P4705592906013605600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301951 (A056119 n + 28).toNat

end

end A301956.P4705592906013605600

/-!
# A301957: Number of distinct subset-products of the integer partition with Heinz number n.

The programs for A301957, there is no canonical definition to state claims against.
-/

/-! ## A301957.P6457358592155761041

`A299701(n+1)-A301979(n+1)`
-/

namespace A301957.P6457358592155761041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299701 (n + 1) - A301979 (n + 1)

end

end A301957.P6457358592155761041

/-! ## A301957.P7155238300306369469

`A304793(n+1)-A301979(n+1)+1`
-/

namespace A301957.P7155238300306369469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304793 (n + 1) - A301979 (n + 1) + 1

end

end A301957.P7155238300306369469

/-! ## A301957.P3094731757735981024

`A348553(A304793(n+1)-A301979(n+1))`
-/

namespace A301957.P3094731757735981024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348553 (A304793 (n + 1) - A301979 (n + 1)).toNat

end

end A301957.P3094731757735981024

/-! ## A301957.P12230123085903451691

`Δ[A006218(n)]-A325801(n+1)-A301979(n+1)`
-/

namespace A301957.P12230123085903451691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A325801 (n + 1) - A301979 (n + 1)

end

end A301957.P12230123085903451691

/-! ## A301957.P6122431278674084531

`A000005(n+1)-A325801(n+1)-A301979(n+1)`
-/

namespace A301957.P6122431278674084531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A325801 (n + 1) - A301979 (n + 1)

end

end A301957.P6122431278674084531

/-! ## A301957.P16687417857908529318

`∑{d}[A000265(n+1), A063062(#)]`
-/

namespace A301957.P16687417857908529318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A063062 d

end

end A301957.P16687417857908529318

/-!
# A301958: Number of n X n 0..1 arrays with every element equal to 0, 1 or 4 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301958, there is no canonical definition to state claims against.
-/

/-! ## A301958.P7890430191602478399

`A301964(∑[4*n]+1)`
-/

namespace A301958.P7890430191602478399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301964 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A301958.P7890430191602478399

/-! ## A301958.P3060320576123865212

`record[A003982(n)*A301964(n+1)]`
-/

namespace A301958.P3060320576123865212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A301964 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301958.P3060320576123865212

/-! ## A301958.P5212124318458668727

`record[gcd(A114327(n), A301964(n+1))]`
-/

namespace A301958.P5212124318458668727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A301964 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301958.P5212124318458668727

/-!
# A301959: Number of nX3 0..1 arrays with every element equal to 0, 1 or 4 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301959, the canonical program `A301959.P16115008301510623783` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301959 has offset 1).

The definition of A301959 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 250 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A301959.P5470441309605220506

`ogf((3+3x+x^2)/(1-x-3x^2-2x^3))`
-/

namespace A301959.P5470441309605220506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 3, 1] [1, -1, -3, -2] n

end

end A301959.P5470441309605220506

namespace A301959

/-- `ogf((3+3x+x^2)/(1-x-3x^2-2x^3))` -/
def P5470441309605220506.Spec : Prop :=
  ∀ n, P5470441309605220506.a n = A301959 (n + 1)

end A301959

/-! ## A301959.P16115008301510623783

`a(n-1)+3*a(n-2)+2*a(n-3)` with `a(0)=3, a(1)=6, a(2)=16`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A301959

/-- `a(n-1)+3*a(n-2)+2*a(n-3)` -/
def P16115008301510623783.Spec : Prop :=
  ∀ n, (P16115008301510623783.a n : ℤ) = A301959 (n + 1)

theorem P16115008301510623783.correct : P16115008301510623783.Spec := by
  intro n
  simp only [A301959, Nat.add_sub_cancel]

end A301959

/-! ## A301959.P19593723790859336

`A301964(∑[n+3]+1)`
-/

namespace A301959.P19593723790859336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301964 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A301959.P19593723790859336

namespace A301959

/-- `A301964(∑[n+3]+1)` -/
def P19593723790859336.Spec : Prop :=
  ∀ n, P19593723790859336.a n = A301959 (n + 1)

end A301959

/-!
# A301960: Number of nX4 0..1 arrays with every element equal to 0, 1 or 4 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301960, the canonical program `A301960.P13188218837683885289` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301960 has offset 1).

The definition of A301960 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A301960.P13141911646886513720

`ogf((5-x-3x^2+x^3)/(1-2x-2x^2+x^3))`
-/

namespace A301960.P13141911646886513720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -1, -3, 1] [1, -2, -2, 1] n

end

end A301960.P13141911646886513720

namespace A301960

/-- `ogf((5-x-3x^2+x^3)/(1-2x-2x^2+x^3))` -/
def P13141911646886513720.Spec : Prop :=
  ∀ n, P13141911646886513720.a n = A301960 (n + 1)

end A301960

/-! ## A301960.P10878320859476389658

`record[2*(a(n-1)+a(n-2))-a(n-3)]` with `a(0)=5, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A301960.P10878320859476389658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 0, 1, 1] fun n f1 =>
  2 * (f1 (n - 1) + f1 (n - 2)) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301960.P10878320859476389658

namespace A301960

/-- `record[2*(a(n-1)+a(n-2))-a(n-3)]` -/
def P10878320859476389658.Spec : Prop :=
  ∀ n, P10878320859476389658.a n = A301960 (n + 1)

end A301960

/-! ## A301960.P13188218837683885289

`2*a(n-1)+2*a(n-2)-a(n-3)` with `a(0)=5, a(1)=9, a(2)=25, a(3)=64`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A301960

/-- `2*a(n-1)+2*a(n-2)-a(n-3)` -/
def P13188218837683885289.Spec : Prop :=
  ∀ n, P13188218837683885289.a n = A301960 (n + 1)

theorem P13188218837683885289.correct : P13188218837683885289.Spec := by
  intro n
  simp only [A301960, Nat.add_sub_cancel]

end A301960

/-! ## A301960.P7990605235298222690

`record[3*a(n-1)-a(n-2)-2*(-1)^n]` with `a(0)=5, a(1)=1, a(2)=1`
-/

namespace A301960.P7990605235298222690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 1, 1] fun n f1 =>
  3 * f1 (n - 1) - f1 (n - 2) - 2 * (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301960.P7990605235298222690

namespace A301960

/-- `record[3*a(n-1)-a(n-2)-2*(-1)^n]` -/
def P7990605235298222690.Spec : Prop :=
  ∀ n, P7990605235298222690.a n = A301960 (n + 1)

end A301960

/-! ## A301960.P10263858762089735917

`Δ[A006498(record[xor(1, 3+n)])]`
-/

namespace A301960.P10263858762089735917
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (3 + n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006498 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A301960.P10263858762089735917

namespace A301960

/-- `Δ[A006498(record[xor(1, 3+n)])]` -/
def P10263858762089735917.Spec : Prop :=
  ∀ n, P10263858762089735917.a n = A301960 (n + 1)

end A301960

/-! ## A301960.P17203822924287686385

`floor(acot(n))+A000045(n+3)²`
-/

namespace A301960.P17203822924287686385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋ + A000045 (n + 3) ^ 2

end

end A301960.P17203822924287686385

namespace A301960

/-- `floor(acot(n))+A000045(n+3)²` -/
def P17203822924287686385.Spec : Prop :=
  ∀ n, P17203822924287686385.a n = A301960 (n + 1)

end A301960

/-! ## A301960.P14457400670879034334

`record[abs(A006498(2*n)-3)+3]`
-/

namespace A301960.P14457400670879034334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A006498 (2 * n) - 3| + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301960.P14457400670879034334

namespace A301960

/-- `record[abs(A006498(2*n)-3)+3]` -/
def P14457400670879034334.Spec : Prop :=
  ∀ n, P14457400670879034334.a n = A301960 (n + 1)

end A301960

/-! ## A301960.P14525054106584672003

`A000045((n+3)%a(n-1))²` with `a(0)=5`
-/

namespace A301960.P14525054106584672003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A000045 (Int.tmod (n + 3 : ℤ) (a (n - 1))).toNat ^ 2

end

end A301960.P14525054106584672003

namespace A301960

/-- `A000045((n+3)%a(n-1))²` -/
def P14525054106584672003.Spec : Prop :=
  ∀ n, P14525054106584672003.a n = A301960 (n + 1)

end A301960

/-! ## A301960.P1707977311654904565

`A000045(2*n+5)-a(n-1)` with `a(0)=5, a(1)=9`
-/

namespace A301960.P1707977311654904565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 9] fun n a =>
  A000045 (2 * n + 5) - a (n - 1)

end

end A301960.P1707977311654904565

namespace A301960

/-- `A000045(2*n+5)-a(n-1)` -/
def P1707977311654904565.Spec : Prop :=
  ∀ n, P1707977311654904565.a n = A301960 (n + 1)

end A301960

/-! ## A301960.P549060691665867095

`Δ[A001654((n+1)%(2*n+1)+1)]`
-/

namespace A301960.P549060691665867095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 ((n + 1) % (2 * n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A301960.P549060691665867095

namespace A301960

/-- `Δ[A001654((n+1)%(2*n+1)+1)]` -/
def P549060691665867095.Spec : Prop :=
  ∀ n, P549060691665867095.a n = A301960 (n + 1)

end A301960

/-! ## A301960.P13335541296384944464

`Δ[A006498(A062545(n))]`
-/

namespace A301960.P13335541296384944464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006498 (A062545 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A301960.P13335541296384944464

namespace A301960

/-- `Δ[A006498(A062545(n))]` -/
def P13335541296384944464.Spec : Prop :=
  ∀ n, P13335541296384944464.a n = A301960 (n + 1)

end A301960

/-! ## A301960.P16908054406203870342

`A195971(A223134(n+1))`
-/

namespace A301960.P16908054406203870342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195971 (A223134 (n + 1)).toNat

end

end A301960.P16908054406203870342

namespace A301960

/-- `A195971(A223134(n+1))` -/
def P16908054406203870342.Spec : Prop :=
  ∀ n, P16908054406203870342.a n = A301960 (n + 1)

end A301960

/-! ## A301960.P16633005212474481571

`A000007(n)+A020695(n)²`
-/

namespace A301960.P16633005212474481571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + A020695 n ^ 2

end

end A301960.P16633005212474481571

namespace A301960

/-- `A000007(n)+A020695(n)²` -/
def P16633005212474481571.Spec : Prop :=
  ∀ n, P16633005212474481571.a n = A301960 (n + 1)

end A301960

/-! ## A301960.P18443429099755013576

`Δ[A001654(A040000(n)+n)]`
-/

namespace A301960.P18443429099755013576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 (A040000 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A301960.P18443429099755013576

namespace A301960

/-- `Δ[A001654(A040000(n)+n)]` -/
def P18443429099755013576.Spec : Prop :=
  ∀ n, P18443429099755013576.a n = A301960 (n + 1)

end A301960

/-! ## A301960.P15623688963662184457

`Δ[A006498(comp[A004277(n)]+2)]`
-/

namespace A301960.P15623688963662184457
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006498 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A301960.P15623688963662184457

namespace A301960

/-- `Δ[A006498(comp[A004277(n)]+2)]` -/
def P15623688963662184457.Spec : Prop :=
  ∀ n, P15623688963662184457.a n = A301960 (n + 1)

end A301960

/-! ## A301960.P17372916167308414992

`A000007(n)+(1-A048577(n))²`
-/

namespace A301960.P17372916167308414992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (1 - A048577 n) ^ 2

end

end A301960.P17372916167308414992

namespace A301960

/-- `A000007(n)+(1-A048577(n))²` -/
def P17372916167308414992.Spec : Prop :=
  ∀ n, P17372916167308414992.a n = A301960 (n + 1)

end A301960

/-! ## A301960.P11768656684707981272

`A000007(n)+A000045(n+3)²`
-/

namespace A301960.P11768656684707981272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + A000045 (n + 3) ^ 2

end

end A301960.P11768656684707981272

namespace A301960

/-- `A000007(n)+A000045(n+3)²` -/
def P11768656684707981272.Spec : Prop :=
  ∀ n, P11768656684707981272.a n = A301960 (n + 1)

end A301960

/-! ## A301960.P12090064300328054663

`A019590(n+2)+A000045(n+3)²`
-/

namespace A301960.P12090064300328054663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (n + 2) + A000045 (n + 3) ^ 2

end

end A301960.P12090064300328054663

namespace A301960

/-- `A019590(n+2)+A000045(n+3)²` -/
def P12090064300328054663.Spec : Prop :=
  ∀ n, P12090064300328054663.a n = A301960 (n + 1)

end A301960

/-! ## A301960.P13673001215503547586

`A008683((n+1)²)+A000045(n+3)²`
-/

namespace A301960.P13673001215503547586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((n + 1) ^ 2) + A000045 (n + 3) ^ 2

end

end A301960.P13673001215503547586

namespace A301960

/-- `A008683((n+1)²)+A000045(n+3)²` -/
def P13673001215503547586.Spec : Prop :=
  ∀ n, P13673001215503547586.a n = A301960 (n + 1)

end A301960

/-! ## A301960.P16291114354833315418

`and(1, A000010(n+2))+A000045(n+3)²`
-/

namespace A301960.P16291114354833315418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000010 (n + 2)) + A000045 (n + 3) ^ 2

end

end A301960.P16291114354833315418

namespace A301960

/-- `and(1, A000010(n+2))+A000045(n+3)²` -/
def P16291114354833315418.Spec : Prop :=
  ∀ n, P16291114354833315418.a n = A301960 (n + 1)

end A301960

/-!
# A301961: Number of nX5 0..1 arrays with every element equal to 0, 1 or 4 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301961, there is no canonical definition to state claims against.
-/

/-! ## A301961.P11042754564831376914

`A301964(A046691(n+3))`
-/

namespace A301961.P11042754564831376914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301964 (A046691 (n + 3)).toNat

end

end A301961.P11042754564831376914

/-!
# A301962: Number of nX6 0..1 arrays with every element equal to 0, 1 or 4 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301962, there is no canonical definition to state claims against.
-/

/-! ## A301962.P2523291373258481454

`A301964(A027379(n+4)-2)`
-/

namespace A301962.P2523291373258481454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301964 (A027379 (n + 4) - 2).toNat

end

end A301962.P2523291373258481454

/-!
# A301963: Number of n X 7 0..1 arrays with every element equal to 0, 1 or 4 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301963, there is no canonical definition to state claims against.
-/

/-! ## A301963.P2448505437659947548

`A301964(Δ[A023551(n+2)])`
-/

namespace A301963.P2448505437659947548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301964 (f1 (n + 1) - f1 n).toNat

end

end A301963.P2448505437659947548

/-!
# A301964: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1 or 4 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301964, there is no canonical definition to state claims against.
-/

/-! ## A301964.P18373699160293659556

`A325801(A038247(n))+A301790(n+1)`
-/

namespace A301964.P18373699160293659556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325801 (A038247 n).toNat + A301790 (n + 1)

end

end A301964.P18373699160293659556

/-! ## A301964.P17674679477267234693

`A301790(n+1)-A088194(A294950(n))`
-/

namespace A301964.P17674679477267234693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301790 (n + 1) - A088194 (A294950 n).toNat

end

end A301964.P17674679477267234693

/-! ## A301964.P6209137777117855703

`A301790(n+1)+A174875(A168288(n))²`
-/

namespace A301964.P6209137777117855703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301790 (n + 1) + A174875 (A168288 n).toNat ^ 2

end

end A301964.P6209137777117855703

/-! ## A301964.P16524928642958303957

`A324802(A202549(n+1))+A301790(n+1)`
-/

namespace A301964.P16524928642958303957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324802 (A202549 (n + 1)).toNat + A301790 (n + 1)

end

end A301964.P16524928642958303957

/-! ## A301964.P10015190299689646083

`A333755(A007318(3*(n+1)))+A301790(n+1)`
-/

namespace A301964.P10015190299689646083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333755 (A007318 (3 * (n + 1))).toNat + A301790 (n + 1)

end

end A301964.P10015190299689646083

/-!
# A301965: Number of 3Xn 0..1 arrays with every element equal to 0, 1 or 4 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301965, the canonical program `A301965.P191545057153319272` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301965 has offset 1).

The definition of A301965 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 376 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A301965.P191545057153319272

`2*a(n-1)-a(n-4)` with `a(0)=4, a(1)=13, a(2)=16, a(3)=25, a(4)=41, a(5)=74`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A301965

/-- `2*a(n-1)-a(n-4)` -/
def P191545057153319272.Spec : Prop :=
  ∀ n, P191545057153319272.a n = A301965 (n + 1)

theorem P191545057153319272.correct : P191545057153319272.Spec := by
  intro n
  simp only [A301965, Nat.add_sub_cancel]

end A301965

/-! ## A301965.P12975191035415119522

`A301964(∑[n+2]+4)`
-/

namespace A301965.P12975191035415119522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301964 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A301965.P12975191035415119522

namespace A301965

/-- `A301964(∑[n+2]+4)` -/
def P12975191035415119522.Spec : Prop :=
  ∀ n, P12975191035415119522.a n = A301965 (n + 1)

end A301965

/-!
# A301966: Number of 4Xn 0..1 arrays with every element equal to 0, 1 or 4 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301966, there is no canonical definition to state claims against.
-/

/-! ## A301966.P11894698133904246677

`A301964(A052905(n)+9)`
-/

namespace A301966.P11894698133904246677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301964 (A052905 n + 9).toNat

end

end A301966.P11894698133904246677

/-!
# A301967: Number of 5Xn 0..1 arrays with every element equal to 0, 1 or 4 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301967, there is no canonical definition to state claims against.
-/

/-! ## A301967.P7532125050254514915

`A301964(A155212(n)+13)`
-/

namespace A301967.P7532125050254514915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301964 (A155212 n + 13).toNat

end

end A301967.P7532125050254514915

/-!
# A301968: Number of 6Xn 0..1 arrays with every element equal to 0, 1 or 4 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301968, there is no canonical definition to state claims against.
-/

/-! ## A301968.P11173518532761479141

`A301964(A167614(n+4)+3)`
-/

namespace A301968.P11173518532761479141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301964 (A167614 (n + 4) + 3).toNat

end

end A301968.P11173518532761479141

/-!
# A301969: Number of 7Xn 0..1 arrays with every element equal to 0, 1 or 4 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301969, there is no canonical definition to state claims against.
-/

/-! ## A301969.P18441890606802163941

`A301964(A056119(n)+28)`
-/

namespace A301969.P18441890606802163941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301964 (A056119 n + 28).toNat

end

end A301969.P18441890606802163941

/-!
# A301972: a(n) = n*(n^2 - 2*n + 4)*binomial(2*n,n)/((n + 1)*(n + 2)).

The programs for A301972, the canonical program `A301972.P17079683789791147684` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301972 has offset 0).

The definition of A301972 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n²-2*n+4)*C(2*n, n)/((n+1)*(n+2))` (program `A301972.P7129541157619592963`, by `A301972.P7129541157619592963.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A301972.P7129541157619592963

`n*(n²-2*n+4)*C(2*n, n)/((n+1)*(n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A301972.P7129541157619592963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((n ^ 2 : ℤ) - (2 * n : ℤ) + 4) * (Nat.choose (2 * n) n : ℤ) : ℚ) / ((n + 1) * (n + 2) : ℚ)

end

end A301972.P7129541157619592963

namespace A301972

/-- `n*(n²-2*n+4)*C(2*n, n)/((n+1)*(n+2))` -/
def P7129541157619592963.Spec : Prop :=
  ∀ n, P7129541157619592963.a n = (A301972 n : ℚ)

theorem P7129541157619592963.correct : P7129541157619592963.Spec := by
  intro n
  simp only [A301972, Nat.add_sub_cancel, A301972.P7129541157619592963.a, A301972.P17079683789791147684.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A301972

/-! ## A301972.P16174437591455567490

`A001791(n)+2*A074922(n)`
-/

namespace A301972.P16174437591455567490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 n + 2 * A074922 n

end

end A301972.P16174437591455567490

namespace A301972

/-- `A001791(n)+2*A074922(n)` -/
def P16174437591455567490.Spec : Prop :=
  ∀ n, P16174437591455567490.a n = A301972 n

end A301972

/-! ## A301972.P12732848254633635244

`A037952(2*n)+2*A074922(n)`
-/

namespace A301972.P12732848254633635244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (2 * n) + 2 * A074922 n

end

end A301972.P12732848254633635244

namespace A301972

/-- `A037952(2*n)+2*A074922(n)` -/
def P12732848254633635244.Spec : Prop :=
  ∀ n, P12732848254633635244.a n = A301972 n

end A301972

/-! ## A301972.P17079683789791147684

`C(2*n, n+1)+(n-2)*C(2*n, n+2)`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A301972

/-- `C(2*n, n+1)+(n-2)*C(2*n, n+2)` -/
def P17079683789791147684.Spec : Prop :=
  ∀ n, P17079683789791147684.a n = A301972 n

theorem P17079683789791147684.correct : P17079683789791147684.Spec := by
  intro n
  simp only [A301972]

end A301972

/-!
# A301973: a(n) = (n^2 - 3*n + 6)*binomial(n+2,3)/4.

The programs for A301973, the canonical program `A301973.P7930234385014129703` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301973 has offset 0).

The definition of A301973 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A301973.P16116428271930361994

`ogf((x-2x^2+6x^3)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`
-/

namespace A301973.P16116428271930361994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -2, 6] [1, -6, 15, -20, 15, -6, 1] n

end

end A301973.P16116428271930361994

namespace A301973

/-- `ogf((x-2x^2+6x^3)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P16116428271930361994.Spec : Prop :=
  ∀ n, P16116428271930361994.a n = A301973 n

end A301973

/-! ## A301973.P7930234385014129703

`(n²-3*n+6)*C(n+2, 3)/4`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A301973

/-- `(n²-3*n+6)*C(n+2, 3)/4` -/
def P7930234385014129703.Spec : Prop :=
  ∀ n, P7930234385014129703.a n = (A301973 n : ℚ)

end A301973

/-! ## A301973.P709430839201110499

`∑[∑[5*C(n, 3)+n]]`
-/

namespace A301973.P709430839201110499
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * Nat.choose n 3 + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301973.P709430839201110499

namespace A301973

/-- `∑[∑[5*C(n, 3)+n]]` -/
def P709430839201110499.Spec : Prop :=
  ∀ n, (P709430839201110499.a n : ℤ) = A301973 n

end A301973

/-! ## A301973.P16990096903766020279

`∑[∑[(1-n)²]]*n/2`
-/

namespace A301973.P16990096903766020279
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) * (n : ℤ) : ℤ) : ℚ) / 2

end

end A301973.P16990096903766020279

namespace A301973

/-- `∑[∑[(1-n)²]]*n/2` -/
def P16990096903766020279.Spec : Prop :=
  ∀ n, P16990096903766020279.a n = (A301973 n : ℚ)

end A301973

/-! ## A301973.P15353654377350115073

`∑[∑[∑[∑[a(n-1)+5]]]]` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A301973.P15353654377350115073
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0] fun n f4 =>
  f4 (n - 1) + 5

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301973.P15353654377350115073

namespace A301973

/-- `∑[∑[∑[∑[a(n-1)+5]]]]` -/
def P15353654377350115073.Spec : Prop :=
  ∀ n, (P15353654377350115073.a n : ℤ) = A301973 n

end A301973

/-! ## A301973.P14460856699480813540

`A000217(n)+n/2*A002415(n)`
-/

namespace A301973.P14460856699480813540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 n : ℚ) + (n : ℚ) / 2 * (A002415 n : ℚ)

end

end A301973.P14460856699480813540

namespace A301973

/-- `A000217(n)+n/2*A002415(n)` -/
def P14460856699480813540.Spec : Prop :=
  ∀ n, P14460856699480813540.a n = (A301973 n : ℚ)

end A301973

/-! ## A301973.P12011932595924508194

`Δ[A294725(n)]-A000389(n)`
-/

namespace A301973.P12011932595924508194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000389 n

end

end A301973.P12011932595924508194

namespace A301973

/-- `Δ[A294725(n)]-A000389(n)` -/
def P12011932595924508194.Spec : Prop :=
  ∀ n, P12011932595924508194.a n = A301973 n

end A301973

/-! ## A301973.P24316090062232645

`Δ[A294725(n)-A000579(n)]`
-/

namespace A301973.P24316090062232645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294725 n - A000579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A301973.P24316090062232645

namespace A301973

/-- `Δ[A294725(n)-A000579(n)]` -/
def P24316090062232645.Spec : Prop :=
  ∀ n, P24316090062232645.a n = A301973 n

end A301973

/-! ## A301973.P14339873636714493437

`∑[A006484(n)+A000332(n+1)]`
-/

namespace A301973.P14339873636714493437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006484 n + A000332 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301973.P14339873636714493437

namespace A301973

/-- `∑[A006484(n)+A000332(n+1)]` -/
def P14339873636714493437.Spec : Prop :=
  ∀ n, P14339873636714493437.a n = A301973 n

end A301973

/-! ## A301973.P9249353837300835939

`A000292(n)+Δ[A000910(n+2)]`
-/

namespace A301973.P9249353837300835939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000910 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n + (f1 (n + 1) - f1 n)

end

end A301973.P9249353837300835939

namespace A301973

/-- `A000292(n)+Δ[A000910(n+2)]` -/
def P9249353837300835939.Spec : Prop :=
  ∀ n, P9249353837300835939.a n = A301973 n

end A301973

/-! ## A301973.P15906099338533817110

`A333321(A062545(n))+A000292(n)`
-/

namespace A301973.P15906099338533817110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333321 (A062545 n).toNat + A000292 n

end

end A301973.P15906099338533817110

namespace A301973

/-- `A333321(A062545(n))+A000292(n)` -/
def P15906099338533817110.Spec : Prop :=
  ∀ n, P15906099338533817110.a n = A301973 n

end A301973

/-!
# A301975: Numbers whose abundance is divisible by its number of divisors.

The programs for A301975, the canonical program `A301975.P361994510138605052` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301975 has offset 1).

The definition of A301975 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2706 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A301975.P361994510138605052

`eq[A054008(n+1), A160550(n+1)]+1`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A301975

/-- `eq[A054008(n+1), A160550(n+1)]+1` -/
def P361994510138605052.Spec : Prop :=
  ∀ n, (P361994510138605052.a n : ℤ) = A301975 (n + 1)

theorem P361994510138605052.correct : P361994510138605052.Spec := by
  intro n
  simp only [A301975, Nat.add_sub_cancel]

end A301975

/-!
# A301976: Number of no-leaf subgraphs of the 3 X n grid.

The programs for A301976, there is no canonical definition to state claims against.
-/

/-! ## A301976.P68683887605545603

`ogf((1-7x-11x^2-3x^3)/(1-12x+6x^2+20x^3+5x^4))`
-/

namespace A301976.P68683887605545603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -7, -11, -3] [1, -12, 6, 20, 5] n

end

end A301976.P68683887605545603

/-! ## A301976.P8125534609318731818

`12*a(n-1)-6*a(n-2)-20*a(n-3)-5*a(n-4)` with `a(0)=1, a(1)=5, a(2)=43, a(3)=463`
-/

namespace A301976.P8125534609318731818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 43, 463] fun n a =>
  12 * a (n - 1) - 6 * a (n - 2) - 20 * a (n - 3) - 5 * a (n - 4)

end

end A301976.P8125534609318731818

/-!
# A301977: a(n) is the number of distinct positive numbers whose binary digits appear in order but not necessarily as consecutive digits in the binary representation of n.

The programs for A301977, the canonical program `A301977.P124265642836154627` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301977 has offset 1).

The definition of A301977 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A301977.P124265642836154627

`A070992(n)-A174868(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A301977

/-- `A070992(n)-A174868(n)` -/
def P124265642836154627.Spec : Prop :=
  ∀ n, P124265642836154627.a n = A301977 (n + 1)

theorem P124265642836154627.correct : P124265642836154627.Spec := by
  intro n
  simp only [A301977, Nat.add_sub_cancel]

end A301977

/-! ## A301977.P8322134447068511671

`A070992(n)-∑[A002487(n)]`
-/

namespace A301977.P8322134447068511671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070992 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301977.P8322134447068511671

namespace A301977

/-- `A070992(n)-∑[A002487(n)]` -/
def P8322134447068511671.Spec : Prop :=
  ∀ n, P8322134447068511671.a n = A301977 (n + 1)

end A301977

/-! ## A301977.P3035437502160900281

`A268087(A258746(n+1))-1`
-/

namespace A301977.P3035437502160900281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268087 (A258746 (n + 1)).toNat - 1

end

end A301977.P3035437502160900281

namespace A301977

/-- `A268087(A258746(n+1))-1` -/
def P3035437502160900281.Spec : Prop :=
  ∀ n, P3035437502160900281.a n = A301977 (n + 1)

end A301977

/-! ## A301977.P451606136352940058

`A268087(A258996(n+1))-1`
-/

namespace A301977.P451606136352940058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268087 (A258996 (n + 1)).toNat - 1

end

end A301977.P451606136352940058

namespace A301977

/-- `A268087(A258996(n+1))-1` -/
def P451606136352940058.Spec : Prop :=
  ∀ n, P451606136352940058.a n = A301977 (n + 1)

end A301977

/-! ## A301977.P13374261507091153917

`A007729(n+1)-A174868(n)-1`
-/

namespace A301977.P13374261507091153917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007729 (n + 1) - A174868 n - 1

end

end A301977.P13374261507091153917

namespace A301977

/-- `A007729(n+1)-A174868(n)-1` -/
def P13374261507091153917.Spec : Prop :=
  ∀ n, P13374261507091153917.a n = A301977 (n + 1)

end A301977

/-! ## A301977.P12657422148972665828

`A287896(n+1)+A288003(n+1)-1`
-/

namespace A301977.P12657422148972665828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287896 (n + 1) + (A288003 (n + 1) - 1)

end

end A301977.P12657422148972665828

namespace A301977

/-- `A287896(n+1)+A288003(n+1)-1` -/
def P12657422148972665828.Spec : Prop :=
  ∀ n, P12657422148972665828.a n = A301977 (n + 1)

end A301977

/-! ## A301977.P4917184041233441189

`∑[A288003(n+1)-A002487((n+1)/2^val(n+1, 2)-1)]`
-/

namespace A301977.P4917184041233441189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288003 (n + 1) - A002487 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301977.P4917184041233441189

namespace A301977

/-- `∑[A288003(n+1)-A002487((n+1)/2^val(n+1, 2)-1)]` -/
def P4917184041233441189.Spec : Prop :=
  ∀ n, P4917184041233441189.a n = A301977 (n + 1)

end A301977

/-! ## A301977.P11364885884437190982

`A007306(2+n)-1`
-/

namespace A301977.P11364885884437190982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (2 + n) - 1

end

end A301977.P11364885884437190982

namespace A301977

/-- `A007306(2+n)-1` -/
def P11364885884437190982.Spec : Prop :=
  ∀ n, P11364885884437190982.a n = A301977 (n + 1)

end A301977

/-! ## A301977.P6051918607892565094

`2-A309256(n+2)+n`
-/

namespace A301977.P6051918607892565094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A309256 (n + 2) + (n : ℤ)

end

end A301977.P6051918607892565094

namespace A301977

/-- `2-A309256(n+2)+n` -/
def P6051918607892565094.Spec : Prop :=
  ∀ n, P6051918607892565094.a n = A301977 (n + 1)

end A301977

/-! ## A301977.P11544158336827089413

`∑[A002487(n+2)-A002487(n)]`
-/

namespace A301977.P11544158336827089413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (n + 2) - A002487 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301977.P11544158336827089413

namespace A301977

/-- `∑[A002487(n+2)-A002487(n)]` -/
def P11544158336827089413.Spec : Prop :=
  ∀ n, P11544158336827089413.a n = A301977 (n + 1)

end A301977

/-! ## A301977.P16474604212489645124

`A277328(n+1)+A284009(n+1)-1`
-/

namespace A301977.P16474604212489645124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277328 (n + 1) + (A284009 (n + 1) - 1)

end

end A301977.P16474604212489645124

namespace A301977

/-- `A277328(n+1)+A284009(n+1)-1` -/
def P16474604212489645124.Spec : Prop :=
  ∀ n, P16474604212489645124.a n = A301977 (n + 1)

end A301977

/-! ## A301977.P1924581909421150089

`A284565(n+1)+A284566(n+1)-1`
-/

namespace A301977.P1924581909421150089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284565 (n + 1) + (A284566 (n + 1) - 1)

end

end A301977.P1924581909421150089

namespace A301977

/-- `A284565(n+1)+A284566(n+1)-1` -/
def P1924581909421150089.Spec : Prop :=
  ∀ n, P1924581909421150089.a n = A301977 (n + 1)

end A301977

/-! ## A301977.P17338275654642465344

`A002487(n+1)+A127971(n+1)-A000034(n+1)`
-/

namespace A301977.P17338275654642465344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (n + 1) + (A127971 (n + 1) - A000034 (n + 1))

end

end A301977.P17338275654642465344

namespace A301977

/-- `A002487(n+1)+A127971(n+1)-A000034(n+1)` -/
def P17338275654642465344.Spec : Prop :=
  ∀ n, P17338275654642465344.a n = A301977 (n + 1)

end A301977

/-! ## A301977.P14800221495943769924

`Δ[A282720(n+1)]-1`
-/

namespace A301977.P14800221495943769924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A301977.P14800221495943769924

namespace A301977

/-- `Δ[A282720(n+1)]-1` -/
def P14800221495943769924.Spec : Prop :=
  ∀ n, P14800221495943769924.a n = A301977 (n + 1)

end A301977

/-! ## A301977.P12122738311080147886

`A071585(A233280(n+1))-1`
-/

namespace A301977.P12122738311080147886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 (A233280 (n + 1)).toNat - 1

end

end A301977.P12122738311080147886

namespace A301977

/-- `A071585(A233280(n+1))-1` -/
def P12122738311080147886.Spec : Prop :=
  ∀ n, P12122738311080147886.a n = A301977 (n + 1)

end A301977

/-! ## A301977.P15103918246351034496

`A086592(A231550(n+1))-1`
-/

namespace A301977.P15103918246351034496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086592 (A231550 (n + 1)).toNat - 1

end

end A301977.P15103918246351034496

namespace A301977

/-- `A086592(A231550(n+1))-1` -/
def P15103918246351034496.Spec : Prop :=
  ∀ n, P15103918246351034496.a n = A301977 (n + 1)

end A301977

/-! ## A301977.P3534892166420073149

`A285106(n+1)+A285108(n+1)-1`
-/

namespace A301977.P3534892166420073149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285106 (n + 1) + (A285108 (n + 1) - 1)

end

end A301977.P3534892166420073149

namespace A301977

/-- `A285106(n+1)+A285108(n+1)-1` -/
def P3534892166420073149.Spec : Prop :=
  ∀ n, P3534892166420073149.a n = A301977 (n + 1)

end A301977

/-! ## A301977.P4791321404835705266

`A070871(2*(n+1))/A002487(n+1)-1`
-/

namespace A301977.P4791321404835705266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070871 (2 * (n + 1)) : ℚ) / (A002487 (n + 1) : ℚ) - 1

end

end A301977.P4791321404835705266

namespace A301977

/-- `A070871(2*(n+1))/A002487(n+1)-1` -/
def P4791321404835705266.Spec : Prop :=
  ∀ n, P4791321404835705266.a n = (A301977 (n + 1) : ℚ)

end A301977

/-! ## A301977.P15813837084333403700

`∑{d}[2*n+3, A317839(#)]-1`
-/

namespace A301977.P15813837084333403700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A317839 d - 1

end

end A301977.P15813837084333403700

namespace A301977

/-- `∑{d}[2*n+3, A317839(#)]-1` -/
def P15813837084333403700.Spec : Prop :=
  ∀ n, P15813837084333403700.a n = A301977 (n + 1)

end A301977

/-! ## A301977.P14650652927695926506

`A071585(A003188(n+1))-1`
-/

namespace A301977.P14650652927695926506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 (A003188 (n + 1)).toNat - 1

end

end A301977.P14650652927695926506

namespace A301977

/-- `A071585(A003188(n+1))-1` -/
def P14650652927695926506.Spec : Prop :=
  ∀ n, P14650652927695926506.a n = A301977 (n + 1)

end A301977

/-!
# A301978: Euler transform of A065958.

The programs for A301978, there is no canonical definition to state claims against.
-/

/-! ## A301978.P7699795593822143741

`A316113(a(n-1))+5` with `a(0)=1, a(1)=1`
-/

namespace A301978.P7699795593822143741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A316113 (a (n - 1)).toNat + 5

end

end A301978.P7699795593822143741

/-! ## A301978.P14052785200765537645

`A320634(2^n)-round(ϕ*n)`
-/

namespace A301978.P14052785200765537645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320634 (2 ^ n) - SequenceMachineLib.roundAway (Real.goldenRatio * (n : ℝ))

end

end A301978.P14052785200765537645

/-!
# A301979: Number of subset-sums minus number of subset-products of the integer partition with Heinz number n.

The programs for A301979, there is no canonical definition to state claims against.
-/

/-! ## A301979.P3298735022054274249

`A299701(n+1)-A301957(n+1)`
-/

namespace A301979.P3298735022054274249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299701 (n + 1) - A301957 (n + 1)

end

end A301979.P3298735022054274249

/-! ## A301979.P9400054503525959632

`A304793(n+1)+1-A301957(n+1)`
-/

namespace A301979.P9400054503525959632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304793 (n + 1) + (1 - A301957 (n + 1))

end

end A301979.P9400054503525959632

/-! ## A301979.P6624053867000782509

`A304793(n+1)-A130734(A301957(n+1))`
-/

namespace A301979.P6624053867000782509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304793 (n + 1) - A130734 (A301957 (n + 1)).toNat

end

end A301979.P6624053867000782509

/-! ## A301979.P4127877966333673064

`Δ[A006218(n)]-(A325801(n+1)+A301957(n+1))`
-/

namespace A301979.P4127877966333673064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A325801 (n + 1) + A301957 (n + 1))

end

end A301979.P4127877966333673064

/-! ## A301979.P8582353449731667729

`A000005(n+1)-(A325801(n+1)+A301957(n+1))`
-/

namespace A301979.P8582353449731667729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - (A325801 (n + 1) + A301957 (n + 1))

end

end A301979.P8582353449731667729

/-! ## A301979.P12253086084019164013

`A304793(n+1)+1-∑{d}[A000265(n+1), A063062(#)]`
-/

namespace A301979.P12253086084019164013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304793 (n + 1) + 1 - ∑ d ∈ Nat.divisors (f1 n).natAbs, A063062 d

end

end A301979.P12253086084019164013

/-!
# A301980: Expansion of Product_{k>=1} (1 + x^k)^A065958(k).

The programs for A301980, there is no canonical definition to state claims against.
-/

/-! ## A301980.P10364418825618280932

`A394665(A027088(n+1))`
-/

namespace A301980.P10364418825618280932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394665 (A027088 (n + 1)).toNat

end

end A301980.P10364418825618280932

/-! ## A301980.P5953660798240508710

`A007599(round(cosh(A065640(n+1))))`
-/

namespace A301980.P5953660798240508710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007599 (SequenceMachineLib.roundAway (Real.cosh (A065640 (n + 1) : ℝ))).toNat

end

end A301980.P5953660798240508710

/-!
# A301983: Irregular triangle read by rows T(n, k), n >= 1 and 1 <= k <= A301977(n): T(n, k) is the k-th positive number whose binary digits appear in order but not necessarily as consecutive digits in the binary representation of n.

The programs for A301983, there is no canonical definition to state claims against.
-/

/-! ## A301983.P1671674494044660553

`A165416(A305810(n+1)%A122232(n+1))`
-/

namespace A301983.P1671674494044660553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165416 (Int.tmod (A305810 (n + 1)) (A122232 (n + 1))).toNat

end

end A301983.P1671674494044660553

/-! ## A301983.P14128769348656377727

`A099563(A000040(∑[A000930(n)]))`
-/

namespace A301983.P14128769348656377727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099563 (A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A301983.P14128769348656377727

/-! ## A301983.P426785004712375948

`A110730(A113803(n+1))`
-/

namespace A301983.P426785004712375948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110730 (A113803 (n + 1)).toNat

end

end A301983.P426785004712375948

/-! ## A301983.P4765242832205152758

`A338199(A180490(n+2))`
-/

namespace A301983.P4765242832205152758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338199 (A180490 (n + 2)).toNat

end

end A301983.P4765242832205152758

/-!
# A301984: a(n) is the greatest positive number k such that the binary digits of any number in the interval 1..k appear in order but not necessarily as consecutive digits in the binary representation of n.

The programs for A301984, there is no canonical definition to state claims against.
-/

/-! ## A301984.P4563651773087536766

`A000120(A149871(A035327(n)))+A000035(n)`
-/

namespace A301984.P4563651773087536766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A149871 (A035327 n).toNat).toNat + A000035 n

end

end A301984.P4563651773087536766

/-! ## A301984.P827890221080893068

`A156728(2*(n+2))+A121041(A140047(n+1))`
-/

namespace A301984.P827890221080893068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156728 (2 * (n + 2)) + A121041 (A140047 (n + 1)).toNat

end

end A301984.P827890221080893068

/-! ## A301984.P3154334635052849577

`A055881(A332030(n+1))`
-/

namespace A301984.P3154334635052849577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055881 (A332030 (n + 1)).toNat

end

end A301984.P3154334635052849577

/-! ## A301984.P11548233614437397247

`A326787(A327352(n))+floor((n+1)/(or(n, n+2)-n))`
-/

namespace A301984.P11548233614437397247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326787 (A327352 n).toNat + ⌊(n + 1 : ℚ) / ((Nat.lor n (n + 2) : ℤ) - (n : ℤ) : ℚ)⌋

end

end A301984.P11548233614437397247

/-! ## A301984.P16060069546272225540

`A001222(A277905(n+1)+A076868(n))`
-/

namespace A301984.P16060069546272225540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A277905 (n + 1) + A076868 n).toNat

end

end A301984.P16060069546272225540

/-!
# A301987: Heinz numbers of integer partitions whose product is equal to their sum.

The programs for A301987, there is no canonical definition to state claims against.
-/

/-! ## A301987.P9428570061811755625

`∪[A000040(n+1), A301988(n+1)]`
-/

namespace A301987.P9428570061811755625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301988 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A301987.P9428570061811755625

/-! ## A301987.P4610872771848554230

`∩[A326149(n+1), A326155(n+1)]`
-/

namespace A301987.P4610872771848554230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326155 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A301987.P4610872771848554230

/-! ## A301987.P2729657056300407445

`lt[A325036(n+1)², 1]+1`
-/

namespace A301987.P2729657056300407445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325036 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A301987.P2729657056300407445

/-! ## A301987.P1063033159708886288

`lt[A325036(A028310(n))², 1]`
-/

namespace A301987.P1063033159708886288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325036 (A028310 n).toNat ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A301987.P1063033159708886288

/-! ## A301987.P13747410806241984992

`A020725(lt[A325036(n+1)², 1])`
-/

namespace A301987.P13747410806241984992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325036 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A301987.P13747410806241984992

/-! ## A301987.P8757460042129788189

`eq[A003963(n+1), A056239(n+1)]+1`
-/

namespace A301987.P8757460042129788189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A301987.P8757460042129788189

/-! ## A301987.P549115529115486358

`eq[A056239(n+1), A064553(A064989(n+1))]+1`
-/

namespace A301987.P549115529115486358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064553 (A064989 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A301987.P549115529115486358

/-! ## A301987.P6030489592995125878

`A325042(n+1)/2`
-/

namespace A301987.P6030489592995125878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325042 (n + 1) : ℚ) / 2

end

end A301987.P6030489592995125878

/-! ## A301987.P1882603676147516279

`A001281(A325042(n+1))`
-/

namespace A301987.P1882603676147516279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A325042 (n + 1)).toNat

end

end A301987.P1882603676147516279

/-!
# A301988: Nonprime Heinz numbers of integer partitions whose product is equal to their sum.

The programs for A301988, there is no canonical definition to state claims against.
-/

/-! ## A301988.P8217862620189143171

`A325043(n+1)/2`
-/

namespace A301988.P8217862620189143171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325043 (n + 1) : ℚ) / 2

end

end A301988.P8217862620189143171

/-! ## A301988.P14485837581138968460

`record[A325043(A059127(n))/2]`
-/

namespace A301988.P14485837581138968460
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325043 (A059127 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301988.P14485837581138968460

/-! ## A301988.P4571995671672887768

`A291363(∏[char[∑[n+1]]+1])*A325041(n+1)`
-/

namespace A301988.P4571995671672887768
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291363 (∏ j ∈ Finset.range (n + 1), f1 j) * A325041 (n + 1)

end

end A301988.P4571995671672887768

/-! ## A301988.P16011608497121379837

`filter[A301987(n+2), A353681(#)]`
-/

namespace A301988.P16011608497121379837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301987 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353681 (f1 j).toNat = 1) n)

end

end A301988.P16011608497121379837

/-! ## A301988.P16166768119065231465

`filter[A301987(n+3), A353682(#)]`
-/

namespace A301988.P16166768119065231465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301987 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353682 (f1 j).toNat = 1) n)

end

end A301988.P16166768119065231465

/-!
# A301989: a(n) is the number of ways to write n as i * j * k where 2 <= i <= sqrt(n), i < j <= min(2 * i - 1, floor(n / i)), k >= 1.

The programs for A301989, there is no canonical definition to state claims against.
-/

/-! ## A301989.P4336524822689300094

`∑{d}[n+1, A065704(#)*A078926((n+1)/#)]`
-/

namespace A301989.P4336524822689300094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065704 d * A078926 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A301989.P4336524822689300094

/-! ## A301989.P9288256852206914003

`∑{d}[n+1, A053866(#)*A270417((n+1)/#)]`
-/

namespace A301989.P9288256852206914003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053866 d * A270417 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A301989.P9288256852206914003

/-! ## A301989.P15946076679435907911

`∑{d}[n+1, A008836(#)*A399440((n+1)/#)]`
-/

namespace A301989.P15946076679435907911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A399440 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A301989.P15946076679435907911

/-! ## A301989.P14704254891610366162

`∑{d}[n+1, A075534(#)*A270417((n+1)/#)]`
-/

namespace A301989.P14704254891610366162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A075534 d * A270417 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A301989.P14704254891610366162

/-!
# A301991: Terms of A301857 where both A301857(n) and its counterpart are composite.

The programs for A301991, there is no canonical definition to state claims against.
-/

/-! ## A301991.P3324221853983046771

`filter[A301857(n+1), A064911(#)]`
-/

namespace A301991.P3324221853983046771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A301991.P3324221853983046771

/-! ## A301991.P1434783831566481850

`filter[A301857(n+1), A066247(#)]`
-/

namespace A301991.P1434783831566481850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A301991.P1434783831566481850

/-! ## A301991.P15285883321120221481

`filter[A301857(n+1), A143731(#)]`
-/

namespace A301991.P15285883321120221481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A301991.P15285883321120221481

/-! ## A301991.P10365836510961301209

`filter[A301857(n+1), A174898(#)]`
-/

namespace A301991.P10365836510961301209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174898 (f1 j).toNat = 1) n)

end

end A301991.P10365836510961301209

/-!
# A301992: a(n) = 8*(n-2)*(2*n-5)*a(n-1) + ((n-2)/9)*Product_{k=0..n-2} (2*k-3)^2 with a(1) = 0.

The programs for A301992, there is no canonical definition to state claims against.
-/

/-! ## A301992.P11446405870856956835

`(n-1)*∑[A327197(n)]`
-/

namespace A301992.P11446405870856956835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327197 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A301992.P11446405870856956835

/-!
# A301993: Number of n X n 0..1 arrays with every element equal to 1, 2 or 4 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301993, there is no canonical definition to state claims against.
-/

/-! ## A301993.P11965406547002587128

`A301999(∑[4*n]+1)`
-/

namespace A301993.P11965406547002587128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301999 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A301993.P11965406547002587128

/-! ## A301993.P3997824111256604883

`record[A077606(n+1)*A301999(n+1)]`
-/

namespace A301993.P3997824111256604883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077606 (n + 1) * A301999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301993.P3997824111256604883

/-!
# A301994: Number of n X 3 0..1 arrays with every element equal to 1, 2 or 4 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301994, the canonical program `A301994.P10515248188282553436` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301994 has offset 1).

The definition of A301994 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 199 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A301994.P10515248188282553436

`ogf((1-3x+2x^2)/(1-5x+7x^2-4x^3))`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A301994

/-- `ogf((1-3x+2x^2)/(1-5x+7x^2-4x^3))` -/
def P10515248188282553436.Spec : Prop :=
  ∀ n, P10515248188282553436.a n = A301994 (n + 1)

theorem P10515248188282553436.correct : P10515248188282553436.Spec := by
  intro n
  simp only [A301994, Nat.add_sub_cancel]

end A301994

/-! ## A301994.P7660042904947166258

`∑[A049219(1+n)]`
-/

namespace A301994.P7660042904947166258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049219 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301994.P7660042904947166258

namespace A301994

/-- `∑[A049219(1+n)]` -/
def P7660042904947166258.Spec : Prop :=
  ∀ n, P7660042904947166258.a n = A301994 (n + 1)

end A301994

/-! ## A301994.P24041237230821252

`∑{#}[n, C(n, #)*A052980(#)]`
-/

namespace A301994.P24041237230821252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A052980 k

end

end A301994.P24041237230821252

namespace A301994

/-- `∑{#}[n, C(n, #)*A052980(#)]` -/
def P24041237230821252.Spec : Prop :=
  ∀ n, P24041237230821252.a n = A301994 (n + 1)

end A301994

/-! ## A301994.P16989644247392794346

`A049219(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A301994.P16989644247392794346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A049219 (n + 1) + a (n - 1)

end

end A301994.P16989644247392794346

namespace A301994

/-- `A049219(n+1)+a(n-1)` -/
def P16989644247392794346.Spec : Prop :=
  ∀ n, P16989644247392794346.a n = A301994 (n + 1)

end A301994

/-! ## A301994.P14404389916692180209

`A001169(n+1)-A049222(n+2)`
-/

namespace A301994.P14404389916692180209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001169 (n + 1) - A049222 (n + 2)

end

end A301994.P14404389916692180209

namespace A301994

/-- `A001169(n+1)-A049222(n+2)` -/
def P14404389916692180209.Spec : Prop :=
  ∀ n, P14404389916692180209.a n = A301994 (n + 1)

end A301994

/-! ## A301994.P14383259341611577729

`A001169(n+1)-∑[A049220(n+1)]`
-/

namespace A301994.P14383259341611577729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049220 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001169 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301994.P14383259341611577729

namespace A301994

/-- `A001169(n+1)-∑[A049220(n+1)]` -/
def P14383259341611577729.Spec : Prop :=
  ∀ n, P14383259341611577729.a n = A301994 (n + 1)

end A301994

/-! ## A301994.P9982376916425105050

`∑[∑[A049221(n+1)+A049220(n+1)]]`
-/

namespace A301994.P9982376916425105050
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049221 (n + 1) + A049220 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301994.P9982376916425105050

namespace A301994

/-- `∑[∑[A049221(n+1)+A049220(n+1)]]` -/
def P9982376916425105050.Spec : Prop :=
  ∀ n, P9982376916425105050.a n = A301994 (n + 1)

end A301994

/-! ## A301994.P714294598858778674

`A049219(n+1)+A049220(n+2)-A049222(n+2)`
-/

namespace A301994.P714294598858778674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049219 (n + 1) + (A049220 (n + 2) - A049222 (n + 2))

end

end A301994.P714294598858778674

namespace A301994

/-- `A049219(n+1)+A049220(n+2)-A049222(n+2)` -/
def P714294598858778674.Spec : Prop :=
  ∀ n, P714294598858778674.a n = A301994 (n + 1)

end A301994

/-! ## A301994.P2832456805951536906

`5*a(n-1)-7*a(n-2)+4*a(n-3)` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A301994.P2832456805951536906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  5 * a (n - 1) - 7 * a (n - 2) + 4 * a (n - 3)

end

end A301994.P2832456805951536906

namespace A301994

/-- `5*a(n-1)-7*a(n-2)+4*a(n-3)` -/
def P2832456805951536906.Spec : Prop :=
  ∀ n, P2832456805951536906.a n = A301994 (n + 1)

end A301994

/-! ## A301994.P3401025341947995627

`A001169(n+2)-A049221(n+3)`
-/

namespace A301994.P3401025341947995627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001169 (n + 2) - A049221 (n + 3)

end

end A301994.P3401025341947995627

namespace A301994

/-- `A001169(n+2)-A049221(n+3)` -/
def P3401025341947995627.Spec : Prop :=
  ∀ n, P3401025341947995627.a n = A301994 (n + 1)

end A301994

/-! ## A301994.P11580373360827188606

`A049220(n+3)-A049222(n+3)`
-/

namespace A301994.P11580373360827188606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049220 (n + 3) - A049222 (n + 3)

end

end A301994.P11580373360827188606

namespace A301994

/-- `A049220(n+3)-A049222(n+3)` -/
def P11580373360827188606.Spec : Prop :=
  ∀ n, P11580373360827188606.a n = A301994 (n + 1)

end A301994

/-! ## A301994.P223433376479646346

`A049219(n+2)-(A049222(n+2)+A049221(n+2))`
-/

namespace A301994.P223433376479646346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049219 (n + 2) - (A049222 (n + 2) + A049221 (n + 2))

end

end A301994.P223433376479646346

namespace A301994

/-- `A049219(n+2)-(A049222(n+2)+A049221(n+2))` -/
def P223433376479646346.Spec : Prop :=
  ∀ n, P223433376479646346.a n = A301994 (n + 1)

end A301994

/-! ## A301994.P1535374137579392542

`A001169(n+1)-A001169(n+2)%A001169(n+1)`
-/

namespace A301994.P1535374137579392542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001169 (n + 1) - Int.tmod (A001169 (n + 2)) (A001169 (n + 1))

end

end A301994.P1535374137579392542

namespace A301994

/-- `A001169(n+1)-A001169(n+2)%A001169(n+1)` -/
def P1535374137579392542.Spec : Prop :=
  ∀ n, P1535374137579392542.a n = A301994 (n + 1)

end A301994

/-!
# A301995: Number of nX4 0..1 arrays with every element equal to 1, 2 or 4 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301995, the canonical program `A301995.P8176655692757837835` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301995 has offset 1).

The definition of A301995 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A301995.P9319729177968999959

`∑[ogf((2+2x^2)/(1-3x+x^2))]`
-/

namespace A301995.P9319729177968999959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 0, 2] [1, -3, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301995.P9319729177968999959

namespace A301995

/-- `∑[ogf((2+2x^2)/(1-3x+x^2))]` -/
def P9319729177968999959.Spec : Prop :=
  ∀ n, P9319729177968999959.a n = A301995 (n + 1)

end A301995

/-! ## A301995.P18082506661893294412

`ogf((2+2x^2)/(1-4x+4x^2-x^3))`
-/

namespace A301995.P18082506661893294412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 0, 2] [1, -4, 4, -1] n

end

end A301995.P18082506661893294412

namespace A301995

/-- `ogf((2+2x^2)/(1-4x+4x^2-x^3))` -/
def P18082506661893294412.Spec : Prop :=
  ∀ n, P18082506661893294412.a n = A301995 (n + 1)

end A301995

/-! ## A301995.P8176655692757837835

`record[a(n-2)-(a(n-1)+4)]` with `a(0)=2, a(1)=2`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A301995

/-- `record[a(n-2)-(a(n-1)+4)]` -/
def P8176655692757837835.Spec : Prop :=
  ∀ n, P8176655692757837835.a n = A301995 (n + 1)

theorem P8176655692757837835.correct : P8176655692757837835.Spec := by
  intro n
  simp only [A301995, Nat.add_sub_cancel]

end A301995

/-! ## A301995.P10202079407245996020

`record[a(n-2)-4-a(n-1)]` with `a(0)=2, a(1)=2`
-/

namespace A301995.P10202079407245996020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  f1 (n - 2) - 4 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301995.P10202079407245996020

namespace A301995

/-- `record[a(n-2)-4-a(n-1)]` -/
def P10202079407245996020.Spec : Prop :=
  ∀ n, P10202079407245996020.a n = A301995 (n + 1)

theorem P10202079407245996020.correct : P10202079407245996020.Spec := by
  intro n
  simp only [A301995, Nat.add_sub_cancel, A301995.P10202079407245996020.f1, A301995.P10202079407245996020.a, A301995.P8176655692757837835.f1, A301995.P8176655692757837835.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A301995

/-! ## A301995.P16151438007171457773

`3*a(n-1)+4-a(n-2)` with `a(0)=2, a(1)=8`
-/

namespace A301995.P16151438007171457773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 8] fun n a =>
  3 * a (n - 1) + (4 - a (n - 2))

end

end A301995.P16151438007171457773

namespace A301995

/-- `3*a(n-1)+4-a(n-2)` -/
def P16151438007171457773.Spec : Prop :=
  ∀ n, P16151438007171457773.a n = A301995 (n + 1)

end A301995

/-! ## A301995.P165708536912958684

`3*a(n-1)-(a(n-2)-4)` with `a(0)=2, a(1)=8`
-/

namespace A301995.P165708536912958684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 8] fun n a =>
  3 * a (n - 1) - (a (n - 2) - 4)

end

end A301995.P165708536912958684

namespace A301995

/-- `3*a(n-1)-(a(n-2)-4)` -/
def P165708536912958684.Spec : Prop :=
  ∀ n, P165708536912958684.a n = A301995 (n + 1)

end A301995

/-! ## A301995.P7096163829152921729

`∑[A099857(n)]+1`
-/

namespace A301995.P7096163829152921729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099857 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A301995.P7096163829152921729

namespace A301995

/-- `∑[A099857(n)]+1` -/
def P7096163829152921729.Spec : Prop :=
  ∀ n, P7096163829152921729.a n = A301995 (n + 1)

end A301995

/-! ## A301995.P9365847834633328325

`∑[2*A097134(n)]`
-/

namespace A301995.P9365847834633328325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A097134 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301995.P9365847834633328325

namespace A301995

/-- `∑[2*A097134(n)]` -/
def P9365847834633328325.Spec : Prop :=
  ∀ n, P9365847834633328325.a n = A301995 (n + 1)

end A301995

/-! ## A301995.P11660428909661900640

`A111721(2*n)+1`
-/

namespace A301995.P11660428909661900640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111721 (2 * n) + 1

end

end A301995.P11660428909661900640

namespace A301995

/-- `A111721(2*n)+1` -/
def P11660428909661900640.Spec : Prop :=
  ∀ n, P11660428909661900640.a n = A301995 (n + 1)

end A301995

/-! ## A301995.P225717508434210936

`3*A069403(n)-1`
-/

namespace A301995.P225717508434210936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A069403 n - 1

end

end A301995.P225717508434210936

namespace A301995

/-- `3*A069403(n)-1` -/
def P225717508434210936.Spec : Prop :=
  ∀ n, P225717508434210936.a n = A301995 (n + 1)

end A301995

/-! ## A301995.P16256006902712458442

`2*A111314(2*n)`
-/

namespace A301995.P16256006902712458442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A111314 (2 * n)

end

end A301995.P16256006902712458442

namespace A301995

/-- `2*A111314(2*n)` -/
def P16256006902712458442.Spec : Prop :=
  ∀ n, P16256006902712458442.a n = A301995 (n + 1)

end A301995

/-! ## A301995.P6784346071728593321

`2*A131326(2*n)`
-/

namespace A301995.P6784346071728593321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131326 (2 * n)

end

end A301995.P6784346071728593321

namespace A301995

/-- `2*A131326(2*n)` -/
def P6784346071728593321.Spec : Prop :=
  ∀ n, P6784346071728593321.a n = A301995 (n + 1)

end A301995

/-! ## A301995.P12636527370399777694

`2*(A246638(n)-4)`
-/

namespace A301995.P12636527370399777694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A246638 n - 4)

end

end A301995.P12636527370399777694

namespace A301995

/-- `2*(A246638(n)-4)` -/
def P12636527370399777694.Spec : Prop :=
  ∀ n, P12636527370399777694.a n = A301995 (n + 1)

end A301995

/-! ## A301995.P7304418206640869943

`∑[A022089(2*n)]+2`
-/

namespace A301995.P7304418206640869943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022089 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A301995.P7304418206640869943

namespace A301995

/-- `∑[A022089(2*n)]+2` -/
def P7304418206640869943.Spec : Prop :=
  ∀ n, P7304418206640869943.a n = A301995 (n + 1)

end A301995

/-! ## A301995.P5069857130230789203

`∑[2*A097135(2*n)]`
-/

namespace A301995.P5069857130230789203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A097135 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301995.P5069857130230789203

namespace A301995

/-- `∑[2*A097135(2*n)]` -/
def P5069857130230789203.Spec : Prop :=
  ∀ n, P5069857130230789203.a n = A301995 (n + 1)

end A301995

/-! ## A301995.P9969341193533491204

`2*(Δ[A097136(n)]-2)`
-/

namespace A301995.P9969341193533491204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097136 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n - 2)

end

end A301995.P9969341193533491204

namespace A301995

/-- `2*(Δ[A097136(n)]-2)` -/
def P9969341193533491204.Spec : Prop :=
  ∀ n, P9969341193533491204.a n = A301995 (n + 1)

end A301995

/-! ## A301995.P6883468841805054611

`2*(A292291(n+2)+1)`
-/

namespace A301995.P6883468841805054611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A292291 (n + 2) + 1)

end

end A301995.P6883468841805054611

namespace A301995

/-- `2*(A292291(n+2)+1)` -/
def P6883468841805054611.Spec : Prop :=
  ∀ n, P6883468841805054611.a n = A301995 (n + 1)

end A301995

/-! ## A301995.P18167762098073339369

`A022089(2*n+1)-4`
-/

namespace A301995.P18167762098073339369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022089 (2 * n + 1) - 4

end

end A301995.P18167762098073339369

namespace A301995

/-- `A022089(2*n+1)-4` -/
def P18167762098073339369.Spec : Prop :=
  ∀ n, P18167762098073339369.a n = A301995 (n + 1)

end A301995

/-! ## A301995.P18010690454412465768

`6*A000045(Δ[n²])-4`
-/

namespace A301995.P18010690454412465768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A000045 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 4

end

end A301995.P18010690454412465768

namespace A301995

/-- `6*A000045(Δ[n²])-4` -/
def P18010690454412465768.Spec : Prop :=
  ∀ n, P18010690454412465768.a n = A301995 (n + 1)

end A301995

/-! ## A301995.P456178826077053555

`∑[6*A000045(2*n)]+2`
-/

namespace A301995.P456178826077053555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A000045 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A301995.P456178826077053555

namespace A301995

/-- `∑[6*A000045(2*n)]+2` -/
def P456178826077053555.Spec : Prop :=
  ∀ n, P456178826077053555.a n = A301995 (n + 1)

end A301995

/-!
# A301996: Number of nX5 0..1 arrays with every element equal to 1, 2 or 4 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301996, there is no canonical definition to state claims against.
-/

/-! ## A301996.P7921824745084813407

`A301999(Δ[A264443(n)])`
-/

namespace A301996.P7921824745084813407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301999 (f1 (n + 1) - f1 n).toNat

end

end A301996.P7921824745084813407

/-!
# A301997: Number of nX6 0..1 arrays with every element equal to 1, 2 or 4 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301997, there is no canonical definition to state claims against.
-/

/-! ## A301997.P13563579634976216794

`A301999(A052905(n+3))`
-/

namespace A301997.P13563579634976216794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301999 (A052905 (n + 3)).toNat

end

end A301997.P13563579634976216794

/-!
# A301998: Number of nX7 0..1 arrays with every element equal to 1, 2 or 4 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301998, there is no canonical definition to state claims against.
-/

/-! ## A301998.P257127965557275669

`A301999(eq[4, A219347(n)])`
-/

namespace A301998.P257127965557275669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301999 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301998.P257127965557275669

/-!
# A301999: T(n,k)=Number of nXk 0..1 arrays with every element equal to 1, 2 or 4 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301999, there is no canonical definition to state claims against.
-/

/-! ## A301999.P1610650820614167678

`A342910(A247306(n+1))+A301823(n+1)`
-/

namespace A301999.P1610650820614167678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342910 (A247306 (n + 1)).toNat + A301823 (n + 1)

end

end A301999.P1610650820614167678

/-! ## A301999.P11077897300431743087

`A301823(n+1)+A011731(A022171(n))`
-/

namespace A301999.P11077897300431743087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301823 (n + 1) + A011731 (A022171 n).toNat

end

end A301999.P11077897300431743087

/-! ## A301999.P16804007149286049815

`A301823(n+1)+A025465(A022345(n))`
-/

namespace A301999.P16804007149286049815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301823 (n + 1) + A025465 (A022345 n).toNat

end

end A301999.P16804007149286049815

/-! ## A301999.P8281711519854700837

`A301823(n+1)+A046660(A131070(n))`
-/

namespace A301999.P8281711519854700837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301823 (n + 1) + A046660 (A131070 n).toNat

end

end A301999.P8281711519854700837

/-! ## A301999.P10704166797531420756

`A301823(n+1)+A284261(A002843(n))`
-/

namespace A301999.P10704166797531420756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301823 (n + 1) + A284261 (A002843 n).toNat

end

end A301999.P10704166797531420756

