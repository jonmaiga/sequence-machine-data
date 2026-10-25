import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C001
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
# A270100: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 81", based on the 5-celled von Neumann neighborhood.

The programs for A270100, there is no canonical definition to state claims against.
-/

/-! ## A270100.P7379690584226245974

`∑[A270098(n)]`
-/

namespace A270100.P7379690584226245974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270098 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270100.P7379690584226245974

/-! ## A270100.P12777579208142228982

`A270098(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A270100.P12777579208142228982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270098 n + a (A023443 n).toNat

end

end A270100.P12777579208142228982

/-! ## A270100.P2007904567128832816

`∑[∑[A270101(abs(1-n))]]`
-/

namespace A270100.P2007904567128832816
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270101 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270100.P2007904567128832816

/-! ## A270100.P12921908555700538117

`∑[A270101(n-1)-ceil(-a(n-1))]` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A270100.P12921908555700538117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A270101 (n - 1) - (-f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270100.P12921908555700538117

/-! ## A270100.P18141625430560470075

`∑[∑[A270101(A028310(n)-1)]-2]`
-/

namespace A270100.P18141625430560470075
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270101 (A028310 n - 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270100.P18141625430560470075

/-! ## A270100.P3101524559527216803

`∑[∑[A270101(n)]+1-A270101(n)]`
-/

namespace A270100.P3101524559527216803
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270101 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A270101 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270100.P3101524559527216803

/-!
# A270101: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 81", based on the 5-celled von Neumann neighborhood.

The programs for A270101, there is no canonical definition to state claims against.
-/

/-! ## A270101.P429925176641659746

`Δ[A270098(n)]`
-/

namespace A270101.P429925176641659746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270098 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270101.P429925176641659746

/-! ## A270101.P4788248109492511325

`A270098(n+1)-A270098(n)`
-/

namespace A270101.P4788248109492511325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270098 (n + 1) - A270098 n

end

end A270101.P4788248109492511325

/-!
# A270102: Numbers k such that 3^k - k*2^k is prime.

The programs for A270102, there is no canonical definition to state claims against.
-/

/-! ## A270102.P12579333385945603565

`record[A000005(A122084(n+1))+2]`
-/

namespace A270102.P12579333385945603565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A122084 (n + 1)).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270102.P12579333385945603565

/-! ## A270102.P6029992434764066178

`A074206(A002807(n))+A048869(n+1)`
-/

namespace A270102.P6029992434764066178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A002807 n).toNat + A048869 (n + 1)

end

end A270102.P6029992434764066178

/-! ## A270102.P5246223687504578724

`A114800(n+3)+A001222(A012259(n))`
-/

namespace A270102.P5246223687504578724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114800 (n + 3) + A001222 (A012259 n).toNat

end

end A270102.P5246223687504578724

/-! ## A270102.P13121195222529432899

`lt[A053832(A109350(n+1)), A053832(n)]`
-/

namespace A270102.P13121195222529432899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053832 (A109350 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053832 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A270102.P13121195222529432899

/-! ## A270102.P9156931111072667816

`lt[A087697(n+1), A190413(A028507(n))]`
-/

namespace A270102.P9156931111072667816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087697 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190413 (A028507 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A270102.P9156931111072667816

/-!
# A270103: Array read by antidiagonals: T(n, k) is the sum of the integer part of the n-th roots of natural numbers less than k.

The programs for A270103, there is no canonical definition to state claims against.
-/

/-! ## A270103.P8538989360335285988

`or(A035193(A030436(n)), A130302(n+1))`
-/

namespace A270103.P8538989360335285988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A035193 (A030436 n).toNat) (A130302 (n + 1))

end

end A270103.P8538989360335285988

/-! ## A270103.P3881316975425287071

`A235145(A022349(n))+A130302(n+1)`
-/

namespace A270103.P3881316975425287071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235145 (A022349 n).toNat + A130302 (n + 1)

end

end A270103.P3881316975425287071

/-! ## A270103.P15896098983401938125

`A249832(A360749(n))+A130302(n+1)`
-/

namespace A270103.P15896098983401938125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249832 (A360749 n).toNat + A130302 (n + 1)

end

end A270103.P15896098983401938125

/-! ## A270103.P11889952862905374498

`or(A010051(A036882(n)), A130302(n+1))`
-/

namespace A270103.P11889952862905374498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010051 (A036882 n).toNat) (A130302 (n + 1))

end

end A270103.P11889952862905374498

/-! ## A270103.P3427838302170697714

`or(A130302(n+1), A330986(A016933(n)))`
-/

namespace A270103.P3427838302170697714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A130302 (n + 1)) (A330986 (A016933 n).toNat)

end

end A270103.P3427838302170697714

/-!
# A270105: a(n) = Sum_{k=0..n} k*A000009(k).

The programs for A270105, there is no canonical definition to state claims against.
-/

/-! ## A270105.P15847805926659858153

`∑[A066189(n)]`
-/

namespace A270105.P15847805926659858153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270105.P15847805926659858153

/-! ## A270105.P6543616695868811097

`∑[n*A000009(n)]`
-/

namespace A270105.P6543616695868811097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270105.P6543616695868811097

/-! ## A270105.P9898565045978269791

`∑[abs(n*A081360(n))]`
-/

namespace A270105.P9898565045978269791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A081360 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270105.P9898565045978269791

/-! ## A270105.P5314343956744625099

`∑[n*∑[A087897(n)]]`
-/

namespace A270105.P5314343956744625099
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270105.P5314343956744625099

/-! ## A270105.P8786014623113863479

`∑[n*(A111133(n)+1)]`
-/

namespace A270105.P8786014623113863479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A111133 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270105.P8786014623113863479

/-! ## A270105.P7336148945457823177

`∑[n*(A052839(n)-1)]`
-/

namespace A270105.P7336148945457823177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A052839 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270105.P7336148945457823177

/-! ## A270105.P4338811845709303025

`∑[n/2*A087135(n)]`
-/

namespace A270105.P4338811845709303025
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A087135 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270105.P4338811845709303025

/-! ## A270105.P10392559119910255736

`∑[n*(A057428(n)+A052839(n))]`
-/

namespace A270105.P10392559119910255736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A057428 n + A052839 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270105.P10392559119910255736

/-! ## A270105.P7676742415276268879

`∑[n*lcm(A020985(n), A081360(n))]`
-/

namespace A270105.P7676742415276268879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Int.lcm (A020985 n) (A081360 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270105.P7676742415276268879

/-! ## A270105.P15862217277658079254

`∑[n*(A096765(n+1)+A096765(n))]`
-/

namespace A270105.P15862217277658079254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A096765 (n + 1) + A096765 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270105.P15862217277658079254

/-! ## A270105.P5682675236941513100

`∑[n*(A000041(n)-A047967(n))]`
-/

namespace A270105.P5682675236941513100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000041 n - A047967 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270105.P5682675236941513100

/-! ## A270105.P11284656445140838002

`∑[n*(∑[A002865(n)]-A047967(n))]`
-/

namespace A270105.P11284656445140838002
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j - A047967 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270105.P11284656445140838002

/-! ## A270105.P16211595555451454769

`∑[n*(A139582(n)/2-A047967(n))]`
-/

namespace A270105.P16211595555451454769
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((A139582 n : ℚ) / 2 - (A047967 n : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270105.P16211595555451454769

/-! ## A270105.P10894854668179128349

`∑[A066186(n)-n*A047967(n)]`
-/

namespace A270105.P10894854668179128349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 n - (n : ℤ) * A047967 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270105.P10894854668179128349

/-! ## A270105.P465003968732615551

`∑[n*A035457(2*n)]`
-/

namespace A270105.P465003968732615551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A035457 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270105.P465003968732615551

/-! ## A270105.P7979120247881815540

`∑[n*A172033(2*n)]`
-/

namespace A270105.P7979120247881815540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A172033 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270105.P7979120247881815540

/-! ## A270105.P2568183957222256607

`∑[n*sqrt(A304990(n))]`
-/

namespace A270105.P2568183957222256607
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * Real.sqrt (A304990 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270105.P2568183957222256607

/-! ## A270105.P1329731131698500971

`∑[n*(A067661(n)+A067659(n))]`
-/

namespace A270105.P1329731131698500971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A067661 n + A067659 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270105.P1329731131698500971

/-! ## A270105.P7230817376583578025

`∑[n*(A325833(n)+A325832(n)-A047967(n))]`
-/

namespace A270105.P7230817376583578025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A325833 n + A325832 n - A047967 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270105.P7230817376583578025

/-! ## A270105.P16158554577914110974

`∑[n*A264404(A002620(n+1))]`
-/

namespace A270105.P16158554577914110974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A264404 (A002620 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270105.P16158554577914110974

/-!
# A270106: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 84", based on the 5-celled von Neumann neighborhood.

The programs for A270106, the canonical program `A270106.P18066099386289680719` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270106 has offset 0).

The definition of A270106 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4825 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A270106.P125450339685265647

`∑[4/gcd(2, n)*a(floor(n/2))]` with `a(0)=1`
-/

namespace A270106.P125450339685265647
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  4 / (Nat.gcd 2 n : ℚ) * f1 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270106.P125450339685265647

namespace A270106

/-- `∑[4/gcd(2, n)*a(floor(n/2))]` -/
def P125450339685265647.Spec : Prop :=
  ∀ n, P125450339685265647.a n = (A270106 n : ℚ)

end A270106

/-! ## A270106.P8894214108042158938

`∑[2^A056792(2*n)]`
-/

namespace A270106.P8894214108042158938
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A056792 (2 * n) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270106.P8894214108042158938

namespace A270106

/-- `∑[2^A056792(2*n)]` -/
def P8894214108042158938.Spec : Prop :=
  ∀ n, P8894214108042158938.a n = (A270106 n : ℚ)

end A270106

/-! ## A270106.P10638130073202544536

`∑[2^A014701(2*n+1)]`
-/

namespace A270106.P10638130073202544536
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A014701 (2 * n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270106.P10638130073202544536

namespace A270106

/-- `∑[2^A014701(2*n+1)]` -/
def P10638130073202544536.Spec : Prop :=
  ∀ n, P10638130073202544536.a n = (A270106 n : ℚ)

end A270106

/-! ## A270106.P11316258560103073281

`∑[2^ceil(log2(n+1))*A001316(n)]`
-/

namespace A270106.P11316258560103073281
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ) * (A001316 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270106.P11316258560103073281

namespace A270106

/-- `∑[2^ceil(log2(n+1))*A001316(n)]` -/
def P11316258560103073281.Spec : Prop :=
  ∀ n, P11316258560103073281.a n = (A270106 n : ℚ)

end A270106

/-! ## A270106.P18066099386289680719

`∑[A000079(A056792(2*n))]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A270106

/-- `∑[A000079(A056792(2*n))]` -/
def P18066099386289680719.Spec : Prop :=
  ∀ n, P18066099386289680719.a n = A270106 n

theorem P18066099386289680719.correct : P18066099386289680719.Spec := by
  intro n
  simp only [A270106]

end A270106

/-! ## A270106.P8579192893343541117

`∑[A001316(n)*A062383(n)]`
-/

namespace A270106.P8579192893343541117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n * A062383 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270106.P8579192893343541117

namespace A270106

/-- `∑[A001316(n)*A062383(n)]` -/
def P8579192893343541117.Spec : Prop :=
  ∀ n, P8579192893343541117.a n = A270106 n

end A270106

/-! ## A270106.P15450696774956028303

`∑[A080100(n)*A102376(n)]`
-/

namespace A270106.P15450696774956028303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080100 n * A102376 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270106.P15450696774956028303

namespace A270106

/-- `∑[A080100(n)*A102376(n)]` -/
def P15450696774956028303.Spec : Prop :=
  ∀ n, P15450696774956028303.a n = A270106 n

end A270106

/-! ## A270106.P12459225042523659759

`∑[A001316(n)²*A080100(n)]`
-/

namespace A270106.P12459225042523659759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n ^ 2 * A080100 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270106.P12459225042523659759

namespace A270106

/-- `∑[A001316(n)²*A080100(n)]` -/
def P12459225042523659759.Spec : Prop :=
  ∀ n, P12459225042523659759.a n = A270106 n

end A270106

/-! ## A270106.P5559696565880879186

`∑[A000079(A014701(2*n+1))]`
-/

namespace A270106.P5559696565880879186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A014701 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270106.P5559696565880879186

namespace A270106

/-- `∑[A000079(A014701(2*n+1))]` -/
def P5559696565880879186.Spec : Prop :=
  ∀ n, P5559696565880879186.a n = A270106 n

end A270106

/-! ## A270106.P18009337686711357559

`∑[A011782(A056792(2*n+1))]`
-/

namespace A270106.P18009337686711357559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A056792 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270106.P18009337686711357559

namespace A270106

/-- `∑[A011782(A056792(2*n+1))]` -/
def P18009337686711357559.Spec : Prop :=
  ∀ n, P18009337686711357559.a n = A270106 n

end A270106

/-! ## A270106.P5788995577373121272

`∑[A062383(n)*A071044(2*n)]`
-/

namespace A270106.P5788995577373121272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 n * A071044 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270106.P5788995577373121272

namespace A270106

/-- `∑[A062383(n)*A071044(2*n)]` -/
def P5788995577373121272.Spec : Prop :=
  ∀ n, P5788995577373121272.a n = A270106 n

end A270106

/-! ## A270106.P6422979789453940689

`∑[A011782(A014701(2*n+1)+1)]`
-/

namespace A270106.P6422979789453940689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A014701 (2 * n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270106.P6422979789453940689

namespace A270106

/-- `∑[A011782(A014701(2*n+1)+1)]` -/
def P6422979789453940689.Spec : Prop :=
  ∀ n, P6422979789453940689.a n = A270106 n

end A270106

/-! ## A270106.P17109116416661775043

`∑[(A169699(n)+A071051(n))/2]`
-/

namespace A270106.P17109116416661775043
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169699 n + A071051 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270106.P17109116416661775043

namespace A270106

/-- `∑[(A169699(n)+A071051(n))/2]` -/
def P17109116416661775043.Spec : Prop :=
  ∀ n, P17109116416661775043.a n = (A270106 n : ℚ)

end A270106

/-! ## A270106.P11022505289422568699

`∑[A189007(n+1)]`
-/

namespace A270106.P11022505289422568699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189007 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270106.P11022505289422568699

namespace A270106

/-- `∑[A189007(n+1)]` -/
def P11022505289422568699.Spec : Prop :=
  ∀ n, P11022505289422568699.a n = A270106 n

end A270106

/-! ## A270106.P10723614069938543197

`∑[A011782(A014701(A016813(n)))]`
-/

namespace A270106.P10723614069938543197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A014701 (A016813 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270106.P10723614069938543197

namespace A270106

/-- `∑[A011782(A014701(A016813(n)))]` -/
def P10723614069938543197.Spec : Prop :=
  ∀ n, P10723614069938543197.a n = A270106 n

end A270106

/-! ## A270106.P14768457165850806695

`∑[A011782(A014701(A016825(n)))]`
-/

namespace A270106.P14768457165850806695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A014701 (A016825 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270106.P14768457165850806695

namespace A270106

/-- `∑[A011782(A014701(A016825(n)))]` -/
def P14768457165850806695.Spec : Prop :=
  ∀ n, P14768457165850806695.a n = A270106 n

end A270106

/-! ## A270106.P13302044179985259203

`∑[A080100(A010078(n+1))²*A080100(n)]`
-/

namespace A270106.P13302044179985259203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080100 (A010078 (n + 1)).toNat ^ 2 * A080100 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270106.P13302044179985259203

namespace A270106

/-- `∑[A080100(A010078(n+1))²*A080100(n)]` -/
def P13302044179985259203.Spec : Prop :=
  ∀ n, P13302044179985259203.a n = A270106 n

end A270106

/-! ## A270106.P7844653034627582748

`∑[A011782(A014701(A022144(n)))]`
-/

namespace A270106.P7844653034627582748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A014701 (A022144 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270106.P7844653034627582748

namespace A270106

/-- `∑[A011782(A014701(A022144(n)))]` -/
def P7844653034627582748.Spec : Prop :=
  ∀ n, P7844653034627582748.a n = A270106 n

end A270106

/-! ## A270106.P5111869747863284839

`∑[A000010(A269715(2*n))]`
-/

namespace A270106.P5111869747863284839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A269715 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270106.P5111869747863284839

namespace A270106

/-- `∑[A000010(A269715(2*n))]` -/
def P5111869747863284839.Spec : Prop :=
  ∀ n, P5111869747863284839.a n = A270106 n

end A270106

/-! ## A270106.P7087982423379931484

`∑[A000010(A270125(2*n))]`
-/

namespace A270106.P7087982423379931484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A270125 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270106.P7087982423379931484

namespace A270106

/-- `∑[A000010(A270125(2*n))]` -/
def P7087982423379931484.Spec : Prop :=
  ∀ n, P7087982423379931484.a n = A270106 n

end A270106

/-!
# A270107: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 84", based on the 5-celled von Neumann neighborhood.

The programs for A270107, the canonical program `A270107.P28231735696589533` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270107 has offset 0).

The definition of A270107 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4634 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A270107.P11543673895696520728

`Δ[4/gcd(2, n)*a(floor(n/2))]` with `a(0)=1`
-/

namespace A270107.P11543673895696520728
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  4 / (Nat.gcd 2 n : ℚ) * f1 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270107.P11543673895696520728

namespace A270107

/-- `Δ[4/gcd(2, n)*a(floor(n/2))]` -/
def P11543673895696520728.Spec : Prop :=
  ∀ n, P11543673895696520728.a n = (A270107 n : ℚ)

end A270107

/-! ## A270107.P8365175469341338052

`Δ[2^A056792(2*n)]`
-/

namespace A270107.P8365175469341338052
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A056792 (2 * n) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270107.P8365175469341338052

namespace A270107

/-- `Δ[2^A056792(2*n)]` -/
def P8365175469341338052.Spec : Prop :=
  ∀ n, P8365175469341338052.a n = (A270107 n : ℚ)

end A270107

/-! ## A270107.P4970560619503218747

`Δ[2^A014701(2*n+1)]`
-/

namespace A270107.P4970560619503218747
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A014701 (2 * n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270107.P4970560619503218747

namespace A270107

/-- `Δ[2^A014701(2*n+1)]` -/
def P4970560619503218747.Spec : Prop :=
  ∀ n, P4970560619503218747.a n = (A270107 n : ℚ)

end A270107

/-! ## A270107.P28231735696589533

`Δ[A000079(A056792(2*n))]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A270107

/-- `Δ[A000079(A056792(2*n))]` -/
def P28231735696589533.Spec : Prop :=
  ∀ n, P28231735696589533.a n = A270107 n

theorem P28231735696589533.correct : P28231735696589533.Spec := by
  intro n
  simp only [A270107]

end A270107

/-! ## A270107.P14594064795825817358

`Δ[A001316(n)*A062383(n)]`
-/

namespace A270107.P14594064795825817358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n * A062383 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270107.P14594064795825817358

namespace A270107

/-- `Δ[A001316(n)*A062383(n)]` -/
def P14594064795825817358.Spec : Prop :=
  ∀ n, P14594064795825817358.a n = A270107 n

end A270107

/-! ## A270107.P5814003907897908824

`Δ[A080100(n)*A102376(n)]`
-/

namespace A270107.P5814003907897908824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080100 n * A102376 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270107.P5814003907897908824

namespace A270107

/-- `Δ[A080100(n)*A102376(n)]` -/
def P5814003907897908824.Spec : Prop :=
  ∀ n, P5814003907897908824.a n = A270107 n

end A270107

/-! ## A270107.P1043122985959947343

`Δ[A000051(A014701(Δ[n²]))]`
-/

namespace A270107.P1043122985959947343
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (A014701 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270107.P1043122985959947343

namespace A270107

/-- `Δ[A000051(A014701(Δ[n²]))]` -/
def P1043122985959947343.Spec : Prop :=
  ∀ n, P1043122985959947343.a n = A270107 n

end A270107

/-! ## A270107.P2203985353199747713

`Δ[A011782(A056792(Δ[n²]))]`
-/

namespace A270107.P2203985353199747713
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A056792 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270107.P2203985353199747713

namespace A270107

/-- `Δ[A011782(A056792(Δ[n²]))]` -/
def P2203985353199747713.Spec : Prop :=
  ∀ n, P2203985353199747713.a n = A270107 n

end A270107

/-! ## A270107.P7652070389034777663

`Δ[(A003817(n)+1)*A001316(n)]`
-/

namespace A270107.P7652070389034777663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003817 n + 1) * A001316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270107.P7652070389034777663

namespace A270107

/-- `Δ[(A003817(n)+1)*A001316(n)]` -/
def P7652070389034777663.Spec : Prop :=
  ∀ n, P7652070389034777663.a n = A270107 n

end A270107

/-! ## A270107.P18236284927088817242

`Δ[A062383(n)*A071044(2*n)]`
-/

namespace A270107.P18236284927088817242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 n * A071044 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270107.P18236284927088817242

namespace A270107

/-- `Δ[A062383(n)*A071044(2*n)]` -/
def P18236284927088817242.Spec : Prop :=
  ∀ n, P18236284927088817242.a n = A270107 n

end A270107

/-! ## A270107.P8243783359044131968

`Δ[A011782(A014701(2*n+1)+1)]`
-/

namespace A270107.P8243783359044131968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A014701 (2 * n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270107.P8243783359044131968

namespace A270107

/-- `Δ[A011782(A014701(2*n+1)+1)]` -/
def P8243783359044131968.Spec : Prop :=
  ∀ n, P8243783359044131968.a n = A270107 n

end A270107

/-! ## A270107.P6608522977144394670

`Δ[A001316(n)*A001316(A003817(n))]`
-/

namespace A270107.P6608522977144394670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n * A001316 (A003817 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270107.P6608522977144394670

namespace A270107

/-- `Δ[A001316(n)*A001316(A003817(n))]` -/
def P6608522977144394670.Spec : Prop :=
  ∀ n, P6608522977144394670.a n = A270107 n

end A270107

/-! ## A270107.P10095848107983106452

`Δ[A189007(n+1)]`
-/

namespace A270107.P10095848107983106452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189007 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270107.P10095848107983106452

namespace A270107

/-- `Δ[A189007(n+1)]` -/
def P10095848107983106452.Spec : Prop :=
  ∀ n, P10095848107983106452.a n = A270107 n

end A270107

/-! ## A270107.P7436987340028264073

`A189007(n+2)-A189007(n+1)`
-/

namespace A270107.P7436987340028264073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189007 (n + 2) - A189007 (n + 1)

end

end A270107.P7436987340028264073

namespace A270107

/-- `A189007(n+2)-A189007(n+1)` -/
def P7436987340028264073.Spec : Prop :=
  ∀ n, P7436987340028264073.a n = A270107 n

end A270107

/-! ## A270107.P14956847559259814556

`Δ[A011782(A014701(A016813(n)))]`
-/

namespace A270107.P14956847559259814556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A014701 (A016813 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270107.P14956847559259814556

namespace A270107

/-- `Δ[A011782(A014701(A016813(n)))]` -/
def P14956847559259814556.Spec : Prop :=
  ∀ n, P14956847559259814556.a n = A270107 n

end A270107

/-! ## A270107.P5099250199540428077

`Δ[A011782(A014701(A016825(n)))]`
-/

namespace A270107.P5099250199540428077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A014701 (A016825 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270107.P5099250199540428077

namespace A270107

/-- `Δ[A011782(A014701(A016825(n)))]` -/
def P5099250199540428077.Spec : Prop :=
  ∀ n, P5099250199540428077.a n = A270107 n

end A270107

/-! ## A270107.P12153438574221828052

`Δ[A011782(A014701(A022144(n)))]`
-/

namespace A270107.P12153438574221828052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A014701 (A022144 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270107.P12153438574221828052

namespace A270107

/-- `Δ[A011782(A014701(A022144(n)))]` -/
def P12153438574221828052.Spec : Prop :=
  ∀ n, P12153438574221828052.a n = A270107 n

end A270107

/-! ## A270107.P15667082019518024720

`Δ[A000010(A269715(2*n))]`
-/

namespace A270107.P15667082019518024720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A269715 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270107.P15667082019518024720

namespace A270107

/-- `Δ[A000010(A269715(2*n))]` -/
def P15667082019518024720.Spec : Prop :=
  ∀ n, P15667082019518024720.a n = A270107 n

end A270107

/-! ## A270107.P6142675030162435170

`Δ[A000010(A270125(2*n))]`
-/

namespace A270107.P6142675030162435170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A270125 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270107.P6142675030162435170

namespace A270107

/-- `Δ[A000010(A270125(2*n))]` -/
def P6142675030162435170.Spec : Prop :=
  ∀ n, P6142675030162435170.a n = A270107 n

end A270107

/-! ## A270107.P1447157494461845796

`Δ[A022998(A000079(A056792(n)))]`
-/

namespace A270107.P1447157494461845796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A000079 (A056792 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270107.P1447157494461845796

namespace A270107

/-- `Δ[A022998(A000079(A056792(n)))]` -/
def P1447157494461845796.Spec : Prop :=
  ∀ n, P1447157494461845796.a n = A270107 n

end A270107

/-!
# A270109: a(n) = n^3 + (n+1)*(n+2).

The programs for A270109, the canonical program `A270109.P17257265850259097044` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270109 has offset 0).

The definition of A270109 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3+(n+1)*(n+2)` (program `A270109.P17257265850259097044`, by `A270109.P17257265850259097044.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A270109.P17257265850259097044

`n^3+(n+1)*(n+2)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A270109

/-- `n^3+(n+1)*(n+2)` -/
def P17257265850259097044.Spec : Prop :=
  ∀ n, (P17257265850259097044.a n : ℤ) = A270109 n

theorem P17257265850259097044.correct : P17257265850259097044.Spec := by
  intro n
  simp only [A270109]

end A270109

/-! ## A270109.P7249437094468295825

`∑[∑[record[lcm(2, n+1)+n]]]`
-/

namespace A270109.P7249437094468295825
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (n + 1) + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270109.P7249437094468295825

namespace A270109

/-- `∑[∑[record[lcm(2, n+1)+n]]]` -/
def P7249437094468295825.Spec : Prop :=
  ∀ n, (P7249437094468295825.a n : ℤ) = A270109 n

end A270109

/-! ## A270109.P7404070550064461799

`∑[∑[a(n-1)+6]]` with `a(0)=2, a(1)=3, a(2)=8`
-/

namespace A270109.P7404070550064461799
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 8] fun n f2 =>
  f2 (n - 1) + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270109.P7404070550064461799

namespace A270109

/-- `∑[∑[a(n-1)+6]]` -/
def P7404070550064461799.Spec : Prop :=
  ∀ n, (P7404070550064461799.a n : ℤ) = A270109 n

end A270109

/-! ## A270109.P5743295057449280212

`floor(n/Δ[atan(n)]+2*(n+1))`
-/

namespace A270109.P5743295057449280212
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / (f1 (n + 1) - f1 n) + (2 * (n + 1) : ℝ)⌋

end

end A270109.P5743295057449280212

namespace A270109

/-- `floor(n/Δ[atan(n)]+2*(n+1))` -/
def P5743295057449280212.Spec : Prop :=
  ∀ n, P5743295057449280212.a n = A270109 n

end A270109

/-! ## A270109.P13604007920521773701

`floor(n^3-∑[a(n-1)-2])` with `a(0)=-2`

`floor` is left out, it is the identity on integers.
-/

namespace A270109.P13604007920521773701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-2] fun n f1 =>
  f1 (n - 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270109.P13604007920521773701

namespace A270109

/-- `floor(n^3-∑[a(n-1)-2])` -/
def P13604007920521773701.Spec : Prop :=
  ∀ n, P13604007920521773701.a n = A270109 n

end A270109

/-! ## A270109.P9324050157327081263

`∑[A005918(n)+1-n]`
-/

namespace A270109.P9324050157327081263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005918 n + (1 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270109.P9324050157327081263

namespace A270109

/-- `∑[A005918(n)+1-n]` -/
def P9324050157327081263.Spec : Prop :=
  ∀ n, P9324050157327081263.a n = A270109 n

end A270109

/-! ## A270109.P12782303552419636199

`abs(A053698(n)+Δ[n²])`
-/

namespace A270109.P12782303552419636199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A053698 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))|

end

end A270109.P12782303552419636199

namespace A270109

/-- `abs(A053698(n)+Δ[n²])` -/
def P12782303552419636199.Spec : Prop :=
  ∀ n, P12782303552419636199.a n = A270109 n

end A270109

/-! ## A270109.P14497141602391330331

`abs(∑[A056106(n)+2]-1)`
-/

namespace A270109.P14497141602391330331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056106 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - 1|

end

end A270109.P14497141602391330331

namespace A270109

/-- `abs(∑[A056106(n)+2]-1)` -/
def P14497141602391330331.Spec : Prop :=
  ∀ n, P14497141602391330331.a n = A270109 n

end A270109

/-! ## A270109.P7901094565159265900

`∑[A077588(n)+2*n+1]`
-/

namespace A270109.P7901094565159265900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077588 n + (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270109.P7901094565159265900

namespace A270109

/-- `∑[A077588(n)+2*n+1]` -/
def P7901094565159265900.Spec : Prop :=
  ∀ n, P7901094565159265900.a n = A270109 n

end A270109

/-! ## A270109.P16321149954694868051

`abs(∑[A056105(n)+2+n]-1)`
-/

namespace A270109.P16321149954694868051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056105 n + 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - 1|

end

end A270109.P16321149954694868051

namespace A270109

/-- `abs(∑[A056105(n)+2+n]-1)` -/
def P16321149954694868051.Spec : Prop :=
  ∀ n, P16321149954694868051.a n = A270109 n

end A270109

/-! ## A270109.P14729770793652088669

`abs(1-(A000290(n)+3)*(n+1))`
-/

namespace A270109.P14729770793652088669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (A000290 n + 3) * (n + 1 : ℤ)|

end

end A270109.P14729770793652088669

namespace A270109

/-- `abs(1-(A000290(n)+3)*(n+1))` -/
def P14729770793652088669.Spec : Prop :=
  ∀ n, P14729770793652088669.a n = A270109 n

end A270109

/-! ## A270109.P6530714287698529123

`∑[A005893(n)+A002061(n)]`
-/

namespace A270109.P6530714287698529123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 n + A002061 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270109.P6530714287698529123

namespace A270109

/-- `∑[A005893(n)+A002061(n)]` -/
def P6530714287698529123.Spec : Prop :=
  ∀ n, P6530714287698529123.a n = A270109 n

end A270109

/-! ## A270109.P15641969542453576624

`A179824(n+2)%A166781(n+1)`
-/

namespace A270109.P15641969542453576624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A179824 (n + 2)) (A166781 (n + 1))

end

end A270109.P15641969542453576624

namespace A270109

/-- `A179824(n+2)%A166781(n+1)` -/
def P15641969542453576624.Spec : Prop :=
  ∀ n, P15641969542453576624.a n = A270109 n

end A270109

/-! ## A270109.P2982455193672735278

`Δ[A228394(n+1)+n²]`
-/

namespace A270109.P2982455193672735278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228394 (n + 1) + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270109.P2982455193672735278

namespace A270109

/-- `Δ[A228394(n+1)+n²]` -/
def P2982455193672735278.Spec : Prop :=
  ∀ n, P2982455193672735278.a n = A270109 n

end A270109

/-! ## A270109.P6471197284833906060

`Δ[A000124(n)²-A005900(n)]`
-/

namespace A270109.P6471197284833906060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n ^ 2 - A005900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270109.P6471197284833906060

namespace A270109

/-- `Δ[A000124(n)²-A005900(n)]` -/
def P6471197284833906060.Spec : Prop :=
  ∀ n, P6471197284833906060.a n = A270109 n

end A270109

/-! ## A270109.P12729404263419213737

`∑[∑[A296515(2*n)+2]]`
-/

namespace A270109.P12729404263419213737
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296515 (2 * n) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270109.P12729404263419213737

namespace A270109

/-- `∑[∑[A296515(2*n)+2]]` -/
def P12729404263419213737.Spec : Prop :=
  ∀ n, P12729404263419213737.a n = A270109 n

end A270109

/-! ## A270109.P12157472157290810593

`∑[A267529(2*n)+1]`
-/

namespace A270109.P12157472157290810593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267529 (2 * n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270109.P12157472157290810593

namespace A270109

/-- `∑[A267529(2*n)+1]` -/
def P12157472157290810593.Spec : Prop :=
  ∀ n, P12157472157290810593.a n = A270109 n

end A270109

/-! ## A270109.P1038140269748315082

`∑[A089071(2*n+1)+n²+1]`
-/

namespace A270109.P1038140269748315082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089071 (2 * n + 1) + (n ^ 2 : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270109.P1038140269748315082

namespace A270109

/-- `∑[A089071(2*n+1)+n²+1]` -/
def P1038140269748315082.Spec : Prop :=
  ∀ n, P1038140269748315082.a n = A270109 n

end A270109

/-!
# A270110: 

The programs for A270110, there is no canonical definition to state claims against.
-/

/-! ## A270110.P224235980151795104

`A270118((n+1)²+n²)`
-/

namespace A270110.P224235980151795104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270118 ((n + 1) ^ 2 + n ^ 2)

end

end A270110.P224235980151795104

/-!
# A270111: Number of n X 1 0..7 arrays with some element plus some horizontally or vertically adjacent neighbor totalling seven exactly once.

The programs for A270111, the canonical program `A270111.P12407096831569159225` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270111 has offset 1).

The definition of A270111 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A270111.P12407096831569159225

`8*7^(n-1)*n`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A270111

/-- `8*7^(n-1)*n` -/
def P12407096831569159225.Spec : Prop :=
  ∀ n, P12407096831569159225.a n = (A270111 (n + 1) : ℚ)

end A270111

/-! ## A270111.P14826098230552749990

`14*a(n-1)-49*a(n-2)` with `a(0)=0, a(1)=8`
-/

namespace A270111.P14826098230552749990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 8] fun n a =>
  14 * a (n - 1) - 49 * a (n - 2)

end

end A270111.P14826098230552749990

namespace A270111

/-- `14*a(n-1)-49*a(n-2)` -/
def P14826098230552749990.Spec : Prop :=
  ∀ n, P14826098230552749990.a n = A270111 (n + 1)

end A270111

/-! ## A270111.P6327791550572463218

`lcm(2, n*A003950(n))`
-/

namespace A270111.P6327791550572463218
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 ((n : ℤ) * A003950 n)

end

end A270111.P6327791550572463218

namespace A270111

/-- `lcm(2, n*A003950(n))` -/
def P6327791550572463218.Spec : Prop :=
  ∀ n, (P6327791550572463218.a n : ℤ) = A270111 (n + 1)

end A270111

/-! ## A270111.P8904823112586699213

`floor(n*A223564(n+1)/8)`
-/

namespace A270111.P8904823112586699213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) * ((A223564 (n + 1) : ℚ) / 8)⌋

end

end A270111.P8904823112586699213

namespace A270111

/-- `floor(n*A223564(n+1)/8)` -/
def P8904823112586699213.Spec : Prop :=
  ∀ n, P8904823112586699213.a n = A270111 (n + 1)

end A270111

/-! ## A270111.P9258543601714047389

`abs(A001489(n)*A003950(n))`
-/

namespace A270111.P9258543601714047389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001489 n * A003950 n|

end

end A270111.P9258543601714047389

namespace A270111

/-- `abs(A001489(n)*A003950(n))` -/
def P9258543601714047389.Spec : Prop :=
  ∀ n, P9258543601714047389.a n = A270111 (n + 1)

end A270111

/-! ## A270111.P8309779239849964938

`A003950(n)*A005843(n)/2`
-/

namespace A270111.P8309779239849964938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003950 n * A005843 n : ℚ) / 2

end

end A270111.P8309779239849964938

namespace A270111

/-- `A003950(n)*A005843(n)/2` -/
def P8309779239849964938.Spec : Prop :=
  ∀ n, P8309779239849964938.a n = (A270111 (n + 1) : ℚ)

end A270111

/-! ## A270111.P2156898085601286178

`(n*A003950(n))^A007318(C(2, n))`
-/

namespace A270111.P2156898085601286178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A003950 n : ℚ) ^ (A007318 (Nat.choose 2 n) : ℤ)

end

end A270111.P2156898085601286178

namespace A270111

/-- `(n*A003950(n))^A007318(C(2, n))` -/
def P2156898085601286178.Spec : Prop :=
  ∀ n, P2156898085601286178.a n = (A270111 (n + 1) : ℚ)

end A270111

/-! ## A270111.P10172170551251467248

`8*A036293(n)/7`
-/

namespace A270111.P10172170551251467248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 * A036293 n : ℚ) / 7

end

end A270111.P10172170551251467248

namespace A270111

/-- `8*A036293(n)/7` -/
def P10172170551251467248.Spec : Prop :=
  ∀ n, P10172170551251467248.a n = (A270111 (n + 1) : ℚ)

end A270111

/-! ## A270111.P3775530164561571795

`A005843(n)*A223564(n+1)/16`
-/

namespace A270111.P3775530164561571795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 n * A223564 (n + 1) : ℚ) / 16

end

end A270111.P3775530164561571795

namespace A270111

/-- `A005843(n)*A223564(n+1)/16` -/
def P3775530164561571795.Spec : Prop :=
  ∀ n, P3775530164561571795.a n = (A270111 (n + 1) : ℚ)

end A270111

/-! ## A270111.P7650119641092384584

`n²*A003950(n)/A028310(n)`
-/

namespace A270111.P7650119641092384584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) * A003950 n : ℚ) / (A028310 n : ℚ)

end

end A270111.P7650119641092384584

namespace A270111

/-- `n²*A003950(n)/A028310(n)` -/
def P7650119641092384584.Spec : Prop :=
  ∀ n, P7650119641092384584.a n = (A270111 (n + 1) : ℚ)

end A270111

/-!
# A270112: Number of n X 2 0..7 arrays with some element plus some horizontally or vertically adjacent neighbor totalling seven exactly once.

The programs for A270112, there is no canonical definition to state claims against.
-/

/-! ## A270112.P16881408881323604077

`A270118(∑[n+1]+2)`
-/

namespace A270112.P16881408881323604077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270118 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A270112.P16881408881323604077

/-! ## A270112.P13543736442249131994

`A270118(A022856(n+5))%A066395(n+3)`
-/

namespace A270112.P13543736442249131994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A270118 (A022856 (n + 5)).toNat) (A066395 (n + 3))

end

end A270112.P13543736442249131994

/-! ## A270112.P17399331882028898844

`record[A270118(A270103(n+1)+2)]`
-/

namespace A270112.P17399331882028898844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270118 (A270103 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270112.P17399331882028898844

/-!
# A270113: Number of n X 3 0..7 arrays with some element plus some horizontally or vertically adjacent neighbor totaling seven exactly once.

The programs for A270113, there is no canonical definition to state claims against.
-/

/-! ## A270113.P3895051566273817800

`A270118(∑[n+2]+4)`
-/

namespace A270113.P3895051566273817800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270118 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A270113.P3895051566273817800

/-!
# A270114: 

The programs for A270114, there is no canonical definition to state claims against.
-/

/-! ## A270114.P15154077354805668753

`A270118(A055999(n)+10)`
-/

namespace A270114.P15154077354805668753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270118 (A055999 n + 10).toNat

end

end A270114.P15154077354805668753

/-! ## A270114.P11118794428516675873

`A270118(A167614(n+2)+1)`
-/

namespace A270114.P11118794428516675873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270118 (A167614 (n + 2) + 1).toNat

end

end A270114.P11118794428516675873

/-! ## A270114.P14420139473294906194

`A270118(A027379(n+2))`
-/

namespace A270114.P14420139473294906194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270118 (A027379 (n + 2)).toNat

end

end A270114.P14420139473294906194

/-!
# A270116: 

The programs for A270116, there is no canonical definition to state claims against.
-/

/-! ## A270116.P6686709988034528804

`A270118(A052905(n+3))`
-/

namespace A270116.P6686709988034528804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270118 (A052905 (n + 3)).toNat

end

end A270116.P6686709988034528804

/-!
# A270118: T(n,k)=Number of nXk 0..7 arrays with some element plus some horizontally or vertically adjacent neighbor totalling seven exactly once.

The programs for A270118, there is no canonical definition to state claims against.
-/

/-! ## A270118.P12331656616936910729

`8*A351593(A065733(n))`
-/

namespace A270118.P12331656616936910729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A351593 (A065733 n).toNat

end

end A270118.P12331656616936910729

/-!
# A270120: Number of k with k^n=1 (mod n) and k^k=k (mod n); related to some groups of order n.

The programs for A270120, there is no canonical definition to state claims against.
-/

/-! ## A270120.P17770701949728579735

`round(A225643(4*n)/A109395(n+1))`
-/

namespace A270120.P17770701949728579735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A225643 (4 * n) : ℚ) / (A109395 (n + 1) : ℚ))

end

end A270120.P17770701949728579735

/-! ## A270120.P4240504226641639837

`gcd(A151795(n), A330960(A156552(n+1)))`
-/

namespace A270120.P4240504226641639837
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151795 n) (A330960 (A156552 (n + 1)).toNat)

end

end A270120.P4240504226641639837

/-! ## A270120.P3793266728278723604

`A330960(A156552(n+1))%Δ[A081999(n)]`
-/

namespace A270120.P3793266728278723604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A330960 (A156552 (n + 1)).toNat) (f1 (n + 1) - f1 n)

end

end A270120.P3793266728278723604

/-! ## A270120.P12457219606959707380

`A330960(A156552(n+1)/A354987(n+1))`
-/

namespace A270120.P12457219606959707380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330960 (SequenceMachineLib.roundAway ((A156552 (n + 1) : ℚ) / (A354987 (n + 1) : ℚ))).toNat

end

end A270120.P12457219606959707380

/-! ## A270120.P5748493118312939019

`A330960(A156552(n+1)-2*A151795(n))`
-/

namespace A270120.P5748493118312939019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330960 (A156552 (n + 1) - 2 * A151795 n).toNat

end

end A270120.P5748493118312939019

/-!
# A270122: Indices of prime numbers of the form x^2 + x + x*y + y + y^2 where x and y are integers.

The programs for A270122, there is no canonical definition to state claims against.
-/

/-! ## A270122.P340646632053615711

`lt[0, A005882(A000040(n+1))]+1`
-/

namespace A270122.P340646632053615711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005882 (A000040 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A270122.P340646632053615711

/-! ## A270122.P1768773960277523459

`lt[1, A005882(A008578(n+2))]+1`
-/

namespace A270122.P1768773960277523459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005882 (A008578 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A270122.P1768773960277523459

/-! ## A270122.P6721352287392604001

`A000720(p?[A006369(A003136(n+1))])`
-/

namespace A270122.P6721352287392604001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 (A003136 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A270122.P6721352287392604001

/-! ## A270122.P5483985740643649396

`A003963(p?[A006369(A003136(n+1))])`
-/

namespace A270122.P5483985740643649396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 (A003136 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A270122.P5483985740643649396

/-! ## A270122.P15684564398774447945

`A049084(p?[A006369(A003136(n+1))])`
-/

namespace A270122.P15684564398774447945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 (A003136 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A270122.P15684564398774447945

/-! ## A270122.P12244973355899637628

`A066328(p?[A006369(A003136(n+1))])`
-/

namespace A270122.P12244973355899637628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 (A003136 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A270122.P12244973355899637628

/-! ## A270122.P7383350987221049047

`A000720(p?[A004773(A097503(n+1))])`
-/

namespace A270122.P7383350987221049047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (A097503 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A270122.P7383350987221049047

/-! ## A270122.P16189424527840043756

`A058933(p?[A008611(A202822(n+1))])`
-/

namespace A270122.P16189424527840043756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A202822 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A270122.P16189424527840043756

/-! ## A270122.P7709254828388519238

`A061395(p?[A008611(A202822(n+1))])`
-/

namespace A270122.P7709254828388519238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A202822 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A270122.P7709254828388519238

/-! ## A270122.P14607938152702958942

`A344616(p?[A004773(A097503(n+1))])`
-/

namespace A270122.P14607938152702958942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (A097503 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A270122.P14607938152702958942

/-!
# A270123: Primes p such that p is equivalent to 3 modulo 4, p is neither 11 nor 23, and p is not a generalized repunit prime (i.e., p cannot be written as (q^t-1)/(q-1) for any prime-power q).

The programs for A270123, there is no canonical definition to state claims against.
-/

/-! ## A270123.P3817300577039213833

`A002145(lt[A286000(3*n+5), A329430(n)])`
-/

namespace A270123.P3817300577039213833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286000 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329430 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A270123.P3817300577039213833

/-!
# A270125: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 86", based on the 5-celled von Neumann neighborhood.

The programs for A270125, the canonical program `A270125.P6127676006264779078` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270125 has offset 0).

The definition of A270125 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4382 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A270125.P7990873599829092121

`A270128(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A270125.P7990873599829092121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270128 (n - 1) + a (n - 1)

end

end A270125.P7990873599829092121

namespace A270125

/-- `A270128(n-1)+a(n-1)` -/
def P7990873599829092121.Spec : Prop :=
  ∀ n, P7990873599829092121.a n = A270125 n

end A270125

/-! ## A270125.P4709511939723638882

`Δ[A270127(n)]-A270128(n)`
-/

namespace A270125.P4709511939723638882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270127 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A270128 n

end

end A270125.P4709511939723638882

namespace A270125

/-- `Δ[A270127(n)]-A270128(n)` -/
def P4709511939723638882.Spec : Prop :=
  ∀ n, P4709511939723638882.a n = A270125 n

end A270125

/-! ## A270125.P6127676006264779078

`or(A189007(or(1, n)), A189007(n+1))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A270125

/-- `or(A189007(or(1, n)), A189007(n+1))` -/
def P6127676006264779078.Spec : Prop :=
  ∀ n, P6127676006264779078.a n = A270125 n

theorem P6127676006264779078.correct : P6127676006264779078.Spec := by
  intro n
  simp only [A270125]

end A270125

/-! ## A270125.P5989673593227204564

`or(A189007(n+1), A189007(A109613(n)))`
-/

namespace A270125.P5989673593227204564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A189007 (n + 1)) (A189007 (A109613 n).toNat)

end

end A270125.P5989673593227204564

namespace A270125

/-- `or(A189007(n+1), A189007(A109613(n)))` -/
def P5989673593227204564.Spec : Prop :=
  ∀ n, P5989673593227204564.a n = A270125 n

end A270125

/-! ## A270125.P9505969143829686531

`A159075(n)+A062383(n)*A071044(n)`
-/

namespace A270125.P9505969143829686531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 n + A062383 n * A071044 n

end

end A270125.P9505969143829686531

namespace A270125

/-- `A159075(n)+A062383(n)*A071044(n)` -/
def P9505969143829686531.Spec : Prop :=
  ∀ n, P9505969143829686531.a n = A270125 n

end A270125

/-! ## A270125.P9631904831731146434

`A270127(n+1)-(A270128(n)+A270127(n))`
-/

namespace A270125.P9631904831731146434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270127 (n + 1) - (A270128 n + A270127 n)

end

end A270125.P9631904831731146434

namespace A270125

/-- `A270127(n+1)-(A270128(n)+A270127(n))` -/
def P9631904831731146434.Spec : Prop :=
  ∀ n, P9631904831731146434.a n = A270125 n

end A270125

/-! ## A270125.P17266626517597633270

`A062383(n)*A071044(n)-and(1, A007457(n+1))`
-/

namespace A270125.P17266626517597633270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 n * A071044 n - Int.land 1 (A007457 (n + 1))

end

end A270125.P17266626517597633270

namespace A270125

/-- `A062383(n)*A071044(n)-and(1, A007457(n+1))` -/
def P17266626517597633270.Spec : Prop :=
  ∀ n, P17266626517597633270.a n = A270125 n

end A270125

/-!
# A270126: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 86", based on the 5-celled von Neumann neighborhood.

The programs for A270126, the canonical program `A270126.P8526550611280219074` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270126 has offset 0).

The definition of A270126 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A270126.P3152442343822497273

`ogf((1+x+4x^2)/(1-4x))`
-/

namespace A270126.P3152442343822497273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 4] [1, -4] n

end

end A270126.P3152442343822497273

namespace A270126

/-- `ogf((1+x+4x^2)/(1-4x))` -/
def P3152442343822497273.Spec : Prop :=
  ∀ n, P3152442343822497273.a n = A270126 n

end A270126

/-! ## A270126.P8526550611280219074

`4*a(n-1)` with `a(0)=1, a(1)=5, a(2)=24`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A270126

/-- `4*a(n-1)` -/
def P8526550611280219074.Spec : Prop :=
  ∀ n, (P8526550611280219074.a n : ℤ) = A270126 n

theorem P8526550611280219074.correct : P8526550611280219074.Spec := by
  intro n
  simp only [A270126]

end A270126

/-! ## A270126.P6030173284281667425

`Δ[record[abs(2^xor(1, n)-2)]]`
-/

namespace A270126.P6030173284281667425
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 ^ Nat.xor 1 n : ℤ) - 2|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270126.P6030173284281667425

namespace A270126

/-- `Δ[record[abs(2^xor(1, n)-2)]]` -/
def P6030173284281667425.Spec : Prop :=
  ∀ n, P6030173284281667425.a n = A270126 n

end A270126

/-! ## A270126.P16575130712084825250

`floor(Δ[4^n/2])-char[1]`
-/

namespace A270126.P16575130712084825250
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℚ) / 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋ - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A270126.P16575130712084825250

namespace A270126

/-- `floor(Δ[4^n/2])-char[1]` -/
def P16575130712084825250.Spec : Prop :=
  ∀ n, P16575130712084825250.a n = A270126 n

end A270126

/-! ## A270126.P7903452085227259601

`Δ[or(3, lcm(4, a(n-1)))]` with `a(0)=1, a(1)=2`
-/

namespace A270126.P7903452085227259601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  Nat.lor 3 (Nat.lcm 4 (f1 (n - 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A270126.P7903452085227259601

namespace A270126

/-- `Δ[or(3, lcm(4, a(n-1)))]` -/
def P7903452085227259601.Spec : Prop :=
  ∀ n, P7903452085227259601.a n = A270126 n

end A270126

/-! ## A270126.P5011156817802908313

`(3*4^n-C(2, n²))/2`
-/

namespace A270126.P5011156817802908313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * 4 ^ n : ℤ) - (Nat.choose 2 (n ^ 2) : ℤ) : ℚ) / 2

end

end A270126.P5011156817802908313

namespace A270126

/-- `(3*4^n-C(2, n²))/2` -/
def P5011156817802908313.Spec : Prop :=
  ∀ n, P5011156817802908313.a n = (A270126 n : ℚ)

end A270126

/-! ## A270126.P16966033309603119924

`Δ[ceil(4^n/2)+C(n, n²)]`
-/

namespace A270126.P16966033309603119924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(4 ^ n : ℚ) / 2⌉ + (Nat.choose n (n ^ 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270126.P16966033309603119924

namespace A270126

/-- `Δ[ceil(4^n/2)+C(n, n²)]` -/
def P16966033309603119924.Spec : Prop :=
  ∀ n, P16966033309603119924.a n = A270126 n

end A270126

/-! ## A270126.P18062918672760443301

`Δ[record[A094360(n)]]`
-/

namespace A270126.P18062918672760443301
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094360 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270126.P18062918672760443301

namespace A270126

/-- `Δ[record[A094360(n)]]` -/
def P18062918672760443301.Spec : Prop :=
  ∀ n, P18062918672760443301.a n = A270126 n

end A270126

/-! ## A270126.P15639615923955784380

`Δ[record[A282414(n)]]`
-/

namespace A270126.P15639615923955784380
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282414 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270126.P15639615923955784380

namespace A270126

/-- `Δ[record[A282414(n)]]` -/
def P15639615923955784380.Spec : Prop :=
  ∀ n, P15639615923955784380.a n = A270126 n

end A270126

/-! ## A270126.P5832715233594510156

`Δ[record[A282454(n)]]`
-/

namespace A270126.P5832715233594510156
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282454 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270126.P5832715233594510156

namespace A270126

/-- `Δ[record[A282454(n)]]` -/
def P5832715233594510156.Spec : Prop :=
  ∀ n, P5832715233594510156.a n = A270126 n

end A270126

/-! ## A270126.P716749733019479131

`Δ[record[A282655(n)]]`
-/

namespace A270126.P716749733019479131
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282655 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270126.P716749733019479131

namespace A270126

/-- `Δ[record[A282655(n)]]` -/
def P716749733019479131.Spec : Prop :=
  ∀ n, P716749733019479131.a n = A270126 n

end A270126

/-! ## A270126.P4499744672375991337

`Δ[record[A282803(n)]]`
-/

namespace A270126.P4499744672375991337
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282803 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270126.P4499744672375991337

namespace A270126

/-- `Δ[record[A282803(n)]]` -/
def P4499744672375991337.Spec : Prop :=
  ∀ n, P4499744672375991337.a n = A270126 n

end A270126

/-! ## A270126.P13030661704044087441

`Δ[A283349(Δ[n²])]`
-/

namespace A270126.P13030661704044087441
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283349 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270126.P13030661704044087441

namespace A270126

/-- `Δ[A283349(Δ[n²])]` -/
def P13030661704044087441.Spec : Prop :=
  ∀ n, P13030661704044087441.a n = A270126 n

end A270126

/-! ## A270126.P1193310319021590323

`round((A007283(2*n)-C(2, n))/2)`
-/

namespace A270126.P1193310319021590323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A007283 (2 * n) - (Nat.choose 2 n : ℤ) : ℚ) / 2)

end

end A270126.P1193310319021590323

namespace A270126

/-- `round((A007283(2*n)-C(2, n))/2)` -/
def P1193310319021590323.Spec : Prop :=
  ∀ n, P1193310319021590323.a n = A270126 n

end A270126

/-! ## A270126.P14688382579758136825

`and(A092440(n), A158561(n+1))`
-/

namespace A270126.P14688382579758136825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A092440 n) (A158561 (n + 1))

end

end A270126.P14688382579758136825

namespace A270126

/-- `and(A092440(n), A158561(n+1))` -/
def P14688382579758136825.Spec : Prop :=
  ∀ n, P14688382579758136825.a n = A270126 n

end A270126

/-! ## A270126.P14859109505121214340

`Δ[record[A308709(A322469(n+1))]]`
-/

namespace A270126.P14859109505121214340
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308709 (A322469 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270126.P14859109505121214340

namespace A270126

/-- `Δ[record[A308709(A322469(n+1))]]` -/
def P14859109505121214340.Spec : Prop :=
  ∀ n, P14859109505121214340.a n = A270126 n

end A270126

/-! ## A270126.P11552583807765785607

`Δ[A166444(2*n+1)-A157928(n)]`
-/

namespace A270126.P11552583807765785607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (2 * n + 1) - A157928 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270126.P11552583807765785607

namespace A270126

/-- `Δ[A166444(2*n+1)-A157928(n)]` -/
def P11552583807765785607.Spec : Prop :=
  ∀ n, P11552583807765785607.a n = A270126 n

end A270126

/-! ## A270126.P17591231646228276704

`and(A026622(2*n)+2, A026622(2*n))`
-/

namespace A270126.P17591231646228276704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A026622 (2 * n) + 2) (A026622 (2 * n))

end

end A270126.P17591231646228276704

namespace A270126

/-- `and(A026622(2*n)+2, A026622(2*n))` -/
def P17591231646228276704.Spec : Prop :=
  ∀ n, P17591231646228276704.a n = A270126 n

end A270126

/-! ## A270126.P5725739013694126062

`and(A090764(2*n+1), A157823(2*n))/2`
-/

namespace A270126.P5725739013694126062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (A090764 (2 * n + 1)) (A157823 (2 * n)) : ℚ) / 2

end

end A270126.P5725739013694126062

namespace A270126

/-- `and(A090764(2*n+1), A157823(2*n))/2` -/
def P5725739013694126062.Spec : Prop :=
  ∀ n, P5725739013694126062.a n = (A270126 n : ℚ)

end A270126

/-! ## A270126.P9603720065443744422

`and(A125176(2*n+1)-2, A125176(2*n+1))`
-/

namespace A270126.P9603720065443744422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A125176 (2 * n + 1) - 2) (A125176 (2 * n + 1))

end

end A270126.P9603720065443744422

namespace A270126

/-- `and(A125176(2*n+1)-2, A125176(2*n+1))` -/
def P9603720065443744422.Spec : Prop :=
  ∀ n, P9603720065443744422.a n = A270126 n

end A270126

/-!
# A270127: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 86", based on the 5-celled von Neumann neighborhood.

The programs for A270127, the canonical program `A270127.P5718691714425253421` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270127 has offset 0).

The definition of A270127 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4612 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A270127.P9490826036308875711

`∑[A159075(n)+A062383(n)*A071044(n)]`
-/

namespace A270127.P9490826036308875711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 n + A062383 n * A071044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270127.P9490826036308875711

namespace A270127

/-- `∑[A159075(n)+A062383(n)*A071044(n)]` -/
def P9490826036308875711.Spec : Prop :=
  ∀ n, P9490826036308875711.a n = A270127 n

end A270127

/-! ## A270127.P5718691714425253421

`∑[A062383(n)*A071044(n)]-A057427(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A270127

/-- `∑[A062383(n)*A071044(n)]-A057427(n)` -/
def P5718691714425253421.Spec : Prop :=
  ∀ n, P5718691714425253421.a n = A270127 n

theorem P5718691714425253421.correct : P5718691714425253421.Spec := by
  intro n
  simp only [A270127]

end A270127

/-! ## A270127.P15040118129215246064

`∑[A062383(n)*A071044(n)]-A062157(n)²`
-/

namespace A270127.P15040118129215246064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 n * A071044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A062157 n ^ 2

end

end A270127.P15040118129215246064

namespace A270127

/-- `∑[A062383(n)*A071044(n)]-A062157(n)²` -/
def P15040118129215246064.Spec : Prop :=
  ∀ n, P15040118129215246064.a n = A270127 n

end A270127

/-! ## A270127.P15360247576282430850

`∑[A062383(n)*A071044(n)]-and(1, A000040(n+1))`
-/

namespace A270127.P15360247576282430850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 n * A071044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - Int.land 1 (A000040 (n + 1))

end

end A270127.P15360247576282430850

namespace A270127

/-- `∑[A062383(n)*A071044(n)]-and(1, A000040(n+1))` -/
def P15360247576282430850.Spec : Prop :=
  ∀ n, P15360247576282430850.a n = A270127 n

end A270127

/-! ## A270127.P14313557152409095369

`∑[A062383(n)*A071044(n)]-A001221(A001316(n))`
-/

namespace A270127.P14313557152409095369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 n * A071044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001221 (A001316 n).toNat

end

end A270127.P14313557152409095369

namespace A270127

/-- `∑[A062383(n)*A071044(n)]-A001221(A001316(n))` -/
def P14313557152409095369.Spec : Prop :=
  ∀ n, P14313557152409095369.a n = A270127 n

end A270127

/-! ## A270127.P5396221715974342580

`∑[A270125(n)]`
-/

namespace A270127.P5396221715974342580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270125 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270127.P5396221715974342580

namespace A270127

/-- `∑[A270125(n)]` -/
def P5396221715974342580.Spec : Prop :=
  ∀ n, P5396221715974342580.a n = A270127 n

end A270127

/-!
# A270128: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 86", based on the 5-celled von Neumann neighborhood.

The programs for A270128, the canonical program `A270128.P12155844267239874096` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270128 has offset 0).

The definition of A270128 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4616 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A270128.P12155844267239874096

`Δ[A159075(n)+A062383(n)*A071044(n)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A270128

/-- `Δ[A159075(n)+A062383(n)*A071044(n)]` -/
def P12155844267239874096.Spec : Prop :=
  ∀ n, P12155844267239874096.a n = A270128 n

theorem P12155844267239874096.correct : P12155844267239874096.Spec := by
  intro n
  simp only [A270128]

end A270128

/-! ## A270128.P15226832690116009877

`Δ[A270125(n)]`
-/

namespace A270128.P15226832690116009877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270125 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270128.P15226832690116009877

namespace A270128

/-- `Δ[A270125(n)]` -/
def P15226832690116009877.Spec : Prop :=
  ∀ n, P15226832690116009877.a n = A270128 n

end A270128

/-! ## A270128.P16005779690292886061

`A270125(n+1)-A270125(n)`
-/

namespace A270128.P16005779690292886061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270125 (n + 1) - A270125 n

end

end A270128.P16005779690292886061

namespace A270128

/-- `A270125(n+1)-A270125(n)` -/
def P16005779690292886061.Spec : Prop :=
  ∀ n, P16005779690292886061.a n = A270128 n

end A270128

/-! ## A270128.P9458791690328496610

`A270125(n+1)+A001478(A270125(n)+1)+1`
-/

namespace A270128.P9458791690328496610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270125 (n + 1) + A001478 (A270125 n + 1).toNat + 1

end

end A270128.P9458791690328496610

namespace A270128

/-- `A270125(n+1)+A001478(A270125(n)+1)+1` -/
def P9458791690328496610.Spec : Prop :=
  ∀ n, P9458791690328496610.a n = A270128 n

end A270128

/-! ## A270128.P14101436261887769489

`A270125(n+1)+A001489(A270125(n)+2)+2`
-/

namespace A270128.P14101436261887769489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270125 (n + 1) + A001489 (A270125 n + 2).toNat + 2

end

end A270128.P14101436261887769489

namespace A270128

/-- `A270125(n+1)+A001489(A270125(n)+2)+2` -/
def P14101436261887769489.Spec : Prop :=
  ∀ n, P14101436261887769489.a n = A270128 n

end A270128

/-!
# A270129: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 89", based on the 5-celled von Neumann neighborhood.

The programs for A270129, the canonical program `A270129.P2634472060672973297` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270129 has offset 0).

The definition of A270129 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3118 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A270129.P1460406708123253528

`((2*n+1)²-a(n-1))*and(1, n)` with `a(0)=1, a(1)=4, a(2)=5`
-/

namespace A270129.P1460406708123253528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 5] fun n a =>
  (((2 * n + 1) ^ 2 : ℤ) - a (n - 1)) * (Nat.land 1 n : ℤ)

end

end A270129.P1460406708123253528

namespace A270129

/-- `((2*n+1)²-a(n-1))*and(1, n)` -/
def P1460406708123253528.Spec : Prop :=
  ∀ n, P1460406708123253528.a n = A270129 n

end A270129

/-! ## A270129.P2634472060672973297

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=1, a(1)=4, a(2)=5, a(3)=44, a(4)=0, a(5)=121, a(6)=0, a(7)=225, a(8)=0, a(9)=361`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A270129

/-- `3*a(n-2)-3*a(n-4)+a(n-6)` -/
def P2634472060672973297.Spec : Prop :=
  ∀ n, P2634472060672973297.a n = A270129 n

theorem P2634472060672973297.correct : P2634472060672973297.Spec := by
  intro n
  simp only [A270129]

end A270129

/-! ## A270129.P6008812384245826454

`∑[A270132(abs(1-n))]`
-/

namespace A270129.P6008812384245826454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270132 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270129.P6008812384245826454

namespace A270129

/-- `∑[A270132(abs(1-n))]` -/
def P6008812384245826454.Spec : Prop :=
  ∀ n, P6008812384245826454.a n = A270129 n

end A270129

/-! ## A270129.P18390245307480716625

`A270087(n)+4*char[3]`
-/

namespace A270129.P18390245307480716625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270087 n + ((4 * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ)

end

end A270129.P18390245307480716625

namespace A270129

/-- `A270087(n)+4*char[3]` -/
def P18390245307480716625.Spec : Prop :=
  ∀ n, P18390245307480716625.a n = A270129 n

end A270129

/-! ## A270129.P11382822337911343651

`A270132(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A270129.P11382822337911343651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270132 (n - 1) + a (n - 1)

end

end A270129.P11382822337911343651

namespace A270129

/-- `A270132(n-1)+a(n-1)` -/
def P11382822337911343651.Spec : Prop :=
  ∀ n, P11382822337911343651.a n = A270129 n

end A270129

/-! ## A270129.P12149927065391019164

`∑[A270132(n)]+1-A270132(n)`
-/

namespace A270129.P12149927065391019164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270132 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A270132 n)

end

end A270129.P12149927065391019164

namespace A270129

/-- `∑[A270132(n)]+1-A270132(n)` -/
def P12149927065391019164.Spec : Prop :=
  ∀ n, P12149927065391019164.a n = A270129 n

end A270129

/-! ## A270129.P18427571365963701299

`or(A270087(n)%A008574(n), A270087(n))`
-/

namespace A270129.P18427571365963701299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A270087 n) (A008574 n)) (A270087 n)

end

end A270129.P18427571365963701299

namespace A270129

/-- `or(A270087(n)%A008574(n), A270087(n))` -/
def P18427571365963701299.Spec : Prop :=
  ∀ n, P18427571365963701299.a n = A270129 n

end A270129

/-! ## A270129.P10065208033070200904

`A270131(n+1)-(A270132(n)+A270131(n))`
-/

namespace A270129.P10065208033070200904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270131 (n + 1) - (A270132 n + A270131 n)

end

end A270129.P10065208033070200904

namespace A270129

/-- `A270131(n+1)-(A270132(n)+A270131(n))` -/
def P10065208033070200904.Spec : Prop :=
  ∀ n, P10065208033070200904.a n = A270129 n

end A270129

/-!
# A270130: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 89", based on the 5-celled von Neumann neighborhood.

The programs for A270130, the canonical program `A270130.P16178713870882663809` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270130 has offset 0).

The definition of A270130 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A270130.P16178713870882663809

`-or(4, -A273767(n))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A270130

/-- `-or(4, -A273767(n))` -/
def P16178713870882663809.Spec : Prop :=
  ∀ n, P16178713870882663809.a n = A270130 n

theorem P16178713870882663809.correct : P16178713870882663809.Spec := by
  intro n
  simp only [A270130]

end A270130

/-! ## A270130.P8640244976235292798

`A270088(n)+4*char[2]`
-/

namespace A270130.P8640244976235292798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270088 n + ((4 * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ)

end

end A270130.P8640244976235292798

namespace A270130

/-- `A270088(n)+4*char[2]` -/
def P8640244976235292798.Spec : Prop :=
  ∀ n, P8640244976235292798.a n = A270130 n

end A270130

/-! ## A270130.P13198373960721819613

`A273767(n)-and(4, A000079(n))`
-/

namespace A270130.P13198373960721819613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273767 n - Int.land 4 (A000079 n)

end

end A270130.P13198373960721819613

namespace A270130

/-- `A273767(n)-and(4, A000079(n))` -/
def P13198373960721819613.Spec : Prop :=
  ∀ n, P13198373960721819613.a n = A270130 n

end A270130

/-! ## A270130.P17699455849848441369

`or(and(4, A270087(n)), A270088(n))`
-/

namespace A270130.P17699455849848441369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.land 4 (A270087 n)) (A270088 n)

end

end A270130.P17699455849848441369

namespace A270130

/-- `or(and(4, A270087(n)), A270088(n))` -/
def P17699455849848441369.Spec : Prop :=
  ∀ n, P17699455849848441369.a n = A270130 n

end A270130

/-! ## A270130.P5112618180703900542

`or(and(4, A273780(n)), A270088(n))`
-/

namespace A270130.P5112618180703900542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.land 4 (A273780 n)) (A270088 n)

end

end A270130.P5112618180703900542

namespace A270130

/-- `or(and(4, A273780(n)), A270088(n))` -/
def P5112618180703900542.Spec : Prop :=
  ∀ n, P5112618180703900542.a n = A270130 n

end A270130

/-! ## A270130.P5244613294270974564

`or(A166444(A168273(n+1)), A270088(n))`
-/

namespace A270130.P5244613294270974564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A166444 (A168273 (n + 1)).toNat) (A270088 n)

end

end A270130.P5244613294270974564

namespace A270130

/-- `or(A166444(A168273(n+1)), A270088(n))` -/
def P5244613294270974564.Spec : Prop :=
  ∀ n, P5244613294270974564.a n = A270130 n

end A270130

/-! ## A270130.P17068532202844063762

`A273766(n)+A273767(n)-A273780(n)`
-/

namespace A270130.P17068532202844063762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273766 n + (A273767 n - A273780 n)

end

end A270130.P17068532202844063762

namespace A270130

/-- `A273766(n)+A273767(n)-A273780(n)` -/
def P17068532202844063762.Spec : Prop :=
  ∀ n, P17068532202844063762.a n = A270130 n

end A270130

/-! ## A270130.P11763383014317931561

`(A273767(n)+A270088(n))/2`
-/

namespace A270130.P11763383014317931561
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A273767 n + A270088 n : ℚ) / 2

end

end A270130.P11763383014317931561

namespace A270130

/-- `(A273767(n)+A270088(n))/2` -/
def P11763383014317931561.Spec : Prop :=
  ∀ n, P11763383014317931561.a n = (A270130 n : ℚ)

end A270130

/-!
# A270131: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 89", based on the 5-celled von Neumann neighborhood.

The programs for A270131, the canonical program `A270131.P3903911104145321744` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270131 has offset 0).

The definition of A270131 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3339 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A270131.P3903911104145321744

`A270089(n)+4%A053439(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A270131

/-- `A270089(n)+4%A053439(n)` -/
def P3903911104145321744.Spec : Prop :=
  ∀ n, P3903911104145321744.a n = A270131 n

theorem P3903911104145321744.correct : P3903911104145321744.Spec := by
  intro n
  simp only [A270131]

end A270131

/-! ## A270131.P17004209501372689220

`∑[∑[A270132(abs(1-n))]]`
-/

namespace A270131.P17004209501372689220
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270132 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270131.P17004209501372689220

namespace A270131

/-- `∑[∑[A270132(abs(1-n))]]` -/
def P17004209501372689220.Spec : Prop :=
  ∀ n, P17004209501372689220.a n = A270131 n

end A270131

/-! ## A270131.P16362408562387735600

`∑[A270132(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A270131.P16362408562387735600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A270132 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270131.P16362408562387735600

namespace A270131

/-- `∑[A270132(n-1)+a(n-1)]` -/
def P16362408562387735600.Spec : Prop :=
  ∀ n, P16362408562387735600.a n = A270131 n

end A270131

/-! ## A270131.P11536308646690248859

`∑[A270129(n)]`
-/

namespace A270131.P11536308646690248859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270131.P11536308646690248859

namespace A270131

/-- `∑[A270129(n)]` -/
def P11536308646690248859.Spec : Prop :=
  ∀ n, P11536308646690248859.a n = A270131 n

end A270131

/-! ## A270131.P16067952119366300523

`A270129(lcm(n, A014963(n)))+a(n-1)` with `a(0)=1`
-/

namespace A270131.P16067952119366300523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270129 (Int.lcm (n : ℤ) (A014963 n)) + a (n - 1)

end

end A270131.P16067952119366300523

namespace A270131

/-- `A270129(lcm(n, A014963(n)))+a(n-1)` -/
def P16067952119366300523.Spec : Prop :=
  ∀ n, P16067952119366300523.a n = A270131 n

end A270131

/-! ## A270131.P6730054010376754441

`A270129(n%A048645(n+1))+a(n-1)` with `a(0)=1`
-/

namespace A270131.P6730054010376754441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270129 (Int.tmod (n : ℤ) (A048645 (n + 1))).toNat + a (n - 1)

end

end A270131.P6730054010376754441

namespace A270131

/-- `A270129(n%A048645(n+1))+a(n-1)` -/
def P6730054010376754441.Spec : Prop :=
  ∀ n, P6730054010376754441.a n = A270131 n

end A270131

/-! ## A270131.P7805529311978475454

`A270129(n+1)+a(n-1)-A270132(n)` with `a(0)=1`
-/

namespace A270131.P7805529311978475454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270129 (n + 1) + (a (n - 1) - A270132 n)

end

end A270131.P7805529311978475454

namespace A270131

/-- `A270129(n+1)+a(n-1)-A270132(n)` -/
def P7805529311978475454.Spec : Prop :=
  ∀ n, P7805529311978475454.a n = A270131 n

end A270131

/-!
# A270132: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 89", based on the 5-celled von Neumann neighborhood.

The programs for A270132, the canonical program `A270132.P18291157808621119181` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270132 has offset 0).

The definition of A270132 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3221 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A270132.P18291157808621119181

`Δ[((2*n+1)²-a(n-1))*and(1, n)]` with `a(0)=1, a(1)=4, a(2)=5`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A270132

/-- `Δ[((2*n+1)²-a(n-1))*and(1, n)]` -/
def P18291157808621119181.Spec : Prop :=
  ∀ n, P18291157808621119181.a n = A270132 n

theorem P18291157808621119181.correct : P18291157808621119181.Spec := by
  intro n
  simp only [A270132]

end A270132

/-! ## A270132.P18279876198352001778

`Δ[A270087(n)+4*char[3]]`
-/

namespace A270132.P18279876198352001778
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270087 n + ((4 * (if ∃ j, f2 j = n then 1 else 0) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270132.P18279876198352001778

namespace A270132

/-- `Δ[A270087(n)+4*char[3]]` -/
def P18279876198352001778.Spec : Prop :=
  ∀ n, P18279876198352001778.a n = A270132 n

end A270132

/-! ## A270132.P15018046266740698213

`Δ[A270129(n)]`
-/

namespace A270132.P15018046266740698213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270132.P15018046266740698213

namespace A270132

/-- `Δ[A270129(n)]` -/
def P15018046266740698213.Spec : Prop :=
  ∀ n, P15018046266740698213.a n = A270132 n

end A270132

/-! ## A270132.P1682456258866703082

`A270129(n+1)-A270129(n)`
-/

namespace A270132.P1682456258866703082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270129 (n + 1) - A270129 n

end

end A270132.P1682456258866703082

namespace A270132

/-- `A270129(n+1)-A270129(n)` -/
def P1682456258866703082.Spec : Prop :=
  ∀ n, P1682456258866703082.a n = A270132 n

end A270132

/-!
# A270133: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 94", based on the 5-celled von Neumann neighborhood.

The programs for A270133, there is no canonical definition to state claims against.
-/

/-! ## A270133.P1744009206594044396

`A270136(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A270133.P1744009206594044396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270136 (n - 1) + a (n - 1)

end

end A270133.P1744009206594044396

/-! ## A270133.P7796408651723127820

`A270136(n-1)-(A000038(n)-a(n-1))` with `a(0)=1`
-/

namespace A270133.P7796408651723127820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270136 (n - 1) - (A000038 n - a (n - 1))

end

end A270133.P7796408651723127820

/-! ## A270133.P16698980914396290567

`Δ[A270135(n)]-A270136(n)`
-/

namespace A270133.P16698980914396290567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270135 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A270136 n

end

end A270133.P16698980914396290567

/-! ## A270133.P15650477087859234085

`A270135(n+1)-(A270136(n)+A270135(n))`
-/

namespace A270133.P15650477087859234085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270135 (n + 1) - (A270136 n + A270135 n)

end

end A270133.P15650477087859234085

/-!
# A270134: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 94", based on the 5-celled von Neumann neighborhood.

The programs for A270134, there is no canonical definition to state claims against.
-/

/-! ## A270134.P13821141087515115648

`A270133(2^n-1)`
-/

namespace A270134.P13821141087515115648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270133 (2 ^ n - 1)

end

end A270134.P13821141087515115648

/-! ## A270134.P5981577465890259949

`record[A270133(A227351(n))]`
-/

namespace A270134.P5981577465890259949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270133 (A227351 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270134.P5981577465890259949

/-! ## A270134.P14687595783189795707

`record[A270133(A303765(n))]`
-/

namespace A270134.P14687595783189795707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270133 (A303765 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270134.P14687595783189795707

/-! ## A270134.P10830055702163248244

`and(-1, A270133(A000225(n)))`
-/

namespace A270134.P10830055702163248244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A270133 (A000225 n).toNat)

end

end A270134.P10830055702163248244

/-! ## A270134.P12486217031359331757

`record[A270133(A253564(n+1))]`
-/

namespace A270134.P12486217031359331757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270133 (A253564 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270134.P12486217031359331757

/-!
# A270135: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 94", based on the 5-celled von Neumann neighborhood.

The programs for A270135, there is no canonical definition to state claims against.
-/

/-! ## A270135.P14669654867730806298

`∑[A270133(n)]`
-/

namespace A270135.P14669654867730806298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270133 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270135.P14669654867730806298

/-! ## A270135.P13457628678215093253

`A270133(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A270135.P13457628678215093253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270133 n + a (A023443 n).toNat

end

end A270135.P13457628678215093253

/-! ## A270135.P3629965939012075742

`a(n-1)+A270133(n)+A000007(n)` with `a(0)=1`
-/

namespace A270135.P3629965939012075742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A270133 n + A000007 n)

end

end A270135.P3629965939012075742

/-! ## A270135.P10466842806894247649

`a(n-1)+lcm(A266227(n+1), A270133(n))` with `a(0)=1`
-/

namespace A270135.P10466842806894247649
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.lcm (A266227 (n + 1)) (A270133 n)

end

end A270135.P10466842806894247649

/-! ## A270135.P13799530265856772786

`∑[A270136(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A270135.P13799530265856772786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A270136 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270135.P13799530265856772786

/-! ## A270135.P9422120802402790184

`∑[∑[A270136(n)]+1-A270136(n)]`
-/

namespace A270135.P9422120802402790184
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270136 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A270136 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270135.P9422120802402790184

/-!
# A270136: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 94", based on the 5-celled von Neumann neighborhood.

The programs for A270136, there is no canonical definition to state claims against.
-/

/-! ## A270136.P18311322680779723259

`Δ[A270133(n)]`
-/

namespace A270136.P18311322680779723259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270133 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270136.P18311322680779723259

/-! ## A270136.P7409917815430784331

`A270133(n+1)-A270133(n)`
-/

namespace A270136.P7409917815430784331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270133 (n + 1) - A270133 n

end

end A270136.P7409917815430784331

/-! ## A270136.P17695783210598824428

`A270133(n+1)+A270133(n)*A308778(n²)`
-/

namespace A270136.P17695783210598824428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270133 (n + 1) + A270133 n * A308778 (n ^ 2)

end

end A270136.P17695783210598824428

/-!
# A270140: Numbers k such that k/p_i^r_i == -1 (mod p_i) for all i = 1,...,m, where k = p_1^r_1 .... p_m^r_m.

The programs for A270140, there is no canonical definition to state claims against.
-/

/-! ## A270140.P1000631790956828042

`record[A000005(A314761(∑[n]))]`
-/

namespace A270140.P1000631790956828042
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A314761 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270140.P1000631790956828042

/-! ## A270140.P6573197998038485668

`record[A274923(A300273(n+1)²)]`
-/

namespace A270140.P6573197998038485668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274923 (A300273 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270140.P6573197998038485668

/-! ## A270140.P12177753699787646310

`record[and(A090748(n+1), A280263(n))]`
-/

namespace A270140.P12177753699787646310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A090748 (n + 1)) (A280263 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270140.P12177753699787646310

/-! ## A270140.P13942189176404308101

`record[and(A087036(n)+1, A000010(n+1))]`
-/

namespace A270140.P13942189176404308101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A087036 n + 1) (A000010 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270140.P13942189176404308101

/-! ## A270140.P14274197614854154488

`record[and(∏{p}[n+1, #-1], A382913(n+3))]`
-/

namespace A270140.P14274197614854154488
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1)) (A382913 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270140.P14274197614854154488

/-!
# A270141: A270140 intersect A266005.

The programs for A270141, there is no canonical definition to state claims against.
-/

/-! ## A270141.P11911844101127132902

`∪[A054377(n+1), ∑[2*n]!]`
-/

namespace A270141.P11911844101127132902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054377 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ j ∈ Finset.range (n + 1), f3 j)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A270141.P11911844101127132902

/-!
# A270142: a(n) = product of first k composites, with the i-th composite raised to the d-th power, where k = A055642(n) and d is the i-th digit of n.

The programs for A270142, there is no canonical definition to state claims against.
-/

/-! ## A270142.P17307943991122156281

`∏{e}[A061509(n+1), A000079(#)]*A061509(n+1)`
-/

namespace A270142.P17307943991122156281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061509 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000079 (Nat.factorization (f1 n).natAbs p)) * A061509 (n + 1)

end

end A270142.P17307943991122156281

/-! ## A270142.P6592876535808666294

`∏{e}[A061509(n+1), A061509(#)]*A061509(n+1)`
-/

namespace A270142.P6592876535808666294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061509 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A061509 (Nat.factorization (f1 n).natAbs p)) * A061509 (n + 1)

end

end A270142.P6592876535808666294

/-! ## A270142.P3192757693697472806

`∏{e}[A189398(n+1), A000079(#)]*A189398(n+1)`
-/

namespace A270142.P3192757693697472806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189398 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000079 (Nat.factorization (f1 n).natAbs p)) * A189398 (n + 1)

end

end A270142.P3192757693697472806

/-! ## A270142.P17514509432350221195

`∏{e}[A189398(n+1), A189398(#)]*A189398(n+1)`
-/

namespace A270142.P17514509432350221195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189398 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A189398 (Nat.factorization (f1 n).natAbs p)) * A189398 (n + 1)

end

end A270142.P17514509432350221195

/-! ## A270142.P4254958728070555011

`A046523(A000079(∑{digits}[n+1, #]))*A061509(n+1)`
-/

namespace A270142.P4254958728070555011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A000079 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum).toNat * A061509 (n + 1)

end

end A270142.P4254958728070555011

/-!
# A270143: a(n) = Sum_{k=0..n} (-1)^(k+1) * k * A000041(n-k).

The programs for A270143, there is no canonical definition to state claims against.
-/

/-! ## A270143.P4449409209113808660

`A182712(n+1)-a(n-1)` with `a(0)=0`
-/

namespace A270143.P4449409209113808660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A182712 (n + 1) - a (n - 1)

end

end A270143.P4449409209113808660

/-! ## A270143.P204520792130690489

`A087787(n-1)-a(n-1)` with `a(0)=0`
-/

namespace A270143.P204520792130690489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A087787 (n - 1) - a (n - 1)

end

end A270143.P204520792130690489

/-! ## A270143.P399386547650008769

`Δ[Δ[A103650(n+1)]-A087787(n)]`
-/

namespace A270143.P399386547650008769
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103650 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A087787 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270143.P399386547650008769

/-! ## A270143.P5589677814915947251

`Δ[Δ[A103650(n+1)-A024786(n+1)]]`
-/

namespace A270143.P5589677814915947251
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103650 (n + 1) - A024786 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270143.P5589677814915947251

/-! ## A270143.P3867851420977369964

`A119620(2*n)-a(n-1)-Δ[A024786(n+1)]` with `a(0)=0`
-/

namespace A270143.P3867851420977369964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024786 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A119620 (2 * n) - a (n - 1) - (f1 (n + 1) - f1 n)

end

end A270143.P3867851420977369964

/-! ## A270143.P12665385497846229349

`A035363(2*n)-a(n-1)-Δ[A024786(n+1)]` with `a(0)=0, a(1)=1`
-/

namespace A270143.P12665385497846229349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024786 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A035363 (2 * n) - a (n - 1) - (f1 (n + 1) - f1 n)

end

end A270143.P12665385497846229349

/-!
# A270144: a(n) = Sum_{k=0..n} (-1)^(k+1) * k * A000009(n-k).

The programs for A270144, there is no canonical definition to state claims against.
-/

/-! ## A270144.P17480295003996141965

`A096765(n)-a(n-1)` with `a(0)=0`
-/

namespace A270144.P17480295003996141965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A096765 n - a (n - 1)

end

end A270144.P17480295003996141965

/-! ## A270144.P8728329186270917922

`A025147(n-1)-a(n-1)` with `a(0)=0`
-/

namespace A270144.P8728329186270917922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A025147 (n - 1) - a (n - 1)

end

end A270144.P8728329186270917922

/-! ## A270144.P14689925691645858516

`Δ[A265251(n)+A090858(n)]-a(n-1)` with `a(0)=0`
-/

namespace A270144.P14689925691645858516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265251 n + A090858 n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  f1 (n + 1) - f1 n - a (n - 1)

end

end A270144.P14689925691645858516

/-! ## A270144.P14857633522881501166

`A111133(n)+1-a(n-1)-(2*A038348(n)-A036469(n))` with `a(0)=0`
-/

namespace A270144.P14857633522881501166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A111133 n + (1 - a (n - 1)) - (2 * A038348 n - A036469 n)

end

end A270144.P14857633522881501166

/-! ## A270144.P11959206740837300004

`A052839(n)-(a(n-1)+1)-(2*A038348(n)-A036469(n))` with `a(0)=0, a(1)=1`
-/

namespace A270144.P11959206740837300004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A052839 n - (a (n - 1) + 1) - (2 * A038348 n - A036469 n)

end

end A270144.P11959206740837300004

/-! ## A270144.P14361907915710249642

`Δ[A038348(n)-A000009(n)]-a(n-1)` with `a(0)=0`
-/

namespace A270144.P14361907915710249642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038348 n - A000009 n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  f1 (n + 1) - f1 n - a (n - 1)

end

end A270144.P14361907915710249642

/-! ## A270144.P16562269989716278008

`A111133(n)+1-a(n-1)-(A096749(n+2)+A096749(n))` with `a(0)=0`
-/

namespace A270144.P16562269989716278008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A111133 n + (1 - a (n - 1)) - (A096749 (n + 2) + A096749 n)

end

end A270144.P16562269989716278008

/-! ## A270144.P4135552808632978283

`A052839(n)-(a(n-1)+1)-(A096749(n+2)+A096749(n))` with `a(0)=0, a(1)=1`
-/

namespace A270144.P4135552808632978283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A052839 n - (a (n - 1) + 1) - (A096749 (n + 2) + A096749 n)

end

end A270144.P4135552808632978283

/-! ## A270144.P13812890766787721764

`A032303(n)-abs(A081360(n))-a(n-1)` with `a(0)=0`
-/

namespace A270144.P13812890766787721764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A032303 n - |A081360 n| - a (n - 1)

end

end A270144.P13812890766787721764

/-! ## A270144.P7048261727901306796

`A032303(n)-2*a(n-1)-(A111133(n)+1-a(n-1))` with `a(0)=0`
-/

namespace A270144.P7048261727901306796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A032303 n - 2 * a (n - 1) - (A111133 n + (1 - a (n - 1)))

end

end A270144.P7048261727901306796

/-! ## A270144.P9422108451816599231

`A032303(n)-2*a(n-1)-(A052839(n)-(a(n-1)+1))` with `a(0)=0, a(1)=1`
-/

namespace A270144.P9422108451816599231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A032303 n - 2 * a (n - 1) - (A052839 n - (a (n - 1) + 1))

end

end A270144.P9422108451816599231

/-!
# A270145: Number of n X 2 0..7 arrays with some element plus some horizontally, diagonally, antidiagonally or vertically adjacent neighbor totalling seven exactly once.

The programs for A270145, there is no canonical definition to state claims against.
-/

/-! ## A270145.P1742867152995904668

`A270150(∑[n+1]+2)`
-/

namespace A270145.P1742867152995904668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270150 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A270145.P1742867152995904668

/-!
# A270146: Number of nX3 0..7 arrays with some element plus some horizontally, diagonally, antidiagonally or vertically adjacent neighbor totalling seven exactly once.

The programs for A270146, there is no canonical definition to state claims against.
-/

/-! ## A270146.P1879979810021944612

`A270150(A167614(n+1))`
-/

namespace A270146.P1879979810021944612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270150 (A167614 (n + 1)).toNat

end

end A270146.P1879979810021944612

/-! ## A270146.P17880296085213035670

`A270150(∑[n+3]+1)`
-/

namespace A270146.P17880296085213035670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270150 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A270146.P17880296085213035670

/-!
# A270147: Number of nX4 0..7 arrays with some element plus some horizontally, diagonally, antidiagonally or vertically adjacent neighbor totalling seven exactly once.

The programs for A270147, there is no canonical definition to state claims against.
-/

/-! ## A270147.P9458628746908070824

`A270150(A141214(n)+7)`
-/

namespace A270147.P9458628746908070824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270150 (A141214 n + 7).toNat

end

end A270147.P9458628746908070824

/-! ## A270147.P14842274031850635276

`A270150(A055999(n)+10)`
-/

namespace A270147.P14842274031850635276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270150 (A055999 n + 10).toNat

end

end A270147.P14842274031850635276

/-! ## A270147.P5862298304838744851

`A270150(A167614(n+2)+1)`
-/

namespace A270147.P5862298304838744851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270150 (A167614 (n + 2) + 1).toNat

end

end A270147.P5862298304838744851

/-! ## A270147.P16962321669647693428

`A270150(A167499(n)+A103517(n+1))`
-/

namespace A270147.P16962321669647693428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270150 (A167499 n + A103517 (n + 1)).toNat

end

end A270147.P16962321669647693428

/-! ## A270147.P16066945829107850313

`A270150(A027379(n+2))`
-/

namespace A270147.P16066945829107850313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270150 (A027379 (n + 2)).toNat

end

end A270147.P16066945829107850313

/-!
# A270148: 

The programs for A270148, there is no canonical definition to state claims against.
-/

/-! ## A270148.P16980008878225374096

`A270150(A167499(n+1)+A103517(n+1)+3)`
-/

namespace A270148.P16980008878225374096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270150 (A167499 (n + 1) + A103517 (n + 1) + 3).toNat

end

end A270148.P16980008878225374096

/-!
# A270149: 

The programs for A270149, there is no canonical definition to state claims against.
-/

/-! ## A270149.P4606485265413800641

`A270150(A052905(n+3))`
-/

namespace A270149.P4606485265413800641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270150 (A052905 (n + 3)).toNat

end

end A270149.P4606485265413800641

/-!
# A270150: T(n,k)=Number of nXk 0..7 arrays with some element plus some horizontally, diagonally, antidiagonally or vertically adjacent neighbor totalling seven exactly once.

The programs for A270150, there is no canonical definition to state claims against.
-/

/-! ## A270150.P11011579606873319725

`A160171(lcm(4, A064535(n)))`
-/

namespace A270150.P11011579606873319725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160171 (Int.lcm 4 (A064535 n))

end

end A270150.P11011579606873319725

/-!
# A270152: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 97", based on the 5-celled von Neumann neighborhood.

The programs for A270152, there is no canonical definition to state claims against.
-/

/-! ## A270152.P12912799177501097135

`A270155(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A270152.P12912799177501097135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270155 (n - 1) + a (n - 1)

end

end A270152.P12912799177501097135

/-! ## A270152.P158325717158675427

`Δ[A270154(n)]-A270155(n)`
-/

namespace A270152.P158325717158675427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270154 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A270155 n

end

end A270152.P158325717158675427

/-! ## A270152.P3553015943380982817

`A270154(n+1)-(A270155(n)+A270154(n))`
-/

namespace A270152.P3553015943380982817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270154 (n + 1) - (A270155 n + A270154 n)

end

end A270152.P3553015943380982817

/-! ## A270152.P14135454494605433430

`Δ[A270154(abs(1-n))]^A002828(n²)`
-/

namespace A270152.P14135454494605433430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270154 |1 - (n : ℤ)|.toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A002828 (n ^ 2) : ℤ)

end

end A270152.P14135454494605433430

/-! ## A270152.P1565376066117446650

`A020725(∑[A270155(n)])-A270155(n)`
-/

namespace A270152.P1565376066117446650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270155 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A270155 n

end

end A270152.P1565376066117446650

/-!
# A270153: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 97", based on the 5-celled von Neumann neighborhood.

The programs for A270153, there is no canonical definition to state claims against.
-/

/-! ## A270153.P12099203073139480470

`A270152(2^n-1)`
-/

namespace A270153.P12099203073139480470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270152 (2 ^ n - 1)

end

end A270153.P12099203073139480470

/-! ## A270153.P15110728659326512955

`record[A270152(A086099(n))]`
-/

namespace A270153.P15110728659326512955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270152 (A086099 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270153.P15110728659326512955

/-! ## A270153.P10879882192678939328

`record[A270152(A227351(n))]`
-/

namespace A270153.P10879882192678939328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270152 (A227351 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270153.P10879882192678939328

/-! ## A270153.P3111050741597479481

`record[A270152(A233276(n))]`
-/

namespace A270153.P3111050741597479481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270152 (A233276 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270153.P3111050741597479481

/-! ## A270153.P1147430688937604410

`record[A270152(A331105(n))]`
-/

namespace A270153.P1147430688937604410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270152 (A331105 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270153.P1147430688937604410

/-!
# A270154: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 97", based on the 5-celled von Neumann neighborhood.

The programs for A270154, there is no canonical definition to state claims against.
-/

/-! ## A270154.P2101746972278219267

`∑[A270152(n)]`
-/

namespace A270154.P2101746972278219267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270152 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270154.P2101746972278219267

/-! ## A270154.P6122366230076733689

`A270152(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A270154.P6122366230076733689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270152 n + a (A023443 n).toNat

end

end A270154.P6122366230076733689

/-! ## A270154.P18249692724800848311

`∑[∑[A270155(n)]+1-A270155(n)]`
-/

namespace A270154.P18249692724800848311
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270155 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A270155 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270154.P18249692724800848311

/-! ## A270154.P416034523715322764

`a(n-1)+A270152(n)+A000038(n)` with `a(0)=1`
-/

namespace A270154.P416034523715322764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A270152 n + A000038 n)

end

end A270154.P416034523715322764

/-! ## A270154.P4863020969828078202

`a(n-1)+A057427(n)*A270152(n)` with `a(0)=1`
-/

namespace A270154.P4863020969828078202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A057427 n * A270152 n

end

end A270154.P4863020969828078202

/-!
# A270155: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 97", based on the 5-celled von Neumann neighborhood.

The programs for A270155, there is no canonical definition to state claims against.
-/

/-! ## A270155.P11079464879601446919

`Δ[A270152(n)]`
-/

namespace A270155.P11079464879601446919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270152 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270155.P11079464879601446919

/-! ## A270155.P12525837734943349835

`A270152(n+1)-A270152(n)`
-/

namespace A270155.P12525837734943349835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270152 (n + 1) - A270152 n

end

end A270155.P12525837734943349835

/-! ## A270155.P4986880351649664318

`A270152(n+1)+A033999(2*n+1)*A270152(n)`
-/

namespace A270155.P4986880351649664318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270152 (n + 1) + A033999 (2 * n + 1) * A270152 n

end

end A270155.P4986880351649664318

/-! ## A270155.P11993684286729993858

`A270152(A008619(2*n))-A028310(A270152(n))`
-/

namespace A270155.P11993684286729993858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270152 (A008619 (2 * n)).toNat - A028310 (A270152 n).toNat

end

end A270155.P11993684286729993858

/-! ## A270155.P7564105887962521649

`Δ[A270154(n)]-A106612(11*A271305(n))`
-/

namespace A270155.P7564105887962521649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270154 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A106612 (11 * A271305 n).toNat

end

end A270155.P7564105887962521649

/-!
# A270156: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 99", based on the 5-celled von Neumann neighborhood.

The programs for A270156, there is no canonical definition to state claims against.
-/

/-! ## A270156.P7688494110580778149

`∑[A270159(abs(1-n))]+1`
-/

namespace A270156.P7688494110580778149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270159 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A270156.P7688494110580778149

/-! ## A270156.P9143940262861319476

`A270159(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A270156.P9143940262861319476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270159 (n - 1) + a (n - 1)

end

end A270156.P9143940262861319476

/-! ## A270156.P17848785629519442794

`Δ[A270158(n)]-A270159(n)`
-/

namespace A270156.P17848785629519442794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270158 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A270159 n

end

end A270156.P17848785629519442794

/-! ## A270156.P2380798106262931236

`A270158(n+1)-(A270159(n)+A270158(n))`
-/

namespace A270156.P2380798106262931236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270158 (n + 1) - (A270159 n + A270158 n)

end

end A270156.P2380798106262931236

/-!
# A270157: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 99", based on the 5-celled von Neumann neighborhood.

The programs for A270157, there is no canonical definition to state claims against.
-/

/-! ## A270157.P6929108977877970169

`A270156(2^n-1)`
-/

namespace A270157.P6929108977877970169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270156 (2 ^ n - 1)

end

end A270157.P6929108977877970169

/-! ## A270157.P9886315657091653949

`or(1, A270156(A000225(n)))`
-/

namespace A270157.P9886315657091653949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A270156 (A000225 n).toNat)

end

end A270157.P9886315657091653949

/-! ## A270157.P4231726404063287064

`record[A270156(A023758(n+1))]`
-/

namespace A270157.P4231726404063287064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270156 (A023758 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270157.P4231726404063287064

/-! ## A270157.P10749965372031704302

`record[A270156(A243071(n+1))]`
-/

namespace A270157.P10749965372031704302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270156 (A243071 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270157.P10749965372031704302

/-! ## A270157.P3437869184952881055

`record[A270156(n)/A000265(n+1)]`
-/

namespace A270157.P3437869184952881055
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A270156 n : ℚ) / (A000265 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270157.P3437869184952881055

/-!
# A270158: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 99", based on the 5-celled von Neumann neighborhood.

The programs for A270158, there is no canonical definition to state claims against.
-/

/-! ## A270158.P18050417217766962510

`∑[A270156(n)]`
-/

namespace A270158.P18050417217766962510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270156 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270158.P18050417217766962510

/-! ## A270158.P4782067502450244368

`∑[∑[A270159(abs(1-n))]+1]`
-/

namespace A270158.P4782067502450244368
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270159 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270158.P4782067502450244368

/-! ## A270158.P4205114546664678242

`∑[A270159(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A270158.P4205114546664678242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A270159 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270158.P4205114546664678242

/-! ## A270158.P866391292889811055

`A270156(n)+a(A023444(n+1))` with `a(0)=1`
-/

namespace A270158.P866391292889811055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270156 n + a (A023444 (n + 1)).toNat

end

end A270158.P866391292889811055

/-! ## A270158.P16265998019163687018

`A270156(n%A270156(n))+a(n-1)` with `a(0)=1`
-/

namespace A270158.P16265998019163687018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270156 (Int.tmod (n : ℤ) (A270156 n)).toNat + a (n - 1)

end

end A270158.P16265998019163687018

/-! ## A270158.P16872890373587342831

`A270156(gcd(n, A059672(n)))+a(n-1)` with `a(0)=1`
-/

namespace A270158.P16872890373587342831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270156 (Int.gcd (n : ℤ) (A059672 n)) + a (n - 1)

end

end A270158.P16872890373587342831

/-! ## A270158.P7069300987885125094

`a(n-1)+A270156(n)+A000038(A301062(n+6))` with `a(0)=1`
-/

namespace A270158.P7069300987885125094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A270156 n + A000038 (A301062 (n + 6)).toNat)

end

end A270158.P7069300987885125094

/-!
# A270159: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 99", based on the 5-celled von Neumann neighborhood.

The programs for A270159, there is no canonical definition to state claims against.
-/

/-! ## A270159.P5441745225581756692

`Δ[A270156(n)]`
-/

namespace A270159.P5441745225581756692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270156 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270159.P5441745225581756692

/-! ## A270159.P13699355500223706619

`A270156(n+1)-A270156(n)`
-/

namespace A270159.P13699355500223706619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270156 (n + 1) - A270156 n

end

end A270159.P13699355500223706619

/-! ## A270159.P7383479938979757910

`Δ[A270158(n)]-A270164(A001222(5^n))`
-/

namespace A270159.P7383479938979757910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270158 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A270164 (A001222 (5 ^ n)).toNat

end

end A270159.P7383479938979757910

/-!
# A270160: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 105", based on the 5-celled von Neumann neighborhood.

The programs for A270160, there is no canonical definition to state claims against.
-/

/-! ## A270160.P16695834192981531805

`A270163(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A270160.P16695834192981531805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270163 (n - 1) + a (n - 1)

end

end A270160.P16695834192981531805

/-! ## A270160.P9998534792786675349

`∑[A270163((n-1)%a(n-1))]` with `a(0)=1`
-/

namespace A270160.P9998534792786675349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A270163 (Int.tmod ((n : ℤ) - 1) (f1 (n - 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270160.P9998534792786675349

/-! ## A270160.P16371394967809084861

`Δ[A270162(n)]-A270163(n)`
-/

namespace A270160.P16371394967809084861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270162 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A270163 n

end

end A270160.P16371394967809084861

/-! ## A270160.P4465449850794225596

`A270163(A065033(2*n)-1)-floor(-a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A270160.P4465449850794225596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270163 (A065033 (2 * n) - 1).toNat - (-a (n - 1))

end

end A270160.P4465449850794225596

/-! ## A270160.P6004304364706381357

`A270162(n+1)-(A270163(n)+A270162(n))`
-/

namespace A270160.P6004304364706381357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270162 (n + 1) - (A270163 n + A270162 n)

end

end A270160.P6004304364706381357

/-!
# A270161: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 105", based on the 5-celled von Neumann neighborhood.

The programs for A270161, there is no canonical definition to state claims against.
-/

/-! ## A270161.P18253149376052876339

`A270160(2^n-1)`
-/

namespace A270161.P18253149376052876339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270160 (2 ^ n - 1)

end

end A270161.P18253149376052876339

/-! ## A270161.P7462961730751254713

`record[A270160(A006068(n))]`
-/

namespace A270161.P7462961730751254713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270160 (A006068 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270161.P7462961730751254713

/-! ## A270161.P3457262678316833036

`record[A270160(A255067(n))]`
-/

namespace A270161.P3457262678316833036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270160 (A255067 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270161.P3457262678316833036

/-! ## A270161.P17229461833415483666

`record[A270160(A243071(n+1))]`
-/

namespace A270161.P17229461833415483666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270160 (A243071 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270161.P17229461833415483666

/-! ## A270161.P10984035631317240129

`and(log2(1/2), A270160(A000225(n)))`
-/

namespace A270161.P10984035631317240129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway (Real.logb 2 ((1 : ℚ) / 2 : ℝ))) (A270160 (A000225 n).toNat)

end

end A270161.P10984035631317240129

/-!
# A270162: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 105", based on the 5-celled von Neumann neighborhood.

The programs for A270162, there is no canonical definition to state claims against.
-/

/-! ## A270162.P7729132823163609132

`∑[A270163(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A270162.P7729132823163609132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A270163 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270162.P7729132823163609132

/-! ## A270162.P2615078653804261867

`∑[∑[A270163(n)]+1-A270163(n)]`
-/

namespace A270162.P2615078653804261867
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270163 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A270163 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270162.P2615078653804261867

/-! ## A270162.P9977554139227490171

`A270160(n-1)+A270163(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A270162.P9977554139227490171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270160 (n - 1) + (A270163 (n - 1) + a (n - 1))

end

end A270162.P9977554139227490171

/-! ## A270162.P5523865015459022976

`∑[A270160(n)]`
-/

namespace A270162.P5523865015459022976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270160 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270162.P5523865015459022976

/-! ## A270162.P2438903580628476774

`a(n-1)+A270160(n)+A000038(n)` with `a(0)=1`
-/

namespace A270162.P2438903580628476774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A270160 n + A000038 n)

end

end A270162.P2438903580628476774

/-! ## A270162.P17099425001312317183

`a(-A024000(n))-A001489(A270160(n))` with `a(0)=1`
-/

namespace A270162.P17099425001312317183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (-A024000 n).toNat - A001489 (A270160 n).toNat

end

end A270162.P17099425001312317183

/-!
# A270163: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 105", based on the 5-celled von Neumann neighborhood.

The programs for A270163, there is no canonical definition to state claims against.
-/

/-! ## A270163.P3138517987676143710

`Δ[A270160(n)]`
-/

namespace A270163.P3138517987676143710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270160 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270163.P3138517987676143710

/-! ## A270163.P12431974346000671475

`A270160(n+1)-A270160(n)`
-/

namespace A270163.P12431974346000671475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270160 (n + 1) - A270160 n

end

end A270163.P12431974346000671475

/-! ## A270163.P17457388520594775960

`Δ[A271414(n)-A184955(2*n+1)]`
-/

namespace A270163.P17457388520594775960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271414 n - A184955 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270163.P17457388520594775960

/-!
# A270164: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 107", based on the 5-celled von Neumann neighborhood.

The programs for A270164, there is no canonical definition to state claims against.
-/

/-! ## A270164.P1337279136946343162

`A270167(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A270164.P1337279136946343162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270167 (n - 1) + a (n - 1)

end

end A270164.P1337279136946343162

/-! ## A270164.P10933857326586946008

`Δ[A270166(n)]-A270167(n)`
-/

namespace A270164.P10933857326586946008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270166 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A270167 n

end

end A270164.P10933857326586946008

/-! ## A270164.P3226052769855356861

`A270166(n+1)-(A270167(n)+A270166(n))`
-/

namespace A270164.P3226052769855356861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270166 (n + 1) - (A270167 n + A270166 n)

end

end A270164.P3226052769855356861

/-!
# A270165: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 107", based on the 5-celled von Neumann neighborhood.

The programs for A270165, there is no canonical definition to state claims against.
-/

/-! ## A270165.P4239429601976697561

`A270164(2^n-1)`
-/

namespace A270165.P4239429601976697561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270164 (2 ^ n - 1)

end

end A270165.P4239429601976697561

/-! ## A270165.P6809366406002844815

`record[A270164(A173787(n))]`
-/

namespace A270165.P6809366406002844815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270164 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270165.P6809366406002844815

/-! ## A270165.P12202332025143034414

`record[A270164(A227351(n))]`
-/

namespace A270165.P12202332025143034414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270164 (A227351 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270165.P12202332025143034414

/-! ## A270165.P7196992935832345168

`record[A270164(A255067(n))]`
-/

namespace A270165.P7196992935832345168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270164 (A255067 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270165.P7196992935832345168

/-! ## A270165.P947654041378457041

`record[A270164(A303763(n))]`
-/

namespace A270165.P947654041378457041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270164 (A303763 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270165.P947654041378457041

/-!
# A270166: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 107", based on the 5-celled von Neumann neighborhood.

The programs for A270166, there is no canonical definition to state claims against.
-/

/-! ## A270166.P11257026795482382201

`∑[A270167(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A270166.P11257026795482382201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A270167 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270166.P11257026795482382201

/-! ## A270166.P11209749907362609414

`∑[A270164(n)]`
-/

namespace A270166.P11209749907362609414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270164 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270166.P11209749907362609414

/-! ## A270166.P12795661051419275241

`A270164(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A270166.P12795661051419275241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270164 n + a (A023443 n).toNat

end

end A270166.P12795661051419275241

/-! ## A270166.P4601096727995925425

`A270164(n)+a(abs(A024000(n)))` with `a(0)=1`
-/

namespace A270166.P4601096727995925425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270164 n + a |A024000 n|.toNat

end

end A270166.P4601096727995925425

/-! ## A270166.P11258376396483137347

`a(n-1)+A270164(n)%A112524(n+1)` with `a(0)=1`
-/

namespace A270166.P11258376396483137347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A270164 n) (A112524 (n + 1))

end

end A270166.P11258376396483137347

/-! ## A270166.P14340538330124509004

`a(n-1)+A270164(n)+A008683(4*(n+1))` with `a(0)=1`
-/

namespace A270166.P14340538330124509004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A270164 n + A008683 (4 * (n + 1)))

end

end A270166.P14340538330124509004

/-! ## A270166.P4441827191821659923

`a(n-1)+A001222(A260218(n+1))*A270164(n)` with `a(0)=1`
-/

namespace A270166.P4441827191821659923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A001222 (A260218 (n + 1)).toNat * A270164 n

end

end A270166.P4441827191821659923

/-! ## A270166.P3744075290209087138

`a(n-1)-A081729(A079780(n+1))*A270164(n)` with `a(0)=1`
-/

namespace A270166.P3744075290209087138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - A081729 (A079780 (n + 1)).toNat * A270164 n

end

end A270166.P3744075290209087138

/-!
# A270167: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 107", based on the 5-celled von Neumann neighborhood.

The programs for A270167, there is no canonical definition to state claims against.
-/

/-! ## A270167.P9969613438452897194

`Δ[A270164(n)]`
-/

namespace A270167.P9969613438452897194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270164 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270167.P9969613438452897194

/-! ## A270167.P2836653972073775787

`A270164(n+1)-A270164(n)`
-/

namespace A270167.P2836653972073775787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270164 (n + 1) - A270164 n

end

end A270167.P2836653972073775787

/-!
# A270168: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 110", based on the 5-celled von Neumann neighborhood.

The programs for A270168, there is no canonical definition to state claims against.
-/

/-! ## A270168.P14776309138869037376

`A270171(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A270168.P14776309138869037376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270171 (n - 1) + a (n - 1)

end

end A270168.P14776309138869037376

/-! ## A270168.P3948491064097654266

`Δ[A270170(n)]-A270171(n)`
-/

namespace A270168.P3948491064097654266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270170 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A270171 n

end

end A270168.P3948491064097654266

/-! ## A270168.P10168251851897168784

`A270170(n+1)-(A270171(n)+A270170(n))`
-/

namespace A270168.P10168251851897168784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270170 (n + 1) - (A270171 n + A270170 n)

end

end A270168.P10168251851897168784

/-! ## A270168.P4687266463791937618

`A270170(A000027(n+1))%(A270171(n)+A270170(n))`
-/

namespace A270168.P4687266463791937618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A270170 (A000027 (n + 1)).toNat) (A270171 n + A270170 n)

end

end A270168.P4687266463791937618

/-! ## A270168.P10678318335218972503

`and(A270984(n), A301374(A146451(n+1)))`
-/

namespace A270168.P10678318335218972503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A270984 n) (A301374 (A146451 (n + 1)).toNat)

end

end A270168.P10678318335218972503

/-!
# A270169: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 110", based on the 5-celled von Neumann neighborhood.

The programs for A270169, there is no canonical definition to state claims against.
-/

/-! ## A270169.P2225352040045153618

`A270168(2^n-1)`
-/

namespace A270169.P2225352040045153618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270168 (2 ^ n - 1)

end

end A270169.P2225352040045153618

/-! ## A270169.P13736680664244140284

`record[A270168(A006068(n))]`
-/

namespace A270169.P13736680664244140284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270168 (A006068 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270169.P13736680664244140284

/-! ## A270169.P16635053675256552923

`record[A270168(A038573(n))]`
-/

namespace A270169.P16635053675256552923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270168 (A038573 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270169.P16635053675256552923

/-! ## A270169.P1317966962211800819

`and(-1, A270168(A000225(n)))`
-/

namespace A270169.P1317966962211800819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A270168 (A000225 n).toNat)

end

end A270169.P1317966962211800819

/-! ## A270169.P9090321254585531354

`record[A270168(A252756(n+1))]`
-/

namespace A270169.P9090321254585531354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270168 (A252756 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270169.P9090321254585531354

/-!
# A270170: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 110", based on the 5-celled von Neumann neighborhood.

The programs for A270170, there is no canonical definition to state claims against.
-/

/-! ## A270170.P14315831420651060051

`∑[A270168(n)]`
-/

namespace A270170.P14315831420651060051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270168 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270170.P14315831420651060051

/-! ## A270170.P13287215167074232397

`A270168(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A270170.P13287215167074232397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270168 n + a (A023443 n).toNat

end

end A270170.P13287215167074232397

/-! ## A270170.P14843136925173337503

`a(n-1)+A270168(n)+A000007(n)` with `a(0)=1`
-/

namespace A270170.P14843136925173337503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A270168 n + A000007 n)

end

end A270170.P14843136925173337503

/-! ## A270170.P2516738611963447284

`a(n-1)+A270168(n)+A000038(n)` with `a(0)=1`
-/

namespace A270170.P2516738611963447284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A270168 n + A000038 n)

end

end A270170.P2516738611963447284

/-! ## A270170.P2150021591924502751

`A270168(A019590(n+2)+n)+a(n-1)` with `a(0)=1`
-/

namespace A270170.P2150021591924502751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270168 (A019590 (n + 2) + (n : ℤ)).toNat + a (n - 1)

end

end A270170.P2150021591924502751

/-!
# A270171: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 110", based on the 5-celled von Neumann neighborhood.

The programs for A270171, there is no canonical definition to state claims against.
-/

/-! ## A270171.P5419465470538966645

`Δ[A270168(n)]`
-/

namespace A270171.P5419465470538966645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270168 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270171.P5419465470538966645

/-! ## A270171.P2831892754078078344

`A270168(n+1)-A270168(n)`
-/

namespace A270171.P2831892754078078344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270168 (n + 1) - A270168 n

end

end A270171.P2831892754078078344

/-!
# A270172: Number of steps required to reach a single-digit number when successively increasing all digits of n by 1 simultaneously and removing leading zeros (9 becomes 0).

The programs for A270172, there is no canonical definition to state claims against.
-/

/-! ## A270172.P12811125343085926511

`A269667(floor(n/10))`
-/

namespace A270172.P12811125343085926511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269667 ⌊(n : ℚ) / 10⌋.toNat

end

end A270172.P12811125343085926511

/-! ## A270172.P10165687237473758433

`A269667(A059995(n))%97`
-/

namespace A270172.P10165687237473758433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269667 (A059995 n).toNat) 97

end

end A270172.P10165687237473758433

/-! ## A270172.P6245583829053756360

`A185117(n)*A269667(A059995(n))`
-/

namespace A270172.P6245583829053756360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185117 n * A269667 (A059995 n).toNat

end

end A270172.P6245583829053756360

/-! ## A270172.P12744090578434594670

`and(A057428(n), A269667(A059995(n)))`
-/

namespace A270172.P12744090578434594670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A269667 (A059995 n).toNat)

end

end A270172.P12744090578434594670

/-! ## A270172.P7358423276964085004

`lcm(A008836(n+1), A269667(A059995(n)))`
-/

namespace A270172.P7358423276964085004
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (n + 1)) (A269667 (A059995 n).toNat)

end

end A270172.P7358423276964085004

/-! ## A270172.P627185899583415915

`A000005(C(2, n)+1)*A269667(A059995(n))`
-/

namespace A270172.P627185899583415915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.choose 2 n + 1) * A269667 (A059995 n).toNat

end

end A270172.P627185899583415915

/-! ## A270172.P17263286249462139343

`A000108(C(n, n²)!)*A269667(A059995(n))`
-/

namespace A270172.P17263286249462139343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.factorial (Nat.choose n (n ^ 2))) * A269667 (A059995 n).toNat

end

end A270172.P17263286249462139343

/-! ## A270172.P9401655091297395743

`A093178(A266303(n))*A269667(A059995(n))`
-/

namespace A270172.P9401655091297395743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A266303 n).toNat * A269667 (A059995 n).toNat

end

end A270172.P9401655091297395743

/-! ## A270172.P4823355094784207228

`(A269667(A059995(n))^(A048671(A000040(n+1))/2))²`
-/

namespace A270172.P4823355094784207228
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A269667 (A059995 n).toNat : ℝ) ^ ((A048671 (A000040 (n + 1)).toNat : ℚ) / 2 : ℝ)) ^ 2

end

end A270172.P4823355094784207228

/-! ## A270172.P3355351244915909773

`A111707(A045918(n)-A007953(n))`
-/

namespace A270172.P3355351244915909773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111707 (A045918 n - A007953 n).toNat

end

end A270172.P3355351244915909773

/-! ## A270172.P12450060565649013889

`∑{digits}[A054899(A118759(n)), A055120(#)]`
-/

namespace A270172.P12450060565649013889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (A118759 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A055120 x).sum

end

end A270172.P12450060565649013889

/-! ## A270172.P1821702249652879791

`A133880(A096582(n+2))`
-/

namespace A270172.P1821702249652879791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133880 (A096582 (n + 2)).toNat

end

end A270172.P1821702249652879791

/-! ## A270172.P4343763823972282422

`A066568(A051022(n))%10`
-/

namespace A270172.P4343763823972282422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066568 (A051022 n).toNat) 10

end

end A270172.P4343763823972282422

/-! ## A270172.P10899496111526860928

`floor(A037213(A055120(n)²)/10)`
-/

namespace A270172.P10899496111526860928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A037213 (A055120 n ^ 2).toNat : ℚ) / 10⌋

end

end A270172.P10899496111526860928

/-! ## A270172.P4298080407141840660

`A059995(A037213(A055120(n)²))`
-/

namespace A270172.P4298080407141840660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A037213 (A055120 n ^ 2).toNat).toNat

end

end A270172.P4298080407141840660

/-!
# A270173: Smallest number k such that A270172(k) = n.

The programs for A270173, there is no canonical definition to state claims against.
-/

/-! ## A270173.P16229452343647557785

`10*A269667(A087051(n))`
-/

namespace A270173.P16229452343647557785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A269667 (A087051 n).toNat

end

end A270173.P16229452343647557785

/-! ## A270173.P15855500086746332300

`10*A269667(A351870(n))`
-/

namespace A270173.P15855500086746332300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A269667 (A351870 n).toNat

end

end A270173.P15855500086746332300

/-!
# A270174: a(n) is the number of different ways to seat a set of n married male-female couples at a straight table so that men and women alternate and every man is separated by at least two men from his wife.

The programs for A270174, there is no canonical definition to state claims against.
-/

/-! ## A270174.P17803951559467747402

`2*(n+1)!*A292574(n+1)`
-/

namespace A270174.P17803951559467747402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.factorial (n + 1) : ℤ) * A292574 (n + 1)

end

end A270174.P17803951559467747402

/-! ## A270174.P615804137570633309

`A005843(A129655(n+1))*A292574(n+1)`
-/

namespace A270174.P615804137570633309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A129655 (n + 1)).toNat * A292574 (n + 1)

end

end A270174.P615804137570633309

/-!
# A270175: Cinehps numbers: sphenic numbers whose reversal is a different sphenic number.

The programs for A270175, there is no canonical definition to state claims against.
-/

/-! ## A270175.P13266715502056013459

`∩[A007304(n+1), A068893(n+1)]`
-/

namespace A270175.P13266715502056013459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270175.P13266715502056013459

/-! ## A270175.P4580268923878734959

`∩[A077337(n+1), A109023(n+1)]`
-/

namespace A270175.P4580268923878734959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109023 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270175.P4580268923878734959

/-!
# A270177: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 113", based on the 5-celled von Neumann neighborhood.

The programs for A270177, there is no canonical definition to state claims against.
-/

/-! ## A270177.P16286730331999738571

`∑[A270180(abs(1-n))]-4`
-/

namespace A270177.P16286730331999738571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270180 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 4

end

end A270177.P16286730331999738571

/-! ## A270177.P13150785361473656220

`A270180(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A270177.P13150785361473656220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270180 (n - 1) + a (n - 1)

end

end A270177.P13150785361473656220

/-! ## A270177.P9104383418984026097

`Δ[A270179(n)]-A270180(n)`
-/

namespace A270177.P9104383418984026097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270179 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A270180 n

end

end A270177.P9104383418984026097

/-! ## A270177.P8067634356181679203

`A270179(n+1)-(A270180(n)+A270179(n))`
-/

namespace A270177.P8067634356181679203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270179 (n + 1) - (A270180 n + A270179 n)

end

end A270177.P8067634356181679203

/-! ## A270177.P2302549862151896744

`A270180(n-1)--a(n-1)%A000244(n)` with `a(0)=1`
-/

namespace A270177.P2302549862151896744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270180 (n - 1) - Int.tmod (-a (n - 1)) (A000244 n)

end

end A270177.P2302549862151896744

/-!
# A270178: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 113", based on the 5-celled von Neumann neighborhood.

The programs for A270178, there is no canonical definition to state claims against.
-/

/-! ## A270178.P11445054879266975643

`A270177(2^n-1)`
-/

namespace A270178.P11445054879266975643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270177 (2 ^ n - 1)

end

end A270178.P11445054879266975643

/-! ## A270178.P6690931300548680773

`record[A270177(A243071(n+1))]`
-/

namespace A270178.P6690931300548680773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270177 (A243071 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270178.P6690931300548680773

/-! ## A270178.P9716267322584375309

`record[A270177(A323243(n+1))]`
-/

namespace A270178.P9716267322584375309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270177 (A323243 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270178.P9716267322584375309

/-! ## A270178.P8869034657865818629

`record[A270177(A324865(n+1))]`
-/

namespace A270178.P8869034657865818629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270177 (A324865 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270178.P8869034657865818629

/-! ## A270178.P14413379691278286523

`record[A270177(A059268(n)-1)]`
-/

namespace A270178.P14413379691278286523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270177 (A059268 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270178.P14413379691278286523

/-!
# A270179: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 113", based on the 5-celled von Neumann neighborhood.

The programs for A270179, there is no canonical definition to state claims against.
-/

/-! ## A270179.P16901717243547155441

`∑[A270177(n)]`
-/

namespace A270179.P16901717243547155441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270177 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270179.P16901717243547155441

/-! ## A270179.P10033681627117156206

`∑[∑[A270180(abs(1-n))]-4]`
-/

namespace A270179.P10033681627117156206
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270180 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270179.P10033681627117156206

/-! ## A270179.P14054038429922103955

`∑[A270180(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A270179.P14054038429922103955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A270180 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270179.P14054038429922103955

/-! ## A270179.P17868557447032983949

`A270177(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A270179.P17868557447032983949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270177 n + a (A023443 n).toNat

end

end A270179.P17868557447032983949

/-! ## A270179.P5784155298490671465

`A270177(n)+a(log2(A011782(n)))` with `a(0)=1`
-/

namespace A270179.P5784155298490671465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270177 n + a (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A270179.P5784155298490671465

/-! ## A270179.P1811392789383704702

`a(n-1)+A014963(42*(n+1))*A270177(n)` with `a(0)=1`
-/

namespace A270179.P1811392789383704702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A014963 (42 * (n + 1)) * A270177 n

end

end A270179.P1811392789383704702

/-! ## A270179.P5416474411124176520

`a(n-1)+A270177(n)%A028402(n+2)` with `a(0)=1`
-/

namespace A270179.P5416474411124176520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A270177 n) (A028402 (n + 2))

end

end A270179.P5416474411124176520

/-!
# A270180: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 113", based on the 5-celled von Neumann neighborhood.

The programs for A270180, there is no canonical definition to state claims against.
-/

/-! ## A270180.P3218012825080992966

`Δ[A270177(n)]`
-/

namespace A270180.P3218012825080992966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270177 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270180.P3218012825080992966

/-! ## A270180.P10590583944464156162

`A270177(n+1)-A270177(n)`
-/

namespace A270180.P10590583944464156162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270177 (n + 1) - A270177 n

end

end A270180.P10590583944464156162

/-!
# A270181: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 115", based on the 5-celled von Neumann neighborhood.

The programs for A270181, there is no canonical definition to state claims against.
-/

/-! ## A270181.P6917687687145492055

`∑[A270184(abs(1-n))]+1`
-/

namespace A270181.P6917687687145492055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270184 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A270181.P6917687687145492055

/-! ## A270181.P3242960754393219711

`A270184(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A270181.P3242960754393219711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270184 (n - 1) + a (n - 1)

end

end A270181.P3242960754393219711

/-! ## A270181.P8102218907974418482

`Δ[A270183(n)]-A270184(n)`
-/

namespace A270181.P8102218907974418482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270183 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A270184 n

end

end A270181.P8102218907974418482

/-! ## A270181.P17358703024213667600

`A270183(n+1)-(A270184(n)+A270183(n))`
-/

namespace A270181.P17358703024213667600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270183 (n + 1) - (A270184 n + A270183 n)

end

end A270181.P17358703024213667600

/-! ## A270181.P661086775341716198

`A033999(n)²+∑[A270184(n)]-A270184(n)`
-/

namespace A270181.P661086775341716198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270184 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 + (∑ j ∈ Finset.range (n + 1), f1 j - A270184 n)

end

end A270181.P661086775341716198

/-! ## A270181.P7737226105261768909

`A000027(∑[A270184(n)]-A270184(n)+1)`
-/

namespace A270181.P7737226105261768909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270184 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j - A270184 n + 1).toNat

end

end A270181.P7737226105261768909

/-! ## A270181.P14516692962792838388

`A098181(∑[A270184(n)]-A270184(n))`
-/

namespace A270181.P14516692962792838388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270184 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098181 (∑ j ∈ Finset.range (n + 1), f1 j - A270184 n).toNat

end

end A270181.P14516692962792838388

/-! ## A270181.P10918482484537605978

`2-A024000(∑[A270184(n)]-A270184(n))`
-/

namespace A270181.P10918482484537605978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270184 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A024000 (∑ j ∈ Finset.range (n + 1), f1 j - A270184 n).toNat

end

end A270181.P10918482484537605978

/-!
# A270182: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 115", based on the 5-celled von Neumann neighborhood.

The programs for A270182, there is no canonical definition to state claims against.
-/

/-! ## A270182.P8230836686010563733

`A270181(2^n-1)`
-/

namespace A270182.P8230836686010563733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270181 (2 ^ n - 1)

end

end A270182.P8230836686010563733

/-! ## A270182.P9063040383838640983

`record[A270181(A227351(n))]`
-/

namespace A270182.P9063040383838640983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270181 (A227351 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270182.P9063040383838640983

/-! ## A270182.P15260107180089144258

`record[A270181(A255067(n))]`
-/

namespace A270182.P15260107180089144258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270181 (A255067 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270182.P15260107180089144258

/-! ## A270182.P12641747882854736256

`or(1, A270181(A000225(n)))`
-/

namespace A270182.P12641747882854736256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A270181 (A000225 n).toNat)

end

end A270182.P12641747882854736256

/-! ## A270182.P15281283200004519906

`record[A270181(A023758(n+1))]`
-/

namespace A270182.P15281283200004519906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270181 (A023758 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270182.P15281283200004519906

/-!
# A270183: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 115", based on the 5-celled von Neumann neighborhood.

The programs for A270183, there is no canonical definition to state claims against.
-/

/-! ## A270183.P13638831495055431910

`∑[∑[A270184(abs(1-n))]+1]`
-/

namespace A270183.P13638831495055431910
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270184 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270183.P13638831495055431910

/-! ## A270183.P9443383960009609731

`∑[∑[A270184(n)]-A270184(n)+1]`
-/

namespace A270183.P9443383960009609731
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270184 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A270184 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270183.P9443383960009609731

/-! ## A270183.P7637113363383076024

`∑[A270181(n)]`
-/

namespace A270183.P7637113363383076024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270181 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270183.P7637113363383076024

/-! ## A270183.P14207306435000792072

`A270181(n)+a(abs(A024000(n)))` with `a(0)=1`
-/

namespace A270183.P14207306435000792072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270181 n + a |A024000 n|.toNat

end

end A270183.P14207306435000792072

/-! ## A270183.P3762592106182771794

`a(n-1)+A270181(n)%A041045(n+2)` with `a(0)=1`
-/

namespace A270183.P3762592106182771794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A270181 n) (A041045 (n + 2))

end

end A270183.P3762592106182771794

/-!
# A270184: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 115", based on the 5-celled von Neumann neighborhood.

The programs for A270184, there is no canonical definition to state claims against.
-/

/-! ## A270184.P12401874697468404669

`Δ[A270181(n)]`
-/

namespace A270184.P12401874697468404669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270181 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270184.P12401874697468404669

/-! ## A270184.P12781612652999914208

`A270181(n+1)-A270181(n)`
-/

namespace A270184.P12781612652999914208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270181 (n + 1) - A270181 n

end

end A270184.P12781612652999914208

/-! ## A270184.P13108744161475162509

`Δ[A270210(n)%A019285(n+1)]`
-/

namespace A270184.P13108744161475162509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A270210 n) (A019285 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270184.P13108744161475162509

/-! ## A270184.P2730840617456040232

`A270213(n)%A255411(A027602(n))`
-/

namespace A270184.P2730840617456040232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A270213 n) (A255411 (A027602 n).toNat)

end

end A270184.P2730840617456040232

/-! ## A270184.P9730974392301450887

`Δ[A270210(n)]%A255411(A027602(n))`
-/

namespace A270184.P9730974392301450887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270210 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A255411 (A027602 n).toNat)

end

end A270184.P9730974392301450887

/-!
# A270185: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 118", based on the 5-celled von Neumann neighborhood.

The programs for A270185, there is no canonical definition to state claims against.
-/

/-! ## A270185.P11046381756181624490

`A270188(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A270185.P11046381756181624490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270188 (n - 1) + a (n - 1)

end

end A270185.P11046381756181624490

/-! ## A270185.P5726070062689065554

`∑[A270188(n)]+1-A270188(n)`
-/

namespace A270185.P5726070062689065554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270188 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A270188 n)

end

end A270185.P5726070062689065554

/-! ## A270185.P12675784815404996730

`Δ[A270187(n)]-A270188(n)`
-/

namespace A270185.P12675784815404996730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A270188 n

end

end A270185.P12675784815404996730

/-! ## A270185.P10505371215752533943

`A270187(n+1)-(A270188(n)+A270187(n))`
-/

namespace A270185.P10505371215752533943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270187 (n + 1) - (A270188 n + A270187 n)

end

end A270185.P10505371215752533943

/-! ## A270185.P11972857611786698653

`A098181(∑[A270188(n)]-A270188(n))`
-/

namespace A270185.P11972857611786698653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270188 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098181 (∑ j ∈ Finset.range (n + 1), f1 j - A270188 n).toNat

end

end A270185.P11972857611786698653

/-! ## A270185.P16953959710253526057

`A008619(2*(∑[A270188(n)]-A270188(n)))`
-/

namespace A270185.P16953959710253526057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270188 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * (∑ j ∈ Finset.range (n + 1), f1 j - A270188 n)).toNat

end

end A270185.P16953959710253526057

/-! ## A270185.P14478484896087490767

`A028242(2*(∑[A270188(n)]-A270188(n)))`
-/

namespace A270185.P14478484896087490767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270188 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * (∑ j ∈ Finset.range (n + 1), f1 j - A270188 n)).toNat

end

end A270185.P14478484896087490767

/-!
# A270186: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 118", based on the 5-celled von Neumann neighborhood.

The programs for A270186, there is no canonical definition to state claims against.
-/

/-! ## A270186.P10140761350586543515

`A270185(2^n-1)`
-/

namespace A270186.P10140761350586543515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270185 (2 ^ n - 1)

end

end A270186.P10140761350586543515

/-! ## A270186.P4496081063222219916

`and(-3, A270185(A000225(n)))`
-/

namespace A270186.P4496081063222219916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A270185 (A000225 n).toNat)

end

end A270186.P4496081063222219916

/-! ## A270186.P10831673445872684508

`record[A270185(A243071(n+1))]`
-/

namespace A270186.P10831673445872684508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270185 (A243071 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270186.P10831673445872684508

/-! ## A270186.P15558870451569872373

`record[A270185(A243354(n+1))]`
-/

namespace A270186.P15558870451569872373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270185 (A243354 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270186.P15558870451569872373

/-! ## A270186.P11750859443770629430

`record[A270185(A253564(n+1))]`
-/

namespace A270186.P11750859443770629430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270185 (A253564 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270186.P11750859443770629430

/-!
# A270187: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 118", based on the 5-celled von Neumann neighborhood.

The programs for A270187, there is no canonical definition to state claims against.
-/

/-! ## A270187.P16445065507312695884

`∑[A270185(n)]`
-/

namespace A270187.P16445065507312695884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270185 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270187.P16445065507312695884

/-! ## A270187.P16411536644534936554

`∑[∑[A270188(n)]+1-A270188(n)]`
-/

namespace A270187.P16411536644534936554
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270188 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A270188 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270187.P16411536644534936554

/-! ## A270187.P390638415261279659

`A270185(n)+a(n-(A000007(n)+1))` with `a(0)=1`
-/

namespace A270187.P390638415261279659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270185 n + a ((n : ℤ) - (A000007 n + 1)).toNat

end

end A270187.P390638415261279659

/-! ## A270187.P2038060707604073374

`a(n-1)+A270185(n)+A000038(n)` with `a(0)=1`
-/

namespace A270187.P2038060707604073374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A270185 n + A000038 n)

end

end A270187.P2038060707604073374

/-! ## A270187.P18073735786645465779

`A270185(n%A270185(n))+a(n-1)` with `a(0)=1`
-/

namespace A270187.P18073735786645465779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270185 (Int.tmod (n : ℤ) (A270185 n)).toNat + a (n - 1)

end

end A270187.P18073735786645465779

/-! ## A270187.P6713133118535844971

`∑[A098181(∑[A270188(n)]-A270188(n))]`
-/

namespace A270187.P6713133118535844971
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270188 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098181 (∑ j ∈ Finset.range (n + 1), f2 j - A270188 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270187.P6713133118535844971

/-! ## A270187.P765478603557653934

`∑[A008619(2*(∑[A270188(n)]-A270188(n)))]`
-/

namespace A270187.P765478603557653934
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270188 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * (∑ j ∈ Finset.range (n + 1), f2 j - A270188 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270187.P765478603557653934

/-! ## A270187.P5447437094222040566

`∑[A028242(2*(∑[A270188(n)]-A270188(n)))]`
-/

namespace A270187.P5447437094222040566
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270188 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * (∑ j ∈ Finset.range (n + 1), f2 j - A270188 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270187.P5447437094222040566

/-!
# A270188: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 118", based on the 5-celled von Neumann neighborhood.

The programs for A270188, there is no canonical definition to state claims against.
-/

/-! ## A270188.P5854520438132902547

`Δ[A270185(n)]`
-/

namespace A270188.P5854520438132902547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270185 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270188.P5854520438132902547

/-! ## A270188.P14454357220165517056

`A270185(n+1)-A270185(n)`
-/

namespace A270188.P14454357220165517056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270185 (n + 1) - A270185 n

end

end A270188.P14454357220165517056

/-! ## A270188.P3063111431710078847

`A270185(n+1)+A001489(A270185(n)+1)+1`
-/

namespace A270188.P3063111431710078847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270185 (n + 1) + (A001489 (A270185 n + 1).toNat + 1)

end

end A270188.P3063111431710078847

/-!
# A270189: Numbers n for which (prime(n+1)-prime(n)) is not a multiple of three.

The programs for A270189, the canonical program `A270189.P472065122293905227` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270189 has offset 1).

The definition of A270189 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A270189.P747475081480298777

`∑[A288915(n+1)]`
-/

namespace A270189.P747475081480298777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288915 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270189.P747475081480298777

namespace A270189

/-- `∑[A288915(n+1)]` -/
def P747475081480298777.Spec : Prop :=
  ∀ n, P747475081480298777.a n = A270189 (n + 1)

end A270189

/-! ## A270189.P11198842561500949672

`comp[A270190(n+1)-1]+1`
-/

namespace A270189.P11198842561500949672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270190 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A270189.P11198842561500949672

namespace A270189

/-- `comp[A270190(n+1)-1]+1` -/
def P11198842561500949672.Spec : Prop :=
  ∀ n, (P11198842561500949672.a n : ℤ) = A270189 (n + 1)

end A270189

/-! ## A270189.P472065122293905227

`lt[0, A001223(n+1)%3]+1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A270189

/-- `lt[0, A001223(n+1)%3]+1` -/
def P472065122293905227.Spec : Prop :=
  ∀ n, (P472065122293905227.a n : ℤ) = A270189 (n + 1)

theorem P472065122293905227.correct : P472065122293905227.Spec := by
  intro n
  simp only [A270189, Nat.add_sub_cancel]

end A270189

/-! ## A270189.P15970543594738422458

`eq[1, A038500(A001223(n+1))]+1`
-/

namespace A270189.P15970543594738422458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (A001223 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A270189.P15970543594738422458

namespace A270189

/-- `eq[1, A038500(A001223(n+1))]+1` -/
def P15970543594738422458.Spec : Prop :=
  ∀ n, (P15970543594738422458.a n : ℤ) = A270189 (n + 1)

end A270189

/-! ## A270189.P7156199185195094572

`∪[A270191(n+1), A270192(n+1)]`
-/

namespace A270189.P7156199185195094572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A270189.P7156199185195094572

namespace A270189

/-- `∪[A270191(n+1), A270192(n+1)]` -/
def P7156199185195094572.Spec : Prop :=
  ∀ n, (P7156199185195094572.a n : ℤ) = A270189 (n + 1)

end A270189

/-! ## A270189.P11966475448373594975

`record[A000027(n+1)/A038500(A001223(n+1))]`
-/

namespace A270189.P11966475448373594975
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A038500 (A001223 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270189.P11966475448373594975

namespace A270189

/-- `record[A000027(n+1)/A038500(A001223(n+1))]` -/
def P11966475448373594975.Spec : Prop :=
  ∀ n, P11966475448373594975.a n = (A270189 (n + 1) : ℚ)

end A270189

/-! ## A270189.P16927413061823391590

`lt[3, A023519(n+1)]`
-/

namespace A270189.P16927413061823391590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023519 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A270189.P16927413061823391590

namespace A270189

/-- `lt[3, A023519(n+1)]` -/
def P16927413061823391590.Spec : Prop :=
  ∀ n, (P16927413061823391590.a n : ℤ) = A270189 (n + 1)

end A270189

/-! ## A270189.P1109714724350684042

`eq[1, gcd(3, 1-A076368(n+1))]`
-/

namespace A270189.P1109714724350684042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (1 - A076368 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A270189.P1109714724350684042

namespace A270189

/-- `eq[1, gcd(3, 1-A076368(n+1))]` -/
def P1109714724350684042.Spec : Prop :=
  ∀ n, (P1109714724350684042.a n : ℤ) = A270189 (n + 1)

end A270189

/-! ## A270189.P5249197621892030723

`eq[1, A257075(A076368(n+1))]`
-/

namespace A270189.P5249197621892030723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257075 (A076368 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A270189.P5249197621892030723

namespace A270189

/-- `eq[1, A257075(A076368(n+1))]` -/
def P5249197621892030723.Spec : Prop :=
  ∀ n, (P5249197621892030723.a n : ℤ) = A270189 (n + 1)

end A270189

/-! ## A270189.P6775252367850962556

`lt[n*A079978(A054541(n+1)), n]`
-/

namespace A270189.P6775252367850962556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A079978 (A054541 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A270189.P6775252367850962556

namespace A270189

/-- `lt[n*A079978(A054541(n+1)), n]` -/
def P6775252367850962556.Spec : Prop :=
  ∀ n, (P6775252367850962556.a n : ℤ) = A270189 (n + 1)

end A270189

/-! ## A270189.P17072377063949259553

`lt[A099837(Δ[A000040(n+1)]), 2]+1`
-/

namespace A270189.P17072377063949259553
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099837 (f2 (n + 1) - f2 n).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A270189.P17072377063949259553

namespace A270189

/-- `lt[A099837(Δ[A000040(n+1)]), 2]+1` -/
def P17072377063949259553.Spec : Prop :=
  ∀ n, (P17072377063949259553.a n : ℤ) = A270189 (n + 1)

end A270189

/-! ## A270189.P3797837160948842886

`eq[1, A000037(A076368(n+1)²+1)%6]`
-/

namespace A270189.P3797837160948842886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000037 (A076368 (n + 1) ^ 2 + 1).toNat) 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A270189.P3797837160948842886

namespace A270189

/-- `eq[1, A000037(A076368(n+1)²+1)%6]` -/
def P3797837160948842886.Spec : Prop :=
  ∀ n, (P3797837160948842886.a n : ℤ) = A270189 (n + 1)

end A270189

/-! ## A270189.P2788744697598886300

`lt[2, A138187(Δ[A028815(n)]%(n+1)+1)]`
-/

namespace A270189.P2788744697598886300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138187 (Int.tmod (f3 (n + 1) - f3 n) (n + 1 : ℤ) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A270189.P2788744697598886300

namespace A270189

/-- `lt[2, A138187(Δ[A028815(n)]%(n+1)+1)]` -/
def P2788744697598886300.Spec : Prop :=
  ∀ n, (P2788744697598886300.a n : ℤ) = A270189 (n + 1)

end A270189

/-! ## A270189.P1634919633131155421

`eq[A057427(n), A080278(A054541(n+1))]`
-/

namespace A270189.P1634919633131155421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080278 (A054541 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A270189.P1634919633131155421

namespace A270189

/-- `eq[A057427(n), A080278(A054541(n+1))]` -/
def P1634919633131155421.Spec : Prop :=
  ∀ n, (P1634919633131155421.a n : ℤ) = A270189 (n + 1)

end A270189

/-!
# A270190: Numbers n for which prime(n+1)-prime(n) is a multiple of three.

The programs for A270190, the canonical program `A270190.P5937021515272501996` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270190 has offset 1).

The definition of A270190 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A269399, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A270190.P5937021515272501996

`A269399(n+1)+6`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A270190

/-- `A269399(n+1)+6` -/
def P5937021515272501996.Spec : Prop :=
  ∀ n, P5937021515272501996.a n = A270190 (n + 1)

theorem P5937021515272501996.correct : P5937021515272501996.Spec := by
  intro n
  simp only [A270190, Nat.add_sub_cancel]

end A270190

/-! ## A270190.P14992249913936121777

`lt[A001223(n+1)%3, 1]+1`
-/

namespace A270190.P14992249913936121777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001223 (n + 1)) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A270190.P14992249913936121777

namespace A270190

/-- `lt[A001223(n+1)%3, 1]+1` -/
def P14992249913936121777.Spec : Prop :=
  ∀ n, (P14992249913936121777.a n : ℤ) = A270190 (n + 1)

end A270190

/-! ## A270190.P4458802411140258932

`lt[A011655(A001223(n+1)), 1]+1`
-/

namespace A270190.P4458802411140258932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A001223 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A270190.P4458802411140258932

namespace A270190

/-- `lt[A011655(A001223(n+1)), 1]+1` -/
def P4458802411140258932.Spec : Prop :=
  ∀ n, (P4458802411140258932.a n : ℤ) = A270190 (n + 1)

end A270190

/-! ## A270190.P8216350569331402527

`A020715(A269399(n+1))`
-/

namespace A270190.P8216350569331402527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020715 (A269399 (n + 1)).toNat

end

end A270190.P8216350569331402527

namespace A270190

/-- `A020715(A269399(n+1))` -/
def P8216350569331402527.Spec : Prop :=
  ∀ n, P8216350569331402527.a n = A270190 (n + 1)

end A270190

/-! ## A270190.P14494111625643380150

`eq[3, A023519(n+1)]`
-/

namespace A270190.P14494111625643380150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023519 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A270190.P14494111625643380150

namespace A270190

/-- `eq[3, A023519(n+1)]` -/
def P14494111625643380150.Spec : Prop :=
  ∀ n, (P14494111625643380150.a n : ℤ) = A270190 (n + 1)

end A270190

/-! ## A270190.P14243238686234606688

`lt[A054541(n+1)%3, 1]`
-/

namespace A270190.P14243238686234606688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054541 (n + 1)) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A270190.P14243238686234606688

namespace A270190

/-- `lt[A054541(n+1)%3, 1]` -/
def P14243238686234606688.Spec : Prop :=
  ∀ n, (P14243238686234606688.a n : ℤ) = A270190 (n + 1)

end A270190

/-! ## A270190.P17717946990092705925

`eq[1, A006094(n+2)%3]+2`
-/

namespace A270190.P17717946990092705925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006094 (n + 2)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A270190.P17717946990092705925

namespace A270190

/-- `eq[1, A006094(n+2)%3]+2` -/
def P17717946990092705925.Spec : Prop :=
  ∀ n, (P17717946990092705925.a n : ℤ) = A270190 (n + 1)

end A270190

/-! ## A270190.P14296693917972425059

`eq[3, gcd(3, A028334(n+2))]+2`
-/

namespace A270190.P14296693917972425059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A028334 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A270190.P14296693917972425059

namespace A270190

/-- `eq[3, gcd(3, A028334(n+2))]+2` -/
def P14296693917972425059.Spec : Prop :=
  ∀ n, (P14296693917972425059.a n : ℤ) = A270190 (n + 1)

end A270190

/-! ## A270190.P7186861141691751311

`lt[Δ[A000040(n+1)]%3, 1]+1`
-/

namespace A270190.P7186861141691751311
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A270190.P7186861141691751311

namespace A270190

/-- `lt[Δ[A000040(n+1)]%3, 1]+1` -/
def P7186861141691751311.Spec : Prop :=
  ∀ n, (P7186861141691751311.a n : ℤ) = A270190 (n + 1)

end A270190

/-! ## A270190.P12629073324252172246

`lt[Δ[A040976(n+1)]%6, 1]+1`
-/

namespace A270190.P12629073324252172246
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 6

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A270190.P12629073324252172246

namespace A270190

/-- `lt[Δ[A040976(n+1)]%6, 1]+1` -/
def P12629073324252172246.Spec : Prop :=
  ∀ n, (P12629073324252172246.a n : ℤ) = A270190 (n + 1)

end A270190

/-! ## A270190.P5973229558180878257

`lt[0, A079978(A054541(n+1))]`
-/

namespace A270190.P5973229558180878257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A054541 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A270190.P5973229558180878257

namespace A270190

/-- `lt[0, A079978(A054541(n+1))]` -/
def P5973229558180878257.Spec : Prop :=
  ∀ n, (P5973229558180878257.a n : ℤ) = A270190 (n + 1)

end A270190

/-! ## A270190.P12574600881027885280

`lt[1, A138187(Δ[A028815(n)]²)]`
-/

namespace A270190.P12574600881027885280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138187 ((f3 (n + 1) - f3 n) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A270190.P12574600881027885280

namespace A270190

/-- `lt[1, A138187(Δ[A028815(n)]²)]` -/
def P12574600881027885280.Spec : Prop :=
  ∀ n, (P12574600881027885280.a n : ℤ) = A270190 (n + 1)

end A270190

/-! ## A270190.P5628913058562827356

`eq[2, A093718(Δ[A028815(n)]-1)!]`
-/

namespace A270190.P5628913058562827356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A093718 (f3 (n + 1) - f3 n - 1).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A270190.P5628913058562827356

namespace A270190

/-- `eq[2, A093718(Δ[A028815(n)]-1)!]` -/
def P5628913058562827356.Spec : Prop :=
  ∀ n, (P5628913058562827356.a n : ℤ) = A270190 (n + 1)

end A270190

/-! ## A270190.P14437647462810910673

`eq[A039701(n+2), A039701(n+1)]+1`
-/

namespace A270190.P14437647462810910673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039701 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039701 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A270190.P14437647462810910673

namespace A270190

/-- `eq[A039701(n+2), A039701(n+1)]+1` -/
def P14437647462810910673.Spec : Prop :=
  ∀ n, (P14437647462810910673.a n : ℤ) = A270190 (n + 1)

end A270190

/-! ## A270190.P16650049265879596115

`eq[A039704(n+2), A039704(n+1)]+1`
-/

namespace A270190.P16650049265879596115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039704 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039704 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A270190.P16650049265879596115

namespace A270190

/-- `eq[A039704(n+2), A039704(n+1)]+1` -/
def P16650049265879596115.Spec : Prop :=
  ∀ n, (P16650049265879596115.a n : ℤ) = A270190 (n + 1)

end A270190

/-! ## A270190.P6599343093146892483

`eq[A134323(n+2), A134323(n+1)]+1`
-/

namespace A270190.P6599343093146892483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134323 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134323 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A270190.P6599343093146892483

namespace A270190

/-- `eq[A134323(n+2), A134323(n+1)]+1` -/
def P6599343093146892483.Spec : Prop :=
  ∀ n, (P6599343093146892483.a n : ℤ) = A270190 (n + 1)

end A270190

/-! ## A270190.P6726664756754607812

`lt[A000034(n), A080278(A054541(n+1))]`
-/

namespace A270190.P6726664756754607812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080278 (A054541 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A270190.P6726664756754607812

namespace A270190

/-- `lt[A000034(n), A080278(A054541(n+1))]` -/
def P6726664756754607812.Spec : Prop :=
  ∀ n, (P6726664756754607812.a n : ℤ) = A270190 (n + 1)

end A270190

/-! ## A270190.P11288287701749000200

`lt[A003842(n), A080278(A054541(n+1))]`
-/

namespace A270190.P11288287701749000200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003842 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080278 (A054541 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A270190.P11288287701749000200

namespace A270190

/-- `lt[A003842(n), A080278(A054541(n+1))]` -/
def P11288287701749000200.Spec : Prop :=
  ∀ n, (P11288287701749000200.a n : ℤ) = A270190 (n + 1)

end A270190

/-! ## A270190.P12945519512150024543

`A000720(A258578(n+1))`
-/

namespace A270190.P12945519512150024543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A258578 (n + 1)).toNat

end

end A270190.P12945519512150024543

namespace A270190

/-- `A000720(A258578(n+1))` -/
def P12945519512150024543.Spec : Prop :=
  ∀ n, P12945519512150024543.a n = A270190 (n + 1)

end A270190

/-! ## A270190.P6121632692818642109

`lt[A156264(3*(n+1)), A080278(A054541(n+1))]`
-/

namespace A270190.P6121632692818642109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156264 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080278 (A054541 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A270190.P6121632692818642109

namespace A270190

/-- `lt[A156264(3*(n+1)), A080278(A054541(n+1))]` -/
def P6121632692818642109.Spec : Prop :=
  ∀ n, (P6121632692818642109.a n : ℤ) = A270190 (n + 1)

end A270190

/-!
# A270191: Numbers n for which (prime(n+1)-prime(n)) mod 3 = 1.

The programs for A270191, the canonical program `A270191.P1713007079887465515` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270191 has offset 1).

The definition of A270191 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A270191.P4807861305269608371

`eq[1, A007089(A001223(n+1))%2]+1`
-/

namespace A270191.P4807861305269608371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007089 (A001223 (n + 1)).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A270191.P4807861305269608371

namespace A270191

/-- `eq[1, A007089(A001223(n+1))%2]+1` -/
def P4807861305269608371.Spec : Prop :=
  ∀ n, (P4807861305269608371.a n : ℤ) = A270191 (n + 1)

end A270191

/-! ## A270191.P3356188052970417720

`record[n+1-A329252(A001223(n+1)+3)]`
-/

namespace A270191.P3356188052970417720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A329252 (A001223 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270191.P3356188052970417720

namespace A270191

/-- `record[n+1-A329252(A001223(n+1)+3)]` -/
def P3356188052970417720.Spec : Prop :=
  ∀ n, P3356188052970417720.a n = A270191 (n + 1)

end A270191

/-! ## A270191.P1713007079887465515

`A270189(2*(n+1))-C(2, n+2)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A270191

/-- `A270189(2*(n+1))-C(2, n+2)` -/
def P1713007079887465515.Spec : Prop :=
  ∀ n, P1713007079887465515.a n = A270191 (n + 1)

theorem P1713007079887465515.correct : P1713007079887465515.Spec := by
  intro n
  simp only [A270191, Nat.add_sub_cancel]

end A270191

/-! ## A270191.P15793759952408873424

`A270189(A103517(n))`
-/

namespace A270191.P15793759952408873424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270189 (A103517 n).toNat

end

end A270191.P15793759952408873424

namespace A270191

/-- `A270189(A103517(n))` -/
def P15793759952408873424.Spec : Prop :=
  ∀ n, P15793759952408873424.a n = A270191 (n + 1)

end A270191

/-! ## A270191.P1181038689271112228

`A270189(Δ[A028310(n)²]+1)`
-/

namespace A270191.P1181038689271112228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270189 (f1 (n + 1) - f1 n + 1).toNat

end

end A270191.P1181038689271112228

namespace A270191

/-- `A270189(Δ[A028310(n)²]+1)` -/
def P1181038689271112228.Spec : Prop :=
  ∀ n, P1181038689271112228.a n = A270191 (n + 1)

end A270191

/-! ## A270191.P6878886602153960997

`A270189(2*(n+1))-A000007(n)`
-/

namespace A270191.P6878886602153960997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270189 (2 * (n + 1)) - A000007 n

end

end A270191.P6878886602153960997

namespace A270191

/-- `A270189(2*(n+1))-A000007(n)` -/
def P6878886602153960997.Spec : Prop :=
  ∀ n, P6878886602153960997.a n = A270191 (n + 1)

end A270191

/-! ## A270191.P6498388310643909144

`A270189(2*n+2)/(A000007(2*n)+1)`
-/

namespace A270191.P6498388310643909144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A270189 (2 * n + 2) : ℚ) / (A000007 (2 * n) + 1 : ℚ)

end

end A270191.P6498388310643909144

namespace A270191

/-- `A270189(2*n+2)/(A000007(2*n)+1)` -/
def P6498388310643909144.Spec : Prop :=
  ∀ n, P6498388310643909144.a n = (A270191 (n + 1) : ℚ)

end A270191

/-! ## A270191.P9009124484620654151

`A000720(2*n+1)+A270189(2*(n+1))-A000720(2*(n+1))`
-/

namespace A270191.P9009124484620654151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (2 * n + 1) + (A270189 (2 * (n + 1)) - A000720 (2 * (n + 1)))

end

end A270191.P9009124484620654151

namespace A270191

/-- `A000720(2*n+1)+A270189(2*(n+1))-A000720(2*(n+1))` -/
def P9009124484620654151.Spec : Prop :=
  ∀ n, P9009124484620654151.a n = A270191 (n + 1)

end A270191

/-! ## A270191.P14029931540709316952

`lt[1, A076368(n+1)%3]`
-/

namespace A270191.P14029931540709316952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076368 (n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A270191.P14029931540709316952

namespace A270191

/-- `lt[1, A076368(n+1)%3]` -/
def P14029931540709316952.Spec : Prop :=
  ∀ n, (P14029931540709316952.a n : ℤ) = A270191 (n + 1)

end A270191

/-! ## A270191.P4371891301470489129

`lt[1, A080278(A054541(n+1)+2)]`
-/

namespace A270191.P4371891301470489129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080278 (A054541 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A270191.P4371891301470489129

namespace A270191

/-- `lt[1, A080278(A054541(n+1)+2)]` -/
def P4371891301470489129.Spec : Prop :=
  ∀ n, (P4371891301470489129.a n : ℤ) = A270191 (n + 1)

end A270191

/-! ## A270191.P13252821881759456977

`A270189(lt[A270160(n), A270168(n)])`
-/

namespace A270191.P13252821881759456977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270160 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270168 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270189 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A270191.P13252821881759456977

namespace A270191

/-- `A270189(lt[A270160(n), A270168(n)])` -/
def P13252821881759456977.Spec : Prop :=
  ∀ n, P13252821881759456977.a n = A270191 (n + 1)

end A270191

/-! ## A270191.P15265786116358448846

`A270189(lt[A270152(n), A270168(n)])`
-/

namespace A270191.P15265786116358448846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270152 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270168 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270189 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A270191.P15265786116358448846

namespace A270191

/-- `A270189(lt[A270152(n), A270168(n)])` -/
def P15265786116358448846.Spec : Prop :=
  ∀ n, P15265786116358448846.a n = A270191 (n + 1)

end A270191

/-! ## A270191.P11628114232065750288

`A270189(lt[A270152(n), A270185(n)])`
-/

namespace A270191.P11628114232065750288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270152 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270185 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270189 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A270191.P11628114232065750288

namespace A270191

/-- `A270189(lt[A270152(n), A270185(n)])` -/
def P11628114232065750288.Spec : Prop :=
  ∀ n, P11628114232065750288.a n = A270191 (n + 1)

end A270191

/-! ## A270191.P5957316890279235475

`A270189(lt[A270177(n), A270168(n)])`
-/

namespace A270191.P5957316890279235475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270177 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270168 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270189 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A270191.P5957316890279235475

namespace A270191

/-- `A270189(lt[A270177(n), A270168(n)])` -/
def P5957316890279235475.Spec : Prop :=
  ∀ n, P5957316890279235475.a n = A270191 (n + 1)

end A270191

/-!
# A270192: Numbers n for which (prime(n+1)-prime(n)) mod 3 = 2.

The programs for A270192, the canonical program `A270192.P15087363916483575460` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270192 has offset 1).

The definition of A270192 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A270192.P15087363916483575460

`lt[1, A001223(n+1)%3]+1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A270192

/-- `lt[1, A001223(n+1)%3]+1` -/
def P15087363916483575460.Spec : Prop :=
  ∀ n, (P15087363916483575460.a n : ℤ) = A270192 (n + 1)

theorem P15087363916483575460.correct : P15087363916483575460.Spec := by
  intro n
  simp only [A270192, Nat.add_sub_cancel]

end A270192

/-! ## A270192.P15741546658807489989

`A270189(2*n+1)+C(2, n+2)`
-/

namespace A270192.P15741546658807489989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270189 (2 * n + 1) + (Nat.choose 2 (n + 2) : ℤ)

end

end A270192.P15741546658807489989

namespace A270192

/-- `A270189(2*n+1)+C(2, n+2)` -/
def P15741546658807489989.Spec : Prop :=
  ∀ n, P15741546658807489989.a n = A270192 (n + 1)

end A270192

/-! ## A270192.P18107934949172206994

`A270189(A004277(n)+1)`
-/

namespace A270192.P18107934949172206994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270189 (A004277 n + 1).toNat

end

end A270192.P18107934949172206994

namespace A270192

/-- `A270189(A004277(n)+1)` -/
def P18107934949172206994.Spec : Prop :=
  ∀ n, P18107934949172206994.a n = A270192 (n + 1)

end A270192

/-! ## A270192.P15109228394577508681

`A270189(A004280(n+2))`
-/

namespace A270192.P15109228394577508681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270189 (A004280 (n + 2)).toNat

end

end A270192.P15109228394577508681

namespace A270192

/-- `A270189(A004280(n+2))` -/
def P15109228394577508681.Spec : Prop :=
  ∀ n, P15109228394577508681.a n = A270192 (n + 1)

end A270192

/-! ## A270192.P313834915430149994

`A270189(A028310(2*n)+1)`
-/

namespace A270192.P313834915430149994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270189 (A028310 (2 * n) + 1).toNat

end

end A270192.P313834915430149994

namespace A270192

/-- `A270189(A028310(2*n)+1)` -/
def P313834915430149994.Spec : Prop :=
  ∀ n, P313834915430149994.a n = A270192 (n + 1)

end A270192

/-! ## A270192.P15281186171168134556

`A270189(A028310(n)+1+n)`
-/

namespace A270192.P15281186171168134556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270189 (A028310 n + 1 + (n : ℤ)).toNat

end

end A270192.P15281186171168134556

namespace A270192

/-- `A270189(A028310(n)+1+n)` -/
def P15281186171168134556.Spec : Prop :=
  ∀ n, P15281186171168134556.a n = A270192 (n + 1)

end A270192

/-! ## A270192.P2993077397685449213

`A270189(A008486(n)+1-n)`
-/

namespace A270192.P2993077397685449213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270189 (A008486 n + (1 - (n : ℤ))).toNat

end

end A270192.P2993077397685449213

namespace A270192

/-- `A270189(A008486(n)+1-n)` -/
def P2993077397685449213.Spec : Prop :=
  ∀ n, P2993077397685449213.a n = A270192 (n + 1)

end A270192

/-! ## A270192.P11700350208413455329

`A270189(1-(n-A008486(n)))`
-/

namespace A270192.P11700350208413455329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270189 (1 - ((n : ℤ) - A008486 n)).toNat

end

end A270192.P11700350208413455329

namespace A270192

/-- `A270189(1-(n-A008486(n)))` -/
def P11700350208413455329.Spec : Prop :=
  ∀ n, P11700350208413455329.a n = A270192 (n + 1)

end A270192

/-! ## A270192.P7389212081557071821

`A270189(2*n+1)+A000007(n)`
-/

namespace A270192.P7389212081557071821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270189 (2 * n + 1) + A000007 n

end

end A270192.P7389212081557071821

namespace A270192

/-- `A270189(2*n+1)+A000007(n)` -/
def P7389212081557071821.Spec : Prop :=
  ∀ n, P7389212081557071821.a n = A270192 (n + 1)

end A270192

/-! ## A270192.P13103278342636559358

`A270189(2*n+1)+A000720(2*(n+1))-A000720(2*n+1)`
-/

namespace A270192.P13103278342636559358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270189 (2 * n + 1) + (A000720 (2 * (n + 1)) - A000720 (2 * n + 1))

end

end A270192.P13103278342636559358

namespace A270192

/-- `A270189(2*n+1)+A000720(2*(n+1))-A000720(2*n+1)` -/
def P13103278342636559358.Spec : Prop :=
  ∀ n, P13103278342636559358.a n = A270192 (n + 1)

end A270192

/-! ## A270192.P12015355980603336335

`filter[A270189(n+2), A132194(#)]`
-/

namespace A270192.P12015355980603336335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270189 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A132194 (f1 j).toNat = 1) n)

end

end A270192.P12015355980603336335

namespace A270192

/-- `filter[A270189(n+2), A132194(#)]` -/
def P12015355980603336335.Spec : Prop :=
  ∀ n, P12015355980603336335.a n = A270192 (n + 1)

end A270192

/-! ## A270192.P16333142711183119339

`lt[6*(Δ[A008578(n+1)]+1)%3, 1]`
-/

namespace A270192.P16333142711183119339
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * Int.tmod (f2 (n + 1) - f2 n + 1) 3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A270192.P16333142711183119339

namespace A270192

/-- `lt[6*(Δ[A008578(n+1)]+1)%3, 1]` -/
def P16333142711183119339.Spec : Prop :=
  ∀ n, (P16333142711183119339.a n : ℤ) = A270192 (n + 1)

end A270192

/-! ## A270192.P14900362894801075091

`eq[1, A257075(A076368(n+1)²)]`
-/

namespace A270192.P14900362894801075091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257075 (A076368 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A270192.P14900362894801075091

namespace A270192

/-- `eq[1, A257075(A076368(n+1)²)]` -/
def P14900362894801075091.Spec : Prop :=
  ∀ n, (P14900362894801075091.a n : ℤ) = A270192 (n + 1)

end A270192

/-! ## A270192.P16905663824773907001

`record[(n+1)*(A039701(n+1)-A039701(n+2))]`
-/

namespace A270192.P16905663824773907001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A039701 (n + 1) - A039701 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270192.P16905663824773907001

namespace A270192

/-- `record[(n+1)*(A039701(n+1)-A039701(n+2))]` -/
def P16905663824773907001.Spec : Prop :=
  ∀ n, P16905663824773907001.a n = A270192 (n + 1)

end A270192

/-! ## A270192.P18289246127278395513

`eq[3, A020639(A000040(n+1)-A008578(n+1)+1)]`
-/

namespace A270192.P18289246127278395513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000040 (n + 1) - A008578 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A270192.P18289246127278395513

namespace A270192

/-- `eq[3, A020639(A000040(n+1)-A008578(n+1)+1)]` -/
def P18289246127278395513.Spec : Prop :=
  ∀ n, (P18289246127278395513.a n : ℤ) = A270192 (n + 1)

end A270192

/-! ## A270192.P17939886399920515850

`A270189(lt[A270168(n), A270160(n)])`
-/

namespace A270192.P17939886399920515850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270168 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270160 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270189 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A270192.P17939886399920515850

namespace A270192

/-- `A270189(lt[A270168(n), A270160(n)])` -/
def P17939886399920515850.Spec : Prop :=
  ∀ n, P17939886399920515850.a n = A270192 (n + 1)

end A270192

/-! ## A270192.P9430917316463162732

`A270189(lt[A270168(n), A270152(n)])`
-/

namespace A270192.P9430917316463162732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270168 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270152 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270189 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A270192.P9430917316463162732

namespace A270192

/-- `A270189(lt[A270168(n), A270152(n)])` -/
def P9430917316463162732.Spec : Prop :=
  ∀ n, P9430917316463162732.a n = A270192 (n + 1)

end A270192

/-! ## A270192.P198763354095361384

`A270189(lt[A270185(n), A270152(n)])`
-/

namespace A270192.P198763354095361384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270185 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270152 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270189 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A270192.P198763354095361384

namespace A270192

/-- `A270189(lt[A270185(n), A270152(n)])` -/
def P198763354095361384.Spec : Prop :=
  ∀ n, P198763354095361384.a n = A270192 (n + 1)

end A270192

/-! ## A270192.P1126547044112981738

`A270189(lt[A270168(n), A270177(n)])`
-/

namespace A270192.P1126547044112981738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270168 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270177 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270189 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A270192.P1126547044112981738

namespace A270192

/-- `A270189(lt[A270168(n), A270177(n)])` -/
def P1126547044112981738.Spec : Prop :=
  ∀ n, P1126547044112981738.a n = A270192 (n + 1)

end A270192

/-!
# A270197: Self-inverse permutation of natural numbers: a(1) = 1, for n even, a(n) = A269369(1+a(n/2)), for n odd, a(n) = 2*a(A269370(n)-1).

The programs for A270197, there is no canonical definition to state claims against.
-/

/-! ## A270197.P14245181181284582341

`A270195(A269378(A269375(A270196(n+1))))`
-/

namespace A270197.P14245181181284582341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270195 (A269378 (A269375 (A270196 (n + 1)).toNat).toNat).toNat

end

end A270197.P14245181181284582341

/-!
# A270198: a(n) = A054429(A055938(A054429(n))).

The programs for A270198, the canonical program `A270198.P16908644068517070452` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270198 has offset 1).

The definition of A270198 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054429, A055938, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A270198.P16908644068517070452

`A054429(A055938(A054429(n+1)))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A270198

/-- `A054429(A055938(A054429(n+1)))` -/
def P16908644068517070452.Spec : Prop :=
  ∀ n, P16908644068517070452.a n = A270198 (n + 1)

theorem P16908644068517070452.correct : P16908644068517070452.Spec := by
  intro n
  simp only [A270198, Nat.add_sub_cancel]

end A270198

/-! ## A270198.P17232324769852282254

`comp[A270200(n)]`
-/

namespace A270198.P17232324769852282254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270200 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A270198.P17232324769852282254

namespace A270198

/-- `comp[A270200(n)]` -/
def P17232324769852282254.Spec : Prop :=
  ∀ n, (P17232324769852282254.a n : ℤ) = A270198 (n + 1)

end A270198

/-! ## A270198.P9972644514235492210

`comp[A089263(n)+a(n-1)+1]+1` with `a(0)=0`
-/

namespace A270198.P9972644514235492210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A089263 n + f1 (n - 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A270198.P9972644514235492210

namespace A270198

/-- `comp[A089263(n)+a(n-1)+1]+1` -/
def P9972644514235492210.Spec : Prop :=
  ∀ n, (P9972644514235492210.a n : ℤ) = A270198 (n + 1)

end A270198

/-! ## A270198.P2378210348047728795

`A006949(n)*A040001(2*n)+n+2`
-/

namespace A270198.P2378210348047728795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006949 n * A040001 (2 * n) + (n + 2 : ℤ)

end

end A270198.P2378210348047728795

namespace A270198

/-- `A006949(n)*A040001(2*n)+n+2` -/
def P2378210348047728795.Spec : Prop :=
  ∀ n, P2378210348047728795.a n = A270198 (n + 1)

end A270198

/-! ## A270198.P580964976584751101

`A244478(a(n-1))+n+2` with `a(0)=3`
-/

namespace A270198.P580964976584751101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A244478 (a (n - 1)).toNat + (n + 2 : ℤ)

end

end A270198.P580964976584751101

namespace A270198

/-- `A244478(a(n-1))+n+2` -/
def P580964976584751101.Spec : Prop :=
  ∀ n, P580964976584751101.a n = A270198 (n + 1)

end A270198

/-! ## A270198.P5567658252360940075

`A052938(A004273(n))+2*A006949(n)`
-/

namespace A270198.P5567658252360940075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A004273 n).toNat + 2 * A006949 n

end

end A270198.P5567658252360940075

namespace A270198

/-- `A052938(A004273(n))+2*A006949(n)` -/
def P5567658252360940075.Spec : Prop :=
  ∀ n, P5567658252360940075.a n = A270198 (n + 1)

end A270198

/-! ## A270198.P7779317874367013970

`A052938(A004273(n))+A005843(A006949(n))`
-/

namespace A270198.P7779317874367013970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A004273 n).toNat + A005843 (A006949 n).toNat

end

end A270198.P7779317874367013970

namespace A270198

/-- `A052938(A004273(n))+A005843(A006949(n))` -/
def P7779317874367013970.Spec : Prop :=
  ∀ n, P7779317874367013970.a n = A270198 (n + 1)

end A270198

/-! ## A270198.P4289014388290043459

`eq[2, gcd(2, A306869(n+1))]+2`
-/

namespace A270198.P4289014388290043459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A306869 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A270198.P4289014388290043459

namespace A270198

/-- `eq[2, gcd(2, A306869(n+1))]+2` -/
def P4289014388290043459.Spec : Prop :=
  ∀ n, (P4289014388290043459.a n : ℤ) = A270198 (n + 1)

end A270198

/-! ## A270198.P15283343179170234602

`A233277(A233276(A055938(A233277(A233276(n+1)))))`
-/

namespace A270198.P15283343179170234602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233277 (A233276 (A055938 (A233277 (A233276 (n + 1)).toNat).toNat).toNat).toNat

end

end A270198.P15283343179170234602

namespace A270198

/-- `A233277(A233276(A055938(A233277(A233276(n+1)))))` -/
def P15283343179170234602.Spec : Prop :=
  ∀ n, P15283343179170234602.a n = A270198 (n + 1)

end A270198

/-! ## A270198.P14092710514911198366

`A233275(A233278(A055938(A233275(A233278(n+1)))))`
-/

namespace A270198.P14092710514911198366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233275 (A233278 (A055938 (A233275 (A233278 (n + 1)).toNat).toNat).toNat).toNat

end

end A270198.P14092710514911198366

namespace A270198

/-- `A233275(A233278(A055938(A233275(A233278(n+1)))))` -/
def P14092710514911198366.Spec : Prop :=
  ∀ n, P14092710514911198366.a n = A270198 (n + 1)

end A270198

/-! ## A270198.P5135382316906286504

`A279341(A279344(A055938(A279341(A279344(n+1)))))`
-/

namespace A270198.P5135382316906286504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279341 (A279344 (A055938 (A279341 (A279344 (n + 1)).toNat).toNat).toNat).toNat

end

end A270198.P5135382316906286504

namespace A270198

/-- `A279341(A279344(A055938(A279341(A279344(n+1)))))` -/
def P5135382316906286504.Spec : Prop :=
  ∀ n, P5135382316906286504.a n = A270198 (n + 1)

end A270198

