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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
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
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A185100: Dihedral unlabeled Motzkin numbers: number of ways of drawing any number of nonintersecting chords joining n unlabeled points equally spaced on a circle, up to rotations and reflections of the circle.

The programs for A185100, there is no canonical definition to state claims against.
-/

/-! ## A185100.P7398940318721196784

`A008619(A293606(n))-A120039(n)`
-/

namespace A185100.P7398940318721196784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A293606 n).toNat - A120039 n

end

end A185100.P7398940318721196784

/-! ## A185100.P5421301415323357507

`A084588(A000726(n)%A340517(n+1))`
-/

namespace A185100.P5421301415323357507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084588 (Int.tmod (A000726 n) (A340517 (n + 1))).toNat

end

end A185100.P5421301415323357507

/-! ## A185100.P17947659683761873501

`A002636(A148951(n))`
-/

namespace A185100.P17947659683761873501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002636 (A148951 n).toNat

end

end A185100.P17947659683761873501

/-! ## A185100.P933592983156261397

`A380378(A148423(n))`
-/

namespace A185100.P933592983156261397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380378 (A148423 n).toNat

end

end A185100.P933592983156261397

/-! ## A185100.P1514056824977397215

`A204560(A305608(n+1))`
-/

namespace A185100.P1514056824977397215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204560 (A305608 (n + 1)).toNat

end

end A185100.P1514056824977397215

/-!
# A185102: a(n) is the recursion depth of repeatedly factoring n and then the exponents in its prime product factorization, until 1 is reached.

The programs for A185102, there is no canonical definition to state claims against.
-/

/-! ## A185102.P13374091173655965378

`A096309(n+1)-A000007(n)`
-/

namespace A185102.P13374091173655965378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096309 (n + 1) - A000007 n

end

end A185102.P13374091173655965378

/-! ## A185102.P3448832094344593615

`A057427(n)*A096309(n+1)`
-/

namespace A185102.P3448832094344593615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A096309 (n + 1)

end

end A185102.P3448832094344593615

/-! ## A185102.P607376561677793144

`A096309(n+1)%A000855(n)`
-/

namespace A185102.P607376561677793144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096309 (n + 1)) (A000855 n)

end

end A185102.P607376561677793144

/-! ## A185102.P10511438458865995449

`and(A003817(n), A096309(n+1))`
-/

namespace A185102.P10511438458865995449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003817 n) (A096309 (n + 1))

end

end A185102.P10511438458865995449

/-! ## A185102.P12032462224766927572

`and(A057428(n), A096309(n+1))`
-/

namespace A185102.P12032462224766927572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A096309 (n + 1))

end

end A185102.P12032462224766927572

/-! ## A185102.P12871757197857154227

`and(A064638(n), A096309(n+1))`
-/

namespace A185102.P12871757197857154227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A064638 n) (A096309 (n + 1))

end

end A185102.P12871757197857154227

/-! ## A185102.P8995626545441723127

`and(A064639(n), A096309(n+1))`
-/

namespace A185102.P8995626545441723127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A064639 n) (A096309 (n + 1))

end

end A185102.P8995626545441723127

/-! ## A185102.P3338494401429507129

`and(A064640(n), A096309(n+1))`
-/

namespace A185102.P3338494401429507129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A064640 n) (A096309 (n + 1))

end

end A185102.P3338494401429507129

/-! ## A185102.P11369204305953832155

`and(A073609(n), A096309(n+1))`
-/

namespace A185102.P11369204305953832155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A073609 n) (A096309 (n + 1))

end

end A185102.P11369204305953832155

/-! ## A185102.P2381105356704284079

`and(A096309(n+1), A132209(n))`
-/

namespace A185102.P2381105356704284079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A096309 (n + 1)) (A132209 n)

end

end A185102.P2381105356704284079

/-! ## A185102.P15139979874701022624

`and(A096309(n+1), A133203(n))`
-/

namespace A185102.P15139979874701022624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A096309 (n + 1)) (A133203 n)

end

end A185102.P15139979874701022624

/-! ## A185102.P18086252353253428983

`and(A096309(n+1), A134824(n))`
-/

namespace A185102.P18086252353253428983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A096309 (n + 1)) (A134824 n)

end

end A185102.P18086252353253428983

/-! ## A185102.P5898719764864353808

`and(A096309(n+1), A139250(n))`
-/

namespace A185102.P5898719764864353808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A096309 (n + 1)) (A139250 n)

end

end A185102.P5898719764864353808

/-! ## A185102.P3724184239272889096

`and(A028871(n+1), A096309(n+1))`
-/

namespace A185102.P3724184239272889096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028871 (n + 1)) (A096309 (n + 1))

end

end A185102.P3724184239272889096

/-! ## A185102.P16480268174631654126

`and(A039787(n+1), A096309(n+1))`
-/

namespace A185102.P16480268174631654126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A039787 (n + 1)) (A096309 (n + 1))

end

end A185102.P16480268174631654126

/-! ## A185102.P13564188494487805666

`and(A045326(n+1), A096309(n+1))`
-/

namespace A185102.P13564188494487805666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A045326 (n + 1)) (A096309 (n + 1))

end

end A185102.P13564188494487805666

/-! ## A185102.P14528842783078969186

`and(A045339(n+1), A096309(n+1))`
-/

namespace A185102.P14528842783078969186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A045339 (n + 1)) (A096309 (n + 1))

end

end A185102.P14528842783078969186

/-! ## A185102.P15031233441327175540

`and(A045382(n+1), A096309(n+1))`
-/

namespace A185102.P15031233441327175540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A045382 (n + 1)) (A096309 (n + 1))

end

end A185102.P15031233441327175540

/-! ## A185102.P7068467647374106822

`and(A049001(n+1), A096309(n+1))`
-/

namespace A185102.P7068467647374106822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A049001 (n + 1)) (A096309 (n + 1))

end

end A185102.P7068467647374106822

/-! ## A185102.P12190481357547527117

`and(A049002(n+1), A096309(n+1))`
-/

namespace A185102.P12190481357547527117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A049002 (n + 1)) (A096309 (n + 1))

end

end A185102.P12190481357547527117

/-!
# A185103: Smallest k > 1 such that k^(n-1) == 1 (mod n^2).

The programs for A185103, there is no canonical definition to state claims against.
-/

/-! ## A185103.P11703704828928405635

`A105222(record[A194968(n+3)²])`
-/

namespace A185103.P11703704828928405635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194968 (n + 3) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105222 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A185103.P11703704828928405635

/-! ## A185103.P10731733788563630455

`A105222((A032559(n+1)+1)²)`
-/

namespace A185103.P10731733788563630455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105222 ((A032559 (n + 1) + 1) ^ 2).toNat

end

end A185103.P10731733788563630455

/-! ## A185103.P3233164350403220433

`A105222((A069747(n+1)+1)²)`
-/

namespace A185103.P3233164350403220433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105222 ((A069747 (n + 1) + 1) ^ 2).toNat

end

end A185103.P3233164350403220433

/-! ## A185103.P5512157745668956082

`A105222((A353907(n+1)+1)²)`
-/

namespace A185103.P5512157745668956082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105222 ((A353907 (n + 1) + 1) ^ 2).toNat

end

end A185103.P5512157745668956082

/-!
# A185104: Primes with property that each swapping any pair of digits also gives a prime.

The programs for A185104, there is no canonical definition to state claims against.
-/

/-! ## A185104.P1653365211034068121

`∩[A090933(n+1), A090934(n+5)]`
-/

namespace A185104.P1653365211034068121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090934 (n + 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185104.P1653365211034068121

/-! ## A185104.P4065702231674480991

`A090934(comp[C(A092051(n+1), n²)]+2)`
-/

namespace A185104.P4065702231674480991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A092051 (n + 1)).toNat (n ^ 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090934 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2)

end

end A185104.P4065702231674480991

/-! ## A185104.P5441245964113170753

`record[A090934(n+5)%A090922(3*n+4)]`
-/

namespace A185104.P5441245964113170753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090934 (n + 5)) (A090922 (3 * n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185104.P5441245964113170753

/-! ## A185104.P1349533590669683613

`∪[A003459(n+5), A090934(A151764(n+5))]`
-/

namespace A185104.P1349533590669683613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003459 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090934 (A151764 (n + 5)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A185104.P1349533590669683613

/-! ## A185104.P17814704249038374776

`A090934(A077168(n)+4)`
-/

namespace A185104.P17814704249038374776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090934 (A077168 n + 4).toNat

end

end A185104.P17814704249038374776

/-!
# A185105: Number T(n,k) of entries in the k-th cycles of all permutations of {1,2,..,n}; each cycle is written with the smallest element first and cycles are arranged in increasing order of their first elements.

The programs for A185105, there is no canonical definition to state claims against.
-/

/-! ## A185105.P7091905214041872962

`A226167(n+1)+A073089(A060101(n))`
-/

namespace A185105.P7091905214041872962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226167 (n + 1) + A073089 (A060101 n).toNat

end

end A185105.P7091905214041872962

/-! ## A185105.P6679749952846949651

`A226167(n+1)+A024155(A156676(n))`
-/

namespace A185105.P6679749952846949651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226167 (n + 1) + A024155 (A156676 n).toNat

end

end A185105.P6679749952846949651

/-! ## A185105.P11819700004477859098

`A226167(n+1)+A055641(A153732(n))`
-/

namespace A185105.P11819700004477859098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226167 (n + 1) + A055641 (A153732 n).toNat

end

end A185105.P11819700004477859098

/-! ## A185105.P13740253451891347400

`A288167(A127040(n))+A226167(n+1)`
-/

namespace A185105.P13740253451891347400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288167 (A127040 n).toNat + A226167 (n + 1)

end

end A185105.P13740253451891347400

/-!
# A185106: Column 4 of A181783.

The programs for A185106, there is no canonical definition to state claims against.
-/

/-! ## A185106.P4786030958780877488

`6*n*a(n-1)-11*n*(n-1)*a(n-2)+6*n*(n-1)*(n-2)*a(n-3)+1` with `a(0)=1, a(1)=7, a(2)=63`
-/

namespace A185106.P4786030958780877488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7, 63] fun n a =>
  6 * ((n : ℤ) * a (n - 1)) - 11 * ((n : ℤ) * (((n : ℤ) - 1) * a (n - 2))) + 6 * ((n : ℤ) * (((n : ℤ) - 1) * (((n : ℤ) - 2) * a (n - 3)))) + 1

end

end A185106.P4786030958780877488

/-! ## A185106.P1370873081036447978

`A371766(A167614(n+2))`
-/

namespace A185106.P1370873081036447978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371766 (A167614 (n + 2)).toNat

end

end A185106.P1370873081036447978

/-! ## A185106.P4971211907155858758

`A181783(eq[3, A141169(n)])`
-/

namespace A185106.P4971211907155858758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181783 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185106.P4971211907155858758

/-!
# A185107: a(n) is the first digit of prime(n) minus the sum of the other digits.

The programs for A185107, there is no canonical definition to state claims against.
-/

/-! ## A185107.P2339630542124328569

`A225693(record[A110923(n+1)])`
-/

namespace A185107.P2339630542124328569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110923 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225693 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A185107.P2339630542124328569

/-! ## A185107.P15805501546521557059

`A225693(record[A137589(n+1)])`
-/

namespace A185107.P15805501546521557059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137589 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225693 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A185107.P15805501546521557059

/-! ## A185107.P17333338739572477547

`A225693(Δ[A007504(n)])%A110554(n+1)`
-/

namespace A185107.P17333338739572477547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225693 (f1 (n + 1) - f1 n).toNat) (A110554 (n + 1))

end

end A185107.P17333338739572477547

/-! ## A185107.P16400855883710710680

`A225693(record[A000010(n+1)]+1)%A110554(n+1)`
-/

namespace A185107.P16400855883710710680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225693 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat) (A110554 (n + 1))

end

end A185107.P16400855883710710680

/-! ## A185107.P4502538506952476687

`A225693(p?[A018252(n+1)-7])%A110554(n+1)`
-/

namespace A185107.P4502538506952476687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225693 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat) (A110554 (n + 1))

end

end A185107.P4502538506952476687

/-!
# A185108: a(0)=0; for n>0, a(n) = (n+2)*a(n-1) + 1.

The programs for A185108, the canonical program `A185108.P13195122718930646475` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185108 has offset 0).

The definition of A185108 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+2)*a(n-1)+1` (program `A185108.P13195122718930646475`, by `A185108.P13195122718930646475.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A185108.P13195122718930646475

`(n+2)*a(n-1)+1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A185108

/-- `(n+2)*a(n-1)+1` -/
def P13195122718930646475.Spec : Prop :=
  ∀ n, (P13195122718930646475.a n : ℤ) = A185108 n

theorem P13195122718930646475.correct : P13195122718930646475.Spec := by
  intro n
  simp only [A185108]

end A185108

/-! ## A185108.P6414036337826704636

`a(n-1)/(n+2)^(-1)+1` with `a(0)=0`
-/

namespace A185108.P6414036337826704636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) / (n + 2 : ℚ) ^ (-1 : ℤ) + 1

end

end A185108.P6414036337826704636

namespace A185108

/-- `a(n-1)/(n+2)^(-1)+1` -/
def P6414036337826704636.Spec : Prop :=
  ∀ n, P6414036337826704636.a n = (A185108 n : ℚ)

end A185108

/-! ## A185108.P2907809915047875610

`record[1-floor(-n*a(n-1))]` with `a(0)=0, a(1)=1, a(2)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A185108.P2907809915047875610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0] fun n f1 =>
  1 - (-((n : ℤ) * f1 (n - 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185108.P2907809915047875610

namespace A185108

/-- `record[1-floor(-n*a(n-1))]` -/
def P2907809915047875610.Spec : Prop :=
  ∀ n, P2907809915047875610.a n = A185108 n

end A185108

/-! ## A185108.P16256278742437631402

`record[1-ceil(-n*a(n-1))]` with `a(0)=0, a(1)=1, a(2)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A185108.P16256278742437631402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0] fun n f1 =>
  1 - (-((n : ℤ) * f1 (n - 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185108.P16256278742437631402

namespace A185108

/-- `record[1-ceil(-n*a(n-1))]` -/
def P16256278742437631402.Spec : Prop :=
  ∀ n, P16256278742437631402.a n = A185108 n

end A185108

/-! ## A185108.P3324282352459153830

`record[n*a(xor(-1, -n))+1]` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A185108.P3324282352459153830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0] fun n f1 =>
  n * f1 (Int.xor (-1) (-(n : ℤ))).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185108.P3324282352459153830

namespace A185108

/-- `record[n*a(xor(-1, -n))+1]` -/
def P3324282352459153830.Spec : Prop :=
  ∀ n, (P3324282352459153830.a n : ℤ) = A185108 n

end A185108

/-! ## A185108.P8093188225814340707

`record[1-round(-n*a(n-1))]` with `a(0)=0, a(1)=1, a(2)=0`

`round` is left out, it is the identity on integers.
-/

namespace A185108.P8093188225814340707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0] fun n f1 =>
  1 - (-((n : ℤ) * f1 (n - 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185108.P8093188225814340707

namespace A185108

/-- `record[1-round(-n*a(n-1))]` -/
def P8093188225814340707.Spec : Prop :=
  ∀ n, P8093188225814340707.a n = A185108 n

end A185108

/-! ## A185108.P15639991142857289634

`1-(n-2*n-2)*a(n-1)` with `a(0)=0`
-/

namespace A185108.P15639991142857289634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - ((n : ℤ) - (2 * n : ℤ) - 2) * a (n - 1)

end

end A185108.P15639991142857289634

namespace A185108

/-- `1-(n-2*n-2)*a(n-1)` -/
def P15639991142857289634.Spec : Prop :=
  ∀ n, P15639991142857289634.a n = A185108 n

end A185108

/-! ## A185108.P4497888827612919735

`lcm(n+2, 1-a(n-1))+n+3` with `a(0)=0, a(1)=1`
-/

namespace A185108.P4497888827612919735
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.lcm (n + 2 : ℤ) (1 - (a (n - 1) : ℤ)) + (n + 3)

end

end A185108.P4497888827612919735

namespace A185108

/-- `lcm(n+2, 1-a(n-1))+n+3` -/
def P4497888827612919735.Spec : Prop :=
  ∀ n, (P4497888827612919735.a n : ℤ) = A185108 n

end A185108

/-! ## A185108.P3791201553857996922

`∑[A131965(n+1)]-1`
-/

namespace A185108.P3791201553857996922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131965 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A185108.P3791201553857996922

namespace A185108

/-- `∑[A131965(n+1)]-1` -/
def P3791201553857996922.Spec : Prop :=
  ∀ n, P3791201553857996922.a n = A185108 n

end A185108

/-!
# A185109: a(0)=2; for n > 0, a(n) = (n+2)*a(n-1) + 1.

The programs for A185109, the canonical program `A185109.P10620893174337518977` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185109 has offset 0).

The definition of A185109 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+2)*a(n-1)+1` (program `A185109.P10620893174337518977`, by `A185109.P10620893174337518977.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A185109.P10620893174337518977

`(n+2)*a(n-1)+1` with `a(0)=2`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A185109

/-- `(n+2)*a(n-1)+1` -/
def P10620893174337518977.Spec : Prop :=
  ∀ n, (P10620893174337518977.a n : ℤ) = A185109 n

theorem P10620893174337518977.correct : P10620893174337518977.Spec := by
  intro n
  simp only [A185109]

end A185109

/-! ## A185109.P4199907688111024260

`a(n-1)/(n+2)^(-1)+1` with `a(0)=2`
-/

namespace A185109.P4199907688111024260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) / (n + 2 : ℚ) ^ (-1 : ℤ) + 1

end

end A185109.P4199907688111024260

namespace A185109

/-- `a(n-1)/(n+2)^(-1)+1` -/
def P4199907688111024260.Spec : Prop :=
  ∀ n, P4199907688111024260.a n = (A185109 n : ℚ)

end A185109

/-! ## A185109.P2179677991249552136

`1-(n-2*n-2)*a(n-1)` with `a(0)=2`
-/

namespace A185109.P2179677991249552136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  1 - ((n : ℤ) - (2 * n : ℤ) - 2) * a (n - 1)

end

end A185109.P2179677991249552136

namespace A185109

/-- `1-(n-2*n-2)*a(n-1)` -/
def P2179677991249552136.Spec : Prop :=
  ∀ n, P2179677991249552136.a n = A185109 n

end A185109

/-! ## A185109.P15048617628376498507

`A309490(n+2)+1`
-/

namespace A185109.P15048617628376498507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309490 (n + 2) + 1

end

end A185109.P15048617628376498507

namespace A185109

/-- `A309490(n+2)+1` -/
def P15048617628376498507.Spec : Prop :=
  ∀ n, P15048617628376498507.a n = A185109 n

end A185109

/-! ## A185109.P16409944488381731968

`A296943(n+2)/2`
-/

namespace A185109.P16409944488381731968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296943 (n + 2) : ℚ) / 2

end

end A185109.P16409944488381731968

namespace A185109

/-- `A296943(n+2)/2` -/
def P16409944488381731968.Spec : Prop :=
  ∀ n, P16409944488381731968.a n = (A185109 n : ℚ)

end A185109

/-! ## A185109.P268221542892488134

`A185108(n)+(n+2)!`
-/

namespace A185109.P268221542892488134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185108 n + (Nat.factorial (n + 2) : ℤ)

end

end A185109.P268221542892488134

namespace A185109

/-- `A185108(n)+(n+2)!` -/
def P268221542892488134.Spec : Prop :=
  ∀ n, P268221542892488134.a n = A185109 n

end A185109

/-! ## A185109.P16331405422957757199

`ceil((n+2)*a(A023443(n)))+1` with `a(0)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A185109.P16331405422957757199
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  (n + 2) * a (A023443 n).toNat + 1

end

end A185109.P16331405422957757199

namespace A185109

/-- `ceil((n+2)*a(A023443(n)))+1` -/
def P16331405422957757199.Spec : Prop :=
  ∀ n, (P16331405422957757199.a n : ℤ) = A185109 n

end A185109

/-! ## A185109.P4316823568655877837

`A185108(n)+A000142(n+2)`
-/

namespace A185109.P4316823568655877837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185108 n + A000142 (n + 2)

end

end A185109.P4316823568655877837

namespace A185109

/-- `A185108(n)+A000142(n+2)` -/
def P4316823568655877837.Spec : Prop :=
  ∀ n, P4316823568655877837.a n = A185109 n

end A185109

/-! ## A185109.P6514904304254922315

`A056542(n+2)+A001710(n+2)`
-/

namespace A185109.P6514904304254922315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056542 (n + 2) + A001710 (n + 2)

end

end A185109.P6514904304254922315

namespace A185109

/-- `A056542(n+2)+A001710(n+2)` -/
def P6514904304254922315.Spec : Prop :=
  ∀ n, P6514904304254922315.a n = A185109 n

end A185109

/-! ## A185109.P8579059238733581670

`A002627(n+2)-A001710(n+2)`
-/

namespace A185109.P8579059238733581670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002627 (n + 2) - A001710 (n + 2)

end

end A185109.P8579059238733581670

namespace A185109

/-- `A002627(n+2)-A001710(n+2)` -/
def P8579059238733581670.Spec : Prop :=
  ∀ n, P8579059238733581670.a n = A185109 n

end A185109

/-!
# A185113: Number of dissections of a convex (3n+3)-sided polygon into n pentagons and one triangle (up to equivalence).

The programs for A185113, the canonical program `A185113.P5883797355228036697` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185113 has offset 0).

The definition of A185113 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185113.P17579282601265356198

`∑[n+1]*A000260(n)`
-/

namespace A185113.P17579282601265356198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000260 n

end

end A185113.P17579282601265356198

namespace A185113

/-- `∑[n+1]*A000260(n)` -/
def P17579282601265356198.Spec : Prop :=
  ∀ n, P17579282601265356198.a n = A185113 n

end A185113

/-! ## A185113.P5883797355228036697

`(n/2+1)*A069271(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A185113

/-- `(n/2+1)*A069271(n)` -/
def P5883797355228036697.Spec : Prop :=
  ∀ n, P5883797355228036697.a n = (A185113 n : ℚ)

end A185113

/-! ## A185113.P10678551823216908041

`∑[n+1]*A146305(∑[n])`
-/

namespace A185113.P10678551823216908041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A146305 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A185113.P10678551823216908041

namespace A185113

/-- `∑[n+1]*A146305(∑[n])` -/
def P10678551823216908041.Spec : Prop :=
  ∀ n, P10678551823216908041.a n = A185113 n

end A185113

/-! ## A185113.P821946076692584689

`∑[n+1]/Δ[n²]*A006632(n+1)`
-/

namespace A185113.P821946076692584689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℚ) * (A006632 (n + 1) : ℚ)

end

end A185113.P821946076692584689

namespace A185113

/-- `∑[n+1]/Δ[n²]*A006632(n+1)` -/
def P821946076692584689.Spec : Prop :=
  ∀ n, P821946076692584689.a n = (A185113 n : ℚ)

end A185113

/-! ## A185113.P2508881113793450160

`A000260(n)*A038722(A000124(n))`
-/

namespace A185113.P2508881113793450160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000260 n * A038722 (A000124 n).toNat

end

end A185113.P2508881113793450160

namespace A185113

/-- `A000260(n)*A038722(A000124(n))` -/
def P2508881113793450160.Spec : Prop :=
  ∀ n, P2508881113793450160.a n = A185113 n

end A185113

/-! ## A185113.P6378239536762500819

`A110616(2*(n+1)²)`
-/

namespace A185113.P6378239536762500819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110616 (2 * (n + 1) ^ 2)

end

end A185113.P6378239536762500819

namespace A185113

/-- `A110616(2*(n+1)²)` -/
def P6378239536762500819.Spec : Prop :=
  ∀ n, P6378239536762500819.a n = A185113 n

end A185113

/-! ## A185113.P13161928479820183079

`A069269(A056220(n+1))`
-/

namespace A185113.P13161928479820183079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069269 (A056220 (n + 1)).toNat

end

end A185113.P13161928479820183079

namespace A185113

/-- `A069269(A056220(n+1))` -/
def P13161928479820183079.Spec : Prop :=
  ∀ n, P13161928479820183079.a n = A185113 n

end A185113

/-! ## A185113.P16235607900988154110

`A394872(A046092(n))/A003645(n)`
-/

namespace A185113.P16235607900988154110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A394872 (A046092 n).toNat : ℚ) / (A003645 n : ℚ)

end

end A185113.P16235607900988154110

namespace A185113

/-- `A394872(A046092(n))/A003645(n)` -/
def P16235607900988154110.Spec : Prop :=
  ∀ n, P16235607900988154110.a n = (A185113 n : ℚ)

end A185113

/-! ## A185113.P6705463743524330894

`(A000096(n)+1)*A341856(A000096(n))`
-/

namespace A185113.P6705463743524330894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000096 n + 1) * A341856 (A000096 n).toNat

end

end A185113.P6705463743524330894

namespace A185113

/-- `(A000096(n)+1)*A341856(A000096(n))` -/
def P6705463743524330894.Spec : Prop :=
  ∀ n, P6705463743524330894.a n = A185113 n

end A185113

/-!
# A185114: Number of connected 2-regular simple graphs on n vertices with girth at least 4.

The programs for A185114, the canonical program `A185114.P1795733170275167192` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185114 has offset 0).

The definition of A185114 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130543, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A185114.P1795733170275167192

`A130543(n)+A000007(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A185114

/-- `A130543(n)+A000007(n)` -/
def P1795733170275167192.Spec : Prop :=
  ∀ n, P1795733170275167192.a n = A185114 n

theorem P1795733170275167192.correct : P1795733170275167192.Spec := by
  intro n
  simp only [A185114]

end A185114

/-!
# A185115: Number of connected 2-regular simple graphs on n vertices with girth at least 5.

The programs for A185115, the canonical program `A185115.P11194374675298673512` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185115 has offset 0).

The definition of A185115 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185115.P11194374675298673512

`a(5%n)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A185115

/-- `a(5%n)` -/
def P11194374675298673512.Spec : Prop :=
  ∀ n, (P11194374675298673512.a n : ℤ) = A185115 n

theorem P11194374675298673512.correct : P11194374675298673512.Spec := by
  intro n
  simp only [A185115]

end A185115

/-!
# A185116: Number of connected 2-regular simple graphs on n vertices with girth at least 6.

The programs for A185116, the canonical program `A185116.P7762229135378630019` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185116 has offset 0).

The definition of A185116 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185116.P7762229135378630019

`round(γ^C(6, n))`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A185116

/-- `round(γ^C(6, n))` -/
def P7762229135378630019.Spec : Prop :=
  ∀ n, P7762229135378630019.a n = A185116 n

theorem P7762229135378630019.correct : P7762229135378630019.Spec := by
  intro n
  simp only [A185116]

end A185116

/-!
# A185117: Number of connected 2-regular simple graphs on n vertices with girth at least 7.

The programs for A185117, the canonical program `A185117.P293988372837593726` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185117 has offset 0).

The definition of A185117 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185117.P293988372837593726

`a(7%n)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A185117

/-- `a(7%n)` -/
def P293988372837593726.Spec : Prop :=
  ∀ n, (P293988372837593726.a n : ℤ) = A185117 n

theorem P293988372837593726.correct : P293988372837593726.Spec := by
  intro n
  simp only [A185117]

end A185117

/-!
# A185118: Number of connected 2-regular simple graphs on n vertices with girth at least 8.

The programs for A185118, the canonical program `A185118.P9346963085931214290` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185118 has offset 0).

The definition of A185118 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185118.P9346963085931214290

`char[xor(7, n+7)]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A185118

/-- `char[xor(7, n+7)]` -/
def P9346963085931214290.Spec : Prop :=
  ∀ n, (P9346963085931214290.a n : ℤ) = A185118 n

theorem P9346963085931214290.correct : P9346963085931214290.Spec := by
  intro n
  simp only [A185118]

end A185118

/-!
# A185119: Number of connected 2-regular simple graphs on n vertices with girth at least 9.

The programs for A185119, the canonical program `A185119.P857423191457988194` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185119 has offset 0).

The definition of A185119 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185119.P857423191457988194

`a(round(4/n))` with `a(0)=1, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A185119

/-- `a(round(4/n))` -/
def P857423191457988194.Spec : Prop :=
  ∀ n, (P857423191457988194.a n : ℤ) = A185119 n

theorem P857423191457988194.correct : P857423191457988194.Spec := by
  intro n
  simp only [A185119]

end A185119

/-!
# A185121: Smallest prime factor of 10^(2^n) + 1.

The programs for A185121, there is no canonical definition to state claims against.
-/

/-! ## A185121.P88218817152221807

`A038371(2^n)`
-/

namespace A185121.P88218817152221807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038371 (2 ^ n)

end

end A185121.P88218817152221807

/-! ## A185121.P8664313622237004133

`or(1, A038371(exp(n*log(2))))`
-/

namespace A185121.P8664313622237004133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A038371 (SequenceMachineLib.roundAway (Real.exp ((n : ℝ) * Real.log (2 : ℝ)))).toNat)

end

end A185121.P8664313622237004133

/-! ## A185121.P2241518014352713367

`and(-1, A038371(A000079(n)))`
-/

namespace A185121.P2241518014352713367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A038371 (A000079 n).toNat)

end

end A185121.P2241518014352713367

/-! ## A185121.P5067483683039786747

`A038371(A000079(n))+A025443(n)`
-/

namespace A185121.P5067483683039786747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038371 (A000079 n).toNat + A025443 n

end

end A185121.P5067483683039786747

/-! ## A185121.P10781945521147913174

`A038371(A000079(n))+A027870(n)`
-/

namespace A185121.P10781945521147913174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038371 (A000079 n).toNat + A027870 n

end

end A185121.P10781945521147913174

/-!
# A185123: a(n) = n 9's sandwiched between two 1's.

The programs for A185123, the canonical program `A185123.P4520854506884375301` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185123 has offset 0).

The definition of A185123 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A185123.P4520854506884375301

`20*10^n-9`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A185123

/-- `20*10^n-9` -/
def P4520854506884375301.Spec : Prop :=
  ∀ n, P4520854506884375301.a n = A185123 n

theorem P4520854506884375301.correct : P4520854506884375301.Spec := by
  intro n
  simp only [A185123]

end A185123

/-! ## A185123.P9710411253544305395

`or(1, A173813(n+1))`
-/

namespace A185123.P9710411253544305395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A173813 (n + 1))

end

end A185123.P9710411253544305395

namespace A185123

/-- `or(1, A173813(n+1))` -/
def P9710411253544305395.Spec : Prop :=
  ∀ n, P9710411253544305395.a n = A185123 n

end A185123

/-! ## A185123.P10100746800895880793

`abs(1-A086948(n+1))`
-/

namespace A185123.P10100746800895880793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A086948 (n + 1)|

end

end A185123.P10100746800895880793

namespace A185123

/-- `abs(1-A086948(n+1))` -/
def P10100746800895880793.Spec : Prop :=
  ∀ n, P10100746800895880793.a n = A185123 n

end A185123

/-! ## A185123.P15820577586353930071

`abs(3-A086946(n+1))`
-/

namespace A185123.P15820577586353930071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - A086946 (n + 1)|

end

end A185123.P15820577586353930071

namespace A185123

/-- `abs(3-A086946(n+1))` -/
def P15820577586353930071.Spec : Prop :=
  ∀ n, P15820577586353930071.a n = A185123 n

end A185123

/-! ## A185123.P846132162538885075

`abs(5-A086940(n+1))`
-/

namespace A185123.P846132162538885075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |5 - A086940 (n + 1)|

end

end A185123.P846132162538885075

namespace A185123

/-- `abs(5-A086940(n+1))` -/
def P846132162538885075.Spec : Prop :=
  ∀ n, P846132162538885075.a n = A185123 n

end A185123

/-! ## A185123.P7012546926110417195

`(A177109(n+1)+2)/2`
-/

namespace A185123.P7012546926110417195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177109 (n + 1) + 2 : ℚ) / 2

end

end A185123.P7012546926110417195

namespace A185123

/-- `(A177109(n+1)+2)/2` -/
def P7012546926110417195.Spec : Prop :=
  ∀ n, P7012546926110417195.a n = (A185123 n : ℚ)

end A185123

/-! ## A185123.P5102054494447226869

`(A175603(n+1)+4)/4`
-/

namespace A185123.P5102054494447226869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175603 (n + 1) + 4 : ℚ) / 4

end

end A185123.P5102054494447226869

namespace A185123

/-- `(A175603(n+1)+4)/4` -/
def P5102054494447226869.Spec : Prop :=
  ∀ n, P5102054494447226869.a n = (A185123 n : ℚ)

end A185123

/-! ## A185123.P15311782100984922800

`Δ[A002276(n+1)-9*n]`
-/

namespace A185123.P15311782100984922800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002276 (n + 1) - (9 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A185123.P15311782100984922800

namespace A185123

/-- `Δ[A002276(n+1)-9*n]` -/
def P15311782100984922800.Spec : Prop :=
  ∀ n, P15311782100984922800.a n = A185123 n

end A185123

/-! ## A185123.P8317008270376443074

`xor(1, A173813(A000027(n+1)))`
-/

namespace A185123.P8317008270376443074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A173813 (A000027 (n + 1)).toNat)

end

end A185123.P8317008270376443074

namespace A185123

/-- `xor(1, A173813(A000027(n+1)))` -/
def P8317008270376443074.Spec : Prop :=
  ∀ n, P8317008270376443074.a n = A185123 n

end A185123

/-!
# A185124: Expansion of f(x, -x^5) in powers of x where f(,) is the Ramanujan general theta function.

The programs for A185124, there is no canonical definition to state claims against.
-/

/-! ## A185124.P15085681297896695016

`(-1)^n*A185125(n)`
-/

namespace A185124.P15085681297896695016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A185125 n

end

end A185124.P15085681297896695016

/-! ## A185124.P14152473409742962205

`A204843(3*n+1)`
-/

namespace A185124.P14152473409742962205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204843 (3 * n + 1)

end

end A185124.P14152473409742962205

/-! ## A185124.P3454420614893842283

`A204843(n+1+n+n)^3`
-/

namespace A185124.P3454420614893842283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204843 (n + 1 + (n + n)) ^ 3

end

end A185124.P3454420614893842283

/-! ## A185124.P10092356288086276382

`A185125(n)*A219977(n)`
-/

namespace A185124.P10092356288086276382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185125 n * A219977 n

end

end A185124.P10092356288086276382

/-! ## A185124.P7513193709470646454

`A185125(n)*A309873(n+1)`
-/

namespace A185124.P7513193709470646454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185125 n * A309873 (n + 1)

end

end A185124.P7513193709470646454

/-! ## A185124.P1253700881235515345

`A204853(A008607(2*n+1)+A008607(n))`
-/

namespace A185124.P1253700881235515345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204853 (A008607 (2 * n + 1) + A008607 n).toNat

end

end A185124.P1253700881235515345

/-!
# A185125: Expansion of f(-x, x^5) in powers of x where f(,) is the Ramanujan general theta function.

The programs for A185125, there is no canonical definition to state claims against.
-/

/-! ## A185125.P4999796810866586108

`(-1)^n*A185124(n)`
-/

namespace A185125.P4999796810866586108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A185124 n

end

end A185125.P4999796810866586108

/-! ## A185125.P4796406931451844390

`A185124(n)*A219977(n)`
-/

namespace A185125.P4796406931451844390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185124 n * A219977 n

end

end A185125.P4796406931451844390

/-! ## A185125.P9826281430415796890

`A185124(n)*A309873(n+1)`
-/

namespace A185125.P9826281430415796890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185124 n * A309873 (n + 1)

end

end A185125.P9826281430415796890

/-! ## A185125.P2837261360819601479

`A185124(n)/A057077(2*n)`
-/

namespace A185125.P2837261360819601479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185124 n : ℚ) / (A057077 (2 * n) : ℚ)

end

end A185125.P2837261360819601479

/-! ## A185125.P7672389369496875311

`A204853(A017221(n))-A204853(3*n+1)`
-/

namespace A185125.P7672389369496875311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204853 (A017221 n).toNat - A204853 (3 * n + 1)

end

end A185125.P7672389369496875311

/-! ## A185125.P2503857103129737379

`A185124(n)/A010815(∑[n*n%2+n]/2)`
-/

namespace A185125.P2503857103129737379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n % 2) + n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185124 n : ℚ) / (A010815 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2)).toNat : ℚ)

end

end A185125.P2503857103129737379

/-!
# A185127: a(n) = n 3's sandwiched between two 1's.

The programs for A185127, the canonical program `A185127.P17170349651825878440` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185127 has offset 0).

The definition of A185127 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A185127.P17170349651825878440

`10*a(n-1)+21` with `a(0)=11`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A185127

/-- `10*a(n-1)+21` -/
def P17170349651825878440.Spec : Prop :=
  ∀ n, (P17170349651825878440.a n : ℤ) = A185127 n

theorem P17170349651825878440.correct : P17170349651825878440.Spec := by
  intro n
  simp only [A185127]

end A185127

/-! ## A185127.P9961571437983549240

`(40*10^n-7)/3`
-/

namespace A185127.P9961571437983549240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((40 * 10 ^ n : ℤ) - 7 : ℚ) / 3

end

end A185127.P9961571437983549240

namespace A185127

/-- `(40*10^n-7)/3` -/
def P9961571437983549240.Spec : Prop :=
  ∀ n, P9961571437983549240.a n = (A185127 n : ℚ)

theorem P9961571437983549240.correct : P9961571437983549240.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A185127, Nat.add_sub_cancel, A185127.P9961571437983549240.a, A185127.P17170349651825878440.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A185127, Nat.add_sub_cancel, A185127.P9961571437983549240.a, A185127.P17170349651825878440.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A185127

/-! ## A185127.P10360251898142655649

`ogf((11+10x)/(1-11x+10x^2))`
-/

namespace A185127.P10360251898142655649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [11, 10] [1, -11, 10] n

end

end A185127.P10360251898142655649

namespace A185127

/-- `ogf((11+10x)/(1-11x+10x^2))` -/
def P10360251898142655649.Spec : Prop :=
  ∀ n, P10360251898142655649.a n = A185127 n

end A185127

/-! ## A185127.P6017417032878200651

`∑[10*a(n-1)]-1` with `a(0)=12`
-/

namespace A185127.P6017417032878200651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [12] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A185127.P6017417032878200651

namespace A185127

/-- `∑[10*a(n-1)]-1` -/
def P6017417032878200651.Spec : Prop :=
  ∀ n, P6017417032878200651.a n = A185127 n

end A185127

/-! ## A185127.P3573260335474543591

`A073551(n+2)-1`
-/

namespace A185127.P3573260335474543591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073551 (n + 2) - 1

end

end A185127.P3573260335474543591

namespace A185127

/-- `A073551(n+2)-1` -/
def P3573260335474543591.Spec : Prop :=
  ∀ n, P3573260335474543591.a n = A185127 n

end A185127

/-! ## A185127.P14552134930146553747

`A097166(n+1)-2`
-/

namespace A185127.P14552134930146553747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097166 (n + 1) - 2

end

end A185127.P14552134930146553747

namespace A185127

/-- `A097166(n+1)-2` -/
def P14552134930146553747.Spec : Prop :=
  ∀ n, P14552134930146553747.a n = A185127 n

end A185127

/-! ## A185127.P17486231311811402994

`A073556(n+2)-2`
-/

namespace A185127.P17486231311811402994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073556 (n + 2) - 2

end

end A185127.P17486231311811402994

namespace A185127

/-- `A073556(n+2)-2` -/
def P17486231311811402994.Spec : Prop :=
  ∀ n, P17486231311811402994.a n = A185127 n

end A185127

/-! ## A185127.P10370486818515383590

`A073550(n+2)-3`
-/

namespace A185127.P10370486818515383590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073550 (n + 2) - 3

end

end A185127.P10370486818515383590

namespace A185127

/-- `A073550(n+2)-3` -/
def P10370486818515383590.Spec : Prop :=
  ∀ n, P10370486818515383590.a n = A185127 n

end A185127

/-! ## A185127.P15551538088004392695

`A073553(n+2)-3`
-/

namespace A185127.P15551538088004392695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073553 (n + 2) - 3

end

end A185127.P15551538088004392695

namespace A185127

/-- `A073553(n+2)-3` -/
def P15551538088004392695.Spec : Prop :=
  ∀ n, P15551538088004392695.a n = A185127 n

end A185127

/-! ## A185127.P6940963241252926309

`A073554(n+2)-3`
-/

namespace A185127.P6940963241252926309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073554 (n + 2) - 3

end

end A185127.P6940963241252926309

namespace A185127

/-- `A073554(n+2)-3` -/
def P6940963241252926309.Spec : Prop :=
  ∀ n, P6940963241252926309.a n = A185127 n

end A185127

/-!
# A185128: a(n) = larger member of n-th pair of distinct, positive, triangular numbers whose sum and difference are also triangular numbers.

The programs for A185128, there is no canonical definition to state claims against.
-/

/-! ## A185128.P3545475518152306978

`A000217(A185223(n+1))`
-/

namespace A185128.P3545475518152306978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A185223 (n + 1)).toNat

end

end A185128.P3545475518152306978

/-! ## A185128.P17690879422980999282

`A161680(A185223(n+1)+1)`
-/

namespace A185128.P17690879422980999282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A185223 (n + 1) + 1).toNat

end

end A185128.P17690879422980999282

/-! ## A185128.P7860084060315277714

`A179865(A185223(n+1)+1)`
-/

namespace A185128.P7860084060315277714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (A185223 (n + 1) + 1).toNat

end

end A185128.P7860084060315277714

/-! ## A185128.P7385628274689322825

`A253145(A185223(n+1)-1)`
-/

namespace A185128.P7385628274689322825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 (A185223 (n + 1) - 1).toNat

end

end A185128.P7385628274689322825

/-! ## A185128.P11520133496537647572

`A185253(n+1)+A185129(n+1)`
-/

namespace A185128.P11520133496537647572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185253 (n + 1) + A185129 (n + 1)

end

end A185128.P11520133496537647572

/-!
# A185129: a(n) = smaller member of n-th pair of distinct, positive, triangular numbers whose sum and difference are also triangular numbers.

The programs for A185129, there is no canonical definition to state claims against.
-/

/-! ## A185129.P1395418490230476757

`C(A185233(n+1)+1, 2)`
-/

namespace A185129.P1395418490230476757
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A185233 (n + 1) + 1).toNat 2

end

end A185129.P1395418490230476757

/-! ## A185129.P7677164202318730877

`A000217(A185233(n+1))`
-/

namespace A185129.P7677164202318730877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A185233 (n + 1)).toNat

end

end A185129.P7677164202318730877

/-! ## A185129.P11303887917316847796

`A161680(A185233(n+1)+1)`
-/

namespace A185129.P11303887917316847796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A185233 (n + 1) + 1).toNat

end

end A185129.P11303887917316847796

/-! ## A185129.P8861794339532498196

`A179865(A185233(n+1)+1)`
-/

namespace A185129.P8861794339532498196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (A185233 (n + 1) + 1).toNat

end

end A185129.P8861794339532498196

/-! ## A185129.P2910069219901123700

`A253145(A185233(n+1)-1)`
-/

namespace A185129.P2910069219901123700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 (A185233 (n + 1) - 1).toNat

end

end A185129.P2910069219901123700

/-!
# A185132: Number of 4-Motzkin paths of length n with no level steps at height 0.

The programs for A185132, there is no canonical definition to state claims against.
-/

/-! ## A185132.P17334839020279159436

`(A025228(n+1)-a(n-1))/4` with `a(0)=1`
-/

namespace A185132.P17334839020279159436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((A025228 (n + 1) : ℚ) - a (n - 1)) / 4

end

end A185132.P17334839020279159436

/-! ## A185132.P2231040678731706593

`A123108(and(A058681(n)+1, -n))`
-/

namespace A185132.P2231040678731706593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (Int.land (A058681 n + 1) (-(n : ℤ))).toNat

end

end A185132.P2231040678731706593

/-! ## A185132.P5788082767438331164

`A226577(A025228(n+1)-a(n-1))` with `a(0)=1`
-/

namespace A185132.P5788082767438331164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A226577 (A025228 (n + 1) - a (n - 1)).toNat

end

end A185132.P5788082767438331164

/-!
# A185133: Number of not necessarily connected 3-regular simple graphs on 2n vertices with girth exactly 3.

The programs for A185133, there is no canonical definition to state claims against.
-/

/-! ## A185133.P12400203982185085461

`A006923(n)+A185033(n)`
-/

namespace A185133.P12400203982185085461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006923 n + A185033 n

end

end A185133.P12400203982185085461

/-! ## A185133.P17981877254223806295

`A005638(n)-A185334(n)`
-/

namespace A185133.P17981877254223806295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005638 n - A185334 n

end

end A185133.P17981877254223806295

/-! ## A185133.P7692064920107206642

`A002851(n)+A185033(n)-A014371(n)`
-/

namespace A185133.P7692064920107206642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002851 n + (A185033 n - A014371 n)

end

end A185133.P7692064920107206642

/-! ## A185133.P3204000360169381824

`A005638(n)-(A185234(n)+A014371(n))`
-/

namespace A185133.P3204000360169381824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005638 n - (A185234 n + A014371 n)

end

end A185133.P3204000360169381824

/-! ## A185133.P15168512284863508426

`A002851(n)+A165653(n)-A185334(n)`
-/

namespace A185133.P15168512284863508426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002851 n + (A165653 n - A185334 n)

end

end A185133.P15168512284863508426

/-!
# A185134: Number of, not necessarily connected, 3-regular simple graphs on 2n vertices with girth exactly 4.

The programs for A185134, there is no canonical definition to state claims against.
-/

/-! ## A185134.P8989273914198368657

`A006924(n)+A185034(n)`
-/

namespace A185134.P8989273914198368657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006924 n + A185034 n

end

end A185134.P8989273914198368657

/-! ## A185134.P220025101504147728

`A185334(n)-A185335(n)`
-/

namespace A185134.P220025101504147728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185334 n - A185335 n

end

end A185134.P220025101504147728

/-! ## A185134.P8960485143178543674

`A014371(n)+A185034(n)-A014372(n)`
-/

namespace A185134.P8960485143178543674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014371 n + (A185034 n - A014372 n)

end

end A185134.P8960485143178543674

/-! ## A185134.P1661801188039717940

`A005638(n)-(A185335(n)+A185133(n))`
-/

namespace A185134.P1661801188039717940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005638 n - (A185335 n + A185133 n)

end

end A185134.P1661801188039717940

/-! ## A185134.P17111547507040936578

`A006924(n)+A185234(n)-A185235(n)`
-/

namespace A185134.P17111547507040936578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006924 n + (A185234 n - A185235 n)

end

end A185134.P17111547507040936578

/-!
# A185135: Number of not necessarily connected 3-regular simple graphs on 2n vertices with girth exactly 5.

The programs for A185135, there is no canonical definition to state claims against.
-/

/-! ## A185135.P8550476821930519838

`A006925(n)+A185035(n)`
-/

namespace A185135.P8550476821930519838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006925 n + A185035 n

end

end A185135.P8550476821930519838

/-! ## A185135.P16251405585647816389

`A185335(n)-A185336(n)`
-/

namespace A185135.P16251405585647816389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185335 n - A185336 n

end

end A185135.P16251405585647816389

/-! ## A185135.P14282539957934797887

`A006925(n)+A185235(n)-A185036(n)`
-/

namespace A185135.P14282539957934797887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006925 n + (A185235 n - A185036 n)

end

end A185135.P14282539957934797887

/-! ## A185135.P6419608743587302463

`A185335(n)-(A185236(n)+A014374(n))`
-/

namespace A185135.P6419608743587302463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185335 n - (A185236 n + A014374 n)

end

end A185135.P6419608743587302463

/-! ## A185135.P17104444310435411136

`A185334(n)-(A185336(n)+A185134(n))`
-/

namespace A185135.P17104444310435411136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185334 n - (A185336 n + A185134 n)

end

end A185135.P17104444310435411136

/-!
# A185136: Number of not necessarily connected 3-regular simple graphs on 2n vertices with girth exactly 6.

The programs for A185136, there is no canonical definition to state claims against.
-/

/-! ## A185136.P8736765370812393844

`A006926(n)+A185036(n)`
-/

namespace A185136.P8736765370812393844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006926 n + A185036 n

end

end A185136.P8736765370812393844

/-! ## A185136.P2934105164416993976

`A185236(n)+A006926(n)`
-/

namespace A185136.P2934105164416993976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185236 n + A006926 n

end

end A185136.P2934105164416993976

/-! ## A185136.P2510672042562713891

`A185336(n)-A014375(n)`
-/

namespace A185136.P2510672042562713891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185336 n - A014375 n

end

end A185136.P2510672042562713891

/-! ## A185136.P7735601742108021754

`A014374(n)+A185236(n)-A014375(n)`
-/

namespace A185136.P7735601742108021754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014374 n + (A185236 n - A014375 n)

end

end A185136.P7735601742108021754

/-! ## A185136.P18122168354504187935

`A185236(n)+A014374(n)-(A260813(n)+A006927(n))`
-/

namespace A185136.P18122168354504187935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185236 n + (A014374 n - (A260813 n + A006927 n))

end

end A185136.P18122168354504187935

/-!
# A185138: a(4*n) = n*(4*n-1); a(2*n+1) = n*(n+1)/2; a(4*n+2) = (2*n+1)*(4*n+1).

The programs for A185138, the canonical program `A185138.P1014935391464103176` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185138 has offset 0).

The definition of A185138 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A208950, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A185138.P1014935391464103176

`3*A208950(n)/A109613(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A185138

/-- `3*A208950(n)/A109613(n)` -/
def P1014935391464103176.Spec : Prop :=
  ∀ n, P1014935391464103176.a n = (A185138 n : ℚ)

end A185138

/-! ## A185138.P3519033260322109506

`A276670(n)/(n^(n%2)+n)`
-/

namespace A185138.P3519033260322109506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276670 n : ℚ) / (n ^ (n % 2) + n : ℚ)

end

end A185138.P3519033260322109506

namespace A185138

/-- `A276670(n)/(n^(n%2)+n)` -/
def P3519033260322109506.Spec : Prop :=
  ∀ n, P3519033260322109506.a n = (A185138 n : ℚ)

end A185138

/-! ## A185138.P445604977736707432

`A276670(n)/A043547(n+1)`
-/

namespace A185138.P445604977736707432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276670 n : ℚ) / (A043547 (n + 1) : ℚ)

end

end A185138.P445604977736707432

namespace A185138

/-- `A276670(n)/A043547(n+1)` -/
def P445604977736707432.Spec : Prop :=
  ∀ n, P445604977736707432.a n = (A185138 n : ℚ)

end A185138

/-! ## A185138.P11501493157152145548

`gcd(A111384(A109613(n)), A135503(n))`
-/

namespace A185138.P11501493157152145548
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A111384 (A109613 n).toNat) (A135503 n)

end

end A185138.P11501493157152145548

namespace A185138

/-- `gcd(A111384(A109613(n)), A135503(n))` -/
def P11501493157152145548.Spec : Prop :=
  ∀ n, (P11501493157152145548.a n : ℤ) = A185138 n

end A185138

/-! ## A185138.P15958101363211248838

`gcd(A135503(n)/A109613(n), A050534(n))`
-/

namespace A185138.P15958101363211248838
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A135503 n : ℚ) / (A109613 n : ℚ))) (A050534 n)

end

end A185138.P15958101363211248838

namespace A185138

/-- `gcd(A135503(n)/A109613(n), A050534(n))` -/
def P15958101363211248838.Spec : Prop :=
  ∀ n, (P15958101363211248838.a n : ℤ) = A185138 n

end A185138

/-! ## A185138.P16015959032407198792

`A276670(n)/(A005843(n+1)-A141310(n))`
-/

namespace A185138.P16015959032407198792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276670 n : ℚ) / (A005843 (n + 1) - A141310 n : ℚ)

end

end A185138.P16015959032407198792

namespace A185138

/-- `A276670(n)/(A005843(n+1)-A141310(n))` -/
def P16015959032407198792.Spec : Prop :=
  ∀ n, P16015959032407198792.a n = (A185138 n : ℚ)

end A185138

/-! ## A185138.P14197826626727569815

`A026741(A007590(n)-A129889(n))`
-/

namespace A185138.P14197826626727569815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A007590 n - A129889 n).toNat

end

end A185138.P14197826626727569815

namespace A185138

/-- `A026741(A007590(n)-A129889(n))` -/
def P14197826626727569815.Spec : Prop :=
  ∀ n, P14197826626727569815.a n = A185138 n

end A185138

/-! ## A185138.P5659471884498335566

`A026741(∑[A004442(n)]-A079097(n))`
-/

namespace A185138.P5659471884498335566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (∑ j ∈ Finset.range (n + 1), f1 j - A079097 n).toNat

end

end A185138.P5659471884498335566

namespace A185138

/-- `A026741(∑[A004442(n)]-A079097(n))` -/
def P5659471884498335566.Spec : Prop :=
  ∀ n, P5659471884498335566.a n = A185138 n

end A185138

/-! ## A185138.P10610593164524524428

`A026741((A029578(n+1)-1)*A004526(n+1))`
-/

namespace A185138.P10610593164524524428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 ((A029578 (n + 1) - 1) * A004526 (n + 1)).toNat

end

end A185138.P10610593164524524428

namespace A185138

/-- `A026741((A029578(n+1)-1)*A004526(n+1))` -/
def P10610593164524524428.Spec : Prop :=
  ∀ n, P10610593164524524428.a n = A185138 n

end A185138

/-! ## A185138.P1847326146880927092

`A026741(A004526(n)*A026741(A014681(n)))`
-/

namespace A185138.P1847326146880927092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A004526 n * A026741 (A014681 n).toNat).toNat

end

end A185138.P1847326146880927092

namespace A185138

/-- `A026741(A004526(n)*A026741(A014681(n)))` -/
def P1847326146880927092.Spec : Prop :=
  ∀ n, P1847326146880927092.a n = A185138 n

end A185138

/-! ## A185138.P3401656857649536184

`A026741(A026741(A014681(n))*A123108(n))`
-/

namespace A185138.P3401656857649536184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A026741 (A014681 n).toNat * A123108 n).toNat

end

end A185138.P3401656857649536184

namespace A185138

/-- `A026741(A026741(A014681(n))*A123108(n))` -/
def P3401656857649536184.Spec : Prop :=
  ∀ n, P3401656857649536184.a n = A185138 n

end A185138

/-!
# A185140: Irregular triangle E(n,g) counting not necessarily connected 4-regular simple graphs on n vertices with girth exactly g.

The programs for A185140, there is no canonical definition to state claims against.
-/

/-! ## A185140.P13844561951126334617

`A184940(n+5)+A011731(A185134(n))`
-/

namespace A185140.P13844561951126334617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184940 (n + 5) + A011731 (A185134 n).toNat

end

end A185140.P13844561951126334617

/-! ## A185140.P16760181041894778024

`A196563(A020094(n))+A184940(n+5)`
-/

namespace A185140.P16760181041894778024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (A020094 n).toNat + A184940 (n + 5)

end

end A185140.P16760181041894778024

/-! ## A185140.P8790720320937414109

`A293162(A007779(n))+A184940(n+5)`
-/

namespace A185140.P8790720320937414109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293162 (A007779 n).toNat + A184940 (n + 5)

end

end A185140.P8790720320937414109

/-! ## A185140.P18050087237896608389

`A230106(A185034(n))+A184940(n+5)`
-/

namespace A185140.P18050087237896608389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230106 (A185034 n).toNat + A184940 (n + 5)

end

end A185140.P18050087237896608389

/-! ## A185140.P16666981247675667618

`A230106(A185234(n))+A184940(n+5)`
-/

namespace A185140.P16666981247675667618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230106 (A185234 n).toNat + A184940 (n + 5)

end

end A185140.P16666981247675667618

/-!
# A185141: a(n) = (n!)^(2*n).

The programs for A185141, the canonical program `A185141.P10097749781761357378` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185141 has offset 0).

The definition of A185141 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!^(2*n)` (program `A185141.P10097749781761357378`, by `A185141.P10097749781761357378.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A185141.P10097749781761357378

`n!^(2*n)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A185141

/-- `n!^(2*n)` -/
def P10097749781761357378.Spec : Prop :=
  ∀ n, (P10097749781761357378.a n : ℤ) = A185141 n

theorem P10097749781761357378.correct : P10097749781761357378.Spec := by
  intro n
  simp only [A185141]

end A185141

/-! ## A185141.P16054985228083855383

`(n!^n)²`
-/

namespace A185141.P16054985228083855383
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n ^ n) ^ 2

end

end A185141.P16054985228083855383

namespace A185141

/-- `(n!^n)²` -/
def P16054985228083855383.Spec : Prop :=
  ∀ n, (P16054985228083855383.a n : ℤ) = A185141 n

theorem P16054985228083855383.correct : P16054985228083855383.Spec := by
  intro n
  simp only [A185141, Nat.add_sub_cancel, A185141.P16054985228083855383.a, A185141.P10097749781761357378.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A185141

/-! ## A185141.P6015016613474992932

`n!^2^n`
-/

namespace A185141.P6015016613474992932
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n ^ 2) ^ n

end

end A185141.P6015016613474992932

namespace A185141

/-- `n!^2^n` -/
def P6015016613474992932.Spec : Prop :=
  ∀ n, (P6015016613474992932.a n : ℤ) = A185141 n

theorem P6015016613474992932.correct : P6015016613474992932.Spec := by
  intro n
  simp only [A185141, Nat.add_sub_cancel, A185141.P6015016613474992932.a, A185141.P10097749781761357378.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A185141

/-! ## A185141.P14104667931207636775

`∏[n^ceil(atan(n))]^n`
-/

namespace A185141.P14104667931207636775
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (⌈Real.arctan (n : ℝ)⌉ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) ^ n

end

end A185141.P14104667931207636775

namespace A185141

/-- `∏[n^ceil(atan(n))]^n` -/
def P14104667931207636775.Spec : Prop :=
  ∀ n, P14104667931207636775.a n = (A185141 n : ℚ)

end A185141

/-! ## A185141.P12243840022792559824

`∏[round(1/acot(n²))]^n`
-/

namespace A185141.P12243840022792559824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n ^ 2 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) ^ n

end

end A185141.P12243840022792559824

namespace A185141

/-- `∏[round(1/acot(n²))]^n` -/
def P12243840022792559824.Spec : Prop :=
  ∀ n, P12243840022792559824.a n = A185141 n

end A185141

/-!
# A185142: E.g.f. A(x) = Sum_{n>=0} a(n)*x^(2*n+1)/(2*n+1)! is inverse function to x*cos(x).

The programs for A185142, there is no canonical definition to state claims against.
-/

/-! ## A185142.P1102768437008540678

`(2*n+1)*A196873(n)`
-/

namespace A185142.P1102768437008540678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A196873 n

end

end A185142.P1102768437008540678

/-! ## A185142.P10634575438580215654

`lcm(A005408(n), A196873(n))`
-/

namespace A185142.P10634575438580215654
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A005408 n) (A196873 n)

end

end A185142.P10634575438580215654

/-!
# A185143: Number of not necessarily connected 4-regular simple graphs on n vertices with girth exactly 3.

The programs for A185143, there is no canonical definition to state claims against.
-/

/-! ## A185143.P7832763081309594334

`A184943(n)+A185043(n)`
-/

namespace A185143.P7832763081309594334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184943 n + A185043 n

end

end A185143.P7832763081309594334

/-! ## A185143.P13461765881102039121

`A033301(n)-A185344(n)`
-/

namespace A185143.P13461765881102039121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033301 n - A185344 n

end

end A185143.P13461765881102039121

/-! ## A185143.P17750625549399168514

`A184943(n)-(A011738(n)-A185043(n))`
-/

namespace A185143.P17750625549399168514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184943 n - (A011738 n - A185043 n)

end

end A185143.P17750625549399168514

/-! ## A185143.P7052389136075103343

`A184943(n)-(A185246(n)-A185043(n))`
-/

namespace A185143.P7052389136075103343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184943 n - (A185246 n - A185043 n)

end

end A185143.P7052389136075103343

/-! ## A185143.P9425662962449703974

`A184943(n)-(A185284(n)-A185043(n))`
-/

namespace A185143.P9425662962449703974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184943 n - (A185284 n - A185043 n)

end

end A185143.P9425662962449703974

/-!
# A185144: Number of not necessarily connected 4-regular simple graphs on n vertices with girth exactly 4.

The programs for A185144, there is no canonical definition to state claims against.
-/

/-! ## A185144.P17913558799965497774

`A184944(n)+A185044(n)`
-/

namespace A185144.P17913558799965497774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184944 n + A185044 n

end

end A185144.P17913558799965497774

/-! ## A185144.P7491786120730206721

`A185344(n)-A058343(n)`
-/

namespace A185144.P7491786120730206721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185344 n - A058343 n

end

end A185144.P7491786120730206721

/-! ## A185144.P6388032354920919147

`A185344(round(sqrt(n²+1)))-A184945(n)`
-/

namespace A185144.P6388032354920919147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185344 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat - A184945 n

end

end A185144.P6388032354920919147

/-! ## A185144.P17521483564167695437

`A033301(n)-(A185143(n)+A058343(n))`
-/

namespace A185144.P17521483564167695437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033301 n - (A185143 n + A058343 n)

end

end A185144.P17521483564167695437

/-! ## A185144.P2582243426729786189

`A033886(n)+A185044(n)-A058343(n)`
-/

namespace A185144.P2582243426729786189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033886 n + (A185044 n - A058343 n)

end

end A185144.P2582243426729786189

/-!
# A185145: Smallest average of twin prime pairs s such that n*s is also average of twin prime pairs.

The programs for A185145, there is no canonical definition to state claims against.
-/

/-! ## A185145.P1801417697928265641

`A258811(n+1)+1`
-/

namespace A185145.P1801417697928265641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258811 (n + 1) + 1

end

end A185145.P1801417697928265641

/-! ## A185145.P13970913037772612265

`A000203(A258811(n+1))`
-/

namespace A185145.P13970913037772612265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A258811 (n + 1)).toNat

end

end A185145.P13970913037772612265

/-! ## A185145.P128163895807756710

`∑{d}[A258811(A008619(2*n)), #]`
-/

namespace A185145.P128163895807756710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258811 (A008619 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A185145.P128163895807756710

/-! ## A185145.P7911274322169554986

`∑{d}[A258811(A131732(2*n)), #]`
-/

namespace A185145.P7911274322169554986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258811 (A131732 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A185145.P7911274322169554986

/-! ## A185145.P16608289198487751216

`∏{p}[A258811(A008619(2*n)), A002131(#)]`
-/

namespace A185145.P16608289198487751216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258811 (A008619 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A002131 p

end

end A185145.P16608289198487751216

/-!
# A185146: Expansion of q^-2 * phi(q) * phi(q^4) / psi(q^8)^2 in powers of q where phi(), psi() are Ramanujan theta functions.

The programs for A185146, there is no canonical definition to state claims against.
-/

/-! ## A185146.P8451686287319891837

`A080964(n)%Δ[A160724(n)]`
-/

namespace A185146.P8451686287319891837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080964 n) (f1 (n + 1) - f1 n)

end

end A185146.P8451686287319891837

/-! ## A185146.P17057358450957850842

`A080964(n)/A080972(A184955(n))`
-/

namespace A185146.P17057358450957850842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080964 n : ℚ) / (A080972 (A184955 n).toNat : ℚ)

end

end A185146.P17057358450957850842

/-! ## A185146.P5851627544600414580

`A080964(n)/A007061(A157156(n))²`
-/

namespace A185146.P5851627544600414580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080964 n : ℚ) / (A007061 (A157156 n).toNat ^ 2 : ℚ)

end

end A185146.P5851627544600414580

/-!
# A185147: Number of times each value of the sigma function occurs.

The programs for A185147, there is no canonical definition to state claims against.
-/

/-! ## A185147.P2892768670468715393

`A070242(A002192(n+1))`
-/

namespace A185147.P2892768670468715393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070242 (A002192 (n + 1)).toNat

end

end A185147.P2892768670468715393

/-! ## A185147.P16682069017449775219

`A070242(A329821(n+1))`
-/

namespace A185147.P16682069017449775219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070242 (A329821 (n + 1)).toNat

end

end A185147.P16682069017449775219

/-! ## A185147.P11595292633478923940

`A054973(A002191(n+1))`
-/

namespace A185147.P11595292633478923940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (A002191 (n + 1)).toNat

end

end A185147.P11595292633478923940

/-! ## A185147.P17790057664039258955

`A054973(∑{d}[A002192(n+1), #])`
-/

namespace A185147.P17790057664039258955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A185147.P17790057664039258955

/-! ## A185147.P515577584984473363

`A054973(eq[1, A175192(n+1)]+1)`
-/

namespace A185147.P515577584984473363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A185147.P515577584984473363

/-! ## A185147.P9961401280716169565

`A054973(lt[1, A054973(n+1)+1]+1)`
-/

namespace A185147.P9961401280716169565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A185147.P9961401280716169565

/-! ## A185147.P43919468915419370

`Δ[(A074753(A002191(n+1))+1)%A017318(n)]`
-/

namespace A185147.P43919468915419370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074753 (A002191 (n + 1)).toNat + 1) (A017318 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A185147.P43919468915419370

/-!
# A185148: Number of rectangular arrangements of [1,3n] in 3 increasing sequences of size n and n monotonic sequences of size 3.

The programs for A185148, there is no canonical definition to state claims against.
-/

/-! ## A185148.P7810958056374630123

`A208615(eq[4, A054123(n)])`
-/

namespace A185148.P7810958056374630123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208615 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185148.P7810958056374630123

/-! ## A185148.P9439372454387469390

`A208615(eq[4, A193592(n)])`
-/

namespace A185148.P9439372454387469390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208615 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185148.P9439372454387469390

/-! ## A185148.P8651756877835897177

`A208615(Δ[A023545(n+1)])`
-/

namespace A185148.P8651756877835897177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208615 (f1 (n + 1) - f1 n).toNat

end

end A185148.P8651756877835897177

/-! ## A185148.P7540601442329062404

`A208615(eq[6, A185782(n+1)])`
-/

namespace A185148.P7540601442329062404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208615 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185148.P7540601442329062404

/-! ## A185148.P3903419460832398220

`A208615(A166136(n+1)+A016789(n))`
-/

namespace A185148.P3903419460832398220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208615 (A166136 (n + 1) + A016789 n).toNat

end

end A185148.P3903419460832398220

/-!
# A185149: a(n) = 3^n*A003046(n+1)/A002457(n).

The programs for A185149, there is no canonical definition to state claims against.
-/

/-! ## A185149.P3886613023762610475

`3^n*A003046(n+1)/A002457(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A185149.P3886613023762610475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 ^ n : ℤ) * A003046 (n + 1) : ℚ) / (A002457 n : ℚ)

end

end A185149.P3886613023762610475

/-! ## A185149.P1854107661183441725

`∏[Δ[(4-6/(n+1))*a(n-1)]]` with `a(0)=0, a(1)=1`
-/

namespace A185149.P1854107661183441725
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  (4 - 6 / (n + 1 : ℚ)) * f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A185149.P1854107661183441725

/-! ## A185149.P4171745368086524450

`a(n-1)*Δ[C(2*n, n)/(n+1)]` with `a(0)=1`
-/

namespace A185149.P4171745368086524450
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (f1 (n + 1) - f1 n)

end

end A185149.P4171745368086524450

/-! ## A185149.P2273011621292021257

`a(n-1)*Δ[(4-6/(n+1))*a(n-1)]` with `a(0)=1`
-/

namespace A185149.P2273011621292021257
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (4 - 6 / (n + 1 : ℚ)) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (f1 (n + 1) - f1 n)

end

end A185149.P2273011621292021257

/-! ## A185149.P9228297076279936856

`∏[A071724(n)]`
-/

namespace A185149.P9228297076279936856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A185149.P9228297076279936856

/-!
# A185150: Number of odd primes p between n^2 and (n+1)^2 with (n/p) = 1, where (-) is the Legendre symbol.

The programs for A185150, there is no canonical definition to state claims against.
-/

/-! ## A185150.P5163211179046524601

`A001222(A340333(n)+A059427(n+4))`
-/

namespace A185150.P5163211179046524601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A340333 n + A059427 (n + 4)).toNat

end

end A185150.P5163211179046524601

/-! ## A185150.P16029823571034381900

`A109082(A332661(n+1)+A077168(n))`
-/

namespace A185150.P16029823571034381900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109082 (A332661 (n + 1) + A077168 n).toNat

end

end A185150.P16029823571034381900

/-!
# A185151: E.g.f. A(x) = Sum_{n>=1} a(n)*x^n/n! is inverse function to exp(x) - x^2 - 1.

The programs for A185151, there is no canonical definition to state claims against.
-/

/-! ## A185151.P490392520272503190

`A276996(A029737(n+1))+n`
-/

namespace A185151.P490392520272503190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276996 (A029737 (n + 1)).toNat + (n : ℤ)

end

end A185151.P490392520272503190

/-! ## A185151.P9952661128558415984

`Δ[A089408(n+4)-A324327(n)]`
-/

namespace A185151.P9952661128558415984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089408 (n + 4) - A324327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A185151.P9952661128558415984

/-!
# A185152: Expansion of (q/2) * phi(q)^3 (d/dq) phi(q) in powers of q.

The programs for A185152, the canonical program `A185152.P4343648518591402247` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185152 has offset 1).

The definition of A185152 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046897, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A185152.P4343648518591402247

`(n+1)*A046897(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A185152

/-- `(n+1)*A046897(n+1)` -/
def P4343648518591402247.Spec : Prop :=
  ∀ n, P4343648518591402247.a n = A185152 (n + 1)

theorem P4343648518591402247.correct : P4343648518591402247.Spec := by
  intro n
  simp only [A185152, Nat.add_sub_cancel]

end A185152

/-! ## A185152.P8967155446659986159

`(n+1)*∑{d}[n+1, #%lcm(4, #)]`
-/

namespace A185152.P8967155446659986159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ d ∈ Nat.divisors (f1 n), d % Nat.lcm 4 d)

end

end A185152.P8967155446659986159

namespace A185152

/-- `(n+1)*∑{d}[n+1, #%lcm(4, #)]` -/
def P8967155446659986159.Spec : Prop :=
  ∀ n, (P8967155446659986159.a n : ℤ) = A185152 (n + 1)

end A185152

/-! ## A185152.P7812068476128412988

`abs((n+1)*A109506(n+1))`
-/

namespace A185152.P7812068476128412988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * A109506 (n + 1)|

end

end A185152.P7812068476128412988

namespace A185152

/-- `abs((n+1)*A109506(n+1))` -/
def P7812068476128412988.Spec : Prop :=
  ∀ n, P7812068476128412988.a n = A185152 (n + 1)

end A185152

/-! ## A185152.P14453618470372505202

`(n+1)*A000118(n+1)/8`
-/

namespace A185152.P14453618470372505202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A000118 (n + 1) : ℚ) / 8)

end

end A185152.P14453618470372505202

namespace A185152

/-- `(n+1)*A000118(n+1)/8` -/
def P14453618470372505202.Spec : Prop :=
  ∀ n, P14453618470372505202.a n = (A185152 (n + 1) : ℚ)

end A185152

/-! ## A185152.P14678420049403363453

`(n+1)*A000203((n+1)/ceil(xor(n, n+1)/4))`
-/

namespace A185152.P14678420049403363453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (⌈(Nat.xor n (n + 1) : ℚ) / 4⌉ : ℚ))).toNat

end

end A185152.P14678420049403363453

namespace A185152

/-- `(n+1)*A000203((n+1)/ceil(xor(n, n+1)/4))` -/
def P14678420049403363453.Spec : Prop :=
  ∀ n, P14678420049403363453.a n = A185152 (n + 1)

end A185152

/-! ## A185152.P4137582459957395301

`A000593(n+1)*A165998(n)`
-/

namespace A185152.P4137582459957395301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) * A165998 n

end

end A185152.P4137582459957395301

namespace A185152

/-- `A000593(n+1)*A165998(n)` -/
def P4137582459957395301.Spec : Prop :=
  ∀ n, P4137582459957395301.a n = A185152 (n + 1)

end A185152

/-! ## A185152.P486179230834836366

`A010684(n)*A326125(n+1)`
-/

namespace A185152.P486179230834836366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n * A326125 (n + 1)

end

end A185152.P486179230834836366

namespace A185152

/-- `A010684(n)*A326125(n+1)` -/
def P486179230834836366.Spec : Prop :=
  ∀ n, P486179230834836366.a n = A185152 (n + 1)

end A185152

/-! ## A185152.P4396485893469504644

`(n+1)*A000203(A259445(n+1))`
-/

namespace A185152.P4396485893469504644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000203 (A259445 (n + 1)).toNat

end

end A185152.P4396485893469504644

namespace A185152

/-- `(n+1)*A000203(A259445(n+1))` -/
def P4396485893469504644.Spec : Prop :=
  ∀ n, P4396485893469504644.a n = A185152 (n + 1)

end A185152

/-! ## A185152.P17648131811204106985

`A133691(n+1)*A186111(n+1)`
-/

namespace A185152.P17648131811204106985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133691 (n + 1) * A186111 (n + 1)

end

end A185152.P17648131811204106985

namespace A185152

/-- `A133691(n+1)*A186111(n+1)` -/
def P17648131811204106985.Spec : Prop :=
  ∀ n, P17648131811204106985.a n = A185152 (n + 1)

end A185152

/-! ## A185152.P17925440321612776306

`lcm(A124449(n+1), A326125(n+1))`
-/

namespace A185152.P17925440321612776306
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A124449 (n + 1)) (A326125 (n + 1))

end

end A185152.P17925440321612776306

namespace A185152

/-- `lcm(A124449(n+1), A326125(n+1))` -/
def P17925440321612776306.Spec : Prop :=
  ∀ n, (P17925440321612776306.a n : ℤ) = A185152 (n + 1)

end A185152

/-! ## A185152.P11044023524424564442

`Δ[A374535(n)]`
-/

namespace A185152.P11044023524424564442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374535 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A185152.P11044023524424564442

namespace A185152

/-- `Δ[A374535(n)]` -/
def P11044023524424564442.Spec : Prop :=
  ∀ n, P11044023524424564442.a n = A185152 (n + 1)

end A185152

/-! ## A185152.P12290951751628925384

`A374535(n+1)-A374535(n)`
-/

namespace A185152.P12290951751628925384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374535 (n + 1) - A374535 n

end

end A185152.P12290951751628925384

namespace A185152

/-- `A374535(n+1)-A374535(n)` -/
def P12290951751628925384.Spec : Prop :=
  ∀ n, P12290951751628925384.a n = A185152 (n + 1)

end A185152

/-! ## A185152.P13162807686213997835

`A153284(n+2)*A326125(n+1)`
-/

namespace A185152.P13162807686213997835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153284 (n + 2) * A326125 (n + 1)

end

end A185152.P13162807686213997835

namespace A185152

/-- `A153284(n+2)*A326125(n+1)` -/
def P13162807686213997835.Spec : Prop :=
  ∀ n, P13162807686213997835.a n = A185152 (n + 1)

end A185152

/-! ## A185152.P8578231660961755385

`(n+1)*∑{d}[A000265(n+1)*A176895(2*n), #]`
-/

namespace A185152.P8578231660961755385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1) * A176895 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A185152.P8578231660961755385

namespace A185152

/-- `(n+1)*∑{d}[A000265(n+1)*A176895(2*n), #]` -/
def P8578231660961755385.Spec : Prop :=
  ∀ n, (P8578231660961755385.a n : ℤ) = A185152 (n + 1)

end A185152

/-!
# A185153: Number of not necessarily connected 5-regular simple graphs on 2n vertices with girth exactly 3.

The programs for A185153, there is no canonical definition to state claims against.
-/

/-! ## A185153.P9812174366537638059

`A184953(n)+A185053(n)`
-/

namespace A185153.P9812174366537638059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184953 n + A185053 n

end

end A185153.P9812174366537638059

/-! ## A185153.P9562305344407593564

`A165626(n)-A185354(n)`
-/

namespace A185153.P9562305344407593564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165626 n - A185354 n

end

end A185153.P9562305344407593564

/-! ## A185153.P17141377960470060151

`A184953(n)+A165655(n)`
-/

namespace A185153.P17141377960470060151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184953 n + A165655 n

end

end A185153.P17141377960470060151

/-! ## A185153.P12986847640334505907

`A165626(n)-A058275(n)`
-/

namespace A185153.P12986847640334505907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165626 n - A058275 n

end

end A185153.P12986847640334505907

/-! ## A185153.P13800281108413350623

`A165626(n)-∏{e}[2^n, A184954(#)]`
-/

namespace A185153.P13800281108413350623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165626 n - ∏ p ∈ Nat.primeFactors (f1 n), A184954 (Nat.factorization (f1 n) p)

end

end A185153.P13800281108413350623

/-!
# A185154: Smallest prime p such that a nonconsecutive prime q exists with A157996(n) = p + q + 1.

The programs for A185154, there is no canonical definition to state claims against.
-/

/-! ## A185154.P6707262150989449812

`A020481(A153081(n+1)+A040006(n))`
-/

namespace A185154.P6707262150989449812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020481 (A153081 (n + 1) + A040006 n).toNat

end

end A185154.P6707262150989449812

/-! ## A185154.P2490631155537726322

`A002373(record[A047949(n+9)+1])`
-/

namespace A185154.P2490631155537726322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047949 (n + 9) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002373 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A185154.P2490631155537726322

/-! ## A185154.P6853989583048151954

`A002373(record[n+10-A002373(n+9)])`
-/

namespace A185154.P6853989583048151954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 10 : ℤ) - A002373 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002373 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A185154.P6853989583048151954

/-! ## A185154.P10952468301904301829

`A002373(A153081(n+1)+A040006(n))`
-/

namespace A185154.P10952468301904301829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002373 (A153081 (n + 1) + A040006 n).toNat

end

end A185154.P10952468301904301829

/-! ## A185154.P11535632813370752156

`A020481(A004526(record[A039649(n+15)]))`
-/

namespace A185154.P11535632813370752156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 15)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020481 (A004526 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A185154.P11535632813370752156

/-!
# A185155: Irregular triangle read by rows: Catalan coefficients T(n,k), n>=0, 0 <= k <= C_n, where C_n = A000108(n).

The programs for A185155, there is no canonical definition to state claims against.
-/

/-! ## A185155.P12525485421699186326

`A370559(A011795(n)*A090529(n))`
-/

namespace A185155.P12525485421699186326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370559 (A011795 n * A090529 n).toNat

end

end A185155.P12525485421699186326

/-! ## A185155.P16188409886351954576

`A004218(p?[A208864(A103391(n+1))])`
-/

namespace A185155.P16188409886351954576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208864 (A103391 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A185155.P16188409886351954576

/-! ## A185155.P6742317696228877433

`A000196(gcd(A098384(n), A130527(n+1)))`
-/

namespace A185155.P6742317696228877433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.gcd (A098384 n) (A130527 (n + 1)))

end

end A185155.P6742317696228877433

/-! ## A185155.P8655200928796918063

`A066099(A027082(n+2)%A265079(n+1))`
-/

namespace A185155.P8655200928796918063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066099 (Int.tmod (A027082 (n + 2)) (A265079 (n + 1))).toNat

end

end A185155.P8655200928796918063

/-!
# A185156: Primes with the property that complementing any two different bits in the binary representation of these primes never produces a prime number.

The programs for A185156, there is no canonical definition to state claims against.
-/

/-! ## A185156.P15313494937604363085

`A179283(A080359(n+1))`
-/

namespace A185156.P15313494937604363085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179283 (A080359 (n + 1)).toNat

end

end A185156.P15313494937604363085

/-!
# A185157: G.f. A(x) = sum(n>0, a(n)*x^n/(2*n-1)!) is the inverse function to x*Bernoulli(x).

The programs for A185157, there is no canonical definition to state claims against.
-/

/-! ## A185157.P13146953062700216339

`A129506(n+1)*n!`
-/

namespace A185157.P13146953062700216339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129506 (n + 1) * (Nat.factorial n : ℤ)

end

end A185157.P13146953062700216339

/-! ## A185157.P8468296238476526155

`A233734(n+1)/(n+1)`
-/

namespace A185157.P8468296238476526155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233734 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A185157.P8468296238476526155

/-! ## A185157.P5428874008048884236

`A000142(n)*A129506(n+1)`
-/

namespace A185157.P5428874008048884236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A129506 (n + 1)

end

end A185157.P5428874008048884236

/-! ## A185157.P14664214339796331018

`A008279(A000096(n))*A129506(n+1)`
-/

namespace A185157.P14664214339796331018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 (A000096 n).toNat * A129506 (n + 1)

end

end A185157.P14664214339796331018

/-! ## A185157.P9457179834677032335

`A000142(n)*A106800(A056220(n+1))`
-/

namespace A185157.P9457179834677032335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A106800 (A056220 (n + 1)).toNat

end

end A185157.P9457179834677032335

/-!
# A185158: Triangular array read by rows: T(n,k) (n>=1, 0<=k<=n-1, except 0<=k<=1 when n=1) = coefficient of x^k in expansion of (1/n)*Sum_{d|n} (mobius(d)*(1+x^d)^(n/d)).

The programs for A185158, there is no canonical definition to state claims against.
-/

/-! ## A185158.P1836076220926338404

`A051168(comp[∑[n+2]])`
-/

namespace A185158.P1836076220926338404
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A185158.P1836076220926338404

/-! ## A185158.P1623183996058812246

`A185700(n+1-2%(2-n²))`
-/

namespace A185158.P1623183996058812246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185700 ((n + 1 : ℤ) - Int.tmod 2 (2 - (n ^ 2 : ℤ))).toNat

end

end A185158.P1623183996058812246

/-! ## A185158.P14856019795790197181

`A185700(∑[char[∑[n]]]²+1-n)`
-/

namespace A185158.P14856019795790197181
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185700 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 1 - n)

end

end A185158.P14856019795790197181

/-! ## A185158.P138466796175287633

`A123149(A038722(n+1)%A227590(n+1))`
-/

namespace A185158.P138466796175287633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123149 (Int.tmod (A038722 (n + 1)) (A227590 (n + 1))).toNat

end

end A185158.P138466796175287633

/-! ## A185158.P15855909886016812856

`A326702(A266493(n+1)%A304855(n+5))`
-/

namespace A185158.P15855909886016812856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326702 (Int.tmod (A266493 (n + 1)) (A304855 (n + 5))).toNat

end

end A185158.P15855909886016812856

/-!
# A185159: a(n) = 2^n*A122827(n).

The programs for A185159, there is no canonical definition to state claims against.
-/

/-! ## A185159.P3824696502374786677

`2^(n+1)*A122827(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A185159.P3824696502374786677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) * A122827 (n + 1)

end

end A185159.P3824696502374786677

/-! ## A185159.P8170829977070187859

`(1-n)*A167894(n)*Δ[A290113(n)]`
-/

namespace A185159.P8170829977070187859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290113 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) * A167894 n * (f1 (n + 1) - f1 n)

end

end A185159.P8170829977070187859

/-! ## A185159.P5448389086711031011

`(A167894(n)+n*A003319(n))*Δ[A290113(n)]`
-/

namespace A185159.P5448389086711031011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290113 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A167894 n + (n : ℤ) * A003319 n) * (f1 (n + 1) - f1 n)

end

end A185159.P5448389086711031011

/-! ## A185159.P10995829787140544824

`(1-n)*A104984(∑[n])*Δ[A290113(n)]`
-/

namespace A185159.P10995829787140544824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290113 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) * A104984 (∑ j ∈ Finset.range (n + 1), f1 j) * (f2 (n + 1) - f2 n)

end

end A185159.P10995829787140544824

/-!
# A185160: Somos-4 variation with periodic coefficients.

The programs for A185160, there is no canonical definition to state claims against.
-/

/-! ## A185160.P13580651112542289059

`A033270(or(4, A056409(n+1)))`
-/

namespace A185160.P13580651112542289059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (Int.lor 4 (A056409 (n + 1))).toNat

end

end A185160.P13580651112542289059

/-!
# A185161: G.f. = 1/(1-g(x)) where g(x) is the g.f. for A141309.

The programs for A185161, there is no canonical definition to state claims against.
-/

/-! ## A185161.P14272007600005850543

`A141308(A028310(n))-A000007(n)`
-/

namespace A185161.P14272007600005850543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141308 (A028310 n).toNat - A000007 n

end

end A185161.P14272007600005850543

/-! ## A185161.P6638796554857652126

`A141308(A028310(n))/gcd(n, A139827(n+1))`
-/

namespace A185161.P6638796554857652126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141308 (A028310 n).toNat : ℚ) / (Int.gcd (n : ℤ) (A139827 (n + 1)) : ℚ)

end

end A185161.P6638796554857652126

/-! ## A185161.P14696240813622705237

`∏{e}[A000079(n), A141308(#)]`
-/

namespace A185161.P14696240813622705237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A141308 (Nat.factorization (f1 n).natAbs p)

end

end A185161.P14696240813622705237

/-!
# A185162: Dimensions of Lie algebras connected with the graded connected commutative Hopf algebra Sym^(3).

The programs for A185162, there is no canonical definition to state claims against.
-/

/-! ## A185162.P6829161590373450113

`3*A008651(A122446(n+4))`
-/

namespace A185162.P6829161590373450113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A008651 (A122446 (n + 4)).toNat

end

end A185162.P6829161590373450113

/-!
# A185163: Number of not necessarily connected 6-regular simple graphs on n vertices with girth exactly 3.

The programs for A185163, there is no canonical definition to state claims against.
-/

/-! ## A185163.P7105703430888130896

`A184963(n)+A185063(n)`
-/

namespace A185163.P7105703430888130896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184963 n + A185063 n

end

end A185163.P7105703430888130896

/-! ## A185163.P436444815072706772

`A165627(n)-A058276(n)`
-/

namespace A185163.P436444815072706772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165627 n - A058276 n

end

end A185163.P436444815072706772

/-! ## A185163.P17981073599009470118

`A184963(n)+A165656(n)`
-/

namespace A185163.P17981073599009470118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184963 n + A165656 n

end

end A185163.P17981073599009470118

/-! ## A185163.P7213489712243979570

`A184963(n)+A011738(A033886(n))`
-/

namespace A185163.P7213489712243979570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184963 n + A011738 (A033886 n).toNat

end

end A185163.P7213489712243979570

/-! ## A185163.P12550123125940655851

`A006822(n)-A342004(A223202(n+1))`
-/

namespace A185163.P12550123125940655851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006822 n - A342004 (A223202 (n + 1)).toNat

end

end A185163.P12550123125940655851

/-!
# A185164: Coefficients of a set of polynomials associated with the derivatives of x^x.

The programs for A185164, there is no canonical definition to state claims against.
-/

/-! ## A185164.P14849761123550653350

`A075856(A056536(n+1))`
-/

namespace A185164.P14849761123550653350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075856 (A056536 (n + 1)).toNat

end

end A185164.P14849761123550653350

/-! ## A185164.P3716229070517251938

`A075856(A091018(n)+1)`
-/

namespace A185164.P3716229070517251938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075856 (A091018 n + 1).toNat

end

end A185164.P3716229070517251938

/-!
# A185166: Number of prime divisors of n (counted with multiplicity) of numbers k such that sum of proper divisors of k exceeds that of all smaller numbers.

The programs for A185166, there is no canonical definition to state claims against.
-/

/-! ## A185166.P2424384000422172432

`A001222(A034090(n+1))`
-/

namespace A185166.P2424384000422172432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A034090 (n + 1)).toNat

end

end A185166.P2424384000422172432

/-! ## A185166.P15696529295932001689

`∑{d}[A034090(n+1), A069513(#)]`
-/

namespace A185166.P15696529295932001689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A069513 d

end

end A185166.P15696529295932001689

/-! ## A185166.P5215421212841416926

`A252736(2*A034090(n+1))`
-/

namespace A185166.P5215421212841416926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (2 * A034090 (n + 1)).toNat

end

end A185166.P5215421212841416926

/-! ## A185166.P13386477218518300166

`A001222(A359132(A034091(n+1)))`
-/

namespace A185166.P13386477218518300166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A359132 (A034091 (n + 1)).toNat).toNat

end

end A185166.P13386477218518300166

/-!
# A185170: a(n) = floor( (2*n^2 - 6*n + 9) / 5).

The programs for A185170, the canonical program `A185170.P588859142241220338` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185170 has offset 0).

The definition of A185170 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((2*n²-6*n+9)/5)` (program `A185170.P588859142241220338`, by `A185170.P588859142241220338.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A185170.P588859142241220338

`floor((2*n²-6*n+9)/5)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A185170

/-- `floor((2*n²-6*n+9)/5)` -/
def P588859142241220338.Spec : Prop :=
  ∀ n, P588859142241220338.a n = A185170 n

theorem P588859142241220338.correct : P588859142241220338.Spec := by
  intro n
  simp only [A185170]

end A185170

/-! ## A185170.P12560323641580808492

`2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=3, a(5)=5, a(6)=9`
-/

namespace A185170.P12560323641580808492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 3, 5, 9] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 5) - 2 * a (n - 6) + a (n - 7)

end

end A185170.P12560323641580808492

namespace A185170

/-- `2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` -/
def P12560323641580808492.Spec : Prop :=
  ∀ n, P12560323641580808492.a n = A185170 n

end A185170

/-! ## A185170.P14856555104023245933

`ceil(C(2*n, 2)/5)-(n-1)`
-/

namespace A185170.P14856555104023245933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (2 * n) 2 : ℚ) / 5⌉ - ((n : ℤ) - 1)

end

end A185170.P14856555104023245933

namespace A185170

/-- `ceil(C(2*n, 2)/5)-(n-1)` -/
def P14856555104023245933.Spec : Prop :=
  ∀ n, P14856555104023245933.a n = A185170 n

end A185170

/-! ## A185170.P4613553844642690779

`or(1, ceil(2*n*(n-3)/5))`
-/

namespace A185170.P4613553844642690779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌈(2 * n : ℚ) * (((n : ℤ) - 3 : ℚ) / 5)⌉

end

end A185170.P4613553844642690779

namespace A185170

/-- `or(1, ceil(2*n*(n-3)/5))` -/
def P4613553844642690779.Spec : Prop :=
  ∀ n, P4613553844642690779.a n = A185170 n

end A185170

/-! ## A185170.P10050616551350877740

`∑[a(n-5)+4]` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=2, a(5)=2`
-/

namespace A185170.P10050616551350877740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 0, 2, 2] fun n f1 =>
  f1 (n - 5) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185170.P10050616551350877740

namespace A185170

/-- `∑[a(n-5)+4]` -/
def P10050616551350877740.Spec : Prop :=
  ∀ n, (P10050616551350877740.a n : ℤ) = A185170 n

end A185170

/-! ## A185170.P11787730826888524806

`ceil(A000384(n)/5)-(n-1)`
-/

namespace A185170.P11787730826888524806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000384 n : ℚ) / 5⌉ - ((n : ℤ) - 1)

end

end A185170.P11787730826888524806

namespace A185170

/-- `ceil(A000384(n)/5)-(n-1)` -/
def P11787730826888524806.Spec : Prop :=
  ∀ n, P11787730826888524806.a n = A185170 n

end A185170

/-! ## A185170.P6686547345389851826

`2*(A008738(n+1)-n)+1`
-/

namespace A185170.P6686547345389851826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A008738 (n + 1) - (n : ℤ)) + 1

end

end A185170.P6686547345389851826

namespace A185170

/-- `2*(A008738(n+1)-n)+1` -/
def P6686547345389851826.Spec : Prop :=
  ∀ n, P6686547345389851826.a n = A185170 n

end A185170

/-! ## A185170.P10286084212160157310

`A082642(2*(n-2%(n+1)))`
-/

namespace A185170.P10286084212160157310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082642 (2 * ((n : ℤ) - ((2 % (n + 1) : ℕ) : ℤ))).toNat

end

end A185170.P10286084212160157310

namespace A185170

/-- `A082642(2*(n-2%(n+1)))` -/
def P10286084212160157310.Spec : Prop :=
  ∀ n, P10286084212160157310.a n = A185170 n

end A185170

/-! ## A185170.P9582723181909585857

`A082642(A005408(n))+2-A005408(n)`
-/

namespace A185170.P9582723181909585857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082642 (A005408 n).toNat + (2 - A005408 n)

end

end A185170.P9582723181909585857

namespace A185170

/-- `A082642(A005408(n))+2-A005408(n)` -/
def P9582723181909585857.Spec : Prop :=
  ∀ n, P9582723181909585857.a n = A185170 n

end A185170

/-! ## A185170.P11432317368567538094

`2*A005868(A016813(n))+1`
-/

namespace A185170.P11432317368567538094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005868 (A016813 n).toNat + 1

end

end A185170.P11432317368567538094

namespace A185170

/-- `2*A005868(A016813(n))+1` -/
def P11432317368567538094.Spec : Prop :=
  ∀ n, P11432317368567538094.a n = A185170 n

end A185170

/-! ## A185170.P12686385015742675060

`2*A005868(A222945(n))+1`
-/

namespace A185170.P12686385015742675060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005868 (A222945 n).toNat + 1

end

end A185170.P12686385015742675060

namespace A185170

/-- `2*A005868(A222945(n))+1` -/
def P12686385015742675060.Spec : Prop :=
  ∀ n, P12686385015742675060.a n = A185170 n

end A185170

/-! ## A185170.P6584026858914885250

`A005408(A008738(n+1)-n)`
-/

namespace A185170.P6584026858914885250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A008738 (n + 1) - (n : ℤ)).toNat

end

end A185170.P6584026858914885250

namespace A185170

/-- `A005408(A008738(n+1)-n)` -/
def P6584026858914885250.Spec : Prop :=
  ∀ n, P6584026858914885250.a n = A185170 n

end A185170

/-! ## A185170.P5442227530065171351

`A005408(∑[A288156(n+1)]-n)`
-/

namespace A185170.P5442227530065171351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288156 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A185170.P5442227530065171351

namespace A185170

/-- `A005408(∑[A288156(n+1)]-n)` -/
def P5442227530065171351.Spec : Prop :=
  ∀ n, P5442227530065171351.a n = A185170 n

end A185170

/-! ## A185170.P8865433200725438337

`A129756(A008812(2*n+1))-2*n`
-/

namespace A185170.P8865433200725438337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129756 (A008812 (2 * n + 1)).toNat - (2 * n : ℤ)

end

end A185170.P8865433200725438337

namespace A185170

/-- `A129756(A008812(2*n+1))-2*n` -/
def P8865433200725438337.Spec : Prop :=
  ∀ n, P8865433200725438337.a n = A185170 n

end A185170

/-! ## A185170.P14220347009596525300

`A117451((2-n)²+n)`
-/

namespace A185170.P14220347009596525300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117451 ((2 - (n : ℤ)) ^ 2 + (n : ℤ)).toNat

end

end A185170.P14220347009596525300

namespace A185170

/-- `A117451((2-n)²+n)` -/
def P14220347009596525300.Spec : Prop :=
  ∀ n, P14220347009596525300.a n = A185170 n

end A185170

/-! ## A185170.P11508195712963346416

`A130497((2-n)²+n)`
-/

namespace A185170.P11508195712963346416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130497 ((2 - (n : ℤ)) ^ 2 + (n : ℤ)).toNat

end

end A185170.P11508195712963346416

namespace A185170

/-- `A130497((2-n)²+n)` -/
def P11508195712963346416.Spec : Prop :=
  ∀ n, P11508195712963346416.a n = A185170 n

end A185170

/-! ## A185170.P950419606662706327

`A288156((2-n)²+n)`
-/

namespace A185170.P950419606662706327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288156 ((2 - (n : ℤ)) ^ 2 + (n : ℤ)).toNat

end

end A185170.P950419606662706327

namespace A185170

/-- `A288156((2-n)²+n)` -/
def P950419606662706327.Spec : Prop :=
  ∀ n, P950419606662706327.a n = A185170 n

end A185170

/-! ## A185170.P242119052307237866

`A173276((n-1)*(n-2))`
-/

namespace A185170.P242119052307237866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173276 (((n : ℤ) - 1) * ((n : ℤ) - 2)).toNat

end

end A185170.P242119052307237866

namespace A185170

/-- `A173276((n-1)*(n-2))` -/
def P242119052307237866.Spec : Prop :=
  ∀ n, P242119052307237866.a n = A185170 n

end A185170

/-! ## A185170.P3338579034247684800

`A057354((n-1)*(n-2))+1`
-/

namespace A185170.P3338579034247684800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (((n : ℤ) - 1) * ((n : ℤ) - 2)).toNat + 1

end

end A185170.P3338579034247684800

namespace A185170

/-- `A057354((n-1)*(n-2))+1` -/
def P3338579034247684800.Spec : Prop :=
  ∀ n, P3338579034247684800.a n = A185170 n

end A185170

/-!
# A185171: Dimensions of primitive Lie algebras connected with the Mantaci-Reutenauer algebra MR^(2).

The programs for A185171, there is no canonical definition to state claims against.
-/

/-! ## A185171.P5855284203819537664

`A027376(n+1)-C(2, n+2)`
-/

namespace A185171.P5855284203819537664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027376 (n + 1) - (Nat.choose 2 (n + 2) : ℤ)

end

end A185171.P5855284203819537664

/-! ## A185171.P16717029713613437448

`A027376(n+1)-A000007(n)`
-/

namespace A185171.P16717029713613437448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027376 (n + 1) - A000007 n

end

end A185171.P16717029713613437448

/-! ## A185171.P16090412271567197364

`A065178(n+1)+A059966(n+1)`
-/

namespace A185171.P16090412271567197364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065178 (n + 1) + A059966 (n + 1)

end

end A185171.P16090412271567197364

/-! ## A185171.P6205852055689529949

`A027376(n+1)-(A057428(n)+1)`
-/

namespace A185171.P6205852055689529949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027376 (n + 1) - (A057428 n + 1)

end

end A185171.P6205852055689529949

/-! ## A185171.P14932570775230099077

`A027376(n+1)-A028310(n)+n`
-/

namespace A185171.P14932570775230099077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027376 (n + 1) - A028310 n + (n : ℤ)

end

end A185171.P14932570775230099077

/-! ## A185171.P12629060986572477820

`A133267(n+1)+2*A136704(n+1)`
-/

namespace A185171.P12629060986572477820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133267 (n + 1) + 2 * A136704 (n + 1)

end

end A185171.P12629060986572477820

/-! ## A185171.P8541494702103143633

`A027376(n+1)-A065033(2*n)+n`
-/

namespace A185171.P8541494702103143633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027376 (n + 1) - A065033 (2 * n) + (n : ℤ)

end

end A185171.P8541494702103143633

/-! ## A185171.P7162481840394674324

`A027376(n+1)-A123108(2*n)+n`
-/

namespace A185171.P7162481840394674324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027376 (n + 1) - A123108 (2 * n) + (n : ℤ)

end

end A185171.P7162481840394674324

/-! ## A185171.P9784231421740705505

`A027376(n+1-(A027376(n)-a(n-1)))` with `a(0)=2`
-/

namespace A185171.P9784231421740705505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A027376 ((n + 1 : ℤ) - (A027376 n - a (n - 1))).toNat

end

end A185171.P9784231421740705505

/-! ## A185171.P5162817751704411410

`A027376(n+1)-A008683(A008574(n))`
-/

namespace A185171.P5162817751704411410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027376 (n + 1) - A008683 (A008574 n).toNat

end

end A185171.P5162817751704411410

/-! ## A185171.P5551084920054960046

`xor(A000007(n), A027376(A000027(n+1)))`
-/

namespace A185171.P5551084920054960046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 n) (A027376 (A000027 (n + 1)).toNat)

end

end A185171.P5551084920054960046

/-! ## A185171.P1700064042539696457

`A133267(A028310(n)+1)+A006575(n+1)`
-/

namespace A185171.P1700064042539696457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133267 (A028310 n + 1).toNat + A006575 (n + 1)

end

end A185171.P1700064042539696457

/-! ## A185171.P4353002107424528115

`or(A027376(n+1), A214264(n))-A214264(n)`
-/

namespace A185171.P4353002107424528115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A027376 (n + 1)) (A214264 n) - A214264 n

end

end A185171.P4353002107424528115

/-! ## A185171.P17436474611166388222

`A027376(n+1)+A118264(n+1)-A080923(n)`
-/

namespace A185171.P17436474611166388222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027376 (n + 1) + (A118264 (n + 1) - A080923 n)

end

end A185171.P17436474611166388222

/-! ## A185171.P9701263377106551019

`A027376(n+1)-and(1, A027376(A080541(n+2)))`
-/

namespace A185171.P9701263377106551019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027376 (n + 1) - Int.land 1 (A027376 (A080541 (n + 2)).toNat)

end

end A185171.P9701263377106551019

/-! ## A185171.P1121886557548625890

`A185172(n+1)-A065179(n+1)`
-/

namespace A185171.P1121886557548625890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185172 (n + 1) - A065179 (n + 1)

end

end A185171.P1121886557548625890

/-! ## A185171.P13626324399119919679

`A027376(n+1)+A185172(n+1)-A027377(n+1)`
-/

namespace A185171.P13626324399119919679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027376 (n + 1) + (A185172 (n + 1) - A027377 (n + 1))

end

end A185171.P13626324399119919679

/-! ## A185171.P6323886625580113700

`A027377(n+1)-(A295521(n+1)+A001037(n+1))`
-/

namespace A185171.P6323886625580113700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027377 (n + 1) - (A295521 (n + 1) + A001037 (n + 1))

end

end A185171.P6323886625580113700

/-! ## A185171.P44987097889096933

`A027376(n+1)-and(1, A027376(2*n+1))`
-/

namespace A185171.P44987097889096933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027376 (n + 1) - Int.land 1 (A027376 (2 * n + 1))

end

end A185171.P44987097889096933

/-! ## A185171.P13444653746549468923

`A027376(n+1)-A214264(n²)`
-/

namespace A185171.P13444653746549468923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027376 (n + 1) - A214264 (n ^ 2)

end

end A185171.P13444653746549468923

/-!
# A185172: Dimensions of primitive Lie algebras connected with the Mantaci-Reutenauer algebra MR^(3).

The programs for A185172, there is no canonical definition to state claims against.
-/

/-! ## A185172.P9100455737304669748

`A027377(n+1)-C(2, n+2)`
-/

namespace A185172.P9100455737304669748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027377 (n + 1) - (Nat.choose 2 (n + 2) : ℤ)

end

end A185172.P9100455737304669748

/-! ## A185172.P16337011268832758792

`A027377(n+1)-A000007(n)`
-/

namespace A185172.P16337011268832758792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027377 (n + 1) - A000007 n

end

end A185172.P16337011268832758792

/-! ## A185172.P2609636483954065343

`A185171(n+1)+A065179(n+1)`
-/

namespace A185172.P2609636483954065343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185171 (n + 1) + A065179 (n + 1)

end

end A185172.P2609636483954065343

/-! ## A185172.P6232470969282912018

`A027377(n+1)-A027377(n)%2`
-/

namespace A185172.P6232470969282912018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027377 (n + 1) - Int.tmod (A027377 n) 2

end

end A185172.P6232470969282912018

/-! ## A185172.P11640614285260712061

`A027377(n+1)-and(1, A008653(n))`
-/

namespace A185172.P11640614285260712061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027377 (n + 1) - Int.land 1 (A008653 n)

end

end A185172.P11640614285260712061

/-! ## A185172.P14476430102135097962

`A036453(n+1)+A027377(n+1)-2`
-/

namespace A185172.P14476430102135097962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) + (A027377 (n + 1) - 2)

end

end A185172.P14476430102135097962

/-! ## A185172.P3502381450524160568

`A027377(n+1)-A049283(2*n+1)`
-/

namespace A185172.P3502381450524160568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027377 (n + 1) - A049283 (2 * n + 1)

end

end A185172.P3502381450524160568

/-! ## A185172.P6506443985421042597

`A027377(n+1)-A065033(2*n)+n`
-/

namespace A185172.P6506443985421042597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027377 (n + 1) - A065033 (2 * n) + (n : ℤ)

end

end A185172.P6506443985421042597

/-! ## A185172.P6801182568192551695

`A027377(n+1)-A123108(2*n)+n`
-/

namespace A185172.P6801182568192551695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027377 (n + 1) - A123108 (2 * n) + (n : ℤ)

end

end A185172.P6801182568192551695

/-! ## A185172.P14870468188028112252

`A027377(n+1)+A008683(2*(n+1)²)`
-/

namespace A185172.P14870468188028112252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027377 (n + 1) + A008683 (2 * (n + 1) ^ 2)

end

end A185172.P14870468188028112252

/-! ## A185172.P4138938852521045182

`A059966(2*(n+1))-A320783(2*(n+1))`
-/

namespace A185172.P4138938852521045182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059966 (2 * (n + 1)) - A320783 (2 * (n + 1))

end

end A185172.P4138938852521045182

/-! ## A185172.P12842012564695380674

`A027377(n+1)+A118264(n+1)-A080923(n)`
-/

namespace A185172.P12842012564695380674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027377 (n + 1) + (A118264 (n + 1) - A080923 n)

end

end A185172.P12842012564695380674

/-! ## A185172.P12061548798844351494

`A059966(n+1)+A065179(n+1)+A065178(n+1)`
-/

namespace A185172.P12061548798844351494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059966 (n + 1) + (A065179 (n + 1) + A065178 (n + 1))

end

end A185172.P12061548798844351494

/-! ## A185172.P4565759240684449240

`A059966(2*(n+1))-(A154269(2*n+1)+A038063(2*(n+1)))`
-/

namespace A185172.P4565759240684449240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059966 (2 * (n + 1)) - (A154269 (2 * n + 1) + A038063 (2 * (n + 1)))

end

end A185172.P4565759240684449240

/-! ## A185172.P18296122644862027574

`A027377(n+1)+A024036(n)-A103454(n)`
-/

namespace A185172.P18296122644862027574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027377 (n + 1) + (A024036 n - A103454 n)

end

end A185172.P18296122644862027574

/-!
# A185173: Minimum number of distinct sums from consecutive terms in a circular permutation.

The programs for A185173, there is no canonical definition to state claims against.
-/

/-! ## A185173.P3297608801369071422

`A389680(A025205(n+3))`
-/

namespace A185173.P3297608801369071422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389680 (A025205 (n + 3)).toNat

end

end A185173.P3297608801369071422

/-! ## A185173.P16300960491152837367

`∑[A032741(A125824(n)+A025441(n))+1]`
-/

namespace A185173.P16300960491152837367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A125824 n + A025441 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185173.P16300960491152837367

/-! ## A185173.P2920341461933847924

`A389680(A024190(n+1))`
-/

namespace A185173.P2920341461933847924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389680 (A024190 (n + 1)).toNat

end

end A185173.P2920341461933847924

/-! ## A185173.P15527119831379772858

`A083889(A131051(n+1))+A000212(n+2)`
-/

namespace A185173.P15527119831379772858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083889 (A131051 (n + 1)).toNat + A000212 (n + 2)

end

end A185173.P15527119831379772858

/-! ## A185173.P8019417152099840080

`A071625(A002426(n))+A000212(n+2)`
-/

namespace A185173.P8019417152099840080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071625 (A002426 n).toNat + A000212 (n + 2)

end

end A185173.P8019417152099840080

/-!
# A185174: Number of primes less than the n-th perfect number.

The programs for A185174, there is no canonical definition to state claims against.
-/

/-! ## A185174.P8678128556518550676

`A164266(n)+a(n-1)` with `a(0)=3`
-/

namespace A185174.P8678128556518550676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A164266 n + a (n - 1)

end

end A185174.P8678128556518550676

/-!
# A185175: a(n) = A010815(7*n + 5).

The programs for A185175, the canonical program `A185175.P11623372724660659512` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185175 has offset 0).

The definition of A185175 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010815, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A185175.P11623372724660659512

`A010815(7*n+5)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A185175

/-- `A010815(7*n+5)` -/
def P11623372724660659512.Spec : Prop :=
  ∀ n, P11623372724660659512.a n = A185175 n

theorem P11623372724660659512.correct : P11623372724660659512.Spec := by
  intro n
  simp only [A185175]

end A185175

/-! ## A185175.P5606487010216785742

`-A257628(7*n+5)`
-/

namespace A185175.P5606487010216785742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A257628 (7 * n + 5)

end

end A185175.P5606487010216785742

namespace A185175

/-- `-A257628(7*n+5)` -/
def P5606487010216785742.Spec : Prop :=
  ∀ n, P5606487010216785742.a n = A185175 n

end A185175

/-! ## A185175.P9983848917877637080

`A010815(A017041(n))^3`
-/

namespace A185175.P9983848917877637080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A017041 n).toNat ^ 3

end

end A185175.P9983848917877637080

namespace A185175

/-- `A010815(A017041(n))^3` -/
def P9983848917877637080.Spec : Prop :=
  ∀ n, P9983848917877637080.a n = A185175 n

end A185175

/-! ## A185175.P15934129092479339613

`A010815(sqrt(A017042(n)))^3`
-/

namespace A185175.P15934129092479339613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (SequenceMachineLib.roundAway (Real.sqrt (A017042 n : ℝ))).toNat ^ 3

end

end A185175.P15934129092479339613

namespace A185175

/-- `A010815(sqrt(A017042(n)))^3` -/
def P15934129092479339613.Spec : Prop :=
  ∀ n, P15934129092479339613.a n = A185175 n

end A185175

/-! ## A185175.P10536575894299736641

`A010815(A017017(n)+2)^3`
-/

namespace A185175.P10536575894299736641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A017017 n + 2).toNat ^ 3

end

end A185175.P10536575894299736641

namespace A185175

/-- `A010815(A017017(n)+2)^3` -/
def P10536575894299736641.Spec : Prop :=
  ∀ n, P10536575894299736641.a n = A185175 n

end A185175

/-! ## A185175.P1459542063651429418

`A000035(2*n)-A257628(A017041(n))`
-/

namespace A185175.P1459542063651429418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) - A257628 (A017041 n).toNat

end

end A185175.P1459542063651429418

namespace A185175

/-- `A000035(2*n)-A257628(A017041(n))` -/
def P1459542063651429418.Spec : Prop :=
  ∀ n, P1459542063651429418.a n = A185175 n

end A185175

/-! ## A185175.P16311951125998014777

`A010815(A017041(n))%A180011(n+1)`
-/

namespace A185175.P16311951125998014777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010815 (A017041 n).toNat) (A180011 (n + 1))

end

end A185175.P16311951125998014777

namespace A185175

/-- `A010815(A017041(n))%A180011(n+1)` -/
def P16311951125998014777.Spec : Prop :=
  ∀ n, P16311951125998014777.a n = A185175 n

end A185175

/-! ## A185175.P17356971836506488283

`A049347(A016777(n))*A257628(A017041(n))`
-/

namespace A185175.P17356971836506488283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A016777 n).toNat * A257628 (A017041 n).toNat

end

end A185175.P17356971836506488283

namespace A185175

/-- `A049347(A016777(n))*A257628(A017041(n))` -/
def P17356971836506488283.Spec : Prop :=
  ∀ n, P17356971836506488283.a n = A185175 n

end A185175

/-! ## A185175.P4537284822061033818

`A007706(7*n+5)-1`
-/

namespace A185175.P4537284822061033818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007706 (7 * n + 5) - 1

end

end A185175.P4537284822061033818

namespace A185175

/-- `A007706(7*n+5)-1` -/
def P4537284822061033818.Spec : Prop :=
  ∀ n, P4537284822061033818.a n = A185175 n

end A185175

/-! ## A185175.P15121946755284496745

`A320836(A031381(n+1))`
-/

namespace A185175.P15121946755284496745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320836 (A031381 (n + 1)).toNat

end

end A185175.P15121946755284496745

namespace A185175

/-- `A320836(A031381(n+1))` -/
def P15121946755284496745.Spec : Prop :=
  ∀ n, P15121946755284496745.a n = A185175 n

end A185175

/-!
# A185177: Different values of the permanent in (0,1) quadratic matrices with exactly 3 ones in each row and each column, in the increasing order.

The programs for A185177, there is no canonical definition to state claims against.
-/

/-! ## A185177.P10737491157979160532

`A185179(A329135(n+1)+2)`
-/

namespace A185177.P10737491157979160532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185179 (A329135 (n + 1) + 2).toNat

end

end A185177.P10737491157979160532

/-! ## A185177.P10790437772928890618

`record[A185179(n+3)%A065348(n+1)]`
-/

namespace A185177.P10790437772928890618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185179 (n + 3)) (A065348 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185177.P10790437772928890618

/-! ## A185177.P4529767903724207240

`record[A185179(n+3)%A057924(A020710(n))]`
-/

namespace A185177.P4529767903724207240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185179 (n + 3)) (A057924 (A020710 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185177.P4529767903724207240

/-!
# A185178: Number of distinct values of the permanent of an n X n (0,1)-matrix with exactly three 1's in each row and each column.

The programs for A185178, there is no canonical definition to state claims against.
-/

/-! ## A185178.P1739681710172375860

`A082377(A018150(n))`
-/

namespace A185178.P1739681710172375860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082377 (A018150 n).toNat

end

end A185178.P1739681710172375860

/-! ## A185178.P12755973021563816372

`A379865(A023613(n))`
-/

namespace A185178.P12755973021563816372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379865 (A023613 n).toNat

end

end A185178.P12755973021563816372

/-! ## A185178.P2545218174028999002

`A379865(A094985(n))`
-/

namespace A185178.P2545218174028999002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379865 (A094985 n).toNat

end

end A185178.P2545218174028999002

/-! ## A185178.P6140462701307864292

`A245226(A282238(n+1))`
-/

namespace A185178.P6140462701307864292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245226 (A282238 (n + 1)).toNat

end

end A185178.P6140462701307864292

/-! ## A185178.P1113802269378190223

`A379865(A381357(n+2))`
-/

namespace A185178.P1113802269378190223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379865 (A381357 (n + 2)).toNat

end

end A185178.P1113802269378190223

/-!
# A185180: Enumeration table T(n,k) by antidiagonals. The order of the list is symmetrical movement from center to edges diagonal.

The programs for A185180, the canonical program `A185180.P8964455806358880815` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185180 has offset 1).

The definition of A185180 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185180.P8964455806358880815

`A064789(A038722(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A185180

/-- `A064789(A038722(n+1))` -/
def P8964455806358880815.Spec : Prop :=
  ∀ n, P8964455806358880815.a n = A185180 (n + 1)

theorem P8964455806358880815.correct : P8964455806358880815.Spec := by
  intro n
  simp only [A185180, Nat.add_sub_cancel]

end A185180

/-! ## A185180.P4833511466137977305

`A068344(n)+A064789(n+1)`
-/

namespace A185180.P4833511466137977305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068344 n + A064789 (n + 1)

end

end A185180.P4833511466137977305

namespace A185180

/-- `A068344(n)+A064789(n+1)` -/
def P4833511466137977305.Spec : Prop :=
  ∀ n, P4833511466137977305.a n = A185180 (n + 1)

end A185180

/-! ## A185180.P6679218812577013573

`A064789(A114327(n)+1+n)`
-/

namespace A185180.P6679218812577013573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064789 (A114327 n + 1 + (n : ℤ)).toNat

end

end A185180.P6679218812577013573

namespace A185180

/-- `A064789(A114327(n)+1+n)` -/
def P6679218812577013573.Spec : Prop :=
  ∀ n, P6679218812577013573.a n = A185180 (n + 1)

end A185180

/-! ## A185180.P5099918999547213832

`A220073(n+1)+A057944(n)`
-/

namespace A185180.P5099918999547213832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220073 (n + 1) + A057944 n

end

end A185180.P5099918999547213832

namespace A185180

/-- `A220073(n+1)+A057944(n)` -/
def P5099918999547213832.Spec : Prop :=
  ∀ n, P5099918999547213832.a n = A185180 (n + 1)

end A185180

/-! ## A185180.P4820711339858887603

`A064789(A093995(n+1)-n)`
-/

namespace A185180.P4820711339858887603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064789 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A185180.P4820711339858887603

namespace A185180

/-- `A064789(A093995(n+1)-n)` -/
def P4820711339858887603.Spec : Prop :=
  ∀ n, P4820711339858887603.a n = A185180 (n + 1)

end A185180

/-! ## A185180.P16940215183051450130

`A064789(A265129(n+1)-(n+1))`
-/

namespace A185180.P16940215183051450130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064789 (A265129 (n + 1) - (n + 1 : ℤ)).toNat

end

end A185180.P16940215183051450130

namespace A185180

/-- `A064789(A265129(n+1)-(n+1))` -/
def P16940215183051450130.Spec : Prop :=
  ∀ n, P16940215183051450130.a n = A185180 (n + 1)

end A185180

/-! ## A185180.P16401057792563012381

`A220073(n+1)+n+1-A002260(n+1)`
-/

namespace A185180.P16401057792563012381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220073 (n + 1) + ((n + 1 : ℤ) - A002260 (n + 1))

end

end A185180.P16401057792563012381

namespace A185180

/-- `A220073(n+1)+n+1-A002260(n+1)` -/
def P16401057792563012381.Spec : Prop :=
  ∀ n, P16401057792563012381.a n = A185180 (n + 1)

end A185180

/-! ## A185180.P14891721173547702586

`A064789(A056023(A056011(n+1)))`
-/

namespace A185180.P14891721173547702586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064789 (A056023 (A056011 (n + 1)).toNat).toNat

end

end A185180.P14891721173547702586

namespace A185180

/-- `A064789(A056023(A056011(n+1)))` -/
def P14891721173547702586.Spec : Prop :=
  ∀ n, P14891721173547702586.a n = A185180 (n + 1)

end A185180

/-! ## A185180.P18142218760496350572

`A064789(A064578(A057028(n+1)))`
-/

namespace A185180.P18142218760496350572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064789 (A064578 (A057028 (n + 1)).toNat).toNat

end

end A185180.P18142218760496350572

namespace A185180

/-- `A064789(A064578(A057028(n+1)))` -/
def P18142218760496350572.Spec : Prop :=
  ∀ n, P18142218760496350572.a n = A185180 (n + 1)

end A185180

/-! ## A185180.P9004693060708089247

`A064789(A064789(A057027(n+1)))`
-/

namespace A185180.P9004693060708089247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064789 (A064789 (A057027 (n + 1)).toNat).toNat

end

end A185180.P9004693060708089247

namespace A185180

/-- `A064789(A064789(A057027(n+1)))` -/
def P9004693060708089247.Spec : Prop :=
  ∀ n, P9004693060708089247.a n = A185180 (n + 1)

end A185180

/-! ## A185180.P8251963235628226593

`A064789(A209293(A064789(n+1)))`
-/

namespace A185180.P8251963235628226593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064789 (A209293 (A064789 (n + 1)).toNat).toNat

end

end A185180.P8251963235628226593

namespace A185180

/-- `A064789(A209293(A064789(n+1)))` -/
def P8251963235628226593.Spec : Prop :=
  ∀ n, P8251963235628226593.a n = A185180 (n + 1)

end A185180

/-! ## A185180.P11608275916884241698

`A220073(n+1)+A000217(A003056(n))`
-/

namespace A185180.P11608275916884241698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220073 (n + 1) + A000217 (A003056 n).toNat

end

end A185180.P11608275916884241698

namespace A185180

/-- `A220073(n+1)+A000217(A003056(n))` -/
def P11608275916884241698.Spec : Prop :=
  ∀ n, P11608275916884241698.a n = A185180 (n + 1)

end A185180

/-! ## A185180.P15135961642587220031

`A000096(A003056(n))+2-A210535(n+1)`
-/

namespace A185180.P15135961642587220031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A003056 n).toNat + (2 - A210535 (n + 1))

end

end A185180.P15135961642587220031

namespace A185180

/-- `A000096(A003056(n))+2-A210535(n+1)` -/
def P15135961642587220031.Spec : Prop :=
  ∀ n, P15135961642587220031.a n = A185180 (n + 1)

end A185180

/-! ## A185180.P3310152345594542707

`A130517(A061579(n)+1)+n-A002262(n)`
-/

namespace A185180.P3310152345594542707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130517 (A061579 n + 1).toNat + ((n : ℤ) - A002262 n)

end

end A185180.P3310152345594542707

namespace A185180

/-- `A130517(A061579(n)+1)+n-A002262(n)` -/
def P3310152345594542707.Spec : Prop :=
  ∀ n, P3310152345594542707.a n = A185180 (n + 1)

end A185180

/-! ## A185180.P14513317502558099662

`A209278(n+1)+A209293(n+1)-A210535(n+1)`
-/

namespace A185180.P14513317502558099662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209278 (n + 1) + (A209293 (n + 1) - A210535 (n + 1))

end

end A185180.P14513317502558099662

namespace A185180

/-- `A209278(n+1)+A209293(n+1)-A210535(n+1)` -/
def P14513317502558099662.Spec : Prop :=
  ∀ n, P14513317502558099662.a n = A185180 (n + 1)

end A185180

/-! ## A185180.P12361738378130621395

`A209293(n+1)+A220073(n+1)-A209279(n+1)`
-/

namespace A185180.P12361738378130621395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209293 (n + 1) + (A220073 (n + 1) - A209279 (n + 1))

end

end A185180.P12361738378130621395

namespace A185180

/-- `A209293(n+1)+A220073(n+1)-A209279(n+1)` -/
def P12361738378130621395.Spec : Prop :=
  ∀ n, P12361738378130621395.a n = A185180 (n + 1)

end A185180

/-! ## A185180.P8527124260536685190

`A380245(A210521(n+1))`
-/

namespace A185180.P8527124260536685190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380245 (A210521 (n + 1)).toNat

end

end A185180.P8527124260536685190

namespace A185180

/-- `A380245(A210521(n+1))` -/
def P8527124260536685190.Spec : Prop :=
  ∀ n, P8527124260536685190.a n = A185180 (n + 1)

end A185180

/-! ## A185180.P4654475883014714405

`A057944(n)+A004737(2*(n+1))`
-/

namespace A185180.P4654475883014714405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n + A004737 (2 * (n + 1))

end

end A185180.P4654475883014714405

namespace A185180

/-- `A057944(n)+A004737(2*(n+1))` -/
def P4654475883014714405.Spec : Prop :=
  ∀ n, P4654475883014714405.a n = A185180 (n + 1)

end A185180

/-!
# A185182: a(n) = 2^n*A122705(n).

The programs for A185182, there is no canonical definition to state claims against.
-/

/-! ## A185182.P16335471550815796231

`2^(n+1)*A122705(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A185182.P16335471550815796231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) * A122705 (n + 1)

end

end A185182.P16335471550815796231

/-!
# A185183: G.f. A(x) satisfies A(x) = 1+x + x^2*[d/dx A(x)^2].

The programs for A185183, there is no canonical definition to state claims against.
-/

/-! ## A185183.P7843281616222713509

`floor(sqrt(A191173(n^n)))`
-/

namespace A185183.P7843281616222713509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A191173 (n ^ n))

end

end A185183.P7843281616222713509

/-! ## A185183.P7200701007814236557

`A316886(A055503(n))`
-/

namespace A185183.P7200701007814236557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316886 (A055503 n).toNat

end

end A185183.P7200701007814236557

/-!
# A185184: Steps of the Hare in each tied Hare and Tortoise race of length n.

The programs for A185184, there is no canonical definition to state claims against.
-/

/-! ## A185184.P9329819625484375304

`Δ[A030303(A054633(n+1))]`
-/

namespace A185184.P9329819625484375304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030303 (A054633 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A185184.P9329819625484375304

/-! ## A185184.P5590513040179510681

`Δ[A030303(∑[A030190(n+1)])]`
-/

namespace A185184.P5590513040179510681
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030190 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030303 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A185184.P5590513040179510681

/-! ## A185184.P9130160618152305044

`Δ[A030303(∑[A030302(n+1)])]`
-/

namespace A185184.P9130160618152305044
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030302 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030303 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A185184.P9130160618152305044

/-! ## A185184.P13278909454221497683

`Δ[A030303(∑[1-A030315(n+1)])]`
-/

namespace A185184.P13278909454221497683
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A030315 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030303 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A185184.P13278909454221497683

/-! ## A185184.P8498797383294646633

`Δ[A030303(∑[A055143(n+1)%2])]`
-/

namespace A185184.P8498797383294646633
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055143 (n + 1)) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030303 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A185184.P8498797383294646633

/-!
# A185186: Numbers divisible by at least one of their digits other than 1.

The programs for A185186, there is no canonical definition to state claims against.
-/

/-! ## A185186.P16751060546361038842

`eq[char[A334676(n+1)], A000007(n)]`
-/

namespace A185186.P16751060546361038842
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334676 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A185186.P16751060546361038842

/-! ## A185186.P11456819801949919533

`eq[char[A334676(n+1)], A000038(n)]`
-/

namespace A185186.P11456819801949919533
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334676 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A185186.P11456819801949919533

/-! ## A185186.P9467466095887030108

`eq[char[A334676(n+1)], A020761(n)]`
-/

namespace A185186.P9467466095887030108
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334676 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020761 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A185186.P9467466095887030108

/-! ## A185186.P8672249876626269356

`eq[char[A334676(n+1)], A130706(n)]`
-/

namespace A185186.P8672249876626269356
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334676 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A185186.P8672249876626269356

/-! ## A185186.P2848885373653685066

`eq[1, A057427(n)+char[A334676(n+1)]]`
-/

namespace A185186.P2848885373653685066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334676 (n + 1)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A185186.P2848885373653685066

/-!
# A185189: Powers of 2 >= 16 and powers of odd primes.

The programs for A185189, the canonical program `A185189.P18053497688823494421` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185189 has offset 1).

The definition of A185189 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185189.P8623688585749600364

`∪[A050150(n+1), A088247(n+1)]`
-/

namespace A185189.P8623688585749600364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050150 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A185189.P8623688585749600364

namespace A185189

/-- `∪[A050150(n+1), A088247(n+1)]` -/
def P8623688585749600364.Spec : Prop :=
  ∀ n, (P8623688585749600364.a n : ℤ) = A185189 (n + 1)

end A185189

/-! ## A185189.P18053497688823494421

`A246655(2*(n+1)-floor(n²/(n+2)))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A185189

/-- `A246655(2*(n+1)-floor(n²/(n+2)))` -/
def P18053497688823494421.Spec : Prop :=
  ∀ n, P18053497688823494421.a n = A185189 (n + 1)

theorem P18053497688823494421.correct : P18053497688823494421.Spec := by
  intro n
  simp only [A185189, Nat.add_sub_cancel]

end A185189

/-! ## A185189.P5888974318508022785

`A000961(A133043(n+1))`
-/

namespace A185189.P5888974318508022785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (A133043 (n + 1)).toNat

end

end A185189.P5888974318508022785

namespace A185189

/-- `A000961(A133043(n+1))` -/
def P5888974318508022785.Spec : Prop :=
  ∀ n, P5888974318508022785.a n = A185189 (n + 1)

end A185189

/-! ## A185189.P2400681427713440152

`A000961(A046698(n)+3+n)`
-/

namespace A185189.P2400681427713440152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (A046698 n + 3 + (n : ℤ)).toNat

end

end A185189.P2400681427713440152

namespace A185189

/-- `A000961(A046698(n)+3+n)` -/
def P2400681427713440152.Spec : Prop :=
  ∀ n, P2400681427713440152.a n = A185189 (n + 1)

end A185189

/-! ## A185189.P8576210387522101297

`record[A034699(A321499(n+1))]`
-/

namespace A185189.P8576210387522101297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A321499 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185189.P8576210387522101297

namespace A185189

/-- `record[A034699(A321499(n+1))]` -/
def P8576210387522101297.Spec : Prop :=
  ∀ n, P8576210387522101297.a n = A185189 (n + 1)

end A185189

/-! ## A185189.P8281976245050777019

`filter[A321499(n+1), A069513(#)]`
-/

namespace A185189.P8281976245050777019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A185189.P8281976245050777019

namespace A185189

/-- `filter[A321499(n+1), A069513(#)]` -/
def P8281976245050777019.Spec : Prop :=
  ∀ n, P8281976245050777019.a n = A185189 (n + 1)

end A185189

/-! ## A185189.P10691555014041479333

`filter[A321499(n+1), A354923(#)]`
-/

namespace A185189.P10691555014041479333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354923 (f1 j).toNat = 1) n)

end

end A185189.P10691555014041479333

namespace A185189

/-- `filter[A321499(n+1), A354923(#)]` -/
def P10691555014041479333.Spec : Prop :=
  ∀ n, P10691555014041479333.a n = A185189 (n + 1)

end A185189

/-! ## A185189.P6425371814502466630

`filter[A321499(n+1), A354924(#)]`
-/

namespace A185189.P6425371814502466630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354924 (f1 j).toNat = 1) n)

end

end A185189.P6425371814502466630

namespace A185189

/-- `filter[A321499(n+1), A354924(#)]` -/
def P6425371814502466630.Spec : Prop :=
  ∀ n, P6425371814502466630.a n = A185189 (n + 1)

end A185189

/-! ## A185189.P12616726394447867140

`∩[A000961(n+1), A321499(n+1)]`
-/

namespace A185189.P12616726394447867140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185189.P12616726394447867140

namespace A185189

/-- `∩[A000961(n+1), A321499(n+1)]` -/
def P12616726394447867140.Spec : Prop :=
  ∀ n, (P12616726394447867140.a n : ℤ) = A185189 (n + 1)

end A185189

/-! ## A185189.P2825132216984281364

`∩[A225657(n+1), A321499(n+1)]`
-/

namespace A185189.P2825132216984281364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185189.P2825132216984281364

namespace A185189

/-- `∩[A225657(n+1), A321499(n+1)]` -/
def P2825132216984281364.Spec : Prop :=
  ∀ n, (P2825132216984281364.a n : ℤ) = A185189 (n + 1)

end A185189

/-! ## A185189.P9507139605207707934

`∩[A246655(n+1), A321499(n+1)]`
-/

namespace A185189.P9507139605207707934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185189.P9507139605207707934

namespace A185189

/-- `∩[A246655(n+1), A321499(n+1)]` -/
def P9507139605207707934.Spec : Prop :=
  ∀ n, (P9507139605207707934.a n : ℤ) = A185189 (n + 1)

end A185189

/-! ## A185189.P314870511573661541

`∩[A321499(n+1), A354925(n+1)]`
-/

namespace A185189.P314870511573661541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185189.P314870511573661541

namespace A185189

/-- `∩[A321499(n+1), A354925(n+1)]` -/
def P314870511573661541.Spec : Prop :=
  ∀ n, (P314870511573661541.a n : ℤ) = A185189 (n + 1)

end A185189

/-! ## A185189.P16920788428760928998

`record[A354933(comp[∑[4^n]]+3)]`
-/

namespace A185189.P16920788428760928998
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354933 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185189.P16920788428760928998

namespace A185189

/-- `record[A354933(comp[∑[4^n]]+3)]` -/
def P16920788428760928998.Spec : Prop :=
  ∀ n, P16920788428760928998.a n = A185189 (n + 1)

end A185189

/-! ## A185189.P13548299494132047453

`record[A000015(A000040(n+1)%3+n+1)]`
-/

namespace A185189.P13548299494132047453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (Int.tmod (A000040 (n + 1)) 3 + (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185189.P13548299494132047453

namespace A185189

/-- `record[A000015(A000040(n+1)%3+n+1)]` -/
def P13548299494132047453.Spec : Prop :=
  ∀ n, P13548299494132047453.a n = A185189 (n + 1)

end A185189

/-! ## A185189.P10085175651907450633

`A000015(a(n-1)+val(A000040(n+1), a(n-1))+1)` with `a(0)=3`
-/

namespace A185189.P10085175651907450633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A000015 (a (n - 1) + (SequenceMachineLib.valuation (A000040 (n + 1)).toNat (a (n - 1)).toNat : ℤ) + 1).toNat

end

end A185189.P10085175651907450633

namespace A185189

/-- `A000015(a(n-1)+val(A000040(n+1), a(n-1))+1)` -/
def P10085175651907450633.Spec : Prop :=
  ∀ n, P10085175651907450633.a n = A185189 (n + 1)

end A185189

/-! ## A185189.P15141054659424654507

`record[A028233(A229858(n+1))]`
-/

namespace A185189.P15141054659424654507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (A229858 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185189.P15141054659424654507

namespace A185189

/-- `record[A028233(A229858(n+1))]` -/
def P15141054659424654507.Spec : Prop :=
  ∀ n, P15141054659424654507.a n = A185189 (n + 1)

end A185189

/-! ## A185189.P17350806126122338329

`record[A031218(A061800(n+4))]`
-/

namespace A185189.P17350806126122338329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031218 (A061800 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185189.P17350806126122338329

namespace A185189

/-- `record[A031218(A061800(n+4))]` -/
def P17350806126122338329.Spec : Prop :=
  ∀ n, P17350806126122338329.a n = A185189 (n + 1)

end A185189

/-! ## A185189.P15298427926705515045

`record[A346596(A080782(n+5))]`
-/

namespace A185189.P15298427926705515045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346596 (A080782 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185189.P15298427926705515045

namespace A185189

/-- `record[A346596(A080782(n+5))]` -/
def P15298427926705515045.Spec : Prop :=
  ∀ n, P15298427926705515045.a n = A185189 (n + 1)

end A185189

/-! ## A185189.P4313325034140568503

`filter[A321499(n+1), A010055(#)]`
-/

namespace A185189.P4313325034140568503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010055 (f1 j).toNat = 1) n)

end

end A185189.P4313325034140568503

namespace A185189

/-- `filter[A321499(n+1), A010055(#)]` -/
def P4313325034140568503.Spec : Prop :=
  ∀ n, P4313325034140568503.a n = A185189 (n + 1)

end A185189

/-! ## A185189.P2293344717861331661

`record[A345993(comp[A000123(n)-2*n])]`
-/

namespace A185189.P2293344717861331661
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000123 n - (2 * n : ℤ)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345993 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185189.P2293344717861331661

namespace A185189

/-- `record[A345993(comp[A000123(n)-2*n])]` -/
def P2293344717861331661.Spec : Prop :=
  ∀ n, P2293344717861331661.a n = A185189 (n + 1)

end A185189

/-!
# A185190: E.g.f. satisfies: A(x) = x + arcsinh(A(x))^2.

The programs for A185190, there is no canonical definition to state claims against.
-/

/-! ## A185190.P14945536327604485266

`2^n*A202293(n)`
-/

namespace A185190.P14945536327604485266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A202293 n

end

end A185190.P14945536327604485266

/-! ## A185190.P12601359178184907799

`abs(A120617(n)*A202293(n))`
-/

namespace A185190.P12601359178184907799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A120617 n * A202293 n|

end

end A185190.P12601359178184907799

/-! ## A185190.P3800728101065486299

`abs(A122803(n)*A202293(n))`
-/

namespace A185190.P3800728101065486299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A122803 n * A202293 n|

end

end A185190.P3800728101065486299

/-!
# A185191: a(n) = 2^n - second largest prime less than 2^n.

The programs for A185191, there is no canonical definition to state claims against.
-/

/-! ## A185191.P713575845193115898

`2^(n+2)-A008578(A000720(2^(n+2)))`
-/

namespace A185191.P713575845193115898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 2) : ℤ) - A008578 (A000720 (2 ^ (n + 2))).toNat

end

end A185191.P713575845193115898

/-! ## A185191.P2618122614063043188

`A020707(n)-A033302(A020707(n))`
-/

namespace A185191.P2618122614063043188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 n - A033302 (A020707 n).toNat

end

end A185191.P2618122614063043188

/-! ## A185191.P14923870212010082850

`A049711(A014234(n+2))+A013603(n+2)`
-/

namespace A185191.P14923870212010082850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049711 (A014234 (n + 2)).toNat + A013603 (n + 2)

end

end A185191.P14923870212010082850

/-! ## A185191.P4173674601953775378

`A000079(n+2)-A033302(A000079(n+2))`
-/

namespace A185191.P4173674601953775378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 2) - A033302 (A000079 (n + 2)).toNat

end

end A185191.P4173674601953775378

/-!
# A185192: Number of primes less than 2^n.

The programs for A185192, the canonical program `A185192.P5848289516990491153` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185192 has offset 1).

The definition of A185192 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A185192.P5848289516990491153

`A000720(2^(n+1)-1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A185192

/-- `A000720(2^(n+1)-1)` -/
def P5848289516990491153.Spec : Prop :=
  ∀ n, P5848289516990491153.a n = A185192 (n + 1)

theorem P5848289516990491153.correct : P5848289516990491153.Spec := by
  intro n
  simp only [A185192, Nat.add_sub_cancel]

end A185192

/-! ## A185192.P4306728654118382114

`A007053(ceil(n/sin(8)))`
-/

namespace A185192.P4306728654118382114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 ⌈(n : ℝ) / Real.sin (8 : ℝ)⌉.toNat

end

end A185192.P4306728654118382114

namespace A185192

/-- `A007053(ceil(n/sin(8)))` -/
def P4306728654118382114.Spec : Prop :=
  ∀ n, P4306728654118382114.a n = A185192 (n + 1)

end A185192

/-! ## A185192.P12405852181054755582

`∑[A036378(n)]%(10^n)`
-/

namespace A185192.P12405852181054755582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (10 ^ n : ℤ)

end

end A185192.P12405852181054755582

namespace A185192

/-- `∑[A036378(n)]%(10^n)` -/
def P12405852181054755582.Spec : Prop :=
  ∀ n, P12405852181054755582.a n = A185192 (n + 1)

end A185192

/-! ## A185192.P8796501506202087079

`A007053(ceil(sin(n)²)+n)`
-/

namespace A185192.P8796501506202087079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (⌈Real.sin (n : ℝ) ^ 2⌉ + (n : ℤ)).toNat

end

end A185192.P8796501506202087079

namespace A185192

/-- `A007053(ceil(sin(n)²)+n)` -/
def P8796501506202087079.Spec : Prop :=
  ∀ n, P8796501506202087079.a n = A185192 (n + 1)

end A185192

/-! ## A185192.P143961808530024204

`A007053(1-floor(acot(n))+n)`
-/

namespace A185192.P143961808530024204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (1 - ⌊SequenceMachineLib.acot (n : ℝ)⌋ + (n : ℤ)).toNat

end

end A185192.P143961808530024204

namespace A185192

/-- `A007053(1-floor(acot(n))+n)` -/
def P143961808530024204.Spec : Prop :=
  ∀ n, P143961808530024204.a n = A185192 (n + 1)

end A185192

/-! ## A185192.P5120080166235647496

`A007053(n-(floor(acot(n))-1))`
-/

namespace A185192.P5120080166235647496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 ((n : ℤ) - (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1)).toNat

end

end A185192.P5120080166235647496

namespace A185192

/-- `A007053(n-(floor(acot(n))-1))` -/
def P5120080166235647496.Spec : Prop :=
  ∀ n, P5120080166235647496.a n = A185192 (n + 1)

end A185192

/-! ## A185192.P15716489077419825113

`A007053(xor(n+1, floor(acot(n))))`
-/

namespace A185192.P15716489077419825113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (Int.xor (n + 1 : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A185192.P15716489077419825113

namespace A185192

/-- `A007053(xor(n+1, floor(acot(n))))` -/
def P15716489077419825113.Spec : Prop :=
  ∀ n, P15716489077419825113.a n = A185192 (n + 1)

end A185192

/-! ## A185192.P2406755794510372119

`A007053(dr(n^floor(acot(n)))+n)`
-/

namespace A185192.P2406755794510372119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (SequenceMachineLib.digitalRoot (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊SequenceMachineLib.acot (n : ℝ)⌋ : ℤ))) + n)

end

end A185192.P2406755794510372119

namespace A185192

/-- `A007053(dr(n^floor(acot(n)))+n)` -/
def P2406755794510372119.Spec : Prop :=
  ∀ n, P2406755794510372119.a n = A185192 (n + 1)

end A185192

/-! ## A185192.P4499113981384935639

`A007053((n+1)%(2*n+1))`
-/

namespace A185192.P4499113981384935639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 ((n + 1) % (2 * n + 1))

end

end A185192.P4499113981384935639

namespace A185192

/-- `A007053((n+1)%(2*n+1))` -/
def P4499113981384935639.Spec : Prop :=
  ∀ n, P4499113981384935639.a n = A185192 (n + 1)

end A185192

/-! ## A185192.P9349142299716250490

`A007053(A087156(n+1))`
-/

namespace A185192.P9349142299716250490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (A087156 (n + 1)).toNat

end

end A185192.P9349142299716250490

namespace A185192

/-- `A007053(A087156(n+1))` -/
def P9349142299716250490.Spec : Prop :=
  ∀ n, P9349142299716250490.a n = A185192 (n + 1)

end A185192

/-!
# A185193: Number of unlabeled digraphs on n vertices such that every vertex has outdegree 3.

The programs for A185193, there is no canonical definition to state claims against.
-/

/-! ## A185193.P8542700454059237101

`A025461(A367790(n))`
-/

namespace A185193.P8542700454059237101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025461 (A367790 n).toNat

end

end A185193.P8542700454059237101

/-! ## A185193.P11881812455275586861

`A394461(A050262(n))`
-/

namespace A185193.P11881812455275586861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394461 (A050262 n).toNat

end

end A185193.P11881812455275586861

/-!
# A185195: Least k such that lambda(1) + lambda(2) +...+ lambda(k) >= n.

The programs for A185195, there is no canonical definition to state claims against.
-/

/-! ## A185195.P11918986520434062567

`∑[char[A162578(n+1)]]+1`
-/

namespace A185195.P11918986520434062567
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162578 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A185195.P11918986520434062567

/-! ## A185195.P12627280770407484042

`∑[char[∑[A002322(n+1)]]]+1`
-/

namespace A185195.P12627280770407484042
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A185195.P12627280770407484042

/-! ## A185195.P636590508967273859

`∑[char[∑[A263027(n+1)-1]]]+1`
-/

namespace A185195.P636590508967273859
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263027 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A185195.P636590508967273859

/-! ## A185195.P6357074577844970905

`∑[char[∑[n+1-A277127(n+1)]]]+1`
-/

namespace A185195.P6357074577844970905
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A277127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A185195.P6357074577844970905

/-! ## A185195.P2405114221914395713

`∑[A276084(A252911(n+1)*A354060(n+1)+1)]`
-/

namespace A185195.P2405114221914395713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276084 (A252911 (n + 1) * A354060 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185195.P2405114221914395713

