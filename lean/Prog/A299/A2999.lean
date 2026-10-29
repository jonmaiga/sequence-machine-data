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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
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
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A299900: Coordination sequence for "ftu" 3D tiling with respect to second type of node.

The programs for A299900, there is no canonical definition to state claims against.
-/

/-! ## A299900.P2182440015215886030

`A008029(n)-A001222(A328441(n))`
-/

namespace A299900.P2182440015215886030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008029 n - A001222 (A328441 n).toNat

end

end A299900.P2182440015215886030

/-!
# A299901: Partial sums of A299900.

The programs for A299901, there is no canonical definition to state claims against.
-/

/-! ## A299901.P13806497040222094991

`∑[A299900(n)]`
-/

namespace A299901.P13806497040222094991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299901.P13806497040222094991

/-! ## A299901.P7184339829919900088

`A299900(n)+a(A004273(n)-n)` with `a(0)=1`
-/

namespace A299901.P7184339829919900088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A299900 n + a (A004273 n - (n : ℤ)).toNat

end

end A299901.P7184339829919900088

/-! ## A299901.P16510830699245313291

`a(n-1)+A299900(n)+A000038(n)` with `a(0)=1`
-/

namespace A299901.P16510830699245313291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A299900 n + A000038 n)

end

end A299901.P16510830699245313291

/-! ## A299901.P4949827185173428251

`∑[A008029(n)-A001222(A328441(n))]`
-/

namespace A299901.P4949827185173428251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008029 n - A001222 (A328441 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299901.P4949827185173428251

/-!
# A299902: Partial sums of A033616.

The programs for A299902, there is no canonical definition to state claims against.
-/

/-! ## A299902.P3075751201517906403

`∑[A033616(n)]`
-/

namespace A299902.P3075751201517906403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033616 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299902.P3075751201517906403

/-! ## A299902.P16775831302480107562

`A033616(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A299902.P16775831302480107562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A033616 n + a (A023443 n).toNat

end

end A299902.P16775831302480107562

/-! ## A299902.P13025959796194194237

`a(n-1)+A033616(n)-A000007(n)` with `a(0)=1`
-/

namespace A299902.P13025959796194194237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A033616 n - A000007 n)

end

end A299902.P13025959796194194237

/-! ## A299902.P10828426359753527471

`a(n-1)+A033616(n)%A158732(n)` with `a(0)=1`
-/

namespace A299902.P10828426359753527471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A033616 n) (A158732 n)

end

end A299902.P10828426359753527471

/-! ## A299902.P209300310855544385

`A033616(n)+a(n-1/a(A000038(n)))` with `a(0)=1`
-/

namespace A299902.P209300310855544385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A033616 n + a (SequenceMachineLib.roundAway ((n : ℚ) - 1 / (a (A000038 n).toNat : ℚ))).toNat

end

end A299902.P209300310855544385

/-! ## A299902.P9815078196452923586

`A033616(n)+a(n-1)*a(A057427(n)-1)` with `a(0)=1`
-/

namespace A299902.P9815078196452923586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A033616 n + a (n - 1) * a (A057427 n - 1).toNat

end

end A299902.P9815078196452923586

/-!
# A299903: Partial sums of A033617.

The programs for A299903, there is no canonical definition to state claims against.
-/

/-! ## A299903.P5955325183420435109

`∑[A033617(n)]`
-/

namespace A299903.P5955325183420435109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033617 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299903.P5955325183420435109

/-! ## A299903.P142588961198508763

`A033617(n)+a(n-A057427(n))` with `a(0)=1`
-/

namespace A299903.P142588961198508763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A033617 n + a ((n : ℤ) - A057427 n).toNat

end

end A299903.P142588961198508763

/-! ## A299903.P8020704408403852104

`a(n-1)+A033617(n)+A000007(n)` with `a(0)=1`
-/

namespace A299903.P8020704408403852104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A033617 n + A000007 n)

end

end A299903.P8020704408403852104

/-! ## A299903.P4696976948901200624

`∑[A213257((n+1)²)]-n`
-/

namespace A299903.P4696976948901200624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213257 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A299903.P4696976948901200624

/-! ## A299903.P15048720757106859864

`∑[A001222(A000010(n!))+(n+1)²]`
-/

namespace A299903.P15048720757106859864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000010 (Nat.factorial n)).toNat + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299903.P15048720757106859864

/-!
# A299904: Array read by antidiagonals: T(n,k) = number of n X k lonesum decomposable (0,1) matrices of decomposition order 1.

The programs for A299904, there is no canonical definition to state claims against.
-/

/-! ## A299904.P2325591142577555866

`A099594(n)-1`
-/

namespace A299904.P2325591142577555866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099594 n - 1

end

end A299904.P2325591142577555866

/-! ## A299904.P5714503318498757847

`A134824(n+2)+A099594(n)`
-/

namespace A299904.P5714503318498757847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A099594 n

end

end A299904.P5714503318498757847

/-! ## A299904.P829892568233140154

`A153881(n+2)+A099594(n)`
-/

namespace A299904.P829892568233140154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A099594 n

end

end A299904.P829892568233140154

/-! ## A299904.P3406138386079447410

`A260196(n+2)+A099594(n)`
-/

namespace A299904.P3406138386079447410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A099594 n

end

end A299904.P3406138386079447410

/-! ## A299904.P11203267028658689058

`A350745(n)/A007318(n)-1`
-/

namespace A299904.P11203267028658689058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350745 n : ℚ) / (A007318 n : ℚ) - 1

end

end A299904.P11203267028658689058

/-! ## A299904.P11202818017095600980

`A033999(2*n+1)+A099594(n)`
-/

namespace A299904.P11202818017095600980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + A099594 n

end

end A299904.P11202818017095600980

/-! ## A299904.P7171383561182211133

`A118830(2*n+1)+A099594(n)`
-/

namespace A299904.P7171383561182211133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118830 (2 * n + 1) + A099594 n

end

end A299904.P7171383561182211133

/-! ## A299904.P3912823180681798974

`A316441(A089294(n))+A099594(n)`
-/

namespace A299904.P3912823180681798974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (A089294 n).toNat + A099594 n

end

end A299904.P3912823180681798974

/-!
# A299905: Array read by antidiagonals: T(n,k) = number of n X k lonesum decomposable (0,1) matrices of decomposition order 2.

The programs for A299905, there is no canonical definition to state claims against.
-/

/-! ## A299905.P15091600126765124751

`A004526(A136126(n+1)-2*A299904(n))`
-/

namespace A299905.P15091600126765124751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A136126 (n + 1) - 2 * A299904 n).toNat

end

end A299905.P15091600126765124751

/-! ## A299905.P2343743063172366002

`A004526(A136126(n+1)-A299904(n)-A299904(n))`
-/

namespace A299905.P2343743063172366002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A136126 (n + 1) - A299904 n - A299904 n).toNat

end

end A299905.P2343743063172366002

/-! ## A299905.P11101272574795645956

`A003602(A136126(n+1))-A099594(n)`
-/

namespace A299905.P11101272574795645956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A136126 (n + 1)).toNat - A099594 n

end

end A299905.P11101272574795645956

/-! ## A299905.P6948370330009099222

`A004526(A136126(n+1))-A299904(n)`
-/

namespace A299905.P6948370330009099222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A136126 (n + 1)).toNat - A299904 n

end

end A299905.P6948370330009099222

/-! ## A299905.P15851530971171189486

`A004526(A136126(n+1)+1)-A099594(n)`
-/

namespace A299905.P15851530971171189486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A136126 (n + 1) + 1).toNat - A099594 n

end

end A299905.P15851530971171189486

/-!
# A299906: Array read by antidiagonals: T(n,k) = number of n X k lonesum decomposable (0,1) matrices.

The programs for A299906, there is no canonical definition to state claims against.
-/

/-! ## A299906.P12084920919200524405

`A003602(16*A136126(n+1))`
-/

namespace A299906.P12084920919200524405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (16 * A136126 (n + 1)).toNat

end

end A299906.P12084920919200524405

/-! ## A299906.P15006324556749441880

`A003602(lcm(16, A136126(n+1)))`
-/

namespace A299906.P15006324556749441880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (Int.lcm 16 (A136126 (n + 1)))

end

end A299906.P15006324556749441880

/-! ## A299906.P17821242352351766097

`A089868(A117401(n))`
-/

namespace A299906.P17821242352351766097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089868 (A117401 n).toNat

end

end A299906.P17821242352351766097

/-! ## A299906.P17838633513227417879

`A000196(A395149(n))`
-/

namespace A299906.P17838633513227417879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A395149 n).toNat

end

end A299906.P17838633513227417879

/-! ## A299906.P7719590665474048756

`A344614(A077028(n)%A373273(2*(n+1)))`
-/

namespace A299906.P7719590665474048756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344614 (Int.tmod (A077028 n) (A373273 (2 * (n + 1)))).toNat

end

end A299906.P7719590665474048756

/-!
# A299907: Number of decomposable lonesum n X n (0,1) matrices.

The programs for A299907, there is no canonical definition to state claims against.
-/

/-! ## A299907.P15739174640826229114

`A299906(∑[4*n])`
-/

namespace A299907.P15739174640826229114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299906 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A299907.P15739174640826229114

/-! ## A299907.P12929705674701029733

`record[A299906(A265225(n))]`
-/

namespace A299907.P12929705674701029733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299906 (A265225 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299907.P12929705674701029733

/-!
# A299908: Irregular triangle read by rows: T(n,k) (n>=1, 0<=k<=n) gives winning pair of moves for the game of Concentration if there are n pairs of cards and k cards have been flipped, using 0 for NN, 1 for NO, and 2 for OO.

The programs for A299908, there is no canonical definition to state claims against.
-/

/-! ## A299908.P2442236707906505285

`A025581(n)%A338702(A325133(A245183(n+3)))`
-/

namespace A299908.P2442236707906505285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025581 n) (A338702 (A325133 (A245183 (n + 3)).toNat).toNat)

end

end A299908.P2442236707906505285

/-! ## A299908.P11106216918579689748

`A025581(n)%A074592(A232047(n+1))`
-/

namespace A299908.P11106216918579689748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025581 n) (A074592 (A232047 (n + 1)).toNat)

end

end A299908.P11106216918579689748

/-! ## A299908.P11377463424456342380

`A039969(record[A023981(n+1)]*A178116(n))`
-/

namespace A299908.P11377463424456342380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023981 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039969 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A178116 n).toNat

end

end A299908.P11377463424456342380

/-! ## A299908.P5639716052104225773

`and(A000959(n+1), A124010(A110169(n)))`
-/

namespace A299908.P5639716052104225773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000959 (n + 1)) (A124010 (A110169 n).toNat)

end

end A299908.P5639716052104225773

/-! ## A299908.P10283621204362169184

`A055641(and(A049310(n), A052955(n)))`
-/

namespace A299908.P10283621204362169184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (Int.land (A049310 n) (A052955 n)).toNat

end

end A299908.P10283621204362169184

/-!
# A299909: Coordination sequence of node of type 3^6 in 3-uniform tiling #3.54 in the Galebach listing.

The programs for A299909, the canonical program `A299909.P17121766481924184383` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299909 has offset 0).

The definition of A299909 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A299909.P17121766481924184383

`ogf((1+5x+7x^2+11x^3+12x^4+6x^5+12x^6+11x^7+7x^8+5x^9+x^10)/(1-x+x^2-x^3-x^7+x^8-x^9+x^10))`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A299909

/-- `ogf((1+5x+7x^2+11x^3+12x^4+6x^5+12x^6+11x^7+7x^8+5x^9+x^10)/(1-x+x^2-x^3-x^7+x^8-x^9+x^10))` -/
def P17121766481924184383.Spec : Prop :=
  ∀ n, P17121766481924184383.a n = A299909 n

theorem P17121766481924184383.correct : P17121766481924184383.Spec := by
  intro n
  simp only [A299909]

end A299909

/-! ## A299909.P14953554879842299729

`2*A315723(n)-A315716(n)`
-/

namespace A299909.P14953554879842299729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315723 n - A315716 n

end

end A299909.P14953554879842299729

namespace A299909

/-- `2*A315723(n)-A315716(n)` -/
def P14953554879842299729.Spec : Prop :=
  ∀ n, P14953554879842299729.a n = A299909 n

end A299909

/-! ## A299909.P1363881829853689155

`A005843(A315723(n))-A315716(n)`
-/

namespace A299909.P1363881829853689155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A315723 n).toNat - A315716 n

end

end A299909.P1363881829853689155

namespace A299909

/-- `A005843(A315723(n))-A315716(n)` -/
def P1363881829853689155.Spec : Prop :=
  ∀ n, P1363881829853689155.a n = A299909 n

end A299909

/-! ## A299909.P1354061949898214683

`A008458(n-A316345(A062399(n)))`
-/

namespace A299909.P1354061949898214683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 ((n : ℤ) - A316345 (A062399 n).toNat).toNat

end

end A299909.P1354061949898214683

namespace A299909

/-- `A008458(n-A316345(A062399(n)))` -/
def P1354061949898214683.Spec : Prop :=
  ∀ n, P1354061949898214683.a n = A299909 n

end A299909

/-! ## A299909.P7126278666467120751

`A008458(A351870(n)-A316345(n))`
-/

namespace A299909.P7126278666467120751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A351870 n - A316345 n).toNat

end

end A299909.P7126278666467120751

namespace A299909

/-- `A008458(A351870(n)-A316345(n))` -/
def P7126278666467120751.Spec : Prop :=
  ∀ n, P7126278666467120751.a n = A299909 n

end A299909

/-!
# A299910: Coordination sequence of point of type 3.3.4.3.4 in 3-uniform tiling #3.54 in the Galebach listing.

The programs for A299910, the canonical program `A299910.P17536990705546819097` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299910 has offset 0).

The definition of A299910 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A299910.P17536990705546819097

`ogf((1+4x+6x^2+11x^3+11x^4+12x^5+11x^6+11x^7+6x^8+4x^9+x^10)/(1-x+x^2-x^3-x^7+x^8-x^9+x^10))`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A299910

/-- `ogf((1+4x+6x^2+11x^3+11x^4+12x^5+11x^6+11x^7+6x^8+4x^9+x^10)/(1-x+x^2-x^3-x^7+x^8-x^9+x^10))` -/
def P17536990705546819097.Spec : Prop :=
  ∀ n, P17536990705546819097.a n = A299910 n

theorem P17536990705546819097.correct : P17536990705546819097.Spec := by
  intro n
  simp only [A299910]

end A299910

/-! ## A299910.P11489710832867287388

`A286989(A054406(2*n+1)^A051716(n)²-A358973(n+1))`
-/

namespace A299910.P11489710832867287388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286989 (SequenceMachineLib.roundAway ((A054406 (2 * n + 1) : ℚ) ^ (A051716 n ^ 2 : ℤ) - (A358973 (n + 1) : ℚ))).toNat

end

end A299910.P11489710832867287388

namespace A299910

/-- `A286989(A054406(2*n+1)^A051716(n)²-A358973(n+1))` -/
def P11489710832867287388.Spec : Prop :=
  ∀ n, P11489710832867287388.a n = A299910 n

end A299910

/-! ## A299910.P9079990375980061170

`A315034(n)+A001222(A213095(n))`
-/

namespace A299910.P9079990375980061170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315034 n + A001222 (A213095 n).toNat

end

end A299910.P9079990375980061170

namespace A299910

/-- `A315034(n)+A001222(A213095(n))` -/
def P9079990375980061170.Spec : Prop :=
  ∀ n, P9079990375980061170.a n = A299910 n

end A299910

/-!
# A299911: Coordination sequence of point of type 3.3.3.4.4 in 3-uniform tiling #3.54 in the Galebach listing.

The programs for A299911, the canonical program `A299911.P1472550520581753030` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299911 has offset 0).

The definition of A299911 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A299911.P1472550520581753030

`ogf((1+4x+7x^2+9x^3+12x^4+12x^5+12x^6+9x^7+7x^8+4x^9+x^10)/(1-x+x^2-x^3-x^7+x^8-x^9+x^10))`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A299911

/-- `ogf((1+4x+7x^2+9x^3+12x^4+12x^5+12x^6+9x^7+7x^8+4x^9+x^10)/(1-x+x^2-x^3-x^7+x^8-x^9+x^10))` -/
def P1472550520581753030.Spec : Prop :=
  ∀ n, P1472550520581753030.a n = A299911 n

theorem P1472550520581753030.correct : P1472550520581753030.Spec := by
  intro n
  simp only [A299911]

end A299911

/-! ## A299911.P13872850442937538548

`A325770(A198285(n+3))+A301680(n)`
-/

namespace A299911.P13872850442937538548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325770 (A198285 (n + 3)).toNat + A301680 n

end

end A299911.P13872850442937538548

namespace A299911

/-- `A325770(A198285(n+3))+A301680(n)` -/
def P13872850442937538548.Spec : Prop :=
  ∀ n, P13872850442937538548.a n = A299911 n

end A299911

/-! ## A299911.P7886598341521709861

`record[A184594(2*n+1)%A184584(n+3)]`
-/

namespace A299911.P7886598341521709861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184594 (2 * n + 1)) (A184584 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299911.P7886598341521709861

namespace A299911

/-- `record[A184594(2*n+1)%A184584(n+3)]` -/
def P7886598341521709861.Spec : Prop :=
  ∀ n, P7886598341521709861.a n = A299911 n

end A299911

/-! ## A299911.P8334245253122671404

`A313644(n)+A001221(A001764(n))`
-/

namespace A299911.P8334245253122671404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313644 n + A001221 (A001764 n).toNat

end

end A299911.P8334245253122671404

namespace A299911

/-- `A313644(n)+A001221(A001764(n))` -/
def P8334245253122671404.Spec : Prop :=
  ∀ n, P8334245253122671404.a n = A299911 n

end A299911

/-! ## A299911.P49396012419173450

`A323014(A059171(n+1))+A313580(n)`
-/

namespace A299911.P49396012419173450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323014 (A059171 (n + 1)).toNat + A313580 n

end

end A299911.P49396012419173450

namespace A299911

/-- `A323014(A059171(n+1))+A313580(n)` -/
def P49396012419173450.Spec : Prop :=
  ∀ n, P49396012419173450.a n = A299911 n

end A299911

/-!
# A299912: a(n) = a056240-type of n-th prime, or -1 if the a056240-type is not defined.

The programs for A299912, there is no canonical definition to state claims against.
-/

/-! ## A299912.P6828006192904813101

`A158052((A008016(n)+1)*A069624(n+1))`
-/

namespace A299912.P6828006192904813101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158052 ((A008016 n + 1) * A069624 (n + 1)).toNat

end

end A299912.P6828006192904813101

/-! ## A299912.P1667753352146531051

`A158052(lcm(A008016(n)+1, A069624(n+1)))`
-/

namespace A299912.P1667753352146531051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158052 (Int.lcm (A008016 n + 1) (A069624 (n + 1)))

end

end A299912.P1667753352146531051

/-! ## A299912.P10512389606375709554

`A081729(or(A060548(n+1), A315653(n)))`
-/

namespace A299912.P10512389606375709554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081729 (Int.lor (A060548 (n + 1)) (A315653 n)).toNat

end

end A299912.P10512389606375709554

/-! ## A299912.P7639416088493370103

`A158052(or(A310582(n), A350315(n+1)))`
-/

namespace A299912.P7639416088493370103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158052 (Int.lor (A310582 n) (A350315 (n + 1))).toNat

end

end A299912.P7639416088493370103

/-! ## A299912.P6108219958756292931

`A158052(A054541(n+1)*A186424(n))`
-/

namespace A299912.P6108219958756292931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158052 (A054541 (n + 1) * A186424 n).toNat

end

end A299912.P6108219958756292931

/-! ## A299912.P12962913592728737445

`A272901(n+1)-A307742(A045943(n+1))`
-/

namespace A299912.P12962913592728737445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272901 (n + 1) - A307742 (A045943 (n + 1)).toNat

end

end A299912.P12962913592728737445

/-!
# A299913: a(n) = a(n-1) + 2*a(n-2) if n even, or 3*a(n-1) + 4*a(n-2) if n odd, starting with 0, 1.

The programs for A299913, the canonical program `A299913.P16958885927451333317` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299913 has offset 0).

The definition of A299913 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A299913.P16958885927451333317

`ogf((x+2x^2)/(1+x-8x^2-8x^3))`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A299913

/-- `ogf((x+2x^2)/(1+x-8x^2-8x^3))` -/
def P16958885927451333317.Spec : Prop :=
  ∀ n, P16958885927451333317.a n = A299913 n

theorem P16958885927451333317.correct : P16958885927451333317.Spec := by
  intro n
  simp only [A299913]

end A299913

/-! ## A299913.P15032817359370227916

`(-1)^n+8*a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A299913.P15032817359370227916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (-1) ^ n + 8 * a (n - 2)

end

end A299913.P15032817359370227916

namespace A299913

/-- `(-1)^n+8*a(n-2)` -/
def P15032817359370227916.Spec : Prop :=
  ∀ n, P15032817359370227916.a n = A299913 n

end A299913

/-! ## A299913.P1726828338384159266

`Δ[(2*a(n-1)-1)*gcd(2, n)]` with `a(0)=1`
-/

namespace A299913.P1726828338384159266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (2 * f1 (n - 1) - 1) * (Nat.gcd 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A299913.P1726828338384159266

namespace A299913

/-- `Δ[(2*a(n-1)-1)*gcd(2, n)]` -/
def P1726828338384159266.Spec : Prop :=
  ∀ n, P1726828338384159266.a n = A299913 n

end A299913

/-! ## A299913.P6861026834980435252

`Δ[A155803(A004526(3*n))]`
-/

namespace A299913.P6861026834980435252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155803 (A004526 (3 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A299913.P6861026834980435252

namespace A299913

/-- `Δ[A155803(A004526(3*n))]` -/
def P6861026834980435252.Spec : Prop :=
  ∀ n, P6861026834980435252.a n = A299913 n

end A299913

/-! ## A299913.P9263358830358109842

`Δ[A155803(A123108(3*n))]`
-/

namespace A299913.P9263358830358109842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155803 (A123108 (3 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A299913.P9263358830358109842

namespace A299913

/-- `Δ[A155803(A123108(3*n))]` -/
def P9263358830358109842.Spec : Prop :=
  ∀ n, P9263358830358109842.a n = A299913 n

end A299913

/-! ## A299913.P6927477537769322046

`Δ[A155803(A004526(n)+n)]`
-/

namespace A299913.P6927477537769322046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155803 (A004526 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A299913.P6927477537769322046

namespace A299913

/-- `Δ[A155803(A004526(n)+n)]` -/
def P6927477537769322046.Spec : Prop :=
  ∀ n, P6927477537769322046.a n = A299913 n

end A299913

/-! ## A299913.P8980515426387506976

`Δ[A155803(A123108(n)+n)]`
-/

namespace A299913.P8980515426387506976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155803 (A123108 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A299913.P8980515426387506976

namespace A299913

/-- `Δ[A155803(A123108(n)+n)]` -/
def P8980515426387506976.Spec : Prop :=
  ∀ n, P8980515426387506976.a n = A299913 n

end A299913

/-! ## A299913.P764026996892455121

`abs(A094014(n)-∑[A094014(n)])`
-/

namespace A299913.P764026996892455121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094014 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A094014 n - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A299913.P764026996892455121

namespace A299913

/-- `abs(A094014(n)-∑[A094014(n)])` -/
def P764026996892455121.Spec : Prop :=
  ∀ n, P764026996892455121.a n = A299913 n

end A299913

/-! ## A299913.P10893043541852072094

`A000079(A007494(n))/4-a(n-1)` with `a(0)=0`
-/

namespace A299913.P10893043541852072094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (A000079 (A007494 n).toNat : ℚ) / 4 - a (n - 1)

end

end A299913.P10893043541852072094

namespace A299913

/-- `A000079(A007494(n))/4-a(n-1)` -/
def P10893043541852072094.Spec : Prop :=
  ∀ n, P10893043541852072094.a n = (A299913 n : ℚ)

end A299913

/-! ## A299913.P14463512389942118350

`round(Δ[A011782(A133223(n+1))/7])`
-/

namespace A299913.P14463512389942118350
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 (A133223 (n + 1)).toNat : ℚ) / 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)

end

end A299913.P14463512389942118350

namespace A299913

/-- `round(Δ[A011782(A133223(n+1))/7])` -/
def P14463512389942118350.Spec : Prop :=
  ∀ n, P14463512389942118350.a n = A299913 n

end A299913

/-!
# A299914: a(n) = a(n-1) + 3*a(n-2) if n even, or 2*a(n-1) + 4*a(n-2) if n odd, starting with 0, 1.

The programs for A299914, the canonical program `A299914.P15337878653778409886` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299914 has offset 0).

The definition of A299914 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A299914.P15337878653778409886

`9*a(n-2)-12*a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=6`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A299914

/-- `9*a(n-2)-12*a(n-4)` -/
def P15337878653778409886.Spec : Prop :=
  ∀ n, P15337878653778409886.a n = A299914 n

theorem P15337878653778409886.correct : P15337878653778409886.Spec := by
  intro n
  simp only [A299914]

end A299914

/-! ## A299914.P17848750715408860998

`ogf((x+x^2-3x^3)/(1-9x^2+12x^4))`
-/

namespace A299914.P17848750715408860998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1, -3] [1, 0, -9, 0, 12] n

end

end A299914.P17848750715408860998

namespace A299914

/-- `ogf((x+x^2-3x^3)/(1-9x^2+12x^4))` -/
def P17848750715408860998.Spec : Prop :=
  ∀ n, P17848750715408860998.a n = A299914 n

end A299914

/-!
# A299915: a(n) = A299914(2n).

The programs for A299915, the canonical program `A299915.P2759897045341595723` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299915 has offset 0).

The definition of A299915 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A299915.P17455523621053191737

`ogf(x/(1-9x+12x^2))`
-/

namespace A299915.P17455523621053191737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -9, 12] n

end

end A299915.P17455523621053191737

namespace A299915

/-- `ogf(x/(1-9x+12x^2))` -/
def P17455523621053191737.Spec : Prop :=
  ∀ n, P17455523621053191737.a n = A299915 n

end A299915

/-! ## A299915.P14106597217287115918

`9*a(n-1)-12*a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A299915.P14106597217287115918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  9 * a (n - 1) - 12 * a (n - 2)

end

end A299915.P14106597217287115918

namespace A299915

/-- `9*a(n-1)-12*a(n-2)` -/
def P14106597217287115918.Spec : Prop :=
  ∀ n, P14106597217287115918.a n = A299915 n

end A299915

/-! ## A299915.P2759897045341595723

`A299914(2*n)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A299915

/-- `A299914(2*n)` -/
def P2759897045341595723.Spec : Prop :=
  ∀ n, P2759897045341595723.a n = A299915 n

theorem P2759897045341595723.correct : P2759897045341595723.Spec := by
  intro n
  simp only [A299915]

end A299915

/-! ## A299915.P7862647431404052624

`record[A299914(A265667(n))]`
-/

namespace A299915.P7862647431404052624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299914 (A265667 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299915.P7862647431404052624

namespace A299915

/-- `record[A299914(A265667(n))]` -/
def P7862647431404052624.Spec : Prop :=
  ∀ n, P7862647431404052624.a n = A299915 n

end A299915

/-! ## A299915.P4546810929488689191

`record[A299914(A124625(n+1))]`
-/

namespace A299915.P4546810929488689191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299914 (A124625 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299915.P4546810929488689191

namespace A299915

/-- `record[A299914(A124625(n+1))]` -/
def P4546810929488689191.Spec : Prop :=
  ∀ n, P4546810929488689191.a n = A299915 n

end A299915

/-! ## A299915.P9300353309915819139

`record[A299914(A029579(n)-1)]`
-/

namespace A299915.P9300353309915819139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299914 (A029579 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299915.P9300353309915819139

namespace A299915

/-- `record[A299914(A029579(n)-1)]` -/
def P9300353309915819139.Spec : Prop :=
  ∀ n, P9300353309915819139.a n = A299915 n

end A299915

/-! ## A299915.P13496102983345136794

`record[A299914(n)^A033999(n)]`
-/

namespace A299915.P13496102983345136794
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299914 n : ℚ) ^ (A033999 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299915.P13496102983345136794

namespace A299915

/-- `record[A299914(n)^A033999(n)]` -/
def P13496102983345136794.Spec : Prop :=
  ∀ n, P13496102983345136794.a n = (A299915 n : ℚ)

end A299915

/-! ## A299915.P2283178266061543372

`record[A299914(A026741(n+1)-1)]`
-/

namespace A299915.P2283178266061543372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299914 (A026741 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299915.P2283178266061543372

namespace A299915

/-- `record[A299914(A026741(n+1)-1)]` -/
def P2283178266061543372.Spec : Prop :=
  ∀ n, P2283178266061543372.a n = A299915 n

end A299915

/-! ## A299915.P12442140089833347325

`record[A299914(A004275(A056239(n+1)))]`
-/

namespace A299915.P12442140089833347325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299914 (A004275 (A056239 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299915.P12442140089833347325

namespace A299915

/-- `record[A299914(A004275(A056239(n+1)))]` -/
def P12442140089833347325.Spec : Prop :=
  ∀ n, P12442140089833347325.a n = A299915 n

end A299915

/-! ## A299915.P6008584529410753424

`∑[A285391(n)]-A285391(n)`
-/

namespace A299915.P6008584529410753424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A285391 n

end

end A299915.P6008584529410753424

namespace A299915

/-- `∑[A285391(n)]-A285391(n)` -/
def P6008584529410753424.Spec : Prop :=
  ∀ n, P6008584529410753424.a n = A299915 n

end A299915

/-!
# A299916: a(n) = A299914(2n+1).

The programs for A299916, the canonical program `A299916.P12333873613617741462` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299916 has offset 0).

The definition of A299916 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A299916.P12024172195306611646

`ogf((1-3x)/(1-9x+12x^2))`
-/

namespace A299916.P12024172195306611646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3] [1, -9, 12] n

end

end A299916.P12024172195306611646

namespace A299916

/-- `ogf((1-3x)/(1-9x+12x^2))` -/
def P12024172195306611646.Spec : Prop :=
  ∀ n, P12024172195306611646.a n = A299916 n

end A299916

/-! ## A299916.P8735431418336760469

`9*a(n-1)-12*a(n-2)` with `a(0)=1, a(1)=6`
-/

namespace A299916.P8735431418336760469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  9 * a (n - 1) - 12 * a (n - 2)

end

end A299916.P8735431418336760469

namespace A299916

/-- `9*a(n-1)-12*a(n-2)` -/
def P8735431418336760469.Spec : Prop :=
  ∀ n, P8735431418336760469.a n = A299916 n

end A299916

/-! ## A299916.P12333873613617741462

`A299914(2*n+1)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A299916

/-- `A299914(2*n+1)` -/
def P12333873613617741462.Spec : Prop :=
  ∀ n, P12333873613617741462.a n = A299916 n

theorem P12333873613617741462.correct : P12333873613617741462.Spec := by
  intro n
  simp only [A299916]

end A299916

/-! ## A299916.P10572734301859328233

`∑[A285392(n)]`
-/

namespace A299916.P10572734301859328233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285392 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299916.P10572734301859328233

namespace A299916

/-- `∑[A285392(n)]` -/
def P10572734301859328233.Spec : Prop :=
  ∀ n, P10572734301859328233.a n = A299916 n

end A299916

/-! ## A299916.P4414810505368332738

`A176968(2*(n+1))/2`
-/

namespace A299916.P4414810505368332738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176968 (2 * (n + 1)) : ℚ) / 2

end

end A299916.P4414810505368332738

namespace A299916

/-- `A176968(2*(n+1))/2` -/
def P4414810505368332738.Spec : Prop :=
  ∀ n, P4414810505368332738.a n = (A299916 n : ℚ)

end A299916

/-! ## A299916.P5415281158336976739

`record[A299914(A029579(n))]`
-/

namespace A299916.P5415281158336976739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299914 (A029579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299916.P5415281158336976739

namespace A299916

/-- `record[A299914(A029579(n))]` -/
def P5415281158336976739.Spec : Prop :=
  ∀ n, P5415281158336976739.a n = A299916 n

end A299916

/-! ## A299916.P7624296120436857393

`record[A299914(A026741(n+1))]`
-/

namespace A299916.P7624296120436857393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299914 (A026741 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299916.P7624296120436857393

namespace A299916

/-- `record[A299914(A026741(n+1))]` -/
def P7624296120436857393.Spec : Prop :=
  ∀ n, P7624296120436857393.a n = A299916 n

end A299916

/-! ## A299916.P11692581656562158227

`record[A299914(A124625(n)+1)]`
-/

namespace A299916.P11692581656562158227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299914 (A124625 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299916.P11692581656562158227

namespace A299916

/-- `record[A299914(A124625(n)+1)]` -/
def P11692581656562158227.Spec : Prop :=
  ∀ n, P11692581656562158227.a n = A299916 n

end A299916

/-! ## A299916.P2254580472784207738

`record[A299914(A265667(n)+1)]`
-/

namespace A299916.P2254580472784207738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299914 (A265667 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299916.P2254580472784207738

namespace A299916

/-- `record[A299914(A265667(n)+1)]` -/
def P2254580472784207738.Spec : Prop :=
  ∀ n, P2254580472784207738.a n = A299916 n

end A299916

/-! ## A299916.P6488868965172485643

`record[A299914(A033999(n)+n)]`
-/

namespace A299916.P6488868965172485643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299914 (A033999 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299916.P6488868965172485643

namespace A299916

/-- `record[A299914(A033999(n)+n)]` -/
def P6488868965172485643.Spec : Prop :=
  ∀ n, P6488868965172485643.a n = A299916 n

end A299916

/-! ## A299916.P11955787284495849194

`Δ[A299915(n)]-2*A299915(n)`
-/

namespace A299916.P11955787284495849194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299915 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2 * A299915 n

end

end A299916.P11955787284495849194

namespace A299916

/-- `Δ[A299915(n)]-2*A299915(n)` -/
def P11955787284495849194.Spec : Prop :=
  ∀ n, P11955787284495849194.a n = A299916 n

end A299916

/-! ## A299916.P18437257512214943892

`record[A299914(Δ[A063196(n+1)]+n)]`
-/

namespace A299916.P18437257512214943892
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063196 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299914 (f2 (n + 1) - f2 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299916.P18437257512214943892

namespace A299916

/-- `record[A299914(Δ[A063196(n+1)]+n)]` -/
def P18437257512214943892.Spec : Prop :=
  ∀ n, P18437257512214943892.a n = A299916 n

end A299916

/-!
# A299918: Motzkin numbers (A001006) mod 8.

The programs for A299918, the canonical program `A299918.P3752853738902023478` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299918 has offset 0).

The definition of A299918 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A299918.P3752853738902023478

`A001006(n)%8`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A299918

/-- `A001006(n)%8` -/
def P3752853738902023478.Spec : Prop :=
  ∀ n, P3752853738902023478.a n = A299918 n

theorem P3752853738902023478.correct : P3752853738902023478.Spec := by
  intro n
  simp only [A299918]

end A299918

/-! ## A299918.P9359266162161495478

`Δ[A097332(n)]%8`
-/

namespace A299918.P9359266162161495478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 8

end

end A299918.P9359266162161495478

namespace A299918

/-- `Δ[A097332(n)]%8` -/
def P9359266162161495478.Spec : Prop :=
  ∀ n, P9359266162161495478.a n = A299918 n

end A299918

/-! ## A299918.P12854631560954266234

`A086246(n+2)%8`
-/

namespace A299918.P12854631560954266234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086246 (n + 2)) 8

end

end A299918.P12854631560954266234

namespace A299918

/-- `A086246(n+2)%8` -/
def P12854631560954266234.Spec : Prop :=
  ∀ n, P12854631560954266234.a n = A299918 n

end A299918

/-! ## A299918.P6197039219738166079

`A168049(n+2)%8`
-/

namespace A299918.P6197039219738166079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168049 (n + 2)) 8

end

end A299918.P6197039219738166079

namespace A299918

/-- `A168049(n+2)%8` -/
def P6197039219738166079.Spec : Prop :=
  ∀ n, P6197039219738166079.a n = A299918 n

end A299918

/-! ## A299918.P15001718646721488111

`abs(A166587(n+1)%8)`
-/

namespace A299918.P15001718646721488111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A166587 (n + 1)) 8|

end

end A299918.P15001718646721488111

namespace A299918

/-- `abs(A166587(n+1)%8)` -/
def P15001718646721488111.Spec : Prop :=
  ∀ n, P15001718646721488111.a n = A299918 n

end A299918

/-! ## A299918.P13038338098371519094

`and(7, abs(A168051(n+2)))`
-/

namespace A299918.P13038338098371519094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 |A168051 (n + 2)|

end

end A299918.P13038338098371519094

namespace A299918

/-- `and(7, abs(A168051(n+2)))` -/
def P13038338098371519094.Spec : Prop :=
  ∀ n, P13038338098371519094.a n = A299918 n

end A299918

/-! ## A299918.P11752403527014300821

`and(7, ∑[A002026(abs(1-n))])`
-/

namespace A299918.P11752403527014300821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002026 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A299918.P11752403527014300821

namespace A299918

/-- `and(7, ∑[A002026(abs(1-n))])` -/
def P11752403527014300821.Spec : Prop :=
  ∀ n, P11752403527014300821.a n = A299918 n

end A299918

/-! ## A299918.P18423160830661319988

`and(7, A001006(abs(A001489(n))))`
-/

namespace A299918.P18423160830661319988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (A001006 |A001489 n|.toNat)

end

end A299918.P18423160830661319988

namespace A299918

/-- `and(7, A001006(abs(A001489(n))))` -/
def P18423160830661319988.Spec : Prop :=
  ∀ n, P18423160830661319988.a n = A299918 n

end A299918

/-! ## A299918.P1067142683902047191

`and(7, A001006(sqrt(A000290(n))))`
-/

namespace A299918.P1067142683902047191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (A001006 (SequenceMachineLib.roundAway (Real.sqrt (A000290 n : ℝ))).toNat)

end

end A299918.P1067142683902047191

namespace A299918

/-- `and(7, A001006(sqrt(A000290(n))))` -/
def P1067142683902047191.Spec : Prop :=
  ∀ n, P1067142683902047191.a n = A299918 n

end A299918

/-! ## A299918.P9821458582066222956

`and(or(7, A000120(n)), A001006(n))`
-/

namespace A299918.P9821458582066222956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Int.lor 7 (A000120 n)) (A001006 n)

end

end A299918.P9821458582066222956

namespace A299918

/-- `and(or(7, A000120(n)), A001006(n))` -/
def P9821458582066222956.Spec : Prop :=
  ∀ n, P9821458582066222956.a n = A299918 n

end A299918

/-! ## A299918.P1669686228087877575

`and(7, A001006(A004526(A005843(n))))`
-/

namespace A299918.P1669686228087877575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (A001006 (A004526 (A005843 n).toNat).toNat)

end

end A299918.P1669686228087877575

namespace A299918

/-- `and(7, A001006(A004526(A005843(n))))` -/
def P1669686228087877575.Spec : Prop :=
  ∀ n, P1669686228087877575.a n = A299918 n

end A299918

/-! ## A299918.P12204757928207490728

`and(7, A001006(n)*A081585(n))`
-/

namespace A299918.P12204757928207490728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (A001006 n * A081585 n)

end

end A299918.P12204757928207490728

namespace A299918

/-- `and(7, A001006(n)*A081585(n))` -/
def P12204757928207490728.Spec : Prop :=
  ∀ n, P12204757928207490728.a n = A299918 n

end A299918

/-! ## A299918.P9658570130278926282

`and(A001006(n), A193579(n))`
-/

namespace A299918.P9658570130278926282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001006 n) (A193579 n)

end

end A299918.P9658570130278926282

namespace A299918

/-- `and(A001006(n), A193579(n))` -/
def P9658570130278926282.Spec : Prop :=
  ∀ n, P9658570130278926282.a n = A299918 n

end A299918

/-! ## A299918.P3525380375644484740

`and(A001006(n), A195463(n))`
-/

namespace A299918.P3525380375644484740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001006 n) (A195463 n)

end

end A299918.P3525380375644484740

namespace A299918

/-- `and(A001006(n), A195463(n))` -/
def P3525380375644484740.Spec : Prop :=
  ∀ n, P3525380375644484740.a n = A299918 n

end A299918

/-! ## A299918.P2553222649010422368

`and(A001006(n), A147597(n+1))`
-/

namespace A299918.P2553222649010422368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001006 n) (A147597 (n + 1))

end

end A299918.P2553222649010422368

namespace A299918

/-- `and(A001006(n), A147597(n+1))` -/
def P2553222649010422368.Spec : Prop :=
  ∀ n, P2553222649010422368.a n = A299918 n

end A299918

/-! ## A299918.P2276923198290218531

`and(7, A064189(∑[n]))`
-/

namespace A299918.P2276923198290218531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (A064189 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A299918.P2276923198290218531

namespace A299918

/-- `and(7, A064189(∑[n]))` -/
def P2276923198290218531.Spec : Prop :=
  ∀ n, P2276923198290218531.a n = A299918 n

end A299918

/-! ## A299918.P6099718335907346195

`A064189(A000217(n))%8`
-/

namespace A299918.P6099718335907346195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064189 (A000217 n).toNat) 8

end

end A299918.P6099718335907346195

namespace A299918

/-- `A064189(A000217(n))%8` -/
def P6099718335907346195.Spec : Prop :=
  ∀ n, P6099718335907346195.a n = A299918 n

end A299918

/-!
# A299919: Motzkin numbers (A001006) mod 4.

The programs for A299919, the canonical program `A299919.P11614589965171883546` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299919 has offset 0).

The definition of A299919 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A299919.P11614589965171883546

`A299918(n)%4`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A299919

/-- `A299918(n)%4` -/
def P11614589965171883546.Spec : Prop :=
  ∀ n, P11614589965171883546.a n = A299919 n

theorem P11614589965171883546.correct : P11614589965171883546.Spec := by
  intro n
  simp only [A299919]

end A299919

/-! ## A299919.P6085764772226304384

`and(A001538(n), A299918(n))`
-/

namespace A299919.P6085764772226304384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001538 n) (A299918 n)

end

end A299919.P6085764772226304384

namespace A299919

/-- `and(A001538(n), A299918(n))` -/
def P6085764772226304384.Spec : Prop :=
  ∀ n, P6085764772226304384.a n = A299919 n

end A299919

/-! ## A299919.P2094889292903909630

`and(A001539(n), A299918(n))`
-/

namespace A299919.P2094889292903909630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001539 n) (A299918 n)

end

end A299919.P2094889292903909630

namespace A299919

/-- `and(A001539(n), A299918(n))` -/
def P2094889292903909630.Spec : Prop :=
  ∀ n, P2094889292903909630.a n = A299919 n

end A299919

/-! ## A299919.P10697679788445321498

`and(A002148(n), A299918(n))`
-/

namespace A299919.P10697679788445321498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002148 n) (A299918 n)

end

end A299919.P10697679788445321498

namespace A299919

/-- `and(A002148(n), A299918(n))` -/
def P10697679788445321498.Spec : Prop :=
  ∀ n, P10697679788445321498.a n = A299919 n

end A299919

/-! ## A299919.P8366276452752643761

`and(A004769(n), A299918(n))`
-/

namespace A299919.P8366276452752643761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004769 n) (A299918 n)

end

end A299919.P8366276452752643761

namespace A299919

/-- `and(A004769(n), A299918(n))` -/
def P8366276452752643761.Spec : Prop :=
  ∀ n, P8366276452752643761.a n = A299919 n

end A299919

/-! ## A299919.P9055444153037354678

`and(A017101(n), A299918(n))`
-/

namespace A299919.P9055444153037354678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017101 n) (A299918 n)

end

end A299919.P9055444153037354678

namespace A299919

/-- `and(A017101(n), A299918(n))` -/
def P9055444153037354678.Spec : Prop :=
  ∀ n, P9055444153037354678.a n = A299919 n

end A299919

/-! ## A299919.P5928803748649111970

`and(A017103(n), A299918(n))`
-/

namespace A299919.P5928803748649111970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017103 n) (A299918 n)

end

end A299919.P5928803748649111970

namespace A299919

/-- `and(A017103(n), A299918(n))` -/
def P5928803748649111970.Spec : Prop :=
  ∀ n, P5928803748649111970.a n = A299919 n

end A299919

/-! ## A299919.P15370605327390026360

`and(A017105(n), A299918(n))`
-/

namespace A299919.P15370605327390026360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017105 n) (A299918 n)

end

end A299919.P15370605327390026360

namespace A299919

/-- `and(A017105(n), A299918(n))` -/
def P15370605327390026360.Spec : Prop :=
  ∀ n, P15370605327390026360.a n = A299919 n

end A299919

/-! ## A299919.P17631215075767797371

`and(A066322(n), A299918(n))`
-/

namespace A299919.P17631215075767797371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A066322 n) (A299918 n)

end

end A299919.P17631215075767797371

namespace A299919

/-- `and(A066322(n), A299918(n))` -/
def P17631215075767797371.Spec : Prop :=
  ∀ n, P17631215075767797371.a n = A299919 n

end A299919

/-! ## A299919.P10124200493229468395

`and(A086760(n), A299918(n))`
-/

namespace A299919.P10124200493229468395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086760 n) (A299918 n)

end

end A299919.P10124200493229468395

namespace A299919

/-- `and(A086760(n), A299918(n))` -/
def P10124200493229468395.Spec : Prop :=
  ∀ n, P10124200493229468395.a n = A299919 n

end A299919

/-! ## A299919.P113769848543149408

`and(A094200(n), A299918(n))`
-/

namespace A299919.P113769848543149408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A094200 n) (A299918 n)

end

end A299919.P113769848543149408

namespace A299919

/-- `and(A094200(n), A299918(n))` -/
def P113769848543149408.Spec : Prop :=
  ∀ n, P113769848543149408.a n = A299919 n

end A299919

/-! ## A299919.P10414692847616216394

`and(A106839(n), A299918(n))`
-/

namespace A299919.P10414692847616216394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A106839 n) (A299918 n)

end

end A299919.P10414692847616216394

namespace A299919

/-- `and(A106839(n), A299918(n))` -/
def P10414692847616216394.Spec : Prop :=
  ∀ n, P10414692847616216394.a n = A299919 n

end A299919

/-! ## A299919.P16706122153141529386

`and(A122553(n), A299918(n))`
-/

namespace A299919.P16706122153141529386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122553 n) (A299918 n)

end

end A299919.P16706122153141529386

namespace A299919

/-- `and(A122553(n), A299918(n))` -/
def P16706122153141529386.Spec : Prop :=
  ∀ n, P16706122153141529386.a n = A299919 n

end A299919

/-! ## A299919.P5840693542000088432

`and(A134429(n), A299918(n))`
-/

namespace A299919.P5840693542000088432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A134429 n) (A299918 n)

end

end A299919.P5840693542000088432

namespace A299919

/-- `and(A134429(n), A299918(n))` -/
def P5840693542000088432.Spec : Prop :=
  ∀ n, P5840693542000088432.a n = A299919 n

end A299919

/-! ## A299919.P1724984244180927478

`and(A140870(n), A299918(n))`
-/

namespace A299919.P1724984244180927478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A140870 n) (A299918 n)

end

end A299919.P1724984244180927478

namespace A299919

/-- `and(A140870(n), A299918(n))` -/
def P1724984244180927478.Spec : Prop :=
  ∀ n, P1724984244180927478.a n = A299919 n

end A299919

/-! ## A299919.P9782319396471453723

`and(A164897(n), A299918(n))`
-/

namespace A299919.P9782319396471453723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A164897 n) (A299918 n)

end

end A299919.P9782319396471453723

namespace A299919

/-- `and(A164897(n), A299918(n))` -/
def P9782319396471453723.Spec : Prop :=
  ∀ n, P9782319396471453723.a n = A299919 n

end A299919

/-! ## A299919.P10444923959119932021

`and(A276390(n), A299918(n))`
-/

namespace A299919.P10444923959119932021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A276390 n) (A299918 n)

end

end A299919.P10444923959119932021

namespace A299919

/-- `and(A276390(n), A299918(n))` -/
def P10444923959119932021.Spec : Prop :=
  ∀ n, P10444923959119932021.a n = A299919 n

end A299919

/-! ## A299919.P12366040460023986336

`and(A007520(n+1), A299918(n))`
-/

namespace A299919.P12366040460023986336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007520 (n + 1)) (A299918 n)

end

end A299919.P12366040460023986336

namespace A299919

/-- `and(A007520(n+1), A299918(n))` -/
def P12366040460023986336.Spec : Prop :=
  ∀ n, P12366040460023986336.a n = A299919 n

end A299919

/-! ## A299919.P9200726588056359628

`and(A192328(n+1), A299918(n))`
-/

namespace A299919.P9200726588056359628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A192328 (n + 1)) (A299918 n)

end

end A299919.P9200726588056359628

namespace A299919

/-- `and(A192328(n+1), A299918(n))` -/
def P9200726588056359628.Spec : Prop :=
  ∀ n, P9200726588056359628.a n = A299919 n

end A299919

/-! ## A299919.P10693261893440266160

`and(A100450(n), A299918(n))`
-/

namespace A299919.P10693261893440266160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A100450 n) (A299918 n)

end

end A299919.P10693261893440266160

namespace A299919

/-- `and(A100450(n), A299918(n))` -/
def P10693261893440266160.Spec : Prop :=
  ∀ n, P10693261893440266160.a n = A299919 n

end A299919

/-!
# A299920: Motzkin numbers (A001006) mod 6.

The programs for A299920, the canonical program `A299920.P4677145065747022215` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299920 has offset 0).

The definition of A299920 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A299920.P4677145065747022215

`A001006(n)%6`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A299920

/-- `A001006(n)%6` -/
def P4677145065747022215.Spec : Prop :=
  ∀ n, P4677145065747022215.a n = A299920 n

theorem P4677145065747022215.correct : P4677145065747022215.Spec := by
  intro n
  simp only [A299920]

end A299920

/-! ## A299920.P5634153859558811660

`Δ[A097332(n)]%6`
-/

namespace A299920.P5634153859558811660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 6

end

end A299920.P5634153859558811660

namespace A299920

/-- `Δ[A097332(n)]%6` -/
def P5634153859558811660.Spec : Prop :=
  ∀ n, P5634153859558811660.a n = A299920 n

end A299920

/-! ## A299920.P3214137556434967859

`A086246(n+2)%6`
-/

namespace A299920.P3214137556434967859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086246 (n + 2)) 6

end

end A299920.P3214137556434967859

namespace A299920

/-- `A086246(n+2)%6` -/
def P3214137556434967859.Spec : Prop :=
  ∀ n, P3214137556434967859.a n = A299920 n

end A299920

/-! ## A299920.P4753046770247412765

`A168049(n+2)%6`
-/

namespace A299920.P4753046770247412765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168049 (n + 2)) 6

end

end A299920.P4753046770247412765

namespace A299920

/-- `A168049(n+2)%6` -/
def P4753046770247412765.Spec : Prop :=
  ∀ n, P4753046770247412765.a n = A299920 n

end A299920

/-! ## A299920.P15631025825640946880

`abs(A166587(n+1)%6)`
-/

namespace A299920.P15631025825640946880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A166587 (n + 1)) 6|

end

end A299920.P15631025825640946880

namespace A299920

/-- `abs(A166587(n+1)%6)` -/
def P15631025825640946880.Spec : Prop :=
  ∀ n, P15631025825640946880.a n = A299920 n

end A299920

/-! ## A299920.P7526930392771003973

`abs(A168051(n+2)%6)`
-/

namespace A299920.P7526930392771003973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A168051 (n + 2)) 6|

end

end A299920.P7526930392771003973

namespace A299920

/-- `abs(A168051(n+2)%6)` -/
def P7526930392771003973.Spec : Prop :=
  ∀ n, P7526930392771003973.a n = A299920 n

end A299920

/-! ## A299920.P9141517417950131213

`abs(A292440(n+2)%6)`
-/

namespace A299920.P9141517417950131213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A292440 (n + 2)) 6|

end

end A299920.P9141517417950131213

namespace A299920

/-- `abs(A292440(n+2)%6)` -/
def P9141517417950131213.Spec : Prop :=
  ∀ n, P9141517417950131213.a n = A299920 n

end A299920

/-! ## A299920.P10206260020428578002

`(A343386(n)+A107587(n))%6`
-/

namespace A299920.P10206260020428578002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343386 n + A107587 n) 6

end

end A299920.P10206260020428578002

namespace A299920

/-- `(A343386(n)+A107587(n))%6` -/
def P10206260020428578002.Spec : Prop :=
  ∀ n, P10206260020428578002.a n = A299920 n

end A299920

/-! ## A299920.P11339449881512737441

`(A005043(n+1)+A005043(n))%6`
-/

namespace A299920.P11339449881512737441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005043 (n + 1) + A005043 n) 6

end

end A299920.P11339449881512737441

namespace A299920

/-- `(A005043(n+1)+A005043(n))%6` -/
def P11339449881512737441.Spec : Prop :=
  ∀ n, P11339449881512737441.a n = A299920 n

end A299920

/-! ## A299920.P6655290961368382631

`A064645(∑[n])%6`
-/

namespace A299920.P6655290961368382631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064645 (∑ j ∈ Finset.range (n + 1), f1 j)) 6

end

end A299920.P6655290961368382631

namespace A299920

/-- `A064645(∑[n])%6` -/
def P6655290961368382631.Spec : Prop :=
  ∀ n, P6655290961368382631.a n = A299920 n

end A299920

/-! ## A299920.P3351023254207673333

`A217275(n)%6`
-/

namespace A299920.P3351023254207673333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A217275 n) 6

end

end A299920.P3351023254207673333

namespace A299920

/-- `A217275(n)%6` -/
def P3351023254207673333.Spec : Prop :=
  ∀ n, P3351023254207673333.a n = A299920 n

end A299920

/-!
# A299921: Squares that differ from a triangular number by 1.

The programs for A299921, the canonical program `A299921.P237063240504917805` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299921 has offset 1).

The definition of A299921 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A299921.P237063240504917805

`ogf((x+4x^2+9x^3-19x^4-19x^5+9x^6+4x^7+x^8)/(1-35x^3+35x^6-x^9))`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A299921

/-- `ogf((x+4x^2+9x^3-19x^4-19x^5+9x^6+4x^7+x^8)/(1-35x^3+35x^6-x^9))` -/
def P237063240504917805.Spec : Prop :=
  ∀ n, P237063240504917805.a n = A299921 (n + 1)

theorem P237063240504917805.correct : P237063240504917805.Spec := by
  intro n
  simp only [A299921, Nat.add_sub_cancel]

end A299921

/-! ## A299921.P4102601697571527202

`A301318(n+1)²`
-/

namespace A299921.P4102601697571527202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301318 (n + 1) ^ 2

end

end A299921.P4102601697571527202

namespace A299921

/-- `A301318(n+1)²` -/
def P4102601697571527202.Spec : Prop :=
  ∀ n, P4102601697571527202.a n = A299921 (n + 1)

end A299921

/-! ## A299921.P297473670081176756

`round(sqrt(A182334(n+1)))²`
-/

namespace A299921.P297473670081176756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A182334 (n + 1) : ℝ)) ^ 2

end

end A299921.P297473670081176756

namespace A299921

/-- `round(sqrt(A182334(n+1)))²` -/
def P297473670081176756.Spec : Prop :=
  ∀ n, P297473670081176756.a n = A299921 (n + 1)

end A299921

/-! ## A299921.P18056062519345112439

`A301318(n+1)^A082067(2*(n+1))`
-/

namespace A299921.P18056062519345112439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A301318 (n + 1) : ℚ) ^ (A082067 (2 * (n + 1)) : ℤ)

end

end A299921.P18056062519345112439

namespace A299921

/-- `A301318(n+1)^A082067(2*(n+1))` -/
def P18056062519345112439.Spec : Prop :=
  ∀ n, P18056062519345112439.a n = (A299921 (n + 1) : ℚ)

end A299921

/-! ## A299921.P685859400565243799

`A301318(2*(n+1)-(n+1))*A301318(n+1)`
-/

namespace A299921.P685859400565243799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301318 (2 * (n + 1) - (n + 1)) * A301318 (n + 1)

end

end A299921.P685859400565243799

namespace A299921

/-- `A301318(2*(n+1)-(n+1))*A301318(n+1)` -/
def P685859400565243799.Spec : Prop :=
  ∀ n, P685859400565243799.a n = A299921 (n + 1)

end A299921

/-! ## A299921.P4835878581194114982

`A301318(n+1)^A001316(A001316(n))`
-/

namespace A299921.P4835878581194114982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A301318 (n + 1) : ℚ) ^ (A001316 (A001316 n).toNat : ℤ)

end

end A299921.P4835878581194114982

namespace A299921

/-- `A301318(n+1)^A001316(A001316(n))` -/
def P4835878581194114982.Spec : Prop :=
  ∀ n, P4835878581194114982.a n = (A299921 (n + 1) : ℚ)

end A299921

/-! ## A299921.P6796159173427291684

`A301318(n+1)^A020639(A053799(n))`
-/

namespace A299921.P6796159173427291684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A301318 (n + 1) : ℚ) ^ (A020639 (A053799 n).toNat : ℤ)

end

end A299921.P6796159173427291684

namespace A299921

/-- `A301318(n+1)^A020639(A053799(n))` -/
def P6796159173427291684.Spec : Prop :=
  ∀ n, P6796159173427291684.a n = (A299921 (n + 1) : ℚ)

end A299921

/-! ## A299921.P15850266699571340273

`A301318(n+1)^A020639(A103517(n))`
-/

namespace A299921.P15850266699571340273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A301318 (n + 1) : ℚ) ^ (A020639 (A103517 n).toNat : ℤ)

end

end A299921.P15850266699571340273

namespace A299921

/-- `A301318(n+1)^A020639(A103517(n))` -/
def P15850266699571340273.Spec : Prop :=
  ∀ n, P15850266699571340273.a n = (A299921 (n + 1) : ℚ)

end A299921

/-!
# A299924: Number of ways to write n^2 as x^2 + y^2 + z^2 + w^2 with x,y,z,w nonnegative integers such that x + 2*y + 3*z is a power of 4 (including 4^0 = 1).

The programs for A299924, there is no canonical definition to state claims against.
-/

/-! ## A299924.P16772075442689136043

`gcd(A003056(A028495(n)), A081913(n))`
-/

namespace A299924.P16772075442689136043
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003056 (A028495 n).toNat) (A081913 n)

end

end A299924.P16772075442689136043

/-! ## A299924.P16255837879355275722

`A115622(A072810(gcd(n, A008651(n))))`
-/

namespace A299924.P16255837879355275722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115622 (A072810 (Int.gcd (n : ℤ) (A008651 n))).toNat

end

end A299924.P16255837879355275722

/-! ## A299924.P225891117005514513

`A115622(A072810(n)%A256422(n+1))`
-/

namespace A299924.P225891117005514513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115622 (Int.tmod (A072810 n) (A256422 (n + 1))).toNat

end

end A299924.P225891117005514513

/-! ## A299924.P4705279519822507674

`gcd(A051573(n), A140091(A137741(n+1)))`
-/

namespace A299924.P4705279519822507674
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051573 n) (A140091 (A137741 (n + 1)).toNat)

end

end A299924.P4705279519822507674

/-! ## A299924.P2749446489798644931

`A115622(A072810(n))`
-/

namespace A299924.P2749446489798644931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115622 (A072810 n).toNat

end

end A299924.P2749446489798644931

/-!
# A299925: Number of chains in Young's lattice from () to the partition with Heinz number n.

The programs for A299925, there is no canonical definition to state claims against.
-/

/-! ## A299925.P17631167655973337667

`A002131(A296561(n+1)%A092801(n+1))`
-/

namespace A299925.P17631167655973337667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002131 (Int.tmod (A296561 (n + 1)) (A092801 (n + 1))).toNat

end

end A299925.P17631167655973337667

/-!
# A299926: a(n) is the number of normal generalized Young tableaux of size n with all rows and columns weakly increasing and all regions skew partitions.

The programs for A299926, there is no canonical definition to state claims against.
-/

/-! ## A299926.P13905203146933514792

`A005185(A151234(n)+A151190(n))`
-/

namespace A299926.P13905203146933514792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (A151234 n + A151190 n).toNat

end

end A299926.P13905203146933514792

/-! ## A299926.P15028350497395397721

`A005185(A151227(n)+A151203(n))`
-/

namespace A299926.P15028350497395397721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (A151227 n + A151203 n).toNat

end

end A299926.P15028350497395397721

/-!
# A299927: Number of permutations of length n that avoid the patterns 213 and 312 and have k double ascents, read by rows.

The programs for A299927, there is no canonical definition to state claims against.
-/

/-! ## A299927.P5161829418812992458

`ceil(A210042(round(sqrt(n²+1)))/2)`
-/

namespace A299927.P5161829418812992458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A210042 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat : ℚ) / 2⌉

end

end A299927.P5161829418812992458

/-! ## A299927.P6528184758121921715

`round(A210042(A028310(n))/2)`
-/

namespace A299927.P6528184758121921715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A210042 (A028310 n).toNat : ℚ) / 2)

end

end A299927.P6528184758121921715

/-! ## A299927.P14279568187225034680

`round(A210042(A000007(∑{d}[n+1, #]-1)+n)/2)`
-/

namespace A299927.P14279568187225034680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A210042 (A000007 (∑ d ∈ Nat.divisors (f1 n), d - 1) + (n : ℤ)).toNat : ℚ) / 2)

end

end A299927.P14279568187225034680

/-! ## A299927.P11272683660684929

`Δ[record[A267112(2*n+1)-A267112(n+1)]]`
-/

namespace A299927.P11272683660684929
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267112 (2 * n + 1) - A267112 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A299927.P11272683660684929

/-! ## A299927.P13280416367706853234

`A072660(A162975(n))`
-/

namespace A299927.P13280416367706853234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072660 (A162975 n).toNat

end

end A299927.P13280416367706853234

/-!
# A299929: Prime numbers represented by a cyclotomic binary form f(x, y) with x and y prime numbers and 0 < y < x.

The programs for A299929, there is no canonical definition to state claims against.
-/

/-! ## A299929.P18205195975797228297

`p?[A299928(n+1)]`
-/

namespace A299929.P18205195975797228297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299928 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A299929.P18205195975797228297

/-! ## A299929.P1899356869127520803

`filter[A299928(n+1), A010051(#)]`
-/

namespace A299929.P1899356869127520803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299928 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A299929.P1899356869127520803

/-! ## A299929.P4160310214546212237

`filter[A299928(n+1), A080339(#)]`
-/

namespace A299929.P4160310214546212237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299928 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A299929.P4160310214546212237

/-! ## A299929.P11047715489291527360

`filter[A299928(n+1), A080545(#)]`
-/

namespace A299929.P11047715489291527360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299928 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A299929.P11047715489291527360

/-! ## A299929.P2504268620821596495

`filter[A299928(n+1), A171387(#)]`
-/

namespace A299929.P2504268620821596495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299928 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A299929.P2504268620821596495

/-!
# A299930: Prime numbers represented by a cyclotomic binary form f(x, y) with x and y odd prime numbers and x > y.

The programs for A299930, there is no canonical definition to state claims against.
-/

/-! ## A299930.P18406996097169797938

`∩[A162471(n+1), A247424(n+1)]`
-/

namespace A299930.P18406996097169797938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A299930.P18406996097169797938

/-! ## A299930.P2985290194473579746

`p?[A260166(3*n)-A204843(A227587(n))]`
-/

namespace A299930.P2985290194473579746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260166 (3 * n) - A204843 (A227587 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A299930.P2985290194473579746

/-! ## A299930.P15270172047758707000

`A078860(lt[A078872(3*n+2), A078878(2*(n+1))])`
-/

namespace A299930.P15270172047758707000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078872 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078878 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078860 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A299930.P15270172047758707000

/-!
# A299931: Number of n X n 0..1 arrays with every element equal to 1, 2, 3, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299931, there is no canonical definition to state claims against.
-/

/-! ## A299931.P9904685350989244687

`A299937(∑[4*n]+1)`
-/

namespace A299931.P9904685350989244687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299937 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299931.P9904685350989244687

/-! ## A299931.P7358554206629763835

`A299937(A001844(n))+A107846(n)`
-/

namespace A299931.P7358554206629763835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299937 (A001844 n).toNat + A107846 n

end

end A299931.P7358554206629763835

/-! ## A299931.P11538751508262310392

`A280865(n)*A299937(A001844(n))`
-/

namespace A299931.P11538751508262310392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280865 n * A299937 (A001844 n).toNat

end

end A299931.P11538751508262310392

/-! ## A299931.P413278611893495925

`and(A057428(n), A299937(A001844(n)))`
-/

namespace A299931.P413278611893495925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A299937 (A001844 n).toNat)

end

end A299931.P413278611893495925

/-! ## A299931.P10426328106352640170

`or(A010675(n), A299937(A001844(n)))`
-/

namespace A299931.P10426328106352640170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010675 n) (A299937 (A001844 n).toNat)

end

end A299931.P10426328106352640170

/-!
# A299932: Number of nX3 0..1 arrays with every element equal to 1, 2, 3, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299932, there is no canonical definition to state claims against.
-/

/-! ## A299932.P10114485849616399468

`A299937(∑[n+2]+4)`
-/

namespace A299932.P10114485849616399468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299937 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A299932.P10114485849616399468

/-! ## A299932.P4054055357823535777

`A278657(n)*A299937(A167614(n+1))`
-/

namespace A299932.P4054055357823535777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278657 n * A299937 (A167614 (n + 1)).toNat

end

end A299932.P4054055357823535777

/-! ## A299932.P14760183869663029767

`gcd(A000038(n), A299937(A167614(n+1)))`
-/

namespace A299932.P14760183869663029767
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A299937 (A167614 (n + 1)).toNat)

end

end A299932.P14760183869663029767

/-! ## A299932.P13111648876643194260

`lcm(A033999(n), A299937(A167614(n+1)))`
-/

namespace A299932.P13111648876643194260
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A299937 (A167614 (n + 1)).toNat)

end

end A299932.P13111648876643194260

/-! ## A299932.P9249642098200993755

`A299937(A167614(n+1))%A299369(n+1)`
-/

namespace A299932.P9249642098200993755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299937 (A167614 (n + 1)).toNat) (A299369 (n + 1))

end

end A299932.P9249642098200993755

/-!
# A299933: Number of nX4 0..1 arrays with every element equal to 1, 2, 3, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299933, there is no canonical definition to state claims against.
-/

/-! ## A299933.P2945699480360853302

`A299937(A374004(n+1))`
-/

namespace A299933.P2945699480360853302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299937 (A374004 (n + 1)).toNat

end

end A299933.P2945699480360853302

/-! ## A299933.P823768079679931286

`A299937(A052905(n)+9)`
-/

namespace A299933.P823768079679931286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299937 (A052905 n + 9).toNat

end

end A299933.P823768079679931286

/-! ## A299933.P1417209255775864335

`A299937(A055999(n)+10)`
-/

namespace A299933.P1417209255775864335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299937 (A055999 n + 10).toNat

end

end A299933.P1417209255775864335

/-! ## A299933.P11249709496581000860

`A299937(A167614(n+2)+1)`
-/

namespace A299933.P11249709496581000860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299937 (A167614 (n + 2) + 1).toNat

end

end A299933.P11249709496581000860

/-! ## A299933.P10820750375376398413

`A299937(A166136(n+2)-2)`
-/

namespace A299933.P10820750375376398413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299937 (A166136 (n + 2) - 2).toNat

end

end A299933.P10820750375376398413

/-!
# A299934: Number of nX5 0..1 arrays with every element equal to 1, 2, 3, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299934, there is no canonical definition to state claims against.
-/

/-! ## A299934.P7276281330102525930

`A299937(A374005(n+1))`
-/

namespace A299934.P7276281330102525930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299937 (A374005 (n + 1)).toNat

end

end A299934.P7276281330102525930

/-! ## A299934.P2160225476690858542

`A299937(A167499(n+3))`
-/

namespace A299934.P2160225476690858542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299937 (A167499 (n + 3)).toNat

end

end A299934.P2160225476690858542

/-! ## A299934.P16197337268645524215

`A299937(A155212(n)+13)`
-/

namespace A299934.P16197337268645524215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299937 (A155212 n + 13).toNat

end

end A299934.P16197337268645524215

/-! ## A299934.P5613977547777064668

`A299937(eq[6, A131818(n+1)])`
-/

namespace A299934.P5613977547777064668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299937 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299934.P5613977547777064668

/-! ## A299934.P8045692633590904928

`A299937(Δ[A264443(n)])`
-/

namespace A299934.P8045692633590904928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299937 (f1 (n + 1) - f1 n).toNat

end

end A299934.P8045692633590904928

/-!
# A299935: Number of nX6 0..1 arrays with every element equal to 1, 2, 3, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299935, there is no canonical definition to state claims against.
-/

/-! ## A299935.P17650163960790009641

`A299937(A374007(n+1))`
-/

namespace A299935.P17650163960790009641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299937 (A374007 (n + 1)).toNat

end

end A299935.P17650163960790009641

/-! ## A299935.P13339628998035012452

`A299937(eq[7, A131818(n+1)])`
-/

namespace A299935.P13339628998035012452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299937 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299935.P13339628998035012452

/-! ## A299935.P2812630717346379542

`A299937(eq[3, A219347(n)])`
-/

namespace A299935.P2812630717346379542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299937 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299935.P2812630717346379542

/-! ## A299935.P17867372247860922725

`A299937(eq[5, A193592(n)])`
-/

namespace A299935.P17867372247860922725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299937 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299935.P17867372247860922725

/-! ## A299935.P12470641282856050595

`A299937(eq[8, A258709(n)])`
-/

namespace A299935.P12470641282856050595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299937 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299935.P12470641282856050595

/-!
# A299936: Number of nX7 0..1 arrays with every element equal to 1, 2, 3, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299936, there is no canonical definition to state claims against.
-/

/-! ## A299936.P11625689340064027674

`A299937(A374008(n+1))`
-/

namespace A299936.P11625689340064027674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299937 (A374008 (n + 1)).toNat

end

end A299936.P11625689340064027674

/-! ## A299936.P16522664721660329953

`A299937(eq[11, A066657(n)])`
-/

namespace A299936.P16522664721660329953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299937 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299936.P16522664721660329953

/-! ## A299936.P18083308173676661823

`A299937(eq[8, A131818(n+1)])`
-/

namespace A299936.P18083308173676661823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299937 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299936.P18083308173676661823

/-! ## A299936.P5207085360146563549

`A299937(eq[4, A219347(n)])`
-/

namespace A299936.P5207085360146563549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299937 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299936.P5207085360146563549

/-! ## A299936.P11500027771779422314

`A299937(eq[6, A193592(n)])`
-/

namespace A299936.P11500027771779422314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299937 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299936.P11500027771779422314

/-!
# A299937: T(n,k)=Number of nXk 0..1 arrays with every element equal to 1, 2, 3, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299937, there is no canonical definition to state claims against.
-/

/-! ## A299937.P8314517542390690314

`A299373(n+1)+A256974(A001263(n+1))`
-/

namespace A299937.P8314517542390690314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299373 (n + 1) + A256974 (A001263 (n + 1)).toNat

end

end A299937.P8314517542390690314

/-! ## A299937.P3061780464669423417

`A342770(A001263(n+1))+A299142(n+1)`
-/

namespace A299937.P3061780464669423417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342770 (A001263 (n + 1)).toNat + A299142 (n + 1)

end

end A299937.P3061780464669423417

/-! ## A299937.P3467113786375148798

`A299142(n+1)+A069283(A301443(n+1))`
-/

namespace A299937.P3467113786375148798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299142 (n + 1) + A069283 (A301443 (n + 1)).toNat

end

end A299937.P3467113786375148798

/-!
# A299938: Number of n X n 0..1 arrays with every element equal to 0, 1, 2, 3, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299938, there is no canonical definition to state claims against.
-/

/-! ## A299938.P15896729068833819240

`A299942(∑[4*n]+1)`
-/

namespace A299938.P15896729068833819240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299942 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299938.P15896729068833819240

/-! ## A299938.P7364094660306792307

`record[A299942(Δ[A235355(n)])]`
-/

namespace A299938.P7364094660306792307
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299942 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299938.P7364094660306792307

/-! ## A299938.P3906211976900750862

`record[A299942(A330613(n+1))]`
-/

namespace A299938.P3906211976900750862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299942 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299938.P3906211976900750862

/-! ## A299938.P17095685396096680960

`A299942(A001844(n))+char[11]`
-/

namespace A299938.P17095685396096680960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299942 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A299938.P17095685396096680960

/-! ## A299938.P2862824193509506220

`record[A003982(n)*A299942(n+1)]`
-/

namespace A299938.P2862824193509506220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A299942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299938.P2862824193509506220

/-!
# A299939: Number of n X 5 0..1 arrays with every element equal to 0, 1, 2, 3, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299939, there is no canonical definition to state claims against.
-/

/-! ## A299939.P14273108475687542457

`A299942(C(n+6, 2)-n)`
-/

namespace A299939.P14273108475687542457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299942 (Nat.choose (n + 6) 2 - n)

end

end A299939.P14273108475687542457

/-! ## A299939.P10147168822017970310

`A299942(A374005(n+1))`
-/

namespace A299939.P10147168822017970310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299942 (A374005 (n + 1)).toNat

end

end A299939.P10147168822017970310

/-! ## A299939.P8392049250345085748

`A299942(A167499(n+3))`
-/

namespace A299939.P8392049250345085748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299942 (A167499 (n + 3)).toNat

end

end A299939.P8392049250345085748

/-! ## A299939.P2783064381752154221

`A299942(A155212(n)+13)`
-/

namespace A299939.P2783064381752154221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299942 (A155212 n + 13).toNat

end

end A299939.P2783064381752154221

/-! ## A299939.P332445528380664091

`A299942(A056000(n)+15)`
-/

namespace A299939.P332445528380664091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299942 (A056000 n + 15).toNat

end

end A299939.P332445528380664091

/-!
# A299940: Number of nX6 0..1 arrays with every element equal to 0, 1, 2, 3, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299940, there is no canonical definition to state claims against.
-/

/-! ## A299940.P2419197303142870474

`A299942(A374007(n+1))`
-/

namespace A299940.P2419197303142870474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299942 (A374007 (n + 1)).toNat

end

end A299940.P2419197303142870474

/-! ## A299940.P6507972073447411121

`A299942(A166136(n+4))`
-/

namespace A299940.P6507972073447411121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299942 (A166136 (n + 4)).toNat

end

end A299940.P6507972073447411121

/-! ## A299940.P9565826530651671490

`A299942(A056115(n)+21)`
-/

namespace A299940.P9565826530651671490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299942 (A056115 n + 21).toNat

end

end A299940.P9565826530651671490

/-! ## A299940.P12839318409187235927

`A299942(A167499(n+4)+1)`
-/

namespace A299940.P12839318409187235927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299942 (A167499 (n + 4) + 1).toNat

end

end A299940.P12839318409187235927

/-! ## A299940.P8910186177843195067

`A299942(A167614(n+4)+3)`
-/

namespace A299940.P8910186177843195067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299942 (A167614 (n + 4) + 3).toNat

end

end A299940.P8910186177843195067

/-!
# A299941: Number of nX7 0..1 arrays with every element equal to 0, 1, 2, 3, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299941, there is no canonical definition to state claims against.
-/

/-! ## A299941.P14921303967887617951

`A299942(A374008(n+1))`
-/

namespace A299941.P14921303967887617951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299942 (A374008 (n + 1)).toNat

end

end A299941.P14921303967887617951

/-! ## A299941.P5867903525805868472

`A299942(A056119(n)+28)`
-/

namespace A299941.P5867903525805868472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299942 (A056119 n + 28).toNat

end

end A299941.P5867903525805868472

/-! ## A299941.P17781256487534803713

`A299942(A167499(n+5)+2)`
-/

namespace A299941.P17781256487534803713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299942 (A167499 (n + 5) + 2).toNat

end

end A299941.P17781256487534803713

/-! ## A299941.P12381727814147071097

`A299942(A112355(n+4)+7)`
-/

namespace A299941.P12381727814147071097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299942 (A112355 (n + 4) + 7).toNat

end

end A299941.P12381727814147071097

/-! ## A299941.P14209617448290846293

`A299942(A000124(n+6)+6)`
-/

namespace A299941.P14209617448290846293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299942 (A000124 (n + 6) + 6).toNat

end

end A299941.P14209617448290846293

/-!
# A299944: Number of n X n 0..1 arrays with every element equal to 0, 1, 2, 4, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299944, there is no canonical definition to state claims against.
-/

/-! ## A299944.P4265654966715839537

`A299948(∑[4*n]+1)`
-/

namespace A299944.P4265654966715839537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299948 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299944.P4265654966715839537

/-! ## A299944.P2421429182781497527

`record[A299948(Δ[A235355(n)])]`
-/

namespace A299944.P2421429182781497527
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299948 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299944.P2421429182781497527

/-! ## A299944.P11250302379202931156

`record[A299948(A330613(n+1))]`
-/

namespace A299944.P11250302379202931156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299948 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299944.P11250302379202931156

/-! ## A299944.P13565574648936403606

`A299948(A001844(n))+char[10]`
-/

namespace A299944.P13565574648936403606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299948 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A299944.P13565574648936403606

/-! ## A299944.P12540077290814046625

`record[A003982(n)*A299948(n+1)]`
-/

namespace A299944.P12540077290814046625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A299948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299944.P12540077290814046625

/-!
# A299945: Number of nX5 0..1 arrays with every element equal to 0, 1, 2, 4, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299945, there is no canonical definition to state claims against.
-/

/-! ## A299945.P10691550965698926194

`A299948(A374005(n+1))`
-/

namespace A299945.P10691550965698926194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299948 (A374005 (n + 1)).toNat

end

end A299945.P10691550965698926194

/-! ## A299945.P6365641280491246905

`A299948(A167499(n+3))`
-/

namespace A299945.P6365641280491246905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299948 (A167499 (n + 3)).toNat

end

end A299945.P6365641280491246905

/-! ## A299945.P6036748441636027974

`A299948(A155212(n)+13)`
-/

namespace A299945.P6036748441636027974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299948 (A155212 n + 13).toNat

end

end A299945.P6036748441636027974

/-! ## A299945.P18430789716644026130

`A299948(A056000(n)+15)`
-/

namespace A299945.P18430789716644026130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299948 (A056000 n + 15).toNat

end

end A299945.P18430789716644026130

/-! ## A299945.P8713225524083396578

`A299948(eq[7, A066657(n)])`
-/

namespace A299945.P8713225524083396578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299948 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299945.P8713225524083396578

/-!
# A299946: Number of nX6 0..1 arrays with every element equal to 0, 1, 2, 4, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299946, there is no canonical definition to state claims against.
-/

/-! ## A299946.P13521000063363448849

`A299948(A374007(n+1))`
-/

namespace A299946.P13521000063363448849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299948 (A374007 (n + 1)).toNat

end

end A299946.P13521000063363448849

/-! ## A299946.P7279942721610602152

`A299948(A166136(n+4))`
-/

namespace A299946.P7279942721610602152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299948 (A166136 (n + 4)).toNat

end

end A299946.P7279942721610602152

/-! ## A299946.P1083655140216925350

`A299948(A056115(n)+21)`
-/

namespace A299946.P1083655140216925350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299948 (A056115 n + 21).toNat

end

end A299946.P1083655140216925350

/-! ## A299946.P14179868004294633251

`A299948(A167499(n+4)+1)`
-/

namespace A299946.P14179868004294633251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299948 (A167499 (n + 4) + 1).toNat

end

end A299946.P14179868004294633251

/-! ## A299946.P966776002155147907

`A299948(A000124(n+5)+5)`
-/

namespace A299946.P966776002155147907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299948 (A000124 (n + 5) + 5).toNat

end

end A299946.P966776002155147907

/-!
# A299947: Number of n X 7 0..1 arrays with every element equal to 0, 1, 2, 4, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299947, there is no canonical definition to state claims against.
-/

/-! ## A299947.P3946415748212420569

`A299948(A374008(n+1))`
-/

namespace A299947.P3946415748212420569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299948 (A374008 (n + 1)).toNat

end

end A299947.P3946415748212420569

/-! ## A299947.P2578646851614855097

`A299948(A167487(n+5))`
-/

namespace A299947.P2578646851614855097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299948 (A167487 (n + 5)).toNat

end

end A299947.P2578646851614855097

/-! ## A299947.P3288839125745435953

`A299948(A056119(n)+28)`
-/

namespace A299947.P3288839125745435953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299948 (A056119 n + 28).toNat

end

end A299947.P3288839125745435953

/-! ## A299947.P1781391391640495204

`A299948(eq[11, A066657(n)])`
-/

namespace A299947.P1781391391640495204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299948 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299947.P1781391391640495204

/-! ## A299947.P2655579164828218675

`A299948(A167499(n+5)+2)`
-/

namespace A299947.P2655579164828218675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299948 (A167499 (n + 5) + 2).toNat

end

end A299947.P2655579164828218675

/-!
# A299956: Prime numbers not in A299930.

The programs for A299956, there is no canonical definition to state claims against.
-/

/-! ## A299956.P6907758617833863874

`A000040(lt[A364830(3*n+4), n])`
-/

namespace A299956.P6907758617833863874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364830 (3 * n + 4)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A299956.P6907758617833863874

/-! ## A299956.P16365002313075546890

`eq[A003415(n), A055088(A358169(n+2))]`
-/

namespace A299956.P16365002313075546890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055088 (A358169 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A299956.P16365002313075546890

/-! ## A299956.P14231689378119518048

`A000040(lt[A007318(n), A173302(3*n)])`
-/

namespace A299956.P14231689378119518048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173302 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A299956.P14231689378119518048

/-! ## A299956.P503831745283827517

`A000040(lt[A253236(3*n+5), A099796(3*n+4)])`
-/

namespace A299956.P503831745283827517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253236 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099796 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A299956.P503831745283827517

/-! ## A299956.P11262840407666186570

`A000040(lt[A307801(n+1), 3])`
-/

namespace A299956.P11262840407666186570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307801 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A299956.P11262840407666186570

/-!
# A299959: Least prime factor of (4^(2n+1)+1)/5, a(0) = 1.

The programs for A299959, there is no canonical definition to state claims against.
-/

/-! ## A299959.P9602726504646864570

`A212008(a(n-1))` with `a(0)=1, a(1)=13, a(2)=5, a(3)=29, a(4)=13`
-/

namespace A299959.P9602726504646864570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 13, 5, 29, 13] fun n a =>
  A212008 (a (n - 1)).toNat

end

end A299959.P9602726504646864570

/-!
# A299960: a(n) = (4^(2*n+1) + 1) / 5.

The programs for A299960, the canonical program `A299960.P1683008766062250459` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299960 has offset 0).

The definition of A299960 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4^(2*n+1)+1)/5` (program `A299960.P9267967529664981514`, by `A299960.P9267967529664981514.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A299960.P8689517865527686629

`ogf((1-4x)/(1-17x+16x^2))`
-/

namespace A299960.P8689517865527686629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4] [1, -17, 16] n

end

end A299960.P8689517865527686629

namespace A299960

/-- `ogf((1-4x)/(1-17x+16x^2))` -/
def P8689517865527686629.Spec : Prop :=
  ∀ n, P8689517865527686629.a n = A299960 n

end A299960

/-! ## A299960.P1683008766062250459

`17*a(n-1)-16*a(n-2)` with `a(0)=1, a(1)=13`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A299960

/-- `17*a(n-1)-16*a(n-2)` -/
def P1683008766062250459.Spec : Prop :=
  ∀ n, P1683008766062250459.a n = A299960 n

theorem P1683008766062250459.correct : P1683008766062250459.Spec := by
  intro n
  simp only [A299960]

end A299960

/-! ## A299960.P9543680227227489690

`A007910(4*n)`
-/

namespace A299960.P9543680227227489690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007910 (4 * n)

end

end A299960.P9543680227227489690

namespace A299960

/-- `A007910(4*n)` -/
def P9543680227227489690.Spec : Prop :=
  ∀ n, P9543680227227489690.a n = A299960 n

end A299960

/-! ## A299960.P5858293825131980483

`A014985(2*n+1)`
-/

namespace A299960.P5858293825131980483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014985 (2 * n + 1)

end

end A299960.P5858293825131980483

namespace A299960

/-- `A014985(2*n+1)` -/
def P5858293825131980483.Spec : Prop :=
  ∀ n, P5858293825131980483.a n = A299960 n

end A299960

/-! ## A299960.P6419964643703227806

`A015521(2*n+1)`
-/

namespace A299960.P6419964643703227806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015521 (2 * n + 1)

end

end A299960.P6419964643703227806

namespace A299960

/-- `A015521(2*n+1)` -/
def P6419964643703227806.Spec : Prop :=
  ∀ n, P6419964643703227806.a n = A299960 n

end A299960

/-! ## A299960.P9731265041629416759

`A007909(4*n+1)`
-/

namespace A299960.P9731265041629416759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007909 (4 * n + 1)

end

end A299960.P9731265041629416759

namespace A299960

/-- `A007909(4*n+1)` -/
def P9731265041629416759.Spec : Prop :=
  ∀ n, P9731265041629416759.a n = A299960 n

end A299960

/-! ## A299960.P9267967529664981514

`(4^(2*n+1)+1)/5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A299960.P9267967529664981514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 ^ (2 * n + 1) + 1 : ℚ) / 5

end

end A299960.P9267967529664981514

namespace A299960

/-- `(4^(2*n+1)+1)/5` -/
def P9267967529664981514.Spec : Prop :=
  ∀ n, P9267967529664981514.a n = (A299960 n : ℚ)

theorem P9267967529664981514.correct : P9267967529664981514.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A299960, Nat.add_sub_cancel, A299960.P9267967529664981514.a, A299960.P1683008766062250459.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A299960, Nat.add_sub_cancel, A299960.P9267967529664981514.a, A299960.P1683008766062250459.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A299960

/-! ## A299960.P12249805409452746980

`record[∑[(-4)^n]]`
-/

namespace A299960.P12249805409452746980
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-4) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299960.P12249805409452746980

namespace A299960

/-- `record[∑[(-4)^n]]` -/
def P12249805409452746980.Spec : Prop :=
  ∀ n, P12249805409452746980.a n = A299960 n

end A299960

/-! ## A299960.P16551905899707495178

`∑{#}[2*n, (-4)^#]`
-/

namespace A299960.P16551905899707495178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-4) ^ k

end

end A299960.P16551905899707495178

namespace A299960

/-- `∑{#}[2*n, (-4)^#]` -/
def P16551905899707495178.Spec : Prop :=
  ∀ n, P16551905899707495178.a n = A299960 n

end A299960

/-! ## A299960.P4012296292983532295

`16*a(n-1)-3` with `a(0)=1`
-/

namespace A299960.P4012296292983532295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  16 * a (n - 1) - 3

end

end A299960.P4012296292983532295

namespace A299960

/-- `16*a(n-1)-3` -/
def P4012296292983532295.Spec : Prop :=
  ∀ n, P4012296292983532295.a n = A299960 n

end A299960

/-!
# A299963: a(n) = greatest prime factor of the terms in the Collatz sequence starting at n; a(1) = 1.

The programs for A299963, there is no canonical definition to state claims against.
-/

/-! ## A299963.P4032314507206678534

`A006530((n+1)*A087232(n+1)²)`
-/

namespace A299963.P4032314507206678534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((n + 1 : ℤ) * A087232 (n + 1) ^ 2).toNat

end

end A299963.P4032314507206678534

/-! ## A299963.P14581245009631217612

`A006530(lcm(n+1, A087232(n+1)²))`
-/

namespace A299963.P14581245009631217612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lcm (n + 1 : ℤ) (A087232 (n + 1) ^ 2))

end

end A299963.P14581245009631217612

/-! ## A299963.P6151704629264399548

`A006530((n+1)*∏{d}[A087232(n+1), #])`
-/

namespace A299963.P6151704629264399548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087232 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((n + 1) * (∏ d ∈ Nat.divisors (f1 n).natAbs, d))

end

end A299963.P6151704629264399548

/-! ## A299963.P589236827826696810

`A006530(A025586(n+1)*A087232(n+1))`
-/

namespace A299963.P589236827826696810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A025586 (n + 1) * A087232 (n + 1)).toNat

end

end A299963.P589236827826696810

/-! ## A299963.P6647411954255846343

`A006530(A087232(n+1)*A133900(n+1))`
-/

namespace A299963.P6647411954255846343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A087232 (n + 1) * A133900 (n + 1)).toNat

end

end A299963.P6647411954255846343

/-!
# A299964: Integers represented in more than one way by a cyclotomic binary form f(x,y) where x and y are prime numbers and 0 < y < x.

The programs for A299964, there is no canonical definition to state claims against.
-/

/-! ## A299964.P1291649828659254786

`A092574(A211438(n)+3*n+4)`
-/

namespace A299964.P1291649828659254786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092574 (A211438 n + (3 * n + 4 : ℤ)).toNat

end

end A299964.P1291649828659254786

/-!
# A299965: Number of triangles in a Star of David of size n.

The programs for A299965, the canonical program `A299965.P3579802841968574634` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299965 has offset 0).

The definition of A299965 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A299965.P3579802841968574634

`n*(n*(10*n+9)+1)`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A299965

/-- `n*(n*(10*n+9)+1)` -/
def P3579802841968574634.Spec : Prop :=
  ∀ n, (P3579802841968574634.a n : ℤ) = A299965 n

theorem P3579802841968574634.correct : P3579802841968574634.Spec := by
  intro n
  simp only [A299965]

end A299965

/-! ## A299965.P15102681928455362107

`ogf((20x+38x^2+2x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A299965.P15102681928455362107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 20, 38, 2] [1, -4, 6, -4, 1] n

end

end A299965.P15102681928455362107

namespace A299965

/-- `ogf((20x+38x^2+2x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P15102681928455362107.Spec : Prop :=
  ∀ n, P15102681928455362107.a n = A299965 n

end A299965

/-! ## A299965.P12688382445825912721

`A045950(n)+A045950(n)`
-/

namespace A299965.P12688382445825912721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045950 n + A045950 n

end

end A299965.P12688382445825912721

namespace A299965

/-- `A045950(n)+A045950(n)` -/
def P12688382445825912721.Spec : Prop :=
  ∀ n, P12688382445825912721.a n = A299965 n

end A299965

/-! ## A299965.P16855266991899140271

`A104099(n)+A064761(n)`
-/

namespace A299965.P16855266991899140271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104099 n + A064761 n

end

end A299965.P16855266991899140271

namespace A299965

/-- `A104099(n)+A064761(n)` -/
def P16855266991899140271.Spec : Prop :=
  ∀ n, P16855266991899140271.a n = A299965 n

theorem P16855266991899140271.correct : P16855266991899140271.Spec := by
  intro n
  simp only [A299965, Nat.add_sub_cancel, A299965.P16855266991899140271.a, A299965.P3579802841968574634.a, A064761, A064761.P5984238371699821623.a, A104099, A104099.P6390214552487031188.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A299965

/-! ## A299965.P4166428459531882459

`A316224(n)+A275709(n)`
-/

namespace A299965.P4166428459531882459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316224 n + A275709 n

end

end A299965.P4166428459531882459

namespace A299965

/-- `A316224(n)+A275709(n)` -/
def P4166428459531882459.Spec : Prop :=
  ∀ n, P4166428459531882459.a n = A299965 n

theorem P4166428459531882459.correct : P4166428459531882459.Spec := by
  intro n
  simp only [A299965, Nat.add_sub_cancel, A299965.P4166428459531882459.a, A299965.P3579802841968574634.a, A275709, A275709.P9405816799488244254.a, A316224, A316224.P13763735533833760107.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A299965

/-! ## A299965.P15901102283597785431

`A191745(n)-A061317(n)`
-/

namespace A299965.P15901102283597785431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191745 n - A061317 n

end

end A299965.P15901102283597785431

namespace A299965

/-- `A191745(n)-A061317(n)` -/
def P15901102283597785431.Spec : Prop :=
  ∀ n, P15901102283597785431.a n = A299965 n

theorem P15901102283597785431.correct : P15901102283597785431.Spec := by
  intro n
  simp only [A299965, Nat.add_sub_cancel, A299965.P15901102283597785431.a, A299965.P3579802841968574634.a, A061317, A061317.P8488168899613189018.a, A191745, A191745.P10900827607197799470.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A299965

/-! ## A299965.P4743687605198132206

`A242135(n)+A121628(n+1)`
-/

namespace A299965.P4743687605198132206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242135 n + A121628 (n + 1)

end

end A299965.P4743687605198132206

namespace A299965

/-- `A242135(n)+A121628(n+1)` -/
def P4743687605198132206.Spec : Prop :=
  ∀ n, P4743687605198132206.a n = A299965 n

theorem P4743687605198132206.correct : P4743687605198132206.Spec := by
  intro n
  simp only [A299965, Nat.add_sub_cancel, A299965.P4743687605198132206.a, A299965.P3579802841968574634.a, A121628, A121628.P12785342200933405274.a, A242135, A242135.P980314958597288477.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A299965

/-! ## A299965.P5288092417448703516

`A005904(n)-A003154(n+1)`
-/

namespace A299965.P5288092417448703516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005904 n - A003154 (n + 1)

end

end A299965.P5288092417448703516

namespace A299965

/-- `A005904(n)-A003154(n+1)` -/
def P5288092417448703516.Spec : Prop :=
  ∀ n, P5288092417448703516.a n = A299965 n

theorem P5288092417448703516.correct : P5288092417448703516.Spec := by
  intro n
  simp only [A299965, Nat.add_sub_cancel, A299965.P5288092417448703516.a, A299965.P3579802841968574634.a, A003154, A003154.P12292724974289202885.a, A005904, A005904.P6150330656000877991.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A299965

/-!
# A299967: Number of normal generalized Young tableaux of size n with all rows and columns weakly increasing and all regions non-singleton skew-partitions.

The programs for A299967, there is no canonical definition to state claims against.
-/

/-! ## A299967.P15459486638192181172

`A065719(A221440(n+1))`
-/

namespace A299967.P15459486638192181172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065719 (A221440 (n + 1)).toNat

end

end A299967.P15459486638192181172

/-! ## A299967.P15974455793060774446

`A065719(A000213(2*n+3))`
-/

namespace A299967.P15974455793060774446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065719 (A000213 (2 * n + 3)).toNat

end

end A299967.P15974455793060774446

/-! ## A299967.P5939122402832092793

`A065719(Δ[A000073(2*n+3)])`
-/

namespace A299967.P5939122402832092793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065719 (f1 (n + 1) - f1 n).toNat

end

end A299967.P5939122402832092793

/-!
# A299968: Number of normal generalized Young tableaux of size n with all rows and columns strictly increasing.

The programs for A299968, there is no canonical definition to state claims against.
-/

/-! ## A299968.P8783906634522830486

`A255072(A001003(n))`
-/

namespace A299968.P8783906634522830486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255072 (A001003 n).toNat

end

end A299968.P8783906634522830486

/-! ## A299968.P8266671513578378520

`A255072(abs(A080243(n)))`
-/

namespace A299968.P8266671513578378520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255072 |A080243 n|.toNat

end

end A299968.P8266671513578378520

/-! ## A299968.P9485233685869927661

`A255072(A144156(∑[n]))`
-/

namespace A299968.P9485233685869927661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255072 (A144156 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A299968.P9485233685869927661

/-! ## A299968.P8137756467951534417

`A255072(A186826(∑[n]))`
-/

namespace A299968.P8137756467951534417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255072 (A186826 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A299968.P8137756467951534417

/-!
# A299969: Lexicographic first sequence of nonnegative integers such that a(n) + a(n+1) has a digit 9, and no term occurs twice.

The programs for A299969, there is no canonical definition to state claims against.
-/

/-! ## A299969.P4104729618820839816

`A299979(n+1)+A033999(A247541(n))`
-/

namespace A299969.P4104729618820839816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299979 (n + 1) + A033999 (A247541 n).toNat

end

end A299969.P4104729618820839816

/-! ## A299969.P14004066513146905022

`A299979(n+1)-A087960(A247541(n)+2)`
-/

namespace A299969.P14004066513146905022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299979 (n + 1) - A087960 (A247541 n + 2).toNat

end

end A299969.P14004066513146905022

/-! ## A299969.P2801993764537445145

`A299979(n+1)+A033999(A031285(n))`
-/

namespace A299969.P2801993764537445145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299979 (n + 1) + A033999 (A031285 n).toNat

end

end A299969.P2801993764537445145

/-! ## A299969.P4169290117470293656

`A299979(n+1)-A165581(A164073(n+1))`
-/

namespace A299969.P4169290117470293656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299979 (n + 1) - A165581 (A164073 (n + 1)).toNat

end

end A299969.P4169290117470293656

/-! ## A299969.P7085036346463220951

`A299979(n+1)+A087960(A247541(n+2))`
-/

namespace A299969.P7085036346463220951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299979 (n + 1) + A087960 (A247541 (n + 2)).toNat

end

end A299969.P7085036346463220951

/-!
# A299971: Lexicographic first sequence of positive integers such that a(n) + a(n+1) has a digit 0, and no term occurs twice.

The programs for A299971, there is no canonical definition to state claims against.
-/

/-! ## A299971.P6316765585384360708

`A090771(n+1)-A184993(A144163(n))`
-/

namespace A299971.P6316765585384360708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090771 (n + 1) - A184993 (A144163 n).toNat

end

end A299971.P6316765585384360708

/-! ## A299971.P422864855068772173

`A090771(n+1)-A184993(A184983(n))`
-/

namespace A299971.P422864855068772173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090771 (n + 1) - A184993 (A184983 n).toNat

end

end A299971.P422864855068772173

/-! ## A299971.P10898282323527620237

`A266297(2*(n+1))-A184993(A184983(n))`
-/

namespace A299971.P10898282323527620237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266297 (2 * (n + 1)) - A184993 (A184983 n).toNat

end

end A299971.P10898282323527620237

/-! ## A299971.P13270296832636598154

`A090771(A077741(n+1))%A016789(3*n+4)`
-/

namespace A299971.P13270296832636598154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090771 (A077741 (n + 1)).toNat) (A016789 (3 * n + 4))

end

end A299971.P13270296832636598154

/-!
# A299977: Lexicographic first sequence of positive integers such that a(n) + a(n+1) has a digit 7, and no term occurs twice.

The programs for A299977, there is no canonical definition to state claims against.
-/

/-! ## A299977.P8170204215224010505

`A299987(n)+A118404(A000096(n))`
-/

namespace A299977.P8170204215224010505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299987 n + A118404 (A000096 n).toNat

end

end A299977.P8170204215224010505

/-! ## A299977.P15736148243536124098

`A299987(n)+A009001(A117862(n))`
-/

namespace A299977.P15736148243536124098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299987 n + A009001 (A117862 n).toNat

end

end A299977.P15736148243536124098

/-! ## A299977.P3107930779925772576

`A299987(n)+A087960(A228474(n))`
-/

namespace A299977.P3107930779925772576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299987 n + A087960 (A228474 n).toNat

end

end A299977.P3107930779925772576

/-! ## A299977.P349411880275435796

`A299987(n)+A165581(A056486(n+1))`
-/

namespace A299977.P349411880275435796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299987 n + A165581 (A056486 (n + 1)).toNat

end

end A299977.P349411880275435796

/-! ## A299977.P8494218540012383048

`A299987(n)-A033999(A202318(n+1))`
-/

namespace A299977.P8494218540012383048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299987 n - A033999 (A202318 (n + 1)).toNat

end

end A299977.P8494218540012383048

/-!
# A299978: Lexicographic first sequence of positive integers such that a(n) + a(n+1) has a digit 8, and no term occurs twice.

The programs for A299978, there is no canonical definition to state claims against.
-/

/-! ## A299978.P12049977276097034100

`A047615(n+1)+dr(A249517(n+2))`
-/

namespace A299978.P12049977276097034100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047615 (n + 1) + (SequenceMachineLib.digitalRoot (A249517 (n + 2)) : ℤ)

end

end A299978.P12049977276097034100

/-! ## A299978.P16198970560342081012

`xor(A036619(A185336(n)), A146951(n))`
-/

namespace A299978.P16198970560342081012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A036619 (A185336 n).toNat) (A146951 n)

end

end A299978.P16198970560342081012

/-! ## A299978.P2674003993789414734

`A090772(n+1)-A036619(A185336(n))`
-/

namespace A299978.P2674003993789414734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090772 (n + 1) - A036619 (A185336 n).toNat

end

end A299978.P2674003993789414734

/-! ## A299978.P10363027584489138274

`xor(A146914(A146919(n+1)), A146951(n))`
-/

namespace A299978.P10363027584489138274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A146914 (A146919 (n + 1)).toNat) (A146951 n)

end

end A299978.P10363027584489138274

/-! ## A299978.P15532052677968463855

`xor(A146951(n), A147007(A146986(n+2)))`
-/

namespace A299978.P15532052677968463855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A146951 n) (A147007 (A146986 (n + 2)).toNat)

end

end A299978.P15532052677968463855

/-!
# A299979: Lexicographic first sequence of positive integers such that a(n) + a(n+1) has a digit 9, and no term occurs twice.

The programs for A299979, there is no canonical definition to state claims against.
-/

/-! ## A299979.P3960011585505441869

`A299969(n)-A033999(A007623(3*(n+1)))`
-/

namespace A299979.P3960011585505441869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299969 n - A033999 (A007623 (3 * (n + 1))).toNat

end

end A299979.P3960011585505441869

/-! ## A299979.P8910842376247200073

`A299969(n)+A008836(A302033(n+2))`
-/

namespace A299979.P8910842376247200073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299969 n + A008836 (A302033 (n + 2)).toNat

end

end A299979.P8910842376247200073

/-! ## A299979.P13791402729956996995

`A299969(n)+A067856(A302033(2*(n+2)))`
-/

namespace A299979.P13791402729956996995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299969 n + A067856 (A302033 (2 * (n + 2))).toNat

end

end A299979.P13791402729956996995

/-! ## A299979.P9135414390955212458

`A299969(n)+A033999(7*n²)`
-/

namespace A299979.P9135414390955212458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299969 n + A033999 (7 * n ^ 2)

end

end A299979.P9135414390955212458

/-! ## A299979.P2696891397324474049

`A299969(n)-A087960(A247541(n))`
-/

namespace A299979.P2696891397324474049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299969 n - A087960 (A247541 n).toNat

end

end A299979.P2696891397324474049

/-!
# A299987: Lexicographic first sequence of nonnegative integers such that a(n) + a(n+1) has a digit 7, and no term occurs twice.

The programs for A299987, there is no canonical definition to state claims against.
-/

/-! ## A299987.P11862396577706792809

`A299977(n+1)-A118404(A000096(n))`
-/

namespace A299987.P11862396577706792809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299977 (n + 1) - A118404 (A000096 n).toNat

end

end A299987.P11862396577706792809

/-! ## A299987.P16021328702859149560

`A299977(n+1)-A009001(A117862(n))`
-/

namespace A299987.P16021328702859149560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299977 (n + 1) - A009001 (A117862 n).toNat

end

end A299987.P16021328702859149560

/-! ## A299987.P1491992942964301128

`A299977(n+1)-A087960(A228474(n))`
-/

namespace A299987.P1491992942964301128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299977 (n + 1) - A087960 (A228474 n).toNat

end

end A299987.P1491992942964301128

/-! ## A299987.P1680279512609408694

`A299977(n+1)+A033999(A202318(n+1))`
-/

namespace A299987.P1680279512609408694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299977 (n + 1) + A033999 (A202318 (n + 1)).toNat

end

end A299987.P1680279512609408694

/-! ## A299987.P14466268209847592963

`A299977(n+1)+A009001(A117862(n)+2)`
-/

namespace A299987.P14466268209847592963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299977 (n + 1) + A009001 (A117862 n + 2).toNat

end

end A299987.P14466268209847592963

/-!
# A299988: Lexicographic first sequence of nonnegative integers such that a(n) + a(n+1) has a digit 8, and no term occurs twice.

The programs for A299988, there is no canonical definition to state claims against.
-/

/-! ## A299988.P18126566950369132289

`A090771(n+1)-A229888(A051022(n))`
-/

namespace A299988.P18126566950369132289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090771 (n + 1) - A229888 (A051022 n).toNat

end

end A299988.P18126566950369132289

/-! ## A299988.P6673953768483609339

`A090771(n+1)-A229888(A056142(n))`
-/

namespace A299988.P6673953768483609339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090771 (n + 1) - A229888 (A056142 n).toNat

end

end A299988.P6673953768483609339

/-! ## A299988.P7174333971885937333

`A090771(n+1)-A229888(A087051(n))`
-/

namespace A299988.P7174333971885937333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090771 (n + 1) - A229888 (A087051 n).toNat

end

end A299988.P7174333971885937333

/-! ## A299988.P5944019656552886523

`A004220(A136847(n+2))`
-/

namespace A299988.P5944019656552886523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004220 (A136847 (n + 2)).toNat

end

end A299988.P5944019656552886523

/-! ## A299988.P6955902697720680379

`eq[A111757(n+1), A152892(n)]`
-/

namespace A299988.P6955902697720680379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152892 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A299988.P6955902697720680379

/-!
# A299990: a(n) = A243822(n) - A000005(n).

The programs for A299990, the canonical program `A299990.P6118966537885348026` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299990 has offset 1).

The definition of A299990 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A299990.P6118966537885348026

`A243822(n+1)-A000005(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A299990

/-- `A243822(n+1)-A000005(n+1)` -/
def P6118966537885348026.Spec : Prop :=
  ∀ n, P6118966537885348026.a n = A299990 (n + 1)

theorem P6118966537885348026.correct : P6118966537885348026.Spec := by
  intro n
  simp only [A299990, Nat.add_sub_cancel]

end A299990

/-! ## A299990.P10128104562016383134

`A010846(n+1)-2*A000005(n+1)`
-/

namespace A299990.P10128104562016383134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010846 (n + 1) - 2 * A000005 (n + 1)

end

end A299990.P10128104562016383134

namespace A299990

/-- `A010846(n+1)-2*A000005(n+1)` -/
def P10128104562016383134.Spec : Prop :=
  ∀ n, P10128104562016383134.a n = A299990 (n + 1)

theorem P10128104562016383134.correct : P10128104562016383134.Spec := by
  intro n
  simp only [A299990, Nat.add_sub_cancel, A299990.P10128104562016383134.a, A299990.P6118966537885348026.a, A000005, A000005.P16091521709108585461.a, A010846, A010846.P14508317490206257509.f1, A010846.P14508317490206257509.a, A243822, A243822.P11643441440473095318.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A299990

/-! ## A299990.P3386429459748009917

`A243822(n+1)-Δ[A054519(n)]`
-/

namespace A299990.P3386429459748009917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243822 (n + 1) - (f1 (n + 1) - f1 n)

end

end A299990.P3386429459748009917

namespace A299990

/-- `A243822(n+1)-Δ[A054519(n)]` -/
def P3386429459748009917.Spec : Prop :=
  ∀ n, P3386429459748009917.a n = A299990 (n + 1)

end A299990

/-! ## A299990.P1111178705827782073

`A010846(n+1)-A062011(n+1)`
-/

namespace A299990.P1111178705827782073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010846 (n + 1) - A062011 (n + 1)

end

end A299990.P1111178705827782073

namespace A299990

/-- `A010846(n+1)-A062011(n+1)` -/
def P1111178705827782073.Spec : Prop :=
  ∀ n, P1111178705827782073.a n = A299990 (n + 1)

theorem P1111178705827782073.correct : P1111178705827782073.Spec := by
  intro n
  simp only [A299990, Nat.add_sub_cancel, A299990.P1111178705827782073.a, A299990.P6118966537885348026.a, A000005, A000005.P16091521709108585461.a, A010846, A010846.P14508317490206257509.f1, A010846.P14508317490206257509.a, A062011, A062011.P17525320077853469406.a, A243822, A243822.P11643441440473095318.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A299990

/-! ## A299990.P12460376886401290402

`2*A243822(n+1)-A010846(n+1)`
-/

namespace A299990.P12460376886401290402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A243822 (n + 1) - A010846 (n + 1)

end

end A299990.P12460376886401290402

namespace A299990

/-- `2*A243822(n+1)-A010846(n+1)` -/
def P12460376886401290402.Spec : Prop :=
  ∀ n, P12460376886401290402.a n = A299990 (n + 1)

theorem P12460376886401290402.correct : P12460376886401290402.Spec := by
  intro n
  simp only [A299990, Nat.add_sub_cancel, A299990.P12460376886401290402.a, A299990.P6118966537885348026.a, A000005, A000005.P16091521709108585461.a, A010846, A010846.P14508317490206257509.f1, A010846.P14508317490206257509.a, A243822, A243822.P11643441440473095318.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A299990

/-! ## A299990.P3445082043804264674

`A045763(n+1)-(A243823(n+1)+A000005(n+1))`
-/

namespace A299990.P3445082043804264674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045763 (n + 1) - (A243823 (n + 1) + A000005 (n + 1))

end

end A299990.P3445082043804264674

namespace A299990

/-- `A045763(n+1)-(A243823(n+1)+A000005(n+1))` -/
def P3445082043804264674.Spec : Prop :=
  ∀ n, P3445082043804264674.a n = A299990 (n + 1)

theorem P3445082043804264674.correct : P3445082043804264674.Spec := by
  intro n
  simp only [A299990, Nat.add_sub_cancel, A299990.P3445082043804264674.a, A299990.P6118966537885348026.a, A000005, A000005.P16091521709108585461.a, A045763, A045763.P9156243808986750239.a, A243822, A243822.P11643441440473095318.a, A243823, A243823.P1309405451730701218.a, A000010, A000010.P4673923239450215316.a, A010846, A010846.P14508317490206257509.f1, A010846.P14508317490206257509.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A299990

/-! ## A299990.P17592735247446066208

`A045763(n+1)-(A300858(n+1)+A010846(n+1))`
-/

namespace A299990.P17592735247446066208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045763 (n + 1) - (A300858 (n + 1) + A010846 (n + 1))

end

end A299990.P17592735247446066208

namespace A299990

/-- `A045763(n+1)-(A300858(n+1)+A010846(n+1))` -/
def P17592735247446066208.Spec : Prop :=
  ∀ n, P17592735247446066208.a n = A299990 (n + 1)

theorem P17592735247446066208.correct : P17592735247446066208.Spec := by
  intro n
  simp only [A299990, Nat.add_sub_cancel, A299990.P17592735247446066208.a, A299990.P6118966537885348026.a, A000005, A000005.P16091521709108585461.a, A010846, A010846.P14508317490206257509.f1, A010846.P14508317490206257509.a, A045763, A045763.P9156243808986750239.a, A243822, A243822.P11643441440473095318.a, A300858, A300858.P9935168087101521703.a, A000010, A000010.P4673923239450215316.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A243823, A243823.P1309405451730701218.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A299990

/-!
# A299991: Numbers n for which A243822(n) > A000005(n).

The programs for A299991, the canonical program `A299991.P4270556615329755926` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299991 has offset 1).

The definition of A299991 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6114 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A299991.P4270556615329755926

`lt[0, A299990(n+1)]+1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A299991

/-- `lt[0, A299990(n+1)]+1` -/
def P4270556615329755926.Spec : Prop :=
  ∀ n, (P4270556615329755926.a n : ℤ) = A299991 (n + 1)

theorem P4270556615329755926.correct : P4270556615329755926.Spec := by
  intro n
  simp only [A299991, Nat.add_sub_cancel]

end A299991

/-! ## A299991.P12146174452140711306

`lt[0, A299990(A028310(n))]`
-/

namespace A299991.P12146174452140711306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299990 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A299991.P12146174452140711306

namespace A299991

/-- `lt[0, A299990(A028310(n))]` -/
def P12146174452140711306.Spec : Prop :=
  ∀ n, (P12146174452140711306.a n : ℤ) = A299991 (n + 1)

end A299991

/-! ## A299991.P17180436700080075734

`A020725(lt[0, A299990(n+1)])`
-/

namespace A299991.P17180436700080075734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A299991.P17180436700080075734

namespace A299991

/-- `A020725(lt[0, A299990(n+1)])` -/
def P17180436700080075734.Spec : Prop :=
  ∀ n, P17180436700080075734.a n = A299991 (n + 1)

end A299991

/-! ## A299991.P4028293513914608612

`lt[A062011(n+1), A010846(n+1)]+1`
-/

namespace A299991.P4028293513914608612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062011 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010846 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A299991.P4028293513914608612

namespace A299991

/-- `lt[A062011(n+1), A010846(n+1)]+1` -/
def P4028293513914608612.Spec : Prop :=
  ∀ n, (P4028293513914608612.a n : ℤ) = A299991 (n + 1)

end A299991

/-! ## A299991.P3763018643827428407

`lt[A000005(n+1), A243822(n+1)]+1`
-/

namespace A299991.P3763018643827428407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243822 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A299991.P3763018643827428407

namespace A299991

/-- `lt[A000005(n+1), A243822(n+1)]+1` -/
def P3763018643827428407.Spec : Prop :=
  ∀ n, (P3763018643827428407.a n : ℤ) = A299991 (n + 1)

end A299991

/-! ## A299991.P14435581899326988435

`A020725(lt[A062011(n+1), A010846(n+1)])`
-/

namespace A299991.P14435581899326988435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062011 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010846 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A299991.P14435581899326988435

namespace A299991

/-- `A020725(lt[A062011(n+1), A010846(n+1)])` -/
def P14435581899326988435.Spec : Prop :=
  ∀ n, P14435581899326988435.a n = A299991 (n + 1)

end A299991

/-! ## A299991.P7343749315970928417

`A020725(lt[A000005(n+1), A243822(n+1)])`
-/

namespace A299991.P7343749315970928417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A299991.P7343749315970928417

namespace A299991

/-- `A020725(lt[A000005(n+1), A243822(n+1)])` -/
def P7343749315970928417.Spec : Prop :=
  ∀ n, P7343749315970928417.a n = A299991 (n + 1)

end A299991

/-! ## A299991.P18279627519467536388

`A061767(lt[A010846(n+1), 2*A243822(n+1)])`
-/

namespace A299991.P18279627519467536388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A243822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A299991.P18279627519467536388

namespace A299991

/-- `A061767(lt[A010846(n+1), 2*A243822(n+1)])` -/
def P18279627519467536388.Spec : Prop :=
  ∀ n, P18279627519467536388.a n = A299991 (n + 1)

end A299991

/-! ## A299991.P2690829856968988929

`A061767(lt[A010846(n+1)/2, A243822(n+1)])`
-/

namespace A299991.P2690829856968988929
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010846 (n + 1) : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A299991.P2690829856968988929

namespace A299991

/-- `A061767(lt[A010846(n+1)/2, A243822(n+1)])` -/
def P2690829856968988929.Spec : Prop :=
  ∀ n, P2690829856968988929.a n = A299991 (n + 1)

end A299991

/-! ## A299991.P16482385639237232455

`A113484(lt[A010846(n+1), 2*A243822(n+1)])`
-/

namespace A299991.P16482385639237232455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A243822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A299991.P16482385639237232455

namespace A299991

/-- `A113484(lt[A010846(n+1), 2*A243822(n+1)])` -/
def P16482385639237232455.Spec : Prop :=
  ∀ n, P16482385639237232455.a n = A299991 (n + 1)

end A299991

/-! ## A299991.P11143826003549854916

`A113484(lt[A010846(n+1)/2, A243822(n+1)])`
-/

namespace A299991.P11143826003549854916
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010846 (n + 1) : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A299991.P11143826003549854916

namespace A299991

/-- `A113484(lt[A010846(n+1)/2, A243822(n+1)])` -/
def P11143826003549854916.Spec : Prop :=
  ∀ n, P11143826003549854916.a n = A299991 (n + 1)

end A299991

/-!
# A299992: Composite n with A001221(n) > 1 for which A243822(n) < A000005(n).

The programs for A299992, there is no canonical definition to state claims against.
-/

/-! ## A299992.P649162074827430940

`A237051(n+1)%A237051(n+3)`
-/

namespace A299992.P649162074827430940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237051 (n + 1)) (A237051 (n + 3))

end

end A299992.P649162074827430940

/-! ## A299992.P3815280912817496605

`A237051(n+1)%A006567(A003242(n))`
-/

namespace A299992.P3815280912817496605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237051 (n + 1)) (A006567 (A003242 n).toNat)

end

end A299992.P3815280912817496605

