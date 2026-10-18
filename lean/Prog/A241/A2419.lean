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
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
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
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A241900: Irregular triangular array: T(n,k) = number of partitions (nodes) in the k-th component of the graph G'(n) obtained from the partition graph G(n) by deleting all partitions having repeated parts; G and G' are defined in Comments.

The programs for A241900, there is no canonical definition to state claims against.
-/

/-! ## A241900.P620100750153294992

`A342749(A006800(n+2)+1)`
-/

namespace A241900.P620100750153294992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342749 (A006800 (n + 2) + 1).toNat

end

end A241900.P620100750153294992

/-! ## A241900.P12081148134161465178

`A030588(A024955(n+1)+7)`
-/

namespace A241900.P12081148134161465178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030588 (A024955 (n + 1) + 7).toNat

end

end A241900.P12081148134161465178

/-! ## A241900.P11585516709587793091

`A348040(A003401(2*n+1))+1`
-/

namespace A241900.P11585516709587793091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348040 (A003401 (2 * n + 1)).toNat + 1

end

end A241900.P11585516709587793091

/-! ## A241900.P10915412247170298499

`A010554(n+1)+A003849(xor(n, 2^n-1))`
-/

namespace A241900.P10915412247170298499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010554 (n + 1) + A003849 (Int.xor (n : ℤ) ((2 ^ n : ℤ) - 1)).toNat

end

end A241900.P10915412247170298499

/-! ## A241900.P12810523068455088272

`A010554(n+1)+A003849(abs(xor(-2^n, -(n+1))))`
-/

namespace A241900.P12810523068455088272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010554 (n + 1) + A003849 |Int.xor (-(2 ^ n : ℤ)) (-(n + 1 : ℤ))|.toNat

end

end A241900.P12810523068455088272

/-!
# A241903: Number of binary strings of length n avoiding the pattern x x x^R (where x^R means reverse of x).

The programs for A241903, there is no canonical definition to state claims against.
-/

/-! ## A241903.P8162125020337668452

`∑[∑[A024361(A033649(n))]]`
-/

namespace A241903.P8162125020337668452
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024361 (A033649 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241903.P8162125020337668452

/-! ## A241903.P6576550634527929137

`∑[∑[A035194(A038606(n+1))]]`
-/

namespace A241903.P6576550634527929137
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035194 (A038606 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241903.P6576550634527929137

/-! ## A241903.P8374911453792552049

`∑[A071647(A360592(n)+A360257(n+1))]`
-/

namespace A241903.P8374911453792552049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071647 (A360592 n + A360257 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241903.P8374911453792552049

/-! ## A241903.P3169178900565448308

`A008821(A008817(2*n))+A004277(A227549(n+1))`
-/

namespace A241903.P3169178900565448308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008821 (A008817 (2 * n)).toNat + A004277 (A227549 (n + 1)).toNat

end

end A241903.P3169178900565448308

/-! ## A241903.P11555126075699184929

`∑[A133188((n+1)²+2)]`
-/

namespace A241903.P11555126075699184929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133188 ((n + 1) ^ 2 + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241903.P11555126075699184929

/-!
# A241904: The number of graphs G on n vertices such that every unlabeled automorphism of the reduced graph of G is a labeled automorphism of the reduced graph of G.

The programs for A241904, there is no canonical definition to state claims against.
-/

/-! ## A241904.P601776755808719764

`n*a(n-1)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=8, a(4)=22`
-/

namespace A241904.P601776755808719764
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 8, 22] fun n a =>
  n * a (n - 1)

end

end A241904.P601776755808719764

/-!
# A241906: a(n) = floor(Bell(2*n)/Bell(n)^2), Bell = A000110.

The programs for A241906, there is no canonical definition to state claims against.
-/

/-! ## A241906.P6881681008419399747

`floor(A020557(n)/A001247(n))`
-/

namespace A241906.P6881681008419399747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A020557 n : ℚ) / (A001247 n : ℚ)⌋

end

end A241906.P6881681008419399747

/-! ## A241906.P5287115393023886774

`floor(A020557(n)/A000110(n)²)`
-/

namespace A241906.P5287115393023886774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A020557 n : ℚ) / (A000110 n ^ 2 : ℚ)⌋

end

end A241906.P5287115393023886774

/-! ## A241906.P15700014408791797862

`floor(A020557(n)/A292935(n)²)`
-/

namespace A241906.P15700014408791797862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A020557 n : ℚ) / (A292935 n ^ 2 : ℚ)⌋

end

end A241906.P15700014408791797862

/-! ## A241906.P17672729600268401729

`floor(A000110(2*n)/A001247(n))`
-/

namespace A241906.P17672729600268401729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000110 (2 * n) : ℚ) / (A001247 n : ℚ)⌋

end

end A241906.P17672729600268401729

/-! ## A241906.P12967096240316389851

`floor(A000110(2*n)/A000110(n)²)`
-/

namespace A241906.P12967096240316389851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000110 (2 * n) : ℚ) / (A000110 n ^ 2 : ℚ)⌋

end

end A241906.P12967096240316389851

/-!
# A241907: a(n) = floor( Catalan(2*n) / Catalan(n)^2 ).

The programs for A241907, the canonical program `A241907.P7197561150555948447` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241907 has offset 0).

The definition of A241907 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A241907.P7197561150555948447

`floor(A048990(n)/A001246(n))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A241907

/-- `floor(A048990(n)/A001246(n))` -/
def P7197561150555948447.Spec : Prop :=
  ∀ n, P7197561150555948447.a n = A241907 n

theorem P7197561150555948447.correct : P7197561150555948447.Spec := by
  intro n
  simp only [A241907]

end A241907

/-! ## A241907.P6671551306193979153

`floor(A048990(n)/A000108(n)²)`
-/

namespace A241907.P6671551306193979153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A048990 n : ℚ) / (A000108 n ^ 2 : ℚ)⌋

end

end A241907.P6671551306193979153

namespace A241907

/-- `floor(A048990(n)/A000108(n)²)` -/
def P6671551306193979153.Spec : Prop :=
  ∀ n, P6671551306193979153.a n = A241907 n

end A241907

/-! ## A241907.P17436071856269399672

`floor(A120588(2*n+1)/A120588(n+1)²)`
-/

namespace A241907.P17436071856269399672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A120588 (2 * n + 1) : ℚ) / (A120588 (n + 1) ^ 2 : ℚ)⌋

end

end A241907.P17436071856269399672

namespace A241907

/-- `floor(A120588(2*n+1)/A120588(n+1)²)` -/
def P17436071856269399672.Spec : Prop :=
  ∀ n, P17436071856269399672.a n = A241907 n

end A241907

/-! ## A241907.P9615859088218602414

`floor(A000108(A004277(n))/A000108(n)²)`
-/

namespace A241907.P9615859088218602414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000108 (A004277 n).toNat : ℚ) / (A000108 n ^ 2 : ℚ)⌋

end

end A241907.P9615859088218602414

namespace A241907

/-- `floor(A000108(A004277(n))/A000108(n)²)` -/
def P9615859088218602414.Spec : Prop :=
  ∀ n, P9615859088218602414.a n = A241907 n

end A241907

/-! ## A241907.P8892862379264218062

`floor(A000108(A005843(n))/A000108(n)²)`
-/

namespace A241907.P8892862379264218062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000108 (A005843 n).toNat : ℚ) / (A000108 n ^ 2 : ℚ)⌋

end

end A241907.P8892862379264218062

namespace A241907

/-- `floor(A000108(A005843(n))/A000108(n)²)` -/
def P8892862379264218062.Spec : Prop :=
  ∀ n, P8892862379264218062.a n = A241907 n

end A241907

/-! ## A241907.P14084482123895429843

`floor(A001448(n)/A000891(n))`
-/

namespace A241907.P14084482123895429843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001448 n : ℚ) / (A000891 n : ℚ)⌋

end

end A241907.P14084482123895429843

namespace A241907

/-- `floor(A001448(n)/A000891(n))` -/
def P14084482123895429843.Spec : Prop :=
  ∀ n, P14084482123895429843.a n = A241907 n

end A241907

/-!
# A241908: Number of perfect matchings in graph P_{13} X P_{2n}.

The programs for A241908, there is no canonical definition to state claims against.
-/

/-! ## A241908.P8351640048865970697

`record[A187596(eq[13, A002262(n)])]`
-/

namespace A241908.P8351640048865970697
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187596 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241908.P8351640048865970697

/-! ## A241908.P15337131114501264232

`A028468(A004277(n))*A028478(n)`
-/

namespace A241908.P15337131114501264232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028468 (A004277 n).toNat * A028478 n

end

end A241908.P15337131114501264232

/-!
# A241909: Self-inverse permutation of natural numbers: a(1)=1, a(p_i) = 2^i, and if n = p_i1 * p_i2 * p_i3 * ... * p_{ik-1} * p_ik, where p's are primes, with their indexes are sorted into nondescending order: i1 <= i2 <= i3 <= ... <= i_{k-1} <= ik, then a(n) = 2^(i1-1) * 3^(i2-i1) * 5^(i3-i2) * ... * p_k^(1+(ik-i_{k-1})). Here k = A001222(n) and ik = A061395(n).

The programs for A241909, there is no canonical definition to state claims against.
-/

/-! ## A241909.P16223598868687155456

`A331595(n+1)*A331599(n+1)`
-/

namespace A241909.P16223598868687155456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331595 (n + 1) * A331599 (n + 1)

end

end A241909.P16223598868687155456

/-! ## A241909.P8070534422390718450

`A011782(A286477(n+1))*A331732(n+1)`
-/

namespace A241909.P8070534422390718450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A286477 (n + 1)).toNat * A331732 (n + 1)

end

end A241909.P8070534422390718450

/-! ## A241909.P4685803038860573572

`A122111(n+1)/A331598(n+1)*A331599(n+1)`
-/

namespace A241909.P4685803038860573572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122111 (n + 1) : ℚ) / (A331598 (n + 1) : ℚ) * (A331599 (n + 1) : ℚ)

end

end A241909.P4685803038860573572

/-! ## A241909.P11958263268447793261

`∑{d}[n+1, A329034(#)]/A331598(n+1)*A331599(n+1)`
-/

namespace A241909.P11958263268447793261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), A329034 d : ℤ) : ℚ) / (A331598 (n + 1) : ℚ) * (A331599 (n + 1) : ℚ)

end

end A241909.P11958263268447793261

/-! ## A241909.P13352899328946274683

`(A354867(n+1)-A354866(n+1))/A331598(n+1)*A331599(n+1)`
-/

namespace A241909.P13352899328946274683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A354867 (n + 1) - A354866 (n + 1) : ℚ) / (A331598 (n + 1) : ℚ) * (A331599 (n + 1) : ℚ)

end

end A241909.P13352899328946274683

/-! ## A241909.P2404411592892126353

`A279356(A249817(n+1))`
-/

namespace A241909.P2404411592892126353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279356 (A249817 (n + 1)).toNat

end

end A241909.P2404411592892126353

/-! ## A241909.P3582323674702266832

`A243062(A064216(n+1))`
-/

namespace A241909.P3582323674702266832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243062 (A064216 (n + 1)).toNat

end

end A241909.P3582323674702266832

/-! ## A241909.P18340802291782601341

`A243062(A064989(2*n+1))`
-/

namespace A241909.P18340802291782601341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243062 (A064989 (2 * n + 1)).toNat

end

end A241909.P18340802291782601341

/-! ## A241909.P1820638109442199152

`A243065(A048673(n+1))`
-/

namespace A241909.P1820638109442199152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243065 (A048673 (n + 1)).toNat

end

end A241909.P1820638109442199152

/-! ## A241909.P9599817418118477926

`A243065(A243501(n+1)/2)`
-/

namespace A241909.P9599817418118477926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243065 (SequenceMachineLib.roundAway ((A243501 (n + 1) : ℚ) / 2)).toNat

end

end A241909.P9599817418118477926

/-!
# A241910: After a(1)=0, numbers 0 .. bigomega(n)-1, followed by numbers 0 .. bigomega(n+1)-1, etc., where bigomega(n)=A001222(n) is the number of prime factors of n (with repetition).

The programs for A241910, there is no canonical definition to state claims against.
-/

/-! ## A241910.P5092516041694298170

`A241911(n+1)-1`
-/

namespace A241910.P5092516041694298170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241911 (n + 1) - 1

end

end A241910.P5092516041694298170

/-! ## A241910.P168553379949070656

`A252736(A285904(n+1))`
-/

namespace A241910.P168553379949070656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (A285904 (n + 1)).toNat

end

end A241910.P168553379949070656

/-! ## A241910.P6377569070399411542

`A127229(n+5)%A241911(n+1)`
-/

namespace A241910.P6377569070399411542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127229 (n + 5)) (A241911 (n + 1))

end

end A241910.P6377569070399411542

/-! ## A241910.P11071525068219817949

`A241911(A028310(n))%A241911(n+1)`
-/

namespace A241910.P11071525068219817949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241911 (A028310 n).toNat) (A241911 (n + 1))

end

end A241910.P11071525068219817949

/-! ## A241910.P17284307212735045247

`A252736(A265110(n+1))`
-/

namespace A241910.P17284307212735045247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (A265110 (n + 1)).toNat

end

end A241910.P17284307212735045247

/-! ## A241910.P12121455401020114054

`A057428(n)+A001222(A265110(n+1))`
-/

namespace A241910.P12121455401020114054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A001222 (A265110 (n + 1)).toNat

end

end A241910.P12121455401020114054

/-! ## A241910.P7793041269239727708

`A001222(A265110(n+1)/A027746(n+1))`
-/

namespace A241910.P7793041269239727708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A265110 (n + 1) : ℚ) / (A027746 (n + 1) : ℚ))).toNat

end

end A241910.P7793041269239727708

/-! ## A241910.P6699501551187297053

`A083800(n+1)%A241911(n+1)`
-/

namespace A241910.P6699501551187297053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083800 (n + 1)) (A241911 (n + 1))

end

end A241910.P6699501551187297053

/-! ## A241910.P2657740345009357752

`A070198(n)%A241911(n+1)`
-/

namespace A241910.P2657740345009357752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A241911 (n + 1))

end

end A241910.P2657740345009357752

/-! ## A241910.P16140757292440957356

`A079782(n+1)%A241911(n+1)`
-/

namespace A241910.P16140757292440957356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A241911 (n + 1))

end

end A241910.P16140757292440957356

/-! ## A241910.P13234712518149063102

`A083685(n+1)%A241911(n+1)`
-/

namespace A241910.P13234712518149063102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A241911 (n + 1))

end

end A241910.P13234712518149063102

/-! ## A241910.P18324443533647571004

`A121934(n+1)%A241911(n+1)`
-/

namespace A241910.P18324443533647571004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A241911 (n + 1))

end

end A241910.P18324443533647571004

/-! ## A241910.P13689466844969493260

`A030494(n+1)%A241911(n+1)`
-/

namespace A241910.P13689466844969493260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A241911 (n + 1))

end

end A241910.P13689466844969493260

/-! ## A241910.P1111409475002669569

`A072828(n+1)%A241911(n+1)`
-/

namespace A241910.P1111409475002669569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A241911 (n + 1))

end

end A241910.P1111409475002669569

/-!
# A241911: After a(1)=1, numbers 1 .. bigomega(n), followed by numbers 1 .. bigomega(n+1), etc., where bigomega(n)=A001222(n) is the number of prime factors of n (with repetition).

The programs for A241911, there is no canonical definition to state claims against.
-/

/-! ## A241911.P18047623891190637042

`A241910(n+1)+1`
-/

namespace A241911.P18047623891190637042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241910 (n + 1) + 1

end

end A241911.P18047623891190637042

/-! ## A241911.P3577462036630289803

`A086436(A285904(n+1))`
-/

namespace A241911.P3577462036630289803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086436 (A285904 (n + 1)).toNat

end

end A241911.P3577462036630289803

/-! ## A241911.P4284709694044371079

`A001222(A285904(abs(1-n)+2))`
-/

namespace A241911.P4284709694044371079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A285904 (|1 - (n : ℤ)| + 2).toNat).toNat

end

end A241911.P4284709694044371079

/-! ## A241911.P8854311832822352422

`A001222(A285904(n+1)+A019590(n+1))`
-/

namespace A241911.P8854311832822352422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A285904 (n + 1) + A019590 (n + 1)).toNat

end

end A241911.P8854311832822352422

/-! ## A241911.P7071303186341988141

`A001222(A285904(n+1))^A175764(2*(n+1))`
-/

namespace A241911.P7071303186341988141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (A285904 (n + 1)).toNat : ℚ) ^ (A175764 (2 * (n + 1)) : ℤ)

end

end A241911.P7071303186341988141

/-! ## A241911.P12086419258320953913

`A086436(A265110(n+1))`
-/

namespace A241911.P12086419258320953913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086436 (A265110 (n + 1)).toNat

end

end A241911.P12086419258320953913

/-! ## A241911.P8461593913437870450

`A001222(A265110(abs(1-n)+2))`
-/

namespace A241911.P8461593913437870450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A265110 (|1 - (n : ℤ)| + 2).toNat).toNat

end

end A241911.P8461593913437870450

/-! ## A241911.P18159353371693424934

`A001222(A265110(n+1)+A000007(n))`
-/

namespace A241911.P18159353371693424934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A265110 (n + 1) + A000007 n).toNat

end

end A241911.P18159353371693424934

/-! ## A241911.P4064416810971695893

`A001222(A265110(n+1)+A057428(n)+1)`
-/

namespace A241911.P4064416810971695893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A265110 (n + 1) + (A057428 n + 1)).toNat

end

end A241911.P4064416810971695893

/-! ## A241911.P15019529896092374149

`A001222(A265110(n+1)/A027746(n+1))+1`
-/

namespace A241911.P15019529896092374149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A265110 (n + 1) : ℚ) / (A027746 (n + 1) : ℚ))).toNat + 1

end

end A241911.P15019529896092374149

/-! ## A241911.P9935464370754181069

`A001222(A265110(n+1))^A001222(A027746(n+1))`
-/

namespace A241911.P9935464370754181069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (A265110 (n + 1)).toNat : ℚ) ^ (A001222 (A027746 (n + 1)).toNat : ℤ)

end

end A241911.P9935464370754181069

/-! ## A241911.P13819645698062287459

`A065033(A001222(A285904(n+1)²))`
-/

namespace A241911.P13819645698062287459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A001222 (A285904 (n + 1) ^ 2).toNat).toNat

end

end A241911.P13819645698062287459

/-! ## A241911.P16278850597111232776

`gcd(A001222(A265110(n+1)), A175943(n+1))`
-/

namespace A241911.P16278850597111232776
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001222 (A265110 (n + 1)).toNat) (A175943 (n + 1))

end

end A241911.P16278850597111232776

/-!
# A241912: Fixed points of A241916.

The programs for A241912, there is no canonical definition to state claims against.
-/

/-! ## A241912.P11358330005538292638

`A242418(n+2)/2`
-/

namespace A241912.P11358330005538292638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242418 (n + 2) : ℚ) / 2

end

end A241912.P11358330005538292638

/-! ## A241912.P13160680626834381495

`lt[A331594(n+1), 1]+1`
-/

namespace A241912.P13160680626834381495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331594 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A241912.P13160680626834381495

/-! ## A241912.P103100421356214554

`eq[1, a(A331594(n))+1]` with `a(0)=0`
-/

namespace A241912.P103100421356214554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (A331594 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A241912.P103100421356214554

/-! ## A241912.P4562643293839687504

`record[gcd(n+1, A241916(n+1))]`
-/

namespace A241912.P4562643293839687504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A241916 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241912.P4562643293839687504

/-! ## A241912.P13771613573702725492

`eq[n, A241916(A028310(n))]`
-/

namespace A241912.P13771613573702725492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241916 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A241912.P13771613573702725492

/-! ## A241912.P2954170160927684402

`A241916(eq[n+1, A241916(n+1)]+1)`
-/

namespace A241912.P2954170160927684402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241916 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241916 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A241912.P2954170160927684402

/-! ## A241912.P3739886610044892664

`A241916(record[n+1-A241916(n+1)%(n+1)])`
-/

namespace A241912.P3739886610044892664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - Int.tmod (A241916 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241916 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A241912.P3739886610044892664

/-! ## A241912.P17949081908572547955

`eq[2*(n+1), A137502(2*(n+1))]+1`
-/

namespace A241912.P17949081908572547955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137502 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A241912.P17949081908572547955

/-! ## A241912.P13513683275522046612

`eq[2*(n+1), A293448(2*(n+1))]+1`
-/

namespace A241912.P13513683275522046612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293448 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A241912.P13513683275522046612

/-! ## A241912.P8027020492027901488

`eq[2*n, A137502(A004277(n))]`
-/

namespace A241912.P8027020492027901488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137502 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A241912.P8027020492027901488

/-! ## A241912.P7086947935150309157

`A008619(eq[2*A008619(n), A137502(n+1)])`
-/

namespace A241912.P7086947935150309157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008619 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137502 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A241912.P7086947935150309157

/-! ## A241912.P8652508769726737465

`A008619(eq[2, A137502(n+1)/A008619(n)])`
-/

namespace A241912.P8652508769726737465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137502 (n + 1) : ℚ) / (A008619 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A241912.P8652508769726737465

/-! ## A241912.P2098147571183888561

`A001281(A242418(n+2))`
-/

namespace A241912.P2098147571183888561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A242418 (n + 2)).toNat

end

end A241912.P2098147571183888561

/-! ## A241912.P11453103343101042873

`eq[n, A241916(A065033(2*n))]`
-/

namespace A241912.P11453103343101042873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241916 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A241912.P11453103343101042873

/-! ## A241912.P5960936018999793859

`eq[n, A241916(A101279(2*n+1))]`
-/

namespace A241912.P5960936018999793859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241916 (A101279 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A241912.P5960936018999793859

/-! ## A241912.P10287368464060574334

`eq[1, A331598(n+1)]+1`
-/

namespace A241912.P10287368464060574334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331598 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A241912.P10287368464060574334

/-! ## A241912.P1448450708161762341

`eq[1, A331599(n+1)]+1`
-/

namespace A241912.P1448450708161762341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331599 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A241912.P1448450708161762341

/-!
# A241913: Complement of A241912, natural numbers not fixed by A241916.

The programs for A241913, there is no canonical definition to state claims against.
-/

/-! ## A241913.P5984480682845775061

`comp[A241912(n+1)-1]+1`
-/

namespace A241913.P5984480682845775061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241912 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A241913.P5984480682845775061

/-! ## A241913.P8571170268881674791

`eq[1, A007318(a(A331594(n)))]` with `a(0)=4, a(1)=0`
-/

namespace A241913.P8571170268881674791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 0] fun n f2 =>
  A007318 (f2 (A331594 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A241913.P8571170268881674791

/-! ## A241913.P7837836515985296367

`lt[0, A331594(A028310(n))]`
-/

namespace A241913.P7837836515985296367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331594 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A241913.P7837836515985296367

/-! ## A241913.P17093931474626985159

`eq[char[A241912(n+1)], A000007(n)]`
-/

namespace A241913.P17093931474626985159
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241912 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A241913.P17093931474626985159

/-! ## A241913.P11444337537529323192

`eq[char[A241912(n+1)], A000038(n)]`
-/

namespace A241913.P11444337537529323192
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241912 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A241913.P11444337537529323192

/-! ## A241913.P18159780748686303396

`eq[char[A241912(n+1)], A049084(2*(n+1))]`
-/

namespace A241913.P18159780748686303396
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241912 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A241913.P18159780748686303396

/-! ## A241913.P8995300714371300546

`lt[1, A331598(n+1)]+1`
-/

namespace A241913.P8995300714371300546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331598 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A241913.P8995300714371300546

/-!
# A241914: After a(1)=0, numbers 0 .. A061395(n)-1, followed by numbers 0 .. A061395(n+1)-1, etc.

The programs for A241914, there is no canonical definition to state claims against.
-/

/-! ## A241914.P8254694617190130908

`A241915(n+1)-1`
-/

namespace A241914.P8254694617190130908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241915 (n + 1) - 1

end

end A241914.P8254694617190130908

/-! ## A241914.P14445043039293193208

`A023443(A241915(n+1))`
-/

namespace A241914.P14445043039293193208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A241915 (n + 1)).toNat

end

end A241914.P14445043039293193208

/-! ## A241914.P11845250042980135535

`(A241915(n+1)+A000007(n)+n)%(n+1)`
-/

namespace A241914.P11845250042980135535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241915 (n + 1) + (A000007 n + (n : ℤ))) (n + 1 : ℤ)

end

end A241914.P11845250042980135535

/-! ## A241914.P13869849309753531930

`A241915(A028310(n))%A241915(n+1)`
-/

namespace A241914.P13869849309753531930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241915 (A028310 n).toNat) (A241915 (n + 1))

end

end A241914.P13869849309753531930

/-! ## A241914.P6889365262233642711

`A241915(A123108(2*n))%A241915(n+1)`
-/

namespace A241914.P6889365262233642711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241915 (A123108 (2 * n)).toNat) (A241915 (n + 1))

end

end A241914.P6889365262233642711

/-! ## A241914.P8790161817906057970

`A272813(A000035(2*n+1)*A241915(n+1))`
-/

namespace A241914.P8790161817906057970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272813 (A000035 (2 * n + 1) * A241915 (n + 1)).toNat

end

end A241914.P8790161817906057970

/-! ## A241914.P1106058358857185244

`A200748(n)%A241915(n+1)`
-/

namespace A241914.P1106058358857185244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200748 n) (A241915 (n + 1))

end

end A241914.P1106058358857185244

/-! ## A241914.P4648242027150232908

`A241915(A233583(n+1))%A241915(n+1)`
-/

namespace A241914.P4648242027150232908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241915 (A233583 (n + 1)).toNat) (A241915 (n + 1))

end

end A241914.P4648242027150232908

/-! ## A241914.P9677656221927545513

`A117010(n+1)%A241915(n+1)`
-/

namespace A241914.P9677656221927545513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117010 (n + 1)) (A241915 (n + 1))

end

end A241914.P9677656221927545513

/-! ## A241914.P15160754077691331634

`A001222(2^A241915(n+1)/2)`
-/

namespace A241914.P15160754077691331634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A241915 (n + 1) : ℤ) / 2)).toNat

end

end A241914.P15160754077691331634

/-! ## A241914.P14489761148603871148

`A083800(n+1)%A241915(n+1)`
-/

namespace A241914.P14489761148603871148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083800 (n + 1)) (A241915 (n + 1))

end

end A241914.P14489761148603871148

/-! ## A241914.P4891418488839908631

`A070198(n)%A241915(n+1)`
-/

namespace A241914.P4891418488839908631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A241915 (n + 1))

end

end A241914.P4891418488839908631

/-! ## A241914.P8429995842473044726

`A079782(n+1)%A241915(n+1)`
-/

namespace A241914.P8429995842473044726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A241915 (n + 1))

end

end A241914.P8429995842473044726

/-! ## A241914.P13242871144764483061

`A083685(n+1)%A241915(n+1)`
-/

namespace A241914.P13242871144764483061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A241915 (n + 1))

end

end A241914.P13242871144764483061

/-! ## A241914.P8667402990463068734

`A121934(n+1)%A241915(n+1)`
-/

namespace A241914.P8667402990463068734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A241915 (n + 1))

end

end A241914.P8667402990463068734

/-! ## A241914.P11448260699520506980

`A030494(n+1)%A241915(n+1)`
-/

namespace A241914.P11448260699520506980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A241915 (n + 1))

end

end A241914.P11448260699520506980

/-! ## A241914.P13387084128593945594

`A072828(n+1)%A241915(n+1)`
-/

namespace A241914.P13387084128593945594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A241915 (n + 1))

end

end A241914.P13387084128593945594

/-! ## A241914.P12066581118016452704

`A198277(n)%A241915(n+1)`
-/

namespace A241914.P12066581118016452704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198277 n) (A241915 (n + 1))

end

end A241914.P12066581118016452704

/-!
# A241915: After a(1)=1, numbers 1 .. A061395(n), followed by numbers 1 .. A061395(n+1), etc.

The programs for A241915, there is no canonical definition to state claims against.
-/

/-! ## A241915.P5447170008120674040

`A241914(n+1)+1`
-/

namespace A241915.P5447170008120674040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241914 (n + 1) + 1

end

end A241915.P5447170008120674040

/-! ## A241915.P9850532091724366923

`A008619(2*A241914(Δ[n²]-n))`
-/

namespace A241915.P9850532091724366923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A241914 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat

end

end A241915.P9850532091724366923

/-! ## A241915.P16522732746292700447

`A000005(2^A241914(Δ[n²]-n))`
-/

namespace A241915.P16522732746292700447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A241914 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℤ))).toNat

end

end A241915.P16522732746292700447

/-! ## A241915.P13973240735567035776

`A008908(2^A241914(Δ[n²]-n))`
-/

namespace A241915.P13973240735567035776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A241914 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℤ))).toNat

end

end A241915.P13973240735567035776

/-! ## A241915.P11711455921937478071

`A061775(2^A241914(Δ[n²]-n))`
-/

namespace A241915.P11711455921937478071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061775 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A241914 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℤ))).toNat

end

end A241915.P11711455921937478071

/-! ## A241915.P1851860587263635102

`A073093(2^A241914(Δ[n²]-n))`
-/

namespace A241915.P1851860587263635102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A241914 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℤ))).toNat

end

end A241915.P1851860587263635102

/-!
# A241916: a(2^k) = 2^k, and for other numbers, if n = 2^e1 * 3^e2 * 5^e3 * ... p_k^e_k, then a(n) = 2^(e_k - 1) * 3^(e_{k-1}) * ... * p_{k-1}^e2 * p_k^(e1+1). Here p_k is the greatest prime factor of n (A006530), and e_k is its exponent (A071178), and the exponents e1, ..., e_{k-1} >= 0.

The programs for A241916, there is no canonical definition to state claims against.
-/

/-! ## A241916.P7997255888222923932

`A241909(A122111(n+1))`
-/

namespace A241916.P7997255888222923932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241909 (A122111 (n + 1)).toNat

end

end A241916.P7997255888222923932

/-! ## A241916.P1193432714834482142

`A006530(n+1)/A137502(A006530(n+1))*A137502(n+1)`
-/

namespace A241916.P1193432714834482142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006530 (n + 1) : ℚ) / (A137502 (A006530 (n + 1)).toNat : ℚ) * (A137502 (n + 1) : ℚ)

end

end A241916.P1193432714834482142

/-! ## A241916.P5607207685955152343

`A137502(2*(n+1))/2`
-/

namespace A241916.P5607207685955152343
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137502 (2 * (n + 1)) : ℚ) / 2

end

end A241916.P5607207685955152343

/-! ## A241916.P10329690573571922012

`A293448(2*(n+1))/2`
-/

namespace A241916.P10329690573571922012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293448 (2 * (n + 1)) : ℚ) / 2

end

end A241916.P10329690573571922012

/-! ## A241916.P10646091076792171669

`A014682(A137502(2*(n+1)))`
-/

namespace A241916.P10646091076792171669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A137502 (2 * (n + 1))).toNat

end

end A241916.P10646091076792171669

/-! ## A241916.P8959728141422423369

`A014682(A293448(2*(n+1)))`
-/

namespace A241916.P8959728141422423369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A293448 (2 * (n + 1))).toNat

end

end A241916.P8959728141422423369

/-! ## A241916.P10315643496097649300

`A273943(lcm(2, A137502(2*(n+1))))`
-/

namespace A241916.P10315643496097649300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (Int.lcm 2 (A137502 (2 * (n + 1))))

end

end A241916.P10315643496097649300

/-! ## A241916.P13076071919409945347

`A004525(A137502(2*n+2))`
-/

namespace A241916.P13076071919409945347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A137502 (2 * n + 2)).toNat

end

end A241916.P13076071919409945347

/-!
# A241917: If n is a prime with index i, p_i, a(n) = i, (with a(1)=0), otherwise difference (i-j) of the indices of the two largest primes p_i, p_j, i >= j in the prime factorization of n: a(n) = A061395(n) - A061395(A052126(n)).

The programs for A241917, the canonical program `A241917.P8169004480460949126` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241917 has offset 1).

The definition of A241917 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052126, A061395, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A241917.P8169004480460949126

`A061395(n+1)-A061395(A052126(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A241917

/-- `A061395(n+1)-A061395(A052126(n+1))` -/
def P8169004480460949126.Spec : Prop :=
  ∀ n, P8169004480460949126.a n = A241917 (n + 1)

theorem P8169004480460949126.correct : P8169004480460949126.Spec := by
  intro n
  simp only [A241917, Nat.add_sub_cancel]

end A241917

/-! ## A241917.P14494681332826595493

`A336315(n+1)/A322813(n+1)-1`
-/

namespace A241917.P14494681332826595493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336315 (n + 1) : ℚ) / (A322813 (n + 1) : ℚ) - 1

end

end A241917.P14494681332826595493

namespace A241917

/-- `A336315(n+1)/A322813(n+1)-1` -/
def P14494681332826595493.Spec : Prop :=
  ∀ n, P14494681332826595493.a n = (A241917 (n + 1) : ℚ)

end A241917

/-! ## A241917.P16524200281358747331

`A061395(n+1)-A061395(A329888(n+1))`
-/

namespace A241917.P16524200281358747331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1) - A061395 (A329888 (n + 1)).toNat

end

end A241917.P16524200281358747331

namespace A241917

/-- `A061395(n+1)-A061395(A329888(n+1))` -/
def P16524200281358747331.Spec : Prop :=
  ∀ n, P16524200281358747331.a n = A241917 (n + 1)

end A241917

/-! ## A241917.P11058680647607466151

`A336315(n+1)/A336315(A052126(n+1))-1`
-/

namespace A241917.P11058680647607466151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336315 (n + 1) : ℚ) / (A336315 (A052126 (n + 1)).toNat : ℚ) - 1

end

end A241917.P11058680647607466151

namespace A241917

/-- `A336315(n+1)/A336315(A052126(n+1))-1` -/
def P11058680647607466151.Spec : Prop :=
  ∀ n, P11058680647607466151.a n = (A241917 (n + 1) : ℚ)

end A241917

/-! ## A241917.P11447548074073583834

`A336315(n+1)/A336315(A322820(n+1))-1`
-/

namespace A241917.P11447548074073583834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336315 (n + 1) : ℚ) / (A336315 (A322820 (n + 1)).toNat : ℚ) - 1

end

end A241917.P11447548074073583834

namespace A241917

/-- `A336315(n+1)/A336315(A322820(n+1))-1` -/
def P11447548074073583834.Spec : Prop :=
  ∀ n, P11447548074073583834.a n = (A241917 (n + 1) : ℚ)

end A241917

/-! ## A241917.P17840748570727541644

`A336315(n+1)/A336315(A338669(n+1))-1`
-/

namespace A241917.P17840748570727541644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336315 (n + 1) : ℚ) / (A336315 (A338669 (n + 1)).toNat : ℚ) - 1

end

end A241917.P17840748570727541644

namespace A241917

/-- `A336315(n+1)/A336315(A338669(n+1))-1` -/
def P17840748570727541644.Spec : Prop :=
  ∀ n, P17840748570727541644.a n = (A241917 (n + 1) : ℚ)

end A241917

/-! ## A241917.P6668880166414749986

`A287352(A022559(n+1)+1)`
-/

namespace A241917.P6668880166414749986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287352 (A022559 (n + 1) + 1).toNat

end

end A241917.P6668880166414749986

namespace A241917

/-- `A287352(A022559(n+1)+1)` -/
def P6668880166414749986.Spec : Prop :=
  ∀ n, P6668880166414749986.a n = A241917 (n + 1)

end A241917

/-! ## A241917.P8943504354156196593

`A287352(∑[A001222(n+1)]+1)`
-/

namespace A241917.P8943504354156196593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287352 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A241917.P8943504354156196593

namespace A241917

/-- `A287352(∑[A001222(n+1)]+1)` -/
def P8943504354156196593.Spec : Prop :=
  ∀ n, P8943504354156196593.a n = A241917 (n + 1)

end A241917

/-! ## A241917.P17557857190282642204

`val(A122111(n+1), 2)`
-/

namespace A241917.P17557857190282642204
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A122111 (n + 1)).toNat 2

end

end A241917.P17557857190282642204

namespace A241917

/-- `val(A122111(n+1), 2)` -/
def P17557857190282642204.Spec : Prop :=
  ∀ n, (P17557857190282642204.a n : ℤ) = A241917 (n + 1)

end A241917

/-! ## A241917.P15018624074543826728

`val(∑{d}[n+1, A329034(#)], 2)`
-/

namespace A241917.P15018624074543826728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ d ∈ Nat.divisors (f1 n), A329034 d).toNat 2

end

end A241917.P15018624074543826728

namespace A241917

/-- `val(∑{d}[n+1, A329034(#)], 2)` -/
def P15018624074543826728.Spec : Prop :=
  ∀ n, (P15018624074543826728.a n : ℤ) = A241917 (n + 1)

end A241917

/-! ## A241917.P12886135346098866618

`val(A181821(n+1)/A181821(A052126(n+1)), 2)`
-/

namespace A241917.P12886135346098866618
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.roundAway ((A181821 (n + 1) : ℚ) / (A181821 (A052126 (n + 1)).toNat : ℚ))).toNat 2

end

end A241917.P12886135346098866618

namespace A241917

/-- `val(A181821(n+1)/A181821(A052126(n+1)), 2)` -/
def P12886135346098866618.Spec : Prop :=
  ∀ n, (P12886135346098866618.a n : ℤ) = A241917 (n + 1)

end A241917

/-! ## A241917.P5167029007661863984

`val(A181821(n+1)/A181821((n+1)/A006530(n+1)), 2)`
-/

namespace A241917.P5167029007661863984
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.roundAway ((A181821 (n + 1) : ℚ) / (A181821 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006530 (n + 1) : ℚ))).toNat : ℚ))).toNat 2

end

end A241917.P5167029007661863984

namespace A241917

/-- `val(A181821(n+1)/A181821((n+1)/A006530(n+1)), 2)` -/
def P5167029007661863984.Spec : Prop :=
  ∀ n, (P5167029007661863984.a n : ℤ) = A241917 (n + 1)

end A241917

/-! ## A241917.P4411704024860083882

`val(A279351(n+1), 2)`
-/

namespace A241917.P4411704024860083882
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A279351 (n + 1)).toNat 2

end

end A241917.P4411704024860083882

namespace A241917

/-- `val(A279351(n+1), 2)` -/
def P4411704024860083882.Spec : Prop :=
  ∀ n, (P4411704024860083882.a n : ℤ) = A241917 (n + 1)

end A241917

/-! ## A241917.P7371192547941279130

`A061395(n+1)-A001222(A322865(n+1))`
-/

namespace A241917.P7371192547941279130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1) - A001222 (A322865 (n + 1)).toNat

end

end A241917.P7371192547941279130

namespace A241917

/-- `A061395(n+1)-A001222(A322865(n+1))` -/
def P7371192547941279130.Spec : Prop :=
  ∀ n, P7371192547941279130.a n = A241917 (n + 1)

end A241917

/-! ## A241917.P16015348610128693649

`C(A241919(n+1), A325830(A053585(n+1)))`
-/

namespace A241917.P16015348610128693649
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A241919 (n + 1)).toNat (A325830 (A053585 (n + 1)).toNat).toNat

end

end A241917.P16015348610128693649

namespace A241917

/-- `C(A241919(n+1), A325830(A053585(n+1)))` -/
def P16015348610128693649.Spec : Prop :=
  ∀ n, (P16015348610128693649.a n : ℤ) = A241917 (n + 1)

end A241917

/-! ## A241917.P414122113970189193

`A056239(n+1)-A056239(A322865(n+1))`
-/

namespace A241917.P414122113970189193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) - A056239 (A322865 (n + 1)).toNat

end

end A241917.P414122113970189193

namespace A241917

/-- `A056239(n+1)-A056239(A322865(n+1))` -/
def P414122113970189193.Spec : Prop :=
  ∀ n, P414122113970189193.a n = A241917 (n + 1)

end A241917

/-! ## A241917.P16531244455072998510

`A061395(n+1)-A061395(A331188(n+1))`
-/

namespace A241917.P16531244455072998510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1) - A061395 (A331188 (n + 1)).toNat

end

end A241917.P16531244455072998510

namespace A241917

/-- `A061395(n+1)-A061395(A331188(n+1))` -/
def P16531244455072998510.Spec : Prop :=
  ∀ n, P16531244455072998510.a n = A241917 (n + 1)

end A241917

/-! ## A241917.P11594096637407469089

`A322813(A129598(n+1))/A322813(n+1)-1`
-/

namespace A241917.P11594096637407469089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322813 (A129598 (n + 1)).toNat : ℚ) / (A322813 (n + 1) : ℚ) - 1

end

end A241917.P11594096637407469089

namespace A241917

/-- `A322813(A129598(n+1))/A322813(n+1)-1` -/
def P11594096637407469089.Spec : Prop :=
  ∀ n, P11594096637407469089.a n = (A241917 (n + 1) : ℚ)

end A241917

/-! ## A241917.P4083223244906659449

`A322813(A253560(n+1))/A322813(n+1)-1`
-/

namespace A241917.P4083223244906659449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322813 (A253560 (n + 1)).toNat : ℚ) / (A322813 (n + 1) : ℚ) - 1

end

end A241917.P4083223244906659449

namespace A241917

/-- `A322813(A253560(n+1))/A322813(n+1)-1` -/
def P4083223244906659449.Spec : Prop :=
  ∀ n, P4083223244906659449.a n = (A241917 (n + 1) : ℚ)

end A241917

/-! ## A241917.P13695289930662416149

`A322813(A050399(n+1))/A322813(n+1)-1`
-/

namespace A241917.P13695289930662416149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322813 (A050399 (n + 1)).toNat : ℚ) / (A322813 (n + 1) : ℚ) - 1

end

end A241917.P13695289930662416149

namespace A241917

/-- `A322813(A050399(n+1))/A322813(n+1)-1` -/
def P13695289930662416149.Spec : Prop :=
  ∀ n, P13695289930662416149.a n = (A241917 (n + 1) : ℚ)

end A241917

/-!
# A241918: Table of partitions where the ordering is based on the modified partial sums of the exponents of primes in the prime factorization of n.

The programs for A241918, there is no canonical definition to state claims against.
-/

/-! ## A241918.P2228392314774300122

`∑{e}[A241920(n+1), gcd(#, A128528(n+1))]`
-/

namespace A241918.P2228392314774300122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241920 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Int.gcd (Nat.factorization (f1 n).natAbs p : ℤ) (A128528 (n + 1))

end

end A241918.P2228392314774300122

/-!
# A241919: If n is a prime power, p_i^e, a(n) = i, (with a(1)=0), otherwise difference (i-j) of the indices of the two largest distinct primes p_i, p_j, i > j in the prime factorization of n: a(n) = A061395(n) - A061395(A051119(n)).

The programs for A241919, the canonical program `A241919.P9906273863327780640` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241919 has offset 1).

The definition of A241919 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051119, A061395, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A241919.P9906273863327780640

`A061395(n+1)-A061395(A051119(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A241919

/-- `A061395(n+1)-A061395(A051119(n+1))` -/
def P9906273863327780640.Spec : Prop :=
  ∀ n, P9906273863327780640.a n = A241919 (n + 1)

theorem P9906273863327780640.correct : P9906273863327780640.Spec := by
  intro n
  simp only [A241919, Nat.add_sub_cancel]

end A241919

/-! ## A241919.P3108076759739015434

`A241917(∏{p}[n+1, #])`
-/

namespace A241919.P3108076759739015434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241917 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A241919.P3108076759739015434

namespace A241919

/-- `A241917(∏{p}[n+1, #])` -/
def P3108076759739015434.Spec : Prop :=
  ∀ n, P3108076759739015434.a n = A241919 (n + 1)

end A241919

/-! ## A241919.P6722196717111730740

`A241917(A007947(n+1))`
-/

namespace A241919.P6722196717111730740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241917 (A007947 (n + 1)).toNat

end

end A241919.P6722196717111730740

namespace A241919

/-- `A241917(A007947(n+1))` -/
def P6722196717111730740.Spec : Prop :=
  ∀ n, P6722196717111730740.a n = A241919 (n + 1)

end A241919

/-! ## A241919.P7812002918547973866

`A241917(A243074(n+1))`
-/

namespace A241919.P7812002918547973866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241917 (A243074 (n + 1)).toNat

end

end A241919.P7812002918547973866

namespace A241919

/-- `A241917(A243074(n+1))` -/
def P7812002918547973866.Spec : Prop :=
  ∀ n, P7812002918547973866.a n = A241919 (n + 1)

end A241919

/-! ## A241919.P1659056775125376087

`A297109(n+1)+A242411(n+1)`
-/

namespace A241919.P1659056775125376087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297109 (n + 1) + A242411 (n + 1)

end

end A241919.P1659056775125376087

namespace A241919

/-- `A297109(n+1)+A242411(n+1)` -/
def P1659056775125376087.Spec : Prop :=
  ∀ n, P1659056775125376087.a n = A241919 (n + 1)

end A241919

/-! ## A241919.P10649387916391473340

`A241917((n+1)/A003557(n+1))`
-/

namespace A241919.P10649387916391473340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241917 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A003557 (n + 1) : ℚ))).toNat

end

end A241919.P10649387916391473340

namespace A241919

/-- `A241917((n+1)/A003557(n+1))` -/
def P10649387916391473340.Spec : Prop :=
  ∀ n, P10649387916391473340.a n = A241919 (n + 1)

end A241919

/-! ## A241919.P11847886895606597414

`A242411(n+1)+A055396(A014963(n+1))`
-/

namespace A241919.P11847886895606597414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242411 (n + 1) + A055396 (A014963 (n + 1)).toNat

end

end A241919.P11847886895606597414

namespace A241919

/-- `A242411(n+1)+A055396(A014963(n+1))` -/
def P11847886895606597414.Spec : Prop :=
  ∀ n, P11847886895606597414.a n = A241919 (n + 1)

end A241919

/-! ## A241919.P9987712488870991168

`A061395(n+1)-A061395(A293810(n+1))`
-/

namespace A241919.P9987712488870991168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1) - A061395 (A293810 (n + 1)).toNat

end

end A241919.P9987712488870991168

namespace A241919

/-- `A061395(n+1)-A061395(A293810(n+1))` -/
def P9987712488870991168.Spec : Prop :=
  ∀ n, P9987712488870991168.a n = A241919 (n + 1)

end A241919

/-! ## A241919.P4306289438516412758

`val(A122111(∏{p}[n+1, #]), 2)`
-/

namespace A241919.P4306289438516412758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A122111 (∏ p ∈ Nat.primeFactors (f1 n), p)).toNat 2

end

end A241919.P4306289438516412758

namespace A241919

/-- `val(A122111(∏{p}[n+1, #]), 2)` -/
def P4306289438516412758.Spec : Prop :=
  ∀ n, (P4306289438516412758.a n : ℤ) = A241919 (n + 1)

end A241919

/-! ## A241919.P5764215196111618429

`A049084(A020639(A243057(n+1)))`
-/

namespace A241919.P5764215196111618429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A020639 (A243057 (n + 1)).toNat).toNat

end

end A241919.P5764215196111618429

namespace A241919

/-- `A049084(A020639(A243057(n+1)))` -/
def P5764215196111618429.Spec : Prop :=
  ∀ n, P5764215196111618429.a n = A241919 (n + 1)

end A241919

/-! ## A241919.P13942247767394768578

`A055396(A020639(A242415(n+1)))`
-/

namespace A241919.P13942247767394768578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A020639 (A242415 (n + 1)).toNat).toNat

end

end A241919.P13942247767394768578

namespace A241919

/-- `A055396(A020639(A242415(n+1)))` -/
def P13942247767394768578.Spec : Prop :=
  ∀ n, P13942247767394768578.a n = A241919 (n + 1)

end A241919

/-! ## A241919.P17927685390826612839

`A055396(A020639(A242420(n+1)))`
-/

namespace A241919.P17927685390826612839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A020639 (A242420 (n + 1)).toNat).toNat

end

end A241919.P17927685390826612839

namespace A241919

/-- `A055396(A020639(A242420(n+1)))` -/
def P17927685390826612839.Spec : Prop :=
  ∀ n, P17927685390826612839.a n = A241919 (n + 1)

end A241919

/-! ## A241919.P13568999161023842315

`A055396(A020639(A242419(n+1)))`
-/

namespace A241919.P13568999161023842315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A020639 (A242419 (n + 1)).toNat).toNat

end

end A241919.P13568999161023842315

namespace A241919

/-- `A055396(A020639(A242419(n+1)))` -/
def P13568999161023842315.Spec : Prop :=
  ∀ n, P13568999161023842315.a n = A241919 (n + 1)

end A241919

/-! ## A241919.P3405736278611007704

`A055396(A242415(n+1))`
-/

namespace A241919.P3405736278611007704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A242415 (n + 1)).toNat

end

end A241919.P3405736278611007704

namespace A241919

/-- `A055396(A242415(n+1))` -/
def P3405736278611007704.Spec : Prop :=
  ∀ n, P3405736278611007704.a n = A241919 (n + 1)

end A241919

/-! ## A241919.P17923168161932448987

`A055396(A242420(n+1))`
-/

namespace A241919.P17923168161932448987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A242420 (n + 1)).toNat

end

end A241919.P17923168161932448987

namespace A241919

/-- `A055396(A242420(n+1))` -/
def P17923168161932448987.Spec : Prop :=
  ∀ n, P17923168161932448987.a n = A241919 (n + 1)

end A241919

/-! ## A241919.P5550488068327576941

`A055396(A243057(n+1))`
-/

namespace A241919.P5550488068327576941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A243057 (n + 1)).toNat

end

end A241919.P5550488068327576941

namespace A241919

/-- `A055396(A243057(n+1))` -/
def P5550488068327576941.Spec : Prop :=
  ∀ n, P5550488068327576941.a n = A241919 (n + 1)

end A241919

/-! ## A241919.P15649246454421958083

`A061395(n+1)-A243055(A243057(n+1))`
-/

namespace A241919.P15649246454421958083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1) - A243055 (A243057 (n + 1)).toNat

end

end A241919.P15649246454421958083

namespace A241919

/-- `A061395(n+1)-A243055(A243057(n+1))` -/
def P15649246454421958083.Spec : Prop :=
  ∀ n, P15649246454421958083.a n = A241919 (n + 1)

end A241919

/-! ## A241919.P4858196862274337678

`A241917(A071773((n+1)²))`
-/

namespace A241919.P4858196862274337678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241917 (A071773 ((n + 1) ^ 2)).toNat

end

end A241919.P4858196862274337678

namespace A241919

/-- `A241917(A071773((n+1)²))` -/
def P4858196862274337678.Spec : Prop :=
  ∀ n, P4858196862274337678.a n = A241919 (n + 1)

end A241919

/-! ## A241919.P5737944845129470427

`A241917(A015053(n+1)²)+A241917(A015053(n+1))`
-/

namespace A241919.P5737944845129470427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241917 (A015053 (n + 1) ^ 2).toNat + A241917 (A015053 (n + 1)).toNat

end

end A241919.P5737944845129470427

namespace A241919

/-- `A241917(A015053(n+1)²)+A241917(A015053(n+1))` -/
def P5737944845129470427.Spec : Prop :=
  ∀ n, P5737944845129470427.a n = A241919 (n + 1)

end A241919

/-!
# A241920: After a(1)=1, each n appears A061395(n) times, where A061395 gives the index of the largest prime factor of n.

The programs for A241920, the canonical program `A241920.P14941516816984529543` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241920 has offset 1).

The definition of A241920 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A241920.P14400809462474384217

`∑[char[n-A241914(n+1)]]`
-/

namespace A241920.P14400809462474384217
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A241914 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241920.P14400809462474384217

namespace A241920

/-- `∑[char[n-A241914(n+1)]]` -/
def P14400809462474384217.Spec : Prop :=
  ∀ n, (P14400809462474384217.a n : ℤ) = A241920 (n + 1)

end A241920

/-! ## A241920.P14941516816984529543

`∑[char[∑[A061395(n+1)]+1]]+1`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A241920

/-- `∑[char[∑[A061395(n+1)]+1]]+1` -/
def P14941516816984529543.Spec : Prop :=
  ∀ n, (P14941516816984529543.a n : ℤ) = A241920 (n + 1)

theorem P14941516816984529543.correct : P14941516816984529543.Spec := by
  intro n
  simp only [A241920, Nat.add_sub_cancel]

end A241920

/-! ## A241920.P6196040248695550764

`char[A061395(n)+a(n-1)]+a(n-1)` with `a(0)=1`
-/

namespace A241920.P6196040248695550764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A061395 n + f1 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + a (n - 1)

end

end A241920.P6196040248695550764

namespace A241920

/-- `char[A061395(n)+a(n-1)]+a(n-1)` -/
def P6196040248695550764.Spec : Prop :=
  ∀ n, (P6196040248695550764.a n : ℤ) = A241920 (n + 1)

end A241920

/-! ## A241920.P13048188794953023567

`∑[A008683(A241915(n+1)²)]`
-/

namespace A241920.P13048188794953023567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A241915 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241920.P13048188794953023567

namespace A241920

/-- `∑[A008683(A241915(n+1)²)]` -/
def P13048188794953023567.Spec : Prop :=
  ∀ n, P13048188794953023567.a n = A241920 (n + 1)

end A241920

/-! ## A241920.P2607436300955472474

`∑[1-A241915(n+2)%A241915(n+1)]`
-/

namespace A241920.P2607436300955472474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod (A241915 (n + 2)) (A241915 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241920.P2607436300955472474

namespace A241920

/-- `∑[1-A241915(n+2)%A241915(n+1)]` -/
def P2607436300955472474.Spec : Prop :=
  ∀ n, P2607436300955472474.a n = A241920 (n + 1)

end A241920

/-! ## A241920.P9241383921831785695

`∑[A129251(a(n-1)+1)^A309176(A241915(n+1)+1)]` with `a(0)=1`
-/

namespace A241920.P9241383921831785695
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (A129251 (SequenceMachineLib.roundAway (f1 (n - 1) + 1)).toNat : ℚ) ^ (A309176 (A241915 (n + 1) + 1).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241920.P9241383921831785695

namespace A241920

/-- `∑[A129251(a(n-1)+1)^A309176(A241915(n+1)+1)]` -/
def P9241383921831785695.Spec : Prop :=
  ∀ n, P9241383921831785695.a n = (A241920 (n + 1) : ℚ)

end A241920

/-! ## A241920.P8641511614156945649

`∑[A309176(a(n-1)+1)^A309176(A241915(n+1)+1)]` with `a(0)=1`
-/

namespace A241920.P8641511614156945649
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (A309176 (SequenceMachineLib.roundAway (f1 (n - 1) + 1)).toNat : ℚ) ^ (A309176 (A241915 (n + 1) + 1).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241920.P8641511614156945649

namespace A241920

/-- `∑[A309176(a(n-1)+1)^A309176(A241915(n+1)+1)]` -/
def P8641511614156945649.Spec : Prop :=
  ∀ n, P8641511614156945649.a n = (A241920 (n + 1) : ℚ)

end A241920

/-!
# A241926: Table read by antidiagonals: T(n,k) (n >= 1, k >= 1) is the number of necklaces with n black beads and k white beads.

The programs for A241926, there is no canonical definition to state claims against.
-/

/-! ## A241926.P2304403576020276429

`A037306(comp[∑[n]])`
-/

namespace A241926.P2304403576020276429
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037306 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A241926.P2304403576020276429

/-! ## A241926.P9944344909722156520

`A047996(lt[1, A007318(n)])`
-/

namespace A241926.P9944344909722156520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A241926.P9944344909722156520

/-! ## A241926.P13353620436117565841

`A047996(lt[1, A048004(n)])`
-/

namespace A241926.P13353620436117565841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048004 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A241926.P13353620436117565841

/-! ## A241926.P14770359187095815301

`A047996(lt[1, A157154(n)])`
-/

namespace A241926.P14770359187095815301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157154 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A241926.P14770359187095815301

/-! ## A241926.P12939706478344599119

`A047996(lt[1, A113582(n+1)])`
-/

namespace A241926.P12939706478344599119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113582 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A241926.P12939706478344599119

/-! ## A241926.P1711844728998089976

`A047996(lt[1, A139600(n+1)])`
-/

namespace A241926.P1711844728998089976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139600 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A241926.P1711844728998089976

/-! ## A241926.P990420220874057892

`A047996(lt[2, A048003(n+1)])`
-/

namespace A241926.P990420220874057892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048003 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A241926.P990420220874057892

/-! ## A241926.P17296320276787864398

`A047996(lt[1, A139600(n)]-1)`
-/

namespace A241926.P17296320276787864398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139600 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n - 1)

end

end A241926.P17296320276787864398

/-! ## A241926.P2627583335276802742

`A047996(2*A080036(n)-n)`
-/

namespace A241926.P2627583335276802742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 (2 * A080036 n - (n : ℤ)).toNat

end

end A241926.P2627583335276802742

/-! ## A241926.P4654237307884328820

`A047996(2*A014132(n+1)-n)`
-/

namespace A241926.P4654237307884328820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 (2 * A014132 (n + 1) - (n : ℤ)).toNat

end

end A241926.P4654237307884328820

/-! ## A241926.P6564714788133300341

`A047996(A014132(A014132(n+1)))`
-/

namespace A241926.P6564714788133300341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 (A014132 (A014132 (n + 1)).toNat).toNat

end

end A241926.P6564714788133300341

/-! ## A241926.P4020495016938462483

`A047996(A080036(A080036(n)-1))`
-/

namespace A241926.P4020495016938462483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 (A080036 (A080036 n - 1).toNat).toNat

end

end A241926.P4020495016938462483

/-! ## A241926.P13840468125650918640

`A047996(lt[n, A022168(n)]+1)`
-/

namespace A241926.P13840468125650918640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022168 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A241926.P13840468125650918640

/-! ## A241926.P14883274514287734026

`A047996(lt[1, A022168(n)])`
-/

namespace A241926.P14883274514287734026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022168 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A241926.P14883274514287734026

/-! ## A241926.P13288536814516102285

`A318810(A073060(n))`
-/

namespace A241926.P13288536814516102285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318810 (A073060 n).toNat

end

end A241926.P13288536814516102285

/-! ## A241926.P15949411453609522283

`A318810(A098350(n+1))`
-/

namespace A241926.P15949411453609522283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318810 (A098350 (n + 1)).toNat

end

end A241926.P15949411453609522283

/-!
# A241927: Smallest k^2>=1 such that n-k^2 is semiprime p*q in Fermi-Dirac arithmetic (A176525) with additional requirement that, if n is a square, then p and q are of the same parity; or a(n)=2 if there is no such k^2.

The programs for A241927, there is no canonical definition to state claims against.
-/

/-! ## A241927.P11633221235484445734

`A333429(∑[(-1)^(n%3)]!)+1`
-/

namespace A241927.P11633221235484445734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n % 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333429 (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j).toNat) + 1

end

end A241927.P11633221235484445734

/-! ## A241927.P5530001218675107703

`gcd(4, A241148(A176383(2*(n+2))))`
-/

namespace A241927.P5530001218675107703
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 (A241148 (A176383 (2 * (n + 2))).toNat)

end

end A241927.P5530001218675107703

/-! ## A241927.P354562894848648732

`A120025(A326443(∑[(-1)^(n%3)]²))`
-/

namespace A241927.P354562894848648732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n % 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120025 (A326443 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat).toNat

end

end A241927.P354562894848648732

/-! ## A241927.P12481816950524176746

`A315667(A326540(3*n+2))%4+1`
-/

namespace A241927.P12481816950524176746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A315667 (A326540 (3 * n + 2)).toNat) 4 + 1

end

end A241927.P12481816950524176746

/-! ## A241927.P3889283101605503299

`A051135(A000041(∑[(∑[n]+2)%3-1])!)`
-/

namespace A241927.P3889283101605503299
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f2 j + 2) % 3 : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051135 (Nat.factorial (A000041 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat)

end

end A241927.P3889283101605503299

/-!
# A241929: Number of inequivalent colorings of the Fano plane with n colors.

The programs for A241929, the canonical program `A241929.P5327861039733987282` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241929 has offset 1).

The definition of A241929 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A241929.P5327861039733987282

`(n+1)*((n+1)²+6)*((n+1)^4+15*(n+1)²+8)/168`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A241929

/-- `(n+1)*((n+1)²+6)*((n+1)^4+15*(n+1)²+8)/168` -/
def P5327861039733987282.Spec : Prop :=
  ∀ n, P5327861039733987282.a n = (A241929 (n + 1) : ℚ)

end A241929

/-!
# A241930: Number of length n+4 0..2 arrays with no consecutive five elements summing to more than 2*2.

The programs for A241930, there is no canonical definition to state claims against.
-/

/-! ## A241930.P469659698968474954

`A241936(∑[n+2])`
-/

namespace A241930.P469659698968474954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241936 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A241930.P469659698968474954

/-! ## A241930.P14496413665560554723

`record[A241936(A000096(A141256(n)))]`
-/

namespace A241930.P14496413665560554723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241936 (A000096 (A141256 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241930.P14496413665560554723

/-! ## A241930.P18378190101680536501

`record[A241936(A000096(A195663(n)))]`
-/

namespace A241930.P18378190101680536501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241936 (A000096 (A195663 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241930.P18378190101680536501

/-! ## A241930.P4739103210871863357

`record[A241936(A000096(A002260(n+1)))]`
-/

namespace A241930.P4739103210871863357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241936 (A000096 (A002260 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241930.P4739103210871863357

/-! ## A241930.P9802001626956981043

`record[A241936(A000096(A010766(n+1)))]`
-/

namespace A241930.P9802001626956981043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241936 (A000096 (A010766 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241930.P9802001626956981043

/-! ## A241930.P3120945903694694587

`record[A241936(A000096(A032742(n+1)))]`
-/

namespace A241930.P3120945903694694587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241936 (A000096 (A032742 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241930.P3120945903694694587

/-! ## A241930.P298243285980820508

`record[A241936(A000096(A319717(n+1)))]`
-/

namespace A241930.P298243285980820508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241936 (A000096 (A319717 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241930.P298243285980820508

/-!
# A241931: Number of length n+4 0..3 arrays with no consecutive five elements summing to more than 2*3.

The programs for A241931, there is no canonical definition to state claims against.
-/

/-! ## A241931.P5156440672473419233

`A241936(∑[n+3]+1)`
-/

namespace A241931.P5156440672473419233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241936 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A241931.P5156440672473419233

/-! ## A241931.P14589882302497546822

`or(A151878(n), A241936(A034856(n+2)))`
-/

namespace A241931.P14589882302497546822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A151878 n) (A241936 (A034856 (n + 2)).toNat)

end

end A241931.P14589882302497546822

/-! ## A241931.P10671221009775565400

`A241936(A034856(n+2))+A000007(n+1)`
-/

namespace A241931.P10671221009775565400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241936 (A034856 (n + 2)).toNat + A000007 (n + 1)

end

end A241931.P10671221009775565400

/-! ## A241931.P14365109554706125154

`A241936(A034856(n+2))+A008683(4*(n+1))`
-/

namespace A241931.P14365109554706125154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241936 (A034856 (n + 2)).toNat + A008683 (4 * (n + 1))

end

end A241931.P14365109554706125154

/-! ## A241931.P8969069954068732563

`A014963(A008458(n+1))*A241936(A034856(n+2))`
-/

namespace A241931.P8969069954068732563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A008458 (n + 1)).toNat * A241936 (A034856 (n + 2)).toNat

end

end A241931.P8969069954068732563

/-! ## A241931.P4987770809149185453

`A014963(A000217(n+4))*A241936(A034856(n+2))`
-/

namespace A241931.P4987770809149185453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000217 (n + 4)).toNat * A241936 (A034856 (n + 2)).toNat

end

end A241931.P4987770809149185453

/-! ## A241931.P9386227681526006324

`A014963(A110928(2*n+1))*A241936(A034856(n+2))`
-/

namespace A241931.P9386227681526006324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A110928 (2 * n + 1)).toNat * A241936 (A034856 (n + 2)).toNat

end

end A241931.P9386227681526006324

/-!
# A241932: Number of length n+4 0..4 arrays with no consecutive five elements summing to more than 2*4.

The programs for A241932, there is no canonical definition to state claims against.
-/

/-! ## A241932.P16945568678218206758

`A241936(A027379(n+2))`
-/

namespace A241932.P16945568678218206758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241936 (A027379 (n + 2)).toNat

end

end A241932.P16945568678218206758

/-! ## A241932.P10746698729139596834

`A241936(A055998(n+2))`
-/

namespace A241932.P10746698729139596834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241936 (A055998 (n + 2)).toNat

end

end A241932.P10746698729139596834

/-! ## A241932.P14640274895023431070

`A241936(A155212(n)+5)`
-/

namespace A241932.P14640274895023431070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241936 (A155212 n + 5).toNat

end

end A241932.P14640274895023431070

/-! ## A241932.P2453481176159179613

`A241936(Δ[A034857(n+1)])`
-/

namespace A241932.P2453481176159179613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241936 (f1 (n + 1) - f1 n).toNat

end

end A241932.P2453481176159179613

/-! ## A241932.P977695518074374842

`A241936(A052905(n+1)+2)`
-/

namespace A241932.P977695518074374842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241936 (A052905 (n + 1) + 2).toNat

end

end A241932.P977695518074374842

/-! ## A241932.P6893456977670220977

`A241936(A000124(n+4)-4)`
-/

namespace A241932.P6893456977670220977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241936 (A000124 (n + 4) - 4).toNat

end

end A241932.P6893456977670220977

/-! ## A241932.P14702280232421394428

`A241936(A167614(n+1)+Δ[n²])`
-/

namespace A241932.P14702280232421394428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241936 (A167614 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A241932.P14702280232421394428

/-! ## A241932.P1380286896046681846

`A241936(A167499(n)+A016777(n))`
-/

namespace A241932.P1380286896046681846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241936 (A167499 n + A016777 n).toNat

end

end A241932.P1380286896046681846

/-! ## A241932.P11152466588350693668

`A241936(A034856(n+1)+A020739(n))`
-/

namespace A241932.P11152466588350693668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241936 (A034856 (n + 1) + A020739 n).toNat

end

end A241932.P11152466588350693668

/-!
# A241933: Number of length n+4 0..5 arrays with no consecutive five elements summing to more than 2*5.

The programs for A241933, there is no canonical definition to state claims against.
-/

/-! ## A241933.P12560988570265972865

`A241936(Δ[A264443(n)])`
-/

namespace A241933.P12560988570265972865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241936 (f1 (n + 1) - f1 n).toNat

end

end A241933.P12560988570265972865

/-! ## A241933.P12540043000182744551

`A241936(A046691(n+3))`
-/

namespace A241933.P12540043000182744551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241936 (A046691 (n + 3)).toNat

end

end A241933.P12540043000182744551

/-! ## A241933.P4108346411376262853

`A241936(Δ[A023545(n+1)])`
-/

namespace A241933.P4108346411376262853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241936 (f1 (n + 1) - f1 n).toNat

end

end A241933.P4108346411376262853

/-! ## A241933.P7178535542357895092

`A241936(A000217(n+5)-4)`
-/

namespace A241933.P7178535542357895092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241936 (A000217 (n + 5) - 4).toNat

end

end A241933.P7178535542357895092

/-! ## A241933.P1925855029045295995

`A241936(A000124(n+5)-5)`
-/

namespace A241933.P1925855029045295995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241936 (A000124 (n + 5) - 5).toNat

end

end A241933.P1925855029045295995

/-! ## A241933.P10998085296734743276

`A241936(A161680(n+6)-4)`
-/

namespace A241933.P10998085296734743276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241936 (A161680 (n + 6) - 4).toNat

end

end A241933.P10998085296734743276

/-! ## A241933.P15157236598818438507

`A241936(Δ[A034857(n+2)]-1)`
-/

namespace A241933.P15157236598818438507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241936 (f1 (n + 1) - f1 n - 1).toNat

end

end A241933.P15157236598818438507

/-! ## A241933.P17169060892350081932

`A241936(A167614(n+3)+n-2)`
-/

namespace A241933.P17169060892350081932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241936 (A167614 (n + 3) + ((n : ℤ) - 2)).toNat

end

end A241933.P17169060892350081932

/-! ## A241933.P10049272230011083592

`A241936(A014132(Δ[A034857(n+1)]))`
-/

namespace A241933.P10049272230011083592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241936 (A014132 (f1 (n + 1) - f1 n).toNat).toNat

end

end A241933.P10049272230011083592

/-! ## A241933.P15396624174906659801

`A241936(A264443(n+1)-A264443(n))`
-/

namespace A241933.P15396624174906659801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241936 (A264443 (n + 1) - A264443 n).toNat

end

end A241933.P15396624174906659801

/-!
# A241934: Number of length n+4 0..6 arrays with no consecutive five elements summing to more than 2*6.

The programs for A241934, there is no canonical definition to state claims against.
-/

/-! ## A241934.P5986150414999918303

`A241936(A052905(n+3))`
-/

namespace A241934.P5986150414999918303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241936 (A052905 (n + 3)).toNat

end

end A241934.P5986150414999918303

/-! ## A241934.P6441259247953963341

`A241936(A055999(n+3)+1)`
-/

namespace A241934.P6441259247953963341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241936 (A055999 (n + 3) + 1).toNat

end

end A241934.P6441259247953963341

/-! ## A241934.P3843938198388191587

`A241936(Δ[Δ[A006504(n+1)]])`
-/

namespace A241934.P3843938198388191587
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241936 (f1 (n + 1) - f1 n).toNat

end

end A241934.P3843938198388191587

/-! ## A241934.P11259206930531300291

`A241936(Δ[A264443(n+1)]-1)`
-/

namespace A241934.P11259206930531300291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241936 (f1 (n + 1) - f1 n - 1).toNat

end

end A241934.P11259206930531300291

/-! ## A241934.P14233623898241089157

`A241936(Δ[A023545(n+2)]-1)`
-/

namespace A241934.P14233623898241089157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241936 (f1 (n + 1) - f1 n - 1).toNat

end

end A241934.P14233623898241089157

/-! ## A241934.P3458199908845662125

`A241936(A167499(n+3)+2*n+1)`
-/

namespace A241934.P3458199908845662125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241936 (A167499 (n + 3) + (2 * n + 1 : ℤ)).toNat

end

end A241934.P3458199908845662125

/-! ## A241934.P4466537332687085720

`A241936(A014132(Δ[A023545(n+1)]))`
-/

namespace A241934.P4466537332687085720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241936 (A014132 (f1 (n + 1) - f1 n).toNat).toNat

end

end A241934.P4466537332687085720

/-! ## A241934.P8539366915717207458

`A241936(A016777(2*n+5)+A000217(n))`
-/

namespace A241934.P8539366915717207458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241936 (A016777 (2 * n + 5) + A000217 n).toNat

end

end A241934.P8539366915717207458

/-!
# A241935: Number of length n+4 0..7 arrays with no consecutive five elements summing to more than 2*7.

The programs for A241935, there is no canonical definition to state claims against.
-/

/-! ## A241935.P4476044370328039792

`A241936(A055999(n+4))`
-/

namespace A241935.P4476044370328039792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241936 (A055999 (n + 4)).toNat

end

end A241935.P4476044370328039792

/-! ## A241935.P16000613724999633464

`A241936(A027379(n+5)-3)`
-/

namespace A241935.P16000613724999633464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241936 (A027379 (n + 5) - 3).toNat

end

end A241935.P16000613724999633464

/-! ## A241935.P4803230620330336750

`A241936(A055998(n+5)-3)`
-/

namespace A241935.P4803230620330336750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241936 (A055998 (n + 5) - 3).toNat

end

end A241935.P4803230620330336750

/-! ## A241935.P15906158659627153739

`A241936(A000124(n+7)-7)`
-/

namespace A241935.P15906158659627153739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241936 (A000124 (n + 7) - 7).toNat

end

end A241935.P15906158659627153739

/-! ## A241935.P11618673569908845642

`A241936(n+1+A000217(n+6))`
-/

namespace A241935.P11618673569908845642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241936 ((n + 1 : ℤ) + A000217 (n + 6)).toNat

end

end A241935.P11618673569908845642

/-! ## A241935.P16941941518318824351

`A241936(A209268(Δ[A158686(n)]))`
-/

namespace A241935.P16941941518318824351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158686 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241936 (A209268 (f1 (n + 1) - f1 n).toNat).toNat

end

end A241935.P16941941518318824351

/-!
# A241937: Number of length 1+4 0..n arrays with no consecutive five elements summing to more than 2*n.

The programs for A241937, the canonical program `A241937.P14061841482093411935` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241937 has offset 1).

The definition of A241937 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A241937.P14061841482093411935

`A108674(n+1)+A051877(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A241937

/-- `A108674(n+1)+A051877(n)` -/
def P14061841482093411935.Spec : Prop :=
  ∀ n, P14061841482093411935.a n = A241937 (n + 1)

theorem P14061841482093411935.correct : P14061841482093411935.Spec := by
  intro n
  simp only [A241937, Nat.add_sub_cancel]

end A241937

/-! ## A241937.P7324649184430484008

`A108674(n+1)+∑[A051740(n)]`
-/

namespace A241937.P7324649184430484008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051740 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108674 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241937.P7324649184430484008

namespace A241937

/-- `A108674(n+1)+∑[A051740(n)]` -/
def P7324649184430484008.Spec : Prop :=
  ∀ n, P7324649184430484008.a n = A241937 (n + 1)

end A241937

/-! ## A241937.P1278115930787966035

`A051877(n)+Δ[A001249(n)]`
-/

namespace A241937.P1278115930787966035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001249 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051877 n + (f1 (n + 1) - f1 n)

end

end A241937.P1278115930787966035

namespace A241937

/-- `A051877(n)+Δ[A001249(n)]` -/
def P1278115930787966035.Spec : Prop :=
  ∀ n, P1278115930787966035.a n = A241937 (n + 1)

end A241937

/-! ## A241937.P476842816020535757

`A179441(n+2)-A154286(n)`
-/

namespace A241937.P476842816020535757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179441 (n + 2) - A154286 n

end

end A241937.P476842816020535757

namespace A241937

/-- `A179441(n+2)-A154286(n)` -/
def P476842816020535757.Spec : Prop :=
  ∀ n, P476842816020535757.a n = A241937 (n + 1)

end A241937

/-! ## A241937.P4376209325319366094

`Δ[A001249(n)]+∑[A051740(n)]`
-/

namespace A241937.P4376209325319366094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001249 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051740 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A241937.P4376209325319366094

namespace A241937

/-- `Δ[A001249(n)]+∑[A051740(n)]` -/
def P4376209325319366094.Spec : Prop :=
  ∀ n, P4376209325319366094.a n = A241937 (n + 1)

end A241937

/-! ## A241937.P10989470026415121976

`Δ[A108649(n)]+∑[A005582(n)]`
-/

namespace A241937.P10989470026415121976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108649 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A241937.P10989470026415121976

namespace A241937

/-- `Δ[A108649(n)]+∑[A005582(n)]` -/
def P10989470026415121976.Spec : Prop :=
  ∀ n, P10989470026415121976.a n = A241937 (n + 1)

end A241937

/-! ## A241937.P13737410404542635956

`A000389(2*n+7)-5*A000389(n+5)`
-/

namespace A241937.P13737410404542635956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (2 * n + 7) - 5 * A000389 (n + 5)

end

end A241937.P13737410404542635956

namespace A241937

/-- `A000389(2*n+7)-5*A000389(n+5)` -/
def P13737410404542635956.Spec : Prop :=
  ∀ n, P13737410404542635956.a n = A241937 (n + 1)

end A241937

/-! ## A241937.P9771728166751057823

`A241936(∑[n]+1)`
-/

namespace A241937.P9771728166751057823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241936 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A241937.P9771728166751057823

namespace A241937

/-- `A241936(∑[n]+1)` -/
def P9771728166751057823.Spec : Prop :=
  ∀ n, P9771728166751057823.a n = A241937 (n + 1)

end A241937

/-! ## A241937.P4508784687619932987

`record[(2-A002260(n+1))*A241936(n+1)]`
-/

namespace A241937.P4508784687619932987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A002260 (n + 1)) * A241936 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241937.P4508784687619932987

namespace A241937

/-- `record[(2-A002260(n+1))*A241936(n+1)]` -/
def P4508784687619932987.Spec : Prop :=
  ∀ n, P4508784687619932987.a n = A241937 (n + 1)

end A241937

/-!
# A241938: Number of length 2+4 0..n arrays with no consecutive five elements summing to more than 2*n.

The programs for A241938, there is no canonical definition to state claims against.
-/

/-! ## A241938.P18345435373095779512

`A241936(∑[n+1]+2)`
-/

namespace A241938.P18345435373095779512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241936 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A241938.P18345435373095779512

/-! ## A241938.P3977711447782033658

`char[A025581(n)]*A241936(A167487(n)-5)`
-/

namespace A241938.P3977711447782033658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A241936 (A167487 n - 5).toNat

end

end A241938.P3977711447782033658

/-! ## A241938.P12574983742849634485

`A241936(A167487(n)-5)%A000302(n+5)`
-/

namespace A241938.P12574983742849634485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241936 (A167487 n - 5).toNat) (A000302 (n + 5))

end

end A241938.P12574983742849634485

/-! ## A241938.P346594780622387556

`A241936(A167487(n)-5)+char[A163562(n+1)]`
-/

namespace A241938.P346594780622387556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163562 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241936 (A167487 n - 5).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A241938.P346594780622387556

/-! ## A241938.P11451924767818133725

`A000005(gcd(n, n+1))*A241936(A167487(n)-5)`
-/

namespace A241938.P11451924767818133725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.gcd n (n + 1)) * A241936 (A167487 n - 5).toNat

end

end A241938.P11451924767818133725

/-! ## A241938.P1747829451007263153

`A008833(A005117(n+1))*A241936(A167487(n)-5)`
-/

namespace A241938.P1747829451007263153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (A005117 (n + 1)).toNat * A241936 (A167487 n - 5).toNat

end

end A241938.P1747829451007263153

/-! ## A241938.P14612493687207822128

`A241936(A167487(n)-5)^A001221(A001097(n+1))`
-/

namespace A241938.P14612493687207822128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241936 (A167487 n - 5).toNat : ℚ) ^ (A001221 (A001097 (n + 1)).toNat : ℤ)

end

end A241938.P14612493687207822128

/-! ## A241938.P7151821550077268877

`A241936(A167487(n)-5)^A001221(A006512(n+1))`
-/

namespace A241938.P7151821550077268877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241936 (A167487 n - 5).toNat : ℚ) ^ (A001221 (A006512 (n + 1)).toNat : ℤ)

end

end A241938.P7151821550077268877

/-!
# A241939: Number of length 3+4 0..n arrays with no consecutive five elements summing to more than 2*n.

The programs for A241939, there is no canonical definition to state claims against.
-/

/-! ## A241939.P4326722187342605048

`A241936(∑[n+2]+4)`
-/

namespace A241939.P4326722187342605048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241936 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A241939.P4326722187342605048

/-! ## A241939.P3050906087800718060

`(n%2)!*A241936(A167499(n)+n)`
-/

namespace A241939.P3050906087800718060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n % 2) : ℤ) * A241936 (A167499 n + (n : ℤ)).toNat

end

end A241939.P3050906087800718060

/-! ## A241939.P18374576533552217739

`A241936(A167614(n+1))%Δ[2*C(2*4^n, 2)]`
-/

namespace A241939.P18374576533552217739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (2 * 4 ^ n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241936 (A167614 (n + 1)).toNat) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A241939.P18374576533552217739

/-! ## A241939.P12463760327502565900

`or(A000007(n), A241936(A167614(n+1)))`
-/

namespace A241939.P12463760327502565900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A241936 (A167614 (n + 1)).toNat)

end

end A241939.P12463760327502565900

/-! ## A241939.P17295824014686444297

`or(A000038(n), A241936(A167614(n+1)))`
-/

namespace A241939.P17295824014686444297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A241936 (A167614 (n + 1)).toNat)

end

end A241939.P17295824014686444297

/-! ## A241939.P13522674056509551456

`A241936(A167614(n+1))+A000038(n+1)`
-/

namespace A241939.P13522674056509551456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241936 (A167614 (n + 1)).toNat + A000038 (n + 1)

end

end A241939.P13522674056509551456

/-! ## A241939.P1992980332382334418

`lcm(A008836(n+1), A241936(A167614(n+1)))`
-/

namespace A241939.P1992980332382334418
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (n + 1)) (A241936 (A167614 (n + 1)).toNat)

end

end A241939.P1992980332382334418

/-! ## A241939.P9414519855242300251

`A241936(A167499(n)+n)+A000007(n+1)`
-/

namespace A241939.P9414519855242300251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241936 (A167499 n + (n : ℤ)).toNat + A000007 (n + 1)

end

end A241939.P9414519855242300251

/-! ## A241939.P2866862576227254029

`A014963(A008458(n))*A241936(A167614(n+1))`
-/

namespace A241939.P2866862576227254029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A008458 n).toNat * A241936 (A167614 (n + 1)).toNat

end

end A241939.P2866862576227254029

/-!
# A241940: Number of length 4+4 0..n arrays with no consecutive five elements summing to more than 2*n.

The programs for A241940, there is no canonical definition to state claims against.
-/

/-! ## A241940.P6981385985244970662

`A241936(∑[n+3]+7)`
-/

namespace A241940.P6981385985244970662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241936 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A241940.P6981385985244970662

/-! ## A241940.P331981819589894151

`or(char[1], A241936(A052905(n)+9))`
-/

namespace A241940.P331981819589894151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A241936 (A052905 n + 9).toNat)

end

end A241940.P331981819589894151

/-! ## A241940.P308584927936100173

`char[A025480(n)]*A241936(A052905(n)+9)`
-/

namespace A241940.P308584927936100173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A241936 (A052905 n + 9).toNat

end

end A241940.P308584927936100173

/-! ## A241940.P9242960362692722388

`char[A108354(n)]*A241936(A052905(n)+9)`
-/

namespace A241940.P9242960362692722388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108354 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A241936 (A052905 n + 9).toNat

end

end A241940.P9242960362692722388

/-! ## A241940.P13728739813506018304

`lcm(A056594(2*n), A241936(A052905(n)+9))`
-/

namespace A241940.P13728739813506018304
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A056594 (2 * n)) (A241936 (A052905 n + 9).toNat)

end

end A241940.P13728739813506018304

/-! ## A241940.P13465326881969424785

`or(A241936(A052905(n)+9), A328981(n+1))`
-/

namespace A241940.P13465326881969424785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A241936 (A052905 n + 9).toNat) (A328981 (n + 1))

end

end A241940.P13465326881969424785

/-! ## A241940.P6415459612756779989

`A241936(A052905(n)+9)+A000078(C(2, n+2))`
-/

namespace A241940.P6415459612756779989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241936 (A052905 n + 9).toNat + A000078 (Nat.choose 2 (n + 2))

end

end A241940.P6415459612756779989

/-! ## A241940.P10693281928081429077

`A000009(C(2, n+2))*A241936(A052905(n)+9)`
-/

namespace A241940.P10693281928081429077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (Nat.choose 2 (n + 2)) * A241936 (A052905 n + 9).toNat

end

end A241940.P10693281928081429077

/-! ## A241940.P2845969896315753012

`A001222(A000923(n+1))*A241936(A052905(n)+9)`
-/

namespace A241940.P2845969896315753012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000923 (n + 1)).toNat * A241936 (A052905 n + 9).toNat

end

end A241940.P2845969896315753012

/-! ## A241940.P11205604509892395740

`A014963(A039832(n+1))*A241936(A052905(n)+9)`
-/

namespace A241940.P11205604509892395740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A039832 (n + 1)).toNat * A241936 (A052905 n + 9).toNat

end

end A241940.P11205604509892395740

/-!
# A241941: Number of length 5+4 0..n arrays with no consecutive five elements summing to more than 2*n.

The programs for A241941, there is no canonical definition to state claims against.
-/

/-! ## A241941.P18289878643027665101

`A241936(A167499(n+3))`
-/

namespace A241941.P18289878643027665101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241936 (A167499 (n + 3)).toNat

end

end A241941.P18289878643027665101

/-! ## A241941.P2454076733053547678

`A241936(A167614(n+3)+2)`
-/

namespace A241941.P2454076733053547678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241936 (A167614 (n + 3) + 2).toNat

end

end A241941.P2454076733053547678

/-! ## A241941.P9054694845453105360

`A241936(A000217(n+4)+5)`
-/

namespace A241941.P9054694845453105360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241936 (A000217 (n + 4) + 5).toNat

end

end A241941.P9054694845453105360

/-! ## A241941.P16503908315951835317

`A241936(A027379(n+2)+8)`
-/

namespace A241941.P16503908315951835317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241936 (A027379 (n + 2) + 8).toNat

end

end A241941.P16503908315951835317

/-! ## A241941.P6703938958088218624

`A241936(A161680(n+5)+5)`
-/

namespace A241941.P6703938958088218624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241936 (A161680 (n + 5) + 5).toNat

end

end A241941.P6703938958088218624

/-! ## A241941.P17523847792971258293

`A241936(A038722(Δ[A023545(n+1)]))`
-/

namespace A241941.P17523847792971258293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241936 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A241941.P17523847792971258293

/-!
# A241942: Number of length 6+4 0..n arrays with no consecutive five elements summing to more than 2*n.

The programs for A241942, there is no canonical definition to state claims against.
-/

/-! ## A241942.P13726006870557110509

`A241936(A167487(n+4)-1)`
-/

namespace A241942.P13726006870557110509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241936 (A167487 (n + 4) - 1).toNat

end

end A241942.P13726006870557110509

/-! ## A241942.P14850964454989050074

`A241936(A000217(n+5)+6)`
-/

namespace A241942.P14850964454989050074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241936 (A000217 (n + 5) + 6).toNat

end

end A241942.P14850964454989050074

/-! ## A241942.P6877770918444761551

`A241936(A161680(n+6)+6)`
-/

namespace A241942.P6877770918444761551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241936 (A161680 (n + 6) + 6).toNat

end

end A241942.P6877770918444761551

/-! ## A241942.P10647396010754185492

`A241936(A000124(n+6)-(n+1))`
-/

namespace A241942.P10647396010754185492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241936 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A241942.P10647396010754185492

/-! ## A241942.P7657532399477992516

`A241936(A055998(n+5)-A005843(n+2))`
-/

namespace A241942.P7657532399477992516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241936 (A055998 (n + 5) - A005843 (n + 2)).toNat

end

end A241942.P7657532399477992516

/-! ## A241942.P3419309757686954898

`A241936(A002620(n+2)+A002620(n+9))`
-/

namespace A241942.P3419309757686954898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241936 (A002620 (n + 2) + A002620 (n + 9)).toNat

end

end A241942.P3419309757686954898

/-!
# A241943: Number of length 7+4 0..n arrays with no consecutive five elements summing to more than 2*n.

The programs for A241943, there is no canonical definition to state claims against.
-/

/-! ## A241943.P16019460227883442456

`A241936(A167487(n+5))`
-/

namespace A241943.P16019460227883442456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241936 (A167487 (n + 5)).toNat

end

end A241943.P16019460227883442456

/-! ## A241943.P11869276433303362262

`A241936(A000217(n+6)+7)`
-/

namespace A241943.P11869276433303362262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241936 (A000217 (n + 6) + 7).toNat

end

end A241943.P11869276433303362262

/-! ## A241943.P7444263501061229511

`A241936(A161680(n+7)+7)`
-/

namespace A241943.P7444263501061229511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241936 (A161680 (n + 7) + 7).toNat

end

end A241943.P7444263501061229511

/-! ## A241943.P17368713524110936748

`A241936(A000124(n+7)-(n+1))`
-/

namespace A241943.P17368713524110936748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241936 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A241943.P17368713524110936748

/-! ## A241943.P9422718546802935086

`A241936(A055999(n+5)-A005843(n+1))`
-/

namespace A241943.P9422718546802935086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241936 (A055999 (n + 5) - A005843 (n + 1)).toNat

end

end A241943.P9422718546802935086

/-!
# A241944: Row sums of triangle A027420.

The programs for A241944, there is no canonical definition to state claims against.
-/

/-! ## A241944.P13297290994494120030

`∑[∑[A001223(A206485(n+2))]]`
-/

namespace A241944.P13297290994494120030
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A206485 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241944.P13297290994494120030

/-! ## A241944.P3911731166825863636

`∑[∑[A331308(A155279(n+4))]]`
-/

namespace A241944.P3911731166825863636
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331308 (A155279 (n + 4)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241944.P3911731166825863636

/-!
# A241945: Indices n where both prime(n) + 2*prime(n+1) and 2*prime(n) + prime(n+1) are primes.

The programs for A241945, there is no canonical definition to state claims against.
-/

/-! ## A241945.P10286862145575534307

`∩[A284091(n+1), A396898(n+1)]`
-/

namespace A241945.P10286862145575534307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396898 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A241945.P10286862145575534307

/-! ## A241945.P5210702450711904535

`A000720(A181848(n+1))`
-/

namespace A241945.P5210702450711904535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A181848 (n + 1)).toNat

end

end A241945.P5210702450711904535

/-! ## A241945.P7337366572495020172

`A061395(p?[A181848(n+1)])`
-/

namespace A241945.P7337366572495020172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181848 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A241945.P7337366572495020172

/-! ## A241945.P17570372903349196342

`A061395(or(1, A181848(n+1)))`
-/

namespace A241945.P17570372903349196342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 1 (A181848 (n + 1))).toNat

end

end A241945.P17570372903349196342

/-! ## A241945.P14673879971634606440

`∑{d}[A181848(n+1), A061395(#)]`
-/

namespace A241945.P14673879971634606440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181848 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A241945.P14673879971634606440

/-! ## A241945.P8812087929390210945

`A061395(∏{d}[A181848(n+1), #])`
-/

namespace A241945.P8812087929390210945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181848 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A241945.P8812087929390210945

/-! ## A241945.P9447812362129272976

`A061395(∑{p}[A181848(n+1), #])`
-/

namespace A241945.P9447812362129272976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181848 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A241945.P9447812362129272976

/-! ## A241945.P15517324340067991156

`A000720(p?[A181848(n-log2(1/2))])`
-/

namespace A241945.P15517324340067991156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181848 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A241945.P15517324340067991156

/-! ## A241945.P15171934111234538390

`A061395(A181848(n+1))%A090953(n)`
-/

namespace A241945.P15171934111234538390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061395 (A181848 (n + 1)).toNat) (A090953 n)

end

end A241945.P15171934111234538390

/-! ## A241945.P1016709823894925540

`A061395(A181848(n+1)%A256819(n+1))`
-/

namespace A241945.P1016709823894925540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.tmod (A181848 (n + 1)) (A256819 (n + 1))).toNat

end

end A241945.P1016709823894925540

/-! ## A241945.P9444126289019141989

`∩[A175893(n+1), A396898(n+1)]`
-/

namespace A241945.P9444126289019141989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396898 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A241945.P9444126289019141989

/-! ## A241945.P15801957282865728453

`A061395(2*A181848(n+1))`
-/

namespace A241945.P15801957282865728453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A181848 (n + 1)).toNat

end

end A241945.P15801957282865728453

/-! ## A241945.P14816682893312300756

`A061395(lcm(2, A181848(n+1)))`
-/

namespace A241945.P14816682893312300756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lcm 2 (A181848 (n + 1)))

end

end A241945.P14816682893312300756

/-! ## A241945.P15548562674799557494

`∩[A175893(n+1), A284091(n+1)]`
-/

namespace A241945.P15548562674799557494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A241945.P15548562674799557494

/-!
# A241946: Numbers n equal to the sum of all the four-digit numbers formed without repetition from the digits of n.

The programs for A241946, there is no canonical definition to state claims against.
-/

/-! ## A241946.P3991227140736876448

`A004086(A056524(n+10))`
-/

namespace A241946.P3991227140736876448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A056524 (n + 10)).toNat

end

end A241946.P3991227140736876448

/-! ## A241946.P911200381380723342

`A056524(A000194((n+10)²))`
-/

namespace A241946.P911200381380723342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056524 (A000194 ((n + 10) ^ 2)).toNat

end

end A241946.P911200381380723342

/-! ## A241946.P11397504637075272958

`A056524(A053615((n+10)²))`
-/

namespace A241946.P11397504637075272958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056524 (A053615 ((n + 10) ^ 2)).toNat

end

end A241946.P11397504637075272958

/-! ## A241946.P4021190268705812831

`A056524(A088226((n+11)²))`
-/

namespace A241946.P4021190268705812831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056524 (A088226 ((n + 11) ^ 2)).toNat

end

end A241946.P4021190268705812831

/-! ## A241946.P12698087463003603859

`A060000(A056524(n+10)+1)`
-/

namespace A241946.P12698087463003603859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060000 (A056524 (n + 10) + 1).toNat

end

end A241946.P12698087463003603859

/-! ## A241946.P4989572805589682816

`A262087(A056524(n+10)+1)`
-/

namespace A241946.P4989572805589682816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262087 (A056524 (n + 10) + 1).toNat

end

end A241946.P4989572805589682816

/-! ## A241946.P2270407693033180883

`A020725(A056524(n+10)-1)`
-/

namespace A241946.P2270407693033180883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A056524 (n + 10) - 1).toNat

end

end A241946.P2270407693033180883

/-!
# A241948: Number of possible representations of n as a sum of distinct positive integers from the Fibonacci-type sequences 0,1,1,2,3,5,8,13,... and 0,2,2,4,6,10,16,... (A000045 and A118658).

The programs for A241948, there is no canonical definition to state claims against.
-/

/-! ## A241948.P10180172857845821519

`A025787(A141213(A004273(n))+A029319(n))`
-/

namespace A241948.P10180172857845821519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025787 (A141213 (A004273 n).toNat + A029319 n).toNat

end

end A241948.P10180172857845821519

/-! ## A241948.P14289895559500001367

`a(n-1)+A141213(2*n)%A000119(n)` with `a(0)=1`
-/

namespace A241948.P14289895559500001367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A141213 (2 * n)) (A000119 n)

end

end A241948.P14289895559500001367

/-! ## A241948.P9199201481985672629

`A127035(n+1)+A126999(A347811(n))`
-/

namespace A241948.P9199201481985672629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127035 (n + 1) + A126999 (A347811 n).toNat

end

end A241948.P9199201481985672629

/-! ## A241948.P11457802676998418164

`A112310(xor(A053638(n+1), A358220(n)))`
-/

namespace A241948.P11457802676998418164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112310 (Int.xor (A053638 (n + 1)) (A358220 n)).toNat

end

end A241948.P11457802676998418164

/-!
# A241949: Number of possible representations of n as a sum of distinct positive integers from the Fibonacci-type sequences 0,1,1,2,3,5,8,13,... and 0,3,3,6,9,15,... (A000045 and A022086).

The programs for A241949, there is no canonical definition to state claims against.
-/

/-! ## A241949.P1249771053689243547

`A110592(A201204(2*n)%A006495(n))`
-/

namespace A241949.P1249771053689243547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110592 (Int.tmod (A201204 (2 * n)) (A006495 n)).toNat

end

end A241949.P1249771053689243547

/-! ## A241949.P16050123248777800459

`A357186(A365382(2*n+1)+A357135(3*n+4))`
-/

namespace A241949.P16050123248777800459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357186 (A365382 (2 * n + 1) + A357135 (3 * n + 4)).toNat

end

end A241949.P16050123248777800459

/-! ## A241949.P5207050860622947111

`A007895(A219642(A219648(A179016(A000045(n+1)))))`
-/

namespace A241949.P5207050860622947111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A219642 (A219648 (A179016 (A000045 (n + 1)).toNat).toNat).toNat).toNat

end

end A241949.P5207050860622947111

/-! ## A241949.P6673367353505736994

`A331553(p?[A067330(n)])`
-/

namespace A241949.P6673367353505736994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331553 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A241949.P6673367353505736994

/-! ## A241949.P2175332910200623465

`A060130(ceil(sqrt(A001120(n))))`
-/

namespace A241949.P2175332910200623465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 ⌈Real.sqrt (A001120 n : ℝ)⌉.toNat

end

end A241949.P2175332910200623465

/-!
# A241951: Number of possible representations of n as a sum of distinct positive integers from the Fibonacci and Lucas sequences 0,1,1,2,3,5,8,13,... and 2,1,3,4,7,11,... (A000045 and A000032).

The programs for A241951, there is no canonical definition to state claims against.
-/

/-! ## A241951.P13458510332223126201

`A127038(n+1)+A126305(A147457(n+1))`
-/

namespace A241951.P13458510332223126201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127038 (n + 1) + A126305 (A147457 (n + 1)).toNat

end

end A241951.P13458510332223126201

/-!
# A241953: Number of possible representations of n as a sum of distinct positive integers from the Fibonacci-type sequences 2,1,3,4,7,11,... and 0,3,3,6,9,15,... (A000032 and A022086).

The programs for A241953, there is no canonical definition to state claims against.
-/

/-! ## A241953.P1038419264962338936

`A014506(A014529(n+1))+A004523(n)`
-/

namespace A241953.P1038419264962338936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014506 (A014529 (n + 1)).toNat + A004523 n

end

end A241953.P1038419264962338936

/-!
# A241954: Number of integers x such that the repeated application of sigma(x)->x leads to n.

The programs for A241954, there is no canonical definition to state claims against.
-/

/-! ## A241954.P9485268963810460995

`A257669(n+1)+A057428(n)`
-/

namespace A241954.P9485268963810460995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257669 (n + 1) + A057428 n

end

end A241954.P9485268963810460995

/-! ## A241954.P16014772966317908842

`A257669(n+1)-A057427(n)`
-/

namespace A241954.P16014772966317908842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257669 (n + 1) - A057427 n

end

end A241954.P16014772966317908842

/-! ## A241954.P17642397404476232042

`A257669(n+1)-A059841(A004016(n))`
-/

namespace A241954.P17642397404476232042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257669 (n + 1) - A059841 (A004016 n).toNat

end

end A241954.P17642397404476232042

/-! ## A241954.P11576618419680966178

`A257669(n+1)-A257990(A001316(n))`
-/

namespace A241954.P11576618419680966178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257669 (n + 1) - A257990 (A001316 n).toNat

end

end A241954.P11576618419680966178

/-! ## A241954.P3997899490036472947

`A257669(n+1)-A257696(A257686(n))`
-/

namespace A241954.P3997899490036472947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257669 (n + 1) - A257696 (A257686 n).toNat

end

end A241954.P3997899490036472947

/-! ## A241954.P16657591619226937027

`A257669(n+1)-A115716(A115716(a(n-1)))` with `a(0)=1`
-/

namespace A241954.P16657591619226937027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A257669 (n + 1) - A115716 (A115716 (a (n - 1)).toNat).toNat

end

end A241954.P16657591619226937027

/-! ## A241954.P5030401492969001485

`A257669(n+1)-A257669(A002264(a(n-1))²+1)` with `a(0)=1`
-/

namespace A241954.P5030401492969001485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A257669 (n + 1) - A257669 (A002264 (a (n - 1)).toNat ^ 2 + 1).toNat

end

end A241954.P5030401492969001485

/-! ## A241954.P15013251305925556261

`A257669(n+1)-A257669(A257669(a(n-1)+1)²+1)` with `a(0)=1`
-/

namespace A241954.P15013251305925556261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A257669 (n + 1) - A257669 (A257669 (a (n - 1) + 1).toNat ^ 2 + 1).toNat

end

end A241954.P15013251305925556261

/-! ## A241954.P14966633241915617026

`A257669(n+1)-A001221(A000005(A000005(a(n-1)+1)+1))` with `a(0)=1`
-/

namespace A241954.P14966633241915617026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A257669 (n + 1) - A001221 (A000005 (A000005 (a (n - 1) + 1).toNat + 1).toNat).toNat

end

end A241954.P14966633241915617026

/-! ## A241954.P16372087232082747028

`A257669(n+1)-A001222(A008578(n+1))`
-/

namespace A241954.P16372087232082747028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257669 (n + 1) - A001222 (A008578 (n + 1)).toNat

end

end A241954.P16372087232082747028

/-! ## A241954.P4952692469841619444

`A257669(n+1)-A276950(A219697(n+1))`
-/

namespace A241954.P4952692469841619444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257669 (n + 1) - A276950 (A219697 (n + 1)).toNat

end

end A241954.P4952692469841619444

/-!
# A241955: a(n) = 2^(4*n+3) - 1.

The programs for A241955, the canonical program `A241955.P4615725418822313160` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241955 has offset 0).

The definition of A241955 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(4*n+3)-1` (program `A241955.P4615725418822313160`, by `A241955.P4615725418822313160.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A241955.P4615725418822313160

`2^(4*n+3)-1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A241955

/-- `2^(4*n+3)-1` -/
def P4615725418822313160.Spec : Prop :=
  ∀ n, P4615725418822313160.a n = A241955 n

theorem P4615725418822313160.correct : P4615725418822313160.Spec := by
  intro n
  simp only [A241955]

end A241955

/-! ## A241955.P15906538374811324923

`A000225(4*n+3)`
-/

namespace A241955.P15906538374811324923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (4 * n + 3)

end

end A241955.P15906538374811324923

namespace A241955

/-- `A000225(4*n+3)` -/
def P15906538374811324923.Spec : Prop :=
  ∀ n, P15906538374811324923.a n = A241955 n

end A241955

/-! ## A241955.P8632454122171376329

`record[2^xor(3, n)-1]`
-/

namespace A241955.P8632454122171376329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ Nat.xor 3 n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241955.P8632454122171376329

namespace A241955

/-- `record[2^xor(3, n)-1]` -/
def P8632454122171376329.Spec : Prop :=
  ∀ n, P8632454122171376329.a n = A241955 n

end A241955

/-! ## A241955.P2124606416029398280

`or(15, 16*a(n-1))` with `a(0)=7`
-/

namespace A241955.P2124606416029398280
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7] fun n a =>
  Nat.lor 15 (16 * a (n - 1))

end

end A241955.P2124606416029398280

namespace A241955

/-- `or(15, 16*a(n-1))` -/
def P2124606416029398280.Spec : Prop :=
  ∀ n, (P2124606416029398280.a n : ℤ) = A241955 n

end A241955

/-! ## A241955.P1713663979839577605

`xor(15, 16*a(n-1))` with `a(0)=7`
-/

namespace A241955.P1713663979839577605
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7] fun n a =>
  Nat.xor 15 (16 * a (n - 1))

end

end A241955.P1713663979839577605

namespace A241955

/-- `xor(15, 16*a(n-1))` -/
def P1713663979839577605.Spec : Prop :=
  ∀ n, (P1713663979839577605.a n : ℤ) = A241955 n

end A241955

/-! ## A241955.P2738235162021625992

`or(15, a(n-1)/(1/4)²)` with `a(0)=7`
-/

namespace A241955.P2738235162021625992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  Int.lor 15 (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / ((1 : ℚ) / 4) ^ 2))

end

end A241955.P2738235162021625992

namespace A241955

/-- `or(15, a(n-1)/(1/4)²)` -/
def P2738235162021625992.Spec : Prop :=
  ∀ n, P2738235162021625992.a n = A241955 n

end A241955

/-! ## A241955.P14964513632664805324

`xor(15, a(n-1)/(1/4)²)` with `a(0)=7`
-/

namespace A241955.P14964513632664805324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  Int.xor 15 (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / ((1 : ℚ) / 4) ^ 2))

end

end A241955.P14964513632664805324

namespace A241955

/-- `xor(15, a(n-1)/(1/4)²)` -/
def P14964513632664805324.Spec : Prop :=
  ∀ n, P14964513632664805324.a n = A241955 n

end A241955

/-! ## A241955.P10867713111919179293

`floor(∑[Δ[16*a(n-1)]/2])` with `a(0)=1`
-/

namespace A241955.P10867713111919179293
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  16 * f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A241955.P10867713111919179293

namespace A241955

/-- `floor(∑[Δ[16*a(n-1)]/2])` -/
def P10867713111919179293.Spec : Prop :=
  ∀ n, P10867713111919179293.a n = A241955 n

end A241955

/-! ## A241955.P15368817827596398846

`A083420(Δ[n²])`
-/

namespace A241955.P15368817827596398846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083420 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A241955.P15368817827596398846

namespace A241955

/-- `A083420(Δ[n²])` -/
def P15368817827596398846.Spec : Prop :=
  ∀ n, P15368817827596398846.a n = A241955 n

end A241955

/-!
# A241956: Number of inequivalent m X n binary matrices, where equivalence means permutations of rows or columns. Presented in diagonal order, with (m,n) = (1,1), (1,2), (2,1), (1,3), (2,2), (3,1), ... .

The programs for A241956, there is no canonical definition to state claims against.
-/

/-! ## A241956.P4857160961571398413

`A028657(eq[0, A103451(n)])`
-/

namespace A241956.P4857160961571398413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028657 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241956.P4857160961571398413

/-! ## A241956.P562297913201601525

`A028657(eq[0, A103452(n)])`
-/

namespace A241956.P562297913201601525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028657 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241956.P562297913201601525

/-! ## A241956.P1514576213270529842

`A028657(eq[0, A145677(n)])`
-/

namespace A241956.P1514576213270529842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145677 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028657 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241956.P1514576213270529842

/-! ## A241956.P5344978453086074127

`A028657(eq[0, A158821(n)])`
-/

namespace A241956.P5344978453086074127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158821 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028657 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241956.P5344978453086074127

/-! ## A241956.P16532507231177597592

`A028657(lt[1, A028657(n)])`
-/

namespace A241956.P16532507231177597592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028657 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A241956.P16532507231177597592

/-! ## A241956.P15093338335327707689

`A028657(eq[n, A316669(n+1)])`
-/

namespace A241956.P15093338335327707689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316669 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028657 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241956.P15093338335327707689

/-! ## A241956.P16533181880558899779

`A028657(2*A014132(n+1)-n)`
-/

namespace A241956.P16533181880558899779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028657 (2 * A014132 (n + 1) - (n : ℤ)).toNat

end

end A241956.P16533181880558899779

/-! ## A241956.P14181862129636752761

`A028657(A014132(A014132(n+1)))`
-/

namespace A241956.P14181862129636752761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028657 (A014132 (A014132 (n + 1)).toNat).toNat

end

end A241956.P14181862129636752761

/-! ## A241956.P8460523661640006143

`A028657(eq[A014473(n), A132044(n)])`
-/

namespace A241956.P8460523661640006143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028657 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A241956.P8460523661640006143

/-! ## A241956.P2323685374975302875

`A028657(A140978(n+1)-n)`
-/

namespace A241956.P2323685374975302875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028657 (A140978 (n + 1) - (n : ℤ)).toNat

end

end A241956.P2323685374975302875

/-!
# A241957: Rectangular array A read by upward antidiagonals in which the entry in row n and column k is defined by A(n,k) = 2^n*(2*k - 1) - 1, n,k >= 1.

The programs for A241957, the canonical program `A241957.P141546297856735390` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241957 has offset 1).

The definition of A241957 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A241957.P141546297856735390

`2*A075300(n)+1`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A241957

/-- `2*A075300(n)+1` -/
def P141546297856735390.Spec : Prop :=
  ∀ n, P141546297856735390.a n = A241957 (n + 1)

theorem P141546297856735390.correct : P141546297856735390.Spec := by
  intro n
  simp only [A241957, Nat.add_sub_cancel]

end A241957

/-! ## A241957.P10582187478740340861

`2*A054582(n)-1`
-/

namespace A241957.P10582187478740340861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054582 n - 1

end

end A241957.P10582187478740340861

namespace A241957

/-- `2*A054582(n)-1` -/
def P10582187478740340861.Spec : Prop :=
  ∀ n, P10582187478740340861.a n = A241957 (n + 1)

end A241957

/-! ## A241957.P7037436485996635504

`2*A288870(n)-3`
-/

namespace A241957.P7037436485996635504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A288870 n - 3

end

end A241957.P7037436485996635504

namespace A241957

/-- `2*A288870(n)-3` -/
def P7037436485996635504.Spec : Prop :=
  ∀ n, P7037436485996635504.a n = A241957 (n + 1)

end A241957

/-! ## A241957.P10783086715420201169

`floor(sinh(log(A257791(n+1))))`
-/

namespace A241957.P10783086715420201169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh (Real.log (A257791 (n + 1) : ℝ))⌋

end

end A241957.P10783086715420201169

namespace A241957

/-- `floor(sinh(log(A257791(n+1))))` -/
def P10783086715420201169.Spec : Prop :=
  ∀ n, P10783086715420201169.a n = A241957 (n + 1)

end A241957

/-! ## A241957.P5517002599097168115

`(A257791((3*n-n)/2+1)-2)/2`
-/

namespace A241957.P5517002599097168115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257791 (SequenceMachineLib.roundAway (((3 * n : ℤ) - (n : ℤ) : ℚ) / 2 + 1)).toNat - 2 : ℚ) / 2

end

end A241957.P5517002599097168115

namespace A241957

/-- `(A257791((3*n-n)/2+1)-2)/2` -/
def P5517002599097168115.Spec : Prop :=
  ∀ n, P5517002599097168115.a n = (A241957 (n + 1) : ℚ)

end A241957

/-! ## A241957.P2048176034223624037

`A075300(A007401(n+1))`
-/

namespace A241957.P2048176034223624037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075300 (A007401 (n + 1)).toNat

end

end A241957.P2048176034223624037

namespace A241957

/-- `A075300(A007401(n+1))` -/
def P2048176034223624037.Spec : Prop :=
  ∀ n, P2048176034223624037.a n = A241957 (n + 1)

end A241957

/-! ## A241957.P11605328540784790937

`A075300(n)+A054582(n)`
-/

namespace A241957.P11605328540784790937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075300 n + A054582 n

end

end A241957.P11605328540784790937

namespace A241957

/-- `A075300(n)+A054582(n)` -/
def P11605328540784790937.Spec : Prop :=
  ∀ n, P11605328540784790937.a n = A241957 (n + 1)

end A241957

/-! ## A241957.P13070856495751542719

`2*A135764(A038722(n+1))-1`
-/

namespace A241957.P13070856495751542719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A135764 (A038722 (n + 1)).toNat - 1

end

end A241957.P13070856495751542719

namespace A241957

/-- `2*A135764(A038722(n+1))-1` -/
def P13070856495751542719.Spec : Prop :=
  ∀ n, P13070856495751542719.a n = A241957 (n + 1)

end A241957

/-! ## A241957.P17337750909481927109

`2*A130321(n)*A158405(n+1)-1`
-/

namespace A241957.P17337750909481927109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A130321 n * A158405 (n + 1)) - 1

end

end A241957.P17337750909481927109

namespace A241957

/-- `2*A130321(n)*A158405(n+1)-1` -/
def P17337750909481927109.Spec : Prop :=
  ∀ n, P17337750909481927109.a n = A241957 (n + 1)

end A241957

/-! ## A241957.P9428863801172231499

`A008683(A007918(n))+2*A054582(n)`
-/

namespace A241957.P9428863801172231499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A007918 n).toNat + 2 * A054582 n

end

end A241957.P9428863801172231499

namespace A241957

/-- `A008683(A007918(n))+2*A054582(n)` -/
def P9428863801172231499.Spec : Prop :=
  ∀ n, P9428863801172231499.a n = A241957 (n + 1)

end A241957

/-! ## A241957.P14977330473029194018

`A008683(A151800(n))+2*A054582(n)`
-/

namespace A241957.P14977330473029194018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A151800 n).toNat + 2 * A054582 n

end

end A241957.P14977330473029194018

namespace A241957

/-- `A008683(A151800(n))+2*A054582(n)` -/
def P14977330473029194018.Spec : Prop :=
  ∀ n, P14977330473029194018.a n = A241957 (n + 1)

end A241957

/-! ## A241957.P1465303095667526997

`A054582(n)+xor(A054582(n), A130330(n))`
-/

namespace A241957.P1465303095667526997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054582 n + Int.xor (A054582 n) (A130330 n)

end

end A241957.P1465303095667526997

namespace A241957

/-- `A054582(n)+xor(A054582(n), A130330(n))` -/
def P1465303095667526997.Spec : Prop :=
  ∀ n, P1465303095667526997.a n = A241957 (n + 1)

end A241957

/-! ## A241957.P3507294025295814526

`A075300(n)+xor(A075300(n), A130330(n))`
-/

namespace A241957.P3507294025295814526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075300 n + Int.xor (A075300 n) (A130330 n)

end

end A241957.P3507294025295814526

namespace A241957

/-- `A075300(n)+xor(A075300(n), A130330(n))` -/
def P3507294025295814526.Spec : Prop :=
  ∀ n, P3507294025295814526.a n = A241957 (n + 1)

end A241957

/-! ## A241957.P172498052932979844

`A054582(n)+A054582(n)-A037227(A037227(n+1))`
-/

namespace A241957.P172498052932979844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054582 n + (A054582 n - A037227 (A037227 (n + 1)).toNat)

end

end A241957.P172498052932979844

namespace A241957

/-- `A054582(n)+A054582(n)-A037227(A037227(n+1))` -/
def P172498052932979844.Spec : Prop :=
  ∀ n, P172498052932979844.a n = A241957 (n + 1)

end A241957

/-! ## A241957.P14793094799488361695

`A054582(lt[1, A099375(n)])-1`
-/

namespace A241957.P14793094799488361695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054582 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) - 1

end

end A241957.P14793094799488361695

namespace A241957

/-- `A054582(lt[1, A099375(n)])-1` -/
def P14793094799488361695.Spec : Prop :=
  ∀ n, P14793094799488361695.a n = A241957 (n + 1)

end A241957

/-! ## A241957.P1693521182379828593

`A054582(lt[1, A130321(n)])-1`
-/

namespace A241957.P1693521182379828593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054582 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) - 1

end

end A241957.P1693521182379828593

namespace A241957

/-- `A054582(lt[1, A130321(n)])-1` -/
def P1693521182379828593.Spec : Prop :=
  ∀ n, P1693521182379828593.a n = A241957 (n + 1)

end A241957

/-! ## A241957.P13600655003671493778

`A054582(lt[1, A130330(n)])-1`
-/

namespace A241957.P13600655003671493778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054582 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) - 1

end

end A241957.P13600655003671493778

namespace A241957

/-- `A054582(lt[1, A130330(n)])-1` -/
def P13600655003671493778.Spec : Prop :=
  ∀ n, P13600655003671493778.a n = A241957 (n + 1)

end A241957

/-! ## A241957.P3236483227086838995

`A054582(lt[1, A193723(n)])-1`
-/

namespace A241957.P3236483227086838995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193723 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054582 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) - 1

end

end A241957.P3236483227086838995

namespace A241957

/-- `A054582(lt[1, A193723(n)])-1` -/
def P3236483227086838995.Spec : Prop :=
  ∀ n, P3236483227086838995.a n = A241957 (n + 1)

end A241957

/-! ## A241957.P11500010557959109242

`A054582(A014132(n+1)-1)-1`
-/

namespace A241957.P11500010557959109242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054582 (A014132 (n + 1) - 1).toNat - 1

end

end A241957.P11500010557959109242

namespace A241957

/-- `A054582(A014132(n+1)-1)-1` -/
def P11500010557959109242.Spec : Prop :=
  ∀ n, P11500010557959109242.a n = A241957 (n + 1)

end A241957

/-! ## A241957.P14510550653398633007

`A054582(lt[1, A004736(n+1)])-1`
-/

namespace A241957.P14510550653398633007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054582 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) - 1

end

end A241957.P14510550653398633007

namespace A241957

/-- `A054582(lt[1, A004736(n+1)])-1` -/
def P14510550653398633007.Spec : Prop :=
  ∀ n, P14510550653398633007.a n = A241957 (n + 1)

end A241957

/-!
# A241959: Primes p such that p+2, p+4, p+6, p+8, p+10 are semiprimes.

The programs for A241959, there is no canonical definition to state claims against.
-/

/-! ## A241959.P9863150817194657666

`p?[A092127(n+1)-2]`
-/

namespace A241959.P9863150817194657666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092127 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A241959.P9863150817194657666

/-!
# A241960: Number of length n+3 0..4 arrays with no consecutive four elements summing to more than 2*4.

The programs for A241960, there is no canonical definition to state claims against.
-/

/-! ## A241960.P4478389466685930442

`A241964(A027379(n+2))`
-/

namespace A241960.P4478389466685930442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241964 (A027379 (n + 2)).toNat

end

end A241960.P4478389466685930442

/-! ## A241960.P2589405005437498211

`A241964(A055998(n+2))`
-/

namespace A241960.P2589405005437498211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241964 (A055998 (n + 2)).toNat

end

end A241960.P2589405005437498211

/-! ## A241960.P4477679170630016739

`A241964(A155212(n)+5)`
-/

namespace A241960.P4477679170630016739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241964 (A155212 n + 5).toNat

end

end A241960.P4477679170630016739

/-! ## A241960.P839923831260349493

`A241964(Δ[A006503(n+1)])`
-/

namespace A241960.P839923831260349493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241964 (f1 (n + 1) - f1 n).toNat

end

end A241960.P839923831260349493

/-! ## A241960.P4243655951361356198

`A241964(A046691(n+2)+1)`
-/

namespace A241960.P4243655951361356198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241964 (A046691 (n + 2) + 1).toNat

end

end A241960.P4243655951361356198

/-! ## A241960.P11815750425172572392

`A241964(A052905(n+1)+2)`
-/

namespace A241960.P11815750425172572392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241964 (A052905 (n + 1) + 2).toNat

end

end A241960.P11815750425172572392

/-! ## A241960.P2731041937221316150

`A241964(Δ[A008778(n+1)]-1)`
-/

namespace A241960.P2731041937221316150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241964 (f1 (n + 1) - f1 n - 1).toNat

end

end A241960.P2731041937221316150

/-! ## A241960.P11578312407244893562

`A241964(A167614(n+1)+Δ[n²])`
-/

namespace A241960.P11578312407244893562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241964 (A167614 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A241960.P11578312407244893562

/-! ## A241960.P17506640634274004721

`A241964(n+1+A167614(n+1)+n)`
-/

namespace A241960.P17506640634274004721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241964 ((n + 1 : ℤ) + (A167614 (n + 1) + (n : ℤ))).toNat

end

end A241960.P17506640634274004721

/-! ## A241960.P9074743647509455397

`A241964(A167499(n)+A016777(n))`
-/

namespace A241960.P9074743647509455397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241964 (A167499 n + A016777 n).toNat

end

end A241960.P9074743647509455397

/-!
# A241961: Number of length n+3 0..5 arrays with no consecutive four elements summing to more than 2*5.

The programs for A241961, there is no canonical definition to state claims against.
-/

/-! ## A241961.P6064080365136220175

`A241964(Δ[A264443(n)])`
-/

namespace A241961.P6064080365136220175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241964 (f1 (n + 1) - f1 n).toNat

end

end A241961.P6064080365136220175

/-! ## A241961.P7271158904989363809

`A241964(A046691(n+3))`
-/

namespace A241961.P7271158904989363809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241964 (A046691 (n + 3)).toNat

end

end A241961.P7271158904989363809

/-! ## A241961.P9650672971964608741

`A241964(Δ[A023545(n+1)])`
-/

namespace A241961.P9650672971964608741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241964 (f1 (n + 1) - f1 n).toNat

end

end A241961.P9650672971964608741

/-! ## A241961.P10928147020830215471

`A241964(A052905(n+2)+1)`
-/

namespace A241961.P10928147020830215471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241964 (A052905 (n + 2) + 1).toNat

end

end A241961.P10928147020830215471

/-! ## A241961.P17853790126003887363

`A241964(A055998(n+3)-1)`
-/

namespace A241961.P17853790126003887363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241964 (A055998 (n + 3) - 1).toNat

end

end A241961.P17853790126003887363

/-! ## A241961.P15231008723967166743

`A241964(A000217(n+5)-4)`
-/

namespace A241961.P15231008723967166743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241964 (A000217 (n + 5) - 4).toNat

end

end A241961.P15231008723967166743

/-! ## A241961.P7664702296198100342

`A241964(A000124(n+5)-5)`
-/

namespace A241961.P7664702296198100342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241964 (A000124 (n + 5) - 5).toNat

end

end A241961.P7664702296198100342

/-! ## A241961.P846532156377101796

`A241964(A167614(n+2)+2*(n+1))`
-/

namespace A241961.P846532156377101796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241964 (A167614 (n + 2) + (2 * (n + 1) : ℤ)).toNat

end

end A241961.P846532156377101796

/-! ## A241961.P17356550481521866584

`A241964(A264443(n+1)-A264443(n))`
-/

namespace A241961.P17356550481521866584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241964 (A264443 (n + 1) - A264443 n).toNat

end

end A241961.P17356550481521866584

/-!
# A241962: Number of length n+3 0..6 arrays with no consecutive four elements summing to more than 2*6.

The programs for A241962, there is no canonical definition to state claims against.
-/

/-! ## A241962.P11641827928271839167

`A241964(∑[n+6]+10)`
-/

namespace A241962.P11641827928271839167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241964 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A241962.P11641827928271839167

/-! ## A241962.P13500822702673239718

`A241964(A052905(n+3))+(n²-n)%2`
-/

namespace A241962.P13500822702673239718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241964 (A052905 (n + 3)).toNat + Int.tmod ((n ^ 2 : ℤ) - (n : ℤ)) 2

end

end A241962.P13500822702673239718

/-! ## A241962.P3744136996860312081

`A241964(A052905(n+3))+A000007(n+4)`
-/

namespace A241962.P3744136996860312081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241964 (A052905 (n + 3)).toNat + A000007 (n + 4)

end

end A241962.P3744136996860312081

/-! ## A241962.P2155218597726324948

`A241964(A052905(n+3))%(n-A034513(2*(n+2)))`
-/

namespace A241962.P2155218597726324948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241964 (A052905 (n + 3)).toNat) ((n : ℤ) - A034513 (2 * (n + 2)))

end

end A241962.P2155218597726324948

/-!
# A241963: Number of length n+3 0..7 arrays with no consecutive four elements summing to more than 2*7.

The programs for A241963, there is no canonical definition to state claims against.
-/

/-! ## A241963.P3770116873422463335

`A241964(A055999(n+4))`
-/

namespace A241963.P3770116873422463335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241964 (A055999 (n + 4)).toNat

end

end A241963.P3770116873422463335

/-! ## A241963.P1060859731476195154

`A241964(A155212(n+3)+2)`
-/

namespace A241963.P1060859731476195154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241964 (A155212 (n + 3) + 2).toNat

end

end A241963.P1060859731476195154

/-! ## A241963.P12057899234774773064

`A241964(A000124(n+7)-7)`
-/

namespace A241963.P12057899234774773064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241964 (A000124 (n + 7) - 7).toNat

end

end A241963.P12057899234774773064

/-! ## A241963.P17938873658400415827

`A241964(A055998(n+6)-(n+11))`
-/

namespace A241963.P17938873658400415827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241964 (A055998 (n + 6) - (n + 11 : ℤ)).toNat

end

end A241963.P17938873658400415827

/-! ## A241963.P8467442226391249869

`A241964(A167499(n+4)+2*(n+1))`
-/

namespace A241963.P8467442226391249869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241964 (A167499 (n + 4) + (2 * (n + 1) : ℤ)).toNat

end

end A241963.P8467442226391249869

/-!
# A241965: Number of length 2+3 0..n arrays with no consecutive four elements summing to more than 2*n.

The programs for A241965, there is no canonical definition to state claims against.
-/

/-! ## A241965.P14811486320742899843

`A241964(∑[n+1]+2)`
-/

namespace A241965.P14811486320742899843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241964 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A241965.P14811486320742899843

/-! ## A241965.P11278492503578796601

`A330034(n)²*A241964(A000096(n)+3)`
-/

namespace A241965.P11278492503578796601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330034 n ^ 2 * A241964 (A000096 n + 3).toNat

end

end A241965.P11278492503578796601

/-! ## A241965.P17966668674330007497

`A241964(A000096(n)+3)%A241967(n+1)`
-/

namespace A241965.P17966668674330007497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241964 (A000096 n + 3).toNat) (A241967 (n + 1))

end

end A241965.P17966668674330007497

/-! ## A241965.P17517511993331755198

`A241964(A000096(n)+3)+char[A254512(n+1)]`
-/

namespace A241965.P17517511993331755198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254512 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241964 (A000096 n + 3).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A241965.P17517511993331755198

/-! ## A241965.P5618610957548023152

`A241964(A000096(n)+3)*A336546(A336547(n+1))`
-/

namespace A241965.P5618610957548023152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241964 (A000096 n + 3).toNat * A336546 (A336547 (n + 1)).toNat

end

end A241965.P5618610957548023152

/-! ## A241965.P9371020198851936950

`A241964(A000096(n)+3)%Δ[A108791(n)]`
-/

namespace A241965.P9371020198851936950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108791 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241964 (A000096 n + 3).toNat) (f1 (n + 1) - f1 n)

end

end A241965.P9371020198851936950

/-!
# A241966: Number of length 3+3 0..n arrays with no consecutive four elements summing to more than 2*n.

The programs for A241966, there is no canonical definition to state claims against.
-/

/-! ## A241966.P11713976276605148749

`A241964(∑[n+2]+4)`
-/

namespace A241966.P11713976276605148749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241964 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A241966.P11713976276605148749

/-! ## A241966.P9783713504424857219

`lcm(A033999(n), A241964(A167614(n+1)))`
-/

namespace A241966.P9783713504424857219
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A241964 (A167614 (n + 1)).toNat)

end

end A241966.P9783713504424857219

/-! ## A241966.P5287789912296631612

`or(A000007(n), A241964(A167614(n+1)))`
-/

namespace A241966.P5287789912296631612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A241964 (A167614 (n + 1)).toNat)

end

end A241966.P5287789912296631612

/-! ## A241966.P4702405100878759012

`or(A098108(n), A241964(A167614(n+1)))`
-/

namespace A241966.P4702405100878759012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A098108 n) (A241964 (A167614 (n + 1)).toNat)

end

end A241966.P4702405100878759012

/-! ## A241966.P9456342609843452168

`A241964(A167614(n+1))+A000007(n+1)`
-/

namespace A241966.P9456342609843452168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241964 (A167614 (n + 1)).toNat + A000007 (n + 1)

end

end A241966.P9456342609843452168

/-! ## A241966.P2463296294978444123

`A241964(A167614(n+1))+A000035(2*n)`
-/

namespace A241966.P2463296294978444123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241964 (A167614 (n + 1)).toNat + A000035 (2 * n)

end

end A241966.P2463296294978444123

/-! ## A241966.P6340527572439943054

`A242096(2*n)+A241964(A167614(n+1))`
-/

namespace A241966.P6340527572439943054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242096 (2 * n) + A241964 (A167614 (n + 1)).toNat

end

end A241966.P6340527572439943054

/-! ## A241966.P2574456056011462937

`A033999(2*n)*A241964(A167614(n+1))`
-/

namespace A241966.P2574456056011462937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A241964 (A167614 (n + 1)).toNat

end

end A241966.P2574456056011462937

/-! ## A241966.P16961423834878456769

`A241964(A167614(n+1))%A133526(n+1)`
-/

namespace A241966.P16961423834878456769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241964 (A167614 (n + 1)).toNat) (A133526 (n + 1))

end

end A241966.P16961423834878456769

/-! ## A241966.P4074486947328643093

`or(A241964(A167614(n+1)), A295884(n+1))`
-/

namespace A241966.P4074486947328643093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A241964 (A167614 (n + 1)).toNat) (A295884 (n + 1))

end

end A241966.P4074486947328643093

/-!
# A241967: Number of length 4+3 0..n arrays with no consecutive four elements summing to more than 2*n.

The programs for A241967, there is no canonical definition to state claims against.
-/

/-! ## A241967.P10274198502062958730

`A241964(A052905(n)+9)`
-/

namespace A241967.P10274198502062958730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241964 (A052905 n + 9).toNat

end

end A241967.P10274198502062958730

/-! ## A241967.P13300896803406511523

`A241964(A055999(n)+10)`
-/

namespace A241967.P13300896803406511523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241964 (A055999 n + 10).toNat

end

end A241967.P13300896803406511523

/-! ## A241967.P6868265016039357518

`A241964(Δ[A006503(n)]+7)`
-/

namespace A241967.P6868265016039357518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241964 (f1 (n + 1) - f1 n + 7).toNat

end

end A241967.P6868265016039357518

/-! ## A241967.P7331499464147115879

`A241964(A167614(n+2)+1)`
-/

namespace A241967.P7331499464147115879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241964 (A167614 (n + 2) + 1).toNat

end

end A241967.P7331499464147115879

/-! ## A241967.P13128844077509922936

`A241964(A167487(n+2)-3)`
-/

namespace A241967.P13128844077509922936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241964 (A167487 (n + 2) - 3).toNat

end

end A241967.P13128844077509922936

/-! ## A241967.P14072153633315493505

`A241964(Δ[A264443(n)-n²])`
-/

namespace A241967.P14072153633315493505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241964 (f1 (n + 1) - f1 n).toNat

end

end A241967.P14072153633315493505

/-! ## A241967.P8155512178745118875

`A241964(Δ[A023545(n+1)-n²])`
-/

namespace A241967.P8155512178745118875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241964 (f1 (n + 1) - f1 n).toNat

end

end A241967.P8155512178745118875

/-! ## A241967.P11376904066482275976

`A241964(A020705(A000217(n+3)))`
-/

namespace A241967.P11376904066482275976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241964 (A020705 (A000217 (n + 3)).toNat).toNat

end

end A241967.P11376904066482275976

/-! ## A241967.P16248174523706126348

`A241964(A000217(A020705(n))-n)`
-/

namespace A241967.P16248174523706126348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241964 (A000217 (A020705 n).toNat - (n : ℤ)).toNat

end

end A241967.P16248174523706126348

/-!
# A241968: Number of length 5+3 0..n arrays with no consecutive four elements summing to more than 2*n.

The programs for A241968, there is no canonical definition to state claims against.
-/

/-! ## A241968.P18103040898372904162

`A241964(A167499(n+3))`
-/

namespace A241968.P18103040898372904162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241964 (A167499 (n + 3)).toNat

end

end A241968.P18103040898372904162

/-! ## A241968.P9826078483041770951

`A241964(A167614(n+3)+2)`
-/

namespace A241968.P9826078483041770951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241964 (A167614 (n + 3) + 2).toNat

end

end A241968.P9826078483041770951

/-! ## A241968.P12861327174960332197

`A241964(A000217(n+4)+5)`
-/

namespace A241968.P12861327174960332197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241964 (A000217 (n + 4) + 5).toNat

end

end A241968.P12861327174960332197

/-! ## A241968.P7603468568476949558

`A241964(Δ[A008778(n)]+n+11)`
-/

namespace A241968.P7603468568476949558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241964 (f1 (n + 1) - f1 n + (n + 11 : ℤ)).toNat

end

end A241968.P7603468568476949558

/-! ## A241968.P4845818257769670120

`A241964(A000124(n+5)-(n+1))`
-/

namespace A241968.P4845818257769670120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241964 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A241968.P4845818257769670120

/-! ## A241968.P4561778132844373125

`A241964(A134869(n+5)-(n+1))`
-/

namespace A241968.P4561778132844373125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241964 (A134869 (n + 5) - (n + 1 : ℤ)).toNat

end

end A241968.P4561778132844373125

/-! ## A241968.P5947814012165706664

`A241964(A038722(Δ[A023545(n+1)]))`
-/

namespace A241968.P5947814012165706664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241964 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A241968.P5947814012165706664

/-!
# A241969: Number of length 6+3 0..n arrays with no consecutive four elements summing to more than 2*n.

The programs for A241969, there is no canonical definition to state claims against.
-/

/-! ## A241969.P6700312239930934757

`A241964(A167499(n+4)+1)`
-/

namespace A241969.P6700312239930934757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241964 (A167499 (n + 4) + 1).toNat

end

end A241969.P6700312239930934757

/-! ## A241969.P12914930971353506382

`A241964(A000217(n+5)+6)`
-/

namespace A241969.P12914930971353506382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241964 (A000217 (n + 5) + 6).toNat

end

end A241969.P12914930971353506382

/-! ## A241969.P14316168590915705437

`A241964(A000124(n+6)-(n+1))`
-/

namespace A241969.P14316168590915705437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241964 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A241969.P14316168590915705437

/-! ## A241969.P14014929234011425420

`A241964(A055999(n+4)-Δ[n²])`
-/

namespace A241969.P14014929234011425420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241964 (A055999 (n + 4) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A241969.P14014929234011425420

/-! ## A241969.P11793125524079572322

`A241964(A020715(A000217(n+5)))`
-/

namespace A241969.P11793125524079572322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241964 (A020715 (A000217 (n + 5)).toNat).toNat

end

end A241969.P11793125524079572322

/-! ## A241969.P9209954667756687651

`A241964(A002620(n+2)+A002620(n+9))`
-/

namespace A241969.P9209954667756687651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241964 (A002620 (n + 2) + A002620 (n + 9)).toNat

end

end A241969.P9209954667756687651

/-!
# A241970: Number of length 7+3 0..n arrays with no consecutive four elements summing to more than 2*n.

The programs for A241970, there is no canonical definition to state claims against.
-/

/-! ## A241970.P12837389171933759316

`A241964(A167487(n+5))`
-/

namespace A241970.P12837389171933759316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241964 (A167487 (n + 5)).toNat

end

end A241970.P12837389171933759316

/-! ## A241970.P13128469808560533235

`A241964(A167499(n+5)+2)`
-/

namespace A241970.P13128469808560533235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241964 (A167499 (n + 5) + 2).toNat

end

end A241970.P13128469808560533235

/-! ## A241970.P3566677229400546697

`A241964(A000124(n+6)+6)`
-/

namespace A241970.P3566677229400546697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241964 (A000124 (n + 6) + 6).toNat

end

end A241970.P3566677229400546697

/-! ## A241970.P133821575757265183

`A241964(A000217(n+6)+7)`
-/

namespace A241970.P133821575757265183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241964 (A000217 (n + 6) + 7).toNat

end

end A241970.P133821575757265183

/-! ## A241970.P10593629337168564307

`A241964(A055998(n)+A008574(n+7))`
-/

namespace A241970.P10593629337168564307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241964 (A055998 n + A008574 (n + 7)).toNat

end

end A241970.P10593629337168564307

/-!
# A241971: Numbers congruent to some square mod 10^k for all values of k.

The programs for A241971, there is no canonical definition to state claims against.
-/

/-! ## A241971.P1068888849127239881

`∪[(n+1)², A241081(n+1)]`
-/

namespace A241971.P1068888849127239881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241081 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A241971.P1068888849127239881

/-! ## A241971.P4463102450623116253

`∩[A122986(n+1), A234000(n+1)]`
-/

namespace A241971.P4463102450623116253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234000 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A241971.P4463102450623116253

/-! ## A241971.P3655408251485001617

`∩[A234000(n+1), A238712(n+1)]`
-/

namespace A241971.P3655408251485001617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234000 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A241971.P3655408251485001617

/-! ## A241971.P14889021679755722986

`∪[A241081(n+1), A221222(n+1)]`
-/

namespace A241971.P14889021679755722986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241081 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221222 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A241971.P14889021679755722986

/-! ## A241971.P4545202884378540652

`∩[A122986(n+1), A360247(n+1)]`
-/

namespace A241971.P4545202884378540652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A241971.P4545202884378540652

/-!
# A241972: a(n) = n - A137849(n).

The programs for A241972, there is no canonical definition to state claims against.
-/

/-! ## A241972.P2399935090073225264

`A137849(n+1)*A165326(4*n+10)+n+1`
-/

namespace A241972.P2399935090073225264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137849 (n + 1) * A165326 (4 * n + 10) + (n + 1 : ℤ)

end

end A241972.P2399935090073225264

/-! ## A241972.P8475834050580759583

`A258334(A258335(n+1))-A137849(n+1)`
-/

namespace A241972.P8475834050580759583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258334 (A258335 (n + 1)).toNat - A137849 (n + 1)

end

end A241972.P8475834050580759583

/-! ## A241972.P1130808630283262282

`(n+1-A137849(n+1))%A338159(n+1)`
-/

namespace A241972.P1130808630283262282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1 : ℤ) - A137849 (n + 1)) (A338159 (n + 1))

end

end A241972.P1130808630283262282

/-! ## A241972.P14847351821263086881

`A056239(A000040(n+1))-A137849(n+1)`
-/

namespace A241972.P14847351821263086881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A000040 (n + 1)).toNat - A137849 (n + 1)

end

end A241972.P14847351821263086881

/-! ## A241972.P16845675904002077748

`A000720(eq[2, A137849(n+1)]+1)-A137849(n+1)`
-/

namespace A241972.P16845675904002077748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137849 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) - A137849 (n + 1)

end

end A241972.P16845675904002077748

/-! ## A241972.P15928548666427807442

`A258330(A258329(n+1))-A137849(n+1)`
-/

namespace A241972.P15928548666427807442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258330 (A258329 (n + 1)).toNat - A137849 (n + 1)

end

end A241972.P15928548666427807442

/-! ## A241972.P3253072779698298072

`A090928(A090928(n+1))-A137849(n+1)`
-/

namespace A241972.P3253072779698298072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090928 (A090928 (n + 1)).toNat - A137849 (n + 1)

end

end A241972.P3253072779698298072

/-! ## A241972.P17567733256244451948

`A002260(A000124(n+6)-6)-A137849(n+1)`
-/

namespace A241972.P17567733256244451948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A000124 (n + 6) - 6).toNat - A137849 (n + 1)

end

end A241972.P17567733256244451948

/-! ## A241972.P94818906388141374

`n-(A137849(n+1)-A175087(n²+1))`
-/

namespace A241972.P94818906388141374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A137849 (n + 1) - A175087 (n ^ 2 + 1))

end

end A241972.P94818906388141374

/-! ## A241972.P7398296000149578476

`A196199(A137849(n+1)²)+1+n`
-/

namespace A241972.P7398296000149578476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196199 (A137849 (n + 1) ^ 2).toNat + 1 + (n : ℤ)

end

end A241972.P7398296000149578476

/-!
# A241973: Prime exponents of composite Mersenne numbers in the order of the magnitude of the smallest prime factor.

The programs for A241973, there is no canonical definition to state claims against.
-/

/-! ## A241973.P16902262335445344891

`p?[A336843(A067656(n+1))]`
-/

namespace A241973.P16902262335445344891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336843 (A067656 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A241973.P16902262335445344891

/-! ## A241973.P14427084581086965497

`p?[A014963(A072055(n+1))*A014664(n+2)]`
-/

namespace A241973.P14427084581086965497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A072055 (n + 1)).toNat * A014664 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A241973.P14427084581086965497

/-! ## A241973.P6570355717003381842

`p?[A014664(n+2)*A120114(A006093(n+1))]`
-/

namespace A241973.P6570355717003381842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014664 (n + 2) * A120114 (A006093 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A241973.P6570355717003381842

/-! ## A241973.P8038517422571786507

`p?[A007733(A188833(n+1))]`
-/

namespace A241973.P8038517422571786507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (A188833 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A241973.P8038517422571786507

/-!
# A241975: Numbers n such that n^4 - n^3 - n - 1 is a semiprime.

The programs for A241975, there is no canonical definition to state claims against.
-/

/-! ## A241975.P6973773951558773997

`ceil(root(A241670(n+1), 4))`
-/

namespace A241975.P6973773951558773997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A241670 (n + 1) : ℝ) ^ (1 / (4 : ℝ))⌉

end

end A241975.P6973773951558773997

/-! ## A241975.P12119369496376359576

`round(root(A241670(n+1), 4))%A167499(n+3)`
-/

namespace A241975.P12119369496376359576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A241670 (n + 1) : ℝ) ^ (1 / (4 : ℝ)))) (A167499 (n + 3))

end

end A241975.P12119369496376359576

/-! ## A241975.P15894588016992117672

`filter[A002328(n+1), A295405(#)]`
-/

namespace A241975.P15894588016992117672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295405 (f1 j).toNat = 1) n)

end

end A241975.P15894588016992117672

/-! ## A241975.P1913695273750999953

`∩[A002328(n+1), A005574(n+1)]`
-/

namespace A241975.P1913695273750999953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A241975.P1913695273750999953

/-! ## A241975.P1561913404097241704

`record[A247339(A002328(n+2))]`
-/

namespace A241975.P1561913404097241704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247339 (A002328 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241975.P1561913404097241704

/-! ## A241975.P5826474962301274316

`A014681(floor(root(A241670(n+1), 4)))`
-/

namespace A241975.P5826474962301274316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 ⌊(A241670 (n + 1) : ℝ) ^ (1 / (4 : ℝ))⌋.toNat

end

end A241975.P5826474962301274316

/-! ## A241975.P17025963467223051242

`2*A008619(floor(root(A241670(n+1), 4)))`
-/

namespace A241975.P17025963467223051242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008619 ⌊(A241670 (n + 1) : ℝ) ^ (1 / (4 : ℝ))⌋.toNat

end

end A241975.P17025963467223051242

/-! ## A241975.P6466089662019129854

`2*A110654(floor(root(A241670(n+1), 4)))`
-/

namespace A241975.P6466089662019129854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A110654 ⌊(A241670 (n + 1) : ℝ) ^ (1 / (4 : ℝ))⌋.toNat

end

end A241975.P6466089662019129854

/-!
# A241976: Values of k such that k^2 + (k+3)^2 is a square.

The programs for A241976, the canonical program `A241976.P13103406054122373519` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241976 has offset 1).

The definition of A241976 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A241976.P13103406054122373519

`7*a(n-1)-7*a(n-2)+a(n-3)` with `a(0)=0, a(1)=9, a(2)=60`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A241976

/-- `7*a(n-1)-7*a(n-2)+a(n-3)` -/
def P13103406054122373519.Spec : Prop :=
  ∀ n, P13103406054122373519.a n = A241976 (n + 1)

theorem P13103406054122373519.correct : P13103406054122373519.Spec := by
  intro n
  simp only [A241976, Nat.add_sub_cancel]

end A241976

/-! ## A241976.P1401582567355354314

`3*A001652(n)`
-/

namespace A241976.P1401582567355354314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A001652 n

end

end A241976.P1401582567355354314

namespace A241976

/-- `3*A001652(n)` -/
def P1401582567355354314.Spec : Prop :=
  ∀ n, P1401582567355354314.a n = A241976 (n + 1)

end A241976

/-! ## A241976.P5210037151876784719

`3*floor(ceil(∑[((sqrt(2)+1)^n)²])/2)`
-/

namespace A241976.P5210037151876784719
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (2 : ℝ) + 1) ^ n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌊(⌈∑ j ∈ Finset.range (n + 1), f1 j⌉ : ℚ) / 2⌋

end

end A241976.P5210037151876784719

namespace A241976

/-- `3*floor(ceil(∑[((sqrt(2)+1)^n)²])/2)` -/
def P5210037151876784719.Spec : Prop :=
  ∀ n, P5210037151876784719.a n = A241976 (n + 1)

end A241976

/-! ## A241976.P4657830404188722545

`6*(a(n-1)+1)-a(n-2)` with `a(0)=0, a(1)=9`
-/

namespace A241976.P4657830404188722545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 9] fun n a =>
  6 * (a (n - 1) + 1) - a (n - 2)

end

end A241976.P4657830404188722545

namespace A241976

/-- `6*(a(n-1)+1)-a(n-2)` -/
def P4657830404188722545.Spec : Prop :=
  ∀ n, P4657830404188722545.a n = A241976 (n + 1)

end A241976

/-! ## A241976.P268019416637712137

`∑[6*a(n-1)-a(n-2)]-3` with `a(0)=3, a(1)=9`
-/

namespace A241976.P268019416637712137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 9] fun n f1 =>
  6 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A241976.P268019416637712137

namespace A241976

/-- `∑[6*a(n-1)-a(n-2)]-3` -/
def P268019416637712137.Spec : Prop :=
  ∀ n, P268019416637712137.a n = A241976 (n + 1)

end A241976

/-! ## A241976.P2319925860744313289

`A301383(n)-1`
-/

namespace A241976.P2319925860744313289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301383 n - 1

end

end A241976.P2319925860744313289

namespace A241976

/-- `A301383(n)-1` -/
def P2319925860744313289.Spec : Prop :=
  ∀ n, P2319925860744313289.a n = A241976 (n + 1)

end A241976

/-! ## A241976.P4906029591849506970

`∑[A106329(n+1)]-3`
-/

namespace A241976.P4906029591849506970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106329 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A241976.P4906029591849506970

namespace A241976

/-- `∑[A106329(n+1)]-3` -/
def P4906029591849506970.Spec : Prop :=
  ∀ n, P4906029591849506970.a n = A241976 (n + 1)

end A241976

/-! ## A241976.P9704650188078977077

`A033539(2*(n+1))-1`
-/

namespace A241976.P9704650188078977077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033539 (2 * (n + 1)) - 1

end

end A241976.P9704650188078977077

namespace A241976

/-- `A033539(2*(n+1))-1` -/
def P9704650188078977077.Spec : Prop :=
  ∀ n, P9704650188078977077.a n = A241976 (n + 1)

end A241976

/-! ## A241976.P9888650591594414411

`3*A024537(2*n)-3`
-/

namespace A241976.P9888650591594414411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A024537 (2 * n) - 3

end

end A241976.P9888650591594414411

namespace A241976

/-- `3*A024537(2*n)-3` -/
def P9888650591594414411.Spec : Prop :=
  ∀ n, P9888650591594414411.a n = A241976 (n + 1)

end A241976

/-! ## A241976.P5803003496556072499

`record[A033539(A014681(n))-1]`
-/

namespace A241976.P5803003496556072499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033539 (A014681 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241976.P5803003496556072499

namespace A241976

/-- `record[A033539(A014681(n))-1]` -/
def P5803003496556072499.Spec : Prop :=
  ∀ n, P5803003496556072499.a n = A241976 (n + 1)

end A241976

/-! ## A241976.P2214751146059349017

`A182435(n)+∑[A081554(n)]`
-/

namespace A241976.P2214751146059349017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081554 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182435 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241976.P2214751146059349017

namespace A241976

/-- `A182435(n)+∑[A081554(n)]` -/
def P2214751146059349017.Spec : Prop :=
  ∀ n, P2214751146059349017.a n = A241976 (n + 1)

end A241976

/-! ## A241976.P7686993437442999930

`∑[A054490(n)]-A001541(n)`
-/

namespace A241976.P7686993437442999930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054490 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001541 n

end

end A241976.P7686993437442999930

namespace A241976

/-- `∑[A054490(n)]-A001541(n)` -/
def P7686993437442999930.Spec : Prop :=
  ∀ n, P7686993437442999930.a n = A241976 (n + 1)

end A241976

/-! ## A241976.P12372610958750339534

`A212329(n+1)+A005319(n)`
-/

namespace A241976.P12372610958750339534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212329 (n + 1) + A005319 n

end

end A241976.P12372610958750339534

namespace A241976

/-- `A212329(n+1)+A005319(n)` -/
def P12372610958750339534.Spec : Prop :=
  ∀ n, P12372610958750339534.a n = A241976 (n + 1)

end A241976

/-! ## A241976.P14174641905602739186

`A001652(n)+A002315(n)-1`
-/

namespace A241976.P14174641905602739186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001652 n + (A002315 n - 1)

end

end A241976.P14174641905602739186

namespace A241976

/-- `A001652(n)+A002315(n)-1` -/
def P14174641905602739186.Spec : Prop :=
  ∀ n, P14174641905602739186.a n = A241976 (n + 1)

end A241976

/-! ## A241976.P9295372507946478348

`A001108(n)+A038761(n)-1`
-/

namespace A241976.P9295372507946478348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001108 n + (A038761 n - 1)

end

end A241976.P9295372507946478348

namespace A241976

/-- `A001108(n)+A038761(n)-1` -/
def P9295372507946478348.Spec : Prop :=
  ∀ n, P9295372507946478348.a n = A241976 (n + 1)

end A241976

/-! ## A241976.P11300666790607163473

`A053141(n)+A054488(n)-1`
-/

namespace A241976.P11300666790607163473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053141 n + (A054488 n - 1)

end

end A241976.P11300666790607163473

namespace A241976

/-- `A053141(n)+A054488(n)-1` -/
def P11300666790607163473.Spec : Prop :=
  ∀ n, P11300666790607163473.a n = A241976 (n + 1)

end A241976

/-! ## A241976.P7778674615645587616

`A072221(n)+A075848(n)-1`
-/

namespace A241976.P7778674615645587616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072221 n + (A075848 n - 1)

end

end A241976.P7778674615645587616

namespace A241976

/-- `A072221(n)+A075848(n)-1` -/
def P7778674615645587616.Spec : Prop :=
  ∀ n, P7778674615645587616.a n = A241976 (n + 1)

end A241976

/-! ## A241976.P10438408405289796235

`A054490(n)-(A182435(n)+1)`
-/

namespace A241976.P10438408405289796235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054490 n - (A182435 n + 1)

end

end A241976.P10438408405289796235

namespace A241976

/-- `A054490(n)-(A182435(n)+1)` -/
def P10438408405289796235.Spec : Prop :=
  ∀ n, P10438408405289796235.a n = A241976 (n + 1)

end A241976

/-!
# A241977: Numbers k>1 such that 10^phi(k) == 1 (mod k^2), where phi(n)=A000010(n).

The programs for A241977, there is no canonical definition to state claims against.
-/

/-! ## A241977.P17527005876897614289

`A096981(A001990(n+1))*A133494(n)`
-/

namespace A241977.P17527005876897614289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096981 (A001990 (n + 1)).toNat * A133494 n

end

end A241977.P17527005876897614289

/-!
# A241979: (0,1) sequence such that lengths of three consecutive runs are always distinct.

The programs for A241979, the canonical program `A241979.P12627212623602825622` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241979 has offset 0).

The definition of A241979 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A241979.P12627212623602825622

`∑[char[∑[n%3+1]]]%2`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A241979

/-- `∑[char[∑[n%3+1]]]%2` -/
def P12627212623602825622.Spec : Prop :=
  ∀ n, (P12627212623602825622.a n : ℤ) = A241979 n

theorem P12627212623602825622.correct : P12627212623602825622.Spec := by
  intro n
  simp only [A241979]

end A241979

/-!
# A241980: Number of endofunctions on [n] where all cycle lengths are equal.

The programs for A241980, there is no canonical definition to state claims against.
-/

/-! ## A241980.P1195376999971564973

`A242027(record[1-A242027(n)+n])`
-/

namespace A241980.P1195376999971564973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A242027 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242027 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A241980.P1195376999971564973

/-! ## A241980.P5406164901081529212

`A242027(eq[n, n*A237451(n+1)])`
-/

namespace A241980.P5406164901081529212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A237451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241980.P5406164901081529212

/-! ## A241980.P9440566223481996711

`A242027(A075349(n+1)+A000007(n))`
-/

namespace A241980.P9440566223481996711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242027 (A075349 (n + 1) + A000007 n).toNat

end

end A241980.P9440566223481996711

/-! ## A241980.P3491955904101088621

`A242027(A057427(n)*A075349(n+1))`
-/

namespace A241980.P3491955904101088621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242027 (A057427 n * A075349 (n + 1)).toNat

end

end A241980.P3491955904101088621

/-! ## A241980.P317595162494225610

`A242027(A075349(n+1)%A027379(n))`
-/

namespace A241980.P317595162494225610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242027 (Int.tmod (A075349 (n + 1)) (A027379 n)).toNat

end

end A241980.P317595162494225610

/-! ## A241980.P775317450992806719

`A242027(A075349(n+1)+1-A057427(n))`
-/

namespace A241980.P775317450992806719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242027 (A075349 (n + 1) + (1 - A057427 n)).toNat

end

end A241980.P775317450992806719

/-!
# A241981: Number T(n,k) of endofunctions on [n] where the largest cycle length equals k; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A241981, there is no canonical definition to state claims against.
-/

/-! ## A241981.P5535719906981661311

`A321231(A102480(n))+A243098(n)`
-/

namespace A241981.P5535719906981661311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321231 (A102480 n).toNat + A243098 n

end

end A241981.P5535719906981661311

/-! ## A241981.P17606974248771631206

`A204697(A322785(n))*A360177(n)`
-/

namespace A241981.P17606974248771631206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204697 (A322785 n).toNat * A360177 n

end

end A241981.P17606974248771631206

/-! ## A241981.P2990960240415290957

`A360177(n)+A010051(A153724(n+1))`
-/

namespace A241981.P2990960240415290957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360177 n + A010051 (A153724 (n + 1)).toNat

end

end A241981.P2990960240415290957

/-! ## A241981.P10309652696046141084

`A295663(A210344(n+1))+A243098(n)`
-/

namespace A241981.P10309652696046141084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295663 (A210344 (n + 1)).toNat + A243098 n

end

end A241981.P10309652696046141084

/-! ## A241981.P9502964222947451611

`A080577(A008292(3*n+5))*A360177(n)`
-/

namespace A241981.P9502964222947451611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080577 (A008292 (3 * n + 5)).toNat * A360177 n

end

end A241981.P9502964222947451611

/-!
# A241982: Number of endofunctions on [2n] where the largest cycle length equals n.

The programs for A241982, there is no canonical definition to state claims against.
-/

/-! ## A241982.P8990274627567731538

`A241981(∑[4*n])`
-/

namespace A241982.P8990274627567731538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241981 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A241982.P8990274627567731538

/-! ## A241982.P15064265122040578113

`A241981(A046092(n))+A025439(n)`
-/

namespace A241982.P15064265122040578113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241981 (A046092 n).toNat + A025439 n

end

end A241982.P15064265122040578113

/-! ## A241982.P13507787060537954729

`lcm(A079097(n), A241981(A046092(n)))`
-/

namespace A241982.P13507787060537954729
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A079097 n) (A241981 (A046092 n).toNat)

end

end A241982.P13507787060537954729

/-! ## A241982.P6678096565842265608

`or(A000007(n), A241981(A046092(n)))`
-/

namespace A241982.P6678096565842265608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A241981 (A046092 n).toNat)

end

end A241982.P6678096565842265608

/-! ## A241982.P5842409101294037013

`A241981(A046092(n))/A007318(∑[n])`
-/

namespace A241982.P5842409101294037013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241981 (A046092 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A241982.P5842409101294037013

/-!
# A241984: The number of P-positions in the Cookie Monster game with at most three piles, allowing for piles of zero, that are born by generation n.

The programs for A241984, there is no canonical definition to state claims against.
-/

/-! ## A241984.P13905797676413590734

`∑[A241983(n)]`
-/

namespace A241984.P13905797676413590734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241983 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241984.P13905797676413590734

/-! ## A241984.P9760463845513644128

`A241983(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A241984.P9760463845513644128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A241983 n + a (A023443 n).toNat

end

end A241984.P9760463845513644128

/-! ## A241984.P4684487907777947513

`A241983(n)+A028310(a(n-1))` with `a(0)=1`
-/

namespace A241984.P4684487907777947513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A241983 n + A028310 (a (n - 1)).toNat

end

end A241984.P4684487907777947513

/-! ## A241984.P1858555527026195653

`a(n-1)+A241983(n)+A000007(n)` with `a(0)=1`
-/

namespace A241984.P1858555527026195653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A241983 n + A000007 n)

end

end A241984.P1858555527026195653

/-!
# A241986: The number of P-positions in the At-Most-2-Jars game with at most three piles, allowing for piles of zero, that are born by generation n.

The programs for A241986, there is no canonical definition to state claims against.
-/

/-! ## A241986.P4859698657257001835

`∑[A241985(n)]`
-/

namespace A241986.P4859698657257001835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241985 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241986.P4859698657257001835

/-! ## A241986.P8677082148738791459

`A241985(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A241986.P8677082148738791459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A241985 n + a (A023443 n).toNat

end

end A241986.P8677082148738791459

/-! ## A241986.P939071320050206196

`A241985(n)+A028310(a(n-1))` with `a(0)=1`
-/

namespace A241986.P939071320050206196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A241985 n + A028310 (a (n - 1)).toNat

end

end A241986.P939071320050206196

/-! ## A241986.P2699170936789300111

`a(n-1)+A241985(n)+A000007(n)` with `a(0)=1`
-/

namespace A241986.P2699170936789300111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A241985 n + A000007 n)

end

end A241986.P2699170936789300111

/-! ## A241986.P16126051636247091530

`a(n-1)+A007318(C(2, n))*A241985(n)` with `a(0)=1`
-/

namespace A241986.P16126051636247091530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A007318 (Nat.choose 2 n) * A241985 n

end

end A241986.P16126051636247091530

/-!
# A241988: The number of P-positions in the Consecutive game with at most three piles, allowing for piles of zero, that are born by generation n.

The programs for A241988, there is no canonical definition to state claims against.
-/

/-! ## A241988.P7882871408358028003

`∑[A241987(n)]`
-/

namespace A241988.P7882871408358028003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241987 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241988.P7882871408358028003

/-! ## A241988.P5988469250431576913

`A241987(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A241988.P5988469250431576913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A241987 n + a (A023443 n).toNat

end

end A241988.P5988469250431576913

/-! ## A241988.P11937368241794719772

`A241987(n)+A028310(a(n-1))` with `a(0)=1`
-/

namespace A241988.P11937368241794719772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A241987 n + A028310 (a (n - 1)).toNat

end

end A241988.P11937368241794719772

/-! ## A241988.P7121543468803400655

`a(n-1)+A241987(n)%A017209(n)` with `a(0)=1`
-/

namespace A241988.P7121543468803400655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A241987 n) (A017209 n)

end

end A241988.P7121543468803400655

/-! ## A241988.P5237995071910065261

`a(n-1)+or(A241987(n), A242018(n))` with `a(0)=1`
-/

namespace A241988.P5237995071910065261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.lor (A241987 n) (A242018 n)

end

end A241988.P5237995071910065261

/-!
# A241989: Positive numbers n that are divisible by the sum of the digits of n in base 16.

The programs for A241989, the canonical program `A241989.P18072735750899753269` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241989 has offset 1).

The definition of A241989 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1606 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A241989.P18072735750899753269

`eq[n+1, lcm(n+1, A053836(n+1))]+1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A241989

/-- `eq[n+1, lcm(n+1, A053836(n+1))]+1` -/
def P18072735750899753269.Spec : Prop :=
  ∀ n, (P18072735750899753269.a n : ℤ) = A241989 (n + 1)

theorem P18072735750899753269.correct : P18072735750899753269.Spec := by
  intro n
  simp only [A241989, Nat.add_sub_cancel]

end A241989

/-! ## A241989.P4631023575991009457

`eq[lcm(n, A053836(n)), A028310(n)]`
-/

namespace A241989.P4631023575991009457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A053836 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A241989.P4631023575991009457

namespace A241989

/-- `eq[lcm(n, A053836(n)), A028310(n)]` -/
def P4631023575991009457.Spec : Prop :=
  ∀ n, (P4631023575991009457.a n : ℤ) = A241989 (n + 1)

end A241989

/-! ## A241989.P5221127304278830898

`∑[A082498(A271952(A003964(n+1)))]`
-/

namespace A241989.P5221127304278830898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082498 (A271952 (A003964 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241989.P5221127304278830898

namespace A241989

/-- `∑[A082498(A271952(A003964(n+1)))]` -/
def P5221127304278830898.Spec : Prop :=
  ∀ n, P5221127304278830898.a n = A241989 (n + 1)

end A241989

/-! ## A241989.P5530978728761739587

`∑[A033715(∑[A185044(n)]²²)]`
-/

namespace A241989.P5530978728761739587
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185044 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033715 (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241989.P5530978728761739587

namespace A241989

/-- `∑[A033715(∑[A185044(n)]²²)]` -/
def P5530978728761739587.Spec : Prop :=
  ∀ n, P5530978728761739587.a n = A241989 (n + 1)

end A241989

/-! ## A241989.P11007206746219698306

`lt[A324588(n+1), A057508(A004959(n))]`
-/

namespace A241989.P11007206746219698306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057508 (A004959 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A241989.P11007206746219698306

namespace A241989

/-- `lt[A324588(n+1), A057508(A004959(n))]` -/
def P11007206746219698306.Spec : Prop :=
  ∀ n, (P11007206746219698306.a n : ℤ) = A241989 (n + 1)

end A241989

/-!
# A241991: Decimal expansion of the infinite product for n >= 1 of (1+1/n^2)^(n^2)/e.

The programs for A241991, there is no canonical definition to state claims against.
-/

/-! ## A241991.P3496793049177250046

`A245018(n)`
-/

namespace A241991.P3496793049177250046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245018 n

end

end A241991.P3496793049177250046

/-!
# A241996: G.f. satisfies: A(x)^2 = x + A(x*A(x)^4).

The programs for A241996, there is no canonical definition to state claims against.
-/

/-! ## A241996.P11240102905849422640

`A096594(∑[n+1])-2*n`
-/

namespace A241996.P11240102905849422640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096594 (∑ j ∈ Finset.range (n + 1), f1 j) - (2 * n : ℤ)

end

end A241996.P11240102905849422640

/-!
# A241997: G.f. satisfies: A(x)^2 = x + A(x*A(x)^5).

The programs for A241997, there is no canonical definition to state claims against.
-/

/-! ## A241997.P9131771842928793656

`ceil(A341913(∑[n²])/2)`
-/

namespace A241997.P9131771842928793656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A341913 (∑ j ∈ Finset.range (n + 1), f1 j + 45) : ℚ) / 2⌉

end

end A241997.P9131771842928793656

/-!
# A241998: G.f. satisfies: A(x)^2 = x + A(x*A(x)^6).

The programs for A241998, there is no canonical definition to state claims against.
-/

/-! ## A241998.P16570266024885078999

`A231716(A238686(∑[n]))`
-/

namespace A241998.P16570266024885078999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231716 (A238686 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A241998.P16570266024885078999

/-!
# A241999: G.f. satisfies: A(x)^2 = x + A(x*A(x)^7).

The programs for A241999, there is no canonical definition to state claims against.
-/

/-! ## A241999.P7109334837256645634

`A004280(A229865(n))-A002412(n)`
-/

namespace A241999.P7109334837256645634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (A229865 n).toNat - A002412 n

end

end A241999.P7109334837256645634

