import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C024
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C035
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C005
import Seq.B002.C000
import Seq.B002.C002
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B010.C000
import Seq.B012.C000
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

/-!
# A296400: Number of nX3 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 2 or 3 neighboring 1s.

The programs for A296400, there is no canonical definition to state claims against.
-/

/-! ## A296400.P15543253120416828963

`A296405(∑[n+2]+4)`
-/

namespace A296400.P15543253120416828963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296405 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A296400.P15543253120416828963

/-! ## A296400.P15286886500484989589

`gcd(A000038(n), A296405(A167614(n+1)))`
-/

namespace A296400.P15286886500484989589
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A296405 (A167614 (n + 1)).toNat)

end

end A296400.P15286886500484989589

/-! ## A296400.P508308552426212418

`lcm(A040001(n), A296405(A167614(n+1)))`
-/

namespace A296400.P508308552426212418
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A040001 n) (A296405 (A167614 (n + 1)).toNat)

end

end A296400.P508308552426212418

/-! ## A296400.P547618186729367091

`or(A000007(n), A296405(A167614(n+1)))`
-/

namespace A296400.P547618186729367091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A296405 (A167614 (n + 1)).toNat)

end

end A296400.P547618186729367091

/-! ## A296400.P17642250078723723496

`A296405(A167614(n+1))%A103897(n+1)`
-/

namespace A296400.P17642250078723723496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A296405 (A167614 (n + 1)).toNat) (A103897 (n + 1))

end

end A296400.P17642250078723723496

/-!
# A296401: Number of nX4 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 2 or 3 neighboring 1s.

The programs for A296401, there is no canonical definition to state claims against.
-/

/-! ## A296401.P11696712928553277085

`A296405(A374004(n+1))`
-/

namespace A296401.P11696712928553277085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296405 (A374004 (n + 1)).toNat

end

end A296401.P11696712928553277085

/-! ## A296401.P900024600484986859

`A296405(A141214(n)+7)`
-/

namespace A296401.P900024600484986859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296405 (A141214 n + 7).toNat

end

end A296401.P900024600484986859

/-! ## A296401.P17506360298811633744

`A296405(A052905(n)+9)`
-/

namespace A296401.P17506360298811633744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296405 (A052905 n + 9).toNat

end

end A296401.P17506360298811633744

/-! ## A296401.P16760782804569890726

`A296405(A055999(n)+10)`
-/

namespace A296401.P16760782804569890726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296405 (A055999 n + 10).toNat

end

end A296401.P16760782804569890726

/-! ## A296401.P12731326488332540532

`A296405(A167614(n+2)+1)`
-/

namespace A296401.P12731326488332540532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296405 (A167614 (n + 2) + 1).toNat

end

end A296401.P12731326488332540532

/-!
# A296402: Number of nX5 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 2 or 3 neighboring 1s.

The programs for A296402, there is no canonical definition to state claims against.
-/

/-! ## A296402.P6175952612074703985

`A296405(A374005(n+1))`
-/

namespace A296402.P6175952612074703985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296405 (A374005 (n + 1)).toNat

end

end A296402.P6175952612074703985

/-! ## A296402.P12729989296496831285

`A296405(A167499(n+3))`
-/

namespace A296402.P12729989296496831285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296405 (A167499 (n + 3)).toNat

end

end A296402.P12729989296496831285

/-! ## A296402.P17670848319828118399

`A296405(A167614(n+3)+2)`
-/

namespace A296402.P17670848319828118399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296405 (A167614 (n + 3) + 2).toNat

end

end A296402.P17670848319828118399

/-! ## A296402.P8079550923247258376

`A296405(A141214(n+1)+8)`
-/

namespace A296402.P8079550923247258376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296405 (A141214 (n + 1) + 8).toNat

end

end A296402.P8079550923247258376

/-! ## A296402.P12339186027544017759

`A296405(A027379(n+2)+8)`
-/

namespace A296402.P12339186027544017759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296405 (A027379 (n + 2) + 8).toNat

end

end A296402.P12339186027544017759

/-!
# A296403: Number of nX6 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 2 or 3 neighboring 1s.

The programs for A296403, there is no canonical definition to state claims against.
-/

/-! ## A296403.P15557794541473228148

`A296405(A374007(n+1))`
-/

namespace A296403.P15557794541473228148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296405 (A374007 (n + 1)).toNat

end

end A296403.P15557794541473228148

/-! ## A296403.P3431714332131943060

`A296405(A141214(n+2)+9)`
-/

namespace A296403.P3431714332131943060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296405 (A141214 (n + 2) + 9).toNat

end

end A296403.P3431714332131943060

/-! ## A296403.P6546985582651094956

`A296405(eq[7, A131818(n+1)])`
-/

namespace A296403.P6546985582651094956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296405 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296403.P6546985582651094956

/-! ## A296403.P4682619862579391430

`A296405(A052905(n+3))`
-/

namespace A296403.P4682619862579391430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296405 (A052905 (n + 3)).toNat

end

end A296403.P4682619862579391430

/-! ## A296403.P10844120608346043911

`A296405(eq[3, A219347(n)])`
-/

namespace A296403.P10844120608346043911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296405 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296403.P10844120608346043911

/-!
# A296404: Number of n X 7 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 2 or 3 neighboring 1's.

The programs for A296404, there is no canonical definition to state claims against.
-/

/-! ## A296404.P12834740159897990080

`A296405(A374008(n+1))`
-/

namespace A296404.P12834740159897990080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296405 (A374008 (n + 1)).toNat

end

end A296404.P12834740159897990080

/-! ## A296404.P11811473250535231873

`A296405(eq[8, A131818(n+1)])`
-/

namespace A296404.P11811473250535231873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296405 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296404.P11811473250535231873

/-! ## A296404.P2066939308681195026

`A296405(A055999(n+4))`
-/

namespace A296404.P2066939308681195026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296405 (A055999 (n + 4)).toNat

end

end A296404.P2066939308681195026

/-! ## A296404.P5928828669760075230

`A296405(eq[4, A219347(n)])`
-/

namespace A296404.P5928828669760075230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296405 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296404.P5928828669760075230

/-! ## A296404.P12010348092772762351

`A296405(eq[6, A193592(n)])`
-/

namespace A296404.P12010348092772762351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296405 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296404.P12010348092772762351

/-!
# A296406: Number of non-isomorphic arrangements of n pairwise intersecting pseudo-circles on a sphere, reduced for mirror symmetry.

The programs for A296406, there is no canonical definition to state claims against.
-/

/-! ## A296406.P5531580986203441527

`ceil(A262435(n!)/8)`
-/

namespace A296406.P5531580986203441527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A262435 (Nat.factorial n) : ℚ) / 8⌉

end

end A296406.P5531580986203441527

/-! ## A296406.P201541983044444914

`A062897(a(n-1)²)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A296406.P201541983044444914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A062897 (a (n - 1) ^ 2).toNat

end

end A296406.P201541983044444914

/-!
# A296407: Number of digon-free connected arrangements of n pseudo-circles on a sphere, in the sense that the union of the pseudo-circles is a connected set, reduced for mirror symmetry.

The programs for A296407, there is no canonical definition to state claims against.
-/

/-! ## A296407.P10209360197161748531

`∑[xor(A104714(n), A296409(n))]`
-/

namespace A296407.P10209360197161748531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A104714 n) (A296409 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296407.P10209360197161748531

/-! ## A296407.P13519561038687990690

`A296409(n)+A053392(A126445(n))`
-/

namespace A296407.P13519561038687990690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296409 n + A053392 (A126445 n).toNat

end

end A296407.P13519561038687990690

/-! ## A296407.P453310282182703085

`A064986(A149719(n)-A149699(n))`
-/

namespace A296407.P453310282182703085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064986 (A149719 n - A149699 n).toNat

end

end A296407.P453310282182703085

/-!
# A296408: Number of cylindrical connected arrangements of n pseudo-circles on a sphere, in the sense that the union of the pseudo-circles is a connected set and two cells of the arrangement are separated by each of the pseudo-circles, reduced for mirror symmetry.

The programs for A296408, there is no canonical definition to state claims against.
-/

/-! ## A296408.P4167251295068810372

`A049417(∏[∏[floor(2^n/(n+1))]])`
-/

namespace A296408.P4167251295068810372
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 ^ n : ℚ) / (n + 1 : ℚ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049417 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A296408.P4167251295068810372

/-! ## A296408.P7736057634575786306

`A111776(A001519(n))`
-/

namespace A296408.P7736057634575786306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111776 (A001519 n).toNat

end

end A296408.P7736057634575786306

/-!
# A296409: Number of digon-free cylindrical connected arrangements of n pseudo-circles on a sphere, in the sense that the union of the pseudo-circles is a connected set and two cells of the arrangement are separated by each of the pseudo-circles, reduced for mirror symmetry.

The programs for A296409, there is no canonical definition to state claims against.
-/

/-! ## A296409.P7465733749121390342

`A140436(A022553(n))`
-/

namespace A296409.P7465733749121390342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140436 (A022553 n).toNat

end

end A296409.P7465733749121390342

/-! ## A296409.P18293906701288816153

`A035441(A148198(n))`
-/

namespace A296409.P18293906701288816153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035441 (A148198 n).toNat

end

end A296409.P18293906701288816153

/-! ## A296409.P18341820553011199166

`A035441(A137954(n)+1)`
-/

namespace A296409.P18341820553011199166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035441 (A137954 n + 1).toNat

end

end A296409.P18341820553011199166

/-!
# A296410: Number of non-isomorphic digon-free arrangements of n pairwise intersecting pseudo-circles on a sphere, reduced for mirror symmetry.

The programs for A296410, there is no canonical definition to state claims against.
-/

/-! ## A296410.P10527643362296779579

`xor(A034827(A205003(n+1)), A296412(n))`
-/

namespace A296410.P10527643362296779579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A034827 (A205003 (n + 1)).toNat) (A296412 n)

end

end A296410.P10527643362296779579

/-!
# A296411: Number of non-isomorphic cylindrical arrangements of n pairwise intersecting pseudo-circles on a sphere, in the sense that two cells of the arrangement are separated by each of the pseudo-circles, reduced for mirror symmetry.

The programs for A296411, there is no canonical definition to state claims against.
-/

/-! ## A296411.P18128438487249889218

`∑{d}[A369998(n), #-n]`
-/

namespace A296411.P18128438487249889218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ((d : ℤ) - (n : ℤ))

end

end A296411.P18128438487249889218

/-!
# A296412: Number of non-isomorphic digon-free cylindrical arrangements of n pairwise intersecting pseudo-circles on a sphere, in the sense that two cells of the arrangement are separated by each of the pseudo-circles, reduced for mirror symmetry.

The programs for A296412, there is no canonical definition to state claims against.
-/

/-! ## A296412.P16001784874018207207

`xor(A034827(A205003(n+1)), A296410(n))`
-/

namespace A296412.P16001784874018207207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A034827 (A205003 (n + 1)).toNat) (A296410 n)

end

end A296412.P16001784874018207207

/-! ## A296412.P2018162703207671603

`∏{p}[A296410(n), #]`
-/

namespace A296412.P2018162703207671603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296410 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A296412.P2018162703207671603

/-! ## A296412.P9658280177585382595

`A296410(char[7]+n)`
-/

namespace A296412.P9658280177585382595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296410 ((if ∃ j, f1 j = n then 1 else 0) + n)

end

end A296412.P9658280177585382595

/-!
# A296413: a(1) = a(2) = a(3) = 1, a(4) = 4, a(5) = 3; a(n) = a(n-a(n-1)) + a(n-a(n-2)) + a(n-a(n-3)) for n > 5.

The programs for A296413, the canonical program `A296413.P9929791154059946963` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296413 has offset 1).

The definition of A296413 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-a(n-1))+a(n-a(n-2))+a(n-a(n-3))` (program `A296413.P9929791154059946963`, by `A296413.P9929791154059946963.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A296413.P9929791154059946963

`a(n-a(n-1))+a(n-a(n-2))+a(n-a(n-3))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=4, a(4)=3`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A296413

/-- `a(n-a(n-1))+a(n-a(n-2))+a(n-a(n-3))` -/
def P9929791154059946963.Spec : Prop :=
  ∀ n, (P9929791154059946963.a n : ℤ) = A296413 (n + 1)

theorem P9929791154059946963.correct : P9929791154059946963.Spec := by
  intro n
  simp only [A296413, Nat.add_sub_cancel]

end A296413

/-!
# A296417: Number of non-isomorphic abstract almost-equidistant graphs on n vertices in R^5. A graph G is abstract almost-equidistant in R^5 if the complement of G does not contain K_3 and G does not contain K_7 nor K_{3,3,3}.

The programs for A296417, there is no canonical definition to state claims against.
-/

/-! ## A296417.P13994142476175485838

`A006785(n+1)-A205567(A240080(n))`
-/

namespace A296417.P13994142476175485838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006785 (n + 1) - A205567 (A240080 n).toNat

end

end A296417.P13994142476175485838

/-! ## A296417.P1597083203938148192

`A296418(n+1)-A088152(A356633(n))`
-/

namespace A296417.P1597083203938148192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296418 (n + 1) - A088152 (A356633 n).toNat

end

end A296417.P1597083203938148192

/-! ## A296417.P17538973523596405406

`A006785(n+1)-A111660(A241464(n+1))`
-/

namespace A296417.P17538973523596405406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006785 (n + 1) - A111660 (A241464 (n + 1)).toNat

end

end A296417.P17538973523596405406

/-! ## A296417.P15126565901875796475

`A006785(n+1)-A033985(A321994(n+1))`
-/

namespace A296417.P15126565901875796475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006785 (n + 1) - A033985 (A321994 (n + 1)).toNat

end

end A296417.P15126565901875796475

/-!
# A296418: Number of non-isomorphic abstract almost-equidistant graphs on n vertices in R^6. A graph G is abstract almost-equidistant in R^6 if the complement of G does not contain K_3 and G does not contain K_8 nor K_{1,3,3,3}.

The programs for A296418, there is no canonical definition to state claims against.
-/

/-! ## A296418.P15721505560918884166

`A006785(n+1)-A070109(n!)`
-/

namespace A296418.P15721505560918884166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006785 (n + 1) - A070109 (Nat.factorial n)

end

end A296418.P15721505560918884166

/-! ## A296418.P12727981890803575573

`A006785(n+1)-A006811(n+1)%2`
-/

namespace A296418.P12727981890803575573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006785 (n + 1) - Int.tmod (A006811 (n + 1)) 2

end

end A296418.P12727981890803575573

/-! ## A296418.P4009099501744743201

`record[A006785(n+1)-A205577(n+1)²²]`
-/

namespace A296418.P4009099501744743201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006785 (n + 1) - (A205577 (n + 1) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296418.P4009099501744743201

/-! ## A296418.P17703385457600281004

`A052450(n+1)+A040051(A033312(n))`
-/

namespace A296418.P17703385457600281004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052450 (n + 1) + A040051 (A033312 n).toNat

end

end A296418.P17703385457600281004

/-!
# A296419: Triangle T(i,j) read by rows: Number of plane bipolar orientations with i+1 vertices and j+1 faces.

The programs for A296419, there is no canonical definition to state claims against.
-/

/-! ## A296419.P15415474693263626329

`A056939(A245300(n))`
-/

namespace A296419.P15415474693263626329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056939 (A245300 n).toNat

end

end A296419.P15415474693263626329

/-! ## A296419.P5061423129977040083

`A056939((A214661(n+1)-1)/2)`
-/

namespace A296419.P5061423129977040083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056939 (SequenceMachineLib.roundAway ((A214661 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A296419.P5061423129977040083

/-! ## A296419.P4877053227940499886

`A142470(A245300(n))/A046899(n)`
-/

namespace A296419.P4877053227940499886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142470 (A245300 n).toNat : ℚ) / (A046899 n : ℚ)

end

end A296419.P4877053227940499886

/-!
# A296420: Period of last digit of multiples of n.

The programs for A296420, the canonical program `A296420.P9360605015701775770` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296420 has offset 0).

The definition of A296420 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A296420.P9360605015701775770

`10/gcd(n, 10)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A296420

/-- `10/gcd(n, 10)` -/
def P9360605015701775770.Spec : Prop :=
  ∀ n, P9360605015701775770.a n = (A296420 n : ℚ)

end A296420

/-!
# A296421: a(1) = 1, a(2) = 2, a(3) = 3, a(4) = a(5) = 4, a(6) = a(7) = 6; a(n) = a(n-a(n-1)) + a(n-a(n-2)) + a(n-a(n-3)) for n > 7.

The programs for A296421, the canonical program `A296421.P12777168366701374975` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296421 has offset 1).

The definition of A296421 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-a(n-1))+a(n-a(n-2))+a(n-a(n-3))` (program `A296421.P12777168366701374975`, by `A296421.P12777168366701374975.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A296421.P12777168366701374975

`a(n-a(n-1))+a(n-a(n-2))+a(n-a(n-3))` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=4, a(5)=6, a(6)=6`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A296421

/-- `a(n-a(n-1))+a(n-a(n-2))+a(n-a(n-3))` -/
def P12777168366701374975.Spec : Prop :=
  ∀ n, (P12777168366701374975.a n : ℤ) = A296421 (n + 1)

theorem P12777168366701374975.correct : P12777168366701374975.Spec := by
  intro n
  simp only [A296421, Nat.add_sub_cancel]

end A296421

/-! ## A296421.P9543913893247443479

`A214972(or(A002263(n+1), A203567(n+2)))`
-/

namespace A296421.P9543913893247443479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214972 (Int.lor (A002263 (n + 1)) (A203567 (n + 2))).toNat

end

end A296421.P9543913893247443479

namespace A296421

/-- `A214972(or(A002263(n+1), A203567(n+2)))` -/
def P9543913893247443479.Spec : Prop :=
  ∀ n, P9543913893247443479.a n = A296421 (n + 1)

end A296421

/-! ## A296421.P309881867781488915

`A335450(A001935(n))+A049474(n)`
-/

namespace A296421.P309881867781488915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335450 (A001935 n).toNat + A049474 n

end

end A296421.P309881867781488915

namespace A296421

/-- `A335450(A001935(n))+A049474(n)` -/
def P309881867781488915.Spec : Prop :=
  ∀ n, P309881867781488915.a n = A296421 (n + 1)

end A296421

/-! ## A296421.P17403512522448290539

`A000720(A187829(n+1)+A036467(n))`
-/

namespace A296421.P17403512522448290539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A187829 (n + 1) + A036467 n).toNat

end

end A296421.P17403512522448290539

namespace A296421

/-- `A000720(A187829(n+1)+A036467(n))` -/
def P17403512522448290539.Spec : Prop :=
  ∀ n, P17403512522448290539.a n = A296421 (n + 1)

end A296421

/-! ## A296421.P7966555068343037644

`A230980(A187829(n+1)+A036467(n))`
-/

namespace A296421.P7966555068343037644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A187829 (n + 1) + A036467 n).toNat

end

end A296421.P7966555068343037644

namespace A296421

/-- `A230980(A187829(n+1)+A036467(n))` -/
def P7966555068343037644.Spec : Prop :=
  ∀ n, P7966555068343037644.a n = A296421 (n + 1)

end A296421

/-!
# A296422: Primes that can be represented in the form b^n+1 or b^n-1 where b >= 2 and n >= 2.

The programs for A296422, there is no canonical definition to state claims against.
-/

/-! ## A296422.P6180561078347294849

`∩[A080262(n+1), A206864(n+1)]`
-/

namespace A296422.P6180561078347294849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296422.P6180561078347294849

/-! ## A296422.P13908814663495088546

`p?[A080262(n+1)]`
-/

namespace A296422.P13908814663495088546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080262 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A296422.P13908814663495088546

/-! ## A296422.P8608123423761734789

`p?[∪[A045542(n+1), A216765(n+1)]]`
-/

namespace A296422.P8608123423761734789
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045542 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216765 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A296422.P8608123423761734789

/-! ## A296422.P8288351304056307101

`p?[∪[A045542(n+1), A163588(n+3)]]`
-/

namespace A296422.P8288351304056307101
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045542 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163588 (n + 3)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A296422.P8288351304056307101

/-! ## A296422.P14825380997712448528

`p?[∪[(2*A001912(n+1))²+1, A045542(n+1)]]`
-/

namespace A296422.P14825380997712448528
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A001912 (n + 1)) ^ 2 + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045542 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A296422.P14825380997712448528

/-! ## A296422.P2778825378536070430

`∩[A080262(n+1), A228424(n+1)]`
-/

namespace A296422.P2778825378536070430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296422.P2778825378536070430

/-! ## A296422.P6419075683320219746

`∩[A042994(n+1), A080262(n+1)]`
-/

namespace A296422.P6419075683320219746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080262 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296422.P6419075683320219746

/-! ## A296422.P12216529129470351357

`∩[A042986(n+1), A080262(n+1)]`
-/

namespace A296422.P12216529129470351357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080262 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296422.P12216529129470351357

/-! ## A296422.P3673837097013727133

`∩[A080262(n+1), A042988(n)]`
-/

namespace A296422.P3673837097013727133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042988 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296422.P3673837097013727133

/-! ## A296422.P6588492277865561987

`∩[A080262(n+1), A042990(n)]`
-/

namespace A296422.P6588492277865561987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042990 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296422.P6588492277865561987

/-!
# A296440: a(1) = 2, a(2) = a(3) = 3, a(4) = 4, a(5) = a(6) = 6; a(n) = a(n-a(n-1)) + a(n-a(n-2)) + a(n-a(n-3)) for n > 6.

The programs for A296440, the canonical program `A296440.P16905173813408511277` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296440 has offset 1).

The definition of A296440 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-a(n-1))+a(n-a(n-2))+a(n-a(n-3))` (program `A296440.P16905173813408511277`, by `A296440.P16905173813408511277.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A296440.P16905173813408511277

`a(n-a(n-1))+a(n-a(n-2))+a(n-a(n-3))` with `a(0)=2, a(1)=3, a(2)=3, a(3)=4, a(4)=6, a(5)=6`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A296440

/-- `a(n-a(n-1))+a(n-a(n-2))+a(n-a(n-3))` -/
def P16905173813408511277.Spec : Prop :=
  ∀ n, (P16905173813408511277.a n : ℤ) = A296440 (n + 1)

theorem P16905173813408511277.correct : P16905173813408511277.Spec := by
  intro n
  simp only [A296440, Nat.add_sub_cancel]

end A296440

/-! ## A296440.P8611764981082672895

`A070939(A079147(n+1)+A006721(n))`
-/

namespace A296440.P8611764981082672895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A079147 (n + 1) + A006721 n).toNat

end

end A296440.P8611764981082672895

namespace A296440

/-- `A070939(A079147(n+1)+A006721(n))` -/
def P8611764981082672895.Spec : Prop :=
  ∀ n, P8611764981082672895.a n = A296440 (n + 1)

end A296440

/-! ## A296440.P1486563999287242741

`A070939(A235395(n+1)+A006721(n))`
-/

namespace A296440.P1486563999287242741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A235395 (n + 1) + A006721 n).toNat

end

end A296440.P1486563999287242741

namespace A296440

/-- `A070939(A235395(n+1)+A006721(n))` -/
def P1486563999287242741.Spec : Prop :=
  ∀ n, P1486563999287242741.a n = A296440 (n + 1)

end A296440

/-! ## A296440.P4296268343264067827

`A070939(A147394(n+1)+A079147(n+1))`
-/

namespace A296440.P4296268343264067827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A147394 (n + 1) + A079147 (n + 1)).toNat

end

end A296440.P4296268343264067827

namespace A296440

/-- `A070939(A147394(n+1)+A079147(n+1))` -/
def P4296268343264067827.Spec : Prop :=
  ∀ n, P4296268343264067827.a n = A296440 (n + 1)

end A296440

/-! ## A296440.P7887264881921010151

`A081604(2*n+1)+A081604(A262278(n))`
-/

namespace A296440.P7887264881921010151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (2 * n + 1) + A081604 (A262278 n).toNat

end

end A296440.P7887264881921010151

namespace A296440

/-- `A081604(2*n+1)+A081604(A262278(n))` -/
def P7887264881921010151.Spec : Prop :=
  ∀ n, P7887264881921010151.a n = A296440 (n + 1)

end A296440

/-!
# A296441: Array A(n, k) = G_k(n) where G_k(n) is the k-th term of the Goodstein sequence of n, read by antidiagonals.

The programs for A296441, there is no canonical definition to state claims against.
-/

/-! ## A296441.P11041659486115041432

`A220400(A099093(n)*A099097(n))`
-/

namespace A296441.P11041659486115041432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 (A099093 n * A099097 n).toNat

end

end A296441.P11041659486115041432

/-! ## A296441.P7455807545766770176

`A124765(A135589(n)*A353431(n+1))`
-/

namespace A296441.P7455807545766770176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 (A135589 n * A353431 (n + 1)).toNat

end

end A296441.P7455807545766770176

/-! ## A296441.P306275729248582139

`C(A002262(n), A340101(A007899(3*n)))`
-/

namespace A296441.P306275729248582139
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002262 n).toNat (A340101 (A007899 (3 * n)).toNat).toNat

end

end A296441.P306275729248582139

/-! ## A296441.P8048722859869868296

`A128173(A101268(n+3))%A000005(A059268(n))`
-/

namespace A296441.P8048722859869868296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128173 (A101268 (n + 3)).toNat) (A000005 (A059268 n).toNat)

end

end A296441.P8048722859869868296

/-! ## A296441.P18369977015551325371

`A258850(n)+A242998(A187783(n))`
-/

namespace A296441.P18369977015551325371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258850 n + A242998 (A187783 n).toNat

end

end A296441.P18369977015551325371

/-!
# A296442: Initial digit of n-th Mersenne number.

The programs for A296442, the canonical program `A296442.P15214103420429711918` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296442 has offset 1).

The definition of A296442 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9592 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A296442.P15214103420429711918

`A008952(A000040(n+1))-A019590(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A296442

/-- `A008952(A000040(n+1))-A019590(n+1)` -/
def P15214103420429711918.Spec : Prop :=
  ∀ n, P15214103420429711918.a n = A296442 (n + 1)

theorem P15214103420429711918.correct : P15214103420429711918.Spec := by
  intro n
  simp only [A296442, Nat.add_sub_cancel]

end A296442

/-! ## A296442.P8933149191779007404

`A273092(p?[A001057(n)])%10`
-/

namespace A296442.P8933149191779007404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A273092 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat) 10

end

end A296442.P8933149191779007404

namespace A296442

/-- `A273092(p?[A001057(n)])%10` -/
def P8933149191779007404.Spec : Prop :=
  ∀ n, P8933149191779007404.a n = A296442 (n + 1)

end A296442

/-! ## A296442.P17381155970247853642

`A273092(p?[A014681(n)])%10`
-/

namespace A296442.P17381155970247853642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A273092 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat) 10

end

end A296442.P17381155970247853642

namespace A296442

/-- `A273092(p?[A014681(n)])%10` -/
def P17381155970247853642.Spec : Prop :=
  ∀ n, P17381155970247853642.a n = A296442 (n + 1)

end A296442

/-! ## A296442.P11539936895117521212

`A273092(A000040(n+1))%10`
-/

namespace A296442.P11539936895117521212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A273092 (A000040 (n + 1)).toNat) 10

end

end A296442.P11539936895117521212

namespace A296442

/-- `A273092(A000040(n+1))%10` -/
def P11539936895117521212.Spec : Prop :=
  ∀ n, P11539936895117521212.a n = A296442 (n + 1)

end A296442

/-! ## A296442.P3886509960826171957

`A273092(record[A020639(n+2)])%10`
-/

namespace A296442.P3886509960826171957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A273092 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) 10

end

end A296442.P3886509960826171957

namespace A296442

/-- `A273092(record[A020639(n+2)])%10` -/
def P3886509960826171957.Spec : Prop :=
  ∀ n, P3886509960826171957.a n = A296442 (n + 1)

end A296442

/-! ## A296442.P7580119964701081054

`A273092(A004086(A004087(n+1)))%10`
-/

namespace A296442.P7580119964701081054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A273092 (A004086 (A004087 (n + 1)).toNat).toNat) 10

end

end A296442.P7580119964701081054

namespace A296442

/-- `A273092(A004086(A004087(n+1)))%10` -/
def P7580119964701081054.Spec : Prop :=
  ∀ n, P7580119964701081054.a n = A296442 (n + 1)

end A296442

/-!
# A296443: Numbers k such that 2*10^(2k)-2*10^k+1 is prime.

The programs for A296443, there is no canonical definition to state claims against.
-/

/-! ## A296443.P18000191272046224362

`A294375(A169829(n+2))`
-/

namespace A296443.P18000191272046224362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294375 (A169829 (n + 2)).toNat

end

end A296443.P18000191272046224362

/-! ## A296443.P4105099394965122913

`A175501(∑[∑[A294251(n)]])`
-/

namespace A296443.P4105099394965122913
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294251 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175501 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A296443.P4105099394965122913

/-!
# A296444: Numbers k such that 2*10^(2k) + 2*10^k + 1 are prime.

The programs for A296444, there is no canonical definition to state claims against.
-/

/-! ## A296444.P15844996487453709596

`A247630(a(n-1)-1)/2` with `a(0)=0, a(1)=2, a(2)=3, a(3)=6`
-/

namespace A296444.P15844996487453709596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 2, 3, 6] fun n a =>
  (A247630 (SequenceMachineLib.roundAway (a (n - 1) - 1)).toNat : ℚ) / 2

end

end A296444.P15844996487453709596

/-! ## A296444.P4422183463197113686

`record[A223486(A295943(n+1))]`
-/

namespace A296444.P4422183463197113686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223486 (A295943 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296444.P4422183463197113686

/-!
# A296447: Smallest integer N such that all numbers from 1 to n (n being N's rank in the sequence) can be built by the sum of contiguous digits of N.

The programs for A296447, there is no canonical definition to state claims against.
-/

/-! ## A296447.P12220241543044549242

`A261300(or(A163876(n), A163894(n)))`
-/

namespace A296447.P12220241543044549242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261300 (Int.lor (A163876 n) (A163894 n)).toNat

end

end A296447.P12220241543044549242

/-! ## A296447.P6433748895923437525

`A193023(n+1)+A058710(A192987(n))`
-/

namespace A296447.P6433748895923437525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193023 (n + 1) + A058710 (A192987 n).toNat

end

end A296447.P6433748895923437525

/-!
# A296462: Expansion of e.g.f. arcsin(x)*arctanh(x) (even powers only).

The programs for A296462, there is no canonical definition to state claims against.
-/

/-! ## A296462.P7642874312269392517

`A006015(∑[A045908(n)]*A006126(n))`
-/

namespace A296462.P7642874312269392517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045908 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006015 ((∑ j ∈ Finset.range (n + 1), f1 j) * A006126 n).toNat

end

end A296462.P7642874312269392517

/-!
# A296463: Expansion of e.g.f. arcsinh(x)*arctanh(x) (even powers only).

The programs for A296463, there is no canonical definition to state claims against.
-/

/-! ## A296463.P10659237951536458591

`A302610(2*n)`
-/

namespace A296463.P10659237951536458591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302610 (2 * n)

end

end A296463.P10659237951536458591

/-! ## A296463.P12653003600625869571

`record[A302610(floor(n/(n%2+1)))]`
-/

namespace A296463.P12653003600625869571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302610 ⌊(n : ℚ) / ((n % 2 + 1 : ℕ) : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296463.P12653003600625869571

/-! ## A296463.P13323724520558015437

`record[A302610(A014681(n))]`
-/

namespace A296463.P13323724520558015437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302610 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296463.P13323724520558015437

/-! ## A296463.P1532054233347490588

`record[A302610(A124625(n))]`
-/

namespace A296463.P1532054233347490588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302610 (A124625 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296463.P1532054233347490588

/-! ## A296463.P17647712626667972282

`lcm(2, A302610(A004277(n)))`
-/

namespace A296463.P17647712626667972282
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A302610 (A004277 n).toNat)

end

end A296463.P17647712626667972282

/-!
# A296465: Expansion of e.g.f. arctanh(arctanh(x)) (odd powers only).

The programs for A296465, there is no canonical definition to state claims against.
-/

/-! ## A296465.P16158089791160092735

`A202139(Δ[n²])`
-/

namespace A296465.P16158089791160092735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202139 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A296465.P16158089791160092735

/-! ## A296465.P14765562122327063506

`record[(-1)^n*A202139(n+1)]`
-/

namespace A296465.P14765562122327063506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A202139 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296465.P14765562122327063506

/-! ## A296465.P10099853476763735801

`record[A202139(A093178(n))]`
-/

namespace A296465.P10099853476763735801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202139 (A093178 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296465.P10099853476763735801

/-! ## A296465.P5856059239013887775

`record[A202139(A028234(n+1))]`
-/

namespace A296465.P5856059239013887775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202139 (A028234 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296465.P5856059239013887775

/-! ## A296465.P1563980749943814624

`record[A202139(A029578(n)+1)]`
-/

namespace A296465.P1563980749943814624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202139 (A029578 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296465.P1563980749943814624

/-!
# A296466: Expansion of e.g.f. arcsinh(arcsin(x)) (odd powers only).

The programs for A296466, there is no canonical definition to state claims against.
-/

/-! ## A296466.P4514047837508696566

`A222246(A012619(n))-A169801(n)`
-/

namespace A296466.P4514047837508696566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222246 (A012619 n).toNat - A169801 n

end

end A296466.P4514047837508696566

/-!
# A296467: Expansion of e.g.f. arctan(arctanh(x)) (odd powers only).

The programs for A296467, there is no canonical definition to state claims against.
-/

/-! ## A296467.P17479423623208637580

`abs(A110708(2*n+1))`
-/

namespace A296467.P17479423623208637580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A110708 (2 * n + 1)|

end

end A296467.P17479423623208637580

/-! ## A296467.P12818811937928807143

`A033999(n)*A110708(2*n+1)`
-/

namespace A296467.P12818811937928807143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A110708 (2 * n + 1)

end

end A296467.P12818811937928807143

/-! ## A296467.P14645251492472861932

`lcm(A000079(n), A110708(2*n+1))`
-/

namespace A296467.P14645251492472861932
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n) (A110708 (2 * n + 1))

end

end A296467.P14645251492472861932

/-! ## A296467.P267886518974246340

`(1-2*A000035(n))*A110708(2*n+1)`
-/

namespace A296467.P267886518974246340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - 2 * A000035 n) * A110708 (2 * n + 1)

end

end A296467.P267886518974246340

/-! ## A296467.P12979166191397883910

`gcd(A000122(3*n+2), A110708(2*n+1))`
-/

namespace A296467.P12979166191397883910
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000122 (3 * n + 2)) (A110708 (2 * n + 1))

end

end A296467.P12979166191397883910

/-!
# A296484: Solution (a(n)) of the system of 3 complementary equations in Comments.

The programs for A296484, there is no canonical definition to state claims against.
-/

/-! ## A296484.P3176819513482575664

`(A297149(n)-A296502(n))/2`
-/

namespace A296484.P3176819513482575664
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297149 n - A296502 n : ℚ) / 2

end

end A296484.P3176819513482575664

/-! ## A296484.P13739786043027296913

`Δ[A296502(n)/3]`
-/

namespace A296484.P13739786043027296913
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296502 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A296484.P13739786043027296913

/-! ## A296484.P13351936581531404063

`A296502(n+1)-A297149(n)`
-/

namespace A296484.P13351936581531404063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296502 (n + 1) - A297149 n

end

end A296484.P13351936581531404063

/-! ## A296484.P15074747467461209302

`(A296502(n+1)-A296502(n))/3`
-/

namespace A296484.P15074747467461209302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296502 (n + 1) - A296502 n : ℚ) / 3

end

end A296484.P15074747467461209302

/-! ## A296484.P16837866600346166360

`A296502(n+1)%A297149(n%A296502(n))`
-/

namespace A296484.P16837866600346166360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A296502 (n + 1)) (A297149 (Int.tmod (n : ℤ) (A296502 n)).toNat)

end

end A296484.P16837866600346166360

