import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
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
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C000
import Seq.B007.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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

/-!
# A269100: a(n) = 13*n + 11.

The programs for A269100, the canonical program `A269100.P7100397529520825078` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269100 has offset 0).

The definition of A269100 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `13*n+11` (program `A269100.P7100397529520825078`, by `A269100.P7100397529520825078.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A269100.P7100397529520825078

`13*n+11`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A269100

/-- `13*n+11` -/
def P7100397529520825078.Spec : Prop :=
  ∀ n, (P7100397529520825078.a n : ℤ) = A269100 n

theorem P7100397529520825078.correct : P7100397529520825078.Spec := by
  intro n
  simp only [A269100]

end A269100

/-!
# A269102: Number of n X n 0..3 arrays with some element plus some horizontally or vertically adjacent neighbor totalling three no more than once.

The programs for A269102, there is no canonical definition to state claims against.
-/

/-! ## A269102.P4158455553012029036

`A269109(∑[4*n]+1)`
-/

namespace A269102.P4158455553012029036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269109 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A269102.P4158455553012029036

/-!
# A269103: Number of n X 2 0..3 arrays with some element plus some horizontally or vertically adjacent neighbor totalling three no more than once.

The programs for A269103, there is no canonical definition to state claims against.
-/

/-! ## A269103.P12898328363527799343

`A269109(∑[n+1]+2)`
-/

namespace A269103.P12898328363527799343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269109 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A269103.P12898328363527799343

/-! ## A269103.P14896637449404937102

`record[root(A269109(n+1), A131818(n+1))²]`
-/

namespace A269103.P14896637449404937102
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A269109 (n + 1) : ℝ) ^ (1 / (A131818 (n + 1) : ℝ))) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269103.P14896637449404937102

/-! ## A269103.P14187432260604733119

`A269109(A000096(n)+3)+A034534(n+1)`
-/

namespace A269103.P14187432260604733119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269109 (A000096 n + 3).toNat + A034534 (n + 1)

end

end A269103.P14187432260604733119

/-! ## A269103.P5133431030114050089

`A269109(A000096(n)+3)%A269213(n+1)`
-/

namespace A269103.P5133431030114050089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269109 (A000096 n + 3).toNat) (A269213 (n + 1))

end

end A269103.P5133431030114050089

/-! ## A269103.P12660482429651050338

`A269201(∑[n+2])`
-/

namespace A269103.P12660482429651050338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269201 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A269103.P12660482429651050338

/-!
# A269104: Number of n X 3 0..3 arrays with some element plus some horizontally or vertically adjacent neighbor totalling three no more than once.

The programs for A269104, there is no canonical definition to state claims against.
-/

/-! ## A269104.P16863160835302150817

`A269109(∑[n+2]+4)`
-/

namespace A269104.P16863160835302150817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269109 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A269104.P16863160835302150817

/-! ## A269104.P6853565597377673151

`lcm(2, A269109(A167614(n+1)))`
-/

namespace A269104.P6853565597377673151
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A269109 (A167614 (n + 1)).toNat)

end

end A269104.P6853565597377673151

/-! ## A269104.P16392199187083354058

`A269109(A167614(n+1))+A025466(n)`
-/

namespace A269104.P16392199187083354058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269109 (A167614 (n + 1)).toNat + A025466 n

end

end A269104.P16392199187083354058

/-! ## A269104.P15755849952206536588

`A269109(A046691(n)+7)+A034534(n+1)`
-/

namespace A269104.P15755849952206536588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269109 (A046691 n + 7).toNat + A034534 (n + 1)

end

end A269104.P15755849952206536588

/-! ## A269104.P7453395940903219629

`A269109(A167614(n+1))%A183733(n+1)`
-/

namespace A269104.P7453395940903219629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269109 (A167614 (n + 1)).toNat) (A183733 (n + 1))

end

end A269104.P7453395940903219629

/-!
# A269105: Number of nX4 0..3 arrays with some element plus some horizontally or vertically adjacent neighbor totalling three no more than once.

The programs for A269105, there is no canonical definition to state claims against.
-/

/-! ## A269105.P1415050271149153448

`A269109(A374004(n+1))`
-/

namespace A269105.P1415050271149153448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269109 (A374004 (n + 1)).toNat

end

end A269105.P1415050271149153448

/-! ## A269105.P3545822061040226634

`A269109(A141214(n)+7)`
-/

namespace A269105.P3545822061040226634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269109 (A141214 n + 7).toNat

end

end A269105.P3545822061040226634

/-! ## A269105.P1411888959302172231

`A269109(A052905(n)+9)`
-/

namespace A269105.P1411888959302172231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269109 (A052905 n + 9).toNat

end

end A269105.P1411888959302172231

/-! ## A269105.P12844277805421429303

`A269109(A167614(n+2)+1)`
-/

namespace A269105.P12844277805421429303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269109 (A167614 (n + 2) + 1).toNat

end

end A269105.P12844277805421429303

/-! ## A269105.P6601745651573605552

`A269109(A112355(n+1)+4)`
-/

namespace A269105.P6601745651573605552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269109 (A112355 (n + 1) + 4).toNat

end

end A269105.P6601745651573605552

/-!
# A269106: Number of n X 5 0..3 arrays with some element plus some horizontally or vertically adjacent neighbor totalling three no more than once.

The programs for A269106, there is no canonical definition to state claims against.
-/

/-! ## A269106.P913771479841652924

`A269109(A374005(n+1))`
-/

namespace A269106.P913771479841652924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269109 (A374005 (n + 1)).toNat

end

end A269106.P913771479841652924

/-! ## A269106.P4424740329186350827

`A269109(A167499(n+3))`
-/

namespace A269106.P4424740329186350827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269109 (A167499 (n + 3)).toNat

end

end A269106.P4424740329186350827

/-! ## A269106.P5438307582298048310

`A269109(eq[6, A004736(n+1)]-2*n)`
-/

namespace A269106.P5438307582298048310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269109 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 2 * n)

end

end A269106.P5438307582298048310

/-! ## A269106.P17512487004673883710

`A269109(Δ[A264443(n)])`
-/

namespace A269106.P17512487004673883710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269109 (f1 (n + 1) - f1 n).toNat

end

end A269106.P17512487004673883710

/-! ## A269106.P14619535917636456711

`A269109(A046691(n+3))`
-/

namespace A269106.P14619535917636456711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269109 (A046691 (n + 3)).toNat

end

end A269106.P14619535917636456711

/-!
# A269107: Number of nX6 0..3 arrays with some element plus some horizontally or vertically adjacent neighbor totalling three no more than once.

The programs for A269107, there is no canonical definition to state claims against.
-/

/-! ## A269107.P5129018489184054757

`A269109(A374007(n+1))`
-/

namespace A269107.P5129018489184054757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269109 (A374007 (n + 1)).toNat

end

end A269107.P5129018489184054757

/-! ## A269107.P15415246330692405820

`A269109(A052905(n+3))`
-/

namespace A269107.P15415246330692405820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269109 (A052905 (n + 3)).toNat

end

end A269107.P15415246330692405820

/-! ## A269107.P6710492716564647683

`A269109(A056119(n)+16)`
-/

namespace A269107.P6710492716564647683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269109 (A056119 n + 16).toNat

end

end A269107.P6710492716564647683

/-! ## A269107.P7769588309792672

`A269109(Δ[A023551(n+1)]+1)`
-/

namespace A269107.P7769588309792672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269109 (f1 (n + 1) - f1 n + 1).toNat

end

end A269107.P7769588309792672

/-! ## A269107.P9752319736551251401

`A269109(Δ[A264443(n+1)]-1)`
-/

namespace A269107.P9752319736551251401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269109 (f1 (n + 1) - f1 n - 1).toNat

end

end A269107.P9752319736551251401

/-!
# A269108: Number of n X 7 0..3 arrays with some element plus some horizontally or vertically adjacent neighbor totalling three no more than once.

The programs for A269108, there is no canonical definition to state claims against.
-/

/-! ## A269108.P175924758556183892

`A269109(A374008(n+1))`
-/

namespace A269108.P175924758556183892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269109 (A374008 (n + 1)).toNat

end

end A269108.P175924758556183892

/-! ## A269108.P16392089240470020525

`A269109(eq[8, A131818(n+1)])`
-/

namespace A269108.P16392089240470020525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269109 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269108.P16392089240470020525

/-! ## A269108.P7231497963360332402

`A269109(eq[6, A144328(n+1)]+1)`
-/

namespace A269108.P7231497963360332402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269109 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A269108.P7231497963360332402

/-! ## A269108.P3242892764781818019

`A269109(eq[6, A193592(n)])`
-/

namespace A269108.P3242892764781818019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269109 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269108.P3242892764781818019

/-! ## A269108.P15437907929358303933

`A269109(A052905(n+4)-1)`
-/

namespace A269108.P15437907929358303933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269109 (A052905 (n + 4) - 1).toNat

end

end A269108.P15437907929358303933

/-!
# A269109: T(n,k)=Number of nXk 0..3 arrays with some element plus some horizontally or vertically adjacent neighbor totalling three no more than once.

The programs for A269109, there is no canonical definition to state claims against.
-/

/-! ## A269109.P11091852098244206743

`A269097(n+1)+4*A222444(n+1)`
-/

namespace A269109.P11091852098244206743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269097 (n + 1) + 4 * A222444 (n + 1)

end

end A269109.P11091852098244206743

/-! ## A269109.P4285235506264684288

`A269097(n+1)+4*(2*A233018(n+1)-1)`
-/

namespace A269109.P4285235506264684288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269097 (n + 1) + 4 * (2 * A233018 (n + 1) - 1)

end

end A269109.P4285235506264684288

/-! ## A269109.P6322659022070190481

`A269097(n+1)+4*(A082551(A048058(n))+2*A233018(n+1))`
-/

namespace A269109.P6322659022070190481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269097 (n + 1) + 4 * (A082551 (A048058 n).toNat + 2 * A233018 (n + 1))

end

end A269109.P6322659022070190481

/-! ## A269109.P17107836099969067956

`A269097(n+1)+A008574(A222444(n+1))`
-/

namespace A269109.P17107836099969067956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269097 (n + 1) + A008574 (A222444 (n + 1)).toNat

end

end A269109.P17107836099969067956

/-! ## A269109.P14350687726564788433

`A001281(A028326(n)*A269186(n+1))+4*A222444(n+1)`
-/

namespace A269109.P14350687726564788433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A028326 n * A269186 (n + 1)).toNat + 4 * A222444 (n + 1)

end

end A269109.P14350687726564788433

/-!
# A269112: a(n) = (3*(n-1)*n + (-1)^((n-1)*n/2) + 5)/2.

The programs for A269112, the canonical program `A269112.P13948582185315743994` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269112 has offset 1).

The definition of A269112 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A269112.P1389999833783688702

`3*n²-3*n-a(n-2)+8` with `a(0)=3, a(1)=5`
-/

namespace A269112.P1389999833783688702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 5] fun n a =>
  (3 * n ^ 2 : ℤ) - (3 * n : ℤ) - a (n - 2) + 8

end

end A269112.P1389999833783688702

namespace A269112

/-- `3*n²-3*n-a(n-2)+8` -/
def P1389999833783688702.Spec : Prop :=
  ∀ n, P1389999833783688702.a n = A269112 (n + 1)

end A269112

/-! ## A269112.P7465923116184343321

`(3*n*(n+1)+(-1)^(n*(n+1)/2)+5)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A269112.P7465923116184343321
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((3 * n * (n + 1) : ℝ) + (-1 : ℝ) ^ ((n * (n + 1) : ℚ) / 2 : ℝ) + 5) / 2

end

end A269112.P7465923116184343321

namespace A269112

/-- `(3*n*(n+1)+(-1)^(n*(n+1)/2)+5)/2` -/
def P7465923116184343321.Spec : Prop :=
  ∀ n, P7465923116184343321.a n = (A269112 (n + 1) : ℝ)

end A269112

/-! ## A269112.P13948582185315743994

`3*a(n-1)-4*a(n-2)+4*a(n-3)-3*a(n-4)+a(n-5)` with `a(0)=3, a(1)=5, a(2)=11, a(3)=21, a(4)=33`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A269112

/-- `3*a(n-1)-4*a(n-2)+4*a(n-3)-3*a(n-4)+a(n-5)` -/
def P13948582185315743994.Spec : Prop :=
  ∀ n, P13948582185315743994.a n = A269112 (n + 1)

theorem P13948582185315743994.correct : P13948582185315743994.Spec := by
  intro n
  simp only [A269112, Nat.add_sub_cancel]

end A269112

/-! ## A269112.P11534383818999595836

`A047270(A000124(n))`
-/

namespace A269112.P11534383818999595836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047270 (A000124 n).toNat

end

end A269112.P11534383818999595836

namespace A269112

/-- `A047270(A000124(n))` -/
def P11534383818999595836.Spec : Prop :=
  ∀ n, P11534383818999595836.a n = A269112 (n + 1)

end A269112

/-! ## A269112.P6364087719890633563

`or(1, ∑[3*n]+2)`
-/

namespace A269112.P6364087719890633563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A269112.P6364087719890633563

namespace A269112

/-- `or(1, ∑[3*n]+2)` -/
def P6364087719890633563.Spec : Prop :=
  ∀ n, (P6364087719890633563.a n : ℤ) = A269112 (n + 1)

end A269112

/-! ## A269112.P9939133178124150140

`and(-2, ∑[3*n])+3`
-/

namespace A269112.P9939133178124150140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 3

end

end A269112.P9939133178124150140

namespace A269112

/-- `and(-2, ∑[3*n])+3` -/
def P9939133178124150140.Spec : Prop :=
  ∀ n, P9939133178124150140.a n = A269112 (n + 1)

end A269112

/-! ## A269112.P18098622416310945533

`Δ[A229183(n)+A004525(n)]`
-/

namespace A269112.P18098622416310945533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229183 n + A004525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269112.P18098622416310945533

namespace A269112

/-- `Δ[A229183(n)+A004525(n)]` -/
def P18098622416310945533.Spec : Prop :=
  ∀ n, P18098622416310945533.a n = A269112 (n + 1)

end A269112

/-! ## A269112.P3768994332595850684

`xor(Δ[A004525(n)], A139482(n+2))`
-/

namespace A269112.P3768994332595850684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (n + 1) - f1 n) (A139482 (n + 2))

end

end A269112.P3768994332595850684

namespace A269112

/-- `xor(Δ[A004525(n)], A139482(n+2))` -/
def P3768994332595850684.Spec : Prop :=
  ∀ n, P3768994332595850684.a n = A269112 (n + 1)

end A269112

/-! ## A269112.P4167786910043255778

`A000027(or(1, C(n+2, 2)+n²+1))`
-/

namespace A269112.P4167786910043255778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Nat.lor 1 (Nat.choose (n + 2) 2 + n ^ 2 + 1))

end

end A269112.P4167786910043255778

namespace A269112

/-- `A000027(or(1, C(n+2, 2)+n²+1))` -/
def P4167786910043255778.Spec : Prop :=
  ∀ n, P4167786910043255778.a n = A269112 (n + 1)

end A269112

/-! ## A269112.P831358490904574243

`A319702(or(2, A003215(n)))`
-/

namespace A269112.P831358490904574243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319702 (Int.lor 2 (A003215 n)).toNat

end

end A269112.P831358490904574243

namespace A269112

/-- `A319702(or(2, A003215(n)))` -/
def P831358490904574243.Spec : Prop :=
  ∀ n, P831358490904574243.a n = A269112 (n + 1)

end A269112

/-! ## A269112.P15031716766973897553

`A047270(∑[n]+1)`
-/

namespace A269112.P15031716766973897553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047270 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A269112.P15031716766973897553

namespace A269112

/-- `A047270(∑[n]+1)` -/
def P15031716766973897553.Spec : Prop :=
  ∀ n, P15031716766973897553.a n = A269112 (n + 1)

end A269112

/-! ## A269112.P10342808856421912754

`A005408(A281026(n)+1)`
-/

namespace A269112.P10342808856421912754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A281026 n + 1).toNat

end

end A269112.P10342808856421912754

namespace A269112

/-- `A005408(A281026(n)+1)` -/
def P10342808856421912754.Spec : Prop :=
  ∀ n, P10342808856421912754.a n = A269112 (n + 1)

end A269112

/-! ## A269112.P8935958604317179156

`A004273(A281026(n)+2)`
-/

namespace A269112.P8935958604317179156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A281026 n + 2).toNat

end

end A269112.P8935958604317179156

namespace A269112

/-- `A004273(A281026(n)+2)` -/
def P8935958604317179156.Spec : Prop :=
  ∀ n, P8935958604317179156.a n = A269112 (n + 1)

end A269112

/-! ## A269112.P1001143246489532801

`A005408(A001651(∑[n]+1))`
-/

namespace A269112.P1001143246489532801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A001651 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A269112.P1001143246489532801

namespace A269112

/-- `A005408(A001651(∑[n]+1))` -/
def P1001143246489532801.Spec : Prop :=
  ∀ n, P1001143246489532801.a n = A269112 (n + 1)

end A269112

/-! ## A269112.P8118336697383340900

`A004273(A032766(∑[n])+2)`
-/

namespace A269112.P8118336697383340900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A032766 (∑ j ∈ Finset.range (n + 1), f1 j) + 2).toNat

end

end A269112.P8118336697383340900

namespace A269112

/-- `A004273(A032766(∑[n])+2)` -/
def P8118336697383340900.Spec : Prop :=
  ∀ n, P8118336697383340900.a n = A269112 (n + 1)

end A269112

/-! ## A269112.P18104024160748518913

`A047271(∑[A047273(n+1)]+2)`
-/

namespace A269112.P18104024160748518913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047273 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047271 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A269112.P18104024160748518913

namespace A269112

/-- `A047271(∑[A047273(n+1)]+2)` -/
def P18104024160748518913.Spec : Prop :=
  ∀ n, P18104024160748518913.a n = A269112 (n + 1)

end A269112

/-! ## A269112.P5808222933452215436

`record[(A004277(A032766(n)+2)-1)*A010054(n)]`
-/

namespace A269112.P5808222933452215436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004277 (A032766 n + 2).toNat - 1) * A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269112.P5808222933452215436

namespace A269112

/-- `record[(A004277(A032766(n)+2)-1)*A010054(n)]` -/
def P5808222933452215436.Spec : Prop :=
  ∀ n, P5808222933452215436.a n = A269112 (n + 1)

end A269112

/-! ## A269112.P6778903919838932788

`A047247(2*(∑[n]+1))`
-/

namespace A269112.P6778903919838932788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047247 (2 * (∑ j ∈ Finset.range (n + 1), f1 j + 1))

end

end A269112.P6778903919838932788

namespace A269112

/-- `A047247(2*(∑[n]+1))` -/
def P6778903919838932788.Spec : Prop :=
  ∀ n, P6778903919838932788.a n = A269112 (n + 1)

end A269112

/-! ## A269112.P11051798867207169080

`A047250(2*(∑[n]+1))`
-/

namespace A269112.P11051798867207169080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047250 (2 * (∑ j ∈ Finset.range (n + 1), f1 j + 1))

end

end A269112.P11051798867207169080

namespace A269112

/-- `A047250(2*(∑[n]+1))` -/
def P11051798867207169080.Spec : Prop :=
  ∀ n, P11051798867207169080.a n = A269112 (n + 1)

end A269112

/-!
# A269113: Number of sequences with 3 copies each of 1,2,...,n avoiding the pattern 12...n.

The programs for A269113, there is no canonical definition to state claims against.
-/

/-! ## A269113.P18310215994572885438

`A014606(n)-A047910(n)`
-/

namespace A269113.P18310215994572885438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014606 n - A047910 n

end

end A269113.P18310215994572885438

/-! ## A269113.P1221070780126529118

`n!*A025035(n)-A047910(n)`
-/

namespace A269113.P1221070780126529118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A025035 n - A047910 n

end

end A269113.P1221070780126529118

/-! ## A269113.P2590689423934846692

`∏[A205545(∑[n+2])]-A047910(n)`
-/

namespace A269113.P2590689423934846692
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205545 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A047910 n

end

end A269113.P2590689423934846692

/-! ## A269113.P3219093839631069617

`A269129(∑[n+3]+n+3)`
-/

namespace A269113.P3219093839631069617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269129 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A269113.P3219093839631069617

/-! ## A269113.P14167056316013671335

`A060538(∑[n+2]-1)-A047910(n)`
-/

namespace A269113.P14167056316013671335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060538 (∑ j ∈ Finset.range (n + 1), f1 j - 1) - A047910 n

end

end A269113.P14167056316013671335

/-!
# A269114: Number of sequences with 4 copies each of 1,2,...,n avoiding the pattern 12...n.

The programs for A269114, there is no canonical definition to state claims against.
-/

/-! ## A269114.P7414769394139167929

`A014608(n)-A268847(n)`
-/

namespace A269114.P7414769394139167929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014608 n - A268847 n

end

end A269114.P7414769394139167929

/-! ## A269114.P10374076228262723295

`A269129(A052905(n+2))`
-/

namespace A269114.P10374076228262723295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269129 (A052905 (n + 2)).toNat

end

end A269114.P10374076228262723295

/-! ## A269114.P3826188454737567441

`A269129(A056115(n)+10)`
-/

namespace A269114.P3826188454737567441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269129 (A056115 n + 10).toNat

end

end A269114.P3826188454737567441

/-! ## A269114.P5846604906257148031

`A269129(eq[4, A025581(n)])`
-/

namespace A269114.P5846604906257148031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269129 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269114.P5846604906257148031

/-! ## A269114.P18384380176789001770

`A269129(eq[9, A099375(n)])`
-/

namespace A269114.P18384380176789001770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269129 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269114.P18384380176789001770

/-!
# A269115: Number of sequences with 5 copies each of 1,2,...,n avoiding the pattern 12...n.

The programs for A269115, there is no canonical definition to state claims against.
-/

/-! ## A269115.P5089944809350301836

`A014609(n)-A268848(n)`
-/

namespace A269115.P5089944809350301836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014609 n - A268848 n

end

end A269115.P5089944809350301836

/-! ## A269115.P5316754239364811816

`A269129(A055999(n+3))`
-/

namespace A269115.P5316754239364811816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269129 (A055999 (n + 3)).toNat

end

end A269115.P5316754239364811816

/-! ## A269115.P214295553153713298

`A269129(Δ[A023551(n+1)])`
-/

namespace A269115.P214295553153713298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269129 (f1 (n + 1) - f1 n).toNat

end

end A269115.P214295553153713298

/-! ## A269115.P9860737520719017990

`A269129(A167499(n+3)+2*n)`
-/

namespace A269115.P9860737520719017990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269129 (A167499 (n + 3) + (2 * n : ℤ)).toNat

end

end A269115.P9860737520719017990

/-!
# A269116: Number of sequences with 6 copies each of 1,2,...,n avoiding the pattern 12...n.

The programs for A269116, there is no canonical definition to state claims against.
-/

/-! ## A269116.P14696599757743402465

`A269129(eq[6, A025581(n)])`
-/

namespace A269116.P14696599757743402465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269129 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269116.P14696599757743402465

/-!
# A269117: Number of sequences with 7 copies each of 1,2,...,n avoiding the pattern 12...n.

The programs for A269117, there is no canonical definition to state claims against.
-/

/-! ## A269117.P9065386930892044964

`A172603(n)-A268850(n)`
-/

namespace A269117.P9065386930892044964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172603 n - A268850 n

end

end A269117.P9065386930892044964

/-! ## A269117.P5142420529210454683

`A269129(eq[7, A025581(n)])`
-/

namespace A269117.P5142420529210454683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269129 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269117.P5142420529210454683

/-! ## A269117.P11674776556032063171

`A269129(A000096(n+7)-7)`
-/

namespace A269117.P11674776556032063171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269129 (A000096 (n + 7) - 7).toNat

end

end A269117.P11674776556032063171

/-!
# A269121: Number of sequences with n copies each of 1,2,3 avoiding the pattern 123.

The programs for A269121, there is no canonical definition to state claims against.
-/

/-! ## A269121.P675480776646469387

`A269129(∑[n+3]+6)`
-/

namespace A269121.P675480776646469387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269129 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A269121.P675480776646469387

/-! ## A269121.P15146992465414790394

`record[A269129(A238531(n)+1)]`
-/

namespace A269121.P15146992465414790394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269129 (A238531 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269121.P15146992465414790394

/-! ## A269121.P1206103270424593034

`record[A269129(A212342(n)+4)]`
-/

namespace A269121.P1206103270424593034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269129 (A212342 n + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269121.P1206103270424593034

/-! ## A269121.P6045360365245850733

`A269129(A052905(n)+8)^ceil(sin(n)²)`
-/

namespace A269121.P6045360365245850733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269129 (A052905 n + 8).toNat : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

end

end A269121.P6045360365245850733

/-! ## A269121.P1212081966687619355

`or(A062892(n), A269129(A152950(n+4)))`
-/

namespace A269121.P1212081966687619355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A062892 n) (A269129 (A152950 (n + 4)).toNat)

end

end A269121.P1212081966687619355

/-!
# A269122: Number of sequences with n copies each of 1,2,3,4 avoiding the pattern 1234.

The programs for A269122, there is no canonical definition to state claims against.
-/

/-! ## A269122.P4988431296260475868

`A269129(A155212(n)+12)`
-/

namespace A269122.P4988431296260475868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269129 (A155212 n + 12).toNat

end

end A269122.P4988431296260475868

/-! ## A269122.P9177840025221888620

`A269129(eq[4, A002262(n)])`
-/

namespace A269122.P9177840025221888620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269129 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269122.P9177840025221888620

/-! ## A269122.P8289450647977285699

`record[A269129(A133825(n)+4)]`
-/

namespace A269122.P8289450647977285699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269129 (A133825 n + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269122.P8289450647977285699

/-! ## A269122.P6267685243055499383

`A269129(A167614(n+3)+1)`
-/

namespace A269122.P6267685243055499383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269129 (A167614 (n + 3) + 1).toNat

end

end A269122.P6267685243055499383

/-! ## A269122.P16803224752437068111

`A269129(A167499(n+3)-1)`
-/

namespace A269122.P16803224752437068111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269129 (A167499 (n + 3) - 1).toNat

end

end A269122.P16803224752437068111

/-!
# A269123: Number of sequences with n copies each of 1,2,...,5 avoiding the pattern 12...5.

The programs for A269123, there is no canonical definition to state claims against.
-/

/-! ## A269123.P9227496273242469210

`A269129(eq[5, A002262(n)])`
-/

namespace A269123.P9227496273242469210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269129 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269123.P9227496273242469210

/-! ## A269123.P12170951997230008366

`A269129(eq[6, A002260(n+1)])`
-/

namespace A269123.P12170951997230008366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269129 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269123.P12170951997230008366

/-! ## A269123.P6185589790296457061

`record[A269129(A167614(n+1)+2)]`
-/

namespace A269123.P6185589790296457061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269129 (A167614 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269123.P6185589790296457061

/-! ## A269123.P1523316735514324000

`A269129(A055999(n+3)-(n-5))`
-/

namespace A269123.P1523316735514324000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269129 (A055999 (n + 3) - ((n : ℤ) - 5)).toNat

end

end A269123.P1523316735514324000

/-!
# A269124: Number of sequences with n copies each of 1,2,...,6 avoiding the pattern 12...6.

The programs for A269124, there is no canonical definition to state claims against.
-/

/-! ## A269124.P2644519277489675071

`A269129(eq[6, A002262(n)])`
-/

namespace A269124.P2644519277489675071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269129 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269124.P2644519277489675071

/-! ## A269124.P8479311520180251313

`record[A269129(A167614(n+1)+3)]`
-/

namespace A269124.P8479311520180251313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269129 (A167614 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269124.P8479311520180251313

/-!
# A269125: 

The programs for A269125, there is no canonical definition to state claims against.
-/

/-! ## A269125.P16625743749726227119

`A269129(eq[8, A002260(n+1)])`
-/

namespace A269125.P16625743749726227119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269129 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269125.P16625743749726227119

/-!
# A269126: 

The programs for A269126, there is no canonical definition to state claims against.
-/

/-! ## A269126.P278458946423846972

`A269129(eq[8, A002262(n)])`
-/

namespace A269126.P278458946423846972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269129 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269126.P278458946423846972

/-! ## A269126.P879736122765636674

`A269129(eq[8, A144328(n+1)])`
-/

namespace A269126.P879736122765636674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269129 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269126.P879736122765636674

/-! ## A269126.P11270515716773938456

`A269129(eq[10, A002260(n+1)+1])`
-/

namespace A269126.P11270515716773938456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269129 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269126.P11270515716773938456

/-!
# A269127: 

The programs for A269127, there is no canonical definition to state claims against.
-/

/-! ## A269127.P12864766894155620279

`A269129(eq[9, A144328(n+1)])`
-/

namespace A269127.P12864766894155620279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269129 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269127.P12864766894155620279

/-!
# A269128: 

The programs for A269128, there is no canonical definition to state claims against.
-/

/-! ## A269128.P660607225747771107

`A269129(eq[9, A144328(n+1)]+n+11)`
-/

namespace A269128.P660607225747771107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269129 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + n + 11)

end

end A269128.P660607225747771107

/-!
# A269129: Number A(n,k) of sequences with k copies each of 1,2,...,n avoiding the pattern 12...n; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A269129, there is no canonical definition to state claims against.
-/

/-! ## A269129.P533526024581761893

`A320606(n+1)%A090104(A008574(n))`
-/

namespace A269129.P533526024581761893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320606 (n + 1)) (A090104 (A008574 n).toNat)

end

end A269129.P533526024581761893

/-! ## A269129.P2374036541116401810

`A240500(A265373(n+1)+4)%A176004(A192861(n+1))`
-/

namespace A269129.P2374036541116401810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240500 (A265373 (n + 1) + 4).toNat) (A176004 (A192861 (n + 1)).toNat)

end

end A269129.P2374036541116401810

/-! ## A269129.P2595972544115038231

`A206442(A194540(n+1))`
-/

namespace A269129.P2595972544115038231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206442 (A194540 (n + 1)).toNat

end

end A269129.P2595972544115038231

/-! ## A269129.P5102551645318358063

`A218024(A212163(n+1))%A373700(n)`
-/

namespace A269129.P5102551645318358063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A218024 (A212163 (n + 1)).toNat) (A373700 n)

end

end A269129.P5102551645318358063

/-! ## A269129.P5493372229521327770

`A256655(A364113(n))%A331154(n+1)`
-/

namespace A269129.P5493372229521327770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256655 (A364113 n).toNat) (A331154 (n + 1))

end

end A269129.P5493372229521327770

/-!
# A269130: a(n) = n + (n base 2 regarded as a decimal number).

The programs for A269130, the canonical program `A269130.P11293985648693636355` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269130 has offset 0).

The definition of A269130 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A269130.P11293985648693636355

`A007088(n)+n`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A269130

/-- `A007088(n)+n` -/
def P11293985648693636355.Spec : Prop :=
  ∀ n, P11293985648693636355.a n = A269130 n

theorem P11293985648693636355.correct : P11293985648693636355.Spec := by
  intro n
  simp only [A269130]

end A269130

/-! ## A269130.P5298430974047336928

`sqrt(A063009(n))+n`
-/

namespace A269130.P5298430974047336928
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A063009 n : ℝ) + (n : ℝ)

end

end A269130.P5298430974047336928

namespace A269130

/-- `sqrt(A063009(n))+n` -/
def P5298430974047336928.Spec : Prop :=
  ∀ n, P5298430974047336928.a n = (A269130 n : ℝ)

end A269130

/-! ## A269130.P7435557376709460207

`A228071(n)+2*n`
-/

namespace A269130.P7435557376709460207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228071 n + (2 * n : ℤ)

end

end A269130.P7435557376709460207

namespace A269130

/-- `A228071(n)+2*n` -/
def P7435557376709460207.Spec : Prop :=
  ∀ n, P7435557376709460207.a n = A269130 n

end A269130

/-! ## A269130.P1782062104742054577

`A204093(n)/6+n`
-/

namespace A269130.P1782062104742054577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204093 n : ℚ) / 6 + (n : ℚ)

end

end A269130.P1782062104742054577

namespace A269130

/-- `A204093(n)/6+n` -/
def P1782062104742054577.Spec : Prop :=
  ∀ n, P1782062104742054577.a n = (A269130 n : ℚ)

end A269130

/-! ## A269130.P11350913409405936808

`A204094(n)/7+n`
-/

namespace A269130.P11350913409405936808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204094 n : ℚ) / 7 + (n : ℚ)

end

end A269130.P11350913409405936808

namespace A269130

/-- `A204094(n)/7+n` -/
def P11350913409405936808.Spec : Prop :=
  ∀ n, P11350913409405936808.a n = (A269130 n : ℚ)

end A269130

/-! ## A269130.P5751673942510156403

`A204095(n)/8+n`
-/

namespace A269130.P5751673942510156403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204095 n : ℚ) / 8 + (n : ℚ)

end

end A269130.P5751673942510156403

namespace A269130

/-- `A204095(n)/8+n` -/
def P5751673942510156403.Spec : Prop :=
  ∀ n, P5751673942510156403.a n = (A269130 n : ℚ)

end A269130

/-! ## A269130.P4612301109977841161

`A097256(n)/9+n`
-/

namespace A269130.P4612301109977841161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097256 n : ℚ) / 9 + (n : ℚ)

end

end A269130.P4612301109977841161

namespace A269130

/-- `A097256(n)/9+n` -/
def P4612301109977841161.Spec : Prop :=
  ∀ n, P4612301109977841161.a n = (A269130 n : ℚ)

end A269130

/-! ## A269130.P17832861817051005083

`A099820(n)/10+n`
-/

namespace A269130.P17832861817051005083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099820 n : ℚ) / 10 + (n : ℚ)

end

end A269130.P17832861817051005083

namespace A269130

/-- `A099820(n)/10+n` -/
def P17832861817051005083.Spec : Prop :=
  ∀ n, P17832861817051005083.a n = (A269130 n : ℚ)

end A269130

/-! ## A269130.P6261227042267772828

`A169965(n+1)/2+n`
-/

namespace A269130.P6261227042267772828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169965 (n + 1) : ℚ) / 2 + (n : ℚ)

end

end A269130.P6261227042267772828

namespace A269130

/-- `A169965(n+1)/2+n` -/
def P6261227042267772828.Spec : Prop :=
  ∀ n, P6261227042267772828.a n = (A269130 n : ℚ)

end A269130

/-! ## A269130.P6364301973182055753

`A169966(n+1)/3+n`
-/

namespace A269130.P6364301973182055753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169966 (n + 1) : ℚ) / 3 + (n : ℚ)

end

end A269130.P6364301973182055753

namespace A269130

/-- `A169966(n+1)/3+n` -/
def P6364301973182055753.Spec : Prop :=
  ∀ n, P6364301973182055753.a n = (A269130 n : ℚ)

end A269130

/-! ## A269130.P3591448162122262702

`A169967(n+1)/4+n`
-/

namespace A269130.P3591448162122262702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169967 (n + 1) : ℚ) / 4 + (n : ℚ)

end

end A269130.P3591448162122262702

namespace A269130

/-- `A169967(n+1)/4+n` -/
def P3591448162122262702.Spec : Prop :=
  ∀ n, P3591448162122262702.a n = (A269130 n : ℚ)

end A269130

/-! ## A269130.P17573880715675743395

`A169964(n+1)/5+n`
-/

namespace A269130.P17573880715675743395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169964 (n + 1) : ℚ) / 5 + (n : ℚ)

end

end A269130.P17573880715675743395

namespace A269130

/-- `A169964(n+1)/5+n` -/
def P17573880715675743395.Spec : Prop :=
  ∀ n, P17573880715675743395.a n = (A269130 n : ℚ)

end A269130

/-! ## A269130.P11878837185422769058

`A303596(A372060(n))+n`
-/

namespace A269130.P11878837185422769058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303596 (A372060 n).toNat + (n : ℤ)

end

end A269130.P11878837185422769058

namespace A269130

/-- `A303596(A372060(n))+n` -/
def P11878837185422769058.Spec : Prop :=
  ∀ n, P11878837185422769058.a n = A269130 n

end A269130

/-! ## A269130.P13345860082878845689

`A169965(n+1)-A228071(n)`
-/

namespace A269130.P13345860082878845689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169965 (n + 1) - A228071 n

end

end A269130.P13345860082878845689

namespace A269130

/-- `A169965(n+1)-A228071(n)` -/
def P13345860082878845689.Spec : Prop :=
  ∀ n, P13345860082878845689.a n = A269130 n

end A269130

/-! ## A269130.P6550438712385201475

`A099820(n)+n-A097256(n)`
-/

namespace A269130.P6550438712385201475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099820 n + ((n : ℤ) - A097256 n)

end

end A269130.P6550438712385201475

namespace A269130

/-- `A099820(n)+n-A097256(n)` -/
def P6550438712385201475.Spec : Prop :=
  ∀ n, P6550438712385201475.a n = A269130 n

end A269130

/-! ## A269130.P14042239366489477346

`A097256(n)+n-A204095(n)`
-/

namespace A269130.P14042239366489477346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097256 n + ((n : ℤ) - A204095 n)

end

end A269130.P14042239366489477346

namespace A269130

/-- `A097256(n)+n-A204095(n)` -/
def P14042239366489477346.Spec : Prop :=
  ∀ n, P14042239366489477346.a n = A269130 n

end A269130

/-! ## A269130.P16458540222411646992

`A204094(n)+n-A204093(n)`
-/

namespace A269130.P16458540222411646992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204094 n + ((n : ℤ) - A204093 n)

end

end A269130.P16458540222411646992

namespace A269130

/-- `A204094(n)+n-A204093(n)` -/
def P16458540222411646992.Spec : Prop :=
  ∀ n, P16458540222411646992.a n = A269130 n

end A269130

/-! ## A269130.P6260959078957211351

`A204095(n)+n-A204094(n)`
-/

namespace A269130.P6260959078957211351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204095 n + ((n : ℤ) - A204094 n)

end

end A269130.P6260959078957211351

namespace A269130

/-- `A204095(n)+n-A204094(n)` -/
def P6260959078957211351.Spec : Prop :=
  ∀ n, P6260959078957211351.a n = A269130 n

end A269130

/-! ## A269130.P16377812872127687579

`A005843(n)-(n-A007088(n))`
-/

namespace A269130.P16377812872127687579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A007088 n)

end

end A269130.P16377812872127687579

namespace A269130

/-- `A005843(n)-(n-A007088(n))` -/
def P16377812872127687579.Spec : Prop :=
  ∀ n, P16377812872127687579.a n = A269130 n

end A269130

/-! ## A269130.P14410058275256389137

`A304747(A303768(n))+n`
-/

namespace A269130.P14410058275256389137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304747 (A303768 n).toNat + (n : ℤ)

end

end A269130.P14410058275256389137

namespace A269130

/-- `A304747(A303768(n))+n` -/
def P14410058275256389137.Spec : Prop :=
  ∀ n, P14410058275256389137.a n = A269130 n

end A269130

/-!
# A269131: Composite numbers whose largest prime factor is less than its second-largest prime factor's square, counting with multiplicity so that the factors of 18 are 2, 3, 3.

The programs for A269131, the canonical program `A269131.P18050009999626695120` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269131 has offset 1).

The definition of A269131 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3404 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269131.P13200700806264623133

`∩[A002808(n+1), comp[A245729(n+1)]]`
-/

namespace A269131.P13200700806264623133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245729 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A269131.P13200700806264623133

namespace A269131

/-- `∩[A002808(n+1), comp[A245729(n+1)]]` -/
def P13200700806264623133.Spec : Prop :=
  ∀ n, (P13200700806264623133.a n : ℤ) = A269131 (n + 1)

end A269131

/-! ## A269131.P18050009999626695120

`lt[A006530(n+1), A087039(n+1)²]+1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A269131

/-- `lt[A006530(n+1), A087039(n+1)²]+1` -/
def P18050009999626695120.Spec : Prop :=
  ∀ n, (P18050009999626695120.a n : ℤ) = A269131 (n + 1)

theorem P18050009999626695120.correct : P18050009999626695120.Spec := by
  intro n
  simp only [A269131, Nat.add_sub_cancel]

end A269131

/-! ## A269131.P8294238665661267128

`eq[char[A245729(n+1)], A339579(n+1)]`
-/

namespace A269131.P8294238665661267128
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245729 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A269131.P8294238665661267128

namespace A269131

/-- `eq[char[A245729(n+1)], A339579(n+1)]` -/
def P8294238665661267128.Spec : Prop :=
  ∀ n, (P8294238665661267128.a n : ℤ) = A269131 (n + 1)

end A269131

/-! ## A269131.P10295034231966253167

`lt[2, A363219(n+1)]+1`
-/

namespace A269131.P10295034231966253167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363219 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A269131.P10295034231966253167

namespace A269131

/-- `lt[2, A363219(n+1)]+1` -/
def P10295034231966253167.Spec : Prop :=
  ∀ n, (P10295034231966253167.a n : ℤ) = A269131 (n + 1)

end A269131

/-! ## A269131.P2865175438254665242

`A007095(2*n+3)-A010815(A317674(n+1))`
-/

namespace A269131.P2865175438254665242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (2 * n + 3) - A010815 (A317674 (n + 1)).toNat

end

end A269131.P2865175438254665242

namespace A269131

/-- `A007095(2*n+3)-A010815(A317674(n+1))` -/
def P2865175438254665242.Spec : Prop :=
  ∀ n, P2865175438254665242.a n = A269131 (n + 1)

end A269131

/-!
# A269132: a(n) = n + floor(n*(2*n+1)/5).

The programs for A269132, the canonical program `A269132.P12476869420759248580` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269132 has offset 0).

The definition of A269132 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+floor(n*(2*n+1)/5)` (program `A269132.P12476869420759248580`, by `A269132.P12476869420759248580.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A269132.P16928033776815293565

`floor(2*n*(n+3)/5)`
-/

namespace A269132.P16928033776815293565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n * (n + 3) : ℚ) / 5⌋

end

end A269132.P16928033776815293565

namespace A269132

/-- `floor(2*n*(n+3)/5)` -/
def P16928033776815293565.Spec : Prop :=
  ∀ n, P16928033776815293565.a n = A269132 n

end A269132

/-! ## A269132.P12476869420759248580

`n+floor(n*(2*n+1)/5)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A269132

/-- `n+floor(n*(2*n+1)/5)` -/
def P12476869420759248580.Spec : Prop :=
  ∀ n, P12476869420759248580.a n = A269132 n

theorem P12476869420759248580.correct : P12476869420759248580.Spec := by
  intro n
  simp only [A269132]

end A269132

/-! ## A269132.P7585827690249352995

`record[floor(2*n*(n-3)/5)]`
-/

namespace A269132.P7585827690249352995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * ((n : ℤ) * ((n : ℤ) - 3)) : ℚ) / 5⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269132.P7585827690249352995

namespace A269132

/-- `record[floor(2*n*(n-3)/5)]` -/
def P7585827690249352995.Spec : Prop :=
  ∀ n, P7585827690249352995.a n = A269132 n

end A269132

/-! ## A269132.P7896496558146977062

`∑[a(n-5)+4]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=3, a(4)=4, a(5)=5`
-/

namespace A269132.P7896496558146977062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 3, 4, 5] fun n f1 =>
  f1 (n - 5) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269132.P7896496558146977062

namespace A269132

/-- `∑[a(n-5)+4]` -/
def P7896496558146977062.Spec : Prop :=
  ∀ n, (P7896496558146977062.a n : ℤ) = A269132 n

end A269132

/-! ## A269132.P1905742025221358358

`round(2*(lcm(n+1, n+2)-3)/5)`
-/

namespace A269132.P1905742025221358358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 * (((Nat.lcm (n + 1) (n + 2) : ℤ) - 3 : ℚ) / 5))

end

end A269132.P1905742025221358358

namespace A269132

/-- `round(2*(lcm(n+1, n+2)-3)/5)` -/
def P1905742025221358358.Spec : Prop :=
  ∀ n, P1905742025221358358.a n = A269132 n

end A269132

/-! ## A269132.P16381780820108377296

`(A211435(n+1)-3)/2`
-/

namespace A269132.P16381780820108377296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211435 (n + 1) - 3 : ℚ) / 2

end

end A269132.P16381780820108377296

namespace A269132

/-- `(A211435(n+1)-3)/2` -/
def P16381780820108377296.Spec : Prop :=
  ∀ n, P16381780820108377296.a n = (A269132 n : ℚ)

end A269132

/-!
# A269133: Number of ways to place m nonattacking queens on an m X n board, 1 <= m <= n (triangular array).

The programs for A269133, there is no canonical definition to state claims against.
-/

/-! ## A269133.P45705672045888755

`A319284(comp[∑[n]])`
-/

namespace A269133.P45705672045888755
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319284 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A269133.P45705672045888755

/-! ## A269133.P17187959445326468359

`or(char[3], A319284(A014132(n+1)))`
-/

namespace A269133.P17187959445326468359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A319284 (A014132 (n + 1)).toNat)

end

end A269133.P17187959445326468359

/-! ## A269133.P6896893882851910053

`char[A057502(n)]*A319284(A014132(n+1))`
-/

namespace A269133.P6896893882851910053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057502 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A319284 (A014132 (n + 1)).toNat

end

end A269133.P6896893882851910053

/-! ## A269133.P5028020962401947036

`char[A057510(n)]*A319284(A014132(n+1))`
-/

namespace A269133.P5028020962401947036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057510 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A319284 (A014132 (n + 1)).toNat

end

end A269133.P5028020962401947036

/-! ## A269133.P2560696083051538016

`char[A131159(n)]*A319284(A014132(n+1))`
-/

namespace A269133.P2560696083051538016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131159 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A319284 (A014132 (n + 1)).toNat

end

end A269133.P2560696083051538016

/-! ## A269133.P18192817556916745199

`A319284(A014132(n+1))+A000007(n+4)`
-/

namespace A269133.P18192817556916745199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319284 (A014132 (n + 1)).toNat + A000007 (n + 4)

end

end A269133.P18192817556916745199

/-! ## A269133.P10101659177197969158

`A007318(C(2, n))*A319284(A014132(n+1))`
-/

namespace A269133.P10101659177197969158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A319284 (A014132 (n + 1)).toNat

end

end A269133.P10101659177197969158

/-! ## A269133.P3034939419205141157

`A319284(A014132(n+1))+A008683(4*(n+1))`
-/

namespace A269133.P3034939419205141157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319284 (A014132 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A269133.P3034939419205141157

/-! ## A269133.P17762427131586486663

`A319284(A014132(n+1))+A073424(3*n+2)`
-/

namespace A269133.P17762427131586486663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319284 (A014132 (n + 1)).toNat + A073424 (3 * n + 2)

end

end A269133.P17762427131586486663

/-! ## A269133.P9054286915995986112

`A319284(A007401(n+1)+1)%A000041(n+2)`
-/

namespace A269133.P9054286915995986112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319284 (A007401 (n + 1) + 1).toNat) (A000041 (n + 2))

end

end A269133.P9054286915995986112

/-!
# A269134: Number of combinatory separations of normal multisets of weight n.

The programs for A269134, there is no canonical definition to state claims against.
-/

/-! ## A269134.P9407863250936039523

`or(A026652(n+1), A180196(A026656(n)))`
-/

namespace A269134.P9407863250936039523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A026652 (n + 1)) (A180196 (A026656 n).toNat)

end

end A269134.P9407863250936039523

/-!
# A269135: Numbers n which are neither a prime nor a square of a prime such that there is no d, 2<=d<=n/2, which divides binomial(n-d-1,d-1) and is not coprime to n.

The programs for A269135, there is no canonical definition to state claims against.
-/

/-! ## A269135.P14082112185243132289

`∩[A138389(n+1), A139118(n+1)]`
-/

namespace A269135.P14082112185243132289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269135.P14082112185243132289

/-! ## A269135.P1252560528768259244

`∩[eq[0, A178101(n+1)]+1, A139118(n+1)]`
-/

namespace A269135.P1252560528768259244
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178101 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A269135.P1252560528768259244

/-!
# A269136: Number of n X n 0..3 arrays with some element plus some horizontally, antidiagonally or vertically adjacent neighbor totalling three no more than once.

The programs for A269136, there is no canonical definition to state claims against.
-/

/-! ## A269136.P1713712193131862920

`A269143(∑[4*n]+1)`
-/

namespace A269136.P1713712193131862920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269143 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A269136.P1713712193131862920

/-!
# A269137: Number of n X 2 0..3 arrays with some element plus some horizontally, antidiagonally or vertically adjacent neighbor totalling three no more than once.

The programs for A269137, there is no canonical definition to state claims against.
-/

/-! ## A269137.P15314857245614271030

`A269143(∑[n+1]+2)`
-/

namespace A269137.P15314857245614271030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269143 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A269137.P15314857245614271030

/-! ## A269137.P3683530577684259477

`record[A269143(A114091(n+1)+1)]`
-/

namespace A269137.P3683530577684259477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269143 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269137.P3683530577684259477

/-! ## A269137.P17596909860729387497

`record[A023531(n)*A269143(n+3)]`
-/

namespace A269137.P17596909860729387497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A269143 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269137.P17596909860729387497

/-! ## A269137.P3612950510679827418

`record[root(A269143(n+1), A131818(n+1))²]`
-/

namespace A269137.P3612950510679827418
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A269143 (n + 1) : ℝ) ^ (1 / (A131818 (n + 1) : ℝ))) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269137.P3612950510679827418

/-! ## A269137.P4916694966209163314

`record[A269143(Δ[A003453(n+5)])]`
-/

namespace A269137.P4916694966209163314
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269143 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269137.P4916694966209163314

/-!
# A269138: Number of nX3 0..3 arrays with some element plus some horizontally, antidiagonally or vertically adjacent neighbor totalling three no more than once.

The programs for A269138, there is no canonical definition to state claims against.
-/

/-! ## A269138.P16812622087848237076

`A269143(∑[n+2]+4)`
-/

namespace A269138.P16812622087848237076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269143 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A269138.P16812622087848237076

/-! ## A269138.P7335929365341306640

`lcm(2, A269143(A167614(n+1)))`
-/

namespace A269138.P7335929365341306640
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A269143 (A167614 (n + 1)).toNat)

end

end A269138.P7335929365341306640

/-! ## A269138.P3259891719617450779

`A269143(A167614(n+1))+A178798(n)`
-/

namespace A269138.P3259891719617450779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269143 (A167614 (n + 1)).toNat + A178798 n

end

end A269138.P3259891719617450779

/-! ## A269138.P13981955785232866143

`A269143(A167614(n+1))+A185264(n)`
-/

namespace A269138.P13981955785232866143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269143 (A167614 (n + 1)).toNat + A185264 n

end

end A269138.P13981955785232866143

/-! ## A269138.P12246079990667401808

`A139039(n+1)*A269143(A167614(n+1))`
-/

namespace A269138.P12246079990667401808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139039 (n + 1) * A269143 (A167614 (n + 1)).toNat

end

end A269138.P12246079990667401808

/-!
# A269139: Number of nX4 0..3 arrays with some element plus some horizontally, antidiagonally or vertically adjacent neighbor totalling three no more than once.

The programs for A269139, there is no canonical definition to state claims against.
-/

/-! ## A269139.P15629211304362360171

`A269143(A374004(n+1))`
-/

namespace A269139.P15629211304362360171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269143 (A374004 (n + 1)).toNat

end

end A269139.P15629211304362360171

/-! ## A269139.P9904530910137001596

`A269143(A052905(n)+9)`
-/

namespace A269139.P9904530910137001596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269143 (A052905 n + 9).toNat

end

end A269139.P9904530910137001596

/-! ## A269139.P14965034360122760558

`A269143(A055999(n)+10)`
-/

namespace A269139.P14965034360122760558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269143 (A055999 n + 10).toNat

end

end A269139.P14965034360122760558

/-! ## A269139.P12279944473497447608

`A269143(A167614(n+2)+1)`
-/

namespace A269139.P12279944473497447608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269143 (A167614 (n + 2) + 1).toNat

end

end A269139.P12279944473497447608

/-! ## A269139.P5557854389141406197

`A269143(eq[5, A131818(n+1)])`
-/

namespace A269139.P5557854389141406197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269143 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269139.P5557854389141406197

/-!
# A269140: Number of nX5 0..3 arrays with some element plus some horizontally, antidiagonally or vertically adjacent neighbor totalling three no more than once.

The programs for A269140, there is no canonical definition to state claims against.
-/

/-! ## A269140.P13437825315085838132

`A269143(A374005(n+1))`
-/

namespace A269140.P13437825315085838132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269143 (A374005 (n + 1)).toNat

end

end A269140.P13437825315085838132

/-! ## A269140.P15331645518248155015

`A269143(A167499(n+3))`
-/

namespace A269140.P15331645518248155015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269143 (A167499 (n + 3)).toNat

end

end A269140.P15331645518248155015

/-! ## A269140.P11585679385929204770

`A269143(A000217(n+4)+5)`
-/

namespace A269140.P11585679385929204770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269143 (A000217 (n + 4) + 5).toNat

end

end A269140.P11585679385929204770

/-! ## A269140.P18232872994240819843

`A269143(eq[6, A131818(n+1)])`
-/

namespace A269140.P18232872994240819843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269143 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269140.P18232872994240819843

/-! ## A269140.P7666791174985809806

`A269143(eq[4, A144328(n+1)]+1)`
-/

namespace A269140.P7666791174985809806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269143 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A269140.P7666791174985809806

/-!
# A269141: Number of n X 6 0..3 arrays with some element plus some horizontally, antidiagonally or vertically adjacent neighbor totalling three no more than once.

The programs for A269141, there is no canonical definition to state claims against.
-/

/-! ## A269141.P17635658489677231840

`A269143(A374007(n+1))`
-/

namespace A269141.P17635658489677231840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269143 (A374007 (n + 1)).toNat

end

end A269141.P17635658489677231840

/-! ## A269141.P3250835975901733773

`A269143(A000124(n+6)-(n+1))`
-/

namespace A269141.P3250835975901733773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269143 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A269141.P3250835975901733773

/-! ## A269141.P5368894273043905738

`A269143(A055999(n+3)+1)`
-/

namespace A269141.P5368894273043905738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269143 (A055999 (n + 3) + 1).toNat

end

end A269141.P5368894273043905738

/-! ## A269141.P14158438585356136061

`A269143(Δ[A023551(n+1)]+1)`
-/

namespace A269141.P14158438585356136061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269143 (f1 (n + 1) - f1 n + 1).toNat

end

end A269141.P14158438585356136061

/-! ## A269141.P4323315382595354587

`A269143(Δ[A264443(n+1)]-1)`
-/

namespace A269141.P4323315382595354587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269143 (f1 (n + 1) - f1 n - 1).toNat

end

end A269141.P4323315382595354587

/-!
# A269142: Number of nX7 0..3 arrays with some element plus some horizontally, antidiagonally or vertically adjacent neighbor totalling three no more than once.

The programs for A269142, there is no canonical definition to state claims against.
-/

/-! ## A269142.P17433507849130617778

`A269143(A374008(n+1))`
-/

namespace A269142.P17433507849130617778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269143 (A374008 (n + 1)).toNat

end

end A269142.P17433507849130617778

/-! ## A269142.P8384792685841583041

`A269143(eq[8, A131818(n+1)])`
-/

namespace A269142.P8384792685841583041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269143 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269142.P8384792685841583041

/-! ## A269142.P2459433724567858336

`A269143(eq[6, A144328(n+1)]+1)`
-/

namespace A269142.P2459433724567858336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269143 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A269142.P2459433724567858336

/-!
# A269143: T(n,k)=Number of nXk 0..3 arrays with some element plus some horizontally, antidiagonally or vertically adjacent neighbor totalling three no more than once.

The programs for A269143, there is no canonical definition to state claims against.
-/

/-! ## A269143.P3302313536705558680

`A269152(n+1)+4*A232948(n+1)`
-/

namespace A269143.P3302313536705558680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269152 (n + 1) + 4 * A232948 (n + 1)

end

end A269143.P3302313536705558680

/-! ## A269143.P14060297639737551899

`A269152(n+1)+A008574(A232948(n+1))`
-/

namespace A269143.P14060297639737551899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269152 (n + 1) + A008574 (A232948 (n + 1)).toNat

end

end A269143.P14060297639737551899

/-!
# A269144: Expansion of Product_{k>=1} ((1 + k*x^k) / (1 - 2*x^k)).

The programs for A269144, there is no canonical definition to state claims against.
-/

/-! ## A269144.P16862340593853996389

`∑[A194640(A048493(n))]`
-/

namespace A269144.P16862340593853996389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A048493 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269144.P16862340593853996389

/-! ## A269144.P9353154715262595350

`∑[A024417(A302832(2*n))]`
-/

namespace A269144.P9353154715262595350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A302832 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269144.P9353154715262595350

/-!
# A269145: Number of n X n 0..3 arrays with some element plus some horizontally, antidiagonally or vertically adjacent neighbor totalling three exactly once.

The programs for A269145, there is no canonical definition to state claims against.
-/

/-! ## A269145.P17536865140447146889

`A269152((n+1)²+n²)`
-/

namespace A269145.P17536865140447146889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269152 ((n + 1) ^ 2 + n ^ 2)

end

end A269145.P17536865140447146889

/-!
# A269146: Number of n X 2 0..3 arrays with some element plus some horizontally, antidiagonally or vertically adjacent neighbor totalling three exactly once.

The programs for A269146, there is no canonical definition to state claims against.
-/

/-! ## A269146.P14032356379204425182

`A269152(∑[n+1]+2)`
-/

namespace A269146.P14032356379204425182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269152 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A269146.P14032356379204425182

/-! ## A269146.P4267003414144884241

`record[gcd(A002262(n), A269152(n+2))]`
-/

namespace A269146.P4267003414144884241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A269152 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269146.P4267003414144884241

/-! ## A269146.P18339437508271099580

`record[A269152(A133263(A033182(n)))]`
-/

namespace A269146.P18339437508271099580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269152 (A133263 (A033182 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269146.P18339437508271099580

/-! ## A269146.P2560446137429245704

`record[A269152(Δ[A003453(n+5)])]`
-/

namespace A269146.P2560446137429245704
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269152 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269146.P2560446137429245704

/-! ## A269146.P13079830963283865365

`record[and(A269152(n+2), A326925(n+2))]`
-/

namespace A269146.P13079830963283865365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A269152 (n + 2)) (A326925 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269146.P13079830963283865365

/-!
# A269147: Number of nX3 0..3 arrays with some element plus some horizontally, antidiagonally or vertically adjacent neighbor totalling three exactly once.

The programs for A269147, there is no canonical definition to state claims against.
-/

/-! ## A269147.P15542039050663197715

`A269152(∑[n+2]+4)`
-/

namespace A269147.P15542039050663197715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269152 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A269147.P15542039050663197715

/-! ## A269147.P13914510870288525619

`lcm(2, A269152(A167614(n+1)))`
-/

namespace A269147.P13914510870288525619
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A269152 (A167614 (n + 1)).toNat)

end

end A269147.P13914510870288525619

/-! ## A269147.P15886012693927386924

`A269152(A167614(n+1))+A025469(n)`
-/

namespace A269147.P15886012693927386924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269152 (A167614 (n + 1)).toNat + A025469 n

end

end A269147.P15886012693927386924

/-! ## A269147.P3741265581742359690

`A326291(n+1)+A269152(A167614(n+1))`
-/

namespace A269147.P3741265581742359690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326291 (n + 1) + A269152 (A167614 (n + 1)).toNat

end

end A269147.P3741265581742359690

/-! ## A269147.P7070643090915232226

`A269152(A167614(n+1))*A353801(n+1)`
-/

namespace A269147.P7070643090915232226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269152 (A167614 (n + 1)).toNat * A353801 (n + 1)

end

end A269147.P7070643090915232226

/-!
# A269148: Number of nX4 0..3 arrays with some element plus some horizontally, antidiagonally or vertically adjacent neighbor totalling three exactly once.

The programs for A269148, there is no canonical definition to state claims against.
-/

/-! ## A269148.P9702286916478292962

`A269152(A374004(n+1))`
-/

namespace A269148.P9702286916478292962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269152 (A374004 (n + 1)).toNat

end

end A269148.P9702286916478292962

/-! ## A269148.P11015692942277330725

`A269152(A052905(n)+9)`
-/

namespace A269148.P11015692942277330725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269152 (A052905 n + 9).toNat

end

end A269148.P11015692942277330725

/-! ## A269148.P15733539709622597805

`A269152(A167614(n+2)+1)`
-/

namespace A269148.P15733539709622597805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269152 (A167614 (n + 2) + 1).toNat

end

end A269148.P15733539709622597805

/-! ## A269148.P1346296432956653344

`A269152(A046691(n+1)+8)`
-/

namespace A269148.P1346296432956653344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269152 (A046691 (n + 1) + 8).toNat

end

end A269148.P1346296432956653344

/-! ## A269148.P17010935240042574118

`A269152(Δ[A264443(n)-n²])`
-/

namespace A269148.P17010935240042574118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269152 (f1 (n + 1) - f1 n).toNat

end

end A269148.P17010935240042574118

/-!
# A269149: Number of nX5 0..3 arrays with some element plus some horizontally, antidiagonally or vertically adjacent neighbor totalling three exactly once.

The programs for A269149, there is no canonical definition to state claims against.
-/

/-! ## A269149.P11338601785317397517

`A269152(A374005(n+1))`
-/

namespace A269149.P11338601785317397517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269152 (A374005 (n + 1)).toNat

end

end A269149.P11338601785317397517

/-! ## A269149.P13241152452477403190

`A269152(A046691(n+2)+9)`
-/

namespace A269149.P13241152452477403190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269152 (A046691 (n + 2) + 9).toNat

end

end A269149.P13241152452477403190

/-! ## A269149.P3397961829868637941

`A269152(eq[6, A131818(n+1)])`
-/

namespace A269149.P3397961829868637941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269149.P3397961829868637941

/-! ## A269149.P10489026039095145326

`A269152(Δ[A264443(n)])`
-/

namespace A269149.P10489026039095145326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269152 (f1 (n + 1) - f1 n).toNat

end

end A269149.P10489026039095145326

/-! ## A269149.P14143160909788451489

`A269152(A046691(n+3))`
-/

namespace A269149.P14143160909788451489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269152 (A046691 (n + 3)).toNat

end

end A269149.P14143160909788451489

/-!
# A269150: Number of nX6 0..3 arrays with some element plus some horizontally, antidiagonally or vertically adjacent neighbor totalling three exactly once.

The programs for A269150, there is no canonical definition to state claims against.
-/

/-! ## A269150.P678406518506685773

`A269152(A374007(n+1))`
-/

namespace A269150.P678406518506685773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269152 (A374007 (n + 1)).toNat

end

end A269150.P678406518506685773

/-! ## A269150.P13179601828521371320

`A269152(A052905(n+3))`
-/

namespace A269150.P13179601828521371320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269152 (A052905 (n + 3)).toNat

end

end A269150.P13179601828521371320

/-! ## A269150.P9107440438510698223

`A269152(A055999(n+3)+1)`
-/

namespace A269150.P9107440438510698223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269152 (A055999 (n + 3) + 1).toNat

end

end A269150.P9107440438510698223

/-! ## A269150.P14375053384693154185

`A269152(Δ[A264443(n+1)]-1)`
-/

namespace A269150.P14375053384693154185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269152 (f1 (n + 1) - f1 n - 1).toNat

end

end A269150.P14375053384693154185

/-!
# A269151: Number of n X 7 0..3 arrays with some element plus some horizontally, antidiagonally or vertically adjacent neighbor totalling three exactly once.

The programs for A269151, there is no canonical definition to state claims against.
-/

/-! ## A269151.P17306584434069872719

`A269152(A374008(n+1))`
-/

namespace A269151.P17306584434069872719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269152 (A374008 (n + 1)).toNat

end

end A269151.P17306584434069872719

/-! ## A269151.P8187401298920389397

`A269152(eq[8, A131818(n+1)])`
-/

namespace A269151.P8187401298920389397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269151.P8187401298920389397

/-! ## A269151.P6914304799677592186

`A269152(eq[6, A193592(n)])`
-/

namespace A269151.P6914304799677592186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269151.P6914304799677592186

/-!
# A269152: T(n,k) = Number of n X k 0..3 arrays with some element plus some horizontally, antidiagonally or vertically adjacent neighbor totalling three exactly once.

The programs for A269152, there is no canonical definition to state claims against.
-/

/-! ## A269152.P14616448350608014875

`A269143(n+1)-4*A232948(n+1)`
-/

namespace A269152.P14616448350608014875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269143 (n + 1) - 4 * A232948 (n + 1)

end

end A269152.P14616448350608014875

/-! ## A269152.P2466290084294345416

`A269143(n+1)-A008574(A232948(n+1))`
-/

namespace A269152.P2466290084294345416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269143 (n + 1) - A008574 (A232948 (n + 1)).toNat

end

end A269152.P2466290084294345416

/-! ## A269152.P14120928360182963298

`4*A337502(A299097(n+1))`
-/

namespace A269152.P14120928360182963298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A337502 (A299097 (n + 1)).toNat

end

end A269152.P14120928360182963298

/-!
# A269153: Expansion of Product_{k>=1} ((1 - k*x^k) / (1 - 2*x^k)).

The programs for A269153, there is no canonical definition to state claims against.
-/

/-! ## A269153.P5637254006753478522

`A262689(A152808(n)+A053120(n))`
-/

namespace A269153.P5637254006753478522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A152808 n + A053120 n).toNat

end

end A269153.P5637254006753478522

/-! ## A269153.P11486424926007564707

`A262689(A152808(n)-A089310(n))`
-/

namespace A269153.P11486424926007564707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A152808 n - A089310 n).toNat

end

end A269153.P11486424926007564707

/-! ## A269153.P12496544036664769895

`A262689(or(A004396(n), A152808(n)))`
-/

namespace A269153.P12496544036664769895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (Int.lor (A004396 n) (A152808 n)).toNat

end

end A269153.P12496544036664769895

/-! ## A269153.P242160283421472960

`A262689(or(A152808(n), A194640(n)))`
-/

namespace A269153.P242160283421472960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (Int.lor (A152808 n) (A194640 n)).toNat

end

end A269153.P242160283421472960

/-! ## A269153.P17419412253144753561

`A262689(or(A152808(n), A214270(n+1)))`
-/

namespace A269153.P17419412253144753561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (Int.lor (A152808 n) (A214270 (n + 1))).toNat

end

end A269153.P17419412253144753561

/-!
# A269157: Indices of zeros in A268819.

The programs for A269157, there is no canonical definition to state claims against.
-/

/-! ## A269157.P2186407852160010427

`eq[0, A268819(n+1)]+1`
-/

namespace A269157.P2186407852160010427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268819 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A269157.P2186407852160010427

/-! ## A269157.P8464163037620413231

`lt[A268819(n+1), A089608(n+1)]+1`
-/

namespace A269157.P8464163037620413231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089608 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A269157.P8464163037620413231

/-! ## A269157.P14306878714660355539

`eq[A000007(n), A268819(A028310(n))]`
-/

namespace A269157.P14306878714660355539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268819 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A269157.P14306878714660355539

/-! ## A269157.P8227361132904415693

`eq[A000038(n), A268819(A028310(n))]`
-/

namespace A269157.P8227361132904415693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268819 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A269157.P8227361132904415693

/-! ## A269157.P3602764990984638916

`eq[A020761(n), A268819(A028310(n))]`
-/

namespace A269157.P3602764990984638916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020761 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268819 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A269157.P3602764990984638916

/-!
# A269158: Square array A(row,col) = F(row,(2*col)-1), where F(0,q) = F(1,q) = 0, F(2p,q) = F(p,q) XOR A003188(q), F(2p+1,q) = F(q mod 2p+1, 2p+1) XOR (2p+1 AND q). Array is read by descending antidiagonals as A(1,1), A(1,2), A(2,1), A(1,3), A(2,2), A(3,1), ...

The programs for A269158, there is no canonical definition to state claims against.
-/

/-! ## A269158.P9675061245151688648

`A269159(A038722(n+1))`
-/

namespace A269158.P9675061245151688648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269159 (A038722 (n + 1)).toNat

end

end A269158.P9675061245151688648

/-! ## A269158.P5095403616875459235

`A269159(A061579(n)+1)`
-/

namespace A269158.P5095403616875459235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269159 (A061579 n + 1).toNat

end

end A269158.P5095403616875459235

/-! ## A269158.P7544028476030599509

`A269159(A114327(n)+1+n)`
-/

namespace A269158.P7544028476030599509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269159 (A114327 n + 1 + (n : ℤ)).toNat

end

end A269158.P7544028476030599509

/-! ## A269158.P3477249500110498743

`A269159(A002024(n+1)²-n)`
-/

namespace A269158.P3477249500110498743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269159 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A269158.P3477249500110498743

/-! ## A269158.P17891027517592345186

`A269159(A004202(n+1)-A132118(n+1))`
-/

namespace A269158.P17891027517592345186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269159 (A004202 (n + 1) - A132118 (n + 1)).toNat

end

end A269158.P17891027517592345186

/-! ## A269158.P13612738694239886049

`A269159(n-(A002260(n+1)-A004736(n+1))+1)`
-/

namespace A269158.P13612738694239886049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269159 ((n : ℤ) - (A002260 (n + 1) - A004736 (n + 1)) + 1).toNat

end

end A269158.P13612738694239886049

/-!
# A269159: Transpose of A269158.

The programs for A269159, there is no canonical definition to state claims against.
-/

/-! ## A269159.P4335663074970020298

`A269158(A038722(n+1))`
-/

namespace A269159.P4335663074970020298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269158 (A038722 (n + 1)).toNat

end

end A269159.P4335663074970020298

/-! ## A269159.P10034764622489704143

`A269158(A061579(n)+1)`
-/

namespace A269159.P10034764622489704143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269158 (A061579 n + 1).toNat

end

end A269159.P10034764622489704143

/-! ## A269159.P13643437770848649902

`A269158(A093995(n+1)-n)`
-/

namespace A269159.P13643437770848649902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269158 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A269159.P13643437770848649902

/-! ## A269159.P10074352734863092279

`A269158(A057944(n)+A004736(n+1))`
-/

namespace A269159.P10074352734863092279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269158 (A057944 n + A004736 (n + 1)).toNat

end

end A269159.P10074352734863092279

/-! ## A269159.P7343024404459124187

`A269158(A014132(n+1)-A158405(n+1))`
-/

namespace A269159.P7343024404459124187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269158 (A014132 (n + 1) - A158405 (n + 1)).toNat

end

end A269159.P7343024404459124187

/-! ## A269159.P8720501101623891622

`A269158(n-(A002260(n+1)-A004736(n+1))+1)`
-/

namespace A269159.P8720501101623891622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269158 ((n : ℤ) - (A002260 (n + 1) - A004736 (n + 1)) + 1).toNat

end

end A269159.P8720501101623891622

/-!
# A269160: Formula for Wolfram's Rule 30 cellular automaton: a(n) = n XOR (2n OR 4n).

The programs for A269160, the canonical program `A269160.P5728616991785596865` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269160 has offset 0).

The definition of A269160 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A387312, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A269160.P5728616991785596865

`A387312(2*n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A269160

/-- `A387312(2*n)` -/
def P5728616991785596865.Spec : Prop :=
  ∀ n, P5728616991785596865.a n = A269160 n

theorem P5728616991785596865.correct : P5728616991785596865.Spec := by
  intro n
  simp only [A269160]

end A269160

/-! ## A269160.P989582029395866475

`A057889(A269161(A057889(n)))`
-/

namespace A269160.P989582029395866475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A269161 (A057889 n).toNat).toNat

end

end A269160.P989582029395866475

namespace A269160

/-- `A057889(A269161(A057889(n)))` -/
def P989582029395866475.Spec : Prop :=
  ∀ n, P989582029395866475.a n = A269160 n

end A269160

/-! ## A269160.P16556735133221548646

`xor(n, 2*or(n, 2*n))`
-/

namespace A269160.P16556735133221548646
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * Nat.lor n (2 * n))

end

end A269160.P16556735133221548646

namespace A269160

/-- `xor(n, 2*or(n, 2*n))` -/
def P16556735133221548646.Spec : Prop :=
  ∀ n, (P16556735133221548646.a n : ℤ) = A269160 n

end A269160

/-! ## A269160.P2133686476929786348

`xor(xor(n, 2*n)+n, xor(n, 2*n))`
-/

namespace A269160.P2133686476929786348
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (Nat.xor n (2 * n) + n) (Nat.xor n (2 * n))

end

end A269160.P2133686476929786348

namespace A269160

/-- `xor(xor(n, 2*n)+n, xor(n, 2*n))` -/
def P2133686476929786348.Spec : Prop :=
  ∀ n, (P2133686476929786348.a n : ℤ) = A269160 n

end A269160

/-! ## A269160.P10820083090697875861

`xor(2*and(n, 2*n), xor(n, 2*xor(n, 2*n)))`
-/

namespace A269160.P10820083090697875861
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (2 * Nat.land n (2 * n)) (Nat.xor n (2 * Nat.xor n (2 * n)))

end

end A269160.P10820083090697875861

namespace A269160

/-- `xor(2*and(n, 2*n), xor(n, 2*xor(n, 2*n)))` -/
def P10820083090697875861.Spec : Prop :=
  ∀ n, (P10820083090697875861.a n : ℤ) = A269160 n

end A269160

/-! ## A269160.P6663907039930445832

`xor(n, 2*A163617(n))`
-/

namespace A269160.P6663907039930445832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (2 * A163617 n)

end

end A269160.P6663907039930445832

namespace A269160

/-- `xor(n, 2*A163617(n))` -/
def P6663907039930445832.Spec : Prop :=
  ∀ n, P6663907039930445832.a n = A269160 n

end A269160

/-! ## A269160.P16954596380883881922

`xor(xor(n, 2*n)+n, A048724(n))`
-/

namespace A269160.P16954596380883881922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Nat.xor n (2 * n) + n : ℤ) (A048724 n)

end

end A269160.P16954596380883881922

namespace A269160

/-- `xor(xor(n, 2*n)+n, A048724(n))` -/
def P16954596380883881922.Spec : Prop :=
  ∀ n, P16954596380883881922.a n = A269160 n

end A269160

/-! ## A269160.P14401446186299001597

`A269161(n)+A213370(n)`
-/

namespace A269160.P14401446186299001597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269161 n + A213370 n

end

end A269160.P14401446186299001597

namespace A269160

/-- `A269161(n)+A213370(n)` -/
def P14401446186299001597.Spec : Prop :=
  ∀ n, P14401446186299001597.a n = A269160 n

end A269160

/-! ## A269160.P3363384573110648448

`xor(A048727(n), A048728(n))`
-/

namespace A269160.P3363384573110648448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A048727 n) (A048728 n)

end

end A269160.P3363384573110648448

namespace A269160

/-- `xor(A048727(n), A048728(n))` -/
def P3363384573110648448.Spec : Prop :=
  ∀ n, P3363384573110648448.a n = A269160 n

end A269160

/-! ## A269160.P5233956510458743512

`xor(2*A213064(n), A048724(n))`
-/

namespace A269160.P5233956510458743512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * A213064 n) (A048724 n)

end

end A269160.P5233956510458743512

namespace A269160

/-- `xor(2*A213064(n), A048724(n))` -/
def P5233956510458743512.Spec : Prop :=
  ∀ n, P5233956510458743512.a n = A269160 n

end A269160

/-! ## A269160.P14381090039106120675

`xor(2*A213370(n), A048727(n))`
-/

namespace A269160.P14381090039106120675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * A213370 n) (A048727 n)

end

end A269160.P14381090039106120675

namespace A269160

/-- `xor(2*A213370(n), A048727(n))` -/
def P14381090039106120675.Spec : Prop :=
  ∀ n, P14381090039106120675.a n = A269160 n

end A269160

/-! ## A269160.P9043854639399845378

`A269161(n)+n-A229763(n)`
-/

namespace A269160.P9043854639399845378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269161 n + ((n : ℤ) - A229763 n)

end

end A269160.P9043854639399845378

namespace A269160

/-- `A269161(n)+n-A229763(n)` -/
def P9043854639399845378.Spec : Prop :=
  ∀ n, P9043854639399845378.a n = A269160 n

end A269160

/-! ## A269160.P9181420196385994466

`xor(A269174(n)+n, A269174(n))`
-/

namespace A269160.P9181420196385994466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A269174 n + (n : ℤ)) (A269174 n)

end

end A269160.P9181420196385994466

namespace A269160

/-- `xor(A269174(n)+n, A269174(n))` -/
def P9181420196385994466.Spec : Prop :=
  ∀ n, P9181420196385994466.a n = A269160 n

end A269160

/-! ## A269160.P12043546477397748506

`xor(A048724(n)-n, A048725(n))`
-/

namespace A269160.P12043546477397748506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A048724 n - (n : ℤ)) (A048725 n)

end

end A269160.P12043546477397748506

namespace A269160

/-- `xor(A048724(n)-n, A048725(n))` -/
def P12043546477397748506.Spec : Prop :=
  ∀ n, P12043546477397748506.a n = A269160 n

end A269160

/-! ## A269160.P15819590042318839175

`xor(A003188(2*n)+n, A003188(2*n))`
-/

namespace A269160.P15819590042318839175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003188 (2 * n) + (n : ℤ)) (A003188 (2 * n))

end

end A269160.P15819590042318839175

namespace A269160

/-- `xor(A003188(2*n)+n, A003188(2*n))` -/
def P15819590042318839175.Spec : Prop :=
  ∀ n, P15819590042318839175.a n = A269160 n

end A269160

/-! ## A269160.P10396867869912068280

`A163617(n)+A269161(n)-A048724(n)`
-/

namespace A269160.P10396867869912068280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163617 n + (A269161 n - A048724 n)

end

end A269160.P10396867869912068280

namespace A269160

/-- `A163617(n)+A269161(n)-A048724(n)` -/
def P10396867869912068280.Spec : Prop :=
  ∀ n, P10396867869912068280.a n = A269160 n

end A269160

/-! ## A269160.P11035656739941076710

`xor(A008586(n)-A048728(n), A048724(n))`
-/

namespace A269160.P11035656739941076710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008586 n - A048728 n) (A048724 n)

end

end A269160.P11035656739941076710

namespace A269160

/-- `xor(A008586(n)-A048728(n), A048724(n))` -/
def P11035656739941076710.Spec : Prop :=
  ∀ n, P11035656739941076710.a n = A269160 n

end A269160

/-! ## A269160.P12113788393376389375

`xor(A048725(n), A213064(A213064(n)-n))`
-/

namespace A269160.P12113788393376389375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A048725 n) (A213064 (A213064 n - (n : ℤ)).toNat)

end

end A269160.P12113788393376389375

namespace A269160

/-- `xor(A048725(n), A213064(A213064(n)-n))` -/
def P12113788393376389375.Spec : Prop :=
  ∀ n, P12113788393376389375.a n = A269160 n

end A269160

/-! ## A269160.P6561349726407616

`xor(n, xor(8*n, A269161(2*n)))`
-/

namespace A269160.P6561349726407616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (Int.xor (8 * n : ℤ) (A269161 (2 * n)))

end

end A269160.P6561349726407616

namespace A269160

/-- `xor(n, xor(8*n, A269161(2*n)))` -/
def P6561349726407616.Spec : Prop :=
  ∀ n, P6561349726407616.a n = A269160 n

end A269160

/-! ## A269160.P16936391947783317093

`xor(2*A292272(2*n), A003188(2*n))`
-/

namespace A269160.P16936391947783317093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * A292272 (2 * n)) (A003188 (2 * n))

end

end A269160.P16936391947783317093

namespace A269160

/-- `xor(2*A292272(2*n), A003188(2*n))` -/
def P16936391947783317093.Spec : Prop :=
  ∀ n, P16936391947783317093.a n = A269160 n

end A269160

/-!
# A269161: Formula for Wolfram's Rule 86 cellular automaton: a(n) = 4n XOR (2n OR n).

The programs for A269161, the canonical program `A269161.P13941495985757432610` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269161 has offset 0).

The definition of A269161 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057889, A269160, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A269161.P13941495985757432610

`A057889(A269160(A057889(n)))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A269161

/-- `A057889(A269160(A057889(n)))` -/
def P13941495985757432610.Spec : Prop :=
  ∀ n, P13941495985757432610.a n = A269161 n

theorem P13941495985757432610.correct : P13941495985757432610.Spec := by
  intro n
  simp only [A269161]

end A269161

/-! ## A269161.P3344179060792166691

`xor(4*n, or(n, 2*n))`
-/

namespace A269161.P3344179060792166691
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (4 * n) (Nat.lor n (2 * n))

end

end A269161.P3344179060792166691

namespace A269161

/-- `xor(4*n, or(n, 2*n))` -/
def P3344179060792166691.Spec : Prop :=
  ∀ n, (P3344179060792166691.a n : ℤ) = A269161 n

end A269161

/-! ## A269161.P11224841097524373050

`xor(and(2*n, -n), xor(n, 4*n))`
-/

namespace A269161.P11224841097524373050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.land (2 * n : ℤ) (-(n : ℤ))) (Nat.xor n (4 * n) : ℤ)

end

end A269161.P11224841097524373050

namespace A269161

/-- `xor(and(2*n, -n), xor(n, 4*n))` -/
def P11224841097524373050.Spec : Prop :=
  ∀ n, P11224841097524373050.a n = A269161 n

end A269161

/-! ## A269161.P15366936046909693297

`xor(4*n, A163617(n))`
-/

namespace A269161.P15366936046909693297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (4 * n : ℤ) (A163617 n)

end

end A269161.P15366936046909693297

namespace A269161

/-- `xor(4*n, A163617(n))` -/
def P15366936046909693297.Spec : Prop :=
  ∀ n, P15366936046909693297.a n = A269161 n

end A269161

/-! ## A269161.P17230306371788518738

`A269160(n)-and(n, 2*n)`
-/

namespace A269161.P17230306371788518738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269160 n - (Nat.land n (2 * n) : ℤ)

end

end A269161.P17230306371788518738

namespace A269161

/-- `A269160(n)-and(n, 2*n)` -/
def P17230306371788518738.Spec : Prop :=
  ∀ n, P17230306371788518738.a n = A269161 n

end A269161

/-! ## A269161.P11905356791462994860

`A269160(n)-A213370(n)`
-/

namespace A269161.P11905356791462994860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269160 n - A213370 n

end

end A269161.P11905356791462994860

namespace A269161

/-- `A269160(n)-A213370(n)` -/
def P11905356791462994860.Spec : Prop :=
  ∀ n, P11905356791462994860.a n = A269161 n

end A269161

/-! ## A269161.P13064987224569637137

`xor(A048725(n), A213064(n))`
-/

namespace A269161.P13064987224569637137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A048725 n) (A213064 n)

end

end A269161.P13064987224569637137

namespace A269161

/-- `xor(A048725(n), A213064(n))` -/
def P13064987224569637137.Spec : Prop :=
  ∀ n, P13064987224569637137.a n = A269161 n

end A269161

/-! ## A269161.P5164801863364100576

`xor(A048727(n), A213370(n))`
-/

namespace A269161.P5164801863364100576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A048727 n) (A213370 n)

end

end A269161.P5164801863364100576

namespace A269161

/-- `xor(A048727(n), A213370(n))` -/
def P5164801863364100576.Spec : Prop :=
  ∀ n, P5164801863364100576.a n = A269161 n

end A269161

/-! ## A269161.P1728164039349341416

`xor(A048726(n), A229763(n))`
-/

namespace A269161.P1728164039349341416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A048726 n) (A229763 n)

end

end A269161.P1728164039349341416

namespace A269161

/-- `xor(A048726(n), A229763(n))` -/
def P1728164039349341416.Spec : Prop :=
  ∀ n, P1728164039349341416.a n = A269161 n

end A269161

/-! ## A269161.P2641151982568329992

`A269160(n)-2*A048735(n)`
-/

namespace A269161.P2641151982568329992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269160 n - 2 * A048735 n

end

end A269161.P2641151982568329992

namespace A269161

/-- `A269160(n)-2*A048735(n)` -/
def P2641151982568329992.Spec : Prop :=
  ∀ n, P2641151982568329992.a n = A269161 n

end A269161

/-! ## A269161.P9607544058087708089

`A269160(n)-A048728(n)/2`
-/

namespace A269161.P9607544058087708089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269160 n : ℚ) - (A048728 n : ℚ) / 2

end

end A269161.P9607544058087708089

namespace A269161

/-- `A269160(n)-A048728(n)/2` -/
def P9607544058087708089.Spec : Prop :=
  ∀ n, P9607544058087708089.a n = (A269161 n : ℚ)

end A269161

/-! ## A269161.P14775169375927515549

`xor(2*A048724(n), A229763(n))`
-/

namespace A269161.P14775169375927515549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * A048724 n) (A229763 n)

end

end A269161.P14775169375927515549

namespace A269161

/-- `xor(2*A048724(n), A229763(n))` -/
def P14775169375927515549.Spec : Prop :=
  ∀ n, P14775169375927515549.a n = A269161 n

end A269161

/-! ## A269161.P7345347362301276887

`xor(A048728(n)/2, A048727(n))`
-/

namespace A269161.P7345347362301276887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway ((A048728 n : ℚ) / 2)) (A048727 n)

end

end A269161.P7345347362301276887

namespace A269161

/-- `xor(A048728(n)/2, A048727(n))` -/
def P7345347362301276887.Spec : Prop :=
  ∀ n, P7345347362301276887.a n = A269161 n

end A269161

/-! ## A269161.P3524641947032992029

`A229763(n)+A269160(n)-n`
-/

namespace A269161.P3524641947032992029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229763 n + (A269160 n - (n : ℤ))

end

end A269161.P3524641947032992029

namespace A269161

/-- `A229763(n)+A269160(n)-n` -/
def P3524641947032992029.Spec : Prop :=
  ∀ n, P3524641947032992029.a n = A269161 n

end A269161

/-! ## A269161.P3067084552574644581

`xor(A003188(A048728(n)), A269160(n))`
-/

namespace A269161.P3067084552574644581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003188 (A048728 n).toNat) (A269160 n)

end

end A269161.P3067084552574644581

namespace A269161

/-- `xor(A003188(A048728(n)), A269160(n))` -/
def P3067084552574644581.Spec : Prop :=
  ∀ n, P3067084552574644581.a n = A269161 n

end A269161

/-! ## A269161.P2424159933692686723

`xor(A048726(A048735(n)), A269160(n))`
-/

namespace A269161.P2424159933692686723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A048726 (A048735 n).toNat) (A269160 n)

end

end A269161.P2424159933692686723

namespace A269161

/-- `xor(A048726(A048735(n)), A269160(n))` -/
def P2424159933692686723.Spec : Prop :=
  ∀ n, P2424159933692686723.a n = A269161 n

end A269161

/-! ## A269161.P2656845326801110606

`xor(4*n, A269170(2*n))`
-/

namespace A269161.P2656845326801110606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (4 * n : ℤ) (A269170 (2 * n))

end

end A269161.P2656845326801110606

namespace A269161

/-- `xor(4*n, A269170(2*n))` -/
def P2656845326801110606.Spec : Prop :=
  ∀ n, P2656845326801110606.a n = A269161 n

end A269161

/-! ## A269161.P656292987060573854

`A387312(2*n)-A213370(n)`
-/

namespace A269161.P656292987060573854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387312 (2 * n) - A213370 n

end

end A269161.P656292987060573854

namespace A269161

/-- `A387312(2*n)-A213370(n)` -/
def P656292987060573854.Spec : Prop :=
  ∀ n, P656292987060573854.a n = A269161 n

end A269161

/-! ## A269161.P8469317302410251486

`xor(A003188(4*n), A229762(2*n))`
-/

namespace A269161.P8469317302410251486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003188 (4 * n)) (A229762 (2 * n))

end

end A269161.P8469317302410251486

namespace A269161

/-- `xor(A003188(4*n), A229762(2*n))` -/
def P8469317302410251486.Spec : Prop :=
  ∀ n, P8469317302410251486.a n = A269161 n

end A269161

/-! ## A269161.P7319174684441036647

`xor(n-A048735(2*n), A048724(2*n))`
-/

namespace A269161.P7319174684441036647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n : ℤ) - A048735 (2 * n)) (A048724 (2 * n))

end

end A269161.P7319174684441036647

namespace A269161

/-- `xor(n-A048735(2*n), A048724(2*n))` -/
def P7319174684441036647.Spec : Prop :=
  ∀ n, P7319174684441036647.a n = A269161 n

end A269161

/-!
# A269163: Numbers which have a finite predecessor in Wolfram's Rule 30 cellular automaton; range of A269160 sorted into ascending order.

The programs for A269163, there is no canonical definition to state claims against.
-/

/-! ## A269163.P7048236042841210353

`comp[A269165(n+1)]`
-/

namespace A269163.P7048236042841210353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A269163.P7048236042841210353

/-! ## A269163.P2468844410044901698

`lt[A269165(2*n), n+1]`
-/

namespace A269163.P2468844410044901698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269165 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A269163.P2468844410044901698

/-! ## A269163.P1538231586708872158

`record[A269160(A269162(n))]`
-/

namespace A269163.P1538231586708872158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269160 (A269162 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269163.P1538231586708872158

/-! ## A269163.P2754015497102694284

`lt[A269160(A269165(n)), n+1]`
-/

namespace A269163.P2754015497102694284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269160 (A269165 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A269163.P2754015497102694284

/-! ## A269163.P8032268299150193794

`lt[A269165(n)-1, A269162(n)]`
-/

namespace A269163.P8032268299150193794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269165 n - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269162 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A269163.P8032268299150193794

/-! ## A269163.P6051996943560051980

`lt[A269165(2*n)-A269175(n), n]`
-/

namespace A269163.P6051996943560051980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269165 (2 * n) - A269175 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A269163.P6051996943560051980

/-! ## A269163.P5081485346896518436

`eq[A269165(A269162(n)), A269165(n)]`
-/

namespace A269163.P5081485346896518436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269165 (A269162 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269165 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A269163.P5081485346896518436

/-! ## A269163.P14204206978480689674

`eq[A000007(n), A000007(A269162(n))]`
-/

namespace A269163.P14204206978480689674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A269162 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A269163.P14204206978480689674

/-! ## A269163.P3805514416935122594

`eq[A000038(n), A000038(A269162(n))]`
-/

namespace A269163.P3805514416935122594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A269162 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A269163.P3805514416935122594

/-! ## A269163.P5864859218980863332

`eq[A280193(A269162(n)), A280193(n)]`
-/

namespace A269163.P5864859218980863332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (A269162 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A269163.P5864859218980863332

/-! ## A269163.P13252563347400740101

`lt[A064770(n)+1, A319953(A269162(n))]`
-/

namespace A269163.P13252563347400740101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064770 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319953 (A269162 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A269163.P13252563347400740101

/-! ## A269163.P15894152798615194051

`eq[A019425(n), A019425(A269162(n))]/2`
-/

namespace A269163.P15894152798615194051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (A269162 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A269163.P15894152798615194051

/-! ## A269163.P15803235960958555305

`eq[A269165(n)%A008619(n), A269165(n)]`
-/

namespace A269163.P15803235960958555305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269165 n) (A008619 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269165 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A269163.P15803235960958555305

/-! ## A269163.P13719494835238677940

`eq[A019425(2*n), A019425(A269162(2*n))]`
-/

namespace A269163.P13719494835238677940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (A269162 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A269163.P13719494835238677940

/-! ## A269163.P15654624491996323200

`eq[A000007(n*A269166(n)), A000007(n)]`
-/

namespace A269163.P15654624491996323200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((n : ℤ) * A269166 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A269163.P15654624491996323200

/-! ## A269163.P11833519711695239248

`eq[A000038(n*A269166(n)), A000038(n)]`
-/

namespace A269163.P11833519711695239248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 ((n : ℤ) * A269166 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A269163.P11833519711695239248

/-!
# A269164: Numbers not in range of A269160; indices of zeros in A269162 from n >= 1 onward.

The programs for A269164, the canonical program `A269164.P5456824942462749545` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269164 has offset 1).

The definition of A269164 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269164.P5456824942462749545

`comp[xor(n, 2*or(n, 2*n))]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A269164

/-- `comp[xor(n, 2*or(n, 2*n))]` -/
def P5456824942462749545.Spec : Prop :=
  ∀ n, (P5456824942462749545.a n : ℤ) = A269164 (n + 1)

theorem P5456824942462749545.correct : P5456824942462749545.Spec := by
  intro n
  simp only [A269164, Nat.add_sub_cancel]

end A269164

/-! ## A269164.P9845187593284560398

`comp[xor(xor(n, 2*n)+n, xor(n, 2*n))]`
-/

namespace A269164.P9845187593284560398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (Nat.xor n (2 * n) + n) (Nat.xor n (2 * n))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A269164.P9845187593284560398

namespace A269164

/-- `comp[xor(xor(n, 2*n)+n, xor(n, 2*n))]` -/
def P9845187593284560398.Spec : Prop :=
  ∀ n, (P9845187593284560398.a n : ℤ) = A269164 (n + 1)

end A269164

/-! ## A269164.P7017499043495833940

`comp[A269160(n)]`
-/

namespace A269164.P7017499043495833940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269160 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A269164.P7017499043495833940

namespace A269164

/-- `comp[A269160(n)]` -/
def P7017499043495833940.Spec : Prop :=
  ∀ n, (P7017499043495833940.a n : ℤ) = A269164 (n + 1)

end A269164

/-! ## A269164.P18391092289826279896

`comp[A269163(n)]`
-/

namespace A269164.P18391092289826279896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269163 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A269164.P18391092289826279896

namespace A269164

/-- `comp[A269163(n)]` -/
def P18391092289826279896.Spec : Prop :=
  ∀ n, (P18391092289826279896.a n : ℤ) = A269164 (n + 1)

end A269164

/-! ## A269164.P8362065699248501889

`record[A269165(n+1)]`
-/

namespace A269164.P8362065699248501889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269164.P8362065699248501889

namespace A269164

/-- `record[A269165(n+1)]` -/
def P8362065699248501889.Spec : Prop :=
  ∀ n, P8362065699248501889.a n = A269164 (n + 1)

end A269164

/-! ## A269164.P14797029977565910924

`lt[n, A269165(2*n)]`
-/

namespace A269164.P14797029977565910924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269165 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A269164.P14797029977565910924

namespace A269164

/-- `lt[n, A269165(2*n)]` -/
def P14797029977565910924.Spec : Prop :=
  ∀ n, (P14797029977565910924.a n : ℤ) = A269164 (n + 1)

end A269164

/-! ## A269164.P380387986164323755

`lt[7*A269162(n), n]`
-/

namespace A269164.P380387986164323755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A269162 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A269164.P380387986164323755

namespace A269164

/-- `lt[7*A269162(n), n]` -/
def P380387986164323755.Spec : Prop :=
  ∀ n, (P380387986164323755.a n : ℤ) = A269164 (n + 1)

end A269164

/-! ## A269164.P14069958147647103763

`lt[A269162(n+1), 1]+1`
-/

namespace A269164.P14069958147647103763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269162 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A269164.P14069958147647103763

namespace A269164

/-- `lt[A269162(n+1), 1]+1` -/
def P14069958147647103763.Spec : Prop :=
  ∀ n, (P14069958147647103763.a n : ℤ) = A269164 (n + 1)

end A269164

/-! ## A269164.P4344159584969570622

`eq[1, A269166(n+1)+1]+1`
-/

namespace A269164.P4344159584969570622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269166 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A269164.P4344159584969570622

namespace A269164

/-- `eq[1, A269166(n+1)+1]+1` -/
def P4344159584969570622.Spec : Prop :=
  ∀ n, (P4344159584969570622.a n : ℤ) = A269164 (n + 1)

end A269164

/-! ## A269164.P17250178258946489112

`comp[xor(2*and(n, 2*n), A048727(n))]`
-/

namespace A269164.P17250178258946489112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * Nat.land n (2 * n) : ℤ) (A048727 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A269164.P17250178258946489112

namespace A269164

/-- `comp[xor(2*and(n, 2*n), A048727(n))]` -/
def P17250178258946489112.Spec : Prop :=
  ∀ n, (P17250178258946489112.a n : ℤ) = A269164 (n + 1)

end A269164

/-! ## A269164.P536439693515069104

`lt[n, A269160(A269165(n))]`
-/

namespace A269164.P536439693515069104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269160 (A269165 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A269164.P536439693515069104

namespace A269164

/-- `lt[n, A269160(A269165(n))]` -/
def P536439693515069104.Spec : Prop :=
  ∀ n, (P536439693515069104.a n : ℤ) = A269164 (n + 1)

end A269164

/-! ## A269164.P6990244099423919935

`lt[A304453(A269162(n)), n]`
-/

namespace A269164.P6990244099423919935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304453 (A269162 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A269164.P6990244099423919935

namespace A269164

/-- `lt[A304453(A269162(n)), n]` -/
def P6990244099423919935.Spec : Prop :=
  ∀ n, (P6990244099423919935.a n : ℤ) = A269164 (n + 1)

end A269164

/-! ## A269164.P8229115986497452325

`A269165(lt[n/2, A269165(n)])`
-/

namespace A269164.P8229115986497452325
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269165 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269165 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A269164.P8229115986497452325

namespace A269164

/-- `A269165(lt[n/2, A269165(n)])` -/
def P8229115986497452325.Spec : Prop :=
  ∀ n, P8229115986497452325.a n = A269164 (n + 1)

end A269164

/-! ## A269164.P9800561784880382812

`lt[A269162(n), n/A319953(n)]`
-/

namespace A269164.P9800561784880382812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269162 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A319953 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A269164.P9800561784880382812

namespace A269164

/-- `lt[A269162(n), n/A319953(n)]` -/
def P9800561784880382812.Spec : Prop :=
  ∀ n, (P9800561784880382812.a n : ℤ) = A269164 (n + 1)

end A269164

/-! ## A269164.P7489868911017953202

`A269165(lt[n, A269165(n+1)]+1)`
-/

namespace A269164.P7489868911017953202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269165 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A269164.P7489868911017953202

namespace A269164

/-- `A269165(lt[n, A269165(n+1)]+1)` -/
def P7489868911017953202.Spec : Prop :=
  ∀ n, P7489868911017953202.a n = A269164 (n + 1)

end A269164

/-! ## A269164.P15611104167538589862

`A269165(eq[n+1, A269165(n+1)]+1)`
-/

namespace A269164.P15611104167538589862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269165 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A269164.P15611104167538589862

namespace A269164

/-- `A269165(eq[n+1, A269165(n+1)]+1)` -/
def P15611104167538589862.Spec : Prop :=
  ∀ n, P15611104167538589862.a n = A269164 (n + 1)

end A269164

/-! ## A269164.P10446204478112590381

`eq[1, A019425(A269162(n)+A019425(n))]`
-/

namespace A269164.P10446204478112590381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (A269162 n + A019425 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A269164.P10446204478112590381

namespace A269164

/-- `eq[1, A019425(A269162(n)+A019425(n))]` -/
def P10446204478112590381.Spec : Prop :=
  ∀ n, (P10446204478112590381.a n : ℤ) = A269164 (n + 1)

end A269164

/-! ## A269164.P4941767614306161413

`eq[A000038(n), A269162(n)]`
-/

namespace A269164.P4941767614306161413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269162 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A269164.P4941767614306161413

namespace A269164

/-- `eq[A000038(n), A269162(n)]` -/
def P4941767614306161413.Spec : Prop :=
  ∀ n, (P4941767614306161413.a n : ℤ) = A269164 (n + 1)

end A269164

/-! ## A269164.P15161638344588657569

`eq[A000038(n), A269166(n)]`
-/

namespace A269164.P15161638344588657569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269166 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A269164.P15161638344588657569

namespace A269164

/-- `eq[A000038(n), A269166(n)]` -/
def P15161638344588657569.Spec : Prop :=
  ∀ n, (P15161638344588657569.a n : ℤ) = A269164 (n + 1)

end A269164

/-!
# A269166: If A269162(n) = 0, then a(n) = 0, otherwise a(n) = 1 + a(A269162(n)).

The programs for A269166, there is no canonical definition to state claims against.
-/

/-! ## A269166.P11581770135270882075

`val(A269167(A004277(n)), 2)`
-/

namespace A269166.P11581770135270882075
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A269167 (A004277 n).toNat).toNat 2

end

end A269166.P11581770135270882075

/-! ## A269166.P14221116115170063869

`A368712(3^A269162(n))`
-/

namespace A269166.P14221116115170063869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368712 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A269162 n : ℤ))).toNat

end

end A269166.P14221116115170063869

/-! ## A269166.P18377129613811646819

`A352823((A269162(n)+1)²+1)`
-/

namespace A269166.P18377129613811646819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352823 ((A269162 n + 1) ^ 2 + 1).toNat

end

end A269166.P18377129613811646819

/-! ## A269166.P5093795011641760394

`A333381(A003108(n)*A269162(n))`
-/

namespace A269166.P5093795011641760394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 (A003108 n * A269162 n).toNat

end

end A269166.P5093795011641760394

/-! ## A269166.P15248619952927103906

`A333381(A085398(n+1)*A269162(n))`
-/

namespace A269166.P15248619952927103906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 (A085398 (n + 1) * A269162 n).toNat

end

end A269166.P15248619952927103906

/-!
# A269167: Permutation of natural numbers: a(1) = 1, a(A269160(n)) = 2*a(n), a(A269164(n+1)) = 1+(2*a(n)).

The programs for A269167, there is no canonical definition to state claims against.
-/

/-! ## A269167.P13454608828819188559

`A134347(eq[1, A097522(n+1)])`
-/

namespace A269167.P13454608828819188559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097522 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134347 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269167.P13454608828819188559

/-! ## A269167.P5058695373935693291

`A340632(A018345(n+1)%A053850(n+1))`
-/

namespace A269167.P5058695373935693291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340632 (Int.tmod (A018345 (n + 1)) (A053850 (n + 1))).toNat

end

end A269167.P5058695373935693291

/-! ## A269167.P4330011112901227982

`A324867(A121615(n+1)%A006203(2*n+1))`
-/

namespace A269167.P4330011112901227982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324867 (Int.tmod (A121615 (n + 1)) (A006203 (2 * n + 1))).toNat

end

end A269167.P4330011112901227982

/-!
# A269169: The least monotonic left inverse for A269164.

The programs for A269169, the canonical program `A269169.P15341259716807644386` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269169 has offset 1).

The definition of A269169 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269169.P10084366542260686992

`∑[A269167(n+1)%2]`
-/

namespace A269169.P10084366542260686992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269167 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269169.P10084366542260686992

namespace A269169

/-- `∑[A269167(n+1)%2]` -/
def P10084366542260686992.Spec : Prop :=
  ∀ n, P10084366542260686992.a n = A269169 (n + 1)

end A269169

/-! ## A269169.P15341259716807644386

`∑[char[A269164(n+1)-1]]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A269169

/-- `∑[char[A269164(n+1)-1]]` -/
def P15341259716807644386.Spec : Prop :=
  ∀ n, (P15341259716807644386.a n : ℤ) = A269169 (n + 1)

theorem P15341259716807644386.correct : P15341259716807644386.Spec := by
  intro n
  simp only [A269169, Nat.add_sub_cancel]

end A269169

/-! ## A269169.P476243481627195102

`∑[1-char[A269160(n)-1]]`
-/

namespace A269169.P476243481627195102
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269160 n - 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269169.P476243481627195102

namespace A269169

/-- `∑[1-char[A269160(n)-1]]` -/
def P476243481627195102.Spec : Prop :=
  ∀ n, P476243481627195102.a n = A269169 (n + 1)

end A269169

/-! ## A269169.P14804628024782077853

`∑[A021725(a(n-1))^A269162(n+1)]` with `a(0)=1`
-/

namespace A269169.P14804628024782077853
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (A021725 (SequenceMachineLib.roundAway (f1 (n - 1))).toNat : ℚ) ^ (A269162 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269169.P14804628024782077853

namespace A269169

/-- `∑[A021725(a(n-1))^A269162(n+1)]` -/
def P14804628024782077853.Spec : Prop :=
  ∀ n, P14804628024782077853.a n = (A269169 (n + 1) : ℚ)

end A269169

/-! ## A269169.P3040754083047943924

`∑[A139761(a(n-1))^A269162(n+1)]` with `a(0)=1`
-/

namespace A269169.P3040754083047943924
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (A139761 (SequenceMachineLib.roundAway (f1 (n - 1))).toNat : ℚ) ^ (A269162 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269169.P3040754083047943924

namespace A269169

/-- `∑[A139761(a(n-1))^A269162(n+1)]` -/
def P3040754083047943924.Spec : Prop :=
  ∀ n, P3040754083047943924.a n = (A269169 (n + 1) : ℚ)

end A269169

/-! ## A269169.P14861674508325793962

`∑[A241272(a(n-1))^A269166(n+1)]` with `a(0)=1`
-/

namespace A269169.P14861674508325793962
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (A241272 (SequenceMachineLib.roundAway (f1 (n - 1))).toNat : ℚ) ^ (A269166 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269169.P14861674508325793962

namespace A269169

/-- `∑[A241272(a(n-1))^A269166(n+1)]` -/
def P14861674508325793962.Spec : Prop :=
  ∀ n, P14861674508325793962.a n = (A269169 (n + 1) : ℚ)

end A269169

/-!
# A269170: a(n) = n OR floor(n/2), where OR is bitwise-OR (A003986).

The programs for A269170, the canonical program `A269170.P8451140954879720679` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269170 has offset 0).

The definition of A269170 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269170.P8451140954879720679

`or(n, floor(n/2))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A269170

/-- `or(n, floor(n/2))` -/
def P8451140954879720679.Spec : Prop :=
  ∀ n, P8451140954879720679.a n = A269170 n

theorem P8451140954879720679.correct : P8451140954879720679.Spec := by
  intro n
  simp only [A269170]

end A269170

/-! ## A269170.P3158927514217867471

`abs(or(n, n-∑[n%2]))`
-/

namespace A269170.P3158927514217867471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (n : ℤ) ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))|

end

end A269170.P3158927514217867471

namespace A269170

/-- `abs(or(n, n-∑[n%2]))` -/
def P3158927514217867471.Spec : Prop :=
  ∀ n, P3158927514217867471.a n = A269170 n

end A269170

/-! ## A269170.P1221325652037932159

`or(2*n, and(n, -2))/2`
-/

namespace A269170.P1221325652037932159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lor (2 * n : ℤ) (Int.land (n : ℤ) (-2)) : ℚ) / 2

end

end A269170.P1221325652037932159

namespace A269170

/-- `or(2*n, and(n, -2))/2` -/
def P1221325652037932159.Spec : Prop :=
  ∀ n, P1221325652037932159.a n = (A269170 n : ℚ)

end A269170

/-! ## A269170.P2465229863977254232

`abs(or(n, (or(1, n)-1)/2))`
-/

namespace A269170.P2465229863977254232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (n : ℤ) (SequenceMachineLib.roundAway (((Nat.lor 1 n : ℤ) - 1 : ℚ) / 2))|

end

end A269170.P2465229863977254232

namespace A269170

/-- `abs(or(n, (or(1, n)-1)/2))` -/
def P2465229863977254232.Spec : Prop :=
  ∀ n, P2465229863977254232.a n = A269170 n

end A269170

/-! ## A269170.P15854077501445353601

`ceil(or(n-1, 2*n)/2)`
-/

namespace A269170.P15854077501445353601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.lor ((n : ℤ) - 1) (2 * n : ℤ) : ℚ) / 2⌉

end

end A269170.P15854077501445353601

namespace A269170

/-- `ceil(or(n-1, 2*n)/2)` -/
def P15854077501445353601.Spec : Prop :=
  ∀ n, P15854077501445353601.a n = A269170 n

end A269170

/-! ## A269170.P14737426862998123311

`floor(sinh(log(or(n, 2*n+1))))`
-/

namespace A269170.P14737426862998123311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh (Real.log (Nat.lor n (2 * n + 1) : ℝ))⌋

end

end A269170.P14737426862998123311

namespace A269170

/-- `floor(sinh(log(or(n, 2*n+1))))` -/
def P14737426862998123311.Spec : Prop :=
  ∀ n, P14737426862998123311.a n = A269170 n

end A269170

/-! ## A269170.P4899060165086463515

`round(sinh(log(or(n+1, 2*n))))`
-/

namespace A269170.P4899060165086463515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sinh (Real.log (Nat.lor (n + 1) (2 * n) : ℝ)))

end

end A269170.P4899060165086463515

namespace A269170

/-- `round(sinh(log(or(n+1, 2*n))))` -/
def P4899060165086463515.Spec : Prop :=
  ∀ n, P4899060165086463515.a n = A269170 n

end A269170

/-! ## A269170.P184592943756012298

`(or(n, 2*n+1)-1)/2`
-/

namespace A269170.P184592943756012298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lor n (2 * n + 1) : ℤ) - 1 : ℚ) / 2

end

end A269170.P184592943756012298

namespace A269170

/-- `(or(n, 2*n+1)-1)/2` -/
def P184592943756012298.Spec : Prop :=
  ∀ n, P184592943756012298.a n = (A269170 n : ℚ)

end A269170

/-! ## A269170.P5739857637337191971

`xor(1, or(n, 2*n+1))/2`
-/

namespace A269170.P5739857637337191971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (Nat.lor n (2 * n + 1)) : ℚ) / 2

end

end A269170.P5739857637337191971

namespace A269170

/-- `xor(1, or(n, 2*n+1))/2` -/
def P5739857637337191971.Spec : Prop :=
  ∀ n, P5739857637337191971.a n = (A269170 n : ℚ)

end A269170

/-! ## A269170.P14837162491281999543

`xor(n, and(2*n+1, -n))/2`
-/

namespace A269170.P14837162491281999543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor (n : ℤ) (Int.land (2 * n + 1 : ℤ) (-(n : ℤ))) : ℚ) / 2

end

end A269170.P14837162491281999543

namespace A269170

/-- `xor(n, and(2*n+1, -n))/2` -/
def P14837162491281999543.Spec : Prop :=
  ∀ n, P14837162491281999543.a n = (A269170 n : ℚ)

end A269170

/-! ## A269170.P6200002233906911377

`(n-and(n, 2*n+1))/2+n`
-/

namespace A269170.P6200002233906911377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - (Nat.land n (2 * n + 1) : ℤ) : ℚ) / 2 + (n : ℚ)

end

end A269170.P6200002233906911377

namespace A269170

/-- `(n-and(n, 2*n+1))/2+n` -/
def P6200002233906911377.Spec : Prop :=
  ∀ n, P6200002233906911377.a n = (A269170 n : ℚ)

end A269170

/-! ## A269170.P16905671470190476825

`(and(2*n+1, -(n+2))+n)/2`
-/

namespace A269170.P16905671470190476825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (2 * n + 1 : ℤ) (-(n + 2 : ℤ)) + (n : ℤ) : ℚ) / 2

end

end A269170.P16905671470190476825

namespace A269170

/-- `(and(2*n+1, -(n+2))+n)/2` -/
def P16905671470190476825.Spec : Prop :=
  ∀ n, P16905671470190476825.a n = (A269170 n : ℚ)

end A269170

/-! ## A269170.P14154534779417715939

`ceil(n/(2*n+1)*or(n, 2*n))`
-/

namespace A269170.P14154534779417715939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / (2 * n + 1 : ℚ) * (Nat.lor n (2 * n) : ℚ)⌉

end

end A269170.P14154534779417715939

namespace A269170

/-- `ceil(n/(2*n+1)*or(n, 2*n))` -/
def P14154534779417715939.Spec : Prop :=
  ∀ n, P14154534779417715939.a n = A269170 n

end A269170

/-! ## A269170.P4585007249723346057

`round(n/(2*n+1)*or(n, 2*n+1))`
-/

namespace A269170.P4585007249723346057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / (2 * n + 1 : ℚ) * (Nat.lor n (2 * n + 1) : ℚ))

end

end A269170.P4585007249723346057

namespace A269170

/-- `round(n/(2*n+1)*or(n, 2*n+1))` -/
def P4585007249723346057.Spec : Prop :=
  ∀ n, P4585007249723346057.a n = A269170 n

end A269170

/-! ## A269170.P6923848318614567227

`A229762(n)+n`
-/

namespace A269170.P6923848318614567227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229762 n + (n : ℤ)

end

end A269170.P6923848318614567227

namespace A269170

/-- `A229762(n)+n` -/
def P6923848318614567227.Spec : Prop :=
  ∀ n, P6923848318614567227.a n = A269170 n

end A269170

/-! ## A269170.P2509478182697212714

`floor(A163617(n)/2)`
-/

namespace A269170.P2509478182697212714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A163617 n : ℚ) / 2⌋

end

end A269170.P2509478182697212714

namespace A269170

/-- `floor(A163617(n)/2)` -/
def P2509478182697212714.Spec : Prop :=
  ∀ n, P2509478182697212714.a n = A269170 n

end A269170

/-! ## A269170.P13291407178028864582

`abs(or(n, A008619(n)-1))`
-/

namespace A269170.P13291407178028864582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (n : ℤ) (A008619 n - 1)|

end

end A269170.P13291407178028864582

namespace A269170

/-- `abs(or(n, A008619(n)-1))` -/
def P13291407178028864582.Spec : Prop :=
  ∀ n, P13291407178028864582.a n = A269170 n

end A269170

/-! ## A269170.P15689136844712033556

`floor((A213064(n)+n)/2)`
-/

namespace A269170.P15689136844712033556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A213064 n + (n : ℤ) : ℚ) / 2⌋

end

end A269170.P15689136844712033556

namespace A269170

/-- `floor((A213064(n)+n)/2)` -/
def P15689136844712033556.Spec : Prop :=
  ∀ n, P15689136844712033556.a n = A269170 n

end A269170

/-! ## A269170.P13603469540314291894

`A048735(n)+A003188(n)`
-/

namespace A269170.P13603469540314291894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048735 n + A003188 n

end

end A269170.P13603469540314291894

namespace A269170

/-- `A048735(n)+A003188(n)` -/
def P13603469540314291894.Spec : Prop :=
  ∀ n, P13603469540314291894.a n = A269170 n

end A269170

/-! ## A269170.P3788738677204293191

`A004526(A229763(n))+n`
-/

namespace A269170.P3788738677204293191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A229763 n).toNat + (n : ℤ)

end

end A269170.P3788738677204293191

namespace A269170

/-- `A004526(A229763(n))+n` -/
def P3788738677204293191.Spec : Prop :=
  ∀ n, P3788738677204293191.a n = A269170 n

end A269170

/-!
# A269171: Permutation of natural numbers: a(1) = 1, a(2n) = 2*a(n), a(2n+1) = A269379(a(A268674(2n+1))).

The programs for A269171, there is no canonical definition to state claims against.
-/

/-! ## A269171.P8144170402074133968

`A269387(A252754(n+1))`
-/

namespace A269171.P8144170402074133968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269387 (A252754 (n + 1)).toNat

end

end A269171.P8144170402074133968

/-! ## A269171.P12834010578859024636

`A269385(A252756(n+1))`
-/

namespace A269171.P12834010578859024636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269385 (A252756 (n + 1)).toNat

end

end A269171.P12834010578859024636

/-! ## A269171.P8401869315632102526

`ceil(A269393(record[xor(1, n)])/2)`
-/

namespace A269171.P8401869315632102526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A269393 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) : ℚ) / 2⌉

end

end A269171.P8401869315632102526

/-! ## A269171.P864825642998706403

`ceil(A269393(2*n+1)/2)`
-/

namespace A269171.P864825642998706403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A269393 (2 * n + 1) : ℚ) / 2⌉

end

end A269171.P864825642998706403

/-! ## A269171.P2745836041362721347

`round(A269393(n+n+1)/2)`
-/

namespace A269171.P2745836041362721347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A269393 (n + n + 1) : ℚ) / 2)

end

end A269171.P2745836041362721347

/-! ## A269171.P6626463776225934437

`A008619(A269393(2*n+1))`
-/

namespace A269171.P6626463776225934437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A269393 (2 * n + 1)).toNat

end

end A269171.P6626463776225934437

/-! ## A269171.P13276869901464348639

`A004525(A269393(2*n+1)+1)`
-/

namespace A269171.P13276869901464348639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A269393 (2 * n + 1) + 1).toNat

end

end A269171.P13276869901464348639

/-! ## A269171.P14117140298453013798

`A032742(A269393(2*n+1)+1)`
-/

namespace A269171.P14117140298453013798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A269393 (2 * n + 1) + 1).toNat

end

end A269171.P14117140298453013798

/-! ## A269171.P5600581863509480987

`A260739(A269393(2*n+1)+1)`
-/

namespace A269171.P5600581863509480987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260739 (A269393 (2 * n + 1) + 1).toNat

end

end A269171.P5600581863509480987

/-! ## A269171.P7447892824686287738

`A302025(A250246(n+1))`
-/

namespace A269171.P7447892824686287738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302025 (A250246 (n + 1)).toNat

end

end A269171.P7447892824686287738

/-! ## A269171.P16177159096662871390

`A302025(A280496(2*(n+1)))`
-/

namespace A269171.P16177159096662871390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302025 (A280496 (2 * (n + 1))).toNat

end

end A269171.P16177159096662871390

/-!
# A269172: Permutation of natural numbers: a(1) = 1, a(2n) = 2*a(n), a(2n+1) = A250469(a(A269380(2n+1))).

The programs for A269172, there is no canonical definition to state claims against.
-/

/-! ## A269172.P2833168413273497924

`A252753(A269388(n+1))`
-/

namespace A269172.P2833168413273497924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252753 (A269388 (n + 1)).toNat

end

end A269172.P2833168413273497924

/-! ## A269172.P3571301705529367241

`A252755(A269386(n+1))`
-/

namespace A269172.P3571301705529367241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252755 (A269386 (n + 1)).toNat

end

end A269172.P3571301705529367241

/-! ## A269172.P2863206102629230531

`A250245(A302026(n+1))`
-/

namespace A269172.P2863206102629230531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250245 (A302026 (n + 1)).toNat

end

end A269172.P2863206102629230531

/-! ## A269172.P1436106177398988191

`A280495(A302026(2*(n+1)))`
-/

namespace A269172.P1436106177398988191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280495 (A302026 (2 * (n + 1))).toNat

end

end A269172.P1436106177398988191

/-! ## A269172.P4613963284127261478

`A280495(A302026(n+1)+A302026(n+1))`
-/

namespace A269172.P4613963284127261478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280495 (A302026 (n + 1) + A302026 (n + 1)).toNat

end

end A269172.P4613963284127261478

/-! ## A269172.P4200083989443757349

`A269393(A269396(n+1))`
-/

namespace A269172.P4200083989443757349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269393 (A269396 (n + 1)).toNat

end

end A269172.P4200083989443757349

/-! ## A269172.P8838871423394990803

`A255408(n+1)+A269396(n+1)-A269394(A255408(n+1))`
-/

namespace A269172.P8838871423394990803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255408 (n + 1) + (A269396 (n + 1) - A269394 (A255408 (n + 1)).toNat)

end

end A269172.P8838871423394990803

/-! ## A269172.P11276486095294211992

`A269394(A269394(A269396(A269396(A269395(n+1)))))`
-/

namespace A269172.P11276486095294211992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269394 (A269394 (A269396 (A269396 (A269395 (n + 1)).toNat).toNat).toNat).toNat

end

end A269172.P11276486095294211992

/-! ## A269172.P4597697632143403108

`A252753(A269378(A260742(n+1)))`
-/

namespace A269172.P4597697632143403108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252753 (A269378 (A260742 (n + 1)).toNat).toNat

end

end A269172.P4597697632143403108

/-!
# A269173: Formula for Wolfram's Rule 126 cellular automaton: a(n) = (n XOR 2n) OR (n XOR 4n).

The programs for A269173, the canonical program `A269173.P13194680800226863516` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269173 has offset 0).

The definition of A269173 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269173.P13194680800226863516

`or(xor(n, 2*n), xor(n, 4*n))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A269173

/-- `or(xor(n, 2*n), xor(n, 4*n))` -/
def P13194680800226863516.Spec : Prop :=
  ∀ n, (P13194680800226863516.a n : ℤ) = A269173 n

theorem P13194680800226863516.correct : P13194680800226863516.Spec := by
  intro n
  simp only [A269173]

end A269173

/-! ## A269173.P1695381804934933426

`or(2*xor(n, 2*n), A005351(n))`
-/

namespace A269173.P1695381804934933426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * Nat.xor n (2 * n) : ℤ) (A005351 n)

end

end A269173.P1695381804934933426

namespace A269173

/-- `or(2*xor(n, 2*n), A005351(n))` -/
def P1695381804934933426.Spec : Prop :=
  ∀ n, P1695381804934933426.a n = A269173 n

end A269173

/-! ## A269173.P16362383667218254894

`or(2*xor(n, 2*n), A048725(n))`
-/

namespace A269173.P16362383667218254894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * Nat.xor n (2 * n) : ℤ) (A048725 n)

end

end A269173.P16362383667218254894

namespace A269173

/-- `or(2*xor(n, 2*n), A048725(n))` -/
def P16362383667218254894.Spec : Prop :=
  ∀ n, P16362383667218254894.a n = A269173 n

end A269173

/-! ## A269173.P10956789188917694060

`or(2*xor(n, 2*n), A184617(n))`
-/

namespace A269173.P10956789188917694060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * Nat.xor n (2 * n) : ℤ) (A184617 n)

end

end A269173.P10956789188917694060

namespace A269173

/-- `or(2*xor(n, 2*n), A184617(n))` -/
def P10956789188917694060.Spec : Prop :=
  ∀ n, P10956789188917694060.a n = A269173 n

end A269173

/-! ## A269173.P4406849672793037914

`or(A048724(n), A048725(n))`
-/

namespace A269173.P4406849672793037914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A048724 n) (A048725 n)

end

end A269173.P4406849672793037914

namespace A269173

/-- `or(A048724(n), A048725(n))` -/
def P4406849672793037914.Spec : Prop :=
  ∀ n, P4406849672793037914.a n = A269173 n

end A269173

/-! ## A269173.P4148316531789215578

`or(A048724(n), A048726(n))`
-/

namespace A269173.P4148316531789215578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A048724 n) (A048726 n)

end

end A269173.P4148316531789215578

namespace A269173

/-- `or(A048724(n), A048726(n))` -/
def P4148316531789215578.Spec : Prop :=
  ∀ n, P4148316531789215578.a n = A269173 n

end A269173

/-! ## A269173.P15439540995396025597

`or(A048725(n), A048726(n))`
-/

namespace A269173.P15439540995396025597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A048725 n) (A048726 n)

end

end A269173.P15439540995396025597

namespace A269173

/-- `or(A048725(n), A048726(n))` -/
def P15439540995396025597.Spec : Prop :=
  ∀ n, P15439540995396025597.a n = A269173 n

end A269173

/-! ## A269173.P8305703672942421612

`or(A048724(n), A269161(n))`
-/

namespace A269173.P8305703672942421612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A048724 n) (A269161 n)

end

end A269173.P8305703672942421612

namespace A269173

/-- `or(A048724(n), A269161(n))` -/
def P8305703672942421612.Spec : Prop :=
  ∀ n, P8305703672942421612.a n = A269173 n

end A269173

/-! ## A269173.P13195213165850381007

`or(A003188(2*n), A048725(n))`
-/

namespace A269173.P13195213165850381007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003188 (2 * n)) (A048725 n)

end

end A269173.P13195213165850381007

namespace A269173

/-- `or(A003188(2*n), A048725(n))` -/
def P13195213165850381007.Spec : Prop :=
  ∀ n, P13195213165850381007.a n = A269173 n

end A269173

/-! ## A269173.P6415136960272960503

`A269160(n)+and(n, A048726(n))`
-/

namespace A269173.P6415136960272960503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269160 n + Int.land (n : ℤ) (A048726 n)

end

end A269173.P6415136960272960503

namespace A269173

/-- `A269160(n)+and(n, A048726(n))` -/
def P6415136960272960503.Spec : Prop :=
  ∀ n, P6415136960272960503.a n = A269173 n

end A269173

/-! ## A269173.P4974520189144030063

`or(A269174(n)+n, A269174(n))`
-/

namespace A269173.P4974520189144030063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A269174 n + (n : ℤ)) (A269174 n)

end

end A269173.P4974520189144030063

namespace A269173

/-- `or(A269174(n)+n, A269174(n))` -/
def P4974520189144030063.Spec : Prop :=
  ∀ n, P4974520189144030063.a n = A269173 n

end A269173

/-! ## A269173.P11799290493500230708

`or(A003188(2*n), A003188(4*n))`
-/

namespace A269173.P11799290493500230708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003188 (2 * n)) (A003188 (4 * n))

end

end A269173.P11799290493500230708

namespace A269173

/-- `or(A003188(2*n), A003188(4*n))` -/
def P11799290493500230708.Spec : Prop :=
  ∀ n, P11799290493500230708.a n = A269173 n

end A269173

/-! ## A269173.P1527582701632027064

`or(A048724(2*n), A048724(n))`
-/

namespace A269173.P1527582701632027064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A048724 (2 * n)) (A048724 n)

end

end A269173.P1527582701632027064

namespace A269173

/-- `or(A048724(2*n), A048724(n))` -/
def P1527582701632027064.Spec : Prop :=
  ∀ n, P1527582701632027064.a n = A269173 n

end A269173

/-! ## A269173.P7393137121107431450

`A163617(xor(n, 2*n))`
-/

namespace A269173.P7393137121107431450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163617 (Nat.xor n (2 * n))

end

end A269173.P7393137121107431450

namespace A269173

/-- `A163617(xor(n, 2*n))` -/
def P7393137121107431450.Spec : Prop :=
  ∀ n, P7393137121107431450.a n = A269173 n

end A269173

/-! ## A269173.P5764694047716435680

`A163617(A048724(n))`
-/

namespace A269173.P5764694047716435680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163617 (A048724 n).toNat

end

end A269173.P5764694047716435680

namespace A269173

/-- `A163617(A048724(n))` -/
def P5764694047716435680.Spec : Prop :=
  ∀ n, P5764694047716435680.a n = A269173 n

end A269173

/-! ## A269173.P10329774150268558129

`A163617(A003188(2*n))`
-/

namespace A269173.P10329774150268558129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163617 (A003188 (2 * n)).toNat

end

end A269173.P10329774150268558129

namespace A269173

/-- `A163617(A003188(2*n))` -/
def P10329774150268558129.Spec : Prop :=
  ∀ n, P10329774150268558129.a n = A269173 n

end A269173

/-! ## A269173.P9187542751314274082

`A163617(A229763(2*n)+n)`
-/

namespace A269173.P9187542751314274082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163617 (A229763 (2 * n) + (n : ℤ)).toNat

end

end A269173.P9187542751314274082

namespace A269173

/-- `A163617(A229763(2*n)+n)` -/
def P9187542751314274082.Spec : Prop :=
  ∀ n, P9187542751314274082.a n = A269173 n

end A269173

/-! ## A269173.P3694962431602200634

`A163617(A213064(2*n)-n)`
-/

namespace A269173.P3694962431602200634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163617 (A213064 (2 * n) - (n : ℤ)).toNat

end

end A269173.P3694962431602200634

namespace A269173

/-- `A163617(A213064(2*n)-n)` -/
def P3694962431602200634.Spec : Prop :=
  ∀ n, P3694962431602200634.a n = A269173 n

end A269173

/-! ## A269173.P8922888149841435498

`A163617(A163617(2*n)-3*n)`
-/

namespace A269173.P8922888149841435498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163617 (A163617 (2 * n) - (3 * n : ℤ)).toNat

end

end A269173.P8922888149841435498

namespace A269173

/-- `A163617(A163617(2*n)-3*n)` -/
def P8922888149841435498.Spec : Prop :=
  ∀ n, P8922888149841435498.a n = A269173 n

end A269173

/-! ## A269173.P13272445880173859348

`A213064(A003188(2*n))+A048724(n)`
-/

namespace A269173.P13272445880173859348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213064 (A003188 (2 * n)).toNat + A048724 n

end

end A269173.P13272445880173859348

namespace A269173

/-- `A213064(A003188(2*n))+A048724(n)` -/
def P13272445880173859348.Spec : Prop :=
  ∀ n, P13272445880173859348.a n = A269173 n

end A269173

/-!
# A269174: Formula for Wolfram's Rule 124 cellular automaton: a(n) = (n OR 2n) AND ((n XOR 2n) OR (n XOR 4n)).

The programs for A269174, the canonical program `A269174.P5853859582538514396` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269174 has offset 0).

The definition of A269174 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057889, A161903, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A269174.P5853859582538514396

`A057889(A161903(A057889(n)))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A269174

/-- `A057889(A161903(A057889(n)))` -/
def P5853859582538514396.Spec : Prop :=
  ∀ n, P5853859582538514396.a n = A269174 n

theorem P5853859582538514396.correct : P5853859582538514396.Spec := by
  intro n
  simp only [A269174]

end A269174

/-! ## A269174.P10130373002660060165

`or(xor(n, 2*n)-n, xor(n, 2*n))`
-/

namespace A269174.P10130373002660060165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((Nat.xor n (2 * n) : ℤ) - (n : ℤ)) (Nat.xor n (2 * n) : ℤ)

end

end A269174.P10130373002660060165

namespace A269174

/-- `or(xor(n, 2*n)-n, xor(n, 2*n))` -/
def P10130373002660060165.Spec : Prop :=
  ∀ n, P10130373002660060165.a n = A269174 n

end A269174

/-! ## A269174.P7186878840067135410

`and(A163617(n), A269173(n))`
-/

namespace A269174.P7186878840067135410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A163617 n) (A269173 n)

end

end A269174.P7186878840067135410

namespace A269174

/-- `and(A163617(n), A269173(n))` -/
def P7186878840067135410.Spec : Prop :=
  ∀ n, P7186878840067135410.a n = A269174 n

end A269174

/-! ## A269174.P14618410524195619860

`or(2*A229763(n), A048724(n))`
-/

namespace A269174.P14618410524195619860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * A229763 n) (A048724 n)

end

end A269174.P14618410524195619860

namespace A269174

/-- `or(2*A229763(n), A048724(n))` -/
def P14618410524195619860.Spec : Prop :=
  ∀ n, P14618410524195619860.a n = A269174 n

end A269174

/-! ## A269174.P10983653660847283515

`or(n, 2*n)-A213370(A213370(n))`
-/

namespace A269174.P10983653660847283515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor n (2 * n) : ℤ) - A213370 (A213370 n).toNat

end

end A269174.P10983653660847283515

namespace A269174

/-- `or(n, 2*n)-A213370(A213370(n))` -/
def P10983653660847283515.Spec : Prop :=
  ∀ n, P10983653660847283515.a n = A269174 n

end A269174

/-! ## A269174.P13009286150579580466

`or(xor(n, 2*n), A003188(A048728(n)))`
-/

namespace A269174.P13009286150579580466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.xor n (2 * n) : ℤ) (A003188 (A048728 n).toNat)

end

end A269174.P13009286150579580466

namespace A269174

/-- `or(xor(n, 2*n), A003188(A048728(n)))` -/
def P13009286150579580466.Spec : Prop :=
  ∀ n, P13009286150579580466.a n = A269174 n

end A269174

/-! ## A269174.P3881236209588752702

`A003188(2*n)+A229763(and(n, 2*n))`
-/

namespace A269174.P3881236209588752702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (2 * n) + A229763 (Nat.land n (2 * n))

end

end A269174.P3881236209588752702

namespace A269174

/-- `A003188(2*n)+A229763(and(n, 2*n))` -/
def P3881236209588752702.Spec : Prop :=
  ∀ n, P3881236209588752702.a n = A269174 n

end A269174

/-! ## A269174.P18187932590339888422

`A229763(A213370(n))+A048724(n)`
-/

namespace A269174.P18187932590339888422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229763 (A213370 n).toNat + A048724 n

end

end A269174.P18187932590339888422

namespace A269174

/-- `A229763(A213370(n))+A048724(n)` -/
def P18187932590339888422.Spec : Prop :=
  ∀ n, P18187932590339888422.a n = A269174 n

end A269174

/-! ## A269174.P12487657088572042900

`A163617(n)-A213370(A213370(n))`
-/

namespace A269174.P12487657088572042900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163617 n - A213370 (A213370 n).toNat

end

end A269174.P12487657088572042900

namespace A269174

/-- `A163617(n)-A213370(A213370(n))` -/
def P12487657088572042900.Spec : Prop :=
  ∀ n, P12487657088572042900.a n = A269174 n

end A269174

/-! ## A269174.P14524006026712690898

`or(A003188(A048728(n)), A048724(n))`
-/

namespace A269174.P14524006026712690898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003188 (A048728 n).toNat) (A048724 n)

end

end A269174.P14524006026712690898

namespace A269174

/-- `or(A003188(A048728(n)), A048724(n))` -/
def P14524006026712690898.Spec : Prop :=
  ∀ n, P14524006026712690898.a n = A269174 n

end A269174

/-! ## A269174.P8012495209482914163

`or(A048724(n), A048726(A048735(n)))`
-/

namespace A269174.P8012495209482914163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A048724 n) (A048726 (A048735 n).toNat)

end

end A269174.P8012495209482914163

namespace A269174

/-- `or(A048724(n), A048726(A048735(n)))` -/
def P8012495209482914163.Spec : Prop :=
  ∀ n, P8012495209482914163.a n = A269174 n

end A269174

/-! ## A269174.P5986682786369380849

`or(A048724(n), A048724(A229763(n)))`
-/

namespace A269174.P5986682786369380849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A048724 n) (A048724 (A229763 n).toNat)

end

end A269174.P5986682786369380849

namespace A269174

/-- `or(A048724(n), A048724(A229763(n)))` -/
def P5986682786369380849.Spec : Prop :=
  ∀ n, P5986682786369380849.a n = A269174 n

end A269174

/-! ## A269174.P18185261737963580453

`A229763(2*A048735(n))+A048724(n)`
-/

namespace A269174.P18185261737963580453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229763 (2 * A048735 n).toNat + A048724 n

end

end A269174.P18185261737963580453

namespace A269174

/-- `A229763(2*A048735(n))+A048724(n)` -/
def P18185261737963580453.Spec : Prop :=
  ∀ n, P18185261737963580453.a n = A269174 n

end A269174

/-! ## A269174.P9962493159746270108

`A229763(A213370(n))+A003188(2*n)`
-/

namespace A269174.P9962493159746270108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229763 (A213370 n).toNat + A003188 (2 * n)

end

end A269174.P9962493159746270108

namespace A269174

/-- `A229763(A213370(n))+A003188(2*n)` -/
def P9962493159746270108.Spec : Prop :=
  ∀ n, P9962493159746270108.a n = A269174 n

end A269174

/-! ## A269174.P11692332437948399957

`or(A003188(2*n), A003188(A048728(n)))`
-/

namespace A269174.P11692332437948399957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003188 (2 * n)) (A003188 (A048728 n).toNat)

end

end A269174.P11692332437948399957

namespace A269174

/-- `or(A003188(2*n), A003188(A048728(n)))` -/
def P11692332437948399957.Spec : Prop :=
  ∀ n, P11692332437948399957.a n = A269174 n

end A269174

/-! ## A269174.P11251695547257168963

`or(A048724(n), A048724(2*A048735(n)))`
-/

namespace A269174.P11251695547257168963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A048724 n) (A048724 (2 * A048735 n).toNat)

end

end A269174.P11251695547257168963

namespace A269174

/-- `or(A048724(n), A048724(2*A048735(n)))` -/
def P11251695547257168963.Spec : Prop :=
  ∀ n, P11251695547257168963.a n = A269174 n

end A269174

/-! ## A269174.P3599617281375052975

`or(A048724(n), A048724(A048728(n)/2))`
-/

namespace A269174.P3599617281375052975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A048724 n) (A048724 (SequenceMachineLib.roundAway ((A048728 n : ℚ) / 2)).toNat)

end

end A269174.P3599617281375052975

namespace A269174

/-- `or(A048724(n), A048724(A048728(n)/2))` -/
def P3599617281375052975.Spec : Prop :=
  ∀ n, P3599617281375052975.a n = A269174 n

end A269174

/-! ## A269174.P7047492061355087416

`or(A048726(n)/2, A048726(A048735(n)))`
-/

namespace A269174.P7047492061355087416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A048726 n : ℚ) / 2)) (A048726 (A048735 n).toNat)

end

end A269174.P7047492061355087416

namespace A269174

/-- `or(A048726(n)/2, A048726(A048735(n)))` -/
def P7047492061355087416.Spec : Prop :=
  ∀ n, P7047492061355087416.a n = A269174 n

end A269174

/-! ## A269174.P16854608630082054115

`A229763(n-A229763(n))+A048724(n)`
-/

namespace A269174.P16854608630082054115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229763 ((n : ℤ) - A229763 n).toNat + A048724 n

end

end A269174.P16854608630082054115

namespace A269174

/-- `A229763(n-A229763(n))+A048724(n)` -/
def P16854608630082054115.Spec : Prop :=
  ∀ n, P16854608630082054115.a n = A269174 n

end A269174

/-! ## A269174.P18069318641577871667

`A213064(n)+n-A213370(A213370(n))`
-/

namespace A269174.P18069318641577871667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213064 n + ((n : ℤ) - A213370 (A213370 n).toNat)

end

end A269174.P18069318641577871667

namespace A269174

/-- `A213064(n)+n-A213370(A213370(n))` -/
def P18069318641577871667.Spec : Prop :=
  ∀ n, P18069318641577871667.a n = A269174 n

end A269174

/-!
# A269175: a(n) = number of distinct k for which A269174(k) = n; number of finite predecessors for pattern encoded in the binary expansion of n in Wolfram's Rule 124 cellular automaton.

The programs for A269175, there is no canonical definition to state claims against.
-/

/-! ## A269175.P3740250844634875893

`A057979(and(A089309(n), A292855(n)))`
-/

namespace A269175.P3740250844634875893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (Int.land (A089309 n) (A292855 n)).toNat

end

end A269175.P3740250844634875893

/-! ## A269175.P6703492840452664970

`A182097(and(A089309(n), A292855(n)))`
-/

namespace A269175.P6703492840452664970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (Int.land (A089309 n) (A292855 n)).toNat

end

end A269175.P6703492840452664970

/-! ## A269175.P526945852382257965

`A292802(and(A089309(n), A292855(n)))`
-/

namespace A269175.P526945852382257965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292802 (Int.land (A089309 n) (A292855 n)).toNat

end

end A269175.P526945852382257965

/-! ## A269175.P4420219369807326868

`A057979(and(A089309(n), A215823(n+1)))`
-/

namespace A269175.P4420219369807326868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (Int.land (A089309 n) (A215823 (n + 1))).toNat

end

end A269175.P4420219369807326868

/-! ## A269175.P15414182277187579450

`13%A000032(and(A089309(n), A215823(n+1)))`
-/

namespace A269175.P15414182277187579450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 13 (A000032 (Int.land (A089309 n) (A215823 (n + 1))).toNat)

end

end A269175.P15414182277187579450

/-!
# A269176: Numbers not present in A269174; indices of zeros in A269175.

The programs for A269176, the canonical program `A269176.P2376589001031672702` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269176 has offset 1).

The definition of A269176 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269176.P2376589001031672702

`comp[or(xor(n, 2*n)-n, xor(n, 2*n))]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A269176

/-- `comp[or(xor(n, 2*n)-n, xor(n, 2*n))]` -/
def P2376589001031672702.Spec : Prop :=
  ∀ n, (P2376589001031672702.a n : ℤ) = A269176 (n + 1)

theorem P2376589001031672702.correct : P2376589001031672702.Spec := by
  intro n
  simp only [A269176, Nat.add_sub_cancel]

end A269176

/-! ## A269176.P12349803344168937206

`comp[A269174(n)]`
-/

namespace A269176.P12349803344168937206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269174 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A269176.P12349803344168937206

namespace A269176

/-- `comp[A269174(n)]` -/
def P12349803344168937206.Spec : Prop :=
  ∀ n, (P12349803344168937206.a n : ℤ) = A269176 (n + 1)

end A269176

/-! ## A269176.P3915687608394363376

`comp[A269177(n)]`
-/

namespace A269176.P3915687608394363376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269177 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A269176.P3915687608394363376

namespace A269176

/-- `comp[A269177(n)]` -/
def P3915687608394363376.Spec : Prop :=
  ∀ n, (P3915687608394363376.a n : ℤ) = A269176 (n + 1)

end A269176

/-! ## A269176.P10872653975211050485

`eq[0, A269175(n)]`
-/

namespace A269176.P10872653975211050485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269175 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A269176.P10872653975211050485

namespace A269176

/-- `eq[0, A269175(n)]` -/
def P10872653975211050485.Spec : Prop :=
  ∀ n, (P10872653975211050485.a n : ℤ) = A269176 (n + 1)

end A269176

/-! ## A269176.P15412960426228806752

`record[gcd(n, A269175(2*n))]`
-/

namespace A269176.P15412960426228806752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A269175 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269176.P15412960426228806752

namespace A269176

/-- `record[gcd(n, A269175(2*n))]` -/
def P15412960426228806752.Spec : Prop :=
  ∀ n, (P15412960426228806752.a n : ℤ) = A269176 (n + 1)

end A269176

/-! ## A269176.P55417001454092121

`char[A003188(n)]*lt[A269175(n), 1]`
-/

namespace A269176.P55417001454092121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269175 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) * SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

end

end A269176.P55417001454092121

namespace A269176

/-- `char[A003188(n)]*lt[A269175(n), 1]` -/
def P55417001454092121.Spec : Prop :=
  ∀ n, (P55417001454092121.a n : ℤ) = A269176 (n + 1)

end A269176

/-! ## A269176.P7202013115719795817

`A269162(A269165(n))+lt[A269175(n), 1]`
-/

namespace A269176.P7202013115719795817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269175 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269162 (A269165 n).toNat + (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ)

end

end A269176.P7202013115719795817

namespace A269176

/-- `A269162(A269165(n))+lt[A269175(n), 1]` -/
def P7202013115719795817.Spec : Prop :=
  ∀ n, P7202013115719795817.a n = A269176 (n + 1)

end A269176

/-! ## A269176.P5019836712217893302

`A269162(A269164(n+1))+lt[A269175(n), 1]`
-/

namespace A269176.P5019836712217893302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269175 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269162 (A269164 (n + 1)).toNat + (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ)

end

end A269176.P5019836712217893302

namespace A269176

/-- `A269162(A269164(n+1))+lt[A269175(n), 1]` -/
def P5019836712217893302.Spec : Prop :=
  ∀ n, P5019836712217893302.a n = A269176 (n + 1)

end A269176

/-! ## A269176.P6417655701352379443

`eq[0, char[A269174(A057889(n))]]`
-/

namespace A269176.P6417655701352379443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269174 (A057889 n).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A269176.P6417655701352379443

namespace A269176

/-- `eq[0, char[A269174(A057889(n))]]` -/
def P6417655701352379443.Spec : Prop :=
  ∀ n, (P6417655701352379443.a n : ℤ) = A269176 (n + 1)

end A269176

/-! ## A269176.P9437555383227615291

`lt[A269175(n), char[A003188(n)]]`
-/

namespace A269176.P9437555383227615291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269175 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A269176.P9437555383227615291

namespace A269176

/-- `lt[A269175(n), char[A003188(n)]]` -/
def P9437555383227615291.Spec : Prop :=
  ∀ n, (P9437555383227615291.a n : ℤ) = A269176 (n + 1)

end A269176

/-! ## A269176.P6685999602437232736

`eq[char[A269174(n)], A106458(2*n+1)]`
-/

namespace A269176.P6685999602437232736
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269174 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106458 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A269176.P6685999602437232736

namespace A269176

/-- `eq[char[A269174(n)], A106458(2*n+1)]` -/
def P6685999602437232736.Spec : Prop :=
  ∀ n, (P6685999602437232736.a n : ℤ) = A269176 (n + 1)

end A269176

/-!
# A269177: Numbers that have a finite predecessor in Wolfram's Rule 124 cellular automaton; numbers n for which A269175(n) > 0.

The programs for A269177, there is no canonical definition to state claims against.
-/

/-! ## A269177.P15740378845528374841

`lt[0, A269175(n)]`
-/

namespace A269177.P15740378845528374841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269175 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A269177.P15740378845528374841

/-! ## A269177.P2472785666105358325

`eq[1, A269175(A269175(n)²)+1]`
-/

namespace A269177.P2472785666105358325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269175 (A269175 n ^ 2).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A269177.P2472785666105358325

/-! ## A269177.P6452835602103084400

`eq[1, A269175(a(A269175(n)²))]` with `a(0)=1`
-/

namespace A269177.P6452835602103084400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A269175 (f2 (A269175 n ^ 2).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A269177.P6452835602103084400

/-! ## A269177.P10889440602910364289

`eq[1, A014963(A005563(A269175(n)+2))]`
-/

namespace A269177.P10889440602910364289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A005563 (A269175 n + 2).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A269177.P10889440602910364289

/-! ## A269177.P6407155726125303248

`eq[0, A269175(A269175(n)*A269175(n))]`
-/

namespace A269177.P6407155726125303248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269175 (A269175 n * A269175 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A269177.P6407155726125303248

/-! ## A269177.P9046887770723130550

`lt[0, char[A269174(n)]]`
-/

namespace A269177.P9046887770723130550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269174 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A269177.P9046887770723130550

/-! ## A269177.P6088234246734669003

`eq[2, A055881(A211256(A269175(n)+1))]`
-/

namespace A269177.P6088234246734669003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055881 (A211256 (A269175 n + 1).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A269177.P6088234246734669003

/-!
# A269178: Numbers that have a unique finite predecessor in Wolfram's Rule 124 cellular automaton; numbers n for which A269175(n) = 1.

The programs for A269178, there is no canonical definition to state claims against.
-/

/-! ## A269178.P2649948917931372212

`eq[1, A269175(n)]`
-/

namespace A269178.P2649948917931372212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269175 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A269178.P2649948917931372212

/-! ## A269178.P8130547163332603646

`lt[A057979(A269175(n)²), 1]`
-/

namespace A269178.P8130547163332603646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A269175 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A269178.P8130547163332603646

/-! ## A269178.P11330868091684720415

`lt[A084495(A269175(n)+2), 3]`
-/

namespace A269178.P11330868091684720415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084495 (A269175 n + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A269178.P11330868091684720415

/-! ## A269178.P3549850307683929079

`lt[A084498(A269175(n)+2), 3]`
-/

namespace A269178.P3549850307683929079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084498 (A269175 n + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A269178.P3549850307683929079

/-! ## A269178.P7441792042307595943

`record[A269177(n)/A269175(A269177(n))]`
-/

namespace A269178.P7441792042307595943
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269177 n : ℚ) / (A269175 (A269177 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269178.P7441792042307595943

/-! ## A269178.P10720223304872871608

`lt[A084507(A269175(n)+2), 2]`
-/

namespace A269178.P10720223304872871608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084507 (A269175 n + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A269178.P10720223304872871608

/-! ## A269178.P1598179339275895496

`lt[A057979(A269175(4*n)), 1]`
-/

namespace A269178.P1598179339275895496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A269175 (4 * n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A269178.P1598179339275895496

/-!
# A269179: Number of n X n 0..3 arrays with some element plus some horizontally, diagonally, antidiagonally or vertically adjacent neighbor totalling three exactly once.

The programs for A269179, there is no canonical definition to state claims against.
-/

/-! ## A269179.P9979191263967486962

`A269186((n+1)²+n²)`
-/

namespace A269179.P9979191263967486962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269186 ((n + 1) ^ 2 + n ^ 2)

end

end A269179.P9979191263967486962

/-!
# A269180: Number of n X 2 0..3 arrays with some element plus some horizontally, diagonally, antidiagonally or vertically adjacent neighbor totalling three exactly once.

The programs for A269180, there is no canonical definition to state claims against.
-/

/-! ## A269180.P11595888058362225785

`A269186(∑[n+1]+2)`
-/

namespace A269180.P11595888058362225785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269186 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A269180.P11595888058362225785

/-! ## A269180.P1487876213447509134

`record[A010054(n)*A269186(n+2)]`
-/

namespace A269180.P1487876213447509134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A269186 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269180.P1487876213447509134

/-! ## A269180.P14927954458524425691

`record[A269186(n+2)/A241171(n+1)]`
-/

namespace A269180.P14927954458524425691
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269186 (n + 2) : ℚ) / (A241171 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269180.P14927954458524425691

/-! ## A269180.P1391901257718352613

`record[A269186(abs(A201163(n)))]`
-/

namespace A269180.P1391901257718352613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269186 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269180.P1391901257718352613

/-! ## A269180.P5881836555865040391

`record[gcd(A269186(n+4), A269214(n+2))]`
-/

namespace A269180.P5881836555865040391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A269186 (n + 4)) (A269214 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269180.P5881836555865040391

/-!
# A269181: Number of nX3 0..3 arrays with some element plus some horizontally, diagonally, antidiagonally or vertically adjacent neighbor totalling three exactly once.

The programs for A269181, there is no canonical definition to state claims against.
-/

/-! ## A269181.P15395474381980345090

`A269186(∑[n+2]+4)`
-/

namespace A269181.P15395474381980345090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269186 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A269181.P15395474381980345090

/-! ## A269181.P5223294987016540539

`lcm(2, A269186(A167614(n+1)))`
-/

namespace A269181.P5223294987016540539
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A269186 (A167614 (n + 1)).toNat)

end

end A269181.P5223294987016540539

/-! ## A269181.P7092527774143719330

`A269186(A167614(n+1))+A025466(n)`
-/

namespace A269181.P7092527774143719330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269186 (A167614 (n + 1)).toNat + A025466 n

end

end A269181.P7092527774143719330

/-! ## A269181.P13706446083776280948

`A269186(A167614(n+1))+A025469(n)`
-/

namespace A269181.P13706446083776280948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269186 (A167614 (n + 1)).toNat + A025469 n

end

end A269181.P13706446083776280948

/-! ## A269181.P11092045102688124713

`A139551(n)*A269186(A167614(n+1))`
-/

namespace A269181.P11092045102688124713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139551 n * A269186 (A167614 (n + 1)).toNat

end

end A269181.P11092045102688124713

/-!
# A269182: Number of nX4 0..3 arrays with some element plus some horizontally, diagonally, antidiagonally or vertically adjacent neighbor totalling three exactly once.

The programs for A269182, there is no canonical definition to state claims against.
-/

/-! ## A269182.P16393135266986154722

`A269186(A374004(n+1))`
-/

namespace A269182.P16393135266986154722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269186 (A374004 (n + 1)).toNat

end

end A269182.P16393135266986154722

/-! ## A269182.P6950600682835823270

`A269186(A141214(n)+7)`
-/

namespace A269182.P6950600682835823270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269186 (A141214 n + 7).toNat

end

end A269182.P6950600682835823270

/-! ## A269182.P7704946660491888855

`A269186(A055999(n)+10)`
-/

namespace A269182.P7704946660491888855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269186 (A055999 n + 10).toNat

end

end A269182.P7704946660491888855

/-! ## A269182.P4644034901192265985

`A269186(Δ[A006503(n)]+7)`
-/

namespace A269182.P4644034901192265985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269186 (f1 (n + 1) - f1 n + 7).toNat

end

end A269182.P4644034901192265985

/-! ## A269182.P6831008516576860535

`A269186(A167614(n+2)+1)`
-/

namespace A269182.P6831008516576860535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269186 (A167614 (n + 2) + 1).toNat

end

end A269182.P6831008516576860535

/-!
# A269183: Number of nX5 0..3 arrays with some element plus some horizontally, diagonally, antidiagonally or vertically adjacent neighbor totalling three exactly once.

The programs for A269183, there is no canonical definition to state claims against.
-/

/-! ## A269183.P14864528128725690053

`A269186(A374005(n+1))`
-/

namespace A269183.P14864528128725690053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269186 (A374005 (n + 1)).toNat

end

end A269183.P14864528128725690053

/-! ## A269183.P4409407348805095305

`A269186(A167499(n+3))`
-/

namespace A269183.P4409407348805095305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269186 (A167499 (n + 3)).toNat

end

end A269183.P4409407348805095305

/-! ## A269183.P6859752077268492957

`A269186(A155212(n)+13)`
-/

namespace A269183.P6859752077268492957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269186 (A155212 n + 13).toNat

end

end A269183.P6859752077268492957

/-! ## A269183.P8559600250163305679

`A269186(A056000(n)+15)`
-/

namespace A269183.P8559600250163305679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269186 (A056000 n + 15).toNat

end

end A269183.P8559600250163305679

/-! ## A269183.P12745040733027195799

`A269186(A000217(n+4)+5)`
-/

namespace A269183.P12745040733027195799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269186 (A000217 (n + 4) + 5).toNat

end

end A269183.P12745040733027195799

/-!
# A269184: Number of nX6 0..3 arrays with some element plus some horizontally, diagonally, antidiagonally or vertically adjacent neighbor totalling three exactly once.

The programs for A269184, there is no canonical definition to state claims against.
-/

/-! ## A269184.P16387319400644264434

`A269186(C(n+7, 2)-n)`
-/

namespace A269184.P16387319400644264434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269186 (Nat.choose (n + 7) 2 - n)

end

end A269184.P16387319400644264434

/-! ## A269184.P874572882367653284

`A269186(A374007(n+1))`
-/

namespace A269184.P874572882367653284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269186 (A374007 (n + 1)).toNat

end

end A269184.P874572882367653284

/-! ## A269184.P90191870930472045

`A269186(A166136(n+4))`
-/

namespace A269184.P90191870930472045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269186 (A166136 (n + 4)).toNat

end

end A269184.P90191870930472045

/-! ## A269184.P5713743478634801563

`A269186(eq[7, A131818(n+1)])`
-/

namespace A269184.P5713743478634801563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269186 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269184.P5713743478634801563

/-! ## A269184.P268482649329375913

`A269186(Δ[A023545(n+1)]+10)`
-/

namespace A269184.P268482649329375913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269186 (f1 (n + 1) - f1 n + 10).toNat

end

end A269184.P268482649329375913

/-!
# A269185: Number of nX7 0..3 arrays with some element plus some horizontally, diagonally, antidiagonally or vertically adjacent neighbor totalling three exactly once.

The programs for A269185, there is no canonical definition to state claims against.
-/

/-! ## A269185.P14473686989502676529

`A269186(A374008(n+1))`
-/

namespace A269185.P14473686989502676529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269186 (A374008 (n + 1)).toNat

end

end A269185.P14473686989502676529

/-! ## A269185.P172292452129279620

`A269186(A056119(n)+28)`
-/

namespace A269185.P172292452129279620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269186 (A056119 n + 28).toNat

end

end A269185.P172292452129279620

/-! ## A269185.P12227252660237015107

`A269186(eq[8, A131818(n+1)])`
-/

namespace A269185.P12227252660237015107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269186 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269185.P12227252660237015107

/-! ## A269185.P12974382538786403118

`A269186(A000124(n+7)-(n+1))`
-/

namespace A269185.P12974382538786403118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269186 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A269185.P12974382538786403118

/-! ## A269185.P15258572981936643995

`A269186(A055999(n+4))`
-/

namespace A269185.P15258572981936643995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269186 (A055999 (n + 4)).toNat

end

end A269185.P15258572981936643995

/-!
# A269186: T(n,k)=Number of nXk 0..3 arrays with some element plus some horizontally, diagonally, antidiagonally or vertically adjacent neighbor totalling three exactly once.

The programs for A269186, there is no canonical definition to state claims against.
-/

/-! ## A269186.P1164844676112078265

`A269194(n+1)-4*A233026(n+1)`
-/

namespace A269186.P1164844676112078265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269194 (n + 1) - 4 * A233026 (n + 1)

end

end A269186.P1164844676112078265

/-! ## A269186.P3025478412591305407

`A269194(n+1)-A008574(A233026(n+1))`
-/

namespace A269186.P3025478412591305407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269194 (n + 1) - A008574 (A233026 (n + 1)).toNat

end

end A269186.P3025478412591305407

/-! ## A269186.P11862418055417478696

`A269097(n+1)/A007318(A062399(n))`
-/

namespace A269186.P11862418055417478696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269097 (n + 1) : ℚ) / (A007318 (A062399 n).toNat : ℚ)

end

end A269186.P11862418055417478696

/-! ## A269186.P4391993689249975987

`A269097(n+1)/A007318(A351870(n))`
-/

namespace A269186.P4391993689249975987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269097 (n + 1) : ℚ) / (A007318 (A351870 n).toNat : ℚ)

end

end A269186.P4391993689249975987

/-! ## A269186.P17014233949469898685

`A269097(n+1)/A114225(record[A062399(n)])`
-/

namespace A269186.P17014233949469898685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062399 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269097 (n + 1) : ℚ) / (A114225 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ)

end

end A269186.P17014233949469898685

/-!
# A269187: Number of n X n 0..3 arrays with some element plus some horizontally, diagonally, antidiagonally or vertically adjacent neighbor totalling three no more than once.

The programs for A269187, there is no canonical definition to state claims against.
-/

/-! ## A269187.P8753418854930423189

`A269194((n+1)²+n²)`
-/

namespace A269187.P8753418854930423189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269194 ((n + 1) ^ 2 + n ^ 2)

end

end A269187.P8753418854930423189

/-! ## A269187.P13240603761046942902

`record[gcd(A114327(n), A269194(n+1))]`
-/

namespace A269187.P13240603761046942902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A269194 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269187.P13240603761046942902

/-!
# A269188: Number of n X 2 0..3 arrays with some element plus some horizontally, diagonally, antidiagonally or vertically adjacent neighbor totalling three no more than once.

The programs for A269188, there is no canonical definition to state claims against.
-/

/-! ## A269188.P1688835123686139800

`A269194(∑[n+1]+2)`
-/

namespace A269188.P1688835123686139800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269194 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A269188.P1688835123686139800

/-! ## A269188.P4646227283911819482

`record[A010054(n)*A269194(n+2)]`
-/

namespace A269188.P4646227283911819482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A269194 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269188.P4646227283911819482

/-! ## A269188.P4486979601768991946

`record[gcd(A002262(n), A269194(n+2))]`
-/

namespace A269188.P4486979601768991946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A269194 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269188.P4486979601768991946

/-! ## A269188.P10322885107928113889

`record[A269194(n+2)/A241171(n+1)]`
-/

namespace A269188.P10322885107928113889
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269194 (n + 2) : ℚ) / (A241171 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269188.P10322885107928113889

/-! ## A269188.P17516274084288400235

`record[A269194(abs(A201163(n)))]`
-/

namespace A269188.P17516274084288400235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269194 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269188.P17516274084288400235

/-!
# A269189: Number of nX3 0..3 arrays with some element plus some horizontally, diagonally, antidiagonally or vertically adjacent neighbor totalling three no more than once.

The programs for A269189, there is no canonical definition to state claims against.
-/

/-! ## A269189.P15064185105156764017

`A269194(∑[n+2]+4)`
-/

namespace A269189.P15064185105156764017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269194 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A269189.P15064185105156764017

/-! ## A269189.P6038658599242282951

`lcm(2, A269194(A167614(n+1)))`
-/

namespace A269189.P6038658599242282951
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A269194 (A167614 (n + 1)).toNat)

end

end A269189.P6038658599242282951

/-! ## A269189.P15365964938448038417

`A269194(A167614(n+1))+A025469(n)`
-/

namespace A269189.P15365964938448038417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269194 (A167614 (n + 1)).toNat + A025469 n

end

end A269189.P15365964938448038417

/-! ## A269189.P2232965660112354884

`A016086(n)*A269194(A167614(n+1))`
-/

namespace A269189.P2232965660112354884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016086 n * A269194 (A167614 (n + 1)).toNat

end

end A269189.P2232965660112354884

/-! ## A269189.P3181137685725562196

`A269194(A167614(n+1))%A216940(n+1)`
-/

namespace A269189.P3181137685725562196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269194 (A167614 (n + 1)).toNat) (A216940 (n + 1))

end

end A269189.P3181137685725562196

/-!
# A269190: Number of nX4 0..3 arrays with some element plus some horizontally, diagonally, antidiagonally or vertically adjacent neighbor totalling three no more than once.

The programs for A269190, there is no canonical definition to state claims against.
-/

/-! ## A269190.P16299862639230305959

`A269194(A374004(n+1))`
-/

namespace A269190.P16299862639230305959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269194 (A374004 (n + 1)).toNat

end

end A269190.P16299862639230305959

/-! ## A269190.P14589382948522924298

`A269194(A055999(n)+10)`
-/

namespace A269190.P14589382948522924298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269194 (A055999 n + 10).toNat

end

end A269190.P14589382948522924298

/-! ## A269190.P343965365058450809

`A269194(A167614(n+2)+1)`
-/

namespace A269190.P343965365058450809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269194 (A167614 (n + 2) + 1).toNat

end

end A269190.P343965365058450809

/-! ## A269190.P9188965906290677294

`A269194(A166136(n+2)-2)`
-/

namespace A269190.P9188965906290677294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269194 (A166136 (n + 2) - 2).toNat

end

end A269190.P9188965906290677294

/-! ## A269190.P8330411286974512057

`A269194(eq[3, A002262(n)]+1)`
-/

namespace A269190.P8330411286974512057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269194 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A269190.P8330411286974512057

/-!
# A269191: Number of nX5 0..3 arrays with some element plus some horizontally, diagonally, antidiagonally or vertically adjacent neighbor totalling three no more than once.

The programs for A269191, there is no canonical definition to state claims against.
-/

/-! ## A269191.P16740955044325022615

`A269194(A374005(n+1))`
-/

namespace A269191.P16740955044325022615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269194 (A374005 (n + 1)).toNat

end

end A269191.P16740955044325022615

/-! ## A269191.P1306557183187496437

`A269194(A167499(n+3))`
-/

namespace A269191.P1306557183187496437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269194 (A167499 (n + 3)).toNat

end

end A269191.P1306557183187496437

/-! ## A269191.P4791113346288599111

`A269194(A155212(n)+13)`
-/

namespace A269191.P4791113346288599111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269194 (A155212 n + 13).toNat

end

end A269191.P4791113346288599111

/-! ## A269191.P10774416022947412470

`A269194(A056000(n)+15)`
-/

namespace A269191.P10774416022947412470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269194 (A056000 n + 15).toNat

end

end A269191.P10774416022947412470

/-! ## A269191.P14332594963237010083

`A269194(eq[4, A002262(n)]+1)`
-/

namespace A269191.P14332594963237010083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269194 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A269191.P14332594963237010083

/-!
# A269192: Number of nX6 0..3 arrays with some element plus some horizontally, diagonally, antidiagonally or vertically adjacent neighbor totalling three no more than once.

The programs for A269192, there is no canonical definition to state claims against.
-/

/-! ## A269192.P10220840469224104669

`A269194(C(n+7, 2)-n)`
-/

namespace A269192.P10220840469224104669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269194 (Nat.choose (n + 7) 2 - n)

end

end A269192.P10220840469224104669

/-! ## A269192.P5469860194995552569

`A269194(A374007(n+1))`
-/

namespace A269192.P5469860194995552569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269194 (A374007 (n + 1)).toNat

end

end A269192.P5469860194995552569

/-! ## A269192.P1815806505221265103

`A269194(A166136(n+4))`
-/

namespace A269192.P1815806505221265103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269194 (A166136 (n + 4)).toNat

end

end A269192.P1815806505221265103

/-! ## A269192.P18019115918951436770

`A269194(Δ[A023545(n+1)]+10)`
-/

namespace A269192.P18019115918951436770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269194 (f1 (n + 1) - f1 n + 10).toNat

end

end A269192.P18019115918951436770

/-! ## A269192.P4049879939511456230

`A269194(A052905(n+3))`
-/

namespace A269192.P4049879939511456230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269194 (A052905 (n + 3)).toNat

end

end A269192.P4049879939511456230

/-!
# A269193: Number of nX7 0..3 arrays with some element plus some horizontally, diagonally, antidiagonally or vertically adjacent neighbor totalling three no more than once.

The programs for A269193, there is no canonical definition to state claims against.
-/

/-! ## A269193.P7517612596643129483

`A269194(A374008(n+1))`
-/

namespace A269193.P7517612596643129483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269194 (A374008 (n + 1)).toNat

end

end A269193.P7517612596643129483

/-! ## A269193.P6855135956363200016

`A269194(A056119(n)+28)`
-/

namespace A269193.P6855135956363200016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269194 (A056119 n + 28).toNat

end

end A269193.P6855135956363200016

/-! ## A269193.P13910611449225545842

`A269194(eq[8, A131818(n+1)])`
-/

namespace A269193.P13910611449225545842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269194 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269193.P13910611449225545842

/-! ## A269193.P3029333804357272216

`A269194(eq[6, A144328(n+1)]+1)`
-/

namespace A269193.P3029333804357272216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269194 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A269193.P3029333804357272216

/-! ## A269193.P7448811613156671113

`A269194(A055999(n+4))`
-/

namespace A269193.P7448811613156671113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269194 (A055999 (n + 4)).toNat

end

end A269193.P7448811613156671113

/-!
# A269194: T(n,k)=Number of nXk 0..3 arrays with some element plus some horizontally, diagonally, antidiagonally or vertically adjacent neighbor totalling three no more than once.

The programs for A269194, there is no canonical definition to state claims against.
-/

/-! ## A269194.P1436415043458376659

`A269186(n+1)+4*A233026(n+1)`
-/

namespace A269194.P1436415043458376659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269186 (n + 1) + 4 * A233026 (n + 1)

end

end A269194.P1436415043458376659

/-! ## A269194.P880544043351341436

`A269186(n+1)+A008574(A233026(n+1))`
-/

namespace A269194.P880544043351341436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269186 (n + 1) + A008574 (A233026 (n + 1)).toNat

end

end A269194.P880544043351341436

/-! ## A269194.P12596131128280730559

`A269097(n+1)/A007318(A062399(n))+4*A233026(n+1)`
-/

namespace A269194.P12596131128280730559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269097 (n + 1) : ℚ) / (A007318 (A062399 n).toNat : ℚ) + (4 * A233026 (n + 1) : ℚ)

end

end A269194.P12596131128280730559

/-! ## A269194.P16576792260896228990

`A269097(n+1)/A007318(A351870(n))+4*A233026(n+1)`
-/

namespace A269194.P16576792260896228990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269097 (n + 1) : ℚ) / (A007318 (A351870 n).toNat : ℚ) + (4 * A233026 (n + 1) : ℚ)

end

end A269194.P16576792260896228990

/-!
# A269195: Number of n X n 0..3 arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling three no more than once.

The programs for A269195, there is no canonical definition to state claims against.
-/

/-! ## A269195.P12661233525352693154

`A269201(∑[4*n]+1)`
-/

namespace A269195.P12661233525352693154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269201 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A269195.P12661233525352693154

/-!
# A269196: Number of n X 3 0..3 arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling three no more than once.

The programs for A269196, there is no canonical definition to state claims against.
-/

/-! ## A269196.P4495522682318792583

`A269201(∑[n+3]+1)`
-/

namespace A269196.P4495522682318792583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269201 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A269196.P4495522682318792583

/-! ## A269196.P5955163696118527252

`lcm(4, A269201(A034856(n+2)))`
-/

namespace A269196.P5955163696118527252
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A269201 (A034856 (n + 2)).toNat)

end

end A269196.P5955163696118527252

/-! ## A269196.P8877944041718672761

`A269201(A034856(n+2))+A151878(n+1)`
-/

namespace A269196.P8877944041718672761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269201 (A034856 (n + 2)).toNat + A151878 (n + 1)

end

end A269196.P8877944041718672761

/-! ## A269196.P772592217452138023

`A007318(A000096(n))*A269201(A034856(n+2))`
-/

namespace A269196.P772592217452138023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000096 n).toNat * A269201 (A034856 (n + 2)).toNat

end

end A269196.P772592217452138023

/-! ## A269196.P13401667037681643933

`A007318(A165878(n))*A269201(A034856(n+2))`
-/

namespace A269196.P13401667037681643933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A165878 n).toNat * A269201 (A034856 (n + 2)).toNat

end

end A269196.P13401667037681643933

/-!
# A269197: Number of n X 4 0..3 arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling three no more than once.

The programs for A269197, there is no canonical definition to state claims against.
-/

/-! ## A269197.P8982954267382452511

`A269201(A141214(n+1))`
-/

namespace A269197.P8982954267382452511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269201 (A141214 (n + 1)).toNat

end

end A269197.P8982954267382452511

/-! ## A269197.P13251738947688790908

`A269201(A155212(n)+5)`
-/

namespace A269197.P13251738947688790908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269201 (A155212 n + 5).toNat

end

end A269197.P13251738947688790908

/-! ## A269197.P10719597782131391140

`A269201(A056000(n)+7)`
-/

namespace A269197.P10719597782131391140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269201 (A056000 n + 7).toNat

end

end A269197.P10719597782131391140

/-! ## A269197.P11334013257938084002

`A269201(A052905(n+1)+2)`
-/

namespace A269197.P11334013257938084002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269201 (A052905 (n + 1) + 2).toNat

end

end A269197.P11334013257938084002

/-! ## A269197.P17416500288886219097

`A269201(A055999(n+1)+3)`
-/

namespace A269197.P17416500288886219097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269201 (A055999 (n + 1) + 3).toNat

end

end A269197.P17416500288886219097

/-!
# A269198: Number of n X 5 0..3 arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling three no more than once.

The programs for A269198, there is no canonical definition to state claims against.
-/

/-! ## A269198.P702505853222642581

`A269201(A046691(n+3))`
-/

namespace A269198.P702505853222642581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269201 (A046691 (n + 3)).toNat

end

end A269198.P702505853222642581

/-! ## A269198.P15225716017808090153

`A269201(eq[4, A193592(n)])`
-/

namespace A269198.P15225716017808090153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269201 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269198.P15225716017808090153

/-! ## A269198.P6788361857965973363

`A269201(Δ[A023545(n+1)])`
-/

namespace A269198.P6788361857965973363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269201 (f1 (n + 1) - f1 n).toNat

end

end A269198.P6788361857965973363

/-! ## A269198.P1913745611741493872

`A269201(eq[5, A200370(n+1)])`
-/

namespace A269198.P1913745611741493872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269201 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269198.P1913745611741493872

/-! ## A269198.P16898675532271109214

`A269201(eq[8, A057728(n+1)])`
-/

namespace A269198.P16898675532271109214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269201 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269198.P16898675532271109214

/-!
# A269199: Number of nX6 0..3 arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling three no more than once.

The programs for A269199, there is no canonical definition to state claims against.
-/

/-! ## A269199.P5894327025372768045

`A269201(A052905(n+3))`
-/

namespace A269199.P5894327025372768045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269201 (A052905 (n + 3)).toNat

end

end A269199.P5894327025372768045

/-! ## A269199.P11424455095791784935

`A269201(A056119(n)+16)`
-/

namespace A269199.P11424455095791784935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269201 (A056119 n + 16).toNat

end

end A269199.P11424455095791784935

/-! ## A269199.P10936645814555243194

`A269201(eq[3, A219347(n)])`
-/

namespace A269199.P10936645814555243194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269201 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269199.P10936645814555243194

/-! ## A269199.P9371046213698900851

`A269201(Δ[A023545(n+2)]-1)`
-/

namespace A269199.P9371046213698900851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269201 (f1 (n + 1) - f1 n - 1).toNat

end

end A269199.P9371046213698900851

