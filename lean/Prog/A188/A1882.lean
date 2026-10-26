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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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
# A188202: Central coefficients in (1 + 2^n*x + x^2)^n.

The programs for A188202, there is no canonical definition to state claims against.
-/

/-! ## A188202.P403672868208570712

`A292627(eq[A025581(n), A059268(n)])`
-/

namespace A188202.P403672868208570712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292627 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A188202.P403672868208570712

/-!
# A188204: Number of nondecreasing arrangements of n numbers in -(2n-2)..(2n-2) with sum zero.

The programs for A188204, there is no canonical definition to state claims against.
-/

/-! ## A188204.P4570565905711407292

`A204461(n)+A188324(n+1)`
-/

namespace A188204.P4570565905711407292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204461 n + A188324 (n + 1)

end

end A188204.P4570565905711407292

/-! ## A188204.P16379860971444038912

`A204459(C(n+7, 2)-n-1)+A188324(n+1)`
-/

namespace A188204.P16379860971444038912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204459 ((Nat.choose (n + 7) 2 : ℤ) - (n : ℤ) - 1).toNat + A188324 (n + 1)

end

end A188204.P16379860971444038912

/-! ## A188204.P5582295890674690737

`A183917(A276819(n))`
-/

namespace A188204.P5582295890674690737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183917 (A276819 n).toNat

end

end A188204.P5582295890674690737

/-! ## A188204.P15314341500786829948

`A183917(A022266(n)+1)`
-/

namespace A188204.P15314341500786829948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183917 (A022266 n + 1).toNat

end

end A188204.P15314341500786829948

/-! ## A188204.P17008839051801666398

`A188211((n+1)²+n²)`
-/

namespace A188204.P17008839051801666398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188211 ((n + 1) ^ 2 + n ^ 2)

end

end A188204.P17008839051801666398

/-!
# A188205: Number of nondecreasing arrangements of n numbers in -(n+1)..(n+1) with sum zero.

The programs for A188205, there is no canonical definition to state claims against.
-/

/-! ## A188205.P14564237235469764608

`A188211(∑[n+3]+1)`
-/

namespace A188205.P14564237235469764608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188211 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A188205.P14564237235469764608

/-! ## A188205.P525694299945427384

`record[char[A055998(n)]*A188211(n+1)]`
-/

namespace A188205.P525694299945427384
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055998 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A188211 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188205.P525694299945427384

/-! ## A188205.P4627875987585677883

`lcm(A158388(n), A188211(A052905(n)+3))`
-/

namespace A188205.P4627875987585677883
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A158388 n) (A188211 (A052905 n + 3).toNat)

end

end A188205.P4627875987585677883

/-! ## A188205.P15317678965211209799

`A188211(A052905(n)+3)+2%A007318(C(2, n))`
-/

namespace A188205.P15317678965211209799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188211 (A052905 n + 3).toNat + Int.tmod 2 (A007318 (Nat.choose 2 n))

end

end A188205.P15317678965211209799

/-! ## A188205.P16613540150927578308

`A188211(A052905(n)+3)+C(n, A000040(n+1))`
-/

namespace A188205.P16613540150927578308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188211 (A052905 n + 3).toNat + (Nat.choose n (A000040 (n + 1)).toNat : ℤ)

end

end A188205.P16613540150927578308

/-!
# A188206: Number of nondecreasing arrangements of n numbers in -(n+2)..(n+2) with sum zero.

The programs for A188206, there is no canonical definition to state claims against.
-/

/-! ## A188206.P12432749288495244931

`A183917(∑[4*(n+1)])`
-/

namespace A188206.P12432749288495244931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183917 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A188206.P12432749288495244931

/-! ## A188206.P12265804065591814895

`A201503(A081270(n+1))`
-/

namespace A188206.P12265804065591814895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201503 (A081270 (n + 1)).toNat

end

end A188206.P12265804065591814895

/-! ## A188206.P17328242360151455983

`A188211(A141214(n+1))`
-/

namespace A188206.P17328242360151455983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188211 (A141214 (n + 1)).toNat

end

end A188206.P17328242360151455983

/-! ## A188206.P4600744904209219202

`A188211(A027379(n+2))`
-/

namespace A188206.P4600744904209219202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188211 (A027379 (n + 2)).toNat

end

end A188206.P4600744904209219202

/-! ## A188206.P9508786614276588682

`A188211(A055998(n+2))`
-/

namespace A188206.P9508786614276588682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188211 (A055998 (n + 2)).toNat

end

end A188206.P9508786614276588682

/-!
# A188207: Number of nondecreasing arrangements of n numbers in -(n+3)..(n+3) with sum zero.

The programs for A188207, there is no canonical definition to state claims against.
-/

/-! ## A188207.P2102258373875778626

`A188211(A046691(n+3))`
-/

namespace A188207.P2102258373875778626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188211 (A046691 (n + 3)).toNat

end

end A188207.P2102258373875778626

/-! ## A188207.P7908853464483064724

`A183917(A004273((n+2)²))`
-/

namespace A188207.P7908853464483064724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183917 (A004273 ((n + 2) ^ 2)).toNat

end

end A188207.P7908853464483064724

/-! ## A188207.P6073329787917279526

`A183917(∑[A008574(n)+6])`
-/

namespace A188207.P6073329787917279526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183917 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A188207.P6073329787917279526

/-! ## A188207.P17936246907990393815

`A183917(A001105(n+2)-1)`
-/

namespace A188207.P17936246907990393815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183917 (A001105 (n + 2) - 1).toNat

end

end A188207.P17936246907990393815

/-! ## A188207.P11829194705667477992

`record[A183917(A074148(A093178(n)))]`
-/

namespace A188207.P11829194705667477992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183917 (A074148 (A093178 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188207.P11829194705667477992

/-!
# A188208: Number of nondecreasing arrangements of n numbers in -(n+4)..(n+4) with sum zero.

The programs for A188208, there is no canonical definition to state claims against.
-/

/-! ## A188208.P6819146727844826703

`A183917(A090288(n+1)+1)`
-/

namespace A188208.P6819146727844826703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183917 (A090288 (n + 1) + 1).toNat

end

end A188208.P6819146727844826703

/-! ## A188208.P17837254456659855338

`A188211(Δ[Δ[A006504(n+1)]])`
-/

namespace A188208.P17837254456659855338
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188211 (f1 (n + 1) - f1 n).toNat

end

end A188208.P17837254456659855338

/-! ## A188208.P7566503534285874056

`A188211(Δ[A023551(n+1)]+1)`
-/

namespace A188208.P7566503534285874056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188211 (f1 (n + 1) - f1 n + 1).toNat

end

end A188208.P7566503534285874056

/-! ## A188208.P5046098808495316131

`A183917(A000124(2*(n+2))+n)`
-/

namespace A188208.P5046098808495316131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183917 (A000124 (2 * (n + 2)) + (n : ℤ)).toNat

end

end A188208.P5046098808495316131

/-! ## A188208.P10043081722886803545

`A183917(n+2+A000096(2*n+3))`
-/

namespace A188208.P10043081722886803545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183917 ((n + 2 : ℤ) + A000096 (2 * n + 3)).toNat

end

end A188208.P10043081722886803545

/-!
# A188209: Number of nondecreasing arrangements of n numbers in -(n+5)..(n+5) with sum zero.

The programs for A188209, there is no canonical definition to state claims against.
-/

/-! ## A188209.P11196287547908174767

`A183917(4*(n+2)+2*(n+2)²)`
-/

namespace A188209.P11196287547908174767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183917 (4 * (n + 2) + 2 * (n + 2) ^ 2)

end

end A188209.P11196287547908174767

/-! ## A188209.P10831812440702833680

`A188211(A055999(n+4))`
-/

namespace A188209.P10831812440702833680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188211 (A055999 (n + 4)).toNat

end

end A188209.P10831812440702833680

/-! ## A188209.P11351858214508142584

`A188211(Δ[A023551(n+2)])`
-/

namespace A188209.P11351858214508142584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188211 (f1 (n + 1) - f1 n).toNat

end

end A188209.P11351858214508142584

/-! ## A188209.P13649254385009512717

`A188211(A000096(n+6)-5)`
-/

namespace A188209.P13649254385009512717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188211 (A000096 (n + 6) - 5).toNat

end

end A188209.P13649254385009512717

/-! ## A188209.P2231573512334805515

`A188211(A000124(n+7)-7)`
-/

namespace A188209.P2231573512334805515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188211 (A000124 (n + 7) - 7).toNat

end

end A188209.P2231573512334805515

/-!
# A188210: Number of nondecreasing arrangements of n numbers in -(n+6)..(n+6) with sum zero.

The programs for A188210, there is no canonical definition to state claims against.
-/

/-! ## A188210.P11655529918028069363

`A183917(A090288(n+2))`
-/

namespace A188210.P11655529918028069363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183917 (A090288 (n + 2)).toNat

end

end A188210.P11655529918028069363

/-! ## A188210.P15975983786264176732

`A183917(A046092(n+3)-2)`
-/

namespace A188210.P15975983786264176732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183917 (A046092 (n + 3) - 2).toNat

end

end A188210.P15975983786264176732

/-! ## A188210.P14551239401344784505

`A183917(A001844(n+3)-3)`
-/

namespace A188210.P14551239401344784505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183917 (A001844 (n + 3) - 3).toNat

end

end A188210.P14551239401344784505

/-! ## A188210.P388376231604650621

`A183917(Δ[2*A077415(n+3)])`
-/

namespace A188210.P388376231604650621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A077415 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183917 (f1 (n + 1) - f1 n).toNat

end

end A188210.P388376231604650621

/-! ## A188210.P14548710599520609446

`A188211(A161680(n+8)+n+1)`
-/

namespace A188210.P14548710599520609446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188211 (A161680 (n + 8) + (n + 1 : ℤ)).toNat

end

end A188210.P14548710599520609446

/-!
# A188211: T(n,k)=Number of nondecreasing arrangements of n numbers in -(n+k-2)..(n+k-2) with sum zero.

The programs for A188211, there is no canonical definition to state claims against.
-/

/-! ## A188211.P7164321290974137427

`A272322(A294761(n))+A073020(n+1)`
-/

namespace A188211.P7164321290974137427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272322 (A294761 n).toNat + A073020 (n + 1)

end

end A188211.P7164321290974137427

/-! ## A188211.P16170388734397924783

`A162439(A194583(n))-A110509(A334622(n))`
-/

namespace A188211.P16170388734397924783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162439 (A194583 n).toNat - A110509 (A334622 n).toNat

end

end A188211.P16170388734397924783

/-! ## A188211.P2976237126260867544

`∏{e}[A003665(A086271(n+1)), #]`
-/

namespace A188211.P2976237126260867544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003665 (A086271 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A188211.P2976237126260867544

/-! ## A188211.P9943267876596268287

`A046899(n)-A139354(A304334(n)²)`
-/

namespace A188211.P9943267876596268287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 n - A139354 (A304334 n ^ 2).toNat

end

end A188211.P9943267876596268287

/-! ## A188211.P3714102416374561542

`A080677(A125077(n+1)%A125067(n))`
-/

namespace A188211.P3714102416374561542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080677 (Int.tmod (A125077 (n + 1)) (A125067 (n + 10))).toNat

end

end A188211.P3714102416374561542

/-!
# A188212: Number of nondecreasing arrangements of 4 numbers in -(n+2)..(n+2) with sum zero.

The programs for A188212, the canonical program `A188212.P3002002980398510572` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188212 has offset 1).

The definition of A188212 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188212.P894369766406383372

`A188238(n+1)-A188335(n+1)`
-/

namespace A188212.P894369766406383372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188238 (n + 1) - A188335 (n + 1)

end

end A188212.P894369766406383372

namespace A188212

/-- `A188238(n+1)-A188335(n+1)` -/
def P894369766406383372.Spec : Prop :=
  ∀ n, P894369766406383372.a n = A188212 (n + 1)

end A188212

/-! ## A188212.P3002002980398510572

`A188334(n+1)+A188334(n+2)-A188182(n+2)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A188212

/-- `A188334(n+1)+A188334(n+2)-A188182(n+2)` -/
def P3002002980398510572.Spec : Prop :=
  ∀ n, P3002002980398510572.a n = A188212 (n + 1)

theorem P3002002980398510572.correct : P3002002980398510572.Spec := by
  intro n
  simp only [A188212, Nat.add_sub_cancel]

end A188212

/-! ## A188212.P12300771063884827711

`∑[A008822(n+3)]+8`
-/

namespace A188212.P12300771063884827711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008822 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 8

end

end A188212.P12300771063884827711

namespace A188212

/-- `∑[A008822(n+3)]+8` -/
def P12300771063884827711.Spec : Prop :=
  ∀ n, P12300771063884827711.a n = A188212 (n + 1)

end A188212

/-! ## A188212.P6515037357444637968

`A254875(n+3)+A254708(2*n)`
-/

namespace A188212.P6515037357444637968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254875 (n + 3) + A254708 (2 * n)

end

end A188212.P6515037357444637968

namespace A188212

/-- `A254875(n+3)+A254708(2*n)` -/
def P6515037357444637968.Spec : Prop :=
  ∀ n, P6515037357444637968.a n = A188212 (n + 1)

end A188212

/-! ## A188212.P15680319651319085089

`∑[floor(A340266(2*(n+1)+4)/3)]+8`
-/

namespace A188212.P15680319651319085089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A340266 (2 * (n + 1) + 4) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 8

end

end A188212.P15680319651319085089

namespace A188212

/-- `∑[floor(A340266(2*(n+1)+4)/3)]+8` -/
def P15680319651319085089.Spec : Prop :=
  ∀ n, P15680319651319085089.a n = A188212 (n + 1)

end A188212

/-! ## A188212.P7841283099164867722

`round(sqrt((A000601(2*n+5)+(n+5)/3)²+1))`
-/

namespace A188212.P7841283099164867722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (((A000601 (2 * n + 5) : ℚ) + (n + 5 : ℚ) / 3) ^ 2 + 1 : ℝ))

end

end A188212.P7841283099164867722

namespace A188212

/-- `round(sqrt((A000601(2*n+5)+(n+5)/3)²+1))` -/
def P7841283099164867722.Spec : Prop :=
  ∀ n, P7841283099164867722.a n = A188212 (n + 1)

end A188212

/-! ## A188212.P4685252581532397190

`A002264(n)+2+A000601(2*n+5)`
-/

namespace A188212.P4685252581532397190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 n + 2 + A000601 (2 * n + 5)

end

end A188212.P4685252581532397190

namespace A188212

/-- `A002264(n)+2+A000601(2*n+5)` -/
def P4685252581532397190.Spec : Prop :=
  ∀ n, P4685252581532397190.a n = A188212 (n + 1)

end A188212

/-! ## A188212.P1188063204375316667

`A001973(2*(n+3))`
-/

namespace A188212.P1188063204375316667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001973 (2 * (n + 3))

end

end A188212.P1188063204375316667

namespace A188212

/-- `A001973(2*(n+3))` -/
def P1188063204375316667.Spec : Prop :=
  ∀ n, P1188063204375316667.a n = A188212 (n + 1)

end A188212

/-! ## A188212.P13259052815885176481

`Δ[A377067(2*(n+2))]`
-/

namespace A188212.P13259052815885176481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377067 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188212.P13259052815885176481

namespace A188212

/-- `Δ[A377067(2*(n+2))]` -/
def P13259052815885176481.Spec : Prop :=
  ∀ n, P13259052815885176481.a n = A188212 (n + 1)

end A188212

/-! ## A188212.P3126990262021133958

`record[A001973(A168195(n+1)+1)]`
-/

namespace A188212.P3126990262021133958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001973 (A168195 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188212.P3126990262021133958

namespace A188212

/-- `record[A001973(A168195(n+1)+1)]` -/
def P3126990262021133958.Spec : Prop :=
  ∀ n, P3126990262021133958.a n = A188212 (n + 1)

end A188212

/-! ## A188212.P7375906686701016196

`or(char[1], A001973(A103517(n+2)))`
-/

namespace A188212.P7375906686701016196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A001973 (A103517 (n + 2)).toNat)

end

end A188212.P7375906686701016196

namespace A188212

/-- `or(char[1], A001973(A103517(n+2)))` -/
def P7375906686701016196.Spec : Prop :=
  ∀ n, P7375906686701016196.a n = A188212 (n + 1)

end A188212

/-! ## A188212.P1363246052479436148

`(A001973(Δ[A082111(n)])^(1/2))²`
-/

namespace A188212.P1363246052479436148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082111 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A001973 (f1 (n + 1) - f1 n).toNat : ℝ) ^ ((1 : ℚ) / 2 : ℝ)) ^ 2

end

end A188212.P1363246052479436148

namespace A188212

/-- `(A001973(Δ[A082111(n)])^(1/2))²` -/
def P1363246052479436148.Spec : Prop :=
  ∀ n, P1363246052479436148.a n = (A188212 (n + 1) : ℝ)

end A188212

/-! ## A188212.P11436904299984162018

`A001973(A004275(n+4))/gcd(n, n+1)`
-/

namespace A188212.P11436904299984162018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001973 (A004275 (n + 4)).toNat : ℚ) / (Nat.gcd n (n + 1) : ℚ)

end

end A188212.P11436904299984162018

namespace A188212

/-- `A001973(A004275(n+4))/gcd(n, n+1)` -/
def P11436904299984162018.Spec : Prop :=
  ∀ n, P11436904299984162018.a n = (A188212 (n + 1) : ℚ)

end A188212

/-! ## A188212.P13205927443742763278

`A001973(A103517(n+2))+A000007(n+1)`
-/

namespace A188212.P13205927443742763278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001973 (A103517 (n + 2)).toNat + A000007 (n + 1)

end

end A188212.P13205927443742763278

namespace A188212

/-- `A001973(A103517(n+2))+A000007(n+1)` -/
def P13205927443742763278.Spec : Prop :=
  ∀ n, P13205927443742763278.a n = A188212 (n + 1)

end A188212

/-! ## A188212.P10500559455176934283

`A026924(4*(n+4))`
-/

namespace A188212.P10500559455176934283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026924 (4 * (n + 4))

end

end A188212.P10500559455176934283

namespace A188212

/-- `A026924(4*(n+4))` -/
def P10500559455176934283.Spec : Prop :=
  ∀ n, P10500559455176934283.a n = A188212 (n + 1)

end A188212

/-! ## A188212.P3603303967602097966

`A062890(4*(n+4))`
-/

namespace A188212.P3603303967602097966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062890 (4 * (n + 4))

end

end A188212.P3603303967602097966

namespace A188212

/-- `A062890(4*(n+4))` -/
def P3603303967602097966.Spec : Prop :=
  ∀ n, P3603303967602097966.a n = A188212 (n + 1)

end A188212

/-! ## A188212.P5839623148811014241

`A101637(A053027(n+1))+A001973(A103517(n+2))`
-/

namespace A188212.P5839623148811014241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101637 (A053027 (n + 1)).toNat + A001973 (A103517 (n + 2)).toNat

end

end A188212.P5839623148811014241

namespace A188212

/-- `A101637(A053027(n+1))+A001973(A103517(n+2))` -/
def P5839623148811014241.Spec : Prop :=
  ∀ n, P5839623148811014241.a n = A188212 (n + 1)

end A188212

/-!
# A188213: Number of nondecreasing arrangements of 6 numbers in -(n+4)..(n+4) with sum zero.

The programs for A188213, there is no canonical definition to state claims against.
-/

/-! ## A188213.P9538107154802778907

`A001977(2*(n+5))`
-/

namespace A188213.P9538107154802778907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001977 (2 * (n + 5))

end

end A188213.P9538107154802778907

/-! ## A188213.P14617085819521434888

`record[A001977(and(n, n+1)+10)]`
-/

namespace A188213.P14617085819521434888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001977 (Nat.land n (n + 1) + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188213.P14617085819521434888

/-! ## A188213.P15447205962711358661

`record[A001977(n+10)/(-1)^n]`
-/

namespace A188213.P15447205962711358661
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001977 (n + 10) : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188213.P15447205962711358661

/-! ## A188213.P8921685882886589947

`record[A001977(A014681(n)+10)]`
-/

namespace A188213.P8921685882886589947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001977 (A014681 n + 10).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188213.P8921685882886589947

/-! ## A188213.P6429443175334493693

`record[gcd(A129760(n+1)-n, A001977(n+10))]`
-/

namespace A188213.P6429443175334493693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A129760 (n + 1) - (n : ℤ)) (A001977 (n + 10))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188213.P6429443175334493693

/-!
# A188214: Number of nondecreasing arrangements of 8 numbers in -(n+6)..(n+6) with sum zero.

The programs for A188214, there is no canonical definition to state claims against.
-/

/-! ## A188214.P11343984523090522610

`A001981(2*(n+7))`
-/

namespace A188214.P11343984523090522610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001981 (2 * (n + 7))

end

end A188214.P11343984523090522610

/-! ## A188214.P8705220154497418119

`record[A001981(and(n, n-1)+14)]`
-/

namespace A188214.P8705220154497418119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001981 (Int.land (n : ℤ) ((n : ℤ) - 1) + 14).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188214.P8705220154497418119

/-! ## A188214.P16009322902082718713

`record[gcd(A001981(n+14), A035363(n+15))]`
-/

namespace A188214.P16009322902082718713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001981 (n + 14)) (A035363 (n + 15))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188214.P16009322902082718713

/-! ## A188214.P12880465432274236510

`record[A001981(n+14)^A081729(A008587(n))]`
-/

namespace A188214.P12880465432274236510
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001981 (n + 14) : ℚ) ^ (A081729 (A008587 n).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188214.P12880465432274236510

/-! ## A188214.P10398809242400216441

`A001981(A005843(n)+14)+A000007(n+3)`
-/

namespace A188214.P10398809242400216441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001981 (A005843 n + 14).toNat + A000007 (n + 3)

end

end A188214.P10398809242400216441

/-!
# A188215: Starting with an empty list, n is inserted after the a(n)th element such that the binary representations of the list's elements are always sorted lexicographically.

The programs for A188215, the canonical program `A188215.P11536711810283268516` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188215 has offset 0).

The definition of A188215 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188215.P9563895828754057801

`A023416(2*n+1)+Δ[n²]-2^ceil(log2(n+1))`
-/

namespace A188215.P9563895828754057801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023416 (2 * n + 1) : ℚ) + (((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) - (2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ))

end

end A188215.P9563895828754057801

namespace A188215

/-- `A023416(2*n+1)+Δ[n²]-2^ceil(log2(n+1))` -/
def P9563895828754057801.Spec : Prop :=
  ∀ n, P9563895828754057801.a n = (A188215 n : ℚ)

end A188215

/-! ## A188215.P2262118592030692775

`A053645(A120511(n+1))`
-/

namespace A188215.P2262118592030692775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A120511 (n + 1)).toNat

end

end A188215.P2262118592030692775

namespace A188215

/-- `A053645(A120511(n+1))` -/
def P2262118592030692775.Spec : Prop :=
  ∀ n, P2262118592030692775.a n = A188215 n

end A188215

/-! ## A188215.P11536711810283268516

`A080791(n)+A006257(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A188215

/-- `A080791(n)+A006257(n)` -/
def P11536711810283268516.Spec : Prop :=
  ∀ n, P11536711810283268516.a n = A188215 n

theorem P11536711810283268516.correct : P11536711810283268516.Spec := by
  intro n
  simp only [A188215]

end A188215

/-! ## A188215.P14449273794238808017

`n-A011371(A035327(n))`
-/

namespace A188215.P14449273794238808017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A011371 (A035327 n).toNat

end

end A188215.P14449273794238808017

namespace A188215

/-- `n-A011371(A035327(n))` -/
def P14449273794238808017.Spec : Prop :=
  ∀ n, P14449273794238808017.a n = A188215 n

end A188215

/-! ## A188215.P5451029712246291732

`A101925(n)-A295514(n)`
-/

namespace A188215.P5451029712246291732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101925 n - A295514 n

end

end A188215.P5451029712246291732

namespace A188215

/-- `A101925(n)-A295514(n)` -/
def P5451029712246291732.Spec : Prop :=
  ∀ n, P5451029712246291732.a n = A188215 n

end A188215

/-! ## A188215.P15379413629163322999

`A006257(n)+∑[A089263(n)]`
-/

namespace A188215.P15379413629163322999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089263 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188215.P15379413629163322999

namespace A188215

/-- `A006257(n)+∑[A089263(n)]` -/
def P15379413629163322999.Spec : Prop :=
  ∀ n, P15379413629163322999.a n = A188215 n

end A188215

/-! ## A188215.P1378315942302407274

`A120511(n+1)-A062383(n)`
-/

namespace A188215.P1378315942302407274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120511 (n + 1) - A062383 n

end

end A188215.P1378315942302407274

namespace A188215

/-- `A120511(n+1)-A062383(n)` -/
def P1378315942302407274.Spec : Prop :=
  ∀ n, P1378315942302407274.a n = A188215 n

end A188215

/-! ## A188215.P12986727528893249956

`and(A003817(n), A120511(n+1))`
-/

namespace A188215.P12986727528893249956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003817 n) (A120511 (n + 1))

end

end A188215.P12986727528893249956

namespace A188215

/-- `and(A003817(n), A120511(n+1))` -/
def P12986727528893249956.Spec : Prop :=
  ∀ n, P12986727528893249956.a n = A188215 n

end A188215

/-! ## A188215.P17129914600472371094

`n-A035327(A023416(n)+n)`
-/

namespace A188215.P17129914600472371094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A035327 (A023416 n + (n : ℤ)).toNat

end

end A188215.P17129914600472371094

namespace A188215

/-- `n-A035327(A023416(n)+n)` -/
def P17129914600472371094.Spec : Prop :=
  ∀ n, P17129914600472371094.a n = A188215 n

end A188215

/-! ## A188215.P317122570979436920

`n-A011371(A003817(n)-n)`
-/

namespace A188215.P317122570979436920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A011371 (A003817 n - (n : ℤ)).toNat

end

end A188215.P317122570979436920

namespace A188215

/-- `n-A011371(A003817(n)-n)` -/
def P317122570979436920.Spec : Prop :=
  ∀ n, P317122570979436920.a n = A188215 n

end A188215

/-! ## A188215.P10301024320057720759

`n-(A035327(n)-A023416(n))`
-/

namespace A188215.P10301024320057720759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A035327 n - A023416 n)

end

end A188215.P10301024320057720759

namespace A188215

/-- `n-(A035327(n)-A023416(n))` -/
def P10301024320057720759.Spec : Prop :=
  ∀ n, P10301024320057720759.a n = A188215 n

end A188215

/-! ## A188215.P7174639132141887808

`A053645(A023416(n)+2*n+1)`
-/

namespace A188215.P7174639132141887808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A023416 n + (2 * n + 1 : ℤ)).toNat

end

end A188215.P7174639132141887808

namespace A188215

/-- `A053645(A023416(n)+2*n+1)` -/
def P7174639132141887808.Spec : Prop :=
  ∀ n, P7174639132141887808.a n = A188215 n

end A188215

/-! ## A188215.P2852664871023024922

`A005187(n)-A011371(A003817(n))`
-/

namespace A188215.P2852664871023024922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n - A011371 (A003817 n).toNat

end

end A188215.P2852664871023024922

namespace A188215

/-- `A005187(n)-A011371(A003817(n))` -/
def P2852664871023024922.Spec : Prop :=
  ∀ n, P2852664871023024922.a n = A188215 n

end A188215

/-! ## A188215.P13013760030990422430

`A005187(n)+1-A000325(A070939(n))`
-/

namespace A188215.P13013760030990422430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n + (1 - A000325 (A070939 n).toNat)

end

end A188215.P13013760030990422430

namespace A188215

/-- `A005187(n)+1-A000325(A070939(n))` -/
def P13013760030990422430.Spec : Prop :=
  ∀ n, P13013760030990422430.a n = A188215 n

end A188215

/-! ## A188215.P5009657753092812972

`A006257(n)+A000120(A003817(n)-n)`
-/

namespace A188215.P5009657753092812972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n + A000120 (A003817 n - (n : ℤ)).toNat

end

end A188215.P5009657753092812972

namespace A188215

/-- `A006257(n)+A000120(A003817(n)-n)` -/
def P5009657753092812972.Spec : Prop :=
  ∀ n, P5009657753092812972.a n = A188215 n

end A188215

/-! ## A188215.P2937008607061256752

`A006257(n)+A000120(n-A006257(n))`
-/

namespace A188215.P2937008607061256752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n + A000120 ((n : ℤ) - A006257 n).toNat

end

end A188215.P2937008607061256752

namespace A188215

/-- `A006257(n)+A000120(n-A006257(n))` -/
def P2937008607061256752.Spec : Prop :=
  ∀ n, P2937008607061256752.a n = A188215 n

end A188215

/-! ## A188215.P1129422948216064700

`A006257(A023416(n)+n)-A023416(n)`
-/

namespace A188215.P1129422948216064700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A023416 n + (n : ℤ)).toNat - A023416 n

end

end A188215.P1129422948216064700

namespace A188215

/-- `A006257(A023416(n)+n)-A023416(n)` -/
def P1129422948216064700.Spec : Prop :=
  ∀ n, P1129422948216064700.a n = A188215 n

end A188215

/-! ## A188215.P559623533087569176

`A003817(n)-A005187(A003817(n)-n)`
-/

namespace A188215.P559623533087569176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 n - A005187 (A003817 n - (n : ℤ)).toNat

end

end A188215.P559623533087569176

namespace A188215

/-- `A003817(n)-A005187(A003817(n)-n)` -/
def P559623533087569176.Spec : Prop :=
  ∀ n, P559623533087569176.a n = A188215 n

end A188215

/-! ## A188215.P1600009846475596866

`A006257(n)+A000120(A035327(2*n+1))`
-/

namespace A188215.P1600009846475596866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n + A000120 (A035327 (2 * n + 1)).toNat

end

end A188215.P1600009846475596866

namespace A188215

/-- `A006257(n)+A000120(A035327(2*n+1))` -/
def P1600009846475596866.Spec : Prop :=
  ∀ n, P1600009846475596866.a n = A188215 n

end A188215

/-!
# A188216: Expansion of 1 + Sum_{n>=1} (x^(n^2) / Product_{k>=n} (1 - x^k)).

The programs for A188216, there is no canonical definition to state claims against.
-/

/-! ## A188216.P8683718129721689414

`A000041(abs(1-n)+1)-A240176(n)`
-/

namespace A188216.P8683718129721689414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (|1 - (n : ℤ)| + 1).toNat - A240176 n

end

end A188216.P8683718129721689414

/-! ## A188216.P5173763609863271819

`sqrt(A001255(n))-A240176(A028310(n))`
-/

namespace A188216.P5173763609863271819
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A240176 (A028310 n).toNat : ℝ)

end

end A188216.P5173763609863271819

/-! ## A188216.P6416133552826360070

`∑[A002865(n)]-A240176(A028310(n))`
-/

namespace A188216.P6416133552826360070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A240176 (A028310 n).toNat

end

end A188216.P6416133552826360070

/-! ## A188216.P2588198848246509010

`A000065(n)+1-A240176(A028310(n))`
-/

namespace A188216.P2588198848246509010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - A240176 (A028310 n).toNat)

end

end A188216.P2588198848246509010

/-! ## A188216.P5703273220498248696

`A035363(2*n)-A240176(A028310(n))`
-/

namespace A188216.P5703273220498248696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A240176 (A028310 n).toNat

end

end A188216.P5703273220498248696

/-! ## A188216.P5448594726690523907

`A000041(n)-A240176(n)%A000041(n)`
-/

namespace A188216.P5448594726690523907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - Int.tmod (A240176 n) (A000041 n)

end

end A188216.P5448594726690523907

/-! ## A188216.P3635686007689958961

`A035444(A008586(n))-A240176(A028310(n))`
-/

namespace A188216.P3635686007689958961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (A008586 n).toNat - A240176 (A028310 n).toNat

end

end A188216.P3635686007689958961

/-!
# A188217: Positions of 0 in A188192; complement of A188218.

The programs for A188217, the canonical program `A188217.P16557981431246288660` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188217 has offset 1).

The definition of A188217 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188217.P16557981431246288660

`3*(floor(ϕ*n/2)+1)+n`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A188217

/-- `3*(floor(ϕ*n/2)+1)+n` -/
def P16557981431246288660.Spec : Prop :=
  ∀ n, P16557981431246288660.a n = A188217 (n + 1)

theorem P16557981431246288660.correct : P16557981431246288660.Spec := by
  intro n
  simp only [A188217, Nat.add_sub_cancel]

end A188217

/-! ## A188217.P5160351370686416254

`∩[A188190(n+1)+1, A188190(n+1)]`
-/

namespace A188217.P5160351370686416254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188190 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188217.P5160351370686416254

namespace A188217

/-- `∩[A188190(n+1)+1, A188190(n+1)]` -/
def P5160351370686416254.Spec : Prop :=
  ∀ n, (P5160351370686416254.a n : ℤ) = A188217 (n + 1)

end A188217

/-! ## A188217.P3996397034257371058

`A052938(A284395(n+1)-(n+1))`
-/

namespace A188217.P3996397034257371058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A284395 (n + 1) - (n + 1 : ℤ)).toNat

end

end A188217.P3996397034257371058

namespace A188217

/-- `A052938(A284395(n+1)-(n+1))` -/
def P3996397034257371058.Spec : Prop :=
  ∀ n, P3996397034257371058.a n = A188217 (n + 1)

end A188217

/-! ## A188217.P2190767835571790242

`A030451(A188012(n+1))`
-/

namespace A188217.P2190767835571790242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030451 (A188012 (n + 1)).toNat

end

end A188217.P2190767835571790242

namespace A188217

/-- `A030451(A188012(n+1))` -/
def P2190767835571790242.Spec : Prop :=
  ∀ n, P2190767835571790242.a n = A188217 (n + 1)

end A188217

/-! ## A188217.P4318702125589413976

`A028242(floor(ϕ*A047924(n)))`
-/

namespace A188217.P4318702125589413976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 ⌊Real.goldenRatio * (A047924 n : ℝ)⌋.toNat

end

end A188217.P4318702125589413976

namespace A188217

/-- `A028242(floor(ϕ*A047924(n)))` -/
def P4318702125589413976.Spec : Prop :=
  ∀ n, P4318702125589413976.a n = A188217 (n + 1)

end A188217

/-! ## A188217.P10390170216095879981

`A028242(A188012(n+1)+1)`
-/

namespace A188217.P10390170216095879981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A188012 (n + 1) + 1).toNat

end

end A188217.P10390170216095879981

namespace A188217

/-- `A028242(A188012(n+1)+1)` -/
def P10390170216095879981.Spec : Prop :=
  ∀ n, P10390170216095879981.a n = A188217 (n + 1)

end A188217

/-! ## A188217.P7570802194744154871

`eq[1, A188020(2*n+1)+A096270(2*n)]`
-/

namespace A188217.P7570802194744154871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188020 (2 * n + 1) + A096270 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A188217.P7570802194744154871

namespace A188217

/-- `eq[1, A188020(2*n+1)+A096270(2*n)]` -/
def P7570802194744154871.Spec : Prop :=
  ∀ n, (P7570802194744154871.a n : ℤ) = A188217 (n + 1)

end A188217

/-! ## A188217.P8942402076202088302

`A028242(A000201(A047924(n)))`
-/

namespace A188217.P8942402076202088302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A000201 (A047924 n).toNat).toNat

end

end A188217.P8942402076202088302

namespace A188217

/-- `A028242(A000201(A047924(n)))` -/
def P8942402076202088302.Spec : Prop :=
  ∀ n, P8942402076202088302.a n = A188217 (n + 1)

end A188217

/-! ## A188217.P12575129335440382296

`A028242(A007064(A026356(n+1)))`
-/

namespace A188217.P12575129335440382296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A007064 (A026356 (n + 1)).toNat).toNat

end

end A188217.P12575129335440382296

namespace A188217

/-- `A028242(A007064(A026356(n+1)))` -/
def P12575129335440382296.Spec : Prop :=
  ∀ n, P12575129335440382296.a n = A188217 (n + 1)

end A188217

/-! ## A188217.P14181436264662324459

`A188188(A276881(n+1)+2)`
-/

namespace A188217.P14181436264662324459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188188 (A276881 (n + 1) + 2).toNat

end

end A188217.P14181436264662324459

namespace A188217

/-- `A188188(A276881(n+1)+2)` -/
def P14181436264662324459.Spec : Prop :=
  ∀ n, P14181436264662324459.a n = A188217 (n + 1)

end A188217

/-!
# A188218: Positions of 1 in A188192; complement of A188217.

The programs for A188218, the canonical program `A188218.P17177932669818584851` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188218 has offset 1).

The definition of A188218 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188218.P17177932669818584851

`ceil(∑[sqrt(gcd(5, (n+1)%3))])`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A188218

/-- `ceil(∑[sqrt(gcd(5, (n+1)%3))])` -/
def P17177932669818584851.Spec : Prop :=
  ∀ n, P17177932669818584851.a n = A188218 (n + 1)

theorem P17177932669818584851.correct : P17177932669818584851.Spec := by
  intro n
  simp only [A188218, Nat.add_sub_cancel]

end A188218

/-! ## A188218.P4080641633131295453

`∪[A188191(n+1)+1, A188191(n+1)]`
-/

namespace A188218.P4080641633131295453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188191 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188218.P4080641633131295453

namespace A188218

/-- `∪[A188191(n+1)+1, A188191(n+1)]` -/
def P4080641633131295453.Spec : Prop :=
  ∀ n, (P4080641633131295453.a n : ℤ) = A188218 (n + 1)

end A188218

/-! ## A188218.P6400352378951956053

`eq[1, A188192(n+1)]+1`
-/

namespace A188218.P6400352378951956053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188192 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A188218.P6400352378951956053

namespace A188218

/-- `eq[1, A188192(n+1)]+1` -/
def P6400352378951956053.Spec : Prop :=
  ∀ n, (P6400352378951956053.a n : ℤ) = A188218 (n + 1)

end A188218

/-! ## A188218.P10967132953324074098

`record[(n+1)*A188192(A000027(n+1))]`
-/

namespace A188218.P10967132953324074098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A188192 (A000027 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188218.P10967132953324074098

namespace A188218

/-- `record[(n+1)*A188192(A000027(n+1))]` -/
def P10967132953324074098.Spec : Prop :=
  ∀ n, P10967132953324074098.a n = A188218 (n + 1)

end A188218

/-! ## A188218.P755927984715240549

`record[A000027(n+1)/(2-A188192(n+1))]`
-/

namespace A188218.P755927984715240549
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (2 - A188192 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188218.P755927984715240549

namespace A188218

/-- `record[A000027(n+1)/(2-A188192(n+1))]` -/
def P755927984715240549.Spec : Prop :=
  ∀ n, P755927984715240549.a n = (A188218 (n + 1) : ℚ)

end A188218

/-! ## A188218.P10442055182105766730

`record[A020915(n)*A188192(A020915(n))]`
-/

namespace A188218.P10442055182105766730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 n * A188192 (A020915 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188218.P10442055182105766730

namespace A188218

/-- `record[A020915(n)*A188192(A020915(n))]` -/
def P10442055182105766730.Spec : Prop :=
  ∀ n, P10442055182105766730.a n = A188218 (n + 1)

end A188218

/-! ## A188218.P5419970306942561278

`record[A005378(n)*A188192(A005378(n))]`
-/

namespace A188218.P5419970306942561278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005378 n * A188192 (A005378 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188218.P5419970306942561278

namespace A188218

/-- `record[A005378(n)*A188192(A005378(n))]` -/
def P5419970306942561278.Spec : Prop :=
  ∀ n, P5419970306942561278.a n = A188218 (n + 1)

end A188218

/-! ## A188218.P2418848992546361798

`record[A008619(n)*A188192(A008619(n))]`
-/

namespace A188218.P2418848992546361798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A188192 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188218.P2418848992546361798

namespace A188218

/-- `record[A008619(n)*A188192(A008619(n))]` -/
def P2418848992546361798.Spec : Prop :=
  ∀ n, P2418848992546361798.a n = A188218 (n + 1)

end A188218

/-! ## A188218.P4571121650003791181

`record[(n+1)*A188017(2*(n+1))]`
-/

namespace A188218.P4571121650003791181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A188017 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188218.P4571121650003791181

namespace A188218

/-- `record[(n+1)*A188017(2*(n+1))]` -/
def P4571121650003791181.Spec : Prop :=
  ∀ n, P4571121650003791181.a n = A188218 (n + 1)

end A188218

/-! ## A188218.P7377888374187864412

`record[A001057(A188017(n+2)+n)]`
-/

namespace A188218.P7377888374187864412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A188017 (n + 2) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188218.P7377888374187864412

namespace A188218

/-- `record[A001057(A188017(n+2)+n)]` -/
def P7377888374187864412.Spec : Prop :=
  ∀ n, P7377888374187864412.a n = A188218 (n + 1)

end A188218

/-! ## A188218.P3478942083135965243

`record[A028242(n*A188027(n+2))]`
-/

namespace A188218.P3478942083135965243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 ((n : ℤ) * A188027 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188218.P3478942083135965243

namespace A188218

/-- `record[A028242(n*A188027(n+2))]` -/
def P3478942083135965243.Spec : Prop :=
  ∀ n, P3478942083135965243.a n = A188218 (n + 1)

end A188218

/-! ## A188218.P5329327836666222659

`record[A025480(A188017(n+2)+n+1)]`
-/

namespace A188218.P5329327836666222659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A188017 (n + 2) + (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188218.P5329327836666222659

namespace A188218

/-- `record[A025480(A188017(n+2)+n+1)]` -/
def P5329327836666222659.Spec : Prop :=
  ∀ n, P5329327836666222659.a n = A188218 (n + 1)

end A188218

/-! ## A188218.P233198781446582939

`record[A001057(A188192(n+1)+2*n)]`
-/

namespace A188218.P233198781446582939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A188192 (n + 1) + (2 * n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188218.P233198781446582939

namespace A188218

/-- `record[A001057(A188192(n+1)+2*n)]` -/
def P233198781446582939.Spec : Prop :=
  ∀ n, P233198781446582939.a n = A188218 (n + 1)

end A188218

/-! ## A188218.P1280095708274640497

`eq[A114986(2*n), A188020(2*n+1)]`
-/

namespace A188218.P1280095708274640497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114986 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188020 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188218.P1280095708274640497

namespace A188218

/-- `eq[A114986(2*n), A188020(2*n+1)]` -/
def P1280095708274640497.Spec : Prop :=
  ∀ n, (P1280095708274640497.a n : ℤ) = A188218 (n + 1)

end A188218

/-! ## A188218.P15242015686111334443

`eq[A188020(2*n+1)+A000007(n), A096270(2*n)]`
-/

namespace A188218.P15242015686111334443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188020 (2 * n + 1) + A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188218.P15242015686111334443

namespace A188218

/-- `eq[A188020(2*n+1)+A000007(n), A096270(2*n)]` -/
def P15242015686111334443.Spec : Prop :=
  ∀ n, (P15242015686111334443.a n : ℤ) = A188218 (n + 1)

end A188218

/-! ## A188218.P5659108431121011745

`record[A034888(n)*A188192(A034888(n))]`
-/

namespace A188218.P5659108431121011745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034888 n * A188192 (A034888 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188218.P5659108431121011745

namespace A188218

/-- `record[A034888(n)*A188192(A034888(n))]` -/
def P5659108431121011745.Spec : Prop :=
  ∀ n, P5659108431121011745.a n = A188218 (n + 1)

end A188218

/-! ## A188218.P12486719781176718622

`record[A008611(n)*A188192(A008620(n))]`
-/

namespace A188218.P12486719781176718622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n * A188192 (A008620 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188218.P12486719781176718622

namespace A188218

/-- `record[A008611(n)*A188192(A008620(n))]` -/
def P12486719781176718622.Spec : Prop :=
  ∀ n, P12486719781176718622.a n = A188218 (n + 1)

end A188218

/-!
# A188219: Positions of 0 in the zero-one sequence [n*r]-[4*r]-[n*r-4*r], where r=sqrt(5), n>=1.

The programs for A188219, the canonical program `A188219.P7773233266380057314` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188219 has offset 1).

The definition of A188219 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188219.P7773233266380057314

`4*floor(n*ϕ^3)+n+4`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A188219

/-- `4*floor(n*ϕ^3)+n+4` -/
def P7773233266380057314.Spec : Prop :=
  ∀ n, P7773233266380057314.a n = A188219 (n + 1)

theorem P7773233266380057314.correct : P7773233266380057314.Spec := by
  intro n
  simp only [A188219, Nat.add_sub_cancel]

end A188219

/-! ## A188219.P7241468490112752002

`A188026(Δ[n²])/2`
-/

namespace A188219.P7241468490112752002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188026 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A188219.P7241468490112752002

namespace A188219

/-- `A188026(Δ[n²])/2` -/
def P7241468490112752002.Spec : Prop :=
  ∀ n, P7241468490112752002.a n = (A188219 (n + 1) : ℚ)

end A188219

/-! ## A188219.P1534052723043988776

`(A188471(2*n+1)+A188012(2*n+1))/2`
-/

namespace A188219.P1534052723043988776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188471 (2 * n + 1) + A188012 (2 * n + 1) : ℚ) / 2

end

end A188219.P1534052723043988776

namespace A188219

/-- `(A188471(2*n+1)+A188012(2*n+1))/2` -/
def P1534052723043988776.Spec : Prop :=
  ∀ n, P1534052723043988776.a n = (A188219 (n + 1) : ℚ)

end A188219

/-! ## A188219.P15491770111720738583

`A004938(A004976(n)+1)`
-/

namespace A188219.P15491770111720738583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004938 (A004976 n + 1).toNat

end

end A188219.P15491770111720738583

namespace A188219

/-- `A004938(A004976(n)+1)` -/
def P15491770111720738583.Spec : Prop :=
  ∀ n, P15491770111720738583.a n = A188219 (n + 1)

end A188219

/-! ## A188219.P1585113901319028138

`A004976(A004976(n)+1)`
-/

namespace A188219.P1585113901319028138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004976 (A004976 n + 1).toNat

end

end A188219.P1585113901319028138

namespace A188219

/-- `A004976(A004976(n)+1)` -/
def P1585113901319028138.Spec : Prop :=
  ∀ n, P1585113901319028138.a n = A188219 (n + 1)

end A188219

/-! ## A188219.P1022820305754829537

`A004976(A026352(2*n)-n)`
-/

namespace A188219.P1022820305754829537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004976 (A026352 (2 * n) - (n : ℤ)).toNat

end

end A188219.P1022820305754829537

namespace A188219

/-- `A004976(A026352(2*n)-n)` -/
def P1022820305754829537.Spec : Prop :=
  ∀ n, P1022820305754829537.a n = A188219 (n + 1)

end A188219

/-! ## A188219.P8967030985940445931

`A004976(1-A004976(n)*A057428(n))`
-/

namespace A188219.P8967030985940445931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004976 (1 - A004976 n * A057428 n).toNat

end

end A188219.P8967030985940445931

namespace A188219

/-- `A004976(1-A004976(n)*A057428(n))` -/
def P8967030985940445931.Spec : Prop :=
  ∀ n, P8967030985940445931.a n = A188219 (n + 1)

end A188219

/-! ## A188219.P15320002457866317959

`A188217(A026352(2*n)+1)`
-/

namespace A188219.P15320002457866317959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188217 (A026352 (2 * n) + 1).toNat

end

end A188219.P15320002457866317959

namespace A188219

/-- `A188217(A026352(2*n)+1)` -/
def P15320002457866317959.Spec : Prop :=
  ∀ n, P15320002457866317959.a n = A188219 (n + 1)

end A188219

/-! ## A188219.P4353820777570343897

`A188012(A026356(2*n+1))/2`
-/

namespace A188219.P4353820777570343897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188012 (A026356 (2 * n + 1)).toNat : ℚ) / 2

end

end A188219.P4353820777570343897

namespace A188219

/-- `A188012(A026356(2*n+1))/2` -/
def P4353820777570343897.Spec : Prop :=
  ∀ n, P4353820777570343897.a n = (A188219 (n + 1) : ℚ)

end A188219

/-! ## A188219.P10924118331048576365

`A188217(A026351(2*n)+2*n+1)`
-/

namespace A188219.P10924118331048576365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188217 (A026351 (2 * n) + (2 * n + 1 : ℤ)).toNat

end

end A188219.P10924118331048576365

namespace A188219

/-- `A188217(A026351(2*n)+2*n+1)` -/
def P10924118331048576365.Spec : Prop :=
  ∀ n, P10924118331048576365.a n = A188219 (n + 1)

end A188219

/-! ## A188219.P1652624384115682401

`∩[A188217(n+1)+1, A188217(n+1)]`
-/

namespace A188219.P1652624384115682401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188217 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188219.P1652624384115682401

namespace A188219

/-- `∩[A188217(n+1)+1, A188217(n+1)]` -/
def P1652624384115682401.Spec : Prop :=
  ∀ n, (P1652624384115682401.a n : ℤ) = A188219 (n + 1)

end A188219

/-! ## A188219.P16506492115590829649

`A188217(A026351(A026351(2*n)))`
-/

namespace A188219.P16506492115590829649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188217 (A026351 (A026351 (2 * n)).toNat).toNat

end

end A188219.P16506492115590829649

namespace A188219

/-- `A188217(A026351(A026351(2*n)))` -/
def P16506492115590829649.Spec : Prop :=
  ∀ n, P16506492115590829649.a n = A188219 (n + 1)

end A188219

/-! ## A188219.P16396595340125186340

`A188032(A284624(2*n+1))/2`
-/

namespace A188219.P16396595340125186340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188032 (A284624 (2 * n + 1)).toNat : ℚ) / 2

end

end A188219.P16396595340125186340

namespace A188219

/-- `A188032(A284624(2*n+1))/2` -/
def P16396595340125186340.Spec : Prop :=
  ∀ n, P16396595340125186340.a n = (A188219 (n + 1) : ℚ)

end A188219

/-! ## A188219.P8086555868399744040

`A003623(A188434(2*n+1))/2`
-/

namespace A188219.P8086555868399744040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003623 (A188434 (2 * n + 1)).toNat : ℚ) / 2

end

end A188219.P8086555868399744040

namespace A188219

/-- `A003623(A188434(2*n+1))/2` -/
def P8086555868399744040.Spec : Prop :=
  ∀ n, P8086555868399744040.a n = (A188219 (n + 1) : ℚ)

end A188219

/-! ## A188219.P18020744340657888927

`record[A004976(A057979(A047924(n)))]`
-/

namespace A188219.P18020744340657888927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004976 (A057979 (A047924 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188219.P18020744340657888927

namespace A188219

/-- `record[A004976(A057979(A047924(n)))]` -/
def P18020744340657888927.Spec : Prop :=
  ∀ n, P18020744340657888927.a n = A188219 (n + 1)

end A188219

/-! ## A188219.P5825919123892977142

`∩[A188190(n+1)+2, A188190(n+1)]`
-/

namespace A188219.P5825919123892977142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188190 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188219.P5825919123892977142

namespace A188219

/-- `∩[A188190(n+1)+2, A188190(n+1)]` -/
def P5825919123892977142.Spec : Prop :=
  ∀ n, (P5825919123892977142.a n : ℤ) = A188219 (n + 1)

end A188219

/-! ## A188219.P16666880106131927861

`A188018(A288709(2*n+1))/2`
-/

namespace A188219.P16666880106131927861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188018 (A288709 (2 * n + 1)).toNat : ℚ) / 2

end

end A188219.P16666880106131927861

namespace A188219

/-- `A188018(A288709(2*n+1))/2` -/
def P16666880106131927861.Spec : Prop :=
  ∀ n, P16666880106131927861.a n = (A188219 (n + 1) : ℚ)

end A188219

/-! ## A188219.P782097611656555675

`A188435(A188012(2*n+1))`
-/

namespace A188219.P782097611656555675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188435 (A188012 (2 * n + 1)).toNat

end

end A188219.P782097611656555675

namespace A188219

/-- `A188435(A188012(2*n+1))` -/
def P782097611656555675.Spec : Prop :=
  ∀ n, P782097611656555675.a n = A188219 (n + 1)

end A188219

/-! ## A188219.P9308072440419729334

`A188010(A188012(2*n+1)+1)`
-/

namespace A188219.P9308072440419729334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188010 (A188012 (2 * n + 1) + 1).toNat

end

end A188219.P9308072440419729334

namespace A188219

/-- `A188010(A188012(2*n+1)+1)` -/
def P9308072440419729334.Spec : Prop :=
  ∀ n, P9308072440419729334.a n = A188219 (n + 1)

end A188219

/-! ## A188219.P4914009919785362573

`A188188(A188012(2*n+1)+1)`
-/

namespace A188219.P4914009919785362573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188188 (A188012 (2 * n + 1) + 1).toNat

end

end A188219.P4914009919785362573

namespace A188219

/-- `A188188(A188012(2*n+1)+1)` -/
def P4914009919785362573.Spec : Prop :=
  ∀ n, P4914009919785362573.a n = A188219 (n + 1)

end A188219

/-!
# A188220: Positions of 1 in the zero-one sequence [n*r]-[5*r]-[n*r-5*r], where r=sqrt(5), n>=1.

The programs for A188220, the canonical program `A188220.P14087564465006756477` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188220 has offset 1).

The definition of A188220 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188220.P7480737630533613155

`A188293(n+1)+5`
-/

namespace A188220.P7480737630533613155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188293 (n + 1) + 5

end

end A188220.P7480737630533613155

namespace A188220

/-- `A188293(n+1)+5` -/
def P7480737630533613155.Spec : Prop :=
  ∀ n, P7480737630533613155.a n = A188220 (n + 1)

end A188220

/-! ## A188220.P14087564465006756477

`∑[(char[A276854(n)]+2)²]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A188220

/-- `∑[(char[A276854(n)]+2)²]` -/
def P14087564465006756477.Spec : Prop :=
  ∀ n, (P14087564465006756477.a n : ℤ) = A188220 (n + 1)

theorem P14087564465006756477.correct : P14087564465006756477.Spec := by
  intro n
  simp only [A188220, Nat.add_sub_cancel]

end A188220

/-! ## A188220.P6556781635792294921

`A004958(A188222(n+1))+4`
-/

namespace A188220.P6556781635792294921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004958 (A188222 (n + 1)).toNat + 4

end

end A188220.P6556781635792294921

namespace A188220

/-- `A004958(A188222(n+1))+4` -/
def P6556781635792294921.Spec : Prop :=
  ∀ n, P6556781635792294921.a n = A188220 (n + 1)

end A188220

/-! ## A188220.P17027225738533194012

`A004958(floor(comp[floor(ϕ*n)]/2)+1)`
-/

namespace A188220.P17027225738533194012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004958 (⌊(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℚ) / 2⌋ + 1).toNat

end

end A188220.P17027225738533194012

namespace A188220

/-- `A004958(floor(comp[floor(ϕ*n)]/2)+1)` -/
def P17027225738533194012.Spec : Prop :=
  ∀ n, P17027225738533194012.a n = A188220 (n + 1)

end A188220

/-! ## A188220.P11258298105604771787

`A004976(A188222(n+1)+1)+1`
-/

namespace A188220.P11258298105604771787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004976 (A188222 (n + 1) + 1).toNat + 1

end

end A188220.P11258298105604771787

namespace A188220

/-- `A004976(A188222(n+1)+1)+1` -/
def P11258298105604771787.Spec : Prop :=
  ∀ n, P11258298105604771787.a n = A188220 (n + 1)

end A188220

/-! ## A188220.P2079274768180854805

`A168280(A003622(n+1)+2)-n`
-/

namespace A188220.P2079274768180854805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168280 (A003622 (n + 1) + 2).toNat - (n : ℤ)

end

end A188220.P2079274768180854805

namespace A188220

/-- `A168280(A003622(n+1)+2)-n` -/
def P2079274768180854805.Spec : Prop :=
  ∀ n, P2079274768180854805.a n = A188220 (n + 1)

end A188220

/-! ## A188220.P11670838982730455396

`A004956(A001950(A188222(n+1))+3)`
-/

namespace A188220.P11670838982730455396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 (A001950 (A188222 (n + 1)).toNat + 3).toNat

end

end A188220.P11670838982730455396

namespace A188220

/-- `A004956(A001950(A188222(n+1))+3)` -/
def P11670838982730455396.Spec : Prop :=
  ∀ n, P11670838982730455396.a n = A188220 (n + 1)

end A188220

/-! ## A188220.P8696953663049631009

`A020710(A188293(n+1))`
-/

namespace A188220.P8696953663049631009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 (A188293 (n + 1)).toNat

end

end A188220.P8696953663049631009

namespace A188220

/-- `A020710(A188293(n+1))` -/
def P8696953663049631009.Spec : Prop :=
  ∀ n, P8696953663049631009.a n = A188220 (n + 1)

end A188220

/-! ## A188220.P16459385964293869872

`A097065(A047925(n+1))`
-/

namespace A188220.P16459385964293869872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097065 (A047925 (n + 1)).toNat

end

end A188220.P16459385964293869872

namespace A188220

/-- `A097065(A047925(n+1))` -/
def P16459385964293869872.Spec : Prop :=
  ∀ n, P16459385964293869872.a n = A188220 (n + 1)

end A188220

/-! ## A188220.P535302061575801885

`A267185(A101870(n+1))`
-/

namespace A188220.P535302061575801885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267185 (A101870 (n + 1)).toNat

end

end A188220.P535302061575801885

namespace A188220

/-- `A267185(A101870(n+1))` -/
def P535302061575801885.Spec : Prop :=
  ∀ n, P535302061575801885.a n = A188220 (n + 1)

end A188220

/-! ## A188220.P5885575098709775718

`A267185(A188471(n+2))`
-/

namespace A188220.P5885575098709775718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267185 (A188471 (n + 2)).toNat

end

end A188220.P5885575098709775718

namespace A188220

/-- `A267185(A188471(n+2))` -/
def P5885575098709775718.Spec : Prop :=
  ∀ n, P5885575098709775718.a n = A188220 (n + 1)

end A188220

/-! ## A188220.P9680198716030977225

`lt[1, A094570(A083368(2*(n+1)))]`
-/

namespace A188220.P9680198716030977225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094570 (A083368 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A188220.P9680198716030977225

namespace A188220

/-- `lt[1, A094570(A083368(2*(n+1)))]` -/
def P9680198716030977225.Spec : Prop :=
  ∀ n, (P9680198716030977225.a n : ℤ) = A188220 (n + 1)

end A188220

/-! ## A188220.P583401325566548927

`eq[A114986(2*n)+1, A188034(2*(n+1))]`
-/

namespace A188220.P583401325566548927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114986 (2 * n) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188034 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188220.P583401325566548927

namespace A188220

/-- `eq[A114986(2*n)+1, A188034(2*(n+1))]` -/
def P583401325566548927.Spec : Prop :=
  ∀ n, (P583401325566548927.a n : ℤ) = A188220 (n + 1)

end A188220

/-! ## A188220.P5531487562315083159

`eq[A188031(2*n+1), A188432(2*n+1)]`
-/

namespace A188220.P5531487562315083159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188031 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188432 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188220.P5531487562315083159

namespace A188220

/-- `eq[A188031(2*n+1), A188432(2*n+1)]` -/
def P5531487562315083159.Spec : Prop :=
  ∀ n, (P5531487562315083159.a n : ℤ) = A188220 (n + 1)

end A188220

/-! ## A188220.P16866113771435086366

`eq[A188031(2*n+1), A191269(2*n+1)]`
-/

namespace A188220.P16866113771435086366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188031 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191269 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188220.P16866113771435086366

namespace A188220

/-- `eq[A188031(2*n+1), A191269(2*n+1)]` -/
def P16866113771435086366.Spec : Prop :=
  ∀ n, (P16866113771435086366.a n : ℤ) = A188220 (n + 1)

end A188220

/-! ## A188220.P467821296169671206

`eq[2, A188432(2*n+1)+A188034(2*(n+1))]`
-/

namespace A188220.P467821296169671206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188432 (2 * n + 1) + A188034 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A188220.P467821296169671206

namespace A188220

/-- `eq[2, A188432(2*n+1)+A188034(2*(n+1))]` -/
def P467821296169671206.Spec : Prop :=
  ∀ n, (P467821296169671206.a n : ℤ) = A188220 (n + 1)

end A188220

/-! ## A188220.P11274066663137763203

`lt[A096270(A028310(2*n)), A188031(2*n+1)]`
-/

namespace A188220.P11274066663137763203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 (A028310 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188031 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A188220.P11274066663137763203

namespace A188220

/-- `lt[A096270(A028310(2*n)), A188031(2*n+1)]` -/
def P11274066663137763203.Spec : Prop :=
  ∀ n, (P11274066663137763203.a n : ℤ) = A188220 (n + 1)

end A188220

/-! ## A188220.P4204749769252250970

`lt[A083368(A083368(2*(n+1))²), A083368(2*(n+1))]`
-/

namespace A188220.P4204749769252250970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083368 (A083368 (2 * (n + 1)) ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083368 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A188220.P4204749769252250970

namespace A188220

/-- `lt[A083368(A083368(2*(n+1))²), A083368(2*(n+1))]` -/
def P4204749769252250970.Spec : Prop :=
  ∀ n, (P4204749769252250970.a n : ℤ) = A188220 (n + 1)

end A188220

/-!
# A188221: a(n) = [n*r + k*r]-[n*r]-[k*r], where r=sqrt(5), k=1, [ ]=floor.

The programs for A188221, the canonical program `A188221.P599899064614246343` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188221 has offset 1).

The definition of A188221 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188221.P9545412424578902689

`Δ[floor((n+1)/ϕ^3)]`
-/

namespace A188221.P9545412424578902689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.goldenRatio ^ 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188221.P9545412424578902689

namespace A188221

/-- `Δ[floor((n+1)/ϕ^3)]` -/
def P9545412424578902689.Spec : Prop :=
  ∀ n, P9545412424578902689.a n = A188221 (n + 1)

end A188221

/-! ## A188221.P6579283863032483853

`C(Δ[floor(2*(n+1)/ϕ)], 2)`
-/

namespace A188221.P6579283863032483853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * ((n + 1 : ℝ) / Real.goldenRatio)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (n + 1) - f1 n).toNat 2

end

end A188221.P6579283863032483853

namespace A188221

/-- `C(Δ[floor(2*(n+1)/ϕ)], 2)` -/
def P6579283863032483853.Spec : Prop :=
  ∀ n, (P6579283863032483853.a n : ℤ) = A188221 (n + 1)

end A188221

/-! ## A188221.P10266051711127045792

`char[floor(ϕ*∑[ϕ²-a(n-1)])]` with `a(0)=2, a(1)=0`
-/

namespace A188221.P10266051711127045792
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.rec [2, 0] fun n f2 =>
  Real.goldenRatio ^ 2 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (∑ j ∈ Finset.range (n + 1), f2 j)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188221.P10266051711127045792

namespace A188221

/-- `char[floor(ϕ*∑[ϕ²-a(n-1)])]` -/
def P10266051711127045792.Spec : Prop :=
  ∀ n, (P10266051711127045792.a n : ℤ) = A188221 (n + 1)

end A188221

/-! ## A188221.P5080882401364522404

`char[A004976(n)-1]`
-/

namespace A188221.P5080882401364522404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004976 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188221.P5080882401364522404

namespace A188221

/-- `char[A004976(n)-1]` -/
def P5080882401364522404.Spec : Prop :=
  ∀ n, (P5080882401364522404.a n : ℤ) = A188221 (n + 1)

end A188221

/-! ## A188221.P14398278043127198007

`char[A004958(n)-2]`
-/

namespace A188221.P14398278043127198007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004958 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188221.P14398278043127198007

namespace A188221

/-- `char[A004958(n)-2]` -/
def P14398278043127198007.Spec : Prop :=
  ∀ n, (P14398278043127198007.a n : ℤ) = A188221 (n + 1)

end A188221

/-! ## A188221.P599899064614246343

`A081147(n+1)-2`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A188221

/-- `A081147(n+1)-2` -/
def P599899064614246343.Spec : Prop :=
  ∀ n, P599899064614246343.a n = A188221 (n + 1)

theorem P599899064614246343.correct : P599899064614246343.Spec := by
  intro n
  simp only [A188221, Nat.add_sub_cancel]

end A188221

/-! ## A188221.P15721108625350874565

`log2(Δ[A319433(2*n)])`
-/

namespace A188221.P15721108625350874565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319433 (2 * n)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f1 (n + 1) - f1 n : ℝ)

end

end A188221.P15721108625350874565

namespace A188221

/-- `log2(Δ[A319433(2*n)])` -/
def P15721108625350874565.Spec : Prop :=
  ∀ n, P15721108625350874565.a n = (A188221 (n + 1) : ℝ)

end A188221

/-! ## A188221.P15802074902064333201

`char[A188259(2*n+1)]`
-/

namespace A188221.P15802074902064333201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188259 (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188221.P15802074902064333201

namespace A188221

/-- `char[A188259(2*n+1)]` -/
def P15802074902064333201.Spec : Prop :=
  ∀ n, (P15802074902064333201.a n : ℤ) = A188221 (n + 1)

end A188221

/-! ## A188221.P13017369658832054446

`char[A276854(n+1)+n]`
-/

namespace A188221.P13017369658832054446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276854 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188221.P13017369658832054446

namespace A188221

/-- `char[A276854(n+1)+n]` -/
def P13017369658832054446.Spec : Prop :=
  ∀ n, (P13017369658832054446.a n : ℤ) = A188221 (n + 1)

end A188221

/-! ## A188221.P12069703665456047201

`A188257(a(n-1)+n)` with `a(0)=0`
-/

namespace A188221.P12069703665456047201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A188257 (a (n - 1) + (n : ℤ)).toNat

end

end A188221.P12069703665456047201

namespace A188221

/-- `A188257(a(n-1)+n)` -/
def P12069703665456047201.Spec : Prop :=
  ∀ n, P12069703665456047201.a n = A188221 (n + 1)

end A188221

/-! ## A188221.P1398437080356996172

`A001221(Δ[floor(2*(n+1)/ϕ)])`
-/

namespace A188221.P1398437080356996172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * (n + 1) : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (n + 1) - f1 n).toNat

end

end A188221.P1398437080356996172

namespace A188221

/-- `A001221(Δ[floor(2*(n+1)/ϕ)])` -/
def P1398437080356996172.Spec : Prop :=
  ∀ n, P1398437080356996172.a n = A188221 (n + 1)

end A188221

/-! ## A188221.P9796200915649378055

`A001222(Δ[floor(2*(n+1)/ϕ)])`
-/

namespace A188221.P9796200915649378055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * (n + 1) : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (n + 1) - f1 n).toNat

end

end A188221.P9796200915649378055

namespace A188221

/-- `A001222(Δ[floor(2*(n+1)/ϕ)])` -/
def P9796200915649378055.Spec : Prop :=
  ∀ n, P9796200915649378055.a n = A188221 (n + 1)

end A188221

/-! ## A188221.P8878648618606728103

`A123740(A343646(n+1))`
-/

namespace A188221.P8878648618606728103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123740 (A343646 (n + 1)).toNat

end

end A188221.P8878648618606728103

namespace A188221

/-- `A123740(A343646(n+1))` -/
def P8878648618606728103.Spec : Prop :=
  ∀ n, P8878648618606728103.a n = A188221 (n + 1)

end A188221

/-! ## A188221.P3174586104943167218

`A339824(n*A327219(n))`
-/

namespace A188221.P3174586104943167218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339824 ((n : ℤ) * A327219 n).toNat

end

end A188221.P3174586104943167218

namespace A188221

/-- `A339824(n*A327219(n))` -/
def P3174586104943167218.Spec : Prop :=
  ∀ n, P3174586104943167218.a n = A188221 (n + 1)

end A188221

/-! ## A188221.P10389237915696530876

`and(A327219(n), A339824(n))`
-/

namespace A188221.P10389237915696530876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A327219 n) (A339824 n)

end

end A188221.P10389237915696530876

namespace A188221

/-- `and(A327219(n), A339824(n))` -/
def P10389237915696530876.Spec : Prop :=
  ∀ n, P10389237915696530876.a n = A188221 (n + 1)

end A188221

/-! ## A188221.P17354003290747755898

`A319433(Δ[A319433(2*n)])`
-/

namespace A188221.P17354003290747755898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319433 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319433 (f1 (n + 1) - f1 n).toNat

end

end A188221.P17354003290747755898

namespace A188221

/-- `A319433(Δ[A319433(2*n)])` -/
def P17354003290747755898.Spec : Prop :=
  ∀ n, P17354003290747755898.a n = A188221 (n + 1)

end A188221

/-! ## A188221.P6429808703681959446

`1-A096270(A001965(n+1))`
-/

namespace A188221.P6429808703681959446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A096270 (A001965 (n + 1)).toNat

end

end A188221.P6429808703681959446

namespace A188221

/-- `1-A096270(A001965(n+1))` -/
def P6429808703681959446.Spec : Prop :=
  ∀ n, P6429808703681959446.a n = A188221 (n + 1)

end A188221

/-! ## A188221.P6630772277149815272

`A181712(n+1)*A327219(n)`
-/

namespace A188221.P6630772277149815272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181712 (n + 1) * A327219 n

end

end A188221.P6630772277149815272

namespace A188221

/-- `A181712(n+1)*A327219(n)` -/
def P6630772277149815272.Spec : Prop :=
  ∀ n, P6630772277149815272.a n = A188221 (n + 1)

end A188221

/-! ## A188221.P304506170161534249

`A188257(n+1)*A327219(n)`
-/

namespace A188221.P304506170161534249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188257 (n + 1) * A327219 n

end

end A188221.P304506170161534249

namespace A188221

/-- `A188257(n+1)*A327219(n)` -/
def P304506170161534249.Spec : Prop :=
  ∀ n, P304506170161534249.a n = A188221 (n + 1)

end A188221

/-!
# A188222: Beatty sequence for (sqrt(5) + 3)/4.

The programs for A188222, the canonical program `A188222.P14367467700836577338` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188222 has offset 1).

The definition of A188222 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A188222.P14367467700836577338

`floor((n+1)*(sqrt(5)+3)/4)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A188222

/-- `floor((n+1)*(sqrt(5)+3)/4)` -/
def P14367467700836577338.Spec : Prop :=
  ∀ n, P14367467700836577338.a n = A188222 (n + 1)

theorem P14367467700836577338.correct : P14367467700836577338.Spec := by
  intro n
  simp only [A188222, Nat.add_sub_cancel]

end A188222

/-! ## A188222.P16726120036375515750

`and(-2, floor((n+1)*ϕ²))/2`
-/

namespace A188222.P16726120036375515750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (-2) ⌊(n + 1 : ℝ) * Real.goldenRatio ^ 2⌋ : ℚ) / 2

end

end A188222.P16726120036375515750

namespace A188222

/-- `and(-2, floor((n+1)*ϕ²))/2` -/
def P16726120036375515750.Spec : Prop :=
  ∀ n, P16726120036375515750.a n = (A188222 (n + 1) : ℚ)

end A188222

/-! ## A188222.P18117445507398621104

`(or(1, floor((n+1)*ϕ²))-1)/2`
-/

namespace A188222.P18117445507398621104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lor 1 ⌊(n + 1 : ℝ) * Real.goldenRatio ^ 2⌋ - 1 : ℚ) / 2

end

end A188222.P18117445507398621104

namespace A188222

/-- `(or(1, floor((n+1)*ϕ²))-1)/2` -/
def P18117445507398621104.Spec : Prop :=
  ∀ n, P18117445507398621104.a n = (A188222 (n + 1) : ℚ)

end A188222

/-! ## A188222.P7572909246609967319

`comp[A004976(n)]`
-/

namespace A188222.P7572909246609967319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004976 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A188222.P7572909246609967319

namespace A188222

/-- `comp[A004976(n)]` -/
def P7572909246609967319.Spec : Prop :=
  ∀ n, (P7572909246609967319.a n : ℤ) = A188222 (n + 1)

end A188222

/-! ## A188222.P5971185510914448999

`comp[A276854(n)+n]`
-/

namespace A188222.P5971185510914448999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276854 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A188222.P5971185510914448999

namespace A188222

/-- `comp[A276854(n)+n]` -/
def P5971185510914448999.Spec : Prop :=
  ∀ n, (P5971185510914448999.a n : ℤ) = A188222 (n + 1)

end A188222

/-! ## A188222.P8473459414577966402

`ceil(A003622(n+1)/2)`
-/

namespace A188222.P8473459414577966402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A003622 (n + 1) : ℚ) / 2⌉

end

end A188222.P8473459414577966402

namespace A188222

/-- `ceil(A003622(n+1)/2)` -/
def P8473459414577966402.Spec : Prop :=
  ∀ n, P8473459414577966402.a n = A188222 (n + 1)

end A188222

/-! ## A188222.P1939834940844196440

`comp[A004958(n)-2]+1`
-/

namespace A188222.P1939834940844196440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004958 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A188222.P1939834940844196440

namespace A188222

/-- `comp[A004958(n)-2]+1` -/
def P1939834940844196440.Spec : Prop :=
  ∀ n, (P1939834940844196440.a n : ℤ) = A188222 (n + 1)

end A188222

/-! ## A188222.P17627779405246062925

`comp[A066096(2*n)+n]`
-/

namespace A188222.P17627779405246062925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066096 (2 * n) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A188222.P17627779405246062925

namespace A188222

/-- `comp[A066096(2*n)+n]` -/
def P17627779405246062925.Spec : Prop :=
  ∀ n, (P17627779405246062925.a n : ℤ) = A188222 (n + 1)

end A188222

/-! ## A188222.P2625278730160159348

`round(sinh(log(A001950(n+1))))`
-/

namespace A188222.P2625278730160159348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sinh (Real.log (A001950 (n + 1) : ℝ)))

end

end A188222.P2625278730160159348

namespace A188222

/-- `round(sinh(log(A001950(n+1))))` -/
def P2625278730160159348.Spec : Prop :=
  ∀ n, P2625278730160159348.a n = A188222 (n + 1)

end A188222

/-! ## A188222.P5607968737843979399

`A187339(n+1)-(n+1)`
-/

namespace A188222.P5607968737843979399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187339 (n + 1) - (n + 1 : ℤ)

end

end A188222.P5607968737843979399

namespace A188222

/-- `A187339(n+1)-(n+1)` -/
def P5607968737843979399.Spec : Prop :=
  ∀ n, P5607968737843979399.a n = A188222 (n + 1)

end A188222

/-! ## A188222.P6142370026539680022

`comp[A188259(2*n+1)]+1`
-/

namespace A188222.P6142370026539680022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188259 (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A188222.P6142370026539680022

namespace A188222

/-- `comp[A188259(2*n+1)]+1` -/
def P6142370026539680022.Spec : Prop :=
  ∀ n, (P6142370026539680022.a n : ℤ) = A188222 (n + 1)

end A188222

/-! ## A188222.P151635652941650883

`comp[A188262(3*n+2)]+1`
-/

namespace A188222.P151635652941650883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188262 (3 * n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A188222.P151635652941650883

namespace A188222

/-- `comp[A188262(3*n+2)]+1` -/
def P151635652941650883.Spec : Prop :=
  ∀ n, (P151635652941650883.a n : ℤ) = A188222 (n + 1)

end A188222

/-! ## A188222.P1558101748648925295

`ceil((A000201(n+1)+n)/2)`
-/

namespace A188222.P1558101748648925295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000201 (n + 1) + (n : ℤ) : ℚ) / 2⌉

end

end A188222.P1558101748648925295

namespace A188222

/-- `ceil((A000201(n+1)+n)/2)` -/
def P1558101748648925295.Spec : Prop :=
  ∀ n, P1558101748648925295.a n = A188222 (n + 1)

end A188222

/-! ## A188222.P11071168063901396294

`(A188293(n+1)+n+1)/5`
-/

namespace A188222.P11071168063901396294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188293 (n + 1) + (n + 1 : ℤ) : ℚ) / 5

end

end A188222.P11071168063901396294

namespace A188222

/-- `(A188293(n+1)+n+1)/5` -/
def P11071168063901396294.Spec : Prop :=
  ∀ n, P11071168063901396294.a n = (A188222 (n + 1) : ℚ)

end A188222

/-! ## A188222.P8970949793319986871

`∑[char[A000201(2*(n+1))]+1]`
-/

namespace A188222.P8970949793319986871
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (2 * (n + 1))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188222.P8970949793319986871

namespace A188222

/-- `∑[char[A000201(2*(n+1))]+1]` -/
def P8970949793319986871.Spec : Prop :=
  ∀ n, (P8970949793319986871.a n : ℤ) = A188222 (n + 1)

end A188222

/-! ## A188222.P4522910763624098223

`A000027(n+1)+floor((n+1)/(2*ϕ))`
-/

namespace A188222.P4522910763624098223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) + ⌊(n + 1 : ℝ) / (2 * Real.goldenRatio)⌋

end

end A188222.P4522910763624098223

namespace A188222

/-- `A000027(n+1)+floor((n+1)/(2*ϕ))` -/
def P4522910763624098223.Spec : Prop :=
  ∀ n, P4522910763624098223.a n = A188222 (n + 1)

end A188222

/-! ## A188222.P309970031829118383

`A004526(A005206(n))+1+n`
-/

namespace A188222.P309970031829118383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A005206 n).toNat + 1 + (n : ℤ)

end

end A188222.P309970031829118383

namespace A188222

/-- `A004526(A005206(n))+1+n` -/
def P309970031829118383.Spec : Prop :=
  ∀ n, P309970031829118383.a n = A188222 (n + 1)

end A188222

/-! ## A188222.P858667847915242809

`A004526(A019446(n+1)+1)+n`
-/

namespace A188222.P858667847915242809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A019446 (n + 1) + 1).toNat + (n : ℤ)

end

end A188222.P858667847915242809

namespace A188222

/-- `A004526(A019446(n+1)+1)+n` -/
def P858667847915242809.Spec : Prop :=
  ∀ n, P858667847915242809.a n = A188222 (n + 1)

end A188222

/-! ## A188222.P10818823162459593345

`A008619(A019446(n+1)-1)+n`
-/

namespace A188222.P10818823162459593345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A019446 (n + 1) - 1).toNat + (n : ℤ)

end

end A188222.P10818823162459593345

namespace A188222

/-- `A008619(A019446(n+1)-1)+n` -/
def P10818823162459593345.Spec : Prop :=
  ∀ n, P10818823162459593345.a n = A188222 (n + 1)

end A188222

/-! ## A188222.P7112338805322613316

`A054770(n+1)-A189462(n+1)`
-/

namespace A188222.P7112338805322613316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054770 (n + 1) - A189462 (n + 1)

end

end A188222.P7112338805322613316

namespace A188222

/-- `A054770(n+1)-A189462(n+1)` -/
def P7112338805322613316.Spec : Prop :=
  ∀ n, P7112338805322613316.a n = A188222 (n + 1)

end A188222

/-!
# A188223: G.f.: (1+x^2+x^3)/(1-x-x^2-x^4-x^5).

The programs for A188223, the canonical program `A188223.P11687469787873118712` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188223 has offset 0).

The definition of A188223 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A188223.P11687469787873118712

`a(n-1)+a(n-2)+a(n-4)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=5, a(4)=9`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A188223

/-- `a(n-1)+a(n-2)+a(n-4)+a(n-5)` -/
def P11687469787873118712.Spec : Prop :=
  ∀ n, (P11687469787873118712.a n : ℤ) = A188223 n

theorem P11687469787873118712.correct : P11687469787873118712.Spec := by
  intro n
  simp only [A188223]

end A188223

/-! ## A188223.P18161493440553280426

`Δ[A079976(n+1)]`
-/

namespace A188223.P18161493440553280426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188223.P18161493440553280426

namespace A188223

/-- `Δ[A079976(n+1)]` -/
def P18161493440553280426.Spec : Prop :=
  ∀ n, P18161493440553280426.a n = A188223 n

end A188223

/-! ## A188223.P2362777410387015567

`A164387(n)-a(n-1)` with `a(0)=1`
-/

namespace A188223.P2362777410387015567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A164387 n - a (n - 1)

end

end A188223.P2362777410387015567

namespace A188223

/-- `A164387(n)-a(n-1)` -/
def P2362777410387015567.Spec : Prop :=
  ∀ n, P2362777410387015567.a n = A188223 n

end A188223

/-! ## A188223.P3893710242931983414

`A164387(n)-Δ[A079976(n)]`
-/

namespace A188223.P3893710242931983414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079976 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164387 n - (f1 (n + 1) - f1 n)

end

end A188223.P3893710242931983414

namespace A188223

/-- `A164387(n)-Δ[A079976(n)]` -/
def P3893710242931983414.Spec : Prop :=
  ∀ n, P3893710242931983414.a n = A188223 n

end A188223

/-! ## A188223.P12591252791907668383

`A079976(n+2)-A079976(n+1)`
-/

namespace A188223.P12591252791907668383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079976 (n + 2) - A079976 (n + 1)

end

end A188223.P12591252791907668383

namespace A188223

/-- `A079976(n+2)-A079976(n+1)` -/
def P12591252791907668383.Spec : Prop :=
  ∀ n, P12591252791907668383.a n = A188223 n

end A188223

/-! ## A188223.P10788970629499604756

`A000079(n)-A209400(n)-a(n-1)` with `a(0)=1`
-/

namespace A188223.P10788970629499604756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000079 n - A209400 n - a (n - 1)

end

end A188223.P10788970629499604756

namespace A188223

/-- `A000079(n)-A209400(n)-a(n-1)` -/
def P10788970629499604756.Spec : Prop :=
  ∀ n, P10788970629499604756.a n = A188223 n

end A188223

/-!
# A188224: For k > a(n), the maximum number of steps that the Euclidean algorithm requires for computing (k,i), with i < k, is greater than n.

The programs for A188224, there is no canonical definition to state claims against.
-/

/-! ## A188224.P3208011934829826689

`A344296(A015724(n+1))`
-/

namespace A188224.P3208011934829826689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344296 (A015724 (n + 1)).toNat

end

end A188224.P3208011934829826689

/-! ## A188224.P14618404522999906645

`A344296(∑[A015723(n+1)])`
-/

namespace A188224.P14618404522999906645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015723 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344296 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A188224.P14618404522999906645

/-! ## A188224.P16800361696302984077

`A344296(A115266(n)+A007949(n+1))`
-/

namespace A188224.P16800361696302984077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344296 (A115266 n + A007949 (n + 1)).toNat

end

end A188224.P16800361696302984077

/-!
# A188225: Number of ways to select 15 knights from n knights sitting at a round table if no adjacent knights are chosen.

The programs for A188225, the canonical program `A188225.P10560676642586180788` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188225 has offset 30).

The definition of A188225 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A188225.P10560676642586180788

`C(n+15, 15)+C(n+14, 14)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A188225

/-- `C(n+15, 15)+C(n+14, 14)` -/
def P10560676642586180788.Spec : Prop :=
  ∀ n, (P10560676642586180788.a n : ℤ) = A188225 (n + 30)

theorem P10560676642586180788.correct : P10560676642586180788.Spec := by
  intro n
  simp only [A188225, Nat.add_sub_cancel]

end A188225

/-! ## A188225.P12573056166016033261

`∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[2+n]]]]]]]]]]]]]]`
-/

namespace A188225.P12573056166016033261
noncomputable section

def f14 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 + n

def f13 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f14 j

def f12 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f13 j

def f11 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f12 j

def f10 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f11 j

def f9 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f10 j

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f9 j

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188225.P12573056166016033261

namespace A188225

/-- `∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[2+n]]]]]]]]]]]]]]` -/
def P12573056166016033261.Spec : Prop :=
  ∀ n, (P12573056166016033261.a n : ℤ) = A188225 (n + 30)

end A188225

/-! ## A188225.P610042053777459088

`A010968(n)+A010967(n)`
-/

namespace A188225.P610042053777459088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010968 (n + 15) + A010967 (n + 14)

end

end A188225.P610042053777459088

namespace A188225

/-- `A010968(n)+A010967(n)` -/
def P610042053777459088.Spec : Prop :=
  ∀ n, P610042053777459088.a n = A188225 (n + 30)

theorem P610042053777459088.correct : P610042053777459088.Spec := by
  intro n
  simp only [A188225, Nat.add_sub_cancel, A188225.P610042053777459088.a, A188225.P10560676642586180788.a, A010967, A010967.P14715086835322661682.a, A010968, A010968.P5209304560745506790.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A188225

/-! ## A188225.P14575872571703352477

`A010968(n)+∑[A010966(n)]`
-/

namespace A188225.P14575872571703352477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010966 (n + 13)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010968 (n + 15) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188225.P14575872571703352477

namespace A188225

/-- `A010968(n)+∑[A010966(n)]` -/
def P14575872571703352477.Spec : Prop :=
  ∀ n, P14575872571703352477.a n = A188225 (n + 30)

end A188225

/-! ## A188225.P156927917965051780

`Δ[A010969(n)-A010967(n)]`
-/

namespace A188225.P156927917965051780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010969 (n + 16) - A010967 (n + 14)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188225.P156927917965051780

namespace A188225

/-- `Δ[A010969(n)-A010967(n)]` -/
def P156927917965051780.Spec : Prop :=
  ∀ n, P156927917965051780.a n = A188225 (n + 30)

theorem P156927917965051780.correct : P156927917965051780.Spec := by
  intro n
  simp only [A188225, Nat.add_sub_cancel, A188225.P156927917965051780.f1, A188225.P156927917965051780.a, A188225.P10560676642586180788.a, A010967, A010967.P14715086835322661682.a, A010969, A010969.P14382318108978038704.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A188225

/-! ## A188225.P16145881326737967148

`A010968(n+1)-A010966(n+1)`
-/

namespace A188225.P16145881326737967148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010968 (n + 1 + 15) - A010966 (n + 1 + 13)

end

end A188225.P16145881326737967148

namespace A188225

/-- `A010968(n+1)-A010966(n+1)` -/
def P16145881326737967148.Spec : Prop :=
  ∀ n, P16145881326737967148.a n = A188225 (n + 30)

theorem P16145881326737967148.correct : P16145881326737967148.Spec := by
  intro n
  simp only [A188225, Nat.add_sub_cancel, A188225.P16145881326737967148.a, A188225.P10560676642586180788.a, A010966, A010966.P6804074157487264559.a, A010968, A010968.P5209304560745506790.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A188225

/-!
# A188226: Smallest number having exactly n divisors of the form 8*k + 7.

The programs for A188226, there is no canonical definition to state claims against.
-/

/-! ## A188226.P1301019305077843681

`A343137((n+1)^gcd(7, n))`
-/

namespace A188226.P1301019305077843681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343137 ((n + 1) ^ Nat.gcd 7 n)

end

end A188226.P1301019305077843681

/-! ## A188226.P8190130659397466977

`A003964(A343137(n+1))`
-/

namespace A188226.P8190130659397466977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003964 (A343137 (n + 1)).toNat

end

end A188226.P8190130659397466977

/-! ## A188226.P247246679034356716

`A343137(A024646(n+1))`
-/

namespace A188226.P247246679034356716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343137 (A024646 (n + 1)).toNat

end

end A188226.P247246679034356716

/-!
# A188227: Number of nondecreasing arrangements of n numbers in -(2n-2)..(2n-2) with sum zero and not more than two numbers equal.

The programs for A188227, there is no canonical definition to state claims against.
-/

/-! ## A188227.P14278173804518076352

`A188236(∑[4*n]+1)`
-/

namespace A188227.P14278173804518076352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188236 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A188227.P14278173804518076352

/-! ## A188227.P14939761147737399968

`record[gcd(A114327(n), A188236(n+1))]`
-/

namespace A188227.P14939761147737399968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A188236 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188227.P14939761147737399968

/-! ## A188227.P3991141017300026766

`record[and(A185917(n+1), A188236(n+1))]`
-/

namespace A188227.P3991141017300026766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A185917 (n + 1)) (A188236 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188227.P3991141017300026766

/-! ## A188227.P1624696219495664386

`A188236(A001844(n))%A016845(n)`
-/

namespace A188227.P1624696219495664386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188236 (A001844 n).toNat) (A016845 n)

end

end A188227.P1624696219495664386

/-! ## A188227.P3973816638306127872

`A188236(A001844(n))+char[A000045(n+8)]`
-/

namespace A188227.P3973816638306127872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 8)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188236 (A001844 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A188227.P3973816638306127872

/-!
# A188228: Number of nondecreasing arrangements of n numbers in -(n-1)..(n-1) with sum zero and not more than two numbers equal.

The programs for A188228, there is no canonical definition to state claims against.
-/

/-! ## A188228.P8779823948584573337

`A188236(∑[n+1])`
-/

namespace A188228.P8779823948584573337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188236 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A188228.P8779823948584573337

/-! ## A188228.P6528160524122773024

`record[A188236(A038722(n+1))]`
-/

namespace A188228.P6528160524122773024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188236 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188228.P6528160524122773024

/-! ## A188228.P11981892571158875532

`record[A188236(A057027(n+1))]`
-/

namespace A188228.P11981892571158875532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188236 (A057027 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188228.P11981892571158875532

/-! ## A188228.P4952492653362270692

`record[A188236(n+1)/A007318(n)]`
-/

namespace A188228.P4952492653362270692
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188236 (n + 1) : ℚ) / (A007318 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188228.P4952492653362270692

/-! ## A188228.P8447199294435281888

`record[A188236(n+1)/A009998(n)]`
-/

namespace A188228.P8447199294435281888
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188236 (n + 1) : ℚ) / (A009998 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188228.P8447199294435281888

/-!
# A188229: Number of nondecreasing arrangements of n numbers in -n..n with sum zero and not more than two numbers equal.

The programs for A188229, there is no canonical definition to state claims against.
-/

/-! ## A188229.P452601330947193864

`A188236(∑[n+2])`
-/

namespace A188229.P452601330947193864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188236 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A188229.P452601330947193864

/-! ## A188229.P2074371794103582627

`record[A188236(A000096(A158416(n)))]`
-/

namespace A188229.P2074371794103582627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188236 (A000096 (A158416 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188229.P2074371794103582627

/-! ## A188229.P15574440104699374919

`record[A188236(A000096(A003602(n+1)))]`
-/

namespace A188229.P15574440104699374919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188236 (A000096 (A003602 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188229.P15574440104699374919

/-! ## A188229.P14104479927945067369

`record[A188236(A000096(A004737(n+1)))]`
-/

namespace A188229.P14104479927945067369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188236 (A000096 (A004737 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188229.P14104479927945067369

/-! ## A188229.P2705055926914551102

`record[A188236(A000096(A050873(n+1)))]`
-/

namespace A188229.P2705055926914551102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188236 (A000096 (A050873 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188229.P2705055926914551102

/-!
# A188230: Number of nondecreasing arrangements of n numbers in -(n+1)..(n+1) with sum zero and not more than two numbers equal.

The programs for A188230, there is no canonical definition to state claims against.
-/

/-! ## A188230.P2848305200477128876

`A188236(∑[n+3]+1)`
-/

namespace A188230.P2848305200477128876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188236 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A188230.P2848305200477128876

/-! ## A188230.P720569486344289801

`A188236(Δ[A008778(n)])%A026785(n+3)`
-/

namespace A188230.P720569486344289801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188236 (f1 (n + 1) - f1 n).toNat) (A026785 (n + 3))

end

end A188230.P720569486344289801

/-! ## A188230.P12603255333185412116

`A000032((-1)^(2*n))*A188236(Δ[A008778(n)])`
-/

namespace A188230.P12603255333185412116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 ((-1) ^ (2 * n)).toNat * A188236 (f1 (n + 1) - f1 n).toNat

end

end A188230.P12603255333185412116

/-! ## A188230.P12703425033426927140

`A000203((-1)^(2*n))*A188236(Δ[A008778(n)])`
-/

namespace A188230.P12703425033426927140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 ((-1) ^ (2 * n)).toNat * A188236 (f1 (n + 1) - f1 n).toNat

end

end A188230.P12703425033426927140

/-! ## A188230.P15561925851894399892

`A002487((-1)^(2*n))*A188236(Δ[A008778(n)])`
-/

namespace A188230.P15561925851894399892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 ((-1) ^ (2 * n)).toNat * A188236 (f1 (n + 1) - f1 n).toNat

end

end A188230.P15561925851894399892

/-!
# A188231: Number of nondecreasing arrangements of n numbers in -(n+2)..(n+2) with sum zero and not more than two numbers equal.

The programs for A188231, there is no canonical definition to state claims against.
-/

/-! ## A188231.P7884941606795860363

`A188236(A141214(n+1))`
-/

namespace A188231.P7884941606795860363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188236 (A141214 (n + 1)).toNat

end

end A188231.P7884941606795860363

/-! ## A188231.P9777282679713138518

`A188236(A027379(n+2))`
-/

namespace A188231.P9777282679713138518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188236 (A027379 (n + 2)).toNat

end

end A188231.P9777282679713138518

/-! ## A188231.P11063954956426066285

`A188236(A055998(n+2))`
-/

namespace A188231.P11063954956426066285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188236 (A055998 (n + 2)).toNat

end

end A188231.P11063954956426066285

/-! ## A188231.P12854010678020077882

`A188236(A155212(n)+5)`
-/

namespace A188231.P12854010678020077882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188236 (A155212 n + 5).toNat

end

end A188231.P12854010678020077882

/-! ## A188231.P17379560154726615339

`A188236(A052905(n+1)+2)`
-/

namespace A188231.P17379560154726615339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188236 (A052905 (n + 1) + 2).toNat

end

end A188231.P17379560154726615339

/-!
# A188232: Number of nondecreasing arrangements of n numbers in -(n+3)..(n+3) with sum zero and not more than two numbers equal.

The programs for A188232, there is no canonical definition to state claims against.
-/

/-! ## A188232.P9002262790885314428

`A188236(A046691(n+3))`
-/

namespace A188232.P9002262790885314428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188236 (A046691 (n + 3)).toNat

end

end A188232.P9002262790885314428

/-! ## A188232.P10275185938230674882

`A188236(A052905(n+2)+1)`
-/

namespace A188232.P10275185938230674882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188236 (A052905 (n + 2) + 1).toNat

end

end A188232.P10275185938230674882

/-! ## A188232.P9713719291334252488

`A188236(A000124(n+5)-5)`
-/

namespace A188232.P9713719291334252488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188236 (A000124 (n + 5) - 5).toNat

end

end A188232.P9713719291334252488

/-! ## A188232.P5267817597588991000

`A188236(A161680(n+6)-4)`
-/

namespace A188232.P5267817597588991000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188236 (A161680 (n + 6) - 4).toNat

end

end A188232.P5267817597588991000

/-! ## A188232.P5131930657848333441

`A188236(A000217(n+4)+n+1)`
-/

namespace A188232.P5131930657848333441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188236 (A000217 (n + 4) + (n + 1 : ℤ)).toNat

end

end A188232.P5131930657848333441

/-!
# A188233: Number of nondecreasing arrangements of n numbers in -(n+4)..(n+4) with sum zero and not more than two numbers equal.

The programs for A188233, there is no canonical definition to state claims against.
-/

/-! ## A188233.P4543891869891479584

`A188236(A052905(n+3))`
-/

namespace A188233.P4543891869891479584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188236 (A052905 (n + 3)).toNat

end

end A188233.P4543891869891479584

/-! ## A188233.P13758673829130966244

`A188236(A000217(n+6)-5)`
-/

namespace A188233.P13758673829130966244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188236 (A000217 (n + 6) - 5).toNat

end

end A188233.P13758673829130966244

/-! ## A188233.P4791197369199488013

`A188236(A000124(n+6)-6)`
-/

namespace A188233.P4791197369199488013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188236 (A000124 (n + 6) - 6).toNat

end

end A188233.P4791197369199488013

/-! ## A188233.P15408588858058284510

`A188236(Δ[Δ[A006504(n+1)]])`
-/

namespace A188233.P15408588858058284510
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188236 (f1 (n + 1) - f1 n).toNat

end

end A188233.P15408588858058284510

/-! ## A188233.P89488180093799819

`A188236(Δ[A023551(n+1)]+1)`
-/

namespace A188233.P89488180093799819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188236 (f1 (n + 1) - f1 n + 1).toNat

end

end A188233.P89488180093799819

/-!
# A188234: Number of nondecreasing arrangements of n numbers in -(n+5)..(n+5) with sum zero and not more than two numbers equal.

The programs for A188234, there is no canonical definition to state claims against.
-/

/-! ## A188234.P16119222391359137681

`A188236(A055999(n+4))`
-/

namespace A188234.P16119222391359137681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188236 (A055999 (n + 4)).toNat

end

end A188234.P16119222391359137681

/-! ## A188234.P9427755440353515229

`A188236(Δ[A023551(n+2)])`
-/

namespace A188234.P9427755440353515229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188236 (f1 (n + 1) - f1 n).toNat

end

end A188234.P9427755440353515229

/-! ## A188234.P3633051793058276828

`A188236(A253145(n+6)-6)`
-/

namespace A188234.P3633051793058276828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188236 (A253145 (n + 6) - 6).toNat

end

end A188234.P3633051793058276828

/-! ## A188234.P16738003942727060642

`A188236(A000124(n+7)-7)`
-/

namespace A188234.P16738003942727060642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188236 (A000124 (n + 7) - 7).toNat

end

end A188234.P16738003942727060642

/-! ## A188234.P9354771473029311028

`A188236(eq[6, A025581(n)]+1)`
-/

namespace A188234.P9354771473029311028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188236 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A188234.P9354771473029311028

/-!
# A188235: Number of nondecreasing arrangements of n numbers in -(n+6)..(n+6) with sum zero and not more than two numbers equal.

The programs for A188235, there is no canonical definition to state claims against.
-/

/-! ## A188235.P17901173670763395999

`A188236(A000124(n+8)-8)`
-/

namespace A188235.P17901173670763395999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188236 (A000124 (n + 8) - 8).toNat

end

end A188235.P17901173670763395999

/-! ## A188235.P2009751423052919224

`A188236(A253145(n+6)+n+1)`
-/

namespace A188235.P2009751423052919224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188236 (A253145 (n + 6) + (n + 1 : ℤ)).toNat

end

end A188235.P2009751423052919224

/-! ## A188235.P792828229494769549

`A188236(A000217(n+7)+n+1)`
-/

namespace A188235.P792828229494769549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188236 (A000217 (n + 7) + (n + 1 : ℤ)).toNat

end

end A188235.P792828229494769549

/-! ## A188235.P17730386124313817279

`A188236(A046691(n+5)+n+5)`
-/

namespace A188235.P17730386124313817279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188236 (A046691 (n + 5) + (n + 5 : ℤ)).toNat

end

end A188235.P17730386124313817279

/-! ## A188235.P5043840808218343880

`A188236(2*(n+1)+A000096(n+5)+7)`
-/

namespace A188235.P5043840808218343880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188236 ((2 * (n + 1) : ℤ) + (A000096 (n + 5) + 7)).toNat

end

end A188235.P5043840808218343880

/-!
# A188236: T(n,k)=Number of nondecreasing arrangements of n numbers in -(n+k-2)..(n+k-2) with sum zero and not more than two numbers equal.

The programs for A188236, there is no canonical definition to state claims against.
-/

/-! ## A188236.P17383693084030701192

`A051125(A108767(n+1)^A204999(n+1))`
-/

namespace A188236.P17383693084030701192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051125 (SequenceMachineLib.roundAway ((A108767 (n + 1) : ℚ) ^ (A204999 (n + 1) : ℤ))).toNat

end

end A188236.P17383693084030701192

/-! ## A188236.P6810458131406257282

`A308813(n+1)+A163352(A124761(n)+A101031(n))`
-/

namespace A188236.P6810458131406257282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308813 (n + 1) + A163352 (A124761 n + A101031 n).toNat

end

end A188236.P6810458131406257282

/-!
# A188237: Number of nondecreasing arrangements of 4 numbers in -(n+2)..(n+2) with sum zero and not more than two numbers equal.

The programs for A188237, the canonical program `A188237.P1096983553706900320` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188237 has offset 1).

The definition of A188237 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188237.P1096983553706900320

`A188212(n+1)-A005408(A008620(n))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A188237

/-- `A188212(n+1)-A005408(A008620(n))` -/
def P1096983553706900320.Spec : Prop :=
  ∀ n, P1096983553706900320.a n = A188237 (n + 1)

theorem P1096983553706900320.correct : P1096983553706900320.Spec := by
  intro n
  simp only [A188237, Nat.add_sub_cancel]

end A188237

/-! ## A188237.P16241926915918383286

`A188212(n+1)-A005408(Δ[A001840(n)])`
-/

namespace A188237.P16241926915918383286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188212 (n + 1) - A005408 (f1 (n + 1) - f1 n).toNat

end

end A188237.P16241926915918383286

namespace A188237

/-- `A188212(n+1)-A005408(Δ[A001840(n)])` -/
def P16241926915918383286.Spec : Prop :=
  ∀ n, P16241926915918383286.a n = A188237 (n + 1)

end A188237

/-! ## A188237.P7438047110331269496

`A000601(2*n+5)-ceil((n+1)/3)`
-/

namespace A188237.P7438047110331269496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000601 (2 * n + 5) - ⌈(n + 1 : ℚ) / 3⌉

end

end A188237.P7438047110331269496

namespace A188237

/-- `A000601(2*n+5)-ceil((n+1)/3)` -/
def P7438047110331269496.Spec : Prop :=
  ∀ n, P7438047110331269496.a n = A188237 (n + 1)

end A188237

/-! ## A188237.P358727157352820464

`Δ[A097701(2*n+3)-floor(C(n+2, 2)/3)]`
-/

namespace A188237.P358727157352820464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097701 (2 * n + 3) - ⌊(Nat.choose (n + 2) 2 : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188237.P358727157352820464

namespace A188237

/-- `Δ[A097701(2*n+3)-floor(C(n+2, 2)/3)]` -/
def P358727157352820464.Spec : Prop :=
  ∀ n, P358727157352820464.a n = A188237 (n + 1)

end A188237

/-! ## A188237.P8142420677783874491

`Δ[A097701(2*n+3)-A001840(n)]`
-/

namespace A188237.P8142420677783874491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097701 (2 * n + 3) - A001840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188237.P8142420677783874491

namespace A188237

/-- `Δ[A097701(2*n+3)-A001840(n)]` -/
def P8142420677783874491.Spec : Prop :=
  ∀ n, P8142420677783874491.a n = A188237 (n + 1)

end A188237

/-! ## A188237.P17948030256665532108

`A001973(2*(n+2))+Δ[A001973(2*n+3)]`
-/

namespace A188237.P17948030256665532108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001973 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001973 (2 * (n + 2)) + (f1 (n + 1) - f1 n)

end

end A188237.P17948030256665532108

namespace A188237

/-- `A001973(2*(n+2))+Δ[A001973(2*n+3)]` -/
def P17948030256665532108.Spec : Prop :=
  ∀ n, P17948030256665532108.a n = A188237 (n + 1)

end A188237

/-! ## A188237.P5989122665838578716

`record[A000601(A168195(n+1))-A103221(n)]`
-/

namespace A188237.P5989122665838578716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000601 (A168195 (n + 1)).toNat - A103221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188237.P5989122665838578716

namespace A188237

/-- `record[A000601(A168195(n+1))-A103221(n)]` -/
def P5989122665838578716.Spec : Prop :=
  ∀ n, P5989122665838578716.a n = A188237 (n + 1)

end A188237

/-! ## A188237.P13685548091755148759

`A001973(2*(n+2))+A001973(2*n+5)-A001973(2*n+3)`
-/

namespace A188237.P13685548091755148759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001973 (2 * (n + 2)) + (A001973 (2 * n + 5) - A001973 (2 * n + 3))

end

end A188237.P13685548091755148759

namespace A188237

/-- `A001973(2*(n+2))+A001973(2*n+5)-A001973(2*n+3)` -/
def P13685548091755148759.Spec : Prop :=
  ∀ n, P13685548091755148759.a n = A188237 (n + 1)

end A188237

/-! ## A188237.P6359203232528148696

`A001973(A004275(n+4))-A008611(A004275(n+4))`
-/

namespace A188237.P6359203232528148696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001973 (A004275 (n + 4)).toNat - A008611 (A004275 (n + 4)).toNat

end

end A188237.P6359203232528148696

namespace A188237

/-- `A001973(A004275(n+4))-A008611(A004275(n+4))` -/
def P6359203232528148696.Spec : Prop :=
  ∀ n, P6359203232528148696.a n = A188237 (n + 1)

end A188237

/-! ## A188237.P12434489889181101812

`A181120(2*(n+4))-A008624(A004396(2*n)+2)`
-/

namespace A188237.P12434489889181101812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181120 (2 * (n + 4)) - A008624 (A004396 (2 * n) + 2).toNat

end

end A188237.P12434489889181101812

namespace A188237

/-- `A181120(2*(n+4))-A008624(A004396(2*n)+2)` -/
def P12434489889181101812.Spec : Prop :=
  ∀ n, P12434489889181101812.a n = A188237 (n + 1)

end A188237

/-!
# A188238: Number of nondecreasing arrangements of 5 numbers in -(n+3)..(n+3) with sum zero and not more than two numbers equal.

The programs for A188238, there is no canonical definition to state claims against.
-/

/-! ## A188238.P11754531191750504182

`A188335(n+1)+A188212(n+1)`
-/

namespace A188238.P11754531191750504182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188335 (n + 1) + A188212 (n + 1)

end

end A188238.P11754531191750504182

/-! ## A188238.P9556821548727076215

`A199849(n+2)-A000982(n+4)`
-/

namespace A188238.P9556821548727076215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199849 (n + 2) - A000982 (n + 4)

end

end A188238.P9556821548727076215

/-! ## A188238.P9167726208550361946

`A188335(n+1)+A001973(Δ[A028557(n)])`
-/

namespace A188238.P9167726208550361946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188335 (n + 1) + A001973 (f1 (n + 1) - f1 n).toNat

end

end A188238.P9167726208550361946

/-! ## A188238.P9942983866580122054

`A188335(n+1)+A001973(Δ[A082111(n)])`
-/

namespace A188238.P9942983866580122054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082111 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188335 (n + 1) + A001973 (f1 (n + 1) - f1 n).toNat

end

end A188238.P9942983866580122054

/-! ## A188238.P4458569679827837979

`A188335(n+1)+A001973(A103517(n+2))`
-/

namespace A188238.P4458569679827837979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188335 (n + 1) + A001973 (A103517 (n + 2)).toNat

end

end A188238.P4458569679827837979

/-! ## A188238.P1527736617649467713

`A188212(n+1)+A001975(2*(n+4))-A001973(2*(n+4))`
-/

namespace A188238.P1527736617649467713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188212 (n + 1) + (A001975 (2 * (n + 4)) - A001973 (2 * (n + 4)))

end

end A188238.P1527736617649467713

/-! ## A188238.P5976225138805192529

`A199849(n+2)-A004525((n+4)²)`
-/

namespace A188238.P5976225138805192529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199849 (n + 2) - A004525 ((n + 4) ^ 2)

end

end A188238.P5976225138805192529

/-!
# A188239: Number of nondecreasing arrangements of 6 numbers in -(n+4)..(n+4) with sum zero and not more than two numbers equal.

The programs for A188239, there is no canonical definition to state claims against.
-/

/-! ## A188239.P3272512585644188819

`A188236(A167499(n+4)+1)`
-/

namespace A188239.P3272512585644188819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188236 (A167499 (n + 4) + 1).toNat

end

end A188239.P3272512585644188819

/-! ## A188239.P12840930886450168680

`A188236(A000124(n+5)+5)`
-/

namespace A188239.P12840930886450168680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188236 (A000124 (n + 5) + 5).toNat

end

end A188239.P12840930886450168680

/-! ## A188239.P1985673780692140672

`A188236(A000217(n+5)+6)`
-/

namespace A188239.P1985673780692140672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188236 (A000217 (n + 5) + 6).toNat

end

end A188239.P1985673780692140672

/-! ## A188239.P17942796211669317071

`A188236(A027379(n+3)+9)`
-/

namespace A188239.P17942796211669317071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188236 (A027379 (n + 3) + 9).toNat

end

end A188239.P17942796211669317071

/-! ## A188239.P10406478999377853744

`A188236(A161680(n+6)+6)`
-/

namespace A188239.P10406478999377853744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188236 (A161680 (n + 6) + 6).toNat

end

end A188239.P10406478999377853744

/-!
# A188240: Number of nondecreasing arrangements of 7 numbers in -(n+5)..(n+5) with sum zero and not more than two numbers equal.

The programs for A188240, there is no canonical definition to state claims against.
-/

/-! ## A188240.P10324231610720636146

`A188236(A167499(n+5)+2)`
-/

namespace A188240.P10324231610720636146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188236 (A167499 (n + 5) + 2).toNat

end

end A188240.P10324231610720636146

/-! ## A188240.P8326580653523404475

`A188236(A000124(n+6)+6)`
-/

namespace A188240.P8326580653523404475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188236 (A000124 (n + 6) + 6).toNat

end

end A188240.P8326580653523404475

/-! ## A188240.P3637034806996985073

`A188236(A000217(n+6)+7)`
-/

namespace A188240.P3637034806996985073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188236 (A000217 (n + 6) + 7).toNat

end

end A188240.P3637034806996985073

/-! ## A188240.P11927538178453018348

`A188236(A155212(n+2)+15)`
-/

namespace A188240.P11927538178453018348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188236 (A155212 (n + 2) + 15).toNat

end

end A188240.P11927538178453018348

/-! ## A188240.P1413144268643903287

`A188236(eq[6, A002262(n)]+1)`
-/

namespace A188240.P1413144268643903287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188236 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A188240.P1413144268643903287

/-!
# A188241: Number of nondecreasing arrangements of 8 numbers in -(n+6)..(n+6) with sum zero and not more than two numbers equal.

The programs for A188241, there is no canonical definition to state claims against.
-/

/-! ## A188241.P9521038483425816611

`A188236(A167487(n+6)+1)`
-/

namespace A188241.P9521038483425816611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188236 (A167487 (n + 6) + 1).toNat

end

end A188241.P9521038483425816611

/-! ## A188241.P8339981295091958991

`A188236(A000124(n+7)+7)`
-/

namespace A188241.P8339981295091958991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188236 (A000124 (n + 7) + 7).toNat

end

end A188241.P8339981295091958991

/-! ## A188241.P15409483045163501078

`A188236(A000217(n+7)+8)`
-/

namespace A188241.P15409483045163501078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188236 (A000217 (n + 7) + 8).toNat

end

end A188241.P15409483045163501078

/-! ## A188241.P10002403621170184554

`A188236(A034856(n+6)+10)`
-/

namespace A188241.P10002403621170184554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188236 (A034856 (n + 6) + 10).toNat

end

end A188241.P10002403621170184554

/-! ## A188241.P10272937538986810840

`A188236(A161680(n+8)+8)`
-/

namespace A188241.P10272937538986810840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188236 (A161680 (n + 8) + 8).toNat

end

end A188241.P10272937538986810840

/-!
# A188242: Number of arrangements of n+2 nonzero numbers x(i) in -2..2 with the sum of x(i)*x(i+1) equal to zero.

The programs for A188242, there is no canonical definition to state claims against.
-/

/-! ## A188242.P9815744366154732967

`A188249(∑[n+2])`
-/

namespace A188242.P9815744366154732967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188249 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A188242.P9815744366154732967

/-! ## A188242.P14501075678326600551

`record[A188249(abs(A201163(n)))]`
-/

namespace A188242.P14501075678326600551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188249 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188242.P14501075678326600551

/-! ## A188242.P14835370256040117813

`record[A188249(A333530(n+1))]`
-/

namespace A188242.P14835370256040117813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188249 (A333530 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188242.P14835370256040117813

/-! ## A188242.P15824621126506466368

`lcm(2, A188249(A000096(n+1)))`
-/

namespace A188242.P15824621126506466368
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A188249 (A000096 (n + 1)).toNat)

end

end A188242.P15824621126506466368

/-! ## A188242.P4238960246682481556

`record[A188249(Δ[A003453(n+5)])]`
-/

namespace A188242.P4238960246682481556
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188249 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188242.P4238960246682481556

/-!
# A188243: Number of arrangements of n+2 nonzero numbers x(i) in -3..3 with the sum of x(i)*x(i+1) equal to zero.

The programs for A188243, there is no canonical definition to state claims against.
-/

/-! ## A188243.P4373221329675757597

`A188249(∑[n+3]+1)`
-/

namespace A188243.P4373221329675757597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188249 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A188243.P4373221329675757597

/-! ## A188243.P10549808720651660005

`record[A188249(A198464(n+1))]`
-/

namespace A188243.P10549808720651660005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188249 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188243.P10549808720651660005

/-! ## A188243.P8125669061391159161

`lcm(2, A188249(Δ[A008778(n)]))`
-/

namespace A188243.P8125669061391159161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A188249 (f1 (n + 1) - f1 n).toNat)

end

end A188243.P8125669061391159161

/-! ## A188243.P12003677948689675352

`A188249(Δ[A008778(n)])+A008683(4*(n+1))`
-/

namespace A188243.P12003677948689675352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188249 (f1 (n + 1) - f1 n).toNat + A008683 (4 * (n + 1))

end

end A188243.P12003677948689675352

/-! ## A188243.P10535828412523283074

`A014963(6*(n+1))*A188249(Δ[A008778(n)])`
-/

namespace A188243.P10535828412523283074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A188249 (f1 (n + 1) - f1 n).toNat

end

end A188243.P10535828412523283074

/-!
# A188244: Number of arrangements of n+2 nonzero numbers x(i) in -4..4 with the sum of x(i)*x(i+1) equal to zero.

The programs for A188244, there is no canonical definition to state claims against.
-/

/-! ## A188244.P17417446903449202967

`A188249(∑[n+4]+3)`
-/

namespace A188244.P17417446903449202967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188249 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A188244.P17417446903449202967

/-!
# A188245: Number of arrangements of n+2 nonzero numbers x(i) in -5..5 with the sum of x(i)*x(i+1) equal to zero.

The programs for A188245, there is no canonical definition to state claims against.
-/

/-! ## A188245.P10630313120012438833

`A188249(∑[n+5]+6)`
-/

namespace A188245.P10630313120012438833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188249 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A188245.P10630313120012438833

/-!
# A188246: Number of arrangements of n+2 nonzero numbers x(i) in -6..6 with the sum of x(i)*x(i+1) equal to zero.

The programs for A188246, there is no canonical definition to state claims against.
-/

/-! ## A188246.P2203926058981903911

`A188249(∑[n+6]+10)`
-/

namespace A188246.P2203926058981903911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188249 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A188246.P2203926058981903911

/-! ## A188246.P11191677113996815876

`A188249(A052905(n+3))+A184945(n)`
-/

namespace A188246.P11191677113996815876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188249 (A052905 (n + 3)).toNat + A184945 n

end

end A188246.P11191677113996815876

/-! ## A188246.P9844207259022687960

`A188249(A052905(n+3))%A188247(n+1)`
-/

namespace A188246.P9844207259022687960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188249 (A052905 (n + 3)).toNat) (A188247 (n + 1))

end

end A188246.P9844207259022687960

/-! ## A188246.P14119179708665780559

`A188249(A052905(n+3))+A007814(2*n+5)`
-/

namespace A188246.P14119179708665780559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188249 (A052905 (n + 3)).toNat + A007814 (2 * n + 5)

end

end A188246.P14119179708665780559

/-!
# A188247: Number of arrangements of n+2 nonzero numbers x(i) in -7..7 with the sum of x(i)*x(i+1) equal to zero.

The programs for A188247, there is no canonical definition to state claims against.
-/

/-! ## A188247.P1702580098612119021

`A188249(A055999(n+4))`
-/

namespace A188247.P1702580098612119021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188249 (A055999 (n + 4)).toNat

end

end A188247.P1702580098612119021

/-! ## A188247.P5787654662734872892

`A188249(eq[4, A219347(n)])`
-/

namespace A188247.P5787654662734872892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188249 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188247.P5787654662734872892

/-! ## A188247.P15930419186162580802

`A188249(eq[6, A193592(n)])`
-/

namespace A188247.P15930419186162580802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188249 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188247.P15930419186162580802

/-! ## A188247.P13225784945076179634

`A188249(Δ[A023551(n+2)])`
-/

namespace A188247.P13225784945076179634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188249 (f1 (n + 1) - f1 n).toNat

end

end A188247.P13225784945076179634

/-! ## A188247.P17278043159988871178

`A188249(Δ[A026054(n+4)])`
-/

namespace A188247.P17278043159988871178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188249 (f1 (n + 1) - f1 n).toNat

end

end A188247.P17278043159988871178

/-!
# A188248: Number of arrangements of n+2 nonzero numbers x(i) in -8..8 with the sum of x(i)*x(i+1) equal to zero.

The programs for A188248, there is no canonical definition to state claims against.
-/

/-! ## A188248.P3770685821211701547

`A188249(eq[5, A219347(n)])`
-/

namespace A188248.P3770685821211701547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188249 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188248.P3770685821211701547

/-! ## A188248.P363524195954750468

`A188249(eq[7, A193592(n)])`
-/

namespace A188248.P363524195954750468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188249 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188248.P363524195954750468

/-! ## A188248.P8305540145150803796

`A188249(A155212(n+4)+1)`
-/

namespace A188248.P8305540145150803796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188249 (A155212 (n + 4) + 1).toNat

end

end A188248.P8305540145150803796

/-! ## A188248.P8964459509799306837

`A188249(A000096(n+7)-6)`
-/

namespace A188248.P8964459509799306837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188249 (A000096 (n + 7) - 6).toNat

end

end A188248.P8964459509799306837

/-! ## A188248.P1183991652572041655

`A188249(A000217(n+8)-7)`
-/

namespace A188248.P1183991652572041655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188249 (A000217 (n + 8) - 7).toNat

end

end A188248.P1183991652572041655

/-!
# A188250: Number of arrangements of 4 nonzero numbers x(i) in -n..n with the sum of x(i)*x(i+1) equal to zero.

The programs for A188250, there is no canonical definition to state claims against.
-/

/-! ## A188250.P16213480813061418527

`A188249(∑[n+1]+2)`
-/

namespace A188250.P16213480813061418527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188249 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A188250.P16213480813061418527

/-! ## A188250.P7945057601945017721

`record[A115359(n)*A188249(n+3)]`
-/

namespace A188250.P7945057601945017721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115359 n * A188249 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188250.P7945057601945017721

/-! ## A188250.P5969966943861575448

`A178334(n)*A188249(A167487(n)-5)`
-/

namespace A188250.P5969966943861575448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A188249 (A167487 n - 5).toNat

end

end A188250.P5969966943861575448

/-! ## A188250.P5914214935070476978

`A188249(A133263(n+1))+A147612(2*(n+1))`
-/

namespace A188250.P5914214935070476978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188249 (A133263 (n + 1)).toNat + A147612 (2 * (n + 1))

end

end A188250.P5914214935070476978

/-!
# A188251: Number of arrangements of 5 nonzero numbers x(i) in -n..n with the sum of x(i)*x(i+1) equal to zero.

The programs for A188251, there is no canonical definition to state claims against.
-/

/-! ## A188251.P12323995631698061802

`A188249(∑[n+2]+4)`
-/

namespace A188251.P12323995631698061802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188249 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A188251.P12323995631698061802

/-! ## A188251.P7510064806583857645

`lcm(2, A188249(A167614(n+1)))`
-/

namespace A188251.P7510064806583857645
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A188249 (A167614 (n + 1)).toNat)

end

end A188251.P7510064806583857645

/-! ## A188251.P15666742795714992885

`lcm(4, A188249(A167499(n)+n))`
-/

namespace A188251.P15666742795714992885
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A188249 (A167499 n + (n : ℤ)).toNat)

end

end A188251.P15666742795714992885

/-! ## A188251.P8156981406933310198

`A016236(n)*A188249(A167614(n+1))`
-/

namespace A188251.P8156981406933310198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016236 n * A188249 (A167614 (n + 1)).toNat

end

end A188251.P8156981406933310198

/-! ## A188251.P7591016121102863645

`A188249(A167614(n+1))+A034504(n+1)`
-/

namespace A188251.P7591016121102863645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188249 (A167614 (n + 1)).toNat + A034504 (n + 1)

end

end A188251.P7591016121102863645

/-!
# A188252: Number of arrangements of 6 nonzero numbers x(i) in -n..n with the sum of x(i)*x(i+1) equal to zero.

The programs for A188252, there is no canonical definition to state claims against.
-/

/-! ## A188252.P9599579850521713822

`A188249(∑[n+3]+7)`
-/

namespace A188252.P9599579850521713822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188249 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A188252.P9599579850521713822

/-! ## A188252.P7887539033006513388

`lcm(2, A188249(A052905(n)+9))`
-/

namespace A188252.P7887539033006513388
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A188249 (A052905 n + 9).toNat)

end

end A188252.P7887539033006513388

/-! ## A188252.P13745455005477975087

`lcm(4, A188249(A167614(n+2)+1))`
-/

namespace A188252.P13745455005477975087
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A188249 (A167614 (n + 2) + 1).toNat)

end

end A188252.P13745455005477975087

/-! ## A188252.P16141726302776378738

`A057427(n)*A188249(Δ[A006503(n)]+7)`
-/

namespace A188252.P16141726302776378738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A188249 (f1 (n + 1) - f1 n + 7).toNat

end

end A188252.P16141726302776378738

/-! ## A188252.P5848038549623089155

`A007318(C(2, n))*A188249(A052905(n)+9)`
-/

namespace A188252.P5848038549623089155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A188249 (A052905 n + 9).toNat

end

end A188252.P5848038549623089155

/-!
# A188253: Number of arrangements of 7 nonzero numbers x(i) in -n..n with the sum of x(i)*x(i+1) equal to zero.

The programs for A188253, there is no canonical definition to state claims against.
-/

/-! ## A188253.P18281066680674251305

`A188249(∑[n+4]+11)`
-/

namespace A188253.P18281066680674251305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188249 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A188253.P18281066680674251305

/-!
# A188254: Number of arrangements of 8 nonzero numbers x(i) in -n..n with the sum of x(i)*x(i+1) equal to zero.

The programs for A188254, there is no canonical definition to state claims against.
-/

/-! ## A188254.P761861668307682654

`A188249(A166136(n+4))`
-/

namespace A188254.P761861668307682654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188249 (A166136 (n + 4)).toNat

end

end A188254.P761861668307682654

/-! ## A188254.P10412784434489971113

`A188249(A056115(n)+21)`
-/

namespace A188254.P10412784434489971113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188249 (A056115 n + 21).toNat

end

end A188254.P10412784434489971113

/-! ## A188254.P11758057748373503978

`A188249(A167499(n+4)+1)`
-/

namespace A188254.P11758057748373503978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188249 (A167499 (n + 4) + 1).toNat

end

end A188254.P11758057748373503978

/-! ## A188254.P9306406395243847170

`A188249(A167487(n+4)-1)`
-/

namespace A188254.P9306406395243847170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188249 (A167487 (n + 4) - 1).toNat

end

end A188254.P9306406395243847170

/-! ## A188254.P14631586089921264332

`A188249(A167614(n+4)+3)`
-/

namespace A188254.P14631586089921264332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188249 (A167614 (n + 4) + 3).toNat

end

end A188254.P14631586089921264332

/-!
# A188255: Number of arrangements of 9 nonzero numbers x(i) in -n..n with the sum of x(i)*x(i+1) equal to zero.

The programs for A188255, there is no canonical definition to state claims against.
-/

/-! ## A188255.P14302506362914929154

`A188249(A167487(n+5))`
-/

namespace A188255.P14302506362914929154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188249 (A167487 (n + 5)).toNat

end

end A188255.P14302506362914929154

/-! ## A188255.P9557381438027404454

`A188249(eq[11, A066657(n)])`
-/

namespace A188255.P9557381438027404454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188249 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188255.P9557381438027404454

/-! ## A188255.P18201244487637540164

`A188249(A166136(n+5)+1)`
-/

namespace A188255.P18201244487637540164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188249 (A166136 (n + 5) + 1).toNat

end

end A188255.P18201244487637540164

/-! ## A188255.P12899251673656528195

`A188249(A167614(n+5)+4)`
-/

namespace A188255.P12899251673656528195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188249 (A167614 (n + 5) + 4).toNat

end

end A188255.P12899251673656528195

/-! ## A188255.P14884245027319508415

`A188249(A000124(n+6)+6)`
-/

namespace A188255.P14884245027319508415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188249 (A000124 (n + 6) + 6).toNat

end

end A188255.P14884245027319508415

/-!
# A188256: Number of arrangements of 10 nonzero numbers x(i) in -n..n with the sum of x(i)*x(i+1) equal to zero.

The programs for A188256, there is no canonical definition to state claims against.
-/

/-! ## A188256.P11340380618100604081

`A188249(eq[13, A066657(n)])`
-/

namespace A188256.P11340380618100604081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188249 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188256.P11340380618100604081

/-! ## A188256.P11518901466359849882

`A188249(A167614(n+6)+5)`
-/

namespace A188256.P11518901466359849882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188249 (A167614 (n + 6) + 5).toNat

end

end A188256.P11518901466359849882

/-! ## A188256.P13223040882650060919

`A188249(eq[7, A002262(n)]+1)`
-/

namespace A188256.P13223040882650060919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188249 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A188256.P13223040882650060919

/-! ## A188256.P14566674389521861766

`A188249(eq[9, A131818(n+1)])`
-/

namespace A188256.P14566674389521861766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188249 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188256.P14566674389521861766

/-!
# A188257: [nr+kr]-[nr]-[kr], where r=sqrt(5), k=2, [ ]=floor.

The programs for A188257, the canonical program `A188257.P11681210939291988659` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188257 has offset 1).

The definition of A188257 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188257.P15690870815443979996

`char[A188259(n+1)-1]`
-/

namespace A188257.P15690870815443979996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188259 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188257.P15690870815443979996

namespace A188257

/-- `char[A188259(n+1)-1]` -/
def P15690870815443979996.Spec : Prop :=
  ∀ n, (P15690870815443979996.a n : ℤ) = A188257 (n + 1)

end A188257

/-! ## A188257.P8588203825726961025

`char[A188191(n+1)-3]`
-/

namespace A188257.P8588203825726961025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188191 (n + 1) - 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188257.P8588203825726961025

namespace A188257

/-- `char[A188191(n+1)-3]` -/
def P8588203825726961025.Spec : Prop :=
  ∀ n, (P8588203825726961025.a n : ℤ) = A188257 (n + 1)

end A188257

/-! ## A188257.P11681210939291988659

`A188260(a(n-1)+n)` with `a(0)=0`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A188257

/-- `A188260(a(n-1)+n)` -/
def P11681210939291988659.Spec : Prop :=
  ∀ n, P11681210939291988659.a n = A188257 (n + 1)

theorem P11681210939291988659.correct : P11681210939291988659.Spec := by
  intro n
  simp only [A188257, Nat.add_sub_cancel]

end A188257

/-! ## A188257.P2421132325233163867

`char[comp[A188258(n+1)-1]]`
-/

namespace A188257.P2421132325233163867
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188258 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A188257.P2421132325233163867

namespace A188257

/-- `char[comp[A188258(n+1)-1]]` -/
def P2421132325233163867.Spec : Prop :=
  ∀ n, (P2421132325233163867.a n : ℤ) = A188257 (n + 1)

end A188257

/-! ## A188257.P1906548262899444387

`A188260(n+1-A188260(n+1))`
-/

namespace A188257.P1906548262899444387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188260 ((n + 1 : ℤ) - A188260 (n + 1)).toNat

end

end A188257.P1906548262899444387

namespace A188257

/-- `A188260(n+1-A188260(n+1))` -/
def P1906548262899444387.Spec : Prop :=
  ∀ n, P1906548262899444387.a n = A188257 (n + 1)

end A188257

/-! ## A188257.P7179240773233882799

`Δ[Δ[floor(2*ϕ*(n+1))]]²`
-/

namespace A188257.P7179240773233882799
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * (Real.goldenRatio * (n + 1 : ℝ))⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A188257.P7179240773233882799

namespace A188257

/-- `Δ[Δ[floor(2*ϕ*(n+1))]]²` -/
def P7179240773233882799.Spec : Prop :=
  ∀ n, P7179240773233882799.a n = A188257 (n + 1)

end A188257

/-! ## A188257.P5671569837485087998

`abs(Δ[A188221(n+1)])`
-/

namespace A188257.P5671569837485087998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A188257.P5671569837485087998

namespace A188257

/-- `abs(Δ[A188221(n+1)])` -/
def P5671569837485087998.Spec : Prop :=
  ∀ n, P5671569837485087998.a n = A188257 (n + 1)

end A188257

/-! ## A188257.P12345001966109522717

`A188221(n+1)+A188221(n+2)`
-/

namespace A188257.P12345001966109522717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188221 (n + 1) + A188221 (n + 2)

end

end A188257.P12345001966109522717

namespace A188257

/-- `A188221(n+1)+A188221(n+2)` -/
def P12345001966109522717.Spec : Prop :=
  ∀ n, P12345001966109522717.a n = A188257 (n + 1)

end A188257

/-! ## A188257.P14020009035741184451

`abs(Δ[Δ[Δ[floor(2*ϕ*n)]]+a(n-1)])` with `a(0)=0`
-/

namespace A188257.P14020009035741184451
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * (Real.goldenRatio * (n : ℝ))⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f2 (n + 1) - f2 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A188257.P14020009035741184451

namespace A188257

/-- `abs(Δ[Δ[Δ[floor(2*ϕ*n)]]+a(n-1)])` -/
def P14020009035741184451.Spec : Prop :=
  ∀ n, P14020009035741184451.a n = A188257 (n + 1)

end A188257

/-! ## A188257.P5927838655796695766

`A188189(n+3)`
-/

namespace A188257.P5927838655796695766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188189 (n + 3)

end

end A188257.P5927838655796695766

namespace A188257

/-- `A188189(n+3)` -/
def P5927838655796695766.Spec : Prop :=
  ∀ n, P5927838655796695766.a n = A188257 (n + 1)

end A188257

/-! ## A188257.P12032350640213392225

`abs(Δ[Δ[A001961(n+1)]])`
-/

namespace A188257.P12032350640213392225
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001961 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A188257.P12032350640213392225

namespace A188257

/-- `abs(Δ[Δ[A001961(n+1)]])` -/
def P12032350640213392225.Spec : Prop :=
  ∀ n, P12032350640213392225.a n = A188257 (n + 1)

end A188257

/-! ## A188257.P14519087268084537110

`abs(Δ[Δ[A001962(n+1)]])`
-/

namespace A188257.P14519087268084537110
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001962 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A188257.P14519087268084537110

namespace A188257

/-- `abs(Δ[Δ[A001962(n+1)]])` -/
def P14519087268084537110.Spec : Prop :=
  ∀ n, P14519087268084537110.a n = A188257 (n + 1)

end A188257

/-! ## A188257.P14644574505688775006

`and(1, Δ[Δ[A089809(n+1)]])`
-/

namespace A188257.P14644574505688775006
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089809 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (f1 (n + 1) - f1 n)

end

end A188257.P14644574505688775006

namespace A188257

/-- `and(1, Δ[Δ[A089809(n+1)]])` -/
def P14644574505688775006.Spec : Prop :=
  ∀ n, P14644574505688775006.a n = A188257 (n + 1)

end A188257

/-! ## A188257.P15746134756438571178

`A339825((n+2)*A339052(n))`
-/

namespace A188257.P15746134756438571178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339825 ((n + 2 : ℤ) * A339052 n).toNat

end

end A188257.P15746134756438571178

namespace A188257

/-- `A339825((n+2)*A339052(n))` -/
def P15746134756438571178.Spec : Prop :=
  ∀ n, P15746134756438571178.a n = A188257 (n + 1)

end A188257

/-! ## A188257.P2353833479105642043

`A034460(Δ[Δ[A001962(n+1)]]²+1)`
-/

namespace A188257.P2353833479105642043
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001962 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034460 ((f1 (n + 1) - f1 n) ^ 2 + 1).toNat

end

end A188257.P2353833479105642043

namespace A188257

/-- `A034460(Δ[Δ[A001962(n+1)]]²+1)` -/
def P2353833479105642043.Spec : Prop :=
  ∀ n, P2353833479105642043.a n = A188257 (n + 1)

end A188257

/-! ## A188257.P14994284548832205233

`A187950((n+1)*A014675(n+2))`
-/

namespace A188257.P14994284548832205233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187950 ((n + 1 : ℤ) * A014675 (n + 2)).toNat

end

end A188257.P14994284548832205233

namespace A188257

/-- `A187950((n+1)*A014675(n+2))` -/
def P14994284548832205233.Spec : Prop :=
  ∀ n, P14994284548832205233.a n = A188257 (n + 1)

end A188257

/-! ## A188257.P7969149328055984606

`A187950(2*(n+1))`
-/

namespace A188257.P7969149328055984606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187950 (2 * (n + 1))

end

end A188257.P7969149328055984606

namespace A188257

/-- `A187950(2*(n+1))` -/
def P7969149328055984606.Spec : Prop :=
  ∀ n, P7969149328055984606.a n = A188257 (n + 1)

end A188257

/-!
# A188258: Positions of 0 in A188257; complement of A188259.

The programs for A188258, the canonical program `A188258.P3174497814932549514` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188258 has offset 1).

The definition of A188258 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188258.P3174497814932549514

`2*floor((n+1)/sqrt(5))+n+1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A188258

/-- `2*floor((n+1)/sqrt(5))+n+1` -/
def P3174497814932549514.Spec : Prop :=
  ∀ n, P3174497814932549514.a n = A188258 (n + 1)

theorem P3174497814932549514.correct : P3174497814932549514.Spec := by
  intro n
  simp only [A188258, Nat.add_sub_cancel]

end A188258

/-! ## A188258.P17795598600073190125

`comp[∪[A004976(n)-1, A004976(n)]]`
-/

namespace A188258.P17795598600073190125
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004976 n - 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004976 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A188258.P17795598600073190125

namespace A188258

/-- `comp[∪[A004976(n)-1, A004976(n)]]` -/
def P17795598600073190125.Spec : Prop :=
  ∀ n, (P17795598600073190125.a n : ℤ) = A188258 (n + 1)

end A188258

/-! ## A188258.P15795564110666469197

`∪[A188191(n+1), A327220(n+1)]`
-/

namespace A188258.P15795564110666469197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327220 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188258.P15795564110666469197

namespace A188258

/-- `∪[A188191(n+1), A327220(n+1)]` -/
def P15795564110666469197.Spec : Prop :=
  ∀ n, (P15795564110666469197.a n : ℤ) = A188258 (n + 1)

end A188258

/-! ## A188258.P17398551956761240419

`∪[A188220(n+1), A327220(n+1)]`
-/

namespace A188258.P17398551956761240419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188220 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327220 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188258.P17398551956761240419

namespace A188258

/-- `∪[A188220(n+1), A327220(n+1)]` -/
def P17398551956761240419.Spec : Prop :=
  ∀ n, (P17398551956761240419.a n : ℤ) = A188258 (n + 1)

end A188258

/-! ## A188258.P2691045600783372015

`∪[A188261(n+1), A327220(n+1)]`
-/

namespace A188258.P2691045600783372015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327220 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188258.P2691045600783372015

namespace A188258

/-- `∪[A188261(n+1), A327220(n+1)]` -/
def P2691045600783372015.Spec : Prop :=
  ∀ n, (P2691045600783372015.a n : ℤ) = A188258 (n + 1)

end A188258

/-! ## A188258.P4244411638407645242

`∪[A188290(n+1), A327220(n+1)]`
-/

namespace A188258.P4244411638407645242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188290 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327220 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188258.P4244411638407645242

namespace A188258

/-- `∪[A188290(n+1), A327220(n+1)]` -/
def P4244411638407645242.Spec : Prop :=
  ∀ n, (P4244411638407645242.a n : ℤ) = A188258 (n + 1)

end A188258

/-! ## A188258.P11796577052677709618

`∪[A189464(n+1), A327220(n+1)]`
-/

namespace A188258.P11796577052677709618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189464 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327220 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188258.P11796577052677709618

namespace A188258

/-- `∪[A189464(n+1), A327220(n+1)]` -/
def P11796577052677709618.Spec : Prop :=
  ∀ n, (P11796577052677709618.a n : ℤ) = A188258 (n + 1)

end A188258

/-! ## A188258.P14891743782806935241

`∪[A190443(n+1), A327220(n+1)]`
-/

namespace A188258.P14891743782806935241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327220 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188258.P14891743782806935241

namespace A188258

/-- `∪[A190443(n+1), A327220(n+1)]` -/
def P14891743782806935241.Spec : Prop :=
  ∀ n, (P14891743782806935241.a n : ℤ) = A188258 (n + 1)

end A188258

/-! ## A188258.P7863384419452107240

`∪[A190813(n+1), A327220(n+1)]`
-/

namespace A188258.P7863384419452107240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327220 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188258.P7863384419452107240

namespace A188258

/-- `∪[A190813(n+1), A327220(n+1)]` -/
def P7863384419452107240.Spec : Prop :=
  ∀ n, (P7863384419452107240.a n : ℤ) = A188258 (n + 1)

end A188258

/-! ## A188258.P9019091594449770661

`∪[A190887(n+1), A327220(n+1)]`
-/

namespace A188258.P9019091594449770661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327220 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188258.P9019091594449770661

namespace A188258

/-- `∪[A190887(n+1), A327220(n+1)]` -/
def P9019091594449770661.Spec : Prop :=
  ∀ n, (P9019091594449770661.a n : ℤ) = A188258 (n + 1)

end A188258

/-! ## A188258.P3894503367973204091

`∑[A014963(Δ[A188190(n+1)])]`
-/

namespace A188258.P3894503367973204091
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188190 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188258.P3894503367973204091

namespace A188258

/-- `∑[A014963(Δ[A188190(n+1)])]` -/
def P3894503367973204091.Spec : Prop :=
  ∀ n, P3894503367973204091.a n = A188258 (n + 1)

end A188258

/-! ## A188258.P7176475595171654485

`∑[A188188(Δ[A188190(n+1)])]`
-/

namespace A188258.P7176475595171654485
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188190 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188188 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188258.P7176475595171654485

namespace A188258

/-- `∑[A188188(Δ[A188190(n+1)])]` -/
def P7176475595171654485.Spec : Prop :=
  ∀ n, P7176475595171654485.a n = A188258 (n + 1)

end A188258

/-! ## A188258.P10340485825914035941

`∑[A188190(n+2)%A188190(n+1)]`
-/

namespace A188258.P10340485825914035941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188190 (n + 2)) (A188190 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188258.P10340485825914035941

namespace A188258

/-- `∑[A188190(n+2)%A188190(n+1)]` -/
def P10340485825914035941.Spec : Prop :=
  ∀ n, P10340485825914035941.a n = A188258 (n + 1)

end A188258

/-! ## A188258.P8585162790577100519

`A188222(comp[comp[A188222(n+1)]-n])`
-/

namespace A188258.P8585162790577100519
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188222 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188222 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A188258.P8585162790577100519

namespace A188258

/-- `A188222(comp[comp[A188222(n+1)]-n])` -/
def P8585162790577100519.Spec : Prop :=
  ∀ n, P8585162790577100519.a n = A188258 (n + 1)

end A188258

/-! ## A188258.P14341849005391869628

`A023444(A188190(n+2))`
-/

namespace A188258.P14341849005391869628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A188190 (n + 2)).toNat

end

end A188258.P14341849005391869628

namespace A188258

/-- `A023444(A188190(n+2))` -/
def P14341849005391869628.Spec : Prop :=
  ∀ n, P14341849005391869628.a n = A188258 (n + 1)

end A188258

/-! ## A188258.P4408394597137568589

`∑[or(1, A284749(2*(n+1)))]`
-/

namespace A188258.P4408394597137568589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A284749 (2 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188258.P4408394597137568589

namespace A188258

/-- `∑[or(1, A284749(2*(n+1)))]` -/
def P4408394597137568589.Spec : Prop :=
  ∀ n, P4408394597137568589.a n = A188258 (n + 1)

end A188258

/-! ## A188258.P6379556860654153979

`∑[A286746(2*n+1)+A284749(2*(n+1))]`
-/

namespace A188258.P6379556860654153979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286746 (2 * n + 1) + A284749 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188258.P6379556860654153979

namespace A188258

/-- `∑[A286746(2*n+1)+A284749(2*(n+1))]` -/
def P6379556860654153979.Spec : Prop :=
  ∀ n, P6379556860654153979.a n = A188258 (n + 1)

end A188258

/-! ## A188258.P15324635609612227724

`∑[A095345(Δ[A285681(2*(n+1))])]`
-/

namespace A188258.P15324635609612227724
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285681 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095345 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188258.P15324635609612227724

namespace A188258

/-- `∑[A095345(Δ[A285681(2*(n+1))])]` -/
def P15324635609612227724.Spec : Prop :=
  ∀ n, P15324635609612227724.a n = A188258 (n + 1)

end A188258

/-! ## A188258.P14544453916061371933

`record[A028242(n-A035614(n))]`
-/

namespace A188258.P14544453916061371933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 ((n : ℤ) - A035614 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188258.P14544453916061371933

namespace A188258

/-- `record[A028242(n-A035614(n))]` -/
def P14544453916061371933.Spec : Prop :=
  ∀ n, P14544453916061371933.a n = A188258 (n + 1)

end A188258

/-! ## A188258.P8129052291689160633

`record[A003849(n+1)*A028242(n)]`
-/

namespace A188258.P8129052291689160633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (n + 1) * A028242 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188258.P8129052291689160633

namespace A188258

/-- `record[A003849(n+1)*A028242(n)]` -/
def P8129052291689160633.Spec : Prop :=
  ∀ n, P8129052291689160633.a n = A188258 (n + 1)

end A188258

/-!
# A188259: Positions of 1 in A188257; complement of A188258.

The programs for A188259, the canonical program `A188259.P10728208177163434814` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188259 has offset 1).

The definition of A188259 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188259.P17742898101002651789

`floor(ϕ*∑[ϕ²-a(n-1)])` with `a(0)=2`
-/

namespace A188259.P17742898101002651789
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [2] fun n f1 =>
  Real.goldenRatio ^ 2 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (∑ j ∈ Finset.range (n + 1), f1 j)⌋

end

end A188259.P17742898101002651789

namespace A188259

/-- `floor(ϕ*∑[ϕ²-a(n-1)])` -/
def P17742898101002651789.Spec : Prop :=
  ∀ n, P17742898101002651789.a n = A188259 (n + 1)

end A188259

/-! ## A188259.P10971327502403686292

`floor(ϕ*∑[1-a(n-1)+ϕ])` with `a(0)=2`
-/

namespace A188259.P10971327502403686292
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [2] fun n f1 =>
  1 - f1 (n - 1) + Real.goldenRatio

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (∑ j ∈ Finset.range (n + 1), f1 j)⌋

end

end A188259.P10971327502403686292

namespace A188259

/-- `floor(ϕ*∑[1-a(n-1)+ϕ])` -/
def P10971327502403686292.Spec : Prop :=
  ∀ n, P10971327502403686292.a n = A188259 (n + 1)

end A188259

/-! ## A188259.P3388699697352870914

`floor(ϕ*∑[1-(a(n-1)-ϕ)])` with `a(0)=2`
-/

namespace A188259.P3388699697352870914
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [2] fun n f1 =>
  1 - (f1 (n - 1) - Real.goldenRatio)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (∑ j ∈ Finset.range (n + 1), f1 j)⌋

end

end A188259.P3388699697352870914

namespace A188259

/-- `floor(ϕ*∑[1-(a(n-1)-ϕ)])` -/
def P3388699697352870914.Spec : Prop :=
  ∀ n, P3388699697352870914.a n = A188259 (n + 1)

end A188259

/-! ## A188259.P10502873009239431139

`A194151(gcd(2, n)+n)+n+1`
-/

namespace A188259.P10502873009239431139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194151 (Nat.gcd 2 n + n) + (n + 1 : ℤ)

end

end A188259.P10502873009239431139

namespace A188259

/-- `A194151(gcd(2, n)+n)+n+1` -/
def P10502873009239431139.Spec : Prop :=
  ∀ n, P10502873009239431139.a n = A188259 (n + 1)

end A188259

/-! ## A188259.P10728208177163434814

`A198082(A008619(n))+n`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A188259

/-- `A198082(A008619(n))+n` -/
def P10728208177163434814.Spec : Prop :=
  ∀ n, P10728208177163434814.a n = A188259 (n + 1)

theorem P10728208177163434814.correct : P10728208177163434814.Spec := by
  intro n
  simp only [A188259, Nat.add_sub_cancel]

end A188259

/-! ## A188259.P13431645529034409443

`A198082(∑[A059841(n)])+n`
-/

namespace A188259.P13431645529034409443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198082 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + (n : ℤ)

end

end A188259.P13431645529034409443

namespace A188259

/-- `A198082(∑[A059841(n)])+n` -/
def P13431645529034409443.Spec : Prop :=
  ∀ n, P13431645529034409443.a n = A188259 (n + 1)

end A188259

/-! ## A188259.P5306642848625865391

`A198082(A004526(n)+1)+n`
-/

namespace A188259.P5306642848625865391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198082 (A004526 n + 1).toNat + (n : ℤ)

end

end A188259.P5306642848625865391

namespace A188259

/-- `A198082(A004526(n)+1)+n` -/
def P5306642848625865391.Spec : Prop :=
  ∀ n, P5306642848625865391.a n = A188259 (n + 1)

theorem P5306642848625865391.correct : P5306642848625865391.Spec := by
  intro n
  simp only [A188259, Nat.add_sub_cancel, A188259.P5306642848625865391.a, A188259.P10728208177163434814.a, A004526, A004526.P10084182425416171735.a, A008619, A008619.P16053834178911111118.a, A198082, A198082.P3564800651178384978.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A188259

/-! ## A188259.P3395376541284428604

`n+1+A022839(A110654(n+1))`
-/

namespace A188259.P3395376541284428604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A022839 (A110654 (n + 1)).toNat

end

end A188259.P3395376541284428604

namespace A188259

/-- `n+1+A022839(A110654(n+1))` -/
def P3395376541284428604.Spec : Prop :=
  ∀ n, P3395376541284428604.a n = A188259 (n + 1)

end A188259

/-! ## A188259.P6664329923635850042

`A007494(n+1)+A005206(or(1, n))`
-/

namespace A188259.P6664329923635850042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (n + 1) + A005206 (Nat.lor 1 n)

end

end A188259.P6664329923635850042

namespace A188259

/-- `A007494(n+1)+A005206(or(1, n))` -/
def P6664329923635850042.Spec : Prop :=
  ∀ n, P6664329923635850042.a n = A188259 (n + 1)

end A188259

/-! ## A188259.P14064258908371182821

`∪[A004976(n+1)-1, A004976(n+1)]`
-/

namespace A188259.P14064258908371182821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004976 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004976 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188259.P14064258908371182821

namespace A188259

/-- `∪[A004976(n+1)-1, A004976(n+1)]` -/
def P14064258908371182821.Spec : Prop :=
  ∀ n, (P14064258908371182821.a n : ℤ) = A188259 (n + 1)

end A188259

/-! ## A188259.P12691826209815301376

`A276854(A110654(n+1))+A110654(n)`
-/

namespace A188259.P12691826209815301376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276854 (A110654 (n + 1)).toNat + A110654 n

end

end A188259.P12691826209815301376

namespace A188259

/-- `A276854(A110654(n+1))+A110654(n)` -/
def P12691826209815301376.Spec : Prop :=
  ∀ n, P12691826209815301376.a n = A188259 (n + 1)

end A188259

/-! ## A188259.P10552186059903908425

`A188191(n+2)-2`
-/

namespace A188259.P10552186059903908425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188191 (n + 2) - 2

end

end A188259.P10552186059903908425

namespace A188259

/-- `A188191(n+2)-2` -/
def P10552186059903908425.Spec : Prop :=
  ∀ n, P10552186059903908425.a n = A188259 (n + 1)

end A188259

/-! ## A188259.P1068907018212924496

`A198082(Δ[A002620(n+1)])+n`
-/

namespace A188259.P1068907018212924496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198082 (f1 (n + 1) - f1 n).toNat + (n : ℤ)

end

end A188259.P1068907018212924496

namespace A188259

/-- `A198082(Δ[A002620(n+1)])+n` -/
def P1068907018212924496.Spec : Prop :=
  ∀ n, P1068907018212924496.a n = A188259 (n + 1)

end A188259

/-! ## A188259.P9789921199460329241

`filter[A327221(n+1), A339051(#)]`
-/

namespace A188259.P9789921199460329241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A339051 (f1 j).toNat = 1) n)

end

end A188259.P9789921199460329241

namespace A188259

/-- `filter[A327221(n+1), A339051(#)]` -/
def P9789921199460329241.Spec : Prop :=
  ∀ n, P9789921199460329241.a n = A188259 (n + 1)

end A188259

/-! ## A188259.P1750465797532160849

`∩[A188190(n+1), A327221(n+1)]`
-/

namespace A188259.P1750465797532160849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188259.P1750465797532160849

namespace A188259

/-- `∩[A188190(n+1), A327221(n+1)]` -/
def P1750465797532160849.Spec : Prop :=
  ∀ n, (P1750465797532160849.a n : ℤ) = A188259 (n + 1)

end A188259

/-! ## A188259.P1597619465247137242

`A188262(∑[char[2*n]]+n)+1`
-/

namespace A188259.P1597619465247137242
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188262 (∑ j ∈ Finset.range (n + 1), f1 j + n) + 1

end

end A188259.P1597619465247137242

namespace A188259

/-- `A188262(∑[char[2*n]]+n)+1` -/
def P1597619465247137242.Spec : Prop :=
  ∀ n, P1597619465247137242.a n = A188259 (n + 1)

end A188259

/-! ## A188259.P16672221754552698472

`A188262(comp[3*n]+1)`
-/

namespace A188259.P16672221754552698472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188262 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A188259.P16672221754552698472

namespace A188259

/-- `A188262(comp[3*n]+1)` -/
def P16672221754552698472.Spec : Prop :=
  ∀ n, P16672221754552698472.a n = A188259 (n + 1)

end A188259

/-! ## A188259.P11323645092314250930

`∩[A188262(n+1), A327221(n+1)]`
-/

namespace A188259.P11323645092314250930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188259.P11323645092314250930

namespace A188259

/-- `∩[A188262(n+1), A327221(n+1)]` -/
def P11323645092314250930.Spec : Prop :=
  ∀ n, (P11323645092314250930.a n : ℤ) = A188259 (n + 1)

end A188259

/-! ## A188259.P18241106643319386890

`∩[A188188(n+1), A327221(n+1)]`
-/

namespace A188259.P18241106643319386890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188259.P18241106643319386890

namespace A188259

/-- `∩[A188188(n+1), A327221(n+1)]` -/
def P18241106643319386890.Spec : Prop :=
  ∀ n, (P18241106643319386890.a n : ℤ) = A188259 (n + 1)

end A188259

/-!
# A188260: [nr+kr]-[nr]-[kr], where r=sqrt(5), k=3, [ ]=floor.

The programs for A188260, the canonical program `A188260.P4642439501067376208` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188260 has offset 1).

The definition of A188260 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188260.P3338873594100883002

`char[A188262(n+1)-1]`
-/

namespace A188260.P3338873594100883002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188262 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188260.P3338873594100883002

namespace A188260

/-- `char[A188262(n+1)-1]` -/
def P3338873594100883002.Spec : Prop :=
  ∀ n, (P3338873594100883002.a n : ℤ) = A188260 (n + 1)

end A188260

/-! ## A188260.P2027917519148249310

`char[A188218(n+1)-4]`
-/

namespace A188260.P2027917519148249310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188218 (n + 1) - 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188260.P2027917519148249310

namespace A188260

/-- `char[A188218(n+1)-4]` -/
def P2027917519148249310.Spec : Prop :=
  ∀ n, (P2027917519148249310.a n : ℤ) = A188260 (n + 1)

end A188260

/-! ## A188260.P11390691305846474848

`char[comp[A188261(n+1)-1]]`
-/

namespace A188260.P11390691305846474848
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188261 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A188260.P11390691305846474848

namespace A188260

/-- `char[comp[A188261(n+1)-1]]` -/
def P11390691305846474848.Spec : Prop :=
  ∀ n, (P11390691305846474848.a n : ℤ) = A188260 (n + 1)

end A188260

/-! ## A188260.P6039013653334884936

`char[A001961(A008620(n))+n]`
-/

namespace A188260.P6039013653334884936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001961 (A008620 n).toNat + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188260.P6039013653334884936

namespace A188260

/-- `char[A001961(A008620(n))+n]` -/
def P6039013653334884936.Spec : Prop :=
  ∀ n, (P6039013653334884936.a n : ℤ) = A188260 (n + 1)

end A188260

/-! ## A188260.P4642439501067376208

`A339052(A339052(n)+2+n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A188260

/-- `A339052(A339052(n)+2+n)` -/
def P4642439501067376208.Spec : Prop :=
  ∀ n, P4642439501067376208.a n = A188260 (n + 1)

theorem P4642439501067376208.correct : P4642439501067376208.Spec := by
  intro n
  simp only [A188260, Nat.add_sub_cancel]

end A188260

/-! ## A188260.P17554171212556344083

`A188257(2-A188257(n+1)+n)`
-/

namespace A188260.P17554171212556344083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188257 (2 - A188257 (n + 1) + (n : ℤ)).toNat

end

end A188260.P17554171212556344083

namespace A188260

/-- `A188257(2-A188257(n+1)+n)` -/
def P17554171212556344083.Spec : Prop :=
  ∀ n, P17554171212556344083.a n = A188260 (n + 1)

end A188260

/-! ## A188260.P1380050449743097297

`A188257(A188257(n+2)+n+1)`
-/

namespace A188260.P1380050449743097297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188257 (A188257 (n + 2) + (n + 1 : ℤ)).toNat

end

end A188260.P1380050449743097297

namespace A188260

/-- `A188257(A188257(n+2)+n+1)` -/
def P1380050449743097297.Spec : Prop :=
  ∀ n, P1380050449743097297.a n = A188260 (n + 1)

end A188260

/-! ## A188260.P17388129604437874513

`A327219(char[A327219(n)+n]+n+1)`
-/

namespace A188260.P17388129604437874513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327219 n + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327219 ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + (n + 1))

end

end A188260.P17388129604437874513

namespace A188260

/-- `A327219(char[A327219(n)+n]+n+1)` -/
def P17388129604437874513.Spec : Prop :=
  ∀ n, P17388129604437874513.a n = A188260 (n + 1)

end A188260

/-! ## A188260.P9072209672894598397

`1-char[n-A189480(n+1)]`
-/

namespace A188260.P9072209672894598397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A189480 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A188260.P9072209672894598397

namespace A188260

/-- `1-char[n-A189480(n+1)]` -/
def P9072209672894598397.Spec : Prop :=
  ∀ n, P9072209672894598397.a n = A188260 (n + 1)

end A188260

/-! ## A188260.P3858418333471049397

`A188192(n+4)`
-/

namespace A188260.P3858418333471049397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188192 (n + 4)

end

end A188260.P3858418333471049397

namespace A188260

/-- `A188192(n+4)` -/
def P3858418333471049397.Spec : Prop :=
  ∀ n, P3858418333471049397.a n = A188260 (n + 1)

end A188260

/-! ## A188260.P1563561742050046218

`∑[A188187(n+4)-A188187(n+1)]`
-/

namespace A188260.P1563561742050046218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188187 (n + 4) - A188187 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188260.P1563561742050046218

namespace A188260

/-- `∑[A188187(n+4)-A188187(n+1)]` -/
def P1563561742050046218.Spec : Prop :=
  ∀ n, P1563561742050046218.a n = A188260 (n + 1)

end A188260

/-! ## A188260.P8261137044014280232

`∑[A276866(n+4)-A276866(n+1)]`
-/

namespace A188260.P8261137044014280232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276866 (n + 4) - A276866 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188260.P8261137044014280232

namespace A188260

/-- `∑[A276866(n+4)-A276866(n+1)]` -/
def P8261137044014280232.Spec : Prop :=
  ∀ n, P8261137044014280232.a n = A188260 (n + 1)

end A188260

/-! ## A188260.P17709696901043439202

`A078768(A078796(n+4)-A078796(n+1))`
-/

namespace A188260.P17709696901043439202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078768 (A078796 (n + 4) - A078796 (n + 1)).toNat

end

end A188260.P17709696901043439202

namespace A188260

/-- `A078768(A078796(n+4)-A078796(n+1))` -/
def P17709696901043439202.Spec : Prop :=
  ∀ n, P17709696901043439202.a n = A188260 (n + 1)

end A188260

/-! ## A188260.P15185179722621101794

`A261699(A022839(n+4)-A022839(n+1))`
-/

namespace A188260.P15185179722621101794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261699 (A022839 (n + 4) - A022839 (n + 1)).toNat

end

end A188260.P15185179722621101794

namespace A188260

/-- `A261699(A022839(n+4)-A022839(n+1))` -/
def P15185179722621101794.Spec : Prop :=
  ∀ n, P15185179722621101794.a n = A188260 (n + 1)

end A188260

/-! ## A188260.P4030234940756536388

`A022902(A214990(n+4)-A214990(n+1)+1)`
-/

namespace A188260.P4030234940756536388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022902 (A214990 (n + 4) - A214990 (n + 1) + 1).toNat

end

end A188260.P4030234940756536388

namespace A188260

/-- `A022902(A214990(n+4)-A214990(n+1)+1)` -/
def P4030234940756536388.Spec : Prop :=
  ∀ n, P4030234940756536388.a n = A188260 (n + 1)

end A188260

/-! ## A188260.P10060389189450332389

`A300763(n+4)-A300763(n+1)`
-/

namespace A188260.P10060389189450332389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300763 (n + 4) - A300763 (n + 1)

end

end A188260.P10060389189450332389

namespace A188260

/-- `A300763(n+4)-A300763(n+1)` -/
def P10060389189450332389.Spec : Prop :=
  ∀ n, P10060389189450332389.a n = A188260 (n + 1)

end A188260

/-! ## A188260.P16461350870105407071

`A187948(2*(n+1))`
-/

namespace A188260.P16461350870105407071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187948 (2 * (n + 1))

end

end A188260.P16461350870105407071

namespace A188260

/-- `A187948(2*(n+1))` -/
def P16461350870105407071.Spec : Prop :=
  ∀ n, P16461350870105407071.a n = A188260 (n + 1)

end A188260

/-! ## A188260.P17249216456808149785

`char[n+1-3*A327219(n)]`
-/

namespace A188260.P17249216456808149785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - 3 * A327219 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188260.P17249216456808149785

namespace A188260

/-- `char[n+1-3*A327219(n)]` -/
def P17249216456808149785.Spec : Prop :=
  ∀ n, (P17249216456808149785.a n : ℤ) = A188260 (n + 1)

end A188260

/-! ## A188260.P12424562510477423517

`A188221(n+3)+A187950(2*(n+1))`
-/

namespace A188260.P12424562510477423517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188221 (n + 3) + A187950 (2 * (n + 1))

end

end A188260.P12424562510477423517

namespace A188260

/-- `A188221(n+3)+A187950(2*(n+1))` -/
def P12424562510477423517.Spec : Prop :=
  ∀ n, P12424562510477423517.a n = A188260 (n + 1)

end A188260

/-! ## A188260.P15362876153557533631

`A005614(A194584(2*n+1)+2*n+1)`
-/

namespace A188260.P15362876153557533631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 (A194584 (2 * n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A188260.P15362876153557533631

namespace A188260

/-- `A005614(A194584(2*n+1)+2*n+1)` -/
def P15362876153557533631.Spec : Prop :=
  ∀ n, P15362876153557533631.a n = A188260 (n + 1)

end A188260

/-!
# A188261: Positions of 0 in A188260; complement of A188262.

The programs for A188261, the canonical program `A188261.P2245808689908223847` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188261 has offset 1).

The definition of A188261 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188261.P2245808689908223847

`∑[(3-Δ[A195122(n)])²]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A188261

/-- `∑[(3-Δ[A195122(n)])²]` -/
def P2245808689908223847.Spec : Prop :=
  ∀ n, P2245808689908223847.a n = A188261 (n + 1)

theorem P2245808689908223847.correct : P2245808689908223847.Spec := by
  intro n
  simp only [A188261, Nat.add_sub_cancel]

end A188261

/-! ## A188261.P13415942135021523967

`∑[(char[A001961(n+1)]+1)²]`
-/

namespace A188261.P13415942135021523967
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001961 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188261.P13415942135021523967

namespace A188261

/-- `∑[(char[A001961(n+1)]+1)²]` -/
def P13415942135021523967.Spec : Prop :=
  ∀ n, (P13415942135021523967.a n : ℤ) = A188261 (n + 1)

end A188261

/-! ## A188261.P17097142029985507555

`∑[A000292(Δ[floor(ϕ*n/2)]+1)]`
-/

namespace A188261.P17097142029985507555
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * ((n : ℚ) / 2 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (f2 (n + 1) - f2 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188261.P17097142029985507555

namespace A188261

/-- `∑[A000292(Δ[floor(ϕ*n/2)]+1)]` -/
def P17097142029985507555.Spec : Prop :=
  ∀ n, P17097142029985507555.a n = A188261 (n + 1)

end A188261

/-! ## A188261.P12103570842527323961

`∑[(char[A035337(n)%2+n]+1)²]`
-/

namespace A188261.P12103570842527323961
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035337 n) 2 + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188261.P12103570842527323961

namespace A188261

/-- `∑[(char[A035337(n)%2+n]+1)²]` -/
def P12103570842527323961.Spec : Prop :=
  ∀ n, (P12103570842527323961.a n : ℤ) = A188261 (n + 1)

end A188261

/-! ## A188261.P12389446274144548278

`∑[A000796(Δ[A195167(n)])]`
-/

namespace A188261.P12389446274144548278
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195167 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((f2 (n + 1) - f2 n).toNat + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188261.P12389446274144548278

namespace A188261

/-- `∑[A000796(Δ[A195167(n)])]` -/
def P12389446274144548278.Spec : Prop :=
  ∀ n, P12389446274144548278.a n = A188261 (n + 1)

end A188261

/-! ## A188261.P11631723357855405145

`∑[A002193(Δ[A195122(n)])]`
-/

namespace A188261.P11631723357855405145
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195122 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002193 ((f2 (n + 1) - f2 n).toNat + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188261.P11631723357855405145

namespace A188261

/-- `∑[A002193(Δ[A195122(n)])]` -/
def P11631723357855405145.Spec : Prop :=
  ∀ n, P11631723357855405145.a n = A188261 (n + 1)

end A188261

/-! ## A188261.P10746692214052655827

`∑[A004597(Δ[A195167(n)])]`
-/

namespace A188261.P10746692214052655827
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195167 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004597 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188261.P10746692214052655827

namespace A188261

/-- `∑[A004597(Δ[A195167(n)])]` -/
def P10746692214052655827.Spec : Prop :=
  ∀ n, P10746692214052655827.a n = A188261 (n + 1)

end A188261

/-! ## A188261.P8743457592904245285

`∑[A006370(Δ[A195122(n)])]`
-/

namespace A188261.P8743457592904245285
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195122 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188261.P8743457592904245285

namespace A188261

/-- `∑[A006370(Δ[A195122(n)])]` -/
def P8743457592904245285.Spec : Prop :=
  ∀ n, P8743457592904245285.a n = A188261 (n + 1)

end A188261

/-! ## A188261.P7356191083295831820

`∑[A010158(Δ[A195122(n)])]`
-/

namespace A188261.P7356191083295831820
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195122 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010158 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188261.P7356191083295831820

namespace A188261

/-- `∑[A010158(Δ[A195122(n)])]` -/
def P7356191083295831820.Spec : Prop :=
  ∀ n, P7356191083295831820.a n = A188261 (n + 1)

end A188261

/-! ## A188261.P867639442324944282

`∑[A023401(Δ[A195167(n)])]`
-/

namespace A188261.P867639442324944282
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195167 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023401 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188261.P867639442324944282

namespace A188261

/-- `∑[A023401(Δ[A195167(n)])]` -/
def P867639442324944282.Spec : Prop :=
  ∀ n, P867639442324944282.a n = A188261 (n + 1)

end A188261

/-! ## A188261.P8456607895961460855

`∑[A040005(Δ[A195167(n)])]`
-/

namespace A188261.P8456607895961460855
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195167 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040005 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188261.P8456607895961460855

namespace A188261

/-- `∑[A040005(Δ[A195167(n)])]` -/
def P8456607895961460855.Spec : Prop :=
  ∀ n, P8456607895961460855.a n = A188261 (n + 1)

end A188261

/-! ## A188261.P9728889418422606559

`∑[A053707(Δ[A195167(n)])]`
-/

namespace A188261.P9728889418422606559
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195167 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053707 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188261.P9728889418422606559

namespace A188261

/-- `∑[A053707(Δ[A195167(n)])]` -/
def P9728889418422606559.Spec : Prop :=
  ∀ n, P9728889418422606559.a n = A188261 (n + 1)

end A188261

/-! ## A188261.P4831844761923181224

`A188217(n+2)-3`
-/

namespace A188261.P4831844761923181224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188217 (n + 2) - 3

end

end A188261.P4831844761923181224

namespace A188261

/-- `A188217(n+2)-3` -/
def P4831844761923181224.Spec : Prop :=
  ∀ n, P4831844761923181224.a n = A188261 (n + 1)

end A188261

/-! ## A188261.P3773971805792833574

`∑[A188188(Δ[A188217(n+1)])]`
-/

namespace A188261.P3773971805792833574
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188217 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188188 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188261.P3773971805792833574

namespace A188261

/-- `∑[A188188(Δ[A188217(n+1)])]` -/
def P3773971805792833574.Spec : Prop :=
  ∀ n, P3773971805792833574.a n = A188261 (n + 1)

end A188261

/-! ## A188261.P1198447727583107988

`∑[A188216(Δ[A188217(n+1)])]`
-/

namespace A188261.P1198447727583107988
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188217 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188216 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188261.P1198447727583107988

namespace A188261

/-- `∑[A188216(Δ[A188217(n+1)])]` -/
def P1198447727583107988.Spec : Prop :=
  ∀ n, P1198447727583107988.a n = A188261 (n + 1)

end A188261

/-! ## A188261.P2968728280988665523

`A168233(A000201(n+1))+n`
-/

namespace A188261.P2968728280988665523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168233 (A000201 (n + 1)).toNat + (n : ℤ)

end

end A188261.P2968728280988665523

namespace A188261

/-- `A168233(A000201(n+1))+n` -/
def P2968728280988665523.Spec : Prop :=
  ∀ n, P2968728280988665523.a n = A188261 (n + 1)

end A188261

/-! ## A188261.P14312859672215033252

`A188258(A108598(n+1))`
-/

namespace A188261.P14312859672215033252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188258 (A108598 (n + 1)).toNat

end

end A188261.P14312859672215033252

namespace A188261

/-- `A188258(A108598(n+1))` -/
def P14312859672215033252.Spec : Prop :=
  ∀ n, P14312859672215033252.a n = A188261 (n + 1)

end A188261

/-! ## A188261.P13986233310458576139

`∩[A188258(n+1)-1, A188258(n+1)]`
-/

namespace A188261.P13986233310458576139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188258 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188261.P13986233310458576139

namespace A188261

/-- `∩[A188258(n+1)-1, A188258(n+1)]` -/
def P13986233310458576139.Spec : Prop :=
  ∀ n, (P13986233310458576139.a n : ℤ) = A188261 (n + 1)

end A188261

/-! ## A188261.P8743405091539855022

`∑[A195097(Δ[A195126(2*n)])²]`
-/

namespace A188261.P8743405091539855022
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195126 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195097 (f2 (n + 1) - f2 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188261.P8743405091539855022

namespace A188261

/-- `∑[A195097(Δ[A195126(2*n)])²]` -/
def P8743405091539855022.Spec : Prop :=
  ∀ n, P8743405091539855022.a n = A188261 (n + 1)

end A188261

/-!
# A188262: Positions of 1 in A188260; complement of A188261.

The programs for A188262, the canonical program `A188262.P9598590524912280923` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188262 has offset 1).

The definition of A188262 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188262.P16888465757254501362

`floor(∑[sqrt(gcd(5, n%3))])`
-/

namespace A188262.P16888465757254501362
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.gcd 5 (n % 3) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A188262.P16888465757254501362

namespace A188262

/-- `floor(∑[sqrt(gcd(5, n%3))])` -/
def P16888465757254501362.Spec : Prop :=
  ∀ n, P16888465757254501362.a n = A188262 (n + 1)

end A188262

/-! ## A188262.P12238267037598457455

`floor(∑[sqrt(2*gcd(3, n)-1)])`
-/

namespace A188262.P12238267037598457455
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((2 * Nat.gcd 3 n : ℤ) - 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A188262.P12238267037598457455

namespace A188262

/-- `floor(∑[sqrt(2*gcd(3, n)-1)])` -/
def P12238267037598457455.Spec : Prop :=
  ∀ n, P12238267037598457455.a n = A188262 (n + 1)

end A188262

/-! ## A188262.P5896113217392135577

`comp[A188261(n+1)-1]+1`
-/

namespace A188262.P5896113217392135577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188261 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A188262.P5896113217392135577

namespace A188262

/-- `comp[A188261(n+1)-1]+1` -/
def P5896113217392135577.Spec : Prop :=
  ∀ n, (P5896113217392135577.a n : ℤ) = A188262 (n + 1)

end A188262

/-! ## A188262.P9598590524912280923

`A005206(Δ[ceil(n²/3)])+n+1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A188262

/-- `A005206(Δ[ceil(n²/3)])+n+1` -/
def P9598590524912280923.Spec : Prop :=
  ∀ n, P9598590524912280923.a n = A188262 (n + 1)

theorem P9598590524912280923.correct : P9598590524912280923.Spec := by
  intro n
  simp only [A188262, Nat.add_sub_cancel]

end A188262

/-! ## A188262.P5765784995009872636

`A001961(A008620(n))+1+n`
-/

namespace A188262.P5765784995009872636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001961 (A008620 n).toNat + 1 + (n : ℤ)

end

end A188262.P5765784995009872636

namespace A188262

/-- `A001961(A008620(n))+1+n` -/
def P5765784995009872636.Spec : Prop :=
  ∀ n, P5765784995009872636.a n = A188262 (n + 1)

end A188262

/-! ## A188262.P4733053516584615503

`A019446(2*A008620(n))+n`
-/

namespace A188262.P4733053516584615503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019446 (2 * A008620 n).toNat + (n : ℤ)

end

end A188262.P4733053516584615503

namespace A188262

/-- `A019446(2*A008620(n))+n` -/
def P4733053516584615503.Spec : Prop :=
  ∀ n, P4733053516584615503.a n = A188262 (n + 1)

end A188262

/-! ## A188262.P13081527372679880347

`∪[A188259(n+1)-1, A188259(n+1)]`
-/

namespace A188262.P13081527372679880347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188259 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188262.P13081527372679880347

namespace A188262

/-- `∪[A188259(n+1)-1, A188259(n+1)]` -/
def P13081527372679880347.Spec : Prop :=
  ∀ n, (P13081527372679880347.a n : ℤ) = A188262 (n + 1)

end A188262

/-! ## A188262.P9993440324409471122

`A019446(A004277(A008620(n)))+n`
-/

namespace A188262.P9993440324409471122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019446 (A004277 (A008620 n).toNat).toNat + (n : ℤ)

end

end A188262.P9993440324409471122

namespace A188262

/-- `A019446(A004277(A008620(n)))+n` -/
def P9993440324409471122.Spec : Prop :=
  ∀ n, P9993440324409471122.a n = A188262 (n + 1)

end A188262

/-! ## A188262.P2993808552878137444

`A188218(n+3)-3`
-/

namespace A188262.P2993808552878137444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188218 (n + 3) - 3

end

end A188262.P2993808552878137444

namespace A188262

/-- `A188218(n+3)-3` -/
def P2993808552878137444.Spec : Prop :=
  ∀ n, P2993808552878137444.a n = A188262 (n + 1)

end A188262

/-! ## A188262.P17665266090374316512

`eq[1, A188260(n+1)]+1`
-/

namespace A188262.P17665266090374316512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188260 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A188262.P17665266090374316512

namespace A188262

/-- `eq[1, A188260(n+1)]+1` -/
def P17665266090374316512.Spec : Prop :=
  ∀ n, (P17665266090374316512.a n : ℤ) = A188262 (n + 1)

end A188262

/-! ## A188262.P7049005042461463037

`eq[1, A188260(n^floor(atan(n)))]`
-/

namespace A188262.P7049005042461463037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188260 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A188262.P7049005042461463037

namespace A188262

/-- `eq[1, A188260(n^floor(atan(n)))]` -/
def P7049005042461463037.Spec : Prop :=
  ∀ n, (P7049005042461463037.a n : ℤ) = A188262 (n + 1)

end A188262

/-! ## A188262.P418398444797099068

`eq[1, A188192(n+3)]`
-/

namespace A188262.P418398444797099068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188192 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A188262.P418398444797099068

namespace A188262

/-- `eq[1, A188192(n+3)]` -/
def P418398444797099068.Spec : Prop :=
  ∀ n, (P418398444797099068.a n : ℤ) = A188262 (n + 1)

end A188262

/-! ## A188262.P127265781159954379

`eq[A078588(n+3), A078588(n)]`
-/

namespace A188262.P127265781159954379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078588 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078588 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188262.P127265781159954379

namespace A188262

/-- `eq[A078588(n+3), A078588(n)]` -/
def P127265781159954379.Spec : Prop :=
  ∀ n, (P127265781159954379.a n : ℤ) = A188262 (n + 1)

end A188262

/-! ## A188262.P724770871293612178

`n+1+A005206(A008611(2*n))`
-/

namespace A188262.P724770871293612178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A005206 (A008611 (2 * n)).toNat

end

end A188262.P724770871293612178

namespace A188262

/-- `n+1+A005206(A008611(2*n))` -/
def P724770871293612178.Spec : Prop :=
  ∀ n, P724770871293612178.a n = A188262 (n + 1)

end A188262

/-! ## A188262.P18332328490752968166

`record[A028242(n)+A005206(A008611(n))]`
-/

namespace A188262.P18332328490752968166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n + A005206 (A008611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188262.P18332328490752968166

namespace A188262

/-- `record[A028242(n)+A005206(A008611(n))]` -/
def P18332328490752968166.Spec : Prop :=
  ∀ n, P18332328490752968166.a n = A188262 (n + 1)

end A188262

/-! ## A188262.P15073054789196760832

`lt[A022420(2*n+1), A022419(A022418(2*n))]`
-/

namespace A188262.P15073054789196760832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022420 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022419 (A022418 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A188262.P15073054789196760832

namespace A188262

/-- `lt[A022420(2*n+1), A022419(A022418(2*n))]` -/
def P15073054789196760832.Spec : Prop :=
  ∀ n, (P15073054789196760832.a n : ℤ) = A188262 (n + 1)

end A188262

/-! ## A188262.P16806882730830272151

`lt[A329130(2*n), A189663(A016777(2*n))]`
-/

namespace A188262.P16806882730830272151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329130 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189663 (A016777 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A188262.P16806882730830272151

namespace A188262

/-- `lt[A329130(2*n), A189663(A016777(2*n))]` -/
def P16806882730830272151.Spec : Prop :=
  ∀ n, (P16806882730830272151.a n : ℤ) = A188262 (n + 1)

end A188262

/-!
# A188263: Odd abundant numbers whose abundancy is closer to 2 than any smaller odd abundant number.

The programs for A188263, there is no canonical definition to state claims against.
-/

/-! ## A188263.P17097346954850019661

`filter[A087415(n+3), A188967(#)]`
-/

namespace A188263.P17097346954850019661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087415 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188967 (f1 j).toNat = 1) n)

end

end A188263.P17097346954850019661

/-!
# A188264: Numbers m that are divisible by the product of the factorials of their digits in base 10.

The programs for A188264, there is no canonical definition to state claims against.
-/

/-! ## A188264.P1996585063299026030

`eq[0, A028310(n)%A066459(A000038(n)+n)]`
-/

namespace A188264.P1996585063299026030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028310 n) (A066459 (A000038 n + (n : ℤ)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A188264.P1996585063299026030

/-! ## A188264.P7241922250375201676

`eq[n%A066459(n), A000007(n)]`
-/

namespace A188264.P7241922250375201676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A066459 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188264.P7241922250375201676

/-! ## A188264.P13846903916766946243

`lt[A019584(A007953(n)), A275413(n)]`
-/

namespace A188264.P13846903916766946243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019584 (A007953 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275413 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A188264.P13846903916766946243

/-! ## A188264.P3880878838546050811

`lt[A051801(n), A317713(A078840(n))]`
-/

namespace A188264.P3880878838546050811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317713 (A078840 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A188264.P3880878838546050811

/-! ## A188264.P14045591946298503370

`∩[A256437(n+1), A361233(n+1)]`
-/

namespace A188264.P14045591946298503370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361233 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188264.P14045591946298503370

/-!
# A188265: Positions of 1 in A188398; complement of A188399.

The programs for A188265, the canonical program `A188265.P1760849739698113654` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188265 has offset 1).

The definition of A188265 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188265.P1760849739698113654

`∪[A120753(n+1), A187975(n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A188265

/-- `∪[A120753(n+1), A187975(n+1)]` -/
def P1760849739698113654.Spec : Prop :=
  ∀ n, (P1760849739698113654.a n : ℤ) = A188265 (n + 1)

theorem P1760849739698113654.correct : P1760849739698113654.Spec := by
  intro n
  simp only [A188265, Nat.add_sub_cancel]

end A188265

/-! ## A188265.P8526742517368274108

`A188323(n+3)-5`
-/

namespace A188265.P8526742517368274108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188323 (n + 3) - 5

end

end A188265.P8526742517368274108

namespace A188265

/-- `A188323(n+3)-5` -/
def P8526742517368274108.Spec : Prop :=
  ∀ n, P8526742517368274108.a n = A188265 (n + 1)

end A188265

/-! ## A188265.P1294638657969090571

`A001951(A187970(n+1))`
-/

namespace A188265.P1294638657969090571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (A187970 (n + 1)).toNat

end

end A188265.P1294638657969090571

namespace A188265

/-- `A001951(A187970(n+1))` -/
def P1294638657969090571.Spec : Prop :=
  ∀ n, P1294638657969090571.a n = A188265 (n + 1)

end A188265

/-! ## A188265.P986441935562681028

`A001951(A286991(n+1)-(n+1))`
-/

namespace A188265.P986441935562681028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (A286991 (n + 1) - (n + 1 : ℤ)).toNat

end

end A188265.P986441935562681028

namespace A188265

/-- `A001951(A286991(n+1)-(n+1))` -/
def P986441935562681028.Spec : Prop :=
  ∀ n, P986441935562681028.a n = A188265 (n + 1)

end A188265

/-! ## A188265.P15205317906383515285

`eq[A188321(n+5), A299893(A051904(3*n+2))]`
-/

namespace A188265.P15205317906383515285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188321 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299893 (A051904 (3 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188265.P15205317906383515285

namespace A188265

/-- `eq[A188321(n+5), A299893(A051904(3*n+2))]` -/
def P15205317906383515285.Spec : Prop :=
  ∀ n, (P15205317906383515285.a n : ℤ) = A188265 (n + 1)

end A188265

/-!
# A188266: Coefficient of x^n in the series 1/F(-1/2,1/2;1;16x), where F(a1,a2;b;x) is the hypergeometric series.

The programs for A188266, there is no canonical definition to state claims against.
-/

/-! ## A188266.P13714991845597185408

`A229646(n)+A008615(A012238(n))`
-/

namespace A188266.P13714991845597185408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229646 n + A008615 (A012238 n).toNat

end

end A188266.P13714991845597185408

/-!
# A188267: Coefficient of x^n in the series 1/(1-x*F(1/2,1/2;1;16x)), where F(a1,a2;b;x) is the hypergeometric series.

The programs for A188267, there is no canonical definition to state claims against.
-/

/-! ## A188267.P6220932946128365973

`or(1, A163389(n!))`
-/

namespace A188267.P6220932946128365973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A163389 (Nat.factorial n))

end

end A188267.P6220932946128365973

/-!
# A188270: Number of nondecreasing strings of numbers (x(i), i=1..n) in -2..2 with sum x(i)^3 equal to 0.

The programs for A188270, the canonical program `A188270.P13484470605752948616` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188270 has offset 1).

The definition of A188270 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188270.P13484470605752948616

`∑[A008809(n+1)]+1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A188270

/-- `∑[A008809(n+1)]+1` -/
def P13484470605752948616.Spec : Prop :=
  ∀ n, P13484470605752948616.a n = A188270 (n + 1)

theorem P13484470605752948616.correct : P13484470605752948616.Spec := by
  intro n
  simp only [A188270, Nat.add_sub_cancel]

end A188270

/-! ## A188270.P17155692305594845554

`∑[A008809(A028242(A004277(n)))]`
-/

namespace A188270.P17155692305594845554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008809 (A028242 (A004277 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188270.P17155692305594845554

namespace A188270

/-- `∑[A008809(A028242(A004277(n)))]` -/
def P17155692305594845554.Spec : Prop :=
  ∀ n, P17155692305594845554.a n = A188270 (n + 1)

end A188270

/-! ## A188270.P16243876547495191958

`∑[A008809(A004526(A103517(n)))]`
-/

namespace A188270.P16243876547495191958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008809 (A004526 (A103517 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188270.P16243876547495191958

namespace A188270

/-- `∑[A008809(A004526(A103517(n)))]` -/
def P16243876547495191958.Spec : Prop :=
  ∀ n, P16243876547495191958.a n = A188270 (n + 1)

end A188270

/-! ## A188270.P10451422448453683281

`∑[A008809(A008611(A008486(n)))]`
-/

namespace A188270.P10451422448453683281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008809 (A008611 (A008486 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188270.P10451422448453683281

namespace A188270

/-- `∑[A008809(A008611(A008486(n)))]` -/
def P10451422448453683281.Spec : Prop :=
  ∀ n, P10451422448453683281.a n = A188270 (n + 1)

end A188270

/-! ## A188270.P2445552367922024386

`∑[A008809(A008624(A008574(n)))]`
-/

namespace A188270.P2445552367922024386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008809 (A008624 (A008574 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188270.P2445552367922024386

namespace A188270

/-- `∑[A008809(A008624(A008574(n)))]` -/
def P2445552367922024386.Spec : Prop :=
  ∀ n, P2445552367922024386.a n = A188270 (n + 1)

end A188270

/-! ## A188270.P16954102697464310762

`∑[A008809(A103221(A008458(n)))]`
-/

namespace A188270.P16954102697464310762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008809 (A103221 (A008458 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188270.P16954102697464310762

namespace A188270

/-- `∑[A008809(A103221(A008458(n)))]` -/
def P16954102697464310762.Spec : Prop :=
  ∀ n, P16954102697464310762.a n = A188270 (n + 1)

end A188270

/-! ## A188270.P13538418865097799972

`∑[A008809(A003056(A055998(n)))]`
-/

namespace A188270.P13538418865097799972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008809 (A003056 (A055998 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188270.P13538418865097799972

namespace A188270

/-- `∑[A008809(A003056(A055998(n)))]` -/
def P13538418865097799972.Spec : Prop :=
  ∀ n, P13538418865097799972.a n = A188270 (n + 1)

end A188270

/-!
# A188271: Number of nondecreasing strings of numbers x(i=1..n) in -3..3 with sum x(i)^3 equal to 0.

The programs for A188271, there is no canonical definition to state claims against.
-/

/-! ## A188271.P17766188025628944101

`A188277(∑[n+3]+1)`
-/

namespace A188271.P17766188025628944101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188277 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A188271.P17766188025628944101

/-! ## A188271.P5844311737063920629

`or(char[7], A188277(A034856(n+2)))`
-/

namespace A188271.P5844311737063920629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A188277 (A034856 (n + 2)).toNat)

end

end A188271.P5844311737063920629

/-! ## A188271.P15770796971971181891

`A007318(C(n, 2))*A188277(A034856(n+2))`
-/

namespace A188271.P15770796971971181891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A188277 (A034856 (n + 2)).toNat

end

end A188271.P15770796971971181891

/-!
# A188272: Number of nondecreasing strings of numbers x(i=1..n) in -4..4 with sum x(i)^3 equal to 0.

The programs for A188272, there is no canonical definition to state claims against.
-/

/-! ## A188272.P15279616677139146472

`A188277(∑[n+4]+3)`
-/

namespace A188272.P15279616677139146472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188277 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A188272.P15279616677139146472

/-! ## A188272.P4813820535978460809

`or(char[1], A188277(A056000(n)+7))`
-/

namespace A188272.P4813820535978460809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A188277 (A056000 n + 7).toNat)

end

end A188272.P4813820535978460809

/-! ## A188272.P1537319939832851229

`A188277(A056000(n)+7)%A000045(n+9)`
-/

namespace A188272.P1537319939832851229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188277 (A056000 n + 7).toNat) (A000045 (n + 9))

end

end A188272.P1537319939832851229

/-! ## A188272.P16666268451882062428

`A007318(C(n, 2))*A188277(A056000(n)+7)`
-/

namespace A188272.P16666268451882062428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A188277 (A056000 n + 7).toNat

end

end A188272.P16666268451882062428

/-! ## A188272.P4071340229255831085

`A188277(A056000(n)+7)/A007318(C(3, n))`
-/

namespace A188272.P4071340229255831085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188277 (A056000 n + 7).toNat : ℚ) / (A007318 (Nat.choose 3 n) : ℚ)

end

end A188272.P4071340229255831085

/-!
# A188273: Number of nondecreasing strings of numbers x(i=1..n) in -5..5 with sum x(i)^3 equal to 0.

The programs for A188273, there is no canonical definition to state claims against.
-/

/-! ## A188273.P10183831100931671000

`A188277(∑[n+5]+6)`
-/

namespace A188273.P10183831100931671000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188277 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A188273.P10183831100931671000

/-! ## A188273.P7305738560184343465

`A188277(Δ[A023545(n+1)])%A067331(n+3)`
-/

namespace A188273.P7305738560184343465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188277 (f1 (n + 1) - f1 n).toNat) (A067331 (n + 3))

end

end A188273.P7305738560184343465

/-! ## A188273.P15683914574005403000

`A188277(Δ[A023545(n+1)])+A008683(4*(n+1))`
-/

namespace A188273.P15683914574005403000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188277 (f1 (n + 1) - f1 n).toNat + A008683 (4 * (n + 1))

end

end A188273.P15683914574005403000

/-! ## A188273.P5923622835467121598

`A014963(6*(n+1))*A188277(Δ[A023545(n+1)])`
-/

namespace A188273.P5923622835467121598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A188277 (f1 (n + 1) - f1 n).toNat

end

end A188273.P5923622835467121598

/-!
# A188274: Number of nondecreasing strings of numbers x(i=1..n) in -6..6 with sum x(i)^3 equal to 0.

The programs for A188274, there is no canonical definition to state claims against.
-/

/-! ## A188274.P16113614905262238328

`A188277(∑[n+6]+10)`
-/

namespace A188274.P16113614905262238328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188277 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A188274.P16113614905262238328

/-! ## A188274.P7103541700384446206

`xor(1, xor(1, A188277(A052905(n+3))))`
-/

namespace A188274.P7103541700384446206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A188277 (A052905 (n + 3)).toNat))

end

end A188274.P7103541700384446206

/-! ## A188274.P4388161528298820598

`-xor(A188277(A055999(n+3)+1)-1, -1)`
-/

namespace A188274.P4388161528298820598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (A188277 (A055999 (n + 3) + 1).toNat - 1) (-1)

end

end A188274.P4388161528298820598

/-! ## A188274.P1045730182934763799

`A188277(A052905(n+3))%A000032(n+7)`
-/

namespace A188274.P1045730182934763799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188277 (A052905 (n + 3)).toNat) (A000032 (n + 7))

end

end A188274.P1045730182934763799

/-! ## A188274.P11394471192571215893

`A007318(C(2, n))*A188277(A052905(n+3))`
-/

namespace A188274.P11394471192571215893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A188277 (A052905 (n + 3)).toNat

end

end A188274.P11394471192571215893

/-!
# A188275: Number of nondecreasing strings of numbers x(i=1..n) in -7..7 with sum x(i)^3 equal to 0.

The programs for A188275, there is no canonical definition to state claims against.
-/

/-! ## A188275.P10787118984131865584

`A188277(eq[4, A219347(n)])`
-/

namespace A188275.P10787118984131865584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188277 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188275.P10787118984131865584

/-! ## A188275.P826098391688797018

`A188277(eq[6, A193592(n)])`
-/

namespace A188275.P826098391688797018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188277 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188275.P826098391688797018

/-! ## A188275.P11280491849898068415

`A188277(Δ[A023551(n+2)])`
-/

namespace A188275.P11280491849898068415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188277 (f1 (n + 1) - f1 n).toNat

end

end A188275.P11280491849898068415

/-! ## A188275.P18433596717712927834

`A188277(A056000(n+3)+4)`
-/

namespace A188275.P18433596717712927834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188277 (A056000 (n + 3) + 4).toNat

end

end A188275.P18433596717712927834

/-! ## A188275.P2291360064534117242

`A188277(A046691(n+5)-2)`
-/

namespace A188275.P2291360064534117242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188277 (A046691 (n + 5) - 2).toNat

end

end A188275.P2291360064534117242

/-!
# A188276: Number of nondecreasing strings of numbers x(i=1..n) in -8..8 with sum x(i)^3 equal to 0.

The programs for A188276, there is no canonical definition to state claims against.
-/

/-! ## A188276.P12426483417331076981

`A188277(eq[7, A193592(n)])`
-/

namespace A188276.P12426483417331076981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188277 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188276.P12426483417331076981

/-! ## A188276.P3977839497870443261

`A188277(A055999(n+5)-1)`
-/

namespace A188276.P3977839497870443261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188277 (A055999 (n + 5) - 1).toNat

end

end A188276.P3977839497870443261

/-! ## A188276.P13168956205756868420

`A188277(A027379(n+6)-4)`
-/

namespace A188276.P13168956205756868420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188277 (A027379 (n + 6) - 4).toNat

end

end A188276.P13168956205756868420

/-! ## A188276.P3104582494315316009

`A188277(A000217(n+8)-7)`
-/

namespace A188276.P3104582494315316009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188277 (A000217 (n + 8) - 7).toNat

end

end A188276.P3104582494315316009

/-! ## A188276.P6052078136239938531

`A188277(A000124(n+8)-8)`
-/

namespace A188276.P6052078136239938531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188277 (A000124 (n + 8) - 8).toNat

end

end A188276.P6052078136239938531

/-!
# A188277: T(n,k) is the number of nondecreasing strings of numbers x(i=1..n) in -k..k with sum x(i)^3 equal to 0, read by antidiagonals.

The programs for A188277, there is no canonical definition to state claims against.
-/

/-! ## A188277.P7785497720589999814

`A194005(lt[1, A135885(n)])`
-/

namespace A188277.P7785497720589999814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135885 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A188277.P7785497720589999814

/-! ## A188277.P12797367010504523861

`A065941(lt[1, A195739(n+2)])`
-/

namespace A188277.P12797367010504523861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195739 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065941 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A188277.P12797367010504523861

/-! ## A188277.P14341337708553528343

`A194005(comp[∑[n-1]]%A127062(n+1))`
-/

namespace A188277.P14341337708553528343
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194005 (Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A127062 (n + 1))).toNat

end

end A188277.P14341337708553528343

/-! ## A188277.P6483948621994556632

`A065941(lt[A364464(n), A157150(n)])`
-/

namespace A188277.P6483948621994556632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364464 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065941 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A188277.P6483948621994556632

/-!
# A188278: Number of nondecreasing strings of numbers x(i=1..4) in -n..n with sum x(i)^3 equal to 0.

The programs for A188278, there is no canonical definition to state claims against.
-/

/-! ## A188278.P8839174638540224646

`A188277(∑[n+3]+7)`
-/

namespace A188278.P8839174638540224646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188277 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A188278.P8839174638540224646

/-! ## A188278.P17061191846577372030

`record[A188277(A167499(n)-1)]`
-/

namespace A188278.P17061191846577372030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188277 (A167499 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188278.P17061191846577372030

/-! ## A188278.P13844560185151314071

`record[A188277(A000096(n)+5)]`
-/

namespace A188278.P13844560185151314071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188277 (A000096 n + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188278.P13844560185151314071

/-! ## A188278.P15227983914549849590

`A188277(A027379(n+1)+7)%(n+2)²`
-/

namespace A188278.P15227983914549849590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188277 (A027379 (n + 1) + 7).toNat) ((n + 2) ^ 2 : ℤ)

end

end A188278.P15227983914549849590

/-! ## A188278.P10316623668788076725

`A007318(C(2, n))*A188277(A027379(n+1)+7)`
-/

namespace A188278.P10316623668788076725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A188277 (A027379 (n + 1) + 7).toNat

end

end A188278.P10316623668788076725

/-!
# A188279: Number of nondecreasing strings of numbers x(i=1..5) in -n..n with sum x(i)^3 equal to 0.

The programs for A188279, there is no canonical definition to state claims against.
-/

/-! ## A188279.P15891290068864811495

`A188277(A167499(n+3))`
-/

namespace A188279.P15891290068864811495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188277 (A167499 (n + 3)).toNat

end

end A188279.P15891290068864811495

/-! ## A188279.P1982010612976543011

`A188277(A155212(n)+13)`
-/

namespace A188279.P1982010612976543011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188277 (A155212 n + 13).toNat

end

end A188279.P1982010612976543011

/-! ## A188279.P1554763863884091484

`A188277(A056000(n)+15)`
-/

namespace A188279.P1554763863884091484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188277 (A056000 n + 15).toNat

end

end A188279.P1554763863884091484

/-! ## A188279.P2318543094765922727

`record[A188277(A027379(n)+8)]`
-/

namespace A188279.P2318543094765922727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188277 (A027379 n + 8).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188279.P2318543094765922727

/-! ## A188279.P9594826335376537328

`A188277(A167487(n+3)-2)`
-/

namespace A188279.P9594826335376537328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188277 (A167487 (n + 3) - 2).toNat

end

end A188279.P9594826335376537328

/-!
# A188280: Number of nondecreasing strings of numbers x(i=1..6) in -n..n with sum x(i)^3 equal to 0.

The programs for A188280, there is no canonical definition to state claims against.
-/

/-! ## A188280.P11350959927550115323

`A188277(A166136(n+4))`
-/

namespace A188280.P11350959927550115323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188277 (A166136 (n + 4)).toNat

end

end A188280.P11350959927550115323

/-! ## A188280.P6702924462191135823

`A188277(A056115(n)+21)`
-/

namespace A188280.P6702924462191135823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188277 (A056115 n + 21).toNat

end

end A188280.P6702924462191135823

/-! ## A188280.P4222316582292564793

`A188277(∑[A020710(n)]+16)`
-/

namespace A188280.P4222316582292564793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188277 (∑ j ∈ Finset.range (n + 1), f1 j + 16).toNat

end

end A188280.P4222316582292564793

/-! ## A188280.P4115606033075159839

`A188277(A167499(n+4)+1)`
-/

namespace A188280.P4115606033075159839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188277 (A167499 (n + 4) + 1).toNat

end

end A188280.P4115606033075159839

/-! ## A188280.P10537419168299203912

`A188277(A167487(n+4)-1)`
-/

namespace A188280.P10537419168299203912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188277 (A167487 (n + 4) - 1).toNat

end

end A188280.P10537419168299203912

/-!
# A188281: Number of nondecreasing strings of numbers x(i=1..7) in -n..n with sum x(i)^3 equal to 0.

The programs for A188281, there is no canonical definition to state claims against.
-/

/-! ## A188281.P6998103423934986693

`A188277(A167487(n+5))`
-/

namespace A188281.P6998103423934986693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188277 (A167487 (n + 5)).toNat

end

end A188281.P6998103423934986693

/-! ## A188281.P13100371115929371960

`A188277(A056119(n)+28)`
-/

namespace A188281.P13100371115929371960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188277 (A056119 n + 28).toNat

end

end A188281.P13100371115929371960

/-! ## A188281.P7861719593587800673

`A188277(A167614(n+5)+4)`
-/

namespace A188281.P7861719593587800673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188277 (A167614 (n + 5) + 4).toNat

end

end A188281.P7861719593587800673

/-! ## A188281.P13491868318925044711

`A188277(A000124(n+6)+6)`
-/

namespace A188281.P13491868318925044711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188277 (A000124 (n + 6) + 6).toNat

end

end A188281.P13491868318925044711

/-! ## A188281.P6436796645536430639

`A188277(A000096(n+5)+8)`
-/

namespace A188281.P6436796645536430639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188277 (A000096 (n + 5) + 8).toNat

end

end A188281.P6436796645536430639

/-!
# A188282: Number of nondecreasing strings of numbers x(i=1..8) in -n..n with sum x(i)^3 equal to 0.

The programs for A188282, there is no canonical definition to state claims against.
-/

/-! ## A188282.P12651639576046199468

`A188277(A166136(n+6)+2)`
-/

namespace A188282.P12651639576046199468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188277 (A166136 (n + 6) + 2).toNat

end

end A188282.P12651639576046199468

/-! ## A188282.P1300591970040717512

`A188277(A000124(n+7)+7)`
-/

namespace A188282.P1300591970040717512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188277 (A000124 (n + 7) + 7).toNat

end

end A188282.P1300591970040717512

/-! ## A188282.P3385174420128460212

`A188277(A000096(n+6)+9)`
-/

namespace A188282.P3385174420128460212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188277 (A000096 (n + 6) + 9).toNat

end

end A188282.P3385174420128460212

/-! ## A188282.P15340342026208797400

`A188277(A000217(n+7)+8)`
-/

namespace A188282.P15340342026208797400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188277 (A000217 (n + 7) + 8).toNat

end

end A188282.P15340342026208797400

/-! ## A188282.P3117962459904330310

`A188277(A055999(n+4)+14)`
-/

namespace A188282.P3117962459904330310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188277 (A055999 (n + 4) + 14).toNat

end

end A188282.P3117962459904330310

/-!
# A188283: Numbers k such that iterations for the map r -> A061602(r) starting with k ends with a fixed point (factorions A014080).

The programs for A188283, there is no canonical definition to state claims against.
-/

/-! ## A188283.P12843946018059114598

`eq[A303935(n), A316826(A151708(n))]`
-/

namespace A188283.P12843946018059114598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303935 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316826 (A151708 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188283.P12843946018059114598

/-! ## A188283.P9723124219497826525

`lt[A303935(n), A001222(A303935(3*(n+1)))]`
-/

namespace A188283.P9723124219497826525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303935 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A303935 (3 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A188283.P9723124219497826525

/-!
# A188284: Finite sequence of numbers n such that iterations for the map r -> A061602(r) starting with n ends with the same number n.

The programs for A188284, there is no canonical definition to state claims against.
-/

/-! ## A188284.P6785268671053854672

`∪[A306955(n+1), A254499(n+2)]`
-/

namespace A188284.P6785268671053854672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254499 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188284.P6785268671053854672

/-!
# A188285: Riordan matrix ( (1-2x)/(1-2x-x^2), (x-2x^2)/(1-2x-x^2) ).

The programs for A188285, there is no canonical definition to state claims against.
-/

/-! ## A188285.P5191459861469740008

`A048766(A114709(n)*A167772(n))`
-/

namespace A188285.P5191459861469740008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A114709 n * A167772 n).toNat

end

end A188285.P5191459861469740008

/-! ## A188285.P17200715239913665458

`xor(A010057(A018142(n)), A273899(n+1))`
-/

namespace A188285.P17200715239913665458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010057 (A018142 n).toNat) (A273899 (n + 1))

end

end A188285.P17200715239913665458

/-! ## A188285.P15886665686919081261

`A273899(n+1)+A014055(A273916(n))`
-/

namespace A188285.P15886665686919081261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273899 (n + 1) + A014055 (A273916 n).toNat

end

end A188285.P15886665686919081261

/-! ## A188285.P4301590694185414158

`xor(A019425(A069646(n)), A273899(n+1))`
-/

namespace A188285.P4301590694185414158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A019425 (A069646 n).toNat) (A273899 (n + 1))

end

end A188285.P4301590694185414158

/-! ## A188285.P18440009538939205036

`A067693(A152151(n))`
-/

namespace A188285.P18440009538939205036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067693 (A152151 n).toNat

end

end A188285.P18440009538939205036

/-!
# A188286: (Signless) coefficient of x^k in the admittance polynomial of the connected antiregular graph A_n.

The programs for A188286, there is no canonical definition to state claims against.
-/

/-! ## A188286.P12086438003973494907

`A093998(4^A155112(n))`
-/

namespace A188286.P12086438003973494907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093998 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A155112 n : ℤ))).toNat

end

end A188286.P12086438003973494907

/-! ## A188286.P8868588610482467970

`A093998(4^A256130(n))`
-/

namespace A188286.P8868588610482467970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093998 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A256130 n : ℤ))).toNat

end

end A188286.P8868588610482467970

/-! ## A188286.P2000802970243816937

`A053735(C(A375835(n), A210472(n)))`
-/

namespace A188286.P2000802970243816937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (Nat.choose (A375835 n).toNat (A210472 n).toNat)

end

end A188286.P2000802970243816937

/-! ## A188286.P4971165098852861352

`A029931(A238130(C(2, n²)-1+n)^A379599(n))`
-/

namespace A188286.P4971165098852861352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (SequenceMachineLib.roundAway ((A238130 ((Nat.choose 2 (n ^ 2) : ℤ) - 1 + (n : ℤ)).toNat : ℚ) ^ (A379599 n : ℤ))).toNat

end

end A188286.P4971165098852861352

/-!
# A188287: Convolution of A000085 with itself.

The programs for A188287, there is no canonical definition to state claims against.
-/

/-! ## A188287.P5240684741664694434

`∑[A023190(A121092(n))]`
-/

namespace A188287.P5240684741664694434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023190 (A121092 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188287.P5240684741664694434

/-! ## A188287.P16607225861795069095

`A354733(n)+record[A122357(n)]`
-/

namespace A188287.P16607225861795069095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122357 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354733 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188287.P16607225861795069095

/-!
# A188289: Binomial sum related to rooted trees.

The programs for A188289, the canonical program `A188289.P11877124226206247713` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188289 has offset 0).

The definition of A188289 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188289.P11877124226206247713

`A026641(n)-(-1)^n`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A188289

/-- `A026641(n)-(-1)^n` -/
def P11877124226206247713.Spec : Prop :=
  ∀ n, P11877124226206247713.a n = A188289 n

theorem P11877124226206247713.correct : P11877124226206247713.Spec := by
  intro n
  simp only [A188289]

end A188289

/-! ## A188289.P4950788498198566566

`A033999(n+1)+A026641(n)`
-/

namespace A188289.P4950788498198566566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) + A026641 n

end

end A188289.P4950788498198566566

namespace A188289

/-- `A033999(n+1)+A026641(n)` -/
def P4950788498198566566.Spec : Prop :=
  ∀ n, P4950788498198566566.a n = A188289 n

theorem P4950788498198566566.correct : P4950788498198566566.Spec := by
  intro n
  simp only [A188289, Nat.add_sub_cancel, A188289.P4950788498198566566.a, A188289.P11877124226206247713.a, A026641, A026641.P1352791935542625718.a, A033999, A033999.P17703899380244199787.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A188289

/-! ## A188289.P5975946660919614095

`A191526(2*n)-A033999(n)`
-/

namespace A188289.P5975946660919614095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191526 (2 * n) - A033999 n

end

end A188289.P5975946660919614095

namespace A188289

/-- `A191526(2*n)-A033999(n)` -/
def P5975946660919614095.Spec : Prop :=
  ∀ n, P5975946660919614095.a n = A188289 n

end A188289

/-! ## A188289.P10753994854493134502

`3*A307349(n)-A000035(n)`
-/

namespace A188289.P10753994854493134502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A307349 n - A000035 n

end

end A188289.P10753994854493134502

namespace A188289

/-- `3*A307349(n)-A000035(n)` -/
def P10753994854493134502.Spec : Prop :=
  ∀ n, P10753994854493134502.a n = A188289 n

end A188289

/-! ## A188289.P975486911773935317

`A014300(n+1)-Δ[A307349(n)]`
-/

namespace A188289.P975486911773935317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014300 (n + 1) - (f1 (n + 1) - f1 n)

end

end A188289.P975486911773935317

namespace A188289

/-- `A014300(n+1)-Δ[A307349(n)]` -/
def P975486911773935317.Spec : Prop :=
  ∀ n, P975486911773935317.a n = A188289 n

end A188289

/-! ## A188289.P11735481871131426525

`A191526(2*n)+1/A033999(n+1)`
-/

namespace A188289.P11735481871131426525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191526 (2 * n) : ℚ) + 1 / (A033999 (n + 1) : ℚ)

end

end A188289.P11735481871131426525

namespace A188289

/-- `A191526(2*n)+1/A033999(n+1)` -/
def P11735481871131426525.Spec : Prop :=
  ∀ n, P11735481871131426525.a n = (A188289 n : ℚ)

end A188289

/-! ## A188289.P14633341448589079190

`A000034(n)+A026641(n)-A000034(n+1)`
-/

namespace A188289.P14633341448589079190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n + (A026641 n - A000034 (n + 1))

end

end A188289.P14633341448589079190

namespace A188289

/-- `A000034(n)+A026641(n)-A000034(n+1)` -/
def P14633341448589079190.Spec : Prop :=
  ∀ n, P14633341448589079190.a n = A188289 n

end A188289

/-! ## A188289.P12413128474451569183

`A109078(2*n)+A000145(n+1)/A286346(n+1)`
-/

namespace A188289.P12413128474451569183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109078 (2 * n) : ℚ) + (A000145 (n + 1) : ℚ) / (A286346 (n + 1) : ℚ)

end

end A188289.P12413128474451569183

namespace A188289

/-- `A109078(2*n)+A000145(n+1)/A286346(n+1)` -/
def P12413128474451569183.Spec : Prop :=
  ∀ n, P12413128474451569183.a n = (A188289 n : ℚ)

end A188289

/-! ## A188289.P9864436290105835799

`A191526(2*n)+A033999(2*n)*A033999(n+1)`
-/

namespace A188289.P9864436290105835799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191526 (2 * n) + A033999 (2 * n) * A033999 (n + 1)

end

end A188289.P9864436290105835799

namespace A188289

/-- `A191526(2*n)+A033999(2*n)*A033999(n+1)` -/
def P9864436290105835799.Spec : Prop :=
  ∀ n, P9864436290105835799.a n = A188289 n

end A188289

/-! ## A188289.P4898079060062271864

`A001700(n)-abs(A092785(n))`
-/

namespace A188289.P4898079060062271864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n - |A092785 n|

end

end A188289.P4898079060062271864

namespace A188289

/-- `A001700(n)-abs(A092785(n))` -/
def P4898079060062271864.Spec : Prop :=
  ∀ n, P4898079060062271864.a n = A188289 n

end A188289

/-! ## A188289.P14206518144946935006

`A171650(∑[n])-(-1)^n`
-/

namespace A188289.P14206518144946935006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171650 (∑ j ∈ Finset.range (n + 1), f1 j) - (-1) ^ n

end

end A188289.P14206518144946935006

namespace A188289

/-- `A171650(∑[n])-(-1)^n` -/
def P14206518144946935006.Spec : Prop :=
  ∀ n, P14206518144946935006.a n = A188289 n

end A188289

/-!
# A188290: Positions of 0 in the zero-one sequence [nr+4r]-[nr]-[4r], where r=sqrt(5) and []=floor.

The programs for A188290, the canonical program `A188290.P3757044766049401159` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188290 has offset 1).

The definition of A188290 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188290.P3757044766049401159

`∑[4*Δ[floor(n*sqrt(5))]+9]`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A188290

/-- `∑[4*Δ[floor(n*sqrt(5))]+9]` -/
def P3757044766049401159.Spec : Prop :=
  ∀ n, P3757044766049401159.a n = A188290 (n + 1)

theorem P3757044766049401159.correct : P3757044766049401159.Spec := by
  intro n
  simp only [A188290, Nat.add_sub_cancel]

end A188290

/-! ## A188290.P6165641959984757290

`A188219(n+2)-4`
-/

namespace A188290.P6165641959984757290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188219 (n + 2) - 4

end

end A188290.P6165641959984757290

namespace A188290

/-- `A188219(n+2)-4` -/
def P6165641959984757290.Spec : Prop :=
  ∀ n, P6165641959984757290.a n = A188290 (n + 1)

end A188290

/-! ## A188290.P4353808958624024779

`n+1+2*A003623(2*(n+1))`
-/

namespace A188290.P4353808958624024779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + 2 * A003623 (2 * (n + 1))

end

end A188290.P4353808958624024779

namespace A188290

/-- `n+1+2*A003623(2*(n+1))` -/
def P4353808958624024779.Spec : Prop :=
  ∀ n, P4353808958624024779.a n = A188290 (n + 1)

end A188290

/-! ## A188290.P14153507156764930134

`n-3+2*A101868(2*(n+1))`
-/

namespace A188290.P14153507156764930134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 3 + 2 * A101868 (2 * (n + 1))

end

end A188290.P14153507156764930134

namespace A188290

/-- `n-3+2*A101868(2*(n+1))` -/
def P14153507156764930134.Spec : Prop :=
  ∀ n, P14153507156764930134.a n = A188290 (n + 1)

end A188290

/-! ## A188290.P6428578377121155671

`A035337(2*n+1)+A004958(n+1)+1`
-/

namespace A188290.P6428578377121155671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035337 (2 * n + 1) + (A004958 (n + 1) + 1)

end

end A188290.P6428578377121155671

namespace A188290

/-- `A035337(2*n+1)+A004958(n+1)+1` -/
def P6428578377121155671.Spec : Prop :=
  ∀ n, P6428578377121155671.a n = A188290 (n + 1)

end A188290

/-! ## A188290.P13196704531618518328

`A188259(2*n+1)+A134860(2*(n+1))+2`
-/

namespace A188290.P13196704531618518328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188259 (2 * n + 1) + (A134860 (2 * (n + 1)) + 2)

end

end A188290.P13196704531618518328

namespace A188290

/-- `A188259(2*n+1)+A134860(2*(n+1))+2` -/
def P13196704531618518328.Spec : Prop :=
  ∀ n, P13196704531618518328.a n = A188290 (n + 1)

end A188290

/-! ## A188290.P13244172009328922924

`A189460(2*(n+1))+2*A001950(2*(n+1))`
-/

namespace A188290.P13244172009328922924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189460 (2 * (n + 1)) + 2 * A001950 (2 * (n + 1))

end

end A188290.P13244172009328922924

namespace A188290

/-- `A189460(2*(n+1))+2*A001950(2*(n+1))` -/
def P13244172009328922924.Spec : Prop :=
  ∀ n, P13244172009328922924.a n = A188290 (n + 1)

end A188290

/-! ## A188290.P1116462904493422726

`(A188438(2*(n+1))+A035338(2*n+1))/2`
-/

namespace A188290.P1116462904493422726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188438 (2 * (n + 1)) + A035338 (2 * n + 1) : ℚ) / 2

end

end A188290.P1116462904493422726

namespace A188290

/-- `(A188438(2*(n+1))+A035338(2*n+1))/2` -/
def P1116462904493422726.Spec : Prop :=
  ∀ n, P1116462904493422726.a n = (A188290 (n + 1) : ℚ)

end A188290

/-! ## A188290.P11850752827256287089

`A001950(2*(n+1))+A134860(2*(n+1))-n`
-/

namespace A188290.P11850752827256287089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (2 * (n + 1)) + (A134860 (2 * (n + 1)) - (n : ℤ))

end

end A188290.P11850752827256287089

namespace A188290

/-- `A001950(2*(n+1))+A134860(2*(n+1))-n` -/
def P11850752827256287089.Spec : Prop :=
  ∀ n, P11850752827256287089.a n = A188290 (n + 1)

end A188290

/-! ## A188290.P14814019104716591546

`A101642(A001950(2*(n+1)))/2`
-/

namespace A188290.P14814019104716591546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101642 (A001950 (2 * (n + 1))).toNat : ℚ) / 2

end

end A188290.P14814019104716591546

namespace A188290

/-- `A101642(A001950(2*(n+1)))/2` -/
def P14814019104716591546.Spec : Prop :=
  ∀ n, P14814019104716591546.a n = (A188290 (n + 1) : ℚ)

end A188290

/-! ## A188290.P12510891100962192081

`A188220(A276854(n+1))`
-/

namespace A188290.P12510891100962192081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188220 (A276854 (n + 1)).toNat

end

end A188290.P12510891100962192081

namespace A188290

/-- `A188220(A276854(n+1))` -/
def P12510891100962192081.Spec : Prop :=
  ∀ n, P12510891100962192081.a n = A188290 (n + 1)

end A188290

/-! ## A188290.P6278617678730755842

`A101870(A000201(2*(n+1)))/2`
-/

namespace A188290.P6278617678730755842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101870 (A000201 (2 * (n + 1))).toNat : ℚ) / 2

end

end A188290.P6278617678730755842

namespace A188290

/-- `A101870(A000201(2*(n+1)))/2` -/
def P6278617678730755842.Spec : Prop :=
  ∀ n, P6278617678730755842.a n = (A188290 (n + 1) : ℚ)

end A188290

/-! ## A188290.P7700995330440548790

`A284621(A000201(2*(n+1))+1)+n+2`
-/

namespace A188290.P7700995330440548790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284621 (A000201 (2 * (n + 1)) + 1).toNat + (n + 2 : ℤ)

end

end A188290.P7700995330440548790

namespace A188290

/-- `A284621(A000201(2*(n+1))+1)+n+2` -/
def P7700995330440548790.Spec : Prop :=
  ∀ n, P7700995330440548790.a n = A188290 (n + 1)

end A188290

/-! ## A188290.P8111800618964692175

`A134864(2*(n+1))/2`
-/

namespace A188290.P8111800618964692175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134864 (2 * (n + 1)) : ℚ) / 2

end

end A188290.P8111800618964692175

namespace A188290

/-- `A134864(2*(n+1))/2` -/
def P8111800618964692175.Spec : Prop :=
  ∀ n, P8111800618964692175.a n = (A188290 (n + 1) : ℚ)

end A188290

/-! ## A188290.P693853102277629175

`A004938(A004976(n+1))`
-/

namespace A188290.P693853102277629175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004938 (A004976 (n + 1)).toNat

end

end A188290.P693853102277629175

namespace A188290

/-- `A004938(A004976(n+1))` -/
def P693853102277629175.Spec : Prop :=
  ∀ n, P693853102277629175.a n = A188290 (n + 1)

end A188290

/-! ## A188290.P17381398115081783041

`A081843(A004958(n+1))`
-/

namespace A188290.P17381398115081783041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081843 (A004958 (n + 1)).toNat

end

end A188290.P17381398115081783041

namespace A188290

/-- `A081843(A004958(n+1))` -/
def P17381398115081783041.Spec : Prop :=
  ∀ n, P17381398115081783041.a n = A188290 (n + 1)

end A188290

/-! ## A188290.P17222979844571702864

`A004958(∑[A276866(n+1)])`
-/

namespace A188290.P17222979844571702864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276866 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004958 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A188290.P17222979844571702864

namespace A188290

/-- `A004958(∑[A276866(n+1)])` -/
def P17222979844571702864.Spec : Prop :=
  ∀ n, P17222979844571702864.a n = A188290 (n + 1)

end A188290

/-! ## A188290.P10768958369432223774

`A004958(A004958(n+1)-1)`
-/

namespace A188290.P10768958369432223774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004958 (A004958 (n + 1) - 1).toNat

end

end A188290.P10768958369432223774

namespace A188290

/-- `A004958(A004958(n+1)-1)` -/
def P10768958369432223774.Spec : Prop :=
  ∀ n, P10768958369432223774.a n = A188290 (n + 1)

end A188290

/-! ## A188290.P14543550536597385362

`Δ[∑[A004976(A004976(n))]+n]`
-/

namespace A188290.P14543550536597385362
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004976 (A004976 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188290.P14543550536597385362

namespace A188290

/-- `Δ[∑[A004976(A004976(n))]+n]` -/
def P14543550536597385362.Spec : Prop :=
  ∀ n, P14543550536597385362.a n = A188290 (n + 1)

end A188290

/-! ## A188290.P8054261901291804173

`A004938(A003623(2*(n+1))/2)`
-/

namespace A188290.P8054261901291804173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004938 (SequenceMachineLib.roundAway ((A003623 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A188290.P8054261901291804173

namespace A188290

/-- `A004938(A003623(2*(n+1))/2)` -/
def P8054261901291804173.Spec : Prop :=
  ∀ n, P8054261901291804173.a n = A188290 (n + 1)

end A188290

/-!
# A188291: [nr+kr]-[nr]-[kr], where r=sqrt(5), k=5, [ ]=floor.

The programs for A188291, the canonical program `A188291.P4051913689552143111` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188291 has offset 1).

The definition of A188291 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188291.P13396464882576218017

`char[A188293(n+1)-1]`
-/

namespace A188291.P13396464882576218017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188293 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188291.P13396464882576218017

namespace A188291

/-- `char[A188293(n+1)-1]` -/
def P13396464882576218017.Spec : Prop :=
  ∀ n, (P13396464882576218017.a n : ℤ) = A188291 (n + 1)

end A188291

/-! ## A188291.P4051913689552143111

`char[A188220(n+1)-6]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A188291

/-- `char[A188220(n+1)-6]` -/
def P4051913689552143111.Spec : Prop :=
  ∀ n, (P4051913689552143111.a n : ℤ) = A188291 (n + 1)

theorem P4051913689552143111.correct : P4051913689552143111.Spec := by
  intro n
  simp only [A188291, Nat.add_sub_cancel]

end A188291

/-! ## A188291.P12341853658946261767

`char[A004958(A188222(n+1))-2]`
-/

namespace A188291.P12341853658946261767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004958 (A188222 (n + 1)).toNat - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188291.P12341853658946261767

namespace A188291

/-- `char[A004958(A188222(n+1))-2]` -/
def P12341853658946261767.Spec : Prop :=
  ∀ n, (P12341853658946261767.a n : ℤ) = A188291 (n + 1)

end A188291

/-! ## A188291.P13854551303881448646

`char[A004958(A188188(n+1))-6]`
-/

namespace A188291.P13854551303881448646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004958 (A188188 (n + 1)).toNat - 6

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188291.P13854551303881448646

namespace A188291

/-- `char[A004958(A188188(n+1))-6]` -/
def P13854551303881448646.Spec : Prop :=
  ∀ n, (P13854551303881448646.a n : ℤ) = A188291 (n + 1)

end A188291

/-! ## A188291.P16917935673769464031

`Δ[A187329(A001961(n+1)-n)]`
-/

namespace A188291.P16917935673769464031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187329 (A001961 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188291.P16917935673769464031

namespace A188291

/-- `Δ[A187329(A001961(n+1)-n)]` -/
def P16917935673769464031.Spec : Prop :=
  ∀ n, P16917935673769464031.a n = A188291 (n + 1)

end A188291

/-! ## A188291.P604813519411792100

`Δ[A195172(A300763(n+1))]`
-/

namespace A188291.P604813519411792100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195172 (A300763 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188291.P604813519411792100

namespace A188291

/-- `Δ[A195172(A300763(n+1))]` -/
def P604813519411792100.Spec : Prop :=
  ∀ n, P604813519411792100.a n = A188291 (n + 1)

end A188291

/-! ## A188291.P4490662228935980101

`and(A188257(n+1), A188260(n+3))`
-/

namespace A188291.P4490662228935980101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A188257 (n + 1)) (A188260 (n + 3))

end

end A188291.P4490662228935980101

namespace A188291

/-- `and(A188257(n+1), A188260(n+3))` -/
def P4490662228935980101.Spec : Prop :=
  ∀ n, P4490662228935980101.a n = A188291 (n + 1)

end A188291

/-! ## A188291.P13976522311172565426

`and(floor(n/A026246(n+1)), A188260(n+3))`
-/

namespace A188291.P13976522311172565426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ⌊(n : ℚ) / (A026246 (n + 1) : ℚ)⌋ (A188260 (n + 3))

end

end A188291.P13976522311172565426

namespace A188291

/-- `and(floor(n/A026246(n+1)), A188260(n+3))` -/
def P13976522311172565426.Spec : Prop :=
  ∀ n, P13976522311172565426.a n = A188291 (n + 1)

end A188291

/-! ## A188291.P13423383705246070378

`Δ[A188257(n+3)]*A188257(n+1)`
-/

namespace A188291.P13423383705246070378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188257 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A188257 (n + 1)

end

end A188291.P13423383705246070378

namespace A188291

/-- `Δ[A188257(n+3)]*A188257(n+1)` -/
def P13423383705246070378.Spec : Prop :=
  ∀ n, P13423383705246070378.a n = A188291 (n + 1)

end A188291

/-! ## A188291.P9255045699328581154

`A188221(A276866(n+1)+n+1)`
-/

namespace A188291.P9255045699328581154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188221 (A276866 (n + 1) + (n + 1 : ℤ)).toNat

end

end A188291.P9255045699328581154

namespace A188291

/-- `A188221(A276866(n+1)+n+1)` -/
def P9255045699328581154.Spec : Prop :=
  ∀ n, P9255045699328581154.a n = A188291 (n + 1)

end A188291

/-! ## A188291.P14535723742199550123

`A188221(A276863(n+1)+n+2)`
-/

namespace A188291.P14535723742199550123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188221 (A276863 (n + 1) + (n + 2 : ℤ)).toNat

end

end A188291.P14535723742199550123

namespace A188291

/-- `A188221(A276863(n+1)+n+2)` -/
def P14535723742199550123.Spec : Prop :=
  ∀ n, P14535723742199550123.a n = A188291 (n + 1)

end A188291

/-! ## A188291.P16687290928403021821

`A188187(A188187(n+1)+6+n)`
-/

namespace A188291.P16687290928403021821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188187 (A188187 (n + 1) + 6 + (n : ℤ)).toNat

end

end A188291.P16687290928403021821

namespace A188291

/-- `A188187(A188187(n+1)+6+n)` -/
def P16687290928403021821.Spec : Prop :=
  ∀ n, P16687290928403021821.a n = A188291 (n + 1)

end A188291

/-! ## A188291.P12877803904795979934

`Δ[A188189(n+5)]*A188221(n+1)`
-/

namespace A188291.P12877803904795979934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188189 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A188221 (n + 1)

end

end A188291.P12877803904795979934

namespace A188291

/-- `Δ[A188189(n+5)]*A188221(n+1)` -/
def P12877803904795979934.Spec : Prop :=
  ∀ n, P12877803904795979934.a n = A188291 (n + 1)

end A188291

/-! ## A188291.P17287252126176214146

`(A089809(n+1)-A089809(A020715(n)))²`
-/

namespace A188291.P17287252126176214146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A089809 (n + 1) - A089809 (A020715 n).toNat) ^ 2

end

end A188291.P17287252126176214146

namespace A188291

/-- `(A089809(n+1)-A089809(A020715(n)))²` -/
def P17287252126176214146.Spec : Prop :=
  ∀ n, P17287252126176214146.a n = A188291 (n + 1)

end A188291

/-! ## A188291.P5714439148487133504

`A187950(2*(n+1))*A188260(n+3)`
-/

namespace A188291.P5714439148487133504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187950 (2 * (n + 1)) * A188260 (n + 3)

end

end A188291.P5714439148487133504

namespace A188291

/-- `A187950(2*(n+1))*A188260(n+3)` -/
def P5714439148487133504.Spec : Prop :=
  ∀ n, P5714439148487133504.a n = A188291 (n + 1)

end A188291

/-! ## A188291.P3744277821155818379

`and(-A188260(n+3), C(2-A114986(2*n+1), 2))`
-/

namespace A188291.P3744277821155818379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A188260 (n + 3)) (Nat.choose (2 - A114986 (2 * n + 1)).toNat 2 : ℤ)

end

end A188291.P3744277821155818379

namespace A188291

/-- `and(-A188260(n+3), C(2-A114986(2*n+1), 2))` -/
def P3744277821155818379.Spec : Prop :=
  ∀ n, P3744277821155818379.a n = A188291 (n + 1)

end A188291

/-! ## A188291.P4770684951959905755

`A003849(A263772(2*(n+1)))*A003849(2*n)`
-/

namespace A188291.P4770684951959905755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (A263772 (2 * (n + 1))).toNat * A003849 (2 * n)

end

end A188291.P4770684951959905755

namespace A188291

/-- `A003849(A263772(2*(n+1)))*A003849(2*n)` -/
def P4770684951959905755.Spec : Prop :=
  ∀ n, P4770684951959905755.a n = A188291 (n + 1)

end A188291

/-! ## A188291.P13556978737219220831

`C(A014675(A288712(n+5)), A076662(2*(n+1)))`
-/

namespace A188291.P13556978737219220831
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A014675 (A288712 (n + 5)).toNat).toNat (A076662 (2 * (n + 1))).toNat

end

end A188291.P13556978737219220831

namespace A188291

/-- `C(A014675(A288712(n+5)), A076662(2*(n+1)))` -/
def P13556978737219220831.Spec : Prop :=
  ∀ n, (P13556978737219220831.a n : ℤ) = A188291 (n + 1)

end A188291

/-! ## A188291.P12552414830193232566

`A188009(A120613(2*n+3)+10)`
-/

namespace A188291.P12552414830193232566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188009 (A120613 (2 * n + 3) + 10).toNat

end

end A188291.P12552414830193232566

namespace A188291

/-- `A188009(A120613(2*n+3)+10)` -/
def P12552414830193232566.Spec : Prop :=
  ∀ n, P12552414830193232566.a n = A188291 (n + 1)

end A188291

/-! ## A188291.P4662265048741887344

`A188014(A120613(2*n+3)+10)`
-/

namespace A188291.P4662265048741887344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188014 (A120613 (2 * n + 3) + 10).toNat

end

end A188291.P4662265048741887344

namespace A188291

/-- `A188014(A120613(2*n+3)+10)` -/
def P4662265048741887344.Spec : Prop :=
  ∀ n, P4662265048741887344.a n = A188291 (n + 1)

end A188291

/-!
# A188292: Positions of 0 in A188291; complement of A188293.

The programs for A188292, the canonical program `A188292.P16402380727570553525` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188292 has offset 1).

The definition of A188292 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188292.P187230804258400851

`comp[A188293(n+1)-1]+1`
-/

namespace A188292.P187230804258400851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188293 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A188292.P187230804258400851

namespace A188292

/-- `comp[A188293(n+1)-1]+1` -/
def P187230804258400851.Spec : Prop :=
  ∀ n, (P187230804258400851.a n : ℤ) = A188292 (n + 1)

end A188292

/-! ## A188292.P16402380727570553525

`comp[A004976(comp[A004976(n+1)])]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A188292

/-- `comp[A004976(comp[A004976(n+1)])]` -/
def P16402380727570553525.Spec : Prop :=
  ∀ n, (P16402380727570553525.a n : ℤ) = A188292 (n + 1)

theorem P16402380727570553525.correct : P16402380727570553525.Spec := by
  intro n
  simp only [A188292, Nat.add_sub_cancel]

end A188292

/-! ## A188292.P4419164959258577762

`eq[0, A188291(n+1)]+1`
-/

namespace A188292.P4419164959258577762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188291 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A188292.P4419164959258577762

namespace A188292

/-- `eq[0, A188291(n+1)]+1` -/
def P4419164959258577762.Spec : Prop :=
  ∀ n, (P4419164959258577762.a n : ℤ) = A188292 (n + 1)

end A188292

/-! ## A188292.P17088223863577029901

`record[A305800(n+1)+A188291(A305800(n+1))]`
-/

namespace A188292.P17088223863577029901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305800 (n + 1) + A188291 (A305800 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188292.P17088223863577029901

namespace A188292

/-- `record[A305800(n+1)+A188291(A305800(n+1))]` -/
def P17088223863577029901.Spec : Prop :=
  ∀ n, P17088223863577029901.a n = A188292 (n + 1)

end A188292

/-! ## A188292.P17454317224206227208

`lt[A001222(A188291(n+1)+A006530(3*n+1)), 2]+1`
-/

namespace A188292.P17454317224206227208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A188291 (n + 1) + A006530 (3 * n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A188292.P17454317224206227208

namespace A188292

/-- `lt[A001222(A188291(n+1)+A006530(3*n+1)), 2]+1` -/
def P17454317224206227208.Spec : Prop :=
  ∀ n, (P17454317224206227208.a n : ℤ) = A188292 (n + 1)

end A188292

/-! ## A188292.P12636999014433066527

`eq[A078588(n+1), A078588(n+6)]+1`
-/

namespace A188292.P12636999014433066527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078588 (n + 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A188292.P12636999014433066527

namespace A188292

/-- `eq[A078588(n+1), A078588(n+6)]+1` -/
def P12636999014433066527.Spec : Prop :=
  ∀ n, (P12636999014433066527.a n : ℤ) = A188292 (n + 1)

end A188292

/-! ## A188292.P5140163706570849091

`lt[A001222(A188291(n+1)+A000040(n+1)), 2]+1`
-/

namespace A188292.P5140163706570849091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A188291 (n + 1) + A000040 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A188292.P5140163706570849091

namespace A188292

/-- `lt[A001222(A188291(n+1)+A000040(n+1)), 2]+1` -/
def P5140163706570849091.Spec : Prop :=
  ∀ n, (P5140163706570849091.a n : ℤ) = A188292 (n + 1)

end A188292

/-! ## A188292.P6226877359500876505

`record[A188291(A026242(n+1))+A026242(n+1)]`
-/

namespace A188292.P6226877359500876505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188291 (A026242 (n + 1)).toNat + A026242 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188292.P6226877359500876505

namespace A188292

/-- `record[A188291(A026242(n+1))+A026242(n+1)]` -/
def P6226877359500876505.Spec : Prop :=
  ∀ n, P6226877359500876505.a n = A188292 (n + 1)

end A188292

/-! ## A188292.P5503094934455526557

`record[A188291(A008619(n))+A028242(n)]`
-/

namespace A188292.P5503094934455526557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188291 (A008619 n).toNat + A028242 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188292.P5503094934455526557

namespace A188292

/-- `record[A188291(A008619(n))+A028242(n)]` -/
def P5503094934455526557.Spec : Prop :=
  ∀ n, P5503094934455526557.a n = A188292 (n + 1)

end A188292

/-! ## A188292.P5323067305781498621

`record[A188291(A008619(n))+A003602(n+1)]`
-/

namespace A188292.P5323067305781498621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188291 (A008619 n).toNat + A003602 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188292.P5323067305781498621

namespace A188292

/-- `record[A188291(A008619(n))+A003602(n+1)]` -/
def P5323067305781498621.Spec : Prop :=
  ∀ n, P5323067305781498621.a n = A188292 (n + 1)

end A188292

/-! ## A188292.P17029074265231905854

`record[n+1-A000045(n*A188291(n+1))]`
-/

namespace A188292.P17029074265231905854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000045 ((n : ℤ) * A188291 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188292.P17029074265231905854

namespace A188292

/-- `record[n+1-A000045(n*A188291(n+1))]` -/
def P17029074265231905854.Spec : Prop :=
  ∀ n, P17029074265231905854.a n = A188292 (n + 1)

end A188292

/-!
# A188293: Positions of 1 in A188291; complement of A188292.

The programs for A188293, the canonical program `A188293.P10413451273584708875` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188293 has offset 1).

The definition of A188293 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188293.P13218745600340242006

`5*comp[floor(n*ϕ^3)]-(n+1)`
-/

namespace A188293.P13218745600340242006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.goldenRatio ^ 3⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n + 1 : ℤ)

end

end A188293.P13218745600340242006

namespace A188293

/-- `5*comp[floor(n*ϕ^3)]-(n+1)` -/
def P13218745600340242006.Spec : Prop :=
  ∀ n, P13218745600340242006.a n = A188293 (n + 1)

end A188293

/-! ## A188293.P10413451273584708875

`abs(5-A188220(n+1))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A188293

/-- `abs(5-A188220(n+1))` -/
def P10413451273584708875.Spec : Prop :=
  ∀ n, P10413451273584708875.a n = A188293 (n + 1)

theorem P10413451273584708875.correct : P10413451273584708875.Spec := by
  intro n
  simp only [A188293, Nat.add_sub_cancel]

end A188293

/-! ## A188293.P4218347518923642025

`∑[(char[A276854(n+1)]+2)²]`
-/

namespace A188293.P4218347518923642025
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276854 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188293.P4218347518923642025

namespace A188293

/-- `∑[(char[A276854(n+1)]+2)²]` -/
def P4218347518923642025.Spec : Prop :=
  ∀ n, (P4218347518923642025.a n : ℤ) = A188293 (n + 1)

end A188293

/-! ## A188293.P8573662417981664896

`∑[(Δ[A188188(n+1)]+1)²]`
-/

namespace A188293.P8573662417981664896
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188188 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188293.P8573662417981664896

namespace A188293

/-- `∑[(Δ[A188188(n+1)]+1)²]` -/
def P8573662417981664896.Spec : Prop :=
  ∀ n, P8573662417981664896.a n = A188293 (n + 1)

end A188293

/-! ## A188293.P11123662899046292798

`∑[A188190(Δ[A188188(n+1)])²]`
-/

namespace A188293.P11123662899046292798
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188188 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188190 (f2 (n + 1) - f2 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188293.P11123662899046292798

namespace A188293

/-- `∑[A188190(Δ[A188188(n+1)])²]` -/
def P11123662899046292798.Spec : Prop :=
  ∀ n, P11123662899046292798.a n = A188293 (n + 1)

end A188293

/-! ## A188293.P7556957395258229341

`A004976(comp[A004976(n)])`
-/

namespace A188293.P7556957395258229341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004976 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004976 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A188293.P7556957395258229341

namespace A188293

/-- `A004976(comp[A004976(n)])` -/
def P7556957395258229341.Spec : Prop :=
  ∀ n, P7556957395258229341.a n = A188293 (n + 1)

end A188293

/-! ## A188293.P4333687513467727971

`A004976(A188222(n+1))`
-/

namespace A188293.P4333687513467727971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004976 (A188222 (n + 1)).toNat

end

end A188293.P4333687513467727971

namespace A188293

/-- `A004976(A188222(n+1))` -/
def P4333687513467727971.Spec : Prop :=
  ∀ n, P4333687513467727971.a n = A188293 (n + 1)

end A188293

/-! ## A188293.P15977747772646868723

`A004976(A188188(n+2)-1)`
-/

namespace A188293.P15977747772646868723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004976 (A188188 (n + 2) - 1).toNat

end

end A188293.P15977747772646868723

namespace A188293

/-- `A004976(A188188(n+2)-1)` -/
def P15977747772646868723.Spec : Prop :=
  ∀ n, P15977747772646868723.a n = A188293 (n + 1)

end A188293

/-! ## A188293.P14387688778680810895

`∑[Δ[A004526(A276855(n))]²]`
-/

namespace A188293.P14387688778680810895
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A276855 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188293.P14387688778680810895

namespace A188293

/-- `∑[Δ[A004526(A276855(n))]²]` -/
def P14387688778680810895.Spec : Prop :=
  ∀ n, P14387688778680810895.a n = A188293 (n + 1)

end A188293

/-! ## A188293.P12902467518357318922

`A023447(A188220(n+1))`
-/

namespace A188293.P12902467518357318922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023447 (A188220 (n + 1)).toNat

end

end A188293.P12902467518357318922

namespace A188293

/-- `A023447(A188220(n+1))` -/
def P12902467518357318922.Spec : Prop :=
  ∀ n, P12902467518357318922.a n = A188293 (n + 1)

end A188293

/-! ## A188293.P1523929838924013536

`A267182(A035338(n))`
-/

namespace A188293.P1523929838924013536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267182 (A035338 n).toNat

end

end A188293.P1523929838924013536

namespace A188293

/-- `A267182(A035338(n))` -/
def P1523929838924013536.Spec : Prop :=
  ∀ n, P1523929838924013536.a n = A188293 (n + 1)

end A188293

/-! ## A188293.P10995453842583583675

`A097065(A372302(n+1))`
-/

namespace A188293.P10995453842583583675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097065 (A372302 (n + 1)).toNat

end

end A188293.P10995453842583583675

namespace A188293

/-- `A097065(A372302(n+1))` -/
def P10995453842583583675.Spec : Prop :=
  ∀ n, P10995453842583583675.a n = A188293 (n + 1)

end A188293

/-!
# A188294: Array T(k,n)=[nr]-[kr]-[nr-kr], r=(1+sqrt(5))/2, read by antidiagonals.

The programs for A188294, there is no canonical definition to state claims against.
-/

/-! ## A188294.P16858312082820845263

`A189212(A188967(n+2)+A075663(n+1))`
-/

namespace A188294.P16858312082820845263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189212 (A188967 (n + 2) + A075663 (n + 1)).toNat

end

end A188294.P16858312082820845263

/-! ## A188294.P11823482670571683947

`A392736(lcm(n, A391984(3*n+5)))`
-/

namespace A188294.P11823482670571683947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392736 (Int.lcm (n : ℤ) (A391984 (3 * n + 5)))

end

end A188294.P11823482670571683947

/-! ## A188294.P11501251325788652824

`A189572(or(n+1, A320775(n+1)))`
-/

namespace A188294.P11501251325788652824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189572 (Int.lor (n + 1 : ℤ) (A320775 (n + 1))).toNat

end

end A188294.P11501251325788652824

/-! ## A188294.P12371809991414283327

`A189078(∑[A005728(A054582(n))])`
-/

namespace A188294.P12371809991414283327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 (A054582 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189078 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A188294.P12371809991414283327

/-! ## A188294.P17198506787702357203

`A359430(A359430(2*n)+A131132(n))`
-/

namespace A188294.P17198506787702357203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359430 (A359430 (2 * n) + A131132 n).toNat

end

end A188294.P17198506787702357203

/-!
# A188295: a(n) = [n*r]-[n*r-r], where r=1/sqrt(2), [ ]=floor.

The programs for A188295, the canonical program `A188295.P14649549337933512404` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188295 has offset 1).

The definition of A188295 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188295.P6337195338298689170

`Δ[floor(n/sqrt(2))]`
-/

namespace A188295.P6337195338298689170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.sqrt (2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188295.P6337195338298689170

namespace A188295

/-- `Δ[floor(n/sqrt(2))]` -/
def P6337195338298689170.Spec : Prop :=
  ∀ n, P6337195338298689170.a n = A188295 (n + 1)

end A188295

/-! ## A188295.P14649549337933512404

`2-Δ[A195128(n)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A188295

/-- `2-Δ[A195128(n)]` -/
def P14649549337933512404.Spec : Prop :=
  ∀ n, P14649549337933512404.a n = A188295 (n + 1)

theorem P14649549337933512404.correct : P14649549337933512404.Spec := by
  intro n
  simp only [A188295, Nat.add_sub_cancel]

end A188295

/-! ## A188295.P3731353592474386489

`char[A001951(n+1)]`
-/

namespace A188295.P3731353592474386489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188295.P3731353592474386489

namespace A188295

/-- `char[A001951(n+1)]` -/
def P3731353592474386489.Spec : Prop :=
  ∀ n, (P3731353592474386489.a n : ℤ) = A188295 (n + 1)

end A188295

/-! ## A188295.P16692521068595888142

`char[A080764(n)+n]`
-/

namespace A188295.P16692521068595888142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080764 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188295.P16692521068595888142

namespace A188295

/-- `char[A080764(n)+n]` -/
def P16692521068595888142.Spec : Prop :=
  ∀ n, (P16692521068595888142.a n : ℤ) = A188295 (n + 1)

end A188295

/-! ## A188295.P10455811108080194988

`A276869(n+1)-2`
-/

namespace A188295.P10455811108080194988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276869 (n + 1) - 2

end

end A188295.P10455811108080194988

namespace A188295

/-- `A276869(n+1)-2` -/
def P10455811108080194988.Spec : Prop :=
  ∀ n, P10455811108080194988.a n = A188295 (n + 1)

end A188295

/-! ## A188295.P18128058892851755464

`char[Δ[A081946(n+1)]]`
-/

namespace A188295.P18128058892851755464
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081946 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188295.P18128058892851755464

namespace A188295

/-- `char[Δ[A081946(n+1)]]` -/
def P18128058892851755464.Spec : Prop :=
  ∀ n, (P18128058892851755464.a n : ℤ) = A188295 (n + 1)

end A188295

/-! ## A188295.P405588545929161780

`char[A087057(n+1)-1]`
-/

namespace A188295.P405588545929161780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087057 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188295.P405588545929161780

namespace A188295

/-- `char[A087057(n+1)-1]` -/
def P405588545929161780.Spec : Prop :=
  ∀ n, (P405588545929161780.a n : ℤ) = A188295 (n + 1)

end A188295

/-! ## A188295.P14889621631252744988

`char[A054071(n+1)+n]`
-/

namespace A188295.P14889621631252744988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054071 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188295.P14889621631252744988

namespace A188295

/-- `char[A054071(n+1)+n]` -/
def P14889621631252744988.Spec : Prop :=
  ∀ n, (P14889621631252744988.a n : ℤ) = A188295 (n + 1)

end A188295

/-! ## A188295.P168307513306722073

`char[A188374(n+1)+n]`
-/

namespace A188295.P168307513306722073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188374 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188295.P168307513306722073

namespace A188295

/-- `char[A188374(n+1)+n]` -/
def P168307513306722073.Spec : Prop :=
  ∀ n, (P168307513306722073.a n : ℤ) = A188295 (n + 1)

end A188295

/-! ## A188295.P16273635469187696374

`char[A188398(n+1)+n]`
-/

namespace A188295.P16273635469187696374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188398 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188295.P16273635469187696374

namespace A188295

/-- `char[A188398(n+1)+n]` -/
def P16273635469187696374.Spec : Prop :=
  ∀ n, (P16273635469187696374.a n : ℤ) = A188295 (n + 1)

end A188295

/-! ## A188295.P5638336752001015996

`char[A286666(n+1)-n]`
-/

namespace A188295.P5638336752001015996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286666 (n + 1) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188295.P5638336752001015996

namespace A188295

/-- `char[A286666(n+1)-n]` -/
def P5638336752001015996.Spec : Prop :=
  ∀ n, (P5638336752001015996.a n : ℤ) = A188295 (n + 1)

end A188295

/-! ## A188295.P9769523164323329472

`char[A286686(n+1)-n]`
-/

namespace A188295.P9769523164323329472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286686 (n + 1) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188295.P9769523164323329472

namespace A188295

/-- `char[A286686(n+1)-n]` -/
def P9769523164323329472.Spec : Prop :=
  ∀ n, (P9769523164323329472.a n : ℤ) = A188295 (n + 1)

end A188295

/-! ## A188295.P1660880849868317842

`char[floor(sqrt(A056220(n+1)))]`
-/

namespace A188295.P1660880849868317842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A056220 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188295.P1660880849868317842

namespace A188295

/-- `char[floor(sqrt(A056220(n+1)))]` -/
def P1660880849868317842.Spec : Prop :=
  ∀ n, (P1660880849868317842.a n : ℤ) = A188295 (n + 1)

end A188295

/-! ## A188295.P2578988178110735912

`A324772(n)+A188037(n+1)`
-/

namespace A188295.P2578988178110735912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324772 n + A188037 (n + 1)

end

end A188295.P2578988178110735912

namespace A188295

/-- `A324772(n)+A188037(n+1)` -/
def P2578988178110735912.Spec : Prop :=
  ∀ n, P2578988178110735912.a n = A188295 (n + 1)

end A188295

/-! ## A188295.P2188022962861072875

`A003152(n+1)-A083088(n)`
-/

namespace A188295.P2188022962861072875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (n + 1) - A083088 n

end

end A188295.P2188022962861072875

namespace A188295

/-- `A003152(n+1)-A083088(n)` -/
def P2188022962861072875.Spec : Prop :=
  ∀ n, P2188022962861072875.a n = A188295 (n + 1)

end A188295

/-! ## A188295.P3977786098257781324

`A049472(n+1)-A049472(n)`
-/

namespace A188295.P3977786098257781324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 (n + 1) - A049472 n

end

end A188295.P3977786098257781324

namespace A188295

/-- `A049472(n+1)-A049472(n)` -/
def P3977786098257781324.Spec : Prop :=
  ∀ n, P3977786098257781324.a n = A188295 (n + 1)

end A188295

/-!
# A188296: Central element of a series of 5 successive nonsquarefree numbers.

The programs for A188296, there is no canonical definition to state claims against.
-/

/-! ## A188296.P9975676388968070583

`A078144(n+1)+2`
-/

namespace A188296.P9975676388968070583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078144 (n + 1) + 2

end

end A188296.P9975676388968070583

/-! ## A188296.P16230162249573166568

`∩[A070284(n+1)+1, A070284(n+1)]+1`
-/

namespace A188296.P16230162249573166568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070284 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070284 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A188296.P16230162249573166568

/-! ## A188296.P5082953802427600640

`A070284(eq[1, A070284(n+2)-A070284(n+1)]+1)+2`
-/

namespace A188296.P5082953802427600640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070284 (n + 2) - A070284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070284 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) + 2

end

end A188296.P5082953802427600640

/-! ## A188296.P7775787981642096673

`∩[A070258(n+1), A235578(n+1)+1]`
-/

namespace A188296.P7775787981642096673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070258 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235578 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188296.P7775787981642096673

/-! ## A188296.P8945382220894350937

`∩[A070284(n+1), A235578(n+1)]+1`
-/

namespace A188296.P8945382220894350937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070284 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A188296.P8945382220894350937

/-!
# A188297: a(n) = [n*r] - [k*r] - [n*r-k*r], where r=1/sqrt(2), k=2, [ ]=floor.

The programs for A188297, the canonical program `A188297.P11306489375432585574` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188297 has offset 1).

The definition of A188297 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188297.P1394453574257069725

`A188374(abs(2-n)+1)`
-/

namespace A188297.P1394453574257069725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188374 (|2 - (n : ℤ)| + 1).toNat

end

end A188297.P1394453574257069725

namespace A188297

/-- `A188374(abs(2-n)+1)` -/
def P1394453574257069725.Spec : Prop :=
  ∀ n, P1394453574257069725.a n = A188297 (n + 1)

end A188297

/-! ## A188297.P8211083618350051119

`char[A188376(n+1)+1]`
-/

namespace A188297.P8211083618350051119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188376 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188297.P8211083618350051119

namespace A188297

/-- `char[A188376(n+1)+1]` -/
def P8211083618350051119.Spec : Prop :=
  ∀ n, (P8211083618350051119.a n : ℤ) = A188297 (n + 1)

end A188297

/-! ## A188297.P11306489375432585574

`A144611(A049472(n))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A188297

/-- `A144611(A049472(n))` -/
def P11306489375432585574.Spec : Prop :=
  ∀ n, P11306489375432585574.a n = A188297 (n + 1)

theorem P11306489375432585574.correct : P11306489375432585574.Spec := by
  intro n
  simp only [A188297, Nat.add_sub_cancel]

end A188297

/-! ## A188297.P17492357459841544797

`A158799(n)-A110012(n+1)`
-/

namespace A188297.P17492357459841544797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158799 n - A110012 (n + 1)

end

end A188297.P17492357459841544797

namespace A188297

/-- `A158799(n)-A110012(n+1)` -/
def P17492357459841544797.Spec : Prop :=
  ∀ n, P17492357459841544797.a n = A188297 (n + 1)

end A188297

/-! ## A188297.P7962021722283027549

`A100403(n)%A110012(n+1)`
-/

namespace A188297.P7962021722283027549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100403 n) (A110012 (n + 1))

end

end A188297.P7962021722283027549

namespace A188297

/-- `A100403(n)%A110012(n+1)` -/
def P7962021722283027549.Spec : Prop :=
  ∀ n, P7962021722283027549.a n = A188297 (n + 1)

end A188297

/-! ## A188297.P16712084343192876098

`A113923(n)%A110012(n+1)`
-/

namespace A188297.P16712084343192876098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113923 n) (A110012 (n + 1))

end

end A188297.P16712084343192876098

namespace A188297

/-- `A113923(n)%A110012(n+1)` -/
def P16712084343192876098.Spec : Prop :=
  ∀ n, P16712084343192876098.a n = A188297 (n + 1)

end A188297

/-! ## A188297.P11124343927040384341

`A270545(n)%A110012(n+1)`
-/

namespace A188297.P11124343927040384341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A270545 n) (A110012 (n + 1))

end

end A188297.P11124343927040384341

namespace A188297

/-- `A270545(n)%A110012(n+1)` -/
def P11124343927040384341.Spec : Prop :=
  ∀ n, P11124343927040384341.a n = A188297 (n + 1)

end A188297

/-! ## A188297.P8386968083741081876

`A316320(n)%A110012(n+1)`
-/

namespace A188297.P8386968083741081876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316320 n) (A110012 (n + 1))

end

end A188297.P8386968083741081876

namespace A188297

/-- `A316320(n)%A110012(n+1)` -/
def P8386968083741081876.Spec : Prop :=
  ∀ n, P8386968083741081876.a n = A188297 (n + 1)

end A188297

/-! ## A188297.P2016096964601871346

`and(A022846(n), A188038(n+1))`
-/

namespace A188297.P2016096964601871346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A022846 n) (A188038 (n + 1))

end

end A188297.P2016096964601871346

namespace A188297

/-- `and(A022846(n), A188038(n+1))` -/
def P2016096964601871346.Spec : Prop :=
  ∀ n, P2016096964601871346.a n = A188297 (n + 1)

end A188297

/-! ## A188297.P17573663798893417450

`and(A036697(n), A188295(n+1))`
-/

namespace A188297.P17573663798893417450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A036697 n) (A188295 (n + 1))

end

end A188297.P17573663798893417450

namespace A188297

/-- `and(A036697(n), A188295(n+1))` -/
def P17573663798893417450.Spec : Prop :=
  ∀ n, P17573663798893417450.a n = A188297 (n + 1)

end A188297

/-! ## A188297.P2059572021917597696

`and(A036697(n), A188321(n+1))`
-/

namespace A188297.P2059572021917597696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A036697 n) (A188321 (n + 1))

end

end A188297.P2059572021917597696

namespace A188297

/-- `and(A036697(n), A188321(n+1))` -/
def P2059572021917597696.Spec : Prop :=
  ∀ n, P2059572021917597696.a n = A188297 (n + 1)

end A188297

/-! ## A188297.P5175372321494348235

`and(A188038(n+1), A265744(n))`
-/

namespace A188297.P5175372321494348235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A188038 (n + 1)) (A265744 n)

end

end A188297.P5175372321494348235

namespace A188297

/-- `and(A188038(n+1), A265744(n))` -/
def P5175372321494348235.Spec : Prop :=
  ∀ n, P5175372321494348235.a n = A188297 (n + 1)

end A188297

/-! ## A188297.P6681659943952173661

`and(A188038(n+1), A352340(n))`
-/

namespace A188297.P6681659943952173661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A188038 (n + 1)) (A352340 n)

end

end A188297.P6681659943952173661

namespace A188297

/-- `and(A188038(n+1), A352340(n))` -/
def P6681659943952173661.Spec : Prop :=
  ∀ n, P6681659943952173661.a n = A188297 (n + 1)

end A188297

/-! ## A188297.P13311094549099784095

`and(A188038(n+1), A352417(n))`
-/

namespace A188297.P13311094549099784095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A188038 (n + 1)) (A352417 n)

end

end A188297.P13311094549099784095

namespace A188297

/-- `and(A188038(n+1), A352417(n))` -/
def P13311094549099784095.Spec : Prop :=
  ∀ n, P13311094549099784095.a n = A188297 (n + 1)

end A188297

/-! ## A188297.P16723557350814129803

`A289035(n+1)+A188300(n+1)`
-/

namespace A188297.P16723557350814129803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289035 (n + 1) + A188300 (n + 1)

end

end A188297.P16723557350814129803

namespace A188297

/-- `A289035(n+1)+A188300(n+1)` -/
def P16723557350814129803.Spec : Prop :=
  ∀ n, P16723557350814129803.a n = A188297 (n + 1)

theorem P16723557350814129803.correct : P16723557350814129803.Spec := by
  intro n
  simp only [A188297, Nat.add_sub_cancel, A188297.P16723557350814129803.a, A188297.P11306489375432585574.a, A049472, A049472.P13396613520496134978.a, A144611, A144611.P4502785910793771792.a, A188300, A188300.P13558209889286680429.a, A289035, A289035.P15604890525171698629.a, A006337, A006337.P7691167176776546628.a, A083035, A083035.P5765933853908214496.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A188297

/-! ## A188297.P14536716698649611641

`A188295(n+1-A188295(n+1))`
-/

namespace A188297.P14536716698649611641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188295 ((n + 1 : ℤ) - A188295 (n + 1)).toNat

end

end A188297.P14536716698649611641

namespace A188297

/-- `A188295(n+1-A188295(n+1))` -/
def P14536716698649611641.Spec : Prop :=
  ∀ n, P14536716698649611641.a n = A188297 (n + 1)

end A188297

/-! ## A188297.P13566086421139420227

`A063534(n+1)%A110012(n+1)`
-/

namespace A188297.P13566086421139420227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063534 (n + 1)) (A110012 (n + 1))

end

end A188297.P13566086421139420227

namespace A188297

/-- `A063534(n+1)%A110012(n+1)` -/
def P13566086421139420227.Spec : Prop :=
  ∀ n, P13566086421139420227.a n = A188297 (n + 1)

end A188297

/-! ## A188297.P5047500707640852763

`A091361(n+1)%A110012(n+1)`
-/

namespace A188297.P5047500707640852763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091361 (n + 1)) (A110012 (n + 1))

end

end A188297.P5047500707640852763

namespace A188297

/-- `A091361(n+1)%A110012(n+1)` -/
def P5047500707640852763.Spec : Prop :=
  ∀ n, P5047500707640852763.a n = A188297 (n + 1)

end A188297

/-! ## A188297.P7113104691569160108

`A112773(n+1)%A110012(n+1)`
-/

namespace A188297.P7113104691569160108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112773 (n + 1)) (A110012 (n + 1))

end

end A188297.P7113104691569160108

namespace A188297

/-- `A112773(n+1)%A110012(n+1)` -/
def P7113104691569160108.Spec : Prop :=
  ∀ n, P7113104691569160108.a n = A188297 (n + 1)

end A188297

/-! ## A188297.P15645528203185243128

`A161345(n+1)%A110012(n+1)`
-/

namespace A188297.P15645528203185243128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161345 (n + 1)) (A110012 (n + 1))

end

end A188297.P15645528203185243128

namespace A188297

/-- `A161345(n+1)%A110012(n+1)` -/
def P15645528203185243128.Spec : Prop :=
  ∀ n, P15645528203185243128.a n = A188297 (n + 1)

end A188297

/-!
# A188298: Positions of 0 in A188297; complement of A188299.

The programs for A188298, the canonical program `A188298.P12068774585281216890` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188298 has offset 1).

The definition of A188298 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188298.P11739909394392578216

`comp[2*ceil(n/sqrt(2))+n]`
-/

namespace A188298.P11739909394392578216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈(n : ℝ) / Real.sqrt (2 : ℝ)⌉ + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A188298.P11739909394392578216

namespace A188298

/-- `comp[2*ceil(n/sqrt(2))+n]` -/
def P11739909394392578216.Spec : Prop :=
  ∀ n, (P11739909394392578216.a n : ℤ) = A188298 (n + 1)

end A188298

/-! ## A188298.P16198987642048806848

`comp[A188376(n+1)+1]+1`
-/

namespace A188298.P16198987642048806848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188376 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A188298.P16198987642048806848

namespace A188298

/-- `comp[A188376(n+1)+1]+1` -/
def P16198987642048806848.Spec : Prop :=
  ∀ n, (P16198987642048806848.a n : ℤ) = A188298 (n + 1)

end A188298

/-! ## A188298.P12068774585281216890

`A001951(floor(n/2))+n+1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A188298

/-- `A001951(floor(n/2))+n+1` -/
def P12068774585281216890.Spec : Prop :=
  ∀ n, P12068774585281216890.a n = A188298 (n + 1)

theorem P12068774585281216890.correct : P12068774585281216890.Spec := by
  intro n
  simp only [A188298, Nat.add_sub_cancel]

end A188298

/-! ## A188298.P13936827462239570886

`A001951(A004526(n))+1+n`
-/

namespace A188298.P13936827462239570886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (A004526 n).toNat + 1 + (n : ℤ)

end

end A188298.P13936827462239570886

namespace A188298

/-- `A001951(A004526(n))+1+n` -/
def P13936827462239570886.Spec : Prop :=
  ∀ n, P13936827462239570886.a n = A188298 (n + 1)

theorem P13936827462239570886.correct : P13936827462239570886.Spec := by
  intro n
  simp only [A188298, Nat.add_sub_cancel, A188298.P13936827462239570886.a, A188298.P12068774585281216890.a, A001951, A001951.P3206377842744091648.a, A004526, A004526.P10084182425416171735.a, A000196, A000196.P15434771586934192083.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A188298

/-! ## A188298.P7243288534370508324

`A336109(n+1)+A004526(n)`
-/

namespace A188298.P7243288534370508324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336109 (n + 1) + A004526 n

end

end A188298.P7243288534370508324

namespace A188298

/-- `A336109(n+1)+A004526(n)` -/
def P7243288534370508324.Spec : Prop :=
  ∀ n, P7243288534370508324.a n = A188298 (n + 1)

end A188298

/-! ## A188298.P12234620449452880340

`A336109(n+1)+A008619(n)-1`
-/

namespace A188298.P12234620449452880340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336109 (n + 1) + (A008619 n - 1)

end

end A188298.P12234620449452880340

namespace A188298

/-- `A336109(n+1)+A008619(n)-1` -/
def P12234620449452880340.Spec : Prop :=
  ∀ n, P12234620449452880340.a n = A188298 (n + 1)

end A188298

/-! ## A188298.P7151491470858029436

`A188045(n+1)-A336109(n+1)`
-/

namespace A188298.P7151491470858029436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188045 (n + 1) - A336109 (n + 1)

end

end A188298.P7151491470858029436

namespace A188298

/-- `A188045(n+1)-A336109(n+1)` -/
def P7151491470858029436.Spec : Prop :=
  ∀ n, P7151491470858029436.a n = A188298 (n + 1)

end A188298

/-! ## A188298.P12006555863482540614

`∪[A120753(n+1), A188039(n+1)]`
-/

namespace A188298.P12006555863482540614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188298.P12006555863482540614

namespace A188298

/-- `∪[A120753(n+1), A188039(n+1)]` -/
def P12006555863482540614.Spec : Prop :=
  ∀ n, (P12006555863482540614.a n : ℤ) = A188298 (n + 1)

end A188298

/-! ## A188298.P3969744168464615245

`∪[A188039(n+1), A188265(n+1)]`
-/

namespace A188298.P3969744168464615245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188265 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188298.P3969744168464615245

namespace A188298

/-- `∪[A188039(n+1), A188265(n+1)]` -/
def P3969744168464615245.Spec : Prop :=
  ∀ n, (P3969744168464615245.a n : ℤ) = A188298 (n + 1)

end A188298

/-! ## A188298.P15129418887850089028

`A001951(A336109(n+1))`
-/

namespace A188298.P15129418887850089028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (A336109 (n + 1)).toNat

end

end A188298.P15129418887850089028

namespace A188298

/-- `A001951(A336109(n+1))` -/
def P15129418887850089028.Spec : Prop :=
  ∀ n, P15129418887850089028.a n = A188298 (n + 1)

end A188298

/-! ## A188298.P607842574004038578

`∩[A289036(n+1), A001951(n)]`
-/

namespace A188298.P607842574004038578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188298.P607842574004038578

namespace A188298

/-- `∩[A289036(n+1), A001951(n)]` -/
def P607842574004038578.Spec : Prop :=
  ∀ n, (P607842574004038578.a n : ℤ) = A188298 (n + 1)

end A188298

/-! ## A188298.P14621711263654727169

`∩[A188372(n+1), A289036(n+1)]`
-/

namespace A188298.P14621711263654727169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289036 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188298.P14621711263654727169

namespace A188298

/-- `∩[A188372(n+1), A289036(n+1)]` -/
def P14621711263654727169.Spec : Prop :=
  ∀ n, (P14621711263654727169.a n : ℤ) = A188298 (n + 1)

end A188298

/-! ## A188298.P3424204811176973695

`∩[A188397(n+1), A289036(n+1)]`
-/

namespace A188298.P3424204811176973695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188397 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289036 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188298.P3424204811176973695

namespace A188298

/-- `∩[A188397(n+1), A289036(n+1)]` -/
def P3424204811176973695.Spec : Prop :=
  ∀ n, (P3424204811176973695.a n : ℤ) = A188298 (n + 1)

end A188298

/-! ## A188298.P6028942189426798967

`A188301(∑[char[2*n]]+n)`
-/

namespace A188298.P6028942189426798967
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188301 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A188298.P6028942189426798967

namespace A188298

/-- `A188301(∑[char[2*n]]+n)` -/
def P6028942189426798967.Spec : Prop :=
  ∀ n, P6028942189426798967.a n = A188298 (n + 1)

end A188298

/-! ## A188298.P1266305563675517881

`∩[A188301(n+1), A289036(n+1)]`
-/

namespace A188298.P1266305563675517881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188301 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289036 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188298.P1266305563675517881

namespace A188298

/-- `∩[A188301(n+1), A289036(n+1)]` -/
def P1266305563675517881.Spec : Prop :=
  ∀ n, (P1266305563675517881.a n : ℤ) = A188298 (n + 1)

end A188298

/-! ## A188298.P10538464551236818271

`A188301(A001651(n+1)+1)-1`
-/

namespace A188298.P10538464551236818271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188301 (A001651 (n + 1) + 1).toNat - 1

end

end A188298.P10538464551236818271

namespace A188298

/-- `A188301(A001651(n+1)+1)-1` -/
def P10538464551236818271.Spec : Prop :=
  ∀ n, P10538464551236818271.a n = A188298 (n + 1)

end A188298

/-! ## A188298.P12488872328190997140

`eq[0, n*A188297(n+1)]+1`
-/

namespace A188298.P12488872328190997140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A188297 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A188298.P12488872328190997140

namespace A188298

/-- `eq[0, n*A188297(n+1)]+1` -/
def P12488872328190997140.Spec : Prop :=
  ∀ n, (P12488872328190997140.a n : ℤ) = A188298 (n + 1)

end A188298

/-! ## A188298.P14921822508868640742

`filter[A289036(n+1), A188395(#)]`
-/

namespace A188298.P14921822508868640742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289036 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188395 (f1 j).toNat = 1) n)

end

end A188298.P14921822508868640742

namespace A188298

/-- `filter[A289036(n+1), A188395(#)]` -/
def P14921822508868640742.Spec : Prop :=
  ∀ n, P14921822508868640742.a n = A188298 (n + 1)

end A188298

/-! ## A188298.P418163007308858159

`Δ[n²]+A001951(A002265(2*n))-n`
-/

namespace A188298.P418163007308858159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (A001951 (A002265 (2 * n)).toNat - (n : ℤ))

end

end A188298.P418163007308858159

namespace A188298

/-- `Δ[n²]+A001951(A002265(2*n))-n` -/
def P418163007308858159.Spec : Prop :=
  ∀ n, P418163007308858159.a n = A188298 (n + 1)

theorem P418163007308858159.correct : P418163007308858159.Spec := by
  intro n
  simp only [A188298, Nat.add_sub_cancel, A188298.P418163007308858159.f1, A188298.P418163007308858159.a, A188298.P12068774585281216890.a, A001951, A001951.P3206377842744091648.a, A002265, A002265.P2157561802369677908.a, A000196, A000196.P15434771586934192083.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A188298

/-! ## A188298.P1365601224489375477

`A336109(A336109(n+1)+A188040(n+1))-A188040(n+1)`
-/

namespace A188298.P1365601224489375477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336109 (A336109 (n + 1) + A188040 (n + 1)).toNat - A188040 (n + 1)

end

end A188298.P1365601224489375477

namespace A188298

/-- `A336109(A336109(n+1)+A188040(n+1))-A188040(n+1)` -/
def P1365601224489375477.Spec : Prop :=
  ∀ n, P1365601224489375477.a n = A188298 (n + 1)

end A188298

/-!
# A188299: Positions of 1 in A188297; complement of A188298.

The programs for A188299, the canonical program `A188299.P18032753301951108986` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188299 has offset 1).

The definition of A188299 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188299.P11891768663182533440

`∑[3^Δ[floor(n/sqrt(2))]]+2`
-/

namespace A188299.P11891768663182533440
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.sqrt (2 : ℝ)⌋

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (f2 (n + 1) - f2 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A188299.P11891768663182533440

namespace A188299

/-- `∑[3^Δ[floor(n/sqrt(2))]]+2` -/
def P11891768663182533440.Spec : Prop :=
  ∀ n, P11891768663182533440.a n = (A188299 (n + 1) : ℚ)

end A188299

/-! ## A188299.P18032753301951108986

`abs(or(1, A001952(n+1))-n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A188299

/-- `abs(or(1, A001952(n+1))-n)` -/
def P18032753301951108986.Spec : Prop :=
  ∀ n, P18032753301951108986.a n = A188299 (n + 1)

theorem P18032753301951108986.correct : P18032753301951108986.Spec := by
  intro n
  simp only [A188299, Nat.add_sub_cancel]

end A188299

/-! ## A188299.P2325861395373664158

`3*((A188376(n+1)-1)/3+1)`
-/

namespace A188299.P2325861395373664158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((A188376 (n + 1) - 1 : ℚ) / 3 + 1)

end

end A188299.P2325861395373664158

namespace A188299

/-- `3*((A188376(n+1)-1)/3+1)` -/
def P2325861395373664158.Spec : Prop :=
  ∀ n, P2325861395373664158.a n = (A188299 (n + 1) : ℚ)

end A188299

/-! ## A188299.P8987571327705216141

`∑[A046489(Δ[A049474(n)])]`
-/

namespace A188299.P8987571327705216141
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049474 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046489 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188299.P8987571327705216141

namespace A188299

/-- `∑[A046489(Δ[A049474(n)])]` -/
def P8987571327705216141.Spec : Prop :=
  ∀ n, P8987571327705216141.a n = A188299 (n + 1)

end A188299

/-! ## A188299.P9263545385361496344

`∑[A070352(Δ[A049474(n)])]`
-/

namespace A188299.P9263545385361496344
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049474 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070352 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188299.P9263545385361496344

namespace A188299

/-- `∑[A070352(Δ[A049474(n)])]` -/
def P9263545385361496344.Spec : Prop :=
  ∀ n, P9263545385361496344.a n = A188299 (n + 1)

end A188299

/-! ## A188299.P5056404596869588994

`∑[A084221(Δ[A049474(n)])]`
-/

namespace A188299.P5056404596869588994
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049474 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084221 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188299.P5056404596869588994

namespace A188299

/-- `∑[A084221(Δ[A049474(n)])]` -/
def P5056404596869588994.Spec : Prop :=
  ∀ n, P5056404596869588994.a n = A188299 (n + 1)

end A188299

/-! ## A188299.P10528463176204422102

`∑[A128552(Δ[A049474(n)])]`
-/

namespace A188299.P10528463176204422102
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049474 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128552 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188299.P10528463176204422102

namespace A188299

/-- `∑[A128552(Δ[A049474(n)])]` -/
def P10528463176204422102.Spec : Prop :=
  ∀ n, P10528463176204422102.a n = A188299 (n + 1)

end A188299

/-! ## A188299.P9902280626639623574

`∑[A227846(Δ[A049474(n)]+1)]`
-/

namespace A188299.P9902280626639623574
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049474 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227846 (f2 (n + 1) - f2 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188299.P9902280626639623574

namespace A188299

/-- `∑[A227846(Δ[A049474(n)]+1)]` -/
def P9902280626639623574.Spec : Prop :=
  ∀ n, P9902280626639623574.a n = A188299 (n + 1)

end A188299

/-! ## A188299.P9764221286072122700

`∑[A227846(Δ[2*A049474(n)])]`
-/

namespace A188299.P9764221286072122700
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049474 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227846 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188299.P9764221286072122700

namespace A188299

/-- `∑[A227846(Δ[2*A049474(n)])]` -/
def P9764221286072122700.Spec : Prop :=
  ∀ n, P9764221286072122700.a n = A188299 (n + 1)

end A188299

/-! ## A188299.P18149385614512145147

`∪[A001952(n+1), A289037(n+1)]`
-/

namespace A188299.P18149385614512145147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188299.P18149385614512145147

namespace A188299

/-- `∪[A001952(n+1), A289037(n+1)]` -/
def P18149385614512145147.Spec : Prop :=
  ∀ n, (P18149385614512145147.a n : ℤ) = A188299 (n + 1)

end A188299

/-! ## A188299.P10752500907335800634

`∪[A188302(n+1), A289037(n+1)]`
-/

namespace A188299.P10752500907335800634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188302 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188299.P10752500907335800634

namespace A188299

/-- `∪[A188302(n+1), A289037(n+1)]` -/
def P10752500907335800634.Spec : Prop :=
  ∀ n, (P10752500907335800634.a n : ℤ) = A188299 (n + 1)

end A188299

/-! ## A188299.P7484442356204718743

`∪[A188373(n+1), A289037(n+1)]`
-/

namespace A188299.P7484442356204718743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188299.P7484442356204718743

namespace A188299

/-- `∪[A188373(n+1), A289037(n+1)]` -/
def P7484442356204718743.Spec : Prop :=
  ∀ n, (P7484442356204718743.a n : ℤ) = A188299 (n + 1)

end A188299

/-! ## A188299.P10312652861665421549

`∪[A188396(n+1), A289037(n+1)]`
-/

namespace A188299.P10312652861665421549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188299.P10312652861665421549

namespace A188299

/-- `∪[A188396(n+1), A289037(n+1)]` -/
def P10312652861665421549.Spec : Prop :=
  ∀ n, (P10312652861665421549.a n : ℤ) = A188299 (n + 1)

end A188299

/-! ## A188299.P13033477767439167209

`∪[A190763(n+1), A289037(n+1)]`
-/

namespace A188299.P13033477767439167209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188299.P13033477767439167209

namespace A188299

/-- `∪[A190763(n+1), A289037(n+1)]` -/
def P13033477767439167209.Spec : Prop :=
  ∀ n, (P13033477767439167209.a n : ℤ) = A188299 (n + 1)

end A188299

/-! ## A188299.P16792845882420812635

`∪[A190767(n+1), A289037(n+1)]`
-/

namespace A188299.P16792845882420812635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190767 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188299.P16792845882420812635

namespace A188299

/-- `∪[A190767(n+1), A289037(n+1)]` -/
def P16792845882420812635.Spec : Prop :=
  ∀ n, (P16792845882420812635.a n : ℤ) = A188299 (n + 1)

end A188299

/-! ## A188299.P16464461037266854667

`∪[A190776(n+1), A289037(n+1)]`
-/

namespace A188299.P16464461037266854667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190776 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188299.P16464461037266854667

namespace A188299

/-- `∪[A190776(n+1), A289037(n+1)]` -/
def P16464461037266854667.Spec : Prop :=
  ∀ n, (P16464461037266854667.a n : ℤ) = A188299 (n + 1)

end A188299

/-! ## A188299.P3284848672733834893

`(A188319(n+2)-(n+1))/2`
-/

namespace A188299.P3284848672733834893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188319 (n + 2) - (n + 1 : ℤ) : ℚ) / 2

end

end A188299.P3284848672733834893

namespace A188299

/-- `(A188319(n+2)-(n+1))/2` -/
def P3284848672733834893.Spec : Prop :=
  ∀ n, P3284848672733834893.a n = (A188299 (n + 1) : ℚ)

end A188299

/-! ## A188299.P9496426008034263619

`∑[A000201(Δ[A285074(n+1)])]`
-/

namespace A188299.P9496426008034263619
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285074 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188299.P9496426008034263619

namespace A188299

/-- `∑[A000201(Δ[A285074(n+1)])]` -/
def P9496426008034263619.Spec : Prop :=
  ∀ n, P9496426008034263619.a n = A188299 (n + 1)

end A188299

/-! ## A188299.P13599008500544005540

`∑[A285074(Δ[A285074(n+1)])]`
-/

namespace A188299.P13599008500544005540
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285074 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285074 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188299.P13599008500544005540

namespace A188299

/-- `∑[A285074(Δ[A285074(n+1)])]` -/
def P13599008500544005540.Spec : Prop :=
  ∀ n, P13599008500544005540.a n = A188299 (n + 1)

end A188299

