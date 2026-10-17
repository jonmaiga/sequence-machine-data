import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
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
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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

/-!
# A241100: Smallest prime with length n having at least n-1 identical digits.

The programs for A241100, there is no canonical definition to state claims against.
-/

/-! ## A241100.P5321177867747755842

`p?[A007088(n)+(n^6)%21]`
-/

namespace A241100.P5321177867747755842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n + ((n ^ 6 % 21 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A241100.P5321177867747755842

/-! ## A241100.P10947952851569496620

`p?[A070644(n)+A007088(n)]`
-/

namespace A241100.P10947952851569496620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070644 n + A007088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A241100.P10947952851569496620

/-!
# A241101: Primes p such that (p^3 - 4)/3 is prime.

The programs for A241101, there is no canonical definition to state claims against.
-/

/-! ## A241101.P15808410830116132895

`p?[A010460(n+1)+6]`
-/

namespace A241101.P15808410830116132895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010460 (n + 1) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A241101.P15808410830116132895

/-! ## A241101.P10496055300868439844

`p?[(n-1)^val(A325563(n+1), 3)]`
-/

namespace A241101.P10496055300868439844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ SequenceMachineLib.valuation (A325563 (n + 1)).toNat 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A241101.P10496055300868439844

/-! ## A241101.P1431852158984891329

`p?[A329963(n+4)^3^(n%2)]`
-/

namespace A241101.P1431852158984891329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329963 (n + 4) ^ 3 ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A241101.P1431852158984891329

/-! ## A241101.P13730956241075972466

`p?[record[A087507(A344954(n+1))]]`
-/

namespace A241101.P13730956241075972466
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087507 (A344954 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A241101.P13730956241075972466

/-!
# A241102: Semiprimes of the form prime(n+1)^3 - prime(n)^3.

The programs for A241102, there is no canonical definition to state claims against.
-/

/-! ## A241102.P10109902723409105815

`2*∩[A002648(n+1), A243761(n+1)]`
-/

namespace A241102.P10109902723409105815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002648 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243761 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A241102.P10109902723409105815

/-! ## A241102.P1858425805907980353

`2*∩[A243761(n+1), A158480(n)]`
-/

namespace A241102.P1858425805907980353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243761 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158480 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A241102.P1858425805907980353

/-! ## A241102.P14678384045634049609

`2*A360490(n+1)`
-/

namespace A241102.P14678384045634049609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A360490 (n + 1)

end

end A241102.P14678384045634049609

/-! ## A241102.P14763251747200873434

`lcm(A360490(n+1), A362114(n))`
-/

namespace A241102.P14763251747200873434
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A360490 (n + 1)) (A362114 n)

end

end A241102.P14763251747200873434

/-! ## A241102.P1944883648001757067

`A360490(A000027(n+1))+A360490(n+1)`
-/

namespace A241102.P1944883648001757067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360490 (A000027 (n + 1)).toNat + A360490 (n + 1)

end

end A241102.P1944883648001757067

/-!
# A241103: Number of n X 3 0..2 arrays with no element equal to one or three horizontal or vertical neighbors, with new values 0..2 introduced in row major order.

The programs for A241103, the canonical program `A241103.P11378037602742763367` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241103 has offset 1).

The definition of A241103 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A241103.P11378037602742763367

`3*a(n-1)+8*a(n-2)+16*a(n-3)` with `a(0)=2, a(1)=11, a(2)=58`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A241103

/-- `3*a(n-1)+8*a(n-2)+16*a(n-3)` -/
def P11378037602742763367.Spec : Prop :=
  ∀ n, (P11378037602742763367.a n : ℤ) = A241103 (n + 1)

theorem P11378037602742763367.correct : P11378037602742763367.Spec := by
  intro n
  simp only [A241103, Nat.add_sub_cancel]

end A241103

/-! ## A241103.P15608517459046249888

`A241108(∑[n+2]+4)`
-/

namespace A241103.P15608517459046249888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241108 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A241103.P15608517459046249888

namespace A241103

/-- `A241108(∑[n+2]+4)` -/
def P15608517459046249888.Spec : Prop :=
  ∀ n, P15608517459046249888.a n = A241103 (n + 1)

end A241103

/-! ## A241103.P1423186128613994887

`or(2, A241108(A167614(n+1)))`
-/

namespace A241103.P1423186128613994887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A241108 (A167614 (n + 1)).toNat)

end

end A241103.P1423186128613994887

namespace A241103

/-- `or(2, A241108(A167614(n+1)))` -/
def P1423186128613994887.Spec : Prop :=
  ∀ n, P1423186128613994887.a n = A241103 (n + 1)

end A241103

/-! ## A241103.P172762347382985952

`A241108(A167614(n+1))+A011731(n)`
-/

namespace A241103.P172762347382985952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241108 (A167614 (n + 1)).toNat + A011731 n

end

end A241103.P172762347382985952

namespace A241103

/-- `A241108(A167614(n+1))+A011731(n)` -/
def P172762347382985952.Spec : Prop :=
  ∀ n, P172762347382985952.a n = A241103 (n + 1)

end A241103

/-! ## A241103.P18261201971845054032

`A241108(A167614(n+1))+A025443(n)`
-/

namespace A241103.P18261201971845054032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241108 (A167614 (n + 1)).toNat + A025443 n

end

end A241103.P18261201971845054032

namespace A241103

/-- `A241108(A167614(n+1))+A025443(n)` -/
def P18261201971845054032.Spec : Prop :=
  ∀ n, P18261201971845054032.a n = A241103 (n + 1)

end A241103

/-!
# A241104: Number of nX4 0..2 arrays with no element equal to one or three horizontal or vertical neighbors, with new values 0..2 introduced in row major order.

The programs for A241104, there is no canonical definition to state claims against.
-/

/-! ## A241104.P16358939285350257843

`A241108(∑[n+3]+7)`
-/

namespace A241104.P16358939285350257843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241108 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A241104.P16358939285350257843

/-!
# A241105: Number of nX5 0..2 arrays with no element equal to one or three horizontal or vertical neighbors, with new values 0..2 introduced in row major order.

The programs for A241105, there is no canonical definition to state claims against.
-/

/-! ## A241105.P10990753552236687004

`A241108(A374005(n+1))`
-/

namespace A241105.P10990753552236687004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241108 (A374005 (n + 1)).toNat

end

end A241105.P10990753552236687004

/-! ## A241105.P18029913378318584745

`A241108(A167499(n+3))`
-/

namespace A241105.P18029913378318584745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241108 (A167499 (n + 3)).toNat

end

end A241105.P18029913378318584745

/-! ## A241105.P2224348984645695113

`A241108(A155212(n)+13)`
-/

namespace A241105.P2224348984645695113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241108 (A155212 n + 13).toNat

end

end A241105.P2224348984645695113

/-! ## A241105.P2371711513504799582

`A241108(A056000(n)+15)`
-/

namespace A241105.P2371711513504799582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241108 (A056000 n + 15).toNat

end

end A241105.P2371711513504799582

/-! ## A241105.P10612508712974341348

`A241108(eq[7, A066657(n)])`
-/

namespace A241105.P10612508712974341348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241108 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241105.P10612508712974341348

/-!
# A241106: Number of nX6 0..2 arrays with no element equal to one or three horizontal or vertical neighbors, with new values 0..2 introduced in row major order.

The programs for A241106, there is no canonical definition to state claims against.
-/

/-! ## A241106.P11138969939241222966

`A241108(A374007(n+1))`
-/

namespace A241106.P11138969939241222966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241108 (A374007 (n + 1)).toNat

end

end A241106.P11138969939241222966

/-! ## A241106.P4770024936387079867

`A241108(A166136(n+4))`
-/

namespace A241106.P4770024936387079867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241108 (A166136 (n + 4)).toNat

end

end A241106.P4770024936387079867

/-! ## A241106.P2458566205107134532

`A241108(A056115(n)+21)`
-/

namespace A241106.P2458566205107134532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241108 (A056115 n + 21).toNat

end

end A241106.P2458566205107134532

/-! ## A241106.P13856848268122274008

`A241108(Δ[A264443(n)]+10)`
-/

namespace A241106.P13856848268122274008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241108 (f1 (n + 1) - f1 n + 10).toNat

end

end A241106.P13856848268122274008

/-! ## A241106.P8646938255878994088

`A241108(A167499(n+4)+1)`
-/

namespace A241106.P8646938255878994088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241108 (A167499 (n + 4) + 1).toNat

end

end A241106.P8646938255878994088

/-!
# A241107: Number of nX7 0..2 arrays with no element equal to one or three horizontal or vertical neighbors, with new values 0..2 introduced in row major order.

The programs for A241107, there is no canonical definition to state claims against.
-/

/-! ## A241107.P11945450872269457365

`A241108(A374008(n+1))`
-/

namespace A241107.P11945450872269457365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241108 (A374008 (n + 1)).toNat

end

end A241107.P11945450872269457365

/-! ## A241107.P18209756403126914490

`A241108(A167487(n+5))`
-/

namespace A241107.P18209756403126914490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241108 (A167487 (n + 5)).toNat

end

end A241107.P18209756403126914490

/-! ## A241107.P2402345087519587644

`A241108(A056119(n)+28)`
-/

namespace A241107.P2402345087519587644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241108 (A056119 n + 28).toNat

end

end A241107.P2402345087519587644

/-! ## A241107.P9220490070993802403

`A241108(eq[11, A066657(n)])`
-/

namespace A241107.P9220490070993802403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241108 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241107.P9220490070993802403

/-! ## A241107.P12622193496390895744

`A241108(eq[8, A131818(n+1)])`
-/

namespace A241107.P12622193496390895744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241108 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241107.P12622193496390895744

/-!
# A241108: T(n,k)=Number of nXk 0..2 arrays with no element equal to one or three horizontal or vertical neighbors, with new values 0..2 introduced in row major order.

The programs for A241108, there is no canonical definition to state claims against.
-/

/-! ## A241108.P7116710637275747589

`A240893(n+1)+A011731(A022171(n))`
-/

namespace A241108.P7116710637275747589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240893 (n + 1) + A011731 (A022171 n).toNat

end

end A241108.P7116710637275747589

/-! ## A241108.P15718035536316688

`A240893(n+1)+A055641(A002843(n))`
-/

namespace A241108.P15718035536316688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240893 (n + 1) + A055641 (A002843 n).toNat

end

end A241108.P15718035536316688

/-! ## A241108.P16377250761253995859

`A240893(n+1)+A037824(A022173(n))`
-/

namespace A241108.P16377250761253995859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240893 (n + 1) + A037824 (A022173 n).toNat

end

end A241108.P16377250761253995859

/-! ## A241108.P3422933152404270983

`A240893(n+1)+A055641(A022112(n))`
-/

namespace A241108.P3422933152404270983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240893 (n + 1) + A055641 (A022112 n).toNat

end

end A241108.P3422933152404270983

/-! ## A241108.P1253020095193745113

`A240893(n+1)+A102683(A000579(n))`
-/

namespace A241108.P1253020095193745113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240893 (n + 1) + A102683 (A000579 n).toNat

end

end A241108.P1253020095193745113

/-!
# A241109: Number of nX3 0..2 arrays with no element equal to exactly three horizontal or vertical neighbors, with new values 0..2 introduced in row major order.

The programs for A241109, there is no canonical definition to state claims against.
-/

/-! ## A241109.P10274937353818693026

`A241114(∑[n+2]+4)`
-/

namespace A241109.P10274937353818693026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241114 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A241109.P10274937353818693026

/-! ## A241109.P13951382910576993506

`A241114(A167614(n+1))%A238355(n)`
-/

namespace A241109.P13951382910576993506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241114 (A167614 (n + 1)).toNat) (A238355 (n + 10))

end

end A241109.P13951382910576993506

/-! ## A241109.P15085226975665818000

`lcm(A033999(n), A241114(A167614(n+1)))`
-/

namespace A241109.P15085226975665818000
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A241114 (A167614 (n + 1)).toNat)

end

end A241109.P15085226975665818000

/-! ## A241109.P7871417517295802164

`or(A010893(n), A241114(A167614(n+1)))`
-/

namespace A241109.P7871417517295802164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010893 (n + 13)) (A241114 (A167614 (n + 1)).toNat)

end

end A241109.P7871417517295802164

/-! ## A241109.P1793364622703279503

`A241114(A167614(n+1))*A290105(n+1)`
-/

namespace A241109.P1793364622703279503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241114 (A167614 (n + 1)).toNat * A290105 (n + 1)

end

end A241109.P1793364622703279503

/-!
# A241110: Number of nX4 0..2 arrays with no element equal to exactly three horizontal or vertical neighbors, with new values 0..2 introduced in row major order.

The programs for A241110, there is no canonical definition to state claims against.
-/

/-! ## A241110.P14670204941807675439

`A241114(A374004(n+1))`
-/

namespace A241110.P14670204941807675439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241114 (A374004 (n + 1)).toNat

end

end A241110.P14670204941807675439

/-! ## A241110.P7818628284110154749

`A241114(A141214(n)+7)`
-/

namespace A241110.P7818628284110154749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241114 (A141214 n + 7).toNat

end

end A241110.P7818628284110154749

/-! ## A241110.P906847528487325181

`A241114(A052905(n)+9)`
-/

namespace A241110.P906847528487325181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241114 (A052905 n + 9).toNat

end

end A241110.P906847528487325181

/-! ## A241110.P2044551280157497528

`A241114(A055999(n)+10)`
-/

namespace A241110.P2044551280157497528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241114 (A055999 n + 10).toNat

end

end A241110.P2044551280157497528

/-! ## A241110.P2761070313193941253

`A241114(A167614(n+2)+1)`
-/

namespace A241110.P2761070313193941253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241114 (A167614 (n + 2) + 1).toNat

end

end A241110.P2761070313193941253

/-!
# A241111: Number of nX5 0..2 arrays with no element equal to exactly three horizontal or vertical neighbors, with new values 0..2 introduced in row major order.

The programs for A241111, there is no canonical definition to state claims against.
-/

/-! ## A241111.P16722370340232719219

`A241114(A374005(n+1))`
-/

namespace A241111.P16722370340232719219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241114 (A374005 (n + 1)).toNat

end

end A241111.P16722370340232719219

/-! ## A241111.P766344915381075498

`A241114(A056000(n)+15)`
-/

namespace A241111.P766344915381075498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241114 (A056000 n + 15).toNat

end

end A241111.P766344915381075498

/-! ## A241111.P3633824093714072724

`A241114(A052905(n+3)-Δ[n²])`
-/

namespace A241111.P3633824093714072724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241114 (A052905 (n + 3) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A241111.P3633824093714072724

/-! ## A241111.P12712445355816953697

`A241114(Δ[A264443(n)])`
-/

namespace A241111.P12712445355816953697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241114 (f1 (n + 1) - f1 n).toNat

end

end A241111.P12712445355816953697

/-! ## A241111.P6852850944629137685

`A241114(eq[4, A193592(n)])`
-/

namespace A241111.P6852850944629137685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241114 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241111.P6852850944629137685

/-!
# A241112: Number of nX6 0..2 arrays with no element equal to exactly three horizontal or vertical neighbors, with new values 0..2 introduced in row major order.

The programs for A241112, there is no canonical definition to state claims against.
-/

/-! ## A241112.P5249005889904620000

`A241114(A374007(n+1))`
-/

namespace A241112.P5249005889904620000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241114 (A374007 (n + 1)).toNat

end

end A241112.P5249005889904620000

/-! ## A241112.P5990348766542003348

`A241114(A052905(n+3))`
-/

namespace A241112.P5990348766542003348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241114 (A052905 (n + 3)).toNat

end

end A241112.P5990348766542003348

/-! ## A241112.P11209370557393491091

`A241114(eq[6, A200370(n+1)])`
-/

namespace A241112.P11209370557393491091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241114 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241112.P11209370557393491091

/-! ## A241112.P13847793408859373145

`A241114(Δ[A264443(n+1)]-1)`
-/

namespace A241112.P13847793408859373145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241114 (f1 (n + 1) - f1 n - 1).toNat

end

end A241112.P13847793408859373145

/-!
# A241113: Number of nX7 0..2 arrays with no element equal to exactly three horizontal or vertical neighbors, with new values 0..2 introduced in row major order.

The programs for A241113, there is no canonical definition to state claims against.
-/

/-! ## A241113.P10221260998064538117

`A241114(A374008(n+1))`
-/

namespace A241113.P10221260998064538117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241114 (A374008 (n + 1)).toNat

end

end A241113.P10221260998064538117

/-! ## A241113.P15796978072466721570

`A241114(A055999(n+4))`
-/

namespace A241113.P15796978072466721570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241114 (A055999 (n + 4)).toNat

end

end A241113.P15796978072466721570

/-! ## A241113.P12157399351020625087

`A241114(eq[4, A219347(n)])`
-/

namespace A241113.P12157399351020625087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241114 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241113.P12157399351020625087

/-! ## A241113.P16945679073497109187

`A241114(eq[6, A193592(n)])`
-/

namespace A241113.P16945679073497109187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241114 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241113.P16945679073497109187

/-!
# A241115: Number of nX3 0..3 arrays with no element equal to exactly three horizontal or vertical neighbors, with new values 0..3 introduced in row major order.

The programs for A241115, there is no canonical definition to state claims against.
-/

/-! ## A241115.P7678339446164950797

`A241119(∑[n+2]+4)`
-/

namespace A241115.P7678339446164950797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241119 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A241115.P7678339446164950797

/-! ## A241115.P15973057359861001528

`lcm((-1)^val(n+1, 2), A241119(A167499(n)+n))`
-/

namespace A241115.P15973057359861001528
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ SequenceMachineLib.valuation (n + 1) 2) (A241119 (A167499 n + (n : ℤ)).toNat)

end

end A241115.P15973057359861001528

/-! ## A241115.P12288531407502326241

`A241119(A167614(n+1))+A184955(n)`
-/

namespace A241115.P12288531407502326241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241119 (A167614 (n + 1)).toNat + A184955 n

end

end A241115.P12288531407502326241

/-! ## A241115.P15586961198078151324

`A243832(n)+A241119(A167614(n+1))`
-/

namespace A241115.P15586961198078151324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243832 n + A241119 (A167614 (n + 1)).toNat

end

end A241115.P15586961198078151324

/-! ## A241115.P16189917323600660326

`A219924(n)*A241119(A167614(n+1))`
-/

namespace A241115.P16189917323600660326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219924 n * A241119 (A167614 (n + 1)).toNat

end

end A241115.P16189917323600660326

/-!
# A241116: Number of nX4 0..3 arrays with no element equal to exactly three horizontal or vertical neighbors, with new values 0..3 introduced in row major order.

The programs for A241116, there is no canonical definition to state claims against.
-/

/-! ## A241116.P5522942597978320873

`A241119(A141214(n)+7)`
-/

namespace A241116.P5522942597978320873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241119 (A141214 n + 7).toNat

end

end A241116.P5522942597978320873

/-! ## A241116.P6771663696484294362

`A241119(A052905(n)+9)`
-/

namespace A241116.P6771663696484294362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241119 (A052905 n + 9).toNat

end

end A241116.P6771663696484294362

/-! ## A241116.P3170611457131831398

`A241119(A055999(n)+10)`
-/

namespace A241116.P3170611457131831398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241119 (A055999 n + 10).toNat

end

end A241116.P3170611457131831398

/-! ## A241116.P15673260438214959132

`A241119(A167614(n+2)+1)`
-/

namespace A241116.P15673260438214959132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241119 (A167614 (n + 2) + 1).toNat

end

end A241116.P15673260438214959132

/-! ## A241116.P5162418660173587606

`A241119(eq[5, A131818(n+1)])`
-/

namespace A241116.P5162418660173587606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241119 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241116.P5162418660173587606

/-!
# A241117: Number of nX5 0..3 arrays with no element equal to exactly three horizontal or vertical neighbors, with new values 0..3 introduced in row major order.

The programs for A241117, there is no canonical definition to state claims against.
-/

/-! ## A241117.P5250860810006180753

`A241119(A374005(n+1))`
-/

namespace A241117.P5250860810006180753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241119 (A374005 (n + 1)).toNat

end

end A241117.P5250860810006180753

/-! ## A241117.P10726425587841525835

`A241119(Δ[A264443(n)])`
-/

namespace A241117.P10726425587841525835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241119 (f1 (n + 1) - f1 n).toNat

end

end A241117.P10726425587841525835

/-! ## A241117.P11864795510974033880

`A241119(A046691(n+3))`
-/

namespace A241117.P11864795510974033880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241119 (A046691 (n + 3)).toNat

end

end A241117.P11864795510974033880

/-! ## A241117.P2985505365943903100

`A241119(Δ[A023545(n+1)])`
-/

namespace A241117.P2985505365943903100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241119 (f1 (n + 1) - f1 n).toNat

end

end A241117.P2985505365943903100

/-!
# A241119: T(n,k)=Number of nXk 0..3 arrays with no element equal to exactly three horizontal or vertical neighbors, with new values 0..3 introduced in row major order.

The programs for A241119, there is no canonical definition to state claims against.
-/

/-! ## A241119.P9069652356574946907

`A200801(n+1)+A018843(A064664(n+1))`
-/

namespace A241119.P9069652356574946907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200801 (n + 1) + A018843 (A064664 (n + 1)).toNat

end

end A241119.P9069652356574946907

/-!
# A241120: Primes p such that (p^3 + 2)/3 is prime.

The programs for A241120, there is no canonical definition to state claims against.
-/

/-! ## A241120.P8623051540990609778

`∩[A002476(n+1), A241659(n+1)]`
-/

namespace A241120.P8623051540990609778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241659 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A241120.P8623051540990609778

/-! ## A241120.P18114897015042336540

`∩[A007645(n+1), A241659(n+1)]`
-/

namespace A241120.P18114897015042336540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241659 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A241120.P18114897015042336540

/-! ## A241120.P12155242351493030981

`∩[A123365(n+1), A241659(n+1)]`
-/

namespace A241120.P12155242351493030981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241659 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A241120.P12155242351493030981

/-! ## A241120.P7288983297019384671

`∩[A241659(n+1), A279815(n+1)]`
-/

namespace A241120.P7288983297019384671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241659 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A241120.P7288983297019384671

/-! ## A241120.P14769206905107948477

`∩[A055664(n+1), A241659(n+1)]`
-/

namespace A241120.P14769206905107948477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241659 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A241120.P14769206905107948477

/-! ## A241120.P10513423371043982137

`∩[A133290(n+1), A241659(n+1)]`
-/

namespace A241120.P10513423371043982137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133290 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241659 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A241120.P10513423371043982137

/-! ## A241120.P3879052408994382160

`∩[A137827(n+1), A241659(n+1)]`
-/

namespace A241120.P3879052408994382160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241659 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A241120.P3879052408994382160

/-! ## A241120.P7842873180921868996

`filter[A241659(n+1), A070563(#)]`
-/

namespace A241120.P7842873180921868996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241659 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A241120.P7842873180921868996

/-! ## A241120.P11144801344823215907

`∩[A107925(n+1), A241659(n+1)]`
-/

namespace A241120.P11144801344823215907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241659 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A241120.P11144801344823215907

/-! ## A241120.P17794096741013551313

`∩[A004611(n+1), A241659(n+1)]`
-/

namespace A241120.P17794096741013551313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241659 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A241120.P17794096741013551313

/-! ## A241120.P12995929423077852428

`∩[A129904(n+1), A241659(n+1)]`
-/

namespace A241120.P12995929423077852428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241659 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A241120.P12995929423077852428

/-! ## A241120.P8164669022517209411

`∩[A241659(n+1), A348932(n+1)]`
-/

namespace A241120.P8164669022517209411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241659 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A241120.P8164669022517209411

/-! ## A241120.P16127599491922371271

`∩[A241659(n+1), A260682(n+1)]`
-/

namespace A241120.P16127599491922371271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241659 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A241120.P16127599491922371271

/-! ## A241120.P1669774671410226074

`filter[A241659(n+1), A353815(#)]`
-/

namespace A241120.P1669774671410226074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241659 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353815 (f1 j).toNat = 1) n)

end

end A241120.P1669774671410226074

/-! ## A241120.P4331626404378799196

`filter[A241659(n+1), A353816(#)]`
-/

namespace A241120.P4331626404378799196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241659 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A241120.P4331626404378799196

/-! ## A241120.P3329766894715480095

`filter[A241659(n+1), A354982(#)]`
-/

namespace A241120.P3329766894715480095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241659 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354982 (f1 j).toNat = 1) n)

end

end A241120.P3329766894715480095

/-! ## A241120.P2308365027892620073

`∩[A034021(n+1), A241659(n+1)]`
-/

namespace A241120.P2308365027892620073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241659 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A241120.P2308365027892620073

/-! ## A241120.P17470168258944992407

`∩[A034017(n+1), A241659(n+1)]`
-/

namespace A241120.P17470168258944992407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241659 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A241120.P17470168258944992407

/-!
# A241121: Type I Minkowski-Siegel mass constants (numerators).

The programs for A241121, there is no canonical definition to state claims against.
-/

/-! ## A241121.P10614189371008309132

`A329369(or(3, A318560(3*n+5)))`
-/

namespace A241121.P10614189371008309132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329369 (Int.lor 3 (A318560 (3 * n + 5))).toNat

end

end A241121.P10614189371008309132

/-! ## A241121.P15718095293896228663

`A184348(A298794(n)+A056470(n+1))`
-/

namespace A241121.P15718095293896228663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184348 (A298794 n + A056470 (n + 1)).toNat

end

end A241121.P15718095293896228663

/-! ## A241121.P6924400997943586408

`A328478(A038503(n+1)*A137688(n))`
-/

namespace A241121.P6924400997943586408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328478 (A038503 (n + 1) * A137688 n).toNat

end

end A241121.P6924400997943586408

/-! ## A241121.P5932443175979783810

`A002425(lcm(A034851(n+4), A051716(n)))`
-/

namespace A241121.P5932443175979783810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002425 (Int.lcm (A034851 (n + 4)) (A051716 n))

end

end A241121.P5932443175979783810

/-! ## A241121.P603011278459879158

`A328478(A038503(n+1)^A228351(n+1))`
-/

namespace A241121.P603011278459879158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328478 (SequenceMachineLib.roundAway ((A038503 (n + 1) : ℚ) ^ (A228351 (n + 1) : ℤ))).toNat

end

end A241121.P603011278459879158

/-!
# A241122: Type I Minkowski-Siegel mass constants (denominators).

The programs for A241122, there is no canonical definition to state claims against.
-/

/-! ## A241122.P5423664364269305201

`∏[Δ[A155884(A341161(n+1))]]`
-/

namespace A241122.P5423664364269305201
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155884 (A341161 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A241122.P5423664364269305201

/-! ## A241122.P8031839324555975654

`∏[gcd(A033007(n+1), A141598(n+1))]`
-/

namespace A241122.P8031839324555975654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033007 (n + 1)) (A141598 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A241122.P8031839324555975654

/-! ## A241122.P21181695853640446

`∏[(A221131(A075215(n+1))+1)*(n+1)]`
-/

namespace A241122.P21181695853640446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A221131 (A075215 (n + 1)).toNat + 1) * (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A241122.P21181695853640446

/-! ## A241122.P2406259699085643697

`A000165(n+1)*A001147(A212997(n))`
-/

namespace A241122.P2406259699085643697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000165 (n + 1) * A001147 (A212997 n).toNat

end

end A241122.P2406259699085643697

/-! ## A241122.P2419306094294607434

`A006882(2*(n+1))*A092081(A303489(n))`
-/

namespace A241122.P2419306094294607434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 (2 * (n + 1)) * A092081 (A303489 n).toNat

end

end A241122.P2419306094294607434

/-!
# A241125: Number of n X 2 0..2 arrays with no element equal to exactly two horizontal and vertical neighbors, with new values 0..2 introduced in row major order.

The programs for A241125, there is no canonical definition to state claims against.
-/

/-! ## A241125.P6356614049449194881

`A241130(∑[n+1]+2)`
-/

namespace A241125.P6356614049449194881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241130 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A241125.P6356614049449194881

/-! ## A241125.P8397446944787182788

`record[A241130(A158823(n+1)+2)]`
-/

namespace A241125.P8397446944787182788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241130 (A158823 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241125.P8397446944787182788

/-! ## A241125.P2079570721361717239

`record[A241130(Δ[A003453(n+5)])]`
-/

namespace A241125.P2079570721361717239
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241130 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241125.P2079570721361717239

/-! ## A241125.P12580541576945731094

`A241130(A000096(n+1))+A085854(n+1)`
-/

namespace A241125.P12580541576945731094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241130 (A000096 (n + 1)).toNat + A085854 (n + 1)

end

end A241125.P12580541576945731094

/-! ## A241125.P6993454476088421153

`A241130(A000096(n+1))%A280958(n+1)`
-/

namespace A241125.P6993454476088421153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241130 (A000096 (n + 1)).toNat) (A280958 (n + 1))

end

end A241125.P6993454476088421153

/-!
# A241126: Number of nX3 0..2 arrays with no element equal to exactly two horizontal and vertical neighbors, with new values 0..2 introduced in row major order.

The programs for A241126, there is no canonical definition to state claims against.
-/

/-! ## A241126.P12004976147355087450

`A241130(∑[n+2]+4)`
-/

namespace A241126.P12004976147355087450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241130 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A241126.P12004976147355087450

/-! ## A241126.P13507309467447750037

`record[A241130(A158823(n+1)+3)]`
-/

namespace A241126.P13507309467447750037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241130 (A158823 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241126.P13507309467447750037

/-! ## A241126.P15142598815315807844

`or(A241130(A167614(n+1)), A326635(n))`
-/

namespace A241126.P15142598815315807844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A241130 (A167614 (n + 1)).toNat) (A326635 n)

end

end A241126.P15142598815315807844

/-! ## A241126.P11578292791430045727

`A241130(A167614(n+1))+A079302(n+1)`
-/

namespace A241126.P11578292791430045727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241130 (A167614 (n + 1)).toNat + A079302 (n + 1)

end

end A241126.P11578292791430045727

/-! ## A241126.P4566248626253779093

`A241130(A167614(n+1))%A233966(n+1)`
-/

namespace A241126.P4566248626253779093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241130 (A167614 (n + 1)).toNat) (A233966 (n + 1))

end

end A241126.P4566248626253779093

/-!
# A241127: Number of nX4 0..2 arrays with no element equal to exactly two horizontal and vertical neighbors, with new values 0..2 introduced in row major order.

The programs for A241127, there is no canonical definition to state claims against.
-/

/-! ## A241127.P14986006641510378689

`A241130(A141214(n)+7)`
-/

namespace A241127.P14986006641510378689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241130 (A141214 n + 7).toNat

end

end A241127.P14986006641510378689

/-! ## A241127.P5932318264136796733

`A241130(A052905(n)+9)`
-/

namespace A241127.P5932318264136796733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241130 (A052905 n + 9).toNat

end

end A241127.P5932318264136796733

/-! ## A241127.P16527744973122366983

`A241130(A055999(n)+10)`
-/

namespace A241127.P16527744973122366983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241130 (A055999 n + 10).toNat

end

end A241127.P16527744973122366983

/-! ## A241127.P8790495153175326223

`A241130(A167614(n+2)+1)`
-/

namespace A241127.P8790495153175326223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241130 (A167614 (n + 2) + 1).toNat

end

end A241127.P8790495153175326223

/-! ## A241127.P6794994133495241835

`A241130(A374004(n+1))`
-/

namespace A241127.P6794994133495241835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241130 (A374004 (n + 1)).toNat

end

end A241127.P6794994133495241835

/-!
# A241128: Number of nX5 0..2 arrays with no element equal to exactly two horizontal and vertical neighbors, with new values 0..2 introduced in row major order.

The programs for A241128, there is no canonical definition to state claims against.
-/

/-! ## A241128.P15172153051170491035

`A241130(eq[7, A066657(n)])`
-/

namespace A241128.P15172153051170491035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241130 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241128.P15172153051170491035

/-! ## A241128.P17303093868781508758

`A241130(eq[6, A131818(n+1)])`
-/

namespace A241128.P17303093868781508758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241130 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241128.P17303093868781508758

/-! ## A241128.P12589123285422022239

`A241130(∑[n+5]+6)`
-/

namespace A241128.P12589123285422022239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241130 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A241128.P12589123285422022239

/-!
# A241129: Number of nX6 0..2 arrays with no element equal to exactly two horizontal and vertical neighbors, with new values 0..2 introduced in row major order.

The programs for A241129, there is no canonical definition to state claims against.
-/

/-! ## A241129.P6244039011049608911

`A241130(A166136(n+4))`
-/

namespace A241129.P6244039011049608911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241130 (A166136 (n + 4)).toNat

end

end A241129.P6244039011049608911

/-! ## A241129.P13969165216577919298

`A241130(A056115(n)+21)`
-/

namespace A241129.P13969165216577919298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241130 (A056115 n + 21).toNat

end

end A241129.P13969165216577919298

/-! ## A241129.P1709327198443752596

`A241130(A000217(n+5)+6)`
-/

namespace A241129.P1709327198443752596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241130 (A000217 (n + 5) + 6).toNat

end

end A241129.P1709327198443752596

/-! ## A241129.P9500848632091644563

`A241130(eq[5, A002262(n)]+1)`
-/

namespace A241129.P9500848632091644563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241130 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A241129.P9500848632091644563

/-! ## A241129.P8777769090180688416

`A241130(eq[7, A131818(n+1)])`
-/

namespace A241129.P8777769090180688416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241130 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241129.P8777769090180688416

/-!
# A241130: T(n,k)=Number of nXk 0..2 arrays with no element equal to exactly two horizontal and vertical neighbors, with new values 0..2 introduced in row major order.

The programs for A241130, there is no canonical definition to state claims against.
-/

/-! ## A241130.P14532266373214499953

`A113763(A280362(n+1)%A128352(n+1))`
-/

namespace A241130.P14532266373214499953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113763 (Int.tmod (A280362 (n + 1)) (A128352 (n + 1))).toNat

end

end A241130.P14532266373214499953

/-! ## A241130.P17577610612031718138

`A113763(A280362(n+1))%A159262(n+1)`
-/

namespace A241130.P17577610612031718138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113763 (A280362 (n + 1)).toNat) (A159262 (n + 1))

end

end A241130.P17577610612031718138

/-! ## A241130.P11941040693193484847

`A302026(A280961(n+1)%A128352(n+1))`
-/

namespace A241130.P11941040693193484847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302026 (Int.tmod (A280961 (n + 1)) (A128352 (n + 1))).toNat

end

end A241130.P11941040693193484847

/-! ## A241130.P2723416731779485634

`A302026(A280961(n+1))%A159262(n+1)`
-/

namespace A241130.P2723416731779485634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302026 (A280961 (n + 1)).toNat) (A159262 (n + 1))

end

end A241130.P2723416731779485634

/-! ## A241130.P4785257816092897357

`A222853(n+1)+A001221(A214938(2*n+1))`
-/

namespace A241130.P4785257816092897357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222853 (n + 1) + A001221 (A214938 (2 * n + 1)).toNat

end

end A241130.P4785257816092897357

/-!
# A241131: Number of partitions p of n such that (maximal multiplicity over the parts of p) = number of 1s in p.

The programs for A241131, there is no canonical definition to state claims against.
-/

/-! ## A241131.P2554860871969719250

`∑[A382303(n)+A326168(n)]`
-/

namespace A241131.P2554860871969719250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382303 n + A326168 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241131.P2554860871969719250

/-! ## A241131.P7663951936951793368

`∑[A382303(n)]-A057428(n)`
-/

namespace A241131.P7663951936951793368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382303 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A057428 n

end

end A241131.P7663951936951793368

/-! ## A241131.P9067425703291564518

`A211666(n+1)+∑[A382303(n)]`
-/

namespace A241131.P9067425703291564518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382303 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211666 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241131.P9067425703291564518

/-! ## A241131.P3018695970245870221

`A363952(∑[n]+1)`
-/

namespace A241131.P3018695970245870221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363952 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A241131.P3018695970245870221

/-! ## A241131.P9699400615279315667

`A363952(A000124(n))+A256974(n)`
-/

namespace A241131.P9699400615279315667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363952 (A000124 n).toNat + A256974 n

end

end A241131.P9699400615279315667

/-!
# A241133: Number of n X 2 0..2 arrays with no element equal to the same number of vertical neighbors as horizontal neighbors, with new values 0..2 introduced in row major order.

The programs for A241133, there is no canonical definition to state claims against.
-/

/-! ## A241133.P8042604478849554555

`A241138(∑[n+1]+2)`
-/

namespace A241133.P8042604478849554555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241138 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A241133.P8042604478849554555

/-! ## A241133.P18291345158939673631

`record[A241138(A008795(n)+2)]`
-/

namespace A241133.P18291345158939673631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241138 (A008795 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241133.P18291345158939673631

/-! ## A241133.P16867980586881680293

`record[gcd(A002262(n), A241138(n+2))]`
-/

namespace A241133.P16867980586881680293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A241138 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241133.P16867980586881680293

/-! ## A241133.P12460031246270668869

`record[A241138(C(A025480(n)+2, 2)+2)]`
-/

namespace A241133.P12460031246270668869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241138 (Nat.choose (A025480 n + 2).toNat 2 + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241133.P12460031246270668869

/-! ## A241133.P17020833698172718683

`record[A241138(n+2)/A208615(n+1)]`
-/

namespace A241133.P17020833698172718683
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241138 (n + 2) : ℚ) / (A208615 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241133.P17020833698172718683

/-!
# A241134: Number of nX3 0..2 arrays with no element equal to the same number of vertical neighbors as horizontal neighbors, with new values 0..2 introduced in row major order.

The programs for A241134, there is no canonical definition to state claims against.
-/

/-! ## A241134.P9170212736603540513

`A241138(∑[n+2]+4)`
-/

namespace A241134.P9170212736603540513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241138 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A241134.P9170212736603540513

/-! ## A241134.P11045071852791941771

`and(-1, A241138(A167614(n+1)))`
-/

namespace A241134.P11045071852791941771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A241138 (A167614 (n + 1)).toNat)

end

end A241134.P11045071852791941771

/-! ## A241134.P18402902068805743256

`record[gcd(A002262(n), A241138(n+3))]`
-/

namespace A241134.P18402902068805743256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A241138 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241134.P18402902068805743256

/-! ## A241134.P17077152525627631497

`A241138(A167614(n+1))+A025437(n)`
-/

namespace A241134.P17077152525627631497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241138 (A167614 (n + 1)).toNat + A025437 n

end

end A241134.P17077152525627631497

/-! ## A241134.P7299939631764633404

`A241138(A167614(n+1))+A055965(n)`
-/

namespace A241134.P7299939631764633404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241138 (A167614 (n + 1)).toNat + A055965 n

end

end A241134.P7299939631764633404

/-!
# A241135: Number of nX4 0..2 arrays with no element equal to the same number of vertical neighbors as horizontal neighbors, with new values 0..2 introduced in row major order.

The programs for A241135, there is no canonical definition to state claims against.
-/

/-! ## A241135.P14535036453308436895

`A241138(A374004(n+1))`
-/

namespace A241135.P14535036453308436895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241138 (A374004 (n + 1)).toNat

end

end A241135.P14535036453308436895

/-! ## A241135.P2059737861581693110

`A241138(A145018(n+4))`
-/

namespace A241135.P2059737861581693110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241138 (A145018 (n + 4)).toNat

end

end A241135.P2059737861581693110

/-! ## A241135.P8501115292118307342

`A241138(A141214(n)+7)`
-/

namespace A241135.P8501115292118307342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241138 (A141214 n + 7).toNat

end

end A241135.P8501115292118307342

/-! ## A241135.P1764934121778001584

`A241138(A052905(n)+9)`
-/

namespace A241135.P1764934121778001584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241138 (A052905 n + 9).toNat

end

end A241135.P1764934121778001584

/-! ## A241135.P14343452734646400012

`A241138(A055999(n)+10)`
-/

namespace A241135.P14343452734646400012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241138 (A055999 n + 10).toNat

end

end A241135.P14343452734646400012

/-!
# A241136: Number of nX5 0..2 arrays with no element equal to the same number of vertical neighbors as horizontal neighbors, with new values 0..2 introduced in row major order.

The programs for A241136, there is no canonical definition to state claims against.
-/

/-! ## A241136.P16544420504825363832

`A241138(A374005(n+1))`
-/

namespace A241136.P16544420504825363832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241138 (A374005 (n + 1)).toNat

end

end A241136.P16544420504825363832

/-! ## A241136.P6990316649011891711

`A241138(A167499(n+3))`
-/

namespace A241136.P6990316649011891711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241138 (A167499 (n + 3)).toNat

end

end A241136.P6990316649011891711

/-! ## A241136.P3286074900756530830

`A241138(A155212(n)+13)`
-/

namespace A241136.P3286074900756530830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241138 (A155212 n + 13).toNat

end

end A241136.P3286074900756530830

/-! ## A241136.P13595226311304154011

`A241138(A056000(n)+15)`
-/

namespace A241136.P13595226311304154011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241138 (A056000 n + 15).toNat

end

end A241136.P13595226311304154011

/-! ## A241136.P3298710019138214521

`A241138(eq[7, A066657(n)])`
-/

namespace A241136.P3298710019138214521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241138 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241136.P3298710019138214521

/-!
# A241137: Number of nX6 0..2 arrays with no element equal to the same number of vertical neighbors as horizontal neighbors, with new values 0..2 introduced in row major order.

The programs for A241137, there is no canonical definition to state claims against.
-/

/-! ## A241137.P17413887879049644787

`A241138(A374007(n+1))`
-/

namespace A241137.P17413887879049644787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241138 (A374007 (n + 1)).toNat

end

end A241137.P17413887879049644787

/-! ## A241137.P8316275605290996412

`A241138(A056115(n)+21)`
-/

namespace A241137.P8316275605290996412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241138 (A056115 n + 21).toNat

end

end A241137.P8316275605290996412

/-! ## A241137.P16808839385648968699

`A241138(A167499(n+4)+1)`
-/

namespace A241137.P16808839385648968699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241138 (A167499 (n + 4) + 1).toNat

end

end A241137.P16808839385648968699

/-! ## A241137.P13606405223494489270

`A241138(A000096(n+4)+7)`
-/

namespace A241137.P13606405223494489270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241138 (A000096 (n + 4) + 7).toNat

end

end A241137.P13606405223494489270

/-! ## A241137.P3338790976045549951

`A241138(A000217(n+5)+6)`
-/

namespace A241137.P3338790976045549951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241138 (A000217 (n + 5) + 6).toNat

end

end A241137.P3338790976045549951

/-!
# A241139: Number of nonprimes in factorization of n! over distinct terms of A050376.

The programs for A241139, there is no canonical definition to state claims against.
-/

/-! ## A241139.P6667045586059931852

`A177329(n+2)-A055460(n+2)`
-/

namespace A241139.P6667045586059931852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177329 (n + 2) - A055460 (n + 2)

end

end A241139.P6667045586059931852

/-! ## A241139.P17290807165595969895

`log2(A375635(n+2))-A055460(n+2)`
-/

namespace A241139.P17290807165595969895
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A375635 (n + 2) : ℝ) - (A055460 (n + 2) : ℝ)

end

end A241139.P17290807165595969895

/-! ## A241139.P2740195100432849781

`∏{e}[A375635(A000027(n+2)), #]-A055460(n+2)`
-/

namespace A241139.P2740195100432849781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375635 (A000027 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) - A055460 (n + 2)

end

end A241139.P2740195100432849781

/-! ## A241139.P2306563067295783565

`A000005(A375635(n+2)/2)-A055460(n+2)`
-/

namespace A241139.P2306563067295783565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A375635 (n + 2) : ℚ) / 2)).toNat - A055460 (n + 2)

end

end A241139.P2306563067295783565

/-! ## A241139.P3275693870202136776

`A369054(A274160(n))+A073642(n)`
-/

namespace A241139.P3275693870202136776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369054 (A274160 n).toNat + A073642 n

end

end A241139.P3275693870202136776

/-!
# A241141: Numbers n such that n and 5n share at least one digit.

The programs for A241141, there is no canonical definition to state claims against.
-/

/-! ## A241141.P2726799142646798265

`lt[2, (n+1)*and(A086066(5*n), A086066(n))]`
-/

namespace A241141.P2726799142646798265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.land (A086066 (5 * n)) (A086066 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A241141.P2726799142646798265

/-! ## A241141.P10361506813542580364

`lt[A008959(2*n), A000720(A193676(2*n+5))]`
-/

namespace A241141.P10361506813542580364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008959 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A193676 (2 * n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A241141.P10361506813542580364

/-!
# A241142: Numbers n such that n and 6n share at least one digit.

The programs for A241142, there is no canonical definition to state claims against.
-/

/-! ## A241142.P16899617716775993770

`lt[(n%2)^n, A353806(A188529(n+1))]`
-/

namespace A241142.P16899617716775993770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n % 2) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353806 (A188529 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A241142.P16899617716775993770

/-! ## A241142.P1280553990096971885

`lt[A034296(n), A043320(A257088(n))]`
-/

namespace A241142.P1280553990096971885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034296 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043320 (A257088 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A241142.P1280553990096971885

/-! ## A241142.P6963045851931003982

`lt[A029173(A029168(n+1)), A029180(n)]`
-/

namespace A241142.P6963045851931003982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029173 (A029168 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029180 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A241142.P6963045851931003982

/-! ## A241142.P4255395755875481829

`lt[A000009(n+2), A043320(A257088(n))]`
-/

namespace A241142.P4255395755875481829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043320 (A257088 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A241142.P4255395755875481829

/-! ## A241142.P12472389429258509030

`eq[A053473(n+1), A160381(A139248(n+1))]`
-/

namespace A241142.P12472389429258509030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 (A139248 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A241142.P12472389429258509030

/-!
# A241143: Numbers n such that n and 7n share at least one digit.

The programs for A241143, there is no canonical definition to state claims against.
-/

/-! ## A241143.P1196098801170619003

`lt[2, n*and(A086066(7*n), A086066(n))]`
-/

namespace A241143.P1196098801170619003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.land (A086066 (7 * n)) (A086066 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A241143.P1196098801170619003

/-! ## A241143.P14334535780838234225

`lt[A020596(n+1), A287640(A020645(n))]+1`
-/

namespace A241143.P14334535780838234225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287640 (A020645 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A241143.P14334535780838234225

/-!
# A241144: Numbers n such that n and 8n share at least one digit.

The programs for A241144, there is no canonical definition to state claims against.
-/

/-! ## A241144.P8555248190442410767

`lt[A046145(A263757(n+1)), A151950(n)]`
-/

namespace A241144.P8555248190442410767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 (A263757 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151950 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A241144.P8555248190442410767

/-! ## A241144.P7246984434386850023

`A131365(n+1)-A016389(A050029(n+1))`
-/

namespace A241144.P7246984434386850023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131365 (n + 1) - A016389 (A050029 (n + 1)).toNat

end

end A241144.P7246984434386850023

/-! ## A241144.P18361522107647810953

`lt[A003557(A215501(3*n+1)), A151949(n)]`
-/

namespace A241144.P18361522107647810953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A215501 (3 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151949 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A241144.P18361522107647810953

/-!
# A241145: Numbers n such that n and 9n share at least one digit.

The programs for A241145, there is no canonical definition to state claims against.
-/

/-! ## A241145.P15914112371073776175

`eq[A136522(n), A143062(A003325(n+5))]`
-/

namespace A241145.P15914112371073776175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136522 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143062 (A003325 (n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A241145.P15914112371073776175

/-! ## A241145.P11541998360913366704

`lt[A214950(A081585(n)), A082216(n)]`
-/

namespace A241145.P11541998360913366704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214950 (A081585 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082216 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A241145.P11541998360913366704

/-! ## A241145.P17159589146898660902

`lt[A192011(A004086(3*n+1)), A064834(n)]`
-/

namespace A241145.P17159589146898660902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192011 (A004086 (3 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064834 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A241145.P17159589146898660902

/-! ## A241145.P9854173617256857815

`lt[A192011(A004086(3*n+1)), A347689(n)]`
-/

namespace A241145.P9854173617256857815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192011 (A004086 (3 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347689 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A241145.P9854173617256857815

/-! ## A241145.P526635040628673789

`lt[A133618(n), A348045(A371167(2*n+1))]`
-/

namespace A241145.P526635040628673789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133618 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348045 (A371167 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A241145.P526635040628673789

/-!
# A241146: Least number k such that k and n*k share at least one digit.

The programs for A241146, there is no canonical definition to state claims against.
-/

/-! ## A241146.P9812833021643701582

`gcd(10, A337084(A077342(n+1)))`
-/

namespace A241146.P9812833021643701582
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 10 (A337084 (A077342 (n + 1)).toNat)

end

end A241146.P9812833021643701582

/-! ## A241146.P7566356374002965100

`gcd(A165831(A005574(n+1)²+1), A337084(n+1))`
-/

namespace A241146.P7566356374002965100
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A165831 (A005574 (n + 1) ^ 2 + 1).toNat) (A337084 (n + 1))

end

end A241146.P7566356374002965100

/-! ## A241146.P16822944549039133929

`gcd(1-n^8, A073731(A245794(n)))`
-/

namespace A241146.P16822944549039133929
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - (n ^ 8 : ℤ)) (A073731 ((A245794 n).toNat + 10))

end

end A241146.P16822944549039133929

/-! ## A241146.P9483859605422837912

`A296420(n*A015626(A245794(n)))`
-/

namespace A241146.P9483859605422837912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296420 ((n : ℤ) * A015626 (A245794 n).toNat).toNat

end

end A241146.P9483859605422837912

/-! ## A241146.P7204885404519867365

`A296420(n)^A015626(A245794(n))`
-/

namespace A241146.P7204885404519867365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296420 n : ℚ) ^ (A015626 (A245794 n).toNat : ℤ)

end

end A241146.P7204885404519867365

/-!
# A241147: a(n) = the number of integers i in {1,2,...,L}, where L = lcm(1,2,...,n), having the property that the number of positive integer divisors of i that are less than or equal to n, is odd.

The programs for A241147, there is no canonical definition to state claims against.
-/

/-! ## A241147.P11140412645049090318

`A048691(A054726(n)*A325357(n))`
-/

namespace A241147.P11140412645049090318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 (A054726 n * A325357 n).toNat

end

end A241147.P11140412645049090318

/-! ## A241147.P16402371688819773513

`A048691(A010554(n+1)*A054726(n))`
-/

namespace A241147.P16402371688819773513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 (A010554 (n + 1) * A054726 n).toNat

end

end A241147.P16402371688819773513

/-! ## A241147.P1740309981883050871

`and(A001359(A037787(n+1)), A041349(n))`
-/

namespace A241147.P1740309981883050871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001359 (A037787 (n + 1)).toNat) (A041349 n)

end

end A241147.P1740309981883050871

/-!
# A241150: Irregular triangle read by rows T(n,k) = number of partitions of degree k in the partition graph G(n), for n >= 2; G(n) is defined in Comments.

The programs for A241150, there is no canonical definition to state claims against.
-/

/-! ## A241150.P11780817634334755792

`A036037(A072090(n)+A000330(2*n+3))`
-/

namespace A241150.P11780817634334755792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036037 (A072090 n + A000330 (2 * n + 3)).toNat

end

end A241150.P11780817634334755792

/-! ## A241150.P12518472942129619974

`A106645(A240101(n+1)%A208943(n+1))`
-/

namespace A241150.P12518472942129619974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106645 (Int.tmod (A240101 (n + 1)) (A208943 (n + 1))).toNat

end

end A241150.P12518472942129619974

/-! ## A241150.P14405443336492190920

`gcd(A166054(n+1), A315295(A331809(n+1)))`
-/

namespace A241150.P14405443336492190920
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A166054 (n + 1)) (A315295 (A331809 (n + 1)).toNat)

end

end A241150.P14405443336492190920

/-! ## A241150.P16441899807141970503

`A078812(gcd(A003410(n+3), A106319(n+1)))`
-/

namespace A241150.P16441899807141970503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078812 (Int.gcd (A003410 (n + 3)) (A106319 (n + 1)))

end

end A241150.P16441899807141970503

/-! ## A241150.P16949149598147669969

`A125070(A165676(n+1)+A131432(n))`
-/

namespace A241150.P16949149598147669969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125070 (A165676 (n + 1) + A131432 n).toNat

end

end A241150.P16949149598147669969

/-!
# A241151: Number of distinct degrees in the partition graph G(n) defined at A241150.

The programs for A241151, the canonical program `A241151.P10347220583869706345` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241151 has offset 2).

The definition of A241151 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A241151.P5289940720241311938

`∑[char[C(ceil(n/2), 2)+n]]`
-/

namespace A241151.P5289940720241311938
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌈(n : ℚ) / 2⌉.toNat 2 + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241151.P5289940720241311938

namespace A241151

/-- `∑[char[C(ceil(n/2), 2)+n]]` -/
def P5289940720241311938.Spec : Prop :=
  ∀ n, (P5289940720241311938.a n : ℤ) = A241151 (n + 2)

end A241151

/-! ## A241151.P5906060465825987126

`a(n-∑[char[∑[n]]])+2` with `a(0)=1, a(1)=2`
-/

namespace A241151.P5906060465825987126
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - ∑ j ∈ Finset.range (n + 1), f1 j) + 2

end

end A241151.P5906060465825987126

namespace A241151

/-- `a(n-∑[char[∑[n]]])+2` -/
def P5906060465825987126.Spec : Prop :=
  ∀ n, (P5906060465825987126.a n : ℤ) = A241151 (n + 2)

end A241151

/-! ## A241151.P1648117178541592519

`∑[char[∑[∑[n]%(n+1)-1]]]`
-/

namespace A241151.P1648117178541592519
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f4 j) % (n + 1) : ℕ) : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241151.P1648117178541592519

namespace A241151

/-- `∑[char[∑[∑[n]%(n+1)-1]]]` -/
def P1648117178541592519.Spec : Prop :=
  ∀ n, (P1648117178541592519.a n : ℤ) = A241151 (n + 2)

end A241151

/-! ## A241151.P8951199350694450852

`char[C(ceil(n/2), 2)+n]+a(n-1)` with `a(0)=1`
-/

namespace A241151.P8951199350694450852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌈(n : ℚ) / 2⌉.toNat 2 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (if ∃ j, f1 j = n then 1 else 0) + a (n - 1)

end

end A241151.P8951199350694450852

namespace A241151

/-- `char[C(ceil(n/2), 2)+n]+a(n-1)` -/
def P8951199350694450852.Spec : Prop :=
  ∀ n, (P8951199350694450852.a n : ℤ) = A241151 (n + 2)

end A241151

/-! ## A241151.P9576507920237212987

`2*n+1-∪[2*n, (n+1)²+n]`
-/

namespace A241151.P9576507920237212987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n : ℤ)

end

end A241151.P9576507920237212987

namespace A241151

/-- `2*n+1-∪[2*n, (n+1)²+n]` -/
def P9576507920237212987.Spec : Prop :=
  ∀ n, P9576507920237212987.a n = A241151 (n + 2)

end A241151

/-! ## A241151.P10347220583869706345

`∑[A097806(n)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A241151

/-- `∑[A097806(n)]` -/
def P10347220583869706345.Spec : Prop :=
  ∀ n, P10347220583869706345.a n = A241151 (n + 2)

theorem P10347220583869706345.correct : P10347220583869706345.Spec := by
  intro n
  simp only [A241151, Nat.add_sub_cancel]

end A241151

/-! ## A241151.P11135064866458699020

`∑[abs(A167374(n))]`
-/

namespace A241151.P11135064866458699020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A167374 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241151.P11135064866458699020

namespace A241151

/-- `∑[abs(A167374(n))]` -/
def P11135064866458699020.Spec : Prop :=
  ∀ n, P11135064866458699020.a n = A241151 (n + 2)

end A241151

/-! ## A241151.P13905493412531399373

`∑[A103451(n+1)]`
-/

namespace A241151.P13905493412531399373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241151.P13905493412531399373

namespace A241151

/-- `∑[A103451(n+1)]` -/
def P13905493412531399373.Spec : Prop :=
  ∀ n, P13905493412531399373.a n = A241151 (n + 2)

end A241151

/-! ## A241151.P8427232495581972037

`∑[and(1, A251636(n))]`
-/

namespace A241151.P8427232495581972037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A251636 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241151.P8427232495581972037

namespace A241151

/-- `∑[and(1, A251636(n))]` -/
def P8427232495581972037.Spec : Prop :=
  ∀ n, P8427232495581972037.a n = A241151 (n + 2)

end A241151

/-! ## A241151.P6918196984940908538

`∑[Δ[A023531(n)]²]`
-/

namespace A241151.P6918196984940908538
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241151.P6918196984940908538

namespace A241151

/-- `∑[Δ[A023531(n)]²]` -/
def P6918196984940908538.Spec : Prop :=
  ∀ n, P6918196984940908538.a n = A241151 (n + 2)

end A241151

/-! ## A241151.P8975004273069115581

`∑[abs(A103452(n+1))]`
-/

namespace A241151.P8975004273069115581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A103452 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241151.P8975004273069115581

namespace A241151

/-- `∑[abs(A103452(n+1))]` -/
def P8975004273069115581.Spec : Prop :=
  ∀ n, P8975004273069115581.a n = A241151 (n + 2)

end A241151

/-! ## A241151.P544516640611867566

`∑[floor(1/A061554(n))]`
-/

namespace A241151.P544516640611867566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A061554 n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241151.P544516640611867566

namespace A241151

/-- `∑[floor(1/A061554(n))]` -/
def P544516640611867566.Spec : Prop :=
  ∀ n, P544516640611867566.a n = A241151 (n + 2)

end A241151

/-! ## A241151.P5731117173048878439

`∑[round(1/A130321(n))]`
-/

namespace A241151.P5731117173048878439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (A130321 n : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241151.P5731117173048878439

namespace A241151

/-- `∑[round(1/A130321(n))]` -/
def P5731117173048878439.Spec : Prop :=
  ∀ n, P5731117173048878439.a n = A241151 (n + 2)

end A241151

/-! ## A241151.P2063851246454600672

`∑[C(2, log2(A262616(n)))]`
-/

namespace A241151.P2063851246454600672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (SequenceMachineLib.roundAway (Real.logb 2 (A262616 n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241151.P2063851246454600672

namespace A241151

/-- `∑[C(2, log2(A262616(n)))]` -/
def P2063851246454600672.Spec : Prop :=
  ∀ n, (P2063851246454600672.a n : ℤ) = A241151 (n + 2)

end A241151

/-! ## A241151.P4673583891759383370

`∑[char[A101881(n)]]+1`
-/

namespace A241151.P4673583891759383370
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101881 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A241151.P4673583891759383370

namespace A241151

/-- `∑[char[A101881(n)]]+1` -/
def P4673583891759383370.Spec : Prop :=
  ∀ n, (P4673583891759383370.a n : ℤ) = A241151 (n + 2)

end A241151

/-! ## A241151.P10438742540091128027

`∑[A167371(char[1]+n)]`
-/

namespace A241151.P10438742540091128027
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167371 ((if ∃ j, f2 j = n then 1 else 0) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241151.P10438742540091128027

namespace A241151

/-- `∑[A167371(char[1]+n)]` -/
def P10438742540091128027.Spec : Prop :=
  ∀ n, P10438742540091128027.a n = A241151 (n + 2)

end A241151

/-! ## A241151.P1771420143429526260

`∑[char[A114220(n)-2]]`
-/

namespace A241151.P1771420143429526260
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114220 n - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241151.P1771420143429526260

namespace A241151

/-- `∑[char[A114220(n)-2]]` -/
def P1771420143429526260.Spec : Prop :=
  ∀ n, (P1771420143429526260.a n : ℤ) = A241151 (n + 2)

end A241151

/-! ## A241151.P14759229030266969403

`∑[char[n-A008459(n)]]`
-/

namespace A241151.P14759229030266969403
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A008459 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241151.P14759229030266969403

namespace A241151

/-- `∑[char[n-A008459(n)]]` -/
def P14759229030266969403.Spec : Prop :=
  ∀ n, (P14759229030266969403.a n : ℤ) = A241151 (n + 2)

end A241151

/-! ## A241151.P4873103918049985500

`∑[char[n-A082039(n)]]`
-/

namespace A241151.P4873103918049985500
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A082039 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241151.P4873103918049985500

namespace A241151

/-- `∑[char[n-A082039(n)]]` -/
def P4873103918049985500.Spec : Prop :=
  ∀ n, (P4873103918049985500.a n : ℤ) = A241151 (n + 2)

end A241151

/-! ## A241151.P2021596727182427893

`∑[char[n-A082043(n)]]`
-/

namespace A241151.P2021596727182427893
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A082043 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241151.P2021596727182427893

namespace A241151

/-- `∑[char[n-A082043(n)]]` -/
def P2021596727182427893.Spec : Prop :=
  ∀ n, (P2021596727182427893.a n : ℤ) = A241151 (n + 2)

end A241151

/-!
# A241152: Maximal number of partitions having the same degree in the partition graph G(n) defined at A241150.

The programs for A241152, there is no canonical definition to state claims against.
-/

/-! ## A241152.P4377170317037248098

`A243903(A052954(comp[ceil(2^(n-1))]))`
-/

namespace A241152.P4377170317037248098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243903 (A052954 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)).toNat

end

end A241152.P4377170317037248098

/-! ## A241152.P13868545284252255010

`A346076(n)+A147706(A132378(n+1))`
-/

namespace A241152.P13868545284252255010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346076 n + A147706 (A132378 (n + 1)).toNat

end

end A241152.P13868545284252255010

/-! ## A241152.P673639001381869937

`A330878(A340719(n)+A260999(n+2))`
-/

namespace A241152.P673639001381869937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330878 (A340719 (n + 36) + A260999 (n + 2)).toNat

end

end A241152.P673639001381869937

/-! ## A241152.P15755902706234149130

`A147706(n+1)+A346076(n)%A120402(n+1)`
-/

namespace A241152.P15755902706234149130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147706 (n + 1) + Int.tmod (A346076 n) (A120402 (n + 1))

end

end A241152.P15755902706234149130

/-!
# A241153: Number of partitions having the maximal degree in the partition graph G(n) defined at A241150.

The programs for A241153, there is no canonical definition to state claims against.
-/

/-! ## A241153.P7118829738961724324

`A241150(∑[∑[Δ[Δ[comp[∑[n]]]]²]])`
-/

namespace A241153.P7118829738961724324
noncomputable section

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f5 j ≠ x) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f4 (n + 1) : ℤ) - (f4 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) - f3 n) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241150 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A241153.P7118829738961724324

/-! ## A241153.P15617200931248310114

`∑{d}[A241150(∑[∑[A097806(n)]]), A000010(#)]`
-/

namespace A241153.P15617200931248310114
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241150 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A241153.P15617200931248310114

/-! ## A241153.P7108272662625809950

`∑{d}[A241150(∑[A241151(n+2)]), A000010(#)]`
-/

namespace A241153.P7108272662625809950
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241151 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241150 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A241153.P7108272662625809950

/-! ## A241153.P2478397262771078532

`A243903(A241150(∑[2*n+1-∪[2*n, (n+1)²+n]]))`
-/

namespace A241153.P2478397262771078532
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - (SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243903 (A241150 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A241153.P2478397262771078532

/-! ## A241153.P7593706193700226388

`A000005(2^A290694(n+1)²)`
-/

namespace A241153.P7593706193700226388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A290694 (n + 1) ^ 2 : ℤ))).toNat

end

end A241153.P7593706193700226388

/-!
# A241156: Number of complementary pairs of `homogenized' N-free graphs with n nodes.

The programs for A241156, there is no canonical definition to state claims against.
-/

/-! ## A241156.P2224110469847603190

`ceil(A226909(n+1)/2)`
-/

namespace A241156.P2224110469847603190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A226909 (n + 1) : ℚ) / 2⌉

end

end A241156.P2224110469847603190

/-! ## A241156.P7482036497803139855

`abs(A226909(n+1)/A280560(n))`
-/

namespace A241156.P7482036497803139855
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A226909 (n + 1) : ℚ) / (A280560 n : ℚ)|

end

end A241156.P7482036497803139855

/-! ## A241156.P15879993877177512390

`A226909(n+1)/A036453(n+1)`
-/

namespace A241156.P15879993877177512390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226909 (n + 1) : ℚ) / (A036453 (n + 1) : ℚ)

end

end A241156.P15879993877177512390

/-! ## A241156.P17649336560344139186

`(A226909(n+1)+A000007(n))/2`
-/

namespace A241156.P17649336560344139186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226909 (n + 1) + A000007 n : ℚ) / 2

end

end A241156.P17649336560344139186

/-!
# A241157: Numbers in which the two least-significant digits are distinct.

The programs for A241157, there is no canonical definition to state claims against.
-/

/-! ## A241157.P11817251937624675456

`lt[A052500(n), 10]`
-/

namespace A241157.P11817251937624675456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052500 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A241157.P11817251937624675456

/-! ## A241157.P2133790315429379335

`lt[A052484(n)/9+8, 18]`
-/

namespace A241157.P2133790315429379335
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052484 n : ℚ) / 9 + 8

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A241157.P2133790315429379335

/-! ## A241157.P1220981430521305570

`lt[A001522(A052484(n)/9), 18]`
-/

namespace A241157.P1220981430521305570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001522 (SequenceMachineLib.roundAway ((A052484 n : ℚ) / 9)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A241157.P1220981430521305570

/-! ## A241157.P15508020939309731362

`eq[A052484(n)/9, A010888(A052500(n))]`
-/

namespace A241157.P15508020939309731362
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052484 n : ℚ) / 9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (A052500 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A241157.P15508020939309731362

/-! ## A241157.P17517959567779999611

`eq[A052500(A052484(n)/9), A052500(n)]`
-/

namespace A241157.P17517959567779999611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052500 (SequenceMachineLib.roundAway ((A052484 n : ℚ) / 9)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052500 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A241157.P17517959567779999611

/-! ## A241157.P1976504130251232524

`eq[A052484(n)/9, A010888(A052484(n)/9)]`
-/

namespace A241157.P1976504130251232524
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052484 n : ℚ) / 9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (SequenceMachineLib.roundAway ((A052484 n : ℚ) / 9)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A241157.P1976504130251232524

/-!
# A241158: Numbers in which the two leading (most significant) digits are distinct.

The programs for A241158, the canonical program `A241158.P8261177875093873134` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241158 has offset 1).

The definition of A241158 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9002 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A241158.P8261177875093873134

`eq[A000030(n), A000030(A351868(n))]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A241158

/-- `eq[A000030(n), A000030(A351868(n))]` -/
def P8261177875093873134.Spec : Prop :=
  ∀ n, (P8261177875093873134.a n : ℤ) = A241158 (n + 1)

theorem P8261177875093873134.correct : P8261177875093873134.Spec := by
  intro n
  simp only [A241158, Nat.add_sub_cancel]

end A241158

/-! ## A241158.P11888097434334875113

`lt[A009995(A139337(n)), A045918(n)]`
-/

namespace A241158.P11888097434334875113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009995 (A139337 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045918 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A241158.P11888097434334875113

namespace A241158

/-- `lt[A009995(A139337(n)), A045918(n)]` -/
def P11888097434334875113.Spec : Prop :=
  ∀ n, (P11888097434334875113.a n : ℤ) = A241158 (n + 1)

end A241158

/-! ## A241158.P13529335142215555476

`lt[A321800(n), A246605(A040115(n))]`
-/

namespace A241158.P13529335142215555476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246605 (A040115 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A241158.P13529335142215555476

namespace A241158

/-- `lt[A321800(n), A246605(A040115(n))]` -/
def P13529335142215555476.Spec : Prop :=
  ∀ n, (P13529335142215555476.a n : ℤ) = A241158 (n + 1)

end A241158

/-! ## A241158.P10042839760421940527

`lt[A321804(n), A246605(A040115(n))]`
-/

namespace A241158.P10042839760421940527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246605 (A040115 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A241158.P10042839760421940527

namespace A241158

/-- `lt[A321804(n), A246605(A040115(n))]` -/
def P10042839760421940527.Spec : Prop :=
  ∀ n, (P10042839760421940527.a n : ℤ) = A241158 (n + 1)

end A241158

/-! ## A241158.P13476857395298846457

`lt[A321804(n), A267001(A288318(n))]`
-/

namespace A241158.P13476857395298846457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267001 (A288318 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A241158.P13476857395298846457

namespace A241158

/-- `lt[A321804(n), A267001(A288318(n))]` -/
def P13476857395298846457.Spec : Prop :=
  ∀ n, (P13476857395298846457.a n : ℤ) = A241158 (n + 1)

end A241158

/-! ## A241158.P3019717413399255840

`eq[A000038(A216765(n+1)), A321537(n)]`
-/

namespace A241158.P3019717413399255840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A216765 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321537 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A241158.P3019717413399255840

namespace A241158

/-- `eq[A000038(A216765(n+1)), A321537(n)]` -/
def P3019717413399255840.Spec : Prop :=
  ∀ n, (P3019717413399255840.a n : ℤ) = A241158 (n + 1)

end A241158

/-! ## A241158.P3710474700112166688

`lt[A321804(n), A115621(A132234(n+2))]`
-/

namespace A241158.P3710474700112166688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115621 (A132234 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A241158.P3710474700112166688

namespace A241158

/-- `lt[A321804(n), A115621(A132234(n+2))]` -/
def P3710474700112166688.Spec : Prop :=
  ∀ n, (P3710474700112166688.a n : ℤ) = A241158 (n + 1)

end A241158

/-! ## A241158.P4628766031804789062

`lt[A321804(n), A020639(A227961(n+5))]`
-/

namespace A241158.P4628766031804789062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A227961 (n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A241158.P4628766031804789062

namespace A241158

/-- `lt[A321804(n), A020639(A227961(n+5))]` -/
def P4628766031804789062.Spec : Prop :=
  ∀ n, (P4628766031804789062.a n : ℤ) = A241158 (n + 1)

end A241158

/-! ## A241158.P4313329118806466385

`comp[11*A176484(n)]`
-/

namespace A241158.P4313329118806466385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A176484 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A241158.P4313329118806466385

namespace A241158

/-- `comp[11*A176484(n)]` -/
def P4313329118806466385.Spec : Prop :=
  ∀ n, (P4313329118806466385.a n : ℤ) = A241158 (n + 1)

end A241158

/-! ## A241158.P2251871148173382093

`comp[eq[2, A061901(n)]]`
-/

namespace A241158.P2251871148173382093
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061901 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A241158.P2251871148173382093

namespace A241158

/-- `comp[eq[2, A061901(n)]]` -/
def P2251871148173382093.Spec : Prop :=
  ∀ n, (P2251871148173382093.a n : ℤ) = A241158 (n + 1)

end A241158

/-! ## A241158.P15506169333010442323

`comp[eq[2, A120004(n)]]`
-/

namespace A241158.P15506169333010442323
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120004 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A241158.P15506169333010442323

namespace A241158

/-- `comp[eq[2, A120004(n)]]` -/
def P15506169333010442323.Spec : Prop :=
  ∀ n, (P15506169333010442323.a n : ℤ) = A241158 (n + 1)

end A241158

/-! ## A241158.P11970537008122059303

`comp[eq[11, A213217(n)]]`
-/

namespace A241158.P11970537008122059303
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213217 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A241158.P11970537008122059303

namespace A241158

/-- `comp[eq[11, A213217(n)]]` -/
def P11970537008122059303.Spec : Prop :=
  ∀ n, (P11970537008122059303.a n : ℤ) = A241158 (n + 1)

end A241158

/-! ## A241158.P1590695525497295972

`comp[record[A073729(n+1)]]`
-/

namespace A241158.P1590695525497295972
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073729 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A241158.P1590695525497295972

namespace A241158

/-- `comp[record[A073729(n+1)]]` -/
def P1590695525497295972.Spec : Prop :=
  ∀ n, (P1590695525497295972.a n : ℤ) = A241158 (n + 1)

end A241158

/-! ## A241158.P5187961590214351808

`comp[11*A066099(3*n+5)]`
-/

namespace A241158.P5187961590214351808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A066099 (3 * n + 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A241158.P5187961590214351808

namespace A241158

/-- `comp[11*A066099(3*n+5)]` -/
def P5187961590214351808.Spec : Prop :=
  ∀ n, (P5187961590214351808.a n : ℤ) = A241158 (n + 1)

end A241158

/-! ## A241158.P8920590612658232277

`comp[eq[11*floor(n/10)-n, A010052(n)]]`
-/

namespace A241158.P8920590612658232277
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * ⌊(n : ℚ) / 10⌋ - (n : ℤ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A241158.P8920590612658232277

namespace A241158

/-- `comp[eq[11*floor(n/10)-n, A010052(n)]]` -/
def P8920590612658232277.Spec : Prop :=
  ∀ n, (P8920590612658232277.a n : ℤ) = A241158 (n + 1)

end A241158

/-! ## A241158.P12722116847774068453

`comp[∑[A090102(A340812(n))]]`
-/

namespace A241158.P12722116847774068453
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090102 (A340812 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A241158.P12722116847774068453

namespace A241158

/-- `comp[∑[A090102(A340812(n))]]` -/
def P12722116847774068453.Spec : Prop :=
  ∀ n, (P12722116847774068453.a n : ℤ) = A241158 (n + 1)

end A241158

/-!
# A241165: Number of 2n-vertex connected cubic vertex-transitive graphs which are "Graphical Regular Representations" (automorphism group acts regularly on the vertices).

The programs for A241165, there is no canonical definition to state claims against.
-/

/-! ## A241165.P9610243055514738956

`A002265(A002620(A334134(A002620(n+1)+1)))`
-/

namespace A241165.P9610243055514738956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A002620 (A334134 (A002620 (n + 1) + 1).toNat).toNat).toNat

end

end A241165.P9610243055514738956

/-!
# A241167: Number of cubic graphs on 2n unlabeled nodes whose connected components are vertex-transitive.

The programs for A241167, there is no canonical definition to state claims against.
-/

/-! ## A241167.P8169342207296062366

`A208243(∑[A143555(n)]+1)`
-/

namespace A241167.P8169342207296062366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143555 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208243 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A241167.P8169342207296062366

/-! ## A241167.P14372162281845916071

`A208243(or(1, ∑[A143555(n)]))`
-/

namespace A241167.P14372162281845916071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143555 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208243 (Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A241167.P14372162281845916071

/-! ## A241167.P14194411864596823898

`eq[Δ[A029092(n)], A078771(n+1)]`
-/

namespace A241167.P14194411864596823898
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029092 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078771 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A241167.P14194411864596823898

/-! ## A241167.P11740590326487066136

`lt[A026519(A000040(2*(n+1))), 12]`
-/

namespace A241167.P11740590326487066136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026519 (A000040 (2 * (n + 1))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A241167.P11740590326487066136

/-! ## A241167.P2103157777731519463

`eq[A225485(3*n+4), A321755(A163361(n+1))]`
-/

namespace A241167.P2103157777731519463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225485 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321755 (A163361 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A241167.P2103157777731519463

/-!
# A241168: Triangle read by rows: T(n,k) (1 <= k <= n) = Steffensen's bracket function [n,n-k].

The programs for A241168, there is no canonical definition to state claims against.
-/

/-! ## A241168.P16581964803110199827

`A054255(n+1)/(C(comp[∑[n]]-n, 2)-(n+1))!`
-/

namespace A241168.P16581964803110199827
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054255 (n + 1) : ℚ) / (Nat.factorial ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)).toNat : ℚ)

end

end A241168.P16581964803110199827

/-! ## A241168.P8973217857906491912

`A054255(n+1)/A119502(n)`
-/

namespace A241168.P8973217857906491912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054255 (n + 1) : ℚ) / (A119502 n : ℚ)

end

end A241168.P8973217857906491912

/-! ## A241168.P1532238115593065043

`A054255(n+1)/A025581(n)!`
-/

namespace A241168.P1532238115593065043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054255 (n + 1) : ℚ) / (Nat.factorial (A025581 n).toNat : ℚ)

end

end A241168.P1532238115593065043

/-! ## A241168.P12670355983372508561

`A090665(A038722(n+1))/A119502(n)`
-/

namespace A241168.P12670355983372508561
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090665 (A038722 (n + 1)).toNat : ℚ) / (A119502 n : ℚ)

end

end A241168.P12670355983372508561

/-! ## A241168.P17194620654590308719

`A054255(n+1)/A233543(A061579(n))`
-/

namespace A241168.P17194620654590308719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054255 (n + 1) : ℚ) / (A233543 (A061579 n).toNat : ℚ)

end

end A241168.P17194620654590308719

/-! ## A241168.P15357547598852933076

`A090665(A038722(n+1))/A025581(n)!`
-/

namespace A241168.P15357547598852933076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090665 (A038722 (n + 1)).toNat : ℚ) / (Nat.factorial (A025581 n).toNat : ℚ)

end

end A241168.P15357547598852933076

/-! ## A241168.P12293564974833701574

`A054255(n+1)/A104150(A004736(n+1))`
-/

namespace A241168.P12293564974833701574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054255 (n + 1) : ℚ) / (A104150 (A004736 (n + 1)).toNat : ℚ)

end

end A241168.P12293564974833701574

/-! ## A241168.P2604077832343162489

`A090665(A038722(n+1))/A233543(A061579(n))`
-/

namespace A241168.P2604077832343162489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090665 (A038722 (n + 1)).toNat : ℚ) / (A233543 (A061579 n).toNat : ℚ)

end

end A241168.P2604077832343162489

/-!
# A241169: Steffensen's bracket function [n,3].

The programs for A241169, there is no canonical definition to state claims against.
-/

/-! ## A241169.P14028584321002635596

`A008615(A000629(n)-A001047(n))`
-/

namespace A241169.P14028584321002635596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A000629 n - A001047 n).toNat

end

end A241169.P14028584321002635596

/-! ## A241169.P6351779468320791811

`A008615(A002050(n)-A001047(n))`
-/

namespace A241169.P6351779468320791811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A002050 n - A001047 n).toNat

end

end A241169.P6351779468320791811

/-! ## A241169.P12403872311836939151

`A002264(A002051(n+1)-A384506(n))`
-/

namespace A241169.P12403872311836939151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A002051 (n + 1) - A384506 n).toNat

end

end A241169.P12403872311836939151

/-!
# A241170: Steffensen's bracket function [n,n-3].

The programs for A241170, the canonical program `A241170.P10331361885185123340` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241170 has offset 3).

The definition of A241170 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A241170.P10331361885185123340

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=6, a(1)=25, a(2)=67, a(3)=145, a(4)=275`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A241170

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P10331361885185123340.Spec : Prop :=
  ∀ n, P10331361885185123340.a n = A241170 (n + 3)

theorem P10331361885185123340.correct : P10331361885185123340.Spec := by
  intro n
  simp only [A241170, Nat.add_sub_cancel]

end A241170

/-! ## A241170.P16734134930768874820

`∑[∑[∑[3*n+4]+2]]`
-/

namespace A241170.P16734134930768874820
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241170.P16734134930768874820

namespace A241170

/-- `∑[∑[∑[3*n+4]+2]]` -/
def P16734134930768874820.Spec : Prop :=
  ∀ n, (P16734134930768874820.a n : ℤ) = A241170 (n + 3)

end A241170

/-! ## A241170.P6132255578336369061

`floor(∑[∑[∑[a(n-1)+3]+2]])` with `a(0)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A241170.P6132255578336369061
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f3 =>
  f3 (n - 1) + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241170.P6132255578336369061

namespace A241170

/-- `floor(∑[∑[∑[a(n-1)+3]+2]])` -/
def P6132255578336369061.Spec : Prop :=
  ∀ n, (P6132255578336369061.a n : ℤ) = A241170 (n + 3)

end A241170

/-! ## A241170.P2240183551751648342

`A101854(n+1)+∑[∑[n²]]`
-/

namespace A241170.P2240183551751648342
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101854 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A241170.P2240183551751648342

namespace A241170

/-- `A101854(n+1)+∑[∑[n²]]` -/
def P2240183551751648342.Spec : Prop :=
  ∀ n, P2240183551751648342.a n = A241170 (n + 3)

end A241170

/-! ## A241170.P219671023683281760

`A239568(n+2)+A096957(n)`
-/

namespace A241170.P219671023683281760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239568 (n + 2) + A096957 n

end

end A241170.P219671023683281760

namespace A241170

/-- `A239568(n+2)+A096957(n)` -/
def P219671023683281760.Spec : Prop :=
  ∀ n, P219671023683281760.a n = A241170 (n + 3)

end A241170

/-! ## A241170.P3655950282828878124

`A153977(n+1)+∑[A046092(n+1)]`
-/

namespace A241170.P3655950282828878124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153977 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241170.P3655950282828878124

namespace A241170

/-- `A153977(n+1)+∑[A046092(n+1)]` -/
def P3655950282828878124.Spec : Prop :=
  ∀ n, P3655950282828878124.a n = A241170 (n + 3)

end A241170

/-! ## A241170.P3760874465642068097

`A024191(n+1)+∑[A101854(n+1)-A024191(n+1)]`
-/

namespace A241170.P3760874465642068097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101854 (n + 1) - A024191 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024191 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241170.P3760874465642068097

namespace A241170

/-- `A024191(n+1)+∑[A101854(n+1)-A024191(n+1)]` -/
def P3760874465642068097.Spec : Prop :=
  ∀ n, P3760874465642068097.a n = A241170 (n + 3)

end A241170

/-! ## A241170.P12305735612139139204

`A001701(n+2)-∑[∑[n]]`
-/

namespace A241170.P12305735612139139204
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001701 (n + 2) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A241170.P12305735612139139204

namespace A241170

/-- `A001701(n+2)-∑[∑[n]]` -/
def P12305735612139139204.Spec : Prop :=
  ∀ n, P12305735612139139204.a n = A241170 (n + 3)

end A241170

/-! ## A241170.P7846723732044916870

`A215862(n+1)+(n+1)*(n+2)`
-/

namespace A241170.P7846723732044916870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215862 (n + 1) + ((n + 1) * (n + 2) : ℤ)

end

end A241170.P7846723732044916870

namespace A241170

/-- `A215862(n+1)+(n+1)*(n+2)` -/
def P7846723732044916870.Spec : Prop :=
  ∀ n, P7846723732044916870.a n = A241170 (n + 3)

end A241170

/-! ## A241170.P8012363094335674302

`A163943(n+1)+(n+1)*(n+3)`
-/

namespace A241170.P8012363094335674302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163943 (n + 1) + ((n + 1) * (n + 3) : ℤ)

end

end A241170.P8012363094335674302

namespace A241170

/-- `A163943(n+1)+(n+1)*(n+3)` -/
def P8012363094335674302.Spec : Prop :=
  ∀ n, P8012363094335674302.a n = A241170 (n + 3)

end A241170

/-! ## A241170.P3796122034190435333

`A267370(n+1)+A215862(n)`
-/

namespace A241170.P3796122034190435333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267370 (n + 1) + A215862 n

end

end A241170.P3796122034190435333

namespace A241170

/-- `A267370(n+1)+A215862(n)` -/
def P3796122034190435333.Spec : Prop :=
  ∀ n, P3796122034190435333.a n = A241170 (n + 3)

end A241170

/-! ## A241170.P14843360997560747967

`A033487(n+1)-A241765(n)`
-/

namespace A241170.P14843360997560747967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033487 (n + 1) - A241765 n

end

end A241170.P14843360997560747967

namespace A241170

/-- `A033487(n+1)-A241765(n)` -/
def P14843360997560747967.Spec : Prop :=
  ∀ n, P14843360997560747967.a n = A241170 (n + 3)

end A241170

/-! ## A241170.P12017761105205941478

`A027480(n+1)+A027480(n+1)+A001296(n)`
-/

namespace A241170.P12017761105205941478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027480 (n + 1) + (A027480 (n + 1) + A001296 n)

end

end A241170.P12017761105205941478

namespace A241170

/-- `A027480(n+1)+A027480(n+1)+A001296(n)` -/
def P12017761105205941478.Spec : Prop :=
  ∀ n, P12017761105205941478.a n = A241170 (n + 3)

end A241170

/-! ## A241170.P15678675979526008569

`A000124(n+1)+A215862(n+1)+A000096(n)`
-/

namespace A241170.P15678675979526008569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (n + 1) + (A215862 (n + 1) + A000096 n)

end

end A241170.P15678675979526008569

namespace A241170

/-- `A000124(n+1)+A215862(n+1)+A000096(n)` -/
def P15678675979526008569.Spec : Prop :=
  ∀ n, P15678675979526008569.a n = A241170 (n + 3)

end A241170

/-! ## A241170.P343049476007324639

`A001296(n+1)+A241765(n+1)-A241765(n)`
-/

namespace A241170.P343049476007324639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001296 (n + 1) + (A241765 (n + 1) - A241765 n)

end

end A241170.P343049476007324639

namespace A241170

/-- `A001296(n+1)+A241765(n+1)-A241765(n)` -/
def P343049476007324639.Spec : Prop :=
  ∀ n, P343049476007324639.a n = A241170 (n + 3)

end A241170

/-! ## A241170.P17879463247787943802

`A000217(n+1)+A215862(n+1)+A000217(n+1)`
-/

namespace A241170.P17879463247787943802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A215862 (n + 1) + A000217 (n + 1))

end

end A241170.P17879463247787943802

namespace A241170

/-- `A000217(n+1)+A215862(n+1)+A000217(n+1)` -/
def P17879463247787943802.Spec : Prop :=
  ∀ n, P17879463247787943802.a n = A241170 (n + 3)

end A241170

/-! ## A241170.P990557576119475682

`∑[A002411(n+2)]+∑[n]`
-/

namespace A241170.P990557576119475682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A241170.P990557576119475682

namespace A241170

/-- `∑[A002411(n+2)]+∑[n]` -/
def P990557576119475682.Spec : Prop :=
  ∀ n, P990557576119475682.a n = A241170 (n + 3)

end A241170

/-! ## A241170.P17992544284588249315

`A144335(n+3)-(2*n+5)`
-/

namespace A241170.P17992544284588249315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144335 (n + 3) - (2 * n + 5 : ℤ)

end

end A241170.P17992544284588249315

namespace A241170

/-- `A144335(n+3)-(2*n+5)` -/
def P17992544284588249315.Spec : Prop :=
  ∀ n, P17992544284588249315.a n = A241170 (n + 3)

end A241170

/-! ## A241170.P4236089965425801711

`A212343(n+4)+A001296(n+1)`
-/

namespace A241170.P4236089965425801711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212343 (n + 4) + A001296 (n + 1)

end

end A241170.P4236089965425801711

namespace A241170

/-- `A212343(n+4)+A001296(n+1)` -/
def P4236089965425801711.Spec : Prop :=
  ∀ n, P4236089965425801711.a n = A241170 (n + 3)

end A241170

/-! ## A241170.P964660477701462803

`A090809(n+3)-2*(n+2)`
-/

namespace A241170.P964660477701462803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090809 (n + 3) - (2 * (n + 2) : ℤ)

end

end A241170.P964660477701462803

namespace A241170

/-- `A090809(n+3)-2*(n+2)` -/
def P964660477701462803.Spec : Prop :=
  ∀ n, P964660477701462803.a n = A241170 (n + 3)

end A241170

/-!
# A241171: Triangle read by rows: Joffe's central differences of zero, T(n,k), 1 <= k <= n.

The programs for A241171, there is no canonical definition to state claims against.
-/

/-! ## A241171.P12476497762503027763

`A156289(n+1)*A166350(n+1)`
-/

namespace A241171.P12476497762503027763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156289 (n + 1) * A166350 (n + 1)

end

end A241171.P12476497762503027763

/-! ## A241171.P2704754949685998210

`A002260(n+1)!*A156289(n+1)`
-/

namespace A241171.P2704754949685998210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002260 (n + 1)).toNat : ℤ) * A156289 (n + 1)

end

end A241171.P2704754949685998210

/-! ## A241171.P13556757582005192248

`A000680(A002260(n+1))*A036969(n+1)`
-/

namespace A241171.P13556757582005192248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000680 (A002260 (n + 1)).toNat * A036969 (n + 1)

end

end A241171.P13556757582005192248

/-! ## A241171.P13505979978589027767

`A002260(n+1)*A156289(n+1)*A233543(n)`
-/

namespace A241171.P13505979978589027767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A156289 (n + 1) * A233543 n

end

end A241171.P13505979978589027767

/-! ## A241171.P8539038183969982341

`A019538(n+1)/A008277(n+1)*A156289(n+1)`
-/

namespace A241171.P8539038183969982341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019538 (n + 1) : ℚ) / (A008277 (n + 1) : ℚ) * (A156289 (n + 1) : ℚ)

end

end A241171.P8539038183969982341

/-! ## A241171.P16741231285678947666

`A000680(A002260(n+1))*A008957(A038722(n+1))`
-/

namespace A241171.P16741231285678947666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000680 (A002260 (n + 1)).toNat * A008957 (A038722 (n + 1)).toNat

end

end A241171.P16741231285678947666

/-!
# A241172: Joffe's central differences of 0: A241171(n,n-2).

The programs for A241172, there is no canonical definition to state claims against.
-/

/-! ## A241172.P8906444844071205900

`lcm(n, A241171(A034856(n+1)))`
-/

namespace A241172.P8906444844071205900
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A241171 (A034856 (n + 1)).toNat)

end

end A241172.P8906444844071205900

/-! ## A241172.P15839728072377747762

`A241171(A034856(n+1))-A000007(n)`
-/

namespace A241172.P15839728072377747762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241171 (A034856 (n + 1)).toNat - A000007 n

end

end A241172.P15839728072377747762

/-! ## A241172.P17238178568882896560

`A057427(n)*A241171(A034856(n+1))`
-/

namespace A241172.P17238178568882896560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A241171 (A034856 (n + 1)).toNat

end

end A241172.P17238178568882896560

/-! ## A241172.P17310099286419909866

`A178334(n)*A241171(A034856(n+1))`
-/

namespace A241172.P17310099286419909866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A241171 (A034856 (n + 1)).toNat

end

end A241172.P17310099286419909866

/-! ## A241172.P273154983605845599

`and(-A000045(n), A241171(A034856(n+1)))`
-/

namespace A241172.P273154983605845599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A000045 n) (A241171 (A034856 (n + 1)).toNat)

end

end A241172.P273154983605845599

/-!
# A241175: Numbers which cannot be obtained by adding some digit of a number m to m.

The programs for A241175, there is no canonical definition to state claims against.
-/

/-! ## A241175.P6905063845238551179

`eq[0, A332677(n)]`
-/

namespace A241175.P6905063845238551179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332677 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A241175.P6905063845238551179

/-! ## A241175.P16009959854759338900

`A061511(Δ[n²])`
-/

namespace A241175.P16009959854759338900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061511 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A241175.P16009959854759338900

/-! ## A241175.P5461825915198650018

`A158699(Δ[n²])`
-/

namespace A241175.P5461825915198650018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158699 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A241175.P5461825915198650018

/-! ## A241175.P16970889988878966858

`A247107(Δ[n²])`
-/

namespace A241175.P16970889988878966858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247107 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A241175.P16970889988878966858

/-!
# A241176: Numbers n such that there is exactly one number m with m + (some digit of m) = n.

The programs for A241176, there is no canonical definition to state claims against.
-/

/-! ## A241176.P1252621132401080720

`eq[1, A332677(n)]`
-/

namespace A241176.P1252621132401080720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332677 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A241176.P1252621132401080720

/-! ## A241176.P17130644542368766830

`lt[n, A083538(A138999(n+1)+A106566(3*n))]+n`
-/

namespace A241176.P17130644542368766830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083538 (A138999 (n + 1) + A106566 (3 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + n

end

end A241176.P17130644542368766830

/-! ## A241176.P9529773806948804169

`lt[A246655(n+1), A269165(2*(n+2))]+n`
-/

namespace A241176.P9529773806948804169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269165 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + n

end

end A241176.P9529773806948804169

/-! ## A241176.P123532625555120022

`A372293(n+1)-A010054(A262879(3*n))`
-/

namespace A241176.P123532625555120022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372293 (n + 1) - A010054 (A262879 (3 * n)).toNat

end

end A241176.P123532625555120022

/-! ## A241176.P1562143939565969842

`eq[A000122(A317322(n+3)), A137528(n+1)]-1`
-/

namespace A241176.P1562143939565969842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A317322 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137528 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - 1

end

end A241176.P1562143939565969842

/-!
# A241177: Numbers n such that there are exactly two numbers m with m + (some digit of m) = n.

The programs for A241177, there is no canonical definition to state claims against.
-/

/-! ## A241177.P2218258202815168265

`eq[2, A332677(n)]`
-/

namespace A241177.P2218258202815168265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332677 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A241177.P2218258202815168265

/-!
# A241178: Numbers n such that there are exactly three numbers m with m + (some digit of m) = n.

The programs for A241178, there is no canonical definition to state claims against.
-/

/-! ## A241178.P17724444124419186115

`lt[2, A332677(n)]`
-/

namespace A241178.P17724444124419186115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332677 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A241178.P17724444124419186115

/-! ## A241178.P13203046973267250528

`eq[3, A332677(round(acot(n)+n))]`
-/

namespace A241178.P13203046973267250528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332677 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A241178.P13203046973267250528

/-! ## A241178.P4295633580754964114

`eq[3, A332677(round(sqrt(n²+1)))]`
-/

namespace A241178.P4295633580754964114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332677 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A241178.P4295633580754964114

/-! ## A241178.P11492482552380791492

`eq[3, 6-A332677(n+1)]+1`
-/

namespace A241178.P11492482552380791492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - A332677 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A241178.P11492482552380791492

/-! ## A241178.P17350664548569600797

`A000027(eq[3, A332677(n)])`
-/

namespace A241178.P17350664548569600797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332677 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241178.P17350664548569600797

/-!
# A241180: Start with n; add to it any of its digits; repeat; a(n) = minimal number of steps needed to reach a prime greater than n.

The programs for A241180, there is no canonical definition to state claims against.
-/

/-! ## A241180.P3308363707457993882

`9%A057526(A009440(n+1))`
-/

namespace A241180.P3308363707457993882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 9 (A057526 (A009440 (n + 1)).toNat)

end

end A241180.P3308363707457993882

/-! ## A241180.P5729252743463436955

`A096825(or(A142751(n+1), A142752(n+1)))`
-/

namespace A241180.P5729252743463436955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096825 (Int.lor (A142751 (n + 1)) (A142752 (n + 1))).toNat

end

end A241180.P5729252743463436955

/-! ## A241180.P8625883557242714720

`A031349(A136685(n+1)+A055998(3*n+4))`
-/

namespace A241180.P8625883557242714720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031349 (A136685 (n + 1) + A055998 (3 * n + 4)).toNat

end

end A241180.P8625883557242714720

/-! ## A241180.P9266331004404777110

`A128199(3*n+2)+A003849(A000081(n))`
-/

namespace A241180.P9266331004404777110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128199 (3 * n + 2) + A003849 (A000081 n).toNat

end

end A241180.P9266331004404777110

/-!
# A241181: Start with n; add to it any of its digits; repeat; a(n) = minimal number of steps needed to reach a prime.

The programs for A241181, there is no canonical definition to state claims against.
-/

/-! ## A241181.P506276053195697315

`A005171(n+1)*A241180(n+1)`
-/

namespace A241181.P506276053195697315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1) * A241180 (n + 1)

end

end A241181.P506276053195697315

/-! ## A241181.P2978919354460897528

`A000007(A029833(n+1))*A241180(n+1)`
-/

namespace A241181.P2978919354460897528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A029833 (n + 1)).toNat * A241180 (n + 1)

end

end A241181.P2978919354460897528

/-! ## A241181.P16792179727014222453

`A057427(A050374(n+1))*A241180(n+1)`
-/

namespace A241181.P16792179727014222453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A050374 (n + 1)).toNat * A241180 (n + 1)

end

end A241181.P16792179727014222453

/-! ## A241181.P5569468177780247901

`A241180(n+1)*A266678(A101296(n+1))`
-/

namespace A241181.P5569468177780247901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241180 (n + 1) * A266678 (A101296 (n + 1)).toNat

end

end A241181.P5569468177780247901

/-! ## A241181.P15970793333801574285

`lcm(A033676(n+1)%A014963(n+1)-1, A241180(n+1))`
-/

namespace A241181.P15970793333801574285
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.tmod (A033676 (n + 1)) (A014963 (n + 1)) - 1) (A241180 (n + 1))

end

end A241181.P15970793333801574285

/-! ## A241181.P14346239408159484915

`A241180(n+1)*A279028(A033676(n+1)%A014963(n+1))`
-/

namespace A241181.P14346239408159484915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241180 (n + 1) * A279028 (Int.tmod (A033676 (n + 1)) (A014963 (n + 1))).toNat

end

end A241181.P14346239408159484915

/-! ## A241181.P9184589214028516839

`A241180(n+1)*A292438(A165824(n+1))`
-/

namespace A241181.P9184589214028516839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241180 (n + 1) * A292438 (A165824 (n + 1)).toNat

end

end A241181.P9184589214028516839

/-! ## A241181.P16955313958008913635

`A008683(A083717(n+1))*A241180(n+1)`
-/

namespace A241181.P16955313958008913635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A083717 (n + 1)).toNat * A241180 (n + 1)

end

end A241181.P16955313958008913635

/-! ## A241181.P10599746088442584902

`A241180(n+1)%A259175(n+1)`
-/

namespace A241181.P10599746088442584902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241180 (n + 1)) (A259175 (n + 1))

end

end A241181.P10599746088442584902

/-!
# A241184: Triangle read by rows: T(n,k) (0 <= k <= n) arises from the chain algorithm for the "Just"- or J-version of the n-coin group testing game.

The programs for A241184, there is no canonical definition to state claims against.
-/

/-! ## A241184.P1681329458829152505

`A214972(xor(A050372(n+1), A079661(n+1)))`
-/

namespace A241184.P1681329458829152505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214972 (Int.xor (A050372 (n + 1)) (A079661 (n + 1))).toNat

end

end A241184.P1681329458829152505

/-! ## A241184.P5727160548273756968

`A235498(A360634(n)%A360667(3*n))`
-/

namespace A241184.P5727160548273756968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235498 (Int.tmod (A360634 n) (A360667 (3 * n))).toNat

end

end A241184.P5727160548273756968

/-!
# A241185: Triangle read by rows: T(n,k) (0 <= k <= n) arises from the star algorithm for the "Just"- or J-version of the n-coin group testing game.

The programs for A241185, there is no canonical definition to state claims against.
-/

/-! ## A241185.P472035813991733915

`A222819(A239849(n+1)%A279901(n+1))`
-/

namespace A241185.P472035813991733915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222819 (Int.tmod (A239849 (n + 1)) (A279901 (n + 1))).toNat

end

end A241185.P472035813991733915

/-! ## A241185.P9998293075209522611

`A222819(A239849(n+1))%A360667(3*n+1)`
-/

namespace A241185.P9998293075209522611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222819 (A239849 (n + 1)).toNat) (A360667 (3 * n + 1))

end

end A241185.P9998293075209522611

/-!
# A241187: Triangle read by rows: T(n,k) (0 <= k <= n) = denominator of Integral_{x=0..n} binomial(x,k).

The programs for A241187, there is no canonical definition to state claims against.
-/

/-! ## A241187.P6867322813094707575

`A349059(A052330(n+1)-A162320(n+1))`
-/

namespace A241187.P6867322813094707575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349059 (A052330 (n + 1) - A162320 (n + 1)).toNat

end

end A241187.P6867322813094707575

/-! ## A241187.P9577980877578247418

`A352889(A132945(n))`
-/

namespace A241187.P9577980877578247418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352889 (A132945 n).toNat

end

end A241187.P9577980877578247418

/-! ## A241187.P3049221897707537569

`gcd(∑[A371254(3*n+4)], A019538(n+1))`
-/

namespace A241187.P3049221897707537569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371254 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A019538 (n + 1))

end

end A241187.P3049221897707537569

/-! ## A241187.P17856397942654227064

`A334859(A357217(n+1)+A245501(n))`
-/

namespace A241187.P17856397942654227064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334859 (A357217 (n + 1) + A245501 n).toNat

end

end A241187.P17856397942654227064

/-! ## A241187.P14463456380705347008

`A059268(n)-A321692(A179865(n+1))`
-/

namespace A241187.P14463456380705347008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n - A321692 (A179865 (n + 1)).toNat

end

end A241187.P14463456380705347008

/-!
# A241189: Numerator of Sum_{i=1..n} 1/(prime(i)*prime(i+1)).

The programs for A241189, there is no canonical definition to state claims against.
-/

/-! ## A241189.P9951270263056071613

`or(n+1, A294908(2^n))`
-/

namespace A241189.P9951270263056071613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (A294908 (2 ^ n))

end

end A241189.P9951270263056071613

/-!
# A241190: Denominator of Sum_{i=1..n} 1/(prime(i)*prime(i+1)).

The programs for A241190, there is no canonical definition to state claims against.
-/

/-! ## A241190.P5543115029881924196

`A002110(n+2)/A003893(A026383(n))`
-/

namespace A241190.P5543115029881924196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 (n + 2) : ℚ) / (A003893 (A026383 n).toNat : ℚ)

end

end A241190.P5543115029881924196

/-! ## A241190.P8712116741301874361

`A002110(n+2)/A131296(A007051(n))`
-/

namespace A241190.P8712116741301874361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 (n + 2) : ℚ) / (A131296 (A007051 n).toNat : ℚ)

end

end A241190.P8712116741301874361

/-! ## A241190.P11470622387121101028

`A002110(n+2)/A141425(A026150(n))`
-/

namespace A241190.P11470622387121101028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 (n + 2) : ℚ) / (A141425 (A026150 n).toNat : ℚ)

end

end A241190.P11470622387121101028

/-! ## A241190.P12225980298297991676

`A002110(n+2)/A175723(A046717(n))`
-/

namespace A241190.P12225980298297991676
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 (n + 2) : ℚ) / (A175723 (A046717 n).toNat : ℚ)

end

end A241190.P12225980298297991676

/-! ## A241190.P8543318856818610892

`A113593(n+5)/5`
-/

namespace A241190.P8543318856818610892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113593 (n + 5) : ℚ) / 5

end

end A241190.P8543318856818610892

/-!
# A241193: a(n) = Sum_{k=1..n} ((3*n-k-1)/(2*n-k))*(3*n-k-2)!/((n-1)!*(n-1)!*(n-k)!).

The programs for A241193, there is no canonical definition to state claims against.
-/

/-! ## A241193.P3398125951905193450

`A209245(n+1)/3`
-/

namespace A241193.P3398125951905193450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209245 (n + 1) : ℚ) / 3

end

end A241193.P3398125951905193450

/-! ## A241193.P2968911604425815308

`Δ[∑[A209245(n)]/3]`
-/

namespace A241193.P2968911604425815308
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209245 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A241193.P2968911604425815308

/-! ## A241193.P283839548937741225

`record[ratio[A209245(A193592(n))]]`
-/

namespace A241193.P283839548937741225
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209245 (A193592 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241193.P283839548937741225

/-! ## A241193.P3581046591386109465

`record[ratio[A209245(A225174(n+1))]]`
-/

namespace A241193.P3581046591386109465
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209245 (A225174 (n + 1)).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241193.P3581046591386109465

/-! ## A241193.P10199926901350096664

`A210472(Δ[A264443(n)])/3`
-/

namespace A241193.P10199926901350096664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210472 (f1 (n + 1) - f1 n).toNat : ℚ) / 3

end

end A241193.P10199926901350096664

/-!
# A241194: Numerator of phi(p-1)/(p-1), where phi is Euler's totient function and p = prime(n).

The programs for A241194, there is no canonical definition to state claims against.
-/

/-! ## A241194.P6932386124528485285

`A008330(n+1)/A006093(n+1)*A241195(n+1)`
-/

namespace A241194.P6932386124528485285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008330 (n + 1) : ℚ) / (A006093 (n + 1) : ℚ) * (A241195 (n + 1) : ℚ)

end

end A241194.P6932386124528485285

/-! ## A241194.P12160966811309001713

`A008330(n+1)/record[A000010(n+1)]*A241195(n+1)`
-/

namespace A241194.P12160966811309001713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008330 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) * (A241195 (n + 1) : ℚ)

end

end A241194.P12160966811309001713

/-! ## A241194.P7702541448888336847

`A076512(record[A037225(n)])`
-/

namespace A241194.P7702541448888336847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076512 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A241194.P7702541448888336847

/-! ## A241194.P2614168708065509877

`A076512(A006093(n+1))`
-/

namespace A241194.P2614168708065509877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076512 (A006093 (n + 1)).toNat

end

end A241194.P2614168708065509877

/-! ## A241194.P17440708225558816749

`A076512(A077063(n+1))`
-/

namespace A241194.P17440708225558816749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076512 (A077063 (n + 1)).toNat

end

end A241194.P17440708225558816749

/-! ## A241194.P1397700322928172208

`A076512(A156037(n+1))`
-/

namespace A241194.P1397700322928172208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076512 (A156037 (n + 1)).toNat

end

end A241194.P1397700322928172208

/-! ## A241194.P16637742743730882290

`A076512(record[A000010(n+1)])`
-/

namespace A241194.P16637742743730882290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076512 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A241194.P16637742743730882290

/-! ## A241194.P13547462852980353085

`A076512(record[A076512(n+1)])`
-/

namespace A241194.P13547462852980353085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076512 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076512 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A241194.P13547462852980353085

/-! ## A241194.P3868474912621321148

`A076512(A000040(n+1)-1)`
-/

namespace A241194.P3868474912621321148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076512 (A000040 (n + 1) - 1).toNat

end

end A241194.P3868474912621321148

/-! ## A241194.P18347657401743230859

`A076512(A037168(n+1)/2)`
-/

namespace A241194.P18347657401743230859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076512 (SequenceMachineLib.roundAway ((A037168 (n + 1) : ℚ) / 2)).toNat

end

end A241194.P18347657401743230859

/-! ## A241194.P5038650780237604329

`A076512(eq[1, A051953(n+1)])`
-/

namespace A241194.P5038650780237604329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076512 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241194.P5038650780237604329

/-! ## A241194.P5005175124744410271

`A076512(eq[n, A000010(n+1)])`
-/

namespace A241194.P5005175124744410271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076512 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241194.P5005175124744410271

/-! ## A241194.P9125825278336573513

`A076512(eq[n, A076512(n+1)])`
-/

namespace A241194.P9125825278336573513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076512 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076512 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241194.P9125825278336573513

/-! ## A241194.P8677766381541874781

`A076512(A000010(A000040(n+1)))`
-/

namespace A241194.P8677766381541874781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076512 (A000010 (A000040 (n + 1)).toNat).toNat

end

end A241194.P8677766381541874781

/-! ## A241194.P275208814103095499

`A076512(A076512(A000720(A006450(n+1))))`
-/

namespace A241194.P275208814103095499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076512 (A076512 (A000720 (A006450 (n + 1)).toNat).toNat).toNat

end

end A241194.P275208814103095499

/-! ## A241194.P104130555959311357

`A008330(n+1)/gcd(A006093(n+1), A219028(n+1))`
-/

namespace A241194.P104130555959311357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008330 (n + 1) : ℚ) / (Int.gcd (A006093 (n + 1)) (A219028 (n + 1)) : ℚ)

end

end A241194.P104130555959311357

/-! ## A241194.P11977850987037338449

`A076512(A037168(n+1))`
-/

namespace A241194.P11977850987037338449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076512 (A037168 (n + 1)).toNat

end

end A241194.P11977850987037338449

/-!
# A241195: Denominator of phi(prime(n)-1)/(prime(n)-1), where phi is Euler's totient function and prime(n) is the n-th prime.

The programs for A241195, there is no canonical definition to state claims against.
-/

/-! ## A241195.P11648092248961294241

`A006093(n+1)/A008330(n+1)*A241194(n+1)`
-/

namespace A241195.P11648092248961294241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) : ℚ) / (A008330 (n + 1) : ℚ) * (A241194 (n + 1) : ℚ)

end

end A241195.P11648092248961294241

/-! ## A241195.P7791902164886545125

`A109395(A006093(n+1))`
-/

namespace A241195.P7791902164886545125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109395 (A006093 (n + 1)).toNat

end

end A241195.P7791902164886545125

/-! ## A241195.P12516757487240793904

`A109395(A077063(n+1))`
-/

namespace A241195.P12516757487240793904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109395 (A077063 (n + 1)).toNat

end

end A241195.P12516757487240793904

/-! ## A241195.P2561970249486108938

`A109395(sqrt(A005722(n+1)))`
-/

namespace A241195.P2561970249486108938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109395 (SequenceMachineLib.roundAway (Real.sqrt (A005722 (n + 1) : ℝ))).toNat

end

end A241195.P2561970249486108938

/-! ## A241195.P5803680418458431442

`A109395(record[A000010(n+1)])`
-/

namespace A241195.P5803680418458431442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109395 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A241195.P5803680418458431442

/-! ## A241195.P5991257902199130047

`A109395(A000040(n+1)-1)`
-/

namespace A241195.P5991257902199130047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109395 (A000040 (n + 1) - 1).toNat

end

end A241195.P5991257902199130047

/-! ## A241195.P11516745963279998618

`A109395(A100484(n+1)/2-1)`
-/

namespace A241195.P11516745963279998618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109395 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2 - 1)).toNat

end

end A241195.P11516745963279998618

/-! ## A241195.P7728462485034397385

`A109395(A000010(A000040(n+1)))`
-/

namespace A241195.P7728462485034397385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109395 (A000010 (A000040 (n + 1)).toNat).toNat

end

end A241195.P7728462485034397385

/-! ## A241195.P11433572886488285050

`A109395(eq[A001221(n+1)+n, A109395(n+1)])`
-/

namespace A241195.P11433572886488285050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109395 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109395 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A241195.P11433572886488285050

/-! ## A241195.P1231342697073806426

`A109395(record[A002322(n+1)])`
-/

namespace A241195.P1231342697073806426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109395 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A241195.P1231342697073806426

/-! ## A241195.P11490563939503955852

`A109395(record[A076512(n+1)])`
-/

namespace A241195.P11490563939503955852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076512 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109395 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A241195.P11490563939503955852

/-! ## A241195.P15767067882422547337

`A109395(eq[1, A032741(n+1)])`
-/

namespace A241195.P15767067882422547337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109395 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241195.P15767067882422547337

/-! ## A241195.P16974684494864204309

`A109395(eq[1, A032741(n)]-1)`
-/

namespace A241195.P16974684494864204309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109395 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 1)

end

end A241195.P16974684494864204309

/-! ## A241195.P2682462396709250394

`A109395(eq[n+2, A001615(n+1)])`
-/

namespace A241195.P2682462396709250394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109395 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241195.P2682462396709250394

/-! ## A241195.P13646579282578613649

`A109395(eq[n+2, A048250(n+1)])`
-/

namespace A241195.P13646579282578613649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109395 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241195.P13646579282578613649

/-! ## A241195.P13463094338699570819

`A295126(∏{p}[1-A000040(n+1), #])`
-/

namespace A241195.P13463094338699570819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295126 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A241195.P13463094338699570819

/-! ## A241195.P5734133760915468143

`A006093(n+1)/gcd(A006093(n+1), A219028(n+1))`
-/

namespace A241195.P5734133760915468143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) : ℚ) / (Int.gcd (A006093 (n + 1)) (A219028 (n + 1)) : ℚ)

end

end A241195.P5734133760915468143

/-!
# A241197: Numerator of new minima of phi(p-1)/(p-1), where phi is Euler's totient function and p = prime(n).

The programs for A241197, there is no canonical definition to state claims against.
-/

/-! ## A241197.P10506073928267370967

`∏{p}[A063896(n), A111650(#)]`
-/

namespace A241197.P10506073928267370967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063896 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A111650 p

end

end A241197.P10506073928267370967

/-! ## A241197.P14023611211595697698

`A049099(A150538(n)+A030451(n))`
-/

namespace A241197.P14023611211595697698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049099 (A150538 n + A030451 n).toNat

end

end A241197.P14023611211595697698

/-! ## A241197.P5648401975970496518

`A049099(A150187(n)+A034064(n))`
-/

namespace A241197.P5648401975970496518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049099 (A150187 n + A034064 n).toNat

end

end A241197.P5648401975970496518

/-! ## A241197.P6922944467595676621

`and(A000010(A293962(n)), A159274(n))`
-/

namespace A241197.P6922944467595676621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000010 (A293962 n).toNat) (A159274 n)

end

end A241197.P6922944467595676621

/-!
# A241198: Denominator of new minima of phi(p-1)/(p-1), where phi is Euler's totient function and p = prime(n).

The programs for A241198, there is no canonical definition to state claims against.
-/

/-! ## A241198.P2310094526703830190

`A250246(A060753(n+1))`
-/

namespace A241198.P2310094526703830190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250246 (A060753 (n + 1)).toNat

end

end A241198.P2310094526703830190

/-! ## A241198.P17680632900829810253

`A000010(A073918(n))/A058250(n)`
-/

namespace A241198.P17680632900829810253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A073918 n).toNat : ℚ) / (A058250 n : ℚ)

end

end A241198.P17680632900829810253

/-! ## A241198.P14820223382249772320

`A250250(A008289(n+1)*A060753(n+1))`
-/

namespace A241198.P14820223382249772320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250250 (A008289 (n + 1) * A060753 (n + 1)).toNat

end

end A241198.P14820223382249772320

/-!
# A241199: Numbers n such that 4 consecutive terms of binomial(n,k) satisfy a quadratic relation for 0 <= k <= n/2.

The programs for A241199, the canonical program `A241199.P16378897894550605950` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241199 has offset 1).

The definition of A241199 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A241199.P16378897894550605950

`∑[(n+4)*gcd(2, n)]+6`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A241199

/-- `∑[(n+4)*gcd(2, n)]+6` -/
def P16378897894550605950.Spec : Prop :=
  ∀ n, (P16378897894550605950.a n : ℤ) = A241199 (n + 1)

theorem P16378897894550605950.correct : P16378897894550605950.Spec := by
  intro n
  simp only [A241199, Nat.add_sub_cancel]

end A241199

/-! ## A241199.P16827602781893982301

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=14, a(1)=19, a(2)=31, a(3)=38, a(4)=54`
-/

namespace A241199.P16827602781893982301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [14, 19, 31, 38, 54] fun n a =>
  a (n - 1) + 2 * a (n - 2) - 2 * a (n - 3) - a (n - 4) + a (n - 5)

end

end A241199.P16827602781893982301

namespace A241199

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P16827602781893982301.Spec : Prop :=
  ∀ n, P16827602781893982301.a n = A241199 (n + 1)

end A241199

/-! ## A241199.P13414565820050212653

`A394240(n+3)-A194073(n+1)`
-/

namespace A241199.P13414565820050212653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394240 (n + 3) - A194073 (n + 1)

end

end A241199.P13414565820050212653

namespace A241199

/-- `A394240(n+3)-A194073(n+1)` -/
def P13414565820050212653.Spec : Prop :=
  ∀ n, P13414565820050212653.a n = A241199 (n + 1)

end A241199

/-! ## A241199.P18351734328880843492

`A369304(n+3)`
-/

namespace A241199.P18351734328880843492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369304 (n + 3)

end

end A241199.P18351734328880843492

namespace A241199

/-- `A369304(n+3)` -/
def P18351734328880843492.Spec : Prop :=
  ∀ n, P18351734328880843492.a n = A241199 (n + 1)

end A241199

/-! ## A241199.P2261692807049320984

`A133146(n+3)+n`
-/

namespace A241199.P2261692807049320984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133146 (n + 3) + (n : ℤ)

end

end A241199.P2261692807049320984

namespace A241199

/-- `A133146(n+3)+n` -/
def P2261692807049320984.Spec : Prop :=
  ∀ n, P2261692807049320984.a n = A241199 (n + 1)

end A241199

/-! ## A241199.P14597865999104689587

`Δ[A143785(n+2)]+n+2`
-/

namespace A241199.P14597865999104689587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143785 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n + 2 : ℤ)

end

end A241199.P14597865999104689587

namespace A241199

/-- `Δ[A143785(n+2)]+n+2` -/
def P14597865999104689587.Spec : Prop :=
  ∀ n, P14597865999104689587.a n = A241199 (n + 1)

end A241199

/-! ## A241199.P17296051545868021687

`A164097(n+3)-A001082(n+3)`
-/

namespace A241199.P17296051545868021687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164097 (n + 3) - A001082 (n + 3)

end

end A241199.P17296051545868021687

namespace A241199

/-- `A164097(n+3)-A001082(n+3)` -/
def P17296051545868021687.Spec : Prop :=
  ∀ n, P17296051545868021687.a n = A241199 (n + 1)

end A241199

/-! ## A241199.P10962732646677982888

`A000217(A007494(n+3))-A001318(n+1)`
-/

namespace A241199.P10962732646677982888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A007494 (n + 3)).toNat - A001318 (n + 1)

end

end A241199.P10962732646677982888

namespace A241199

/-- `A000217(A007494(n+3))-A001318(n+1)` -/
def P10962732646677982888.Spec : Prop :=
  ∀ n, P10962732646677982888.a n = A241199 (n + 1)

end A241199

/-! ## A241199.P5350848202917763932

`Δ[A246695(n+3)]-3`
-/

namespace A241199.P5350848202917763932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246695 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 3

end

end A241199.P5350848202917763932

namespace A241199

/-- `Δ[A246695(n+3)]-3` -/
def P5350848202917763932.Spec : Prop :=
  ∀ n, P5350848202917763932.a n = A241199 (n + 1)

end A241199

/-! ## A241199.P16056433859359157270

`∑[A296070(n+4)]+6`
-/

namespace A241199.P16056433859359157270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296070 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 6

end

end A241199.P16056433859359157270

namespace A241199

/-- `∑[A296070(n+4)]+6` -/
def P16056433859359157270.Spec : Prop :=
  ∀ n, P16056433859359157270.a n = A241199 (n + 1)

end A241199

/-! ## A241199.P16413106664449481100

`A117748(n+4)-A001318(n+1)`
-/

namespace A241199.P16413106664449481100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117748 (n + 4) - A001318 (n + 1)

end

end A241199.P16413106664449481100

namespace A241199

/-- `A117748(n+4)-A001318(n+1)` -/
def P16413106664449481100.Spec : Prop :=
  ∀ n, P16413106664449481100.a n = A241199 (n + 1)

end A241199

/-! ## A241199.P17703739982042312121

`A001082(n+5)-2`
-/

namespace A241199.P17703739982042312121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001082 (n + 5) - 2

end

end A241199.P17703739982042312121

namespace A241199

/-- `A001082(n+5)-2` -/
def P17703739982042312121.Spec : Prop :=
  ∀ n, P17703739982042312121.a n = A241199 (n + 1)

end A241199

/-! ## A241199.P10523438745862379714

`A057780(n+5)/3-2`
-/

namespace A241199.P10523438745862379714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057780 (n + 5) : ℚ) / 3 - 2

end

end A241199.P10523438745862379714

namespace A241199

/-- `A057780(n+5)/3-2` -/
def P10523438745862379714.Spec : Prop :=
  ∀ n, P10523438745862379714.a n = (A241199 (n + 1) : ℚ)

end A241199

/-! ## A241199.P1111274992025804708

`A032765(A032766(n+4))-2`
-/

namespace A241199.P1111274992025804708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032765 (A032766 (n + 4)).toNat - 2

end

end A241199.P1111274992025804708

namespace A241199

/-- `A032765(A032766(n+4))-2` -/
def P1111274992025804708.Spec : Prop :=
  ∀ n, P1111274992025804708.a n = A241199 (n + 1)

end A241199

/-! ## A241199.P12956836608063781041

`A079810(2*n+7)-2`
-/

namespace A241199.P12956836608063781041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079810 (2 * n + 7) - 2

end

end A241199.P12956836608063781041

namespace A241199

/-- `A079810(2*n+7)-2` -/
def P12956836608063781041.Spec : Prop :=
  ∀ n, P12956836608063781041.a n = A241199 (n + 1)

end A241199

/-! ## A241199.P13357554586259170381

`A008585(A001318(n+3))-A001318(n+1)`
-/

namespace A241199.P13357554586259170381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A001318 (n + 3)).toNat - A001318 (n + 1)

end

end A241199.P13357554586259170381

namespace A241199

/-- `A008585(A001318(n+3))-A001318(n+1)` -/
def P13357554586259170381.Spec : Prop :=
  ∀ n, P13357554586259170381.a n = A241199 (n + 1)

end A241199

/-! ## A241199.P702327654826255220

`eq[A154068(n+4), A282743(n)]`
-/

namespace A241199.P702327654826255220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154068 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282743 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A241199.P702327654826255220

namespace A241199

/-- `eq[A154068(n+4), A282743(n)]` -/
def P702327654826255220.Spec : Prop :=
  ∀ n, (P702327654826255220.a n : ℤ) = A241199 (n + 1)

end A241199

