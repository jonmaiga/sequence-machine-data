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
import Seq.B000.C011
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
# A328500: Number of inversion sequences of length n avoiding the consecutive pattern 102.

The programs for A328500, there is no canonical definition to state claims against.
-/

/-! ## A328500.P13994837814711771942

`A067251(ceil(sqrt(A211194(n))))`
-/

namespace A328500.P13994837814711771942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067251 ⌈Real.sqrt (A211194 n : ℝ)⌉.toNat

end

end A328500.P13994837814711771942

/-!
# A328501: Number of inversion sequences of length n avoiding the consecutive pattern 201.

The programs for A328501, there is no canonical definition to state claims against.
-/

/-! ## A328501.P13746553113132815697

`xor(A185284((1-n)²), A328442(n))`
-/

namespace A328501.P13746553113132815697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185284 ((1 - (n : ℤ)) ^ 2).toNat) (A328442 n)

end

end A328501.P13746553113132815697

/-! ## A328501.P9373243096311350136

`A328442(n)-A005882(A062339(n+1))`
-/

namespace A328501.P9373243096311350136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328442 n - A005882 (A062339 (n + 1)).toNat

end

end A328501.P9373243096311350136

/-!
# A328502: Dirichlet g.f.: zeta(s-1) / (zeta(s) * zeta(s-2)).

The programs for A328502, the canonical program `A328502.P1339959403988379941` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328502 has offset 1).

The definition of A328502 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A008683, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A328502.P1339959403988379941

`∑{d}[n+1, A000010((n+1)/#)*A008683(#)*#²]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A328502

/-- `∑{d}[n+1, A000010((n+1)/#)*A008683(#)*#²]` -/
def P1339959403988379941.Spec : Prop :=
  ∀ n, P1339959403988379941.a n = A328502 (n + 1)

theorem P1339959403988379941.correct : P1339959403988379941.Spec := by
  intro n
  simp only [A328502, Nat.add_sub_cancel]

end A328502

/-! ## A328502.P16817917483068071657

`∑{d}[n+1, (n+1)/#*A053822(#)]`
-/

namespace A328502.P16817917483068071657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ) * (A053822 d : ℚ)

end

end A328502.P16817917483068071657

namespace A328502

/-- `∑{d}[n+1, (n+1)/#*A053822(#)]` -/
def P16817917483068071657.Spec : Prop :=
  ∀ n, P16817917483068071657.a n = (A328502 (n + 1) : ℚ)

end A328502

/-! ## A328502.P3212337221889951917

`∑{d}[n+1, A007431(#)*A046970((n+1)/#)]`
-/

namespace A328502.P3212337221889951917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007431 d * A046970 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328502.P3212337221889951917

namespace A328502

/-- `∑{d}[n+1, A007431(#)*A046970((n+1)/#)]` -/
def P3212337221889951917.Spec : Prop :=
  ∀ n, P3212337221889951917.a n = A328502 (n + 1)

end A328502

/-! ## A328502.P13815624849800080936

`∑{d}[n+1, A000010(#)*A334657((n+1)/#)]`
-/

namespace A328502.P13815624849800080936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A334657 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328502.P13815624849800080936

namespace A328502

/-- `∑{d}[n+1, A000010(#)*A334657((n+1)/#)]` -/
def P13815624849800080936.Spec : Prop :=
  ∀ n, P13815624849800080936.a n = A328502 (n + 1)

end A328502

/-! ## A328502.P1797877873584579897

`∑{d}[n+1, A038040(#)*A328254((n+1)/#)]`
-/

namespace A328502.P1797877873584579897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038040 d * A328254 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328502.P1797877873584579897

namespace A328502

/-- `∑{d}[n+1, A038040(#)*A328254((n+1)/#)]` -/
def P1797877873584579897.Spec : Prop :=
  ∀ n, P1797877873584579897.a n = A328502 (n + 1)

end A328502

/-! ## A328502.P1197756649921844482

`∑{d}[n+1, A029935(#)*A351654((n+1)/#)]`
-/

namespace A328502.P1197756649921844482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A029935 d * A351654 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328502.P1197756649921844482

namespace A328502

/-- `∑{d}[n+1, A029935(#)*A351654((n+1)/#)]` -/
def P1197756649921844482.Spec : Prop :=
  ∀ n, P1197756649921844482.a n = A328502 (n + 1)

end A328502

/-! ## A328502.P10959439851767311002

`∑{d}[n+1, A063659(#)*A328639((n+1)/#)]`
-/

namespace A328502.P10959439851767311002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063659 d * A328639 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328502.P10959439851767311002

namespace A328502

/-- `∑{d}[n+1, A063659(#)*A328639((n+1)/#)]` -/
def P10959439851767311002.Spec : Prop :=
  ∀ n, P10959439851767311002.a n = A328502 (n + 1)

end A328502

/-! ## A328502.P2528274333102570662

`∑{d}[n+1, A062570(#)*A359485((n+1)/#)]`
-/

namespace A328502.P2528274333102570662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062570 d * A359485 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328502.P2528274333102570662

namespace A328502

/-- `∑{d}[n+1, A062570(#)*A359485((n+1)/#)]` -/
def P2528274333102570662.Spec : Prop :=
  ∀ n, P2528274333102570662.a n = A328502 (n + 1)

end A328502

/-!
# A328504: Number of inversion sequences of length n avoiding the consecutive pattern 010.

The programs for A328504, there is no canonical definition to state claims against.
-/

/-! ## A328504.P3040520499886572090

`A074286(A047889(n)+A005470(n))`
-/

namespace A328504.P3040520499886572090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074286 (A047889 n + A005470 n).toNat

end

end A328504.P3040520499886572090

/-! ## A328504.P6667269864189410842

`A033270(A323630(n)+3)`
-/

namespace A328504.P6667269864189410842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A323630 n + 3).toNat

end

end A328504.P6667269864189410842

/-!
# A328505: Numbers k such that there exist three rationals in arithmetic progression whose product is k.

The programs for A328505, there is no canonical definition to state claims against.
-/

/-! ## A328505.P9552140311194241520

`record[A025480(A020897(n+1))]`
-/

namespace A328505.P9552140311194241520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A020897 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328505.P9552140311194241520

/-! ## A328505.P11475832023733599779

`record[A032742(A020897(n+3))]`
-/

namespace A328505.P11475832023733599779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A020897 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328505.P11475832023733599779

/-! ## A328505.P11329758712663185434

`record[A003602(A020897(n+1)-1)]`
-/

namespace A328505.P11329758712663185434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A020897 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328505.P11329758712663185434

/-! ## A328505.P16004142356459137327

`A025480(∩[2*n, A020897(n+1)])`
-/

namespace A328505.P16004142356459137327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020897 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A328505.P16004142356459137327

/-! ## A328505.P4221231334482894473

`A056239(p?[A073846(A020897(n+1))])`
-/

namespace A328505.P4221231334482894473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A020897 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A328505.P4221231334482894473

/-!
# A328506: Iteration of Abelian sandpile model where the n-th matrix expansions occurs. Begins with infinite sand in 1 X 1 matrix.

The programs for A328506, there is no canonical definition to state claims against.
-/

/-! ## A328506.P16159247636060327929

`xor((2*n)², A339088(A316245(n)))`
-/

namespace A328506.P16159247636060327929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((2 * n) ^ 2 : ℤ) (A339088 (A316245 n).toNat)

end

end A328506.P16159247636060327929

/-!
# A328507: Number of inversion sequences of length n avoiding the consecutive pattern 101.

The programs for A328507, there is no canonical definition to state claims against.
-/

/-! ## A328507.P7090779939493400765

`A007494(A000142(n))-A003319(n)`
-/

namespace A328507.P7090779939493400765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (A000142 n).toNat - A003319 n

end

end A328507.P7090779939493400765

/-! ## A328507.P17797033042149199243

`A356291(n)+A157271(n!)`
-/

namespace A328507.P17797033042149199243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356291 n + A157271 (Nat.factorial n)

end

end A328507.P17797033042149199243

/-! ## A328507.P12036606295813143533

`A350273(eq[0, A046782(2*n)])`
-/

namespace A328507.P12036606295813143533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046782 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350273 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A328507.P12036606295813143533

/-!
# A328509: Number of non-unimodal sequences of length n covering an initial interval of positive integers.

The programs for A328509, there is no canonical definition to state claims against.
-/

/-! ## A328509.P5880420287324734952

`A226513(∑[n]+n)-ceil((sqrt(2)+2)^n/4)`
-/

namespace A328509.P5880420287324734952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226513 (∑ j ∈ Finset.range (n + 1), f1 j + n) - ⌈(Real.sqrt (2 : ℝ) + 2) ^ n / 4⌉

end

end A328509.P5880420287324734952

/-! ## A328509.P3645435247694936261

`∑{d}[n+1, A006936(#)]-ceil((sqrt(2)+2)^n/4)`
-/

namespace A328509.P3645435247694936261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A006936 d - ⌈(Real.sqrt (2 : ℝ) + 2) ^ n / 4⌉

end

end A328509.P3645435247694936261

/-! ## A328509.P12492588529421868421

`(A000629(n)-A006012(n))/2`
-/

namespace A328509.P12492588529421868421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000629 n - A006012 n : ℚ) / 2

end

end A328509.P12492588529421868421

/-! ## A328509.P2313795419984946472

`A000670(n)-A183170(A011782(n))`
-/

namespace A328509.P2313795419984946472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 n - A183170 (A011782 n).toNat

end

end A328509.P2313795419984946472

/-! ## A328509.P14567006925152000451

`A000670(n)-A332872(n)`
-/

namespace A328509.P14567006925152000451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 n - A332872 n

end

end A328509.P14567006925152000451

/-!
# A328510: Smallest number whose divisors have n non-singleton runs.

The programs for A328510, there is no canonical definition to state claims against.
-/

/-! ## A328510.P3450619334624062450

`A194712(A033440(2*n)+(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])`
-/

namespace A328510.P3450619334624062450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194712 (SequenceMachineLib.roundAway ((A033440 (2 * n) : ℚ) + (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))).toNat

end

end A328510.P3450619334624062450

/-! ## A328510.P442592223076953810

`A020910(n)*A053166(A001715(n+3))`
-/

namespace A328510.P442592223076953810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020910 n * A053166 (A001715 (n + 3)).toNat

end

end A328510.P442592223076953810

/-!
# A328511: Number of non-singleton runs of divisors of 2n.

The programs for A328511, there is no canonical definition to state claims against.
-/

/-! ## A328511.P5306581356282442905

`A132747(2*(n+1))-A007862(n+1)`
-/

namespace A328511.P5306581356282442905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132747 (2 * (n + 1)) - A007862 (n + 1)

end

end A328511.P5306581356282442905

/-! ## A328511.P9275449272149037327

`A132747(2*(n+1))-A129308(2*(n+1))`
-/

namespace A328511.P9275449272149037327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132747 (2 * (n + 1)) - A129308 (2 * (n + 1))

end

end A328511.P9275449272149037327

/-! ## A328511.P17844725172411281415

`A157129(A134339(n+1))`
-/

namespace A328511.P17844725172411281415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157129 (A134339 (n + 1)).toNat

end

end A328511.P17844725172411281415

/-! ## A328511.P14562845437585605796

`gcd(A112104(A181937(n)), A236127(n+1))`
-/

namespace A328511.P14562845437585605796
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A112104 (A181937 n).toNat) (A236127 (n + 1))

end

end A328511.P14562845437585605796

/-! ## A328511.P16584613464779627686

`A056731(A294397(n+3)+A120095(n+1))`
-/

namespace A328511.P16584613464779627686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056731 (A294397 (n + 3) + A120095 (n + 1)).toNat

end

end A328511.P16584613464779627686

/-!
# A328512: Number of distinct connected components of the multiset of multisets with MM-number n.

The programs for A328512, there is no canonical definition to state claims against.
-/

/-! ## A328512.P8944334742043013033

`A305079(∏{p}[n+1, #])`
-/

namespace A328512.P8944334742043013033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305079 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A328512.P8944334742043013033

/-! ## A328512.P9698800856138758294

`A305079(exp(∑{p}[n+1, log(#)]))`
-/

namespace A328512.P9698800856138758294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305079 (SequenceMachineLib.roundAway (Real.exp (∑ p ∈ Nat.primeFactors (f1 n), Real.log (p : ℝ)))).toNat

end

end A328512.P9698800856138758294

/-! ## A328512.P11373355891804019030

`A305079(2^∑{p}[n+1, log2(#)])`
-/

namespace A328512.P11373355891804019030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305079 (SequenceMachineLib.roundAway ((2 : ℝ) ^ (∑ p ∈ Nat.primeFactors (f1 n), Real.logb 2 (p : ℝ)))).toNat

end

end A328512.P11373355891804019030

/-! ## A328512.P9578428169053389618

`A305079(abs(∏{p}[2*n-(n-1), -#]))`
-/

namespace A328512.P9578428169053389618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305079 |∏ p ∈ Nat.primeFactors (f1 n).natAbs, (-(p : ℤ))|.toNat

end

end A328512.P9578428169053389618

/-! ## A328512.P1441944952302115015

`A305079(n+1)-log2(ceil(xor(n, n+1)/4))`
-/

namespace A328512.P1441944952302115015
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A305079 (n + 1) : ℝ) - Real.logb 2 (⌈(Nat.xor n (n + 1) : ℚ) / 4⌉ : ℝ)

end

end A328512.P1441944952302115015

/-! ## A328512.P8087525238144521273

`A305079(A007947(n+1))`
-/

namespace A328512.P8087525238144521273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305079 (A007947 (n + 1)).toNat

end

end A328512.P8087525238144521273

/-! ## A328512.P9291672447953350630

`A305079(A259445(n+1))`
-/

namespace A328512.P9291672447953350630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305079 (A259445 (n + 1)).toNat

end

end A328512.P9291672447953350630

/-! ## A328512.P10419711469836850370

`A305079(A327937(n+1))`
-/

namespace A328512.P10419711469836850370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305079 (A327937 (n + 1)).toNat

end

end A328512.P10419711469836850370

/-! ## A328512.P810881031847170733

`A327406(n+1)+A000035(n²)`
-/

namespace A328512.P810881031847170733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327406 (n + 1) + A000035 (n ^ 2)

end

end A328512.P810881031847170733

/-!
# A328513: Connected squarefree numbers.

The programs for A328513, there is no canonical definition to state claims against.
-/

/-! ## A328513.P972279987842520576

`record[A327398(n+1)]`
-/

namespace A328513.P972279987842520576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327398 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328513.P972279987842520576

/-! ## A328513.P3059571343629864187

`∪[A318718(n+1), A370304(n)]`
-/

namespace A328513.P3059571343629864187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318718 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370304 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A328513.P3059571343629864187

/-! ## A328513.P11657186824246561152

`record[A007913(n+1)/A305079(n+1)!]`
-/

namespace A328513.P11657186824246561152
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007913 (n + 1) : ℚ) / (Nat.factorial (A305079 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328513.P11657186824246561152

/-! ## A328513.P6804531715005718537

`eq[A305079(n+1)!, A183104(n+1)]+1`
-/

namespace A328513.P6804531715005718537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A305079 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183104 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A328513.P6804531715005718537

/-! ## A328513.P16922257222124678787

`lt[(A000005(n+1)-1)/2, A290105(n+1)]+1`
-/

namespace A328513.P16922257222124678787
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) - 1 : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290105 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 1

end

end A328513.P16922257222124678787

/-! ## A328513.P16602621201949579565

`A318719(n+1)-A000122(A031959(n+1))`
-/

namespace A328513.P16602621201949579565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318719 (n + 1) - A000122 (A031959 (n + 1)).toNat

end

end A328513.P16602621201949579565

/-! ## A328513.P10917905368089572871

`A318719(n+1)-A153587(A318715(n+1))`
-/

namespace A328513.P10917905368089572871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318719 (n + 1) - A153587 (A318715 (n + 1)).toNat

end

end A328513.P10917905368089572871

/-! ## A328513.P17610836510307869301

`∪[A318719(n+1), A164121(A077090(n+5))]`
-/

namespace A328513.P17610836510307869301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318719 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164121 (A077090 (n + 5)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A328513.P17610836510307869301

/-! ## A328513.P16316556462702088647

`record[A007947(n+1)/A000041(A305079(n+1))]`
-/

namespace A328513.P16316556462702088647
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) / (A000041 (A305079 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328513.P16316556462702088647

/-! ## A328513.P3928083034347289874

`record[A019555(n+1)/A000041(A305079(n+1))]`
-/

namespace A328513.P3928083034347289874
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019555 (n + 1) : ℚ) / (A000041 (A305079 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328513.P3928083034347289874

/-!
# A328514: MM-numbers of connected sets of sets.

The programs for A328514, there is no canonical definition to state claims against.
-/

/-! ## A328514.P15932086038356393161

`∩[A302478(n+1), A328513(n+1)]`
-/

namespace A328514.P15932086038356393161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302478 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328514.P15932086038356393161

/-! ## A328514.P850087494623059052

`∩[A302478(n+1), A318719(n+1)]`
-/

namespace A328514.P850087494623059052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302478 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328514.P850087494623059052

/-! ## A328514.P6591187372429869003

`∩[A302494(n+1), A318719(n+1)]`
-/

namespace A328514.P6591187372429869003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328514.P6591187372429869003

/-! ## A328514.P10597484640517026142

`∩[A302494(n+1), A328336(n+1)]`
-/

namespace A328514.P10597484640517026142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328514.P10597484640517026142

/-! ## A328514.P1909434264289878297

`∩[A302494(n+1), A328513(n+1)]`
-/

namespace A328514.P1909434264289878297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328514.P1909434264289878297

/-!
# A328515: Number of primes in permutations of digits per permutation class of the positive integers ordered by smallest member of this class excluding leading zeros.

The programs for A328515, there is no canonical definition to state claims against.
-/

/-! ## A328515.P23954061048370492

`A046810(A179239(n+1-n²%(n+1)))`
-/

namespace A328515.P23954061048370492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046810 (A179239 (n + 1 - n ^ 2 % (n + 1))).toNat

end

end A328515.P23954061048370492

/-! ## A328515.P3634171020452289766

`A046810(A179239(A000007(n)+n))`
-/

namespace A328515.P3634171020452289766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046810 (A179239 (A000007 n + (n : ℤ)).toNat).toNat

end

end A328515.P3634171020452289766

/-! ## A328515.P6822205828653428138

`A046810(or(A000007(n), A179239(n)))`
-/

namespace A328515.P6822205828653428138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046810 (Int.lor (A000007 n) (A179239 n)).toNat

end

end A328515.P6822205828653428138

/-! ## A328515.P10414930935295102311

`A046810(A179239(n)+A046810(3*(n+1)))`
-/

namespace A328515.P10414930935295102311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046810 (A179239 n + A046810 (3 * (n + 1))).toNat

end

end A328515.P10414930935295102311

/-! ## A328515.P5378745274579682071

`A046810((A179239(n)-1)%A076449(n)+1)`
-/

namespace A328515.P5378745274579682071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046810 (Int.tmod (A179239 n - 1) (A076449 n) + 1).toNat

end

end A328515.P5378745274579682071

/-! ## A328515.P6726123321545722615

`A046810(A179239(A151933(n)+n))`
-/

namespace A328515.P6726123321545722615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046810 (A179239 (A151933 n + (n : ℤ)).toNat).toNat

end

end A328515.P6726123321545722615

/-! ## A328515.P5034305572463911999

`A046810(xor(A151933(n), A179239(n)))`
-/

namespace A328515.P5034305572463911999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046810 (Int.xor (A151933 n) (A179239 n)).toNat

end

end A328515.P5034305572463911999

/-!
# A328516: a(n) = A039993(A179239(n)).

The programs for A328516, there is no canonical definition to state claims against.
-/

/-! ## A328516.P15501299133229128749

`A039993(A179239(floor(acot(n)+n)))`
-/

namespace A328516.P15501299133229128749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039993 (A179239 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat).toNat

end

end A328516.P15501299133229128749

/-! ## A328516.P6263715324515821507

`A039993(A179239(n)+C(3, n²))`
-/

namespace A328516.P6263715324515821507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039993 (A179239 n + (Nat.choose 3 (n ^ 2) : ℤ)).toNat

end

end A328516.P6263715324515821507

/-! ## A328516.P11216612543707725914

`A039993(A179239(round(sqrt(n²+1))))`
-/

namespace A328516.P11216612543707725914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039993 (A179239 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat).toNat

end

end A328516.P11216612543707725914

/-! ## A328516.P11255361520186769975

`A039993(or(C(n, n²), A179239(n)))`
-/

namespace A328516.P11255361520186769975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039993 (Int.lor (Nat.choose n (n ^ 2) : ℤ) (A179239 n)).toNat

end

end A328516.P11255361520186769975

/-! ## A328516.P15848295442198346737

`A039993(A179239(n)^ceil(sin(n)²))`
-/

namespace A328516.P15848295442198346737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039993 (SequenceMachineLib.roundAway ((A179239 n : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ))).toNat

end

end A328516.P15848295442198346737

/-! ## A328516.P10842335048529023036

`A039993(floor(A179239(n)-n/(n+1))+1)`
-/

namespace A328516.P10842335048529023036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039993 (⌊(A179239 n : ℚ) - (n : ℚ) / (n + 1 : ℚ)⌋ + 1).toNat

end

end A328516.P10842335048529023036

/-! ## A328516.P7700083478244839232

`A039993(A179239(n)+A000007(n))`
-/

namespace A328516.P7700083478244839232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039993 (A179239 n + A000007 n).toNat

end

end A328516.P7700083478244839232

/-! ## A328516.P12873686253631945489

`A039993(or(A000007(n), A179239(n)))`
-/

namespace A328516.P12873686253631945489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039993 (Int.lor (A000007 n) (A179239 n)).toNat

end

end A328516.P12873686253631945489

/-! ## A328516.P8077259177988533

`A039993(xor(A000007(n), A179239(n)))`
-/

namespace A328516.P8077259177988533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039993 (Int.xor (A000007 n) (A179239 n)).toNat

end

end A328516.P8077259177988533

/-!
# A328517: Primitive sequence underlying A075053.

The programs for A328517, there is no canonical definition to state claims against.
-/

/-! ## A328517.P17189421020696552500

`A075053(A179239(n))`
-/

namespace A328517.P17189421020696552500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075053 (A179239 n).toNat

end

end A328517.P17189421020696552500

/-! ## A328517.P5589890662337052774

`A075053(record[A328447(n)])`
-/

namespace A328517.P5589890662337052774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328447 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075053 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A328517.P5589890662337052774

/-! ## A328517.P4290653113486495495

`A075053(eq[1, A326307(n)])`
-/

namespace A328517.P4290653113486495495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326307 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075053 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A328517.P4290653113486495495

/-! ## A328517.P8615159681391842913

`A075053(lt[A326307(n), 2])`
-/

namespace A328517.P8615159681391842913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326307 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075053 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A328517.P8615159681391842913

/-! ## A328517.P2279080997236884967

`A075053(eq[n, A328447(n)])`
-/

namespace A328517.P2279080997236884967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328447 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075053 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A328517.P2279080997236884967

/-! ## A328517.P13455427843905638743

`A075053(eq[n, A333659(A004186(n))])`
-/

namespace A328517.P13455427843905638743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333659 (A004186 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075053 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A328517.P13455427843905638743

/-!
# A328519: Terms in A002182 sorted by their Omega values (their number of prime factors counted with multiplicity).

The programs for A328519, there is no canonical definition to state claims against.
-/

/-! ## A328519.P951359942931026923

`filter[A036035(n), A322586(#)]`
-/

namespace A328519.P951359942931026923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322586 (f1 j).toNat = 1) n)

end

end A328519.P951359942931026923

/-! ## A328519.P13328932972503169336

`filter[A057335(n), A322586(#)]`
-/

namespace A328519.P13328932972503169336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322586 (f1 j).toNat = 1) n)

end

end A328519.P13328932972503169336

/-! ## A328519.P13321249168206012159

`filter[A059901(n), A322586(#)]`
-/

namespace A328519.P13321249168206012159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059901 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322586 (f1 j).toNat = 1) n)

end

end A328519.P13321249168206012159

/-! ## A328519.P12063690967071618754

`filter[A063008(n), A322586(#)]`
-/

namespace A328519.P12063690967071618754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322586 (f1 j).toNat = 1) n)

end

end A328519.P12063690967071618754

/-! ## A328519.P1011199033197972666

`filter[A087443(n), A322586(#)]`
-/

namespace A328519.P1011199033197972666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322586 (f1 j).toNat = 1) n)

end

end A328519.P1011199033197972666

/-!
# A328520: GCD of terms in A002182 that have n prime factors counted with multiplicity.

The programs for A328520, there is no canonical definition to state claims against.
-/

/-! ## A328520.P8842754634155187346

`A028310(gcd(A085819(n+1), A328521(n)))`
-/

namespace A328520.P8842754634155187346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.gcd (A085819 (n + 1)) (A328521 n))

end

end A328520.P8842754634155187346

/-! ## A328520.P18041121805832873736

`A276528(∏[A112543(n+1)!])`
-/

namespace A328520.P18041121805832873736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A112543 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276528 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A328520.P18041121805832873736

/-! ## A328520.P10689361993019264036

`A276528(∏[A276550(n+1)!])`
-/

namespace A328520.P10689361993019264036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A276550 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276528 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A328520.P10689361993019264036

/-! ## A328520.P3818860477340790435

`gcd(A046523(A002805(n+1)), A052849(n))`
-/

namespace A328520.P3818860477340790435
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A046523 (A002805 (n + 1)).toNat) (A052849 n)

end

end A328520.P3818860477340790435

/-! ## A328520.P18260647733873410318

`lcm(A063886(n), A278235(A001791(n)))`
-/

namespace A328520.P18260647733873410318
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A063886 n) (A278235 (A001791 n).toNat)

end

end A328520.P18260647733873410318

/-!
# A328521: Smallest highly composite number that has n prime factors counted with multiplicity.

The programs for A328521, there is no canonical definition to state claims against.
-/

/-! ## A328521.P1455150027496186080

`A002182(A330748(n))`
-/

namespace A328521.P1455150027496186080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (A330748 n).toNat

end

end A328521.P1455150027496186080

/-! ## A328521.P3604412055965581315

`A108951(A330743(n))`
-/

namespace A328521.P3604412055965581315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (A330743 n).toNat

end

end A328521.P3604412055965581315

/-! ## A328521.P3238006703573672901

`A135372(A330748(n))-A133707(n+1)`
-/

namespace A328521.P3238006703573672901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135372 (A330748 n).toNat - A133707 (n + 1)

end

end A328521.P3238006703573672901

/-! ## A328521.P7731298903129365938

`or(A135372(A330748(n)), A319797(n+1))-1`
-/

namespace A328521.P7731298903129365938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A135372 (A330748 n).toNat) (A319797 (n + 1)) - 1

end

end A328521.P7731298903129365938

/-! ## A328521.P16357408975767929159

`A135372(A330748(n))-A001221(A050376(n+1))`
-/

namespace A328521.P16357408975767929159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135372 (A330748 n).toNat - A001221 (A050376 (n + 1)).toNat

end

end A328521.P16357408975767929159

/-! ## A328521.P3448485951748460921

`A135372(A330748(n))-A001221(A006093(n+1)+1)`
-/

namespace A328521.P3448485951748460921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135372 (A330748 n).toNat - A001221 (A006093 (n + 1) + 1).toNat

end

end A328521.P3448485951748460921

/-!
# A328522: Largest highly composite number that has n prime factors counted with multiplicity.

The programs for A328522, there is no canonical definition to state claims against.
-/

/-! ## A328522.P1498427362762017401

`A328519(∑[A328518(n)])`
-/

namespace A328522.P1498427362762017401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328518 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328519 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A328522.P1498427362762017401

/-! ## A328522.P9649105213449582106

`∏[A006530(record[A309121(n+3)])]`
-/

namespace A328522.P9649105213449582106
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309121 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A328522.P9649105213449582106

/-! ## A328522.P4822838418695410324

`record[gcd(A339430(n), A351500(n+1))]`
-/

namespace A328522.P4822838418695410324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A339430 n) (A351500 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328522.P4822838418695410324

/-! ## A328522.P1226041130606295324

`record[A351500(A010054(3*(n+1))+n)]`
-/

namespace A328522.P1226041130606295324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351500 (A010054 (3 * (n + 1)) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328522.P1226041130606295324

/-! ## A328522.P1204168226005324432

`∏[A006530(record[A329288(n+1)])]`
-/

namespace A328522.P1204168226005324432
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329288 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A328522.P1204168226005324432

/-!
# A328523: a(n) = number of terms in A002182 that are of the form A002182(n)/p for some prime p|n.

The programs for A328523, there is no canonical definition to state claims against.
-/

/-! ## A328523.P13362672175033216593

`A001222(or(A099802(n+1), A129455(n)))`
-/

namespace A328523.P13362672175033216593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor (A099802 (n + 1)) (A129455 n)).toNat

end

end A328523.P13362672175033216593

/-!
# A328524: T(n,k) is the k-th smallest least integer of prime signatures for partitions of n into distinct parts; triangle T(n,k), n>=0, 1<=k<=A000009(n), read by rows.

The programs for A328524, there is no canonical definition to state claims against.
-/

/-! ## A328524.P10020312154822133414

`A057335(A333256(n+1))^A062513(n+1)`
-/

namespace A328524.P10020312154822133414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057335 (A333256 (n + 1)).toNat : ℚ) ^ (A062513 (n + 1) : ℤ)

end

end A328524.P10020312154822133414

/-! ## A328524.P8810983095991429089

`A057335(A062513(n+1)²*A333256(n+1))`
-/

namespace A328524.P8810983095991429089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 (A062513 (n + 1) ^ 2 * A333256 (n + 1)).toNat

end

end A328524.P8810983095991429089

/-! ## A328524.P12680880389471115963

`A057335(A333256(n+1)%A350355(2*n+3))`
-/

namespace A328524.P12680880389471115963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 (Int.tmod (A333256 (n + 1)) (A350355 (2 * n + 3))).toNat

end

end A328524.P12680880389471115963

/-! ## A328524.P4333861936657263495

`A001222(A217035(n+1))*A057335(A333256(n+1))`
-/

namespace A328524.P4333861936657263495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A217035 (n + 1)).toNat * A057335 (A333256 (n + 1)).toNat

end

end A328524.P4333861936657263495

/-! ## A328524.P1704174090671905711

`A057335(∩[A374698(n+1), A114994(n)])`
-/

namespace A328524.P1704174090671905711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374698 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114994 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A328524.P1704174090671905711

/-!
# A328525: Numbers k such that (k-1)*k*(k+1) = (k-1)*(1+u) = k*(1+v) = (k+1)*(1+w) with primes u, v, w.

The programs for A328525, there is no canonical definition to state claims against.
-/

/-! ## A328525.P15274732817607776788

`∩[A028870(n+1), A081944(n+1)]`
-/

namespace A328525.P15274732817607776788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328525.P15274732817607776788

/-! ## A328525.P10936287004035795781

`∩[A081944(n+1), A089623(n+1)+1]`
-/

namespace A328525.P10936287004035795781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089623 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328525.P10936287004035795781

/-! ## A328525.P5997152327021780369

`∩[A081944(n+1), record[A308085(n+1)+1+n]]`
-/

namespace A328525.P5997152327021780369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081944 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308085 (n + 1) + 1 + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328525.P5997152327021780369

/-! ## A328525.P17400579267440514173

`∩[A081944(n+1), A020725(A089623(n+1))]`
-/

namespace A328525.P17400579267440514173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A089623 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328525.P17400579267440514173

/-!
# A328529: G.f. = Phi^4, where Phi = g.f. for A028930.

The programs for A328529, there is no canonical definition to state claims against.
-/

/-! ## A328529.P4086476093942807966

`A014457(lcm(5, A002793(n)))`
-/

namespace A328529.P4086476093942807966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014457 (Int.lcm 5 (A002793 n))

end

end A328529.P4086476093942807966

/-! ## A328529.P1087549308586957879

`and(A160162((n+1)²), A299337(n))`
-/

namespace A328529.P1087549308586957879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A160162 ((n + 1) ^ 2)) (A299337 n)

end

end A328529.P1087549308586957879

/-! ## A328529.P2981285594828562520

`and(p?[A322410(n)], A322375(3*(n+1)))`
-/

namespace A328529.P2981285594828562520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322410 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A322375 (3 * (n + 1)))

end

end A328529.P2981285594828562520

/-!
# A328531: G.f. = Phi^6, where Phi = g.f. for A028930.

The programs for A328531, there is no canonical definition to state claims against.
-/

/-! ## A328531.P14729467820785447870

`A018261(xor(1, n)+n)*A276429(n)`
-/

namespace A328531.P14729467820785447870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018261 (Nat.xor 1 n + n) * A276429 n

end

end A328531.P14729467820785447870

/-! ## A328531.P2437132985500641732

`n!*A319740(A104969(2*(n+1)))`
-/

namespace A328531.P2437132985500641732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A319740 (A104969 (2 * (n + 1))).toNat

end

end A328531.P2437132985500641732

/-!
# A328532: G.f. = Phi^5*F, where Phi = g.f. for A028930, F = g.f. for A028959.

The programs for A328532, there is no canonical definition to state claims against.
-/

/-! ## A328532.P188046643124578052

`∏{e}[(n+22)*a(n-1), #+1]` with `a(0)=0, a(1)=2`
-/

namespace A328532.P188046643124578052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  (n + 22) * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A328532.P188046643124578052

/-! ## A328532.P7896411710172424803

`A328514(2^n+1)-1`
-/

namespace A328532.P7896411710172424803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328514 (2 ^ n + 1) - 1

end

end A328532.P7896411710172424803

/-!
# A328533: G.f. = Phi^4*F^2, where Phi = g.f. for A028930, F = g.f. for A028959.

The programs for A328533, there is no canonical definition to state claims against.
-/

/-! ## A328533.P13700369025130110743

`A325795(floor(sqrt(A055582(n))))`
-/

namespace A328533.P13700369025130110743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325795 (Int.sqrt (A055582 n)).toNat

end

end A328533.P13700369025130110743

/-!
# A328534: G.f. = Phi^3*F^3, where Phi = g.f. for A028930, F = g.f. for A028959.

The programs for A328534, there is no canonical definition to state claims against.
-/

/-! ## A328534.P12901876484895193618

`A176060(n)+A000005(A037541(n+1))`
-/

namespace A328534.P12901876484895193618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176060 n + A000005 (A037541 (n + 1)).toNat

end

end A328534.P12901876484895193618

/-! ## A328534.P13807788175765187559

`and(A220227(n+1), A220230(A029618(2*n)))`
-/

namespace A328534.P13807788175765187559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A220227 (n + 1)) (A220230 (A029618 (2 * n)).toNat)

end

end A328534.P13807788175765187559

/-!
# A328535: G.f. = Phi^2*F^4, where Phi = g.f. for A028930, F = g.f. for A028959.

The programs for A328535, there is no canonical definition to state claims against.
-/

/-! ## A328535.P10164521798496833760

`record[A308191(n)-A226526(n+1)]`
-/

namespace A328535.P10164521798496833760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308191 n - A226526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328535.P10164521798496833760

/-! ## A328535.P14099586572624355416

`A004275(A322048(n+1)^A248909(n+1))`
-/

namespace A328535.P14099586572624355416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (SequenceMachineLib.roundAway ((A322048 (n + 1) : ℚ) ^ (A248909 (n + 1) : ℤ))).toNat

end

end A328535.P14099586572624355416

/-!
# A328536: G.f. = Phi*F^5, where Phi = g.f. for A028930, F = g.f. for A028959.

The programs for A328536, there is no canonical definition to state claims against.
-/

/-! ## A328536.P9180088494932472102

`A068499(A000005(12^n))`
-/

namespace A328536.P9180088494932472102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068499 (A000005 (12 ^ n)).toNat

end

end A328536.P9180088494932472102

/-!
# A328538: Second members of a list of seven pairs connected with parity of sums of partition numbers in arithmetic progressions.

The programs for A328538, there is no canonical definition to state claims against.
-/

/-! ## A328538.P611272723031122087

`A162691(comp[6*n])`
-/

namespace A328538.P611272723031122087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162691 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A328538.P611272723031122087

/-! ## A328538.P18311125126065478876

`record[4*A289272(n+1)]`
-/

namespace A328538.P18311125126065478876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A289272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328538.P18311125126065478876

/-! ## A328538.P12567093014532398402

`record[4*A289815(n+1)]`
-/

namespace A328538.P12567093014532398402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A289815 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328538.P12567093014532398402

/-!
# A328539: Number of broken 1-diamond partitions of n.

The programs for A328539, there is no canonical definition to state claims against.
-/

/-! ## A328539.P6270529132321038195

`∑[record[A240059(A278149(n+1))]]`
-/

namespace A328539.P6270529132321038195
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240059 (A278149 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328539.P6270529132321038195

/-! ## A328539.P17088477071933606197

`∑[A240059(2*n+1)%A240051(n+2)]`
-/

namespace A328539.P17088477071933606197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240059 (2 * n + 1)) (A240051 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328539.P17088477071933606197

/-! ## A328539.P15631402530820813726

`record[A144558(n)%A120937(n)]`
-/

namespace A328539.P15631402530820813726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144558 n) (A120937 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328539.P15631402530820813726

/-!
# A328540: Number of broken 2-diamond partitions of n.

The programs for A328540, there is no canonical definition to state claims against.
-/

/-! ## A328540.P10065728517268636315

`A157271(Δ[record[A258040(n)]])`
-/

namespace A328540.P10065728517268636315
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258040 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (f1 (n + 1) - f1 n).toNat

end

end A328540.P10065728517268636315

/-! ## A328540.P3251219918109264644

`A005041(n*A034472(n))`
-/

namespace A328540.P3251219918109264644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 ((n : ℤ) * A034472 n).toNat

end

end A328540.P3251219918109264644

/-!
# A328541: Number of broken 3-diamond partitions of n.

The programs for A328541, there is no canonical definition to state claims against.
-/

/-! ## A328541.P8419745029338174729

`A182818(n)+A178798(A006128(n))`
-/

namespace A328541.P8419745029338174729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182818 n + A178798 (A006128 n).toNat

end

end A328541.P8419745029338174729

/-! ## A328541.P7452622900290876793

`A182818(n)+A178798(A006522(n))`
-/

namespace A328541.P7452622900290876793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182818 n + A178798 (A006522 n).toNat

end

end A328541.P7452622900290876793

/-! ## A328541.P8013353532926454165

`A182818(n)-A055641(A000088(n))`
-/

namespace A328541.P8013353532926454165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182818 n - A055641 (A000088 n).toNat

end

end A328541.P8013353532926454165

/-!
# A328542: Number of 4 dots bracelet partitions of n.

The programs for A328542, there is no canonical definition to state claims against.
-/

/-! ## A328542.P5316271475477019451

`A142150(lcm(A013632(n), A210063(2*n+1)))`
-/

namespace A328542.P5316271475477019451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (Int.lcm (A013632 n) (A210063 (2 * n + 1)))

end

end A328542.P5316271475477019451

/-! ## A328542.P13568682874754134501

`A187154(2*n+1)/A043529(A018009(n+4))`
-/

namespace A328542.P13568682874754134501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187154 (2 * n + 1) : ℚ) / (A043529 (A018009 (n + 4)).toNat : ℚ)

end

end A328542.P13568682874754134501

/-! ## A328542.P6359252991826694706

`A065033(lcm(A124010(n+1), A187154(2*n+1)))`
-/

namespace A328542.P6359252991826694706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (Int.lcm (A124010 (n + 1)) (A187154 (2 * n + 1)))

end

end A328542.P6359252991826694706

/-!
# A328543: Number of 5 dots bracelet partitions of n.

The programs for A328543, there is no canonical definition to state claims against.
-/

/-! ## A328543.P1892667348041062533

`A054899(Δ[A341223(n+5)])+1`
-/

namespace A328543.P1892667348041062533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341223 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (f1 (n + 1) - f1 n).toNat + 1

end

end A328543.P1892667348041062533

/-! ## A328543.P16936712779323394549

`∑[∑[A120836(A058695(n))]]`
-/

namespace A328543.P16936712779323394549
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120836 (A058695 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328543.P16936712779323394549

/-!
# A328544: Numbers k such that k multiplied by any of its digits contains k as a substring.

The programs for A328544, there is no canonical definition to state claims against.
-/

/-! ## A328544.P12565663758224884901

`A010785(A326806(n+1))`
-/

namespace A328544.P12565663758224884901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 (A326806 (n + 1)).toNat

end

end A328544.P12565663758224884901

/-! ## A328544.P14281962978287281564

`∩[A308262(n+1), A010785(n)]`
-/

namespace A328544.P14281962978287281564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328544.P14281962978287281564

/-! ## A328544.P1887859157691691786

`∩[A328095(n+1), A049872(n)]`
-/

namespace A328544.P1887859157691691786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049872 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328544.P1887859157691691786

/-! ## A328544.P12319108743232160346

`∩[A049872(n), A344555(n+1)]`
-/

namespace A328544.P12319108743232160346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049872 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328544.P12319108743232160346

/-! ## A328544.P6850824762876995783

`∩[A055645(n), A344555(n+1)]`
-/

namespace A328544.P6850824762876995783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055645 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328544.P6850824762876995783

/-!
# A328545: Number of 11-regular partitions of n (no part is a multiple of 11).

The programs for A328545, there is no canonical definition to state claims against.
-/

/-! ## A328545.P2213924658287347591

`A124094(A056000(n+7)-1)`
-/

namespace A328545.P2213924658287347591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124094 (A056000 (n + 7) - 1).toNat

end

end A328545.P2213924658287347591

/-! ## A328545.P2221891170608323253

`A124094(A000217(n+11)-11)`
-/

namespace A328545.P2221891170608323253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124094 (A000217 (n + 11) - 11).toNat

end

end A328545.P2221891170608323253

/-! ## A328545.P4378331056793927339

`A124094(A167614(n+10)-14)`
-/

namespace A328545.P4378331056793927339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124094 (A167614 (n + 10) - 14).toNat

end

end A328545.P4378331056793927339

/-! ## A328545.P7992359385600651414

`A124094(A046691(n+8)+n+4)`
-/

namespace A328545.P7992359385600651414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124094 (A046691 (n + 8) + (n + 4 : ℤ)).toNat

end

end A328545.P7992359385600651414

/-! ## A328545.P5767393143073596774

`A286653(eq[10, A025581(n)])`
-/

namespace A328545.P5767393143073596774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286653 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A328545.P5767393143073596774

/-! ## A328545.P5877579963664775865

`A286653(eq[11, A193739(n)])`
-/

namespace A328545.P5877579963664775865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286653 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A328545.P5877579963664775865

/-! ## A328545.P14831548517329014680

`A286653(A000217(n+11)-11)`
-/

namespace A328545.P14831548517329014680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286653 (A000217 (n + 11) - 11).toNat

end

end A328545.P14831548517329014680

/-! ## A328545.P6574384660806246554

`A286653(A161680(n+12)-11)`
-/

namespace A328545.P6574384660806246554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286653 (A161680 (n + 12) - 11).toNat

end

end A328545.P6574384660806246554

/-! ## A328545.P15890724851765677748

`A286653(A152949(n+8)+A016861(n+6))`
-/

namespace A328545.P15890724851765677748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286653 (A152949 (n + 8) + A016861 (n + 6)).toNat

end

end A328545.P15890724851765677748

/-!
# A328546: Number of 12-regular partitions of n (no part is a multiple of 12).

The programs for A328546, there is no canonical definition to state claims against.
-/

/-! ## A328546.P4035634945993633898

`A286653(eq[11, A025581(n)])`
-/

namespace A328546.P4035634945993633898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286653 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A328546.P4035634945993633898

/-! ## A328546.P9130458727080250633

`A286653(eq[12, A193739(n)])`
-/

namespace A328546.P9130458727080250633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286653 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A328546.P9130458727080250633

/-! ## A328546.P10899342714901331160

`A286653(A155212(n+8)-4)`
-/

namespace A328546.P10899342714901331160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286653 (A155212 (n + 8) - 4).toNat

end

end A328546.P10899342714901331160

/-! ## A328546.P5203520176340421704

`A286653(A000217(n+12)-12)`
-/

namespace A328546.P5203520176340421704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286653 (A000217 (n + 12) - 12).toNat

end

end A328546.P5203520176340421704

/-! ## A328546.P5674583213466285536

`A286653(eq[12, A004736(n+1)])`
-/

namespace A328546.P5674583213466285536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286653 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A328546.P5674583213466285536

/-! ## A328546.P8906892338491809241

`A286653(A161680(n+12)+n)`
-/

namespace A328546.P8906892338491809241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286653 (A161680 (n + 12) + (n : ℤ)).toNat

end

end A328546.P8906892338491809241

/-! ## A328546.P2628997697887848251

`A286653(A046691(n+8)+A005408(n+7))`
-/

namespace A328546.P2628997697887848251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286653 (A046691 (n + 8) + A005408 (n + 7)).toNat

end

end A328546.P2628997697887848251

/-!
# A328547: Number of 3-regular bipartitions of n.

The programs for A328547, there is no canonical definition to state claims against.
-/

/-! ## A328547.P9869063324176955483

`record[ceil(A112156(n)/3)]`
-/

namespace A328547.P9869063324176955483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A112156 n : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328547.P9869063324176955483

/-! ## A328547.P16033469382201131218

`A112156(3*n+1)/3`
-/

namespace A328547.P16033469382201131218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112156 (3 * n + 1) : ℚ) / 3

end

end A328547.P16033469382201131218

/-! ## A328547.P11898784526279613732

`record[A112156(A061800(n))/3]`
-/

namespace A328547.P11898784526279613732
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112156 (A061800 n).toNat : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328547.P11898784526279613732

/-! ## A328547.P7602181913635340710

`record[A112156(A052938(n))/3]`
-/

namespace A328547.P7602181913635340710
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112156 (A052938 n).toNat : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328547.P7602181913635340710

/-! ## A328547.P6564610006459933846

`record[A112156(A008619(n))/3]`
-/

namespace A328547.P6564610006459933846
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112156 (A008619 n).toNat : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328547.P6564610006459933846

/-!
# A328548: Number of 6-regular bipartitions of n.

The programs for A328548, there is no canonical definition to state claims against.
-/

/-! ## A328548.P1813189228595316767

`A263348(n)+A192174(A228986(n+1))`
-/

namespace A328548.P1813189228595316767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263348 n + A192174 (A228986 (n + 1)).toNat

end

end A328548.P1813189228595316767

/-! ## A328548.P448792991208265992

`A263348(A087051(n))`
-/

namespace A328548.P448792991208265992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263348 (A087051 n).toNat

end

end A328548.P448792991208265992

/-! ## A328548.P3837603851391137915

`A263348(A227549(n+1))`
-/

namespace A328548.P3837603851391137915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263348 (A227549 (n + 1)).toNat

end

end A328548.P3837603851391137915

/-!
# A328549: 1, together with the numbers that are simultaneously superior highly composite (A002201), colossally abundant (A004490), deeply composite (A095848), and miserable average divisor numbers (A263572).

The programs for A328549, there is no canonical definition to state claims against.
-/

/-! ## A328549.P4009515982917566289

`A263572(comp[15*n])`
-/

namespace A328549.P4009515982917566289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263572 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A328549.P4009515982917566289

/-! ## A328549.P12721141830248804642

`∏{e}[2^n, A004490(#)]`
-/

namespace A328549.P12721141830248804642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A004490 (Nat.factorization (f1 n) p)

end

end A328549.P12721141830248804642

/-! ## A328549.P13131628282176620027

`∏{e}[2^n, A224078(#)]`
-/

namespace A328549.P13131628282176620027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A224078 (Nat.factorization (f1 n) p)

end

end A328549.P13131628282176620027

/-! ## A328549.P2823434155940908700

`A263572(n+1)+char[12]`
-/

namespace A328549.P2823434155940908700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263572 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A328549.P2823434155940908700

/-! ## A328549.P13792420113052175131

`a(n-1)*A000705(n)` with `a(0)=1`
-/

namespace A328549.P13792420113052175131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A000705 n

end

end A328549.P13792420113052175131

/-!
# A328550: a(n) is the least prime p such that the next prime after p with the same last digit as p is p+10*n.

The programs for A328550, there is no canonical definition to state claims against.
-/

/-! ## A328550.P1894307248561387235

`A130141(xor(2, A000203(2*(n+1))))`
-/

namespace A328550.P1894307248561387235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130141 (Int.xor 2 (A000203 (2 * (n + 1)))).toNat

end

end A328550.P1894307248561387235

/-!
# A328554: Coefficients in Göttsche's universal power series B_1(q) arising from enumeration of d-nodal curves in a linear system of dimension d on an algebraic surface.

The programs for A328554, there is no canonical definition to state claims against.
-/

/-! ## A328554.P8496819479433989830

`A246128(A375664(n))-A213233(n)`
-/

namespace A328554.P8496819479433989830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246128 (A375664 n).toNat - A213233 n

end

end A328554.P8496819479433989830

/-!
# A328555: Coefficients in Göttsche's universal power series B_2(q) arising from enumeration of d-nodal curves in a linear system of dimension d on an algebraic surface.

The programs for A328555, there is no canonical definition to state claims against.
-/

/-! ## A328555.P10131811147797428163

`A246927(A002450(n)*A191021(n+1))+n`
-/

namespace A328555.P10131811147797428163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246927 (A002450 n * A191021 (n + 1)).toNat + (n : ℤ)

end

end A328555.P10131811147797428163

/-!
# A328557: Arithmetic numbers (A003601) that are not squares (A000290).

The programs for A328557, the canonical program `A328557.P3690603107563760352` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328557 has offset 1).

The definition of A328557 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A328557.P3690603107563760352

`comp[∪[A049642(n+1), n²]]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A328557

/-- `comp[∪[A049642(n+1), n²]]` -/
def P3690603107563760352.Spec : Prop :=
  ∀ n, (P3690603107563760352.a n : ℤ) = A328557 (n + 1)

theorem P3690603107563760352.correct : P3690603107563760352.Spec := by
  intro n
  simp only [A328557, Nat.add_sub_cancel]

end A328557

/-! ## A328557.P12749074751371475310

`comp[∪[A328559(n+1), n²]]`
-/

namespace A328557.P12749074751371475310
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328559 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A328557.P12749074751371475310

namespace A328557

/-- `comp[∪[A328559(n+1), n²]]` -/
def P12749074751371475310.Spec : Prop :=
  ∀ n, (P12749074751371475310.a n : ℤ) = A328557 (n + 1)

end A328557

/-! ## A328557.P12557905914537108089

`filter[A003601(n+1), A049240(#)]`
-/

namespace A328557.P12557905914537108089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003601 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A328557.P12557905914537108089

namespace A328557

/-- `filter[A003601(n+1), A049240(#)]` -/
def P12557905914537108089.Spec : Prop :=
  ∀ n, P12557905914537108089.a n = A328557 (n + 1)

end A328557

/-! ## A328557.P6255331352445222280

`filter[A028983(n+1), A245656(#)]`
-/

namespace A328557.P6255331352445222280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028983 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A245656 (f1 j).toNat = 1) n)

end

end A328557.P6255331352445222280

namespace A328557

/-- `filter[A028983(n+1), A245656(#)]` -/
def P6255331352445222280.Spec : Prop :=
  ∀ n, P6255331352445222280.a n = A328557 (n + 1)

end A328557

/-! ## A328557.P18232249414015254209

`filter[A000037(n+1), A245656(#)]`
-/

namespace A328557.P18232249414015254209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A245656 (f1 j).toNat = 1) n)

end

end A328557.P18232249414015254209

namespace A328557

/-- `filter[A000037(n+1), A245656(#)]` -/
def P18232249414015254209.Spec : Prop :=
  ∀ n, P18232249414015254209.a n = A328557 (n + 1)

end A328557

/-! ## A328557.P10456389908807836810

`filter[A164514(n+2), A245656(#)]`
-/

namespace A328557.P10456389908807836810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164514 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A245656 (f1 j).toNat = 1) n)

end

end A328557.P10456389908807836810

namespace A328557

/-- `filter[A164514(n+2), A245656(#)]` -/
def P10456389908807836810.Spec : Prop :=
  ∀ n, P10456389908807836810.a n = A328557 (n + 1)

end A328557

/-! ## A328557.P16236659318565540361

`∩[A000037(n+1), A003601(n+1)]`
-/

namespace A328557.P16236659318565540361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003601 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328557.P16236659318565540361

namespace A328557

/-- `∩[A000037(n+1), A003601(n+1)]` -/
def P16236659318565540361.Spec : Prop :=
  ∀ n, (P16236659318565540361.a n : ℤ) = A328557 (n + 1)

end A328557

/-! ## A328557.P7695680788442051604

`filter[A386267(n+1), A245656(#)]`
-/

namespace A328557.P7695680788442051604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386267 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A245656 (f1 j).toNat = 1) n)

end

end A328557.P7695680788442051604

namespace A328557

/-- `filter[A386267(n+1), A245656(#)]` -/
def P7695680788442051604.Spec : Prop :=
  ∀ n, P7695680788442051604.a n = A328557 (n + 1)

end A328557

/-! ## A328557.P2900247120582811495

`filter[A003601(n+1), A267635(#)]`
-/

namespace A328557.P2900247120582811495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003601 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267635 (f1 j).toNat = 1) n)

end

end A328557.P2900247120582811495

namespace A328557

/-- `filter[A003601(n+1), A267635(#)]` -/
def P2900247120582811495.Spec : Prop :=
  ∀ n, P2900247120582811495.a n = A328557 (n + 1)

end A328557

/-! ## A328557.P2937041391609373352

`filter[A137442(2*(n+1)), A245656(#)]`
-/

namespace A328557.P2937041391609373352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137442 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A245656 (f1 j).toNat = 1) n)

end

end A328557.P2937041391609373352

namespace A328557

/-- `filter[A137442(2*(n+1)), A245656(#)]` -/
def P2937041391609373352.Spec : Prop :=
  ∀ n, P2937041391609373352.a n = A328557 (n + 1)

end A328557

/-!
# A328558: Squares (A000290) that are not arithmetic numbers (A003601).

The programs for A328558, there is no canonical definition to state claims against.
-/

/-! ## A328558.P2845513338111868149

`∩[A328953(n+1), n²]`
-/

namespace A328558.P2845513338111868149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328953 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A328558.P2845513338111868149

/-! ## A328558.P13134003042479517991

`∩[A000290(n), A328953(n+1)]`
-/

namespace A328558.P13134003042479517991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328953 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328558.P13134003042479517991

/-! ## A328558.P6544343139498952204

`∩[A181385(n), A328953(n+1)]`
-/

namespace A328558.P6544343139498952204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328953 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328558.P6544343139498952204

/-! ## A328558.P14951585336284560446

`∩[A188915(n), A328953(n+1)]`
-/

namespace A328558.P14951585336284560446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188915 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328953 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328558.P14951585336284560446

/-! ## A328558.P16330963406064156393

`∩[A001597(n+1), A328953(n+1)]`
-/

namespace A328558.P16330963406064156393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328953 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328558.P16330963406064156393

/-! ## A328558.P10808020319844018407

`∩[A002760(n+1), A328953(n+1)]`
-/

namespace A328558.P10808020319844018407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328953 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328558.P10808020319844018407

/-! ## A328558.P2919677367362235880

`∩[A034793(n+1), A328953(n+1)]`
-/

namespace A328558.P2919677367362235880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328953 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328558.P2919677367362235880

/-! ## A328558.P11676016399946990337

`∩[A213011(n+1), A328953(n+1)]`
-/

namespace A328558.P11676016399946990337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213011 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328953 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328558.P11676016399946990337

/-! ## A328558.P6581136731667257047

`∩[A266918(n+1), A328953(n+1)]`
-/

namespace A328558.P6581136731667257047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266918 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328953 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328558.P6581136731667257047

/-! ## A328558.P2492434716851941744

`∩[A072595(n+1), A328953(n+1)]`
-/

namespace A328558.P2492434716851941744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072595 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328953 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328558.P2492434716851941744

/-! ## A328558.P9936385870504350948

`∩[A138326(n+1), A328953(n+1)]`
-/

namespace A328558.P9936385870504350948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328953 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328558.P9936385870504350948

/-! ## A328558.P15748738994031781955

`∩[A089237(n+1), A328953(n+1)]`
-/

namespace A328558.P15748738994031781955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328953 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328558.P15748738994031781955

/-! ## A328558.P6137589581396143715

`filter[A328953(n+1), A145377(#)]`
-/

namespace A328558.P6137589581396143715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328953 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145377 (f1 j).toNat = 1) n)

end

end A328558.P6137589581396143715

/-! ## A328558.P8011341716303411116

`∩[A049642(n+1), n²]`
-/

namespace A328558.P8011341716303411116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049642 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A328558.P8011341716303411116

/-! ## A328558.P2236447659040126753

`∩[A328945(n+1), n²]`
-/

namespace A328558.P2236447659040126753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328945 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A328558.P2236447659040126753

/-! ## A328558.P5688448914525961811

`∩[A342106(n+1), n²]`
-/

namespace A328558.P5688448914525961811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342106 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A328558.P5688448914525961811

/-! ## A328558.P17689590843698092668

`∩[A000290(n), A049642(n+1)]`
-/

namespace A328558.P17689590843698092668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049642 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328558.P17689590843698092668

/-! ## A328558.P9944006333881915211

`∩[A000290(n), A328945(n+1)]`
-/

namespace A328558.P9944006333881915211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328558.P9944006333881915211

/-! ## A328558.P6417634206877484120

`∩[A000290(n), A342106(n+1)]`
-/

namespace A328558.P6417634206877484120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342106 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328558.P6417634206877484120

/-! ## A328558.P4226816759429454761

`∩[A181385(n), A342106(n+1)]`
-/

namespace A328558.P4226816759429454761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342106 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328558.P4226816759429454761

/-!
# A328559: Numbers m that are neither arithmetic (A003601) nor squares (A000290).

The programs for A328559, the canonical program `A328559.P7373183784743117782` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328559 has offset 1).

The definition of A328559 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9810 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A328559.P7373183784743117782

`filter[A049642(n+1), A049240(#)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A328559

/-- `filter[A049642(n+1), A049240(#)]` -/
def P7373183784743117782.Spec : Prop :=
  ∀ n, P7373183784743117782.a n = A328559 (n + 1)

theorem P7373183784743117782.correct : P7373183784743117782.Spec := by
  intro n
  simp only [A328559, Nat.add_sub_cancel]

end A328559

/-! ## A328559.P2599538530878739620

`∩[A000037(n+1), A049642(n+1)]`
-/

namespace A328559.P2599538530878739620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049642 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328559.P2599538530878739620

namespace A328559

/-- `∩[A000037(n+1), A049642(n+1)]` -/
def P2599538530878739620.Spec : Prop :=
  ∀ n, (P2599538530878739620.a n : ℤ) = A328559 (n + 1)

end A328559

/-! ## A328559.P17377394481758913831

`∩[A049642(n+1), A164514(n+1)]`
-/

namespace A328559.P17377394481758913831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049642 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164514 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328559.P17377394481758913831

namespace A328559

/-- `∩[A049642(n+1), A164514(n+1)]` -/
def P17377394481758913831.Spec : Prop :=
  ∀ n, (P17377394481758913831.a n : ℤ) = A328559 (n + 1)

end A328559

/-! ## A328559.P3619738607652259277

`filter[A049642(n+1), A267594(#)]`
-/

namespace A328559.P3619738607652259277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049642 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267594 (f1 j).toNat = 1) n)

end

end A328559.P3619738607652259277

namespace A328559

/-- `filter[A049642(n+1), A267594(#)]` -/
def P3619738607652259277.Spec : Prop :=
  ∀ n, P3619738607652259277.a n = A328559 (n + 1)

end A328559

/-! ## A328559.P17179339701368380962

`filter[A049642(n+1), A267635(#)]`
-/

namespace A328559.P17179339701368380962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049642 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267635 (f1 j).toNat = 1) n)

end

end A328559.P17179339701368380962

namespace A328559

/-- `filter[A049642(n+1), A267635(#)]` -/
def P17179339701368380962.Spec : Prop :=
  ∀ n, P17179339701368380962.a n = A328559 (n + 1)

end A328559

/-! ## A328559.P7152965321484067545

`eq[char[A003601(n+1)], A000122(n)]`
-/

namespace A328559.P7152965321484067545
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003601 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A328559.P7152965321484067545

namespace A328559

/-- `eq[char[A003601(n+1)], A000122(n)]` -/
def P7152965321484067545.Spec : Prop :=
  ∀ n, (P7152965321484067545.a n : ℤ) = A328559 (n + 1)

end A328559

/-! ## A328559.P3847582936674146099

`eq[a(A286628(n))-3, A010052(n)]` with `a(0)=3, a(1)=2`
-/

namespace A328559.P3847582936674146099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n f1 =>
  f1 (A286628 n).toNat - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328559.P3847582936674146099

namespace A328559

/-- `eq[a(A286628(n))-3, A010052(n)]` -/
def P3847582936674146099.Spec : Prop :=
  ∀ n, (P3847582936674146099.a n : ℤ) = A328559 (n + 1)

end A328559

/-! ## A328559.P6256483765275727076

`eq[A000122(n), A245656(A233583(n+1))]`
-/

namespace A328559.P6256483765275727076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245656 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328559.P6256483765275727076

namespace A328559

/-- `eq[A000122(n), A245656(A233583(n+1))]` -/
def P6256483765275727076.Spec : Prop :=
  ∀ n, (P6256483765275727076.a n : ℤ) = A328559 (n + 1)

end A328559

/-! ## A328559.P11556579814273807858

`eq[A002448(n), A245656(A233583(n+1))]`
-/

namespace A328559.P11556579814273807858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002448 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245656 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328559.P11556579814273807858

namespace A328559

/-- `eq[A002448(n), A245656(A233583(n+1))]` -/
def P11556579814273807858.Spec : Prop :=
  ∀ n, (P11556579814273807858.a n : ℤ) = A328559 (n + 1)

end A328559

/-!
# A328560: Numbers whose product of digits is a power of 10.

The programs for A328560, there is no canonical definition to state claims against.
-/

/-! ## A328560.P8104476017499112041

`eq[1, A128212(n+1)]+1`
-/

namespace A328560.P8104476017499112041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128212 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A328560.P8104476017499112041

/-! ## A328560.P10087676984966567565

`eq[1, A003132(A007954(n))]`
-/

namespace A328560.P10087676984966567565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (A007954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328560.P10087676984966567565

/-! ## A328560.P15993723686041143796

`eq[2, A007953(A007954(n)+1)]`
-/

namespace A328560.P15993723686041143796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A007954 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328560.P15993723686041143796

/-! ## A328560.P9009036069570615364

`eq[2, A326746(2*A007954(n))]`
-/

namespace A328560.P9009036069570615364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326746 (2 * A007954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328560.P9009036069570615364

/-! ## A328560.P7989313956177576646

`eq[1, A007953(n-A070565(n))]`
-/

namespace A328560.P7989313956177576646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 ((n : ℤ) - A070565 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328560.P7989313956177576646

/-!
# A328562: Unitary weird numbers (A064114) that are not weird numbers (A006037).

The programs for A328562, there is no canonical definition to state claims against.
-/

/-! ## A328562.P17168132691137726544

`filter[A064114(n+1), A087049(#)]`
-/

namespace A328562.P17168132691137726544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064114 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A328562.P17168132691137726544

/-!
# A328564: a(n) is the sum of the elements of the set A_n = {(n-k) AND k, k = 0..n} (where AND denotes the bitwise AND operator).

The programs for A328564, there is no canonical definition to state claims against.
-/

/-! ## A328564.P6572065685548892323

`A073642(A264977(A152046(n)))`
-/

namespace A328564.P6572065685548892323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 (A264977 (A152046 n).toNat).toNat

end

end A328564.P6572065685548892323

/-!
# A328565: a(n) is the sum of the elements of the set X_n = {(n-k) XOR k, k = 0..n} (where XOR denotes the bitwise XOR operator).

The programs for A328565, there is no canonical definition to state claims against.
-/

/-! ## A328565.P14647189769627481639

`A073642(A168081(n))`
-/

namespace A328565.P14647189769627481639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 (A168081 n).toNat

end

end A328565.P14647189769627481639

/-! ## A328565.P14297306149768683241

`A073642(record[-A257971(n)])`
-/

namespace A328565.P14297306149768683241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A257971 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A328565.P14297306149768683241

/-! ## A328565.P8622461011687683718

`A073642(abs(A257971(2*n)))`
-/

namespace A328565.P8622461011687683718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 |A257971 (2 * n)|.toNat

end

end A328565.P8622461011687683718

/-!
# A328567: a(n) is the smallest positive integer divisible by n such that it is possible to strike out a digit from its binary expansion (apart from trailing zeros) so that the resulting number is nonzero and divisible by n.

The programs for A328567, the canonical program `A328567.P8941545944545941635` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328567 has offset 1).

The definition of A328567 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A328567.P765706992339903941

`(n+1)*(4*A082908(n)-1)`
-/

namespace A328567.P765706992339903941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (4 * A082908 n - 1)

end

end A328567.P765706992339903941

namespace A328567

/-- `(n+1)*(4*A082908(n)-1)` -/
def P765706992339903941.Spec : Prop :=
  ∀ n, P765706992339903941.a n = A328567 (n + 1)

end A328567

/-! ## A328567.P8941545944545941635

`2*lcm(n+1, A062383(n+1))-(n+1)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A328567

/-- `2*lcm(n+1, A062383(n+1))-(n+1)` -/
def P8941545944545941635.Spec : Prop :=
  ∀ n, P8941545944545941635.a n = A328567 (n + 1)

theorem P8941545944545941635.correct : P8941545944545941635.Spec := by
  intro n
  simp only [A328567, Nat.add_sub_cancel]

end A328567

/-! ## A328567.P10905520210405913447

`(n+1)*A000203(A307313(n+1))`
-/

namespace A328567.P10905520210405913447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000203 (A307313 (n + 1)).toNat

end

end A328567.P10905520210405913447

namespace A328567

/-- `(n+1)*A000203(A307313(n+1))` -/
def P10905520210405913447.Spec : Prop :=
  ∀ n, P10905520210405913447.a n = A328567 (n + 1)

end A328567

/-! ## A328567.P10899600907268720028

`(n+1)*A000225(A070940(n+1)+1)`
-/

namespace A328567.P10899600907268720028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000225 (A070940 (n + 1) + 1).toNat

end

end A328567.P10899600907268720028

namespace A328567

/-- `(n+1)*A000225(A070940(n+1)+1)` -/
def P10899600907268720028.Spec : Prop :=
  ∀ n, P10899600907268720028.a n = A328567 (n + 1)

end A328567

/-! ## A328567.P12259305824830114203

`(n+1)*(A010078(A000265(n+1)+1)+A000265(n+1))`
-/

namespace A328567.P12259305824830114203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A010078 (A000265 (n + 1) + 1).toNat + A000265 (n + 1))

end

end A328567.P12259305824830114203

namespace A328567

/-- `(n+1)*(A010078(A000265(n+1)+1)+A000265(n+1))` -/
def P12259305824830114203.Spec : Prop :=
  ∀ n, P12259305824830114203.a n = A328567 (n + 1)

end A328567

/-! ## A328567.P823080974704353284

`lcm(n+1, A062383(A062383(n+1)))-(n+1)`
-/

namespace A328567.P823080974704353284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A062383 (A062383 (n + 1)).toNat) : ℤ) - (n + 1 : ℤ)

end

end A328567.P823080974704353284

namespace A328567

/-- `lcm(n+1, A062383(A062383(n+1)))-(n+1)` -/
def P823080974704353284.Spec : Prop :=
  ∀ n, P823080974704353284.a n = A328567 (n + 1)

end A328567

/-! ## A328567.P13526222894385800685

`(n+1)*A003817(2*A000265(n+1))`
-/

namespace A328567.P13526222894385800685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A003817 (2 * A000265 (n + 1)).toNat

end

end A328567.P13526222894385800685

namespace A328567

/-- `(n+1)*A003817(2*A000265(n+1))` -/
def P13526222894385800685.Spec : Prop :=
  ∀ n, P13526222894385800685.a n = A328567 (n + 1)

end A328567

/-! ## A328567.P6506141135827368267

`(n+1)*A105670(A076877(A030101(n+1)))`
-/

namespace A328567.P6506141135827368267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A105670 (A076877 (A030101 (n + 1)).toNat).toNat

end

end A328567.P6506141135827368267

namespace A328567

/-- `(n+1)*A105670(A076877(A030101(n+1)))` -/
def P6506141135827368267.Spec : Prop :=
  ∀ n, P6506141135827368267.a n = A328567 (n + 1)

end A328567

/-!
# A328568: Irregular triangle read by rows; for n >= 0, the n-th row corresponds to the elements of the set {(n-k) XOR k, k = 0..n}, in ascending order (where XOR denotes the bitwise XOR operator).

The programs for A328568, the canonical program `A328568.P3353613045222164027` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328568 has offset 0).

The definition of A328568 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1259 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A328568.P3353613045222164027

`A003987(eq[n, A286099(n)])`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A328568

/-- `A003987(eq[n, A286099(n)])` -/
def P3353613045222164027.Spec : Prop :=
  ∀ n, P3353613045222164027.a n = A328568 n

theorem P3353613045222164027.correct : P3353613045222164027.Spec := by
  intro n
  simp only [A328568]

end A328568

/-! ## A328568.P4804279670517164911

`A049581(eq[n, A286099(n)])`
-/

namespace A328568.P4804279670517164911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049581 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A328568.P4804279670517164911

namespace A328568

/-- `A049581(eq[n, A286099(n)])` -/
def P4804279670517164911.Spec : Prop :=
  ∀ n, P4804279670517164911.a n = A328568 n

end A328568

/-! ## A328568.P14442509298842947114

`A003987(eq[A002262(n), A003986(n)])`
-/

namespace A328568.P14442509298842947114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003986 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A328568.P14442509298842947114

namespace A328568

/-- `A003987(eq[A002262(n), A003986(n)])` -/
def P14442509298842947114.Spec : Prop :=
  ∀ n, P14442509298842947114.a n = A328568 n

end A328568

/-! ## A328568.P12491895212998979087

`A003987(eq[A004198(n), A025581(n)])`
-/

namespace A328568.P12491895212998979087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004198 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A328568.P12491895212998979087

namespace A328568

/-- `A003987(eq[A004198(n), A025581(n)])` -/
def P12491895212998979087.Spec : Prop :=
  ∀ n, P12491895212998979087.a n = A328568 n

end A328568

/-! ## A328568.P7348379686635991742

`A003987(eq[n, A061579(n)+A003987(n)])`
-/

namespace A328568.P7348379686635991742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n + A003987 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A328568.P7348379686635991742

namespace A328568

/-- `A003987(eq[n, A061579(n)+A003987(n)])` -/
def P7348379686635991742.Spec : Prop :=
  ∀ n, P7348379686635991742.a n = A328568 n

end A328568

/-! ## A328568.P4728122644754180235

`A003987(eq[n, A286109(n)+A025581(n)])`
-/

namespace A328568.P4728122644754180235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286109 n + A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A328568.P4728122644754180235

namespace A328568

/-- `A003987(eq[n, A286109(n)+A025581(n)])` -/
def P4728122644754180235.Spec : Prop :=
  ∀ n, P4728122644754180235.a n = A328568 n

end A328568

/-! ## A328568.P4200087032678320332

`A003987(eq[n-A003987(n), A061579(n)])`
-/

namespace A328568.P4200087032678320332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A003987 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A328568.P4200087032678320332

namespace A328568

/-- `A003987(eq[n-A003987(n), A061579(n)])` -/
def P4200087032678320332.Spec : Prop :=
  ∀ n, P4200087032678320332.a n = A328568 n

end A328568

/-! ## A328568.P7970453302190968432

`A003987(eq[n-A025581(n), A286109(n)])`
-/

namespace A328568.P7970453302190968432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A025581 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286109 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A328568.P7970453302190968432

namespace A328568

/-- `A003987(eq[n-A025581(n), A286109(n)])` -/
def P7970453302190968432.Spec : Prop :=
  ∀ n, P7970453302190968432.a n = A328568 n

end A328568

/-!
# A328569: Exponent of least prime factor in A276086(A276086(n)), where A276086 converts the primorial base expansion of n into its prime product form.

The programs for A328569, there is no canonical definition to state claims against.
-/

/-! ## A328569.P6381173214456657883

`A276088(A276086(n))`
-/

namespace A328569.P6381173214456657883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276088 (A276086 n).toNat

end

end A328569.P6381173214456657883

/-! ## A328569.P17241327980148108623

`(A328572(n)*A328573(n))%A326810(n)`
-/

namespace A328569.P17241327980148108623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328572 n * A328573 n) (A326810 n)

end

end A328569.P17241327980148108623

/-! ## A328569.P15079043939831620432

`(A276086(n)/A328580(n))%A326810(n)`
-/

namespace A328569.P15079043939831620432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A276086 n : ℚ) / (A328580 n : ℚ))) (A326810 n)

end

end A328569.P15079043939831620432

/-! ## A328569.P14824246082134010361

`A328475(n)%A326810(n)`
-/

namespace A328569.P14824246082134010361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328475 n) (A326810 n)

end

end A328569.P14824246082134010361

/-! ## A328569.P5894787226309339573

`A328475(A063196(n+1))%A328571(A328580(n))`
-/

namespace A328569.P5894787226309339573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328475 (A063196 (n + 1)).toNat) (A328571 (A328580 n).toNat)

end

end A328569.P5894787226309339573

/-! ## A328569.P7951052562358955650

`-(-A328475(n)%A276086(A328580(n)))`
-/

namespace A328569.P7951052562358955650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (-A328475 n) (A276086 (A328580 n).toNat)

end

end A328569.P7951052562358955650

/-! ## A328569.P1926125054471900225

`val(A276087(n), A326810(n))`
-/

namespace A328569.P1926125054471900225
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A276087 n).toNat (A326810 n).toNat

end

end A328569.P1926125054471900225

/-! ## A328569.P8372975756062150979

`val(A276087(n), A020639(A328613(n)))`
-/

namespace A328569.P8372975756062150979
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A276087 n).toNat (A020639 (A328613 n).toNat).toNat

end

end A328569.P8372975756062150979

/-! ## A328569.P8849826995107785966

`A111701(A328475(n))%A053669(A328580(n))`
-/

namespace A328569.P8849826995107785966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A111701 (A328475 n).toNat) (A053669 (A328580 n).toNat)

end

end A328569.P8849826995107785966

/-!
# A328570: Index of the least significant zero digit in the primorial base expansion of n, when the rightmost digit is in the position 1.

The programs for A328570, there is no canonical definition to state claims against.
-/

/-! ## A328570.P10584659979539038631

`A000720(A326810(n))`
-/

namespace A328570.P10584659979539038631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A326810 n).toNat

end

end A328570.P10584659979539038631

/-! ## A328570.P15193327986878993425

`A257993(A276086(n))`
-/

namespace A328570.P15193327986878993425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257993 (A276086 n).toNat

end

end A328570.P15193327986878993425

/-! ## A328570.P1607623882806085720

`A055396(A276087(n))`
-/

namespace A328570.P1607623882806085720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A276087 n).toNat

end

end A328570.P1607623882806085720

/-! ## A328570.P1210799126669413979

`∑{e}[A328580(n), #]+1`
-/

namespace A328570.P1210799126669413979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328580 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p + 1

end

end A328570.P1210799126669413979

/-! ## A328570.P6271213779140861244

`A055396(A326810(n)²)`
-/

namespace A328570.P6271213779140861244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A326810 n ^ 2).toNat

end

end A328570.P6271213779140861244

/-! ## A328570.P9400641981612603335

`A001221(A328580(n))+1`
-/

namespace A328570.P9400641981612603335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A328580 n).toNat + 1

end

end A328570.P9400641981612603335

/-! ## A328570.P16485037532466951917

`A001222(2*A328580(n))`
-/

namespace A328570.P16485037532466951917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * A328580 n).toNat

end

end A328570.P16485037532466951917

/-! ## A328570.P41694222488912144

`A326840(2*A326810(n))`
-/

namespace A328570.P41694222488912144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326840 (2 * A326810 n).toNat

end

end A328570.P41694222488912144

/-! ## A328570.P1027029766489458255

`A325355(3*A326810(n))`
-/

namespace A328570.P1027029766489458255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325355 (3 * A326810 n).toNat

end

end A328570.P1027029766489458255

/-! ## A328570.P7867057326905002089

`A055396(A326810(2*n-n))`
-/

namespace A328570.P7867057326905002089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A326810 (2 * n - n)).toNat

end

end A328570.P7867057326905002089

/-! ## A328570.P18412314327275999815

`A000005(A000005(A328580(n)))`
-/

namespace A328570.P18412314327275999815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000005 (A328580 n).toNat).toNat

end

end A328570.P18412314327275999815

/-! ## A328570.P4974531822376412360

`A001222(A328580(n)+A328580(n))`
-/

namespace A328570.P4974531822376412360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A328580 n + A328580 n).toNat

end

end A328570.P4974531822376412360

/-! ## A328570.P9907221210446071400

`A055396(A326810(n)*A326810(n))`
-/

namespace A328570.P9907221210446071400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A326810 n * A326810 n).toNat

end

end A328570.P9907221210446071400

/-! ## A328570.P1384554557916418314

`A055396(A326810(n))^A055396(n+1)`
-/

namespace A328570.P1384554557916418314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055396 (A326810 n).toNat : ℚ) ^ (A055396 (n + 1) : ℤ)

end

end A328570.P1384554557916418314

/-! ## A328570.P17640648213327070361

`A000005(A000005(A276086(n)-A328476(n)))`
-/

namespace A328570.P17640648213327070361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000005 (A276086 n - A328476 n).toNat).toNat

end

end A328570.P17640648213327070361

/-! ## A328570.P8018564668495846496

`A005086(A328580(n))`
-/

namespace A328570.P8018564668495846496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005086 (A328580 n).toNat

end

end A328570.P8018564668495846496

/-! ## A328570.P13775674793811528679

`A257993(A328571(n))`
-/

namespace A328570.P13775674793811528679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257993 (A328571 n).toNat

end

end A328570.P13775674793811528679

/-! ## A328570.P18284645601394516525

`A339012(2*A328580(n)-1)`
-/

namespace A328570.P18284645601394516525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339012 (2 * A328580 n - 1).toNat

end

end A328570.P18284645601394516525

/-! ## A328570.P6049371962106002544

`A339012(A328580(n)+A328580(n)-1)`
-/

namespace A328570.P6049371962106002544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339012 (A328580 n + (A328580 n - 1)).toNat

end

end A328570.P6049371962106002544

/-! ## A328570.P7841812133292354476

`A339012(A328580(n)-(1-A328580(n)))`
-/

namespace A328570.P7841812133292354476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339012 (A328580 n - (1 - A328580 n)).toNat

end

end A328570.P7841812133292354476

/-!
# A328571: Primorial base expansion of n converted into its prime product form, but with all nonzero digits replaced by 1's: a(n) = A007947(A276086(n)).

The programs for A328571, there is no canonical definition to state claims against.
-/

/-! ## A328571.P6821298350951900465

`A276086(n)/A328572(n)`
-/

namespace A328571.P6821298350951900465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276086 n : ℚ) / (A328572 n : ℚ)

end

end A328571.P6821298350951900465

/-! ## A328571.P17428060287857329180

`A007947(A276086(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A328571.P17428060287857329180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A276086 n).toNat

end

end A328571.P17428060287857329180

/-! ## A328571.P11196540514169900287

`A276086(n-A328842(n))`
-/

namespace A328571.P11196540514169900287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 ((n : ℤ) - A328842 n).toNat

end

end A328571.P11196540514169900287

/-! ## A328571.P1352970880096428405

`A328573(n)*A328580(n)`
-/

namespace A328571.P1352970880096428405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328573 n * A328580 n

end

end A328571.P1352970880096428405

/-! ## A328571.P14776124444207372349

`gcd(A288813(n+1), A346101(n))`
-/

namespace A328571.P14776124444207372349
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A288813 (n + 1)) (A346101 n)

end

end A328571.P14776124444207372349

/-! ## A328571.P9915644941840290195

`A276086(n)/A276086(A328842(n))`
-/

namespace A328571.P9915644941840290195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276086 n : ℚ) / (A276086 (A328842 n).toNat : ℚ)

end

end A328571.P9915644941840290195

/-! ## A328571.P2048395265461111813

`(A327860(n)-A342016(n))/A328572(n)`
-/

namespace A328571.P2048395265461111813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327860 n - A342016 n : ℚ) / (A328572 n : ℚ)

end

end A328571.P2048395265461111813

/-! ## A328571.P7145719763534834459

`A342002(n)-A342016(n)/A328572(n)`
-/

namespace A328571.P7145719763534834459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342002 n : ℚ) - (A342016 n : ℚ) / (A328572 n : ℚ)

end

end A328571.P7145719763534834459

/-! ## A328571.P4060322367228244554

`A276086(n)/gcd(A276086(n), A327860(n))`
-/

namespace A328571.P4060322367228244554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276086 n : ℚ) / (Int.gcd (A276086 n) (A327860 n) : ℚ)

end

end A328571.P4060322367228244554

/-! ## A328571.P15604600599071269201

`(A276086(n)-A328476(n))*A328573(n)`
-/

namespace A328571.P15604600599071269201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A276086 n - A328476 n) * A328573 n

end

end A328571.P15604600599071269201

/-! ## A328571.P17925207213272544487

`A276086(n)/A328475(n)*A328573(n)`
-/

namespace A328571.P17925207213272544487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276086 n : ℚ) / (A328475 n : ℚ) * (A328573 n : ℚ)

end

end A328571.P17925207213272544487

/-! ## A328571.P17212364593329683529

`A328475(n)/A328572(n)*A328580(n)`
-/

namespace A328571.P17212364593329683529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328475 n : ℚ) / (A328572 n : ℚ) * (A328580 n : ℚ)

end

end A328571.P17212364593329683529

/-! ## A328571.P7792595214974248427

`A328624(n)/A328572(A328625(n))`
-/

namespace A328571.P7792595214974248427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328624 n : ℚ) / (A328572 (A328625 n).toNat : ℚ)

end

end A328571.P7792595214974248427

/-! ## A328571.P15235023628411880613

`gcd(A129499(n+1), A328624(n))`
-/

namespace A328571.P15235023628411880613
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A129499 (n + 1)) (A328624 n)

end

end A328571.P15235023628411880613

/-! ## A328571.P5349929781492097950

`gcd(A346102(n), A378631(n+1))`
-/

namespace A328571.P5349929781492097950
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A346102 n) (A378631 (n + 1))

end

end A328571.P5349929781492097950

/-! ## A328571.P89222470839205433

`gcd(A034386(n+1), A276086(n))`
-/

namespace A328571.P89222470839205433
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A034386 (n + 1)) (A276086 n)

end

end A328571.P89222470839205433

/-! ## A328571.P5325635787613023832

`∏{p}[A351225(n)+n, #]`
-/

namespace A328571.P5325635787613023832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351225 n + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A328571.P5325635787613023832

/-! ## A328571.P2573645194037069884

`A276086(∑{p}[A276086(n), A276085(#)])`
-/

namespace A328571.P2573645194037069884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A276085 p).toNat

end

end A328571.P2573645194037069884

/-! ## A328571.P17643742998403583721

`gcd(A328624(n)²², A285615(n+1))`
-/

namespace A328571.P17643742998403583721
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((A328624 n ^ 2) ^ 2) (A285615 (n + 1))

end

end A328571.P17643742998403583721

/-!
# A328572: Primorial base expansion of n converted into its prime product form, but with 1 subtracted from all nonzero digits: a(n) = A003557(A276086(n)).

The programs for A328572, there is no canonical definition to state claims against.
-/

/-! ## A328572.P8585431959010708627

`A276086(n)/A328571(n)`
-/

namespace A328572.P8585431959010708627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276086 n : ℚ) / (A328571 n : ℚ)

end

end A328572.P8585431959010708627

/-! ## A328572.P11900893572450239380

`gcd(A276086(n), A327860(n))`
-/

namespace A328572.P11900893572450239380
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A276086 n) (A327860 n)

end

end A328572.P11900893572450239380

/-! ## A328572.P961088023590892967

`A328475(n)/A328573(n)`
-/

namespace A328572.P961088023590892967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328475 n : ℚ) / (A328573 n : ℚ)

end

end A328572.P961088023590892967

/-! ## A328572.P15995132229035641312

`A003557(A276086(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A328572.P15995132229035641312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A276086 n).toNat

end

end A328572.P15995132229035641312

/-! ## A328572.P7240817481944096448

`A328575(or(1, n))`
-/

namespace A328572.P7240817481944096448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328575 (Nat.lor 1 n)

end

end A328572.P7240817481944096448

/-! ## A328572.P8375741123147564478

`A328575(A109613(n))`
-/

namespace A328572.P8375741123147564478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328575 (A109613 n).toNat

end

end A328572.P8375741123147564478

/-! ## A328572.P13032265260692705449

`A276086(A328842(n))`
-/

namespace A328572.P13032265260692705449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A328842 n).toNat

end

end A328572.P13032265260692705449

/-! ## A328572.P17505045144435786514

`A328575(A063196(n+1))`
-/

namespace A328572.P17505045144435786514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328575 (A063196 (n + 1)).toNat

end

end A328572.P17505045144435786514

/-! ## A328572.P7980606360549243114

`A276086(n-A328841(n))`
-/

namespace A328572.P7980606360549243114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 ((n : ℤ) - A328841 n).toNat

end

end A328572.P7980606360549243114

/-! ## A328572.P5535891643404482443

`gcd(A324895(n), A329029(n))`
-/

namespace A328572.P5535891643404482443
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A324895 n) (A329029 n)

end

end A328572.P5535891643404482443

/-! ## A328572.P18430267405200025337

`gcd(A342016(n), A346469(n))`
-/

namespace A328572.P18430267405200025337
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A342016 n) (A346469 n)

end

end A328572.P18430267405200025337

/-! ## A328572.P6749473620338702401

`(A328844(n)+A328843(n))/A328571(n)`
-/

namespace A328572.P6749473620338702401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328844 n + A328843 n : ℚ) / (A328571 n : ℚ)

end

end A328572.P6749473620338702401

/-! ## A328572.P2175029828790755799

`A276086(n)/(A328573(n)*A328580(n))`
-/

namespace A328572.P2175029828790755799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276086 n : ℚ) / (A328573 n * A328580 n : ℚ)

end

end A328572.P2175029828790755799

/-! ## A328572.P7310692209325023391

`A328575(A335129(n+4))`
-/

namespace A328572.P7310692209325023391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328575 (A335129 (n + 4)).toNat

end

end A328572.P7310692209325023391

/-! ## A328572.P5228291738170004581

`A328475(n-A328841(n))`
-/

namespace A328572.P5228291738170004581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328475 ((n : ℤ) - A328841 n).toNat

end

end A328572.P5228291738170004581

/-! ## A328572.P5106597723432895963

`A328570(2*n)+A328476(A328842(n))`
-/

namespace A328572.P5106597723432895963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328570 (2 * n) + A328476 (A328842 n).toNat

end

end A328572.P5106597723432895963

/-! ## A328572.P12667538167180492446

`A328475(2*A328842(n)-A328842(n))`
-/

namespace A328572.P12667538167180492446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328475 (2 * A328842 n - A328842 n).toNat

end

end A328572.P12667538167180492446

/-! ## A328572.P17223411020440836438

`gcd(A328475(n), A342015(n))`
-/

namespace A328572.P17223411020440836438
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A328475 n) (A342015 n)

end

end A328572.P17223411020440836438

/-! ## A328572.P8841315529412297362

`A328475(n)/A328571(n)*A328580(n)`
-/

namespace A328572.P8841315529412297362
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328475 n : ℚ) / (A328571 n : ℚ) * (A328580 n : ℚ)

end

end A328572.P8841315529412297362

/-! ## A328572.P1248525561950633424

`A276086(n-A276085(A328571(n)))`
-/

namespace A328572.P1248525561950633424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 ((n : ℤ) - A276085 (A328571 n).toNat).toNat

end

end A328572.P1248525561950633424

/-!
# A328573: a(n) = A328475(n) / A328572(n).

The programs for A328573, there is no canonical definition to state claims against.
-/

/-! ## A328573.P4824241628964118144

`A328475(n)/A328572(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A328573.P4824241628964118144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328475 n : ℚ) / (A328572 n : ℚ)

end

end A328573.P4824241628964118144

/-! ## A328573.P4150138993717627476

`A328475(n-A328842(n))`
-/

namespace A328573.P4150138993717627476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328475 ((n : ℤ) - A328842 n).toNat

end

end A328573.P4150138993717627476

/-! ## A328573.P7529494850651562674

`A328571(n)/A328580(n)`
-/

namespace A328573.P7529494850651562674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328571 n : ℚ) / (A328580 n : ℚ)

end

end A328573.P7529494850651562674

/-! ## A328573.P14381414266981694605

`A276086(n)/(A328572(n)*A328580(n))`
-/

namespace A328573.P14381414266981694605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276086 n : ℚ) / (A328572 n * A328580 n : ℚ)

end

end A328573.P14381414266981694605

/-! ## A328573.P1986540782591876804

`A328475(n)/A328475(A328842(n))`
-/

namespace A328573.P1986540782591876804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328475 n : ℚ) / (A328475 (A328842 n).toNat : ℚ)

end

end A328573.P1986540782591876804

/-! ## A328573.P15837017032599924386

`A328475(n)/gcd(A328475(n), A342015(n))`
-/

namespace A328573.P15837017032599924386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328475 n : ℚ) / (Int.gcd (A328475 n) (A342015 n) : ℚ)

end

end A328573.P15837017032599924386

/-! ## A328573.P9001734367521109576

`A111701(A328571(n))`
-/

namespace A328573.P9001734367521109576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111701 (A328571 n).toNat

end

end A328573.P9001734367521109576

/-! ## A328573.P7245394261497855914

`A111701(A276086(n)/A328572(n))`
-/

namespace A328573.P7245394261497855914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111701 (SequenceMachineLib.roundAway ((A276086 n : ℚ) / (A328572 n : ℚ))).toNat

end

end A328573.P7245394261497855914

/-! ## A328573.P397464968302044333

`A328571(n)/A328479(A276086(n))`
-/

namespace A328573.P397464968302044333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328571 n : ℚ) / (A328479 (A276086 n).toNat : ℚ)

end

end A328573.P397464968302044333

/-!
# A328574: a(1) = 0, and, for n >= 2, numbers n whose primorial base expansion doesn't contain any nonleading zeros.

The programs for A328574, the canonical program `A328574.P8235392012786303733` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328574 has offset 1).

The definition of A328574 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6348 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A328574.P8235392012786303733

`eq[0, A328620(n)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A328574

/-- `eq[0, A328620(n)]` -/
def P8235392012786303733.Spec : Prop :=
  ∀ n, (P8235392012786303733.a n : ℤ) = A328574 (n + 1)

theorem P8235392012786303733.correct : P8235392012786303733.Spec := by
  intro n
  simp only [A328574, Nat.add_sub_cancel]

end A328574

/-! ## A328574.P6924681252319612495

`eq[1, A328573(n)]`
-/

namespace A328574.P6924681252319612495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328573 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328574.P6924681252319612495

namespace A328574

/-- `eq[1, A328573(n)]` -/
def P6924681252319612495.Spec : Prop :=
  ∀ n, (P6924681252319612495.a n : ℤ) = A328574 (n + 1)

end A328574

/-! ## A328574.P12015229296530117245

`eq[1, A328612(n)]`
-/

namespace A328574.P12015229296530117245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328612 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328574.P12015229296530117245

namespace A328574

/-- `eq[1, A328612(n)]` -/
def P12015229296530117245.Spec : Prop :=
  ∀ n, (P12015229296530117245.a n : ℤ) = A328574 (n + 1)

end A328574

/-! ## A328574.P11197767439173252700

`record[n%(A328571(n)/A328573(n))]`
-/

namespace A328574.P11197767439173252700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (SequenceMachineLib.roundAway ((A328571 n : ℚ) / (A328573 n : ℚ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328574.P11197767439173252700

namespace A328574

/-- `record[n%(A328571(n)/A328573(n))]` -/
def P11197767439173252700.Spec : Prop :=
  ∀ n, P11197767439173252700.a n = A328574 (n + 1)

end A328574

/-! ## A328574.P11850708595232482233

`lt[A328573(n), root(2, A000005(n+1))]`
-/

namespace A328574.P11850708595232482233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328573 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (1 / (A000005 (n + 1) : ℝ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A328574.P11850708595232482233

namespace A328574

/-- `lt[A328573(n), root(2, A000005(n+1))]` -/
def P11850708595232482233.Spec : Prop :=
  ∀ n, (P11850708595232482233.a n : ℤ) = A328574 (n + 1)

end A328574

/-! ## A328574.P19139101040670120

`eq[1, A001222(A328571(A328571(n)))]`
-/

namespace A328574.P19139101040670120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A328571 (A328571 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328574.P19139101040670120

namespace A328574

/-- `eq[1, A001222(A328571(A328571(n)))]` -/
def P19139101040670120.Spec : Prop :=
  ∀ n, (P19139101040670120.a n : ℤ) = A328574 (n + 1)

end A328574

/-! ## A328574.P12829634848114202329

`lt[n, A328580(n)]`
-/

namespace A328574.P12829634848114202329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328580 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A328574.P12829634848114202329

namespace A328574

/-- `lt[n, A328580(n)]` -/
def P12829634848114202329.Spec : Prop :=
  ∀ n, (P12829634848114202329.a n : ℤ) = A328574 (n + 1)

end A328574

/-! ## A328574.P5036117700179574519

`eq[A235224(n), A267263(n)]`
-/

namespace A328574.P5036117700179574519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235224 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267263 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328574.P5036117700179574519

namespace A328574

/-- `eq[A235224(n), A267263(n)]` -/
def P5036117700179574519.Spec : Prop :=
  ∀ n, (P5036117700179574519.a n : ℤ) = A328574 (n + 1)

end A328574

/-! ## A328574.P1439080849737116417

`eq[1, A329027(A028310(n))+1]`
-/

namespace A328574.P1439080849737116417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329027 (A028310 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328574.P1439080849737116417

namespace A328574

/-- `eq[1, A329027(A028310(n))+1]` -/
def P1439080849737116417.Spec : Prop :=
  ∀ n, (P1439080849737116417.a n : ℤ) = A328574 (n + 1)

end A328574

/-! ## A328574.P13752850728188454988

`eq[A328475(n), A328572(n)]`
-/

namespace A328574.P13752850728188454988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328475 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328572 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328574.P13752850728188454988

namespace A328574

/-- `eq[A328475(n), A328572(n)]` -/
def P13752850728188454988.Spec : Prop :=
  ∀ n, (P13752850728188454988.a n : ℤ) = A328574 (n + 1)

end A328574

/-! ## A328574.P15126280342691955955

`eq[1, A111701(A328571(n))]`
-/

namespace A328574.P15126280342691955955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111701 (A328571 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328574.P15126280342691955955

namespace A328574

/-- `eq[1, A111701(A328571(n))]` -/
def P15126280342691955955.Spec : Prop :=
  ∀ n, (P15126280342691955955.a n : ℤ) = A328574 (n + 1)

end A328574

/-! ## A328574.P323721511246056852

`lt[A001222(A328613(n)), 2]`
-/

namespace A328574.P323721511246056852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A328613 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A328574.P323721511246056852

namespace A328574

/-- `lt[A001222(A328613(n)), 2]` -/
def P323721511246056852.Spec : Prop :=
  ∀ n, (P323721511246056852.a n : ℤ) = A328574 (n + 1)

end A328574

/-!
# A328575: a(n) = A003557(A032742(A276086(n))).

The programs for A328575, there is no canonical definition to state claims against.
-/

/-! ## A328575.P10984898722335254241

`A003557(A032742(A276086(n)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A328575.P10984898722335254241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A032742 (A276086 n).toNat).toNat

end

end A328575.P10984898722335254241

/-! ## A328575.P16579153272669579734

`gcd(A276086(n), A328572(abs(1-n)))`
-/

namespace A328575.P16579153272669579734
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A276086 n) (A328572 |1 - (n : ℤ)|.toNat)

end

end A328575.P16579153272669579734

/-! ## A328575.P17460217221163612210

`gcd(A324895(n), A327860(abs(1-n)))`
-/

namespace A328575.P17460217221163612210
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A324895 n) (A327860 |1 - (n : ℤ)|.toNat)

end

end A328575.P17460217221163612210

/-! ## A328575.P14407046354918769670

`gcd(A328572(n), A328572((2*n)%(n+1)))`
-/

namespace A328575.P14407046354918769670
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A328572 n) (A328572 (2 * n % (n + 1)))

end

end A328575.P14407046354918769670

/-! ## A328575.P11473448090086980839

`gcd(A328572(A028310(n)-1), A328572(n))`
-/

namespace A328575.P11473448090086980839
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A328572 (A028310 n - 1).toNat) (A328572 n)

end

end A328575.P11473448090086980839

/-! ## A328575.P7776758732630651941

`lcm(A324895(n), A328571(n))/A328571(n)`
-/

namespace A328575.P7776758732630651941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A324895 n) (A328571 n) : ℚ) / (A328571 n : ℚ)

end

end A328575.P7776758732630651941

/-! ## A328575.P18229912592109994427

`A328572(n)/A014963(A328572(A276094(n)))`
-/

namespace A328575.P18229912592109994427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328572 n : ℚ) / (A014963 (A328572 (A276094 n).toNat).toNat : ℚ)

end

end A328575.P18229912592109994427

/-! ## A328575.P17797886773032247626

`A324895(n)/∏{p}[A324895(n), #]`
-/

namespace A328575.P17797886773032247626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324895 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324895 n : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℚ)

end

end A328575.P17797886773032247626

/-! ## A328575.P5761043508068700252

`A336551(A324895(n))+1`
-/

namespace A328575.P5761043508068700252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336551 (A324895 n).toNat + 1

end

end A328575.P5761043508068700252

/-! ## A328575.P12601393978605496414

`A000190(A324895(n))`
-/

namespace A328575.P12601393978605496414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000190 (A324895 n).toNat

end

end A328575.P12601393978605496414

/-!
# A328577: Lexicographically earliest infinite sequence such that a(i) = a(j) => f(i) = f(j), where f(0) = 0 and f(n>0) = A328572(n), for all i, j.

The programs for A328577, there is no canonical definition to state claims against.
-/

/-! ## A328577.P4468669806959970145

`A003963(A328842(n)+A300402(2*n+3))`
-/

namespace A328577.P4468669806959970145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A328842 n + A300402 (2 * n + 3)).toNat

end

end A328577.P4468669806959970145

/-! ## A328577.P6075662797608909232

`A000195((n+7)*A328572(n))`
-/

namespace A328577.P6075662797608909232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 ((n + 7 : ℤ) * A328572 n).toNat

end

end A328577.P6075662797608909232

/-! ## A328577.P11057631316284375824

`A099564(n)+A055642(A099560(n))`
-/

namespace A328577.P11057631316284375824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099564 n + A055642 (A099560 n).toNat

end

end A328577.P11057631316284375824

/-! ## A328577.P8499400137038555191

`char[A007318(n)]+A125173(A328572(n))+1`
-/

namespace A328577.P8499400137038555191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A125173 (A328572 n).toNat + 1)

end

end A328577.P8499400137038555191

/-! ## A328577.P16411924803959037429

`A125173(A328572(n))+A020639(A000010(n+2))`
-/

namespace A328577.P16411924803959037429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125173 (A328572 n).toNat + A020639 (A000010 (n + 2)).toNat

end

end A328577.P16411924803959037429

/-!
# A328578: Index of the least prime not dividing A276086(A276086(n)): a(n) = A257993(A276087(n)).

The programs for A328578, there is no canonical definition to state claims against.
-/

/-! ## A328578.P15755157363224469538

`A000720(A328579(n))`
-/

namespace A328578.P15755157363224469538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A328579 n).toNat

end

end A328578.P15755157363224469538

/-! ## A328578.P10105432728828737803

`A328570(A276086(n))`
-/

namespace A328578.P10105432728828737803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328570 (A276086 n).toNat

end

end A328578.P10105432728828737803

/-! ## A328578.P517435161112202378

`A055396(A328763(n))`
-/

namespace A328578.P517435161112202378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A328763 n).toNat

end

end A328578.P517435161112202378

/-! ## A328578.P14545407316775729051

`A257993(A276087(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A328578.P14545407316775729051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257993 (A276087 n).toNat

end

end A328578.P14545407316775729051

/-! ## A328578.P6883997050230857799

`A055396(A328579(n)²)`
-/

namespace A328578.P6883997050230857799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A328579 n ^ 2).toNat

end

end A328578.P6883997050230857799

/-! ## A328578.P4260842160647595337

`A252735(A328579(n)²)+1`
-/

namespace A328578.P4260842160647595337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252735 (A328579 n ^ 2).toNat + 1

end

end A328578.P4260842160647595337

/-! ## A328578.P12506206310830656932

`A252735(2*A328579(n))+1`
-/

namespace A328578.P12506206310830656932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252735 (2 * A328579 n).toNat + 1

end

end A328578.P12506206310830656932

/-! ## A328578.P3104969246635380068

`A055396(A328579(2*n-n))`
-/

namespace A328578.P3104969246635380068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A328579 (2 * n - n)).toNat

end

end A328578.P3104969246635380068

/-! ## A328578.P11324119828474793610

`A055396(A328570(n)*A328579(n))`
-/

namespace A328578.P11324119828474793610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A328570 n * A328579 n).toNat

end

end A328578.P11324119828474793610

/-! ## A328578.P16989487550227677052

`A055396(A328579(n)*A328579(n))`
-/

namespace A328578.P16989487550227677052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A328579 n * A328579 n).toNat

end

end A328578.P16989487550227677052

/-! ## A328578.P8126926220915452118

`A328570(A328843(n)%2*A328843(n))`
-/

namespace A328578.P8126926220915452118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328570 (Int.tmod (A328843 n) 2 * A328843 n).toNat

end

end A328578.P8126926220915452118

/-!
# A328579: a(n) = A053669(A276086(A276086(n))).

The programs for A328579, there is no canonical definition to state claims against.
-/

/-! ## A328579.P483704390716361552

`A000040(A328578(n))`
-/

namespace A328579.P483704390716361552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A328578 n).toNat

end

end A328579.P483704390716361552

/-! ## A328579.P183186255245536947

`A326810(A276086(n))`
-/

namespace A328579.P183186255245536947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326810 (A276086 n).toNat

end

end A328579.P183186255245536947

/-! ## A328579.P14879377681578863245

`A053669(A276087(n))`
-/

namespace A328579.P14879377681578863245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (A276087 n).toNat

end

end A328579.P14879377681578863245

/-! ## A328579.P2368772477838411020

`A053669(A276086(A276086(n)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A328579.P2368772477838411020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (A276086 (A276086 n).toNat).toNat

end

end A328579.P2368772477838411020

/-! ## A328579.P2927311213801036528

`A008578(A328578(n)+1)`
-/

namespace A328579.P2927311213801036528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A328578 n + 1).toNat

end

end A328579.P2927311213801036528

/-! ## A328579.P17054623329355656346

`A015919(A328578(n)+1)`
-/

namespace A328579.P17054623329355656346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (A328578 n + 1).toNat

end

end A328579.P17054623329355656346

/-! ## A328579.P3990471699206351152

`A324050(A328578(n)+1)`
-/

namespace A328579.P3990471699206351152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324050 (A328578 n + 1).toNat

end

end A328579.P3990471699206351152

/-! ## A328579.P1931489026190044781

`A109763(2*A328578(n))`
-/

namespace A328579.P1931489026190044781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109763 (2 * A328578 n).toNat

end

end A328579.P1931489026190044781

/-! ## A328579.P11209336149554542243

`A109763(A328578(n)+A328578(n))`
-/

namespace A328579.P11209336149554542243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109763 (A328578 n + A328578 n).toNat

end

end A328579.P11209336149554542243

/-! ## A328579.P13343325787820067009

`A118850(A328578(n)%A168101(n))`
-/

namespace A328579.P13343325787820067009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118850 (Int.tmod (A328578 n) (A168101 n)).toNat

end

end A328579.P13343325787820067009

/-! ## A328579.P15838419076542491553

`A109763(A328578(n)-(1-A328578(n)))`
-/

namespace A328579.P15838419076542491553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109763 (A328578 n - (1 - A328578 n)).toNat

end

end A328579.P15838419076542491553

/-! ## A328579.P17505288631089290457

`A020639(A328763(n)%A069482(n+1))`
-/

namespace A328579.P17505288631089290457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.tmod (A328763 n) (A069482 (n + 1))).toNat

end

end A328579.P17505288631089290457

/-!
# A328580: a(n) is the largest primorial dividing A276086(n), where A276086 converts the primorial base expansion of n into its prime product form.

The programs for A328580, there is no canonical definition to state claims against.
-/

/-! ## A328580.P10758082135328210794

`A276086(n)-A328476(n)`
-/

namespace A328580.P10758082135328210794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n - A328476 n

end

end A328580.P10758082135328210794

/-! ## A328580.P10685532496574563962

`A276086(n)/A328475(n)`
-/

namespace A328580.P10685532496574563962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276086 n : ℚ) / (A328475 n : ℚ)

end

end A328580.P10685532496574563962

/-! ## A328580.P7072049041738398910

`A053589(A276086(n))`
-/

namespace A328580.P7072049041738398910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053589 (A276086 n).toNat

end

end A328580.P7072049041738398910

/-! ## A328580.P1681327937462945452

`A066838(A326810(n))`
-/

namespace A328580.P1681327937462945452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066838 (A326810 n).toNat

end

end A328580.P1681327937462945452

/-! ## A328580.P5829845846617907021

`A328479(A328571(n))`
-/

namespace A328580.P5829845846617907021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328479 (A328571 n).toNat

end

end A328580.P5829845846617907021

/-! ## A328580.P15122328248596130409

`A328571(n)/A328573(n)`
-/

namespace A328580.P15122328248596130409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328571 n : ℚ) / (A328573 n : ℚ)

end

end A328580.P15122328248596130409

/-! ## A328580.P4734355567175686306

`A002110(A328570(n)-A328569(2*n))`
-/

namespace A328580.P4734355567175686306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (A328570 n - A328569 (2 * n)).toNat

end

end A328580.P4734355567175686306

/-! ## A328580.P15291722068174524378

`A276086(n)/(A328572(n)*A328573(n))`
-/

namespace A328580.P15291722068174524378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276086 n : ℚ) / (A328572 n * A328573 n : ℚ)

end

end A328580.P15291722068174524378

/-! ## A328580.P10353781918587435484

`(A328844(n)+A328843(n))/A328475(n)`
-/

namespace A328580.P10353781918587435484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328844 n + A328843 n : ℚ) / (A328475 n : ℚ)

end

end A328580.P10353781918587435484

/-! ## A328580.P8840338194246533167

`A053589(2*A328571(n)-A328571(n))`
-/

namespace A328580.P8840338194246533167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053589 (2 * A328571 n - A328571 n).toNat

end

end A328580.P8840338194246533167

/-! ## A328580.P7516211669469744382

`A053589(A053589(n+1)*A328571(n))`
-/

namespace A328580.P7516211669469744382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053589 (A053589 (n + 1) * A328571 n).toNat

end

end A328580.P7516211669469744382

/-!
# A328581: Product of nonzero digits in primorial base expansion of n.

The programs for A328581, there is no canonical definition to state claims against.
-/

/-! ## A328581.P9953483843636873755

`A005361(A276086(n))`
-/

namespace A328581.P9953483843636873755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A276086 n).toNat

end

end A328581.P9953483843636873755

/-! ## A328581.P2137244728757992122

`A276088(n)*a(A276093(n))` with `a(0)=1`
-/

namespace A328581.P2137244728757992122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A276088 n * a (A276093 n).toNat

end

end A328581.P2137244728757992122

/-! ## A328581.P4360898601779513237

`∏{digits}[A049345(n), A028310(#)]`
-/

namespace A328581.P4360898601779513237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049345 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A028310 x).prod

end

end A328581.P4360898601779513237

/-! ## A328581.P18299139129518918303

`∏{digits}[A049345(n), #^A099563(A034968(#))]`
-/

namespace A328581.P18299139129518918303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049345 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => (x : ℚ) ^ (A099563 (A034968 x).toNat : ℤ)).prod

end

end A328581.P18299139129518918303

/-! ## A328581.P11380017058253177598

`A003963(A328835(n))`
-/

namespace A328581.P11380017058253177598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A328835 n).toNat

end

end A328581.P11380017058253177598

/-! ## A328581.P5473726653441426832

`∏{e}[A278226(n), #]`
-/

namespace A328581.P5473726653441426832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278226 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A328581.P5473726653441426832

/-! ## A328581.P16365150334546511706

`A051801(A049345(n))`
-/

namespace A328581.P16365150334546511706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (A049345 n).toNat

end

end A328581.P16365150334546511706

/-! ## A328581.P6511367420431243436

`∏{e}[A328572(n), #+1]`
-/

namespace A328581.P6511367420431243436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328572 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A328581.P6511367420431243436

/-! ## A328581.P10473198573459175409

`A005361(A278226(n))`
-/

namespace A328581.P10473198573459175409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A278226 n).toNat

end

end A328581.P10473198573459175409

/-! ## A328581.P1405172864821118963

`A227349(A277022(n))`
-/

namespace A328581.P1405172864821118963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227349 (A277022 n).toNat

end

end A328581.P1405172864821118963

/-! ## A328581.P15743610594595573414

`A000005(A328572(n))`
-/

namespace A328581.P15743610594595573414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A328572 n).toNat

end

end A328581.P15743610594595573414

/-! ## A328581.P1381629099224596427

`A000005(A328575(or(1, n)))`
-/

namespace A328581.P1381629099224596427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A328575 (Nat.lor 1 n)).toNat

end

end A328581.P1381629099224596427

/-! ## A328581.P5310928626792548541

`A000005(A328575(A109613(n)))`
-/

namespace A328581.P5310928626792548541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A328575 (A109613 n).toNat).toNat

end

end A328581.P5310928626792548541

/-! ## A328581.P7324578073648750111

`A000005(A276086(A328842(n)))`
-/

namespace A328581.P7324578073648750111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A276086 (A328842 n).toNat).toNat

end

end A328581.P7324578073648750111

/-! ## A328581.P12597672941109091882

`A000005(A328575(A063196(n+1)))`
-/

namespace A328581.P12597672941109091882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A328575 (A063196 (n + 1)).toNat).toNat

end

end A328581.P12597672941109091882

/-! ## A328581.P12736478082890377591

`A000005(A276086(n-A328841(n)))`
-/

namespace A328581.P12736478082890377591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A276086 ((n : ℤ) - A328841 n).toNat).toNat

end

end A328581.P12736478082890377591

/-! ## A328581.P3401017283829754262

`A000005(A276086(n)/A328571(n))`
-/

namespace A328581.P3401017283829754262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A276086 n : ℚ) / (A328571 n : ℚ))).toNat

end

end A328581.P3401017283829754262

/-! ## A328581.P652916512619599142

`A000005(A328475(n)/A328573(n))`
-/

namespace A328581.P652916512619599142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A328475 n : ℚ) / (A328573 n : ℚ))).toNat

end

end A328581.P652916512619599142

/-! ## A328581.P1304359405989449356

`A000005(gcd(A276086(n), A327860(n)))`
-/

namespace A328581.P1304359405989449356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (A276086 n) (A327860 n))

end

end A328581.P1304359405989449356

/-! ## A328581.P10482266513217799572

`∏{e}[A351225(n)+n, #]`
-/

namespace A328581.P10482266513217799572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351225 n + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A328581.P10482266513217799572

/-!
# A328582: Least common multiple of nonzero digits in primorial base expansion of n.

The programs for A328582, there is no canonical definition to state claims against.
-/

/-! ## A328582.P4773358757760382266

`lcm(a(A276093(n)), A276088(n))` with `a(0)=1`
-/

namespace A328582.P4773358757760382266
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (A276093 n).toNat : ℤ) (A276088 n)

end

end A328582.P4773358757760382266

/-! ## A328582.P5363805776350283589

`A316431(lcm(2, A328835(n)))`
-/

namespace A328582.P5363805776350283589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316431 (Int.lcm 2 (A328835 n))

end

end A328582.P5363805776350283589

/-! ## A328582.P17006728854312401180

`A316431(2*A328835(n))`
-/

namespace A328582.P17006728854312401180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316431 (2 * A328835 n).toNat

end

end A328582.P17006728854312401180

/-! ## A328582.P14734782025923253039

`A290103(A328835(n))`
-/

namespace A328582.P14734782025923253039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (A328835 n).toNat

end

end A328582.P14734782025923253039

/-! ## A328582.P8750203967805957192

`A052429(A049345(round(sqrt(n²+1))))`
-/

namespace A328582.P8750203967805957192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052429 (A049345 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat).toNat

end

end A328582.P8750203967805957192

/-! ## A328582.P3958014240802541115

`A284569(A277022(n))`
-/

namespace A328582.P3958014240802541115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284569 (A277022 n).toNat

end

end A328582.P3958014240802541115

/-! ## A328582.P16672802244232962153

`A328581(n)/A284562(A277022(n))`
-/

namespace A328582.P16672802244232962153
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328581 n : ℚ) / (A284562 (A277022 n).toNat : ℚ)

end

end A328582.P16672802244232962153

/-! ## A328582.P9676522448750132827

`A072411(A278226(n))`
-/

namespace A328582.P9676522448750132827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072411 (A278226 n).toNat

end

end A328582.P9676522448750132827

/-!
# A328583: a(n) = A023900(A276086(n)).

The programs for A328583, there is no canonical definition to state claims against.
-/

/-! ## A328583.P14223223472671482106

`A023900(A276086(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A328583.P14223223472671482106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023900 (A276086 n).toNat

end

end A328583.P14223223472671482106

/-! ## A328583.P13996298421211666403

`∏{p}[A328571(n), 1-#]`
-/

namespace A328583.P13996298421211666403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328571 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (1 - (p : ℤ))

end

end A328583.P13996298421211666403

/-! ## A328583.P5374335302899116211

`A023900(A328571(n))`
-/

namespace A328583.P5374335302899116211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023900 (A328571 n).toNat

end

end A328583.P5374335302899116211

/-! ## A328583.P8993455988502130491

`A061020(A276086(n)/A328572(n))`
-/

namespace A328583.P8993455988502130491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061020 (SequenceMachineLib.roundAway ((A276086 n : ℚ) / (A328572 n : ℚ))).toNat

end

end A328583.P8993455988502130491

/-! ## A328583.P16101036334043616454

`A097945(A328571(n)%A001546(n))`
-/

namespace A328583.P16101036334043616454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097945 (Int.tmod (A328571 n) (A001546 n)).toNat

end

end A328583.P16101036334043616454

/-! ## A328583.P8096048088641268752

`A323915(A277022(n))`
-/

namespace A328583.P8096048088641268752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323915 (A277022 n).toNat

end

end A328583.P8096048088641268752

/-! ## A328583.P13271843103757107970

`∏{p}[A276086(n), -A000010(#)]`
-/

namespace A328583.P13271843103757107970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (-A000010 p)

end

end A328583.P13271843103757107970

/-! ## A328583.P12953041392688479510

`∏{p}[A276086(n), 1-A006530(#)]`
-/

namespace A328583.P12953041392688479510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (1 - A006530 p)

end

end A328583.P12953041392688479510

/-! ## A328583.P6567586584196868047

`∏{p}[A276086(n), 1-A014963(#)]`
-/

namespace A328583.P6567586584196868047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (1 - A014963 p)

end

end A328583.P6567586584196868047

/-!
# A328584: Least common multiple of n and A276086(n).

The programs for A328584, there is no canonical definition to state claims against.
-/

/-! ## A328584.P2836142294861256106

`lcm(n, A276086(n))`
-/

namespace A328584.P2836142294861256106
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A276086 n)

end

end A328584.P2836142294861256106

/-! ## A328584.P4730804951218811997

`A324580(n)/A324198(n)`
-/

namespace A328584.P4730804951218811997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324580 n : ℚ) / (A324198 n : ℚ)

end

end A328584.P4730804951218811997

/-! ## A328584.P869477787202726171

`n*A351251(n)`
-/

namespace A328584.P869477787202726171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A351251 n

end

end A328584.P869477787202726171

/-! ## A328584.P6850812915953566703

`n*A276086(A351253(n))`
-/

namespace A328584.P6850812915953566703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A276086 (A351253 n).toNat

end

end A328584.P6850812915953566703

/-! ## A328584.P119447015942870402

`A276086(n)*A351250(n)`
-/

namespace A328584.P119447015942870402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n * A351250 n

end

end A328584.P119447015942870402

/-! ## A328584.P4480757807703838879

`n*A276086(n-A351254(n))`
-/

namespace A328584.P4480757807703838879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A276086 ((n : ℤ) - A351254 n).toNat

end

end A328584.P4480757807703838879

/-! ## A328584.P9550391791474487705

`n*A276086(n)/A324198(n)`
-/

namespace A328584.P9550391791474487705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((A276086 n : ℚ) / (A324198 n : ℚ))

end

end A328584.P9550391791474487705

/-! ## A328584.P18231300773134105975

`A324580(n)/gcd(n, A276086(n))`
-/

namespace A328584.P18231300773134105975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324580 n : ℚ) / (Int.gcd (n : ℤ) (A276086 n) : ℚ)

end

end A328584.P18231300773134105975

/-! ## A328584.P6498467205516360545

`A324580(n)/A276086(A351254(n))`
-/

namespace A328584.P6498467205516360545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324580 n : ℚ) / (A276086 (A351254 n).toNat : ℚ)

end

end A328584.P6498467205516360545

/-! ## A328584.P577623941178446135

`A327858(n)*A351231(n)*A351250(n)`
-/

namespace A328584.P577623941178446135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327858 n * A351231 n * A351250 n

end

end A328584.P577623941178446135

/-! ## A328584.P2020398828440915527

`n*A276086(n)/A276086(A351254(n))`
-/

namespace A328584.P2020398828440915527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((A276086 n : ℚ) / (A276086 (A351254 n).toNat : ℚ))

end

end A328584.P2020398828440915527

/-!
# A328585: Numbers n for which A257993(n) is equal to A257993(A276086(A276086(n))), where A276086 converts the primorial base expansion of n into its prime product form, and A257993 returns the index of the least prime not present in its argument.

The programs for A328585, there is no canonical definition to state claims against.
-/

/-! ## A328585.P11056465855454769266

`eq[0, A328590(n+1)]+1`
-/

namespace A328585.P11056465855454769266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328590 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A328585.P11056465855454769266

/-! ## A328585.P18316960039080991089

`∪[A328586(n+1), Δ[n²]]`
-/

namespace A328585.P18316960039080991089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328586 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A328585.P18316960039080991089

/-! ## A328585.P13332307427695762961

`record[gcd(n+2, A328590(n+2))]`
-/

namespace A328585.P13332307427695762961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A328590 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328585.P13332307427695762961

/-! ## A328585.P18381040405646076536

`record[n+1-and(4, A000005(A328839(n+1)))]`
-/

namespace A328585.P18381040405646076536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - Int.land 4 (A000005 (A328839 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328585.P18381040405646076536

/-! ## A328585.P793315478267507478

`record[n+1-A001414(A328590(n+1)²+1)]`
-/

namespace A328585.P793315478267507478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A001414 (A328590 (n + 1) ^ 2 + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328585.P793315478267507478

/-! ## A328585.P14515160453773420139

`record[n+1-lcm(A007401(n+1), A328590(n+1))]`
-/

namespace A328585.P14515160453773420139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Int.lcm (A007401 (n + 1)) (A328590 (n + 1)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328585.P14515160453773420139

/-! ## A328585.P13821827062463931000

`eq[A059841(n²), A358842(n)]`
-/

namespace A328585.P13821827062463931000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358842 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328585.P13821827062463931000

/-! ## A328585.P14270220554653645944

`eq[A117188(n²), A358842(n)]`
-/

namespace A328585.P14270220554653645944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117188 (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358842 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328585.P14270220554653645944

/-!
# A328586: Even numbers n for which A257993(n) is equal to A257993(A276086(A276086(n))), where A276086 converts the primorial base expansion of n into its prime product form, and A257993 returns the index of the least prime not present in its argument.

The programs for A328586, there is no canonical definition to state claims against.
-/

/-! ## A328586.P1608650232163241013

`A103517(eq[0, A328591(n+1)])`
-/

namespace A328586.P1608650232163241013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A328586.P1608650232163241013

/-! ## A328586.P15856544764154390271

`∩[2*n, A328585(n+1)]`
-/

namespace A328586.P15856544764154390271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328585 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328586.P15856544764154390271

/-! ## A328586.P13881718982324377181

`∩[A328585(n+1), A005843(n)]`
-/

namespace A328586.P13881718982324377181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328585 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328586.P13881718982324377181

/-! ## A328586.P17855939289198888439

`∩[A328585(n+1), A008588(n)]`
-/

namespace A328586.P17855939289198888439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328585 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328586.P17855939289198888439

/-! ## A328586.P45943608643540443

`∩[A328585(n+1), A020739(n)]`
-/

namespace A328586.P45943608643540443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328585 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328586.P45943608643540443

/-! ## A328586.P8855030909403950756

`∩[A328585(n+1), A064466(n)]`
-/

namespace A328586.P8855030909403950756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328585 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064466 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328586.P8855030909403950756

/-! ## A328586.P4235476851295573885

`∩[A328585(n+1), A356609(n+1)]`
-/

namespace A328586.P4235476851295573885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328585 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328586.P4235476851295573885

/-! ## A328586.P16332209095800887343

`eq[A059841(n), A328590(n+1)]+1`
-/

namespace A328586.P16332209095800887343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328590 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A328586.P16332209095800887343

/-! ## A328586.P11329392158827813243

`eq[A257993(2*(n+1)), A328578(n+1)]+1`
-/

namespace A328586.P11329392158827813243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257993 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328578 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A328586.P11329392158827813243

/-! ## A328586.P17049645363784777458

`A014681(eq[A059841(n), A328590(n+1)])`
-/

namespace A328586.P17049645363784777458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328590 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A328586.P17049645363784777458

/-! ## A328586.P4476807655552417729

`∩[A328622(A328623(3*n)), A328633(n+1)]`
-/

namespace A328586.P4476807655552417729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328622 (A328623 (3 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328633 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328586.P4476807655552417729

/-!
# A328587: Numbers n for which A257993(A276086(A276086(n))) is less than A257993(n), where A276086 converts the primorial base expansion of n into its prime product form, and A257993 returns the index of the least prime not present in its argument.

The programs for A328587, there is no canonical definition to state claims against.
-/

/-! ## A328587.P45540182684309461

`∪[A328762(n+1), A328632(n+2)]`
-/

namespace A328587.P45540182684309461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328632 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A328587.P45540182684309461

/-! ## A328587.P154804945617122309

`lt[A328590(n+2), 0]+2`
-/

namespace A328587.P154804945617122309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328590 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A328587.P154804945617122309

/-! ## A328587.P12051486811566761360

`lt[A328590(A028310(n)), 0]`
-/

namespace A328587.P12051486811566761360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328590 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A328587.P12051486811566761360

/-! ## A328587.P3600998256269416519

`eq[A100051(n), A115951(A328578(n))]`
-/

namespace A328587.P3600998256269416519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100051 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115951 (A328578 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328587.P3600998256269416519

/-! ## A328587.P17556575234846784450

`eq[A067896(n), A351225(A328579(n))]`
-/

namespace A328587.P17556575234846784450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067896 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351225 (A328579 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328587.P17556575234846784450

/-! ## A328587.P6047149079448135104

`lt[A328578(n), A257993(A028310(n))]`
-/

namespace A328587.P6047149079448135104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328578 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257993 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A328587.P6047149079448135104

/-! ## A328587.P7671517925096189647

`lt[A328590(A233583(n+1)), 0]`
-/

namespace A328587.P7671517925096189647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328590 (A233583 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A328587.P7671517925096189647

/-!
# A328588: Numbers n for which A257993(A276086(A276086(n))) is larger than A257993(n), where A276086 converts the primorial base expansion of n into its prime product form, and A257993 returns the index of the least prime not present in its argument.

The programs for A328588, there is no canonical definition to state claims against.
-/

/-! ## A328588.P12271108216847858382

`lt[0, A328590(n+1)]+1`
-/

namespace A328588.P12271108216847858382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328590 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A328588.P12271108216847858382

/-! ## A328588.P4620307169630735428

`∪[A047235(n+1), A328589(n+1)]`
-/

namespace A328588.P4620307169630735428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A328588.P4620307169630735428

/-! ## A328588.P5918837744309836843

`lt[0, A328590(A028310(n))]`
-/

namespace A328588.P5918837744309836843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328590 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A328588.P5918837744309836843

/-! ## A328588.P18402636849208449999

`A014681(lt[0, A328590(n+1)])`
-/

namespace A328588.P18402636849208449999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328590 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A328588.P18402636849208449999

/-! ## A328588.P3965231632848389977

`lt[A257993(A233583(n+1)), A328578(n)]`
-/

namespace A328588.P3965231632848389977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257993 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328578 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A328588.P3965231632848389977

/-! ## A328588.P3742496590716536883

`lt[A257993(A328613(n)), A328578(n)]`
-/

namespace A328588.P3742496590716536883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257993 (A328613 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328578 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A328588.P3742496590716536883

/-!
# A328589: Numbers n that are multiples of 6 and for which A257993(A276086(A276086(n))) is larger than A257993(n), where A276086 converts the primorial base expansion of n into its prime product form, and A257993 returns the index of the least prime not present in its argument.

The programs for A328589, there is no canonical definition to state claims against.
-/

/-! ## A328589.P9630772319256549240

`∩[A328588(n+1), A008458(n)]`
-/

namespace A328589.P9630772319256549240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328589.P9630772319256549240

/-! ## A328589.P9612772761345448336

`∩[A328588(n+1), A008486(n)]`
-/

namespace A328589.P9612772761345448336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328589.P9612772761345448336

/-! ## A328589.P9486885257020515749

`∩[A328588(n+1), A008585(n)]`
-/

namespace A328589.P9486885257020515749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328589.P9486885257020515749

/-! ## A328589.P10315130666005436529

`∩[A328588(n+1), A008588(n)]`
-/

namespace A328589.P10315130666005436529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328589.P10315130666005436529

/-! ## A328589.P6659863304126307458

`∩[A328588(n+1), A008597(n)]`
-/

namespace A328589.P6659863304126307458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008597 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328589.P6659863304126307458

/-! ## A328589.P11700462356724602150

`∩[A328588(n+1), A249674(n)]`
-/

namespace A328589.P11700462356724602150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328589.P11700462356724602150

/-! ## A328589.P6481868280540025267

`∩[A328588(n+1), A319451(n)]`
-/

namespace A328589.P6481868280540025267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319451 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328589.P6481868280540025267

/-! ## A328589.P15450035599452101770

`∩[A047225(n+1), A328588(n+1)]`
-/

namespace A328589.P15450035599452101770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047225 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328589.P15450035599452101770

/-! ## A328589.P3372572234306043240

`∩[A047264(n+1), A328588(n+1)]`
-/

namespace A328589.P3372572234306043240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047264 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328589.P3372572234306043240

/-! ## A328589.P4081609755150447185

`∩[A267747(n+1), A328588(n+1)]`
-/

namespace A328589.P4081609755150447185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267747 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328589.P4081609755150447185

/-! ## A328589.P14335796089891254720

`∩[A358843(n+1), A328588(n+1)]`
-/

namespace A328589.P14335796089891254720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328589.P14335796089891254720

/-! ## A328589.P14764565543871433021

`∩[A315670(n), A328588(n+1)]`
-/

namespace A328589.P14764565543871433021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315670 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328589.P14764565543871433021

/-! ## A328589.P13265362479951744341

`∩[A314742(n), A328588(n+1)]`
-/

namespace A328589.P13265362479951744341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314742 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328589.P13265362479951744341

/-! ## A328589.P4276711418092341614

`∩[A315075(n), A328588(n+1)]`
-/

namespace A328589.P4276711418092341614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315075 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328589.P4276711418092341614

/-! ## A328589.P12158770313323183761

`∩[A314015(n), A328588(n+1)]`
-/

namespace A328589.P12158770313323183761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314015 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328589.P12158770313323183761

/-! ## A328589.P14149446420330131631

`∩[A315405(n), A328588(n+1)]`
-/

namespace A328589.P14149446420330131631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315405 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328589.P14149446420330131631

/-! ## A328589.P11421366260836683736

`∩[A328588(n+1), A314674(n)]`
-/

namespace A328589.P11421366260836683736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314674 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328589.P11421366260836683736

/-!
# A328590: a(n) = A328578(n) - A257993(n).

The programs for A328590, there is no canonical definition to state claims against.
-/

/-! ## A328590.P8827274293649045110

`A328578(n+1)-A257993(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A328590.P8827274293649045110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328578 (n + 1) - A257993 (n + 1)

end

end A328590.P8827274293649045110

/-! ## A328590.P3598852034077621175

`∑{d}[n+1, A063524(#-1)*A328591((n+1)/#)]`
-/

namespace A328590.P3598852034077621175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063524 (d - 1) * A328591 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328590.P3598852034077621175

/-! ## A328590.P11743068825131937785

`A000035(n)*A328591(A008619(n))`
-/

namespace A328590.P11743068825131937785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A328591 (A008619 n).toNat

end

end A328590.P11743068825131937785

/-! ## A328590.P11650310951591078343

`A000035(n)*A328591(A032742(n+1))`
-/

namespace A328590.P11650310951591078343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A328591 (A032742 (n + 1)).toNat

end

end A328590.P11650310951591078343

/-! ## A328590.P5290403576413289808

`A000720(A328579(n+1))-A257993(n+1)`
-/

namespace A328590.P5290403576413289808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A328579 (n + 1)).toNat - A257993 (n + 1)

end

end A328590.P5290403576413289808

/-! ## A328590.P2800621815659454229

`A252735(A328579(n+1))-A276084(n+1)`
-/

namespace A328590.P2800621815659454229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252735 (A328579 (n + 1)).toNat - A276084 (n + 1)

end

end A328590.P2800621815659454229

/-! ## A328590.P48114504720213078

`A328570(A328843(n+1))-A257993(n+1)`
-/

namespace A328590.P48114504720213078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328570 (A328843 (n + 1)).toNat - A257993 (n + 1)

end

end A328590.P48114504720213078

/-! ## A328590.P10001730467780591709

`A328570(A276086(n+1))-A257993(n+1)`
-/

namespace A328590.P10001730467780591709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328570 (A276086 (n + 1)).toNat - A257993 (n + 1)

end

end A328590.P10001730467780591709

/-! ## A328590.P3156211251193697891

`A328570(A276086(n+1))-(A276084(n+1)+1)`
-/

namespace A328590.P3156211251193697891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328570 (A276086 (n + 1)).toNat - (A276084 (n + 1) + 1)

end

end A328590.P3156211251193697891

/-!
# A328591: Even bisection of A328590: a(n) = A328578(2n) - A257993(2n).

The programs for A328591, there is no canonical definition to state claims against.
-/

/-! ## A328591.P7440596262623930377

`A328590(2*(n+1))`
-/

namespace A328591.P7440596262623930377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328590 (2 * (n + 1))

end

end A328591.P7440596262623930377

/-! ## A328591.P11605218982399631762

`A328578(2*(n+1))-A257993(2*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A328591.P11605218982399631762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328578 (2 * (n + 1)) - A257993 (2 * (n + 1))

end

end A328591.P11605218982399631762

/-! ## A328591.P10892960885923877403

`A328590(A103517(n))+A000007(n)`
-/

namespace A328591.P10892960885923877403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328590 (A103517 n).toNat + A000007 n

end

end A328591.P10892960885923877403

/-! ## A328591.P4967870094186623068

`A328590(A103517(n))+and(1, A053191(n+1))`
-/

namespace A328591.P4967870094186623068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328590 (A103517 n).toNat + Int.land 1 (A053191 (n + 1))

end

end A328591.P4967870094186623068

/-! ## A328591.P9695691133603607685

`A328590(A004275(n+2))%(n+2)`
-/

namespace A328591.P9695691133603607685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328590 (A004275 (n + 2)).toNat) (n + 2 : ℤ)

end

end A328591.P9695691133603607685

/-! ## A328591.P14007480126372689876

`or(A000007(n), A328590(A004275(n+2)))`
-/

namespace A328591.P14007480126372689876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A328590 (A004275 (n + 2)).toNat)

end

end A328591.P14007480126372689876

/-!
# A328592: Numbers whose binary expansion has all different lengths of runs of 1's.

The programs for A328592, there is no canonical definition to state claims against.
-/

/-! ## A328592.P11703513290169552703

`eq[1, ∏{e}[A246029(n), #]]`
-/

namespace A328592.P11703513290169552703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246029 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328592.P11703513290169552703

/-! ## A328592.P15533860613508545552

`eq[0, A046660(A072272(n))]`
-/

namespace A328592.P15533860613508545552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (A072272 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328592.P15533860613508545552

/-! ## A328592.P15508056423989380494

`eq[0, A046660(A246029(n))]`
-/

namespace A328592.P15508056423989380494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (A246029 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328592.P15508056423989380494

/-! ## A328592.P11537989025401014255

`eq[0, A078771(A253069(n))]`
-/

namespace A328592.P11537989025401014255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078771 (A253069 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328592.P11537989025401014255

/-! ## A328592.P9216556360982538417

`eq[0, A380955(A255454(n))]`
-/

namespace A328592.P9216556360982538417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380955 (A255454 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328592.P9216556360982538417

/-! ## A328592.P5416425110222918622

`lt[A335452(A278222(n)), 2]`
-/

namespace A328592.P5416425110222918622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335452 (A278222 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A328592.P5416425110222918622

/-! ## A328592.P9848074143502289900

`eq[1, A327499(A005940(n+1))]`
-/

namespace A328592.P9848074143502289900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327499 (A005940 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328592.P9848074143502289900

/-! ## A328592.P2999168656871598231

`eq[1, A008966(A246029(2*n))]`
-/

namespace A328592.P2999168656871598231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A246029 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328592.P2999168656871598231

/-! ## A328592.P9725076902120508392

`eq[0, A056170(A151885(2*n+1))]`
-/

namespace A328592.P9725076902120508392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A151885 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328592.P9725076902120508392

/-! ## A328592.P6682214914145179765

`eq[A001221(A246029(n)), A069010(n)]`
-/

namespace A328592.P6682214914145179765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A246029 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328592.P6682214914145179765

/-!
# A328593: Numbers whose binary indices have no consecutive divisible parts.

The programs for A328593, there is no canonical definition to state claims against.
-/

/-! ## A328593.P9381009368396105353

`record[floor(n/6)*A104234(n)]`
-/

namespace A328593.P9381009368396105353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 6⌋ * A104234 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328593.P9381009368396105353

/-! ## A328593.P2354320541786274830

`lt[A273104(3*(n+1)), Δ[A269715(3*n)]]`
-/

namespace A328593.P2354320541786274830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273104 (3 * (n + 1))

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269715 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A328593.P2354320541786274830

/-! ## A328593.P9200707978311768168

`lt[A117078(A145271(2*n+1)), A271249(n)]`
-/

namespace A328593.P9200707978311768168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117078 (A145271 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271249 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A328593.P9200707978311768168

/-!
# A328594: Numbers whose binary expansion is aperiodic.

The programs for A328594, there is no canonical definition to state claims against.
-/

/-! ## A328594.P17898714727612029574

`eq[1, A138904(n)]`
-/

namespace A328594.P17898714727612029574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138904 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328594.P17898714727612029574

/-! ## A328594.P2887660977038735387

`comp[A121016(n+1)]`
-/

namespace A328594.P2887660977038735387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121016 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A328594.P2887660977038735387

/-! ## A328594.P16539857479071116375

`lt[n, exp(A302291(n))]`
-/

namespace A328594.P16539857479071116375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (A302291 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A328594.P16539857479071116375

/-! ## A328594.P2834208138898906436

`lt[sqrt(n/2), A341766(n)]`
-/

namespace A328594.P2834208138898906436
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((n : ℚ) / 2 : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341766 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A328594.P2834208138898906436

/-! ## A328594.P12459371777586147899

`eq[a(and(n, n-1))+1, A333632(n)]` with `a(0)=0`
-/

namespace A328594.P12459371777586147899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333632 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328594.P12459371777586147899

/-! ## A328594.P8878442866738623159

`lt[A138904(A325829(n)), 2]`
-/

namespace A328594.P8878442866738623159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138904 (A325829 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A328594.P8878442866738623159

/-! ## A328594.P6962024697690759063

`eq[A000120(n), A333632(n)]`
-/

namespace A328594.P6962024697690759063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333632 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328594.P6962024697690759063

/-! ## A328594.P18134686773517207377

`eq[A070939(n), A302291(n)]`
-/

namespace A328594.P18134686773517207377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302291 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328594.P18134686773517207377

/-! ## A328594.P669748470311466165

`lt[log(A028310(n)), A302291(n)]`
-/

namespace A328594.P669748470311466165
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A028310 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302291 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A328594.P669748470311466165

/-! ## A328594.P7219324735354219579

`lt[A000523(n+1), A302291(n)+1]`
-/

namespace A328594.P7219324735354219579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302291 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A328594.P7219324735354219579

/-!
# A328595: Numbers whose reversed binary expansion is a necklace.

The programs for A328595, there is no canonical definition to state claims against.
-/

/-! ## A328595.P10929731813254368627

`eq[A325401(n+1), A331856(n+1)]+1`
-/

namespace A328595.P10929731813254368627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331856 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A328595.P10929731813254368627

/-! ## A328595.P1246241771854068151

`eq[A030101(n+1), A331856(n+1)]+1`
-/

namespace A328595.P1246241771854068151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331856 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A328595.P1246241771854068151

/-! ## A328595.P16090394241015256372

`eq[1, A001221(A348268(n))]`
-/

namespace A328595.P16090394241015256372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A348268 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328595.P16090394241015256372

/-! ## A328595.P16355995688445298561

`lt[A001221(A348268(n+1)), 2]+1`
-/

namespace A328595.P16355995688445298561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A348268 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A328595.P16355995688445298561

/-! ## A328595.P2035596719675324276

`lt[A014709(n), A014963(A348268(n))]`
-/

namespace A328595.P2035596719675324276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014709 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A348268 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A328595.P2035596719675324276

/-! ## A328595.P11997477268567388290

`lt[A040001(n), A014963(A348268(n))]`
-/

namespace A328595.P11997477268567388290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A348268 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A328595.P11997477268567388290

/-! ## A328595.P4507393797001494275

`lt[A054977(n), A014963(A348268(n))]`
-/

namespace A328595.P4507393797001494275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A348268 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A328595.P4507393797001494275

/-! ## A328595.P4517543838340044593

`lt[A304042(n), A014963(A348268(n))]`
-/

namespace A328595.P4517543838340044593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304042 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A348268 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A328595.P4517543838340044593

/-! ## A328595.P12035590966653913038

`lt[atan(A000040(n+1)), A014963(A348268(n))]`
-/

namespace A328595.P12035590966653913038
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A000040 (n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A348268 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A328595.P12035590966653913038

/-! ## A328595.P16026772330899191443

`∪[A328596(n+1), A334274(n+2)]`
-/

namespace A328595.P16026772330899191443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334274 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A328595.P16026772330899191443

/-!
# A328596: Numbers whose reversed binary expansion is a Lyndon word (aperiodic necklace).

The programs for A328596, there is no canonical definition to state claims against.
-/

/-! ## A328596.P18169201545445297466

`eq[1, A001065(A348268(n))]`
-/

namespace A328596.P18169201545445297466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A348268 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328596.P18169201545445297466

/-! ## A328596.P18381522728008096308

`eq[2, A211100(A145341(n+1))]`
-/

namespace A328596.P18381522728008096308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211100 (A145341 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328596.P18381522728008096308

/-! ## A328596.P14368022347585085038

`lt[A000005(A348268(n+1)), 3]+1`
-/

namespace A328596.P14368022347585085038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A348268 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A328596.P14368022347585085038

/-! ## A328596.P130079680912673834

`eq[2, A001222(A348268(2*n+1))]`
-/

namespace A328596.P130079680912673834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A348268 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328596.P130079680912673834

/-! ## A328596.P13085612688143672789

`∩[A091065(n+1), A328595(n+1)]`
-/

namespace A328596.P13085612688143672789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328595 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328596.P13085612688143672789

/-! ## A328596.P10537717467629952986

`eq[A000007(n), A097974(A348268(n))]`
-/

namespace A328596.P10537717467629952986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097974 (A348268 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328596.P10537717467629952986

/-! ## A328596.P4505221260851942543

`eq[A057427(n+4), A309891(A348268(n))]`
-/

namespace A328596.P4505221260851942543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309891 (A348268 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328596.P4505221260851942543

/-! ## A328596.P14592313681323711547

`lt[A000040(n+1), A014963(A348268(n))²]`
-/

namespace A328596.P14592313681323711547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A348268 n).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A328596.P14592313681323711547

/-! ## A328596.P7917427900440495510

`lt[A000203(n+1), A014963(A348268(n))²]`
-/

namespace A328596.P7917427900440495510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A348268 n).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A328596.P7917427900440495510

/-!
# A328597: Number of necklace compositions of n where every pair of adjacent parts (including the last with the first) is relatively prime.

The programs for A328597, there is no canonical definition to state claims against.
-/

/-! ## A328597.P16034453245788764588

`∑{d}[n+1, A328669(#)]`
-/

namespace A328597.P16034453245788764588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328669 d

end

end A328597.P16034453245788764588

/-! ## A328597.P11582549784035252566

`A318728(A028310(n)+1)-1`
-/

namespace A328597.P11582549784035252566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318728 (A028310 n + 1).toNat - 1

end

end A328597.P11582549784035252566

/-! ## A328597.P6123073166939361075

`A318728(n+1)+A057428(n)`
-/

namespace A328597.P6123073166939361075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318728 (n + 1) + A057428 n

end

end A328597.P6123073166939361075

/-! ## A328597.P4351180298715012151

`A318728(n+1)-A057427(n)`
-/

namespace A328597.P4351180298715012151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318728 (n + 1) - A057427 n

end

end A328597.P4351180298715012151

/-! ## A328597.P17314297383753086184

`A318728(n+1)-A178334(n)`
-/

namespace A328597.P17314297383753086184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318728 (n + 1) - A178334 n

end

end A328597.P17314297383753086184

/-! ## A328597.P18162090574972951186

`A318728(n+1)-char[A052938(n)]`
-/

namespace A328597.P18162090574972951186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318728 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A328597.P18162090574972951186

/-! ## A328597.P6191628648250948200

`A318728(n+1)-char[A000463(n+1)]`
-/

namespace A328597.P6191628648250948200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318728 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A328597.P6191628648250948200

/-! ## A328597.P7130492687521091718

`A318728(n+1)-and(1, A000040(n+1))`
-/

namespace A328597.P7130492687521091718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318728 (n + 1) - Int.land 1 (A000040 (n + 1))

end

end A328597.P7130492687521091718

/-! ## A328597.P8549709626034843938

`A318728(n+1)-and(1, ∑[A000031(n+1)])`
-/

namespace A328597.P8549709626034843938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318728 (n + 1) - Int.land 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A328597.P8549709626034843938

/-! ## A328597.P8971789893594826381

`A318728(n+1)-A327104(A001222(2*n+1))`
-/

namespace A328597.P8971789893594826381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318728 (n + 1) - A327104 (A001222 (2 * n + 1)).toNat

end

end A328597.P8971789893594826381

/-! ## A328597.P9588246290669648326

`A318728(n+1)+A328609(n+1)-A318748(n+1)`
-/

namespace A328597.P9588246290669648326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318728 (n + 1) + (A328609 (n + 1) - A318748 (n + 1))

end

end A328597.P9588246290669648326

/-!
# A328598: Number of compositions of n with no part circularly followed by a divisor.

The programs for A328598, there is no canonical definition to state claims against.
-/

/-! ## A328598.P15972378260522593836

`A318726(A028310(n))+A057428(n)`
-/

namespace A328598.P15972378260522593836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318726 (A028310 n).toNat + A057428 n

end

end A328598.P15972378260522593836

/-! ## A328598.P1870716644363484425

`A318726(A028310(n))-A057427(n)`
-/

namespace A328598.P1870716644363484425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318726 (A028310 n).toNat - A057427 n

end

end A328598.P1870716644363484425

/-! ## A328598.P17902323974203338989

`A318726(A233583(n+1))+A057428(n)`
-/

namespace A328598.P17902323974203338989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318726 (A233583 (n + 1)).toNat + A057428 n

end

end A328598.P17902323974203338989

/-! ## A328598.P2342189717444426229

`A318726(A233583(n+1))-A057427(n)`
-/

namespace A328598.P2342189717444426229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318726 (A233583 (n + 1)).toNat - A057427 n

end

end A328598.P2342189717444426229

/-! ## A328598.P4681081705421283377

`A318726(A233583(n+1))-char[A000463(n+1)]`
-/

namespace A328598.P4681081705421283377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318726 (A233583 (n + 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A328598.P4681081705421283377

/-! ## A328598.P15400650211057341908

`A318726(A233583(n+1))-A001222(A008578(n+1))`
-/

namespace A328598.P15400650211057341908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318726 (A233583 (n + 1)).toNat - A001222 (A008578 (n + 1)).toNat

end

end A328598.P15400650211057341908

/-!
# A328599: Number of compositions of n with no part circularly followed by a divisor or a multiple.

The programs for A328599, there is no canonical definition to state claims against.
-/

/-! ## A328599.P15185405336254932902

`A318727(n)-a(A057427(n)-1)` with `a(0)=1`
-/

namespace A328599.P15185405336254932902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A318727 n - a (A057427 n - 1).toNat

end

end A328599.P15185405336254932902

/-! ## A328599.P16389736638456238390

`A318727(abs(1-n)+1)-A057427(n)`
-/

namespace A328599.P16389736638456238390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318727 (|1 - (n : ℤ)| + 1).toNat - A057427 n

end

end A328599.P16389736638456238390

/-! ## A328599.P13339461437067199076

`A318727(A233583(n+1))-n²%(n+1)`
-/

namespace A328599.P13339461437067199076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318727 (A233583 (n + 1)).toNat - ((n ^ 2 % (n + 1) : ℕ) : ℤ)

end

end A328599.P13339461437067199076

/-! ## A328599.P5600526887521033211

`A318727(A233583(n+1))+A057428(n)`
-/

namespace A328599.P5600526887521033211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318727 (A233583 (n + 1)).toNat + A057428 n

end

end A328599.P5600526887521033211

/-! ## A328599.P7503604570903687134

`A318727(A233583(n+1))-A112347(n)²`
-/

namespace A328599.P7503604570903687134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318727 (A233583 (n + 1)).toNat - A112347 n ^ 2

end

end A328599.P7503604570903687134

/-! ## A328599.P14308294315467236127

`A318727(A233583(n+1))-char[A305303(n)]`
-/

namespace A328599.P14308294315467236127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305303 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318727 (A233583 (n + 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A328599.P14308294315467236127

/-! ## A328599.P3856904239829040704

`A318727(A233583(n+1))-char[A277813(n+1)]`
-/

namespace A328599.P3856904239829040704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277813 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318727 (A233583 (n + 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A328599.P3856904239829040704

