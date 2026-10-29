import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C035
import Seq.B000.C038
import Seq.B000.C041
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C005
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B005.C002
import Seq.B006.C000
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
# A399901: Word representation of the precise grasshopper infinite barrycade (recursively defined family of permutations of the positive integers having pairwise disjoint sets of partial sums).

The programs for A399901, there is no canonical definition to state claims against.
-/

/-! ## A399901.P559631586039524462

`A072344(A301812(n+1))`
-/

namespace A399901.P559631586039524462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072344 (A301812 (n + 1)).toNat

end

end A399901.P559631586039524462

/-! ## A399901.P14908166536343242518

`A106052(A042331(n))`
-/

namespace A399901.P14908166536343242518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106052 (A042331 n).toNat

end

end A399901.P14908166536343242518

/-! ## A399901.P7730776341404340025

`A003324(A368804(n+1))`
-/

namespace A399901.P7730776341404340025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003324 (A368804 (n + 1)).toNat

end

end A399901.P7730776341404340025

/-!
# A399906: Word representation of the precise greedy grasshopper infinite barrycade (recursively defined family of permutations of the positive integers having pairwise disjoint sets of partial sums).

The programs for A399906, there is no canonical definition to state claims against.
-/

/-! ## A399906.P15733238993494253167

`A083898(A063431(n+2))`
-/

namespace A399906.P15733238993494253167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083898 (A063431 (n + 2)).toNat

end

end A399906.P15733238993494253167

/-! ## A399906.P13678370178249644371

`A374740(A035515(n))`
-/

namespace A399906.P13678370178249644371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374740 (A035515 n).toNat

end

end A399906.P13678370178249644371

/-! ## A399906.P12850653081524710021

`A218828(A290415(n+1))`
-/

namespace A399906.P12850653081524710021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218828 (A290415 (n + 1)).toNat

end

end A399906.P12850653081524710021

/-! ## A399906.P12882538471111461466

`A327567(A209684(n+2))`
-/

namespace A399906.P12882538471111461466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327567 (A209684 (n + 2)).toNat

end

end A399906.P12882538471111461466

/-!
# A399909: Word representation of the greedy infinite quasi-barrycade (recursively defined family of quasi-permutations having pairwise disjoint sets of partial sums).

The programs for A399909, there is no canonical definition to state claims against.
-/

/-! ## A399909.P6131663858016470313

`A376181(A127136(n+1))`
-/

namespace A399909.P6131663858016470313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376181 (A127136 (n + 1)).toNat

end

end A399909.P6131663858016470313

/-! ## A399909.P3382246871790531626

`A235123(A336863(n+1))`
-/

namespace A399909.P3382246871790531626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235123 (A336863 (n + 1)).toNat

end

end A399909.P3382246871790531626

/-! ## A399909.P17949685000902283302

`A347643(A388547(n+1))`
-/

namespace A399909.P17949685000902283302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347643 (A388547 (n + 1)).toNat

end

end A399909.P17949685000902283302

/-! ## A399909.P11620672041100775908

`A376181(A060637(n))`
-/

namespace A399909.P11620672041100775908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376181 (A060637 n).toNat

end

end A399909.P11620672041100775908

/-! ## A399909.P3659152590904873926

`A334216(A114192(n))`
-/

namespace A399909.P3659152590904873926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334216 (A114192 n).toNat

end

end A399909.P3659152590904873926

/-!
# A399916: The factorial base expansion of a(n) corresponds to the winning position in Tchoukaillon (or Mancala) solitaire for n stones.

The programs for A399916, there is no canonical definition to state claims against.
-/

/-! ## A399916.P15850059080014192852

`A322001(A028931(n))`
-/

namespace A399916.P15850059080014192852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322001 (A028931 n).toNat

end

end A399916.P15850059080014192852

/-!
# A399920: Smallest Ramanujan's largely composite number (A067128) which is divisible by prime(n).

The programs for A399920, there is no canonical definition to state claims against.
-/

/-! ## A399920.P726674744340862317

`A134170(A114411(n+1))`
-/

namespace A399920.P726674744340862317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134170 (A114411 (n + 1)).toNat

end

end A399920.P726674744340862317

/-!
# A399924: Numbers k such that A007429(k) is odd.

The programs for A399924, the canonical program `A399924.P7475448484565824650` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399924 has offset 1).

The definition of A399924 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6665 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A399924.P15776283174332219583

`filter[A003159(n+1), A353628(#)]`
-/

namespace A399924.P15776283174332219583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353628 (f1 j).toNat = 1) n)

end

end A399924.P15776283174332219583

namespace A399924

/-- `filter[A003159(n+1), A353628(#)]` -/
def P15776283174332219583.Spec : Prop :=
  ∀ n, P15776283174332219583.a n = A399924 (n + 1)

end A399924

/-! ## A399924.P7475448484565824650

`filter[A353511(n+1), A035263(#)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A399924

/-- `filter[A353511(n+1), A035263(#)]` -/
def P7475448484565824650.Spec : Prop :=
  ∀ n, P7475448484565824650.a n = A399924 (n + 1)

theorem P7475448484565824650.correct : P7475448484565824650.Spec := by
  intro n
  simp only [A399924, Nat.add_sub_cancel]

end A399924

/-! ## A399924.P14022495618352211837

`∩[A003159(n+1), A353511(n+1)]`
-/

namespace A399924.P14022495618352211837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399924.P14022495618352211837

namespace A399924

/-- `∩[A003159(n+1), A353511(n+1)]` -/
def P14022495618352211837.Spec : Prop :=
  ∀ n, (P14022495618352211837.a n : ℤ) = A399924 (n + 1)

end A399924

/-! ## A399924.P2457940323090016369

`filter[A036552(2*n+1), A353628(#)]`
-/

namespace A399924.P2457940323090016369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036552 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353628 (f1 j).toNat = 1) n)

end

end A399924.P2457940323090016369

namespace A399924

/-- `filter[A036552(2*n+1), A353628(#)]` -/
def P2457940323090016369.Spec : Prop :=
  ∀ n, P2457940323090016369.a n = A399924 (n + 1)

end A399924

/-!
# A399927: Lexicographically earliest sequence such that each term specifies how many positions away the nearest larger term occurs.

The programs for A399927, there is no canonical definition to state claims against.
-/

/-! ## A399927.P5528108675172004595

`A368544(A225466(n))`
-/

namespace A399927.P5528108675172004595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368544 (A225466 n).toNat

end

end A399927.P5528108675172004595

/-! ## A399927.P9910160974833101721

`A383534(A375969(n+2))`
-/

namespace A399927.P9910160974833101721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383534 (A375969 (n + 2)).toNat

end

end A399927.P9910160974833101721

/-! ## A399927.P17395917892655561638

`A028920(A004899(n+1))`
-/

namespace A399927.P17395917892655561638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028920 (A004899 (n + 1)).toNat

end

end A399927.P17395917892655561638

/-! ## A399927.P15661286179617401695

`A051904(A344473(n+2))`
-/

namespace A399927.P15661286179617401695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (A344473 (n + 2)).toNat

end

end A399927.P15661286179617401695

/-! ## A399927.P8169293974418651466

`A071178(A393012(n+2))`
-/

namespace A399927.P8169293974418651466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071178 (A393012 (n + 2)).toNat

end

end A399927.P8169293974418651466

/-!
# A399931: Maximum number of Hamiltonian cycles in a polyomino with 2*n cells.

The programs for A399931, there is no canonical definition to state claims against.
-/

/-! ## A399931.P6123742323464919611

`A356068(A060546(n))`
-/

namespace A399931.P6123742323464919611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356068 (A060546 n).toNat

end

end A399931.P6123742323464919611

/-! ## A399931.P12245158224804440570

`A239950(A008643(n+1))`
-/

namespace A399931.P12245158224804440570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239950 (A008643 (n + 1)).toNat

end

end A399931.P12245158224804440570

/-! ## A399931.P12752875517072490034

`A239950(A008644(n+1))`
-/

namespace A399931.P12752875517072490034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239950 (A008644 (n + 1)).toNat

end

end A399931.P12752875517072490034

/-! ## A399931.P1703043104758177300

`A239950(A008645(n+1))`
-/

namespace A399931.P1703043104758177300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239950 (A008645 (n + 1)).toNat

end

end A399931.P1703043104758177300

/-! ## A399931.P7390135740792438359

`A239950(A018819(n+1))`
-/

namespace A399931.P7390135740792438359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239950 (A018819 (n + 1)).toNat

end

end A399931.P7390135740792438359

/-!
# A399934: Six times the maximum area of the convex hull of a polyhex with n cells, where each hexagonal cell has area 1.

The programs for A399934, the canonical program `A399934.P14325894849498318737` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399934 has offset 1).

The definition of A399934 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A399934.P14325894849498318737

`ogf((6+2x+x^2-3x^3)/(1-2x+x^2-x^3+2x^4-x^5))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A399934

/-- `ogf((6+2x+x^2-3x^3)/(1-2x+x^2-x^3+2x^4-x^5))` -/
def P14325894849498318737.Spec : Prop :=
  ∀ n, P14325894849498318737.a n = A399934 (n + 1)

theorem P14325894849498318737.correct : P14325894849498318737.Spec := by
  intro n
  simp only [A399934, Nat.add_sub_cancel]

end A399934

/-! ## A399934.P15499174646822049335

`ceil((n+1)²+14*(n+1)/3)`
-/

namespace A399934.P15499174646822049335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n + 1) ^ 2 : ℚ) + (14 * (n + 1) : ℚ) / 3⌉

end

end A399934.P15499174646822049335

namespace A399934

/-- `ceil((n+1)²+14*(n+1)/3)` -/
def P15499174646822049335.Spec : Prop :=
  ∀ n, P15499174646822049335.a n = A399934 (n + 1)

end A399934

/-! ## A399934.P5010267962124580360

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=6, a(1)=14, a(2)=23, a(3)=35, a(4)=49`
-/

namespace A399934.P5010267962124580360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 14, 23, 35, 49] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 3) - 2 * a (n - 4) + a (n - 5)

end

end A399934.P5010267962124580360

namespace A399934

/-- `2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` -/
def P5010267962124580360.Spec : Prop :=
  ∀ n, P5010267962124580360.a n = A399934 (n + 1)

end A399934

/-! ## A399934.P7333599281259207065

`∑[a(n-3)+6]` with `a(0)=6, a(1)=8, a(2)=9`
-/

namespace A399934.P7333599281259207065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 8, 9] fun n f1 =>
  f1 (n - 3) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399934.P7333599281259207065

namespace A399934

/-- `∑[a(n-3)+6]` -/
def P7333599281259207065.Spec : Prop :=
  ∀ n, (P7333599281259207065.a n : ℤ) = A399934 (n + 1)

end A399934

/-! ## A399934.P15858399394211607006

`∑[∑[floor(a(n-3))]]` with `a(0)=6, a(1)=2, a(2)=1, a(3)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A399934.P15858399394211607006
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [6, 2, 1, 3] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399934.P15858399394211607006

namespace A399934

/-- `∑[∑[floor(a(n-3))]]` -/
def P15858399394211607006.Spec : Prop :=
  ∀ n, (P15858399394211607006.a n : ℤ) = A399934 (n + 1)

end A399934

/-! ## A399934.P9745089761622646720

`∑[∑[4-a(a(n-2))]]` with `a(0)=6, a(1)=2, a(2)=1`
-/

namespace A399934.P9745089761622646720
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [6, 2, 1] fun n f2 =>
  4 - f2 (f2 (n - 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399934.P9745089761622646720

namespace A399934

/-- `∑[∑[4-a(a(n-2))]]` -/
def P9745089761622646720.Spec : Prop :=
  ∀ n, P9745089761622646720.a n = A399934 (n + 1)

end A399934

/-! ## A399934.P656405145162094077

`∑[A047261(n+1)+4]`
-/

namespace A399934.P656405145162094077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047261 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399934.P656405145162094077

namespace A399934

/-- `∑[A047261(n+1)+4]` -/
def P656405145162094077.Spec : Prop :=
  ∀ n, P656405145162094077.a n = A399934 (n + 1)

end A399934

/-! ## A399934.P7470037094726277835

`∑[A029739(n+1)+5]`
-/

namespace A399934.P7470037094726277835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029739 (n + 1) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399934.P7470037094726277835

namespace A399934

/-- `∑[A029739(n+1)+5]` -/
def P7470037094726277835.Spec : Prop :=
  ∀ n, P7470037094726277835.a n = A399934 (n + 1)

end A399934

/-! ## A399934.P3699564467895931737

`A400700(n)+A047378(n+1)`
-/

namespace A399934.P3699564467895931737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400700 n + A047378 (n + 1)

end

end A399934.P3699564467895931737

namespace A399934

/-- `A400700(n)+A047378(n+1)` -/
def P3699564467895931737.Spec : Prop :=
  ∀ n, P3699564467895931737.a n = A399934 (n + 1)

end A399934

/-! ## A399934.P14186032687189762573

`A102305(n+1)+A047622(n+1)`
-/

namespace A399934.P14186032687189762573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102305 (n + 1) + A047622 (n + 1)

end

end A399934.P14186032687189762573

namespace A399934

/-- `A102305(n+1)+A047622(n+1)` -/
def P14186032687189762573.Spec : Prop :=
  ∀ n, P14186032687189762573.a n = A399934 (n + 1)

end A399934

/-! ## A399934.P3338854748623068666

`A005563(n+1)+A005563(n+1)-A262523(n)`
-/

namespace A399934.P3338854748623068666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (n + 1) + A005563 (n + 1) - A262523 n

end

end A399934.P3338854748623068666

namespace A399934

/-- `A005563(n+1)+A005563(n+1)-A262523(n)` -/
def P3338854748623068666.Spec : Prop :=
  ∀ n, P3338854748623068666.a n = A399934 (n + 1)

end A399934

/-! ## A399934.P15445704018448277750

`A240438(n+3)+2*n+1`
-/

namespace A399934.P15445704018448277750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240438 (n + 3) + (2 * n + 1 : ℤ)

end

end A399934.P15445704018448277750

namespace A399934

/-- `A240438(n+3)+2*n+1` -/
def P15445704018448277750.Spec : Prop :=
  ∀ n, P15445704018448277750.a n = A399934 (n + 1)

end A399934

/-! ## A399934.P17104441803715752914

`∑[A047244(n+4)]`
-/

namespace A399934.P17104441803715752914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047244 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399934.P17104441803715752914

namespace A399934

/-- `∑[A047244(n+4)]` -/
def P17104441803715752914.Spec : Prop :=
  ∀ n, P17104441803715752914.a n = A399934 (n + 1)

end A399934

/-! ## A399934.P12716979030727425032

`A047572(2*(n+1))+(n+2)²`
-/

namespace A399934.P12716979030727425032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047572 (2 * (n + 1)) + ((n + 2) ^ 2 : ℤ)

end

end A399934.P12716979030727425032

namespace A399934

/-- `A047572(2*(n+1))+(n+2)²` -/
def P12716979030727425032.Spec : Prop :=
  ∀ n, P12716979030727425032.a n = A399934 (n + 1)

end A399934

/-! ## A399934.P8438311204866070414

`A398929(2*n+1)+(n+2)²`
-/

namespace A399934.P8438311204866070414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398929 (2 * n + 1) + ((n + 2) ^ 2 : ℤ)

end

end A399934.P8438311204866070414

namespace A399934

/-- `A398929(2*n+1)+(n+2)²` -/
def P8438311204866070414.Spec : Prop :=
  ∀ n, P8438311204866070414.a n = A399934 (n + 1)

end A399934

/-! ## A399934.P15532998717627025745

`A097602(A016789(n+1))+2*n`
-/

namespace A399934.P15532998717627025745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097602 (A016789 (n + 1)).toNat + (2 * n : ℤ)

end

end A399934.P15532998717627025745

namespace A399934

/-- `A097602(A016789(n+1))+2*n` -/
def P15532998717627025745.Spec : Prop :=
  ∀ n, P15532998717627025745.a n = A399934 (n + 1)

end A399934

/-!
# A399935: G.f.: 1 = Sum_{n>=0} a(n) * x^n / (1 + x)^(3^n).

The programs for A399935, there is no canonical definition to state claims against.
-/

/-! ## A399935.P17084990268338566434

`A257340(∏[n!])`
-/

namespace A399935.P17084990268338566434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257340 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A399935.P17084990268338566434

/-!
# A399936: G.f.: 1 = Sum_{n>=0} a(n) * x^n / (1 + x)^(4^n).

The programs for A399936, there is no canonical definition to state claims against.
-/

/-! ## A399936.P5960261660382773359

`A340121(a(n-1))` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A399936.P5960261660382773359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A340121 (a (n - 1)).toNat

end

end A399936.P5960261660382773359

/-!
# A399939: Number of permutations of 1..n such that the Hankel matrix of any subsequence of an odd number of consecutive terms is nonsingular.

The programs for A399939, there is no canonical definition to state claims against.
-/

/-! ## A399939.P153865275833431023

`n!-A399940(n)`
-/

namespace A399939.P153865275833431023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A399940 n

end

end A399939.P153865275833431023

/-! ## A399939.P6228612325418862530

`Δ[A167773(a(n-1))]` with `a(0)=1`
-/

namespace A399939.P6228612325418862530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A167773 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A399939.P6228612325418862530

/-!
# A399940: Number of permutations of 1..n such that the Hankel matrix of some subsequence of an odd number of consecutive terms is singular.

The programs for A399940, there is no canonical definition to state claims against.
-/

/-! ## A399940.P12030625280991825016

`n!-A399939(n)`
-/

namespace A399940.P12030625280991825016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A399939 n

end

end A399940.P12030625280991825016

/-!
# A399943: Number of endofunctions on [n] having at least two isolated fixed points.

The programs for A399943, there is no canonical definition to state claims against.
-/

/-! ## A399943.P10239986789740304320

`A350134(n)-A348590(n)`
-/

namespace A399943.P10239986789740304320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350134 n - A348590 n

end

end A399943.P10239986789740304320

/-! ## A399943.P4027838540598343370

`A097898(A305839(n))`
-/

namespace A399943.P4027838540598343370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097898 (A305839 n).toNat

end

end A399943.P4027838540598343370

/-!
# A399945: Highest frequency of a digit (0, 1 or 2) in the ternary representation of n.

The programs for A399945, there is no canonical definition to state claims against.
-/

/-! ## A399945.P13541551422524082552

`A043277(A319651(n+1))`
-/

namespace A399945.P13541551422524082552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043277 (A319651 (n + 1)).toNat

end

end A399945.P13541551422524082552

/-! ## A399945.P8008339181956473551

`A249615(A083992(n))`
-/

namespace A399945.P8008339181956473551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249615 (A083992 n).toNat

end

end A399945.P8008339181956473551

/-!
# A399948: Expansion of e.g.f. 1/(1 + log(1 - x) * sinh(x)).

The programs for A399948, there is no canonical definition to state claims against.
-/

/-! ## A399948.P18335590175426114030

`A306910(A394361(n+1))`
-/

namespace A399948.P18335590175426114030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306910 (A394361 (n + 1)).toNat

end

end A399948.P18335590175426114030

/-!
# A399949: Record high points in A400000.

The programs for A399949, there is no canonical definition to state claims against.
-/

/-! ## A399949.P9075552685338065246

`record[A397493(n)]`
-/

namespace A399949.P9075552685338065246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397493 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A399949.P9075552685338065246

/-! ## A399949.P3547956024260203107

`A400000(A399950(n+1))`
-/

namespace A399949.P3547956024260203107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400000 (A399950 (n + 1)).toNat

end

end A399949.P3547956024260203107

/-!
# A399950: Indices of record high points in A400000.

The programs for A399950, there is no canonical definition to state claims against.
-/

/-! ## A399950.P6070585778128516523

`A399763(A399949(n+1))`
-/

namespace A399950.P6070585778128516523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399763 (A399949 (n + 1)).toNat

end

end A399950.P6070585778128516523

/-! ## A399950.P10955428883293042396

`A400121(A399965(A399949(A399965(A397493(n+1)))))`
-/

namespace A399950.P10955428883293042396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400121 (A399965 (A399949 (A399965 (A397493 (n + 1)).toNat).toNat).toNat).toNat

end

end A399950.P10955428883293042396

/-! ## A399950.P9340118893167497290

`∑[A113452(n²+2)]`
-/

namespace A399950.P9340118893167497290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113452 (n ^ 2 + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399950.P9340118893167497290

/-!
# A399951: Sum of the sizes of the largest components over all functions on n unlabeled nodes.

The programs for A399951, there is no canonical definition to state claims against.
-/

/-! ## A399951.P9371824398241444837

`A319899(round(exp(n)))`
-/

namespace A399951.P9371824398241444837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319899 (SequenceMachineLib.roundAway (Real.exp (n : ℝ))).toNat

end

end A399951.P9371824398241444837

/-!
# A399955: Number of connected, claw-free planar graphs with n vertices.

The programs for A399955, there is no canonical definition to state claims against.
-/

/-! ## A399955.P2840904515913183761

`A325119(A089976(n))`
-/

namespace A399955.P2840904515913183761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325119 (A089976 n).toNat

end

end A399955.P2840904515913183761

/-! ## A399955.P9246892774567616767

`A328867(A116953(n))`
-/

namespace A399955.P9246892774567616767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328867 (A116953 n).toNat

end

end A399955.P9246892774567616767

/-! ## A399955.P2286849824438020697

`A356903(A148081(n))`
-/

namespace A399955.P2286849824438020697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356903 (A148081 n).toNat

end

end A399955.P2286849824438020697

/-!
# A399966: Expansion of e.g.f. 1/(1 + log(1 - x) * cosh(x)).

The programs for A399966, there is no canonical definition to state claims against.
-/

/-! ## A399966.P15382709017225578843

`A088141(∑[n]^n)`
-/

namespace A399966.P15382709017225578843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088141 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ n)

end

end A399966.P15382709017225578843

/-!
# A399973: a(n) is the sum of sigma (A000203), over the integers smaller or equal to n, that are not coprime to n.

The programs for A399973, there is no canonical definition to state claims against.
-/

/-! ## A399973.P10350740381122237689

`A024916(n+1)-A308095(n+1)`
-/

namespace A399973.P10350740381122237689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (n + 1) - A308095 (n + 1)

end

end A399973.P10350740381122237689

/-!
# A399974: Number of nonempty sets of pairwise commuting involutions on [n].

The programs for A399974, there is no canonical definition to state claims against.
-/

/-! ## A399974.P17946084444972202631

`A130575(A036569(n))`
-/

namespace A399974.P17946084444972202631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130575 (A036569 n).toNat

end

end A399974.P17946084444972202631

/-!
# A399976: Number of sublattices of index n in generic n-dimensional lattice.

The programs for A399976, there is no canonical definition to state claims against.
-/

/-! ## A399976.P2387204922776949345

`A128119((n+1)²+n²)`
-/

namespace A399976.P2387204922776949345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128119 ((n + 1) ^ 2 + n ^ 2)

end

end A399976.P2387204922776949345

/-! ## A399976.P5780193560495394807

`A160870((n+1)²+n²)`
-/

namespace A399976.P5780193560495394807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160870 ((n + 1) ^ 2 + n ^ 2)

end

end A399976.P5780193560495394807

/-!
# A399978: a(n) = omega(n) + sopf(n), where omega(n) is the number of distinct prime factors of n (A001221) and sopf(n) is the sum of the distinct primes dividing n (A008472).

The programs for A399978, the canonical program `A399978.P3565571226522649033` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399978 has offset 1).

The definition of A399978 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A001221(n+1)+A008472(n+1)` (program `A399978.P3565571226522649033`, by `A399978.P3565571226522649033.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A399978.P6445345573394791398

`∑{p}[n+1, #+1]`
-/

namespace A399978.P6445345573394791398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (p + 1)

end

end A399978.P6445345573394791398

namespace A399978

/-- `∑{p}[n+1, #+1]` -/
def P6445345573394791398.Spec : Prop :=
  ∀ n, (P6445345573394791398.a n : ℤ) = A399978 (n + 1)

end A399978

/-! ## A399978.P3565571226522649033

`A001221(n+1)+A008472(n+1)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A399978

/-- `A001221(n+1)+A008472(n+1)` -/
def P3565571226522649033.Spec : Prop :=
  ∀ n, P3565571226522649033.a n = A399978 (n + 1)

theorem P3565571226522649033.correct : P3565571226522649033.Spec := by
  intro n
  simp only [A399978, Nat.add_sub_cancel]

end A399978

/-! ## A399978.P14754874054397281400

`A008474(A007947(n+1))`
-/

namespace A399978.P14754874054397281400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008474 (A007947 (n + 1)).toNat

end

end A399978.P14754874054397281400

namespace A399978

/-- `A008474(A007947(n+1))` -/
def P14754874054397281400.Spec : Prop :=
  ∀ n, P14754874054397281400.a n = A399978 (n + 1)

end A399978

/-! ## A399978.P12908611136117881797

`A345279(n+1)+A345278(n+1)`
-/

namespace A399978.P12908611136117881797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345279 (n + 1) + A345278 (n + 1)

end

end A399978.P12908611136117881797

namespace A399978

/-- `A345279(n+1)+A345278(n+1)` -/
def P12908611136117881797.Spec : Prop :=
  ∀ n, P12908611136117881797.a n = A399978 (n + 1)

end A399978

/-! ## A399978.P10400433579805347123

`A008474(n+1)-A046660(n+1)`
-/

namespace A399978.P10400433579805347123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008474 (n + 1) - A046660 (n + 1)

end

end A399978.P10400433579805347123

namespace A399978

/-- `A008474(n+1)-A046660(n+1)` -/
def P10400433579805347123.Spec : Prop :=
  ∀ n, P10400433579805347123.a n = A399978 (n + 1)

theorem P10400433579805347123.correct : P10400433579805347123.Spec := by
  intro n
  simp only [A399978, Nat.add_sub_cancel, A399978.P10400433579805347123.a, A399978.P3565571226522649033.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A008474, A008474.P119709174749842562.a, A046660, A046660.P3614759855976580945.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A399978

/-! ## A399978.P11785030139591203360

`A229109(n+1)-A076694(n+1)`
-/

namespace A399978.P11785030139591203360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229109 (n + 1) - A076694 (n + 1)

end

end A399978.P11785030139591203360

namespace A399978

/-- `A229109(n+1)-A076694(n+1)` -/
def P11785030139591203360.Spec : Prop :=
  ∀ n, P11785030139591203360.a n = A399978 (n + 1)

theorem P11785030139591203360.correct : P11785030139591203360.Spec := by
  intro n
  simp only [A399978, Nat.add_sub_cancel, A399978.P11785030139591203360.a, A399978.P3565571226522649033.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A076694, A076694.P8693598391704263352.a, A229109, A229109.P7396241872602068631.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A399978

/-! ## A399978.P17334096903212594544

`A380457(n+1)-A023890(n+1)`
-/

namespace A399978.P17334096903212594544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380457 (n + 1) - A023890 (n + 1)

end

end A399978.P17334096903212594544

namespace A399978

/-- `A380457(n+1)-A023890(n+1)` -/
def P17334096903212594544.Spec : Prop :=
  ∀ n, P17334096903212594544.a n = A399978 (n + 1)

theorem P17334096903212594544.correct : P17334096903212594544.Spec := by
  intro n
  simp only [A399978, Nat.add_sub_cancel, A399978.P17334096903212594544.a, A399978.P3565571226522649033.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A023890, A023890.P4514850295399263827.a, A380457, A380457.P14810033455213116904.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A399978

/-! ## A399978.P17414387632939656244

`A075653(n+1)-A378993(n+1)`
-/

namespace A399978.P17414387632939656244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075653 (n + 1) - A378993 (n + 1)

end

end A399978.P17414387632939656244

namespace A399978

/-- `A075653(n+1)-A378993(n+1)` -/
def P17414387632939656244.Spec : Prop :=
  ∀ n, P17414387632939656244.a n = A399978 (n + 1)

theorem P17414387632939656244.correct : P17414387632939656244.Spec := by
  intro n
  simp only [A399978, Nat.add_sub_cancel, A399978.P17414387632939656244.a, A399978.P3565571226522649033.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A075653, A075653.P2659253384492111030.a, A378993, A378993.P12473165963195423861.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A399978

/-! ## A399978.P1475698385127287813

`A380441(n+1)-A367175(n+1)`
-/

namespace A399978.P1475698385127287813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380441 (n + 1) - A367175 (n + 1)

end

end A399978.P1475698385127287813

namespace A399978

/-- `A380441(n+1)-A367175(n+1)` -/
def P1475698385127287813.Spec : Prop :=
  ∀ n, P1475698385127287813.a n = A399978 (n + 1)

theorem P1475698385127287813.correct : P1475698385127287813.Spec := by
  intro n
  simp only [A399978, Nat.add_sub_cancel, A399978.P1475698385127287813.a, A399978.P3565571226522649033.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A367175, A367175.P9934287224977358039.a, A380441, A380441.P1716721751457761727.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A023890, A023890.P4514850295399263827.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A399978

/-! ## A399978.P7715366136025362549

`∑{d}[n+1, A023900(#)*A065967((n+1)/#)]`
-/

namespace A399978.P7715366136025362549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A065967 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A399978.P7715366136025362549

namespace A399978

/-- `∑{d}[n+1, A023900(#)*A065967((n+1)/#)]` -/
def P7715366136025362549.Spec : Prop :=
  ∀ n, P7715366136025362549.a n = A399978 (n + 1)

end A399978

/-! ## A399978.P8195273119676798467

`∑{d}[n+1, A055615(#)*A180253((n+1)/#)]`
-/

namespace A399978.P8195273119676798467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A180253 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A399978.P8195273119676798467

namespace A399978

/-- `∑{d}[n+1, A055615(#)*A180253((n+1)/#)]` -/
def P8195273119676798467.Spec : Prop :=
  ∀ n, P8195273119676798467.a n = A399978 (n + 1)

end A399978

/-! ## A399978.P2511740750696239203

`A008472(n+1)+A001222(A007947(n+1))`
-/

namespace A399978.P2511740750696239203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1) + A001222 (A007947 (n + 1)).toNat

end

end A399978.P2511740750696239203

namespace A399978

/-- `A008472(n+1)+A001222(A007947(n+1))` -/
def P2511740750696239203.Spec : Prop :=
  ∀ n, P2511740750696239203.a n = A399978 (n + 1)

end A399978

/-! ## A399978.P7470619892923771989

`A008472(n+1)+A001222(A181819(n+1))`
-/

namespace A399978.P7470619892923771989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1) + A001222 (A181819 (n + 1)).toNat

end

end A399978.P7470619892923771989

namespace A399978

/-- `A008472(n+1)+A001222(A181819(n+1))` -/
def P7470619892923771989.Spec : Prop :=
  ∀ n, P7470619892923771989.a n = A399978 (n + 1)

end A399978

/-! ## A399978.P13764768232107121501

`A306328(A007947(n+1))+A001221(n+1)`
-/

namespace A399978.P13764768232107121501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306328 (A007947 (n + 1)).toNat + A001221 (n + 1)

end

end A399978.P13764768232107121501

namespace A399978

/-- `A306328(A007947(n+1))+A001221(n+1)` -/
def P13764768232107121501.Spec : Prop :=
  ∀ n, P13764768232107121501.a n = A399978 (n + 1)

end A399978

/-! ## A399978.P11200759479425460320

`A008474(A000026(n+1)/A005361(n+1))`
-/

namespace A399978.P11200759479425460320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008474 (SequenceMachineLib.roundAway ((A000026 (n + 1) : ℚ) / (A005361 (n + 1) : ℚ))).toNat

end

end A399978.P11200759479425460320

namespace A399978

/-- `A008474(A000026(n+1)/A005361(n+1))` -/
def P11200759479425460320.Spec : Prop :=
  ∀ n, P11200759479425460320.a n = A399978 (n + 1)

end A399978

/-! ## A399978.P6649302418932536701

`A055631(n+1)+A001221(n+1)+A001221(n+1)`
-/

namespace A399978.P6649302418932536701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055631 (n + 1) + A001221 (n + 1) + A001221 (n + 1)

end

end A399978.P6649302418932536701

namespace A399978

/-- `A055631(n+1)+A001221(n+1)+A001221(n+1)` -/
def P6649302418932536701.Spec : Prop :=
  ∀ n, P6649302418932536701.a n = A399978 (n + 1)

theorem P6649302418932536701.correct : P6649302418932536701.Spec := by
  intro n
  simp only [A399978, Nat.add_sub_cancel, A399978.P6649302418932536701.a, A399978.P3565571226522649033.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A055631, A055631.P8885936990558110793.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A399978

/-! ## A399978.P6087058023840699806

`A087624(n+1)+A010051(n+1)+A008472(n+1)`
-/

namespace A399978.P6087058023840699806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087624 (n + 1) + A010051 (n + 1) + A008472 (n + 1)

end

end A399978.P6087058023840699806

namespace A399978

/-- `A087624(n+1)+A010051(n+1)+A008472(n+1)` -/
def P6087058023840699806.Spec : Prop :=
  ∀ n, P6087058023840699806.a n = A399978 (n + 1)

end A399978

/-! ## A399978.P3202649809088447967

`A056170(n+1)+A056169(n+1)+A008472(n+1)`
-/

namespace A399978.P3202649809088447967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (n + 1) + A056169 (n + 1) + A008472 (n + 1)

end

end A399978.P3202649809088447967

namespace A399978

/-- `A056170(n+1)+A056169(n+1)+A008472(n+1)` -/
def P3202649809088447967.Spec : Prop :=
  ∀ n, P3202649809088447967.a n = A399978 (n + 1)

theorem P3202649809088447967.correct : P3202649809088447967.Spec := by
  intro n
  simp only [A399978, Nat.add_sub_cancel, A399978.P3202649809088447967.a, A399978.P3565571226522649033.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A056169, A056169.P17430176249366647977.a, A056170, A056170.P910878729848546389.a, A055231, A055231.P8962300905713718501.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A071773, A071773.P10551485978970375506.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A399978

/-! ## A399978.P6688344444231223979

`A001221(n+1)+A000203(n+1)-A023890(n+1)`
-/

namespace A399978.P6688344444231223979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + A000203 (n + 1) - A023890 (n + 1)

end

end A399978.P6688344444231223979

namespace A399978

/-- `A001221(n+1)+A000203(n+1)-A023890(n+1)` -/
def P6688344444231223979.Spec : Prop :=
  ∀ n, P6688344444231223979.a n = A399978 (n + 1)

theorem P6688344444231223979.correct : P6688344444231223979.Spec := by
  intro n
  simp only [A399978, Nat.add_sub_cancel, A399978.P6688344444231223979.a, A399978.P3565571226522649033.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A023890, A023890.P4514850295399263827.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A399978

/-! ## A399978.P1573445768592682454

`A008472(n+1)+A008472(n+1)-A055631(n+1)`
-/

namespace A399978.P1573445768592682454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1) + A008472 (n + 1) - A055631 (n + 1)

end

end A399978.P1573445768592682454

namespace A399978

/-- `A008472(n+1)+A008472(n+1)-A055631(n+1)` -/
def P1573445768592682454.Spec : Prop :=
  ∀ n, P1573445768592682454.a n = A399978 (n + 1)

theorem P1573445768592682454.correct : P1573445768592682454.Spec := by
  intro n
  simp only [A399978, Nat.add_sub_cancel, A399978.P1573445768592682454.a, A399978.P3565571226522649033.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A055631, A055631.P8885936990558110793.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A399978

/-!
# A399979: a(n) is the least missing value from the Heraclitus transform of the first n positive square numbers.

The programs for A399979, there is no canonical definition to state claims against.
-/

/-! ## A399979.P14190179089871014053

`A380174(A014206(n+1))`
-/

namespace A399979.P14190179089871014053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380174 (A014206 (n + 1)).toNat

end

end A399979.P14190179089871014053

/-! ## A399979.P12409285897110374217

`A380174(A003682(n+2))`
-/

namespace A399979.P12409285897110374217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380174 (A003682 (n + 2)).toNat

end

end A399979.P12409285897110374217

/-! ## A399979.P9864296985940084403

`A380174(A400106(n+2))`
-/

namespace A399979.P9864296985940084403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380174 (A400106 (n + 2)).toNat

end

end A399979.P9864296985940084403

/-! ## A399979.P10449711907944869739

`A380174(A400197(n+2)+n+2)`
-/

namespace A399979.P10449711907944869739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380174 (A400197 (n + 2) + (n + 2 : ℤ)).toNat

end

end A399979.P10449711907944869739

/-! ## A399979.P16228887822011917186

`A380174(A335048(n+2))`
-/

namespace A399979.P16228887822011917186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380174 (A335048 (n + 2)).toNat

end

end A399979.P16228887822011917186

/-!
# A399985: Number of trees with total node weight n where nodes have positive integer weights and no adjacent nodes have the same weight.

The programs for A399985, there is no canonical definition to state claims against.
-/

/-! ## A399985.P2316387154905081131

`A162344(A049856(n+1))`
-/

namespace A399985.P2316387154905081131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162344 (A049856 (n + 1)).toNat

end

end A399985.P2316387154905081131

/-! ## A399985.P1526292620016531567

`A084359(A148207(n+1))`
-/

namespace A399985.P1526292620016531567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084359 (A148207 (n + 1)).toNat

end

end A399985.P1526292620016531567

/-! ## A399985.P873061202530420877

`A135660(A205504(n+1))`
-/

namespace A399985.P873061202530420877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (A205504 (n + 1)).toNat

end

end A399985.P873061202530420877

/-! ## A399985.P14905331980220906400

`A181578(A298897(n+1))`
-/

namespace A399985.P14905331980220906400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181578 (A298897 (n + 1)).toNat

end

end A399985.P14905331980220906400

/-!
# A399989: Number of fixed point free involutions in S_{2n} (or perfect matchings on [2n]) which avoid the permutations {123, 213, 231}.

The programs for A399989, the canonical program `A399989.P6324952000577847683` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399989 has offset 0).

The definition of A399989 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A399989.P6324952000577847683

`4*a(n-1)+4*a(n-2)+A000108(n-1)-6*A000108(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A399989

/-- `4*a(n-1)+4*a(n-2)+A000108(n-1)-6*A000108(n-2)` -/
def P6324952000577847683.Spec : Prop :=
  ∀ n, P6324952000577847683.a n = A399989 n

theorem P6324952000577847683.correct : P6324952000577847683.Spec := by
  intro n
  simp only [A399989]

end A399989

/-!
# A399995: a(1) = 0. For n > 1, a(n) is the number of ways to write a(n-1) as the sum of two earlier terms with distinct positions in the sequence.

The programs for A399995, there is no canonical definition to state claims against.
-/

/-! ## A399995.P13483247485441702998

`1-A397177(n+1)+n`
-/

namespace A399995.P13483247485441702998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A397177 (n + 1) + (n : ℤ)

end

end A399995.P13483247485441702998

/-!
# A399997: a(n) is the maximum number of distinct positive differences of an n-element subset of {0, 1, ..., n*(n-1)/2}.

The programs for A399997, there is no canonical definition to state claims against.
-/

/-! ## A399997.P818285165704104245

`A245302(n+3)+A065710(n)`
-/

namespace A399997.P818285165704104245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245302 (n + 3) + A065710 n

end

end A399997.P818285165704104245

/-! ## A399997.P3782974917425593626

`A284895(n+1)+A024673(n+2)`
-/

namespace A399997.P3782974917425593626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284895 (n + 1) + A024673 (n + 2)

end

end A399997.P3782974917425593626

/-!
# A399998: a(n+1) = a(n-a(a(n))^2) + 1, a(0) = 0.

The programs for A399998, the canonical program `A399998.P756939935722183912` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399998 has offset 0).

The definition of A399998 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A399998.P756939935722183912

`a(n-1-a(a(n-1))²)+1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A399998

/-- `a(n-1-a(a(n-1))²)+1` -/
def P756939935722183912.Spec : Prop :=
  ∀ n, (P756939935722183912.a n : ℤ) = A399998 n

theorem P756939935722183912.correct : P756939935722183912.Spec := by
  intro n
  simp only [A399998]

end A399998

/-! ## A399998.P15822727915195020651

`A196046(A153952(n))`
-/

namespace A399998.P15822727915195020651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196046 (A153952 n).toNat

end

end A399998.P15822727915195020651

namespace A399998

/-- `A196046(A153952(n))` -/
def P15822727915195020651.Spec : Prop :=
  ∀ n, P15822727915195020651.a n = A399998 n

end A399998

/-!
# A399999: Number of ways to cut a 30-60-90 triangle into n 30-60-90 triangles.

The programs for A399999, there is no canonical definition to state claims against.
-/

/-! ## A399999.P17356355394067185873

`A130053(A247289(n+1))`
-/

namespace A399999.P17356355394067185873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130053 (A247289 (n + 1)).toNat

end

end A399999.P17356355394067185873

