import SequenceMachineLib
import Mathlib.Tactic
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
import Seq.B000.C012
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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C039
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
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C002
import Seq.B004.C000
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
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
# A202700: The third of a set of three triangles constructed by the same rule as A202692-A202694, but where the top entries in the three triangles are 0,1,0 respectively.

The programs for A202700, there is no canonical definition to state claims against.
-/

/-! ## A202700.P953285265981759304

`A202697(n+1)+A008280(n)-A202703(n+1)`
-/

namespace A202700.P953285265981759304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202697 (n + 1) + (A008280 n - A202703 (n + 1))

end

end A202700.P953285265981759304

/-! ## A202700.P5989607519276145035

`A202693(n+1)-(A202699(n+1)+A202698(n+1))`
-/

namespace A202700.P5989607519276145035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202693 (n + 1) - (A202699 (n + 1) + A202698 (n + 1))

end

end A202700.P5989607519276145035

/-! ## A202700.P7228444955956934346

`A202694(n+1)-(A202703(n+1)+A202697(n+1))`
-/

namespace A202700.P7228444955956934346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202694 (n + 1) - (A202703 (n + 1) + A202697 (n + 1))

end

end A202700.P7228444955956934346

/-! ## A202700.P907128564368193955

`A202696(n+1)+A202702(n+1)-A202698(n+1)`
-/

namespace A202700.P907128564368193955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202696 (n + 1) + (A202702 (n + 1) - A202698 (n + 1))

end

end A202700.P907128564368193955

/-!
# A202701: The first of a set of three triangles constructed by the same rule as A202692-A202694, but where the top entries in the three triangles are 0,0,1 respectively.

The programs for A202701, there is no canonical definition to state claims against.
-/

/-! ## A202701.P1937659328888095176

`A202695(n+1)-(A202698(n+1)+A008280(n))`
-/

namespace A202701.P1937659328888095176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202695 (n + 1) - (A202698 (n + 1) + A008280 n)

end

end A202701.P1937659328888095176

/-! ## A202701.P8459966126456786736

`A202692(n+1)-(A202698(n+1)+A202695(n+1))`
-/

namespace A202701.P8459966126456786736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202692 (n + 1) - (A202698 (n + 1) + A202695 (n + 1))

end

end A202701.P8459966126456786736

/-! ## A202701.P3192264952262047289

`A202699(n+1)-(A202703(n+1)+A202702(n+1))`
-/

namespace A202701.P3192264952262047289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202699 (n + 1) - (A202703 (n + 1) + A202702 (n + 1))

end

end A202701.P3192264952262047289

/-! ## A202701.P9145049546347521749

`A293239(n)%A008620(A087051(n))`
-/

namespace A202701.P9145049546347521749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293239 n) (A008620 (A087051 n).toNat)

end

end A202701.P9145049546347521749

/-! ## A202701.P14146934265327243024

`A025581(A293544(n)^A099545(n+1))`
-/

namespace A202701.P14146934265327243024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.roundAway ((A293544 n : ℚ) ^ (A099545 (n + 1) : ℤ))).toNat

end

end A202701.P14146934265327243024

/-!
# A202702: The second of a set of three triangles constructed by the same rule as A202692-A202694, but where the top entries in the three triangles are 0,0,1 respectively.

The programs for A202702, there is no canonical definition to state claims against.
-/

/-! ## A202702.P17559034748812564267

`A202693(n+1)-(A202697(n+1)+A202695(n+1))`
-/

namespace A202702.P17559034748812564267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202693 (n + 1) - (A202697 (n + 1) + A202695 (n + 1))

end

end A202702.P17559034748812564267

/-! ## A202702.P16706098443020453181

`A202693(n+1)-(A202699(n+1)+A202696(n+1))`
-/

namespace A202702.P16706098443020453181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202693 (n + 1) - (A202699 (n + 1) + A202696 (n + 1))

end

end A202702.P16706098443020453181

/-! ## A202702.P14838769479489517101

`A202698(n+1)+A202700(n+1)-A202696(n+1)`
-/

namespace A202702.P14838769479489517101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202698 (n + 1) + (A202700 (n + 1) - A202696 (n + 1))

end

end A202702.P14838769479489517101

/-! ## A202702.P15559815369950589326

`A202699(n+1)-(A202703(n+1)+A202701(n+1))`
-/

namespace A202702.P15559815369950589326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202699 (n + 1) - (A202703 (n + 1) + A202701 (n + 1))

end

end A202702.P15559815369950589326

/-! ## A202702.P13968322030914991662

`A349190(A000009(n))-A285572(n+1)`
-/

namespace A202702.P13968322030914991662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349190 (A000009 n).toNat - A285572 (n + 1)

end

end A202702.P13968322030914991662

/-!
# A202703: The third of a set of three triangles constructed by the same rule as A202692-A202694, but where the top entries in the three triangles are 0,0,1 respectively.

The programs for A202703, there is no canonical definition to state claims against.
-/

/-! ## A202703.P1668086940490838254

`A202697(n+1)+A008280(n)-A202700(n+1)`
-/

namespace A202703.P1668086940490838254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202697 (n + 1) + (A008280 n - A202700 (n + 1))

end

end A202703.P1668086940490838254

/-! ## A202703.P14582330067956147016

`A202694(n+1)-(A202700(n+1)+A202697(n+1))`
-/

namespace A202703.P14582330067956147016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202694 (n + 1) - (A202700 (n + 1) + A202697 (n + 1))

end

end A202703.P14582330067956147016

/-! ## A202703.P15691025438018640598

`A202699(n+1)-(A202702(n+1)+A202701(n+1))`
-/

namespace A202703.P15691025438018640598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202699 (n + 1) - (A202702 (n + 1) + A202701 (n + 1))

end

end A202703.P15691025438018640598

/-!
# A202704: Constructed by the same rule as A185356 and A202690, but with first row 0, 1.

The programs for A202704, there is no canonical definition to state claims against.
-/

/-! ## A202704.P7023684417733072619

`A202690(n+1)-A202691(n+1)`
-/

namespace A202704.P7023684417733072619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202690 (n + 1) - A202691 (n + 1)

end

end A202704.P7023684417733072619

/-! ## A202704.P9086742722405624610

`A185356(comp[∑[2*n]])-A202691(n+1)`
-/

namespace A202704.P9086742722405624610
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185356 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A202691 (n + 1)

end

end A202704.P9086742722405624610

/-! ## A202704.P2832050463837238216

`abs(A185356(A078358(n+1))-A202691(n+1))`
-/

namespace A202704.P2832050463837238216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A185356 (A078358 (n + 1)).toNat - A202691 (n + 1)|

end

end A202704.P2832050463837238216

/-! ## A202704.P3554184201771454658

`A185356(A078358(n+1))%A000045(n+3)-A202691(n+1)`
-/

namespace A202704.P3554184201771454658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185356 (A078358 (n + 1)).toNat) (A000045 (n + 3)) - A202691 (n + 1)

end

end A202704.P3554184201771454658

/-! ## A202704.P9866900803294040568

`A185356(A078358(n+1))/A000040(n+2)%2-A202691(n+1)`
-/

namespace A202704.P9866900803294040568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185356 (A078358 (n + 1)).toNat : ℚ) / (Int.tmod (A000040 (n + 2)) 2 : ℚ) - (A202691 (n + 1) : ℚ)

end

end A202704.P9866900803294040568

/-!
# A202705: Number of irreducible ways to split 1, 2, 3, ..., 3n into n arithmetic progressions each with 3 terms.

The programs for A202705, there is no canonical definition to state claims against.
-/

/-! ## A202705.P5627955540146655465

`A104429(n)-A279199(n)`
-/

namespace A202705.P5627955540146655465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104429 n - A279199 n

end

end A202705.P5627955540146655465

/-! ## A202705.P4401507491822800697

`A104443(∑[n+2]-1)-A279199(n)`
-/

namespace A202705.P4401507491822800697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104443 (∑ j ∈ Finset.range (n + 1), f1 j - 1) - A279199 n

end

end A202705.P4401507491822800697

/-! ## A202705.P7272209227156648267

`A185284(n)+A104443(A034856(n+1))-A279199(n)`
-/

namespace A202705.P7272209227156648267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n + A104443 (A034856 (n + 1)).toNat - A279199 n

end

end A202705.P7272209227156648267

/-!
# A202706: Numbers k such that (sum of digits of k!) / 9 is prime.

The programs for A202706, there is no canonical definition to state claims against.
-/

/-! ## A202706.P11276356281866504538

`eq[A001222(A004152(n)), A090739(2*n+5)]`
-/

namespace A202706.P11276356281866504538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A004152 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090739 (2 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A202706.P11276356281866504538

/-! ## A202706.P11176409314771300746

`eq[2, A252736(A004152(n))]`
-/

namespace A202706.P11176409314771300746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (A004152 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A202706.P11176409314771300746

/-!
# A202708: Sum of digits of n! divided by 9.

The programs for A202708, there is no canonical definition to state claims against.
-/

/-! ## A202708.P10295195613499279984

`A004152(n+6)/9`
-/

namespace A202708.P10295195613499279984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004152 (n + 6) : ℚ) / 9

end

end A202708.P10295195613499279984

/-! ## A202708.P14080053275368018642

`Δ[A071123(n+5)/9]`
-/

namespace A202708.P14080053275368018642
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071123 (n + 5) : ℚ) / 9

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A202708.P14080053275368018642

/-!
# A202709: (Sum of digits of n!!) / 9.

The programs for A202709, the canonical program `A202709.P17189782794673474327` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202709 has offset 11).

The definition of A202709 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120390, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A202709.P17189782794673474327

`A120390(n+11)/9`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A202709

/-- `A120390(n+11)/9` -/
def P17189782794673474327.Spec : Prop :=
  ∀ n, P17189782794673474327.a n = (A202709 (n + 11) : ℚ)

end A202709

/-!
# A202710: Triangle read by rows. T(n, k) = coefficient of x^n in the Taylor expansion of [((1 - x - 2*x^2 - sqrt(1 - 2*x - 3*x^2))/(2*x^2))]^k.

The programs for A202710, there is no canonical definition to state claims against.
-/

/-! ## A202710.P7900950439442089958

`A056556(A079621(n+1)*A197061(n+1))`
-/

namespace A202710.P7900950439442089958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A079621 (n + 1) * A197061 (n + 1)).toNat

end

end A202710.P7900950439442089958

/-!
# A202711: Number of n X n 0..1 arrays with row sums equal and no column sum equal to the previous.

The programs for A202711, there is no canonical definition to state claims against.
-/

/-! ## A202711.P1067554404961663151

`A202714(∑[n+1])`
-/

namespace A202711.P1067554404961663151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202714 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A202711.P1067554404961663151

/-! ## A202711.P5486022159394690531

`A202742(∑[4*n]+1)`
-/

namespace A202711.P5486022159394690531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202742 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A202711.P5486022159394690531

/-! ## A202711.P1448208058366946292

`lcm(2, A202742(A001844(n)))`
-/

namespace A202711.P1448208058366946292
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A202742 (A001844 n).toNat)

end

end A202711.P1448208058366946292

/-!
# A202712: Number of n X n 0..2 arrays with row sums equal and no column sum equal to the previous.

The programs for A202712, there is no canonical definition to state claims against.
-/

/-! ## A202712.P988149465296303314

`A202714(∑[n+2])`
-/

namespace A202712.P988149465296303314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202714 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A202712.P988149465296303314

/-!
# A202713: Number of n X n 0..3 arrays with row sums equal and no column sum equal to the previous.

The programs for A202713, there is no canonical definition to state claims against.
-/

/-! ## A202713.P16246882131106473336

`A202714(∑[n+3]+1)`
-/

namespace A202713.P16246882131106473336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202714 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A202713.P16246882131106473336

/-!
# A202715: Number of 3X3 0..n arrays with row sums equal and no column sum equal to the previous.

The programs for A202715, there is no canonical definition to state claims against.
-/

/-! ## A202715.P7647285027959197352

`A202714(∑[n+2]+4)`
-/

namespace A202715.P7647285027959197352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202714 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A202715.P7647285027959197352

/-! ## A202715.P1804148009546322222

`lcm(2, A202714(A167614(n+1)))`
-/

namespace A202715.P1804148009546322222
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A202714 (A167614 (n + 1)).toNat)

end

end A202715.P1804148009546322222

/-!
# A202716: Number of 4X4 0..n arrays with row sums equal and no column sum equal to the previous.

The programs for A202716, there is no canonical definition to state claims against.
-/

/-! ## A202716.P13202810067190567103

`A202714(∑[n+3]+7)`
-/

namespace A202716.P13202810067190567103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202714 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A202716.P13202810067190567103

/-!
# A202717: Triangle of numerators of coefficients of the polynomial Q^(3)_m(n) defined by the recursion Q^(3)_0(n)=1; for m>=1, Q^(3)_m(n) = Sum_{i=1...n} i^3*Q^(3)_(m-1)(i).

The programs for A202717, there is no canonical definition to state claims against.
-/

/-! ## A202717.P2186169262953768547

`xor(A059268(n), A317683(A000090(n)))`
-/

namespace A202717.P2186169262953768547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A059268 n) (A317683 (A000090 n).toNat)

end

end A202717.P2186169262953768547

/-!
# A202718: 

The programs for A202718, there is no canonical definition to state claims against.
-/

/-! ## A202718.P1780572764932791035

`A202726((n+1)²+n²)`
-/

namespace A202718.P1780572764932791035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202726 ((n + 1) ^ 2 + n ^ 2)

end

end A202718.P1780572764932791035

/-!
# A202719: Number of (n+3)X4 binary arrays with no more than three of any consecutive four bits set in any row or column.

The programs for A202719, there is no canonical definition to state claims against.
-/

/-! ## A202719.P17687882043901695100

`A202726(∑[n]+1)`
-/

namespace A202719.P17687882043901695100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202726 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A202719.P17687882043901695100

/-! ## A202719.P13757381971378821882

`or(1, A202726(A000124(n)))`
-/

namespace A202719.P13757381971378821882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A202726 (A000124 n).toNat)

end

end A202719.P13757381971378821882

/-! ## A202719.P7760774431033447346

`record[A202726(n+1)/A202750(n)]`
-/

namespace A202719.P7760774431033447346
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202726 (n + 1) : ℚ) / (A202750 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202719.P7760774431033447346

/-! ## A202719.P8667206398681699150

`record[A202726(n+1)/A334394(n)]`
-/

namespace A202719.P8667206398681699150
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202726 (n + 1) : ℚ) / (A334394 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202719.P8667206398681699150

/-! ## A202719.P5836091643585734561

`record[root(A202726(n+1), A202687(n))]`
-/

namespace A202719.P5836091643585734561
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A202726 (n + 1) : ℝ) ^ (1 / (A202687 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202719.P5836091643585734561

/-!
# A202720: Number of (n+3)X5 binary arrays with no more than three of any consecutive four bits set in any row or column.

The programs for A202720, there is no canonical definition to state claims against.
-/

/-! ## A202720.P3433167726216743945

`A202726(∑[n+1]+2)`
-/

namespace A202720.P3433167726216743945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202726 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A202720.P3433167726216743945

/-! ## A202720.P14413018182910489624

`record[gcd(A002262(n), A202726(n+2))]`
-/

namespace A202720.P14413018182910489624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A202726 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202720.P14413018182910489624

/-! ## A202720.P5463207772440422041

`record[A202726(A198455(n+1))]`
-/

namespace A202720.P5463207772440422041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202726 (A198455 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202720.P5463207772440422041

/-! ## A202720.P10173910120855146393

`record[A202726(n+2)/A202750(n+2)]`
-/

namespace A202720.P10173910120855146393
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202726 (n + 2) : ℚ) / (A202750 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202720.P10173910120855146393

/-! ## A202720.P5915454024026034946

`record[root(A202726(n+2), A202687(n+2))]`
-/

namespace A202720.P5915454024026034946
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A202726 (n + 2) : ℝ) ^ (1 / (A202687 (n + 2) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202720.P5915454024026034946

/-!
# A202721: Number of (n+3) X 6 binary arrays with no more than three of any consecutive four bits set in any row or column.

The programs for A202721, there is no canonical definition to state claims against.
-/

/-! ## A202721.P8618351066595954752

`A202726(A167614(n+1))`
-/

namespace A202721.P8618351066595954752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202726 (A167614 (n + 1)).toNat

end

end A202721.P8618351066595954752

/-! ## A202721.P15165374739779156689

`A202726(A167499(n)+n)`
-/

namespace A202721.P15165374739779156689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202726 (A167499 n + (n : ℤ)).toNat

end

end A202721.P15165374739779156689

/-! ## A202721.P10742239417370979594

`A202726(∑[n+3]+1)`
-/

namespace A202721.P10742239417370979594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202726 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A202721.P10742239417370979594

/-!
# A202722: Number of (n+3)X7 binary arrays with no more than three of any consecutive four bits set in any row or column.

The programs for A202722, there is no canonical definition to state claims against.
-/

/-! ## A202722.P543438465398005134

`A202726(A052905(n)+9)`
-/

namespace A202722.P543438465398005134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202726 (A052905 n + 9).toNat

end

end A202722.P543438465398005134

/-! ## A202722.P12937133450854784248

`A202726(A167614(n+2)+1)`
-/

namespace A202722.P12937133450854784248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202726 (A167614 (n + 2) + 1).toNat

end

end A202722.P12937133450854784248

/-! ## A202722.P4721008745121844940

`A202726(A167499(n+2)-1)`
-/

namespace A202722.P4721008745121844940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202726 (A167499 (n + 2) - 1).toNat

end

end A202722.P4721008745121844940

/-! ## A202722.P14221155407678327357

`A202726(∑[n+5]-(n-2))`
-/

namespace A202722.P14221155407678327357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202726 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n : ℤ) - 2)).toNat

end

end A202722.P14221155407678327357

/-!
# A202723: 

The programs for A202723, there is no canonical definition to state claims against.
-/

/-! ## A202723.P15849138008805257649

`A202726(A000217(n+4)+5)`
-/

namespace A202723.P15849138008805257649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202726 (A000217 (n + 4) + 5).toNat

end

end A202723.P15849138008805257649

/-! ## A202723.P14176122044530923946

`A202726(Δ[A023545(n+1)])`
-/

namespace A202723.P14176122044530923946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202726 (f1 (n + 1) - f1 n).toNat

end

end A202723.P14176122044530923946

/-! ## A202723.P10505567705834931808

`A202726(abs(A056000(n+2)-n))`
-/

namespace A202723.P10505567705834931808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202726 |A056000 (n + 2) - (n : ℤ)|.toNat

end

end A202723.P10505567705834931808

/-!
# A202724: 

The programs for A202724, there is no canonical definition to state claims against.
-/

/-! ## A202724.P11701095507636303422

`A202726(A052905(n+3))`
-/

namespace A202724.P11701095507636303422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202726 (A052905 (n + 3)).toNat

end

end A202724.P11701095507636303422

/-! ## A202724.P9637295192897846213

`A202726(A055999(n+3)+1)`
-/

namespace A202724.P9637295192897846213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202726 (A055999 (n + 3) + 1).toNat

end

end A202724.P9637295192897846213

/-!
# A202727: Position of records in A067513.

The programs for A202727, there is no canonical definition to state claims against.
-/

/-! ## A202727.P24347223657671167

`A067846(A202728(n+1))`
-/

namespace A202727.P24347223657671167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067846 (A202728 (n + 1)).toNat

end

end A202727.P24347223657671167

/-! ## A202727.P12305983093021606992

`A067846(record[A067513(n+1)])`
-/

namespace A202727.P12305983093021606992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067846 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A202727.P12305983093021606992

/-! ## A202727.P3658371146185092057

`A139770(A114810(3^n))`
-/

namespace A202727.P3658371146185092057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139770 (A114810 (3 ^ n)).toNat

end

end A202727.P3658371146185092057

/-! ## A202727.P11151223474315641109

`A143179(A267009(n+1))`
-/

namespace A202727.P11151223474315641109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143179 (A267009 (n + 1)).toNat

end

end A202727.P11151223474315641109

/-!
# A202728: Records in A067513.

The programs for A202728, there is no canonical definition to state claims against.
-/

/-! ## A202728.P10953972032641130410

`A067513(A202727(n+1))`
-/

namespace A202728.P10953972032641130410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067513 (A202727 (n + 1)).toNat

end

end A202728.P10953972032641130410

/-! ## A202728.P11770032791190454307

`record[A067513(A002093(n+1))]`
-/

namespace A202728.P11770032791190454307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067513 (A002093 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202728.P11770032791190454307

/-! ## A202728.P3524357596976438637

`record[A067513(A002473(n+1))]`
-/

namespace A202728.P3524357596976438637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067513 (A002473 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202728.P3524357596976438637

/-! ## A202728.P1402026201855950870

`record[A067513(A051038(n+1))]`
-/

namespace A202728.P1402026201855950870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067513 (A051038 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202728.P1402026201855950870

/-! ## A202728.P11617434698333245124

`record[A067513(A055721(n+1))]`
-/

namespace A202728.P11617434698333245124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067513 (A055721 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202728.P11617434698333245124

/-!
# A202729: Number of n X n nonnegative integer arrays with each row and column an ascent sequence (interior element no greater than one plus up-steps preceding it) and the lower right element equal to n-1.

The programs for A202729, there is no canonical definition to state claims against.
-/

/-! ## A202729.P8201430450153349458

`A202735(∑[4*n]+1)`
-/

namespace A202729.P8201430450153349458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202735 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A202729.P8201430450153349458

/-! ## A202729.P4642692039178537728

`A202735(A001844(n))+A035041(n)`
-/

namespace A202729.P4642692039178537728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202735 (A001844 n).toNat + A035041 n

end

end A202729.P4642692039178537728

/-! ## A202729.P16695463450139756011

`A202735(A001844(n))^ceil(n/A000041(n))`
-/

namespace A202729.P16695463450139756011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202735 (A001844 n).toNat : ℚ) ^ (⌈(n : ℚ) / (A000041 n : ℚ)⌉ : ℤ)

end

end A202729.P16695463450139756011

/-! ## A202729.P10611610442295705532

`A202735(A001844(n))+A008683(50*(n+1))`
-/

namespace A202729.P10611610442295705532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202735 (A001844 n).toNat + A008683 (50 * (n + 1))

end

end A202729.P10611610442295705532

/-! ## A202729.P13320934356779824937

`A000005(((-1)^n)²)*A202735(A001844(n))`
-/

namespace A202729.P13320934356779824937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (((-1) ^ n) ^ 2).toNat * A202735 (A001844 n).toNat

end

end A202729.P13320934356779824937

/-!
# A202730: Number of n X 3 nonnegative integer arrays each row and column an ascent sequence (interior element no greater than one plus up-steps preceding it) and the lower right element equal to min(n,3)-1.

The programs for A202730, the canonical program `A202730.P8240804596375842718` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202730 has offset 1).

The definition of A202730 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A202730.P11669656424336065423

`lcm(5, a(n-1))+2^(n-1)` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A202730.P11669656424336065423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  (Int.lcm 5 (SequenceMachineLib.roundAway (a (n - 1))) : ℚ) + (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A202730.P11669656424336065423

namespace A202730

/-- `lcm(5, a(n-1))+2^(n-1)` -/
def P11669656424336065423.Spec : Prop :=
  ∀ n, P11669656424336065423.a n = (A202730 (n + 1) : ℚ)

end A202730

/-! ## A202730.P8240804596375842718

`7*a(n-1)-10*a(n-2)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=14`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A202730

/-- `7*a(n-1)-10*a(n-2)` -/
def P8240804596375842718.Spec : Prop :=
  ∀ n, P8240804596375842718.a n = A202730 (n + 1)

theorem P8240804596375842718.correct : P8240804596375842718.Spec := by
  intro n
  simp only [A202730, Nat.add_sub_cancel]

end A202730

/-! ## A202730.P15028899752952001306

`A011782(n)+5*a(n-1)` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A202730.P15028899752952001306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  A011782 n + 5 * a (n - 1)

end

end A202730.P15028899752952001306

namespace A202730

/-- `A011782(n)+5*a(n-1)` -/
def P15028899752952001306.Spec : Prop :=
  ∀ n, P15028899752952001306.a n = A202730 (n + 1)

end A202730

/-! ## A202730.P16146337363648846281

`A020639(A000010(n+2))*A016127(A289207(n))`
-/

namespace A202730.P16146337363648846281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000010 (n + 2)).toNat * A016127 (A289207 n).toNat

end

end A202730.P16146337363648846281

namespace A202730

/-- `A020639(A000010(n+2))*A016127(A289207(n))` -/
def P16146337363648846281.Spec : Prop :=
  ∀ n, P16146337363648846281.a n = A202730 (n + 1)

end A202730

/-! ## A202730.P2617360184563632511

`A020639(A056206(n)-1)*A016127(A289207(n))`
-/

namespace A202730.P2617360184563632511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A056206 n - 1).toNat * A016127 (A289207 n).toNat

end

end A202730.P2617360184563632511

namespace A202730

/-- `A020639(A056206(n)-1)*A016127(A289207(n))` -/
def P2617360184563632511.Spec : Prop :=
  ∀ n, P2617360184563632511.a n = A202730 (n + 1)

end A202730

/-! ## A202730.P5758421667493552491

`A020639(A000040(n+1)-1)*A016127(A289207(n))`
-/

namespace A202730.P5758421667493552491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000040 (n + 1) - 1).toNat * A016127 (A289207 n).toNat

end

end A202730.P5758421667493552491

namespace A202730

/-- `A020639(A000040(n+1)-1)*A016127(A289207(n))` -/
def P5758421667493552491.Spec : Prop :=
  ∀ n, P5758421667493552491.a n = A202730 (n + 1)

end A202730

/-!
# A202731: Number of n X 4 nonnegative integer arrays each row and column an ascent sequence (interior element no greater than one plus up-steps preceding it) and the lower right element equal to min(n,4)-1.

The programs for A202731, there is no canonical definition to state claims against.
-/

/-! ## A202731.P2627011916678536234

`A202735(A141214(n)+7)`
-/

namespace A202731.P2627011916678536234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202735 (A141214 n + 7).toNat

end

end A202731.P2627011916678536234

/-! ## A202731.P6731762765138126276

`A202735(A052905(n)+9)`
-/

namespace A202731.P6731762765138126276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202735 (A052905 n + 9).toNat

end

end A202731.P6731762765138126276

/-! ## A202731.P872562991179326669

`A202735(A055999(n)+10)`
-/

namespace A202731.P872562991179326669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202735 (A055999 n + 10).toNat

end

end A202731.P872562991179326669

/-! ## A202731.P6699935956771684449

`A202735(A167614(n+2)+1)`
-/

namespace A202731.P6699935956771684449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202735 (A167614 (n + 2) + 1).toNat

end

end A202731.P6699935956771684449

/-! ## A202731.P5557454080852249618

`A202735(Δ[A264443(n)-n²])`
-/

namespace A202731.P5557454080852249618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202735 (f1 (n + 1) - f1 n).toNat

end

end A202731.P5557454080852249618

/-!
# A202732: Number of nX5 nonnegative integer arrays each row and column an ascent sequence (interior element no greater than one plus up-steps preceding it) and the lower right element equal to min(n,5)-1.

The programs for A202732, there is no canonical definition to state claims against.
-/

/-! ## A202732.P10858350651259363871

`A202735(A000124(n+4)+4)`
-/

namespace A202732.P10858350651259363871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202735 (A000124 (n + 4) + 4).toNat

end

end A202732.P10858350651259363871

/-! ## A202732.P11844426170618636773

`A202735(A052905(n+1)+10)`
-/

namespace A202732.P11844426170618636773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202735 (A052905 (n + 1) + 10).toNat

end

end A202732.P11844426170618636773

/-! ## A202732.P15495379281709024727

`A202735(eq[6, A131818(n+1)])`
-/

namespace A202732.P15495379281709024727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202735 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202732.P15495379281709024727

/-! ## A202732.P10088773402863621953

`A202735(Δ[A264443(n)])`
-/

namespace A202732.P10088773402863621953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202735 (f1 (n + 1) - f1 n).toNat

end

end A202732.P10088773402863621953

/-! ## A202732.P11362231520370088378

`A202735(A374005(n+1))`
-/

namespace A202732.P11362231520370088378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202735 (A374005 (n + 1)).toNat

end

end A202732.P11362231520370088378

/-!
# A202733: Number of nX6 nonnegative integer arrays each row and column an ascent sequence (interior element no greater than one plus up-steps preceding it) and the lower right element equal to min(n,6)-1.

The programs for A202733, there is no canonical definition to state claims against.
-/

/-! ## A202733.P8016846482680796906

`A202735(A167499(n+4)+1)`
-/

namespace A202733.P8016846482680796906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202735 (A167499 (n + 4) + 1).toNat

end

end A202733.P8016846482680796906

/-! ## A202733.P13883646063813244288

`A202735(A167614(n+4)+3)`
-/

namespace A202733.P13883646063813244288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202735 (A167614 (n + 4) + 3).toNat

end

end A202733.P13883646063813244288

/-! ## A202733.P15470135069195044058

`A202735(eq[6, A130270(n+1)])`
-/

namespace A202733.P15470135069195044058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202735 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202733.P15470135069195044058

/-! ## A202733.P9650204675347862374

`A202735(eq[7, A131818(n+1)])`
-/

namespace A202733.P9650204675347862374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202735 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202733.P9650204675347862374

/-! ## A202733.P3738461941732879061

`A202735(A374007(n+1))`
-/

namespace A202733.P3738461941732879061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202735 (A374007 (n + 1)).toNat

end

end A202733.P3738461941732879061

/-!
# A202734: Number of nX7 nonnegative integer arrays each row and column an ascent sequence (interior element no greater than one plus up-steps preceding it) and the lower right element equal to min(n,7)-1.

The programs for A202734, there is no canonical definition to state claims against.
-/

/-! ## A202734.P16778155487367062500

`A202735(eq[8, A131818(n+1)])`
-/

namespace A202734.P16778155487367062500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202735 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202734.P16778155487367062500

/-! ## A202734.P17018485883796539688

`A202735(A374008(n+1))`
-/

namespace A202734.P17018485883796539688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202735 (A374008 (n + 1)).toNat

end

end A202734.P17018485883796539688

/-! ## A202734.P1783121760270198808

`A202735(eq[4, A219347(n)])`
-/

namespace A202734.P1783121760270198808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202735 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202734.P1783121760270198808

/-! ## A202734.P8015614253987841705

`A202735(eq[6, A193592(n)])`
-/

namespace A202734.P8015614253987841705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202735 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202734.P8015614253987841705

/-! ## A202734.P8734088151487642434

`A202735(eq[7, A200370(n+1)])`
-/

namespace A202734.P8734088151487642434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202735 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202734.P8734088151487642434

/-!
# A202735: T(n,k) = Number of n X k nonnegative integer arrays with each row and column an ascent sequence (interior element no greater than one plus up-steps preceding it) and the lower right element equal to min(n,k)-1.

The programs for A202735, there is no canonical definition to state claims against.
-/

/-! ## A202735.P8611956739984248185

`A322190(n)%A001097(A194039(3*n+4))`
-/

namespace A202735.P8611956739984248185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322190 n) (A001097 (A194039 (3 * n + 4)).toNat)

end

end A202735.P8611956739984248185

/-! ## A202735.P15385822529398222263

`A233763(A254414(n))%(A028326(A300923(n+1))+1)`
-/

namespace A202735.P15385822529398222263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233763 (A254414 n).toNat) (A028326 (A300923 (n + 1)).toNat + 1)

end

end A202735.P15385822529398222263

/-! ## A202735.P5497642876679965112

`A322190(n)%A325785(4*n+7)`
-/

namespace A202735.P5497642876679965112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322190 n) (A325785 (4 * n + 7))

end

end A202735.P5497642876679965112

/-! ## A202735.P6398592905116749716

`A006777(A047110(n)%A006777(2*(n+1)))`
-/

namespace A202735.P6398592905116749716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006777 (Int.tmod (A047110 n) (A006777 (2 * (n + 1)))).toNat

end

end A202735.P6398592905116749716

/-!
# A202736: Number of n X 2 0..1 arrays with row sums equal and column sums unequal to adjacent columns.

The programs for A202736, the canonical program `A202736.P17174659494218386331` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202736 has offset 1).

The definition of A202736 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A202736.P17174659494218386331

`2^(n+1)-A126869(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A202736

/-- `2^(n+1)-A126869(n+1)` -/
def P17174659494218386331.Spec : Prop :=
  ∀ n, P17174659494218386331.a n = A202736 (n + 1)

theorem P17174659494218386331.correct : P17174659494218386331.Spec := by
  intro n
  simp only [A202736, Nat.add_sub_cancel]

end A202736

/-! ## A202736.P9265579724570207581

`2*A058622(n+1)`
-/

namespace A202736.P9265579724570207581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A058622 (n + 1)

end

end A202736.P9265579724570207581

namespace A202736

/-- `2*A058622(n+1)` -/
def P9265579724570207581.Spec : Prop :=
  ∀ n, P9265579724570207581.a n = A202736 (n + 1)

end A202736

/-! ## A202736.P16015024306252302753

`2*(A126930(n)+a(n-1))` with `a(0)=2`
-/

namespace A202736.P16015024306252302753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * (A126930 n + a (n - 1))

end

end A202736.P16015024306252302753

namespace A202736

/-- `2*(A126930(n)+a(n-1))` -/
def P16015024306252302753.Spec : Prop :=
  ∀ n, P16015024306252302753.a n = A202736 (n + 1)

end A202736

/-! ## A202736.P16046636911104928616

`2*(A294175(n)+A027306(n))`
-/

namespace A202736.P16046636911104928616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A294175 n + A027306 n)

end

end A202736.P16046636911104928616

namespace A202736

/-- `2*(A294175(n)+A027306(n))` -/
def P16046636911104928616.Spec : Prop :=
  ∀ n, P16046636911104928616.a n = A202736 (n + 1)

end A202736

/-! ## A202736.P15026982963461417235

`2*(A000079(n)-A138364(n))`
-/

namespace A202736.P15026982963461417235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000079 n - A138364 n)

end

end A202736.P15026982963461417235

namespace A202736

/-- `2*(A000079(n)-A138364(n))` -/
def P15026982963461417235.Spec : Prop :=
  ∀ n, P15026982963461417235.a n = A202736 (n + 1)

end A202736

/-! ## A202736.P4497998368803879110

`2*(A117186(n)-A058622(n))`
-/

namespace A202736.P4497998368803879110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A117186 n - A058622 n)

end

end A202736.P4497998368803879110

namespace A202736

/-- `2*(A117186(n)-A058622(n))` -/
def P4497998368803879110.Spec : Prop :=
  ∀ n, P4497998368803879110.a n = A202736 (n + 1)

end A202736

/-! ## A202736.P18081176139838114784

`2*(∑[A011782(n)]-A138364(n))`
-/

namespace A202736.P18081176139838114784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - A138364 n)

end

end A202736.P18081176139838114784

namespace A202736

/-- `2*(∑[A011782(n)]-A138364(n))` -/
def P18081176139838114784.Spec : Prop :=
  ∀ n, P18081176139838114784.a n = A202736 (n + 1)

end A202736

/-! ## A202736.P10408041249986124938

`2*(Δ[A000225(n)]-A138364(n))`
-/

namespace A202736.P10408041249986124938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n - A138364 n)

end

end A202736.P10408041249986124938

namespace A202736

/-- `2*(Δ[A000225(n)]-A138364(n))` -/
def P10408041249986124938.Spec : Prop :=
  ∀ n, P10408041249986124938.a n = A202736 (n + 1)

end A202736

/-! ## A202736.P17809645655901730529

`A180967(n+1)+A063886(n+1)`
-/

namespace A202736.P17809645655901730529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180967 (n + 1) + A063886 (n + 1)

end

end A202736.P17809645655901730529

namespace A202736

/-- `A180967(n+1)+A063886(n+1)` -/
def P17809645655901730529.Spec : Prop :=
  ∀ n, P17809645655901730529.a n = A202736 (n + 1)

end A202736

/-! ## A202736.P3469022717616221793

`A294175(n+2)+A037952(n+1)`
-/

namespace A202736.P3469022717616221793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294175 (n + 2) + A037952 (n + 1)

end

end A202736.P3469022717616221793

namespace A202736

/-- `A294175(n+2)+A037952(n+1)` -/
def P3469022717616221793.Spec : Prop :=
  ∀ n, P3469022717616221793.a n = A202736 (n + 1)

end A202736

/-! ## A202736.P85272882211799382

`A182027(n+2)+A180967(n+1)`
-/

namespace A202736.P85272882211799382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182027 (n + 2) + A180967 (n + 1)

end

end A202736.P85272882211799382

namespace A202736

/-- `A182027(n+2)+A180967(n+1)` -/
def P85272882211799382.Spec : Prop :=
  ∀ n, P85272882211799382.a n = A202736 (n + 1)

end A202736

/-! ## A202736.P18169782468685348322

`A027306(n+2)-A001405(n+1)`
-/

namespace A202736.P18169782468685348322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027306 (n + 2) - A001405 (n + 1)

end

end A202736.P18169782468685348322

namespace A202736

/-- `A027306(n+2)-A001405(n+1)` -/
def P18169782468685348322.Spec : Prop :=
  ∀ n, P18169782468685348322.a n = A202736 (n + 1)

end A202736

/-! ## A202736.P1093419962448355332

`A058622(n+2)-A126930(n+1)`
-/

namespace A202736.P1093419962448355332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058622 (n + 2) - A126930 (n + 1)

end

end A202736.P1093419962448355332

namespace A202736

/-- `A058622(n+2)-A126930(n+1)` -/
def P1093419962448355332.Spec : Prop :=
  ∀ n, P1093419962448355332.a n = A202736 (n + 1)

end A202736

/-! ## A202736.P11815154648244984321

`A180967(n+1)+2*A001405(n)`
-/

namespace A202736.P11815154648244984321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180967 (n + 1) + 2 * A001405 n

end

end A202736.P11815154648244984321

namespace A202736

/-- `A180967(n+1)+2*A001405(n)` -/
def P11815154648244984321.Spec : Prop :=
  ∀ n, P11815154648244984321.a n = A202736 (n + 1)

end A202736

/-! ## A202736.P7970435300407276243

`∑[A000079(n)]-A126869(n+1)+1`
-/

namespace A202736.P7970435300407276243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A126869 (n + 1) + 1

end

end A202736.P7970435300407276243

namespace A202736

/-- `∑[A000079(n)]-A126869(n+1)+1` -/
def P7970435300407276243.Spec : Prop :=
  ∀ n, P7970435300407276243.a n = A202736 (n + 1)

end A202736

/-! ## A202736.P17673811998021263916

`2*(A294175(n+1)+A138364(n+1))`
-/

namespace A202736.P17673811998021263916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A294175 (n + 1) + A138364 (n + 1))

end

end A202736.P17673811998021263916

namespace A202736

/-- `2*(A294175(n+1)+A138364(n+1))` -/
def P17673811998021263916.Spec : Prop :=
  ∀ n, P17673811998021263916.a n = A202736 (n + 1)

end A202736

/-! ## A202736.P7920136354999638681

`2*(A000079(n+1)-A027306(n+1))`
-/

namespace A202736.P7920136354999638681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000079 (n + 1) - A027306 (n + 1))

end

end A202736.P7920136354999638681

namespace A202736

/-- `2*(A000079(n+1)-A027306(n+1))` -/
def P7920136354999638681.Spec : Prop :=
  ∀ n, P7920136354999638681.a n = A202736 (n + 1)

end A202736

/-! ## A202736.P12003305026965642038

`2*(A027306(n+1)-A126869(n+1))`
-/

namespace A202736.P12003305026965642038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A027306 (n + 1) - A126869 (n + 1))

end

end A202736.P12003305026965642038

namespace A202736

/-- `2*(A027306(n+1)-A126869(n+1))` -/
def P12003305026965642038.Spec : Prop :=
  ∀ n, P12003305026965642038.a n = A202736 (n + 1)

end A202736

/-! ## A202736.P8893699014306691593

`2*(A000225(n+1)-A226881(n+1))`
-/

namespace A202736.P8893699014306691593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000225 (n + 1) - A226881 (n + 1))

end

end A202736.P8893699014306691593

namespace A202736

/-- `2*(A000225(n+1)-A226881(n+1))` -/
def P8893699014306691593.Spec : Prop :=
  ∀ n, P8893699014306691593.a n = A202736 (n + 1)

end A202736

/-! ## A202736.P13058831951700854360

`2*(A045621(n+1)-A294175(n+1))`
-/

namespace A202736.P13058831951700854360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A045621 (n + 1) - A294175 (n + 1))

end

end A202736.P13058831951700854360

namespace A202736

/-- `2*(A045621(n+1)-A294175(n+1))` -/
def P13058831951700854360.Spec : Prop :=
  ∀ n, P13058831951700854360.a n = A202736 (n + 1)

end A202736

/-!
# A202737: Number of nX3 0..1 arrays with row sums equal and column sums unequal to adjacent columns.

The programs for A202737, there is no canonical definition to state claims against.
-/

/-! ## A202737.P1467351527019017235

`A202742(∑[n+3]+1)`
-/

namespace A202737.P1467351527019017235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202742 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A202737.P1467351527019017235

/-! ## A202737.P14899180125674254338

`record[A185018(n)*A202742(n+1)]`
-/

namespace A202737.P14899180125674254338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185018 n * A202742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202737.P14899180125674254338

/-! ## A202737.P12050507136396349841

`record[gcd(A202742(n+1), A300184(n))]`
-/

namespace A202737.P12050507136396349841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A202742 (n + 1)) (A300184 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202737.P12050507136396349841

/-! ## A202737.P1353012774543617671

`A202742(A034856(n+2))%A042038(n)`
-/

namespace A202737.P1353012774543617671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A202742 (A034856 (n + 2)).toNat) (A042038 n)

end

end A202737.P1353012774543617671

/-! ## A202737.P9204817359132876317

`A202742(A034856(n+2))*A316829(2*n+1)`
-/

namespace A202737.P9204817359132876317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202742 (A034856 (n + 2)).toNat * A316829 (2 * n + 1)

end

end A202737.P9204817359132876317

/-!
# A202738: Number of nX4 0..1 arrays with row sums equal and column sums unequal to adjacent columns.

The programs for A202738, there is no canonical definition to state claims against.
-/

/-! ## A202738.P7967199868125124955

`A202742(Δ[n²]+∑[n+2]+4)`
-/

namespace A202738.P7967199868125124955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202742 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((∑ j ∈ Finset.range (n + 1), f2 j + 4 : ℕ) : ℤ)).toNat

end

end A202738.P7967199868125124955

/-! ## A202738.P17686128018173926838

`A055396(2*(n+2))*A202742(A055998(n+2))`
-/

namespace A202738.P17686128018173926838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (2 * (n + 2)) * A202742 (A055998 (n + 2)).toNat

end

end A202738.P17686128018173926838

/-! ## A202738.P766331321879931207

`A006519(2*n+5)*A202742(A055998(n+2))`
-/

namespace A202738.P766331321879931207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (2 * n + 5) * A202742 (A055998 (n + 2)).toNat

end

end A202738.P766331321879931207

/-!
# A202739: Number of n X 5 0..1 arrays with row sums equal and column sums unequal to adjacent columns.

The programs for A202739, there is no canonical definition to state claims against.
-/

/-! ## A202739.P15759761139949034204

`A202742(Δ[A264443(n)])`
-/

namespace A202739.P15759761139949034204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202742 (f1 (n + 1) - f1 n).toNat

end

end A202739.P15759761139949034204

/-! ## A202739.P1015903691383455656

`A202742(A046691(n+3))`
-/

namespace A202739.P1015903691383455656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202742 (A046691 (n + 3)).toNat

end

end A202739.P1015903691383455656

/-! ## A202739.P812021449627707598

`A202742(A056115(n)+11)`
-/

namespace A202739.P812021449627707598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202742 (A056115 n + 11).toNat

end

end A202739.P812021449627707598

/-! ## A202739.P4307236633598038993

`A202742(eq[3, A152157(n)])`
-/

namespace A202739.P4307236633598038993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202742 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202739.P4307236633598038993

/-! ## A202739.P2737491009927197897

`A202742(eq[4, A054123(n)])`
-/

namespace A202739.P2737491009927197897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202742 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202739.P2737491009927197897

/-!
# A202740: Number of nX6 0..1 arrays with row sums equal and column sums unequal to adjacent columns.

The programs for A202740, there is no canonical definition to state claims against.
-/

/-! ## A202740.P10358303753395452646

`A202742(A052905(n+3))`
-/

namespace A202740.P10358303753395452646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202742 (A052905 (n + 3)).toNat

end

end A202740.P10358303753395452646

/-! ## A202740.P3173368081493441495

`A202742(A056119(n)+16)`
-/

namespace A202740.P3173368081493441495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202742 (A056119 n + 16).toNat

end

end A202740.P3173368081493441495

/-! ## A202740.P93764199541381422

`A202742(eq[3, A219347(n)])`
-/

namespace A202740.P93764199541381422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202742 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202740.P93764199541381422

/-! ## A202740.P5686095415471177319

`A202742(eq[3, A274661(n)])`
-/

namespace A202740.P5686095415471177319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274661 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202742 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202740.P5686095415471177319

/-! ## A202740.P5365502048544794878

`A202742(eq[5, A152157(n)])`
-/

namespace A202740.P5365502048544794878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202742 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202740.P5365502048544794878

/-!
# A202741: Number of n X 7 0..1 arrays with row sums equal and column sums unequal to adjacent columns.

The programs for A202741, there is no canonical definition to state claims against.
-/

/-! ## A202741.P8533895391014929656

`A202742(A055999(n+4))`
-/

namespace A202741.P8533895391014929656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202742 (A055999 (n + 4)).toNat

end

end A202741.P8533895391014929656

/-! ## A202741.P13484454362543913665

`A202742(eq[4, A219347(n)])`
-/

namespace A202741.P13484454362543913665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202742 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202741.P13484454362543913665

/-! ## A202741.P6785989295507549942

`A202742(eq[6, A193592(n)])`
-/

namespace A202741.P6785989295507549942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202742 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202741.P6785989295507549942

/-! ## A202741.P16214840799403053040

`A202742(eq[7, A152157(n)])`
-/

namespace A202741.P16214840799403053040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202742 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202741.P16214840799403053040

/-!
# A202743: Number of 2Xn 0..1 arrays with row sums equal and column sums unequal to adjacent columns.

The programs for A202743, there is no canonical definition to state claims against.
-/

/-! ## A202743.P11494309222132294359

`A202742(∑[n+1]+2)`
-/

namespace A202743.P11494309222132294359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202742 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A202743.P11494309222132294359

/-! ## A202743.P17935166582528599700

`A015748(n)*A202742(A133263(n+1))`
-/

namespace A202743.P17935166582528599700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015748 n * A202742 (A133263 (n + 1)).toNat

end

end A202743.P17935166582528599700

/-! ## A202743.P10092997938631668565

`lcm(2, A347609(A001359(n+1)))`
-/

namespace A202743.P10092997938631668565
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A347609 (A001359 (n + 1)).toNat)

end

end A202743.P10092997938631668565

/-!
# A202744: Number of 3Xn 0..1 arrays with row sums equal and column sums unequal to adjacent columns.

The programs for A202744, there is no canonical definition to state claims against.
-/

/-! ## A202744.P14644946558996476848

`A202742(∑[n+2]+4)`
-/

namespace A202744.P14644946558996476848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202742 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A202744.P14644946558996476848

/-! ## A202744.P13825134740299500848

`lcm(2, A202742(A167614(n+1)))`
-/

namespace A202744.P13825134740299500848
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A202742 (A167614 (n + 1)).toNat)

end

end A202744.P13825134740299500848

/-! ## A202744.P5659455262857305523

`record[A010054(n)*A202742(n+3)]`
-/

namespace A202744.P5659455262857305523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A202742 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202744.P5659455262857305523

/-! ## A202744.P16182999659437497759

`record[root(A202742(n+3), A059268(n))]`
-/

namespace A202744.P16182999659437497759
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A202742 (n + 3) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202744.P16182999659437497759

/-! ## A202744.P1807182059346573921

`record[gcd(A002262(n), A202742(n+3))]`
-/

namespace A202744.P1807182059346573921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A202742 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202744.P1807182059346573921

/-!
# A202745: Number of 4Xn 0..1 arrays with row sums equal and column sums unequal to adjacent columns.

The programs for A202745, there is no canonical definition to state claims against.
-/

/-! ## A202745.P1868225774200801329

`A202742(∑[n+3]+7)`
-/

namespace A202745.P1868225774200801329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202742 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A202745.P1868225774200801329

/-! ## A202745.P17617318954422756811

`record[gcd(A202742(n+5), A268820(n))]`
-/

namespace A202745.P17617318954422756811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A202742 (n + 5)) (A268820 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202745.P17617318954422756811

/-! ## A202745.P10631844655246246103

`A326682(n)+A202742(A145018(n+4))`
-/

namespace A202745.P10631844655246246103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326682 n + A202742 (A145018 (n + 4)).toNat

end

end A202745.P10631844655246246103

/-!
# A202746: Number of 5 X n 0..1 arrays with row sums equal and column sums unequal to adjacent columns.

The programs for A202746, there is no canonical definition to state claims against.
-/

/-! ## A202746.P1463986893033638319

`A202742(A155212(n)+13)`
-/

namespace A202746.P1463986893033638319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202742 (A155212 n + 13).toNat

end

end A202746.P1463986893033638319

/-! ## A202746.P2944946583930300587

`A202742(A056000(n)+15)`
-/

namespace A202746.P2944946583930300587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202742 (A056000 n + 15).toNat

end

end A202746.P2944946583930300587

/-! ## A202746.P7351796814014052323

`A202742(eq[7, A066657(n)])`
-/

namespace A202746.P7351796814014052323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202742 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202746.P7351796814014052323

/-! ## A202746.P8990473409496682177

`A202742(A000124(n+4)+4)`
-/

namespace A202746.P8990473409496682177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202742 (A000124 (n + 4) + 4).toNat

end

end A202746.P8990473409496682177

/-! ## A202746.P9947414669163755380

`A202742(A000217(n+4)+5)`
-/

namespace A202746.P9947414669163755380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202742 (A000217 (n + 4) + 5).toNat

end

end A202746.P9947414669163755380

/-!
# A202747: Number of 6Xn 0..1 arrays with row sums equal and column sums unequal to adjacent columns.

The programs for A202747, there is no canonical definition to state claims against.
-/

/-! ## A202747.P13909611291760853412

`A202742(A056115(n)+21)`
-/

namespace A202747.P13909611291760853412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202742 (A056115 n + 21).toNat

end

end A202747.P13909611291760853412

/-! ## A202747.P5252414396355172975

`A202742(A167499(n+4)+1)`
-/

namespace A202747.P5252414396355172975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202742 (A167499 (n + 4) + 1).toNat

end

end A202747.P5252414396355172975

/-! ## A202747.P7470044686448963432

`A202742(A000124(n+5)+5)`
-/

namespace A202747.P7470044686448963432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202742 (A000124 (n + 5) + 5).toNat

end

end A202747.P7470044686448963432

/-! ## A202747.P4979030067479163999

`A202742(A000096(n+4)+7)`
-/

namespace A202747.P4979030067479163999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202742 (A000096 (n + 4) + 7).toNat

end

end A202747.P4979030067479163999

/-! ## A202747.P5591703745674879305

`A202742(A000217(n+5)+6)`
-/

namespace A202747.P5591703745674879305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202742 (A000217 (n + 5) + 6).toNat

end

end A202747.P5591703745674879305

/-!
# A202748: Number of 7 X n 0..1 arrays with row sums equal and column sums unequal to adjacent columns.

The programs for A202748, there is no canonical definition to state claims against.
-/

/-! ## A202748.P9815559165680921734

`A202742(A056119(n)+28)`
-/

namespace A202748.P9815559165680921734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202742 (A056119 n + 28).toNat

end

end A202748.P9815559165680921734

/-! ## A202748.P4519039445889145864

`A202742(eq[11, A066657(n)])`
-/

namespace A202748.P4519039445889145864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202742 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202748.P4519039445889145864

/-! ## A202748.P8059499840403477582

`A202742(A167614(n+5)+4)`
-/

namespace A202748.P8059499840403477582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202742 (A167614 (n + 5) + 4).toNat

end

end A202748.P8059499840403477582

/-! ## A202748.P16844382223193066614

`A202742(A133263(n+6)+5)`
-/

namespace A202748.P16844382223193066614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202742 (A133263 (n + 6) + 5).toNat

end

end A202748.P16844382223193066614

/-!
# A202750: Triangle T(n,k) = binomial(n,k)^4 read by rows, 0<=k<=n.

The programs for A202750, the canonical program `A202750.P17720214964731900726` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202750 has offset 0).

The definition of A202750 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(row(n), col(n))^4` (program `A202750.P17720214964731900726`, by `A202750.P17720214964731900726.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A202750.P17720214964731900726

`C(row(n), col(n))^4`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A202750

/-- `C(row(n), col(n))^4` -/
def P17720214964731900726.Spec : Prop :=
  ∀ n, (P17720214964731900726.a n : ℤ) = A202750 n

theorem P17720214964731900726.correct : P17720214964731900726.Spec := by
  intro n
  simp only [A202750]

end A202750

/-! ## A202750.P11917823895154512547

`A008459(n)²`
-/

namespace A202750.P11917823895154512547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008459 n ^ 2

end

end A202750.P11917823895154512547

namespace A202750

/-- `A008459(n)²` -/
def P11917823895154512547.Spec : Prop :=
  ∀ n, P11917823895154512547.a n = A202750 n

theorem P11917823895154512547.correct : P11917823895154512547.Spec := by
  intro n
  simp only [A202750, Nat.add_sub_cancel, A202750.P11917823895154512547.a, A202750.P17720214964731900726.a, A008459, A008459.P3220700038138124146.a, A007318, A007318.P11755526479805562006.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A202750

/-! ## A202750.P18314405067020895969

`A007318(n)^4`
-/

namespace A202750.P18314405067020895969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n ^ 4

end

end A202750.P18314405067020895969

namespace A202750

/-- `A007318(n)^4` -/
def P18314405067020895969.Spec : Prop :=
  ∀ n, P18314405067020895969.a n = A202750 n

theorem P18314405067020895969.correct : P18314405067020895969.Spec := by
  intro n
  simp only [A202750, Nat.add_sub_cancel, A202750.P18314405067020895969.a, A202750.P17720214964731900726.a, A007318, A007318.P11755526479805562006.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A202750

/-! ## A202750.P1947959655056065003

`A108086(n)^4`
-/

namespace A202750.P1947959655056065003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108086 n ^ 4

end

end A202750.P1947959655056065003

namespace A202750

/-- `A108086(n)^4` -/
def P1947959655056065003.Spec : Prop :=
  ∀ n, P1947959655056065003.a n = A202750 n

end A202750

/-! ## A202750.P14789473503286247620

`A117440(n)^4`
-/

namespace A202750.P14789473503286247620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117440 n ^ 4

end

end A202750.P14789473503286247620

namespace A202750

/-- `A117440(n)^4` -/
def P14789473503286247620.Spec : Prop :=
  ∀ n, P14789473503286247620.a n = A202750 n

end A202750

/-! ## A202750.P9528977346731940875

`A130595(n)^4`
-/

namespace A202750.P9528977346731940875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n ^ 4

end

end A202750.P9528977346731940875

namespace A202750

/-- `A130595(n)^4` -/
def P9528977346731940875.Spec : Prop :=
  ∀ n, P9528977346731940875.a n = A202750 n

end A202750

/-! ## A202750.P5710232494196032441

`Δ[A102363(n)]^4`
-/

namespace A202750.P5710232494196032441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 4

end

end A202750.P5710232494196032441

namespace A202750

/-- `Δ[A102363(n)]^4` -/
def P5710232494196032441.Spec : Prop :=
  ∀ n, P5710232494196032441.a n = A202750 n

end A202750

/-! ## A202750.P15588046005911137683

`A154926(n+1)^4`
-/

namespace A202750.P15588046005911137683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154926 (n + 1) ^ 4

end

end A202750.P15588046005911137683

namespace A202750

/-- `A154926(n+1)^4` -/
def P15588046005911137683.Spec : Prop :=
  ∀ n, P15588046005911137683.a n = A202750 n

end A202750

/-! ## A202750.P5896888840179221380

`A152905(2*n)^4`
-/

namespace A202750.P5896888840179221380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152905 (2 * n) ^ 4

end

end A202750.P5896888840179221380

namespace A202750

/-- `A152905(2*n)^4` -/
def P5896888840179221380.Spec : Prop :=
  ∀ n, P5896888840179221380.a n = A202750 n

end A202750

/-! ## A202750.P2563428790910162301

`(A014473(n)+1)²²`
-/

namespace A202750.P2563428790910162301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A014473 n + 1) ^ 2) ^ 2

end

end A202750.P2563428790910162301

namespace A202750

/-- `(A014473(n)+1)²²` -/
def P2563428790910162301.Spec : Prop :=
  ∀ n, P2563428790910162301.a n = A202750 n

theorem P2563428790910162301.correct : P2563428790910162301.Spec := by
  intro n
  simp only [A202750, Nat.add_sub_cancel, A202750.P2563428790910162301.a, A202750.P17720214964731900726.a, A014473, A014473.P9301799580602651200.a, A007318, A007318.P11755526479805562006.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A202750

/-! ## A202750.P1676781996555185971

`(2-A173740(n))²²`
-/

namespace A202750.P1676781996555185971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 - A173740 n) ^ 2) ^ 2

end

end A202750.P1676781996555185971

namespace A202750

/-- `(2-A173740(n))²²` -/
def P1676781996555185971.Spec : Prop :=
  ∀ n, P1676781996555185971.a n = A202750 n

end A202750

/-! ## A202750.P11399873385888766622

`(A028326(n)/2)²²`
-/

namespace A202750.P11399873385888766622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((A028326 n : ℚ) / 2) ^ 2) ^ 2

end

end A202750.P11399873385888766622

namespace A202750

/-- `(A028326(n)/2)²²` -/
def P11399873385888766622.Spec : Prop :=
  ∀ n, P11399873385888766622.a n = (A202750 n : ℚ)

theorem P11399873385888766622.correct : P11399873385888766622.Spec := by
  intro n
  simp only [A202750, Nat.add_sub_cancel, A202750.P11399873385888766622.a, A202750.P17720214964731900726.a, A028326, A028326.P7676793339942299677.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A202750

/-! ## A202750.P4720894562715332035

`A152905(Δ[n²])²²`
-/

namespace A202750.P4720894562715332035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A152905 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 2) ^ 2

end

end A202750.P4720894562715332035

namespace A202750

/-- `A152905(Δ[n²])²²` -/
def P4720894562715332035.Spec : Prop :=
  ∀ n, P4720894562715332035.a n = A202750 n

end A202750

/-! ## A202750.P1205941154304938602

`A097805(comp[∑[n]])²²`
-/

namespace A202750.P1205941154304938602
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A097805 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) ^ 2) ^ 2

end

end A202750.P1205941154304938602

namespace A202750

/-- `A097805(comp[∑[n]])²²` -/
def P1205941154304938602.Spec : Prop :=
  ∀ n, P1205941154304938602.a n = A202750 n

end A202750

/-! ## A202750.P500838807368793237

`A135225(comp[∑[n]])²²`
-/

namespace A202750.P500838807368793237
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A135225 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) ^ 2) ^ 2

end

end A202750.P500838807368793237

namespace A202750

/-- `A135225(comp[∑[n]])²²` -/
def P500838807368793237.Spec : Prop :=
  ∀ n, P500838807368793237.a n = A202750 n

end A202750

/-! ## A202750.P7620184690495344138

`A193554(comp[∑[n]])²²`
-/

namespace A202750.P7620184690495344138
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A193554 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) ^ 2) ^ 2

end

end A202750.P7620184690495344138

namespace A202750

/-- `A193554(comp[∑[n]])²²` -/
def P7620184690495344138.Spec : Prop :=
  ∀ n, P7620184690495344138.a n = A202750 n

end A202750

/-! ## A202750.P2539210359113769931

`ceil(A109128(n)/2)²²`
-/

namespace A202750.P2539210359113769931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈(A109128 n : ℚ) / 2⌉ ^ 2) ^ 2

end

end A202750.P2539210359113769931

namespace A202750

/-- `ceil(A109128(n)/2)²²` -/
def P2539210359113769931.Spec : Prop :=
  ∀ n, P2539210359113769931.a n = A202750 n

end A202750

/-! ## A202750.P11957378365725960588

`ceil((A124927(n)/2)²²)`
-/

namespace A202750.P11957378365725960588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((A124927 n : ℚ) / 2) ^ 2) ^ 2⌉

end

end A202750.P11957378365725960588

namespace A202750

/-- `ceil((A124927(n)/2)²²)` -/
def P11957378365725960588.Spec : Prop :=
  ∀ n, P11957378365725960588.a n = A202750 n

end A202750

/-! ## A202750.P1460945376055032003

`ceil(A131108(n)/2)²²`
-/

namespace A202750.P1460945376055032003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈(A131108 n : ℚ) / 2⌉ ^ 2) ^ 2

end

end A202750.P1460945376055032003

namespace A202750

/-- `ceil(A131108(n)/2)²²` -/
def P1460945376055032003.Spec : Prop :=
  ∀ n, P1460945376055032003.a n = A202750 n

end A202750

/-! ## A202750.P4382055270526980486

`ceil((A134058(n)/2)²²)`
-/

namespace A202750.P4382055270526980486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((A134058 n : ℚ) / 2) ^ 2) ^ 2⌉

end

end A202750.P4382055270526980486

namespace A202750

/-- `ceil((A134058(n)/2)²²)` -/
def P4382055270526980486.Spec : Prop :=
  ∀ n, P4382055270526980486.a n = A202750 n

end A202750

/-!
# A202751: Number of n X n nonnegative integer arrays with each row and column increasing from zero by 0 or 1.

The programs for A202751, there is no canonical definition to state claims against.
-/

/-! ## A202751.P9755243468773199942

`A202756((n+1)²+n²)`
-/

namespace A202751.P9755243468773199942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202756 ((n + 1) ^ 2 + n ^ 2)

end

end A202751.P9755243468773199942

/-! ## A202751.P15468598811108973778

`record[A003982(n)*A202756(n+1)]`
-/

namespace A202751.P15468598811108973778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A202756 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202751.P15468598811108973778

/-! ## A202751.P3848912058175187050

`record[A115718(n)*A202756(n+1)]`
-/

namespace A202751.P3848912058175187050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115718 n * A202756 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202751.P3848912058175187050

/-! ## A202751.P7073682795732576013

`record[A202756(n+1)*A214505(n)]`
-/

namespace A202751.P7073682795732576013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202756 (n + 1) * A214505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202751.P7073682795732576013

/-! ## A202751.P12485946268136905687

`record[gcd(A202756(n+1), A214292(n))]`
-/

namespace A202751.P12485946268136905687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A202756 (n + 1)) (A214292 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202751.P12485946268136905687

/-!
# A202752: Number of n X 4 nonnegative integer arrays with each row and column increasing from zero by 0 or 1.

The programs for A202752, the canonical program `A202752.P17958664207444159430` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202752 has offset 1).

The definition of A202752 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A202752.P17958664207444159430

`∑[∑[∑[∑[(n+1)²-2]]+2]]`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A202752

/-- `∑[∑[∑[∑[(n+1)²-2]]+2]]` -/
def P17958664207444159430.Spec : Prop :=
  ∀ n, P17958664207444159430.a n = A202752 (n + 1)

theorem P17958664207444159430.correct : P17958664207444159430.Spec := by
  intro n
  simp only [A202752, Nat.add_sub_cancel]

end A202752

/-! ## A202752.P1411253349056633668

`A040977(n)-2*A005582(n)`
-/

namespace A202752.P1411253349056633668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040977 n - 2 * A005582 n

end

end A202752.P1411253349056633668

namespace A202752

/-- `A040977(n)-2*A005582(n)` -/
def P1411253349056633668.Spec : Prop :=
  ∀ n, P1411253349056633668.a n = A202752 (n + 1)

end A202752

/-! ## A202752.P7758773550999375483

`A040977(n)-∑[∑[A028552(n)]]`
-/

namespace A202752.P7758773550999375483
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028552 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040977 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202752.P7758773550999375483

namespace A202752

/-- `A040977(n)-∑[∑[A028552(n)]]` -/
def P7758773550999375483.Spec : Prop :=
  ∀ n, P7758773550999375483.a n = A202752 (n + 1)

end A202752

/-! ## A202752.P16841867900824255543

`A323967(n+1)-2*A323847(n+1)`
-/

namespace A202752.P16841867900824255543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323967 (n + 1) - 2 * A323847 (n + 1)

end

end A202752.P16841867900824255543

namespace A202752

/-- `A323967(n+1)-2*A323847(n+1)` -/
def P16841867900824255543.Spec : Prop :=
  ∀ n, P16841867900824255543.a n = A202752 (n + 1)

end A202752

/-! ## A202752.P4590224144259062538

`A202756(A374004(n+1))`
-/

namespace A202752.P4590224144259062538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202756 (A374004 (n + 1)).toNat

end

end A202752.P4590224144259062538

namespace A202752

/-- `A202756(A374004(n+1))` -/
def P4590224144259062538.Spec : Prop :=
  ∀ n, P4590224144259062538.a n = A202752 (n + 1)

end A202752

/-!
# A202753: Number of n X 5 nonnegative integer arrays with each row and column increasing from zero by 0 or 1.

The programs for A202753, there is no canonical definition to state claims against.
-/

/-! ## A202753.P12590222777709812256

`A202756(A374005(n+1))`
-/

namespace A202753.P12590222777709812256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202756 (A374005 (n + 1)).toNat

end

end A202753.P12590222777709812256

/-! ## A202753.P7574995289855537266

`A202756(A167499(n+3))`
-/

namespace A202753.P7574995289855537266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202756 (A167499 (n + 3)).toNat

end

end A202753.P7574995289855537266

/-! ## A202753.P2671945693889941703

`A202756(A155212(n)+13)`
-/

namespace A202753.P2671945693889941703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202756 (A155212 n + 13).toNat

end

end A202753.P2671945693889941703

/-! ## A202753.P343910824780636270

`A202756(A056000(n)+15)`
-/

namespace A202753.P343910824780636270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202756 (A056000 n + 15).toNat

end

end A202753.P343910824780636270

/-! ## A202753.P2109087134770013216

`A202756(A027379(n+2)+8)`
-/

namespace A202753.P2109087134770013216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202756 (A027379 (n + 2) + 8).toNat

end

end A202753.P2109087134770013216

/-!
# A202754: Number of n X 6 nonnegative integer arrays with each row and column increasing from zero by 0 or 1.

The programs for A202754, there is no canonical definition to state claims against.
-/

/-! ## A202754.P1000456750821018845

`A202756(A374007(n+1))`
-/

namespace A202754.P1000456750821018845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202756 (A374007 (n + 1)).toNat

end

end A202754.P1000456750821018845

/-! ## A202754.P9881024958712664786

`A202756(A000124(n+5)+5)`
-/

namespace A202754.P9881024958712664786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202756 (A000124 (n + 5) + 5).toNat

end

end A202754.P9881024958712664786

/-! ## A202754.P2310252746634410834

`A202756(A000096(n+4)+7)`
-/

namespace A202754.P2310252746634410834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202756 (A000096 (n + 4) + 7).toNat

end

end A202754.P2310252746634410834

/-! ## A202754.P7072004318604820691

`A202756(A000217(n+5)+6)`
-/

namespace A202754.P7072004318604820691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202756 (A000217 (n + 5) + 6).toNat

end

end A202754.P7072004318604820691

/-! ## A202754.P11347663458745562701

`A202756(∑[n+6]+10)`
-/

namespace A202754.P11347663458745562701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202756 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A202754.P11347663458745562701

/-!
# A202755: Number of nX7 nonnegative integer arrays with each row and column increasing from zero by 0 or 1.

The programs for A202755, there is no canonical definition to state claims against.
-/

/-! ## A202755.P6519376091719853851

`A202756(A374008(n+1))`
-/

namespace A202755.P6519376091719853851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202756 (A374008 (n + 1)).toNat

end

end A202755.P6519376091719853851

/-! ## A202755.P1253606311280464596

`A202756(A000217(n+6)+7)`
-/

namespace A202755.P1253606311280464596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202756 (A000217 (n + 6) + 7).toNat

end

end A202755.P1253606311280464596

/-! ## A202755.P17663724295165411442

`A202756(A046691(n+4)+11)`
-/

namespace A202755.P17663724295165411442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202756 (A046691 (n + 4) + 11).toNat

end

end A202755.P17663724295165411442

/-! ## A202755.P12241690213224126870

`A202756(A052905(n+3)+12)`
-/

namespace A202755.P12241690213224126870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202756 (A052905 (n + 3) + 12).toNat

end

end A202755.P12241690213224126870

/-! ## A202755.P2871489482953921738

`A202756(eq[7, A002260(n+1)]+1)`
-/

namespace A202755.P2871489482953921738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202756 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A202755.P2871489482953921738

/-!
# A202756: T(n,k)=Number of nXk nonnegative integer arrays with each row and column increasing from zero by 0 or 1.

The programs for A202756, there is no canonical definition to state claims against.
-/

/-! ## A202756.P8435060192245300773

`A380573(A114202(n))`
-/

namespace A202756.P8435060192245300773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380573 (A114202 n).toNat

end

end A202756.P8435060192245300773

/-! ## A202756.P8573858509235232267

`A141213(A156354(n))-3`
-/

namespace A202756.P8573858509235232267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141213 (A156354 n).toNat - 3

end

end A202756.P8573858509235232267

/-! ## A202756.P11672362462678819638

`A002260(A141214(A156354(n)))`
-/

namespace A202756.P11672362462678819638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A141214 (A156354 n).toNat).toNat

end

end A202756.P11672362462678819638

/-! ## A202756.P1636754112103872437

`A055572(A225413(n)+A028657(n))`
-/

namespace A202756.P1636754112103872437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055572 (A225413 n + A028657 n).toNat

end

end A202756.P1636754112103872437

/-! ## A202756.P17953046932119655516

`A117707(A299905(n))+A028657(n)`
-/

namespace A202756.P17953046932119655516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (A299905 n).toNat + A028657 n

end

end A202756.P17953046932119655516

/-!
# A202757: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 4,1,0,1,2,0,0 for x=0,1,2,3,4,5,6.

The programs for A202757, there is no canonical definition to state claims against.
-/

/-! ## A202757.P5332014956822298258

`A292370(A202825(n))+A202762(n+1)`
-/

namespace A202757.P5332014956822298258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292370 (A202825 n).toNat + A202762 (n + 1)

end

end A202757.P5332014956822298258

/-!
# A202760: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 4,4,2,0,2,0,0 for x=0,1,2,3,4,5,6.

The programs for A202760, there is no canonical definition to state claims against.
-/

/-! ## A202760.P13779144463018118740

`A213424(A008085(n+1))`
-/

namespace A202760.P13779144463018118740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213424 ((A008085 (n + 1)).toNat + 10)

end

end A202760.P13779144463018118740

/-!
# A202761: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 4,0,0,1,2,0,0 for x=0,1,2,3,4,5,6.

The programs for A202761, there is no canonical definition to state claims against.
-/

/-! ## A202761.P17941488847386947553

`A096657(n)+A025581(A202745(n+1))`
-/

namespace A202761.P17941488847386947553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096657 n + A025581 (A202745 (n + 1)).toNat

end

end A202761.P17941488847386947553

/-!
# A202762: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 4,1,0,1,1,0,0 for x=0,1,2,3,4,5,6.

The programs for A202762, there is no canonical definition to state claims against.
-/

/-! ## A202762.P1776424500531546735

`A202757(n+1)-A292370(A202825(n))`
-/

namespace A202762.P1776424500531546735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202757 (n + 1) - A292370 (A202825 n).toNat

end

end A202762.P1776424500531546735

/-!
# A202764: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 3,0,2,1,1,1,2 for x=0,1,2,3,4,5,6.

The programs for A202764, there is no canonical definition to state claims against.
-/

/-! ## A202764.P1234112558042143173

`A023845(A349291(n))`
-/

namespace A202764.P1234112558042143173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023845 (A349291 n).toNat

end

end A202764.P1234112558042143173

/-!
# A202768: Vandermonde determinant of the first n squares.

The programs for A202768, there is no canonical definition to state claims against.
-/

/-! ## A202768.P13074261924613307384

`(2*n-1)!/n*a(n-1)` with `a(0)=1`
-/

namespace A202768.P13074261924613307384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.factorial ((2 * n : ℤ) - 1).toNat : ℚ) / (n : ℚ) * a (n - 1)

end

end A202768.P13074261924613307384

/-! ## A202768.P1533115163741217492

`a(n-1)*A080500(n²)` with `a(0)=1`
-/

namespace A202768.P1533115163741217492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A080500 (n ^ 2)

end

end A202768.P1533115163741217492

/-! ## A202768.P12134794946144746642

`a(n-1)*A110468(n-1)` with `a(0)=1`
-/

namespace A202768.P12134794946144746642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A110468 (n - 1)

end

end A202768.P12134794946144746642

/-! ## A202768.P5468100856952209337

`∏[A000142(A004273(n))]/A000142(n)`
-/

namespace A202768.P5468100856952209337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A004273 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A000142 n : ℚ)

end

end A202768.P5468100856952209337

/-!
# A202769: Number of (n+2) X (n+2) binary arrays avoiding patterns 000 and 011 in rows, columns and nw-to-se diagonals.

The programs for A202769, there is no canonical definition to state claims against.
-/

/-! ## A202769.P3086678607198160390

`A202777(∑[4*n]+1)`
-/

namespace A202769.P3086678607198160390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202777 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A202769.P3086678607198160390

/-! ## A202769.P15919603631598408450

`record[A202777(Δ[A235355(n)])]`
-/

namespace A202769.P15919603631598408450
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202777 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202769.P15919603631598408450

/-! ## A202769.P3686672639455486902

`record[A202777(A330613(n+1))]`
-/

namespace A202769.P3686672639455486902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202777 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202769.P3686672639455486902

/-! ## A202769.P14762740354873703841

`A202777(A001844(n))+char[11]`
-/

namespace A202769.P14762740354873703841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202777 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A202769.P14762740354873703841

/-! ## A202769.P126516258985261138

`record[A202777(Δ[A079824(n+1)])]`
-/

namespace A202769.P126516258985261138
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079824 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202777 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202769.P126516258985261138

/-!
# A202770: Number of (n+2)X3 binary arrays avoiding patterns 000 and 011 in rows, columns and nw-to-se diagonals.

The programs for A202770, there is no canonical definition to state claims against.
-/

/-! ## A202770.P1901858502717539853

`A202777(∑[n]+1)`
-/

namespace A202770.P1901858502717539853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202777 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A202770.P1901858502717539853

/-! ## A202770.P14777088786518529836

`record[A202777(A286235(n+1))]`
-/

namespace A202770.P14777088786518529836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202777 (A286235 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202770.P14777088786518529836

/-! ## A202770.P12447190911765923270

`lcm((-1)^n, A202777(A000124(n)))`
-/

namespace A202770.P12447190911765923270
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A202777 (A000124 n).toNat)

end

end A202770.P12447190911765923270

/-! ## A202770.P4098242832272200121

`record[A010054(n)*A202777(n+1)]`
-/

namespace A202770.P4098242832272200121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A202777 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202770.P4098242832272200121

/-! ## A202770.P11252362293925119497

`record[A176224(n)*A202777(n+1)]`
-/

namespace A202770.P11252362293925119497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176224 n * A202777 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202770.P11252362293925119497

/-!
# A202771: Number of (n+2) X 4 binary arrays avoiding patterns 000 and 011 in rows, columns and nw-to-se diagonals.

The programs for A202771, there is no canonical definition to state claims against.
-/

/-! ## A202771.P10775489348262077604

`A202777(∑[n+1]+2)`
-/

namespace A202771.P10775489348262077604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202777 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A202771.P10775489348262077604

/-! ## A202771.P17631890623385043787

`record[A202777(A286235(n+1)+1)]`
-/

namespace A202771.P17631890623385043787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202777 (A286235 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202771.P17631890623385043787

/-! ## A202771.P5489021600316965924

`A202777(A167499(n)-3)+char[24]`
-/

namespace A202771.P5489021600316965924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202777 (A167499 n - 3).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A202771.P5489021600316965924

/-! ## A202771.P12200725148177601422

`record[A010054(n)*A202777(n+2)]`
-/

namespace A202771.P12200725148177601422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A202777 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202771.P12200725148177601422

/-! ## A202771.P8419972516275291269

`record[gcd(A002262(n), A202777(n+2))]`
-/

namespace A202771.P8419972516275291269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A202777 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202771.P8419972516275291269

/-!
# A202772: Number of (n+2)X5 binary arrays avoiding patterns 000 and 011 in rows, columns and nw-to-se diagonals.

The programs for A202772, there is no canonical definition to state claims against.
-/

/-! ## A202772.P11446214637376038571

`A202777(∑[n+2]+4)`
-/

namespace A202772.P11446214637376038571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202777 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A202772.P11446214637376038571

/-! ## A202772.P14508091682197373973

`and(-1, A202777(A167614(n+1)))`
-/

namespace A202772.P14508091682197373973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A202777 (A167614 (n + 1)).toNat)

end

end A202772.P14508091682197373973

/-! ## A202772.P15007416672533889665

`lcm((-1)^n, A202777(A167499(n)+n))`
-/

namespace A202772.P15007416672533889665
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A202777 (A167499 n + (n : ℤ)).toNat)

end

end A202772.P15007416672533889665

/-! ## A202772.P1139671856063692279

`lcm(A033999(n), A202777(A167614(n+1)))`
-/

namespace A202772.P1139671856063692279
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A202777 (A167614 (n + 1)).toNat)

end

end A202772.P1139671856063692279

/-! ## A202772.P1401308333274445769

`or(A025469(n), A202777(A167614(n+1)))`
-/

namespace A202772.P1401308333274445769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025469 n) (A202777 (A167614 (n + 1)).toNat)

end

end A202772.P1401308333274445769

/-!
# A202773: Number of (n+2)X6 binary arrays avoiding patterns 000 and 011 in rows, columns and nw-to-se diagonals.

The programs for A202773, there is no canonical definition to state claims against.
-/

/-! ## A202773.P16277623125591894288

`A202777(∑[n+3]+7)`
-/

namespace A202773.P16277623125591894288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202777 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A202773.P16277623125591894288

/-! ## A202773.P15732507897174235980

`or(char[16], A202777(A055999(n)+10))`
-/

namespace A202773.P15732507897174235980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A202777 (A055999 n + 10).toNat)

end

end A202773.P15732507897174235980

/-! ## A202773.P4819485477606208473

`A202777(Δ[A062748(n)]+4)+char[30]`
-/

namespace A202773.P4819485477606208473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062748 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202777 (f1 (n + 1) - f1 n + 4).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A202773.P4819485477606208473

/-! ## A202773.P2949202507991750022

`A202777(A374004(n+1))+A180472(n)`
-/

namespace A202773.P2949202507991750022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202777 (A374004 (n + 1)).toNat + A180472 n

end

end A202773.P2949202507991750022

/-! ## A202773.P13188319774956724827

`A202777(A374004(n+1))%A184026(n+1)`
-/

namespace A202773.P13188319774956724827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A202777 (A374004 (n + 1)).toNat) (A184026 (n + 1))

end

end A202773.P13188319774956724827

/-!
# A202774: Number of (n+2)X7 binary arrays avoiding patterns 000 and 011 in rows, columns and nw-to-se diagonals.

The programs for A202774, there is no canonical definition to state claims against.
-/

/-! ## A202774.P12106782059466193931

`A202777(∑[n+4]+11)`
-/

namespace A202774.P12106782059466193931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202777 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A202774.P12106782059466193931

/-! ## A202774.P12496305974345087364

`A202777(A056000(n)+15)+char[45]`
-/

namespace A202774.P12496305974345087364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  45

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202777 (A056000 n + 15).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A202774.P12496305974345087364

/-! ## A202774.P3546729012740693705

`A202777(A374005(n+1))+A034505(n+1)`
-/

namespace A202774.P3546729012740693705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202777 (A374005 (n + 1)).toNat + A034505 (n + 1)

end

end A202774.P3546729012740693705

/-! ## A202774.P13567607176851862213

`A007318(and(1, -n))*A202777(A056000(n)+15)`
-/

namespace A202774.P13567607176851862213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 1 (-(n : ℤ))).toNat * A202777 (A056000 n + 15).toNat

end

end A202774.P13567607176851862213

/-! ## A202774.P457539729201954590

`A007318(C(n, n²))*A202777(A056000(n)+15)`
-/

namespace A202774.P457539729201954590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n (n ^ 2)) * A202777 (A056000 n + 15).toNat

end

end A202774.P457539729201954590

/-!
# A202775: Number of (n+2)X8 binary arrays avoiding patterns 000 and 011 in rows, columns and nw-to-se diagonals.

The programs for A202775, there is no canonical definition to state claims against.
-/

/-! ## A202775.P4195322467568794830

`A202777(A374007(n+1))`
-/

namespace A202775.P4195322467568794830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202777 (A374007 (n + 1)).toNat

end

end A202775.P4195322467568794830

/-! ## A202775.P9661752562461003902

`A202777(A166136(n+4))`
-/

namespace A202775.P9661752562461003902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202777 (A166136 (n + 4)).toNat

end

end A202775.P9661752562461003902

/-! ## A202775.P11713968026561513339

`A202777(A056115(n)+21)`
-/

namespace A202775.P11713968026561513339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202777 (A056115 n + 21).toNat

end

end A202775.P11713968026561513339

/-! ## A202775.P16490541343595694537

`A202777(∑[A020710(n)]+16)`
-/

namespace A202775.P16490541343595694537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202777 (∑ j ∈ Finset.range (n + 1), f1 j + 16).toNat

end

end A202775.P16490541343595694537

/-! ## A202775.P1824856099493416394

`A202777(A167499(n+4)+1)`
-/

namespace A202775.P1824856099493416394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202777 (A167499 (n + 4) + 1).toNat

end

end A202775.P1824856099493416394

/-!
# A202776: Number of (n+2)X9 binary arrays avoiding patterns 000 and 011 in rows, columns and nw-to-se diagonals.

The programs for A202776, there is no canonical definition to state claims against.
-/

/-! ## A202776.P8718070685599567108

`A202777(A374008(n+1))`
-/

namespace A202776.P8718070685599567108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202777 (A374008 (n + 1)).toNat

end

end A202776.P8718070685599567108

/-! ## A202776.P6261371050330443135

`A202777(eq[11, A066657(n)])`
-/

namespace A202776.P6261371050330443135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202777 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202776.P6261371050330443135

/-! ## A202776.P1725280893429706049

`A202777(A000124(n+6)+6)`
-/

namespace A202776.P1725280893429706049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202777 (A000124 (n + 6) + 6).toNat

end

end A202776.P1725280893429706049

/-! ## A202776.P7969011048399753355

`A202777(A000096(n+5)+8)`
-/

namespace A202776.P7969011048399753355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202777 (A000096 (n + 5) + 8).toNat

end

end A202776.P7969011048399753355

/-! ## A202776.P18288267924084261595

`A202777(A000217(n+6)+7)`
-/

namespace A202776.P18288267924084261595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202777 (A000217 (n + 6) + 7).toNat

end

end A202776.P18288267924084261595

/-!
# A202778: Least k such that x*k + 1 produces primes for x = 1..n and composite for x = n + 1.

The programs for A202778, there is no canonical definition to state claims against.
-/

/-! ## A202778.P15012899060398038771

`A169585(5^n)+A088250(n+1)`
-/

namespace A202778.P15012899060398038771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 (5 ^ n) + A088250 (n + 1)

end

end A202778.P15012899060398038771

/-! ## A202778.P4341363675422927238

`A000010(A088250(n+1)+gcd(11, n))`
-/

namespace A202778.P4341363675422927238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A088250 (n + 1) + (Nat.gcd 11 n : ℤ)).toNat

end

end A202778.P4341363675422927238

/-!
# A202784: T(n,k) is the number of n X n 0..k arrays with row and column sums equal.

The programs for A202784, there is no canonical definition to state claims against.
-/

/-! ## A202784.P4023859443524554770

`lcm(A071922(n), A333254(A102402(2*n+1)))`
-/

namespace A202784.P4023859443524554770
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A071922 n) (A333254 (A102402 (2 * n + 1)).toNat)

end

end A202784.P4023859443524554770

/-! ## A202784.P5082190965847102401

`A071922(n)*A381440(A116641(n))`
-/

namespace A202784.P5082190965847102401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071922 n * A381440 (A116641 n).toNat

end

end A202784.P5082190965847102401

/-! ## A202784.P13479572472507473252

`A080853(n)*A381440(A116641(n))`
-/

namespace A202784.P13479572472507473252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080853 n * A381440 (A116641 n).toNat

end

end A202784.P13479572472507473252

/-! ## A202784.P10805596627977243518

`lcm(A071922(n), A300409(A342890(n)))`
-/

namespace A202784.P10805596627977243518
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A071922 n) (A300409 (A342890 n).toNat)

end

end A202784.P10805596627977243518

/-! ## A202784.P8569205499588789275

`A071922(n)*A357180(A143494(n+2))`
-/

namespace A202784.P8569205499588789275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071922 n * A357180 (A143494 (n + 2)).toNat

end

end A202784.P8569205499588789275

/-!
# A202785: Number of 3 X 3 0..n arrays with row and column sums equal.

The programs for A202785, the canonical program `A202785.P17274815764040657669` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202785 has offset 1).

The definition of A202785 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A202785.P17274815764040657669

`A213556(n+1)+A093119(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A202785

/-- `A213556(n+1)+A093119(n+1)` -/
def P17274815764040657669.Spec : Prop :=
  ∀ n, P17274815764040657669.a n = A202785 (n + 1)

theorem P17274815764040657669.correct : P17274815764040657669.Spec := by
  intro n
  simp only [A202785, Nat.add_sub_cancel]

end A202785

/-! ## A202785.P9818855559951696356

`Δ[A085465(n+1)]`
-/

namespace A202785.P9818855559951696356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085465 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A202785.P9818855559951696356

namespace A202785

/-- `Δ[A085465(n+1)]` -/
def P9818855559951696356.Spec : Prop :=
  ∀ n, P9818855559951696356.a n = A202785 (n + 1)

end A202785

/-! ## A202785.P14891202327027836220

`∑[A143008(n+1)]+1`
-/

namespace A202785.P14891202327027836220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143008 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A202785.P14891202327027836220

namespace A202785

/-- `∑[A143008(n+1)]+1` -/
def P14891202327027836220.Spec : Prop :=
  ∀ n, P14891202327027836220.a n = A202785 (n + 1)

end A202785

/-! ## A202785.P10990530416419052708

`∑[∑[A008530(n+1)]+1]+1`
-/

namespace A202785.P10990530416419052708
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008530 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A202785.P10990530416419052708

namespace A202785

/-- `∑[∑[A008530(n+1)]+1]+1` -/
def P10990530416419052708.Spec : Prop :=
  ∀ n, P10990530416419052708.a n = A202785 (n + 1)

end A202785

/-! ## A202785.P12551163406810015012

`A085465(n+2)-A085465(n+1)`
-/

namespace A202785.P12551163406810015012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085465 (n + 2) - A085465 (n + 1)

end

end A202785.P12551163406810015012

namespace A202785

/-- `A085465(n+2)-A085465(n+1)` -/
def P12551163406810015012.Spec : Prop :=
  ∀ n, P12551163406810015012.a n = A202785 (n + 1)

end A202785

/-! ## A202785.P10981448710905535337

`∑[A003154(∑[n+1]+1)]+1`
-/

namespace A202785.P10981448710905535337
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003154 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A202785.P10981448710905535337

namespace A202785

/-- `∑[A003154(∑[n+1]+1)]+1` -/
def P10981448710905535337.Spec : Prop :=
  ∀ n, P10981448710905535337.a n = A202785 (n + 1)

end A202785

/-! ## A202785.P2554806666769972963

`A000578(n+2)+∑[A033581(∑[n+1])]`
-/

namespace A202785.P2554806666769972963
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202785.P2554806666769972963

namespace A202785

/-- `A000578(n+2)+∑[A033581(∑[n+1])]` -/
def P2554806666769972963.Spec : Prop :=
  ∀ n, P2554806666769972963.a n = A202785 (n + 1)

end A202785

/-! ## A202785.P10060094059399765564

`Δ[A048395(∑[n+1])/5]`
-/

namespace A202785.P10060094059399765564
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048395 (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A202785.P10060094059399765564

namespace A202785

/-- `Δ[A048395(∑[n+1])/5]` -/
def P10060094059399765564.Spec : Prop :=
  ∀ n, P10060094059399765564.a n = (A202785 (n + 1) : ℚ)

end A202785

/-!
# A202786: Number of 4 X 4 0..n arrays with row and column sums equal.

The programs for A202786, there is no canonical definition to state claims against.
-/

/-! ## A202786.P14167136010060713705

`A202784(eq[4, A002262(n)])`
-/

namespace A202786.P14167136010060713705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202786.P14167136010060713705

/-! ## A202786.P6567412391768586237

`A202784(eq[5, A140207(n)])`
-/

namespace A202786.P6567412391768586237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140207 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202786.P6567412391768586237

/-! ## A202786.P3586794247002695217

`A202784(A167614(n+3)+1)`
-/

namespace A202786.P3586794247002695217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202784 (A167614 (n + 3) + 1).toNat

end

end A202786.P3586794247002695217

/-! ## A202786.P13386911063996576804

`A202784(A000217(n+4)+4)`
-/

namespace A202786.P13386911063996576804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202784 (A000217 (n + 4) + 4).toNat

end

end A202786.P13386911063996576804

/-! ## A202786.P15846440006925204170

`A202784(eq[5, A002260(n+1)])`
-/

namespace A202786.P15846440006925204170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202786.P15846440006925204170

/-!
# A202787: Number of 5 X 5 0..n arrays with row and column sums equal.

The programs for A202787, there is no canonical definition to state claims against.
-/

/-! ## A202787.P18436577926614340184

`A202784(eq[7, A140207(n)])`
-/

namespace A202787.P18436577926614340184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140207 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202787.P18436577926614340184

/-! ## A202787.P13855140235305568048

`A202784(A167614(n+4)+2)`
-/

namespace A202787.P13855140235305568048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202784 (A167614 (n + 4) + 2).toNat

end

end A202787.P13855140235305568048

/-! ## A202787.P9355091803598288905

`A202784(eq[6, A002260(n+1)])`
-/

namespace A202787.P9355091803598288905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202787.P9355091803598288905

/-!
# A202788: Number of n X n binary arrays with every one adjacent to another one horizontally, diagonally, antidiagonally or vertically.

The programs for A202788, there is no canonical definition to state claims against.
-/

/-! ## A202788.P13850489389653725446

`A202795((n+1)²+n²)`
-/

namespace A202788.P13850489389653725446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202795 ((n + 1) ^ 2 + n ^ 2)

end

end A202788.P13850489389653725446

/-! ## A202788.P3750613574627189335

`record[gcd(A037012(n), A202795(n+1))]`
-/

namespace A202788.P3750613574627189335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A202795 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202788.P3750613574627189335

/-! ## A202788.P10313264338781079844

`lcm(A033999(n), A202795(A001844(n)))`
-/

namespace A202788.P10313264338781079844
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A202795 (A001844 n).toNat)

end

end A202788.P10313264338781079844

/-! ## A202788.P1835321794476794396

`or(A000007(n), A202795(A001844(n)))`
-/

namespace A202788.P1835321794476794396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A202795 (A001844 n).toNat)

end

end A202788.P1835321794476794396

/-! ## A202788.P5169350508668287532

`A001221(A095672(n+1))*A202795(A001844(n))`
-/

namespace A202788.P5169350508668287532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A095672 (n + 1)).toNat * A202795 (A001844 n).toNat

end

end A202788.P5169350508668287532

/-!
# A202789: Number of n X 2 binary arrays with every one adjacent to another one horizontally, diagonally, antidiagonally or vertically.

The programs for A202789, the canonical program `A202789.P9294733802134531002` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202789 has offset 1).

The definition of A202789 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A202789.P10365193206812455616

`ogf((2+4x+6x^2)/(1-4x+2x^2-6x^3))`
-/

namespace A202789.P10365193206812455616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 4, 6] [1, -4, 2, -6] n

end

end A202789.P10365193206812455616

namespace A202789

/-- `ogf((2+4x+6x^2)/(1-4x+2x^2-6x^3))` -/
def P10365193206812455616.Spec : Prop :=
  ∀ n, P10365193206812455616.a n = A202789 (n + 1)

end A202789

/-! ## A202789.P9294733802134531002

`4*a(n-1)-2*a(n-2)+6*a(n-3)` with `a(0)=2, a(1)=12, a(2)=50`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A202789

/-- `4*a(n-1)-2*a(n-2)+6*a(n-3)` -/
def P9294733802134531002.Spec : Prop :=
  ∀ n, P9294733802134531002.a n = A202789 (n + 1)

theorem P9294733802134531002.correct : P9294733802134531002.Spec := by
  intro n
  simp only [A202789, Nat.add_sub_cancel]

end A202789

/-! ## A202789.P14010826011129456139

`A202795(∑[n+1]+2)`
-/

namespace A202789.P14010826011129456139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202795 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A202789.P14010826011129456139

namespace A202789

/-- `A202795(∑[n+1]+2)` -/
def P14010826011129456139.Spec : Prop :=
  ∀ n, P14010826011129456139.a n = A202789 (n + 1)

end A202789

/-! ## A202789.P186446964782427753

`lcm(2, A202795(A000096(n)+3))`
-/

namespace A202789.P186446964782427753
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A202795 (A000096 n + 3).toNat)

end

end A202789.P186446964782427753

namespace A202789

/-- `lcm(2, A202795(A000096(n)+3))` -/
def P186446964782427753.Spec : Prop :=
  ∀ n, (P186446964782427753.a n : ℤ) = A202789 (n + 1)

end A202789

/-! ## A202789.P14431157947853596223

`A202795(A000096(n)+3)%A042876(n)`
-/

namespace A202789.P14431157947853596223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A202795 (A000096 n + 3).toNat) (A042876 n)

end

end A202789.P14431157947853596223

namespace A202789

/-- `A202795(A000096(n)+3)%A042876(n)` -/
def P14431157947853596223.Spec : Prop :=
  ∀ n, P14431157947853596223.a n = A202789 (n + 1)

end A202789

/-!
# A202790: Number of n X 3 binary arrays with every one adjacent to another one horizontally, diagonally, antidiagonally or vertically.

The programs for A202790, there is no canonical definition to state claims against.
-/

/-! ## A202790.P592605561075114337

`A202795(∑[n+2]+4)`
-/

namespace A202790.P592605561075114337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202795 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A202790.P592605561075114337

/-! ## A202790.P11945541944824743752

`lcm(2, A202795(A167614(n+1)))`
-/

namespace A202790.P11945541944824743752
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A202795 (A167614 (n + 1)).toNat)

end

end A202790.P11945541944824743752

/-! ## A202790.P4324422671343067967

`A202795(A167614(n+1))%A025952(n+1)`
-/

namespace A202790.P4324422671343067967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A202795 (A167614 (n + 1)).toNat) (A025952 (n + 1))

end

end A202790.P4324422671343067967

/-! ## A202790.P8546334088872501652

`A202795(A167614(n+1))+A000007(3*(n+1))`
-/

namespace A202790.P8546334088872501652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202795 (A167614 (n + 1)).toNat + A000007 (3 * (n + 1))

end

end A202790.P8546334088872501652

/-! ## A202790.P7112464961896161495

`A202795(A034856(n+2))%A143857(n)`
-/

namespace A202790.P7112464961896161495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A202795 (A034856 (n + 2)).toNat) (A143857 n)

end

end A202790.P7112464961896161495

/-!
# A202791: Number of nX4 binary arrays with every one adjacent to another one horizontally, diagonally, antidiagonally or vertically.

The programs for A202791, there is no canonical definition to state claims against.
-/

/-! ## A202791.P17774041795505086864

`A202795(A374004(n+1))`
-/

namespace A202791.P17774041795505086864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202795 (A374004 (n + 1)).toNat

end

end A202791.P17774041795505086864

/-! ## A202791.P13292331382213849768

`A202795(A052905(n)+9)`
-/

namespace A202791.P13292331382213849768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202795 (A052905 n + 9).toNat

end

end A202791.P13292331382213849768

/-! ## A202791.P2529370136087425493

`A202795(A055999(n)+10)`
-/

namespace A202791.P2529370136087425493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202795 (A055999 n + 10).toNat

end

end A202791.P2529370136087425493

/-! ## A202791.P330419904729753694

`A202795(A167614(n+2)+1)`
-/

namespace A202791.P330419904729753694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202795 (A167614 (n + 2) + 1).toNat

end

end A202791.P330419904729753694

/-! ## A202791.P15362012623352647460

`A202795(A027379(n+1)+7)`
-/

namespace A202791.P15362012623352647460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202795 (A027379 (n + 1) + 7).toNat

end

end A202791.P15362012623352647460

/-!
# A202792: Number of n X 5 binary arrays with every one adjacent to another one horizontally, diagonally, antidiagonally or vertically.

The programs for A202792, there is no canonical definition to state claims against.
-/

/-! ## A202792.P18173677801866057068

`A202795(A374005(n+1))`
-/

namespace A202792.P18173677801866057068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202795 (A374005 (n + 1)).toNat

end

end A202792.P18173677801866057068

/-! ## A202792.P14869948048754997259

`A202795(Δ[A264443(n)])`
-/

namespace A202792.P14869948048754997259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202795 (f1 (n + 1) - f1 n).toNat

end

end A202792.P14869948048754997259

/-! ## A202792.P2881830196114646505

`A202795(A046691(n+3))`
-/

namespace A202792.P2881830196114646505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202795 (A046691 (n + 3)).toNat

end

end A202792.P2881830196114646505

/-! ## A202792.P4228046753518411827

`A202795(eq[4, A193592(n)])`
-/

namespace A202792.P4228046753518411827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202795 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202792.P4228046753518411827

/-! ## A202792.P11630468502964538035

`A202795(Δ[A023545(n+1)])`
-/

namespace A202792.P11630468502964538035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202795 (f1 (n + 1) - f1 n).toNat

end

end A202792.P11630468502964538035

/-!
# A202793: Number of n X 6 binary arrays with every one adjacent to another one horizontally, diagonally, antidiagonally or vertically.

The programs for A202793, there is no canonical definition to state claims against.
-/

/-! ## A202793.P2121130843948290908

`A202795(A374007(n+1))`
-/

namespace A202793.P2121130843948290908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202795 (A374007 (n + 1)).toNat

end

end A202793.P2121130843948290908

/-! ## A202793.P8039918675837220506

`A202795(eq[7, A131818(n+1)])`
-/

namespace A202793.P8039918675837220506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202795 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202793.P8039918675837220506

/-! ## A202793.P3186388557462437015

`A202795(eq[3, A219347(n)])`
-/

namespace A202793.P3186388557462437015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202795 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202793.P3186388557462437015

/-! ## A202793.P1599919437104155107

`A202795(eq[5, A193592(n)])`
-/

namespace A202793.P1599919437104155107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202795 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202793.P1599919437104155107

/-! ## A202793.P7386638562471845929

`A202795(eq[16, A057728(n+1)])`
-/

namespace A202793.P7386638562471845929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202795 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202793.P7386638562471845929

/-!
# A202794: Number of nX7 binary arrays with every one adjacent to another one horizontally, diagonally, antidiagonally or vertically.

The programs for A202794, there is no canonical definition to state claims against.
-/

/-! ## A202794.P10413668671391673130

`A202795(A374008(n+1))`
-/

namespace A202794.P10413668671391673130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202795 (A374008 (n + 1)).toNat

end

end A202794.P10413668671391673130

/-! ## A202794.P15006178220199231397

`A202795(eq[8, A131818(n+1)])`
-/

namespace A202794.P15006178220199231397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202795 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202794.P15006178220199231397

/-! ## A202794.P2844076937681135012

`A202795(A055999(n+4))`
-/

namespace A202794.P2844076937681135012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202795 (A055999 (n + 4)).toNat

end

end A202794.P2844076937681135012

/-! ## A202794.P12192577707227880678

`A202795(eq[4, A219347(n)])`
-/

namespace A202794.P12192577707227880678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202795 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202794.P12192577707227880678

/-! ## A202794.P16121390569239712545

`A202795(eq[6, A193592(n)])`
-/

namespace A202794.P16121390569239712545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202795 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202794.P16121390569239712545

/-!
# A202795: T(n,k)=Number of nXk binary arrays with every one adjacent to another one horizontally, diagonally, antidiagonally or vertically.

The programs for A202795, there is no canonical definition to state claims against.
-/

/-! ## A202795.P16459686615810287837

`A004181(A219569(n+1))`
-/

namespace A202795.P16459686615810287837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004181 (A219569 (n + 1)).toNat

end

end A202795.P16459686615810287837

/-! ## A202795.P17573589421381126003

`A023443(A219569(n+1)+1)`
-/

namespace A202795.P17573589421381126003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A219569 (n + 1) + 1).toNat

end

end A202795.P17573589421381126003

/-! ## A202795.P18386261812747742606

`A023444(A219569(n+1)+2)`
-/

namespace A202795.P18386261812747742606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A219569 (n + 1) + 2).toNat

end

end A202795.P18386261812747742606

/-! ## A202795.P6159205826810847225

`A289207(A219569(n+1)+2)`
-/

namespace A202795.P6159205826810847225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A219569 (n + 1) + 2).toNat

end

end A202795.P6159205826810847225

/-! ## A202795.P16593469436128285664

`A001281(2*A219569(n+1))`
-/

namespace A202795.P16593469436128285664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (2 * A219569 (n + 1)).toNat

end

end A202795.P16593469436128285664

/-!
# A202796: Number of n X 2 binary arrays with every one adjacent to another one horizontally or vertically.

The programs for A202796, the canonical program `A202796.P4436398108646295075` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202796 has offset 1).

The definition of A202796 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 180 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A202796.P3113517799026337583

`ogf((2+4x+4x^2)/(1-3x-x^2-4x^3))`
-/

namespace A202796.P3113517799026337583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 4, 4] [1, -3, -1, -4] n

end

end A202796.P3113517799026337583

namespace A202796

/-- `ogf((2+4x+4x^2)/(1-3x-x^2-4x^3))` -/
def P3113517799026337583.Spec : Prop :=
  ∀ n, P3113517799026337583.a n = A202796 (n + 1)

end A202796

/-! ## A202796.P4436398108646295075

`3*a(n-1)+a(n-2)+4*a(n-3)` with `a(0)=2, a(1)=10, a(2)=36`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A202796

/-- `3*a(n-1)+a(n-2)+4*a(n-3)` -/
def P4436398108646295075.Spec : Prop :=
  ∀ n, (P4436398108646295075.a n : ℤ) = A202796 (n + 1)

theorem P4436398108646295075.correct : P4436398108646295075.Spec := by
  intro n
  simp only [A202796, Nat.add_sub_cancel]

end A202796

/-! ## A202796.P14272957918138404146

`A202802(∑[n+1]+2)`
-/

namespace A202796.P14272957918138404146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202802 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A202796.P14272957918138404146

namespace A202796

/-- `A202802(∑[n+1]+2)` -/
def P14272957918138404146.Spec : Prop :=
  ∀ n, P14272957918138404146.a n = A202796 (n + 1)

end A202796

/-! ## A202796.P17852077613994261466

`A295416(∑[n+1]+2)`
-/

namespace A202796.P17852077613994261466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295416 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A202796.P17852077613994261466

namespace A202796

/-- `A295416(∑[n+1]+2)` -/
def P17852077613994261466.Spec : Prop :=
  ∀ n, P17852077613994261466.a n = A202796 (n + 1)

end A202796

/-! ## A202796.P6263929228078286089

`record[A202802(n+3)/A297654(n+1)]`
-/

namespace A202796.P6263929228078286089
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202802 (n + 3) : ℚ) / (A297654 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202796.P6263929228078286089

namespace A202796

/-- `record[A202802(n+3)/A297654(n+1)]` -/
def P6263929228078286089.Spec : Prop :=
  ∀ n, P6263929228078286089.a n = (A202796 (n + 1) : ℚ)

end A202796

/-!
# A202797: Number of n X 3 binary arrays with every one adjacent to another one horizontally or vertically.

The programs for A202797, there is no canonical definition to state claims against.
-/

/-! ## A202797.P12726869464907740818

`A202802(∑[n+2]+4)`
-/

namespace A202797.P12726869464907740818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202802 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A202797.P12726869464907740818

/-! ## A202797.P13132884333174428266

`lcm(2, A202802(A167614(n+1)))`
-/

namespace A202797.P13132884333174428266
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A202802 (A167614 (n + 1)).toNat)

end

end A202797.P13132884333174428266

/-! ## A202797.P1819963543955130923

`A036225(n)*A202802(A167614(n+1))`
-/

namespace A202797.P1819963543955130923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036225 n * A202802 (A167614 (n + 1)).toNat

end

end A202797.P1819963543955130923

/-! ## A202797.P8685351250810198997

`A202802(A167614(n+1))%A220866(n+1)`
-/

namespace A202797.P8685351250810198997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A202802 (A167614 (n + 1)).toNat) (A220866 (n + 1))

end

end A202797.P8685351250810198997

/-!
# A202798: Number of nX4 binary arrays with every one adjacent to another one horizontally or vertically.

The programs for A202798, there is no canonical definition to state claims against.
-/

/-! ## A202798.P9353853218632814030

`A202802(A374004(n+1))`
-/

namespace A202798.P9353853218632814030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202802 (A374004 (n + 1)).toNat

end

end A202798.P9353853218632814030

/-! ## A202798.P5912711736345465209

`A202802(A052905(n)+9)`
-/

namespace A202798.P5912711736345465209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202802 (A052905 n + 9).toNat

end

end A202798.P5912711736345465209

/-! ## A202798.P1585415967760268683

`A202802(A055999(n)+10)`
-/

namespace A202798.P1585415967760268683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202802 (A055999 n + 10).toNat

end

end A202798.P1585415967760268683

/-! ## A202798.P1730400877114176980

`A202802(A167614(n+2)+1)`
-/

namespace A202798.P1730400877114176980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202802 (A167614 (n + 2) + 1).toNat

end

end A202798.P1730400877114176980

/-! ## A202798.P3869690387161593311

`A202802(A027379(n+1)+7)`
-/

namespace A202798.P3869690387161593311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202802 (A027379 (n + 1) + 7).toNat

end

end A202798.P3869690387161593311

/-!
# A202799: Number of nX5 binary arrays with every one adjacent to another one horizontally or vertically.

The programs for A202799, there is no canonical definition to state claims against.
-/

/-! ## A202799.P10530993782825515402

`A202802(A374005(n+1))`
-/

namespace A202799.P10530993782825515402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202802 (A374005 (n + 1)).toNat

end

end A202799.P10530993782825515402

/-! ## A202799.P12425482870644443934

`A202802(A056000(n)+15)`
-/

namespace A202799.P12425482870644443934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202802 (A056000 n + 15).toNat

end

end A202799.P12425482870644443934

/-! ## A202799.P6165849880227911596

`A202802(A046691(n+3))`
-/

namespace A202799.P6165849880227911596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202802 (A046691 (n + 3)).toNat

end

end A202799.P6165849880227911596

/-! ## A202799.P3674335030181936780

`A202802(A056115(n)+11)`
-/

namespace A202799.P3674335030181936780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202802 (A056115 n + 11).toNat

end

end A202799.P3674335030181936780

/-! ## A202799.P14231576252370828676

`A202802(Δ[A023545(n+1)])`
-/

namespace A202799.P14231576252370828676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202802 (f1 (n + 1) - f1 n).toNat

end

end A202799.P14231576252370828676

