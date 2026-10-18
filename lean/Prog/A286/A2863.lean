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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
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
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

/-!
# A286300: Square root of smallest square formed from n by incorporating all the digits of n in a new decimal number.

The programs for A286300, there is no canonical definition to state claims against.
-/

/-! ## A286300.P6541759274203868947

`A091873(A071786(n+1)%A045978(n))`
-/

namespace A286300.P6541759274203868947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091873 (Int.tmod (A071786 (n + 1)) (A045978 n)).toNat

end

end A286300.P6541759274203868947

/-!
# A286301: 

The programs for A286301, there is no canonical definition to state claims against.
-/

/-! ## A286301.P8025645710407143435

`A060885(A240693(n+1))`
-/

namespace A286301.P8025645710407143435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060885 (A240693 (n + 1)).toNat

end

end A286301.P8025645710407143435

/-!
# A286302: Numbers n such that A133364(n) <= 1.

The programs for A286302, there is no canonical definition to state claims against.
-/

/-! ## A286302.P5681660065690059986

`lt[A133364(n+1), 2]+1`
-/

namespace A286302.P5681660065690059986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133364 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A286302.P5681660065690059986

/-! ## A286302.P17944030371137566665

`eq[A133364(n+1), A324852(A133364(n+1)+1)]+1`
-/

namespace A286302.P17944030371137566665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324852 (A133364 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A286302.P17944030371137566665

/-! ## A286302.P17713811980737469797

`lt[A001222(A196230(n+1))*A196228(n+1), 2]+1`
-/

namespace A286302.P17713811980737469797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A196230 (n + 1)).toNat * A196228 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A286302.P17713811980737469797

/-! ## A286302.P7944592546103394781

`lt[A001222(A028877(n+1))*A196228(n+1), 2]+1`
-/

namespace A286302.P7944592546103394781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A028877 (n + 1)).toNat * A196228 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A286302.P7944592546103394781

/-!
# A286303: The list of x-coordinates for which nonempty columns arise in the set arising from {(1, 0),(2, 0),(0, 1)}, the classical Ulam sequence on the x-axis augmented by a vector in the orthogonal direction.

The programs for A286303, there is no canonical definition to state claims against.
-/

/-! ## A286303.P155674928482017833

`∑[A338493(∑[A338356(n+1)])]`
-/

namespace A286303.P155674928482017833
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338356 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338493 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286303.P155674928482017833

/-!
# A286304: Number of connected induced (non-null) subgraphs of the complete binary tree with n nodes.

The programs for A286304, there is no canonical definition to state claims against.
-/

/-! ## A286304.P5338678483958497299

`A081031(A163978(n+1))-3`
-/

namespace A286304.P5338678483958497299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081031 (A163978 (n + 1)).toNat - 3

end

end A286304.P5338678483958497299

/-! ## A286304.P5517788740217959273

`∑[A348459(∑[A109188(n+1)])]`
-/

namespace A286304.P5517788740217959273
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109188 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348459 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286304.P5517788740217959273

/-! ## A286304.P4173280581467421893

`A000196(A000031(n)*A102214(n))`
-/

namespace A286304.P4173280581467421893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A000031 n * A102214 n).toNat

end

end A286304.P4173280581467421893

/-! ## A286304.P16929803845218119644

`A095944(n+1)-A238402(A214935(n+1))`
-/

namespace A286304.P16929803845218119644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095944 (n + 1) - A238402 (A214935 (n + 1)).toNat

end

end A286304.P16929803845218119644

/-!
# A286306: a(n) = coefficient of x^(2*n)/(2*n)! in exp( integral ( sn(x, 1/2) / cd(x, 1/2) ) dx).

The programs for A286306, there is no canonical definition to state claims against.
-/

/-! ## A286306.P13335604960658547617

`abs(A190904(2*n))`
-/

namespace A286306.P13335604960658547617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A190904 (2 * n)|

end

end A286306.P13335604960658547617

/-! ## A286306.P15244498726664545379

`abs(A193541(n))`
-/

namespace A286306.P15244498726664545379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A193541 n|

end

end A286306.P15244498726664545379

/-! ## A286306.P5816686106388029181

`abs(A193544(n))`
-/

namespace A286306.P5816686106388029181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A193544 n|

end

end A286306.P5816686106388029181

/-! ## A286306.P16894997618241108840

`A057077(n)*A193541(n)`
-/

namespace A286306.P16894997618241108840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A193541 n

end

end A286306.P16894997618241108840

/-! ## A286306.P8345899843695815326

`gcd(A193541(n), A193544(n))`
-/

namespace A286306.P8345899843695815326
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A193541 n) (A193544 n)

end

end A286306.P8345899843695815326

/-!
# A286307: a(n) is the numerator of r(n), where r(n) = r(n-1) + r(n-2)/(2*(n-1)) with r(0) = 0, r(1) = 1.

The programs for A286307, there is no canonical definition to state claims against.
-/

/-! ## A286307.P2106656540221454971

`A165968(n+1)/gcd(n!, A165968(n+1))`
-/

namespace A286307.P2106656540221454971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165968 (n + 1) : ℚ) / (Int.gcd (Nat.factorial n : ℤ) (A165968 (n + 1)) : ℚ)

end

end A286307.P2106656540221454971

/-! ## A286307.P5642031129287386451

`A179540(n)/gcd(A142703(n+1), A179540(n))`
-/

namespace A286307.P5642031129287386451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179540 n : ℚ) / (Int.gcd (A142703 (n + 1)) (A179540 n) : ℚ)

end

end A286307.P5642031129287386451

/-! ## A286307.P642187596319201800

`lcm(A000165(n), A053871(n+1))/A000165(n)`
-/

namespace A286307.P642187596319201800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000165 n) (A053871 (n + 1)) : ℚ) / (A000165 n : ℚ)

end

end A286307.P642187596319201800

/-! ## A286307.P2160593542292423957

`A093411(A165968(n+1)/A016116(n))`
-/

namespace A286307.P2160593542292423957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 (SequenceMachineLib.roundAway ((A165968 (n + 1) : ℚ) / (A016116 n : ℚ))).toNat

end

end A286307.P2160593542292423957

/-!
# A286308: Numbers m such that gcd(m, F(m)) = 2, where F(m) denotes the m-th Fibonacci number.

The programs for A286308, there is no canonical definition to state claims against.
-/

/-! ## A286308.P886211465635858917

`eq[2, A104714(n)]`
-/

namespace A286308.P886211465635858917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104714 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A286308.P886211465635858917

/-! ## A286308.P15804068722749431925

`lt[A104714(xor(2, A104714(n))), 1]`
-/

namespace A286308.P15804068722749431925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104714 (Int.xor 2 (A104714 n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A286308.P15804068722749431925

/-! ## A286308.P9698794891427760535

`record[A008594(n+1)/A104714(A008458(n+1))]`
-/

namespace A286308.P9698794891427760535
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008594 (n + 1) : ℚ) / (A104714 (A008458 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286308.P9698794891427760535

/-! ## A286308.P11912430165049848762

`record[2*A270313(5*(n+1)+n+1)]`
-/

namespace A286308.P11912430165049848762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A270313 (5 * (n + 1) + (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286308.P11912430165049848762

/-! ## A286308.P17535868190188034077

`record[lcm(6, A270313(A008458(n)))]`
-/

namespace A286308.P17535868190188034077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 6 (A270313 (A008458 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286308.P17535868190188034077

/-! ## A286308.P17222867558025590262

`lt[(2-A104714(n))², A158388(n)]`
-/

namespace A286308.P17222867558025590262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A104714 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A286308.P17222867558025590262

/-! ## A286308.P12776788971714964404

`A103517(eq[n+1, A270313(2*(n+1))])`
-/

namespace A286308.P12776788971714964404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270313 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A286308.P12776788971714964404

/-!
# A286309: First differences of A033629.

The programs for A286309, there is no canonical definition to state claims against.
-/

/-! ## A286309.P7543924525095099938

`Δ[A033629(n+1)]`
-/

namespace A286309.P7543924525095099938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033629 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A286309.P7543924525095099938

/-! ## A286309.P8287405895135171999

`A033629(n+2)-A033629(n+1)`
-/

namespace A286309.P8287405895135171999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033629 (n + 2) - A033629 (n + 1)

end

end A286309.P8287405895135171999

/-! ## A286309.P16202352916766158166

`Δ[record[A033629(A323889(n))]]`
-/

namespace A286309.P16202352916766158166
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033629 (A323889 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A286309.P16202352916766158166

/-! ## A286309.P17939012140679578333

`Δ[record[A033629(A126759(n))]]`
-/

namespace A286309.P17939012140679578333
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033629 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A286309.P17939012140679578333

/-! ## A286309.P255042064416775045

`Δ[record[A033629(A065648(n))]]`
-/

namespace A286309.P255042064416775045
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033629 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A286309.P255042064416775045

/-! ## A286309.P12613212068770825759

`Δ[eq[0, A080573(n+5)]]`
-/

namespace A286309.P12613212068770825759
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080573 (n + 5)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A286309.P12613212068770825759

/-! ## A286309.P4293735098073317187

`Δ[lt[A285884(n+4), 2]]`
-/

namespace A286309.P4293735098073317187
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285884 (n + 4)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A286309.P4293735098073317187

/-!
# A286310: G.f.: 1 + Sum_{n>=1} a(n)*x^n/(1 - x^n) = 1/(1 - x/(1 - 2*x/(1 - 3*x/(1 - 4*x/(1 - ...))))).

The programs for A286310, there is no canonical definition to state claims against.
-/

/-! ## A286310.P18179737858520396132

`record[A135877(n)]-A006257(n)`
-/

namespace A286310.P18179737858520396132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135877 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A006257 n

end

end A286310.P18179737858520396132

/-!
# A286311: a(n) = 2*a(n-1) - a(n-2) + a(n-4), n>3, a(0)=0, a(1)=a(2)=1, a(3)=3.

The programs for A286311, the canonical program `A286311.P12312996608967590081` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286311 has offset 0).

The definition of A286311 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)-a(n-2)+a(n-4)` (program `A286311.P12312996608967590081`, by `A286311.P12312996608967590081.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A286311.P12312996608967590081

`2*a(n-1)-a(n-2)+a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=3`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A286311

/-- `2*a(n-1)-a(n-2)+a(n-4)` -/
def P12312996608967590081.Spec : Prop :=
  ∀ n, P12312996608967590081.a n = A286311 n

theorem P12312996608967590081.correct : P12312996608967590081.Spec := by
  intro n
  simp only [A286311]

end A286311

/-! ## A286311.P10114657369035284640

`ogf((x-x^2+2x^3)/(1-2x+x^2-x^4))`
-/

namespace A286311.P10114657369035284640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -1, 2] [1, -2, 1, 0, -1] n

end

end A286311.P10114657369035284640

namespace A286311

/-- `ogf((x-x^2+2x^3)/(1-2x+x^2-x^4))` -/
def P10114657369035284640.Spec : Prop :=
  ∀ n, P10114657369035284640.a n = A286311 n

end A286311

/-! ## A286311.P8001626155718706389

`A286350(n)-A128834(n)`
-/

namespace A286311.P8001626155718706389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286350 n - A128834 n

end

end A286311.P8001626155718706389

namespace A286311

/-- `A286350(n)-A128834(n)` -/
def P8001626155718706389.Spec : Prop :=
  ∀ n, P8001626155718706389.a n = A286311 n

end A286311

/-! ## A286311.P14233874780042155961

`A005252(n+1)+A000045(n)-A005252(n)`
-/

namespace A286311.P14233874780042155961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005252 (n + 1) + (A000045 n - A005252 n)

end

end A286311.P14233874780042155961

namespace A286311

/-- `A005252(n+1)+A000045(n)-A005252(n)` -/
def P14233874780042155961.Spec : Prop :=
  ∀ n, P14233874780042155961.a n = A286311 n

end A286311

/-! ## A286311.P4346265324347511557

`A000045(n+1)+A000045(n)-A226956(n)`
-/

namespace A286311.P4346265324347511557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A000045 n - A226956 n)

end

end A286311.P4346265324347511557

namespace A286311

/-- `A000045(n+1)+A000045(n)-A226956(n)` -/
def P4346265324347511557.Spec : Prop :=
  ∀ n, P4346265324347511557.a n = A286311 n

end A286311

/-! ## A286311.P13475270106066238027

`A079962(n+1)+A227047(n+1)-A226956(n)`
-/

namespace A286311.P13475270106066238027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079962 (n + 1) + (A227047 (n + 1) - A226956 n)

end

end A286311.P13475270106066238027

namespace A286311

/-- `A079962(n+1)+A227047(n+1)-A226956(n)` -/
def P13475270106066238027.Spec : Prop :=
  ∀ n, P13475270106066238027.a n = A286311 n

end A286311

/-! ## A286311.P15556614271639509854

`A005252(n+2)-A212804(n)`
-/

namespace A286311.P15556614271639509854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005252 (n + 2) - A212804 n

end

end A286311.P15556614271639509854

namespace A286311

/-- `A005252(n+2)-A212804(n)` -/
def P15556614271639509854.Spec : Prop :=
  ∀ n, P15556614271639509854.a n = A286311 n

end A286311

/-! ## A286311.P14960915118779397882

`A000045(n+2)-A226956(n)`
-/

namespace A286311.P14960915118779397882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) - A226956 n

end

end A286311.P14960915118779397882

namespace A286311

/-- `A000045(n+2)-A226956(n)` -/
def P14960915118779397882.Spec : Prop :=
  ∀ n, P14960915118779397882.a n = A286311 n

end A286311

/-! ## A286311.P15597476569073226656

`A174619(2*n+3)-A226956(n)`
-/

namespace A286311.P15597476569073226656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174619 (2 * n + 3) - A226956 n

end

end A286311.P15597476569073226656

namespace A286311

/-- `A174619(2*n+3)-A226956(n)` -/
def P15597476569073226656.Spec : Prop :=
  ∀ n, P15597476569073226656.a n = A286311 n

end A286311

/-! ## A286311.P8332680903813474321

`A130578(n+1)+A000045(n)-A000071(n+1)`
-/

namespace A286311.P8332680903813474321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130578 (n + 1) + (A000045 n - A000071 (n + 1))

end

end A286311.P8332680903813474321

namespace A286311

/-- `A130578(n+1)+A000045(n)-A000071(n+1)` -/
def P8332680903813474321.Spec : Prop :=
  ∀ n, P8332680903813474321.a n = A286311 n

end A286311

/-! ## A286311.P6711830144951708573

`Δ[A286350(n+1)]`
-/

namespace A286311.P6711830144951708573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A286311.P6711830144951708573

namespace A286311

/-- `Δ[A286350(n+1)]` -/
def P6711830144951708573.Spec : Prop :=
  ∀ n, P6711830144951708573.a n = A286311 n

end A286311

/-! ## A286311.P11549896945662733209

`A022086(n)-A286350(n)`
-/

namespace A286311.P11549896945662733209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022086 n - A286350 n

end

end A286311.P11549896945662733209

namespace A286311

/-- `A022086(n)-A286350(n)` -/
def P11549896945662733209.Spec : Prop :=
  ∀ n, P11549896945662733209.a n = A286311 n

end A286311

/-! ## A286311.P7308466054534919850

`A291660(n)-2*A226956(n)`
-/

namespace A286311.P7308466054534919850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291660 n - 2 * A226956 n

end

end A286311.P7308466054534919850

namespace A286311

/-- `A291660(n)-2*A226956(n)` -/
def P7308466054534919850.Spec : Prop :=
  ∀ n, P7308466054534919850.a n = A286311 n

end A286311

/-! ## A286311.P6938239973937399456

`(A022086(n)-A128834(n))/2`
-/

namespace A286311.P6938239973937399456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022086 n - A128834 n : ℚ) / 2

end

end A286311.P6938239973937399456

namespace A286311

/-- `(A022086(n)-A128834(n))/2` -/
def P6938239973937399456.Spec : Prop :=
  ∀ n, P6938239973937399456.a n = (A286311 n : ℚ)

end A286311

/-! ## A286311.P1542445187595716900

`A000032(n+1)-A024490(n+2)`
-/

namespace A286311.P1542445187595716900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) - A024490 (n + 2)

end

end A286311.P1542445187595716900

namespace A286311

/-- `A000032(n+1)-A024490(n+2)` -/
def P1542445187595716900.Spec : Prop :=
  ∀ n, P1542445187595716900.a n = A286311 n

end A286311

/-! ## A286311.P14528233381987252016

`A000204(n+1)-A024490(n+2)`
-/

namespace A286311.P14528233381987252016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1) - A024490 (n + 2)

end

end A286311.P14528233381987252016

namespace A286311

/-- `A000204(n+1)-A024490(n+2)` -/
def P14528233381987252016.Spec : Prop :=
  ∀ n, P14528233381987252016.a n = A286311 n

end A286311

/-! ## A286311.P5726068847054164564

`A286350(n+2)-A286350(n+1)`
-/

namespace A286311.P5726068847054164564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286350 (n + 2) - A286350 (n + 1)

end

end A286311.P5726068847054164564

namespace A286311

/-- `A286350(n+2)-A286350(n+1)` -/
def P5726068847054164564.Spec : Prop :=
  ∀ n, P5726068847054164564.a n = A286311 n

end A286311

/-! ## A286311.P12455127152258724573

`A080023(n+1)%A024490(n+2)`
-/

namespace A286311.P12455127152258724573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080023 (n + 1)) (A024490 (n + 2))

end

end A286311.P12455127152258724573

namespace A286311

/-- `A080023(n+1)%A024490(n+2)` -/
def P12455127152258724573.Spec : Prop :=
  ∀ n, P12455127152258724573.a n = A286311 n

end A286311

/-! ## A286311.P2581429074015370687

`A024490(n+3)-(A226956(n)+A005252(n))`
-/

namespace A286311.P2581429074015370687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024490 (n + 3) - (A226956 n + A005252 n)

end

end A286311.P2581429074015370687

namespace A286311

/-- `A024490(n+3)-(A226956(n)+A005252(n))` -/
def P2581429074015370687.Spec : Prop :=
  ∀ n, P2581429074015370687.a n = A286311 n

end A286311

/-!
# A286312: Table read by antidiagonals upwards: a(n, k) is the minimum c such that n sets with k elements each can be constructed from numbers 1 to c (inclusive) such that any two sets have exactly 1 common element.

The programs for A286312, there is no canonical definition to state claims against.
-/

/-! ## A286312.P17185346440177805467

`A320656(A288972(n)²)+∑[A114327(n)]`
-/

namespace A286312.P17185346440177805467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320656 (A288972 n ^ 2).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286312.P17185346440177805467

/-! ## A286312.P13070293818627782048

`A320656(A288972(n)²)+A094053(n+1)`
-/

namespace A286312.P13070293818627782048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320656 (A288972 n ^ 2).toNat + A094053 (n + 1)

end

end A286312.P13070293818627782048

/-! ## A286312.P11656212779186680188

`A111024(A269678(n+1))+∑[A114327(n)]`
-/

namespace A286312.P11656212779186680188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111024 (A269678 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286312.P11656212779186680188

/-! ## A286312.P17234232467045863834

`A091238(A067410(n))`
-/

namespace A286312.P17234232467045863834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091238 (A067410 n).toNat

end

end A286312.P17234232467045863834

/-! ## A286312.P17102567435479897319

`A097688(A092821(n+1))`
-/

namespace A286312.P17102567435479897319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097688 (A092821 (n + 1)).toNat

end

end A286312.P17102567435479897319

/-!
# A286313: Union of A078561 and A078562.

The programs for A286313, there is no canonical definition to state claims against.
-/

/-! ## A286313.P8621376360287869783

`∪[A078561(n+1), A078562(n+1)]`
-/

namespace A286313.P8621376360287869783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078561 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A286313.P8621376360287869783

/-! ## A286313.P14591253907925228282

`A000040(eq[5, A115061(n+1)])`
-/

namespace A286313.P14591253907925228282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115061 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A286313.P14591253907925228282

/-! ## A286313.P10351410900358613069

`A000040(eq[5, A162345(n+1)])`
-/

namespace A286313.P10351410900358613069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162345 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A286313.P10351410900358613069

/-! ## A286313.P8399518772901152981

`A000040(eq[8, A046930(n+1)])`
-/

namespace A286313.P8399518772901152981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046930 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A286313.P8399518772901152981

/-! ## A286313.P11263296958377799124

`A000040(eq[8, A159461(n+1)])`
-/

namespace A286313.P11263296958377799124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159461 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A286313.P11263296958377799124

/-! ## A286313.P5557339817428509683

`A065091(eq[8, A159461(n+2)])`
-/

namespace A286313.P5557339817428509683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159461 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A286313.P5557339817428509683

/-! ## A286313.P382797730249457427

`A065091(eq[10, A031131(n+1)])`
-/

namespace A286313.P382797730249457427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031131 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A286313.P382797730249457427

/-! ## A286313.P17620237934079757963

`A000040(eq[10, A031131(n+1)]+1)`
-/

namespace A286313.P17620237934079757963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031131 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A286313.P17620237934079757963

/-! ## A286313.P1645657278364327529

`p?[A151800(A209617(n+1))-10]`
-/

namespace A286313.P1645657278364327529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A209617 (n + 1)).toNat - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A286313.P1645657278364327529

/-! ## A286313.P15666704435471342657

`p?[eq[10, A105161(n)]]`
-/

namespace A286313.P15666704435471342657
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105161 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A286313.P15666704435471342657

/-!
# A286314: Number of representations of 10^n as sum of 6 triangular numbers.

The programs for A286314, the canonical program `A286314.P11865172362924914077` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286314 has offset 0).

The definition of A286314 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008440, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A286314.P11865172362924914077

`A008440(10^n)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A286314

/-- `A008440(10^n)` -/
def P11865172362924914077.Spec : Prop :=
  ∀ n, P11865172362924914077.a n = A286314 n

theorem P11865172362924914077.correct : P11865172362924914077.Spec := by
  intro n
  simp only [A286314]

end A286314

/-!
# A286315: Number of representations of 10^n as sum of 8 triangular numbers.

The programs for A286315, there is no canonical definition to state claims against.
-/

/-! ## A286315.P17950424269571103065

`∏{p}[A062397(n), A007331(#)]`
-/

namespace A286315.P17950424269571103065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062397 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A007331 p

end

end A286315.P17950424269571103065

/-!
# A286316: Number of partitions of n with parts differing by at least two and with an odd number of parts.

The programs for A286316, there is no canonical definition to state claims against.
-/

/-! ## A286316.P9397709093013444286

`A003114(n)-A286041(n)`
-/

namespace A286316.P9397709093013444286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003114 n - A286041 n

end

end A286316.P9397709093013444286

/-! ## A286316.P8888131631775513230

`A286041(n)-A039924(n)`
-/

namespace A286316.P8888131631775513230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286041 n - A039924 n

end

end A286316.P8888131631775513230

/-! ## A286316.P7322319622436710363

`(A003114(n)-A039924(n))/2`
-/

namespace A286316.P7322319622436710363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003114 n - A039924 n : ℚ) / 2

end

end A286316.P7322319622436710363

/-! ## A286316.P14719769358404636146

`A003113(n)-(A286041(n)+A003106(n))`
-/

namespace A286316.P14719769358404636146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003113 n - (A286041 n + A003106 n)

end

end A286316.P14719769358404636146

/-! ## A286316.P5835691366139474967

`A000009(n)-(A286041(n)+A238708(n))`
-/

namespace A286316.P5835691366139474967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - (A286041 n + A238708 n)

end

end A286316.P5835691366139474967

/-! ## A286316.P3751932604746047263

`A114087(A152947(n+1))-A286041(n)`
-/

namespace A286316.P3751932604746047263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114087 (A152947 (n + 1)).toNat - A286041 n

end

end A286316.P3751932604746047263

/-! ## A286316.P6081873332309586923

`A114087(A133263(n))-A286041(n)`
-/

namespace A286316.P6081873332309586923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114087 (A133263 n).toNat - A286041 n

end

end A286316.P6081873332309586923

/-! ## A286316.P11395171753924664987

`A004525(A003114(n)-A039924(n))`
-/

namespace A286316.P11395171753924664987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A003114 n - A039924 n).toNat

end

end A286316.P11395171753924664987

/-!
# A286317: Number of species of partial Latin squares of size n.

The programs for A286317, there is no canonical definition to state claims against.
-/

/-! ## A286317.P14700532891890839264

`A059261(A305137(n)+n)`
-/

namespace A286317.P14700532891890839264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059261 (A305137 n + (n : ℤ)).toNat

end

end A286317.P14700532891890839264

/-! ## A286317.P9476854775528904739

`∑[A071335(∏[A051301(n)])]`
-/

namespace A286317.P9476854775528904739
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051301 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071335 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286317.P9476854775528904739

/-!
# A286318: Number of species of connected partial Latin squares of size n.

The programs for A286318, there is no canonical definition to state claims against.
-/

/-! ## A286318.P9686204665421484351

`A126208(floor(23^(n/2))-∑[2*n]%comp[∑[n]])`
-/

namespace A286318.P9686204665421484351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126208 (⌊(23 : ℝ) ^ ((n : ℚ) / 2 : ℝ)⌋ - (((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℕ) : ℤ)).toNat

end

end A286318.P9686204665421484351

/-! ## A286318.P3191432283975737708

`A176744(A094717(n))`
-/

namespace A286318.P3191432283975737708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176744 (A094717 n).toNat

end

end A286318.P3191432283975737708

/-!
# A286319: Prime p such that p^2-p-1 or p^2+p-1 is the smallest prime of a twin prime pair.

The programs for A286319, there is no canonical definition to state claims against.
-/

/-! ## A286319.P17011882051838195891

`∪[A088483(n+1), A120364(n+1)]`
-/

namespace A286319.P17011882051838195891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088483 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120364 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A286319.P17011882051838195891

/-! ## A286319.P18243694169299111694

`p?[or(A054977(n), A088485(n+1))]`
-/

namespace A286319.P18243694169299111694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A054977 n) (A088485 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A286319.P18243694169299111694

/-! ## A286319.P9660043745986596538

`p?[or(A057427(n), A088485(n+1))]`
-/

namespace A286319.P9660043745986596538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057427 n) (A088485 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A286319.P9660043745986596538

/-! ## A286319.P14061905868438612107

`p?[or(A088485(n+1), A141044(n))]`
-/

namespace A286319.P14061905868438612107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A088485 (n + 1)) (A141044 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A286319.P14061905868438612107

/-! ## A286319.P2849960393848826740

`p?[or(A062157(n)², A088485(n+1))]`
-/

namespace A286319.P2849960393848826740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A062157 n ^ 2) (A088485 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A286319.P2849960393848826740

/-! ## A286319.P13781305453687633539

`p?[or(A088485(n+1), A132126(n+1))]`
-/

namespace A286319.P13781305453687633539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A088485 (n + 1)) (A132126 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A286319.P13781305453687633539

/-! ## A286319.P6758046014568608567

`p?[or(A088485(n+1), A297382(2*n+1))]`
-/

namespace A286319.P6758046014568608567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A088485 (n + 1)) (A297382 (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A286319.P6758046014568608567

/-! ## A286319.P10146665237025816537

`p?[or(A088485(n+1), A208645(2*n))]`
-/

namespace A286319.P10146665237025816537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A088485 (n + 1)) (A208645 (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A286319.P10146665237025816537

/-! ## A286319.P2886781888431876167

`p?[A131530(n+1)-A010051(A088485(n+1))]`
-/

namespace A286319.P2886781888431876167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131530 (n + 1) - A010051 (A088485 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A286319.P2886781888431876167

/-!
# A286321: Least possible strictly positive product of the two initial terms of a Fibonacci-like sequence containing n.

The programs for A286321, there is no canonical definition to state claims against.
-/

/-! ## A286321.P11479692562945243934

`A000119(n)*A332288(A173494(2*n+3))`
-/

namespace A286321.P11479692562945243934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000119 n * A332288 (A173494 (2 * n + 3)).toNat

end

end A286321.P11479692562945243934

/-! ## A286321.P8391724214139362371

`A175609(A102861(n+2))`
-/

namespace A286321.P8391724214139362371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175609 (A102861 (n + 2)).toNat

end

end A286321.P8391724214139362371

/-! ## A286321.P16236247482729332357

`gcd(A295582(n+3), A296116(n))`
-/

namespace A286321.P16236247482729332357
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A295582 (n + 3)) (A296116 n)

end

end A286321.P16236247482729332357

/-! ## A286321.P2449050438604501557

`dr(A019446(A304100(n+1)!))`
-/

namespace A286321.P2449050438604501557
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A019446 (Nat.factorial (A304100 (n + 1)).toNat))

end

end A286321.P2449050438604501557

/-! ## A286321.P13986409977133131372

`A000119(n)*A069288(A143891(n))`
-/

namespace A286321.P13986409977133131372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000119 n * A069288 (A143891 n).toNat

end

end A286321.P13986409977133131372

/-!
# A286322: Totient highly abundant numbers that are composite.

The programs for A286322, there is no canonical definition to state claims against.
-/

/-! ## A286322.P16743306912269435581

`∩[A001358(n+1), A286267(n+1)]`
-/

namespace A286322.P16743306912269435581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286267 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A286322.P16743306912269435581

/-! ## A286322.P4030338400214480086

`∩[A118692(n+1), A286267(n+1)]`
-/

namespace A286322.P4030338400214480086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118692 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286267 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A286322.P4030338400214480086

/-!
# A286323: Beatty sequence of (8 + sqrt(8))/7; complement of A022842.

The programs for A286323, the canonical program `A286323.P8198596250458039235` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286323 has offset 1).

The definition of A286323 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286323.P8198596250458039235

`comp[floor(n*sqrt(8))]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A286323

/-- `comp[floor(n*sqrt(8))]` -/
def P8198596250458039235.Spec : Prop :=
  ∀ n, (P8198596250458039235.a n : ℤ) = A286323 (n + 1)

theorem P8198596250458039235.correct : P8198596250458039235.Spec := by
  intro n
  simp only [A286323, Nat.add_sub_cancel]

end A286323

/-! ## A286323.P1862564083255272517

`∪[A001952(n+1), A342281(n)]`
-/

namespace A286323.P1862564083255272517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A286323.P1862564083255272517

namespace A286323

/-- `∪[A001952(n+1), A342281(n)]` -/
def P1862564083255272517.Spec : Prop :=
  ∀ n, (P1862564083255272517.a n : ℤ) = A286323 (n + 1)

end A286323

/-! ## A286323.P8587413230937571352

`A330183(n+1)-A292641(n+1)`
-/

namespace A286323.P8587413230937571352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330183 (n + 1) - A292641 (n + 1)

end

end A286323.P8587413230937571352

namespace A286323

/-- `A330183(n+1)-A292641(n+1)` -/
def P8587413230937571352.Spec : Prop :=
  ∀ n, P8587413230937571352.a n = A286323 (n + 1)

end A286323

/-! ## A286323.P8971312457731834334

`A004526(A292641(n+1))`
-/

namespace A286323.P8971312457731834334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A292641 (n + 1)).toNat

end

end A286323.P8971312457731834334

namespace A286323

/-- `A004526(A292641(n+1))` -/
def P8971312457731834334.Spec : Prop :=
  ∀ n, P8971312457731834334.a n = A286323 (n + 1)

end A286323

/-! ## A286323.P13018287629630558313

`A002264(A330183(n+1))`
-/

namespace A286323.P13018287629630558313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A330183 (n + 1)).toNat

end

end A286323.P13018287629630558313

namespace A286323

/-- `A002264(A330183(n+1))` -/
def P13018287629630558313.Spec : Prop :=
  ∀ n, P13018287629630558313.a n = A286323 (n + 1)

end A286323

/-! ## A286323.P9299400020995651517

`floor(ratio[A332256(n)])`
-/

namespace A286323.P9299400020995651517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332256 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A286323.P9299400020995651517

namespace A286323

/-- `floor(ratio[A332256(n)])` -/
def P9299400020995651517.Spec : Prop :=
  ∀ n, P9299400020995651517.a n = A286323 (n + 1)

end A286323

/-! ## A286323.P4552281654011023538

`eq[A144604(n), A151933(n)]`
-/

namespace A286323.P4552281654011023538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144604 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A286323.P4552281654011023538

namespace A286323

/-- `eq[A144604(n), A151933(n)]` -/
def P4552281654011023538.Spec : Prop :=
  ∀ n, (P4552281654011023538.a n : ℤ) = A286323 (n + 1)

end A286323

/-! ## A286323.P174230080213981211

`A191540(∑[n+1])`
-/

namespace A286323.P174230080213981211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191540 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A286323.P174230080213981211

namespace A286323

/-- `A191540(∑[n+1])` -/
def P174230080213981211.Spec : Prop :=
  ∀ n, P174230080213981211.a n = A286323 (n + 1)

end A286323

/-!
# A286324: a(n) is the number of bi-unitary divisors of n.

The programs for A286324, the canonical program `A286324.P10528776469317877690` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286324 has offset 1).

The definition of A286324 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A350390, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A286324.P10528776469317877690

`A000005(A350390(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A286324

/-- `A000005(A350390(n+1))` -/
def P10528776469317877690.Spec : Prop :=
  ∀ n, P10528776469317877690.a n = A286324 (n + 1)

theorem P10528776469317877690.correct : P10528776469317877690.Spec := by
  intro n
  simp only [A286324, Nat.add_sub_cancel]

end A286324

/-! ## A286324.P4729968534497990619

`∏{e}[n+1, #%2+#]`
-/

namespace A286324.P4729968534497990619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p % 2 + Nat.factorization (f1 n) p)

end

end A286324.P4729968534497990619

namespace A286324

/-- `∏{e}[n+1, #%2+#]` -/
def P4729968534497990619.Spec : Prop :=
  ∀ n, (P4729968534497990619.a n : ℤ) = A286324 (n + 1)

end A286324

/-! ## A286324.P5142480891279240094

`∏{e}[n+1, and(1, #)+#]`
-/

namespace A286324.P5142480891279240094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.land 1 (Nat.factorization (f1 n) p) + Nat.factorization (f1 n) p)

end

end A286324.P5142480891279240094

namespace A286324

/-- `∏{e}[n+1, and(1, #)+#]` -/
def P5142480891279240094.Spec : Prop :=
  ∀ n, (P5142480891279240094.a n : ℤ) = A286324 (n + 1)

end A286324

/-! ## A286324.P5269105144024068510

`∏{e}[n+1, 1-or(1, -#)]`
-/

namespace A286324.P5269105144024068510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (1 - Int.lor 1 (-(Nat.factorization (f1 n) p : ℤ)))

end

end A286324.P5269105144024068510

namespace A286324

/-- `∏{e}[n+1, 1-or(1, -#)]` -/
def P5269105144024068510.Spec : Prop :=
  ∀ n, P5269105144024068510.a n = A286324 (n + 1)

end A286324

/-! ## A286324.P13798073365090134461

`∏{e}[n+1, 2*ceil(#/2)]`
-/

namespace A286324.P13798073365090134461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 2 * ⌈(Nat.factorization (f1 n) p : ℚ) / 2⌉

end

end A286324.P13798073365090134461

namespace A286324

/-- `∏{e}[n+1, 2*ceil(#/2)]` -/
def P13798073365090134461.Spec : Prop :=
  ∀ n, P13798073365090134461.a n = A286324 (n + 1)

end A286324

/-! ## A286324.P12925174911162613367

`A000005(n+1)-A390957(n+1)`
-/

namespace A286324.P12925174911162613367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A390957 (n + 1)

end

end A286324.P12925174911162613367

namespace A286324

/-- `A000005(n+1)-A390957(n+1)` -/
def P12925174911162613367.Spec : Prop :=
  ∀ n, P12925174911162613367.a n = A286324 (n + 1)

end A286324

/-! ## A286324.P9122788145418683470

`A034444(n+1)*A325837(n+1)`
-/

namespace A286324.P9122788145418683470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) * A325837 (n + 1)

end

end A286324.P9122788145418683470

namespace A286324

/-- `A034444(n+1)*A325837(n+1)` -/
def P9122788145418683470.Spec : Prop :=
  ∀ n, P9122788145418683470.a n = A286324 (n + 1)

end A286324

/-! ## A286324.P11854891441000363092

`A056671(n+1)*A368104(n+1)`
-/

namespace A286324.P11854891441000363092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056671 (n + 1) * A368104 (n + 1)

end

end A286324.P11854891441000363092

namespace A286324

/-- `A056671(n+1)*A368104(n+1)` -/
def P11854891441000363092.Spec : Prop :=
  ∀ n, P11854891441000363092.a n = A286324 (n + 1)

end A286324

/-! ## A286324.P11107496024110435318

`A365498(n+1)*A368172(n+1)`
-/

namespace A286324.P11107496024110435318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365498 (n + 1) * A368172 (n + 1)

end

end A286324.P11107496024110435318

namespace A286324

/-- `A365498(n+1)*A368172(n+1)` -/
def P11107496024110435318.Spec : Prop :=
  ∀ n, P11107496024110435318.a n = A286324 (n + 1)

end A286324

/-! ## A286324.P322637646066507572

`A365402(n+1)*A370080(n+1)`
-/

namespace A286324.P322637646066507572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365402 (n + 1) * A370080 (n + 1)

end

end A286324.P322637646066507572

namespace A286324

/-- `A365402(n+1)*A370080(n+1)` -/
def P322637646066507572.Spec : Prop :=
  ∀ n, P322637646066507572.a n = A286324 (n + 1)

end A286324

/-! ## A286324.P3929787880148579624

`A000005((n+1)/A336643(n+1))`
-/

namespace A286324.P3929787880148579624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A336643 (n + 1) : ℚ))).toNat

end

end A286324.P3929787880148579624

namespace A286324

/-- `A000005((n+1)/A336643(n+1))` -/
def P3929787880148579624.Spec : Prop :=
  ∀ n, P3929787880148579624.a n = A286324 (n + 1)

end A286324

/-! ## A286324.P13084802984480490349

`A365348((n+1)/A336643(n+1))`
-/

namespace A286324.P13084802984480490349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365348 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A336643 (n + 1) : ℚ))).toNat

end

end A286324.P13084802984480490349

namespace A286324

/-- `A365348((n+1)/A336643(n+1))` -/
def P13084802984480490349.Spec : Prop :=
  ∀ n, P13084802984480490349.a n = A286324 (n + 1)

end A286324

/-! ## A286324.P4937943091370178484

`A365348(A350390(2*n+1-n))`
-/

namespace A286324.P4937943091370178484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365348 (A350390 (2 * n + 1 - n)).toNat

end

end A286324.P4937943091370178484

namespace A286324

/-- `A365348(A350390(2*n+1-n))` -/
def P4937943091370178484.Spec : Prop :=
  ∀ n, P4937943091370178484.a n = A286324 (n + 1)

end A286324

/-! ## A286324.P3238795475276147042

`A000005(gcd(n+1, A011262(n+1)))`
-/

namespace A286324.P3238795475276147042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (n + 1 : ℤ) (A011262 (n + 1)))

end

end A286324.P3238795475276147042

namespace A286324

/-- `A000005(gcd(n+1, A011262(n+1)))` -/
def P3238795475276147042.Spec : Prop :=
  ∀ n, P3238795475276147042.a n = A286324 (n + 1)

end A286324

/-! ## A286324.P5190528254147855499

`∑{d}[n+1, A008966(#)*A370079((n+1)/#)]`
-/

namespace A286324.P5190528254147855499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A370079 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A286324.P5190528254147855499

namespace A286324

/-- `∑{d}[n+1, A008966(#)*A370079((n+1)/#)]` -/
def P5190528254147855499.Spec : Prop :=
  ∀ n, P5190528254147855499.a n = A286324 (n + 1)

end A286324

/-! ## A286324.P12845029956266907862

`A000005((n+1)/∏{p}[n+1, #]*A007913(n+1))`
-/

namespace A286324.P12845029956266907862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * (A007913 (n + 1) : ℚ))).toNat

end

end A286324.P12845029956266907862

namespace A286324

/-- `A000005((n+1)/∏{p}[n+1, #]*A007913(n+1))` -/
def P12845029956266907862.Spec : Prop :=
  ∀ n, P12845029956266907862.a n = A286324 (n + 1)

end A286324

/-! ## A286324.P9481669001854662524

`A000005(A102631(A019554(n+1)))`
-/

namespace A286324.P9481669001854662524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A102631 (A019554 (n + 1)).toNat).toNat

end

end A286324.P9481669001854662524

namespace A286324

/-- `A000005(A102631(A019554(n+1)))` -/
def P9481669001854662524.Spec : Prop :=
  ∀ n, P9481669001854662524.a n = A286324 (n + 1)

end A286324

/-! ## A286324.P10722277568152382370

`A000005(Δ[A069891(n)]*A003557(n+1))`
-/

namespace A286324.P10722277568152382370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((f1 (n + 1) - f1 n) * A003557 (n + 1)).toNat

end

end A286324.P10722277568152382370

namespace A286324

/-- `A000005(Δ[A069891(n)]*A003557(n+1))` -/
def P10722277568152382370.Spec : Prop :=
  ∀ n, P10722277568152382370.a n = A286324 (n + 1)

end A286324

/-! ## A286324.P1729870101103815554

`A000005(A003557(n+1)*A007913(n+1))`
-/

namespace A286324.P1729870101103815554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A003557 (n + 1) * A007913 (n + 1)).toNat

end

end A286324.P1729870101103815554

namespace A286324

/-- `A000005(A003557(n+1)*A007913(n+1))` -/
def P1729870101103815554.Spec : Prop :=
  ∀ n, P1729870101103815554.a n = A286324 (n + 1)

end A286324

/-! ## A286324.P15431271225870788274

`A046644(A007947(n+1))*A325837(n+1)`
-/

namespace A286324.P15431271225870788274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046644 (A007947 (n + 1)).toNat * A325837 (n + 1)

end

end A286324.P15431271225870788274

namespace A286324

/-- `A046644(A007947(n+1))*A325837(n+1)` -/
def P15431271225870788274.Spec : Prop :=
  ∀ n, P15431271225870788274.a n = A286324 (n + 1)

end A286324

/-!
# A286325: Bi-unitary harmonic numbers.

The programs for A286325, there is no canonical definition to state claims against.
-/

/-! ## A286325.P2123569531832347992

`A063947(n+1)%A003963(A142373(3*n+4))`
-/

namespace A286325.P2123569531832347992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063947 (n + 1)) (A003963 (A142373 (3 * n + 4)).toNat)

end

end A286325.P2123569531832347992

/-!
# A286326: Least possible maximum of the two initial terms of a Fibonacci-like sequence containing n.

The programs for A286326, there is no canonical definition to state claims against.
-/

/-! ## A286326.P17370412844108140651

`A097368(A233583(n+1))-A000007(n)`
-/

namespace A286326.P17370412844108140651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097368 (A233583 (n + 1)).toNat - A000007 n

end

end A286326.P17370412844108140651

/-! ## A286326.P13238673059116866165

`A097368(A233583(n+1))%A000124(n)`
-/

namespace A286326.P13238673059116866165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097368 (A233583 (n + 1)).toNat) (A000124 n)

end

end A286326.P13238673059116866165

/-! ## A286326.P11402977413403981582

`char[A052938(n)]*A097368(A233583(n+1))`
-/

namespace A286326.P11402977413403981582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A097368 (A233583 (n + 1)).toNat

end

end A286326.P11402977413403981582

/-! ## A286326.P8099547084338538569

`A001222(A105560(n+1))*A097368(A233583(n+1))`
-/

namespace A286326.P8099547084338538569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A105560 (n + 1)).toNat * A097368 (A233583 (n + 1)).toNat

end

end A286326.P8099547084338538569

/-! ## A286326.P15085714690615068486

`and(A000225(n), A097368(A233583(n+1)))`
-/

namespace A286326.P15085714690615068486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A097368 (A233583 (n + 1)).toNat)

end

end A286326.P15085714690615068486

/-!
# A286327: Least possible sum of the squares of the two initial terms of a Fibonacci-like sequence containing n.

The programs for A286327, there is no canonical definition to state claims against.
-/

/-! ## A286327.P3276866301092501455

`A247981(A218196(n+1))%(n+1)`
-/

namespace A286327.P3276866301092501455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247981 (A218196 (n + 1)).toNat) (n + 1 : ℤ)

end

end A286327.P3276866301092501455

/-! ## A286327.P648572943621828276

`A052015(A179082(2*(n+1)))%A295886(n+1)`
-/

namespace A286327.P648572943621828276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052015 (A179082 (2 * (n + 1))).toNat) (A295886 (n + 1))

end

end A286327.P648572943621828276

/-! ## A286327.P412287810355995683

`A091729(A046079(2*(n+2))+A002530(n+4))%(n+1)`
-/

namespace A286327.P412287810355995683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091729 (A046079 (2 * (n + 2)) + A002530 (n + 4)).toNat) (n + 1 : ℤ)

end

end A286327.P412287810355995683

/-!
# A286331: Triangle read by rows: T(n,k) is the number of n X n matrices of rank k over F_2.

The programs for A286331, there is no canonical definition to state claims against.
-/

/-! ## A286331.P2881170633672960388

`A022166(n)²*A002884(A002262(n))`
-/

namespace A286331.P2881170633672960388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022166 n ^ 2 * A002884 (A002262 n).toNat

end

end A286331.P2881170633672960388

/-! ## A286331.P16090905679428289878

`A022166(n)/A117401(n)*A348622(n)`
-/

namespace A286331.P16090905679428289878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022166 n : ℚ) / (A117401 n : ℚ) * (A348622 n : ℚ)

end

end A286331.P16090905679428289878

/-! ## A286331.P3134948155117698919

`A022166(n)/sqrt(A118185(n))*A348622(n)`
-/

namespace A286331.P3134948155117698919
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A022166 n : ℝ) / Real.sqrt (A118185 n : ℝ) * (A348622 n : ℝ)

end

end A286331.P3134948155117698919

/-! ## A286331.P1807784374530497873

`A022166(n)*A288853(n)`
-/

namespace A286331.P1807784374530497873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022166 n * A288853 n

end

end A286331.P1807784374530497873

/-! ## A286331.P7832033089348087149

`A288853(n)²/A002884(A002262(n))`
-/

namespace A286331.P7832033089348087149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288853 n ^ 2 : ℚ) / (A002884 (A002262 n).toNat : ℚ)

end

end A286331.P7832033089348087149

/-!
# A286333: Primes p where all the cyclic shifts of their digits to the left also produce primes except the last one before reaching p again.

The programs for A286333, there is no canonical definition to state claims against.
-/

/-! ## A286333.P9713506579448397673

`A270083(lt[A263405(n), n])`
-/

namespace A286333.P9713506579448397673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263405 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270083 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A286333.P9713506579448397673

/-! ## A286333.P16227443768048322030

`∩[A000040(n+1), A270083(A296762(n+1))]`
-/

namespace A286333.P16227443768048322030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270083 (A296762 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A286333.P16227443768048322030

/-! ## A286333.P9708722656443594534

`∩[A246655(n+1), A270083(A296762(n+1))]`
-/

namespace A286333.P9708722656443594534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270083 (A296762 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A286333.P9708722656443594534

/-!
# A286334: The smallest number a such that there exists an integer b such that a/b is equal to n% rounded to the nearest percent.

The programs for A286334, there is no canonical definition to state claims against.
-/

/-! ## A286334.P14043363556187794335

`A239526(n)-A014078(A000792(n+2))`
-/

namespace A286334.P14043363556187794335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239526 n - A014078 (A000792 (n + 2)).toNat

end

end A286334.P14043363556187794335

/-! ## A286334.P221846713830761181

`p?[A276625(n+1)]%A233583(A338283(n+1))`
-/

namespace A286334.P221846713830761181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276625 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A233583 (A338283 (n + 1)).toNat)

end

end A286334.P221846713830761181

/-! ## A286334.P11630849272324238610

`∑{e}[A001650(A053253(A026838(n+1))), #]`
-/

namespace A286334.P11630849272324238610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001650 (A053253 (A026838 (n + 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A286334.P11630849272324238610

/-!
# A286335: Square array A(n,k), n>=0, k>=0, read by antidiagonals, where column k is the expansion of Product_{j>=1} (1 + x^j)^k.

The programs for A286335, there is no canonical definition to state claims against.
-/

/-! ## A286335.P10845902098079894396

`A291652(n)-A125005(A326323(n))`
-/

namespace A286335.P10845902098079894396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291652 n - A125005 (A326323 n).toNat

end

end A286335.P10845902098079894396

/-! ## A286335.P8221261575354754641

`A291652(n)-A089311(A094544(n))`
-/

namespace A286335.P8221261575354754641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291652 n - A089311 (A094544 n).toNat

end

end A286335.P8221261575354754641

/-! ## A286335.P8897746354639828649

`A291652(n)-A025469(A163661(n))`
-/

namespace A286335.P8897746354639828649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291652 n - A025469 (A163661 n).toNat

end

end A286335.P8897746354639828649

/-! ## A286335.P13054825167276870375

`A291652(n)-A025469(A256116(n))`
-/

namespace A286335.P13054825167276870375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291652 n - A025469 (A256116 n).toNat

end

end A286335.P13054825167276870375

/-! ## A286335.P17898080003828517554

`A291652(n)-A293162(A156953(n))`
-/

namespace A286335.P17898080003828517554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291652 n - A293162 (A156953 n).toNat

end

end A286335.P17898080003828517554

/-!
# A286336: {1101->0}-transform of the Thue-Morse word A010060.

The programs for A286336, there is no canonical definition to state claims against.
-/

/-! ## A286336.P6803817503590488380

`char[A286338(n+1)-1]`
-/

namespace A286336.P6803817503590488380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286338 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286336.P6803817503590488380

/-! ## A286336.P4870399665585839521

`char[comp[A286337(n+1)-1]]`
-/

namespace A286336.P4870399665585839521
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286337 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A286336.P4870399665585839521

/-! ## A286336.P5521851084586665178

`1-char[A286337(abs(1-n)+1)-1]`
-/

namespace A286336.P5521851084586665178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286337 (|1 - (n : ℤ)| + 1).toNat - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A286336.P5521851084586665178

/-! ## A286336.P11678020125188274194

`xor(1, char[A286337(floor(n/2)+1)-1])`
-/

namespace A286336.P11678020125188274194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286337 (⌊(n : ℚ) / 2⌋ + 1).toNat - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A286336.P11678020125188274194

/-! ## A286336.P11896196589357097416

`abs(1-char[A286337(A028310(n))-1])`
-/

namespace A286336.P11896196589357097416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286337 (A028310 n).toNat - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)|

end

end A286336.P11896196589357097416

/-!
# A286337: Positions of 0 in A286336; complement of A286338.

The programs for A286337, there is no canonical definition to state claims against.
-/

/-! ## A286337.P14058454793164355456

`comp[A286338(n+1)-1]+1`
-/

namespace A286337.P14058454793164355456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286338 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A286337.P14058454793164355456

/-! ## A286337.P744897915528095437

`A286421(A001285(n)+n)-A001285(n)`
-/

namespace A286337.P744897915528095437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286421 (A001285 n + (n : ℤ)).toNat - A001285 n

end

end A286337.P744897915528095437

/-! ## A286337.P8274613816664152834

`eq[0, A286336(n+1)]+1`
-/

namespace A286337.P8274613816664152834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286336 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A286337.P8274613816664152834

/-! ## A286337.P3389455261843523321

`record[xor(n+1, A053644((n+1)*A286336(n+1)))]`
-/

namespace A286337.P3389455261843523321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A053644 ((n + 1 : ℤ) * A286336 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286337.P3389455261843523321

/-! ## A286337.P6431167769079523243

`eq[A028310(n)-n, A286336(A028310(n))]`
-/

namespace A286337.P6431167769079523243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286336 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A286337.P6431167769079523243

/-! ## A286337.P7652256345647368527

`∑[A005680(A005680(n+1)+A004757(2*n+1))]`
-/

namespace A286337.P7652256345647368527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005680 (A005680 (n + 1) + A004757 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286337.P7652256345647368527

/-! ## A286337.P4727025387470764959

`record[A089353(A000124(n)-A286336(n+1))]`
-/

namespace A286337.P4727025387470764959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089353 (A000124 n - A286336 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286337.P4727025387470764959

/-!
# A286338: Positions of 1 in A286336; complement of A286337.

The programs for A286338, there is no canonical definition to state claims against.
-/

/-! ## A286338.P9491665768301175014

`filter[n+1, A286336(#)]`
-/

namespace A286338.P9491665768301175014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A286336 (f1 j) = 1) n)

end

end A286338.P9491665768301175014

/-! ## A286338.P11868145947116116420

`eq[1, A286336(n+1)]+1`
-/

namespace A286338.P11868145947116116420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286336 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A286338.P11868145947116116420

/-! ## A286338.P11394856664798196665

`record[(n+5)*A286336(n+5)]`
-/

namespace A286338.P11394856664798196665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 5 : ℤ) * A286336 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286338.P11394856664798196665

/-! ## A286338.P9060536449592241318

`eq[1, A286336(A028310(n))]`
-/

namespace A286338.P9060536449592241318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286336 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A286338.P9060536449592241318

/-! ## A286338.P4561615374216019038

`eq[char[A286337(n+1)], A000007(n)]`
-/

namespace A286338.P4561615374216019038
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286337 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A286338.P4561615374216019038

/-! ## A286338.P9858451572777709065

`eq[char[A286337(n+1)], A000038(n)]`
-/

namespace A286338.P9858451572777709065
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286337 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A286338.P9858451572777709065

/-! ## A286338.P6067160946331518988

`eq[1, A286336(A233583(n+1))]`
-/

namespace A286338.P6067160946331518988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286336 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A286338.P6067160946331518988

/-!
# A286339: {1101->1}-transform of the Thue-Morse word A010060.

The programs for A286339, there is no canonical definition to state claims against.
-/

/-! ## A286339.P18217121497680740741

`char[A286341(n+1)-1]`
-/

namespace A286339.P18217121497680740741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286341 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286339.P18217121497680740741

/-! ## A286339.P7116824526271778875

`1-A284622(2*n+5)`
-/

namespace A286339.P7116824526271778875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A284622 (2 * n + 5)

end

end A286339.P7116824526271778875

/-! ## A286339.P15260312918088973220

`∑[-Δ[A284622(2*n+3)]]`
-/

namespace A286339.P15260312918088973220
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284622 (2 * n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286339.P15260312918088973220

/-! ## A286339.P18171918460068085395

`A000007((n+1)*A284622(2*n+5))`
-/

namespace A286339.P18171918460068085395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((n + 1 : ℤ) * A284622 (2 * n + 5)).toNat

end

end A286339.P18171918460068085395

/-! ## A286339.P2634713630477531966

`(A284622(2*n+5)+A212741(n))%2`
-/

namespace A286339.P2634713630477531966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284622 (2 * n + 5) + A212741 n) 2

end

end A286339.P2634713630477531966

/-! ## A286339.P6872220696691752354

`A000035(A284622(2*n+5)+2*n+1)`
-/

namespace A286339.P6872220696691752354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A284622 (2 * n + 5) + (2 * n + 1 : ℤ)).toNat

end

end A286339.P6872220696691752354

/-! ## A286339.P6048814211865314924

`A000007(A284622(2*n+5)*A313720(n))`
-/

namespace A286339.P6048814211865314924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A284622 (2 * n + 5) * A313720 n).toNat

end

end A286339.P6048814211865314924

/-! ## A286339.P16577137202483335350

`A000007(A284622(2*n+5)*A313734(n))`
-/

namespace A286339.P16577137202483335350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A284622 (2 * n + 5) * A313734 n).toNat

end

end A286339.P16577137202483335350

/-!
# A286340: Positions of 0 in A286339; complement of A286341.

The programs for A286340, there is no canonical definition to state claims against.
-/

/-! ## A286340.P7439016298983393329

`lt[A286339(n+1), 1]+1`
-/

namespace A286340.P7439016298983393329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286339 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A286340.P7439016298983393329

/-! ## A286340.P7960531942734666644

`record[n+1-A039723(n*A286339(n+1))]`
-/

namespace A286340.P7960531942734666644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A039723 ((n : ℤ) * A286339 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286340.P7960531942734666644

/-! ## A286340.P9042020643838516143

`record[(n+1)/A001316(n*A286339(n+1))]`
-/

namespace A286340.P9042020643838516143
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A001316 ((n : ℤ) * A286339 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286340.P9042020643838516143

/-! ## A286340.P7513752252629464815

`record[n+1-A076084(n+1)*A286339(n+1)]`
-/

namespace A286340.P7513752252629464815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A076084 (n + 1) * A286339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286340.P7513752252629464815

/-! ## A286340.P4924541695571467453

`record[n+1-A285758(n+1)*A286339(n+1)]`
-/

namespace A286340.P4924541695571467453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A285758 (n + 1) * A286339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286340.P4924541695571467453

/-!
# A286341: Positions of 1 in A286339; complement of A286340.

The programs for A286341, there is no canonical definition to state claims against.
-/

/-! ## A286341.P17084374488920025469

`filter[n+1, A286339(#)]`
-/

namespace A286341.P17084374488920025469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A286339 (f1 j) = 1) n)

end

end A286341.P17084374488920025469

/-! ## A286341.P6859210950846920145

`eq[1, A286339(n+1)]+1`
-/

namespace A286341.P6859210950846920145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286339 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A286341.P6859210950846920145

/-! ## A286341.P15608028355066983407

`eq[1, A286339(A028310(n))]`
-/

namespace A286341.P15608028355066983407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286339 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A286341.P15608028355066983407

/-! ## A286341.P1856352318694674184

`record[A286339(n+2)+A286339(n+2)+n]`
-/

namespace A286341.P1856352318694674184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286339 (n + 2) + (A286339 (n + 2) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286341.P1856352318694674184

/-! ## A286341.P18445438512669308242

`A286402(A110654(A260480(n+1)))`
-/

namespace A286341.P18445438512669308242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286402 (A110654 (A260480 (n + 1)).toNat).toNat

end

end A286341.P18445438512669308242

/-! ## A286341.P7923699633591763725

`record[A285758(n+2)*A286339(A285758(n+2))]`
-/

namespace A286341.P7923699633591763725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285758 (n + 2) * A286339 (A285758 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286341.P7923699633591763725

/-! ## A286341.P10368778175594193562

`eq[0, A284622(2*n+3)]`
-/

namespace A286341.P10368778175594193562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284622 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A286341.P10368778175594193562

/-!
# A286343: For n>0, let b(n) = greatest index of n in any Fibonacci-like sequence containing n. This sequence is the ordinal transform of b.

The programs for A286343, there is no canonical definition to state claims against.
-/

/-! ## A286343.P1130244117221273514

`A199087(n+1)+A121373(A022390(n))`
-/

namespace A286343.P1130244117221273514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199087 (n + 1) + A121373 (A022390 n).toNat

end

end A286343.P1130244117221273514

/-! ## A286343.P15306827135746315721

`A014055(A001748(n+1))+A096067(A077168(n))+1`
-/

namespace A286343.P15306827135746315721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014055 (A001748 (n + 1)).toNat + (A096067 (A077168 n).toNat + 1)

end

end A286343.P15306827135746315721

/-! ## A286343.P8833321961832136143

`A014055(A001748(n+1))+A189289(2^n)+A096067(n+1)`
-/

namespace A286343.P8833321961832136143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014055 (A001748 (n + 1)).toNat + (A189289 (2 ^ n) + A096067 (n + 1))

end

end A286343.P8833321961832136143

/-!
# A286344: Number of (n,1)-polyominoes.

The programs for A286344, there is no canonical definition to state claims against.
-/

/-! ## A286344.P15039792910994750845

`record[A010054(n+2)*A381030(n+2)]`
-/

namespace A286344.P15039792910994750845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 2) * A381030 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286344.P15039792910994750845

/-! ## A286344.P11597128964598602959

`A257646(A148437(n+1))`
-/

namespace A286344.P11597128964598602959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257646 (A148437 (n + 1)).toNat

end

end A286344.P11597128964598602959

/-!
# A286346: Expansion of eta(q)^24 / eta(q^2)^12 in powers of q.

The programs for A286346, there is no canonical definition to state claims against.
-/

/-! ## A286346.P12435228376402085267

`(-1)^n*A000145(n)`
-/

namespace A286346.P12435228376402085267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000145 n

end

end A286346.P12435228376402085267

/-! ## A286346.P11769907197158863361

`A000145(n)*A033999(n)`
-/

namespace A286346.P11769907197158863361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000145 n * A033999 n

end

end A286346.P11769907197158863361

/-! ## A286346.P2245049328338556463

`A000145(n)*A000735(n)/A209676(n)`
-/

namespace A286346.P2245049328338556463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000145 n * A000735 n : ℚ) / (A209676 n : ℚ)

end

end A286346.P2245049328338556463

/-! ## A286346.P949367285844209816

`A000145(n)/A033999(n+2)`
-/

namespace A286346.P949367285844209816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000145 n : ℚ) / (A033999 (n + 2) : ℚ)

end

end A286346.P949367285844209816

/-! ## A286346.P7098810066690037255

`A000145(n)/A004413(n)*A319554(n)`
-/

namespace A286346.P7098810066690037255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000145 n : ℚ) / (A004413 n : ℚ) * (A319554 n : ℚ)

end

end A286346.P7098810066690037255

/-!
# A286347: Number of tilings of a 6 X n rectangle using pentominoes of shapes X, Y, T and monominoes.

The programs for A286347, there is no canonical definition to state claims against.
-/

/-! ## A286347.P5548250908952863435

`A038722(or(A161779(n), A229228(n)))`
-/

namespace A286347.P5548250908952863435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (Int.lor (A161779 n) (A229228 n)).toNat

end

end A286347.P5548250908952863435

/-!
# A286349: Möbius (or Moebius) partition function of partitions listed in the Abramowitz-Stegun order.

The programs for A286349, there is no canonical definition to state claims against.
-/

/-! ## A286349.P2353744815727558308

`∏{e}[A185974(n+1), -floor(1/#)]`
-/

namespace A286349.P2353744815727558308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185974 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (-⌊1 / (Nat.factorization (f1 n).natAbs p : ℚ)⌋)

end

end A286349.P2353744815727558308

/-! ## A286349.P5742302256732063768

`A008683(A185974(n+1))`
-/

namespace A286349.P5742302256732063768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A185974 (n + 1)).toNat

end

end A286349.P5742302256732063768

/-! ## A286349.P7506369224224564596

`A008683(A334438(n+1))`
-/

namespace A286349.P7506369224224564596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A334438 (n + 1)).toNat

end

end A286349.P7506369224224564596

/-! ## A286349.P4037154459495938928

`∑{d}[A185974(n+1), A007427(#)]`
-/

namespace A286349.P4037154459495938928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185974 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007427 d

end

end A286349.P4037154459495938928

/-! ## A286349.P13677493997601760150

`A008683(A185974(n-log2(1/2)))%3`
-/

namespace A286349.P13677493997601760150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008683 (A185974 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat).toNat) 3

end

end A286349.P13677493997601760150

/-! ## A286349.P15849034563768898559

`A008683(A185974(n-log2(1/2))-char[1])`
-/

namespace A286349.P15849034563768898559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A185974 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A286349.P15849034563768898559

/-! ## A286349.P5884744982086494505

`A007423(round(sqrt(A185974(n+1)²+1)))-1`
-/

namespace A286349.P5884744982086494505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (SequenceMachineLib.roundAway (Real.sqrt (A185974 (n + 1) ^ 2 + 1 : ℝ))).toNat - 1

end

end A286349.P5884744982086494505

/-! ## A286349.P10516611785284383727

`A008683(ratio[A185974(n)]*A185974(n))`
-/

namespace A286349.P10516611785284383727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A185974 n : ℚ))).toNat

end

end A286349.P10516611785284383727

/-! ## A286349.P11687243061104201864

`A008683(ratio[A334438(n)]*A334438(n))`
-/

namespace A286349.P11687243061104201864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334438 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A334438 n : ℚ))).toNat

end

end A286349.P11687243061104201864

/-!
# A286350: a(n) = 2*a(n-1) - a(n-2) + a(n-4) for n>3, a(0)=0, a(1)=a(2)=2, a(3)=3.

The programs for A286350, the canonical program `A286350.P7234812811995550699` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286350 has offset 0).

The definition of A286350 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)-a(n-2)+a(n-4)` (program `A286350.P7234812811995550699`, by `A286350.P7234812811995550699.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A286350.P3234721956459077559

`A286311(n)+A128834(n)`
-/

namespace A286350.P3234721956459077559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286311 n + A128834 n

end

end A286350.P3234721956459077559

namespace A286350

/-- `A286311(n)+A128834(n)` -/
def P3234721956459077559.Spec : Prop :=
  ∀ n, P3234721956459077559.a n = A286350 n

end A286350

/-! ## A286350.P7234812811995550699

`2*a(n-1)-a(n-2)+a(n-4)` with `a(0)=0, a(1)=2, a(2)=2, a(3)=3`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A286350

/-- `2*a(n-1)-a(n-2)+a(n-4)` -/
def P7234812811995550699.Spec : Prop :=
  ∀ n, P7234812811995550699.a n = A286350 n

theorem P7234812811995550699.correct : P7234812811995550699.Spec := by
  intro n
  simp only [A286350]

end A286350

/-! ## A286350.P13304893355976476342

`A022086(n)-A286311(n)`
-/

namespace A286350.P13304893355976476342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022086 n - A286311 n

end

end A286350.P13304893355976476342

namespace A286350

/-- `A022086(n)-A286311(n)` -/
def P13304893355976476342.Spec : Prop :=
  ∀ n, P13304893355976476342.a n = A286350 n

end A286350

/-! ## A286350.P6443615645305978485

`(A022086(n)+A128834(n))/2`
-/

namespace A286350.P6443615645305978485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022086 n + A128834 n : ℚ) / 2

end

end A286350.P6443615645305978485

namespace A286350

/-- `(A022086(n)+A128834(n))/2` -/
def P6443615645305978485.Spec : Prop :=
  ∀ n, P6443615645305978485.a n = (A286350 n : ℚ)

end A286350

/-! ## A286350.P6471903616168847788

`ogf((2x-2x^2+x^3)/(1-2x+x^2-x^4))`
-/

namespace A286350.P6471903616168847788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -2, 1] [1, -2, 1, 0, -1] n

end

end A286350.P6471903616168847788

namespace A286350

/-- `ogf((2x-2x^2+x^3)/(1-2x+x^2-x^4))` -/
def P6471903616168847788.Spec : Prop :=
  ∀ n, P6471903616168847788.a n = A286350 n

end A286350

/-! ## A286350.P18424939601763441539

`A226956(n)-A152163(n)`
-/

namespace A286350.P18424939601763441539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226956 n - A152163 n

end

end A286350.P18424939601763441539

namespace A286350

/-- `A226956(n)-A152163(n)` -/
def P18424939601763441539.Spec : Prop :=
  ∀ n, P18424939601763441539.a n = A286350 n

end A286350

/-! ## A286350.P1534919541426652430

`A286311(n)-A010892(n+2)`
-/

namespace A286350.P1534919541426652430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286311 n - A010892 (n + 2)

end

end A286350.P1534919541426652430

namespace A286350

/-- `A286311(n)-A010892(n+2)` -/
def P1534919541426652430.Spec : Prop :=
  ∀ n, P1534919541426652430.a n = A286350 n

end A286350

/-! ## A286350.P5990437783927682522

`∑[A005252(n)]-A212804(n)`
-/

namespace A286350.P5990437783927682522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005252 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A212804 n

end

end A286350.P5990437783927682522

namespace A286350

/-- `∑[A005252(n)]-A212804(n)` -/
def P5990437783927682522.Spec : Prop :=
  ∀ n, P5990437783927682522.a n = A286350 n

end A286350

/-! ## A286350.P13830939680754486232

`A024490(n+2)-A212804(n)`
-/

namespace A286350.P13830939680754486232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024490 (n + 2) - A212804 n

end

end A286350.P13830939680754486232

namespace A286350

/-- `A024490(n+2)-A212804(n)` -/
def P13830939680754486232.Spec : Prop :=
  ∀ n, P13830939680754486232.a n = A286350 n

end A286350

/-! ## A286350.P17090347861410299819

`A024490(n+2)-Δ[A000045(n)]`
-/

namespace A286350.P17090347861410299819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024490 (n + 2) - (f1 (n + 1) - f1 n)

end

end A286350.P17090347861410299819

namespace A286350

/-- `A024490(n+2)-Δ[A000045(n)]` -/
def P17090347861410299819.Spec : Prop :=
  ∀ n, P17090347861410299819.a n = A286350 n

end A286350

/-! ## A286350.P1710885734042395656

`A024490(n+2)+A000045(n)-A000045(n+1)`
-/

namespace A286350.P1710885734042395656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024490 (n + 2) + (A000045 n - A000045 (n + 1))

end

end A286350.P1710885734042395656

namespace A286350

/-- `A024490(n+2)+A000045(n)-A000045(n+1)` -/
def P1710885734042395656.Spec : Prop :=
  ∀ n, P1710885734042395656.a n = A286350 n

end A286350

/-! ## A286350.P7164433602875138260

`A000071(n+2)+A000045(n)-A130578(n+1)`
-/

namespace A286350.P7164433602875138260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 2) + (A000045 n - A130578 (n + 1))

end

end A286350.P7164433602875138260

namespace A286350

/-- `A000071(n+2)+A000045(n)-A130578(n+1)` -/
def P7164433602875138260.Spec : Prop :=
  ∀ n, P7164433602875138260.a n = A286350 n

end A286350

/-! ## A286350.P11871157512552400024

`A226956(n+1)+A108014(n)-A024490(n+2)`
-/

namespace A286350.P11871157512552400024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226956 (n + 1) + (A108014 n - A024490 (n + 2))

end

end A286350.P11871157512552400024

namespace A286350

/-- `A226956(n+1)+A108014(n)-A024490(n+2)` -/
def P11871157512552400024.Spec : Prop :=
  ∀ n, P11871157512552400024.a n = A286350 n

end A286350

/-! ## A286350.P7386052357419876096

`A174619(2*(n+1))+A103609(2*n)-A174619(2*n+1)`
-/

namespace A286350.P7386052357419876096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174619 (2 * (n + 1)) + (A103609 (2 * n) - A174619 (2 * n + 1))

end

end A286350.P7386052357419876096

namespace A286350

/-- `A174619(2*(n+1))+A103609(2*n)-A174619(2*n+1)` -/
def P7386052357419876096.Spec : Prop :=
  ∀ n, P7386052357419876096.a n = A286350 n

end A286350

/-! ## A286350.P8879736440765866152

`Δ[A286311(n+1)]`
-/

namespace A286350.P8879736440765866152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286311 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A286350.P8879736440765866152

namespace A286350

/-- `Δ[A286311(n+1)]` -/
def P8879736440765866152.Spec : Prop :=
  ∀ n, P8879736440765866152.a n = A286350 n

end A286350

/-! ## A286350.P18155993793962736442

`A291660(n)-A000032(n)`
-/

namespace A286350.P18155993793962736442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291660 n - A000032 n

end

end A286350.P18155993793962736442

namespace A286350

/-- `A291660(n)-A000032(n)` -/
def P18155993793962736442.Spec : Prop :=
  ∀ n, P18155993793962736442.a n = A286350 n

end A286350

/-! ## A286350.P18079452625682267562

`A001610(n)-A130578(n+1)`
-/

namespace A286350.P18079452625682267562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n - A130578 (n + 1)

end

end A286350.P18079452625682267562

namespace A286350

/-- `A001610(n)-A130578(n+1)` -/
def P18079452625682267562.Spec : Prop :=
  ∀ n, P18079452625682267562.a n = A286350 n

end A286350

/-! ## A286350.P6691946972006492062

`A000032(n+1)-A005252(n+2)`
-/

namespace A286350.P6691946972006492062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) - A005252 (n + 2)

end

end A286350.P6691946972006492062

namespace A286350

/-- `A000032(n+1)-A005252(n+2)` -/
def P6691946972006492062.Spec : Prop :=
  ∀ n, P6691946972006492062.a n = A286350 n

end A286350

/-! ## A286350.P5068307148911216469

`A000204(n+1)-A005252(n+2)`
-/

namespace A286350.P5068307148911216469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1) - A005252 (n + 2)

end

end A286350.P5068307148911216469

namespace A286350

/-- `A000204(n+1)-A005252(n+2)` -/
def P5068307148911216469.Spec : Prop :=
  ∀ n, P5068307148911216469.a n = A286350 n

end A286350

/-! ## A286350.P7256311605240146651

`A286311(n+2)-A286311(n+1)`
-/

namespace A286350.P7256311605240146651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286311 (n + 2) - A286311 (n + 1)

end

end A286350.P7256311605240146651

namespace A286350

/-- `A286311(n+2)-A286311(n+1)` -/
def P7256311605240146651.Spec : Prop :=
  ∀ n, P7256311605240146651.a n = A286350 n

end A286350

/-!
# A286351: a(n) is the number of decompositions of 2^(n-1)*(2^n-1) into 3 nonnegative cubes.

The programs for A286351, there is no canonical definition to state claims against.
-/

/-! ## A286351.P13151066077906213506

`and(n-3, A318451(A288465(n)))`
-/

namespace A286351.P13151066077906213506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) - 3) (A318451 (A288465 n).toNat)

end

end A286351.P13151066077906213506

/-! ## A286351.P15993562143819701680

`and(1-A008486(n), A162246(A329816(n)))`
-/

namespace A286351.P15993562143819701680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (1 - A008486 n) (A162246 (A329816 n).toNat)

end

end A286351.P15993562143819701680

/-! ## A286351.P15088082302272680566

`A302110(A281179(n))`
-/

namespace A286351.P15088082302272680566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302110 (A281179 n).toNat

end

end A286351.P15088082302272680566

/-!
# A286352: Square array A(n,k), n>=0, k>=0, read by antidiagonals, where column k is the expansion of Product_{j>=1} 1/(1 + x^j)^k.

The programs for A286352, there is no canonical definition to state claims against.
-/

/-! ## A286352.P4089785446772666682

`A291701(n)+A125005(A326323(n))`
-/

namespace A286352.P4089785446772666682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291701 n + A125005 (A326323 n).toNat

end

end A286352.P4089785446772666682

/-! ## A286352.P8943053495449930072

`A291701(n)+A089311(A094544(n))`
-/

namespace A286352.P8943053495449930072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291701 n + A089311 (A094544 n).toNat

end

end A286352.P8943053495449930072

/-! ## A286352.P4762062458122800706

`A291701(n)+A025469(A163661(n))`
-/

namespace A286352.P4762062458122800706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291701 n + A025469 (A163661 n).toNat

end

end A286352.P4762062458122800706

/-! ## A286352.P7263404948097588391

`A291701(n)+A025469(A256116(n))`
-/

namespace A286352.P7263404948097588391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291701 n + A025469 (A256116 n).toNat

end

end A286352.P7263404948097588391

/-! ## A286352.P10364082512939691390

`A291701(n)+A125005(A275043(n))`
-/

namespace A286352.P10364082512939691390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291701 n + A125005 (A275043 n).toNat

end

end A286352.P10364082512939691390

/-!
# A286354: Square array A(n,k), n>=0, k>=0, read by antidiagonals, where column k is the expansion of Product_{j>=1} (1 - x^j)^k.

The programs for A286354, there is no canonical definition to state claims against.
-/

/-! ## A286354.P11771844397082547595

`A319933(∑[2*n]%(comp[∑[n+1]]+1))`
-/

namespace A286354.P11771844397082547595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319933 ((∑ j ∈ Finset.range (n + 1), f1 j) % (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1))

end

end A286354.P11771844397082547595

/-! ## A286354.P13768320230899260309

`A319933(∑[char[∑[n]]]²-(n+1))`
-/

namespace A286354.P13768320230899260309
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319933 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A286354.P13768320230899260309

/-! ## A286354.P609733185136478229

`A319933(∑[2*n]%comp[∑[n]])%52`
-/

namespace A286354.P609733185136478229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319933 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)) 52

end

end A286354.P609733185136478229

/-! ## A286354.P11046000827999637157

`A319933(A061579(n))%50`
-/

namespace A286354.P11046000827999637157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319933 (A061579 n).toNat) 50

end

end A286354.P11046000827999637157

/-! ## A286354.P14937706262487295191

`A319933(A114327(n)+n)%64`
-/

namespace A286354.P14937706262487295191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319933 (A114327 n + (n : ℤ)).toNat) 64

end

end A286354.P14937706262487295191

/-! ## A286354.P9510811195375955219

`A319933(A114327(n)+n)^(A000007(n)+1)`
-/

namespace A286354.P9510811195375955219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319933 (A114327 n + (n : ℤ)).toNat : ℚ) ^ (A000007 n + 1 : ℤ)

end

end A286354.P9510811195375955219

/-! ## A286354.P2465468595529504954

`A014963(4*n+6)*A319933(A114327(n)+n)`
-/

namespace A286354.P2465468595529504954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 6) * A319933 (A114327 n + (n : ℤ)).toNat

end

end A286354.P2465468595529504954

/-! ## A286354.P16308018949172876659

`A008683(A002146(n))+A319933(A114327(n)+n)+1`
-/

namespace A286354.P16308018949172876659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A002146 n).toNat + (A319933 (A114327 n + (n : ℤ)).toNat + 1)

end

end A286354.P16308018949172876659

/-! ## A286354.P10495675933297477860

`A001222(A004139(n+2))*A319933(A114327(n)+n)`
-/

namespace A286354.P10495675933297477860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A004139 (n + 2)).toNat * A319933 (A114327 n + (n : ℤ)).toNat

end

end A286354.P10495675933297477860

/-! ## A286354.P13134776579050781511

`A001222(A081257(2*(n+1)))*A319933(A114327(n)+n)`
-/

namespace A286354.P13134776579050781511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A081257 (2 * (n + 1))).toNat * A319933 (A114327 n + (n : ℤ)).toNat

end

end A286354.P13134776579050781511

/-!
# A286355: Beatty sequence of (10 + sqrt(10))/9; complement of A177102.

The programs for A286355, the canonical program `A286355.P15448951656903189073` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286355 has offset 1).

The definition of A286355 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286355.P15448951656903189073

`comp[floor(n*sqrt(10))]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A286355

/-- `comp[floor(n*sqrt(10))]` -/
def P15448951656903189073.Spec : Prop :=
  ∀ n, (P15448951656903189073.a n : ℤ) = A286355 (n + 1)

theorem P15448951656903189073.correct : P15448951656903189073.Spec := by
  intro n
  simp only [A286355, Nat.add_sub_cancel]

end A286355

/-! ## A286355.P3817398185623018462

`comp[A198265(n)-2]+1`
-/

namespace A286355.P3817398185623018462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198265 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A286355.P3817398185623018462

namespace A286355

/-- `comp[A198265(n)-2]+1` -/
def P3817398185623018462.Spec : Prop :=
  ∀ n, (P3817398185623018462.a n : ℤ) = A286355 (n + 1)

end A286355

/-! ## A286355.P625484213816651172

`comp[A177102(n+1)-1]+1`
-/

namespace A286355.P625484213816651172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177102 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A286355.P625484213816651172

namespace A286355

/-- `comp[A177102(n+1)-1]+1` -/
def P625484213816651172.Spec : Prop :=
  ∀ n, (P625484213816651172.a n : ℤ) = A286355 (n + 1)

end A286355

/-! ## A286355.P4180878285080436248

`record[or(n+1, -A286747(n+1))]`
-/

namespace A286355.P4180878285080436248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (-A286747 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286355.P4180878285080436248

namespace A286355

/-- `record[or(n+1, -A286747(n+1))]` -/
def P4180878285080436248.Spec : Prop :=
  ∀ n, P4180878285080436248.a n = A286355 (n + 1)

end A286355

/-! ## A286355.P13359459009362041724

`record[A286747(A022447(n+1))+A022447(n+1)]`
-/

namespace A286355.P13359459009362041724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286747 (A022447 (n + 1)).toNat + A022447 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286355.P13359459009362041724

namespace A286355

/-- `record[A286747(A022447(n+1))+A022447(n+1)]` -/
def P13359459009362041724.Spec : Prop :=
  ∀ n, P13359459009362041724.a n = A286355 (n + 1)

end A286355

/-! ## A286355.P1740865471649922003

`floor(A292665(n+1)+A309287(n+1)/13)`
-/

namespace A286355.P1740865471649922003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A292665 (n + 1) : ℚ) + (A309287 (n + 1) : ℚ) / 13⌋

end

end A286355.P1740865471649922003

namespace A286355

/-- `floor(A292665(n+1)+A309287(n+1)/13)` -/
def P1740865471649922003.Spec : Prop :=
  ∀ n, P1740865471649922003.a n = A286355 (n + 1)

end A286355

/-! ## A286355.P7623084085231045953

`A292665(n+1)%A000217((2*(n+1))²)`
-/

namespace A286355.P7623084085231045953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292665 (n + 1)) (A000217 ((2 * (n + 1)) ^ 2))

end

end A286355.P7623084085231045953

namespace A286355

/-- `A292665(n+1)%A000217((2*(n+1))²)` -/
def P7623084085231045953.Spec : Prop :=
  ∀ n, P7623084085231045953.a n = A286355 (n + 1)

end A286355

/-! ## A286355.P3013428067484377656

`A292665(n+1)%A002900(n+1)`
-/

namespace A286355.P3013428067484377656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292665 (n + 1)) (A002900 (n + 1))

end

end A286355.P3013428067484377656

namespace A286355

/-- `A292665(n+1)%A002900(n+1)` -/
def P3013428067484377656.Spec : Prop :=
  ∀ n, P3013428067484377656.a n = A286355 (n + 1)

end A286355

/-! ## A286355.P17784576566635449005

`A292665(n+1)%A002189(n)`
-/

namespace A286355.P17784576566635449005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292665 (n + 1)) (A002189 n)

end

end A286355.P17784576566635449005

namespace A286355

/-- `A292665(n+1)%A002189(n)` -/
def P17784576566635449005.Spec : Prop :=
  ∀ n, P17784576566635449005.a n = A286355 (n + 1)

end A286355

/-!
# A286356: Compound filter: a(n) = P(A061395(n), A046523(n)), where P(n,k) is sequence A000027 used as a pairing function.

The programs for A286356, the canonical program `A286356.P1310186742381643035` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286356 has offset 1).

The definition of A286356 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, A061395, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A286356.P1310186742381643035

`(2+(A061395(n+1)+A046523(n+1))²-A061395(n+1)-3*A046523(n+1))/2`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A286356

/-- `(2+(A061395(n+1)+A046523(n+1))²-A061395(n+1)-3*A046523(n+1))/2` -/
def P1310186742381643035.Spec : Prop :=
  ∀ n, P1310186742381643035.a n = (A286356 (n + 1) : ℚ)

end A286356

/-!
# A286357: One more than the exponent of the highest power of 2 dividing sigma(n): a(n) = A001511(A000203(n)).

The programs for A286357, the canonical program `A286357.P14769850405548421969` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286357 has offset 1).

The definition of A286357 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A286357.P12226210244487911237

`1+A000523(A000203(n+1)/A161942(n+1))`
-/

namespace A286357.P12226210244487911237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A000523 (SequenceMachineLib.roundAway ((A000203 (n + 1) : ℚ) / (A161942 (n + 1) : ℚ))).toNat

end

end A286357.P12226210244487911237

namespace A286357

/-- `1+A000523(A000203(n+1)/A161942(n+1))` -/
def P12226210244487911237.Spec : Prop :=
  ∀ n, P12226210244487911237.a n = A286357 (n + 1)

end A286357

/-! ## A286357.P14769850405548421969

`A001511(A000203(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A286357

/-- `A001511(A000203(n+1))` -/
def P14769850405548421969.Spec : Prop :=
  ∀ n, P14769850405548421969.a n = A286357 (n + 1)

theorem P14769850405548421969.correct : P14769850405548421969.Spec := by
  intro n
  simp only [A286357, Nat.add_sub_cancel]

end A286357

/-! ## A286357.P9024508461231876582

`val(∑{d}[n+1, #], 2)+1`
-/

namespace A286357.P9024508461231876582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ d ∈ Nat.divisors (f1 n), d) 2 + 1

end

end A286357.P9024508461231876582

namespace A286357

/-- `val(∑{d}[n+1, #], 2)+1` -/
def P9024508461231876582.Spec : Prop :=
  ∀ n, (P9024508461231876582.a n : ℤ) = A286357 (n + 1)

end A286357

/-! ## A286357.P14695692248562723106

`A336937(n+1)+1`
-/

namespace A286357.P14695692248562723106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336937 (n + 1) + 1

end

end A286357.P14695692248562723106

namespace A286357

/-- `A336937(n+1)+1` -/
def P14695692248562723106.Spec : Prop :=
  ∀ n, P14695692248562723106.a n = A286357 (n + 1)

end A286357

/-! ## A286357.P1880155272387942005

`val(A074400(n+1), 2)`
-/

namespace A286357.P1880155272387942005
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A074400 (n + 1)).toNat 2

end

end A286357.P1880155272387942005

namespace A286357

/-- `val(A074400(n+1), 2)` -/
def P1880155272387942005.Spec : Prop :=
  ∀ n, (P1880155272387942005.a n : ℤ) = A286357 (n + 1)

end A286357

/-! ## A286357.P16459784077433502431

`val(A274536(n+1), 2)`
-/

namespace A286357.P16459784077433502431
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A274536 (n + 1)).toNat 2

end

end A286357.P16459784077433502431

namespace A286357

/-- `val(A274536(n+1), 2)` -/
def P16459784077433502431.Spec : Prop :=
  ∀ n, (P16459784077433502431.a n : ℤ) = A286357 (n + 1)

end A286357

/-! ## A286357.P17932396760462255293

`val(A326122(n+1), 2)`
-/

namespace A286357.P17932396760462255293
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A326122 (n + 1)).toNat 2

end

end A286357.P17932396760462255293

namespace A286357

/-- `val(A326122(n+1), 2)` -/
def P17932396760462255293.Spec : Prop :=
  ∀ n, (P17932396760462255293.a n : ℤ) = A286357 (n + 1)

end A286357

/-! ## A286357.P10204744319750055049

`log2(A082903(n+1))+1`
-/

namespace A286357.P10204744319750055049
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A082903 (n + 1) : ℝ) + 1

end

end A286357.P10204744319750055049

namespace A286357

/-- `log2(A082903(n+1))+1` -/
def P10204744319750055049.Spec : Prop :=
  ∀ n, P10204744319750055049.a n = (A286357 (n + 1) : ℝ)

end A286357

/-! ## A286357.P16332093074790076839

`sqrt(A123726(∑{d}[n+1, #]))`
-/

namespace A286357.P16332093074790076839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A123726 (∑ d ∈ Nat.divisors (f1 n), d) : ℝ)

end

end A286357.P16332093074790076839

namespace A286357

/-- `sqrt(A123726(∑{d}[n+1, #]))` -/
def P16332093074790076839.Spec : Prop :=
  ∀ n, P16332093074790076839.a n = (A286357 (n + 1) : ℝ)

end A286357

/-! ## A286357.P14564956221901405158

`val(A000593(n+1), 2)+1`
-/

namespace A286357.P14564956221901405158
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000593 (n + 1)).toNat 2 + 1

end

end A286357.P14564956221901405158

namespace A286357

/-- `val(A000593(n+1), 2)+1` -/
def P14564956221901405158.Spec : Prop :=
  ∀ n, (P14564956221901405158.a n : ℤ) = A286357 (n + 1)

end A286357

/-! ## A286357.P1483578457290989186

`val(A001158(n+1), 2)+1`
-/

namespace A286357.P1483578457290989186
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001158 (n + 1)).toNat 2 + 1

end

end A286357.P1483578457290989186

namespace A286357

/-- `val(A001158(n+1), 2)+1` -/
def P1483578457290989186.Spec : Prop :=
  ∀ n, (P1483578457290989186.a n : ℤ) = A286357 (n + 1)

end A286357

/-! ## A286357.P15025676320969677179

`val(A001160(n+1), 2)+1`
-/

namespace A286357.P15025676320969677179
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001160 (n + 1)).toNat 2 + 1

end

end A286357.P15025676320969677179

namespace A286357

/-- `val(A001160(n+1), 2)+1` -/
def P15025676320969677179.Spec : Prop :=
  ∀ n, (P15025676320969677179.a n : ℤ) = A286357 (n + 1)

end A286357

/-! ## A286357.P1508105839250006202

`val(A008457(n+1), 2)+1`
-/

namespace A286357.P1508105839250006202
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A008457 (n + 1)).toNat 2 + 1

end

end A286357.P1508105839250006202

namespace A286357

/-- `val(A008457(n+1), 2)+1` -/
def P1508105839250006202.Spec : Prop :=
  ∀ n, (P1508105839250006202.a n : ℤ) = A286357 (n + 1)

end A286357

/-! ## A286357.P12293846151252186108

`val(A013955(n+1), 2)+1`
-/

namespace A286357.P12293846151252186108
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A013955 (n + 1)).toNat 2 + 1

end

end A286357.P12293846151252186108

namespace A286357

/-- `val(A013955(n+1), 2)+1` -/
def P12293846151252186108.Spec : Prop :=
  ∀ n, (P12293846151252186108.a n : ℤ) = A286357 (n + 1)

end A286357

/-! ## A286357.P5907876290175790939

`val(A013957(n+1), 2)+1`
-/

namespace A286357.P5907876290175790939
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A013957 (n + 1)).toNat 2 + 1

end

end A286357.P5907876290175790939

namespace A286357

/-- `val(A013957(n+1), 2)+1` -/
def P5907876290175790939.Spec : Prop :=
  ∀ n, (P5907876290175790939.a n : ℤ) = A286357 (n + 1)

end A286357

/-! ## A286357.P6196813741587526139

`val(A013959(n+1), 2)+1`
-/

namespace A286357.P6196813741587526139
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A013959 (n + 1)).toNat 2 + 1

end

end A286357.P6196813741587526139

namespace A286357

/-- `val(A013959(n+1), 2)+1` -/
def P6196813741587526139.Spec : Prop :=
  ∀ n, (P6196813741587526139.a n : ℤ) = A286357 (n + 1)

end A286357

/-! ## A286357.P13132582052902415735

`val(A013961(n+1), 2)+1`
-/

namespace A286357.P13132582052902415735
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A013961 (n + 1)).toNat 2 + 1

end

end A286357.P13132582052902415735

namespace A286357

/-- `val(A013961(n+1), 2)+1` -/
def P13132582052902415735.Spec : Prop :=
  ∀ n, (P13132582052902415735.a n : ℤ) = A286357 (n + 1)

end A286357

/-! ## A286357.P6362442146728652396

`val(A046897(n+1), 2)+1`
-/

namespace A286357.P6362442146728652396
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A046897 (n + 1)).toNat 2 + 1

end

end A286357.P6362442146728652396

namespace A286357

/-- `val(A046897(n+1), 2)+1` -/
def P6362442146728652396.Spec : Prop :=
  ∀ n, (P6362442146728652396.a n : ℤ) = A286357 (n + 1)

end A286357

/-! ## A286357.P1975915294445639599

`val(A051000(n+1), 2)+1`
-/

namespace A286357.P1975915294445639599
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A051000 (n + 1)).toNat 2 + 1

end

end A286357.P1975915294445639599

namespace A286357

/-- `val(A051000(n+1), 2)+1` -/
def P1975915294445639599.Spec : Prop :=
  ∀ n, (P1975915294445639599.a n : ℤ) = A286357 (n + 1)

end A286357

/-! ## A286357.P17032626837687889676

`val(A051002(n+1), 2)+1`
-/

namespace A286357.P17032626837687889676
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A051002 (n + 1)).toNat 2 + 1

end

end A286357.P17032626837687889676

namespace A286357

/-- `val(A051002(n+1), 2)+1` -/
def P17032626837687889676.Spec : Prop :=
  ∀ n, (P17032626837687889676.a n : ℤ) = A286357 (n + 1)

end A286357

/-!
# A286358: Compound filter: a(n) = P(A286357(n), A161942(n)), where P(n,k) is sequence A000027 used as a pairing function.

The programs for A286358, the canonical program `A286358.P11686548512339746287` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286358 has offset 1).

The definition of A286358 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A161942, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A286358.P11686548512339746287

`1/2*(2+(A286357(n+1)+A161942(n+1))²-A286357(n+1)-3*A161942(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A286358

/-- `1/2*(2+(A286357(n+1)+A161942(n+1))²-A286357(n+1)-3*A161942(n+1))` -/
def P11686548512339746287.Spec : Prop :=
  ∀ n, P11686548512339746287.a n = (A286358 (n + 1) : ℚ)

end A286358

/-!
# A286359: Compound filter: a(n) = P(sigma(n), sigma(2n)), where P(n,k) is sequence A000027 used as a pairing function, and sigma is the sum of divisors (A000203).

The programs for A286359, the canonical program `A286359.P6108464633816812337` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286359 has offset 1).

The definition of A286359 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A286359.P6108464633816812337

`1/2*(2+(A000203(n+1)+A000203(2*(n+1)))²-A000203(n+1)-3*A000203(2*(n+1)))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A286359

/-- `1/2*(2+(A000203(n+1)+A000203(2*(n+1)))²-A000203(n+1)-3*A000203(2*(n+1)))` -/
def P6108464633816812337.Spec : Prop :=
  ∀ n, P6108464633816812337.a n = (A286359 (n + 1) : ℚ)

end A286359

/-!
# A286360: Compound filter (prime signature & sum of the divisors): a(n) = P(A046523(n), A000203(n)), where P(n,k) is sequence A000027 used as a pairing function.

The programs for A286360, the canonical program `A286360.P2515982512813601777` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286360 has offset 1).

The definition of A286360 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A286360.P2515982512813601777

`1/2*(2+(A046523(n+1)+A000203(n+1))²-A046523(n+1)-3*A000203(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A286360

/-- `1/2*(2+(A046523(n+1)+A000203(n+1))²-A046523(n+1)-3*A000203(n+1))` -/
def P2515982512813601777.Spec : Prop :=
  ∀ n, P2515982512813601777.a n = (A286360 (n + 1) : ℚ)

end A286360

/-!
# A286361: Least number with the same prime signature as {the largest divisor of n with only prime factors of the form 4k+1} has: a(n) = A046523(A170818(n)).

The programs for A286361, the canonical program `A286361.P14424517213861255559` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286361 has offset 1).

The definition of A286361 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, A170818, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A286361.P14424517213861255559

`A046523(A170818(n+1))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A286361

/-- `A046523(A170818(n+1))` -/
def P14424517213861255559.Spec : Prop :=
  ∀ n, P14424517213861255559.a n = A286361 (n + 1)

theorem P14424517213861255559.correct : P14424517213861255559.Spec := by
  intro n
  simp only [A286361, Nat.add_sub_cancel]

end A286361

/-! ## A286361.P17459257816753544467

`A046523((n+1)/A072438(n+1))`
-/

namespace A286361.P17459257816753544467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A072438 (n + 1) : ℚ))).toNat

end

end A286361.P17459257816753544467

namespace A286361

/-- `A046523((n+1)/A072438(n+1))` -/
def P17459257816753544467.Spec : Prop :=
  ∀ n, P17459257816753544467.a n = A286361 (n + 1)

end A286361

/-! ## A286361.P3899668521024504545

`A286363(A267099(n+1))`
-/

namespace A286361.P3899668521024504545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286363 (A267099 (n + 1)).toNat

end

end A286361.P3899668521024504545

namespace A286361

/-- `A286363(A267099(n+1))` -/
def P3899668521024504545.Spec : Prop :=
  ∀ n, P3899668521024504545.a n = A286361 (n + 1)

end A286361

/-! ## A286361.P15070997484795915322

`A286363(A332819(n+1))`
-/

namespace A286361.P15070997484795915322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286363 (A332819 (n + 1)).toNat

end

end A286361.P15070997484795915322

namespace A286361

/-- `A286363(A332819(n+1))` -/
def P15070997484795915322.Spec : Prop :=
  ∀ n, P15070997484795915322.a n = A286361 (n + 1)

end A286361

/-! ## A286361.P15396557123064712154

`A002260(A286364(n+1))`
-/

namespace A286361.P15396557123064712154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A286364 (n + 1)).toNat

end

end A286361.P15396557123064712154

namespace A286361

/-- `A002260(A286364(n+1))` -/
def P15396557123064712154.Spec : Prop :=
  ∀ n, P15396557123064712154.a n = A286361 (n + 1)

end A286361

/-! ## A286361.P17298841264129945428

`A220464(A286367(n+1))`
-/

namespace A286361.P17298841264129945428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220464 (A286367 (n + 1)).toNat

end

end A286361.P17298841264129945428

namespace A286361

/-- `A220464(A286367(n+1))` -/
def P17298841264129945428.Spec : Prop :=
  ∀ n, P17298841264129945428.a n = A286361 (n + 1)

end A286361

/-! ## A286361.P16022610916367327808

`A000010(A002654((n+1)²))`
-/

namespace A286361.P16022610916367327808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A002654 ((n + 1) ^ 2)).toNat

end

end A286361.P16022610916367327808

namespace A286361

/-- `A000010(A002654((n+1)²))` -/
def P16022610916367327808.Spec : Prop :=
  ∀ n, P16022610916367327808.a n = A286361 (n + 1)

end A286361

/-! ## A286361.P15849455352652253292

`A000010(A035154((n+1)²))`
-/

namespace A286361.P15849455352652253292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A035154 ((n + 1) ^ 2)).toNat

end

end A286361.P15849455352652253292

namespace A286361

/-- `A000010(A035154((n+1)²))` -/
def P15849455352652253292.Spec : Prop :=
  ∀ n, P15849455352652253292.a n = A286361 (n + 1)

end A286361

/-! ## A286361.P6102461517827153555

`A000010(A105673((n+1)²))`
-/

namespace A286361.P6102461517827153555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A105673 ((n + 1) ^ 2)).toNat

end

end A286361.P6102461517827153555

namespace A286361

/-- `A000010(A105673((n+1)²))` -/
def P6102461517827153555.Spec : Prop :=
  ∀ n, P6102461517827153555.a n = A286361 (n + 1)

end A286361

/-! ## A286361.P6012884620943318579

`A000010(A113446((n+1)²))`
-/

namespace A286361.P6012884620943318579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A113446 ((n + 1) ^ 2)).toNat

end

end A286361.P6012884620943318579

namespace A286361

/-- `A000010(A113446((n+1)²))` -/
def P6012884620943318579.Spec : Prop :=
  ∀ n, P6012884620943318579.a n = A286361 (n + 1)

end A286361

/-! ## A286361.P15958850238149257399

`A000010(A138950((n+1)²))`
-/

namespace A286361.P15958850238149257399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A138950 ((n + 1) ^ 2)).toNat

end

end A286361.P15958850238149257399

namespace A286361

/-- `A000010(A138950((n+1)²))` -/
def P15958850238149257399.Spec : Prop :=
  ∀ n, P15958850238149257399.a n = A286361 (n + 1)

end A286361

/-! ## A286361.P7882224292012082705

`A000010(A338690((n+1)²))`
-/

namespace A286361.P7882224292012082705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A338690 ((n + 1) ^ 2)).toNat

end

end A286361.P7882224292012082705

namespace A286361

/-- `A000010(A338690((n+1)²))` -/
def P7882224292012082705.Spec : Prop :=
  ∀ n, P7882224292012082705.a n = A286361 (n + 1)

end A286361

/-! ## A286361.P7904627935349454645

`A000010(A063725((n+1)²)+1)`
-/

namespace A286361.P7904627935349454645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A063725 ((n + 1) ^ 2) + 1).toNat

end

end A286361.P7904627935349454645

namespace A286361

/-- `A000010(A063725((n+1)²)+1)` -/
def P7904627935349454645.Spec : Prop :=
  ∀ n, P7904627935349454645.a n = A286361 (n + 1)

end A286361

/-! ## A286361.P13087394293848767185

`A000010(A000925((n+1)²)-1)`
-/

namespace A286361.P13087394293848767185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000925 ((n + 1) ^ 2) - 1).toNat

end

end A286361.P13087394293848767185

namespace A286361

/-- `A000010(A000925((n+1)²)-1)` -/
def P13087394293848767185.Spec : Prop :=
  ∀ n, P13087394293848767185.a n = A286361 (n + 1)

end A286361

/-! ## A286361.P15481532402784750914

`A000010(A004018((n+1)²)/2)`
-/

namespace A286361.P15481532402784750914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A004018 ((n + 1) ^ 2) : ℚ) / 2)).toNat

end

end A286361.P15481532402784750914

namespace A286361

/-- `A000010(A004018((n+1)²)/2)` -/
def P15481532402784750914.Spec : Prop :=
  ∀ n, P15481532402784750914.a n = A286361 (n + 1)

end A286361

/-! ## A286361.P5647399018833386566

`A000010(A004531((n+1)²)/2)`
-/

namespace A286361.P5647399018833386566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A004531 ((n + 1) ^ 2) : ℚ) / 2)).toNat

end

end A286361.P5647399018833386566

namespace A286361

/-- `A000010(A004531((n+1)²)/2)` -/
def P5647399018833386566.Spec : Prop :=
  ∀ n, P5647399018833386566.a n = A286361 (n + 1)

end A286361

/-! ## A286361.P14250863085740096252

`A102548(A002654(∑[2*n+1]))`
-/

namespace A286361.P14250863085740096252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102548 (A002654 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A286361.P14250863085740096252

namespace A286361

/-- `A102548(A002654(∑[2*n+1]))` -/
def P14250863085740096252.Spec : Prop :=
  ∀ n, P14250863085740096252.a n = A286361 (n + 1)

end A286361

/-! ## A286361.P5347826767282259199

`A000010(n+1-A247367((n+1)²))`
-/

namespace A286361.P5347826767282259199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ((n + 1 : ℤ) - A247367 ((n + 1) ^ 2)).toNat

end

end A286361.P5347826767282259199

namespace A286361

/-- `A000010(n+1-A247367((n+1)²))` -/
def P5347826767282259199.Spec : Prop :=
  ∀ n, P5347826767282259199.a n = A286361 (n + 1)

end A286361

/-! ## A286361.P16292885006391472339

`A077773(A002654(A000290(n+1)))`
-/

namespace A286361.P16292885006391472339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077773 (A002654 (A000290 (n + 1)).toNat).toNat

end

end A286361.P16292885006391472339

namespace A286361

/-- `A077773(A002654(A000290(n+1)))` -/
def P16292885006391472339.Spec : Prop :=
  ∀ n, P16292885006391472339.a n = A286361 (n + 1)

end A286361

/-! ## A286361.P11690654550201455288

`A050469(A050469(A002654((n+1)*(n+1))))`
-/

namespace A286361.P11690654550201455288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050469 (A050469 (A002654 ((n + 1) * (n + 1))).toNat).toNat

end

end A286361.P11690654550201455288

namespace A286361

/-- `A050469(A050469(A002654((n+1)*(n+1))))` -/
def P11690654550201455288.Spec : Prop :=
  ∀ n, P11690654550201455288.a n = A286361 (n + 1)

end A286361

/-!
# A286362: Compound filter: a(n) = P(A089309(n), A046523(n)), where P(n,k) is sequence A000027 used as a pairing function.

The programs for A286362, the canonical program `A286362.P6400441247318901561` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286362 has offset 1).

The definition of A286362 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, A089309, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A286362.P6400441247318901561

`1/2*(2+(A089309(n+1)+A046523(n+1))²-A089309(n+1)-3*A046523(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A286362

/-- `1/2*(2+(A089309(n+1)+A046523(n+1))²-A089309(n+1)-3*A046523(n+1))` -/
def P6400441247318901561.Spec : Prop :=
  ∀ n, P6400441247318901561.a n = (A286362 (n + 1) : ℚ)

end A286362

/-!
# A286363: Least number with the same prime signature as {the largest divisor of n with only prime factors of the form 4k+3} has: a(n) = A046523(A097706(n)).

The programs for A286363, the canonical program `A286363.P2923699859799775022` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286363 has offset 1).

The definition of A286363 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, A097706, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A286363.P2923699859799775022

`A046523(A097706(n+1))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A286363

/-- `A046523(A097706(n+1))` -/
def P2923699859799775022.Spec : Prop :=
  ∀ n, P2923699859799775022.a n = A286363 (n + 1)

theorem P2923699859799775022.correct : P2923699859799775022.Spec := by
  intro n
  simp only [A286363, Nat.add_sub_cancel]

end A286363

/-! ## A286363.P9127678617050341114

`A046523((n+1)/A072436(n+1))`
-/

namespace A286363.P9127678617050341114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A072436 (n + 1) : ℚ))).toNat

end

end A286363.P9127678617050341114

namespace A286363

/-- `A046523((n+1)/A072436(n+1))` -/
def P9127678617050341114.Spec : Prop :=
  ∀ n, P9127678617050341114.a n = A286363 (n + 1)

end A286363

/-! ## A286363.P3704095412105383457

`A286361(A267099(n+1))`
-/

namespace A286363.P3704095412105383457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286361 (A267099 (n + 1)).toNat

end

end A286363.P3704095412105383457

namespace A286363

/-- `A286361(A267099(n+1))` -/
def P3704095412105383457.Spec : Prop :=
  ∀ n, P3704095412105383457.a n = A286363 (n + 1)

end A286363

/-! ## A286363.P5220906828945823672

`A002260(A038722(A286364(n+1)+1)+1)`
-/

namespace A286363.P5220906828945823672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A038722 (A286364 (n + 1) + 1).toNat + 1).toNat

end

end A286363.P5220906828945823672

namespace A286363

/-- `A002260(A038722(A286364(n+1)+1)+1)` -/
def P5220906828945823672.Spec : Prop :=
  ∀ n, P5220906828945823672.a n = A286363 (n + 1)

end A286363

/-! ## A286363.P16973596788162559878

`A286361(n+1)+A038722(A286364(n+1))-A286364(n+1)`
-/

namespace A286363.P16973596788162559878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286361 (n + 1) + (A038722 (A286364 (n + 1)).toNat - A286364 (n + 1))

end

end A286363.P16973596788162559878

namespace A286363

/-- `A286361(n+1)+A038722(A286364(n+1))-A286364(n+1)` -/
def P16973596788162559878.Spec : Prop :=
  ∀ n, P16973596788162559878.a n = A286363 (n + 1)

end A286363

/-! ## A286363.P13648961065251839238

`A004736(A286364(n+1))`
-/

namespace A286363.P13648961065251839238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A286364 (n + 1)).toNat

end

end A286363.P13648961065251839238

namespace A286363

/-- `A004736(A286364(n+1))` -/
def P13648961065251839238.Spec : Prop :=
  ∀ n, P13648961065251839238.a n = A286363 (n + 1)

end A286363

/-! ## A286363.P10939210031878785568

`A025581(A286364(n+1)-1)+1`
-/

namespace A286363.P10939210031878785568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A286364 (n + 1) - 1).toNat + 1

end

end A286363.P10939210031878785568

namespace A286363

/-- `A025581(A286364(n+1)-1)+1` -/
def P10939210031878785568.Spec : Prop :=
  ∀ n, P10939210031878785568.a n = A286363 (n + 1)

end A286363

/-! ## A286363.P3029424328711128648

`A286361(A332818(n+1))`
-/

namespace A286363.P3029424328711128648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286361 (A332818 (n + 1)).toNat

end

end A286363.P3029424328711128648

namespace A286363

/-- `A286361(A332818(n+1))` -/
def P3029424328711128648.Spec : Prop :=
  ∀ n, P3029424328711128648.a n = A286363 (n + 1)

end A286363

/-! ## A286363.P192842806167410190

`A220465(A286367(n+1))`
-/

namespace A286363.P192842806167410190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220465 (A286367 (n + 1)).toNat

end

end A286363.P192842806167410190

namespace A286363

/-- `A220465(A286367(n+1))` -/
def P192842806167410190.Spec : Prop :=
  ∀ n, P192842806167410190.a n = A286363 (n + 1)

end A286363

/-!
# A286364: Compound filter: a(n) = P(A286361(n), A286363(n)), where P(n,k) is sequence A000027 used as a pairing function.

The programs for A286364, the canonical program `A286364.P7180737637971024387` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286364 has offset 1).

The definition of A286364 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A286361, A286363, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A286364.P7180737637971024387

`1/2*(2+(A286361(n+1)+A286363(n+1))²-A286361(n+1)-3*A286363(n+1))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A286364

/-- `1/2*(2+(A286361(n+1)+A286363(n+1))²-A286361(n+1)-3*A286363(n+1))` -/
def P7180737637971024387.Spec : Prop :=
  ∀ n, P7180737637971024387.a n = (A286364 (n + 1) : ℚ)

end A286364

/-! ## A286364.P15572089627872572874

`floor(A286365(n+1)/2)`
-/

namespace A286364.P15572089627872572874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A286365 (n + 1) : ℚ) / 2⌋

end

end A286364.P15572089627872572874

namespace A286364

/-- `floor(A286365(n+1)/2)` -/
def P15572089627872572874.Spec : Prop :=
  ∀ n, P15572089627872572874.a n = A286364 (n + 1)

end A286364

/-! ## A286364.P14805206289916446492

`floor(A286369(n+1)/2)`
-/

namespace A286364.P14805206289916446492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A286369 (n + 1) : ℚ) / 2⌋

end

end A286364.P14805206289916446492

namespace A286364

/-- `floor(A286369(n+1)/2)` -/
def P14805206289916446492.Spec : Prop :=
  ∀ n, P14805206289916446492.a n = A286364 (n + 1)

end A286364

/-! ## A286364.P536732982536156448

`A286365((n+1)/and(n+1, -(n+1)))/2`
-/

namespace A286364.P536732982536156448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286365 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat : ℚ) / 2

end

end A286364.P536732982536156448

namespace A286364

/-- `A286365((n+1)/and(n+1, -(n+1)))/2` -/
def P536732982536156448.Spec : Prop :=
  ∀ n, P536732982536156448.a n = (A286364 (n + 1) : ℚ)

end A286364

/-! ## A286364.P3027177531693918204

`A286365(A000265(n+1))/2`
-/

namespace A286364.P3027177531693918204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286365 (A000265 (n + 1)).toNat : ℚ) / 2

end

end A286364.P3027177531693918204

namespace A286364

/-- `A286365(A000265(n+1))/2` -/
def P3027177531693918204.Spec : Prop :=
  ∀ n, P3027177531693918204.a n = (A286364 (n + 1) : ℚ)

end A286364

/-! ## A286364.P17941321620949207348

`A004526(A286365(n+1))`
-/

namespace A286364.P17941321620949207348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A286365 (n + 1)).toNat

end

end A286364.P17941321620949207348

namespace A286364

/-- `A004526(A286365(n+1))` -/
def P17941321620949207348.Spec : Prop :=
  ∀ n, P17941321620949207348.a n = A286364 (n + 1)

end A286364

/-! ## A286364.P13430774442815849470

`A004526(A286369(n+1))`
-/

namespace A286364.P13430774442815849470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A286369 (n + 1)).toNat

end

end A286364.P13430774442815849470

namespace A286364

/-- `A004526(A286369(n+1))` -/
def P13430774442815849470.Spec : Prop :=
  ∀ n, P13430774442815849470.a n = A286364 (n + 1)

end A286364

/-! ## A286364.P2027387399193833897

`A008619(A286369(n+1)-2)`
-/

namespace A286364.P2027387399193833897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A286369 (n + 1) - 2).toNat

end

end A286364.P2027387399193833897

namespace A286364

/-- `A008619(A286369(n+1)-2)` -/
def P2027387399193833897.Spec : Prop :=
  ∀ n, P2027387399193833897.a n = A286364 (n + 1)

end A286364

/-! ## A286364.P2109610556639510266

`A025480(A286365(A000265(n+1)))`
-/

namespace A286364.P2109610556639510266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A286365 (A000265 (n + 1)).toNat).toNat

end

end A286364.P2109610556639510266

namespace A286364

/-- `A025480(A286365(A000265(n+1)))` -/
def P2109610556639510266.Spec : Prop :=
  ∀ n, P2109610556639510266.a n = A286364 (n + 1)

end A286364

/-! ## A286364.P12325116835627783117

`A002265(A286366(n+1))`
-/

namespace A286364.P12325116835627783117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A286366 (n + 1)).toNat

end

end A286364.P12325116835627783117

namespace A286364

/-- `A002265(A286366(n+1))` -/
def P12325116835627783117.Spec : Prop :=
  ∀ n, P12325116835627783117.a n = A286364 (n + 1)

end A286364

/-! ## A286364.P3262193020747366405

`A004736(A286367(n+1))`
-/

namespace A286364.P3262193020747366405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A286367 (n + 1)).toNat

end

end A286364.P3262193020747366405

namespace A286364

/-- `A004736(A286367(n+1))` -/
def P3262193020747366405.Spec : Prop :=
  ∀ n, P3262193020747366405.a n = A286364 (n + 1)

end A286364

/-!
# A286365: Compound filter: a(n) = 2*A286364(n) + A000035(A007814(n)).

The programs for A286365, the canonical program `A286365.P13079732361308459791` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286365 has offset 1).

The definition of A286365 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A286364, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A286365.P17468148201689502702

`2*A286364(n+1)+1-A035263(n+1)`
-/

namespace A286365.P17468148201689502702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A286364 (n + 1) + (1 - A035263 (n + 1))

end

end A286365.P17468148201689502702

namespace A286365

/-- `2*A286364(n+1)+1-A035263(n+1)` -/
def P17468148201689502702.Spec : Prop :=
  ∀ n, P17468148201689502702.a n = A286365 (n + 1)

end A286365

/-! ## A286365.P13079732361308459791

`2*A286364(n+1)+A000035(A007814(n+1))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A286365

/-- `2*A286364(n+1)+A000035(A007814(n+1))` -/
def P13079732361308459791.Spec : Prop :=
  ∀ n, P13079732361308459791.a n = A286365 (n + 1)

theorem P13079732361308459791.correct : P13079732361308459791.Spec := by
  intro n
  simp only [A286365, Nat.add_sub_cancel]

end A286365

/-! ## A286365.P4126433806210399586

`floor(A286366(n+1)/2)`
-/

namespace A286365.P4126433806210399586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A286366 (n + 1) : ℚ) / 2⌋

end

end A286365.P4126433806210399586

namespace A286365

/-- `floor(A286366(n+1)/2)` -/
def P4126433806210399586.Spec : Prop :=
  ∀ n, P4126433806210399586.a n = A286365 (n + 1)

end A286365

/-! ## A286365.P10970402144163715301

`A035263(2*(n+1))+2*A286364(2*(n+1))`
-/

namespace A286365.P10970402144163715301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (2 * (n + 1)) + 2 * A286364 (2 * (n + 1))

end

end A286365.P10970402144163715301

namespace A286365

/-- `A035263(2*(n+1))+2*A286364(2*(n+1))` -/
def P10970402144163715301.Spec : Prop :=
  ∀ n, P10970402144163715301.a n = A286365 (n + 1)

end A286365

/-! ## A286365.P10505053012429545503

`A005843(A286364(n+1))+A000035(A007814(n+1))`
-/

namespace A286365.P10505053012429545503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A286364 (n + 1)).toNat + A000035 (A007814 (n + 1)).toNat

end

end A286365.P10505053012429545503

namespace A286365

/-- `A005843(A286364(n+1))+A000035(A007814(n+1))` -/
def P10505053012429545503.Spec : Prop :=
  ∀ n, P10505053012429545503.a n = A286365 (n + 1)

end A286365

/-! ## A286365.P15991471606054933415

`A004526(A286366(n+1))`
-/

namespace A286365.P15991471606054933415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A286366 (n + 1)).toNat

end

end A286365.P15991471606054933415

namespace A286365

/-- `A004526(A286366(n+1))` -/
def P15991471606054933415.Spec : Prop :=
  ∀ n, P15991471606054933415.a n = A286365 (n + 1)

end A286365

/-! ## A286365.P18304207055116200716

`A004524(or(1, A286366(n+1)))`
-/

namespace A286365.P18304207055116200716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (Int.lor 1 (A286366 (n + 1))).toNat

end

end A286365.P18304207055116200716

namespace A286365

/-- `A004524(or(1, A286366(n+1)))` -/
def P18304207055116200716.Spec : Prop :=
  ∀ n, P18304207055116200716.a n = A286365 (n + 1)

end A286365

/-! ## A286365.P15408111512131761345

`A004525(or(1, A286366(n+1))-1)`
-/

namespace A286365.P15408111512131761345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Int.lor 1 (A286366 (n + 1)) - 1).toNat

end

end A286365.P15408111512131761345

namespace A286365

/-- `A004525(or(1, A286366(n+1))-1)` -/
def P15408111512131761345.Spec : Prop :=
  ∀ n, P15408111512131761345.a n = A286365 (n + 1)

end A286365

/-! ## A286365.P59064147208158870

`A002265(2*A286366(n+1))`
-/

namespace A286365.P59064147208158870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A286366 (n + 1)).toNat

end

end A286365.P59064147208158870

namespace A286365

/-- `A002265(2*A286366(n+1))` -/
def P59064147208158870.Spec : Prop :=
  ∀ n, P59064147208158870.a n = A286365 (n + 1)

end A286365

/-! ## A286365.P10096199329179743907

`A004524(2*A286366(n+1))/2`
-/

namespace A286365.P10096199329179743907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004524 (2 * A286366 (n + 1)).toNat : ℚ) / 2

end

end A286365.P10096199329179743907

namespace A286365

/-- `A004524(2*A286366(n+1))/2` -/
def P10096199329179743907.Spec : Prop :=
  ∀ n, P10096199329179743907.a n = (A286365 (n + 1) : ℚ)

end A286365

/-! ## A286365.P15828006323163880911

`A002265(A286366(n+1)+A286366(n+1)+1)`
-/

namespace A286365.P15828006323163880911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A286366 (n + 1) + (A286366 (n + 1) + 1)).toNat

end

end A286365.P15828006323163880911

namespace A286365

/-- `A002265(A286366(n+1)+A286366(n+1)+1)` -/
def P15828006323163880911.Spec : Prop :=
  ∀ n, P15828006323163880911.a n = A286365 (n + 1)

end A286365

/-! ## A286365.P14933709366037308625

`A008615(3*A286366(n+1))`
-/

namespace A286365.P14933709366037308625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (3 * A286366 (n + 1)).toNat

end

end A286365.P14933709366037308625

namespace A286365

/-- `A008615(3*A286366(n+1))` -/
def P14933709366037308625.Spec : Prop :=
  ∀ n, P14933709366037308625.a n = A286365 (n + 1)

end A286365

/-!
# A286366: Compound filter: a(n) = 2*A286365(n) + floor(A072400(n)/4).

The programs for A286366, the canonical program `A286366.P17731940063054662949` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286366 has offset 1).

The definition of A286366 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072400, A286365, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A286366.P17731940063054662949

`2*A286365(n+1)+floor(A072400(n+1)/4)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A286366

/-- `2*A286365(n+1)+floor(A072400(n+1)/4)` -/
def P17731940063054662949.Spec : Prop :=
  ∀ n, P17731940063054662949.a n = A286366 (n + 1)

theorem P17731940063054662949.correct : P17731940063054662949.Spec := by
  intro n
  simp only [A286366, Nat.add_sub_cancel]

end A286366

/-! ## A286366.P9666413813115558879

`A286373(A064216(n+1))`
-/

namespace A286366.P9666413813115558879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286373 (A064216 (n + 1)).toNat

end

end A286366.P9666413813115558879

namespace A286366

/-- `A286373(A064216(n+1))` -/
def P9666413813115558879.Spec : Prop :=
  ∀ n, P9666413813115558879.a n = A286366 (n + 1)

end A286366

/-! ## A286366.P9867694213556559834

`A286372(A048673(n+1))`
-/

namespace A286366.P9867694213556559834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286372 (A048673 (n + 1)).toNat

end

end A286366.P9867694213556559834

namespace A286366

/-- `A286372(A048673(n+1))` -/
def P9867694213556559834.Spec : Prop :=
  ∀ n, P9867694213556559834.a n = A286366 (n + 1)

end A286366

/-! ## A286366.P2608204503858097977

`A286372(A108228(n+1)+1)`
-/

namespace A286366.P2608204503858097977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286372 (A108228 (n + 1) + 1).toNat

end

end A286366.P2608204503858097977

namespace A286366

/-- `A286372(A108228(n+1)+1)` -/
def P2608204503858097977.Spec : Prop :=
  ∀ n, P2608204503858097977.a n = A286366 (n + 1)

end A286366

/-! ## A286366.P15800247455394607990

`A286372(ceil(A003961(n+1)/2))`
-/

namespace A286366.P15800247455394607990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286372 ⌈(A003961 (n + 1) : ℚ) / 2⌉.toNat

end

end A286366.P15800247455394607990

namespace A286366

/-- `A286372(ceil(A003961(n+1)/2))` -/
def P15800247455394607990.Spec : Prop :=
  ∀ n, P15800247455394607990.a n = A286366 (n + 1)

end A286366

/-! ## A286366.P552138139328832194

`A286372(round(A003961(n+1)/2))`
-/

namespace A286366.P552138139328832194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286372 (SequenceMachineLib.roundAway ((A003961 (n + 1) : ℚ) / 2)).toNat

end

end A286366.P552138139328832194

namespace A286366

/-- `A286372(round(A003961(n+1)/2))` -/
def P552138139328832194.Spec : Prop :=
  ∀ n, P552138139328832194.a n = A286366 (n + 1)

end A286366

/-! ## A286366.P2686038486107511625

`A286372((A003961(n+1)+1)/2)`
-/

namespace A286366.P2686038486107511625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286372 (SequenceMachineLib.roundAway ((A003961 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A286366.P2686038486107511625

namespace A286366

/-- `A286372((A003961(n+1)+1)/2)` -/
def P2686038486107511625.Spec : Prop :=
  ∀ n, P2686038486107511625.a n = A286366 (n + 1)

end A286366

/-!
# A286367: Compound filter: a(n) = P(A001511(n), A286364(n)), where P(n,k) is sequence A000027 used as a pairing function.

The programs for A286367, the canonical program `A286367.P9165459790110359671` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286367 has offset 1).

The definition of A286367 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A286364, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A286367.P9165459790110359671

`1/2*(2+(A001511(n+1)+A286364(n+1))²-A001511(n+1)-3*A286364(n+1))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A286367

/-- `1/2*(2+(A001511(n+1)+A286364(n+1))²-A001511(n+1)-3*A286364(n+1))` -/
def P9165459790110359671.Spec : Prop :=
  ∀ n, P9165459790110359671.a n = (A286367 (n + 1) : ℚ)

end A286367

/-!
# A286368: a(n) = 4*A072401(n) + 2*A229062(n) + A010052(n).

The programs for A286368, there is no canonical definition to state claims against.
-/

/-! ## A286368.P4637170009526341595

`4*A072401(n+1)+2*A229062(n+1)+A010052(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286368.P4637170009526341595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A072401 (n + 1) + 2 * A229062 (n + 1) + A010052 (n + 1)

end

end A286368.P4637170009526341595

/-! ## A286368.P8892501450610580329

`xor(1, A002828(n+1)+1)%5`
-/

namespace A286368.P8892501450610580329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor 1 (A002828 (n + 1) + 1)) 5

end

end A286368.P8892501450610580329

/-! ## A286368.P11607324584089490848

`4-A002652(n-A255131(n+1))`
-/

namespace A286368.P11607324584089490848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A002652 ((n : ℤ) - A255131 (n + 1)).toNat

end

end A286368.P11607324584089490848

/-! ## A286368.P12309784514748174460

`A332342(xor(9, n-A255131(n+1)))`
-/

namespace A286368.P12309784514748174460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332342 (Int.xor 9 ((n : ℤ) - A255131 (n + 1))).toNat

end

end A286368.P12309784514748174460

/-! ## A286368.P14300208012668075453

`A290794(A002828(n)+Δ[A002828(n)])`
-/

namespace A286368.P14300208012668075453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290794 (A002828 n + (f1 (n + 1) - f1 n)).toNat

end

end A286368.P14300208012668075453

/-! ## A286368.P8410477340612843007

`A059029(A002828(n)+Δ[A002828(n)])%7`
-/

namespace A286368.P8410477340612843007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059029 (A002828 n + (f1 (n + 1) - f1 n)).toNat) 7

end

end A286368.P8410477340612843007

/-!
# A286369: Compound filter: a(n) = 2*A286364(n) + floor(A072400(n)/4).

The programs for A286369, the canonical program `A286369.P1450698806063969712` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286369 has offset 1).

The definition of A286369 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072400, A286364, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A286369.P1450698806063969712

`2*A286364(n+1)+floor(A072400(n+1)/4)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A286369

/-- `2*A286364(n+1)+floor(A072400(n+1)/4)` -/
def P1450698806063969712.Spec : Prop :=
  ∀ n, P1450698806063969712.a n = A286369 (n + 1)

theorem P1450698806063969712.correct : P1450698806063969712.Spec := by
  intro n
  simp only [A286369, Nat.add_sub_cancel]

end A286369

/-! ## A286369.P11263808353186629676

`A106249(A286366(n+1)-1)`
-/

namespace A286369.P11263808353186629676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106249 (A286366 (n + 1) - 1).toNat

end

end A286369.P11263808353186629676

namespace A286369

/-- `A106249(A286366(n+1)-1)` -/
def P11263808353186629676.Spec : Prop :=
  ∀ n, P11263808353186629676.a n = A286369 (n + 1)

end A286369

/-! ## A286369.P10814193346748035701

`A018837(A286366(n+1)-2)`
-/

namespace A286369.P10814193346748035701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018837 (A286366 (n + 1) - 2).toNat

end

end A286369.P10814193346748035701

namespace A286369

/-- `A018837(A286366(n+1)-2)` -/
def P10814193346748035701.Spec : Prop :=
  ∀ n, P10814193346748035701.a n = A286369 (n + 1)

end A286369

/-! ## A286369.P6953628135958686898

`A083219(A286366(n+1)-2)`
-/

namespace A286369.P6953628135958686898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083219 (A286366 (n + 1) - 2).toNat

end

end A286369.P6953628135958686898

namespace A286369

/-- `A083219(A286366(n+1)-2)` -/
def P6953628135958686898.Spec : Prop :=
  ∀ n, P6953628135958686898.a n = A286369 (n + 1)

end A286369

/-! ## A286369.P5264601324461260624

`A004524(or(2, A286366(n+1)))`
-/

namespace A286369.P5264601324461260624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (Int.lor 2 (A286366 (n + 1))).toNat

end

end A286369.P5264601324461260624

namespace A286369

/-- `A004524(or(2, A286366(n+1)))` -/
def P5264601324461260624.Spec : Prop :=
  ∀ n, P5264601324461260624.a n = A286369 (n + 1)

end A286369

/-! ## A286369.P17791244166249410279

`A004525(or(2, A286366(n+1))-2)`
-/

namespace A286369.P17791244166249410279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Int.lor 2 (A286366 (n + 1)) - 2).toNat

end

end A286369.P17791244166249410279

namespace A286369

/-- `A004525(or(2, A286366(n+1))-2)` -/
def P17791244166249410279.Spec : Prop :=
  ∀ n, P17791244166249410279.a n = A286369 (n + 1)

end A286369

/-! ## A286369.P17772442609782028491

`A004526(A080412(A286366(n+1)))`
-/

namespace A286369.P17772442609782028491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A080412 (A286366 (n + 1)).toNat).toNat

end

end A286369.P17772442609782028491

namespace A286369

/-- `A004526(A080412(A286366(n+1)))` -/
def P17772442609782028491.Spec : Prop :=
  ∀ n, P17772442609782028491.a n = A286369 (n + 1)

end A286369

/-!
# A286370: a(n) = A286369(A139391(n)).

The programs for A286370, the canonical program `A286370.P9388022672859368658` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286370 has offset 1).

The definition of A286370 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A139391, A286369, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A286370.P9388022672859368658

`A286369(A139391(n+1))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A286370

/-- `A286369(A139391(n+1))` -/
def P9388022672859368658.Spec : Prop :=
  ∀ n, P9388022672859368658.a n = A286370 (n + 1)

theorem P9388022672859368658.correct : P9388022672859368658.Spec := by
  intro n
  simp only [A286370, Nat.add_sub_cancel]

end A286370

/-!
# A286371: a(n) = A286369(A003961(n)).

The programs for A286371, the canonical program `A286371.P6950233767271759210` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286371 has offset 1).

The definition of A286371 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A286369, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A286371.P6950233767271759210

`A286369(A003961(n+1))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A286371

/-- `A286369(A003961(n+1))` -/
def P6950233767271759210.Spec : Prop :=
  ∀ n, P6950233767271759210.a n = A286371 (n + 1)

theorem P6950233767271759210.correct : P6950233767271759210.Spec := by
  intro n
  simp only [A286371, Nat.add_sub_cancel]

end A286371

/-! ## A286371.P1096580878777144342

`A286369(A045965(n+1))`
-/

namespace A286371.P1096580878777144342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286369 (A045965 (n + 1)).toNat

end

end A286371.P1096580878777144342

namespace A286371

/-- `A286369(A045965(n+1))` -/
def P1096580878777144342.Spec : Prop :=
  ∀ n, P1096580878777144342.a n = A286371 (n + 1)

end A286371

/-! ## A286371.P726276359550649051

`A286369(A253885(n)+1)`
-/

namespace A286371.P726276359550649051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286369 (A253885 n + 1).toNat

end

end A286371.P726276359550649051

namespace A286371

/-- `A286369(A253885(n)+1)` -/
def P726276359550649051.Spec : Prop :=
  ∀ n, P726276359550649051.a n = A286371 (n + 1)

end A286371

/-! ## A286371.P4215816344849553320

`A286369(2*A048673(n+1)-1)`
-/

namespace A286371.P4215816344849553320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286369 (2 * A048673 (n + 1) - 1).toNat

end

end A286371.P4215816344849553320

namespace A286371

/-- `A286369(2*A048673(n+1)-1)` -/
def P4215816344849553320.Spec : Prop :=
  ∀ n, P4215816344849553320.a n = A286371 (n + 1)

end A286371

/-! ## A286371.P15205916189530431609

`A286369(A048673(n+1)+A048673(n+1)-1)`
-/

namespace A286371.P15205916189530431609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286369 (A048673 (n + 1) + (A048673 (n + 1) - 1)).toNat

end

end A286371.P15205916189530431609

namespace A286371

/-- `A286369(A048673(n+1)+A048673(n+1)-1)` -/
def P15205916189530431609.Spec : Prop :=
  ∀ n, P15205916189530431609.a n = A286371 (n + 1)

end A286371

/-! ## A286371.P695903943923458085

`A286370(2*A003961(n+1))`
-/

namespace A286371.P695903943923458085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286370 (2 * A003961 (n + 1)).toNat

end

end A286371.P695903943923458085

namespace A286371

/-- `A286370(2*A003961(n+1))` -/
def P695903943923458085.Spec : Prop :=
  ∀ n, P695903943923458085.a n = A286371 (n + 1)

end A286371

/-! ## A286371.P3218647068586282458

`A286370(A003961(n+1)+A003961(n+1))`
-/

namespace A286371.P3218647068586282458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286370 (A003961 (n + 1) + A003961 (n + 1)).toNat

end

end A286371.P3218647068586282458

namespace A286371

/-- `A286370(A003961(n+1)+A003961(n+1))` -/
def P3218647068586282458.Spec : Prop :=
  ∀ n, P3218647068586282458.a n = A286371 (n + 1)

end A286371

/-!
# A286372: a(n) = A286366(A064216(n)).

The programs for A286372, the canonical program `A286372.P10421830987609414699` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286372 has offset 1).

The definition of A286372 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064216, A286366, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A286372.P10421830987609414699

`A286366(A064216(n+1))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A286372

/-- `A286366(A064216(n+1))` -/
def P10421830987609414699.Spec : Prop :=
  ∀ n, P10421830987609414699.a n = A286372 (n + 1)

theorem P10421830987609414699.correct : P10421830987609414699.Spec := by
  intro n
  simp only [A286372, Nat.add_sub_cancel]

end A286372

/-! ## A286372.P3255414470255222689

`A286366(A243502(n+1)/2)`
-/

namespace A286372.P3255414470255222689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286366 (SequenceMachineLib.roundAway ((A243502 (n + 1) : ℚ) / 2)).toNat

end

end A286372.P3255414470255222689

namespace A286372

/-- `A286366(A243502(n+1)/2)` -/
def P3255414470255222689.Spec : Prop :=
  ∀ n, P3255414470255222689.a n = A286372 (n + 1)

end A286372

/-! ## A286372.P1608021202732016509

`A286366(A064989(2*n+1))`
-/

namespace A286372.P1608021202732016509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286366 (A064989 (2 * n + 1)).toNat

end

end A286372.P1608021202732016509

namespace A286372

/-- `A286366(A064989(2*n+1))` -/
def P1608021202732016509.Spec : Prop :=
  ∀ n, P1608021202732016509.a n = A286372 (n + 1)

end A286372

/-! ## A286372.P17227976575526086237

`A286366(A283463(2*(n+1)))`
-/

namespace A286372.P17227976575526086237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286366 (A283463 (2 * (n + 1))).toNat

end

end A286372.P17227976575526086237

namespace A286372

/-- `A286366(A283463(2*(n+1)))` -/
def P17227976575526086237.Spec : Prop :=
  ∀ n, P17227976575526086237.a n = A286372 (n + 1)

end A286372

/-! ## A286372.P2266353152307364307

`A286373(A245448(n+1))`
-/

namespace A286372.P2266353152307364307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286373 (A245448 (n + 1)).toNat

end

end A286372.P2266353152307364307

namespace A286372

/-- `A286373(A245448(n+1))` -/
def P2266353152307364307.Spec : Prop :=
  ∀ n, P2266353152307364307.a n = A286372 (n + 1)

end A286372

/-! ## A286372.P6699484779574116009

`A286366(2*A243502(n+1))`
-/

namespace A286372.P6699484779574116009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286366 (2 * A243502 (n + 1)).toNat

end

end A286372.P6699484779574116009

namespace A286372

/-- `A286366(2*A243502(n+1))` -/
def P6699484779574116009.Spec : Prop :=
  ∀ n, P6699484779574116009.a n = A286372 (n + 1)

end A286372

/-!
# A286373: a(n) = A286366(A048673(n)).

The programs for A286373, the canonical program `A286373.P10522384416090527033` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286373 has offset 1).

The definition of A286373 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, A286366, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A286373.P10522384416090527033

`A286366(A048673(n+1))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A286373

/-- `A286366(A048673(n+1))` -/
def P10522384416090527033.Spec : Prop :=
  ∀ n, P10522384416090527033.a n = A286373 (n + 1)

theorem P10522384416090527033.correct : P10522384416090527033.Spec := by
  intro n
  simp only [A286373, Nat.add_sub_cancel]

end A286373

/-! ## A286373.P4013447640189499370

`A286366(ceil(A003961(n+1)/2))`
-/

namespace A286373.P4013447640189499370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286366 ⌈(A003961 (n + 1) : ℚ) / 2⌉.toNat

end

end A286373.P4013447640189499370

namespace A286373

/-- `A286366(ceil(A003961(n+1)/2))` -/
def P4013447640189499370.Spec : Prop :=
  ∀ n, P4013447640189499370.a n = A286373 (n + 1)

end A286373

/-! ## A286373.P9578208689985097475

`A286366(round(A003961(n+1)/2))`
-/

namespace A286373.P9578208689985097475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286366 (SequenceMachineLib.roundAway ((A003961 (n + 1) : ℚ) / 2)).toNat

end

end A286373.P9578208689985097475

namespace A286373

/-- `A286366(round(A003961(n+1)/2))` -/
def P9578208689985097475.Spec : Prop :=
  ∀ n, P9578208689985097475.a n = A286373 (n + 1)

end A286373

/-! ## A286373.P16821339242501579571

`A286366((A003961(n+1)+1)/2)`
-/

namespace A286373.P16821339242501579571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286366 (SequenceMachineLib.roundAway ((A003961 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A286373.P16821339242501579571

namespace A286373

/-- `A286366((A003961(n+1)+1)/2)` -/
def P16821339242501579571.Spec : Prop :=
  ∀ n, P16821339242501579571.a n = A286373 (n + 1)

end A286373

/-! ## A286373.P3966945865078230188

`A286372(A245447(n+1))`
-/

namespace A286373.P3966945865078230188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286372 (A245447 (n + 1)).toNat

end

end A286373.P3966945865078230188

namespace A286373

/-- `A286372(A245447(n+1))` -/
def P3966945865078230188.Spec : Prop :=
  ∀ n, P3966945865078230188.a n = A286373 (n + 1)

end A286373

/-! ## A286373.P5937965944087905717

`A286366(2*(A003961(n+1)+1))`
-/

namespace A286373.P5937965944087905717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286366 (2 * (A003961 (n + 1) + 1)).toNat

end

end A286373.P5937965944087905717

namespace A286373

/-- `A286366(2*(A003961(n+1)+1))` -/
def P5937965944087905717.Spec : Prop :=
  ∀ n, P5937965944087905717.a n = A286373 (n + 1)

end A286373

/-! ## A286373.P17872991998370482854

`A286366(A003961(n+1)+A003961(n+1)+2)`
-/

namespace A286373.P17872991998370482854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286366 (A003961 (n + 1) + (A003961 (n + 1) + 2)).toNat

end

end A286373.P17872991998370482854

namespace A286373

/-- `A286366(A003961(n+1)+A003961(n+1)+2)` -/
def P17872991998370482854.Spec : Prop :=
  ∀ n, P17872991998370482854.a n = A286373 (n + 1)

end A286373

/-!
# A286374: a(n) = A278222(n^2).

The programs for A286374, the canonical program `A286374.P5903061366125736314` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286374 has offset 0).

The definition of A286374 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A286374.P5903061366125736314

`A278222(n²)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A286374

/-- `A278222(n²)` -/
def P5903061366125736314.Spec : Prop :=
  ∀ n, P5903061366125736314.a n = A286374 n

theorem P5903061366125736314.correct : P5903061366125736314.Spec := by
  intro n
  simp only [A286374]

end A286374

/-! ## A286374.P18362212377456994206

`and(-1, A278222(A000290(n)))`
-/

namespace A286374.P18362212377456994206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A278222 (A000290 n).toNat)

end

end A286374.P18362212377456994206

namespace A286374

/-- `and(-1, A278222(A000290(n)))` -/
def P18362212377456994206.Spec : Prop :=
  ∀ n, P18362212377456994206.a n = A286374 n

end A286374

/-! ## A286374.P13468105061767643099

`abs(A278222(A000290(n))/A033999(n))`
-/

namespace A286374.P13468105061767643099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A278222 (A000290 n).toNat : ℚ) / (A033999 n : ℚ)|

end

end A286374.P13468105061767643099

namespace A286374

/-- `abs(A278222(A000290(n))/A033999(n))` -/
def P13468105061767643099.Spec : Prop :=
  ∀ n, P13468105061767643099.a n = (A286374 n : ℚ)

end A286374

/-! ## A286374.P11948035116440322904

`A278222(A000290(n))%A062938(n+2)`
-/

namespace A286374.P11948035116440322904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278222 (A000290 n).toNat) (A062938 (n + 2))

end

end A286374.P11948035116440322904

namespace A286374

/-- `A278222(A000290(n))%A062938(n+2)` -/
def P11948035116440322904.Spec : Prop :=
  ∀ n, P11948035116440322904.a n = A286374 n

end A286374

/-! ## A286374.P8156967612436699883

`A278222(A000290(n))+A272727(2*n+2)`
-/

namespace A286374.P8156967612436699883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (A000290 n).toNat + A272727 (2 * n + 2)

end

end A286374.P8156967612436699883

namespace A286374

/-- `A278222(A000290(n))+A272727(2*n+2)` -/
def P8156967612436699883.Spec : Prop :=
  ∀ n, P8156967612436699883.a n = A286374 n

end A286374

/-! ## A286374.P15744024492349012778

`A010209(2*n+3)*A278222(A000290(n))`
-/

namespace A286374.P15744024492349012778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010209 (2 * n + 3) * A278222 (A000290 n).toNat

end

end A286374.P15744024492349012778

namespace A286374

/-- `A010209(2*n+3)*A278222(A000290(n))` -/
def P15744024492349012778.Spec : Prop :=
  ∀ n, P15744024492349012778.a n = A286374 n

end A286374

/-! ## A286374.P7370840163289822841

`A286588(A246200(n²))`
-/

namespace A286374.P7370840163289822841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286588 (A246200 (n ^ 2)).toNat

end

end A286374.P7370840163289822841

namespace A286374

/-- `A286588(A246200(n²))` -/
def P7370840163289822841.Spec : Prop :=
  ∀ n, P7370840163289822841.a n = A286374 n

end A286374

/-! ## A286374.P13097409427159632007

`A278219(A006068(n²))`
-/

namespace A286374.P13097409427159632007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278219 (A006068 (n ^ 2)).toNat

end

end A286374.P13097409427159632007

namespace A286374

/-- `A278219(A006068(n²))` -/
def P13097409427159632007.Spec : Prop :=
  ∀ n, P13097409427159632007.a n = A286374 n

end A286374

/-! ## A286374.P10995343475834613307

`A181821(A246029(n²))`
-/

namespace A286374.P10995343475834613307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (A246029 (n ^ 2)).toNat

end

end A286374.P10995343475834613307

namespace A286374

/-- `A181821(A246029(n²))` -/
def P10995343475834613307.Spec : Prop :=
  ∀ n, P10995343475834613307.a n = A286374 n

end A286374

/-! ## A286374.P13460834819660538295

`A278217(A180200(n²))`
-/

namespace A286374.P13460834819660538295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278217 (A180200 (n ^ 2)).toNat

end

end A286374.P13460834819660538295

namespace A286374

/-- `A278217(A180200(n²))` -/
def P13460834819660538295.Spec : Prop :=
  ∀ n, P13460834819660538295.a n = A286374 n

end A286374

/-!
# A286375: a(n) = A278222(n^3).

The programs for A286375, the canonical program `A286375.P18031740170407069143` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286375 has offset 0).

The definition of A286375 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A286375.P18031740170407069143

`A278222(n^3)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A286375

/-- `A278222(n^3)` -/
def P18031740170407069143.Spec : Prop :=
  ∀ n, P18031740170407069143.a n = A286375 n

theorem P18031740170407069143.correct : P18031740170407069143.Spec := by
  intro n
  simp only [A286375]

end A286375

/-! ## A286375.P2536222161365670245

`A278222(n*n²)+char[41]`
-/

namespace A286375.P2536222161365670245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  41

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (n * n ^ 2) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A286375.P2536222161365670245

namespace A286375

/-- `A278222(n*n²)+char[41]` -/
def P2536222161365670245.Spec : Prop :=
  ∀ n, P2536222161365670245.a n = A286375 n

end A286375

/-! ## A286375.P16415686484869508309

`and(-1, A278222(A000578(n)))`
-/

namespace A286375.P16415686484869508309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A278222 (A000578 n).toNat)

end

end A286375.P16415686484869508309

namespace A286375

/-- `and(-1, A278222(A000578(n)))` -/
def P16415686484869508309.Spec : Prop :=
  ∀ n, P16415686484869508309.a n = A286375 n

end A286375

/-! ## A286375.P12461525811939222294

`A007318(∑[n])*A278222(n*n²)`
-/

namespace A286375.P12461525811939222294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A278222 (n * n ^ 2)

end

end A286375.P12461525811939222294

namespace A286375

/-- `A007318(∑[n])*A278222(n*n²)` -/
def P12461525811939222294.Spec : Prop :=
  ∀ n, P12461525811939222294.a n = A286375 n

end A286375

/-! ## A286375.P14651777006275676179

`lcm(A001221(n+2), A278222(n*n²))`
-/

namespace A286375.P14651777006275676179
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001221 (n + 2)) (A278222 (n * n ^ 2))

end

end A286375.P14651777006275676179

namespace A286375

/-- `lcm(A001221(n+2), A278222(n*n²))` -/
def P14651777006275676179.Spec : Prop :=
  ∀ n, (P14651777006275676179.a n : ℤ) = A286375 n

end A286375

/-!
# A286376: a(n) = A278222(A277699(n)).

The programs for A286376, there is no canonical definition to state claims against.
-/

/-! ## A286376.P3489858336546815818

`A278222(A277699(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286376.P3489858336546815818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (A277699 (n + 1)).toNat

end

end A286376.P3489858336546815818

/-! ## A286376.P15884827990513491710

`A278222(A277320(∑[4*n]+1))`
-/

namespace A286376.P15884827990513491710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (A277320 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A286376.P15884827990513491710

/-! ## A286376.P7229353549274826972

`A278222(A277199(A001844(n)))`
-/

namespace A286376.P7229353549274826972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (A277199 (A001844 n).toNat).toNat

end

end A286376.P7229353549274826972

/-! ## A286376.P15612891713339707838

`A283465(A129836(n+1)+2)`
-/

namespace A286376.P15612891713339707838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283465 (A129836 (n + 1) + 2).toNat

end

end A286376.P15612891713339707838

/-! ## A286376.P5690246258806892217

`A046523(xor(n+6, A265125(n+1)))`
-/

namespace A286376.P5690246258806892217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (Int.xor (n + 6 : ℤ) (A265125 (n + 1))).toNat

end

end A286376.P5690246258806892217

/-!
# A286377: a(n) = A278243(n^2).

The programs for A286377, there is no canonical definition to state claims against.
-/

/-! ## A286377.P14805286301183763654

`A278243(n²)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286377.P14805286301183763654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278243 (n ^ 2)

end

end A286377.P14805286301183763654

/-! ## A286377.P16250345358220429382

`and(-1, A278243(A000290(n)))`
-/

namespace A286377.P16250345358220429382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A278243 (A000290 n).toNat)

end

end A286377.P16250345358220429382

/-! ## A286377.P2732805818134810948

`A278243(A000290(n))+A102283(3*n)`
-/

namespace A286377.P2732805818134810948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278243 (A000290 n).toNat + A102283 (3 * n)

end

end A286377.P2732805818134810948

/-! ## A286377.P3954520896984320633

`A278243(A000290(n))+A000122(3*n+2)`
-/

namespace A286377.P3954520896984320633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278243 (A000290 n).toNat + A000122 (3 * n + 2)

end

end A286377.P3954520896984320633

/-! ## A286377.P2867870735159503960

`A051064(3*n+4)*A278243(A000290(n))`
-/

namespace A286377.P2867870735159503960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051064 (3 * n + 4) * A278243 (A000290 n).toNat

end

end A286377.P2867870735159503960

/-!
# A286378: Restricted growth sequence computed for Stern-polynomial related filter-sequence A278243.

The programs for A286378, there is no canonical definition to state claims against.
-/

/-! ## A286378.P4996888474982163107

`A331745(n)-A185284(A001961(n+1))`
-/

namespace A286378.P4996888474982163107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331745 n - A185284 (A001961 (n + 1)).toNat

end

end A286378.P4996888474982163107

/-! ## A286378.P10872594160855428209

`A103391(n+1)-A185284(A001961(n+1))`
-/

namespace A286378.P10872594160855428209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (n + 1) - A185284 (A001961 (n + 1)).toNat

end

end A286378.P10872594160855428209

/-! ## A286378.P17291700663841271942

`A331745(n)-A185238(A263256(n))`
-/

namespace A286378.P17291700663841271942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331745 n - A185238 (A263256 n).toNat

end

end A286378.P17291700663841271942

/-!
# A286380: a(n) = the minimum number of iterations of the reduced Collatz function R required to yield 1. The function R (A139391) is defined as R(k) = (3k+1)/2^r, with r as large as possible.

The programs for A286380, there is no canonical definition to state claims against.
-/

/-! ## A286380.P10902528039220007292

`ceil(A220182(n+1)/2)`
-/

namespace A286380.P10902528039220007292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A220182 (n + 1) : ℚ) / 2⌉

end

end A286380.P10902528039220007292

/-! ## A286380.P9861469059384453667

`A006667(n+1)+n%2`
-/

namespace A286380.P9861469059384453667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (n + 1) + ((n % 2 : ℕ) : ℤ)

end

end A286380.P9861469059384453667

/-! ## A286380.P1324642952807225096

`A078719(n+1)-char[2*n]`
-/

namespace A286380.P1324642952807225096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078719 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A286380.P1324642952807225096

/-! ## A286380.P14446194736138554851

`A110654(A220182(n+1))`
-/

namespace A286380.P14446194736138554851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A220182 (n + 1)).toNat

end

end A286380.P14446194736138554851

/-! ## A286380.P1921703994615498109

`A004526(A220182(n+1)+1)`
-/

namespace A286380.P1921703994615498109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A220182 (n + 1) + 1).toNat

end

end A286380.P1921703994615498109

/-! ## A286380.P7104057792912661050

`A006667(n+1)+A000035(n)`
-/

namespace A286380.P7104057792912661050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (n + 1) + A000035 n

end

end A286380.P7104057792912661050

/-! ## A286380.P16587402026325145343

`A006667(n+1)+char[A005408(n)]`
-/

namespace A286380.P16587402026325145343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A286380.P16587402026325145343

/-! ## A286380.P8163345373426217871

`A008619(A220182(n+1)+1)-1`
-/

namespace A286380.P8163345373426217871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A220182 (n + 1) + 1).toNat - 1

end

end A286380.P8163345373426217871

/-! ## A286380.P13805621024738461546

`A002265(2*(A220182(n+1)+1))`
-/

namespace A286380.P13805621024738461546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * (A220182 (n + 1) + 1)).toNat

end

end A286380.P13805621024738461546

/-! ## A286380.P3569208844588096213

`A213209(n+1)+A213181(n+1)`
-/

namespace A286380.P3569208844588096213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213209 (n + 1) + A213181 (n + 1)

end

end A286380.P3569208844588096213

/-! ## A286380.P14362403728441886137

`A006667(n+1)+A000034(n)-1`
-/

namespace A286380.P14362403728441886137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (n + 1) + (A000034 n - 1)

end

end A286380.P14362403728441886137

/-! ## A286380.P7110037396146551362

`A006667(n+1)+1-A059841(n)`
-/

namespace A286380.P7110037396146551362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (n + 1) + (1 - A059841 n)

end

end A286380.P7110037396146551362

/-! ## A286380.P10869881876148961702

`A220182(n+1)-A006667(n+1)`
-/

namespace A286380.P10869881876148961702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220182 (n + 1) - A006667 (n + 1)

end

end A286380.P10869881876148961702

/-! ## A286380.P9243964926890982054

`A006667(n+1)+1-A056594(n)²`
-/

namespace A286380.P9243964926890982054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (n + 1) + (1 - A056594 n ^ 2)

end

end A286380.P9243964926890982054

/-! ## A286380.P6621581942327628473

`A006667(n+1)-A007814(n+1)/A094267(n)`
-/

namespace A286380.P6621581942327628473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006667 (n + 1) : ℚ) - (A007814 (n + 1) : ℚ) / (A094267 n : ℚ)

end

end A286380.P6621581942327628473

/-! ## A286380.P14010698745357769709

`A006666(n+1)+A220182(n+1)-A006577(n+1)`
-/

namespace A286380.P14010698745357769709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006666 (n + 1) + (A220182 (n + 1) - A006577 (n + 1))

end

end A286380.P14010698745357769709

/-! ## A286380.P15710938249940043590

`A006667(n+1)+A059841(n+1)`
-/

namespace A286380.P15710938249940043590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (n + 1) + A059841 (n + 1)

end

end A286380.P15710938249940043590

/-! ## A286380.P468591523637242446

`A006667(n+1)+A056594(n+1)²`
-/

namespace A286380.P468591523637242446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (n + 1) + A056594 (n + 1) ^ 2

end

end A286380.P468591523637242446

/-! ## A286380.P14144316608325802468

`A292077(2*n+1)+A006667(n+1)`
-/

namespace A286380.P14144316608325802468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292077 (2 * n + 1) + A006667 (n + 1)

end

end A286380.P14144316608325802468

/-! ## A286380.P8325291206384191429

`A006667(n+1)-A004524(2*n)+n`
-/

namespace A286380.P8325291206384191429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (n + 1) - A004524 (2 * n) + (n : ℤ)

end

end A286380.P8325291206384191429

/-!
# A286381: Compound filter: a(n) = P(A055881(n), A278236(n)), where P(n,k) is sequence A000027 used as a pairing function.

The programs for A286381, there is no canonical definition to state claims against.
-/

/-! ## A286381.P9339649821295736037

`1/2*(2+(A055881(n+1)+A278236(n+1))²-A055881(n+1)-3*A278236(n+1))`
-/

namespace A286381.P9339649821295736037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (2 + ((A055881 (n + 1) + A278236 (n + 1)) ^ 2 - A055881 (n + 1)) - 3 * A278236 (n + 1) : ℚ)

end

end A286381.P9339649821295736037

/-! ## A286381.P1502014075669622326

`A286382(A351576(n+1))`
-/

namespace A286381.P1502014075669622326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286382 (A351576 (n + 1)).toNat

end

end A286381.P1502014075669622326

/-! ## A286381.P12784185617160154154

`A286162(A277012(n+1))`
-/

namespace A286381.P12784185617160154154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286162 (A277012 (n + 1)).toNat

end

end A286381.P12784185617160154154

/-! ## A286381.P17065170873656968428

`A286164(A276076(n+1))`
-/

namespace A286381.P17065170873656968428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286164 (A276076 (n + 1)).toNat

end

end A286381.P17065170873656968428

/-! ## A286381.P3406918382031798850

`A286382(∑[∑[A111332(n)]])`
-/

namespace A286381.P3406918382031798850
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111332 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286382 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A286381.P3406918382031798850

/-!
# A286382: Compound filter: a(n) = P(A257993(n), A278226(n)), where P(n,k) is sequence A000027 used as a pairing function.

The programs for A286382, there is no canonical definition to state claims against.
-/

/-! ## A286382.P14380321683385678588

`1/2*(2+(A257993(n+1)+A278226(n+1))²-A257993(n+1)-3*A278226(n+1))`
-/

namespace A286382.P14380321683385678588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (2 + ((A257993 (n + 1) + A278226 (n + 1)) ^ 2 - A257993 (n + 1)) - 3 * A278226 (n + 1) : ℚ)

end

end A286382.P14380321683385678588

/-! ## A286382.P12459931102395488432

`A286162(A277022(n+1))`
-/

namespace A286382.P12459931102395488432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286162 (A277022 (n + 1)).toNat

end

end A286382.P12459931102395488432

/-! ## A286382.P16249036399645644286

`A286164(A276086(n+1))`
-/

namespace A286382.P16249036399645644286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286164 (A276086 (n + 1)).toNat

end

end A286382.P16249036399645644286

/-! ## A286382.P7873607899198014638

`A286164(A328571(n+1)*A328572(n+1))`
-/

namespace A286382.P7873607899198014638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286164 (A328571 (n + 1) * A328572 (n + 1)).toNat

end

end A286382.P7873607899198014638

/-!
# A286383: a(n) = A278233(A003188(n)).

The programs for A286383, there is no canonical definition to state claims against.
-/

/-! ## A286383.P15175152128440870927

`A278233(A003188(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286383.P15175152128440870927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278233 (A003188 (n + 1)).toNat

end

end A286383.P15175152128440870927

/-! ## A286383.P17927249139814189216

`A278233(xor(n+1, A110654(n)))`
-/

namespace A286383.P17927249139814189216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278233 (Int.xor (n + 1 : ℤ) (A110654 n)).toNat

end

end A286383.P17927249139814189216

/-! ## A286383.P15183035933858722284

`A286384(A064706(n+1))`
-/

namespace A286383.P15183035933858722284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286384 (A064706 (n + 1)).toNat

end

end A286383.P15183035933858722284

/-! ## A286383.P3602764708138316257

`A286384(A193231(n+1))`
-/

namespace A286383.P3602764708138316257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286384 (A193231 (n + 1)).toNat

end

end A286383.P3602764708138316257

/-! ## A286383.P2149795498102498222

`A278233(A234613(n+1))`
-/

namespace A286383.P2149795498102498222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278233 (A234613 (n + 1)).toNat

end

end A286383.P2149795498102498222

/-! ## A286383.P2209229558609280028

`A286384(A003188(A003188(A003188(A006068(n+1)))))`
-/

namespace A286383.P2209229558609280028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286384 (A003188 (A003188 (A003188 (A006068 (n + 1)).toNat).toNat).toNat).toNat

end

end A286383.P2209229558609280028

/-!
# A286384: a(n) = A278233(A006068(n)).

The programs for A286384, there is no canonical definition to state claims against.
-/

/-! ## A286384.P5333888918729396482

`A278233(A006068(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286384.P5333888918729396482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278233 (A006068 (n + 1)).toNat

end

end A286384.P5333888918729396482

/-! ## A286384.P7550557425123219517

`A278233(∑[A320667(n+1)])`
-/

namespace A286384.P7550557425123219517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320667 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278233 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A286384.P7550557425123219517

/-! ## A286384.P2918125591770487680

`A286383(A064707(n+1))`
-/

namespace A286384.P2918125591770487680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286383 (A064707 (n + 1)).toNat

end

end A286384.P2918125591770487680

/-! ## A286384.P10085072089520855092

`A286383(A193231(n+1))`
-/

namespace A286384.P10085072089520855092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286383 (A193231 (n + 1)).toNat

end

end A286384.P10085072089520855092

/-! ## A286384.P10086834348301415194

`A278233(A234612(n+1))`
-/

namespace A286384.P10086834348301415194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278233 (A234612 (n + 1)).toNat

end

end A286384.P10086834348301415194

/-! ## A286384.P12049018931645317051

`A278233(A066194(n+2)-1)`
-/

namespace A286384.P12049018931645317051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278233 (A066194 (n + 2) - 1).toNat

end

end A286384.P12049018931645317051

/-! ## A286384.P6004520164110343235

`A286383(A006068(A006068(A006068(A003188(n+1)))))`
-/

namespace A286384.P6004520164110343235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286383 (A006068 (A006068 (A006068 (A003188 (n + 1)).toNat).toNat).toNat).toNat

end

end A286384.P6004520164110343235

/-!
# A286385: a(n) = A003961(n) - A000203(n).

The programs for A286385, the canonical program `A286385.P7583078268767377745` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286385 has offset 1).

The definition of A286385 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A286385.P7583078268767377745

`A003961(n+1)-A000203(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A286385

/-- `A003961(n+1)-A000203(n+1)` -/
def P7583078268767377745.Spec : Prop :=
  ∀ n, P7583078268767377745.a n = A286385 (n + 1)

theorem P7583078268767377745.correct : P7583078268767377745.Spec := by
  intro n
  simp only [A286385, Nat.add_sub_cancel]

end A286385

/-! ## A286385.P9969164175482627407

`A336852(n+1)-A336851(n+1)`
-/

namespace A286385.P9969164175482627407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336852 (n + 1) - A336851 (n + 1)

end

end A286385.P9969164175482627407

namespace A286385

/-- `A336852(n+1)-A336851(n+1)` -/
def P9969164175482627407.Spec : Prop :=
  ∀ n, P9969164175482627407.a n = A286385 (n + 1)

end A286385

/-! ## A286385.P4766563348379500161

`2*A048673(n+1)-A000203(n+1)-1`
-/

namespace A286385.P4766563348379500161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048673 (n + 1) - A000203 (n + 1) - 1

end

end A286385.P4766563348379500161

namespace A286385

/-- `2*A048673(n+1)-A000203(n+1)-1` -/
def P4766563348379500161.Spec : Prop :=
  ∀ n, P4766563348379500161.a n = A286385 (n + 1)

end A286385

/-! ## A286385.P1428629017536866379

`A285705(A048673(n+1))-1`
-/

namespace A286385.P1428629017536866379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285705 (A048673 (n + 1)).toNat - 1

end

end A286385.P1428629017536866379

namespace A286385

/-- `A285705(A048673(n+1))-1` -/
def P1428629017536866379.Spec : Prop :=
  ∀ n, P1428629017536866379.a n = A286385 (n + 1)

end A286385

/-! ## A286385.P11823818804107484510

`∑{d}[n+1, A337549(#)]`
-/

namespace A286385.P11823818804107484510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A337549 d

end

end A286385.P11823818804107484510

namespace A286385

/-- `∑{d}[n+1, A337549(#)]` -/
def P11823818804107484510.Spec : Prop :=
  ∀ n, P11823818804107484510.a n = A286385 (n + 1)

end A286385

/-! ## A286385.P5028812481176727676

`A033879(n+1)+Δ[A252749(n)]`
-/

namespace A286385.P5028812481176727676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252749 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1) + (f1 (n + 1) - f1 n)

end

end A286385.P5028812481176727676

namespace A286385

/-- `A033879(n+1)+Δ[A252749(n)]` -/
def P5028812481176727676.Spec : Prop :=
  ∀ n, P5028812481176727676.a n = A286385 (n + 1)

end A286385

/-! ## A286385.P13567158350657092342

`A003961(n+1)-Δ[A160664(n)]`
-/

namespace A286385.P13567158350657092342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1) - (f1 (n + 1) - f1 n)

end

end A286385.P13567158350657092342

namespace A286385

/-- `A003961(n+1)-Δ[A160664(n)]` -/
def P13567158350657092342.Spec : Prop :=
  ∀ n, P13567158350657092342.a n = A286385 (n + 1)

end A286385

/-! ## A286385.P13467601277237355296

`A252748(n+1)+A033879(n+1)`
-/

namespace A286385.P13467601277237355296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252748 (n + 1) + A033879 (n + 1)

end

end A286385.P13467601277237355296

namespace A286385

/-- `A252748(n+1)+A033879(n+1)` -/
def P13467601277237355296.Spec : Prop :=
  ∀ n, P13467601277237355296.a n = A286385 (n + 1)

end A286385

/-! ## A286385.P1651068108005116764

`A346473(n+1)+A280692(n+1)`
-/

namespace A286385.P1651068108005116764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346473 (n + 1) + A280692 (n + 1)

end

end A286385.P1651068108005116764

namespace A286385

/-- `A346473(n+1)+A280692(n+1)` -/
def P1651068108005116764.Spec : Prop :=
  ∀ n, P1651068108005116764.a n = A286385 (n + 1)

end A286385

/-! ## A286385.P6447902704482754905

`A253885(n)+1-A000203(n+1)`
-/

namespace A286385.P6447902704482754905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253885 n + (1 - A000203 (n + 1))

end

end A286385.P6447902704482754905

namespace A286385

/-- `A253885(n)+1-A000203(n+1)` -/
def P6447902704482754905.Spec : Prop :=
  ∀ n, P6447902704482754905.a n = A286385 (n + 1)

end A286385

/-! ## A286385.P10261337239762202065

`A252748(n+1)-A033880(n+1)`
-/

namespace A286385.P10261337239762202065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252748 (n + 1) - A033880 (n + 1)

end

end A286385.P10261337239762202065

namespace A286385

/-- `A252748(n+1)-A033880(n+1)` -/
def P10261337239762202065.Spec : Prop :=
  ∀ n, P10261337239762202065.a n = A286385 (n + 1)

end A286385

/-! ## A286385.P5585285896166030692

`A243501(n+1)-A088580(n+1)`
-/

namespace A286385.P5585285896166030692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243501 (n + 1) - A088580 (n + 1)

end

end A286385.P5585285896166030692

namespace A286385

/-- `A243501(n+1)-A088580(n+1)` -/
def P5585285896166030692.Spec : Prop :=
  ∀ n, P5585285896166030692.a n = A286385 (n + 1)

end A286385

/-! ## A286385.P1960516542399486578

`A336853(n+1)-A001065(n+1)`
-/

namespace A286385.P1960516542399486578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336853 (n + 1) - A001065 (n + 1)

end

end A286385.P1960516542399486578

namespace A286385

/-- `A336853(n+1)-A001065(n+1)` -/
def P1960516542399486578.Spec : Prop :=
  ∀ n, P1960516542399486578.a n = A286385 (n + 1)

end A286385

/-! ## A286385.P17271529249509337007

`A000203(n+1)-A377984(n+1)`
-/

namespace A286385.P17271529249509337007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A377984 (n + 1)

end

end A286385.P17271529249509337007

namespace A286385

/-- `A000203(n+1)-A377984(n+1)` -/
def P17271529249509337007.Spec : Prop :=
  ∀ n, P17271529249509337007.a n = A286385 (n + 1)

end A286385

/-! ## A286385.P7935646969859928807

`A108228(n+1)-A378751(n+1)`
-/

namespace A286385.P7935646969859928807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108228 (n + 1) - A378751 (n + 1)

end

end A286385.P7935646969859928807

namespace A286385

/-- `A108228(n+1)-A378751(n+1)` -/
def P7935646969859928807.Spec : Prop :=
  ∀ n, P7935646969859928807.a n = A286385 (n + 1)

end A286385

/-! ## A286385.P14502971753021855956

`A348937(n+1)-A343224(n+1)`
-/

namespace A286385.P14502971753021855956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348937 (n + 1) - A343224 (n + 1)

end

end A286385.P14502971753021855956

namespace A286385

/-- `A348937(n+1)-A343224(n+1)` -/
def P14502971753021855956.Spec : Prop :=
  ∀ n, P14502971753021855956.a n = A286385 (n + 1)

end A286385

/-! ## A286385.P1875361663655352671

`A003961(n+1)+1-A088580(n+1)`
-/

namespace A286385.P1875361663655352671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1) + (1 - A088580 (n + 1))

end

end A286385.P1875361663655352671

namespace A286385

/-- `A003961(n+1)+1-A088580(n+1)` -/
def P1875361663655352671.Spec : Prop :=
  ∀ n, P1875361663655352671.a n = A286385 (n + 1)

end A286385

/-! ## A286385.P8764543148704702187

`A243501(n+1)-(A000203(n+1)+1)`
-/

namespace A286385.P8764543148704702187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243501 (n + 1) - (A000203 (n + 1) + 1)

end

end A286385.P8764543148704702187

namespace A286385

/-- `A243501(n+1)-(A000203(n+1)+1)` -/
def P8764543148704702187.Spec : Prop :=
  ∀ n, P8764543148704702187.a n = A286385 (n + 1)

end A286385

/-! ## A286385.P5083808257747729589

`2*A048673(n+1)-A088580(n+1)`
-/

namespace A286385.P5083808257747729589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048673 (n + 1) - A088580 (n + 1)

end

end A286385.P5083808257747729589

namespace A286385

/-- `2*A048673(n+1)-A088580(n+1)` -/
def P5083808257747729589.Spec : Prop :=
  ∀ n, P5083808257747729589.a n = A286385 (n + 1)

end A286385

/-! ## A286385.P12775600686262676173

`A003961(n+1)-A245092(2*n+1)`
-/

namespace A286385.P12775600686262676173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1) - A245092 (2 * n + 1)

end

end A286385.P12775600686262676173

namespace A286385

/-- `A003961(n+1)-A245092(2*n+1)` -/
def P12775600686262676173.Spec : Prop :=
  ∀ n, P12775600686262676173.a n = A286385 (n + 1)

end A286385

/-!
# A286386: Compound filter: a(n) = 2*A286473(n) + (1 if n is a square, 0 otherwise).

The programs for A286386, there is no canonical definition to state claims against.
-/

/-! ## A286386.P14201959140869590161

`2*A286473(n+1)+A010052(n+1)`
-/

namespace A286386.P14201959140869590161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A286473 (n + 1) + A010052 (n + 1)

end

end A286386.P14201959140869590161

/-!
# A286387: a(n) = A002487(n^2).

The programs for A286387, the canonical program `A286387.P16052920801655735120` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286387 has offset 0).

The definition of A286387 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002487, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A286387.P16052920801655735120

`A002487(n²)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A286387

/-- `A002487(n²)` -/
def P16052920801655735120.Spec : Prop :=
  ∀ n, P16052920801655735120.a n = A286387 n

theorem P16052920801655735120.correct : P16052920801655735120.Spec := by
  intro n
  simp only [A286387]

end A286387

/-! ## A286387.P6120855797546335284

`∑{d}[n², A317839(#)]`
-/

namespace A286387.P6120855797546335284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A317839 d

end

end A286387.P6120855797546335284

namespace A286387

/-- `∑{d}[n², A317839(#)]` -/
def P6120855797546335284.Spec : Prop :=
  ∀ n, P6120855797546335284.a n = A286387 n

end A286387

/-! ## A286387.P6584303416060856990

`A324337(A003188(gcd(n, ∑[n])²))`
-/

namespace A286387.P6584303416060856990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324337 (A003188 (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2)).toNat

end

end A286387.P6584303416060856990

namespace A286387

/-- `A324337(A003188(gcd(n, ∑[n])²))` -/
def P6584303416060856990.Spec : Prop :=
  ∀ n, P6584303416060856990.a n = A286387 n

end A286387

/-! ## A286387.P9941218332379442285

`A324337(A003188((lcm(32, n)/32)²))`
-/

namespace A286387.P9941218332379442285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324337 (A003188 (SequenceMachineLib.roundAway (((Nat.lcm 32 n : ℚ) / 32) ^ 2)).toNat).toNat

end

end A286387.P9941218332379442285

namespace A286387

/-- `A324337(A003188((lcm(32, n)/32)²))` -/
def P9941218332379442285.Spec : Prop :=
  ∀ n, P9941218332379442285.a n = A286387 n

end A286387

/-! ## A286387.P13255238208820229276

`∑{d}[A000290(n), A317839(#)]%A002727(n)`
-/

namespace A286387.P13255238208820229276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ d ∈ Nat.divisors (f1 n).natAbs, A317839 d) (A002727 n)

end

end A286387.P13255238208820229276

namespace A286387

/-- `∑{d}[A000290(n), A317839(#)]%A002727(n)` -/
def P13255238208820229276.Spec : Prop :=
  ∀ n, P13255238208820229276.a n = A286387 n

end A286387

/-! ## A286387.P2781369845361934361

`A324337(A003188(n²))`
-/

namespace A286387.P2781369845361934361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324337 (A003188 (n ^ 2)).toNat

end

end A286387.P2781369845361934361

namespace A286387

/-- `A324337(A003188(n²))` -/
def P2781369845361934361.Spec : Prop :=
  ∀ n, P2781369845361934361.a n = A286387 n

end A286387

/-! ## A286387.P17461896409700223934

`A057889(A057889(A002487(n*n)))`
-/

namespace A286387.P17461896409700223934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A057889 (A002487 (n * n)).toNat).toNat

end

end A286387.P17461896409700223934

namespace A286387

/-- `A057889(A057889(A002487(n*n)))` -/
def P17461896409700223934.Spec : Prop :=
  ∀ n, P17461896409700223934.a n = A286387 n

end A286387

/-! ## A286387.P5432467173000897145

`A000120(A001316(n))*A002487(A000290(n))`
-/

namespace A286387.P5432467173000897145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A001316 n).toNat * A002487 (A000290 n).toNat

end

end A286387.P5432467173000897145

namespace A286387

/-- `A000120(A001316(n))*A002487(A000290(n))` -/
def P5432467173000897145.Spec : Prop :=
  ∀ n, P5432467173000897145.a n = A286387 n

end A286387

/-! ## A286387.P6735094424642238575

`n²-A284013(n²)`
-/

namespace A286387.P6735094424642238575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A284013 (n ^ 2)

end

end A286387.P6735094424642238575

namespace A286387

/-- `n²-A284013(n²)` -/
def P6735094424642238575.Spec : Prop :=
  ∀ n, P6735094424642238575.a n = A286387 n

end A286387

/-! ## A286387.P11105528296885091107

`A283976(2*n*n)`
-/

namespace A286387.P11105528296885091107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283976 (2 * (n * n))

end

end A286387.P11105528296885091107

namespace A286387

/-- `A283976(2*n*n)` -/
def P11105528296885091107.Spec : Prop :=
  ∀ n, P11105528296885091107.a n = A286387 n

end A286387

/-!
# A286389: a(0) = 0; a(n) = n - a(floor(a(n-1)/2)).

The programs for A286389, the canonical program `A286389.P15204840749128033592` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286389 has offset 0).

The definition of A286389 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-a(floor(a(n-1)/2))` (program `A286389.P15204840749128033592`, by `A286389.P15204840749128033592.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A286389.P15204840749128033592

`n-a(floor(a(n-1)/2))` with `a(0)=0`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A286389

/-- `n-a(floor(a(n-1)/2))` -/
def P15204840749128033592.Spec : Prop :=
  ∀ n, P15204840749128033592.a n = A286389 n

theorem P15204840749128033592.correct : P15204840749128033592.Spec := by
  intro n
  simp only [A286389]

end A286389

/-! ## A286389.P8369488799322447072

`n-a(ceil((a(n-1)-1)/2))` with `a(0)=0`
-/

namespace A286389.P8369488799322447072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - a ⌈(a (n - 1) - 1 : ℚ) / 2⌉.toNat

end

end A286389.P8369488799322447072

namespace A286389

/-- `n-a(ceil((a(n-1)-1)/2))` -/
def P8369488799322447072.Spec : Prop :=
  ∀ n, P8369488799322447072.a n = A286389 n

end A286389

/-! ## A286389.P4640569824939196695

`n-a((a(n-1)-a(n-1)%2)/2)` with `a(0)=0`
-/

namespace A286389.P4640569824939196695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - a (SequenceMachineLib.roundAway ((a (n - 1) - Int.tmod (a (n - 1)) 2 : ℚ) / 2)).toNat

end

end A286389.P4640569824939196695

namespace A286389

/-- `n-a((a(n-1)-a(n-1)%2)/2)` -/
def P4640569824939196695.Spec : Prop :=
  ∀ n, P4640569824939196695.a n = A286389 n

end A286389

/-! ## A286389.P8292162870801779522

`∑[char[A026367(n+1)]]`
-/

namespace A286389.P8292162870801779522
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026367 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286389.P8292162870801779522

namespace A286389

/-- `∑[char[A026367(n+1)]]` -/
def P8292162870801779522.Spec : Prop :=
  ∀ n, (P8292162870801779522.a n : ℤ) = A286389 n

end A286389

/-! ## A286389.P16559817934708577641

`A283965(n+1)-(n+1)`
-/

namespace A286389.P16559817934708577641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283965 (n + 1) - (n + 1 : ℤ)

end

end A286389.P16559817934708577641

namespace A286389

/-- `A283965(n+1)-(n+1)` -/
def P16559817934708577641.Spec : Prop :=
  ∀ n, P16559817934708577641.a n = A286389 n

end A286389

/-! ## A286389.P11738398960246221578

`A284774(n+1)%(n+1)`
-/

namespace A286389.P11738398960246221578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284774 (n + 1)) (n + 1 : ℤ)

end

end A286389.P11738398960246221578

namespace A286389

/-- `A284774(n+1)%(n+1)` -/
def P11738398960246221578.Spec : Prop :=
  ∀ n, P11738398960246221578.a n = A286389 n

end A286389

/-! ## A286389.P14383948620313398230

`A285431(n)+a(n-1)` with `a(0)=0`
-/

namespace A286389.P14383948620313398230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A285431 n + a (n - 1)

end

end A286389.P14383948620313398230

namespace A286389

/-- `A285431(n)+a(n-1)` -/
def P14383948620313398230.Spec : Prop :=
  ∀ n, P14383948620313398230.a n = A286389 n

end A286389

/-! ## A286389.P3807036248299594033

`n-∑[char[A026368(n+1)]]`
-/

namespace A286389.P3807036248299594033
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026368 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A286389.P3807036248299594033

namespace A286389

/-- `n-∑[char[A026368(n+1)]]` -/
def P3807036248299594033.Spec : Prop :=
  ∀ n, P3807036248299594033.a n = A286389 n

end A286389

/-! ## A286389.P6390281515512115872

`n-a(A004526(a(n-1)))` with `a(0)=0`
-/

namespace A286389.P6390281515512115872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - a (A004526 (a (n - 1)).toNat).toNat

end

end A286389.P6390281515512115872

namespace A286389

/-- `n-a(A004526(a(n-1)))` -/
def P6390281515512115872.Spec : Prop :=
  ∀ n, P6390281515512115872.a n = A286389 n

end A286389

/-! ## A286389.P1132428860763141375

`∑[A285431(C(n, a(n-1)))]` with `a(0)=0`
-/

namespace A286389.P1132428860763141375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A285431 (Nat.choose n (f1 (n - 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286389.P1132428860763141375

namespace A286389

/-- `∑[A285431(C(n, a(n-1)))]` -/
def P1132428860763141375.Spec : Prop :=
  ∀ n, P1132428860763141375.a n = A286389 n

end A286389

/-! ## A286389.P7637428735481481965

`n-a(A123108(a(n-1)))` with `a(0)=0, a(1)=1`
-/

namespace A286389.P7637428735481481965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (n : ℤ) - a (A123108 (a (n - 1)).toNat).toNat

end

end A286389.P7637428735481481965

namespace A286389

/-- `n-a(A123108(a(n-1)))` -/
def P7637428735481481965.Spec : Prop :=
  ∀ n, P7637428735481481965.a n = A286389 n

end A286389

/-! ## A286389.P14081225638861653411

`n-a(A110654(a(n-2)))` with `a(0)=0, a(1)=1`
-/

namespace A286389.P14081225638861653411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (n : ℤ) - a (A110654 (a (n - 2)).toNat).toNat

end

end A286389.P14081225638861653411

namespace A286389

/-- `n-a(A110654(a(n-2)))` -/
def P14081225638861653411.Spec : Prop :=
  ∀ n, P14081225638861653411.a n = A286389 n

end A286389

/-! ## A286389.P11198928699297054704

`A283965(n+1)%A000027(n+1)`
-/

namespace A286389.P11198928699297054704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283965 (n + 1)) (A000027 (n + 1))

end

end A286389.P11198928699297054704

namespace A286389

/-- `A283965(n+1)%A000027(n+1)` -/
def P11198928699297054704.Spec : Prop :=
  ∀ n, P11198928699297054704.a n = A286389 n

end A286389

/-! ## A286389.P12740187455698139254

`∑[A285431(n+1)]-A285431(n+1)`
-/

namespace A286389.P12740187455698139254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285431 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A285431 (n + 1)

end

end A286389.P12740187455698139254

namespace A286389

/-- `∑[A285431(n+1)]-A285431(n+1)` -/
def P12740187455698139254.Spec : Prop :=
  ∀ n, P12740187455698139254.a n = A286389 n

end A286389

/-! ## A286389.P14822759199471181217

`A026366(A285431(n+1)+n)-A285431(n+1)`
-/

namespace A286389.P14822759199471181217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026366 (A285431 (n + 1) + (n : ℤ)).toNat - A285431 (n + 1)

end

end A286389.P14822759199471181217

namespace A286389

/-- `A026366(A285431(n+1)+n)-A285431(n+1)` -/
def P14822759199471181217.Spec : Prop :=
  ∀ n, P14822759199471181217.a n = A286389 n

end A286389

/-! ## A286389.P1677278249648760553

`record[n*A283963(n+1)]-n`
-/

namespace A286389.P1677278249648760553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A283963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A286389.P1677278249648760553

namespace A286389

/-- `record[n*A283963(n+1)]-n` -/
def P1677278249648760553.Spec : Prop :=
  ∀ n, P1677278249648760553.a n = A286389 n

end A286389

/-!
# A286390: a(n) = a(n-2) - 2*a(n-3) + a(n-4) for n>3, a(0)=0, a(1)=2, a(2)=-1, a(3)=3.

The programs for A286390, the canonical program `A286390.P8792468669886763114` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286390 has offset 0).

The definition of A286390 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2)-2*a(n-3)+a(n-4)` (program `A286390.P8792468669886763114`, by `A286390.P8792468669886763114.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A286390.P8792468669886763114

`a(n-2)-2*a(n-3)+a(n-4)` with `a(0)=0, a(1)=2, a(2)=-1, a(3)=3`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A286390

/-- `a(n-2)-2*a(n-3)+a(n-4)` -/
def P8792468669886763114.Spec : Prop :=
  ∀ n, P8792468669886763114.a n = A286390 n

theorem P8792468669886763114.correct : P8792468669886763114.Spec := by
  intro n
  simp only [A286390]

end A286390

/-! ## A286390.P9868347351027358198

`ogf((2x-x^2+x^3)/(1-x^2+2x^3-x^4))`
-/

namespace A286390.P9868347351027358198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -1, 1] [1, 0, -1, 2, -1] n

end

end A286390.P9868347351027358198

namespace A286390

/-- `ogf((2x-x^2+x^3)/(1-x^2+2x^3-x^4))` -/
def P9868347351027358198.Spec : Prop :=
  ∀ n, P9868347351027358198.a n = A286390 n

end A286390

/-! ## A286390.P15056048902959198427

`a(n-2)+xor(-a(n-1), n²%3)` with `a(0)=0, a(1)=2`
-/

namespace A286390.P15056048902959198427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (n - 2) + Int.xor (-a (n - 1)) ((n ^ 2 % 3 : ℕ) : ℤ)

end

end A286390.P15056048902959198427

namespace A286390

/-- `a(n-2)+xor(-a(n-1), n²%3)` -/
def P15056048902959198427.Spec : Prop :=
  ∀ n, P15056048902959198427.a n = A286390 n

end A286390

/-! ## A286390.P2779975269254346522

`A128834(n)+a(n-2)-a(n-1)` with `a(0)=0, a(1)=2`
-/

namespace A286390.P2779975269254346522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  A128834 n + a (n - 2) - a (n - 1)

end

end A286390.P2779975269254346522

namespace A286390

/-- `A128834(n)+a(n-2)-a(n-1)` -/
def P2779975269254346522.Spec : Prop :=
  ∀ n, P2779975269254346522.a n = A286390 n

end A286390

/-! ## A286390.P15577527595301343205

`A163806(n)-(a(n-1)-a(n-2))` with `a(0)=0, a(1)=2`
-/

namespace A286390.P15577527595301343205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  A163806 n - (a (n - 1) - a (n - 2))

end

end A286390.P15577527595301343205

namespace A286390

/-- `A163806(n)-(a(n-1)-a(n-2))` -/
def P15577527595301343205.Spec : Prop :=
  ∀ n, P15577527595301343205.a n = A286390 n

end A286390

/-! ## A286390.P2034898516962282488

`A022086(n*A000035(n))-A286311(n)`
-/

namespace A286390.P2034898516962282488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022086 ((n : ℤ) * A000035 n).toNat - A286311 n

end

end A286390.P2034898516962282488

namespace A286390

/-- `A022086(n*A000035(n))-A286311(n)` -/
def P2034898516962282488.Spec : Prop :=
  ∀ n, P2034898516962282488.a n = A286390 n

end A286390

/-! ## A286390.P12512484646021083311

`A292521(n)-2*A226447(n)`
-/

namespace A286390.P12512484646021083311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292521 n - 2 * A226447 n

end

end A286390.P12512484646021083311

namespace A286390

/-- `A292521(n)-2*A226447(n)` -/
def P12512484646021083311.Spec : Prop :=
  ∀ n, P12512484646021083311.a n = A286390 n

end A286390

/-! ## A286390.P14884355655635613264

`A024490(n+2)-A005013(A004442(n))`
-/

namespace A286390.P14884355655635613264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024490 (n + 2) - A005013 (A004442 n).toNat

end

end A286390.P14884355655635613264

namespace A286390

/-- `A024490(n+2)-A005013(A004442(n))` -/
def P14884355655635613264.Spec : Prop :=
  ∀ n, P14884355655635613264.a n = A286390 n

end A286390

/-! ## A286390.P18333391736988131866

`(A024490(n+2)-A075193(n))%A020695(n)`
-/

namespace A286390.P18333391736988131866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024490 (n + 2) - A075193 n) (A020695 n)

end

end A286390.P18333391736988131866

namespace A286390

/-- `(A024490(n+2)-A075193(n))%A020695(n)` -/
def P18333391736988131866.Spec : Prop :=
  ∀ n, P18333391736988131866.a n = A286390 n

end A286390

/-!
# A286392: Number of inequivalent n X n matrices over an alphabet of size 6 under action of dihedral group of the square D_4.

The programs for A286392, there is no canonical definition to state claims against.
-/

/-! ## A286392.P16641605258419105499

`A343097(eq[6, A025581(n)])`
-/

namespace A286392.P16641605258419105499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343097 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A286392.P16641605258419105499

/-! ## A286392.P10005303876109633642

`A343097(eq[8, A004736(n+1)+1])`
-/

namespace A286392.P10005303876109633642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343097 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A286392.P10005303876109633642

/-!
# A286393: Number of inequivalent n X n matrices over GF(7) under action of dihedral group of the square D_4.

The programs for A286393, there is no canonical definition to state claims against.
-/

/-! ## A286393.P1742776228221042659

`A343097(eq[7, A025581(n)])`
-/

namespace A286393.P1742776228221042659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343097 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A286393.P1742776228221042659

/-!
# A286394: Number of inequivalent n X n matrices over GF(8) under action of dihedral group of the square D_4.

The programs for A286394, there is no canonical definition to state claims against.
-/

/-! ## A286394.P4874292577553197422

`A343097(eq[8, A025581(n)])`
-/

namespace A286394.P4874292577553197422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343097 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A286394.P4874292577553197422

/-! ## A286394.P5627351739837338022

`A343097(A000096(n+8)-8)`
-/

namespace A286394.P5627351739837338022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343097 (A000096 (n + 8) - 8).toNat

end

end A286394.P5627351739837338022

/-!
# A286396: Number of inequivalent n X n matrices over GF(9) under action of dihedral group of the square D_4.

The programs for A286396, there is no canonical definition to state claims against.
-/

/-! ## A286396.P680325460124480570

`A343097(A000096(n+8)+n+1)`
-/

namespace A286396.P680325460124480570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343097 (A000096 (n + 8) + (n + 1 : ℤ)).toNat

end

end A286396.P680325460124480570

/-!
# A286397: Number of inequivalent n X n matrices over an alphabet of size 10 under action of dihedral group of the square D_4.

The programs for A286397, there is no canonical definition to state claims against.
-/

/-! ## A286397.P13706524070003236297

`A343097(eq[10, A025581(n)])`
-/

namespace A286397.P13706524070003236297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343097 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A286397.P13706524070003236297

/-! ## A286397.P7565526999883454223

`A343097(eq[11, A193739(n)])`
-/

namespace A286397.P7565526999883454223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343097 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A286397.P7565526999883454223

/-! ## A286397.P4763422576452201861

`A343097(eq[11, A004736(n+1)])`
-/

namespace A286397.P4763422576452201861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343097 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A286397.P4763422576452201861

/-!
# A286399: Expansion of eta(q^2)^12 * eta(q^4)^8 / eta(q)^8 in powers of q.

The programs for A286399, there is no canonical definition to state claims against.
-/

/-! ## A286399.P17508042554953949223

`A002264(A247186(∑[∑[n]]))`
-/

namespace A286399.P17508042554953949223
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A247186 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A286399.P17508042554953949223

/-! ## A286399.P13533312012669280609

`and(A004526(A004643(n)), A072179(n+1))`
-/

namespace A286399.P13533312012669280609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004526 (A004643 n).toNat) (A072179 (n + 1))

end

end A286399.P13533312012669280609

