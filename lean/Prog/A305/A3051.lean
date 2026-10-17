import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C003
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
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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

/-!
# A305101: G.f.: Sum_{k>=1} x^k/(1+x^k) * Product_{k>=1} (1+x^k)/(1-x^k).

The programs for A305101, there is no canonical definition to state claims against.
-/

/-! ## A305101.P3698782967726364431

`A305122(n)+A305124(n)`
-/

namespace A305101.P3698782967726364431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305122 n + A305124 n

end

end A305101.P3698782967726364431

/-! ## A305101.P4050457039421268908

`A305105(n)-A305104(n)`
-/

namespace A305101.P4050457039421268908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305105 n - A305104 n

end

end A305101.P4050457039421268908

/-! ## A305101.P14003393594576185089

`2*A305105(n)-A305102(n)`
-/

namespace A305101.P14003393594576185089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A305105 n - A305102 n

end

end A305101.P14003393594576185089

/-! ## A305101.P9080232258490741556

`A305102(n)-2*A305104(n)`
-/

namespace A305101.P9080232258490741556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305102 n - 2 * A305104 n

end

end A305101.P9080232258490741556

/-! ## A305101.P12840776668389883759

`A305102(n)-A305104(n)-A305104(A028310(n))`
-/

namespace A305101.P12840776668389883759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305102 n - A305104 n - A305104 (A028310 n).toNat

end

end A305101.P12840776668389883759

/-!
# A305102: G.f.: Sum_{k>=1} x^k/(1-x^k) * Product_{k>=1} (1+x^k)/(1-x^k).

The programs for A305102, there is no canonical definition to state claims against.
-/

/-! ## A305102.P8254808680254285201

`A305105(n)+A305104(n)`
-/

namespace A305102.P8254808680254285201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305105 n + A305104 n

end

end A305102.P8254808680254285201

/-! ## A305102.P7627540640906799592

`A305104(n)+A305104(n)+A305124(n)+A305122(n)`
-/

namespace A305102.P7627540640906799592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305104 n + (A305104 n + (A305124 n + A305122 n))

end

end A305102.P7627540640906799592

/-! ## A305102.P6970538339587438696

`A305105(n)+A305105(n)-(A305124(n)+A305122(n))`
-/

namespace A305102.P6970538339587438696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305105 n + (A305105 n - (A305124 n + A305122 n))

end

end A305102.P6970538339587438696

/-! ## A305102.P6188260709081072377

`A305101(n)+2*A305104(n)`
-/

namespace A305102.P6188260709081072377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305101 n + 2 * A305104 n

end

end A305102.P6188260709081072377

/-! ## A305102.P3286152881799497882

`2*A305105(n)-A305101(n)`
-/

namespace A305102.P3286152881799497882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A305105 n - A305101 n

end

end A305102.P3286152881799497882

/-!
# A305104: G.f.: Sum_{k>=1} x^(2*k)/(1-x^(2*k)) * Product_{k>=1} (1+x^k)/(1-x^k).

The programs for A305104, there is no canonical definition to state claims against.
-/

/-! ## A305104.P6674613587092671258

`A305105(n)-(A305124(n)+A305122(n))`
-/

namespace A305104.P6674613587092671258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305105 n - (A305124 n + A305122 n)

end

end A305104.P6674613587092671258

/-! ## A305104.P16053539840232988792

`A305102(n)-A305105(n)`
-/

namespace A305104.P16053539840232988792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305102 n - A305105 n

end

end A305104.P16053539840232988792

/-! ## A305104.P6184356328939281631

`A305102(n)%A305105(A028310(n))`
-/

namespace A305104.P6184356328939281631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305102 n) (A305105 (A028310 n).toNat)

end

end A305104.P6184356328939281631

/-! ## A305104.P16463263225484963747

`A305102(n)+A057428(n)*A305105(n)`
-/

namespace A305104.P16463263225484963747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305102 n + A057428 n * A305105 n

end

end A305104.P16463263225484963747

/-! ## A305104.P4968623295370816553

`A305105(n)-A305101(n)`
-/

namespace A305104.P4968623295370816553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305105 n - A305101 n

end

end A305104.P4968623295370816553

/-! ## A305104.P4148526084742526533

`(A305102(n)-A305101(n))/2`
-/

namespace A305104.P4148526084742526533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305102 n - A305101 n : ℚ) / 2

end

end A305104.P4148526084742526533

/-!
# A305105: G.f.: Sum_{k>=1} x^(2*k-1)/(1-x^(2*k-1)) * Product_{k>=1} (1+x^k)/(1-x^k).

The programs for A305105, there is no canonical definition to state claims against.
-/

/-! ## A305105.P13092436905709657926

`A305104(n)+A305124(n)+A305122(n)`
-/

namespace A305105.P13092436905709657926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305104 n + (A305124 n + A305122 n)

end

end A305105.P13092436905709657926

/-! ## A305105.P6915351063554185994

`A305102(n)-A305104(n)`
-/

namespace A305105.P6915351063554185994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305102 n - A305104 n

end

end A305105.P6915351063554185994

/-! ## A305105.P4072901233493222555

`A305104(n)+A305101(n)`
-/

namespace A305105.P4072901233493222555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305104 n + A305101 n

end

end A305105.P4072901233493222555

/-! ## A305105.P4987396714158135791

`(A305102(n)+A305101(n))/2`
-/

namespace A305105.P4987396714158135791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305102 n + A305101 n : ℚ) / 2

end

end A305105.P4987396714158135791

/-! ## A305105.P7378338225489751418

`(A305102(n)+A305101(n))*2^A008683(A003629(n+1))`
-/

namespace A305105.P7378338225489751418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305102 n + A305101 n : ℚ) * (2 : ℚ) ^ (A008683 (A003629 (n + 1)).toNat : ℤ)

end

end A305105.P7378338225489751418

/-!
# A305106: Number of unitary factorizations of Heinz numbers of integer partitions of n. Number of multiset partitions of integer partitions of n with pairwise disjoint blocks.

The programs for A305106, there is no canonical definition to state claims against.
-/

/-! ## A305106.P5567945453721503059

`A055086(A238826(n+1)-n)`
-/

namespace A305106.P5567945453721503059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A238826 (n + 1) - (n : ℤ)).toNat

end

end A305106.P5567945453721503059

/-! ## A305106.P2309592693220614711

`A103128(A280782(n+1)-∑[n])`
-/

namespace A305106.P2309592693220614711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (A280782 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A305106.P2309592693220614711

/-! ## A305106.P17711457490288859779

`A182746(n)-Δ[A185284(3*n+2)]`
-/

namespace A305106.P17711457490288859779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182746 n - (f1 (n + 1) - f1 n)

end

end A305106.P17711457490288859779

/-! ## A305106.P7378778414417581269

`A003056(A280782(n+1)-A004273(n))`
-/

namespace A305106.P7378778414417581269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A280782 (n + 1) - A004273 n).toNat

end

end A305106.P7378778414417581269

/-! ## A305106.P17319326070553793914

`A003056(A280782(n+1)-A006218(n))`
-/

namespace A305106.P17319326070553793914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A280782 (n + 1) - A006218 n).toNat

end

end A305106.P17319326070553793914

/-!
# A305107: O.g.f. A(x) satisfies: [x^n] exp( n * x*A(x)^2 ) * (n + 1 - A(x)) = 0 for n > 0.

The programs for A305107, there is no canonical definition to state claims against.
-/

/-! ## A305107.P18266827046649745411

`A351048(A006721(3*n))+A071675(2*n+1)`
-/

namespace A305107.P18266827046649745411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351048 (A006721 (3 * n)).toNat + A071675 (2 * n + 1)

end

end A305107.P18266827046649745411

/-!
# A305108: O.g.f. A(x) satisfies: [x^n] exp( n^2 * x*A(x)^2 ) * (2 - A(x)) = 0 for n > 0.

The programs for A305108, there is no canonical definition to state claims against.
-/

/-! ## A305108.P1258182855685826289

`A000010(xor(3, ∑[A171206(n)]))`
-/

namespace A305108.P1258182855685826289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Int.xor 3 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A305108.P1258182855685826289

/-!
# A305110: O.g.f. A(x) satisfies: [x^n] exp( n * x*A(x) ) * (n + 1 - A(x)) = 0 for n >= 0.

The programs for A305110, there is no canonical definition to state claims against.
-/

/-! ## A305110.P138496103684978587

`A028310(n)*A338301(n)`
-/

namespace A305110.P138496103684978587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A338301 n

end

end A305110.P138496103684978587

/-! ## A305110.P17100354674309522888

`A137735(n²)*A338301(n)`
-/

namespace A305110.P17100354674309522888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (n ^ 2) * A338301 n

end

end A305110.P17100354674309522888

/-! ## A305110.P16613526809716398221

`A007318(A000124(n))*A338301(n)`
-/

namespace A305110.P16613526809716398221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000124 n).toNat * A338301 n

end

end A305110.P16613526809716398221

/-! ## A305110.P4777875320718452749

`A008619(A163985(n))*A338301(n)`
-/

namespace A305110.P4777875320718452749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A163985 n).toNat * A338301 n

end

end A305110.P4777875320718452749

/-! ## A305110.P15019136082350253752

`A007318(A000217(n)+1)*A338301(n)`
-/

namespace A305110.P15019136082350253752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n + 1).toNat * A338301 n

end

end A305110.P15019136082350253752

/-!
# A305111: O.g.f. A(x) satisfies: [x^n] exp( n * x*A(x) ) * (n - A(x)) = 0 for n >= 0.

The programs for A305111, there is no canonical definition to state claims against.
-/

/-! ## A305111.P10999546149096939444

`A305109(∑[n])`
-/

namespace A305111.P10999546149096939444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305109 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A305111.P10999546149096939444

/-! ## A305111.P2758126317330385226

`lcm(A033999(n), A305109(A000217(n)))`
-/

namespace A305111.P2758126317330385226
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A305109 (A000217 n).toNat)

end

end A305111.P2758126317330385226

/-! ## A305111.P4981373809247426173

`A087960(n)²*A305109(A000217(n))`
-/

namespace A305111.P4981373809247426173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n ^ 2 * A305109 (A000217 n).toNat

end

end A305111.P4981373809247426173

/-! ## A305111.P622714681493723321

`A305109(A000217(n))+A000007(n+1)`
-/

namespace A305111.P622714681493723321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305109 (A000217 n).toNat + A000007 (n + 1)

end

end A305111.P622714681493723321

/-! ## A305111.P7337088608573233807

`A000041(C(n, 64))*A305109(A000217(n))`
-/

namespace A305111.P7337088608573233807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n 64) * A305109 (A000217 n).toNat

end

end A305111.P7337088608573233807

/-!
# A305112: O.g.f. A(x) satisfies: [x^n] exp( n * x*A(x) ) * (n + 2 - A(x)) = 0 for n > 0.

The programs for A305112, there is no canonical definition to state claims against.
-/

/-! ## A305112.P4618486865697671420

`A371318(n)+A001222(A258177(n))`
-/

namespace A305112.P4618486865697671420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371318 n + A001222 (A258177 n).toNat

end

end A305112.P4618486865697671420

/-!
# A305114: O.g.f. A(x) satisfies: [x^n] exp( x*A(x) ) * (n^2 + 1 - A(x)) = 0 for n >= 0.

The programs for A305114, there is no canonical definition to state claims against.
-/

/-! ## A305114.P693369707426632446

`A195184(A107669(n))`
-/

namespace A305114.P693369707426632446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195184 (A107669 n).toNat

end

end A305114.P693369707426632446

/-!
# A305117: a(n) = A304651(n)/4.

The programs for A305117, the canonical program `A305117.P17948678590562359132` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305117 has offset 0).

The definition of A305117 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000089, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A305117.P9970777971205399646

`A304651(n)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A305117.P9970777971205399646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304651 n : ℚ) / 4

end

end A305117.P9970777971205399646

namespace A305117

/-- `A304651(n)/4` -/
def P9970777971205399646.Spec : Prop :=
  ∀ n, P9970777971205399646.a n = (A305117 n : ℚ)

end A305117

/-! ## A305117.P17948678590562359132

`a(n-1)+A000089(n)` with `a(0)=0`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A305117

/-- `a(n-1)+A000089(n)` -/
def P17948678590562359132.Spec : Prop :=
  ∀ n, P17948678590562359132.a n = A305117 n

theorem P17948678590562359132.correct : P17948678590562359132.Spec := by
  intro n
  simp only [A305117]

end A305117

/-! ## A305117.P18150538900811820170

`∑[A295819(char[1]+n)]`
-/

namespace A305117.P18150538900811820170
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295819 ((if ∃ j, f2 j = n then 1 else 0) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305117.P18150538900811820170

namespace A305117

/-- `∑[A295819(char[1]+n)]` -/
def P18150538900811820170.Spec : Prop :=
  ∀ n, P18150538900811820170.a n = A305117 n

end A305117

/-! ## A305117.P15316149618580527813

`∑[A295819(n)-char[1]]`
-/

namespace A305117.P15316149618580527813
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295819 n - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305117.P15316149618580527813

namespace A305117

/-- `∑[A295819(n)-char[1]]` -/
def P15316149618580527813.Spec : Prop :=
  ∀ n, P15316149618580527813.a n = A305117 n

end A305117

/-! ## A305117.P11960651557039542615

`∑[A000089(C(4, 2*n+3)+n)]`
-/

namespace A305117.P11960651557039542615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000089 (Nat.choose 4 (2 * n + 3) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305117.P11960651557039542615

namespace A305117

/-- `∑[A000089(C(4, 2*n+3)+n)]` -/
def P11960651557039542615.Spec : Prop :=
  ∀ n, P11960651557039542615.a n = A305117 n

end A305117

/-! ## A305117.P14247410083150445088

`∑[A000089(n+1)]-A000089(n+1)`
-/

namespace A305117.P14247410083150445088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000089 (n + 1)

end

end A305117.P14247410083150445088

namespace A305117

/-- `∑[A000089(n+1)]-A000089(n+1)` -/
def P14247410083150445088.Spec : Prop :=
  ∀ n, P14247410083150445088.a n = A305117 n

end A305117

/-! ## A305117.P18405852030174031130

`A002265(A304651(n))`
-/

namespace A305117.P18405852030174031130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A304651 n).toNat

end

end A305117.P18405852030174031130

namespace A305117

/-- `A002265(A304651(n))` -/
def P18405852030174031130.Spec : Prop :=
  ∀ n, P18405852030174031130.a n = A305117 n

end A305117

/-! ## A305117.P1052980425541043761

`A029578(A295820(n))`
-/

namespace A305117.P1052980425541043761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A295820 n).toNat

end

end A305117.P1052980425541043761

namespace A305117

/-- `A029578(A295820(n))` -/
def P1052980425541043761.Spec : Prop :=
  ∀ n, P1052980425541043761.a n = A305117 n

end A305117

/-! ## A305117.P13145021918431427237

`A295820(n)+A057428(n)`
-/

namespace A305117.P13145021918431427237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295820 n + A057428 n

end

end A305117.P13145021918431427237

namespace A305117

/-- `A295820(n)+A057428(n)` -/
def P13145021918431427237.Spec : Prop :=
  ∀ n, P13145021918431427237.a n = A305117 n

end A305117

/-! ## A305117.P14305937196846177154

`A295820(n)-A057427(n)`
-/

namespace A305117.P14305937196846177154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295820 n - A057427 n

end

end A305117.P14305937196846177154

namespace A305117

/-- `A295820(n)-A057427(n)` -/
def P14305937196846177154.Spec : Prop :=
  ∀ n, P14305937196846177154.a n = A305117 n

end A305117

/-! ## A305117.P12724873323203099985

`A295820(n)-A049643(n)/A005728(n)`
-/

namespace A305117.P12724873323203099985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295820 n : ℚ) - (A049643 n : ℚ) / (A005728 n : ℚ)

end

end A305117.P12724873323203099985

namespace A305117

/-- `A295820(n)-A049643(n)/A005728(n)` -/
def P12724873323203099985.Spec : Prop :=
  ∀ n, P12724873323203099985.a n = (A305117 n : ℚ)

end A305117

/-!
# A305118: a(n) = Sum_{k=0..n-1} ( 1 + a(k) * a(n-k-1) ) for n >= 1, a(0) = 1.

The programs for A305118, there is no canonical definition to state claims against.
-/

/-! ## A305118.P6333149209304500959

`∑[A081753(7*A150199(n))]`
-/

namespace A305118.P6333149209304500959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (7 * A150199 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305118.P6333149209304500959

/-! ## A305118.P14726860299447328381

`A108954((A355866(n)+∑[n])*(n+1))`
-/

namespace A305118.P14726860299447328381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 ((A355866 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) * (n + 1 : ℤ)).toNat

end

end A305118.P14726860299447328381

/-!
# A305119: G.f.: Sum_{k>=1} x^k/(1-x^k) * Product_{k>=1} 1/(1-x^k)^2.

The programs for A305119, there is no canonical definition to state claims against.
-/

/-! ## A305119.P8110009392198019515

`floor(log(A022629(3^n)))`
-/

namespace A305119.P8110009392198019515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A022629 (3 ^ n) : ℝ)⌋

end

end A305119.P8110009392198019515

/-! ## A305119.P13838179385563704112

`∑[A246647(a(n-1))+1]` with `a(0)=0, a(1)=1`
-/

namespace A305119.P13838179385563704112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  A246647 (f1 (n - 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305119.P13838179385563704112

/-! ## A305119.P16027311230212996718

`A237253(A299259(n)²)`
-/

namespace A305119.P16027311230212996718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237253 (A299259 n ^ 2).toNat

end

end A305119.P16027311230212996718

/-!
# A305120: G.f.: (Sum_{k>=1} x^k/(1-x^k) * Product_{k>=1} 1/(1-x^k) )^2.

The programs for A305120, there is no canonical definition to state claims against.
-/

/-! ## A305120.P5278278094003057841

`A104463(A228820(n))`
-/

namespace A305120.P5278278094003057841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104463 (A228820 n).toNat

end

end A305120.P5278278094003057841

/-! ## A305120.P298130090555103343

`∑[∑[A089868(A209970(n))]]`
-/

namespace A305120.P298130090555103343
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089868 (A209970 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305120.P298130090555103343

/-! ## A305120.P8990195583877853623

`∑[∑[A338743(A283877(n))]]`
-/

namespace A305120.P8990195583877853623
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338743 (A283877 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305120.P8990195583877853623

/-!
# A305121: G.f.: Sum_{k>=1} x^(2*k)/(1+x^(2*k)) * Product_{k>=1} 1/(1-x^k).

The programs for A305121, there is no canonical definition to state claims against.
-/

/-! ## A305121.P4307453434225438238

`xor(A179391(A250178(n+1)), A236544(n+1))`
-/

namespace A305121.P4307453434225438238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A179391 (A250178 (n + 1)).toNat) (A236544 (n + 1))

end

end A305121.P4307453434225438238

/-! ## A305121.P3736297604192599047

`A245661(∏[A106466(n)])`
-/

namespace A305121.P3736297604192599047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106466 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245661 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A305121.P3736297604192599047

/-!
# A305122: G.f.: Sum_{k>=1} x^(2*k)/(1+x^(2*k)) * Product_{k>=1} (1+x^k)/(1-x^k).

The programs for A305122, there is no canonical definition to state claims against.
-/

/-! ## A305122.P15766496753696071953

`A305101(n)-A305124(n)`
-/

namespace A305122.P15766496753696071953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305101 n - A305124 n

end

end A305122.P15766496753696071953

/-! ## A305122.P8912570723612935566

`A305105(n)-(A305124(n)+A305104(n))`
-/

namespace A305122.P8912570723612935566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305105 n - (A305124 n + A305104 n)

end

end A305122.P8912570723612935566

/-! ## A305122.P315264401135500565

`A305102(n)-2*A305104(n)-A305124(n)`
-/

namespace A305122.P315264401135500565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305102 n - 2 * A305104 n - A305124 n

end

end A305122.P315264401135500565

/-! ## A305122.P1323030979263072785

`2*A305105(n)-A305102(n)-A305124(n)`
-/

namespace A305122.P1323030979263072785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A305105 n - A305102 n - A305124 n

end

end A305122.P1323030979263072785

/-! ## A305122.P8965675620105221061

`A305102(n)-(A305124(n)+A005843(A305104(n)))`
-/

namespace A305122.P8965675620105221061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305102 n - (A305124 n + A005843 (A305104 n).toNat)

end

end A305122.P8965675620105221061

/-!
# A305123: G.f.: Sum_{k>=1} x^(2*k-1)/(1+x^(2*k-1)) * Product_{k>=1} 1/(1-x^k).

The programs for A305123, there is no canonical definition to state claims against.
-/

/-! ## A305123.P7538480371820166574

`A347520(Δ[A096541(n)]-A085811(n+1))`
-/

namespace A305123.P7538480371820166574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347520 (f1 (n + 1) - f1 n - A085811 (n + 1)).toNat

end

end A305123.P7538480371820166574

/-! ## A305123.P18256515514917941034

`A347520(A138137(n+1)-(A085811(n+1)+A000041(n)))`
-/

namespace A305123.P18256515514917941034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347520 (A138137 (n + 1) - (A085811 (n + 1) + A000041 n)).toNat

end

end A305123.P18256515514917941034

/-! ## A305123.P7747494102553863251

`A347520(A006128(n+1)-A093694(n)-A085811(n+1))`
-/

namespace A305123.P7747494102553863251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347520 (A006128 (n + 1) - A093694 n - A085811 (n + 1)).toNat

end

end A305123.P7747494102553863251

/-! ## A305123.P17744643628823534699

`A347520(A182699(n+1)+A002865(n+1)-A085811(n+1))`
-/

namespace A305123.P17744643628823534699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347520 (A182699 (n + 1) + A002865 (n + 1) - A085811 (n + 1)).toNat

end

end A305123.P17744643628823534699

/-! ## A305123.P18143244252787655603

`A347520(A138880(n+1)-(A207035(n+1)+A085811(n+1)))`
-/

namespace A305123.P18143244252787655603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347520 (A138880 (n + 1) - (A207035 (n + 1) + A085811 (n + 1))).toNat

end

end A305123.P18143244252787655603

/-!
# A305124: G.f.: Sum_{k>=1} x^(2*k-1)/(1+x^(2*k-1)) * Product_{k>=1} (1+x^k)/(1-x^k).

The programs for A305124, there is no canonical definition to state claims against.
-/

/-! ## A305124.P16440752473088628952

`A305101(n)-A305122(n)`
-/

namespace A305124.P16440752473088628952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305101 n - A305122 n

end

end A305124.P16440752473088628952

/-! ## A305124.P624381881841448714

`A305105(n)-(A305122(n)+A305104(n))`
-/

namespace A305124.P624381881841448714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305105 n - (A305122 n + A305104 n)

end

end A305124.P624381881841448714

/-! ## A305124.P14398430917765034246

`A305105(n)-A305104(n)-A305122(A028310(n))`
-/

namespace A305124.P14398430917765034246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305105 n - A305104 n - A305122 (A028310 n).toNat

end

end A305124.P14398430917765034246

/-! ## A305124.P543686813613569910

`A305102(n)-2*A305104(n)-A305122(n)`
-/

namespace A305124.P543686813613569910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305102 n - 2 * A305104 n - A305122 n

end

end A305124.P543686813613569910

/-! ## A305124.P11893344181842136738

`2*A305105(n)-A305102(n)-A305122(n)`
-/

namespace A305124.P11893344181842136738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A305105 n - A305102 n - A305122 n

end

end A305124.P11893344181842136738

/-!
# A305125: Number of ways to express n^2 as average of two primes p1 < p2.

The programs for A305125, there is no canonical definition to state claims against.
-/

/-! ## A305125.P5546903756684500343

`A061357((n+1)²)`
-/

namespace A305125.P5546903756684500343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061357 ((n + 1) ^ 2)

end

end A305125.P5546903756684500343

/-! ## A305125.P3431021513096253757

`or(char[1], A061357(∑[2*n+1]))`
-/

namespace A305125.P3431021513096253757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A061357 (∑ j ∈ Finset.range (n + 1), f2 j))

end

end A305125.P3431021513096253757

/-! ## A305125.P6379956966329073544

`(n%2)!*A061357((n+1)^2)`
-/

namespace A305125.P6379956966329073544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n % 2) : ℤ) * A061357 ((n + 1) ^ 2)

end

end A305125.P6379956966329073544

/-! ## A305125.P7895512816778902399

`A004525(2*A061357((n+1)^2))`
-/

namespace A305125.P7895512816778902399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * A061357 ((n + 1) ^ 2)).toNat

end

end A305125.P7895512816778902399

/-! ## A305125.P2822232069063979172

`and(-1, A061357(A002620(2*(n+1))))`
-/

namespace A305125.P2822232069063979172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A061357 (A002620 (2 * (n + 1))).toNat)

end

end A305125.P2822232069063979172

/-! ## A305125.P8284662510011143500

`∑{d}[A061357(∑[2*n+1]), A000010(#)]`
-/

namespace A305125.P8284662510011143500
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061357 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A305125.P8284662510011143500

/-! ## A305125.P11824591319571128791

`A026741(2*A061357((n+1)*(n+1)))`
-/

namespace A305125.P11824591319571128791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (2 * A061357 ((n + 1) * (n + 1))).toNat

end

end A305125.P11824591319571128791

/-! ## A305125.P18224492819335720308

`A061357(∑[2*n+1])%(A000041(n)+1)`
-/

namespace A305125.P18224492819335720308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061357 (∑ j ∈ Finset.range (n + 1), f1 j)) (A000041 n + 1)

end

end A305125.P18224492819335720308

/-! ## A305125.P7412623501008829681

`A061357(A000290(n+1))+and(2, A000290(n))`
-/

namespace A305125.P7412623501008829681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061357 (A000290 (n + 1)).toNat + Int.land 2 (A000290 n)

end

end A305125.P7412623501008829681

/-! ## A305125.P6584223486630079132

`A014963(A008458(n))*A061357(∑[n+1+n])`
-/

namespace A305125.P6584223486630079132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A008458 n).toNat * A061357 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A305125.P6584223486630079132

/-! ## A305125.P2176091963931918879

`A001222(record[A014963(n+1)])*A061357((n+1)^2)`
-/

namespace A305125.P2176091963931918879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat * A061357 ((n + 1) ^ 2)

end

end A305125.P2176091963931918879

/-! ## A305125.P13810010138561999121

`A010052(A048760(n))*A061357(A000290(n+1))`
-/

namespace A305125.P13810010138561999121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A048760 n).toNat * A061357 (A000290 (n + 1)).toNat

end

end A305125.P13810010138561999121

/-! ## A305125.P17535101585301068489

`A061357(A000290(n+1))+A010051(A236917(n+1))`
-/

namespace A305125.P17535101585301068489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061357 (A000290 (n + 1)).toNat + A010051 (A236917 (n + 1)).toNat

end

end A305125.P17535101585301068489

/-! ## A305125.P744897622277755931

`A002375((n+1)²)`
-/

namespace A305125.P744897622277755931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 ((n + 1) ^ 2)

end

end A305125.P744897622277755931

/-! ## A305125.P3840336566590933387

`A045917((n+1)²)`
-/

namespace A305125.P3840336566590933387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 ((n + 1) ^ 2)

end

end A305125.P3840336566590933387

/-! ## A305125.P351202602576057888

`A061357(∑[2*n+1])^A014963(∑[n+1])`
-/

namespace A305125.P351202602576057888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061357 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ)

end

end A305125.P351202602576057888

/-! ## A305125.P13165254975571279727

`A068307((n+2)²+n²)`
-/

namespace A305125.P13165254975571279727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068307 ((n + 2) ^ 2 + n ^ 2)

end

end A305125.P13165254975571279727

/-! ## A305125.P18131390300997641964

`A190353(2*(n+1)²)`
-/

namespace A305125.P18131390300997641964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190353 (2 * (n + 1) ^ 2)

end

end A305125.P18131390300997641964

/-! ## A305125.P4638564206607736184

`A002372((n+1)²)/2`
-/

namespace A305125.P4638564206607736184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002372 ((n + 1) ^ 2) : ℚ) / 2

end

end A305125.P4638564206607736184

/-! ## A305125.P4554376050311143585

`A035026((n+1)²)/2`
-/

namespace A305125.P4554376050311143585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035026 ((n + 1) ^ 2) : ℚ) / 2

end

end A305125.P4554376050311143585

/-!
# A305126: Number of ways to express n^3 as average of two primes p1 < p2.

The programs for A305126, there is no canonical definition to state claims against.
-/

/-! ## A305126.P14263709656711364288

`A061357(Δ[∑[n]²])`
-/

namespace A305126.P14263709656711364288
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061357 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A305126.P14263709656711364288

/-! ## A305126.P277117951583188504

`or(char[2], A061357(A184628(n+1)))`
-/

namespace A305126.P277117951583188504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A061357 (A184628 (n + 1)).toNat)

end

end A305126.P277117951583188504

/-! ## A305126.P13071795150293898197

`A061357((n+1)^3)-A060576(2*n)+1`
-/

namespace A305126.P13071795150293898197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061357 ((n + 1) ^ 3) - A060576 (2 * n) + 1

end

end A305126.P13071795150293898197

/-! ## A305126.P9692329748413640446

`A069531(3*(n+1))+A061357((n+1)^3)`
-/

namespace A305126.P9692329748413640446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069531 (3 * (n + 1)) + A061357 ((n + 1) ^ 3)

end

end A305126.P9692329748413640446

/-! ## A305126.P4120636942756338659

`A061357(A000578(n+1))%A003945(n)`
-/

namespace A305126.P4120636942756338659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061357 (A000578 (n + 1)).toNat) (A003945 n)

end

end A305126.P4120636942756338659

/-!
# A305127: Expansion of e.g.f. Product_{k>=1} 1/(1 - x^k)^(sigma(k)/k), where sigma(k) is the sum of the divisors of k.

The programs for A305127, there is no canonical definition to state claims against.
-/

/-! ## A305127.P7803049547069475495

`A298865(A001764(n))-A298859(n)`
-/

namespace A305127.P7803049547069475495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298865 (A001764 n).toNat - A298859 n

end

end A305127.P7803049547069475495

/-! ## A305127.P9990960229278915888

`or(A033270(A121394(n)), A121394(n))`
-/

namespace A305127.P9990960229278915888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A033270 (A121394 n).toNat) (A121394 n)

end

end A305127.P9990960229278915888

/-!
# A305128: Expansion of e.g.f. Product_{k>=1} 1/(1 - x^k)^AH(k), where AH(k) is the k-th alternating harmonic number.

The programs for A305128, there is no canonical definition to state claims against.
-/

/-! ## A305128.P12719222069788015716

`or(A000188(n+1), A116941(A000670(n)))`
-/

namespace A305128.P12719222069788015716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000188 (n + 1)) (A116941 (A000670 n).toNat)

end

end A305128.P12719222069788015716

/-! ## A305128.P17702677290515733982

`A099848(A218261(n))`
-/

namespace A305128.P17702677290515733982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099848 (A218261 n).toNat

end

end A305128.P17702677290515733982

/-!
# A305129: Solution (a(n)) of the complementary equation a(n) = 2*a(n-1) - a(n-2) + b(n); see Comments.

The programs for A305129, there is no canonical definition to state claims against.
-/

/-! ## A305129.P13235183761353664105

`∑[a(n-1)+A325678(n²)+3]` with `a(0)=1, a(1)=1`
-/

namespace A305129.P13235183761353664105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + (A325678 (n ^ 2) + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305129.P13235183761353664105

/-! ## A305129.P728437860588911957

`∑[A232748(A061577(n+1))]+n²-n`
-/

namespace A305129.P728437860588911957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232748 (A061577 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n ^ 2 : ℤ) - (n : ℤ))

end

end A305129.P728437860588911957

/-! ## A305129.P639811717244590382

`A101776(A274501(n+5))`
-/

namespace A305129.P639811717244590382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101776 (A274501 (n + 5)).toNat

end

end A305129.P639811717244590382

/-!
# A305130: Numbers k with the property that there exists a positive integer M, called multiplier, such that the sum of the digits of k times the multiplier added to the reversal of this product gives k.

The programs for A305130, there is no canonical definition to state claims against.
-/

/-! ## A305130.P7477400675362828280

`∩[A263808(n+1), A323190(n+1)]`
-/

namespace A305130.P7477400675362828280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A305130.P7477400675362828280

/-! ## A305130.P12358646049521671698

`∩[A271239(n+1), A323190(n+1)]`
-/

namespace A305130.P12358646049521671698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A305130.P12358646049521671698

/-! ## A305130.P414053560663071187

`∩[A323190(n+1), A331386(n+2)]`
-/

namespace A305130.P414053560663071187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331386 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A305130.P414053560663071187

/-! ## A305130.P4047474910954278782

`A067030(comp[Δ[A359361(3*n+2)]])`
-/

namespace A305130.P4047474910954278782
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359361 (3 * n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067030 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A305130.P4047474910954278782

/-! ## A305130.P12038070134210102081

`A067030(comp[A031944(n+1)-A328557(2*(n+2))])`
-/

namespace A305130.P12038070134210102081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031944 (n + 1) - A328557 (2 * (n + 2))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067030 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A305130.P12038070134210102081

/-!
# A305131: Numbers k with the property that there exists a positive integer multiplier M such that M times the sum of the digits of k, multiplied further by the reversal of this product, gives k.

The programs for A305131, there is no canonical definition to state claims against.
-/

/-! ## A305131.P14739773443186763093

`A306830(lt[A306825(n+1), A306689(n+1)]+1)`
-/

namespace A305131.P14739773443186763093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306825 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306689 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306830 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A305131.P14739773443186763093

/-!
# A305132: Number of connected graphs on n unlabeled nodes with exactly 2 cycles joined along two or more edges but not more than half each cycle and all nodes having degree at most 4.

The programs for A305132, there is no canonical definition to state claims against.
-/

/-! ## A305132.P8941993694048227564

`A059995(11*(∑[3^n]+1-2^n))`
-/

namespace A305132.P8941993694048227564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (11 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (1 - (2 ^ n : ℤ)))).toNat

end

end A305132.P8941993694048227564

/-! ## A305132.P2430544932788455359

`A156562(∑[∑[3^n-floor(2^(n-1))]])`
-/

namespace A305132.P2430544932788455359
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156562 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A305132.P2430544932788455359

/-!
# A305133: E.g.f.: (1-x) / (exp(-x) - x).

The programs for A305133, there is no canonical definition to state claims against.
-/

/-! ## A305133.P4919660326942929017

`2*A072597(n)-A305990(n)`
-/

namespace A305133.P4919660326942929017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A072597 n - A305990 n

end

end A305133.P4919660326942929017

/-! ## A305133.P9178137454016768551

`A305990(n)%(2*A006153(n))`
-/

namespace A305133.P9178137454016768551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305990 n) (2 * A006153 n)

end

end A305133.P9178137454016768551

/-! ## A305133.P7623708051415946729

`A072597(n)-lcm(n, A006153(n))`
-/

namespace A305133.P7623708051415946729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072597 n - (Int.lcm (n : ℤ) (A006153 n) : ℤ)

end

end A305133.P7623708051415946729

/-! ## A305133.P13084568735907206650

`A072597(A028310(n))-A006153(n)`
-/

namespace A305133.P13084568735907206650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072597 (A028310 n).toNat - A006153 n

end

end A305133.P13084568735907206650

/-! ## A305133.P16495484990749854725

`A072597(A000007(n)+n)-A006153(n)`
-/

namespace A305133.P16495484990749854725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072597 (A000007 n + (n : ℤ)).toNat - A006153 n

end

end A305133.P16495484990749854725

/-! ## A305133.P6448094712321264409

`A000007(n)-(A006153(n)-A072597(n))`
-/

namespace A305133.P6448094712321264409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - (A006153 n - A072597 n)

end

end A305133.P6448094712321264409

/-! ## A305133.P11377221260289194985

`A072597(n)-A006153(n)%A138909(n)`
-/

namespace A305133.P11377221260289194985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072597 n - Int.tmod (A006153 n) (A138909 n)

end

end A305133.P11377221260289194985

/-!
# A305137: O.g.f. A(x) satisfies: 0 = [x^n] exp( n^2 * Integral A(x) dx ) / A(x), for n > 0.

The programs for A305137, there is no canonical definition to state claims against.
-/

/-! ## A305137.P9983870022922586793

`A007775((1-n!)²+1)`
-/

namespace A305137.P9983870022922586793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007775 ((1 - (Nat.factorial n : ℤ)) ^ 2 + 1).toNat

end

end A305137.P9983870022922586793

/-!
# A305139: O.g.f. A(x) satisfies: 0 = [x^n] exp( n^2 * Integral A(x)^2 dx ) / A(x), for n > 0.

The programs for A305139, there is no canonical definition to state claims against.
-/

/-! ## A305139.P9453845882732272404

`A193020(n*(n+1)/2*A034200(n+1))`
-/

namespace A305139.P9453845882732272404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193020 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 1 : ℚ) / 2) * (A034200 (n + 1) : ℚ))).toNat

end

end A305139.P9453845882732272404

/-!
# A305141: O.g.f. A(x) satisfies: 0 = [x^n] exp( n^2 * Integral A(x)^3 dx ) / A(x), for n > 0.

The programs for A305141, there is no canonical definition to state claims against.
-/

/-! ## A305141.P18446289977569073445

`A264788(A299429(n))-A299427(n)`
-/

namespace A305141.P18446289977569073445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264788 (A299429 n).toNat - A299427 n

end

end A305141.P18446289977569073445

/-!
# A305144: O.g.f. A(x) satisfies: 0 = [x^n] exp( n^2 * Integral 1/A(x) dx ) / A(x), for n > 0.

The programs for A305144, there is no canonical definition to state claims against.
-/

/-! ## A305144.P15084610344550706622

`A127036(n^n+3)`
-/

namespace A305144.P15084610344550706622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127036 (n ^ n + 3)

end

end A305144.P15084610344550706622

/-!
# A305147: O.g.f. A(x) satisfies: 0 = [x^n] exp( n^2 * Integral 1/A(x)^2 dx ) / A(x), for n > 0.

The programs for A305147, there is no canonical definition to state claims against.
-/

/-! ## A305147.P8283198749966609236

`A182885(ceil(3^(n-1)))`
-/

namespace A305147.P8283198749966609236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182885 ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

end

end A305147.P8283198749966609236

/-!
# A305148: Number of integer partitions of n whose distinct parts are pairwise indivisible.

The programs for A305148, there is no canonical definition to state claims against.
-/

/-! ## A305148.P11079035911474717239

`∑{d}[n, A328676(#)]+floor(acot(n))`
-/

namespace A305148.P11079035911474717239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328676 d + ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A305148.P11079035911474717239

/-! ## A305148.P17771026088234556287

`A028310(∑{d}[n, A328676(#)])`
-/

namespace A305148.P17771026088234556287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ d ∈ Nat.divisors (f1 n), A328676 d).toNat

end

end A305148.P17771026088234556287

/-! ## A305148.P4912137826279655960

`A000007(n)+∑{d}[n, A328676(#)]`
-/

namespace A305148.P4912137826279655960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + ∑ d ∈ Nat.divisors (f1 n), A328676 d

end

end A305148.P4912137826279655960

/-! ## A305148.P3633558399634354517

`A151933(n)+∑{d}[n, A328676(#)]`
-/

namespace A305148.P3633558399634354517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n + ∑ d ∈ Nat.divisors (f1 n), A328676 d

end

end A305148.P3633558399634354517

/-! ## A305148.P227885179267857643

`∑{d}[A000007(2*n)-n, A328676(#)]`
-/

namespace A305148.P227885179267857643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (2 * n) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A328676 d

end

end A305148.P227885179267857643

/-! ## A305148.P10469264056994054464

`∑{d}[n, A328676(#)]+A020761(n)/5`
-/

namespace A305148.P10469264056994054464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), A328676 d : ℤ) : ℚ) + (A020761 n : ℚ) / 5

end

end A305148.P10469264056994054464

/-! ## A305148.P17384175645689218386

`∑{d}[n, A328676(#)]^A019426(2*n)`
-/

namespace A305148.P17384175645689218386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), A328676 d : ℤ) : ℚ) ^ (A019426 (2 * n) : ℤ)

end

end A305148.P17384175645689218386

/-! ## A305148.P6608531126880134454

`∑{d}[n, A328676(#)]+A008683((n+1)²)`
-/

namespace A305148.P6608531126880134454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328676 d + A008683 ((n + 1) ^ 2)

end

end A305148.P6608531126880134454

/-! ## A305148.P10491178651568142507

`∑{d}[n, A328676(#)]^(A000040(n+1)%2)`
-/

namespace A305148.P10491178651568142507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), A328676 d : ℤ) : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A305148.P10491178651568142507

/-! ## A305148.P16778244270157079785

`∑{d}[A000010(3*n+1)%2+n, A328676(#)]`
-/

namespace A305148.P16778244270157079785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (3 * n + 1)) 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A328676 d

end

end A305148.P16778244270157079785

/-!
# A305149: Number of factorizations of n whose distinct factors are pairwise indivisible and greater than 1.

The programs for A305149, there is no canonical definition to state claims against.
-/

/-! ## A305149.P4105050936990610495

`A328615(A008480(n+1))+A327399(n+1)`
-/

namespace A305149.P4105050936990610495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328615 (A008480 (n + 1)).toNat + A327399 (n + 1)

end

end A305149.P4105050936990610495

/-! ## A305149.P11089403842912565315

`A336737(n+1)-A211534(A055212(n+1))`
-/

namespace A305149.P11089403842912565315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336737 (n + 1) - A211534 (A055212 (n + 1)).toNat

end

end A305149.P11089403842912565315

/-! ## A305149.P15685420268044735779

`A323303(n+1)-A234359(A323303(n+1))`
-/

namespace A305149.P15685420268044735779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323303 (n + 1) - A234359 (A323303 (n + 1)).toNat

end

end A305149.P15685420268044735779

/-! ## A305149.P8972467587288353992

`A001222(A000245(A323303(n+1)))+1`
-/

namespace A305149.P8972467587288353992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000245 (A323303 (n + 1)).toNat).toNat + 1

end

end A305149.P8972467587288353992

/-! ## A305149.P11607583203294860293

`A235224(A323303(n+1)^A072670(n))`
-/

namespace A305149.P11607583203294860293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235224 (SequenceMachineLib.roundAway ((A323303 (n + 1) : ℚ) ^ (A072670 n : ℤ))).toNat

end

end A305149.P11607583203294860293

/-!
# A305150: Number of factorizations of n into distinct, pairwise indivisible factors greater than 1.

The programs for A305150, the canonical program `A305150.P11651088542396370948` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305150 has offset 1).

The definition of A305150 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A305150.P11651088542396370948

`A348182(∑{p}[n+1, gcd(n, #)]^A262202(n+1))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A305150

/-- `A348182(∑{p}[n+1, gcd(n, #)]^A262202(n+1))` -/
def P11651088542396370948.Spec : Prop :=
  ∀ n, P11651088542396370948.a n = A305150 (n + 1)

theorem P11651088542396370948.correct : P11651088542396370948.Spec := by
  intro n
  simp only [A305150, Nat.add_sub_cancel]

end A305150

/-! ## A305150.P17759777729917211558

`A235224(A034444(n+1)^A262202(n+1))`
-/

namespace A305150.P17759777729917211558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235224 (SequenceMachineLib.roundAway ((A034444 (n + 1) : ℚ) ^ (A262202 (n + 1) : ℤ))).toNat

end

end A305150.P17759777729917211558

namespace A305150

/-- `A235224(A034444(n+1)^A262202(n+1))` -/
def P17759777729917211558.Spec : Prop :=
  ∀ n, P17759777729917211558.a n = A305150 (n + 1)

end A305150

/-! ## A305150.P14164562904353905243

`A235224(A350331(n+1)^A262202(n+1))`
-/

namespace A305150.P14164562904353905243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235224 (SequenceMachineLib.roundAway ((A350331 (n + 1) : ℚ) ^ (A262202 (n + 1) : ℤ))).toNat

end

end A305150.P14164562904353905243

namespace A305150

/-- `A235224(A350331(n+1)^A262202(n+1))` -/
def P14164562904353905243.Spec : Prop :=
  ∀ n, P14164562904353905243.a n = A305150 (n + 1)

end A305150

/-! ## A305150.P16828492528075460007

`A049386(A262202(n+1)%A341650(n))`
-/

namespace A305150.P16828492528075460007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049386 (Int.tmod (A262202 (n + 1)) (A341650 n)).toNat

end

end A305150.P16828492528075460007

namespace A305150

/-- `A049386(A262202(n+1)%A341650(n))` -/
def P16828492528075460007.Spec : Prop :=
  ∀ n, P16828492528075460007.a n = A305150 (n + 1)

end A305150

/-! ## A305150.P13706983316863482287

`xor(A008728(A262202(n+1)), A335520(n+1))`
-/

namespace A305150.P13706983316863482287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008728 (A262202 (n + 1)).toNat) (A335520 (n + 1))

end

end A305150.P13706983316863482287

namespace A305150

/-- `xor(A008728(A262202(n+1)), A335520(n+1))` -/
def P13706983316863482287.Spec : Prop :=
  ∀ n, P13706983316863482287.a n = A305150 (n + 1)

end A305150

/-! ## A305150.P18006329430386061238

`∑{d}[n+1, A343653(#)%2]+1`
-/

namespace A305150.P18006329430386061238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (A343653 d) 2 + 1

end

end A305150.P18006329430386061238

namespace A305150

/-- `∑{d}[n+1, A343653(#)%2]+1` -/
def P18006329430386061238.Spec : Prop :=
  ∀ n, P18006329430386061238.a n = A305150 (n + 1)

end A305150

/-! ## A305150.P10724589693062422609

`A262202(n+1)+A007875(A335450(n+1))`
-/

namespace A305150.P10724589693062422609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262202 (n + 1) + A007875 (A335450 (n + 1)).toNat

end

end A305150.P10724589693062422609

namespace A305150

/-- `A262202(n+1)+A007875(A335450(n+1))` -/
def P10724589693062422609.Spec : Prop :=
  ∀ n, P10724589693062422609.a n = A305150 (n + 1)

end A305150

/-! ## A305150.P3875338535252204968

`A285573(A328871(A371177(A285572(n+1))))`
-/

namespace A305150.P3875338535252204968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285573 (A328871 (A371177 (A285572 (n + 1)).toNat).toNat).toNat

end

end A305150.P3875338535252204968

namespace A305150

/-- `A285573(A328871(A371177(A285572(n+1))))` -/
def P3875338535252204968.Spec : Prop :=
  ∀ n, P3875338535252204968.a n = A305150 (n + 1)

end A305150

/-!
# A305151: a(n) = (2n+1) - A294673(n), the amount by which A294673 is less than the maximum possible for n.

The programs for A305151, there is no canonical definition to state claims against.
-/

/-! ## A305151.P6201857260187027030

`2*n+1-A294673(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A305151.P6201857260187027030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A294673 n

end

end A305151.P6201857260187027030

/-! ## A305151.P4808586506714460197

`Δ[n²]-A003558(Δ[n²])`
-/

namespace A305151.P4808586506714460197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A003558 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

end

end A305151.P4808586506714460197

/-! ## A305151.P3514698093393197954

`2*n+1-A003558(2*n+1)`
-/

namespace A305151.P3514698093393197954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (1 - A003558 (2 * n + 1))

end

end A305151.P3514698093393197954

/-! ## A305151.P9692046771142980634

`n+1-A003558(n+1+n)+n`
-/

namespace A305151.P9692046771142980634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A003558 (n + 1 + n) + (n : ℤ)

end

end A305151.P9692046771142980634

/-! ## A305151.P16562107904914487928

`abs(A005408(n)-A294673(n))`
-/

namespace A305151.P16562107904914487928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005408 n - A294673 n|

end

end A305151.P16562107904914487928

/-! ## A305151.P13843764153464365694

`2*n-A137605(A103517(n))`
-/

namespace A305151.P13843764153464365694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A137605 (A103517 n).toNat

end

end A305151.P13843764153464365694

/-! ## A305151.P15217859062990186503

`A028310(2*n)-A137605(2*(n+1))`
-/

namespace A305151.P15217859062990186503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (2 * n) - A137605 (2 * (n + 1))

end

end A305151.P15217859062990186503

/-!
# A305152: Expansion of Sum_{k>0} x^(k^2) / (1 + x^k).

The programs for A305152, the canonical program `A305152.P2584362092211639077` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305152 has offset 1).

The definition of A305152 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A305152.P1434975627525279092

`ceil(A228441(n+1)/2)`
-/

namespace A305152.P1434975627525279092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A228441 (n + 1) : ℚ) / 2⌉

end

end A305152.P1434975627525279092

namespace A305152

/-- `ceil(A228441(n+1)/2)` -/
def P1434975627525279092.Spec : Prop :=
  ∀ n, P1434975627525279092.a n = A305152 (n + 1)

end A305152

/-! ## A305152.P7836397737446609493

`A348952(n+1)+A228441(n+1)`
-/

namespace A305152.P7836397737446609493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348952 (n + 1) + A228441 (n + 1)

end

end A305152.P7836397737446609493

namespace A305152

/-- `A348952(n+1)+A228441(n+1)` -/
def P7836397737446609493.Spec : Prop :=
  ∀ n, P7836397737446609493.a n = A305152 (n + 1)

end A305152

/-! ## A305152.P2584362092211639077

`A112329(n+1)-A056924(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A305152

/-- `A112329(n+1)-A056924(n+1)` -/
def P2584362092211639077.Spec : Prop :=
  ∀ n, P2584362092211639077.a n = A305152 (n + 1)

theorem P2584362092211639077.correct : P2584362092211639077.Spec := by
  intro n
  simp only [A305152, Nat.add_sub_cancel]

end A305152

/-! ## A305152.P17963903215118935605

`A010052(n+1)-A348952(n+1)`
-/

namespace A305152.P17963903215118935605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (n + 1) - A348952 (n + 1)

end

end A305152.P17963903215118935605

namespace A305152

/-- `A010052(n+1)-A348952(n+1)` -/
def P17963903215118935605.Spec : Prop :=
  ∀ n, P17963903215118935605.a n = A305152 (n + 1)

end A305152

/-! ## A305152.P6557925337950031327

`2*A034178(n+1)-A038548(n+1)`
-/

namespace A305152.P6557925337950031327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A034178 (n + 1) - A038548 (n + 1)

end

end A305152.P6557925337950031327

namespace A305152

/-- `2*A034178(n+1)-A038548(n+1)` -/
def P6557925337950031327.Spec : Prop :=
  ∀ n, P6557925337950031327.a n = A305152 (n + 1)

end A305152

/-! ## A305152.P12131476136310667944

`A112329(n+1)-A004526(A000005(n+1))`
-/

namespace A305152.P12131476136310667944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112329 (n + 1) - A004526 (A000005 (n + 1)).toNat

end

end A305152.P12131476136310667944

namespace A305152

/-- `A112329(n+1)-A004526(A000005(n+1))` -/
def P12131476136310667944.Spec : Prop :=
  ∀ n, P12131476136310667944.a n = A305152 (n + 1)

end A305152

/-! ## A305152.P11145777736631229892

`A034178(n+1)-A000035(n)*A001227(n+1)`
-/

namespace A305152.P11145777736631229892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034178 (n + 1) - A000035 n * A001227 (n + 1)

end

end A305152.P11145777736631229892

namespace A305152

/-- `A034178(n+1)-A000035(n)*A001227(n+1)` -/
def P11145777736631229892.Spec : Prop :=
  ∀ n, P11145777736631229892.a n = A305152 (n + 1)

end A305152

/-! ## A305152.P500270005121875568

`A034178(n+1)+A100073(n+1)-A056924(n+1)`
-/

namespace A305152.P500270005121875568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034178 (n + 1) + (A100073 (n + 1) - A056924 (n + 1))

end

end A305152.P500270005121875568

namespace A305152

/-- `A034178(n+1)+A100073(n+1)-A056924(n+1)` -/
def P500270005121875568.Spec : Prop :=
  ∀ n, P500270005121875568.a n = A305152 (n + 1)

end A305152

/-! ## A305152.P5943942172802773000

`A038548(n+1)-(A348952(n+1)+A056924(n+1))`
-/

namespace A305152.P5943942172802773000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (n + 1) - (A348952 (n + 1) + A056924 (n + 1))

end

end A305152.P5943942172802773000

namespace A305152

/-- `A038548(n+1)-(A348952(n+1)+A056924(n+1))` -/
def P5943942172802773000.Spec : Prop :=
  ∀ n, P5943942172802773000.a n = A305152 (n + 1)

end A305152

/-! ## A305152.P17913966757601398511

`A034178(n+1)-A001227(n+1)%A000005(n+1)`
-/

namespace A305152.P17913966757601398511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034178 (n + 1) - Int.tmod (A001227 (n + 1)) (A000005 (n + 1))

end

end A305152.P17913966757601398511

namespace A305152

/-- `A034178(n+1)-A001227(n+1)%A000005(n+1)` -/
def P17913966757601398511.Spec : Prop :=
  ∀ n, P17913966757601398511.a n = A305152 (n + 1)

end A305152

/-! ## A305152.P16477768085021756673

`A258998(n+1)*A258998(n+1)-A348952(n+1)`
-/

namespace A305152.P16477768085021756673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258998 (n + 1) * A258998 (n + 1) - A348952 (n + 1)

end

end A305152.P16477768085021756673

namespace A305152

/-- `A258998(n+1)*A258998(n+1)-A348952(n+1)` -/
def P16477768085021756673.Spec : Prop :=
  ∀ n, P16477768085021756673.a n = A305152 (n + 1)

end A305152

/-! ## A305152.P17549556878770337294

`2*A034178(n+1)-A034178(A003961(n+1))`
-/

namespace A305152.P17549556878770337294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A034178 (n + 1) - A034178 (A003961 (n + 1)).toNat

end

end A305152.P17549556878770337294

namespace A305152

/-- `2*A034178(n+1)-A034178(A003961(n+1))` -/
def P17549556878770337294.Spec : Prop :=
  ∀ n, P17549556878770337294.a n = A305152 (n + 1)

end A305152

/-! ## A305152.P2900793892322443665

`2*A034178(n+1)-A034178(A064988(n+1))`
-/

namespace A305152.P2900793892322443665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A034178 (n + 1) - A034178 (A064988 (n + 1)).toNat

end

end A305152.P2900793892322443665

namespace A305152

/-- `2*A034178(n+1)-A034178(A064988(n+1))` -/
def P2900793892322443665.Spec : Prop :=
  ∀ n, P2900793892322443665.a n = A305152 (n + 1)

end A305152

/-!
# A305153: a(n) = 30*2^n + 12.

The programs for A305153, the canonical program `A305153.P4408771930569018117` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305153 has offset 0).

The definition of A305153 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `30*2^n+12` (program `A305153.P4408771930569018117`, by `A305153.P4408771930569018117.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A305153.P4408771930569018117

`30*2^n+12`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A305153

/-- `30*2^n+12` -/
def P4408771930569018117.Spec : Prop :=
  ∀ n, (P4408771930569018117.a n : ℤ) = A305153 n

theorem P4408771930569018117.correct : P4408771930569018117.Spec := by
  intro n
  simp only [A305153]

end A305153

/-! ## A305153.P12847583023172235243

`2*(a(n-1)-6)` with `a(0)=42`
-/

namespace A305153.P12847583023172235243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [42] fun n a =>
  2 * (a (n - 1) - 6)

end

end A305153.P12847583023172235243

namespace A305153

/-- `2*(a(n-1)-6)` -/
def P12847583023172235243.Spec : Prop :=
  ∀ n, P12847583023172235243.a n = A305153 n

end A305153

/-! ## A305153.P10006150519080941139

`6*(A020714(n)+2)`
-/

namespace A305153.P10006150519080941139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A020714 n + 2)

end

end A305153.P10006150519080941139

namespace A305153

/-- `6*(A020714(n)+2)` -/
def P10006150519080941139.Spec : Prop :=
  ∀ n, P10006150519080941139.a n = A305153 n

end A305153

/-! ## A305153.P15577324209335367130

`2*(A110286(n)+6)`
-/

namespace A305153.P15577324209335367130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A110286 n + 6)

end

end A305153.P15577324209335367130

namespace A305153

/-- `2*(A110286(n)+6)` -/
def P15577324209335367130.Spec : Prop :=
  ∀ n, P15577324209335367130.a n = A305153 n

end A305153

/-! ## A305153.P9491867667175085477

`6*(A153894(n)+3)`
-/

namespace A305153.P9491867667175085477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A153894 n + 3)

end

end A305153.P9491867667175085477

namespace A305153

/-- `6*(A153894(n)+3)` -/
def P9491867667175085477.Spec : Prop :=
  ∀ n, P9491867667175085477.a n = A305153 n

end A305153

/-! ## A305153.P14535942624996310920

`6*(A048487(n)+6)`
-/

namespace A305153.P14535942624996310920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A048487 n + 6)

end

end A305153.P14535942624996310920

namespace A305153

/-- `6*(A048487(n)+6)` -/
def P14535942624996310920.Spec : Prop :=
  ∀ n, P14535942624996310920.a n = A305153 n

end A305153

/-! ## A305153.P14468977722709049794

`3*(A231643(n+1)-1)`
-/

namespace A305153.P14468977722709049794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A231643 (n + 1) - 1)

end

end A305153.P14468977722709049794

namespace A305153

/-- `3*(A231643(n+1)-1)` -/
def P14468977722709049794.Spec : Prop :=
  ∀ n, P14468977722709049794.a n = A305153 n

end A305153

/-! ## A305153.P4865943216399698487

`3*(A083575(n+1)+3)`
-/

namespace A305153.P4865943216399698487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A083575 (n + 1) + 3)

end

end A305153.P4865943216399698487

namespace A305153

/-- `3*(A083575(n+1)+3)` -/
def P4865943216399698487.Spec : Prop :=
  ∀ n, P4865943216399698487.a n = A305153 n

end A305153

/-! ## A305153.P3946161202557287128

`3*(10*A000079(n)+4)`
-/

namespace A305153.P3946161202557287128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (10 * A000079 n + 4)

end

end A305153.P3946161202557287128

namespace A305153

/-- `3*(10*A000079(n)+4)` -/
def P3946161202557287128.Spec : Prop :=
  ∀ n, P3946161202557287128.a n = A305153 n

end A305153

/-! ## A305153.P257242295955940846

`Δ[A195744(n)+A017617(n)]`
-/

namespace A305153.P257242295955940846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195744 n + A017617 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A305153.P257242295955940846

namespace A305153

/-- `Δ[A195744(n)+A017617(n)]` -/
def P257242295955940846.Spec : Prop :=
  ∀ n, P257242295955940846.a n = A305153 n

end A305153

/-!
# A305154: a(n) = 36*2^n + 9.

The programs for A305154, the canonical program `A305154.P671346344197577252` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305154 has offset 0).

The definition of A305154 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `36*2^n+9` (program `A305154.P671346344197577252`, by `A305154.P671346344197577252.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A305154.P671346344197577252

`36*2^n+9`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A305154

/-- `36*2^n+9` -/
def P671346344197577252.Spec : Prop :=
  ∀ n, (P671346344197577252.a n : ℤ) = A305154 n

theorem P671346344197577252.correct : P671346344197577252.Spec := by
  intro n
  simp only [A305154]

end A305154

/-! ## A305154.P4352688505824515983

`9*A000051(n+2)`
-/

namespace A305154.P4352688505824515983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A000051 (n + 2)

end

end A305154.P4352688505824515983

namespace A305154

/-- `9*A000051(n+2)` -/
def P4352688505824515983.Spec : Prop :=
  ∀ n, P4352688505824515983.a n = A305154 n

end A305154

/-! ## A305154.P4917312656444888819

`9*xor(1, 4*2^n)`
-/

namespace A305154.P4917312656444888819
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * Nat.xor 1 (4 * 2 ^ n)

end

end A305154.P4917312656444888819

namespace A305154

/-- `9*xor(1, 4*2^n)` -/
def P4917312656444888819.Spec : Prop :=
  ∀ n, (P4917312656444888819.a n : ℤ) = A305154 n

end A305154

/-! ## A305154.P10292625847943281532

`3*or(3, 12*2^n)`
-/

namespace A305154.P10292625847943281532
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.lor 3 (12 * 2 ^ n)

end

end A305154.P10292625847943281532

namespace A305154

/-- `3*or(3, 12*2^n)` -/
def P10292625847943281532.Spec : Prop :=
  ∀ n, (P10292625847943281532.a n : ℤ) = A305154 n

end A305154

/-! ## A305154.P14220473788012438416

`9*∑[2*a(n-1)]` with `a(0)=5, a(1)=4`
-/

namespace A305154.P14220473788012438416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 4] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A305154.P14220473788012438416

namespace A305154

/-- `9*∑[2*a(n-1)]` -/
def P14220473788012438416.Spec : Prop :=
  ∀ n, (P14220473788012438416.a n : ℤ) = A305154 n

end A305154

/-! ## A305154.P13128943917963173150

`9*A020737(n)`
-/

namespace A305154.P13128943917963173150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A020737 n

end

end A305154.P13128943917963173150

namespace A305154

/-- `9*A020737(n)` -/
def P13128943917963173150.Spec : Prop :=
  ∀ n, P13128943917963173150.a n = A305154 n

end A305154

/-! ## A305154.P13116549542553910722

`A247527(2*(n+1))`
-/

namespace A305154.P13116549542553910722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247527 (2 * (n + 1))

end

end A305154.P13116549542553910722

namespace A305154

/-- `A247527(2*(n+1))` -/
def P13116549542553910722.Spec : Prop :=
  ∀ n, P13116549542553910722.a n = A305154 n

end A305154

/-! ## A305154.P3142481895080146661

`9*A048578(n+1)`
-/

namespace A305154.P3142481895080146661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A048578 (n + 1)

end

end A305154.P3142481895080146661

namespace A305154

/-- `9*A048578(n+1)` -/
def P3142481895080146661.Spec : Prop :=
  ∀ n, P3142481895080146661.a n = A305154 n

end A305154

/-! ## A305154.P10386065814047003059

`9*A083318(n+2)`
-/

namespace A305154.P10386065814047003059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A083318 (n + 2)

end

end A305154.P10386065814047003059

namespace A305154

/-- `9*A083318(n+2)` -/
def P10386065814047003059.Spec : Prop :=
  ∀ n, P10386065814047003059.a n = A305154 n

end A305154

/-! ## A305154.P8163348513814874159

`9*A094373(n+3)`
-/

namespace A305154.P8163348513814874159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A094373 (n + 3)

end

end A305154.P8163348513814874159

namespace A305154

/-- `9*A094373(n+3)` -/
def P8163348513814874159.Spec : Prop :=
  ∀ n, P8163348513814874159.a n = A305154 n

end A305154

/-! ## A305154.P4327277842960175714

`9*A127904(n+3)`
-/

namespace A305154.P4327277842960175714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A127904 (n + 3)

end

end A305154.P4327277842960175714

namespace A305154

/-- `9*A127904(n+3)` -/
def P4327277842960175714.Spec : Prop :=
  ∀ n, P4327277842960175714.a n = A305154 n

end A305154

/-! ## A305154.P3105128492412948041

`9*A143096(n+3)`
-/

namespace A305154.P3105128492412948041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A143096 (n + 3)

end

end A305154.P3105128492412948041

namespace A305154

/-- `9*A143096(n+3)` -/
def P3105128492412948041.Spec : Prop :=
  ∀ n, P3105128492412948041.a n = A305154 n

end A305154

/-! ## A305154.P15634305342274137462

`3*(A164094(n+2)+1)`
-/

namespace A305154.P15634305342274137462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A164094 (n + 2) + 1)

end

end A305154.P15634305342274137462

namespace A305154

/-- `3*(A164094(n+2)+1)` -/
def P15634305342274137462.Spec : Prop :=
  ∀ n, P15634305342274137462.a n = A305154 n

end A305154

/-! ## A305154.P11363695897442026362

`3*(A081808(n+1)+3)`
-/

namespace A305154.P11363695897442026362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A081808 (n + 1) + 3)

end

end A305154.P11363695897442026362

namespace A305154

/-- `3*(A081808(n+1)+3)` -/
def P11363695897442026362.Spec : Prop :=
  ∀ n, P11363695897442026362.a n = A305154 n

end A305154

/-! ## A305154.P6731657204546461248

`3*(A181565(n+2)+2)`
-/

namespace A305154.P6731657204546461248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A181565 (n + 2) + 2)

end

end A305154.P6731657204546461248

namespace A305154

/-- `3*(A181565(n+2)+2)` -/
def P6731657204546461248.Spec : Prop :=
  ∀ n, P6731657204546461248.a n = A305154 n

end A305154

/-! ## A305154.P14296753861339221529

`3*(A003461(n+3)-1)`
-/

namespace A305154.P14296753861339221529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A003461 (n + 3) - 1)

end

end A305154.P14296753861339221529

namespace A305154

/-- `3*(A003461(n+3)-1)` -/
def P14296753861339221529.Spec : Prop :=
  ∀ n, P14296753861339221529.a n = A305154 n

end A305154

/-! ## A305154.P17008214355286084600

`3*(A004119(n+3)+2)`
-/

namespace A305154.P17008214355286084600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A004119 (n + 3) + 2)

end

end A305154.P17008214355286084600

namespace A305154

/-- `3*(A004119(n+3)+2)` -/
def P17008214355286084600.Spec : Prop :=
  ∀ n, P17008214355286084600.a n = A305154 n

end A305154

/-! ## A305154.P1474438369679693154

`3*(A007283(n+2)+3)`
-/

namespace A305154.P1474438369679693154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A007283 (n + 2) + 3)

end

end A305154.P1474438369679693154

namespace A305154

/-- `3*(A007283(n+2)+3)` -/
def P1474438369679693154.Spec : Prop :=
  ∀ n, P1474438369679693154.a n = A305154 n

end A305154

/-! ## A305154.P15478421420461921108

`3*(A091629(n+2)+3)`
-/

namespace A305154.P15478421420461921108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A091629 (n + 2) + 3)

end

end A305154.P15478421420461921108

namespace A305154

/-- `3*(A091629(n+2)+3)` -/
def P15478421420461921108.Spec : Prop :=
  ∀ n, P15478421420461921108.a n = A305154 n

end A305154

/-! ## A305154.P1009669682390918980

`3*(A132477(n+2)+3)`
-/

namespace A305154.P1009669682390918980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A132477 (n + 2) + 3)

end

end A305154.P1009669682390918980

namespace A305154

/-- `3*(A132477(n+2)+3)` -/
def P1009669682390918980.Spec : Prop :=
  ∀ n, P1009669682390918980.a n = A305154 n

end A305154

/-!
# A305155: a(n) = 28*2^n - 15.

The programs for A305155, the canonical program `A305155.P2907994602454921204` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305155 has offset 0).

The definition of A305155 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `28*2^n-15` (program `A305155.P2907994602454921204`, by `A305155.P2907994602454921204.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A305155.P2907994602454921204

`28*2^n-15`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A305155

/-- `28*2^n-15` -/
def P2907994602454921204.Spec : Prop :=
  ∀ n, P2907994602454921204.a n = A305155 n

theorem P2907994602454921204.correct : P2907994602454921204.Spec := by
  intro n
  simp only [A305155]

end A305155

/-! ## A305155.P11466596885196513027

`∑[2*a(n-1)]` with `a(0)=13, a(1)=28`
-/

namespace A305155.P11466596885196513027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [13, 28] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305155.P11466596885196513027

namespace A305155

/-- `∑[2*a(n-1)]` -/
def P11466596885196513027.Spec : Prop :=
  ∀ n, (P11466596885196513027.a n : ℤ) = A305155 n

end A305155

/-! ## A305155.P8308827219786151831

`xor(3, ∑[A005009(n+1)])`
-/

namespace A305155.P8308827219786151831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005009 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A305155.P8308827219786151831

namespace A305155

/-- `xor(3, ∑[A005009(n+1)])` -/
def P8308827219786151831.Spec : Prop :=
  ∀ n, P8308827219786151831.a n = A305155 n

end A305155

/-! ## A305155.P3690634200152138960

`abs(∑[14*A000079(n)]-1)`
-/

namespace A305155.P3690634200152138960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  14 * A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - 1|

end

end A305155.P3690634200152138960

namespace A305155

/-- `abs(∑[14*A000079(n)]-1)` -/
def P3690634200152138960.Spec : Prop :=
  ∀ n, P3690634200152138960.a n = A305155 n

end A305155

/-! ## A305155.P2173196271429200981

`∑[A155559(n)+A005029(n)]`
-/

namespace A305155.P2173196271429200981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155559 n + A005029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305155.P2173196271429200981

namespace A305155

/-- `∑[A155559(n)+A005029(n)]` -/
def P2173196271429200981.Spec : Prop :=
  ∀ n, P2173196271429200981.a n = A305155 n

end A305155

/-! ## A305155.P10392656009105263156

`∑[A196305(n)-A255047(n)]`
-/

namespace A305155.P10392656009105263156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196305 n - A255047 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305155.P10392656009105263156

namespace A305155

/-- `∑[A196305(n)-A255047(n)]` -/
def P10392656009105263156.Spec : Prop :=
  ∀ n, P10392656009105263156.a n = A305155 n

end A305155

/-! ## A305155.P18304279360551762780

`∑[A198633(n+3)-A198633(n)]`
-/

namespace A305155.P18304279360551762780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198633 (n + 3) - A198633 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305155.P18304279360551762780

namespace A305155

/-- `∑[A198633(n+3)-A198633(n)]` -/
def P18304279360551762780.Spec : Prop :=
  ∀ n, P18304279360551762780.a n = A305155 n

end A305155

/-! ## A305155.P10177132507100956376

`∑[and(A110286(n)-2, A110286(n))]`
-/

namespace A305155.P10177132507100956376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A110286 n - 2) (A110286 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305155.P10177132507100956376

namespace A305155

/-- `∑[and(A110286(n)-2, A110286(n))]` -/
def P10177132507100956376.Spec : Prop :=
  ∀ n, P10177132507100956376.a n = A305155 n

end A305155

/-! ## A305155.P5165084859686084715

`∑[∑[A078840(A052905(n+3))]]`
-/

namespace A305155.P5165084859686084715
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078840 (A052905 (n + 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305155.P5165084859686084715

namespace A305155

/-- `∑[∑[A078840(A052905(n+3))]]` -/
def P5165084859686084715.Spec : Prop :=
  ∀ n, P5165084859686084715.a n = A305155 n

end A305155

/-!
# A305156: a(n) = 136*2^n - 78 (n>=0).

The programs for A305156, the canonical program `A305156.P11857093554120693516` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305156 has offset 0).

The definition of A305156 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `136*2^n-78` (program `A305156.P11857093554120693516`, by `A305156.P11857093554120693516.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A305156.P11857093554120693516

`136*2^n-78`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A305156

/-- `136*2^n-78` -/
def P11857093554120693516.Spec : Prop :=
  ∀ n, P11857093554120693516.a n = A305156 n

theorem P11857093554120693516.correct : P11857093554120693516.Spec := by
  intro n
  simp only [A305156]

end A305156

/-! ## A305156.P15753367705515936890

`2*(a(n-1)+39)` with `a(0)=58`
-/

namespace A305156.P15753367705515936890
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [58] fun n a =>
  2 * (a (n - 1) + 39)

end

end A305156.P15753367705515936890

namespace A305156

/-- `2*(a(n-1)+39)` -/
def P15753367705515936890.Spec : Prop :=
  ∀ n, (P15753367705515936890.a n : ℤ) = A305156 n

end A305156

/-! ## A305156.P9156912409025384213

`abs(28-A304518(n+1))`
-/

namespace A305156.P9156912409025384213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |28 - A304518 (n + 1)|

end

end A305156.P9156912409025384213

namespace A305156

/-- `abs(28-A304518(n+1))` -/
def P9156912409025384213.Spec : Prop :=
  ∀ n, P9156912409025384213.a n = A305156 n

end A305156

/-! ## A305156.P10657345739279383796

`(28-A304518(n+1))*A008683(A065091(n+1))`
-/

namespace A305156.P10657345739279383796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (28 - A304518 (n + 1)) * A008683 (A065091 (n + 1)).toNat

end

end A305156.P10657345739279383796

namespace A305156

/-- `(28-A304518(n+1))*A008683(A065091(n+1))` -/
def P10657345739279383796.Spec : Prop :=
  ∀ n, P10657345739279383796.a n = A305156 n

end A305156

/-! ## A305156.P8916644629718292578

`abs(22-A305165(n+1)/2)`
-/

namespace A305156.P8916644629718292578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |22 - (A305165 (n + 1) : ℚ) / 2|

end

end A305156.P8916644629718292578

namespace A305156

/-- `abs(22-A305165(n+1)/2)` -/
def P8916644629718292578.Spec : Prop :=
  ∀ n, P8916644629718292578.a n = (A305156 n : ℚ)

end A305156

/-! ## A305156.P17560636383566073308

`2*(A304830(n+1)/3-3)`
-/

namespace A305156.P17560636383566073308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A304830 (n + 1) : ℚ) / 3 - 3)

end

end A305156.P17560636383566073308

namespace A305156

/-- `2*(A304830(n+1)/3-3)` -/
def P17560636383566073308.Spec : Prop :=
  ∀ n, P17560636383566073308.a n = (A305156 n : ℚ)

end A305156

/-! ## A305156.P8742044219851157570

`xor(1, A305157(n)-A305164(n))`
-/

namespace A305156.P8742044219851157570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A305157 n - A305164 n)

end

end A305156.P8742044219851157570

namespace A305156

/-- `xor(1, A305157(n)-A305164(n))` -/
def P8742044219851157570.Spec : Prop :=
  ∀ n, P8742044219851157570.a n = A305156 n

end A305156

/-! ## A305156.P1923659800274320610

`A305159(A305188(n+1))%Δ[A305165(n)]`
-/

namespace A305156.P1923659800274320610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305165 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305159 (A305188 (n + 1)).toNat) (f1 (n + 1) - f1 n)

end

end A305156.P1923659800274320610

namespace A305156

/-- `A305159(A305188(n+1))%Δ[A305165(n)]` -/
def P1923659800274320610.Spec : Prop :=
  ∀ n, P1923659800274320610.a n = A305156 n

end A305156

/-!
# A305157: a(n) = 164*2^n - 99.

The programs for A305157, the canonical program `A305157.P2673244396792364241` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305157 has offset 0).

The definition of A305157 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `164*2^n-99` (program `A305157.P2673244396792364241`, by `A305157.P2673244396792364241.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A305157.P2673244396792364241

`164*2^n-99`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A305157

/-- `164*2^n-99` -/
def P2673244396792364241.Spec : Prop :=
  ∀ n, P2673244396792364241.a n = A305157 n

theorem P2673244396792364241.correct : P2673244396792364241.Spec := by
  intro n
  simp only [A305157]

end A305157

/-! ## A305157.P18175877530303333158

`A158803(A173033(n+1))`
-/

namespace A305157.P18175877530303333158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158803 (A173033 (n + 1)).toNat

end

end A305157.P18175877530303333158

namespace A305157

/-- `A158803(A173033(n+1))` -/
def P18175877530303333158.Spec : Prop :=
  ∀ n, P18175877530303333158.a n = A305157 n

end A305157

/-! ## A305157.P7283308177951935555

`A158803(A028399(n+3))`
-/

namespace A305157.P7283308177951935555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158803 (A028399 (n + 3)).toNat

end

end A305157.P7283308177951935555

namespace A305157

/-- `A158803(A028399(n+3))` -/
def P7283308177951935555.Spec : Prop :=
  ∀ n, P7283308177951935555.a n = A305157 n

end A305157

/-! ## A305157.P15027092064545779060

`A158803(∑[A000079(n+2)])`
-/

namespace A305157.P15027092064545779060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158803 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A305157.P15027092064545779060

namespace A305157

/-- `A158803(∑[A000079(n+2)])` -/
def P15027092064545779060.Spec : Prop :=
  ∀ n, P15027092064545779060.a n = A305157 n

end A305157

/-! ## A305157.P7084227023044501097

`A158803(4*∑[A000079(n)])`
-/

namespace A305157.P7084227023044501097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158803 (4 * (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A305157.P7084227023044501097

namespace A305157

/-- `A158803(4*∑[A000079(n)])` -/
def P7084227023044501097.Spec : Prop :=
  ∀ n, P7084227023044501097.a n = A305157 n

end A305157

/-!
# A305158: a(n) = 21*2^n - 15.

The programs for A305158, the canonical program `A305158.P8022986441186121754` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305158 has offset 0).

The definition of A305158 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `21*2^n-15` (program `A305158.P8022986441186121754`, by `A305158.P8022986441186121754.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A305158.P8022986441186121754

`21*2^n-15`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A305158

/-- `21*2^n-15` -/
def P8022986441186121754.Spec : Prop :=
  ∀ n, P8022986441186121754.a n = A305158 n

theorem P8022986441186121754.correct : P8022986441186121754.Spec := by
  intro n
  simp only [A305158]

end A305158

/-! ## A305158.P12090258829766434241

`∑[2*a(n-1)]` with `a(0)=6, a(1)=21`
-/

namespace A305158.P12090258829766434241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 21] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305158.P12090258829766434241

namespace A305158

/-- `∑[2*a(n-1)]` -/
def P12090258829766434241.Spec : Prop :=
  ∀ n, (P12090258829766434241.a n : ℤ) = A305158 n

end A305158

/-! ## A305158.P13329684037616386708

`3*(A048489(n)+1)`
-/

namespace A305158.P13329684037616386708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A048489 n + 1)

end

end A305158.P13329684037616386708

namespace A305158

/-- `3*(A048489(n)+1)` -/
def P13329684037616386708.Spec : Prop :=
  ∀ n, P13329684037616386708.a n = A305158 n

end A305158

/-! ## A305158.P8793561111245901634

`3*A154118(n+1)`
-/

namespace A305158.P8793561111245901634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A154118 (n + 1)

end

end A305158.P8793561111245901634

namespace A305158

/-- `3*A154118(n+1)` -/
def P8793561111245901634.Spec : Prop :=
  ∀ n, P8793561111245901634.a n = A305158 n

end A305158

/-! ## A305158.P9015050756269340463

`3*(A156127(n)-2)`
-/

namespace A305158.P9015050756269340463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A156127 n - 2)

end

end A305158.P9015050756269340463

namespace A305158

/-- `3*(A156127(n)-2)` -/
def P9015050756269340463.Spec : Prop :=
  ∀ n, P9015050756269340463.a n = A305158 n

end A305158

/-! ## A305158.P16240260828581437717

`3*(A176448(n)-3)`
-/

namespace A305158.P16240260828581437717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A176448 n - 3)

end

end A305158.P16240260828581437717

namespace A305158

/-- `3*(A176448(n)-3)` -/
def P16240260828581437717.Spec : Prop :=
  ∀ n, P16240260828581437717.a n = A305158 n

end A305158

/-! ## A305158.P9028334297830726623

`3*(A086224(n)-4)`
-/

namespace A305158.P9028334297830726623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A086224 n - 4)

end

end A305158.P9028334297830726623

namespace A305158

/-- `3*(A086224(n)-4)` -/
def P9028334297830726623.Spec : Prop :=
  ∀ n, P9028334297830726623.a n = A305158 n

end A305158

/-! ## A305158.P2378466100225152626

`3*(A005009(n)-5)`
-/

namespace A305158.P2378466100225152626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A005009 n - 5)

end

end A305158.P2378466100225152626

namespace A305158

/-- `3*(A005009(n)-5)` -/
def P2378466100225152626.Spec : Prop :=
  ∀ n, P2378466100225152626.a n = A305158 n

end A305158

/-! ## A305158.P15735067658998929535

`3*(A053208(n+1)-1)`
-/

namespace A305158.P15735067658998929535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A053208 (n + 1) - 1)

end

end A305158.P15735067658998929535

namespace A305158

/-- `3*(A053208(n+1)-1)` -/
def P15735067658998929535.Spec : Prop :=
  ∀ n, P15735067658998929535.a n = A305158 n

end A305158

/-! ## A305158.P2244740164596372752

`3*(A026622(n+2)-3)`
-/

namespace A305158.P2244740164596372752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A026622 (n + 2) - 3)

end

end A305158.P2244740164596372752

namespace A305158

/-- `3*(A026622(n+2)-3)` -/
def P2244740164596372752.Spec : Prop :=
  ∀ n, P2244740164596372752.a n = A305158 n

end A305158

/-! ## A305158.P8262179046748196919

`3*(A174317(n+3)-3)`
-/

namespace A305158.P8262179046748196919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A174317 (n + 3) - 3)

end

end A305158.P8262179046748196919

namespace A305158

/-- `3*(A174317(n+3)-3)` -/
def P8262179046748196919.Spec : Prop :=
  ∀ n, P8262179046748196919.a n = A305158 n

end A305158

/-! ## A305158.P17168598393051662721

`∑[3*A029749(3*n+1)]`
-/

namespace A305158.P17168598393051662721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A029749 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305158.P17168598393051662721

namespace A305158

/-- `∑[3*A029749(3*n+1)]` -/
def P17168598393051662721.Spec : Prop :=
  ∀ n, P17168598393051662721.a n = A305158 n

end A305158

/-! ## A305158.P1446713472821977640

`lcm(3, ∑[7*A003945(n)]-1)`
-/

namespace A305158.P1446713472821977640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A003945 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A305158.P1446713472821977640

namespace A305158

/-- `lcm(3, ∑[7*A003945(n)]-1)` -/
def P1446713472821977640.Spec : Prop :=
  ∀ n, (P1446713472821977640.a n : ℤ) = A305158 n

end A305158

/-! ## A305158.P17658069582550063376

`3*(A247188(n+3)+n-1)`
-/

namespace A305158.P17658069582550063376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A247188 (n + 3) + ((n : ℤ) - 1))

end

end A305158.P17658069582550063376

namespace A305158

/-- `3*(A247188(n+3)+n-1)` -/
def P17658069582550063376.Spec : Prop :=
  ∀ n, P17658069582550063376.a n = A305158 n

end A305158

/-! ## A305158.P7629635642609845756

`A305067(n)%A304613(n)`
-/

namespace A305158.P7629635642609845756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305067 n) (A304613 n)

end

end A305158.P7629635642609845756

namespace A305158

/-- `A305067(n)%A304613(n)` -/
def P7629635642609845756.Spec : Prop :=
  ∀ n, P7629635642609845756.a n = A305158 n

end A305158

/-! ## A305158.P6558302336627067119

`A249227(n+1)%A206371(n)`
-/

namespace A305158.P6558302336627067119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249227 (n + 1)) (A206371 n)

end

end A305158.P6558302336627067119

namespace A305158

/-- `A249227(n+1)%A206371(n)` -/
def P6558302336627067119.Spec : Prop :=
  ∀ n, P6558302336627067119.a n = A305158 n

end A305158

/-!
# A305159: a(n) = 102*2^n - 78.

The programs for A305159, the canonical program `A305159.P9334831846603204424` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305159 has offset 0).

The definition of A305159 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `102*2^n-78` (program `A305159.P9334831846603204424`, by `A305159.P9334831846603204424.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A305159.P9334831846603204424

`102*2^n-78`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A305159

/-- `102*2^n-78` -/
def P9334831846603204424.Spec : Prop :=
  ∀ n, P9334831846603204424.a n = A305159 n

theorem P9334831846603204424.correct : P9334831846603204424.Spec := by
  intro n
  simp only [A305159]

end A305159

/-! ## A305159.P1612171202312849594

`2*(a(n-1)+39)` with `a(0)=24`
-/

namespace A305159.P1612171202312849594
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [24] fun n a =>
  2 * (a (n - 1) + 39)

end

end A305159.P1612171202312849594

namespace A305159

/-- `2*(a(n-1)+39)` -/
def P1612171202312849594.Spec : Prop :=
  ∀ n, (P1612171202312849594.a n : ℤ) = A305159 n

end A305159

/-! ## A305159.P3983401283130826555

`6*(A198275(n)-12)`
-/

namespace A305159.P3983401283130826555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A198275 n - 12)

end

end A305159.P3983401283130826555

namespace A305159

/-- `6*(A198275(n)-12)` -/
def P3983401283130826555.Spec : Prop :=
  ∀ n, P3983401283130826555.a n = A305159 n

end A305159

/-! ## A305159.P4841352457373958473

`6*(A168616(n)+A159741(n+1))`
-/

namespace A305159.P4841352457373958473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A168616 n + A159741 (n + 1))

end

end A305159.P4841352457373958473

namespace A305159

/-- `6*(A168616(n)+A159741(n+1))` -/
def P4841352457373958473.Spec : Prop :=
  ∀ n, P4841352457373958473.a n = A305159 n

end A305159

/-! ## A305159.P1210465637010699257

`A154612(A048488(n))`
-/

namespace A305159.P1210465637010699257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 (A048488 n).toNat

end

end A305159.P1210465637010699257

namespace A305159

/-- `A154612(A048488(n))` -/
def P1210465637010699257.Spec : Prop :=
  ∀ n, P1210465637010699257.a n = A305159 n

end A305159

/-!
# A305160: a(n) = 123*2^n - 99.

The programs for A305160, the canonical program `A305160.P729559538405547331` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305160 has offset 0).

The definition of A305160 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `123*2^n-99` (program `A305160.P729559538405547331`, by `A305160.P729559538405547331.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A305160.P729559538405547331

`123*2^n-99`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A305160

/-- `123*2^n-99` -/
def P729559538405547331.Spec : Prop :=
  ∀ n, P729559538405547331.a n = A305160 n

theorem P729559538405547331.correct : P729559538405547331.Spec := by
  intro n
  simp only [A305160]

end A305160

/-! ## A305160.P463090423632517947

`abs(3*a(n-1)-2*a(n-2))` with `a(0)=24, a(1)=147`
-/

namespace A305160.P463090423632517947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [24, 147] fun n a =>
  |3 * a (n - 1) - 2 * a (n - 2)|

end

end A305160.P463090423632517947

namespace A305160

/-- `abs(3*a(n-1)-2*a(n-2))` -/
def P463090423632517947.Spec : Prop :=
  ∀ n, P463090423632517947.a n = A305160 n

end A305160

/-! ## A305160.P10824949806604286353

`floor(3*a(n-1)-2*a(n-2))` with `a(0)=24, a(1)=147`

`floor` is left out, it is the identity on integers.
-/

namespace A305160.P10824949806604286353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [24, 147] fun n a =>
  3 * a (n - 1) - 2 * a (n - 2)

end

end A305160.P10824949806604286353

namespace A305160

/-- `floor(3*a(n-1)-2*a(n-2))` -/
def P10824949806604286353.Spec : Prop :=
  ∀ n, P10824949806604286353.a n = A305160 n

end A305160

/-! ## A305160.P13950571556065430245

`A158803(A131128(n+1))`
-/

namespace A305160.P13950571556065430245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158803 (A131128 (n + 1)).toNat

end

end A305160.P13950571556065430245

namespace A305160

/-- `A158803(A131128(n+1))` -/
def P13950571556065430245.Spec : Prop :=
  ∀ n, P13950571556065430245.a n = A305160 n

end A305160

/-!
# A305161: Number A(n,k) of compositions of n into exactly n nonnegative parts <= k; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A305161, there is no canonical definition to state claims against.
-/

/-! ## A305161.P1750609394924349591

`A048766(3*A294250(n)²)`
-/

namespace A305161.P1750609394924349591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (3 * A294250 n ^ 2).toNat

end

end A305161.P1750609394924349591

/-! ## A305161.P17893544129836290842

`A048766(A033428(A294250(n)))`
-/

namespace A305161.P17893544129836290842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A033428 (A294250 n).toNat).toNat

end

end A305161.P17893544129836290842

/-! ## A305161.P18130231822507455112

`A048766(A008585(A294250(n)²))`
-/

namespace A305161.P18130231822507455112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A008585 (A294250 n ^ 2).toNat).toNat

end

end A305161.P18130231822507455112

/-! ## A305161.P15213246635365064363

`A067693(A267479(n))`
-/

namespace A305161.P15213246635365064363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067693 (A267479 n).toNat

end

end A305161.P15213246635365064363

/-! ## A305161.P18105320829445212209

`A330958(A124550(n))`
-/

namespace A305161.P18105320829445212209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330958 (A124550 n).toNat

end

end A305161.P18105320829445212209

/-!
# A305163: a(n) = 24*2^n - 18.

The programs for A305163, the canonical program `A305163.P3204097201116217544` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305163 has offset 0).

The definition of A305163 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `24*2^n-18` (program `A305163.P3204097201116217544`, by `A305163.P3204097201116217544.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A305163.P3204097201116217544

`24*2^n-18`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A305163

/-- `24*2^n-18` -/
def P3204097201116217544.Spec : Prop :=
  ∀ n, P3204097201116217544.a n = A305163 n

theorem P3204097201116217544.correct : P3204097201116217544.Spec := by
  intro n
  simp only [A305163]

end A305163

/-! ## A305163.P10163841521369466358

`lcm(6, 2^(n+2)-3)`
-/

namespace A305163.P10163841521369466358
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 6 ((2 ^ (n + 2) : ℤ) - 3)

end

end A305163.P10163841521369466358

namespace A305163

/-- `lcm(6, 2^(n+2)-3)` -/
def P10163841521369466358.Spec : Prop :=
  ∀ n, (P10163841521369466358.a n : ℤ) = A305163 n

end A305163

/-! ## A305163.P6559874181141267798

`2*(a(n-1)+9)` with `a(0)=6`
-/

namespace A305163.P6559874181141267798
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6] fun n a =>
  2 * (a (n - 1) + 9)

end

end A305163.P6559874181141267798

namespace A305163

/-- `2*(a(n-1)+9)` -/
def P6559874181141267798.Spec : Prop :=
  ∀ n, (P6559874181141267798.a n : ℤ) = A305163 n

end A305163

/-! ## A305163.P14592437631281401116

`∑[2*a(n-1)]` with `a(0)=6, a(1)=24`
-/

namespace A305163.P14592437631281401116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 24] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305163.P14592437631281401116

namespace A305163

/-- `∑[2*a(n-1)]` -/
def P14592437631281401116.Spec : Prop :=
  ∀ n, (P14592437631281401116.a n : ℤ) = A305163 n

end A305163

/-! ## A305163.P6204913421474902813

`∑[6*2^((n+1)%(n+1)²)]`
-/

namespace A305163.P6204913421474902813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * 2 ^ ((n + 1) % (n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305163.P6204913421474902813

namespace A305163

/-- `∑[6*2^((n+1)%(n+1)²)]` -/
def P6204913421474902813.Spec : Prop :=
  ∀ n, (P6204913421474902813.a n : ℤ) = A305163 n

end A305163

/-! ## A305163.P2797963441974005787

`3*Δ[A320661(n)]`
-/

namespace A305163.P2797963441974005787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320661 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (f1 (n + 1) - f1 n)

end

end A305163.P2797963441974005787

namespace A305163

/-- `3*Δ[A320661(n)]` -/
def P2797963441974005787.Spec : Prop :=
  ∀ n, P2797963441974005787.a n = A305163 n

end A305163

/-! ## A305163.P8475832548628217293

`3*(A048490(n)+1)`
-/

namespace A305163.P8475832548628217293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A048490 n + 1)

end

end A305163.P8475832548628217293

namespace A305163

/-- `3*(A048490(n)+1)` -/
def P8475832548628217293.Spec : Prop :=
  ∀ n, P8475832548628217293.a n = A305163 n

end A305163

/-! ## A305163.P9673006876032604953

`3*A131130(n+1)`
-/

namespace A305163.P9673006876032604953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A131130 (n + 1)

end

end A305163.P9673006876032604953

namespace A305163

/-- `3*A131130(n+1)` -/
def P9673006876032604953.Spec : Prop :=
  ∀ n, P9673006876032604953.a n = A305163 n

end A305163

/-! ## A305163.P15309283139573882686

`6*A036563(n+2)`
-/

namespace A305163.P15309283139573882686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A036563 (n + 2)

end

end A305163.P15309283139573882686

namespace A305163

/-- `6*A036563(n+2)` -/
def P15309283139573882686.Spec : Prop :=
  ∀ n, P15309283139573882686.a n = A305163 n

end A305163

/-! ## A305163.P9092983922566687998

`6*A136252(2*n)`
-/

namespace A305163.P9092983922566687998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A136252 (2 * n)

end

end A305163.P9092983922566687998

namespace A305163

/-- `6*A136252(2*n)` -/
def P9092983922566687998.Spec : Prop :=
  ∀ n, P9092983922566687998.a n = A305163 n

end A305163

/-! ## A305163.P12600616080581568023

`6*A185647(2*n)`
-/

namespace A305163.P12600616080581568023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A185647 (2 * n)

end

end A305163.P12600616080581568023

namespace A305163

/-- `6*A185647(2*n)` -/
def P12600616080581568023.Spec : Prop :=
  ∀ n, P12600616080581568023.a n = A305163 n

end A305163

/-! ## A305163.P17498978356278038634

`∑[6*A029748(3*n)]`
-/

namespace A305163.P17498978356278038634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A029748 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305163.P17498978356278038634

namespace A305163

/-- `∑[6*A029748(3*n)]` -/
def P17498978356278038634.Spec : Prop :=
  ∀ n, P17498978356278038634.a n = A305163 n

end A305163

/-! ## A305163.P8500148431992390066

`2*(A139697(n+1)+2)`
-/

namespace A305163.P8500148431992390066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A139697 (n + 1) + 2)

end

end A305163.P8500148431992390066

namespace A305163

/-- `2*(A139697(n+1)+2)` -/
def P8500148431992390066.Spec : Prop :=
  ∀ n, P8500148431992390066.a n = A305163 n

end A305163

/-! ## A305163.P4329344276510347753

`3*(A172252(n+1)+3)`
-/

namespace A305163.P4329344276510347753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A172252 (n + 1) + 3)

end

end A305163.P4329344276510347753

namespace A305163

/-- `3*(A172252(n+1)+3)` -/
def P4329344276510347753.Spec : Prop :=
  ∀ n, P4329344276510347753.a n = A305163 n

end A305163

/-! ## A305163.P11986079576182008738

`3*(A173033(n+1)-2)`
-/

namespace A305163.P11986079576182008738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A173033 (n + 1) - 2)

end

end A305163.P11986079576182008738

namespace A305163

/-- `3*(A173033(n+1)-2)` -/
def P11986079576182008738.Spec : Prop :=
  ∀ n, P11986079576182008738.a n = A305163 n

end A305163

/-! ## A305163.P17894991401687865593

`2*(A068293(n+2)-3)`
-/

namespace A305163.P17894991401687865593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A068293 (n + 2) - 3)

end

end A305163.P17894991401687865593

namespace A305163

/-- `2*(A068293(n+2)-3)` -/
def P17894991401687865593.Spec : Prop :=
  ∀ n, P17894991401687865593.a n = A305163 n

end A305163

/-! ## A305163.P11846282994015202380

`3*(A168616(n+3)-1)`
-/

namespace A305163.P11846282994015202380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A168616 (n + 3) - 1)

end

end A305163.P11846282994015202380

namespace A305163

/-- `3*(A168616(n+3)-1)` -/
def P11846282994015202380.Spec : Prop :=
  ∀ n, P11846282994015202380.a n = A305163 n

end A305163

/-! ## A305163.P2813140602353138025

`3*(A028399(n+3)-2)`
-/

namespace A305163.P2813140602353138025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A028399 (n + 3) - 2)

end

end A305163.P2813140602353138025

namespace A305163

/-- `3*(A028399(n+3)-2)` -/
def P2813140602353138025.Spec : Prop :=
  ∀ n, P2813140602353138025.a n = A305163 n

end A305163

/-! ## A305163.P3132192796633610653

`3*(A091270(n+2)-3)`
-/

namespace A305163.P3132192796633610653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A091270 (n + 2) - 3)

end

end A305163.P3132192796633610653

namespace A305163

/-- `3*(A091270(n+2)-3)` -/
def P3132192796633610653.Spec : Prop :=
  ∀ n, P3132192796633610653.a n = A305163 n

end A305163

/-!
# A305164: a(n) = 28*2^n - 22.

The programs for A305164, the canonical program `A305164.P9426542476634233805` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305164 has offset 0).

The definition of A305164 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `28*2^n-22` (program `A305164.P9426542476634233805`, by `A305164.P9426542476634233805.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A305164.P9426542476634233805

`28*2^n-22`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A305164

/-- `28*2^n-22` -/
def P9426542476634233805.Spec : Prop :=
  ∀ n, P9426542476634233805.a n = A305164 n

theorem P9426542476634233805.correct : P9426542476634233805.Spec := by
  intro n
  simp only [A305164]

end A305164

/-! ## A305164.P10908393397206841153

`2*(a(n-1)+11)` with `a(0)=6`
-/

namespace A305164.P10908393397206841153
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6] fun n a =>
  2 * (a (n - 1) + 11)

end

end A305164.P10908393397206841153

namespace A305164

/-- `2*(a(n-1)+11)` -/
def P10908393397206841153.Spec : Prop :=
  ∀ n, (P10908393397206841153.a n : ℤ) = A305164 n

end A305164

/-! ## A305164.P15892574192290844444

`lcm(2, a(n-1)+11)` with `a(0)=6`
-/

namespace A305164.P15892574192290844444
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6] fun n a =>
  Nat.lcm 2 (a (n - 1) + 11)

end

end A305164.P15892574192290844444

namespace A305164

/-- `lcm(2, a(n-1)+11)` -/
def P15892574192290844444.Spec : Prop :=
  ∀ n, (P15892574192290844444.a n : ℤ) = A305164 n

end A305164

/-! ## A305164.P5892677642754178126

`∑[2*a(n-1)]` with `a(0)=6, a(1)=28`
-/

namespace A305164.P5892677642754178126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 28] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305164.P5892677642754178126

namespace A305164

/-- `∑[2*a(n-1)]` -/
def P5892677642754178126.Spec : Prop :=
  ∀ n, (P5892677642754178126.a n : ℤ) = A305164 n

end A305164

/-! ## A305164.P6045159154948898041

`2*(A173873(n+1)+2)`
-/

namespace A305164.P6045159154948898041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A173873 (n + 1) + 2)

end

end A305164.P6045159154948898041

namespace A305164

/-- `2*(A173873(n+1)+2)` -/
def P6045159154948898041.Spec : Prop :=
  ∀ n, P6045159154948898041.a n = A305164 n

end A305164

/-! ## A305164.P8264056442281309358

`2*(2*A048489(n)+1)`
-/

namespace A305164.P8264056442281309358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (2 * A048489 n + 1)

end

end A305164.P8264056442281309358

namespace A305164

/-- `2*(2*A048489(n)+1)` -/
def P8264056442281309358.Spec : Prop :=
  ∀ n, P8264056442281309358.a n = A305164 n

end A305164

/-! ## A305164.P8135370181345255778

`∑[(A040056(n)-2)*A000079(n)]`
-/

namespace A305164.P8135370181345255778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A040056 n - 2) * A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305164.P8135370181345255778

namespace A305164

/-- `∑[(A040056(n)-2)*A000079(n)]` -/
def P8135370181345255778.Spec : Prop :=
  ∀ n, P8135370181345255778.a n = A305164 n

end A305164

/-! ## A305164.P7104279451786159494

`ceil(A305270(n)/5)`
-/

namespace A305164.P7104279451786159494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A305270 n : ℚ) / 5⌉

end

end A305164.P7104279451786159494

namespace A305164

/-- `ceil(A305270(n)/5)` -/
def P7104279451786159494.Spec : Prop :=
  ∀ n, P7104279451786159494.a n = A305164 n

end A305164

/-! ## A305164.P14387403309445440482

`∑[p?[A272007(n)+2]*A000079(n+1)]`
-/

namespace A305164.P14387403309445440482
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272007 n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) * A000079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305164.P14387403309445440482

namespace A305164

/-- `∑[p?[A272007(n)+2]*A000079(n+1)]` -/
def P14387403309445440482.Spec : Prop :=
  ∀ n, P14387403309445440482.a n = A305164 n

end A305164

/-! ## A305164.P9784147118125802993

`∑[A005009(n+1)%(8*A000079(n)²)]`
-/

namespace A305164.P9784147118125802993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005009 (n + 1)) (8 * A000079 n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305164.P9784147118125802993

namespace A305164

/-- `∑[A005009(n+1)%(8*A000079(n)²)]` -/
def P9784147118125802993.Spec : Prop :=
  ∀ n, P9784147118125802993.a n = A305164 n

end A305164

/-!
# A305165: a(n) = 136*2^n - 112.

The programs for A305165, the canonical program `A305165.P3626837510272963591` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305165 has offset 0).

The definition of A305165 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `136*2^n-112` (program `A305165.P3626837510272963591`, by `A305165.P3626837510272963591.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A305165.P3626837510272963591

`136*2^n-112`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A305165

/-- `136*2^n-112` -/
def P3626837510272963591.Spec : Prop :=
  ∀ n, P3626837510272963591.a n = A305165 n

theorem P3626837510272963591.correct : P3626837510272963591.Spec := by
  intro n
  simp only [A305165]

end A305165

/-! ## A305165.P8731294453771926912

`2*(a(n-1)+56)` with `a(0)=24`
-/

namespace A305165.P8731294453771926912
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [24] fun n a =>
  2 * (a (n - 1) + 56)

end

end A305165.P8731294453771926912

namespace A305165

/-- `2*(a(n-1)+56)` -/
def P8731294453771926912.Spec : Prop :=
  ∀ n, (P8731294453771926912.a n : ℤ) = A305165 n

end A305165

/-! ## A305165.P2275759672598610689

`8*∑[2*a(n-1)]` with `a(0)=3, a(1)=17`
-/

namespace A305165.P2275759672598610689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 17] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A305165.P2275759672598610689

namespace A305165

/-- `8*∑[2*a(n-1)]` -/
def P2275759672598610689.Spec : Prop :=
  ∀ n, (P2275759672598610689.a n : ℤ) = A305165 n

end A305165

/-! ## A305165.P5077049299090228415

`8*(A198275(n)-13)`
-/

namespace A305165.P5077049299090228415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (A198275 n - 13)

end

end A305165.P5077049299090228415

namespace A305165

/-- `8*(A198275(n)-13)` -/
def P5077049299090228415.Spec : Prop :=
  ∀ n, P5077049299090228415.a n = A305165 n

end A305165

/-! ## A305165.P2266332390737903642

`(A278122(n+1)-88)/3`
-/

namespace A305165.P2266332390737903642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278122 (n + 1) - 88 : ℚ) / 3

end

end A305165.P2266332390737903642

namespace A305165

/-- `(A278122(n+1)-88)/3` -/
def P2266332390737903642.Spec : Prop :=
  ∀ n, P2266332390737903642.a n = (A305165 n : ℚ)

end A305165

/-!
# A305166: a(n) = 164*2^n - 140.

The programs for A305166, the canonical program `A305166.P6974367253787718976` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305166 has offset 0).

The definition of A305166 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `164*2^n-140` (program `A305166.P6974367253787718976`, by `A305166.P6974367253787718976.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A305166.P6974367253787718976

`164*2^n-140`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A305166

/-- `164*2^n-140` -/
def P6974367253787718976.Spec : Prop :=
  ∀ n, P6974367253787718976.a n = A305166 n

theorem P6974367253787718976.correct : P6974367253787718976.Spec := by
  intro n
  simp only [A305166]

end A305166

/-! ## A305166.P1615420995182811262

`2*(a(n-1)+70)` with `a(0)=24`
-/

namespace A305166.P1615420995182811262
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [24] fun n a =>
  2 * (a (n - 1) + 70)

end

end A305166.P1615420995182811262

namespace A305166

/-- `2*(a(n-1)+70)` -/
def P1615420995182811262.Spec : Prop :=
  ∀ n, (P1615420995182811262.a n : ℤ) = A305166 n

end A305166

/-! ## A305166.P17830306385434350551

`abs(41-A305157(n))`
-/

namespace A305166.P17830306385434350551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |41 - A305157 n|

end

end A305166.P17830306385434350551

namespace A305166

/-- `abs(41-A305157(n))` -/
def P17830306385434350551.Spec : Prop :=
  ∀ n, P17830306385434350551.a n = A305166 n

end A305166

/-! ## A305166.P549665649535423762

`lcm(41-A305157(n), Δ[A020914(n)])`
-/

namespace A305166.P549665649535423762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020914 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (41 - A305157 n) (f1 (n + 1) - f1 n)

end

end A305166.P549665649535423762

namespace A305166

/-- `lcm(41-A305157(n), Δ[A020914(n)])` -/
def P549665649535423762.Spec : Prop :=
  ∀ n, (P549665649535423762.a n : ℤ) = A305166 n

end A305166

/-! ## A305166.P18141584450847790305

`∑[Δ[A305268(n)]%A305263(n)]`
-/

namespace A305166.P18141584450847790305
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305268 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A305263 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305166.P18141584450847790305

namespace A305166

/-- `∑[Δ[A305268(n)]%A305263(n)]` -/
def P18141584450847790305.Spec : Prop :=
  ∀ n, P18141584450847790305.a n = A305166 n

end A305166

/-!
# A305167: Constant term in the expansion of (Sum_{k=0..n} k*(x^k + x^(-k)))^4.

The programs for A305167, there is no canonical definition to state claims against.
-/

/-! ## A305167.P6273044415970545081

`A322549(A052905(n+2))`
-/

namespace A305167.P6273044415970545081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322549 (A052905 (n + 2)).toNat

end

end A305167.P6273044415970545081

/-! ## A305167.P14893484655332534393

`A322549(eq[4, A025581(n)])`
-/

namespace A305167.P14893484655332534393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322549 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305167.P14893484655332534393

/-! ## A305167.P2621227326948570524

`A322549(eq[9, A099375(n)])`
-/

namespace A305167.P2621227326948570524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322549 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305167.P2621227326948570524

/-! ## A305167.P15035249383998429713

`A322549(A046691(n+3)-1)`
-/

namespace A305167.P15035249383998429713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322549 (A046691 (n + 3) - 1).toNat

end

end A305167.P15035249383998429713

/-! ## A305167.P15279804413619709408

`A322549(A167499(n+4)-10)`
-/

namespace A305167.P15279804413619709408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322549 (A167499 (n + 4) - 10).toNat

end

end A305167.P15279804413619709408

/-!
# A305168: Number of non-isomorphic graphs on 4n vertices whose edges are the union of two n-edge matchings.

The programs for A305168, there is no canonical definition to state claims against.
-/

/-! ## A305168.P9615060787343970617

`A002513(2*n)`
-/

namespace A305168.P9615060787343970617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002513 (2 * n)

end

end A305168.P9615060787343970617

/-! ## A305168.P15543271350596147612

`record[A002513(and(n, n+1))]`
-/

namespace A305168.P15543271350596147612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002513 (Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305168.P15543271350596147612

/-! ## A305168.P17075754817214303376

`record[A002513(n)/(-1)^n]`
-/

namespace A305168.P17075754817214303376
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002513 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305168.P17075754817214303376

/-! ## A305168.P14316173795158226545

`record[A002513(A005131(n))]`
-/

namespace A305168.P14316173795158226545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002513 (A005131 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305168.P14316173795158226545

/-! ## A305168.P8873184988332750870

`or(char[2], A002513(A005843(n)))`
-/

namespace A305168.P8873184988332750870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A002513 (A005843 n).toNat)

end

end A305168.P8873184988332750870

/-! ## A305168.P9075576787604308343

`record[A002513(n-A007814(n+1))]`
-/

namespace A305168.P9075576787604308343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002513 ((n : ℤ) - A007814 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305168.P9075576787604308343

/-! ## A305168.P1203007780626116919

`record[A002513(n%A101905(n+1))]`
-/

namespace A305168.P1203007780626116919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002513 (Int.tmod (n : ℤ) (A101905 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305168.P1203007780626116919

/-! ## A305168.P3534642381178920068

`record[A002513(gcd(n, A007814(n+1)))]`
-/

namespace A305168.P3534642381178920068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002513 (Int.gcd (n : ℤ) (A007814 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305168.P3534642381178920068

/-! ## A305168.P157188620524435813

`record[A002513(n+1-A001511(n+1))]`
-/

namespace A305168.P157188620524435813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002513 ((n + 1 : ℤ) - A001511 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305168.P157188620524435813

/-!
# A305169: Number of n X n 0..1 arrays with every element unequal to 2, 3, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305169, there is no canonical definition to state claims against.
-/

/-! ## A305169.P3751172693765919240

`A305175(∑[4*n]+1)`
-/

namespace A305169.P3751172693765919240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305175 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A305169.P3751172693765919240

/-! ## A305169.P8376998995358587439

`record[A305175(∑[A113072(n)])]`
-/

namespace A305169.P8376998995358587439
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113072 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305175 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305169.P8376998995358587439

/-! ## A305169.P11285629272149855800

`record[A305175(∑[A266981(n)])]`
-/

namespace A305169.P11285629272149855800
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266981 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305175 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305169.P11285629272149855800

/-! ## A305169.P10220247978154605458

`record[A305175(A272267(n+1))]`
-/

namespace A305169.P10220247978154605458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305175 (A272267 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305169.P10220247978154605458

/-! ## A305169.P14382826403502095597

`A305175(A001844(n))+char[9]`
-/

namespace A305169.P14382826403502095597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305175 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A305169.P14382826403502095597

/-!
# A305170: Number of nX3 0..1 arrays with every element unequal to 2, 3, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305170, there is no canonical definition to state claims against.
-/

/-! ## A305170.P1817377897556046667

`A305175(∑[n+2]+4)`
-/

namespace A305170.P1817377897556046667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305175 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A305170.P1817377897556046667

/-! ## A305170.P16479401180185472530

`A316763(∑[n+2]+4)`
-/

namespace A305170.P16479401180185472530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316763 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A305170.P16479401180185472530

/-! ## A305170.P183692657408040229

`ceil(sin(n)²)*A305175(A167614(n+1))`
-/

namespace A305170.P183692657408040229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (n : ℝ) ^ 2⌉ * A305175 (A167614 (n + 1)).toNat

end

end A305170.P183692657408040229

/-! ## A305170.P5031865606956654868

`A305175(A167614(n+1))+A185238(n)`
-/

namespace A305170.P5031865606956654868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305175 (A167614 (n + 1)).toNat + A185238 n

end

end A305170.P5031865606956654868

/-! ## A305170.P2603797360353920122

`A015420(n)*A316763(A167614(n+1))`
-/

namespace A305170.P2603797360353920122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015420 n * A316763 (A167614 (n + 1)).toNat

end

end A305170.P2603797360353920122

/-!
# A305171: Number of nX4 0..1 arrays with every element unequal to 2, 3, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305171, there is no canonical definition to state claims against.
-/

/-! ## A305171.P4372265743287825886

`A305175(A374004(n+1))`
-/

namespace A305171.P4372265743287825886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305175 (A374004 (n + 1)).toNat

end

end A305171.P4372265743287825886

/-! ## A305171.P14994427166435830181

`A305175(A141214(n)+7)`
-/

namespace A305171.P14994427166435830181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305175 (A141214 n + 7).toNat

end

end A305171.P14994427166435830181

/-! ## A305171.P18322113761531177350

`A316763(A141214(n)+7)`
-/

namespace A305171.P18322113761531177350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316763 (A141214 n + 7).toNat

end

end A305171.P18322113761531177350

/-! ## A305171.P2671820376550340584

`A305175(A055999(n)+10)`
-/

namespace A305171.P2671820376550340584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305175 (A055999 n + 10).toNat

end

end A305171.P2671820376550340584

/-! ## A305171.P15457608304346776535

`A316763(A055999(n)+10)`
-/

namespace A305171.P15457608304346776535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316763 (A055999 n + 10).toNat

end

end A305171.P15457608304346776535

/-!
# A305172: Number of nX5 0..1 arrays with every element unequal to 2, 3, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305172, there is no canonical definition to state claims against.
-/

/-! ## A305172.P7696208155659980177

`A305175(A374005(n+1))`
-/

namespace A305172.P7696208155659980177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305175 (A374005 (n + 1)).toNat

end

end A305172.P7696208155659980177

/-! ## A305172.P8457620582269129654

`A305175(A167499(n+3))`
-/

namespace A305172.P8457620582269129654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305175 (A167499 (n + 3)).toNat

end

end A305172.P8457620582269129654

/-! ## A305172.P3887529047961863467

`A305175(A155212(n)+13)`
-/

namespace A305172.P3887529047961863467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305175 (A155212 n + 13).toNat

end

end A305172.P3887529047961863467

/-! ## A305172.P12308479614333287043

`A305175(A000217(n+4)+5)`
-/

namespace A305172.P12308479614333287043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305175 (A000217 (n + 4) + 5).toNat

end

end A305172.P12308479614333287043

/-! ## A305172.P15373147365444979329

`A305175(eq[6, A131818(n+1)])`
-/

namespace A305172.P15373147365444979329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305175 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305172.P15373147365444979329

/-!
# A305173: Number of nX6 0..1 arrays with every element unequal to 2, 3, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305173, there is no canonical definition to state claims against.
-/

/-! ## A305173.P9951020290515663540

`A305175(A374007(n+1))`
-/

namespace A305173.P9951020290515663540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305175 (A374007 (n + 1)).toNat

end

end A305173.P9951020290515663540

/-! ## A305173.P16467753090941915704

`A305175(A134869(n+5)+5)`
-/

namespace A305173.P16467753090941915704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305175 (A134869 (n + 5) + 5).toNat

end

end A305173.P16467753090941915704

/-! ## A305173.P13089695428952765898

`A305175(eq[6, A130270(n+1)])`
-/

namespace A305173.P13089695428952765898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305175 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305173.P13089695428952765898

/-! ## A305173.P12706637529915385585

`A305175(eq[7, A131818(n+1)])`
-/

namespace A305173.P12706637529915385585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305175 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305173.P12706637529915385585

/-! ## A305173.P14467952293842586562

`A305175(eq[5, A152157(n)])`
-/

namespace A305173.P14467952293842586562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305175 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305173.P14467952293842586562

/-!
# A305174: Number of nX7 0..1 arrays with every element unequal to 2, 3, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305174, there is no canonical definition to state claims against.
-/

/-! ## A305174.P10200262281982799250

`A305175(A374008(n+1))`
-/

namespace A305174.P10200262281982799250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305175 (A374008 (n + 1)).toNat

end

end A305174.P10200262281982799250

/-! ## A305174.P11693769556254832691

`A305175(A167487(n+5))`
-/

namespace A305174.P11693769556254832691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305175 (A167487 (n + 5)).toNat

end

end A305174.P11693769556254832691

/-! ## A305174.P13499358682054624873

`A305175(A056119(n)+28)`
-/

namespace A305174.P13499358682054624873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305175 (A056119 n + 28).toNat

end

end A305174.P13499358682054624873

/-! ## A305174.P3181759205322473667

`A305175(eq[11, A066657(n)])`
-/

namespace A305174.P3181759205322473667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305175 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305174.P3181759205322473667

/-! ## A305174.P3823484206344499667

`A305175(eq[8, A131818(n+1)])`
-/

namespace A305174.P3823484206344499667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305175 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305174.P3823484206344499667

/-!
# A305175: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 2, 3, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305175, there is no canonical definition to state claims against.
-/

/-! ## A305175.P3484010215258757017

`A316763(∑[A010894(n)!])`
-/

namespace A305175.P3484010215258757017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A010894 (n + 21)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316763 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A305175.P3484010215258757017

/-! ## A305175.P17830148021581502517

`A316763(A010894(n)!+n)`
-/

namespace A305175.P17830148021581502517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316763 (Nat.factorial (A010894 (n + 21)).toNat + n)

end

end A305175.P17830148021581502517

/-! ## A305175.P18003300223568918825

`A004443(xor(2, A316763(n+1)))`
-/

namespace A305175.P18003300223568918825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004443 (Int.xor 2 (A316763 (n + 1))).toNat

end

end A305175.P18003300223568918825

/-! ## A305175.P5545501766692313773

`A316763(n+1)%A007825(n)`
-/

namespace A305175.P5545501766692313773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316763 (n + 1)) (A007825 n)

end

end A305175.P5545501766692313773

/-! ## A305175.P1668028138288687264

`A316763(n+1)^(C(A010894(n), 2)+1)`
-/

namespace A305175.P1668028138288687264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316763 (n + 1) ^ (Nat.choose (A010894 (n + 21)).toNat 2 + 1)

end

end A305175.P1668028138288687264

/-!
# A305176: Number of n X n 0..1 arrays with every element unequal to 1, 2, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305176, there is no canonical definition to state claims against.
-/

/-! ## A305176.P9408217858671210835

`A305182(∑[4*n]+1)`
-/

namespace A305176.P9408217858671210835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305182 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A305176.P9408217858671210835

/-! ## A305176.P4248732273717335531

`record[A305182(A152271(n²))]`
-/

namespace A305176.P4248732273717335531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305182 (A152271 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305176.P4248732273717335531

/-! ## A305176.P12859537487877075824

`record[A305182(Δ[A235355(n)])]`
-/

namespace A305176.P12859537487877075824
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305182 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305176.P12859537487877075824

/-! ## A305176.P9722233903086337470

`record[A305182(A330613(n+1))]`
-/

namespace A305176.P9722233903086337470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305182 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305176.P9722233903086337470

/-! ## A305176.P213513979964311029

`record[A003982(n)*A305182(n+1)]`
-/

namespace A305176.P213513979964311029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A305182 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305176.P213513979964311029

/-!
# A305177: Number of nX3 0..1 arrays with every element unequal to 1, 2, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305177, there is no canonical definition to state claims against.
-/

/-! ## A305177.P16079973277689288869

`A305182(∑[n+2]+4)`
-/

namespace A305177.P16079973277689288869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305182 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A305177.P16079973277689288869

/-! ## A305177.P5361204309102137102

`and(-1, A305182(A167614(n+1)))`
-/

namespace A305177.P5361204309102137102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A305182 (A167614 (n + 1)).toNat)

end

end A305177.P5361204309102137102

/-! ## A305177.P7750971427274477991

`record[A010054(n)*A305182(n+3)]`
-/

namespace A305177.P7750971427274477991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A305182 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305177.P7750971427274477991

/-! ## A305177.P1394045083830174863

`record[A023531(n)*A305182(n+4)]`
-/

namespace A305177.P1394045083830174863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A305182 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305177.P1394045083830174863

/-! ## A305177.P7255100562811671318

`record[gcd(A305182(n+3), A360742(n))]`
-/

namespace A305177.P7255100562811671318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A305182 (n + 3)) (A360742 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305177.P7255100562811671318

/-!
# A305178: Number of n X 4 0..1 arrays with every element unequal to 1, 2, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305178, there is no canonical definition to state claims against.
-/

/-! ## A305178.P17089466622735028230

`A305182(∑[n+3]+7)`
-/

namespace A305178.P17089466622735028230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305182 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A305178.P17089466622735028230

/-! ## A305178.P11673904494902404540

`A305182(A055999(n)+10)%A170938(n)`
-/

namespace A305178.P11673904494902404540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305182 (A055999 n + 10).toNat) (A170938 n)

end

end A305178.P11673904494902404540

/-! ## A305178.P4342191509767955772

`A305182(A374004(n+1))%A100511(n+1)`
-/

namespace A305178.P4342191509767955772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305182 (A374004 (n + 1)).toNat) (A100511 (n + 1))

end

end A305178.P4342191509767955772

/-! ## A305178.P7523206299837489314

`A305182(A056000(n)+7)%A305154(n)`
-/

namespace A305178.P7523206299837489314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305182 (A056000 n + 7).toNat) (A305154 n)

end

end A305178.P7523206299837489314

/-! ## A305178.P8771208400987314741

`A305182(A055998(n+2))%A304301(n+1)`
-/

namespace A305178.P8771208400987314741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305182 (A055998 (n + 2)).toNat) (A304301 (n + 1))

end

end A305178.P8771208400987314741

/-!
# A305179: Number of nX5 0..1 arrays with every element unequal to 1, 2, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305179, there is no canonical definition to state claims against.
-/

/-! ## A305179.P4367077593307557665

`A305182(∑[n+4]+11)`
-/

namespace A305179.P4367077593307557665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305182 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A305179.P4367077593307557665

/-!
# A305180: Number of n X 6 0..1 arrays with every element unequal to 1, 2, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305180, there is no canonical definition to state claims against.
-/

/-! ## A305180.P401911650737902171

`A305182(A374007(n+1))`
-/

namespace A305180.P401911650737902171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305182 (A374007 (n + 1)).toNat

end

end A305180.P401911650737902171

/-! ## A305180.P13926771370332443950

`A305182(A056115(n)+21)`
-/

namespace A305180.P13926771370332443950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305182 (A056115 n + 21).toNat

end

end A305180.P13926771370332443950

/-! ## A305180.P8615871120725086713

`A305182(A167499(n+4)+1)`
-/

namespace A305180.P8615871120725086713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305182 (A167499 (n + 4) + 1).toNat

end

end A305180.P8615871120725086713

/-! ## A305180.P4103180817679119727

`A305182(A000124(n+5)+5)`
-/

namespace A305180.P4103180817679119727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305182 (A000124 (n + 5) + 5).toNat

end

end A305180.P4103180817679119727

/-! ## A305180.P1375923223407918723

`A305182(A000096(n+4)+7)`
-/

namespace A305180.P1375923223407918723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305182 (A000096 (n + 4) + 7).toNat

end

end A305180.P1375923223407918723

/-!
# A305181: Number of nX7 0..1 arrays with every element unequal to 1, 2, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305181, there is no canonical definition to state claims against.
-/

/-! ## A305181.P11518142220656133983

`A305182(A374008(n+1))`
-/

namespace A305181.P11518142220656133983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305182 (A374008 (n + 1)).toNat

end

end A305181.P11518142220656133983

/-! ## A305181.P4607407057774331426

`A305182(A056119(n)+28)`
-/

namespace A305181.P4607407057774331426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305182 (A056119 n + 28).toNat

end

end A305181.P4607407057774331426

/-! ## A305181.P14121877906232619308

`A305182(A167499(n+5)+2)`
-/

namespace A305181.P14121877906232619308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305182 (A167499 (n + 5) + 2).toNat

end

end A305181.P14121877906232619308

/-! ## A305181.P3663325184258534975

`A305182(A167614(n+5)+4)`
-/

namespace A305181.P3663325184258534975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305182 (A167614 (n + 5) + 4).toNat

end

end A305181.P3663325184258534975

/-! ## A305181.P7400110139673338733

`A305182(A000124(n+6)+6)`
-/

namespace A305181.P7400110139673338733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305182 (A000124 (n + 6) + 6).toNat

end

end A305181.P7400110139673338733

/-!
# A305182: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 1, 2, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305182, there is no canonical definition to state claims against.
-/

/-! ## A305182.P7870690423594375111

`A304302(n+1)+A165656(A126770(n))`
-/

namespace A305182.P7870690423594375111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304302 (n + 1) + A165656 (A126770 n).toNat

end

end A305182.P7870690423594375111

/-! ## A305182.P18276593284899446246

`A304302(n+1)+A151755(A176420(n))`
-/

namespace A305182.P18276593284899446246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304302 (n + 1) + A151755 (A176420 n).toNat

end

end A305182.P18276593284899446246

/-! ## A305182.P6403598256440123378

`A337320(A157177(n))+A305516(n+1)`
-/

namespace A305182.P6403598256440123378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337320 (A157177 n).toNat + A305516 (n + 1)

end

end A305182.P6403598256440123378

/-! ## A305182.P2553882581001458469

`dr(A305516(n+1)^A001263(A001263(n+1)))`
-/

namespace A305182.P2553882581001458469
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.roundAway ((A305516 (n + 1) : ℚ) ^ (A001263 (A001263 (n + 1)).toNat : ℤ)))

end

end A305182.P2553882581001458469

/-! ## A305182.P3511052606124192150

`dr(A304704(n+1)%A271269(2*(n+2)))`
-/

namespace A305182.P3511052606124192150
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (A304704 (n + 1)) (A271269 (2 * (n + 2))))

end

end A305182.P3511052606124192150

/-!
# A305183: Least k such that A048272(k) = -n.

The programs for A305183, there is no canonical definition to state claims against.
-/

/-! ## A305183.P15220592147257033163

`2*A187941(n)`
-/

namespace A305183.P15220592147257033163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A187941 n

end

end A305183.P15220592147257033163

/-! ## A305183.P13726510273848433454

`A187941(n)+A187941(n%(n+1))`
-/

namespace A305183.P13726510273848433454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187941 n + A187941 (n % (n + 1))

end

end A305183.P13726510273848433454

/-! ## A305183.P3064987482262851172

`A187941(n)/2^A008683(A003629(n+1))`
-/

namespace A305183.P3064987482262851172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187941 n : ℚ) / (2 : ℚ) ^ (A008683 (A003629 (n + 1)).toNat : ℤ)

end

end A305183.P3064987482262851172

/-! ## A305183.P8656542357077361917

`A187941(n)/2^A008683(A092627(n+1))`
-/

namespace A305183.P8656542357077361917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187941 n : ℚ) / (2 : ℚ) ^ (A008683 (A092627 (n + 1)).toNat : ℤ)

end

end A305183.P8656542357077361917

/-! ## A305183.P3638754964285687831

`∑{d}[A231478(n+1), A187941(n)+A008683(#)]`
-/

namespace A305183.P3638754964285687831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231478 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A187941 n + A008683 d)

end

end A305183.P3638754964285687831

/-!
# A305185: a(n) minimizes the maximum norm of elements in a complete residue system of Eisenstein integers modulo n.

The programs for A305185, the canonical program `A305185.P15680046366071105282` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305185 has offset 1).

The definition of A305185 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A305185.P15680046366071105282

`a(∑[n%3]-2)+n` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A305185

/-- `a(∑[n%3]-2)+n` -/
def P15680046366071105282.Spec : Prop :=
  ∀ n, (P15680046366071105282.a n : ℤ) = A305185 (n + 1)

theorem P15680046366071105282.correct : P15680046366071105282.Spec := by
  intro n
  simp only [A305185, Nat.add_sub_cancel]

end A305185

/-! ## A305185.P5737995285221661787

`∑[∑[floor(a(n-3))]-a(a(n-1))]` with `a(0)=0, a(1)=1, a(2)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A305185.P5737995285221661787
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n f1 =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - f1 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305185.P5737995285221661787

namespace A305185

/-- `∑[∑[floor(a(n-3))]-a(a(n-1))]` -/
def P5737995285221661787.Spec : Prop :=
  ∀ n, P5737995285221661787.a n = A305185 (n + 1)

end A305185

/-! ## A305185.P14370290557396666073

`a(A047231(n)%n)+n` with `a(0)=0`
-/

namespace A305185.P14370290557396666073
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (Int.tmod (A047231 n) (n : ℤ)).toNat + n

end

end A305185.P14370290557396666073

namespace A305185

/-- `a(A047231(n)%n)+n` -/
def P14370290557396666073.Spec : Prop :=
  ∀ n, (P14370290557396666073.a n : ℤ) = A305185 (n + 1)

end A305185

/-! ## A305185.P9186219752813489157

`A222256(n)+a(n-2)` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A305185.P9186219752813489157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  A222256 n + a (n - 2)

end

end A305185.P9186219752813489157

namespace A305185

/-- `A222256(n)+a(n-2)` -/
def P9186219752813489157.Spec : Prop :=
  ∀ n, P9186219752813489157.a n = A305185 (n + 1)

end A305185

/-! ## A305185.P1321912180862799911

`∪[A056107(n), A077043(n)]`
-/

namespace A305185.P1321912180862799911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056107 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077043 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A305185.P1321912180862799911

namespace A305185

/-- `∪[A056107(n), A077043(n)]` -/
def P1321912180862799911.Spec : Prop :=
  ∀ n, (P1321912180862799911.a n : ℤ) = A305185 (n + 1)

end A305185

/-! ## A305185.P11816725596126129050

`∪[A194073(n+1), A033428(n)]`
-/

namespace A305185.P11816725596126129050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033428 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A305185.P11816725596126129050

namespace A305185

/-- `∪[A194073(n+1), A033428(n)]` -/
def P11816725596126129050.Spec : Prop :=
  ∀ n, (P11816725596126129050.a n : ℤ) = A305185 (n + 1)

end A305185

/-! ## A305185.P2432432954672471980

`∪[A194073(n+1), A077043(n)]`
-/

namespace A305185.P2432432954672471980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077043 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A305185.P2432432954672471980

namespace A305185

/-- `∪[A194073(n+1), A077043(n)]` -/
def P2432432954672471980.Spec : Prop :=
  ∀ n, (P2432432954672471980.a n : ℤ) = A305185 (n + 1)

end A305185

/-! ## A305185.P2224600736414605347

`A077043(∑[char[A001651(n+2)]])+n`
-/

namespace A305185.P2224600736414605347
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077043 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)

end

end A305185.P2224600736414605347

namespace A305185

/-- `A077043(∑[char[A001651(n+2)]])+n` -/
def P2224600736414605347.Spec : Prop :=
  ∀ n, P2224600736414605347.a n = A305185 (n + 1)

end A305185

/-! ## A305185.P11063128968754073429

`∑[n-a(n-1)*A011655(n+1)]` with `a(0)=0`
-/

namespace A305185.P11063128968754073429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (n : ℤ) - f1 (n - 1) * A011655 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305185.P11063128968754073429

namespace A305185

/-- `∑[n-a(n-1)*A011655(n+1)]` -/
def P11063128968754073429.Spec : Prop :=
  ∀ n, P11063128968754073429.a n = A305185 (n + 1)

end A305185

/-! ## A305185.P14304292953442199048

`A000212(n)+A000326(Δ[A000212(n)])%(n+1)`
-/

namespace A305185.P14304292953442199048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 n + Int.tmod (A000326 (f1 (n + 1) - f1 n).toNat) (n + 1 : ℤ)

end

end A305185.P14304292953442199048

namespace A305185

/-- `A000212(n)+A000326(Δ[A000212(n)])%(n+1)` -/
def P14304292953442199048.Spec : Prop :=
  ∀ n, P14304292953442199048.a n = A305185 (n + 1)

end A305185

/-! ## A305185.P368374388152995375

`record[A174709(n)+gcd(n, A004396(n))]`
-/

namespace A305185.P368374388152995375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174709 n + (Int.gcd (n : ℤ) (A004396 n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305185.P368374388152995375

namespace A305185

/-- `record[A174709(n)+gcd(n, A004396(n))]` -/
def P368374388152995375.Spec : Prop :=
  ∀ n, P368374388152995375.a n = A305185 (n + 1)

end A305185

/-! ## A305185.P10776907379343549794

`record[A132111(n)]`
-/

namespace A305185.P10776907379343549794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132111 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305185.P10776907379343549794

namespace A305185

/-- `record[A132111(n)]` -/
def P10776907379343549794.Spec : Prop :=
  ∀ n, P10776907379343549794.a n = A305185 (n + 1)

end A305185

/-! ## A305185.P15687762418499349290

`record[A079904(n)+A069011(n)]`
-/

namespace A305185.P15687762418499349290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079904 n + A069011 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305185.P15687762418499349290

namespace A305185

/-- `record[A079904(n)+A069011(n)]` -/
def P15687762418499349290.Spec : Prop :=
  ∀ n, P15687762418499349290.a n = A305185 (n + 1)

end A305185

/-! ## A305185.P5732857069266354646

`record[A073254(A245300(n))]`
-/

namespace A305185.P5732857069266354646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073254 (A245300 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305185.P5732857069266354646

namespace A305185

/-- `record[A073254(A245300(n))]` -/
def P5732857069266354646.Spec : Prop :=
  ∀ n, P5732857069266354646.a n = A305185 (n + 1)

end A305185

/-!
# A305186: Number of invertible 4 X 4 matrices mod n.

The programs for A305186, there is no canonical definition to state claims against.
-/

/-! ## A305186.P16533943790886480178

`A000010(n+1)*A011786(n+1)`
-/

namespace A305186.P16533943790886480178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A011786 (n + 1)

end

end A305186.P16533943790886480178

/-! ## A305186.P13074535976715752652

`Δ[A002088(n)]*A011786(n+1)`
-/

namespace A305186.P13074535976715752652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A011786 (n + 1)

end

end A305186.P13074535976715752652

/-! ## A305186.P18268796078289425405

`A115224(n+1)*A294705(n+1)`
-/

namespace A305186.P18268796078289425405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115224 (n + 1) * A294705 (n + 1)

end

end A305186.P18268796078289425405

/-! ## A305186.P8127275607473626461

`A115226(n+1)*A364771(n+1)`
-/

namespace A305186.P8127275607473626461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115226 (n + 1) * A364771 (n + 1)

end

end A305186.P8127275607473626461

/-! ## A305186.P11440147546990087805

`A011786(n+1)*A349137(A005408(n))`
-/

namespace A305186.P11440147546990087805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011786 (n + 1) * A349137 (A005408 n).toNat

end

end A305186.P11440147546990087805

/-! ## A305186.P17809516685199790348

`A011786(n+1)*A090127(A286610(n+1))`
-/

namespace A305186.P17809516685199790348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011786 (n + 1) * A090127 (A286610 (n + 1)).toNat

end

end A305186.P17809516685199790348

/-! ## A305186.P11311107632407219566

`A000252(n+1)/A000056(n+1)*A011786(n+1)`
-/

namespace A305186.P11311107632407219566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000252 (n + 1) : ℚ) / (A000056 (n + 1) : ℚ) * (A011786 (n + 1) : ℚ)

end

end A305186.P11311107632407219566

/-! ## A305186.P4764910864141271148

`A011786(n+1)/A011785(n+1)*A064767(n+1)`
-/

namespace A305186.P4764910864141271148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011786 (n + 1) : ℚ) / (A011785 (n + 1) : ℚ) * (A064767 (n + 1) : ℚ)

end

end A305186.P4764910864141271148

/-! ## A305186.P6570985675578494571

`A011786(n+1)/A115224(n+1)*A115226(n+1)`
-/

namespace A305186.P6570985675578494571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011786 (n + 1) : ℚ) / (A115224 (n + 1) : ℚ) * (A115226 (n + 1) : ℚ)

end

end A305186.P6570985675578494571

/-! ## A305186.P7747845136758648410

`A011785(n+1)/A000056(n+1)*A294705(n+1)`
-/

namespace A305186.P7747845136758648410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011785 (n + 1) : ℚ) / (A000056 (n + 1) : ℚ) * (A294705 (n + 1) : ℚ)

end

end A305186.P7747845136758648410

/-!
# A305188: Numbers that are equal to a nontrivial multinomial coefficient (i.e., equal to k!/(k1!*...*km!) with k1 + ... + km = k, k-2 >= k1 >= ... >= km).

The programs for A305188, there is no canonical definition to state claims against.
-/

/-! ## A305188.P13499176630804826878

`A325472(n+2)`
-/

namespace A305188.P13499176630804826878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325472 (n + 2)

end

end A305188.P13499176630804826878

/-! ## A305188.P15895079021743309212

`record[A325472(A001281(A004277(n)))]`
-/

namespace A305188.P15895079021743309212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325472 (A001281 (A004277 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305188.P15895079021743309212

/-! ## A305188.P16662080300258552717

`record[A325472(A286544(A028242(n)))]`
-/

namespace A305188.P16662080300258552717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325472 (A286544 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305188.P16662080300258552717

/-! ## A305188.P8182421698206601604

`record[A325472(A286544(A065033(n)))]`
-/

namespace A305188.P8182421698206601604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325472 (A286544 (A065033 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305188.P8182421698206601604

/-! ## A305188.P986727951333794972

`record[A325472(A286544(A106249(n)))]`
-/

namespace A305188.P986727951333794972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325472 (A286544 (A106249 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305188.P986727951333794972

/-! ## A305188.P11405962685935642929

`record[A325472(A099801(A286544(n)))]`
-/

namespace A305188.P11405962685935642929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325472 (A099801 (A286544 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305188.P11405962685935642929

/-!
# A305189: a(n) = 1*2 + 3 + 4*5 + 6 + 7*8 + 9 + 10*11 + 12 + ... + (up to n).

The programs for A305189, the canonical program `A305189.P521679482728346287` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305189 has offset 1).

The definition of A305189 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A305189.P521679482728346287

`∑[A117571(n)^abs(A057079(n))]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A305189

/-- `∑[A117571(n)^abs(A057079(n))]` -/
def P521679482728346287.Spec : Prop :=
  ∀ n, P521679482728346287.a n = (A305189 (n + 1) : ℚ)

end A305189

/-! ## A305189.P5380156601634659077

`∑[A000463(A047268(n+1))]`
-/

namespace A305189.P5380156601634659077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A047268 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305189.P5380156601634659077

namespace A305189

/-- `∑[A000463(A047268(n+1))]` -/
def P5380156601634659077.Spec : Prop :=
  ∀ n, P5380156601634659077.a n = A305189 (n + 1)

end A305189

/-! ## A305189.P3623512026817417997

`∑[A000463(A047234(n+1)+1)]`
-/

namespace A305189.P3623512026817417997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A047234 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305189.P3623512026817417997

namespace A305189

/-- `∑[A000463(A047234(n+1)+1)]` -/
def P3623512026817417997.Spec : Prop :=
  ∀ n, P3623512026817417997.a n = A305189 (n + 1)

end A305189

/-! ## A305189.P12394810893671583166

`∑[A000463(A029739(n+2)-2)]`
-/

namespace A305189.P12394810893671583166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A029739 (n + 2) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305189.P12394810893671583166

namespace A305189

/-- `∑[A000463(A029739(n+2)-2)]` -/
def P12394810893671583166.Spec : Prop :=
  ∀ n, P12394810893671583166.a n = A305189 (n + 1)

end A305189

/-! ## A305189.P9653711969567599303

`∑[A000463(4*n+3-A131717(2*(n+1)))]`
-/

namespace A305189.P9653711969567599303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 ((4 * n + 3 : ℤ) - A131717 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305189.P9653711969567599303

namespace A305189

/-- `∑[A000463(4*n+3-A131717(2*(n+1)))]` -/
def P9653711969567599303.Spec : Prop :=
  ∀ n, P9653711969567599303.a n = A305189 (n + 1)

end A305189

/-! ## A305189.P4745145666222385124

`∑[A000463(A057353(A047531(n+1)))]`
-/

namespace A305189.P4745145666222385124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A057353 (A047531 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305189.P4745145666222385124

namespace A305189

/-- `∑[A000463(A057353(A047531(n+1)))]` -/
def P4745145666222385124.Spec : Prop :=
  ∀ n, P4745145666222385124.a n = A305189 (n + 1)

end A305189

/-! ## A305189.P13237761092288964068

`∑[A109594(A047268(n+1)+n)]`
-/

namespace A305189.P13237761092288964068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109594 (A047268 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305189.P13237761092288964068

namespace A305189

/-- `∑[A109594(A047268(n+1)+n)]` -/
def P13237761092288964068.Spec : Prop :=
  ∀ n, P13237761092288964068.a n = A305189 (n + 1)

end A305189

/-! ## A305189.P14579595854780310284

`∑[A000463(A008619(A136290(n)))]`
-/

namespace A305189.P14579595854780310284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A008619 (A136290 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305189.P14579595854780310284

namespace A305189

/-- `∑[A000463(A008619(A136290(n)))]` -/
def P14579595854780310284.Spec : Prop :=
  ∀ n, P14579595854780310284.a n = A305189 (n + 1)

end A305189

/-! ## A305189.P12106595277485166664

`∑[A075362(∑[n+1-(n+1)%3]+1)]`
-/

namespace A305189.P12106595277485166664
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (((n + 1) % 3 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (∑ j ∈ Finset.range (n + 1), f2 j + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305189.P12106595277485166664

namespace A305189

/-- `∑[A075362(∑[n+1-(n+1)%3]+1)]` -/
def P12106595277485166664.Spec : Prop :=
  ∀ n, P12106595277485166664.a n = A305189 (n + 1)

end A305189

/-! ## A305189.P17078399068704715618

`∑[A279409((n+1)*A085801(2*n+1)+1)]`
-/

namespace A305189.P17078399068704715618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279409 ((n + 1 : ℤ) * A085801 (2 * n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305189.P17078399068704715618

namespace A305189

/-- `∑[A279409((n+1)*A085801(2*n+1)+1)]` -/
def P17078399068704715618.Spec : Prop :=
  ∀ n, P17078399068704715618.a n = A305189 (n + 1)

end A305189

/-!
# A305190: a(n) is the number of different numbers of Hamiltonian cycles (up to direction) in graphs with n vertices.

The programs for A305190, there is no canonical definition to state claims against.
-/

/-! ## A305190.P411314307257774991

`A361978(A088793(n))`
-/

namespace A305190.P411314307257774991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361978 (A088793 n).toNat

end

end A305190.P411314307257774991

/-! ## A305190.P632315794809071018

`A342517(A143373(n+2))`
-/

namespace A305190.P632315794809071018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342517 (A143373 (n + 2)).toNat

end

end A305190.P632315794809071018

/-! ## A305190.P3627731147262912983

`A342517(round(sqrt(A303546(n+1))))`
-/

namespace A305190.P3627731147262912983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342517 (SequenceMachineLib.roundAway (Real.sqrt (A303546 (n + 1) : ℝ))).toNat

end

end A305190.P3627731147262912983

/-! ## A305190.P17102643081229525195

`A342517(A001037(n+2)-n%2)`
-/

namespace A305190.P17102643081229525195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342517 (A001037 (n + 2) - ((n % 2 : ℕ) : ℤ)).toNat

end

end A305190.P17102643081229525195

/-!
# A305193: Number of connected factorizations of n.

The programs for A305193, there is no canonical definition to state claims against.
-/

/-! ## A305193.P15506042163595314794

`A321270(A181819(n+1))-A000007(n)`
-/

namespace A305193.P15506042163595314794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321270 (A181819 (n + 1)).toNat - A000007 n

end

end A305193.P15506042163595314794

/-! ## A305193.P17955847027492837420

`A057427(n)*A321270(A181819(n+1))`
-/

namespace A305193.P17955847027492837420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A321270 (A181819 (n + 1)).toNat

end

end A305193.P17955847027492837420

/-! ## A305193.P9542643707265152729

`A321270(A181819(n+1))%A000124(n)`
-/

namespace A305193.P9542643707265152729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321270 (A181819 (n + 1)).toNat) (A000124 n)

end

end A305193.P9542643707265152729

/-! ## A305193.P10643767452232611628

`char[A032742(n+1)]*A321270(A181819(n+1))`
-/

namespace A305193.P10643767452232611628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A321270 (A181819 (n + 1)).toNat

end

end A305193.P10643767452232611628

/-! ## A305193.P12985663087462176197

`char[A085790(n+1)]*A321270(A181819(n+1))`
-/

namespace A305193.P12985663087462176197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085790 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A321270 (A181819 (n + 1)).toNat

end

end A305193.P12985663087462176197

/-! ## A305193.P6030962847326791305

`char[A276345(n+1)]*A321270(A181819(n+1))`
-/

namespace A305193.P6030962847326791305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276345 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A321270 (A181819 (n + 1)).toNat

end

end A305193.P6030962847326791305

/-! ## A305193.P12609856521894720284

`char[A336147(n+1)]*A321270(A181819(n+1))`
-/

namespace A305193.P12609856521894720284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336147 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A321270 (A181819 (n + 1)).toNat

end

end A305193.P12609856521894720284

/-! ## A305193.P5559193201181541953

`A140082(A053644(n))*A321270(A181819(n+1))`
-/

namespace A305193.P5559193201181541953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140082 (A053644 n).toNat * A321270 (A181819 (n + 1)).toNat

end

end A305193.P5559193201181541953

/-! ## A305193.P3525864855475643889

`and(A198277(n), A321270(A181819(n+1)))`
-/

namespace A305193.P3525864855475643889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A198277 n) (A321270 (A181819 (n + 1)).toNat)

end

end A305193.P3525864855475643889

/-!
# A305194: Number of z-forests summing to n. Number of strict integer partitions of n with pairwise indivisible parts and all connected components having clutter density -1.

The programs for A305194, there is no canonical definition to state claims against.
-/

/-! ## A305194.P6420094787233002367

`A303362(n+1)-A073490(A013613(n))`
-/

namespace A305194.P6420094787233002367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303362 (n + 1) - A073490 (A013613 n).toNat

end

end A305194.P6420094787233002367

/-! ## A305194.P16457007865668451101

`∑{d}[n+1, A328678(#)]-A073490(A013613(n))`
-/

namespace A305194.P16457007865668451101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328678 d - A073490 (A013613 n).toNat

end

end A305194.P16457007865668451101

/-! ## A305194.P3310016800851294459

`A303362(n+1)-A025466(A222378(n+1))`
-/

namespace A305194.P3310016800851294459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303362 (n + 1) - A025466 (A222378 (n + 1)).toNat

end

end A305194.P3310016800851294459

/-! ## A305194.P8410818350955722154

`A303362(n+1)-A102683(A129062(n))`
-/

namespace A305194.P8410818350955722154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303362 (n + 1) - A102683 (A129062 n).toNat

end

end A305194.P8410818350955722154

/-! ## A305194.P8301875972067487398

`A303362(n+1)-A037800(A210709(n))`
-/

namespace A305194.P8301875972067487398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303362 (n + 1) - A037800 (A210709 n).toNat

end

end A305194.P8301875972067487398

/-!
# A305195: Number of z-blobs summing to n. Number of connected strict integer partitions of n, with pairwise indivisible parts, that cannot be capped by a z-tree.

The programs for A305195, there is no canonical definition to state claims against.
-/

/-! ## A305195.P16933401873679026693

`Δ[comp[A357756(n)-96]]`
-/

namespace A305195.P16933401873679026693
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357756 n - 96

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A305195.P16933401873679026693

/-! ## A305195.P12395432045548406465

`A135362(A116358(n+1))`
-/

namespace A305195.P12395432045548406465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135362 (A116358 (n + 1)).toNat

end

end A305195.P12395432045548406465

/-! ## A305195.P11969880620227785347

`A172098(A318560(n+1))`
-/

namespace A305195.P11969880620227785347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172098 (A318560 (n + 1)).toNat

end

end A305195.P11969880620227785347

/-! ## A305195.P5133526635220150531

`A376306(lcm(6, A036497(n)))`
-/

namespace A305195.P5133526635220150531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376306 (Int.lcm 6 (A036497 n))

end

end A305195.P5133526635220150531

/-!
# A305197: Number of set partitions of [n] with symmetric block size list of length A004525(n).

The programs for A305197, there is no canonical definition to state claims against.
-/

/-! ## A305197.P13270435714051459768

`A275281(Δ[ceil(C(n, 2)/2)]+∑[n])`
-/

namespace A305197.P13270435714051459768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose n 2 : ℚ) / 2⌉

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275281 (f1 (n + 1) - f1 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)).toNat

end

end A305197.P13270435714051459768

/-! ## A305197.P9253878848090925909

`A275281(A004525(n)+∑[n])`
-/

namespace A305197.P9253878848090925909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275281 (A004525 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A305197.P9253878848090925909

/-! ## A305197.P15340571069615324003

`A275281((n²+n)/2+A004525(n))`
-/

namespace A305197.P15340571069615324003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275281 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2 + (A004525 n : ℚ))).toNat

end

end A305197.P15340571069615324003

/-! ## A305197.P17238740127718223897

`A036541(or(2, A143330(n)))`
-/

namespace A305197.P17238740127718223897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036541 (Int.lor 2 (A143330 n)).toNat

end

end A305197.P17238740127718223897

/-! ## A305197.P2343099113498440099

`A165190(A113485(n+1)+3)`
-/

namespace A305197.P2343099113498440099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 (A113485 (n + 1) + 3).toNat

end

end A305197.P2343099113498440099

/-!
# A305198: Number of set partitions of [2n+1] with symmetric block size list of length A109613(n).

The programs for A305198, there is no canonical definition to state claims against.
-/

/-! ## A305198.P6625679599439819191

`A305197(Δ[n²])`
-/

namespace A305198.P6625679599439819191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305197 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A305198.P6625679599439819191

/-! ## A305198.P13119861813830970743

`abs(A305197(A005408(n))-1)+1`
-/

namespace A305198.P13119861813830970743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A305197 (A005408 n).toNat - 1| + 1

end

end A305198.P13119861813830970743

/-! ## A305198.P8596648139521248893

`gcd(A000038(n), A305197(A005408(n)))`
-/

namespace A305198.P8596648139521248893
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A305197 (A005408 n).toNat)

end

end A305198.P8596648139521248893

/-! ## A305198.P6814358282628516565

`or(A000007(n), A305197(A005408(n)))`
-/

namespace A305198.P6814358282628516565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A305197 (A005408 n).toNat)

end

end A305198.P6814358282628516565

/-! ## A305198.P2467611288023151204

`A007318(∑[n])*A305197(A005408(n))`
-/

namespace A305198.P2467611288023151204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A305197 (A005408 n).toNat

end

end A305198.P2467611288023151204

/-! ## A305198.P1281585340318136215

`A305197(A005408(n))+A000007(n+1)`
-/

namespace A305198.P1281585340318136215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305197 (A005408 n).toNat + A000007 (n + 1)

end

end A305198.P1281585340318136215

/-! ## A305198.P10397365197728537358

`A305197(A005408(n))+A000038(n+1)`
-/

namespace A305198.P10397365197728537358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305197 (A005408 n).toNat + A000038 (n + 1)

end

end A305198.P10397365197728537358

/-! ## A305198.P8696247882915524224

`A305197(A005408(n))/A000010(gcd(n, n+1))`
-/

namespace A305198.P8696247882915524224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305197 (A005408 n).toNat : ℚ) / (A000010 (Nat.gcd n (n + 1)) : ℚ)

end

end A305198.P8696247882915524224

/-! ## A305198.P17696770921497694023

`gcd(n*A305197(2*n+1), A305197(2*n+1))`
-/

namespace A305198.P17696770921497694023
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) * A305197 (2 * n + 1)) (A305197 (2 * n + 1))

end

end A305198.P17696770921497694023

/-!
# A305199: Expansion of e.g.f. Product_{k>=1} (1 + x^k/k)/(1 - x^k/k).

The programs for A305199, there is no canonical definition to state claims against.
-/

/-! ## A305199.P14464458144338935900

`∏{e}[11^n, A295792(#)]`
-/

namespace A305199.P14464458144338935900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A295792 (Nat.factorization (f1 n) p)

end

end A305199.P14464458144338935900

/-! ## A305199.P224937937485164932

`A295792(A062937(n+1))`
-/

namespace A305199.P224937937485164932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295792 (A062937 (n + 1)).toNat

end

end A305199.P224937937485164932

