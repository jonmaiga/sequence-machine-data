import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C048
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B004.C001
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B010.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
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
import Seq.Opaque.C014
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C022
import Seq.Opaque.C023

/-!
# A251100: T(n,k)=Number of (n+1)X(k+1) 0..1 arrays with no 2X2 subblock having its minimum diagonal element less than its minimum antidiagonal element.

The programs for A251100, there is no canonical definition to state claims against.
-/

/-! ## A251100.P16003142846735917765

`A105709(A273845(n))-A353314(3*n+1)`
-/

namespace A251100.P16003142846735917765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105709 (A273845 n).toNat - A353314 (3 * n + 1)

end

end A251100.P16003142846735917765

/-!
# A251101: Smallest prime factor of A098550(n).

The programs for A251101, there is no canonical definition to state claims against.
-/

/-! ## A251101.P1929144104523042578

`A020639(A098550(1+n))`
-/

namespace A251101.P1929144104523042578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A098550 (1 + n)).toNat

end

end A251101.P1929144104523042578

/-! ## A251101.P1633534490494416065

`A014673(2*A098550(n+1))`
-/

namespace A251101.P1633534490494416065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (2 * A098550 (n + 1)).toNat

end

end A251101.P1633534490494416065

/-! ## A251101.P5713434296965476921

`A115561(4*A098550(n+1))`
-/

namespace A251101.P5713434296965476921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115561 (4 * A098550 (n + 1)).toNat

end

end A251101.P5713434296965476921

/-! ## A251101.P15956607418036166779

`A107286(A098550(n+1)²)`
-/

namespace A251101.P15956607418036166779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (A098550 (n + 1) ^ 2).toNat

end

end A251101.P15956607418036166779

/-! ## A251101.P10067974623454714934

`A014673(A098550(n+1)²)`
-/

namespace A251101.P10067974623454714934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (A098550 (n + 1) ^ 2).toNat

end

end A251101.P10067974623454714934

/-!
# A251102: a(n) = gcd(A098550(n+2), A098550(n)).

The programs for A251102, there is no canonical definition to state claims against.
-/

/-! ## A251102.P10909095329495792905

`gcd(A098550(n+3), A098550(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A251102.P10909095329495792905
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A098550 (n + 3)) (A098550 (n + 1))

end

end A251102.P10909095329495792905

/-! ## A251102.P16468677495426604108

`gcd(A098552(A098551(n+1)), A098552(A098551(n+3)))`
-/

namespace A251102.P16468677495426604108
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A098552 (A098551 (n + 1)).toNat) (A098552 (A098551 (n + 3)).toNat)

end

end A251102.P16468677495426604108

/-!
# A251103: Largest prime factor of A098550(n).

The programs for A251103, there is no canonical definition to state claims against.
-/

/-! ## A251103.P14184731382221705181

`A006530(A098550(1+n))`
-/

namespace A251103.P14184731382221705181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A098550 (1 + n)).toNat

end

end A251103.P14184731382221705181

/-! ## A251103.P13905398348409502782

`A088387(A251089(n+1))`
-/

namespace A251103.P13905398348409502782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088387 (A251089 (n + 1)).toNat

end

end A251103.P13905398348409502782

/-! ## A251103.P2695160043440862047

`A034699(∏{p}[A098550(1+n), #])`
-/

namespace A251103.P2695160043440862047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098550 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A251103.P2695160043440862047

/-! ## A251103.P10944119358040748743

`A002034(A251089(n+1))`
-/

namespace A251103.P10944119358040748743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A251089 (n + 1)).toNat

end

end A251103.P10944119358040748743

/-! ## A251103.P3981724809464893313

`A053585(∏{p}[A098550(n+1), #])`
-/

namespace A251103.P3981724809464893313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A251103.P3981724809464893313

/-! ## A251103.P11479239969531124341

`A223491(∏{p}[A098550(n+1), #])`
-/

namespace A251103.P11479239969531124341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223491 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A251103.P11479239969531124341

/-! ## A251103.P7301548849359339855

`A217581(A098550(n+1)²)`
-/

namespace A251103.P7301548849359339855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217581 (A098550 (n + 1) ^ 2).toNat

end

end A251103.P7301548849359339855

/-!
# A251104: Largest prime factor of A098548(n).

The programs for A251104, there is no canonical definition to state claims against.
-/

/-! ## A251104.P9811409822108796841

`A006530(A098548(n+1))`
-/

namespace A251104.P9811409822108796841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A098548 (n + 1)).toNat

end

end A251104.P9811409822108796841

/-! ## A251104.P1715519070633481369

`A034699(∏{p}[A098548(n+1), #])`
-/

namespace A251104.P1715519070633481369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098548 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A251104.P1715519070633481369

/-! ## A251104.P4713145986237238204

`A002034(A251090(n+1))`
-/

namespace A251104.P4713145986237238204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A251090 (n + 1)).toNat

end

end A251104.P4713145986237238204

/-! ## A251104.P15281379682894682364

`A025492(∏{p}[A098548(n+1), #])`
-/

namespace A251104.P15281379682894682364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098548 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025492 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A251104.P15281379682894682364

/-! ## A251104.P18013349534232781149

`A053585(∏{p}[A098548(n+1), #])`
-/

namespace A251104.P18013349534232781149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098548 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A251104.P18013349534232781149

/-!
# A251105: Number of (n+1)X(n+1) 0..2 arrays with no 2X2 subblock having the maximum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251105, there is no canonical definition to state claims against.
-/

/-! ## A251105.P6171832074646232075

`A251113(∑[4*n]+1)`
-/

namespace A251105.P6171832074646232075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251113 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251105.P6171832074646232075

/-! ## A251105.P11557367237033202904

`record[A251113(Δ[A235355(n)])]`
-/

namespace A251105.P11557367237033202904
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251113 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251105.P11557367237033202904

/-! ## A251105.P562534071047428932

`record[gcd(A114327(n), A251113(n+1))]`
-/

namespace A251105.P562534071047428932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A251113 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251105.P562534071047428932

/-!
# A251106: Number of (n+1) X (1+1) 0..2 arrays with no 2 X 2 subblock having the maximum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251106, the canonical program `A251106.P425237729905622859` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251106 has offset 1).

The definition of A251106 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 179 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251106.P425237729905622859

`ogf((37-38x+87x^2-91x^3+65x^4-41x^5+10x^6)/(1-5x+8x^2-13x^3+12x^4-9x^5+5x^6-x^7))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A251106

/-- `ogf((37-38x+87x^2-91x^3+65x^4-41x^5+10x^6)/(1-5x+8x^2-13x^3+12x^4-9x^5+5x^6-x^7))` -/
def P425237729905622859.Spec : Prop :=
  ∀ n, P425237729905622859.a n = A251106 (n + 1)

theorem P425237729905622859.correct : P425237729905622859.Spec := by
  intro n
  simp only [A251106, Nat.add_sub_cancel]

end A251106

/-! ## A251106.P18269631864842966646

`A251113(∑[n]+1)`
-/

namespace A251106.P18269631864842966646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251113 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251106.P18269631864842966646

namespace A251106

/-- `A251113(∑[n]+1)` -/
def P18269631864842966646.Spec : Prop :=
  ∀ n, P18269631864842966646.a n = A251106 (n + 1)

end A251106

/-! ## A251106.P7080445955943144266

`record[A010054(n)*A251113(n+1)]`
-/

namespace A251106.P7080445955943144266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A251113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251106.P7080445955943144266

namespace A251106

/-- `record[A010054(n)*A251113(n+1)]` -/
def P7080445955943144266.Spec : Prop :=
  ∀ n, P7080445955943144266.a n = A251106 (n + 1)

end A251106

/-! ## A251106.P17455833665728913544

`record[root(A251113(n+1), A008459(n))]`
-/

namespace A251106.P17455833665728913544
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251113 (n + 1) : ℝ) ^ (1 / (A008459 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251106.P17455833665728913544

namespace A251106

/-- `record[root(A251113(n+1), A008459(n))]` -/
def P17455833665728913544.Spec : Prop :=
  ∀ n, P17455833665728913544.a n = (A251106 (n + 1) : ℝ)

end A251106

/-!
# A251107: Number of (n+1) X (2+1) 0..2 arrays with no 2 X 2 subblock having the maximum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251107, there is no canonical definition to state claims against.
-/

/-! ## A251107.P4449805467571854262

`A251113(∑[n+1]+2)`
-/

namespace A251107.P4449805467571854262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251113 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251107.P4449805467571854262

/-! ## A251107.P5351628624184958120

`record[A010054(n)*A251113(n+2)]`
-/

namespace A251107.P5351628624184958120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A251113 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251107.P5351628624184958120

/-! ## A251107.P6843308692992367084

`record[A251113(n+3)/A164855(n)]`
-/

namespace A251107.P6843308692992367084
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251113 (n + 3) : ℚ) / (A164855 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251107.P6843308692992367084

/-! ## A251107.P17114159818143560803

`record[gcd(A002262(n), A251113(n+2))]`
-/

namespace A251107.P17114159818143560803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A251113 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251107.P17114159818143560803

/-! ## A251107.P8664365238336862481

`record[A251113(A133263(A008624(n)))]`
-/

namespace A251107.P8664365238336862481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251113 (A133263 (A008624 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251107.P8664365238336862481

/-!
# A251108: Number of (n+1)X(3+1) 0..2 arrays with no 2X2 subblock having the maximum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251108, there is no canonical definition to state claims against.
-/

/-! ## A251108.P2121563908576537486

`A251113(∑[n+2]+4)`
-/

namespace A251108.P2121563908576537486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251113 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251108.P2121563908576537486

/-!
# A251109: Number of (n+1)X(4+1) 0..2 arrays with no 2X2 subblock having the maximum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251109, there is no canonical definition to state claims against.
-/

/-! ## A251109.P469890375167801343

`A251113(A374004(n+1))`
-/

namespace A251109.P469890375167801343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251113 (A374004 (n + 1)).toNat

end

end A251109.P469890375167801343

/-! ## A251109.P3354414335723717534

`A251113(A141214(n+1))`
-/

namespace A251109.P3354414335723717534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251113 (A141214 (n + 1)).toNat

end

end A251109.P3354414335723717534

/-!
# A251110: Number of (n+1)X(5+1) 0..2 arrays with no 2X2 subblock having the maximum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251110, there is no canonical definition to state claims against.
-/

/-! ## A251110.P16872123939408841577

`A251113(A374005(n+1))`
-/

namespace A251110.P16872123939408841577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251113 (A374005 (n + 1)).toNat

end

end A251110.P16872123939408841577

/-! ## A251110.P11613981076456147749

`A251113(Δ[A264443(n)])`
-/

namespace A251110.P11613981076456147749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251113 (f1 (n + 1) - f1 n).toNat

end

end A251110.P11613981076456147749

/-!
# A251111: Number of (n+1)X(6+1) 0..2 arrays with no 2X2 subblock having the maximum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251111, there is no canonical definition to state claims against.
-/

/-! ## A251111.P15409501632209574960

`A251113(A374007(n+1))`
-/

namespace A251111.P15409501632209574960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251113 (A374007 (n + 1)).toNat

end

end A251111.P15409501632209574960

/-!
# A251112: Number of (n+1)X(7+1) 0..2 arrays with no 2X2 subblock having the maximum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251112, there is no canonical definition to state claims against.
-/

/-! ## A251112.P7383805304906844970

`A251113(A374008(n+1))`
-/

namespace A251112.P7383805304906844970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251113 (A374008 (n + 1)).toNat

end

end A251112.P7383805304906844970

/-!
# A251114: Number of (n+1) X (1+1) 0..3 arrays with nondecreasing maximum of every two consecutive values in every row and column.

The programs for A251114, there is no canonical definition to state claims against.
-/

/-! ## A251114.P17129599454214323767

`A251120(∑[n]+1)`
-/

namespace A251114.P17129599454214323767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251120 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251114.P17129599454214323767

/-! ## A251114.P16611530986210123426

`record[root(A251120(n+1), A109128(n))]`
-/

namespace A251114.P16611530986210123426
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251120 (n + 1) : ℝ) ^ (1 / (A109128 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251114.P16611530986210123426

/-! ## A251114.P11497910213465764946

`record[gcd(A002262(n), A251120(n+1))]`
-/

namespace A251114.P11497910213465764946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A251120 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251114.P11497910213465764946

/-! ## A251114.P3759078450433344782

`record[root(A251120(n+1), A141696(n+1))]`
-/

namespace A251114.P3759078450433344782
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251120 (n + 1) : ℝ) ^ (1 / (A141696 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251114.P3759078450433344782

/-! ## A251114.P5925643928094771006

`record[root(A251120(n+1), A200329(n+1))]`
-/

namespace A251114.P5925643928094771006
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251120 (n + 1) : ℝ) ^ (1 / (A200329 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251114.P5925643928094771006

/-!
# A251115: Number of (n+1)X(2+1) 0..3 arrays with nondecreasing maximum of every two consecutive values in every row and column.

The programs for A251115, there is no canonical definition to state claims against.
-/

/-! ## A251115.P11995334263983329837

`A251120(∑[n+1]+2)`
-/

namespace A251115.P11995334263983329837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251120 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251115.P11995334263983329837

/-! ## A251115.P4958338229916591172

`record[gcd(A002262(n), A251120(n+2))]`
-/

namespace A251115.P4958338229916591172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A251120 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251115.P4958338229916591172

/-! ## A251115.P3813635814537962670

`record[A251120(gcd(n, A341279(n))+2)]`
-/

namespace A251115.P3813635814537962670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251120 (Int.gcd (n : ℤ) (A341279 n) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251115.P3813635814537962670

/-! ## A251115.P924925379963623461

`record[A251120(lt[A141696(n+1), n])]`
-/

namespace A251115.P924925379963623461
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141696 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251120 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251115.P924925379963623461

/-! ## A251115.P2098140508264216090

`record[A251120(A198453(n+1))]`
-/

namespace A251115.P2098140508264216090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251120 (A198453 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251115.P2098140508264216090

/-!
# A251116: Number of (n+1)X(3+1) 0..3 arrays with nondecreasing maximum of every two consecutive values in every row and column.

The programs for A251116, there is no canonical definition to state claims against.
-/

/-! ## A251116.P2737992197143523825

`A251120(∑[n+2]+4)`
-/

namespace A251116.P2737992197143523825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251120 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251116.P2737992197143523825

/-!
# A251117: Number of (n+1)X(4+1) 0..3 arrays with nondecreasing maximum of every two consecutive values in every row and column.

The programs for A251117, there is no canonical definition to state claims against.
-/

/-! ## A251117.P16366480099411798486

`A251120(A167614(n+2)+1)`
-/

namespace A251117.P16366480099411798486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251120 (A167614 (n + 2) + 1).toNat

end

end A251117.P16366480099411798486

/-! ## A251117.P12210665307849892925

`A251120(A141214(n+1))`
-/

namespace A251117.P12210665307849892925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251120 (A141214 (n + 1)).toNat

end

end A251117.P12210665307849892925

/-!
# A251118: Number of (n+1)X(5+1) 0..3 arrays with nondecreasing maximum of every two consecutive values in every row and column.

The programs for A251118, there is no canonical definition to state claims against.
-/

/-! ## A251118.P11936111017861105753

`A251120(A374005(n+1))`
-/

namespace A251118.P11936111017861105753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251120 (A374005 (n + 1)).toNat

end

end A251118.P11936111017861105753

/-!
# A251119: Number of (n+1)X(6+1) 0..3 arrays with nondecreasing maximum of every two consecutive values in every row and column.

The programs for A251119, there is no canonical definition to state claims against.
-/

/-! ## A251119.P10238246518123675659

`A251120(abs(A166136(n+4)-1)+1)`
-/

namespace A251119.P10238246518123675659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251120 (|A166136 (n + 4) - 1| + 1).toNat

end

end A251119.P10238246518123675659

/-!
# A251121: Number of (n+1)X(n+1) 0..1 arrays with no 2X2 subblock having the sum of its diagonal elements greater than the maximum of its antidiagonal elements.

The programs for A251121, there is no canonical definition to state claims against.
-/

/-! ## A251121.P408977155468553186

`A251128(∑[4*n]+1)`
-/

namespace A251121.P408977155468553186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251128 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251121.P408977155468553186

/-! ## A251121.P2038332646904549688

`record[A251128(A003602((n+1)²))]`
-/

namespace A251121.P2038332646904549688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251128 (A003602 ((n + 1) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251121.P2038332646904549688

/-!
# A251122: Number of (n+1) X (2+1) 0..1 arrays with no 2 X 2 subblock having the sum of its diagonal elements greater than the maximum of its antidiagonal elements.

The programs for A251122, the canonical program `A251122.P1468921088716064169` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251122 has offset 1).

The definition of A251122 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 472 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251122.P1468921088716064169

`∑[n]+3*A111314(n+3)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A251122

/-- `∑[n]+3*A111314(n+3)` -/
def P1468921088716064169.Spec : Prop :=
  ∀ n, P1468921088716064169.a n = A251122 (n + 1)

theorem P1468921088716064169.correct : P1468921088716064169.Spec := by
  intro n
  simp only [A251122, Nat.add_sub_cancel]

end A251122

/-! ## A251122.P8436978645172465434

`3*A111314(n+3)+A000124(n)-1`
-/

namespace A251122.P8436978645172465434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A111314 (n + 3) + (A000124 n - 1)

end

end A251122.P8436978645172465434

namespace A251122

/-- `3*A111314(n+3)+A000124(n)-1` -/
def P8436978645172465434.Spec : Prop :=
  ∀ n, P8436978645172465434.a n = A251122 (n + 1)

end A251122

/-! ## A251122.P7273678835184438

`3*A111314(n+3)+Δ[A000292(n)]-(n+1)`
-/

namespace A251122.P7273678835184438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A111314 (n + 3) + (f1 (n + 1) - f1 n - (n + 1 : ℤ))

end

end A251122.P7273678835184438

namespace A251122

/-- `3*A111314(n+3)+Δ[A000292(n)]-(n+1)` -/
def P7273678835184438.Spec : Prop :=
  ∀ n, P7273678835184438.a n = A251122 (n + 1)

end A251122

/-! ## A251122.P1652822609444203206

`A000217(n+1)+3*A111314(n+3)-(n+1)`
-/

namespace A251122.P1652822609444203206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + 3 * A111314 (n + 3) - (n + 1 : ℤ)

end

end A251122.P1652822609444203206

namespace A251122

/-- `A000217(n+1)+3*A111314(n+3)-(n+1)` -/
def P1652822609444203206.Spec : Prop :=
  ∀ n, P1652822609444203206.a n = A251122 (n + 1)

end A251122

/-! ## A251122.P2168532744105586175

`3*A111314(n+3)+A133263(n+1)-(n+3)`
-/

namespace A251122.P2168532744105586175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A111314 (n + 3) + (A133263 (n + 1) - (n + 3 : ℤ))

end

end A251122.P2168532744105586175

namespace A251122

/-- `3*A111314(n+3)+A133263(n+1)-(n+3)` -/
def P2168532744105586175.Spec : Prop :=
  ∀ n, P2168532744105586175.a n = A251122 (n + 1)

end A251122

/-! ## A251122.P11689746369429399380

`ogf((21-44x+14x^2+20x^3-12x^4)/(1-4x+5x^2-x^3-2x^4+x^5))`
-/

namespace A251122.P11689746369429399380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [21, -44, 14, 20, -12] [1, -4, 5, -1, -2, 1] n

end

end A251122.P11689746369429399380

namespace A251122

/-- `ogf((21-44x+14x^2+20x^3-12x^4)/(1-4x+5x^2-x^3-2x^4+x^5))` -/
def P11689746369429399380.Spec : Prop :=
  ∀ n, P11689746369429399380.a n = A251122 (n + 1)

end A251122

/-! ## A251122.P290310084548491925

`4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` with `a(0)=21, a(1)=40, a(2)=69, a(3)=117, a(4)=193`
-/

namespace A251122.P290310084548491925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [21, 40, 69, 117, 193] fun n a =>
  4 * a (n - 1) - 5 * a (n - 2) + a (n - 3) + 2 * a (n - 4) - a (n - 5)

end

end A251122.P290310084548491925

namespace A251122

/-- `4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` -/
def P290310084548491925.Spec : Prop :=
  ∀ n, P290310084548491925.a n = A251122 (n + 1)

end A251122

/-!
# A251123: Number of (n+1) X (3+1) 0..1 arrays with no 2 X 2 subblock having the sum of its diagonal elements greater than the maximum of its antidiagonal elements.

The programs for A251123, the canonical program `A251123.P11772369171925110912` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251123 has offset 1).

The definition of A251123 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 470 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251123.P7395533051982188391

`ogf((40-91x+32x^2+46x^3-29x^4+x^5)/(1-4x+5x^2-x^3-2x^4+x^5))`
-/

namespace A251123.P7395533051982188391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [40, -91, 32, 46, -29, 1] [1, -4, 5, -1, -2, 1] n

end

end A251123.P7395533051982188391

namespace A251123

/-- `ogf((40-91x+32x^2+46x^3-29x^4+x^5)/(1-4x+5x^2-x^3-2x^4+x^5))` -/
def P7395533051982188391.Spec : Prop :=
  ∀ n, P7395533051982188391.a n = A251123 (n + 1)

end A251123

/-! ## A251123.P11772369171925110912

`4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` with `a(0)=40, a(1)=69, a(2)=108, a(3)=173, a(4)=272, a(5)=430`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A251123

/-- `4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` -/
def P11772369171925110912.Spec : Prop :=
  ∀ n, P11772369171925110912.a n = A251123 (n + 1)

theorem P11772369171925110912.correct : P11772369171925110912.Spec := by
  intro n
  simp only [A251123, Nat.add_sub_cancel]

end A251123

/-! ## A251123.P16308514490826245918

`A251128(∑[n+2]+4)`
-/

namespace A251123.P16308514490826245918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251128 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251123.P16308514490826245918

namespace A251123

/-- `A251128(∑[n+2]+4)` -/
def P16308514490826245918.Spec : Prop :=
  ∀ n, P16308514490826245918.a n = A251123 (n + 1)

end A251123

/-!
# A251124: Number of (n+1) X (4+1) 0..1 arrays with no 2 X 2 subblock having the sum of its diagonal elements greater than the maximum of its antidiagonal elements.

The programs for A251124, the canonical program `A251124.P5170746775999109981` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251124 has offset 1).

The definition of A251124 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 469 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251124.P3789390435454986719

`ogf((72-171x+65x^2+87x^3-59x^4+3x^5)/(1-4x+5x^2-x^3-2x^4+x^5))`
-/

namespace A251124.P3789390435454986719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [72, -171, 65, 87, -59, 3] [1, -4, 5, -1, -2, 1] n

end

end A251124.P3789390435454986719

namespace A251124

/-- `ogf((72-171x+65x^2+87x^3-59x^4+3x^5)/(1-4x+5x^2-x^3-2x^4+x^5))` -/
def P3789390435454986719.Spec : Prop :=
  ∀ n, P3789390435454986719.a n = A251124 (n + 1)

end A251124

/-! ## A251124.P5170746775999109981

`4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` with `a(0)=72, a(1)=117, a(2)=173, a(3)=266, a(4)=401, a(5)=612`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A251124

/-- `4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` -/
def P5170746775999109981.Spec : Prop :=
  ∀ n, P5170746775999109981.a n = A251124 (n + 1)

theorem P5170746775999109981.correct : P5170746775999109981.Spec := by
  intro n
  simp only [A251124, Nat.add_sub_cancel]

end A251124

/-! ## A251124.P17140054957820844932

`A251128(∑[n+3]+7)`
-/

namespace A251124.P17140054957820844932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251128 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A251124.P17140054957820844932

namespace A251124

/-- `A251128(∑[n+3]+7)` -/
def P17140054957820844932.Spec : Prop :=
  ∀ n, P17140054957820844932.a n = A251124 (n + 1)

end A251124

/-!
# A251125: Number of (n+1) X (5+1) 0..1 arrays with no 2 X 2 subblock having the sum of its diagonal elements greater than the maximum of its antidiagonal elements.

The programs for A251125, the canonical program `A251125.P4630244346486421024` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251125 has offset 1).

The definition of A251125 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 469 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251125.P13165892015352562635

`ogf((125-307x+125x^2+153x^3-107x^4+6x^5)/(1-4x+5x^2-x^3-2x^4+x^5))`
-/

namespace A251125.P13165892015352562635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [125, -307, 125, 153, -107, 6] [1, -4, 5, -1, -2, 1] n

end

end A251125.P13165892015352562635

namespace A251125

/-- `ogf((125-307x+125x^2+153x^3-107x^4+6x^5)/(1-4x+5x^2-x^3-2x^4+x^5))` -/
def P13165892015352562635.Spec : Prop :=
  ∀ n, P13165892015352562635.a n = A251125 (n + 1)

end A251125

/-! ## A251125.P4630244346486421024

`4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` with `a(0)=125, a(1)=193, a(2)=272, a(3)=401, a(4)=580, a(5)=854`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A251125

/-- `4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` -/
def P4630244346486421024.Spec : Prop :=
  ∀ n, P4630244346486421024.a n = A251125 (n + 1)

theorem P4630244346486421024.correct : P4630244346486421024.Spec := by
  intro n
  simp only [A251125, Nat.add_sub_cancel]

end A251125

/-! ## A251125.P7688703649372061282

`A251128(A374005(n+1))`
-/

namespace A251125.P7688703649372061282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251128 (A374005 (n + 1)).toNat

end

end A251125.P7688703649372061282

namespace A251125

/-- `A251128(A374005(n+1))` -/
def P7688703649372061282.Spec : Prop :=
  ∀ n, P7688703649372061282.a n = A251125 (n + 1)

end A251125

/-!
# A251126: Number of (n+1) X (6+1) 0..1 arrays with no 2 X 2 subblock having the sum of its diagonal elements greater than the maximum of its antidiagonal elements.

The programs for A251126, the canonical program `A251126.P571858958270449023` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251126 has offset 1).

The definition of A251126 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 470 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251126.P571858958270449023

`ogf((212-533x+230x^2+255x^3-183x^4+10x^5)/(1-4x+5x^2-x^3-2x^4+x^5))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A251126

/-- `ogf((212-533x+230x^2+255x^3-183x^4+10x^5)/(1-4x+5x^2-x^3-2x^4+x^5))` -/
def P571858958270449023.Spec : Prop :=
  ∀ n, P571858958270449023.a n = A251126 (n + 1)

theorem P571858958270449023.correct : P571858958270449023.Spec := by
  intro n
  simp only [A251126, Nat.add_sub_cancel]

end A251126

/-! ## A251126.P9396464831228215263

`A251128(A374007(n+1))`
-/

namespace A251126.P9396464831228215263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251128 (A374007 (n + 1)).toNat

end

end A251126.P9396464831228215263

namespace A251126

/-- `A251128(A374007(n+1))` -/
def P9396464831228215263.Spec : Prop :=
  ∀ n, P9396464831228215263.a n = A251126 (n + 1)

end A251126

/-!
# A251127: Number of (n+1) X (7+1) 0..1 arrays with no 2 X 2 subblock having the sum of its diagonal elements greater than the maximum of its antidiagonal elements.

The programs for A251127, the canonical program `A251127.P8498228797037497009` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251127 has offset 1).

The definition of A251127 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 469 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251127.P8498228797037497009

`ogf((354-906x+410x^2+414x^3-302x^4+15x^5)/(1-4x+5x^2-x^3-2x^4+x^5))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A251127

/-- `ogf((354-906x+410x^2+414x^3-302x^4+15x^5)/(1-4x+5x^2-x^3-2x^4+x^5))` -/
def P8498228797037497009.Spec : Prop :=
  ∀ n, P8498228797037497009.a n = A251127 (n + 1)

theorem P8498228797037497009.correct : P8498228797037497009.Spec := by
  intro n
  simp only [A251127, Nat.add_sub_cancel]

end A251127

/-! ## A251127.P1727154930555990232

`A251128(A374008(n+1))`
-/

namespace A251127.P1727154930555990232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251128 (A374008 (n + 1)).toNat

end

end A251127.P1727154930555990232

namespace A251127

/-- `A251128(A374008(n+1))` -/
def P1727154930555990232.Spec : Prop :=
  ∀ n, P1727154930555990232.a n = A251127 (n + 1)

end A251127

/-!
# A251129: Number of (n+1)X(n+1) 0..2 arrays with no 2X2 subblock having the sum of its diagonal elements greater than the maximum of its antidiagonal elements.

The programs for A251129, there is no canonical definition to state claims against.
-/

/-! ## A251129.P11771802648105533932

`A251137(∑[4*n]+1)`
-/

namespace A251129.P11771802648105533932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251137 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251129.P11771802648105533932

/-! ## A251129.P11871423154646951059

`record[A003982(n)*A251137(n+1)]`
-/

namespace A251129.P11871423154646951059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A251137 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251129.P11871423154646951059

/-! ## A251129.P15285314433815017873

`record[root(A251137(n+1), A143182(n))]`
-/

namespace A251129.P15285314433815017873
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251137 (n + 1) : ℝ) ^ (1 / (A143182 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251129.P15285314433815017873

/-! ## A251129.P8937118251064674903

`record[gcd(A251137(n+1), A285721(n+1))]`
-/

namespace A251129.P8937118251064674903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A251137 (n + 1)) (A285721 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251129.P8937118251064674903

/-!
# A251130: Number of (n+1) X (1+1) 0..2 arrays with no 2 X 2 subblock having the sum of its diagonal elements greater than the maximum of its antidiagonal elements.

The programs for A251130, the canonical program `A251130.P2753325805941786225` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251130 has offset 1).

The definition of A251130 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251130.P2753325805941786225

`ogf((40-67x+24x^2+58x^3-60x^4+17x^5)/(1-5x+8x^2-2x^3-7x^4+7x^5-2x^6))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A251130

/-- `ogf((40-67x+24x^2+58x^3-60x^4+17x^5)/(1-5x+8x^2-2x^3-7x^4+7x^5-2x^6))` -/
def P2753325805941786225.Spec : Prop :=
  ∀ n, P2753325805941786225.a n = A251130 (n + 1)

theorem P2753325805941786225.correct : P2753325805941786225.Spec := by
  intro n
  simp only [A251130, Nat.add_sub_cancel]

end A251130

/-! ## A251130.P3885583378285362862

`A251137(∑[n]+1)`
-/

namespace A251130.P3885583378285362862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251137 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251130.P3885583378285362862

namespace A251130

/-- `A251137(∑[n]+1)` -/
def P3885583378285362862.Spec : Prop :=
  ∀ n, P3885583378285362862.a n = A251130 (n + 1)

end A251130

/-! ## A251130.P3224904682082530032

`record[A251137(A056534(n+1))]`
-/

namespace A251130.P3224904682082530032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251137 (A056534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251130.P3224904682082530032

namespace A251130

/-- `record[A251137(A056534(n+1))]` -/
def P3224904682082530032.Spec : Prop :=
  ∀ n, P3224904682082530032.a n = A251130 (n + 1)

end A251130

/-! ## A251130.P9867580257207284593

`record[A251137(A056536(n+1))]`
-/

namespace A251130.P9867580257207284593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251137 (A056536 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251130.P9867580257207284593

namespace A251130

/-- `record[A251137(A056536(n+1))]` -/
def P9867580257207284593.Spec : Prop :=
  ∀ n, P9867580257207284593.a n = A251130 (n + 1)

end A251130

/-! ## A251130.P13693578817522939423

`record[A251137(A114091(n+1))]`
-/

namespace A251130.P13693578817522939423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251137 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251130.P13693578817522939423

namespace A251130

/-- `record[A251137(A114091(n+1))]` -/
def P13693578817522939423.Spec : Prop :=
  ∀ n, P13693578817522939423.a n = A251130 (n + 1)

end A251130

/-!
# A251131: Number of (n+1) X (2+1) 0..2 arrays with no 2 X 2 subblock having the sum of its diagonal elements greater than the maximum of its antidiagonal elements.

The programs for A251131, the canonical program `A251131.P7871024958264096603` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251131 has offset 1).

The definition of A251131 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 323 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251131.P7871024958264096603

`ogf((133-382x+235x^2+330x^3-597x^4+264x^5+27x^6-26x^7-4x^8)/(1-6x+13x^2-10x^3-5x^4+14x^5-9x^6+2x^7))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A251131

/-- `ogf((133-382x+235x^2+330x^3-597x^4+264x^5+27x^6-26x^7-4x^8)/(1-6x+13x^2-10x^3-5x^4+14x^5-9x^6+2x^7))` -/
def P7871024958264096603.Spec : Prop :=
  ∀ n, P7871024958264096603.a n = A251131 (n + 1)

theorem P7871024958264096603.correct : P7871024958264096603.Spec := by
  intro n
  simp only [A251131, Nat.add_sub_cancel]

end A251131

/-! ## A251131.P9280677121608966684

`A251137(∑[n+1]+2)`
-/

namespace A251131.P9280677121608966684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251137 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251131.P9280677121608966684

namespace A251131

/-- `A251137(∑[n+1]+2)` -/
def P9280677121608966684.Spec : Prop :=
  ∀ n, P9280677121608966684.a n = A251131 (n + 1)

end A251131

/-! ## A251131.P15014192475914974079

`record[A251137(A008795(n)+2)]`
-/

namespace A251131.P15014192475914974079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251137 (A008795 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251131.P15014192475914974079

namespace A251131

/-- `record[A251137(A008795(n)+2)]` -/
def P15014192475914974079.Spec : Prop :=
  ∀ n, P15014192475914974079.a n = A251131 (n + 1)

end A251131

/-! ## A251131.P5345566334891119899

`record[A251137(A056536(n+1)+1)]`
-/

namespace A251131.P5345566334891119899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251137 (A056536 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251131.P5345566334891119899

namespace A251131

/-- `record[A251137(A056536(n+1)+1)]` -/
def P5345566334891119899.Spec : Prop :=
  ∀ n, P5345566334891119899.a n = A251131 (n + 1)

end A251131

/-! ## A251131.P690928616578332004

`record[A251137(A114091(n+1)+1)]`
-/

namespace A251131.P690928616578332004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251137 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251131.P690928616578332004

namespace A251131

/-- `record[A251137(A114091(n+1)+1)]` -/
def P690928616578332004.Spec : Prop :=
  ∀ n, P690928616578332004.a n = A251131 (n + 1)

end A251131

/-!
# A251132: Number of (n+1) X (3+1) 0..2 arrays with no 2 X 2 subblock having the sum of its diagonal elements greater than the maximum of its antidiagonal elements.

The programs for A251132, there is no canonical definition to state claims against.
-/

/-! ## A251132.P12430620369265329495

`A251137(∑[n+2]+4)`
-/

namespace A251132.P12430620369265329495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251137 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251132.P12430620369265329495

/-! ## A251132.P8815862246310970034

`record[A251137(A008795(n)+3)]`
-/

namespace A251132.P8815862246310970034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251137 (A008795 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251132.P8815862246310970034

/-!
# A251133: Number of (n+1) X (4+1) 0..2 arrays with no 2 X 2 subblock having the sum of its diagonal elements greater than the maximum of its antidiagonal elements.

The programs for A251133, there is no canonical definition to state claims against.
-/

/-! ## A251133.P6257433912583937365

`A251137(∑[n+3]+7)`
-/

namespace A251133.P6257433912583937365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251137 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A251133.P6257433912583937365

/-!
# A251134: Number of (n+1) X (5+1) 0..2 arrays with no 2 X 2 subblock having the sum of its diagonal elements greater than the maximum of its antidiagonal elements.

The programs for A251134, there is no canonical definition to state claims against.
-/

/-! ## A251134.P13147432143042400793

`A251137(∑[n+4]+11)`
-/

namespace A251134.P13147432143042400793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251137 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A251134.P13147432143042400793

/-!
# A251135: Number of (n+1) X (6+1) 0..2 arrays with no 2 X 2 subblock having the sum of its diagonal elements greater than the maximum of its antidiagonal elements.

The programs for A251135, there is no canonical definition to state claims against.
-/

/-! ## A251135.P14988067395604165014

`A251137(A374007(n+1))`
-/

namespace A251135.P14988067395604165014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251137 (A374007 (n + 1)).toNat

end

end A251135.P14988067395604165014

/-!
# A251136: Number of (n+1) X (7+1) 0..2 arrays with no 2 X 2 subblock having the sum of its diagonal elements greater than the maximum of its antidiagonal elements.

The programs for A251136, there is no canonical definition to state claims against.
-/

/-! ## A251136.P9360369467462857880

`A251137(A374008(n+1))`
-/

namespace A251136.P9360369467462857880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251137 (A374008 (n + 1)).toNat

end

end A251136.P9360369467462857880

/-!
# A251138: Number of distinct prime factors of A098550(n).

The programs for A251138, there is no canonical definition to state claims against.
-/

/-! ## A251138.P16545108037560189299

`∑{e}[A251089(1+n), #]`
-/

namespace A251138.P16545108037560189299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251089 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A251138.P16545108037560189299

/-! ## A251138.P5991120509257795327

`∑{p}[A098550(n+1), C(#, #)]`
-/

namespace A251138.P5991120509257795327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098550 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.choose p p

end

end A251138.P5991120509257795327

/-! ## A251138.P12778370869639219714

`A001221(A098550(1+n))`
-/

namespace A251138.P12778370869639219714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A098550 (1 + n)).toNat

end

end A251138.P12778370869639219714

/-! ## A251138.P14870403984730974047

`∑{d}[A098550(n+1), A010051(#)]`
-/

namespace A251138.P14870403984730974047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A010051 d

end

end A251138.P14870403984730974047

/-! ## A251138.P6225844045759754906

`∑{p}[A098550(n+1), A280496(#)]`
-/

namespace A251138.P6225844045759754906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A280496 p

end

end A251138.P6225844045759754906

/-! ## A251138.P14127328949164983640

`A001222(∏{p}[A098550(n+1), #])`
-/

namespace A251138.P14127328949164983640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A251138.P14127328949164983640

/-! ## A251138.P9082675704719613984

`∑{e}[A098550(n+1), A309873(#²)]`
-/

namespace A251138.P9082675704719613984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A309873 (Nat.factorization (f1 n).natAbs p ^ 2)

end

end A251138.P9082675704719613984

/-! ## A251138.P10165779541616802989

`∑{e}[A098550(n+1), #-A004907(#)]`
-/

namespace A251138.P10165779541616802989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, ((Nat.factorization (f1 n).natAbs p : ℤ) - A004907 (Nat.factorization (f1 n).natAbs p))

end

end A251138.P10165779541616802989

/-! ## A251138.P6824550082620240114

`∑{e}[A098550(n+1), #/A090108(#)]`
-/

namespace A251138.P6824550082620240114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098550 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p : ℚ) / (A090108 (Nat.factorization (f1 n).natAbs p) : ℚ)

end

end A251138.P6824550082620240114

/-! ## A251138.P2122893905006798679

`A083399(A098550(n+1))-1`
-/

namespace A251138.P2122893905006798679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083399 (A098550 (n + 1)).toNat - 1

end

end A251138.P2122893905006798679

/-! ## A251138.P5470516204147952385

`A001222(A251089(n+1)²)/2`
-/

namespace A251138.P5470516204147952385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (A251089 (n + 1) ^ 2).toNat : ℚ) / 2

end

end A251138.P5470516204147952385

/-!
# A251139: Number of distinct prime factors of A098548(n).

The programs for A251139, there is no canonical definition to state claims against.
-/

/-! ## A251139.P14174110300747016255

`∑{e}[A251090(1+n), #]`
-/

namespace A251139.P14174110300747016255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251090 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A251139.P14174110300747016255

/-! ## A251139.P3394383117873369120

`A001221(A098548(1+n))`
-/

namespace A251139.P3394383117873369120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A098548 (1 + n)).toNat

end

end A251139.P3394383117873369120

/-! ## A251139.P16344274472605214371

`∑{d}[A098548(n+1), A010051(#)]`
-/

namespace A251139.P16344274472605214371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098548 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A010051 d

end

end A251139.P16344274472605214371

/-! ## A251139.P10383409706742406467

`∑{p}[A098548(n+1), A001222(#)]`
-/

namespace A251139.P10383409706742406467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098548 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A251139.P10383409706742406467

/-! ## A251139.P15175302122461141059

`∑{p}[A098548(n+1), A008833(#)]`
-/

namespace A251139.P15175302122461141059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098548 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A008833 p

end

end A251139.P15175302122461141059

/-! ## A251139.P10856951340077437820

`∑{e}[A098548(n+1), A085860(#)+1]`
-/

namespace A251139.P10856951340077437820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098548 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A085860 (Nat.factorization (f1 n).natAbs p) + 1)

end

end A251139.P10856951340077437820

/-! ## A251139.P4338541861559717129

`∑{e}[A098548(n+1), #/A055643(#)]`
-/

namespace A251139.P4338541861559717129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098548 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p : ℚ) / (A055643 (Nat.factorization (f1 n).natAbs p) : ℚ)

end

end A251139.P4338541861559717129

/-! ## A251139.P16225628244447866215

`∑{e}[A098548(n+1), A008683(A005117(#))²]`
-/

namespace A251139.P16225628244447866215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098548 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A008683 (A005117 (Nat.factorization (f1 n).natAbs p)).toNat ^ 2

end

end A251139.P16225628244447866215

/-! ## A251139.P13010587551190413625

`∑{e}[A098548(n+1), A008683(A253052(#+1))]`
-/

namespace A251139.P13010587551190413625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098548 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A008683 (A253052 (Nat.factorization (f1 n).natAbs p + 1)).toNat

end

end A251139.P13010587551190413625

/-! ## A251139.P5017898485959644726

`∑{e}[A098548(n+1), A008683(A253053(#+1))]`
-/

namespace A251139.P5017898485959644726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098548 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A008683 (A253053 (Nat.factorization (f1 n).natAbs p + 1)).toNat

end

end A251139.P5017898485959644726

/-! ## A251139.P6292551285873931379

`∑{e}[A098548(n+1)², A008683(A253052(#))]`
-/

namespace A251139.P6292551285873931379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098548 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A008683 (A253052 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A251139.P6292551285873931379

/-! ## A251139.P13423031472484136849

`∑{e}[A098548(n+1)², A008683(A253053(#))]`
-/

namespace A251139.P13423031472484136849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098548 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A008683 (A253053 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A251139.P13423031472484136849

/-!
# A251140: Total number of prime factors of A098550(n).

The programs for A251140, there is no canonical definition to state claims against.
-/

/-! ## A251140.P8444666840253687500

`∑{e}[A098550(1+n), #]`
-/

namespace A251140.P8444666840253687500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098550 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A251140.P8444666840253687500

/-! ## A251140.P12964581836038148015

`A001222(A098550(1+n))`
-/

namespace A251140.P12964581836038148015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A098550 (1 + n)).toNat

end

end A251140.P12964581836038148015

/-! ## A251140.P932224012886964748

`∑{e}[A098552(A098551(1+n)), #]`
-/

namespace A251140.P932224012886964748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098552 (A098551 (1 + n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A251140.P932224012886964748

/-! ## A251140.P12084120296423064109

`A073093(A098550(n+1))-1`
-/

namespace A251140.P12084120296423064109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (A098550 (n + 1)).toNat - 1

end

end A251140.P12084120296423064109

/-! ## A251140.P2817436255059247965

`A377403(2*A098550(n+1))`
-/

namespace A251140.P2817436255059247965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377403 (2 * A098550 (n + 1)).toNat

end

end A251140.P2817436255059247965

/-!
# A251141: Total number of prime factors of A098548(n).

The programs for A251141, there is no canonical definition to state claims against.
-/

/-! ## A251141.P4965254188180883046

`∑{e}[A098548(1+n), #]`
-/

namespace A251141.P4965254188180883046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098548 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A251141.P4965254188180883046

/-! ## A251141.P2294785237765236163

`A001222(A098548(1+n))`
-/

namespace A251141.P2294785237765236163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A098548 (1 + n)).toNat

end

end A251141.P2294785237765236163

/-! ## A251141.P5433287968792360884

`∑{e}[record[A098548(A126759(n))], #]`
-/

namespace A251141.P5433287968792360884
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098548 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A251141.P5433287968792360884

/-! ## A251141.P6430127839740164701

`∑{d}[A098548(n+1), A001221(A014963(#))]`
-/

namespace A251141.P6430127839740164701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098548 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001221 (A014963 d).toNat

end

end A251141.P6430127839740164701

/-! ## A251141.P13477017853769170203

`∑{e}[record[A098548(A335421(n))], #]`
-/

namespace A251141.P13477017853769170203
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098548 (A335421 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A251141.P13477017853769170203

/-!
# A251142: Number of (n+1) X (n+1) 0..2 arrays with every 2 X 2 subblock summing to 4 and no 2 X 2 subblock having exactly two nonzero entries.

The programs for A251142, there is no canonical definition to state claims against.
-/

/-! ## A251142.P900035768797579120

`A251149(∑[4*n]+1)`
-/

namespace A251142.P900035768797579120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251149 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251142.P900035768797579120

/-! ## A251142.P1381085505177593583

`record[A003982(n)*A251149(n+1)]`
-/

namespace A251142.P1381085505177593583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A251149 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251142.P1381085505177593583

/-! ## A251142.P6307098940935614078

`record[gcd(A003987(n), A251149(n+1))]`
-/

namespace A251142.P6307098940935614078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A251149 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251142.P6307098940935614078

/-!
# A251143: Number of (n+1) X (2+1) 0..2 arrays with every 2 X 2 subblock summing to 4 and no 2 X 2 subblock having exactly two nonzero entries.

The programs for A251143, the canonical program `A251143.P13679606666865714444` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251143 has offset 1).

The definition of A251143 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 328 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251143.P13314600691955749041

`ogf((27-32x-60x^2+35x^3+34x^4)/(1-3x+5x^3-x^4-2x^5))`
-/

namespace A251143.P13314600691955749041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [27, -32, -60, 35, 34] [1, -3, 0, 5, -1, -2] n

end

end A251143.P13314600691955749041

namespace A251143

/-- `ogf((27-32x-60x^2+35x^3+34x^4)/(1-3x+5x^3-x^4-2x^5))` -/
def P13314600691955749041.Spec : Prop :=
  ∀ n, P13314600691955749041.a n = A251143 (n + 1)

end A251143

/-! ## A251143.P13679606666865714444

`3*a(n-1)-5*a(n-3)+a(n-4)+2*a(n-5)` with `a(0)=27, a(1)=49, a(2)=87, a(3)=161, a(4)=299`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A251143

/-- `3*a(n-1)-5*a(n-3)+a(n-4)+2*a(n-5)` -/
def P13679606666865714444.Spec : Prop :=
  ∀ n, P13679606666865714444.a n = A251143 (n + 1)

theorem P13679606666865714444.correct : P13679606666865714444.Spec := by
  intro n
  simp only [A251143, Nat.add_sub_cancel]

end A251143

/-! ## A251143.P6251344932937087190

`A251149(∑[n+1]+2)`
-/

namespace A251143.P6251344932937087190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251149 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251143.P6251344932937087190

namespace A251143

/-- `A251149(∑[n+1]+2)` -/
def P6251344932937087190.Spec : Prop :=
  ∀ n, P6251344932937087190.a n = A251143 (n + 1)

end A251143

/-! ## A251143.P9488298870079988443

`record[A251149(A133263(abs(1-n)))]`
-/

namespace A251143.P9488298870079988443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251149 (A133263 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251143.P9488298870079988443

namespace A251143

/-- `record[A251149(A133263(abs(1-n)))]` -/
def P9488298870079988443.Spec : Prop :=
  ∀ n, P9488298870079988443.a n = A251143 (n + 1)

end A251143

/-!
# A251144: Number of (n+1) X (3+1) 0..2 arrays with every 2 X 2 subblock summing to 4 and no 2 X 2 subblock having exactly two nonzero entries.

The programs for A251144, the canonical program `A251144.P13420610324036702685` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251144 has offset 1).

The definition of A251144 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 328 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251144.P15063215061714976483

`ogf((53-72x-118x^2+83x^3+74x^4)/(1-3x+5x^3-x^4-2x^5))`
-/

namespace A251144.P15063215061714976483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [53, -72, -118, 83, 74] [1, -3, 0, 5, -1, -2] n

end

end A251144.P15063215061714976483

namespace A251144

/-- `ogf((53-72x-118x^2+83x^3+74x^4)/(1-3x+5x^3-x^4-2x^5))` -/
def P15063215061714976483.Spec : Prop :=
  ∀ n, P15063215061714976483.a n = A251144 (n + 1)

end A251144

/-! ## A251144.P13420610324036702685

`3*a(n-1)-5*a(n-3)+a(n-4)+2*a(n-5)` with `a(0)=53, a(1)=87, a(2)=143, a(3)=247, a(4)=433`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A251144

/-- `3*a(n-1)-5*a(n-3)+a(n-4)+2*a(n-5)` -/
def P13420610324036702685.Spec : Prop :=
  ∀ n, P13420610324036702685.a n = A251144 (n + 1)

theorem P13420610324036702685.correct : P13420610324036702685.Spec := by
  intro n
  simp only [A251144, Nat.add_sub_cancel]

end A251144

/-! ## A251144.P7079438434915475815

`A251149(∑[n+2]+4)`
-/

namespace A251144.P7079438434915475815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251149 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251144.P7079438434915475815

namespace A251144

/-- `A251149(∑[n+2]+4)` -/
def P7079438434915475815.Spec : Prop :=
  ∀ n, P7079438434915475815.a n = A251144 (n + 1)

end A251144

/-!
# A251145: Number of (n+1) X (4+1) 0..2 arrays with every 2 X 2 subblock summing to 4 and no 2 X 2 subblock having exactly two nonzero entries.

The programs for A251145, the canonical program `A251145.P13330059832845496157` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251145 has offset 1).

The definition of A251145 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 328 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251145.P5862615922869264118

`ogf((107-160x-236x^2+195x^3+162x^4)/(1-3x+5x^3-x^4-2x^5))`
-/

namespace A251145.P5862615922869264118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [107, -160, -236, 195, 162] [1, -3, 0, 5, -1, -2] n

end

end A251145.P5862615922869264118

namespace A251145

/-- `ogf((107-160x-236x^2+195x^3+162x^4)/(1-3x+5x^3-x^4-2x^5))` -/
def P5862615922869264118.Spec : Prop :=
  ∀ n, P5862615922869264118.a n = A251145 (n + 1)

end A251145

/-! ## A251145.P13330059832845496157

`3*a(n-1)-5*a(n-3)+a(n-4)+2*a(n-5)` with `a(0)=107, a(1)=161, a(2)=247, a(3)=401, a(4)=667`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A251145

/-- `3*a(n-1)-5*a(n-3)+a(n-4)+2*a(n-5)` -/
def P13330059832845496157.Spec : Prop :=
  ∀ n, P13330059832845496157.a n = A251145 (n + 1)

theorem P13330059832845496157.correct : P13330059832845496157.Spec := by
  intro n
  simp only [A251145, Nat.add_sub_cancel]

end A251145

/-! ## A251145.P14969555722586958810

`A251149(∑[n+3]+7)`
-/

namespace A251145.P14969555722586958810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251149 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A251145.P14969555722586958810

namespace A251145

/-- `A251149(∑[n+3]+7)` -/
def P14969555722586958810.Spec : Prop :=
  ∀ n, P14969555722586958810.a n = A251145 (n + 1)

end A251145

/-!
# A251146: Number of (n+1) X (5+1) 0..2 arrays with every 2 X 2 subblock summing to 4 and no 2 X 2 subblock having exactly two nonzero entries.

The programs for A251146, the canonical program `A251146.P4608412888610708658` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251146 has offset 1).

The definition of A251146 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251146.P4608412888610708658

`ogf((213-340x-464x^2+433x^3+342x^4)/(1-3x+5x^3-x^4-2x^5))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A251146

/-- `ogf((213-340x-464x^2+433x^3+342x^4)/(1-3x+5x^3-x^4-2x^5))` -/
def P4608412888610708658.Spec : Prop :=
  ∀ n, P4608412888610708658.a n = A251146 (n + 1)

theorem P4608412888610708658.correct : P4608412888610708658.Spec := by
  intro n
  simp only [A251146, Nat.add_sub_cancel]

end A251146

/-! ## A251146.P7915132232934971124

`A251149(A374005(n+1))`
-/

namespace A251146.P7915132232934971124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251149 (A374005 (n + 1)).toNat

end

end A251146.P7915132232934971124

namespace A251146

/-- `A251149(A374005(n+1))` -/
def P7915132232934971124.Spec : Prop :=
  ∀ n, P7915132232934971124.a n = A251146 (n + 1)

end A251146

/-!
# A251147: Number of (n+1) X (6+1) 0..2 arrays with every 2 X 2 subblock summing to 4 and no 2 X 2 subblock having exactly two nonzero entries.

The programs for A251147, the canonical program `A251147.P663028205775432358` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251147 has offset 1).

The definition of A251147 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251147.P663028205775432358

`ogf((427-716x-918x^2+945x^3+718x^4)/(1-3x+5x^3-x^4-2x^5))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A251147

/-- `ogf((427-716x-918x^2+945x^3+718x^4)/(1-3x+5x^3-x^4-2x^5))` -/
def P663028205775432358.Spec : Prop :=
  ∀ n, P663028205775432358.a n = A251147 (n + 1)

theorem P663028205775432358.correct : P663028205775432358.Spec := by
  intro n
  simp only [A251147, Nat.add_sub_cancel]

end A251147

/-! ## A251147.P15607828400772612374

`A251149(∑[n+5]+16)`
-/

namespace A251147.P15607828400772612374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251149 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A251147.P15607828400772612374

namespace A251147

/-- `A251149(∑[n+5]+16)` -/
def P15607828400772612374.Spec : Prop :=
  ∀ n, P15607828400772612374.a n = A251147 (n + 1)

end A251147

/-!
# A251148: Number of (n+1) X (7+1) 0..2 arrays with every 2 X 2 subblock summing to 4 and no 2 X 2 subblock having exactly two nonzero entries.

The programs for A251148, there is no canonical definition to state claims against.
-/

/-! ## A251148.P6289105442021532331

`A251149(A374008(n+1))`
-/

namespace A251148.P6289105442021532331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251149 (A374008 (n + 1)).toNat

end

end A251148.P6289105442021532331

/-!
# A251149: T(n,k) = Number of (n+1) X (k+1) 0..2 arrays with every 2 X 2 subblock summing to 4 and no 2 X 2 subblock having exactly two nonzero entries.

The programs for A251149, there is no canonical definition to state claims against.
-/

/-! ## A251149.P494410584805193933

`A375295(A222444(n+1))/A001055(2*n+1)`
-/

namespace A251149.P494410584805193933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A375295 (A222444 (n + 1)).toNat : ℚ) / (A001055 (2 * n + 1) : ℚ)

end

end A251149.P494410584805193933

/-!
# A251150: Number of (n+1)X(n+1) 0..2 arrays with no 2X2 subblock having the minimum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251150, there is no canonical definition to state claims against.
-/

/-! ## A251150.P2465782805315918526

`A251158((n+1)²+n²)`
-/

namespace A251150.P2465782805315918526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251158 ((n + 1) ^ 2 + n ^ 2)

end

end A251150.P2465782805315918526

/-!
# A251151: Number of (n+1) X (1+1) 0..2 arrays with no 2 X 2 subblock having the minimum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251151, the canonical program `A251151.P11438154250486363536` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251151 has offset 1).

The definition of A251151 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251151.P11438154250486363536

`ogf((65+15x-176x^2+35x^3+68x^4-36x^5)/(1-7x-4x^2+20x^3-3x^4-8x^5+4x^6))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A251151

/-- `ogf((65+15x-176x^2+35x^3+68x^4-36x^5)/(1-7x-4x^2+20x^3-3x^4-8x^5+4x^6))` -/
def P11438154250486363536.Spec : Prop :=
  ∀ n, P11438154250486363536.a n = A251151 (n + 1)

theorem P11438154250486363536.correct : P11438154250486363536.Spec := by
  intro n
  simp only [A251151, Nat.add_sub_cancel]

end A251151

/-! ## A251151.P6749342446031271696

`A251158(∑[n]+1)`
-/

namespace A251151.P6749342446031271696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251158 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251151.P6749342446031271696

namespace A251151

/-- `A251158(∑[n]+1)` -/
def P6749342446031271696.Spec : Prop :=
  ∀ n, P6749342446031271696.a n = A251151 (n + 1)

end A251151

/-! ## A251151.P14840678657247534472

`record[A251158(n+1)/A022173(n)]`
-/

namespace A251151.P14840678657247534472
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251158 (n + 1) : ℚ) / (A022173 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251151.P14840678657247534472

namespace A251151

/-- `record[A251158(n+1)/A022173(n)]` -/
def P14840678657247534472.Spec : Prop :=
  ∀ n, P14840678657247534472.a n = (A251151 (n + 1) : ℚ)

end A251151

/-! ## A251151.P13723530975674323470

`record[A251158(n+1)/A118180(n)]`
-/

namespace A251151.P13723530975674323470
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251158 (n + 1) : ℚ) / (A118180 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251151.P13723530975674323470

namespace A251151

/-- `record[A251158(n+1)/A118180(n)]` -/
def P13723530975674323470.Spec : Prop :=
  ∀ n, P13723530975674323470.a n = (A251151 (n + 1) : ℚ)

end A251151

/-! ## A251151.P2400755621009186292

`record[root(A251158(n+1), A008288(n))]`
-/

namespace A251151.P2400755621009186292
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251158 (n + 1) : ℝ) ^ (1 / (A008288 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251151.P2400755621009186292

namespace A251151

/-- `record[root(A251158(n+1), A008288(n))]` -/
def P2400755621009186292.Spec : Prop :=
  ∀ n, P2400755621009186292.a n = (A251151 (n + 1) : ℝ)

end A251151

/-!
# A251152: Number of (n+1)X(2+1) 0..2 arrays with no 2X2 subblock having the minimum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251152, there is no canonical definition to state claims against.
-/

/-! ## A251152.P6179932291791806630

`A251158(∑[n+1]+2)`
-/

namespace A251152.P6179932291791806630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251158 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251152.P6179932291791806630

/-! ## A251152.P429319195916401221

`record[root(A251158(n+2), A013610(n))]`
-/

namespace A251152.P429319195916401221
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251158 (n + 2) : ℝ) ^ (1 / (A013610 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251152.P429319195916401221

/-! ## A251152.P18271290094788795700

`record[gcd(A097805(n+1), A251158(n+3))]`
-/

namespace A251152.P18271290094788795700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A097805 (n + 1)) (A251158 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251152.P18271290094788795700

/-!
# A251153: Number of (n+1)X(3+1) 0..2 arrays with no 2X2 subblock having the minimum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251153, there is no canonical definition to state claims against.
-/

/-! ## A251153.P1915065665083922856

`A251158(∑[n+2]+4)`
-/

namespace A251153.P1915065665083922856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251158 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251153.P1915065665083922856

/-!
# A251154: Number of (n+1)X(4+1) 0..2 arrays with no 2X2 subblock having the minimum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251154, there is no canonical definition to state claims against.
-/

/-! ## A251154.P14670685246091320888

`A251158(A141214(n)+7)`
-/

namespace A251154.P14670685246091320888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251158 (A141214 n + 7).toNat

end

end A251154.P14670685246091320888

/-!
# A251155: Number of (n+1)X(5+1) 0..2 arrays with no 2X2 subblock having the minimum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251155, there is no canonical definition to state claims against.
-/

/-! ## A251155.P14241731203322617587

`A251158(A374005(n+1))`
-/

namespace A251155.P14241731203322617587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251158 (A374005 (n + 1)).toNat

end

end A251155.P14241731203322617587

/-!
# A251156: Number of (n+1)X(6+1) 0..2 arrays with no 2X2 subblock having the minimum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251156, there is no canonical definition to state claims against.
-/

/-! ## A251156.P2341277361497341383

`A251158(A000124(n+5)+5)`
-/

namespace A251156.P2341277361497341383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251158 (A000124 (n + 5) + 5).toNat

end

end A251156.P2341277361497341383

/-!
# A251159: Number of (n+1)X(n+1) 0..3 arrays with no 2X2 subblock having the maximum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251159, there is no canonical definition to state claims against.
-/

/-! ## A251159.P1931675908655010079

`A251167(∑[4*n]+1)`
-/

namespace A251159.P1931675908655010079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251167 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251159.P1931675908655010079

/-! ## A251159.P7416621604984943286

`record[gcd(A003987(n), A251167(n+1))]`
-/

namespace A251159.P7416621604984943286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A251167 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251159.P7416621604984943286

/-!
# A251160: Number of (n+1)X(1+1) 0..3 arrays with no 2X2 subblock having the maximum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251160, there is no canonical definition to state claims against.
-/

/-! ## A251160.P9524989339605841547

`A251167(∑[n]+1)`
-/

namespace A251160.P9524989339605841547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251167 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251160.P9524989339605841547

/-! ## A251160.P6831574878595746651

`record[A103451(n)*A251167(n+1)]`
-/

namespace A251160.P6831574878595746651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A251167 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251160.P6831574878595746651

/-! ## A251160.P18389250370128415941

`record[root(A251167(n+1), A089688(n))]`
-/

namespace A251160.P18389250370128415941
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251167 (n + 1) : ℝ) ^ (1 / (A089688 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251160.P18389250370128415941

/-! ## A251160.P3639134472712094837

`record[gcd(A002262(n), A251167(n+1))]`
-/

namespace A251160.P3639134472712094837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A251167 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251160.P3639134472712094837

/-! ## A251160.P5521051226587903510

`record[A251167(n+1)/A008292(n+1)]`
-/

namespace A251160.P5521051226587903510
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251167 (n + 1) : ℚ) / (A008292 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251160.P5521051226587903510

/-!
# A251161: Number of (n+1)X(2+1) 0..3 arrays with no 2X2 subblock having the maximum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251161, there is no canonical definition to state claims against.
-/

/-! ## A251161.P10272469640630951639

`A251167(∑[n+1]+2)`
-/

namespace A251161.P10272469640630951639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251167 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251161.P10272469640630951639

/-! ## A251161.P5374107425669555061

`record[gcd(A002262(n), A251167(n+2))]`
-/

namespace A251161.P5374107425669555061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A251167 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251161.P5374107425669555061

/-! ## A251161.P14722707408380263150

`record[root(A251167(n+2), A002260(n+1))]`
-/

namespace A251161.P14722707408380263150
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251167 (n + 2) : ℝ) ^ (1 / (A002260 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251161.P14722707408380263150

/-!
# A251162: Number of (n+1)X(3+1) 0..3 arrays with no 2X2 subblock having the maximum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251162, there is no canonical definition to state claims against.
-/

/-! ## A251162.P1613699585503559711

`A251167(∑[n+2]+4)`
-/

namespace A251162.P1613699585503559711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251167 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251162.P1613699585503559711

/-!
# A251163: Number of (n+1)X(4+1) 0..3 arrays with no 2X2 subblock having the maximum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251163, there is no canonical definition to state claims against.
-/

/-! ## A251163.P12342180954936659148

`A251167(A374004(n+1))`
-/

namespace A251163.P12342180954936659148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251167 (A374004 (n + 1)).toNat

end

end A251163.P12342180954936659148

/-! ## A251163.P17226385203852861738

`A251167(A141214(n+1))`
-/

namespace A251163.P17226385203852861738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251167 (A141214 (n + 1)).toNat

end

end A251163.P17226385203852861738

/-!
# A251164: Number of (n+1)X(5+1) 0..3 arrays with no 2X2 subblock having the maximum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251164, there is no canonical definition to state claims against.
-/

/-! ## A251164.P16246685792440248300

`A251167(A374005(n+1))`
-/

namespace A251164.P16246685792440248300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251167 (A374005 (n + 1)).toNat

end

end A251164.P16246685792440248300

/-!
# A251165: Number of (n+1)X(6+1) 0..3 arrays with no 2X2 subblock having the maximum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251165, there is no canonical definition to state claims against.
-/

/-! ## A251165.P3532950290397258677

`A251167(A374007(n+1))`
-/

namespace A251165.P3532950290397258677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251167 (A374007 (n + 1)).toNat

end

end A251165.P3532950290397258677

/-!
# A251166: Number of (n+1)X(7+1) 0..3 arrays with no 2X2 subblock having the maximum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251166, there is no canonical definition to state claims against.
-/

/-! ## A251166.P16659326176910424020

`A251167(A374008(n+1))`
-/

namespace A251166.P16659326176910424020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251167 (A374008 (n + 1)).toNat

end

end A251166.P16659326176910424020

/-!
# A251168: Number of (n+1)X(1+1) 0..3 arrays with no 2X2 subblock having the minimum of its diagonal elements less than the absolute difference of its antidiagonal elements.

The programs for A251168, there is no canonical definition to state claims against.
-/

/-! ## A251168.P10855104904302459702

`A251175(∑[n]+1)`
-/

namespace A251168.P10855104904302459702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251175 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251168.P10855104904302459702

/-! ## A251168.P11088610177098028210

`record[gcd(A251175(n+1), A322699(n))]`
-/

namespace A251168.P11088610177098028210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A251175 (n + 1)) (A322699 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251168.P11088610177098028210

/-! ## A251168.P3929679785787967099

`record[root(A251175(n+1), A002260(n+1))]`
-/

namespace A251168.P3929679785787967099
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251175 (n + 1) : ℝ) ^ (1 / (A002260 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251168.P3929679785787967099

/-!
# A251169: Number of (n+1)X(2+1) 0..3 arrays with no 2X2 subblock having the minimum of its diagonal elements less than the absolute difference of its antidiagonal elements.

The programs for A251169, there is no canonical definition to state claims against.
-/

/-! ## A251169.P13813490696950367703

`A251175(∑[n+1]+2)`
-/

namespace A251169.P13813490696950367703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251175 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251169.P13813490696950367703

/-!
# A251170: Number of (n+1)X(3+1) 0..3 arrays with no 2X2 subblock having the minimum of its diagonal elements less than the absolute difference of its antidiagonal elements.

The programs for A251170, there is no canonical definition to state claims against.
-/

/-! ## A251170.P991116221543554256

`A251175(∑[n+2]+4)`
-/

namespace A251170.P991116221543554256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251175 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251170.P991116221543554256

/-!
# A251171: Number of (n+1)X(4+1) 0..3 arrays with no 2X2 subblock having the minimum of its diagonal elements less than the absolute difference of its antidiagonal elements.

The programs for A251171, there is no canonical definition to state claims against.
-/

/-! ## A251171.P493750577005865878

`A251175(A141214(n)+7)`
-/

namespace A251171.P493750577005865878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251175 (A141214 n + 7).toNat

end

end A251171.P493750577005865878

/-! ## A251171.P4017410021356802982

`A251175(A141214(n+1))`
-/

namespace A251171.P4017410021356802982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251175 (A141214 (n + 1)).toNat

end

end A251171.P4017410021356802982

/-!
# A251176: G.f. A(x) satisfies A(x) = 1 + x/(1-9*x^3)^(1/3) * A( x/sqrt(1-9*x^3)^(1/3) ).

The programs for A251176, there is no canonical definition to state claims against.
-/

/-! ## A251176.P930191271843511279

`A001156(A378274(2*(n+1))+A118207(n))`
-/

namespace A251176.P930191271843511279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001156 (A378274 (2 * (n + 1)) + A118207 n).toNat

end

end A251176.P930191271843511279

/-!
# A251177: G.f. satisfies: A(x) = Sum_{n>=0} (A(x)^n - 1)^n * x^n / (1-x)^(n+1).

The programs for A251177, there is no canonical definition to state claims against.
-/

/-! ## A251177.P1994974840330283803

`A226190(A349970(n))`
-/

namespace A251177.P1994974840330283803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (A349970 n).toNat

end

end A251177.P1994974840330283803

/-! ## A251177.P10626575061647926209

`A049093(A242275(n+1))`
-/

namespace A251177.P10626575061647926209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049093 (A242275 (n + 1)).toNat

end

end A251177.P10626575061647926209

/-! ## A251177.P6500304855734324936

`A364350(∑[∑[A121443(n+1)]])`
-/

namespace A251177.P6500304855734324936
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121443 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364350 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A251177.P6500304855734324936

/-!
# A251178: G.f. satisfies: A(x) = Sum_{n>=0} (A(x)^n + 1)^n * x^n / (1+x)^(n+1).

The programs for A251178, there is no canonical definition to state claims against.
-/

/-! ## A251178.P6847436915190651192

`A305194(∑[∑[or(1, n)]])`
-/

namespace A251178.P6847436915190651192
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305194 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A251178.P6847436915190651192

/-! ## A251178.P3336875706298078493

`A024417(A000309(n))`
-/

namespace A251178.P3336875706298078493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A000309 n).toNat

end

end A251178.P3336875706298078493

/-!
# A251179: G.f. satisfies: A(x) = Sum_{n>=0} (A(x)^n + 1)^n * x^n / (1-2*x)^(n+1).

The programs for A251179, there is no canonical definition to state claims against.
-/

/-! ## A251179.P11396810354787757511

`A304365(∑[n^n])`
-/

namespace A251179.P11396810354787757511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304365 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A251179.P11396810354787757511

/-!
# A251180: G.f. satisfies: A(x) = Sum_{n>=0} (A(x)^n + 2)^n * x^n / (1+2*x)^(n+1).

The programs for A251180, there is no canonical definition to state claims against.
-/

/-! ## A251180.P8691927868276204733

`A185545(∑[A186762(n)])`
-/

namespace A251180.P8691927868276204733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186762 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185545 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A251180.P8691927868276204733

/-! ## A251180.P8266785659791311047

`A248008(lcm(7, A328345(n)))`
-/

namespace A251180.P8266785659791311047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248008 (Int.lcm 7 (A328345 n))

end

end A251180.P8266785659791311047

/-!
# A251181: G.f. satisfies: A(x) = Sum_{n>=0} (A(x)^n - 1)^n * x^n / (1-2*x)^(n+1).

The programs for A251181, there is no canonical definition to state claims against.
-/

/-! ## A251181.P2790635610399721213

`∏{p}[round(∑[(n+1)*a(n-1)]/3)², #]` with `a(0)=2`
-/

namespace A251181.P2790635610399721213
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  (n + 1) * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / 3) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A251181.P2790635610399721213

/-! ## A251181.P13027976590363195158

`A322314(a(n-1)²)+n` with `a(0)=1`
-/

namespace A251181.P13027976590363195158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A322314 (a (n - 1) ^ 2).toNat + (n : ℤ)

end

end A251181.P13027976590363195158

/-!
# A251182: a(n) = Sum_{k=0..n} binomial(n, k) * (2^k - 1)^k.

The programs for A251182, the canonical program `A251182.P11517926617228544381` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251182 has offset 0).

The definition of A251182 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n, #)*(2^#-1)^#]` (program `A251182.P11517926617228544381`, by `A251182.P11517926617228544381.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A251182.P11517926617228544381

`∑{#}[n, C(n, #)*(2^#-1)^#]`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A251182

/-- `∑{#}[n, C(n, #)*(2^#-1)^#]` -/
def P11517926617228544381.Spec : Prop :=
  ∀ n, P11517926617228544381.a n = A251182 n

theorem P11517926617228544381.correct : P11517926617228544381.Spec := by
  intro n
  simp only [A251182]

end A251182

/-!
# A251183: a(n) = Sum_{k=0..n} binomial(n,k) * (-1)^(n-k) * (2^k + 1)^k.

The programs for A251183, the canonical program `A251183.P11392880312859020618` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251183 has offset 0).

The definition of A251183 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A251183.anchor (n : ℕ) : (A251183 n : ℚ) = ∑ k ∈ Finset.range (n + 1), (Nat.choose n k : ℚ) * (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * ((2 ^ k + 1) ^ k : ℚ)` in `Proof.A251.A251183`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A251183.P11392880312859020618

`∑{#}[n, C(n, #)*(-1)^(n-#)*(2^#+1)^#]`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A251183

/-- `∑{#}[n, C(n, #)*(-1)^(n-#)*(2^#+1)^#]` -/
def P11392880312859020618.Spec : Prop :=
  ∀ n, P11392880312859020618.a n = (A251183 n : ℚ)

end A251183

/-!
# A251184: a(n) = Sum_{k=0..n} binomial(n,k) * (2^k + 3)^k.

The programs for A251184, the canonical program `A251184.P12683747245094357947` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251184 has offset 0).

The definition of A251184 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n, #)*(2^#+3)^#]` (program `A251184.P12683747245094357947`, by `A251184.P12683747245094357947.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A251184.P12683747245094357947

`∑{#}[n, C(n, #)*(2^#+3)^#]`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A251184

/-- `∑{#}[n, C(n, #)*(2^#+3)^#]` -/
def P12683747245094357947.Spec : Prop :=
  ∀ n, (P12683747245094357947.a n : ℤ) = A251184 n

theorem P12683747245094357947.correct : P12683747245094357947.Spec := by
  intro n
  simp only [A251184]

end A251184

/-!
# A251185: E.g.f. satisfies: A(x) = x + x*A( -log(2-exp(x)) ).

The programs for A251185, there is no canonical definition to state claims against.
-/

/-! ## A251185.P7833057887005061125

`A328106(a(n-1)*∑[n+1])` with `a(0)=1`
-/

namespace A251185.P7833057887005061125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A328106 (a (n - 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A251185.P7833057887005061125

/-!
# A251186: Number of (n+2)X(n+2) 0..1 arrays with nondecreasing sum of every three consecutive values in every row and column.

The programs for A251186, there is no canonical definition to state claims against.
-/

/-! ## A251186.P6955600594027946298

`A251192((n+1)²+n²)`
-/

namespace A251186.P6955600594027946298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251192 ((n + 1) ^ 2 + n ^ 2)

end

end A251186.P6955600594027946298

/-! ## A251186.P14132012714686451595

`record[gcd(A003987(n), A251192(n+1))]`
-/

namespace A251186.P14132012714686451595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A251192 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251186.P14132012714686451595

/-!
# A251187: Number of (n+2)X(1+2) 0..1 arrays with nondecreasing sum of every three consecutive values in every row and column.

The programs for A251187, the canonical program `A251187.P13859406093974450219` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251187 has offset 1).

The definition of A251187 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251187.P3167833154015771587

`A251188(n+1)²/A251189(n+1)`
-/

namespace A251187.P3167833154015771587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251188 (n + 1) ^ 2 : ℚ) / (A251189 (n + 1) : ℚ)

end

end A251187.P3167833154015771587

namespace A251187

/-- `A251188(n+1)²/A251189(n+1)` -/
def P3167833154015771587.Spec : Prop :=
  ∀ n, P3167833154015771587.a n = (A251187 (n + 1) : ℚ)

end A251187

/-! ## A251187.P7699904020335684680

`A251188(n+1)/A250594(n+1)*A251189(n+1)`
-/

namespace A251187.P7699904020335684680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251188 (n + 1) : ℚ) / (A250594 (n + 1) : ℚ) * (A251189 (n + 1) : ℚ)

end

end A251187.P7699904020335684680

namespace A251187

/-- `A251188(n+1)/A250594(n+1)*A251189(n+1)` -/
def P7699904020335684680.Spec : Prop :=
  ∀ n, P7699904020335684680.a n = (A251187 (n + 1) : ℚ)

end A251187

/-! ## A251187.P13859406093974450219

`A006501(3+n)^3`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A251187

/-- `A006501(3+n)^3` -/
def P13859406093974450219.Spec : Prop :=
  ∀ n, P13859406093974450219.a n = A251187 (n + 1)

theorem P13859406093974450219.correct : P13859406093974450219.Spec := by
  intro n
  simp only [A251187, Nat.add_sub_cancel]

end A251187

/-! ## A251187.P13718545505253895533

`A029000(2*(n+3))^3`
-/

namespace A251187.P13718545505253895533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029000 (2 * (n + 3)) ^ 3

end

end A251187.P13718545505253895533

namespace A251187

/-- `A029000(2*(n+3))^3` -/
def P13718545505253895533.Spec : Prop :=
  ∀ n, P13718545505253895533.a n = A251187 (n + 1)

end A251187

/-! ## A251187.P1678886851681563492

`A009714(3*(n+6))`
-/

namespace A251187.P1678886851681563492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009714 (3 * (n + 6))

end

end A251187.P1678886851681563492

namespace A251187

/-- `A009714(3*(n+6))` -/
def P1678886851681563492.Spec : Prop :=
  ∀ n, P1678886851681563492.a n = A251187 (n + 1)

end A251187

/-! ## A251187.P5436919553102328345

`A152072(A167614(n+4))^3`
-/

namespace A251187.P5436919553102328345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152072 (A167614 (n + 4)).toNat ^ 3

end

end A251187.P5436919553102328345

namespace A251187

/-- `A152072(A167614(n+4))^3` -/
def P5436919553102328345.Spec : Prop :=
  ∀ n, P5436919553102328345.a n = A251187 (n + 1)

end A251187

/-! ## A251187.P369044369428995615

`A000578(A006501(n+3))`
-/

namespace A251187.P369044369428995615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A006501 (n + 3)).toNat

end

end A251187.P369044369428995615

namespace A251187

/-- `A000578(A006501(n+3))` -/
def P369044369428995615.Spec : Prop :=
  ∀ n, P369044369428995615.a n = A251187 (n + 1)

end A251187

/-!
# A251188: Number of (n+2)X(2+2) 0..1 arrays with nondecreasing sum of every three consecutive values in every row and column.

The programs for A251188, there is no canonical definition to state claims against.
-/

/-! ## A251188.P2357878346837423466

`sqrt(A251187(n+1)*A251189(n+1))`
-/

namespace A251188.P2357878346837423466
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A251187 (n + 1) * A251189 (n + 1) : ℝ)

end

end A251188.P2357878346837423466

/-! ## A251188.P13774219533035534228

`A250594(n+1)*A251187(n+1)/A251189(n+1)`
-/

namespace A251188.P13774219533035534228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250594 (n + 1) * A251187 (n + 1) : ℚ) / (A251189 (n + 1) : ℚ)

end

end A251188.P13774219533035534228

/-! ## A251188.P14433435907425411699

`A251189(n+1)²/A250594(n+1)`
-/

namespace A251188.P14433435907425411699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251189 (n + 1) ^ 2 : ℚ) / (A250594 (n + 1) : ℚ)

end

end A251188.P14433435907425411699

/-! ## A251188.P4176457175942881313

`A251190(n+1)²/A250596(n+1)`
-/

namespace A251188.P4176457175942881313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251190 (n + 1) ^ 2 : ℚ) / (A250596 (n + 1) : ℚ)

end

end A251188.P4176457175942881313

/-! ## A251188.P10338255783729500333

`A251192(∑[n+1]+2)`
-/

namespace A251188.P10338255783729500333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251192 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251188.P10338255783729500333

/-!
# A251189: Number of (n+2)X(3+2) 0..1 arrays with nondecreasing sum of every three consecutive values in every row and column.

The programs for A251189, there is no canonical definition to state claims against.
-/

/-! ## A251189.P5867311784812207027

`A251188(n+1)²/A251187(n+1)`
-/

namespace A251189.P5867311784812207027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251188 (n + 1) ^ 2 : ℚ) / (A251187 (n + 1) : ℚ)

end

end A251189.P5867311784812207027

/-! ## A251189.P10426389261323482345

`A250594(n+1)*A251187(n+1)/A251188(n+1)`
-/

namespace A251189.P10426389261323482345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250594 (n + 1) * A251187 (n + 1) : ℚ) / (A251188 (n + 1) : ℚ)

end

end A251189.P10426389261323482345

/-! ## A251189.P2997580729434199194

`sqrt(A250594(n+1)*A251188(n+1))`
-/

namespace A251189.P2997580729434199194
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A250594 (n + 1) * A251188 (n + 1) : ℝ)

end

end A251189.P2997580729434199194

/-! ## A251189.P16441779252481984201

`sqrt(A250594(n+1)*A251192(∑[n+1]+2))`
-/

namespace A251189.P16441779252481984201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A250594 (n + 1) * A251192 (∑ j ∈ Finset.range (n + 1), f1 j + 2) : ℝ)

end

end A251189.P16441779252481984201

/-! ## A251189.P17825817266376945933

`A251192(∑[n+1]+2)²/A251187(n+1)`
-/

namespace A251189.P17825817266376945933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251192 (∑ j ∈ Finset.range (n + 1), f1 j + 2) ^ 2 : ℚ) / (A251187 (n + 1) : ℚ)

end

end A251189.P17825817266376945933

/-!
# A251190: Number of (n+2) X (5+2) 0..1 arrays with nondecreasing sum of every three consecutive values in every row and column.

The programs for A251190, there is no canonical definition to state claims against.
-/

/-! ## A251190.P15418163332715806281

`sqrt(A250594(n+1)*A251191(n+1))`
-/

namespace A251190.P15418163332715806281
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A250594 (n + 1) * A251191 (n + 1) : ℝ)

end

end A251190.P15418163332715806281

/-! ## A251190.P15856694769258138220

`A251191(n+1)²/A250861(n+1)`
-/

namespace A251190.P15856694769258138220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251191 (n + 1) ^ 2 : ℚ) / (A250861 (n + 1) : ℚ)

end

end A251190.P15856694769258138220

/-! ## A251190.P9944793042651278557

`A250594(n+1)*A250861(n+1)/A251191(n+1)`
-/

namespace A251190.P9944793042651278557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250594 (n + 1) * A250861 (n + 1) : ℚ) / (A251191 (n + 1) : ℚ)

end

end A251190.P9944793042651278557

/-! ## A251190.P15934663157275135749

`sqrt(A250596(n+1)*A251188(n+1))`
-/

namespace A251190.P15934663157275135749
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A250596 (n + 1) * A251188 (n + 1) : ℝ)

end

end A251190.P15934663157275135749

/-! ## A251190.P3223342862446974605

`(A250596(n+1)/A250594(n+1)*A251188(n+1))²/A250861(n+1)`
-/

namespace A251190.P3223342862446974605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A250596 (n + 1) : ℚ) / (A250594 (n + 1) : ℚ) * (A251188 (n + 1) : ℚ)) ^ 2 / (A250861 (n + 1) : ℚ)

end

end A251190.P3223342862446974605

/-!
# A251191: Number of (n+2)X(6+2) 0..1 arrays with nondecreasing sum of every three consecutive values in every row and column.

The programs for A251191, there is no canonical definition to state claims against.
-/

/-! ## A251191.P16791167657559794449

`A251190(n+1)²/A250594(n+1)`
-/

namespace A251191.P16791167657559794449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251190 (n + 1) ^ 2 : ℚ) / (A250594 (n + 1) : ℚ)

end

end A251191.P16791167657559794449

/-! ## A251191.P674828284565633534

`(A251190(n+1)/A251189(n+1))²*A251188(n+1)`
-/

namespace A251191.P674828284565633534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A251190 (n + 1) : ℚ) / (A251189 (n + 1) : ℚ)) ^ 2 * (A251188 (n + 1) : ℚ)

end

end A251191.P674828284565633534

/-! ## A251191.P8050870549048071527

`sqrt(A250861(n+1)*A251190(n+1))`
-/

namespace A251191.P8050870549048071527
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A250861 (n + 1) * A251190 (n + 1) : ℝ)

end

end A251191.P8050870549048071527

/-! ## A251191.P1494608027801212565

`A250594(n+1)*A250861(n+1)/A251190(n+1)`
-/

namespace A251191.P1494608027801212565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250594 (n + 1) * A250861 (n + 1) : ℚ) / (A251190 (n + 1) : ℚ)

end

end A251191.P1494608027801212565

/-! ## A251191.P8042298559569663493

`A250596(n+1)/A250594(n+1)*A251188(n+1)`
-/

namespace A251191.P8042298559569663493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250596 (n + 1) : ℚ) / (A250594 (n + 1) : ℚ) * (A251188 (n + 1) : ℚ)

end

end A251191.P8042298559569663493

/-!
# A251193: Number of (n+1)X(n+1) 0..1 arrays with no 2X2 subblock having the minimum of its diagonal elements less than the absolute difference of its antidiagonal elements.

The programs for A251193, there is no canonical definition to state claims against.
-/

/-! ## A251193.P4602156402678041472

`A251201(∑[4*n]+1)`
-/

namespace A251193.P4602156402678041472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251201 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251193.P4602156402678041472

/-! ## A251193.P3182202129869313556

`record[A003982(n)*A251201(n+1)]`
-/

namespace A251193.P3182202129869313556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A251201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251193.P3182202129869313556

/-! ## A251193.P6658694483455985411

`record[gcd(A037012(n), A251201(n+1))]`
-/

namespace A251193.P6658694483455985411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A251201 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251193.P6658694483455985411

/-! ## A251193.P3947519880746171238

`record[A203994(n+1)*A251201(n+1)]`
-/

namespace A251193.P3947519880746171238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203994 (n + 1) * A251201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251193.P3947519880746171238

/-!
# A251194: Number of (n+1) X (1+1) 0..1 arrays with no 2 X 2 subblock having the minimum of its diagonal elements less than the absolute difference of its antidiagonal elements.

The programs for A251194, the canonical program `A251194.P17370084217435329156` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251194 has offset 1).

The definition of A251194 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 242 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251194.P10058949745875781761

`ogf((10+5x-6x^2-4x^3)/(1-2x-2x^2+x^3+x^4))`
-/

namespace A251194.P10058949745875781761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [10, 5, -6, -4] [1, -2, -2, 1, 1] n

end

end A251194.P10058949745875781761

namespace A251194

/-- `ogf((10+5x-6x^2-4x^3)/(1-2x-2x^2+x^3+x^4))` -/
def P10058949745875781761.Spec : Prop :=
  ∀ n, P10058949745875781761.a n = A251194 (n + 1)

end A251194

/-! ## A251194.P17370084217435329156

`2*a(n-1)+2*a(n-2)-a(n-3)-a(n-4)` with `a(0)=10, a(1)=25, a(2)=64, a(3)=164`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A251194

/-- `2*a(n-1)+2*a(n-2)-a(n-3)-a(n-4)` -/
def P17370084217435329156.Spec : Prop :=
  ∀ n, P17370084217435329156.a n = A251194 (n + 1)

theorem P17370084217435329156.correct : P17370084217435329156.Spec := by
  intro n
  simp only [A251194, Nat.add_sub_cancel]

end A251194

/-! ## A251194.P14882812262179840182

`A123888(2+n)+1`
-/

namespace A251194.P14882812262179840182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123888 (2 + n) + 1

end

end A251194.P14882812262179840182

namespace A251194

/-- `A123888(2+n)+1` -/
def P14882812262179840182.Spec : Prop :=
  ∀ n, P14882812262179840182.a n = A251194 (n + 1)

end A251194

/-! ## A251194.P13222080264198205811

`A052960(n+2)+A052960(n+3)`
-/

namespace A251194.P13222080264198205811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052960 (n + 2) + A052960 (n + 3)

end

end A251194.P13222080264198205811

namespace A251194

/-- `A052960(n+2)+A052960(n+3)` -/
def P13222080264198205811.Spec : Prop :=
  ∀ n, P13222080264198205811.a n = A251194 (n + 1)

end A251194

/-! ## A251194.P1255218691467233655

`A251201(∑[n]+1)`
-/

namespace A251194.P1255218691467233655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251201 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251194.P1255218691467233655

namespace A251194

/-- `A251201(∑[n]+1)` -/
def P1255218691467233655.Spec : Prop :=
  ∀ n, P1255218691467233655.a n = A251194 (n + 1)

end A251194

/-!
# A251195: Number of (n+1) X (2+1) 0..1 arrays with no 2 X 2 subblock having the minimum of its diagonal elements less than the absolute difference of its antidiagonal elements.

The programs for A251195, the canonical program `A251195.P3254295817953500129` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251195 has offset 1).

The definition of A251195 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 175 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251195.P3254295817953500129

`ogf((25+36x-37x^2-62x^3-7x^4+x^5)/(1-2x-7x^2+x^3+7x^4+x^5))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A251195

/-- `ogf((25+36x-37x^2-62x^3-7x^4+x^5)/(1-2x-7x^2+x^3+7x^4+x^5))` -/
def P3254295817953500129.Spec : Prop :=
  ∀ n, P3254295817953500129.a n = A251195 (n + 1)

theorem P3254295817953500129.correct : P3254295817953500129.Spec := by
  intro n
  simp only [A251195, Nat.add_sub_cancel]

end A251195

/-! ## A251195.P13106083009891095637

`A251201(∑[n+1]+2)`
-/

namespace A251195.P13106083009891095637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251201 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251195.P13106083009891095637

namespace A251195

/-- `A251201(∑[n+1]+2)` -/
def P13106083009891095637.Spec : Prop :=
  ∀ n, P13106083009891095637.a n = A251195 (n + 1)

end A251195

/-! ## A251195.P4644462043788432667

`record[A251201(A133263(∑[(-1)^(n%3)]))]`
-/

namespace A251195.P4644462043788432667
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n % 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251201 (A133263 (∑ j ∈ Finset.range (n + 1), f2 j).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251195.P4644462043788432667

namespace A251195

/-- `record[A251201(A133263(∑[(-1)^(n%3)]))]` -/
def P4644462043788432667.Spec : Prop :=
  ∀ n, P4644462043788432667.a n = A251195 (n + 1)

end A251195

/-! ## A251195.P6649821796271397379

`record[A251201(A133263(A028242(n)))]`
-/

namespace A251195.P6649821796271397379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251201 (A133263 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251195.P6649821796271397379

namespace A251195

/-- `record[A251201(A133263(A028242(n)))]` -/
def P6649821796271397379.Spec : Prop :=
  ∀ n, P6649821796271397379.a n = A251195 (n + 1)

end A251195

/-! ## A251195.P4179366969786557324

`record[A251201(Δ[A003453(n+5)])]`
-/

namespace A251195.P4179366969786557324
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251201 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251195.P4179366969786557324

namespace A251195

/-- `record[A251201(Δ[A003453(n+5)])]` -/
def P4179366969786557324.Spec : Prop :=
  ∀ n, P4179366969786557324.a n = A251195 (n + 1)

end A251195

/-!
# A251196: Number of (n+1)X(3+1) 0..1 arrays with no 2X2 subblock having the minimum of its diagonal elements less than the absolute difference of its antidiagonal elements.

The programs for A251196, there is no canonical definition to state claims against.
-/

/-! ## A251196.P13336207016180590134

`A251201(∑[n+2]+4)`
-/

namespace A251196.P13336207016180590134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251201 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251196.P13336207016180590134

/-!
# A251197: Number of (n+1) X (4+1) 0..1 arrays with no 2 X 2 subblock having the minimum of its diagonal elements less than the absolute difference of its antidiagonal elements.

The programs for A251197, there is no canonical definition to state claims against.
-/

/-! ## A251197.P4857420293393046028

`A251201(A055999(n)+10)`
-/

namespace A251197.P4857420293393046028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251201 (A055999 n + 10).toNat

end

end A251197.P4857420293393046028

/-! ## A251197.P1407983918412140278

`A251201(A374004(n+1))`
-/

namespace A251197.P1407983918412140278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251201 (A374004 (n + 1)).toNat

end

end A251197.P1407983918412140278

/-!
# A251198: Number of (n+1)X(5+1) 0..1 arrays with no 2X2 subblock having the minimum of its diagonal elements less than the absolute difference of its antidiagonal elements.

The programs for A251198, there is no canonical definition to state claims against.
-/

/-! ## A251198.P1379591187717116295

`A251201(A167499(n+3))`
-/

namespace A251198.P1379591187717116295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251201 (A167499 (n + 3)).toNat

end

end A251198.P1379591187717116295

/-! ## A251198.P9066787748103304955

`A251201(A374005(n+1))`
-/

namespace A251198.P9066787748103304955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251201 (A374005 (n + 1)).toNat

end

end A251198.P9066787748103304955

/-!
# A251199: Number of (n+1)X(6+1) 0..1 arrays with no 2X2 subblock having the minimum of its diagonal elements less than the absolute difference of its antidiagonal elements.

The programs for A251199, there is no canonical definition to state claims against.
-/

/-! ## A251199.P11061945357600562643

`A251201(eq[7, A131818(n+1)])`
-/

namespace A251199.P11061945357600562643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251201 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251199.P11061945357600562643

/-! ## A251199.P3218856077499066034

`A251201(A374007(n+1))`
-/

namespace A251199.P3218856077499066034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251201 (A374007 (n + 1)).toNat

end

end A251199.P3218856077499066034

