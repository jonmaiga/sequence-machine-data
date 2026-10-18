import SequenceMachineLib
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
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C036
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
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C001
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

/-!
# A263100: Number of ordered pairs (k, m) with k > 0 and m > 0 such that n = pi(k^2) + pi(m^2/2), where pi(x) denotes the number of primes not exceeding x.

The programs for A263100, there is no canonical definition to state claims against.
-/

/-! ## A263100.P14145585049893151941

`A131818(gcd(A003950(n), A057608(n)))`
-/

namespace A263100.P14145585049893151941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (Int.gcd (A003950 n) (A057608 n))

end

end A263100.P14145585049893151941

/-! ## A263100.P6304103173958290304

`A331924(A331888(n))+A308656(n+1)`
-/

namespace A263100.P6304103173958290304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331924 (A331888 n).toNat + A308656 (n + 1)

end

end A263100.P6304103173958290304

/-! ## A263100.P14611438529203290927

`A187279(A029518(n+1)+A000792(2*n+1))`
-/

namespace A263100.P14611438529203290927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187279 (A029518 (n + 1) + A000792 (2 * n + 1)).toNat

end

end A263100.P14611438529203290927

/-!
# A263101: a(n) = F(F(n)) mod F(n), where F = Fibonacci = A000045.

The programs for A263101, the canonical program `A263101.P4527818961469983192` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263101 has offset 1).

The definition of A263101 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A263101.P4527818961469983192

`A000045(A000045(n+1)%(4*(n+1)))%A000045(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A263101

/-- `A000045(A000045(n+1)%(4*(n+1)))%A000045(n+1)` -/
def P4527818961469983192.Spec : Prop :=
  ∀ n, P4527818961469983192.a n = A263101 (n + 1)

theorem P4527818961469983192.correct : P4527818961469983192.Spec := by
  intro n
  simp only [A263101, Nat.add_sub_cancel]

end A263101

/-! ## A263101.P11893160857841293113

`A132634(A212804(n+2))%∑[A212804(n)]`
-/

namespace A263101.P11893160857841293113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132634 (A212804 (n + 2)).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A263101.P11893160857841293113

namespace A263101

/-- `A132634(A212804(n+2))%∑[A212804(n)]` -/
def P11893160857841293113.Spec : Prop :=
  ∀ n, P11893160857841293113.a n = A263101 (n + 1)

end A263101

/-! ## A263101.P1715512010722713959

`A132634(A000045(n+1))%A000045(n+1)`
-/

namespace A263101.P1715512010722713959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132634 (A000045 (n + 1)).toNat) (A000045 (n + 1))

end

end A263101.P1715512010722713959

namespace A263101

/-- `A132634(A000045(n+1))%A000045(n+1)` -/
def P1715512010722713959.Spec : Prop :=
  ∀ n, P1715512010722713959.a n = A263101 (n + 1)

end A263101

/-! ## A263101.P534028705751814704

`A132634(A163227(2*n+1))%A058071(∑[n])`
-/

namespace A263101.P534028705751814704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132634 (A163227 (2 * n + 1)).toNat) (A058071 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A263101.P534028705751814704

namespace A263101

/-- `A132634(A163227(2*n+1))%A058071(∑[n])` -/
def P534028705751814704.Spec : Prop :=
  ∀ n, P534028705751814704.a n = A263101 (n + 1)

end A263101

/-!
# A263102: Number of distinct cycles without repeated edges on the multigraph with 2 vertices connected by n edges.

The programs for A263102, there is no canonical definition to state claims against.
-/

/-! ## A263102.P10370565697324335764

`∑[(n-1)*a(n-1)+1]-A291484(n)` with `a(0)=0`
-/

namespace A263102.P10370565697324335764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  ((n : ℤ) - 1) * f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A291484 n

end

end A263102.P10370565697324335764

/-! ## A263102.P14265503508872351532

`A002104(n)-A291484(n)`
-/

namespace A263102.P14265503508872351532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002104 n - A291484 n

end

end A263102.P14265503508872351532

/-! ## A263102.P3799199895726560933

`(∑[A054091(n)]-1)/2-A291484(n)`
-/

namespace A263102.P3799199895726560933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054091 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - 1 : ℤ) : ℚ) / 2 - (A291484 n : ℚ)

end

end A263102.P3799199895726560933

/-! ## A263102.P9457485398536578446

`∑[n]+2*A002807(n)-A291484(n)`
-/

namespace A263102.P9457485398536578446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 2 * A002807 n - A291484 n

end

end A263102.P9457485398536578446

/-! ## A263102.P17908085312608674065

`∑[A143409(∑[n]-n)]-1-A291484(n)`
-/

namespace A263102.P17908085312608674065
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143409 (∑ j ∈ Finset.range (n + 1), f2 j - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1 - A291484 n

end

end A263102.P17908085312608674065

/-! ## A263102.P13576967583624048164

`A002104(A237420(n))-A177699(n)`
-/

namespace A263102.P13576967583624048164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002104 (A237420 n).toNat - A177699 n

end

end A263102.P13576967583624048164

/-! ## A263102.P16136681188719224210

`A291484(n)-(A177699(n)+A009416(n))`
-/

namespace A263102.P16136681188719224210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291484 n - (A177699 n + A009416 n)

end

end A263102.P16136681188719224210

/-! ## A263102.P4879976263380951832

`A291484(n)+A002741(n)*A033999(n)`
-/

namespace A263102.P4879976263380951832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291484 n + A002741 n * A033999 n

end

end A263102.P4879976263380951832

/-! ## A263102.P9203216911619623212

`A002104(n)+A057428(n)*A291484(n)`
-/

namespace A263102.P9203216911619623212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002104 n + A057428 n * A291484 n

end

end A263102.P9203216911619623212

/-! ## A263102.P1074320955802835193

`A094816(A000124(n))-A291484(A028310(n))`
-/

namespace A263102.P1074320955802835193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094816 (A000124 n).toNat - A291484 (A028310 n).toNat

end

end A263102.P1074320955802835193

/-!
# A263103: Minimum possible number of cycles without repeated edges on a multigraph with 3 vertices and n edges (when each vertex pair must have at least one edge).

The programs for A263103, there is no canonical definition to state claims against.
-/

/-! ## A263103.P9678529571574565940

`A157271(∑[A001692(n)])`
-/

namespace A263103.P9678529571574565940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001692 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A263103.P9678529571574565940

/-! ## A263103.P2221510296467197316

`A262869(∑[A354533(n+1)])`
-/

namespace A263103.P2221510296467197316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354533 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262869 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A263103.P2221510296467197316

/-!
# A263104: a(3k), a(3k+1), a(3k+2) are the numbers of edges between each vertex-pair in a multigraph with 3 vertices and k edges (with at least one edge between each vertex-pair) which has the minimum number of distinct cycles, if that arrangement of edges is unique.

The programs for A263104, there is no canonical definition to state claims against.
-/

/-! ## A263104.P14191784719507384006

`A000120(A000120(A200792(2*n+1)+A000120(n+3)))`
-/

namespace A263104.P14191784719507384006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A000120 (A200792 (2 * n + 1) + A000120 (n + 3)).toNat).toNat

end

end A263104.P14191784719507384006

/-! ## A263104.P17327399779680732324

`A268715(A054707(A285524(4*(n+1))+A108611(2*n)))`
-/

namespace A263104.P17327399779680732324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268715 (A054707 (A285524 (4 * (n + 1)) + A108611 (2 * n)).toNat).toNat

end

end A263104.P17327399779680732324

/-! ## A263104.P15345286473389666041

`A103921(A056519(n+1)+3)`
-/

namespace A263104.P15345286473389666041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103921 (A056519 (n + 1) + 3).toNat

end

end A263104.P15345286473389666041

/-! ## A263104.P9480145237415928992

`A124765(or(A003679(n+1), A113405(n)))`
-/

namespace A263104.P9480145237415928992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 (Int.lor (A003679 (n + 1)) (A113405 n)).toNat

end

end A263104.P9480145237415928992

/-! ## A263104.P10457915329297046035

`A353486(A124760(n)+A288133(n+1)-(A001523(n)+n))`
-/

namespace A263104.P10457915329297046035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353486 (A124760 n + (A288133 (n + 1) - (A001523 n + (n : ℤ)))).toNat

end

end A263104.P10457915329297046035

/-!
# A263108: Semiprimes m such that the leftward cyclic permutation of its decimal digits is a larger semiprime.

The programs for A263108, there is no canonical definition to state claims against.
-/

/-! ## A263108.P17589480087756527841

`∩[A050699(n+1), A370267(n+1)]`
-/

namespace A263108.P17589480087756527841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050699 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370267 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A263108.P17589480087756527841

/-! ## A263108.P14738718525138390432

`∩[A050700(n+1), A370267(n+1)]`
-/

namespace A263108.P14738718525138390432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370267 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A263108.P14738718525138390432

/-! ## A263108.P2104197070488561187

`∩[A097393(n+1), A370267(n+1)]`
-/

namespace A263108.P2104197070488561187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370267 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A263108.P2104197070488561187

/-!
# A263109: n is the a(n)-th positive integer having its digitsum in base-12 representation.

The programs for A263109, there is no canonical definition to state claims against.
-/

/-! ## A263109.P15995893756125789670

`A263110(lt[n, A182729(n+1)])`
-/

namespace A263109.P15995893756125789670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182729 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263110 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A263109.P15995893756125789670

/-! ## A263109.P4317649686963383049

`gcd(A146891(n), A206244(n))`
-/

namespace A263109.P4317649686963383049
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A146891 n) (A206244 n)

end

end A263109.P4317649686963383049

/-! ## A263109.P1066671323341896282

`A003963(∑[(A251632(2*n+1)+1)%2])`
-/

namespace A263109.P1066671323341896282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A251632 (2 * n + 1) + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A263109.P1066671323341896282

/-! ## A263109.P4558107321325351226

`A020639(A206245(n)^A001191(2*n+3))`
-/

namespace A263109.P4558107321325351226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A206245 n : ℚ) ^ (A001191 (2 * n + 3) : ℤ))).toNat

end

end A263109.P4558107321325351226

/-! ## A263109.P16350904114083554759

`A263110(A028753(n+2))`
-/

namespace A263109.P16350904114083554759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263110 (A028753 (n + 2)).toNat

end

end A263109.P16350904114083554759

/-!
# A263110: n is the a(n)-th positive integer having its digitsum in base-16 representation.

The programs for A263110, there is no canonical definition to state claims against.
-/

/-! ## A263110.P2825229826589198237

`A254524(∑[(A299264(2*(n+1))%A170830(n+4))%2])`
-/

namespace A263110.P2825229826589198237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A299264 (2 * (n + 1))) (A170830 (n + 4))) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254524 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A263110.P2825229826589198237

/-! ## A263110.P14728969524439777563

`A003108(A339451(n)+A151878(2*n+3))`
-/

namespace A263110.P14728969524439777563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003108 (A339451 n + A151878 (2 * n + 3)).toNat

end

end A263110.P14728969524439777563

/-! ## A263110.P1921374936847592847

`A206244(abs(A390675(2*(n+2))-A092323(n+1)))`
-/

namespace A263110.P1921374936847592847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206244 |A390675 (2 * (n + 2)) - A092323 (n + 1)|.toNat

end

end A263110.P1921374936847592847

/-! ## A263110.P18099710722239394101

`A254524(A338336(2*n+5)+3)`
-/

namespace A263110.P18099710722239394101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254524 (A338336 (2 * n + 5) + 3).toNat

end

end A263110.P18099710722239394101

/-! ## A263110.P14762752764915952764

`A279041(A339451(n)%A111354(n+5))`
-/

namespace A263110.P14762752764915952764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279041 (Int.tmod (A339451 n) (A111354 (n + 5))).toNat

end

end A263110.P14762752764915952764

/-!
# A263111: Ordinal transform of the arithmetic derivative A003415.

The programs for A263111, there is no canonical definition to state claims against.
-/

/-! ## A263111.P10185385245727899477

`A331904(2*n+3)^A331918(A331888(n))`
-/

namespace A263111.P10185385245727899477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331904 (2 * n + 3) : ℚ) ^ (A331918 (A331888 n).toNat : ℤ)

end

end A263111.P10185385245727899477

/-! ## A263111.P7977800243881978651

`A137163(A176331(n)+n)`
-/

namespace A263111.P7977800243881978651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137163 (A176331 n + (n : ℤ)).toNat

end

end A263111.P7977800243881978651

/-! ## A263111.P6394256125064861637

`A355662(A122111(abs(2-n)+2))`
-/

namespace A263111.P6394256125064861637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355662 (A122111 (|2 - (n : ℤ)| + 2).toNat).toNat

end

end A263111.P6394256125064861637

/-! ## A263111.P2581648795213487589

`gcd(A061579(A022097(n)), A126759(n))`
-/

namespace A263111.P2581648795213487589
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061579 (A022097 n).toNat) (A126759 n)

end

end A263111.P2581648795213487589

/-! ## A263111.P12035495418276459232

`gcd(A000217(A221074(n)), A054404(n+4))`
-/

namespace A263111.P12035495418276459232
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000217 (A221074 n).toNat) (A054404 (n + 4))

end

end A263111.P12035495418276459232

/-!
# A263112: a(n) = F(F(n)) mod n, where F = Fibonacci = A000045.

The programs for A263112, there is no canonical definition to state claims against.
-/

/-! ## A263112.P15675335497532937892

`A000045(A000045(n+1)%A001175(n+1))%(n+1)`
-/

namespace A263112.P15675335497532937892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 (Int.tmod (A000045 (n + 1)) (A001175 (n + 1))).toNat) (n + 1 : ℤ)

end

end A263112.P15675335497532937892

/-! ## A263112.P15243605449027019874

`∑[A113597(n)]%(n+1)`
-/

namespace A263112.P15243605449027019874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113597 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A263112.P15243605449027019874

/-! ## A263112.P2195722881937057373

`A007570(n+1)%(n+1)`
-/

namespace A263112.P2195722881937057373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007570 (n + 1)) (n + 1 : ℤ)

end

end A263112.P2195722881937057373

/-! ## A263112.P17061328531329864155

`A000045(record[A141169(n)])%(n+1)`
-/

namespace A263112.P17061328531329864155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) (n + 1 : ℤ)

end

end A263112.P17061328531329864155

/-! ## A263112.P16967362313277133930

`A000045(A000045(n+1))%(n+1)`
-/

namespace A263112.P16967362313277133930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 (A000045 (n + 1)).toNat) (n + 1 : ℤ)

end

end A263112.P16967362313277133930

/-!
# A263113: Number of (n+2)X(1+2) 0..1 arrays with each row and column not divisible by 7, read as a binary number with top and left being the most significant bits.

The programs for A263113, there is no canonical definition to state claims against.
-/

/-! ## A263113.P5027701347328021336

`A263117(∑[n]+1)`
-/

namespace A263113.P5027701347328021336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263117 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A263113.P5027701347328021336

/-! ## A263113.P63786853623607021

`lcm(2, A263117(A000124(n)))`
-/

namespace A263113.P63786853623607021
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A263117 (A000124 n).toNat)

end

end A263113.P63786853623607021

/-! ## A263113.P4412581572259833450

`record[A263117(A286235(n+1))]`
-/

namespace A263113.P4412581572259833450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263117 (A286235 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263113.P4412581572259833450

/-! ## A263113.P6735101694413531731

`record[A263117(A292588(n+1))]`
-/

namespace A263113.P6735101694413531731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263117 (A292588 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263113.P6735101694413531731

/-! ## A263113.P5929542674633975593

`record[A010054(n)*A263117(n+1)]`
-/

namespace A263113.P5929542674633975593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A263117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263113.P5929542674633975593

/-!
# A263114: Number of (n+2)X(2+2) 0..1 arrays with each row and column not divisible by 7, read as a binary number with top and left being the most significant bits.

The programs for A263114, there is no canonical definition to state claims against.
-/

/-! ## A263114.P4228088267385259455

`A263117(∑[n+1]+2)`
-/

namespace A263114.P4228088267385259455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263117 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A263114.P4228088267385259455

/-! ## A263114.P6652351693023465237

`record[A263117(A286235(n+1)+1)]`
-/

namespace A263114.P6652351693023465237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263117 (A286235 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263114.P6652351693023465237

/-! ## A263114.P9244072335507749637

`record[A010054(n)*A263117(n+2)]`
-/

namespace A263114.P9244072335507749637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A263117 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263114.P9244072335507749637

/-! ## A263114.P1395304766658848714

`record[A263117(A292588(2*n+1)+1)]`
-/

namespace A263114.P1395304766658848714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263117 (A292588 (2 * n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263114.P1395304766658848714

/-! ## A263114.P10987935883168217828

`lcm(A007318(n+1), A263117(A000096(n)+3))`
-/

namespace A263114.P10987935883168217828
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007318 (n + 1)) (A263117 (A000096 n + 3).toNat)

end

end A263114.P10987935883168217828

/-!
# A263115: Number of (n+2)X(3+2) 0..1 arrays with each row and column not divisible by 7, read as a binary number with top and left being the most significant bits.

The programs for A263115, there is no canonical definition to state claims against.
-/

/-! ## A263115.P15842935885927334186

`A263117(∑[n+2]+4)`
-/

namespace A263115.P15842935885927334186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263117 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A263115.P15842935885927334186

/-! ## A263115.P5503786178910156955

`A263117(A167614(n+1))+A011738(n)`
-/

namespace A263115.P5503786178910156955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263117 (A167614 (n + 1)).toNat + A011738 n

end

end A263115.P5503786178910156955

/-! ## A263115.P14235006224649744255

`A263117(A167614(n+1))+A025437(n)`
-/

namespace A263115.P14235006224649744255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263117 (A167614 (n + 1)).toNat + A025437 n

end

end A263115.P14235006224649744255

/-! ## A263115.P9882772922402350016

`A263117(A167614(n+1))+A025444(n)`
-/

namespace A263115.P9882772922402350016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263117 (A167614 (n + 1)).toNat + A025444 n

end

end A263115.P9882772922402350016

/-! ## A263115.P3001319805603196615

`A263117(A167614(n+1))+A102683(n)`
-/

namespace A263115.P3001319805603196615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263117 (A167614 (n + 1)).toNat + A102683 n

end

end A263115.P3001319805603196615

/-!
# A263116: Number of (n+2)X(4+2) 0..1 arrays with each row and column not divisible by 7, read as a binary number with top and left being the most significant bits.

The programs for A263116, there is no canonical definition to state claims against.
-/

/-! ## A263116.P14290140372505819721

`A263117(A374004(n+1))`
-/

namespace A263116.P14290140372505819721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263117 (A374004 (n + 1)).toNat

end

end A263116.P14290140372505819721

/-! ## A263116.P1294296085752693670

`A263117(A141214(n)+7)`
-/

namespace A263116.P1294296085752693670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263117 (A141214 n + 7).toNat

end

end A263116.P1294296085752693670

/-! ## A263116.P7647077770214453870

`A263117(A052905(n)+9)`
-/

namespace A263116.P7647077770214453870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263117 (A052905 n + 9).toNat

end

end A263116.P7647077770214453870

/-! ## A263116.P9107157984738171810

`A263117(A055999(n)+10)`
-/

namespace A263116.P9107157984738171810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263117 (A055999 n + 10).toNat

end

end A263116.P9107157984738171810

/-!
# A263118: Indices of the primitive friendly pairs in the sequence of friendly pairs (A050973, A050972) ordered by smallest maximal element.

The programs for A263118, there is no canonical definition to state claims against.
-/

/-! ## A263118.P17140932932288932024

`eq[1, A263152(n+1)]+1`
-/

namespace A263118.P17140932932288932024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263152 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A263118.P17140932932288932024

/-! ## A263118.P9250328223550110529

`record[A000027(n+1)/A263152(n+1)]`
-/

namespace A263118.P9250328223550110529
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A263152 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263118.P9250328223550110529

/-! ## A263118.P12258370667392137524

`record[A028242(2*n)/A263152(n+1)]`
-/

namespace A263118.P12258370667392137524
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028242 (2 * n) : ℚ) / (A263152 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263118.P12258370667392137524

/-! ## A263118.P4728178234337771350

`record[A008619(n)/A263152(A008619(n))]`
-/

namespace A263118.P4728178234337771350
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 n : ℚ) / (A263152 (A008619 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263118.P4728178234337771350

/-! ## A263118.P6287330276679250989

`record[A032742(n+1)/A263152(A032742(n+1))]`
-/

namespace A263118.P6287330276679250989
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032742 (n + 1) : ℚ) / (A263152 (A032742 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263118.P6287330276679250989

/-!
# A263119: Number of (n+3) X (1+3) 0..1 arrays with each row divisible by 15 and column not divisible by 15, read as a binary number with top and left being the most significant bits.

The programs for A263119, the canonical program `A263119.P8361814824457812102` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263119 has offset 1).

The definition of A263119 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A263119.P8361814824457812102

`2*a(n-1)+a(n-4)-2*a(n-5)` with `a(0)=14, a(1)=29, a(2)=59, a(3)=119, a(4)=238`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A263119

/-- `2*a(n-1)+a(n-4)-2*a(n-5)` -/
def P8361814824457812102.Spec : Prop :=
  ∀ n, P8361814824457812102.a n = A263119 (n + 1)

theorem P8361814824457812102.correct : P8361814824457812102.Spec := by
  intro n
  simp only [A263119, Nat.add_sub_cancel]

end A263119

/-! ## A263119.P18411745268130141862

`A265381(n+3)`
-/

namespace A263119.P18411745268130141862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265381 (n + 3)

end

end A263119.P18411745268130141862

namespace A263119

/-- `A265381(n+3)` -/
def P18411745268130141862.Spec : Prop :=
  ∀ n, P18411745268130141862.a n = A263119 (n + 1)

end A263119

/-! ## A263119.P12723236099800468866

`record[A265381(abs(3-n))]`
-/

namespace A263119.P12723236099800468866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265381 |3 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263119.P12723236099800468866

namespace A263119

/-- `record[A265381(abs(3-n))]` -/
def P12723236099800468866.Spec : Prop :=
  ∀ n, P12723236099800468866.a n = A263119 (n + 1)

end A263119

/-! ## A263119.P12270680428170403

`2^(n+4)-A262450(n+1)`
-/

namespace A263119.P12270680428170403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 4) : ℤ) - A262450 (n + 1)

end

end A263119.P12270680428170403

namespace A263119

/-- `2^(n+4)-A262450(n+1)` -/
def P12270680428170403.Spec : Prop :=
  ∀ n, P12270680428170403.a n = A263119 (n + 1)

end A263119

/-! ## A263119.P17336923561979674909

`A102650(n+3)/4`
-/

namespace A263119.P17336923561979674909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102650 (n + 3) : ℚ) / 4

end

end A263119.P17336923561979674909

namespace A263119

/-- `A102650(n+3)/4` -/
def P17336923561979674909.Spec : Prop :=
  ∀ n, P17336923561979674909.a n = (A263119 (n + 1) : ℚ)

end A263119

/-! ## A263119.P11775197629884093452

`floor(Δ[A226265(n+1)/45])`
-/

namespace A263119.P11775197629884093452
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226265 (n + 1) : ℚ) / 45

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A263119.P11775197629884093452

namespace A263119

/-- `floor(Δ[A226265(n+1)/45])` -/
def P11775197629884093452.Spec : Prop :=
  ∀ n, P11775197629884093452.a n = A263119 (n + 1)

end A263119

/-!
# A263120: Number of (n+3)X(2+3) 0..1 arrays with each row divisible by 15 and column not divisible by 15, read as a binary number with top and left being the most significant bits.

The programs for A263120, there is no canonical definition to state claims against.
-/

/-! ## A263120.P9112800129103638355

`A263124(∑[n+2])`
-/

namespace A263120.P9112800129103638355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263124 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A263120.P9112800129103638355

/-! ## A263120.P9478568438414958498

`record[A263124(abs(A201163(n)))]`
-/

namespace A263120.P9478568438414958498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263124 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263120.P9478568438414958498

/-! ## A263120.P8492738090785295904

`record[A263124(Δ[A003453(n+5)])]`
-/

namespace A263120.P8492738090785295904
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263124 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263120.P8492738090785295904

/-! ## A263120.P12757650407927985282

`record[A263124(record[A198453(n+1)])]`
-/

namespace A263120.P12757650407927985282
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198453 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263124 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263120.P12757650407927985282

/-! ## A263120.P16623136897519485773

`A263124(A000096(n+1))+char[16]`
-/

namespace A263120.P16623136897519485773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263124 (A000096 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A263120.P16623136897519485773

/-!
# A263121: Number of (n+3)X(3+3) 0..1 arrays with each row divisible by 15 and column not divisible by 15, read as a binary number with top and left being the most significant bits.

The programs for A263121, there is no canonical definition to state claims against.
-/

/-! ## A263121.P8324648078720405935

`A263124(∑[n+3]+1)`
-/

namespace A263121.P8324648078720405935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263124 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A263121.P8324648078720405935

/-!
# A263122: Number of (n+3)X(4+3) 0..1 arrays with each row divisible by 15 and column not divisible by 15, read as a binary number with top and left being the most significant bits.

The programs for A263122, there is no canonical definition to state claims against.
-/

/-! ## A263122.P7013978053761112344

`A263124(A141214(n+1))`
-/

namespace A263122.P7013978053761112344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263124 (A141214 (n + 1)).toNat

end

end A263122.P7013978053761112344

/-! ## A263122.P12254544166193166028

`A263124(A027379(n+2))`
-/

namespace A263122.P12254544166193166028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263124 (A027379 (n + 2)).toNat

end

end A263122.P12254544166193166028

/-! ## A263122.P15153624513007398961

`A263124(A055998(n+2))`
-/

namespace A263122.P15153624513007398961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263124 (A055998 (n + 2)).toNat

end

end A263122.P15153624513007398961

/-!
# A263123: Number of (n+3)X(5+3) 0..1 arrays with each row divisible by 15 and column not divisible by 15, read as a binary number with top and left being the most significant bits.

The programs for A263123, there is no canonical definition to state claims against.
-/

/-! ## A263123.P3379029136621739228

`A263124(∑[n+5]+6)`
-/

namespace A263123.P3379029136621739228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263124 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A263123.P3379029136621739228

/-! ## A263123.P1937821891666364103

`or(n, A263124(A046691(n+3)))`
-/

namespace A263123.P1937821891666364103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A263124 (A046691 (n + 3)).toNat)

end

end A263123.P1937821891666364103

/-!
# A263125: Number of (1+3)X(n+3) 0..1 arrays with each row divisible by 15 and column not divisible by 15, read as a binary number with top and left being the most significant bits.

The programs for A263125, there is no canonical definition to state claims against.
-/

/-! ## A263125.P2093517523815364944

`A263124(∑[n]+1)`
-/

namespace A263125.P2093517523815364944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263124 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A263125.P2093517523815364944

/-! ## A263125.P475316989789507875

`lcm(2, A263124(A000124(n)))`
-/

namespace A263125.P475316989789507875
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A263124 (A000124 n).toNat)

end

end A263125.P475316989789507875

/-! ## A263125.P1372923087181075520

`record[A263124(∑[A057979(n)])]`
-/

namespace A263125.P1372923087181075520
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263124 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263125.P1372923087181075520

/-! ## A263125.P14556479478812052641

`record[A263124(A112367(n)+1)]`
-/

namespace A263125.P14556479478812052641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263124 (A112367 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263125.P14556479478812052641

/-! ## A263125.P4992482959095020195

`record[A263124(A134519(n+1))]`
-/

namespace A263125.P4992482959095020195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263124 (A134519 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263125.P4992482959095020195

/-!
# A263126: Number of (2+3)X(n+3) 0..1 arrays with each row divisible by 15 and column not divisible by 15, read as a binary number with top and left being the most significant bits.

The programs for A263126, there is no canonical definition to state claims against.
-/

/-! ## A263126.P10128711575160650663

`A263124(∑[n+1]+2)`
-/

namespace A263126.P10128711575160650663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263124 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A263126.P10128711575160650663

/-! ## A263126.P17586864108619152262

`record[A263124(A158823(n+1)+2)]`
-/

namespace A263126.P17586864108619152262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263124 (A158823 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263126.P17586864108619152262

/-!
# A263127: Number of (3+3)X(n+3) 0..1 arrays with each row divisible by 15 and column not divisible by 15, read as a binary number with top and left being the most significant bits.

The programs for A263127, there is no canonical definition to state claims against.
-/

/-! ## A263127.P15884612969215426087

`A263124(∑[n+2]+4)`
-/

namespace A263127.P15884612969215426087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263124 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A263127.P15884612969215426087

/-! ## A263127.P1813543517376517944

`and(-1, A263124(A167614(n+1)))`
-/

namespace A263127.P1813543517376517944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A263124 (A167614 (n + 1)).toNat)

end

end A263127.P1813543517376517944

/-! ## A263127.P6644428452733009480

`A263124(A167614(n+1))+A025444(n)`
-/

namespace A263127.P6644428452733009480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263124 (A167614 (n + 1)).toNat + A025444 n

end

end A263127.P6644428452733009480

/-! ## A263127.P12458970766097302663

`A263124(A167614(n+1))+A185284(n)`
-/

namespace A263127.P12458970766097302663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263124 (A167614 (n + 1)).toNat + A185284 n

end

end A263127.P12458970766097302663

/-! ## A263127.P5769450168343081131

`A263124(A167614(n+1))+A235044(n)`
-/

namespace A263127.P5769450168343081131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263124 (A167614 (n + 1)).toNat + A235044 n

end

end A263127.P5769450168343081131

/-!
# A263128: Number of (4+3) X (n+3) 0..1 arrays with each row divisible by 15 and column not divisible by 15, read as a binary number with top and left being the most significant bits.

The programs for A263128, there is no canonical definition to state claims against.
-/

/-! ## A263128.P9593020916935564305

`A263124(∑[n+3]+7)`
-/

namespace A263128.P9593020916935564305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263124 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A263128.P9593020916935564305

/-! ## A263128.P3236900468838234955

`or(A000007(n), A263124(A167499(n+2)-1))`
-/

namespace A263128.P3236900468838234955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A263124 (A167499 (n + 2) - 1).toNat)

end

end A263128.P3236900468838234955

/-!
# A263130: Least number such that the product of its digits in factorial base is n.

The programs for A263130, there is no canonical definition to state claims against.
-/

/-! ## A263130.P15121725342127814138

`A255651(A256423(n+1)%A255630(n))`
-/

namespace A263130.P15121725342127814138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255651 (Int.tmod (A256423 (n + 1)) (A255630 n)).toNat

end

end A263130.P15121725342127814138

/-!
# A263131: Ordinal transform of the multiplicative persistence A031346.

The programs for A263131, there is no canonical definition to state claims against.
-/

/-! ## A263131.P4427783717906203192

`A002377(A349315(n)+A185255(n))`
-/

namespace A263131.P4427783717906203192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (A349315 n + A185255 n).toNat

end

end A263131.P4427783717906203192

/-! ## A263131.P1923915843956484936

`A002377(or(A185255(n), A349315(n)))`
-/

namespace A263131.P1923915843956484936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (Int.lor (A185255 n) (A349315 n)).toNat

end

end A263131.P1923915843956484936

/-! ## A263131.P10764172603916896756

`A002377(xor(A185255(n), A349315(n)))`
-/

namespace A263131.P10764172603916896756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (Int.xor (A185255 n) (A349315 n)).toNat

end

end A263131.P10764172603916896756

/-!
# A263132: Positive values of m such that binomial(4*m - 1, m) is odd.

The programs for A263132, the canonical program `A263132.P11366629162255137699` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263132 has offset 1).

The definition of A263132 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A263132.P11366629162255137699

`A263133(n+1)+1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A263132

/-- `A263133(n+1)+1` -/
def P11366629162255137699.Spec : Prop :=
  ∀ n, P11366629162255137699.a n = A263132 (n + 1)

theorem P11366629162255137699.correct : P11366629162255137699.Spec := by
  intro n
  simp only [A263132, Nat.add_sub_cancel]

end A263132

/-! ## A263132.P6003124497628574739

`(2^A000267(n)+2^A384688(n))/3`
-/

namespace A263132.P6003124497628574739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ (A000267 n : ℤ) + (2 : ℚ) ^ (A384688 n : ℤ)) / 3

end

end A263132.P6003124497628574739

namespace A263132

/-- `(2^A000267(n)+2^A384688(n))/3` -/
def P6003124497628574739.Spec : Prop :=
  ∀ n, P6003124497628574739.a n = (A263132 (n + 1) : ℚ)

end A263132

/-! ## A263132.P15193290802972931976

`record[and(n+1, -3*(n+1))]`
-/

namespace A263132.P15193290802972931976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (-(3 * (n + 1) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263132.P15193290802972931976

namespace A263132

/-- `record[and(n+1, -3*(n+1))]` -/
def P15193290802972931976.Spec : Prop :=
  ∀ n, P15193290802972931976.a n = A263132 (n + 1)

end A263132

/-! ## A263132.P8531952727358400503

`record[n+1-and(n, 3*(n+1))]`
-/

namespace A263132.P8531952727358400503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Nat.land n (3 * (n + 1)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263132.P8531952727358400503

namespace A263132

/-- `record[n+1-and(n, 3*(n+1))]` -/
def P8531952727358400503.Spec : Prop :=
  ∀ n, P8531952727358400503.a n = A263132 (n + 1)

end A263132

/-! ## A263132.P17586932336855977272

`record[-or(3*(n+1), -(n+1))]`
-/

namespace A263132.P17586932336855977272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor (3 * (n + 1) : ℤ) (-(n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263132.P17586932336855977272

namespace A263132

/-- `record[-or(3*(n+1), -(n+1))]` -/
def P17586932336855977272.Spec : Prop :=
  ∀ n, P17586932336855977272.a n = A263132 (n + 1)

end A263132

/-! ## A263132.P3034075938628594063

`eq[0, and(3*n+2, n+1)]+1`
-/

namespace A263132.P3034075938628594063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (3 * n + 2) (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A263132.P3034075938628594063

namespace A263132

/-- `eq[0, and(3*n+2, n+1)]+1` -/
def P3034075938628594063.Spec : Prop :=
  ∀ n, (P3034075938628594063.a n : ℤ) = A263132 (n + 1)

end A263132

/-! ## A263132.P5783231260856271937

`eq[2, A036555(n)]`
-/

namespace A263132.P5783231260856271937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036555 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A263132.P5783231260856271937

namespace A263132

/-- `eq[2, A036555(n)]` -/
def P5783231260856271937.Spec : Prop :=
  ∀ n, (P5783231260856271937.a n : ℤ) = A263132 (n + 1)

end A263132

/-! ## A263132.P474069112322119539

`eq[4, A134660(n)]`
-/

namespace A263132.P474069112322119539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134660 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A263132.P474069112322119539

namespace A263132

/-- `eq[4, A134660(n)]` -/
def P474069112322119539.Spec : Prop :=
  ∀ n, (P474069112322119539.a n : ℤ) = A263132 (n + 1)

end A263132

/-! ## A263132.P3571617616477414299

`record[A064707(n)+1]`
-/

namespace A263132.P3571617616477414299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064707 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263132.P3571617616477414299

namespace A263132

/-- `record[A064707(n)+1]` -/
def P3571617616477414299.Spec : Prop :=
  ∀ n, P3571617616477414299.a n = A263132 (n + 1)

end A263132

/-! ## A263132.P16767984049042978084

`record[A140503(n+1)]`
-/

namespace A263132.P16767984049042978084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263132.P16767984049042978084

namespace A263132

/-- `record[A140503(n+1)]` -/
def P16767984049042978084.Spec : Prop :=
  ∀ n, P16767984049042978084.a n = A263132 (n + 1)

end A263132

/-!
# A263133: Numbers m such that binomial(4*m + 3, m) is odd.

The programs for A263133, the canonical program `A263133.P4183536222213236562` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263133 has offset 1).

The definition of A263133 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A263133.P10355225193710475811

`A263132(n+1)-1`
-/

namespace A263133.P10355225193710475811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263132 (n + 1) - 1

end

end A263133.P10355225193710475811

namespace A263133

/-- `A263132(n+1)-1` -/
def P10355225193710475811.Spec : Prop :=
  ∀ n, P10355225193710475811.a n = A263133 (n + 1)

end A263133

/-! ## A263133.P4183536222213236562

`(2^A000267(n)+2^A384688(n))/3-1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A263133

/-- `(2^A000267(n)+2^A384688(n))/3-1` -/
def P4183536222213236562.Spec : Prop :=
  ∀ n, P4183536222213236562.a n = (A263133 (n + 1) : ℚ)

end A263133

/-! ## A263133.P8963486004943846397

`eq[0, and(n, 3*(n+1))]`
-/

namespace A263133.P8963486004943846397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A263133.P8963486004943846397

namespace A263133

/-- `eq[0, and(n, 3*(n+1))]` -/
def P8963486004943846397.Spec : Prop :=
  ∀ n, (P8963486004943846397.a n : ℤ) = A263133 (n + 1)

end A263133

/-! ## A263133.P12106805770355344501

`lt[and(n, 3*(n+1)), 1]`
-/

namespace A263133.P12106805770355344501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (3 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A263133.P12106805770355344501

namespace A263133

/-- `lt[and(n, 3*(n+1)), 1]` -/
def P12106805770355344501.Spec : Prop :=
  ∀ n, (P12106805770355344501.a n : ℤ) = A263133 (n + 1)

end A263133

/-! ## A263133.P6127927340776107375

`record[and(n, 2-3*(n+2))]`
-/

namespace A263133.P6127927340776107375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (2 - (3 * (n + 2) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263133.P6127927340776107375

namespace A263133

/-- `record[and(n, 2-3*(n+2))]` -/
def P6127927340776107375.Spec : Prop :=
  ∀ n, P6127927340776107375.a n = A263133 (n + 1)

end A263133

/-! ## A263133.P4943593891802977242

`record[or(floor(n/6), ceil(n/2))]`
-/

namespace A263133.P4943593891802977242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊(n : ℚ) / 6⌋ ⌈(n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263133.P4943593891802977242

namespace A263133

/-- `record[or(floor(n/6), ceil(n/2))]` -/
def P4943593891802977242.Spec : Prop :=
  ∀ n, P4943593891802977242.a n = A263133 (n + 1)

end A263133

/-! ## A263133.P7792816287986437759

`record[xor(floor(n/6), ceil(n/2))]`
-/

namespace A263133.P7792816287986437759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ⌊(n : ℚ) / 6⌋ ⌈(n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263133.P7792816287986437759

namespace A263133

/-- `record[xor(floor(n/6), ceil(n/2))]` -/
def P7792816287986437759.Spec : Prop :=
  ∀ n, P7792816287986437759.a n = A263133 (n + 1)

end A263133

/-! ## A263133.P7622776573342017695

`record[A064707(n)]`
-/

namespace A263133.P7622776573342017695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064707 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263133.P7622776573342017695

namespace A263133

/-- `record[A064707(n)]` -/
def P7622776573342017695.Spec : Prop :=
  ∀ n, P7622776573342017695.a n = A263133 (n + 1)

end A263133

/-! ## A263133.P6883962925252786899

`eq[2, A036555(n+1)]`
-/

namespace A263133.P6883962925252786899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036555 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A263133.P6883962925252786899

namespace A263133

/-- `eq[2, A036555(n+1)]` -/
def P6883962925252786899.Spec : Prop :=
  ∀ n, (P6883962925252786899.a n : ℤ) = A263133 (n + 1)

end A263133

/-! ## A263133.P6395220545504922050

`eq[2, A036555(n)]-1`
-/

namespace A263133.P6395220545504922050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036555 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A263133.P6395220545504922050

namespace A263133

/-- `eq[2, A036555(n)]-1` -/
def P6395220545504922050.Spec : Prop :=
  ∀ n, P6395220545504922050.a n = A263133 (n + 1)

end A263133

/-!
# A263134: a(n) = Sum_{k=0..n} binomial(3*k+1,k).

The programs for A263134, the canonical program `A263134.P7692546386271083285` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263134 has offset 0).

The definition of A263134 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A263134.P7692546386271083285

`∑[A045721(n)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A263134

/-- `∑[A045721(n)]` -/
def P7692546386271083285.Spec : Prop :=
  ∀ n, P7692546386271083285.a n = A263134 n

theorem P7692546386271083285.correct : P7692546386271083285.Spec := by
  intro n
  simp only [A263134]

end A263134

/-! ## A263134.P3095954348949353313

`∑[A144484(∑[n])]`
-/

namespace A263134.P3095954348949353313
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144484 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263134.P3095954348949353313

namespace A263134

/-- `∑[A144484(∑[n])]` -/
def P3095954348949353313.Spec : Prop :=
  ∀ n, P3095954348949353313.a n = A263134 n

end A263134

/-! ## A263134.P5957655786686005748

`∑[A099578(2*n)]`
-/

namespace A263134.P5957655786686005748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099578 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263134.P5957655786686005748

namespace A263134

/-- `∑[A099578(2*n)]` -/
def P5957655786686005748.Spec : Prop :=
  ∀ n, P5957655786686005748.a n = A263134 n

end A263134

/-! ## A263134.P16622610058869617722

`∑[A065942(2*n+1)]`
-/

namespace A263134.P16622610058869617722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065942 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263134.P16622610058869617722

namespace A263134

/-- `∑[A065942(2*n+1)]` -/
def P16622610058869617722.Spec : Prop :=
  ∀ n, P16622610058869617722.a n = A263134 n

end A263134

/-! ## A263134.P9993803978990471212

`∑[A051033(3*n+1)]`
-/

namespace A263134.P9993803978990471212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051033 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263134.P9993803978990471212

namespace A263134

/-- `∑[A051033(3*n+1)]` -/
def P9993803978990471212.Spec : Prop :=
  ∀ n, P9993803978990471212.a n = A263134 n

end A263134

/-! ## A263134.P16349818318958503545

`∑[(n+1)*A006013(n)]`
-/

namespace A263134.P16349818318958503545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A006013 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263134.P16349818318958503545

namespace A263134

/-- `∑[(n+1)*A006013(n)]` -/
def P16349818318958503545.Spec : Prop :=
  ∀ n, P16349818318958503545.a n = A263134 n

end A263134

/-! ## A263134.P6996964230642931137

`∑[(3*n+1)*A001764(n)]`
-/

namespace A263134.P6996964230642931137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 1 : ℤ) * A001764 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263134.P6996964230642931137

namespace A263134

/-- `∑[(3*n+1)*A001764(n)]` -/
def P6996964230642931137.Spec : Prop :=
  ∀ n, P6996964230642931137.a n = A263134 n

end A263134

/-! ## A263134.P10412983544456989162

`A099578(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A263134.P10412983544456989162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A099578 (n + n) + a (n - 1)

end

end A263134.P10412983544456989162

namespace A263134

/-- `A099578(n+n)+a(n-1)` -/
def P10412983544456989162.Spec : Prop :=
  ∀ n, P10412983544456989162.a n = A263134 n

end A263134

/-! ## A263134.P6361575886764971490

`∑[(n+1)*A047749(2*n+1)]`
-/

namespace A263134.P6361575886764971490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A047749 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263134.P6361575886764971490

namespace A263134

/-- `∑[(n+1)*A047749(2*n+1)]` -/
def P6361575886764971490.Spec : Prop :=
  ∀ n, P6361575886764971490.a n = A263134 n

end A263134

/-! ## A263134.P11040367041803650927

`∑[(n+1)*A134565(2*n+1)]`
-/

namespace A263134.P11040367041803650927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A134565 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263134.P11040367041803650927

namespace A263134

/-- `∑[(n+1)*A134565(2*n+1)]` -/
def P11040367041803650927.Spec : Prop :=
  ∀ n, P11040367041803650927.a n = A263134 n

end A263134

/-! ## A263134.P12573616197393576374

`∑[A001764(n)*A016777(n)]`
-/

namespace A263134.P12573616197393576374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001764 n * A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263134.P12573616197393576374

namespace A263134

/-- `∑[A001764(n)*A016777(n)]` -/
def P12573616197393576374.Spec : Prop :=
  ∀ n, P12573616197393576374.a n = A263134 n

end A263134

/-! ## A263134.P2607731534473271292

`∑[A005809(n)+n*A001764(n)]`
-/

namespace A263134.P2607731534473271292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005809 n + (n : ℤ) * A001764 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263134.P2607731534473271292

namespace A263134

/-- `∑[A005809(n)+n*A001764(n)]` -/
def P2607731534473271292.Spec : Prop :=
  ∀ n, P2607731534473271292.a n = A263134 n

end A263134

/-! ## A263134.P17383705391844977941

`∑[A045738(n+2)-A045737(n+2)]`
-/

namespace A263134.P17383705391844977941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045738 (n + 2) - A045737 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263134.P17383705391844977941

namespace A263134

/-- `∑[A045738(n+2)-A045737(n+2)]` -/
def P17383705391844977941.Spec : Prop :=
  ∀ n, P17383705391844977941.a n = A263134 n

end A263134

/-! ## A263134.P17447980963500441258

`∑[A090816(n)/(2*n+1)]`
-/

namespace A263134.P17447980963500441258
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090816 n : ℚ) / (2 * n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263134.P17447980963500441258

namespace A263134

/-- `∑[A090816(n)/(2*n+1)]` -/
def P17447980963500441258.Spec : Prop :=
  ∀ n, P17447980963500441258.a n = (A263134 n : ℚ)

end A263134

/-! ## A263134.P101881972665710218

`∑[C(3*n+1, n)]`
-/

namespace A263134.P101881972665710218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (3 * n + 1) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263134.P101881972665710218

namespace A263134

/-- `∑[C(3*n+1, n)]` -/
def P101881972665710218.Spec : Prop :=
  ∀ n, (P101881972665710218.a n : ℤ) = A263134 n

end A263134

/-! ## A263134.P5310087752382800582

`a(n-1)+C(3*n+1, n)` with `a(0)=1`
-/

namespace A263134.P5310087752382800582
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.choose (3 * n + 1) n

end

end A263134.P5310087752382800582

namespace A263134

/-- `a(n-1)+C(3*n+1, n)` -/
def P5310087752382800582.Spec : Prop :=
  ∀ n, (P5310087752382800582.a n : ℤ) = A263134 n

end A263134

/-! ## A263134.P4241607618141395806

`∑[A159841(∑[n])]`
-/

namespace A263134.P4241607618141395806
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159841 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263134.P4241607618141395806

namespace A263134

/-- `∑[A159841(∑[n])]` -/
def P4241607618141395806.Spec : Prop :=
  ∀ n, P4241607618141395806.a n = A263134 n

end A263134

/-!
# A263135: The maximum number of penny-to-penny connections when n pennies are placed on the vertices of a hexagonal tiling.

The programs for A263135, the canonical program `A263135.P2870236740548985862` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263135 has offset 0).

The definition of A263135 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A263135.P2870236740548985862

`floor((3*n-sqrt(6*n))/2)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A263135

/-- `floor((3*n-sqrt(6*n))/2)` -/
def P2870236740548985862.Spec : Prop :=
  ∀ n, P2870236740548985862.a n = A263135 n

theorem P2870236740548985862.correct : P2870236740548985862.Spec := by
  intro n
  simp only [A263135]

end A263135

/-! ## A263135.P3459388903425013217

`n-(A067628(n)-n)/2`
-/

namespace A263135.P3459388903425013217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - (A067628 n - (n : ℤ) : ℚ) / 2

end

end A263135.P3459388903425013217

namespace A263135

/-- `n-(A067628(n)-n)/2` -/
def P3459388903425013217.Spec : Prop :=
  ∀ n, P3459388903425013217.a n = (A263135 n : ℚ)

end A263135

/-! ## A263135.P9700945911813251541

`(A008585(n)-A067628(n))/2`
-/

namespace A263135.P9700945911813251541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008585 n - A067628 n : ℚ) / 2

end

end A263135.P9700945911813251541

namespace A263135

/-- `(A008585(n)-A067628(n))/2` -/
def P9700945911813251541.Spec : Prop :=
  ∀ n, P9700945911813251541.a n = (A263135 n : ℚ)

end A263135

/-! ## A263135.P4662973743167338882

`A026741(A008585(n)-A067628(n))`
-/

namespace A263135.P4662973743167338882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A008585 n - A067628 n).toNat

end

end A263135.P4662973743167338882

namespace A263135

/-- `A026741(A008585(n)-A067628(n))` -/
def P4662973743167338882.Spec : Prop :=
  ∀ n, P4662973743167338882.a n = A263135 n

end A263135

/-! ## A263135.P3534504721929550721

`A142150(A008486(n)-A067628(n))`
-/

namespace A263135.P3534504721929550721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A008486 n - A067628 n).toNat

end

end A263135.P3534504721929550721

namespace A263135

/-- `A142150(A008486(n)-A067628(n))` -/
def P3534504721929550721.Spec : Prop :=
  ∀ n, P3534504721929550721.a n = A263135 n

end A263135

/-!
# A263136: Expansion of Product_{k>=1} 1/(1-x^(4*k-1))^k.

The programs for A263136, there is no canonical definition to state claims against.
-/

/-! ## A263136.P1570352644912194234

`A007895(A046766(n)^A001300(n))`
-/

namespace A263136.P1570352644912194234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (SequenceMachineLib.roundAway ((A046766 n : ℚ) ^ (A001300 n : ℤ))).toNat

end

end A263136.P1570352644912194234

/-! ## A263136.P17620263048178308127

`A007307(or(A046766(n), A106433(n)))`
-/

namespace A263136.P17620263048178308127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007307 (Int.lor (A046766 n) (A106433 n)).toNat

end

end A263136.P17620263048178308127

/-! ## A263136.P6353290715889370484

`A007307(A046766(n)+2*A106433(n))`
-/

namespace A263136.P6353290715889370484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007307 (A046766 n + 2 * A106433 n).toNat

end

end A263136.P6353290715889370484

/-! ## A263136.P12464941137737530086

`A007307(A046766(n)^A058281(n+1))`
-/

namespace A263136.P12464941137737530086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007307 (SequenceMachineLib.roundAway ((A046766 n : ℚ) ^ (A058281 (n + 1) : ℤ))).toNat

end

end A263136.P12464941137737530086

/-! ## A263136.P418655813635455963

`A341026(A194029(n+5)+A042963(3*n+5))`
-/

namespace A263136.P418655813635455963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341026 ((A194029 (n + 5) + A042963 (3 * n + 5)).toNat + 165)

end

end A263136.P418655813635455963

/-!
# A263137: Expansion of Product_{k>=1} 1/(1-x^(4*k-3))^k.

The programs for A263137, there is no canonical definition to state claims against.
-/

/-! ## A263137.P13361607665331851043

`A263144(A265187(n+1))%Δ[A057995(n)]`
-/

namespace A263137.P13361607665331851043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057995 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263144 (A265187 (n + 1)).toNat) (f1 (n + 1) - f1 n)

end

end A263137.P13361607665331851043

/-! ## A263137.P13917621981458992502

`A263144(A265187(n+1))+A000007(A301333(n))`
-/

namespace A263137.P13917621981458992502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263144 (A265187 (n + 1)).toNat + A000007 (A301333 n).toNat

end

end A263137.P13917621981458992502

/-! ## A263137.P1619087398899530592

`A263144(A265187(n+1))+A213358(A213895(n+1))`
-/

namespace A263137.P1619087398899530592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263144 (A265187 (n + 1)).toNat + A213358 (A213895 (n + 1)).toNat

end

end A263137.P1619087398899530592

/-! ## A263137.P164394808057510408

`A263144(A265187(n+1))+A000007(A263144(n)²)`
-/

namespace A263137.P164394808057510408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263144 (A265187 (n + 1)).toNat + A000007 (A263144 n ^ 2).toNat

end

end A263137.P164394808057510408

/-! ## A263137.P17822214748265056140

`A263144(A265187(n+1))+A029833(A125855(n+1))`
-/

namespace A263137.P17822214748265056140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263144 (A265187 (n + 1)).toNat + A029833 (A125855 (n + 1)).toNat

end

end A263137.P17822214748265056140

/-!
# A263138: Expansion of Product_{k>=1} (1+x^(4*k-1))^k.

The programs for A263138, there is no canonical definition to state claims against.
-/

/-! ## A263138.P4269344809762327170

`A263145(A047201(n+1)%A057829(n+1))`
-/

namespace A263138.P4269344809762327170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263145 (Int.tmod (A047201 (n + 1)) (A057829 (n + 1))).toNat

end

end A263138.P4269344809762327170

/-! ## A263138.P16428535727832834997

`A263145(A047201(n+1)%A057995(n))`
-/

namespace A263138.P16428535727832834997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263145 (Int.tmod (A047201 (n + 1)) (A057995 n)).toNat

end

end A263138.P16428535727832834997

/-! ## A263138.P6303964071938015183

`A263145(A140102(n)%A007670(n+1))`
-/

namespace A263138.P6303964071938015183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263145 (Int.tmod (A140102 n) (A007670 (n + 1))).toNat

end

end A263138.P6303964071938015183

/-! ## A263138.P2720232763997995543

`A263145(A140102(n))+A000007(A176791(n))`
-/

namespace A263138.P2720232763997995543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263145 (A140102 n).toNat + A000007 (A176791 n).toNat

end

end A263138.P2720232763997995543

/-! ## A263138.P6008604509539718971

`A263145(A140102(n))+A000007(A179838(n))`
-/

namespace A263138.P6008604509539718971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263145 (A140102 n).toNat + A000007 (A179838 n).toNat

end

end A263138.P6008604509539718971

/-!
# A263139: Expansion of Product_{k>=1} (1+x^(4*k-3))^k.

The programs for A263139, there is no canonical definition to state claims against.
-/

/-! ## A263139.P15738945396214821863

`A263148(A265187(n+1)%A293517(2*n+3))`
-/

namespace A263139.P15738945396214821863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263148 (Int.tmod (A265187 (n + 1)) (A293517 (2 * n + 3))).toNat

end

end A263139.P15738945396214821863

/-! ## A263139.P14835358663922131762

`A263148(A265187(n+1)%A007670(n+1))`
-/

namespace A263139.P14835358663922131762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263148 (Int.tmod (A265187 (n + 1)) (A007670 (n + 1))).toNat

end

end A263139.P14835358663922131762

/-! ## A263139.P8036490840813648548

`A263148(lt[A004526(n), A111541(2*(n+2))])`
-/

namespace A263139.P8036490840813648548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111541 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263148 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A263139.P8036490840813648548

/-! ## A263139.P11147103216312039181

`A263148(lt[A003785(2*n+3), A111609(3*n+5)])`
-/

namespace A263139.P11147103216312039181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003785 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111609 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263148 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A263139.P11147103216312039181

/-! ## A263139.P6445426894116164646

`A263148(A265187(n+1)%A053406(n))`
-/

namespace A263139.P6445426894116164646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263148 (Int.tmod (A265187 (n + 1)) (A053406 n)).toNat

end

end A263139.P6445426894116164646

/-!
# A263141: Expansion of Product_{k>=1} 1/(1-x^(5*k-1))^k.

The programs for A263141, there is no canonical definition to state claims against.
-/

/-! ## A263141.P4663461904961196933

`A182273(n+1)%(A178487(A318602(n+1)^3)+1)`
-/

namespace A263141.P4663461904961196933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182273 (n + 1)) (A178487 (A318602 (n + 1) ^ 3).toNat + 1)

end

end A263141.P4663461904961196933

/-! ## A263141.P17965341637135181895

`A000120(lcm(A265831(n), A329562(n)))`
-/

namespace A263141.P17965341637135181895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.lcm (A265831 n) (A329562 n))

end

end A263141.P17965341637135181895

/-! ## A263141.P6100772747148197488

`A000120(A265831(n))^A014963(n+1)²`
-/

namespace A263141.P6100772747148197488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000120 (A265831 n).toNat : ℚ) ^ (A014963 (n + 1) ^ 2 : ℤ)

end

end A263141.P6100772747148197488

/-! ## A263141.P13687840361411509776

`A000120(A265831(n)%A344160(3*n+5))`
-/

namespace A263141.P13687840361411509776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.tmod (A265831 n) (A344160 (3 * n + 5))).toNat

end

end A263141.P13687840361411509776

/-! ## A263141.P7526181148891702598

`A354582(A265831(n))`
-/

namespace A263141.P7526181148891702598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354582 (A265831 n).toNat

end

end A263141.P7526181148891702598

/-!
# A263142: Expansion of Product_{k>=1} 1/(1-x^(5*k-2))^k.

The programs for A263142, there is no canonical definition to state claims against.
-/

/-! ## A263142.P17391667433025693985

`A025879(A004273(n)^A254609(n))`
-/

namespace A263142.P17391667433025693985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025879 (SequenceMachineLib.roundAway ((A004273 n : ℚ) ^ (A254609 n : ℤ))).toNat

end

end A263142.P17391667433025693985

/-! ## A263142.P7047378617903083847

`A110658(n)%A110646(A315749(n))`
-/

namespace A263142.P7047378617903083847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110658 n) (A110646 (A315749 n).toNat)

end

end A263142.P7047378617903083847

/-! ## A263142.P9084697241959485008

`A025879(A254609(n)²²*A004273(n))`
-/

namespace A263142.P9084697241959485008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025879 ((A254609 n ^ 2) ^ 2 * A004273 n).toNat

end

end A263142.P9084697241959485008

/-! ## A263142.P7474544531035036962

`xor(A002188(n), A129308(A362608(2*n+3)))`
-/

namespace A263142.P7474544531035036962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002188 n) (A129308 (A362608 (2 * n + 3)).toNat)

end

end A263142.P7474544531035036962

/-! ## A263142.P1612760398054693787

`A025879(comp[2*(n+1)])%A166049(3*n+4)`
-/

namespace A263142.P1612760398054693787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025879 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) (A166049 (3 * n + 4))

end

end A263142.P1612760398054693787

/-!
# A263143: Expansion of Product_{k>=1} 1/(1-x^(5*k-3))^k.

The programs for A263143, there is no canonical definition to state claims against.
-/

/-! ## A263143.P12752678190876134264

`A069010(A265833(n)²)`
-/

namespace A263143.P12752678190876134264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A265833 n ^ 2).toNat

end

end A263143.P12752678190876134264

/-! ## A263143.P12159929490039213954

`A117479(A064428(n+1))`
-/

namespace A263143.P12159929490039213954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117479 (A064428 (n + 1)).toNat

end

end A263143.P12159929490039213954

/-! ## A263143.P14045244603167417

`A004523(A033759(2^n))`
-/

namespace A263143.P14045244603167417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A033759 (2 ^ n)).toNat

end

end A263143.P14045244603167417

/-! ## A263143.P11661542784213390444

`A002620(round((A033759(2^n)+1)/2))`
-/

namespace A263143.P11661542784213390444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (SequenceMachineLib.roundAway ((A033759 (2 ^ n) + 1 : ℚ) / 2)).toNat

end

end A263143.P11661542784213390444

/-! ## A263143.P2531213079410127317

`round(A020657(A033759(2^n)+1)/2)`
-/

namespace A263143.P2531213079410127317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A020657 (A033759 (2 ^ n) + 1).toNat : ℚ) / 2)

end

end A263143.P2531213079410127317

/-!
# A263145: Expansion of Product_{k>=1} (1+x^(5*k-1))^k.

The programs for A263145, there is no canonical definition to state claims against.
-/

/-! ## A263145.P14833076872088927652

`and(A043562(A294749(n)), A263141(n))`
-/

namespace A263145.P14833076872088927652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043562 (A294749 n).toNat) (A263141 n)

end

end A263145.P14833076872088927652

/-! ## A263145.P5459858553773612968

`and(A263141(n), A320451(A262877(n)))`
-/

namespace A263145.P5459858553773612968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A263141 n) (A320451 (A262877 n).toNat)

end

end A263145.P5459858553773612968

/-! ## A263145.P18179877378555664648

`A249822(A352525(n))*A281243(n)`
-/

namespace A263145.P18179877378555664648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249822 (A352525 n).toNat * A281243 n

end

end A263145.P18179877378555664648

/-! ## A263145.P18355474707097824919

`A055640(A219326(n+1)*A281243(n))`
-/

namespace A263145.P18355474707097824919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A219326 (n + 1) * A281243 n).toNat

end

end A263145.P18355474707097824919

/-! ## A263145.P14733825624678461688

`A055640(A000045(n+2)*A281243(n))`
-/

namespace A263145.P14733825624678461688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A000045 (n + 2) * A281243 n).toNat

end

end A263145.P14733825624678461688

/-!
# A263146: Expansion of Product_{k>=1} (1+x^(5*k-2))^k.

The programs for A263146, there is no canonical definition to state claims against.
-/

/-! ## A263146.P17853231040033947335

`A055642(A000013(n))*A373830(n)`
-/

namespace A263146.P17853231040033947335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A000013 n).toNat * A373830 n

end

end A263146.P17853231040033947335

/-! ## A263146.P4607321750612237808

`A103921(A281271(n)*A317912(n))`
-/

namespace A263146.P4607321750612237808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103921 (A281271 n * A317912 n).toNat

end

end A263146.P4607321750612237808

/-! ## A263146.P733358271914458951

`A043562(A006748(n+1))*A281271(n)`
-/

namespace A263146.P733358271914458951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A006748 (n + 1)).toNat * A281271 n

end

end A263146.P733358271914458951

/-! ## A263146.P11523660712630351840

`A060500(A007748(n+1)*A281271(n))`
-/

namespace A263146.P11523660712630351840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060500 (A007748 (n + 1) * A281271 n).toNat

end

end A263146.P11523660712630351840

/-! ## A263146.P13639484533134008659

`A060500(lcm(A007748(n+1), A281271(n)))`
-/

namespace A263146.P13639484533134008659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060500 (Int.lcm (A007748 (n + 1)) (A281271 n))

end

end A263146.P13639484533134008659

/-!
# A263147: Expansion of Product_{k>=1} (1+x^(5*k-3))^k.

The programs for A263147, there is no canonical definition to state claims against.
-/

/-! ## A263147.P9024649220193590588

`and(record[A300302(n+1)], A275882(n+1))`
-/

namespace A263147.P9024649220193590588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300302 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A275882 (n + 1))

end

end A263147.P9024649220193590588

/-! ## A263147.P2812785995281137397

`A036497(n)*A327208(A022115(n))`
-/

namespace A263147.P2812785995281137397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036497 n * A327208 (A022115 n).toNat

end

end A263147.P2812785995281137397

/-! ## A263147.P9887690918159311024

`A244479(n)*A327208(A022115(n))`
-/

namespace A263147.P9887690918159311024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244479 n * A327208 (A022115 n).toNat

end

end A263147.P9887690918159311024

/-! ## A263147.P12624568719838607824

`A127648(A334715(n)%A079738(n))`
-/

namespace A263147.P12624568719838607824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127648 (Int.tmod (A334715 n) (A079738 n)).toNat

end

end A263147.P12624568719838607824

/-! ## A263147.P9404554179626077309

`A069013(n+1)*A327208(A022115(n))`
-/

namespace A263147.P9404554179626077309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069013 (n + 1) * A327208 (A022115 n).toNat

end

end A263147.P9404554179626077309

/-!
# A263149: Expansion of Product_{k>=1} (1 + x^(2*k+1))^k.

The programs for A263149, there is no canonical definition to state claims against.
-/

/-! ## A263149.P12242056561838730539

`A000120(A087288(n))*A340622(n)`
-/

namespace A263149.P12242056561838730539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A087288 n).toNat * A340622 n

end

end A263149.P12242056561838730539

/-! ## A263149.P16347883754285982194

`and(floor((n-1)/2), A099719(n))`
-/

namespace A263149.P16347883754285982194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ⌊((n : ℤ) - 1 : ℚ) / 2⌋ (A099719 n)

end

end A263149.P16347883754285982194

/-! ## A263149.P3305586242685928432

`A322794(A141056(n))*A340622(n)`
-/

namespace A263149.P3305586242685928432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322794 (A141056 n).toNat * A340622 n

end

end A263149.P3305586242685928432

/-! ## A263149.P12813261987005206244

`and(A059905(A018006(n)), A240572(n))`
-/

namespace A263149.P12813261987005206244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A059905 (A018006 n).toNat) (A240572 n)

end

end A263149.P12813261987005206244

/-! ## A263149.P2873041843880969669

`A004601(A028491(n+1))*A328171(n)`
-/

namespace A263149.P2873041843880969669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004601 (A028491 (n + 1)).toNat * A328171 n

end

end A263149.P2873041843880969669

/-!
# A263150: Expansion of Product_{k>=1} 1/(1 - x^(2*k+1))^k.

The programs for A263150, there is no canonical definition to state claims against.
-/

/-! ## A263150.P6648278886288288469

`A266138(n)-A157228(A075223(n+1))`
-/

namespace A263150.P6648278886288288469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266138 n - A157228 (A075223 (n + 1)).toNat

end

end A263150.P6648278886288288469

/-! ## A263150.P5688286112018228408

`∏{e}[2^comp[2*(n+2)], A263136(#)]`
-/

namespace A263150.P5688286112018228408
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A263136 (Nat.factorization (f1 n) p)

end

end A263150.P5688286112018228408

/-! ## A263150.P216477467483470122

`A079365(A000011(n))+A045931(n)`
-/

namespace A263150.P216477467483470122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079365 (A000011 n).toNat + A045931 n

end

end A263150.P216477467483470122

/-! ## A263150.P15730601799041234554

`A086078(A001006(n))+A045931(n)`
-/

namespace A263150.P15730601799041234554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086078 (A001006 n).toNat + A045931 n

end

end A263150.P15730601799041234554

/-! ## A263150.P8258990838874641824

`A049320(A261647(n))+A045931(n)`
-/

namespace A263150.P8258990838874641824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049320 (A261647 n).toNat + A045931 n

end

end A263150.P8258990838874641824

/-!
# A263153: Number of (n+3)X(1+3) 0..1 arrays with each row and column not divisible by 9, read as a binary number with top and left being the most significant bits.

The programs for A263153, there is no canonical definition to state claims against.
-/

/-! ## A263153.P3188804939601698814

`A263156(∑[n]+1)`
-/

namespace A263153.P3188804939601698814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263156 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A263153.P3188804939601698814

/-! ## A263153.P12449989909456543417

`record[A010054(n)*A263156(n+1)]`
-/

namespace A263153.P12449989909456543417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A263156 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263153.P12449989909456543417

/-! ## A263153.P18308870284168049029

`record[root(A263156(n+1), A088925(n))]`
-/

namespace A263153.P18308870284168049029
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A263156 (n + 1) : ℝ) ^ (1 / (A088925 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263153.P18308870284168049029

/-! ## A263153.P6638731372008568273

`record[root(A263156(n+1), A338435(n))]`
-/

namespace A263153.P6638731372008568273
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A263156 (n + 1) : ℝ) ^ (1 / (A338435 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263153.P6638731372008568273

/-! ## A263153.P3486337419557977107

`record[gcd(A263156(n+1), A285192(n))]`
-/

namespace A263153.P3486337419557977107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A263156 (n + 1)) (A285192 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263153.P3486337419557977107

/-!
# A263154: Number of (n+3)X(2+3) 0..1 arrays with each row and column not divisible by 9, read as a binary number with top and left being the most significant bits.

The programs for A263154, there is no canonical definition to state claims against.
-/

/-! ## A263154.P14373499211507901644

`A263156(∑[n+1]+2)`
-/

namespace A263154.P14373499211507901644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263156 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A263154.P14373499211507901644

/-! ## A263154.P16588246328233722496

`record[A010054(n)*A263156(n+2)]`
-/

namespace A263154.P16588246328233722496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A263156 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263154.P16588246328233722496

/-! ## A263154.P7633293121621817254

`record[gcd(A263145(2*n+3), A263156(3*n+2))]`
-/

namespace A263154.P7633293121621817254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A263145 (2 * n + 3)) (A263156 (3 * n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263154.P7633293121621817254

/-!
# A263155: Number of (n+3)X(3+3) 0..1 arrays with each row and column not divisible by 9, read as a binary number with top and left being the most significant bits.

The programs for A263155, there is no canonical definition to state claims against.
-/

/-! ## A263155.P40991174287871945

`A263156(∑[n+2]+4)`
-/

namespace A263155.P40991174287871945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263156 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A263155.P40991174287871945

/-!
# A263160: Number of lattice paths starting at {n}^n and ending when n or any component equals 0 and using steps that decrement one or more components by one.

The programs for A263160, there is no canonical definition to state claims against.
-/

/-! ## A263160.P5510162203496594947

`A263159(∑[4*n])`
-/

namespace A263160.P5510162203496594947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263159 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A263160.P5510162203496594947

/-! ## A263160.P15616634258483571128

`A001222(A045319(n+1))*A263159(A046092(n))`
-/

namespace A263160.P15616634258483571128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A045319 (n + 1)).toNat * A263159 (A046092 n).toNat

end

end A263160.P15616634258483571128

/-!
# A263161: Positive values of n such that A000071(n+2) is divisible by A000217(n).

The programs for A263161, there is no canonical definition to state claims against.
-/

/-! ## A263161.P16400813199293294519

`∩[A263225(n+1), A005943(n)]`
-/

namespace A263161.P16400813199293294519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263225 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005943 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A263161.P16400813199293294519

/-! ## A263161.P8748591298645689102

`∩[A263225(n+1), A022144(n)]`
-/

namespace A263161.P8748591298645689102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263225 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A263161.P8748591298645689102

/-! ## A263161.P1655261462987486566

`∩[A263225(n+1), A234275(n)]`
-/

namespace A263161.P1655261462987486566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263225 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234275 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A263161.P1655261462987486566

/-! ## A263161.P13781357476276827385

`∩[A219612(n+1), A263225(n+1)]`
-/

namespace A263161.P13781357476276827385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A263161.P13781357476276827385

/-! ## A263161.P1596406343312878978

`∩[A151973(n+1), A263225(n+1)]`
-/

namespace A263161.P1596406343312878978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151973 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A263161.P1596406343312878978

/-!
# A263162: Number of lattice paths starting at {n}^4 and ending when any component equals 0, using steps that decrement one or more components by one.

The programs for A263162, there is no canonical definition to state claims against.
-/

/-! ## A263162.P7753312889371395092

`A263159(A052905(n+2))`
-/

namespace A263162.P7753312889371395092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263159 (A052905 (n + 2)).toNat

end

end A263162.P7753312889371395092

/-! ## A263162.P7481266085993057633

`A263159(eq[4, A025581(n)])`
-/

namespace A263162.P7481266085993057633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263159 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263162.P7481266085993057633

/-! ## A263162.P10397549015420801154

`A263159(eq[16, A130321(n)])`
-/

namespace A263162.P10397549015420801154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263159 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263162.P10397549015420801154

/-! ## A263162.P14058338908857076175

`A263159(A055999(n+2)+1)`
-/

namespace A263162.P14058338908857076175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263159 (A055999 (n + 2) + 1).toNat

end

end A263162.P14058338908857076175

/-! ## A263162.P13353285464944938086

`A263159(A046691(n+3)-1)`
-/

namespace A263162.P13353285464944938086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263159 (A046691 (n + 3) - 1).toNat

end

end A263162.P13353285464944938086

/-!
# A263163: Number of lattice paths starting at {n}^5 and ending when any component equals 0, using steps that decrement one or more components by one.

The programs for A263163, there is no canonical definition to state claims against.
-/

/-! ## A263163.P4238677478159287097

`A263159(eq[5, A025581(n)])`
-/

namespace A263163.P4238677478159287097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263159 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263163.P4238677478159287097

/-! ## A263163.P4505195090438777472

`A263159(Δ[A023551(n+1)])`
-/

namespace A263163.P4505195090438777472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263159 (f1 (n + 1) - f1 n).toNat

end

end A263163.P4505195090438777472

/-! ## A263163.P10598489742311532281

`A263159(eq[6, A004736(n+1)])`
-/

namespace A263163.P10598489742311532281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263159 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263163.P10598489742311532281

/-!
# A263164: Number of lattice paths starting at {n}^6 and ending when any component equals 0, using steps that decrement one or more components by one.

The programs for A263164, there is no canonical definition to state claims against.
-/

/-! ## A263164.P12663196709706235805

`A263159(eq[6, A025581(n)])`
-/

namespace A263164.P12663196709706235805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263159 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263164.P12663196709706235805

/-! ## A263164.P17270107372672949247

`A263159(eq[7, A004736(n+1)])`
-/

namespace A263164.P17270107372672949247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263159 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263164.P17270107372672949247

/-!
# A263165: 

The programs for A263165, there is no canonical definition to state claims against.
-/

/-! ## A263165.P5491047848847531921

`A263159(Δ[A101853(n+3)]+1)`
-/

namespace A263165.P5491047848847531921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101853 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263159 (f1 (n + 1) - f1 n + 1).toNat

end

end A263165.P5491047848847531921

/-!
# A263170: a(n) = (Sum_{k=1..n} prime(k))^3 - (Sum_{k=1..n} prime(k)^3).

The programs for A263170, the canonical program `A263170.P6412543418219483663` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263170 has offset 1).

The definition of A263170 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, A098999, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A263170.P6412543418219483663

`A007504(n+1)^3-A098999(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A263170

/-- `A007504(n+1)^3-A098999(n+1)` -/
def P6412543418219483663.Spec : Prop :=
  ∀ n, P6412543418219483663.a n = A263170 (n + 1)

theorem P6412543418219483663.correct : P6412543418219483663.Spec := by
  intro n
  simp only [A263170, Nat.add_sub_cancel]

end A263170

/-! ## A263170.P11636789852940035361

`∑[∑[A001748(n+1)]*A339194(n+1)]`
-/

namespace A263170.P11636789852940035361
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A339194 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263170.P11636789852940035361

namespace A263170

/-- `∑[∑[A001748(n+1)]*A339194(n+1)]` -/
def P11636789852940035361.Spec : Prop :=
  ∀ n, P11636789852940035361.a n = A263170 (n + 1)

end A263170

/-! ## A263170.P14666049739135252444

`∑[A000040(n+1)]^3-A098999(n+1)`
-/

namespace A263170.P14666049739135252444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 3 - A098999 (n + 1)

end

end A263170.P14666049739135252444

namespace A263170

/-- `∑[A000040(n+1)]^3-A098999(n+1)` -/
def P14666049739135252444.Spec : Prop :=
  ∀ n, P14666049739135252444.a n = A263170 (n + 1)

end A263170

/-! ## A263170.P4565497800766161594

`(A237589(n+1)+1)^3-A098999(n+1)`
-/

namespace A263170.P4565497800766161594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A237589 (n + 1) + 1) ^ 3 - A098999 (n + 1)

end

end A263170.P4565497800766161594

namespace A263170

/-- `(A237589(n+1)+1)^3-A098999(n+1)` -/
def P4565497800766161594.Spec : Prop :=
  ∀ n, P4565497800766161594.a n = A263170 (n + 1)

end A263170

/-! ## A263170.P14116485153994130036

`A000578(A007504(n+1))-A098999(n+1)`
-/

namespace A263170.P14116485153994130036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A007504 (n + 1)).toNat - A098999 (n + 1)

end

end A263170.P14116485153994130036

namespace A263170

/-- `A000578(A007504(n+1))-A098999(n+1)` -/
def P14116485153994130036.Spec : Prop :=
  ∀ n, P14116485153994130036.a n = A263170 (n + 1)

end A263170

/-!
# A263171: Smallest prime starting a sequence of 4 consecutive odd primes such that the center of the symmetrical gaps is 2n.

The programs for A263171, there is no canonical definition to state claims against.
-/

/-! ## A263171.P11286694343831068817

`A340113(A340075(2*(n+2))+A111960(3*n+1))`
-/

namespace A263171.P11286694343831068817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340113 (A340075 (2 * (n + 2)) + A111960 (3 * n + 1)).toNat

end

end A263171.P11286694343831068817

/-!
# A263172: Nonpalindromic positive integers whose digits can be rearranged to form a palindrome, after evaluation.

The programs for A263172, there is no canonical definition to state claims against.
-/

/-! ## A263172.P12612313176503456032

`∩[A029742(n+1), A084050(n+1)]`
-/

namespace A263172.P12612313176503456032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A263172.P12612313176503456032

/-! ## A263172.P14585389248412539523

`eq[2, A010126(A123895(n)²)]`
-/

namespace A263172.P14585389248412539523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010126 (A123895 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A263172.P14585389248412539523

/-! ## A263172.P5700386310825168681

`∩[A083118(n+1), A307516(n+1)]`
-/

namespace A263172.P5700386310825168681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307516 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A263172.P5700386310825168681

/-!
# A263173: Number of Dyck paths of semilength n having exactly two (possibly overlapping) DUDU's (with U=(1,1), D=(1,-1)).

The programs for A263173, there is no canonical definition to state claims against.
-/

/-! ## A263173.P1023860685615225370

`A102405(∑[n+2]+5)`
-/

namespace A263173.P1023860685615225370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102405 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A263173.P1023860685615225370

/-! ## A263173.P7732167711195650412

`A002265(A027379(n+1)*A029856(n+1))`
-/

namespace A263173.P7732167711195650412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A027379 (n + 1) * A029856 (n + 1)).toNat

end

end A263173.P7732167711195650412

/-!
# A263174: Primes p such that p^2 +- 12 and p^3 +- 12 are also primes.

The programs for A263174, there is no canonical definition to state claims against.
-/

/-! ## A263174.P17022601340563247647

`∩[A153116(n+1), A153322(n+1)]`
-/

namespace A263174.P17022601340563247647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A263174.P17022601340563247647

/-!
# A263182: Smallest k such that k//A002275(n)//k is prime, where // denotes concatenation and A002275(n) is the n-th repunit (R_n).

The programs for A263182, there is no canonical definition to state claims against.
-/

/-! ## A263182.P249812689047751786

`∑[A110495(A249596(n+1))]`
-/

namespace A263182.P249812689047751786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110495 (A249596 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263182.P249812689047751786

/-!
# A263186: G.f. A(x) satisfies: A( x - A(x)*B(x) ) = x such that B( x - x*A(x) ) = x, where B(x) is the g.f. of A263187.

The programs for A263186, there is no canonical definition to state claims against.
-/

/-! ## A263186.P3359164424762855140

`A032742(A138240(n)+A000142(n))`
-/

namespace A263186.P3359164424762855140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A138240 n + A000142 n).toNat

end

end A263186.P3359164424762855140

/-! ## A263186.P12890898830940922934

`A110654(A138240(n)+A000142(n))`
-/

namespace A263186.P12890898830940922934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A138240 n + A000142 n).toNat

end

end A263186.P12890898830940922934

/-!
# A263187: G.f. B(x) satisfies: B( x - x*A(x) ) = x such that A( x - A(x)*B(x) ) = x, where A(x) is the g.f. of A263186.

The programs for A263187, there is no canonical definition to state claims against.
-/

/-! ## A263187.P15244410684393972242

`A088716(n)-A308091(A361970(n))`
-/

namespace A263187.P15244410684393972242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088716 n - A308091 (A361970 n).toNat

end

end A263187.P15244410684393972242

/-! ## A263187.P3217103594075524519

`A056171(∏{p}[n+1, #]+(10^n+26)/9)`
-/

namespace A263187.P3217103594075524519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) + (10 ^ n + 26 : ℚ) / 9)).toNat

end

end A263187.P3217103594075524519

/-!
# A263190: G.f. satisfies: [x^(n-1)] A(x)^(n^2) = (n!)^2 for n>=1.

The programs for A263190, there is no canonical definition to state claims against.
-/

/-! ## A263190.P18120167391001321003

`A228601(A320782(n)+A000262(n))`
-/

namespace A263190.P18120167391001321003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228601 (A320782 n + A000262 n).toNat

end

end A263190.P18120167391001321003

/-! ## A263190.P3232537601791873085

`A025910(A214638(n+1)%A245412(n))`
-/

namespace A263190.P3232537601791873085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025910 (Int.tmod (A214638 (n + 1)) (A245412 n)).toNat

end

end A263190.P3232537601791873085

/-!
# A263191: Triangle read by rows: T(n>=0, 1<=k<=A000108(n)) is the number of Dyck paths of length 2n having k smaller elements in Tamari order.

The programs for A263191, there is no canonical definition to state claims against.
-/

/-! ## A263191.P1077587431237180388

`A326786(gcd(A000108(n), A003325(n+3)))`
-/

namespace A263191.P1077587431237180388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326786 (Int.gcd (A000108 n) (A003325 (n + 3)))

end

end A263191.P1077587431237180388

/-!
# A263194: 4-digit numbers (with leading zeros supplied where necessary) in which the sum of the number consisting of the first two digits and the number consisting of the last two digits equals the number consisting of the middle two digits.

The programs for A263194, there is no canonical definition to state claims against.
-/

/-! ## A263194.P17057968476044386754

`A001222(2^n)+12*A168419(n+1)`
-/

namespace A263194.P17057968476044386754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 ^ n) + 12 * A168419 (n + 1)

end

end A263194.P17057968476044386754

/-! ## A263194.P10998209853926855208

`54*(n+1-A010872(A126646(n)))+n`
-/

namespace A263194.P10998209853926855208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  54 * ((n + 1 : ℤ) - A010872 (A126646 n).toNat) + (n : ℤ)

end

end A263194.P10998209853926855208

/-!
# A263195: Number of (n+3)X(1+3) 0..1 arrays with each row and column not divisible by 13, read as a binary number with top and left being the most significant bits.

The programs for A263195, there is no canonical definition to state claims against.
-/

/-! ## A263195.P12472257827234165285

`A263198(∑[n]+1)`
-/

namespace A263195.P12472257827234165285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263198 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A263195.P12472257827234165285

/-! ## A263195.P5710466166308882788

`A263198(A000124(n))+char[8]`
-/

namespace A263195.P5710466166308882788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263198 (A000124 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A263195.P5710466166308882788

/-! ## A263195.P7819576650809894500

`record[A010054(n)*A263198(n+1)]`
-/

namespace A263195.P7819576650809894500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A263198 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263195.P7819576650809894500

/-! ## A263195.P10600687196311744716

`record[A263198(n+1)/A333143(n)]`
-/

namespace A263195.P10600687196311744716
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263198 (n + 1) : ℚ) / (A333143 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263195.P10600687196311744716

/-!
# A263196: Number of (n+3)X(2+3) 0..1 arrays with each row and column not divisible by 13, read as a binary number with top and left being the most significant bits.

The programs for A263196, there is no canonical definition to state claims against.
-/

/-! ## A263196.P17680785854671013175

`A263198(∑[n+1]+2)`
-/

namespace A263196.P17680785854671013175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263198 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A263196.P17680785854671013175

/-! ## A263196.P17561069444910949317

`record[A010054(n)*A263198(n+2)]`
-/

namespace A263196.P17561069444910949317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A263198 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263196.P17561069444910949317

/-! ## A263196.P1428921520231143229

`record[root(A263198(n+2), A082985(n))]`
-/

namespace A263196.P1428921520231143229
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A263198 (n + 2) : ℝ) ^ (1 / (A082985 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263196.P1428921520231143229

/-!
# A263197: Number of (n+3)X(3+3) 0..1 arrays with each row and column not divisible by 13, read as a binary number with top and left being the most significant bits.

The programs for A263197, there is no canonical definition to state claims against.
-/

/-! ## A263197.P12901576182886369409

`A263198(∑[n+2]+4)`
-/

namespace A263197.P12901576182886369409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263198 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A263197.P12901576182886369409

/-!
# A263199: Expansion of Product_{k>=1} 1/(1 - x^(2*k+1))^(2*k+1).

The programs for A263199, there is no canonical definition to state claims against.
-/

/-! ## A263199.P16058734738609669765

`Δ[A262811(n-a(2%n))]` with `a(0)=0, a(1)=1`
-/

namespace A263199.P16058734738609669765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  A262811 ((n : ℤ) - f1 (2 % n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A263199.P16058734738609669765

