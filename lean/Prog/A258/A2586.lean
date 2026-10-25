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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C002
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
# A258600: a(n) is the index m such that A036966(m) = prime(n)^3.

The programs for A258600, there is no canonical definition to state claims against.
-/

/-! ## A258600.P10191244770101748923

`A371186(A000040(n+1))`
-/

namespace A258600.P10191244770101748923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371186 (A000040 (n + 1)).toNat

end

end A258600.P10191244770101748923

/-! ## A258600.P10248789946429582357

`A371186(A008578(n+2))`
-/

namespace A258600.P10248789946429582357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371186 (A008578 (n + 2)).toNat

end

end A258600.P10248789946429582357

/-! ## A258600.P15721759354725191630

`A371186(A182986(n+2))`
-/

namespace A258600.P15721759354725191630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371186 (A182986 (n + 2)).toNat

end

end A258600.P15721759354725191630

/-! ## A258600.P9011973671081231277

`A371186(eq[1, A032741(n)])`
-/

namespace A258600.P9011973671081231277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371186 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258600.P9011973671081231277

/-! ## A258600.P15556702985237702390

`A371186(abs(Δ[A008348(n)]))`
-/

namespace A258600.P15556702985237702390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008348 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371186 |f1 (n + 1) - f1 n|.toNat

end

end A258600.P15556702985237702390

/-! ## A258600.P3562102667107168715

`A371186(A006093(n+1)+1)`
-/

namespace A258600.P3562102667107168715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371186 (A006093 (n + 1) + 1).toNat

end

end A258600.P3562102667107168715

/-! ## A258600.P267189023716319957

`eq[3, A363013(n+1)]+1`
-/

namespace A258600.P267189023716319957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363013 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A258600.P267189023716319957

/-!
# A258604: Number of (n+2)X(n+2) 0..2 arrays with no 3x3 subblock diagonal sum less than the antidiagonal sum or central row sum less than the central column sum.

The programs for A258604, there is no canonical definition to state claims against.
-/

/-! ## A258604.P8802732043132180888

`A258612((n+1)²+n²)`
-/

namespace A258604.P8802732043132180888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258612 ((n + 1) ^ 2 + n ^ 2)

end

end A258604.P8802732043132180888

/-! ## A258604.P15300298519786771636

`record[gcd(A003987(n), A258612(n+1))]`
-/

namespace A258604.P15300298519786771636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A258612 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258604.P15300298519786771636

/-! ## A258604.P6770096815987317268

`A258612(A001844(n))+A185284(n)`
-/

namespace A258604.P6770096815987317268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258612 (A001844 n).toNat + A185284 n

end

end A258604.P6770096815987317268

/-! ## A258604.P16459311847916827121

`A258612(A001844(n))%A038821(n+1)`
-/

namespace A258604.P16459311847916827121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A258612 (A001844 n).toNat) (A038821 (n + 1))

end

end A258604.P16459311847916827121

/-! ## A258604.P6581370949443716303

`A000041(floor(1/(n+1)))*A258612(A001844(n))`
-/

namespace A258604.P6581370949443716303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 ⌊1 / (n + 1 : ℚ)⌋.toNat * A258612 (A001844 n).toNat

end

end A258604.P6581370949443716303

/-!
# A258605: Number of (n+2)X(1+2) 0..2 arrays with no 3x3 subblock diagonal sum less than the antidiagonal sum or central row sum less than the central column sum.

The programs for A258605, there is no canonical definition to state claims against.
-/

/-! ## A258605.P18006408662670783255

`A258612(∑[n]+1)`
-/

namespace A258605.P18006408662670783255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258612 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A258605.P18006408662670783255

/-! ## A258605.P2698217185409390563

`record[A258612(n+1)]`
-/

namespace A258605.P2698217185409390563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258605.P2698217185409390563

/-! ## A258605.P218327730293041023

`lcm(or(n, -1), A258612(A000124(n)))`
-/

namespace A258605.P218327730293041023
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.lor (n : ℤ) (-1)) (A258612 (A000124 n).toNat)

end

end A258605.P218327730293041023

/-! ## A258605.P17416458207273129121

`A258612(A000124(n))+A000038(n+1)`
-/

namespace A258605.P17416458207273129121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258612 (A000124 n).toNat + A000038 (n + 1)

end

end A258605.P17416458207273129121

/-! ## A258605.P4111951566980318583

`A000034(2*n)*A258612(A000124(n))`
-/

namespace A258605.P4111951566980318583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A258612 (A000124 n).toNat

end

end A258605.P4111951566980318583

/-!
# A258606: Number of (n+2)X(2+2) 0..2 arrays with no 3x3 subblock diagonal sum less than the antidiagonal sum or central row sum less than the central column sum.

The programs for A258606, there is no canonical definition to state claims against.
-/

/-! ## A258606.P14196506645337508667

`A258612(∑[n+1]+2)`
-/

namespace A258606.P14196506645337508667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258612 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A258606.P14196506645337508667

/-! ## A258606.P1524678971010326316

`record[root(A258612(n+3), A004736(n+1))]`
-/

namespace A258606.P1524678971010326316
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A258612 (n + 3) : ℝ) ^ (1 / (A004736 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258606.P1524678971010326316

/-! ## A258606.P1730442070480609323

`record[root(A258612(n+3), A051128(n+1))]`
-/

namespace A258606.P1730442070480609323
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A258612 (n + 3) : ℝ) ^ (1 / (A051128 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258606.P1730442070480609323

/-! ## A258606.P15623813746442221643

`record[A258612(abs(A201163(n)))]`
-/

namespace A258606.P15623813746442221643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258612 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258606.P15623813746442221643

/-! ## A258606.P12906380443158644151

`A258612(A000096(n+1))%A258607(2*n+1)`
-/

namespace A258606.P12906380443158644151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A258612 (A000096 (n + 1)).toNat) (A258607 (2 * n + 1))

end

end A258606.P12906380443158644151

/-!
# A258607: Number of (n+2) X (3+2) 0..2 arrays with no 3 X 3 subblock diagonal sum less than the antidiagonal sum or central row sum less than the central column sum.

The programs for A258607, there is no canonical definition to state claims against.
-/

/-! ## A258607.P13920050980992363175

`A258612(A167614(n+1))`
-/

namespace A258607.P13920050980992363175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258612 (A167614 (n + 1)).toNat

end

end A258607.P13920050980992363175

/-! ## A258607.P15752658713779592798

`A258612(A055998(n)+6)`
-/

namespace A258607.P15752658713779592798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258612 (A055998 n + 6).toNat

end

end A258607.P15752658713779592798

/-! ## A258607.P15929828637667690623

`A258612(A046691(n)+7)`
-/

namespace A258607.P15929828637667690623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258612 (A046691 n + 7).toNat

end

end A258607.P15929828637667690623

/-! ## A258607.P14045249240710589816

`A258612(A167499(n)+n)`
-/

namespace A258607.P14045249240710589816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258612 (A167499 n + (n : ℤ)).toNat

end

end A258607.P14045249240710589816

/-! ## A258607.P9685132194584962485

`A258612(eq[2, A131818(n+1)-2])`
-/

namespace A258607.P9685132194584962485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258612 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258607.P9685132194584962485

/-!
# A258608: Number of (n+2)X(4+2) 0..2 arrays with no 3x3 subblock diagonal sum less than the antidiagonal sum or central row sum less than the central column sum.

The programs for A258608, there is no canonical definition to state claims against.
-/

/-! ## A258608.P7214182517528131319

`A258612(A052905(n)+9)`
-/

namespace A258608.P7214182517528131319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258612 (A052905 n + 9).toNat

end

end A258608.P7214182517528131319

/-! ## A258608.P136993506143543438

`A258612(A055999(n)+10)`
-/

namespace A258608.P136993506143543438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258612 (A055999 n + 10).toNat

end

end A258608.P136993506143543438

/-! ## A258608.P17966470534237234688

`A258612(A167614(n+2)+1)`
-/

namespace A258608.P17966470534237234688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258612 (A167614 (n + 2) + 1).toNat

end

end A258608.P17966470534237234688

/-! ## A258608.P15078971728856643825

`A258612(A080036(A167614(n+1)))`
-/

namespace A258608.P15078971728856643825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258612 (A080036 (A167614 (n + 1)).toNat).toNat

end

end A258608.P15078971728856643825

/-! ## A258608.P216704755253744441

`A258612(A374004(n+1))`
-/

namespace A258608.P216704755253744441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258612 (A374004 (n + 1)).toNat

end

end A258608.P216704755253744441

/-!
# A258609: Number of (n+2)X(5+2) 0..2 arrays with no 3x3 subblock diagonal sum less than the antidiagonal sum or central row sum less than the central column sum.

The programs for A258609, there is no canonical definition to state claims against.
-/

/-! ## A258609.P4791127849992230582

`A258612(A056000(n)+15)`
-/

namespace A258609.P4791127849992230582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258612 (A056000 n + 15).toNat

end

end A258609.P4791127849992230582

/-! ## A258609.P884436241410712275

`A258612(A374005(n+1))`
-/

namespace A258609.P884436241410712275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258612 (A374005 (n + 1)).toNat

end

end A258609.P884436241410712275

/-! ## A258609.P9331913510015558590

`A258612(A056115(n)+11)`
-/

namespace A258609.P9331913510015558590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258612 (A056115 n + 11).toNat

end

end A258609.P9331913510015558590

/-! ## A258609.P9910755664935637337

`A258612(eq[2, A092921(n)])`
-/

namespace A258609.P9910755664935637337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258612 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258609.P9910755664935637337

/-! ## A258609.P14542393756303214522

`A258612(eq[3, A152157(n)])`
-/

namespace A258609.P14542393756303214522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258612 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258609.P14542393756303214522

/-!
# A258610: Number of (n+2)X(6+2) 0..2 arrays with no 3x3 subblock diagonal sum less than the antidiagonal sum or central row sum less than the central column sum.

The programs for A258610, there is no canonical definition to state claims against.
-/

/-! ## A258610.P2359039297311234401

`A258612(eq[7, A131818(n+1)])`
-/

namespace A258610.P2359039297311234401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258612 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258610.P2359039297311234401

/-! ## A258610.P15555325882829749707

`A258612(A056000(n+13)-A017545(n+10))`
-/

namespace A258610.P15555325882829749707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258612 (A056000 (n + 13) - A017545 (n + 10)).toNat

end

end A258610.P15555325882829749707

/-! ## A258610.P16997369818219962555

`A258612(A374007(n+1))`
-/

namespace A258610.P16997369818219962555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258612 (A374007 (n + 1)).toNat

end

end A258610.P16997369818219962555

/-! ## A258610.P17222147016899819616

`A258612(A052905(n+3))`
-/

namespace A258610.P17222147016899819616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258612 (A052905 (n + 3)).toNat

end

end A258610.P17222147016899819616

/-! ## A258610.P16620368556981619893

`A258612(eq[3, A219347(n)])`
-/

namespace A258610.P16620368556981619893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258612 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258610.P16620368556981619893

/-!
# A258611: Number of (n+2)X(7+2) 0..2 arrays with no 3x3 subblock diagonal sum less than the antidiagonal sum or central row sum less than the central column sum.

The programs for A258611, there is no canonical definition to state claims against.
-/

/-! ## A258611.P1301143300832463192

`A258612(eq[8, A004736(n+1)]-2*n)`
-/

namespace A258611.P1301143300832463192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258612 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 2 * n)

end

end A258611.P1301143300832463192

/-! ## A258611.P6512124737048835390

`A258612(A056000(n)+A005843(n+14))`
-/

namespace A258611.P6512124737048835390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258612 (A056000 n + A005843 (n + 14)).toNat

end

end A258611.P6512124737048835390

/-! ## A258611.P7698542154800246613

`A258612(A374008(n+1))`
-/

namespace A258611.P7698542154800246613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258612 (A374008 (n + 1)).toNat

end

end A258611.P7698542154800246613

/-! ## A258611.P5064108354162984080

`A258612(eq[4, A219347(n)])`
-/

namespace A258611.P5064108354162984080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258612 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258611.P5064108354162984080

/-! ## A258611.P1914202021467415910

`A258612(eq[6, A193592(n)])`
-/

namespace A258611.P1914202021467415910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258612 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258611.P1914202021467415910

/-!
# A258613: Numbers m that are coprime to the largest square <= m, cf. A048760.

The programs for A258613, the canonical program `A258613.P17510649986639930531` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258613 has offset 1).

The definition of A258613 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A258613.P17510649986639930531

`record[(n+1)/gcd(n+1, floor(sqrt(n+1)))]`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A258613

/-- `record[(n+1)/gcd(n+1, floor(sqrt(n+1)))]` -/
def P17510649986639930531.Spec : Prop :=
  ∀ n, P17510649986639930531.a n = (A258613 (n + 1) : ℚ)

end A258613

/-! ## A258613.P4442740939036585211

`record[A073890(n+1)]`
-/

namespace A258613.P4442740939036585211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073890 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258613.P4442740939036585211

namespace A258613

/-- `record[A073890(n+1)]` -/
def P4442740939036585211.Spec : Prop :=
  ∀ n, P4442740939036585211.a n = A258613 (n + 1)

end A258613

/-! ## A258613.P18299322176510626049

`eq[1, gcd(n, A000196(n))]`
-/

namespace A258613.P18299322176510626049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A000196 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A258613.P18299322176510626049

namespace A258613

/-- `eq[1, gcd(n, A000196(n))]` -/
def P18299322176510626049.Spec : Prop :=
  ∀ n, (P18299322176510626049.a n : ℤ) = A258613 (n + 1)

end A258613

/-! ## A258613.P6022099784284119842

`eq[1, A067815(n+1)]+1`
-/

namespace A258613.P6022099784284119842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067815 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A258613.P6022099784284119842

namespace A258613

/-- `eq[1, A067815(n+1)]+1` -/
def P6022099784284119842.Spec : Prop :=
  ∀ n, (P6022099784284119842.a n : ℤ) = A258613 (n + 1)

end A258613

/-! ## A258613.P6744447385503863368

`eq[1, A074695(n+1)]+1`
-/

namespace A258613.P6744447385503863368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074695 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A258613.P6744447385503863368

namespace A258613

/-- `eq[1, A074695(n+1)]+1` -/
def P6744447385503863368.Spec : Prop :=
  ∀ n, (P6744447385503863368.a n : ℤ) = A258613 (n + 1)

end A258613

/-!
# A258614: Numbers m having with the largest square <= m a common divisor > 1.

The programs for A258614, the canonical program `A258614.P17162759967621084170` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258614 has offset 1).

The definition of A258614 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A258614.P17162759967621084170

`lt[1, gcd(n, floor(sqrt(n)))]`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A258614

/-- `lt[1, gcd(n, floor(sqrt(n)))]` -/
def P17162759967621084170.Spec : Prop :=
  ∀ n, (P17162759967621084170.a n : ℤ) = A258614 (n + 1)

theorem P17162759967621084170.correct : P17162759967621084170.Spec := by
  intro n
  simp only [A258614, Nat.add_sub_cancel]

end A258614

/-! ## A258614.P17593170136214003144

`lt[1, A067815(n+1)]+1`
-/

namespace A258614.P17593170136214003144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067815 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A258614.P17593170136214003144

namespace A258614

/-- `lt[1, A067815(n+1)]+1` -/
def P17593170136214003144.Spec : Prop :=
  ∀ n, (P17593170136214003144.a n : ℤ) = A258614 (n + 1)

end A258614

/-! ## A258614.P5337659085545736195

`eq[char[A258613(n+1)], A000007(n)]`
-/

namespace A258614.P5337659085545736195
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258613 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A258614.P5337659085545736195

namespace A258614

/-- `eq[char[A258613(n+1)], A000007(n)]` -/
def P5337659085545736195.Spec : Prop :=
  ∀ n, (P5337659085545736195.a n : ℤ) = A258614 (n + 1)

end A258614

/-! ## A258614.P17717694320494460533

`eq[char[A258613(n+1)], A000038(n)]`
-/

namespace A258614.P17717694320494460533
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258613 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A258614.P17717694320494460533

namespace A258614

/-- `eq[char[A258613(n+1)], A000038(n)]` -/
def P17717694320494460533.Spec : Prop :=
  ∀ n, (P17717694320494460533.a n : ℤ) = A258614 (n + 1)

end A258614

/-! ## A258614.P6365544735917246746

`eq[char[A258613(n+1)], A130706(n)]`
-/

namespace A258614.P6365544735917246746
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258613 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A258614.P6365544735917246746

namespace A258614

/-- `eq[char[A258613(n+1)], A130706(n)]` -/
def P6365544735917246746.Spec : Prop :=
  ∀ n, (P6365544735917246746.a n : ℤ) = A258614 (n + 1)

end A258614

/-!
# A258615: The order of the group Aut(Z/nZ)*, or the number of automorphisms of (Z/nZ)*.

The programs for A258615, there is no canonical definition to state claims against.
-/

/-! ## A258615.P665037296227823900

`lcm(A036453(A008300(n)), A302257(n+1))`
-/

namespace A258615.P665037296227823900
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A036453 (A008300 n).toNat) (A302257 (n + 1))

end

end A258615.P665037296227823900

/-! ## A258615.P3135019247828559298

`A005361(A060594(n+1)^A111725(n+1))`
-/

namespace A258615.P3135019247828559298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (SequenceMachineLib.roundAway ((A060594 (n + 1) : ℚ) ^ (A111725 (n + 1) : ℤ))).toNat

end

end A258615.P3135019247828559298

/-! ## A258615.P14022924878053533382

`A033273(A060594(n+1)^A111725(n+1))`
-/

namespace A258615.P14022924878053533382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (SequenceMachineLib.roundAway ((A060594 (n + 1) : ℚ) ^ (A111725 (n + 1) : ℤ))).toNat

end

end A258615.P14022924878053533382

/-! ## A258615.P13081472758950700702

`A182505(gcd(A108509(n+1), A302257(n+1)))`
-/

namespace A258615.P13081472758950700702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182505 (Int.gcd (A108509 (n + 1)) (A302257 (n + 1)))

end

end A258615.P13081472758950700702

/-! ## A258615.P2906445069846839304

`A324922(A302257(n+1))^A001221(A000079(n))`
-/

namespace A258615.P2906445069846839304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324922 (A302257 (n + 1)).toNat : ℚ) ^ (A001221 (A000079 n).toNat : ℤ)

end

end A258615.P2906445069846839304

/-!
# A258616: Numbers n such that n!!-16 is prime.

The programs for A258616, there is no canonical definition to state claims against.
-/

/-! ## A258616.P12654222863807094484

`A102487(A201646(n+3)+1)`
-/

namespace A258616.P12654222863807094484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102487 (A201646 (n + 3) + 1).toNat

end

end A258616.P12654222863807094484

/-! ## A258616.P16312940056939656515

`2*(A089472(A015925(n+1))+2)-1`
-/

namespace A258616.P16312940056939656515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A089472 (A015925 (n + 1)).toNat + 2) - 1

end

end A258616.P16312940056939656515

/-!
# A258617: a(n) = (4*n+8)*n^2.

The programs for A258617, the canonical program `A258617.P17463677008758038945` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258617 has offset 0).

The definition of A258617 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*n+8)*n²` (program `A258617.P17463677008758038945`, by `A258617.P17463677008758038945.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A258617.P17463677008758038945

`(4*n+8)*n²`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A258617

/-- `(4*n+8)*n²` -/
def P17463677008758038945.Spec : Prop :=
  ∀ n, (P17463677008758038945.a n : ℤ) = A258617 n

theorem P17463677008758038945.correct : P17463677008758038945.Spec := by
  intro n
  simp only [A258617]

end A258617

/-! ## A258617.P3839833463328788064

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=12, a(2)=64, a(3)=180`
-/

namespace A258617.P3839833463328788064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 12, 64, 180] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A258617.P3839833463328788064

namespace A258617

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P3839833463328788064.Spec : Prop :=
  ∀ n, P3839833463328788064.a n = A258617 n

theorem P3839833463328788064.correct : P3839833463328788064.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A258617, Nat.add_sub_cancel, A258617.P3839833463328788064.a, A258617.P17463677008758038945.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A258617, Nat.add_sub_cancel, A258617.P3839833463328788064.a, A258617.P17463677008758038945.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [h1, h2, h3, h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A258617

/-! ## A258617.P16116322753471071743

`record[2*(n-2)*sqrt(n)]²`
-/

namespace A258617.P16116322753471071743
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * (((n : ℤ) - 2 : ℝ) * Real.sqrt (n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2

end

end A258617.P16116322753471071743

namespace A258617

/-- `record[2*(n-2)*sqrt(n)]²` -/
def P16116322753471071743.Spec : Prop :=
  ∀ n, P16116322753471071743.a n = (A258617 n : ℝ)

end A258617

/-! ## A258617.P15028593174010413027

`lcm(2, (n+2)*(2*n)^2)`
-/

namespace A258617.P15028593174010413027
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 ((n + 2) * (2 * n) ^ 2)

end

end A258617.P15028593174010413027

namespace A258617

/-- `lcm(2, (n+2)*(2*n)^2)` -/
def P15028593174010413027.Spec : Prop :=
  ∀ n, (P15028593174010413027.a n : ℤ) = A258617 n

end A258617

/-! ## A258617.P13615243655387323340

`abs((n+2)*Δ[C(2*n, 3)])`
-/

namespace A258617.P13615243655387323340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 2 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))|

end

end A258617.P13615243655387323340

namespace A258617

/-- `abs((n+2)*Δ[C(2*n, 3)])` -/
def P13615243655387323340.Spec : Prop :=
  ∀ n, P13615243655387323340.a n = A258617 n

end A258617

/-! ## A258617.P7403367669940596055

`-((n+2)*Δ[-C(2*n, 3)])`
-/

namespace A258617.P7403367669940596055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.choose (2 * n) 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n + 2 : ℤ) * (f1 (n + 1) - f1 n))

end

end A258617.P7403367669940596055

namespace A258617

/-- `-((n+2)*Δ[-C(2*n, 3)])` -/
def P7403367669940596055.Spec : Prop :=
  ∀ n, P7403367669940596055.a n = A258617 n

theorem P7403367669940596055.correct : P7403367669940596055.Spec := by
  intro n
  simp only [A258617, Nat.add_sub_cancel, A258617.P7403367669940596055.f1, A258617.P7403367669940596055.a, A258617.P17463677008758038945.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A258617

/-! ## A258617.P14425043142317784005

`abs(2*n*record[(n-2)*2*n])`
-/

namespace A258617.P14425043142317784005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) * (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A258617.P14425043142317784005

namespace A258617

/-- `abs(2*n*record[(n-2)*2*n])` -/
def P14425043142317784005.Spec : Prop :=
  ∀ n, P14425043142317784005.a n = A258617 n

end A258617

/-! ## A258617.P836479177964235865

`floor(2*n/acot((n+2)*2*n))`
-/

namespace A258617.P836479177964235865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n : ℝ) / SequenceMachineLib.acot ((n + 2) * (2 * n) : ℝ)⌋

end

end A258617.P836479177964235865

namespace A258617

/-- `floor(2*n/acot((n+2)*2*n))` -/
def P836479177964235865.Spec : Prop :=
  ∀ n, P836479177964235865.a n = A258617 n

end A258617

/-! ## A258617.P1600355295808355721

`round(2*n/acot((n+2)*2*n))`
-/

namespace A258617.P1600355295808355721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n : ℝ) / SequenceMachineLib.acot ((n + 2) * (2 * n) : ℝ))

end

end A258617.P1600355295808355721

namespace A258617

/-- `round(2*n/acot((n+2)*2*n))` -/
def P1600355295808355721.Spec : Prop :=
  ∀ n, P1600355295808355721.a n = A258617 n

end A258617

/-! ## A258617.P13511989206621647013

`floor(4*n*∑[a(n-1)+2])` with `a(0)=0, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A258617.P13511989206621647013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A258617.P13511989206621647013

namespace A258617

/-- `floor(4*n*∑[a(n-1)+2])` -/
def P13511989206621647013.Spec : Prop :=
  ∀ n, (P13511989206621647013.a n : ℤ) = A258617 n

end A258617

/-! ## A258617.P11420322891259769673

`and(2*n*(n+2)*2*n, -2)`
-/

namespace A258617.P11420322891259769673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n * ((n + 2) * (2 * n)) : ℤ) (-2)

end

end A258617.P11420322891259769673

namespace A258617

/-- `and(2*n*(n+2)*2*n, -2)` -/
def P11420322891259769673.Spec : Prop :=
  ∀ n, P11420322891259769673.a n = A258617 n

end A258617

/-! ## A258617.P4223516631876683805

`(2*n*sqrt(n+2))^gcd(2, 2*n)`
-/

namespace A258617.P4223516631876683805
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℝ) * Real.sqrt (n + 2 : ℝ)) ^ Nat.gcd 2 (2 * n)

end

end A258617.P4223516631876683805

namespace A258617

/-- `(2*n*sqrt(n+2))^gcd(2, 2*n)` -/
def P4223516631876683805.Spec : Prop :=
  ∀ n, P4223516631876683805.a n = (A258617 n : ℝ)

end A258617

/-! ## A258617.P8171977232851238149

`or(3, 4*(n*n*(n+2)-1))+1`
-/

namespace A258617.P8171977232851238149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (4 * ((n * (n * (n + 2)) : ℤ) - 1)) + 1

end

end A258617.P8171977232851238149

namespace A258617

/-- `or(3, 4*(n*n*(n+2)-1))+1` -/
def P8171977232851238149.Spec : Prop :=
  ∀ n, P8171977232851238149.a n = A258617 n

end A258617

/-! ## A258617.P4940877766455432283

`C(2, n+3)+2*n*(n+2)*2*n`
-/

namespace A258617.P4940877766455432283
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n + 3) + 2 * n * ((n + 2) * (2 * n))

end

end A258617.P4940877766455432283

namespace A258617

/-- `C(2, n+3)+2*n*(n+2)*2*n` -/
def P4940877766455432283.Spec : Prop :=
  ∀ n, (P4940877766455432283.a n : ℤ) = A258617 n

end A258617

/-! ## A258617.P9959488250665529180

`and(1, 2*n)+2*n*(n+2)*2*n`
-/

namespace A258617.P9959488250665529180
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (2 * n) + 2 * n * ((n + 2) * (2 * n))

end

end A258617.P9959488250665529180

namespace A258617

/-- `and(1, 2*n)+2*n*(n+2)*2*n` -/
def P9959488250665529180.Spec : Prop :=
  ∀ n, (P9959488250665529180.a n : ℤ) = A258617 n

theorem P9959488250665529180.correct : P9959488250665529180.Spec := by
  intro n
  simp only [A258617, Nat.add_sub_cancel, A258617.P9959488250665529180.a, A258617.P17463677008758038945.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A258617

/-! ## A258617.P13368895880852734299

`2*n*(n+2)*2*n/gcd(n, n+1)`
-/

namespace A258617.P13368895880852734299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n * ((n + 2) * (2 * n)) : ℚ) / (Nat.gcd n (n + 1) : ℚ)

end

end A258617.P13368895880852734299

namespace A258617

/-- `2*n*(n+2)*2*n/gcd(n, n+1)` -/
def P13368895880852734299.Spec : Prop :=
  ∀ n, P13368895880852734299.a n = (A258617 n : ℚ)

theorem P13368895880852734299.correct : P13368895880852734299.Spec := by
  intro n
  simp only [A258617, Nat.add_sub_cancel, A258617.P13368895880852734299.a, A258617.P17463677008758038945.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A258617

/-! ## A258617.P17976781533955766668

`A258618(n)-n²`
-/

namespace A258617.P17976781533955766668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258618 n - (n ^ 2 : ℤ)

end

end A258617.P17976781533955766668

namespace A258617

/-- `A258618(n)-n²` -/
def P17976781533955766668.Spec : Prop :=
  ∀ n, P17976781533955766668.a n = A258617 n

theorem P17976781533955766668.correct : P17976781533955766668.Spec := by
  intro n
  simp only [A258617, Nat.add_sub_cancel, A258617.P17976781533955766668.a, A258617.P17463677008758038945.a, A258618, A258618.P12239949455466632365.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A258617

/-! ## A258617.P3067460076889626837

`n*A114444(n)/4`
-/

namespace A258617.P3067460076889626837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A114444 n : ℚ) / 4

end

end A258617.P3067460076889626837

namespace A258617

/-- `n*A114444(n)/4` -/
def P3067460076889626837.Spec : Prop :=
  ∀ n, P3067460076889626837.a n = (A258617 n : ℚ)

theorem P3067460076889626837.correct : P3067460076889626837.Spec := by
  intro n
  simp only [A258617, Nat.add_sub_cancel, A258617.P3067460076889626837.a, A258617.P17463677008758038945.a, A114444, A114444.P13670265799180391886.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A258617

/-! ## A258617.P1285909622094184075

`n*A082109(n)-n`
-/

namespace A258617.P1285909622094184075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A082109 n - (n : ℤ)

end

end A258617.P1285909622094184075

namespace A258617

/-- `n*A082109(n)-n` -/
def P1285909622094184075.Spec : Prop :=
  ∀ n, P1285909622094184075.a n = A258617 n

theorem P1285909622094184075.correct : P1285909622094184075.Spec := by
  intro n
  simp only [A258617, Nat.add_sub_cancel, A258617.P1285909622094184075.a, A258617.P17463677008758038945.a, A082109, A082109.P15494663758169868970.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A258617

/-! ## A258617.P10621423413631092668

`8*n*A005563(n)/2`
-/

namespace A258617.P10621423413631092668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 * ((n : ℤ) * A005563 n) : ℚ) / 2

end

end A258617.P10621423413631092668

namespace A258617

/-- `8*n*A005563(n)/2` -/
def P10621423413631092668.Spec : Prop :=
  ∀ n, P10621423413631092668.a n = (A258617 n : ℚ)

theorem P10621423413631092668.correct : P10621423413631092668.Spec := by
  intro n
  simp only [A258617, Nat.add_sub_cancel, A258617.P10621423413631092668.a, A258617.P17463677008758038945.a, A005563, A005563.P13300161655551567421.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A258617

/-!
# A258618: a(n) = (4*n+9)*n^2.

The programs for A258618, the canonical program `A258618.P12239949455466632365` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258618 has offset 0).

The definition of A258618 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*n+9)*n²` (program `A258618.P12239949455466632365`, by `A258618.P12239949455466632365.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A258618.P12239949455466632365

`(4*n+9)*n²`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A258618

/-- `(4*n+9)*n²` -/
def P12239949455466632365.Spec : Prop :=
  ∀ n, (P12239949455466632365.a n : ℤ) = A258618 n

theorem P12239949455466632365.correct : P12239949455466632365.Spec := by
  intro n
  simp only [A258618]

end A258618

/-! ## A258618.P15101449511715335790

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=13, a(2)=68, a(3)=189`
-/

namespace A258618.P15101449511715335790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 13, 68, 189] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A258618.P15101449511715335790

namespace A258618

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P15101449511715335790.Spec : Prop :=
  ∀ n, P15101449511715335790.a n = A258618 n

theorem P15101449511715335790.correct : P15101449511715335790.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A258618, Nat.add_sub_cancel, A258618.P15101449511715335790.a, A258618.P12239949455466632365.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A258618, Nat.add_sub_cancel, A258618.P15101449511715335790.a, A258618.P12239949455466632365.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [h1, h2, h3, h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A258618

/-! ## A258618.P9906600664532057911

`(n+2)*lcm(n, 2*n+2*n+1)-2*n`
-/

namespace A258618.P9906600664532057911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) * Nat.lcm n (2 * n + (2 * n + 1)) : ℤ) - (2 * n : ℤ)

end

end A258618.P9906600664532057911

namespace A258618

/-- `(n+2)*lcm(n, 2*n+2*n+1)-2*n` -/
def P9906600664532057911.Spec : Prop :=
  ∀ n, P9906600664532057911.a n = A258618 n

end A258618

/-! ## A258618.P17142017571112997653

`A258617(n)+n²`
-/

namespace A258618.P17142017571112997653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258617 n + (n ^ 2 : ℤ)

end

end A258618.P17142017571112997653

namespace A258618

/-- `A258617(n)+n²` -/
def P17142017571112997653.Spec : Prop :=
  ∀ n, P17142017571112997653.a n = A258618 n

theorem P17142017571112997653.correct : P17142017571112997653.Spec := by
  intro n
  simp only [A258618, Nat.add_sub_cancel, A258618.P17142017571112997653.a, A258618.P12239949455466632365.a, A258617, A258617.P17463677008758038945.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A258618

/-! ## A258618.P14351132575525520369

`A033430(n)+(3*n)²`
-/

namespace A258618.P14351132575525520369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033430 n + ((3 * n) ^ 2 : ℤ)

end

end A258618.P14351132575525520369

namespace A258618

/-- `A033430(n)+(3*n)²` -/
def P14351132575525520369.Spec : Prop :=
  ∀ n, P14351132575525520369.a n = A258618 n

theorem P14351132575525520369.correct : P14351132575525520369.Spec := by
  intro n
  simp only [A258618, Nat.add_sub_cancel, A258618.P14351132575525520369.a, A258618.P12239949455466632365.a, A033430, A033430.P5214425656551841819.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A258618

/-! ## A258618.P1526285276028200176

`2*A163683(n)-n²`
-/

namespace A258618.P1526285276028200176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A163683 n - (n ^ 2 : ℤ)

end

end A258618.P1526285276028200176

namespace A258618

/-- `2*A163683(n)-n²` -/
def P1526285276028200176.Spec : Prop :=
  ∀ n, P1526285276028200176.a n = A258618 n

theorem P1526285276028200176.correct : P1526285276028200176.Spec := by
  intro n
  simp only [A258618, Nat.add_sub_cancel, A258618.P1526285276028200176.a, A258618.P12239949455466632365.a, A163683, A163683.P9077121025577207897.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A258618

/-! ## A258618.P8135673141943535993

`(n+2)*A182868(n)-(n-2)`
-/

namespace A258618.P8135673141943535993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A182868 n - ((n : ℤ) - 2)

end

end A258618.P8135673141943535993

namespace A258618

/-- `(n+2)*A182868(n)-(n-2)` -/
def P8135673141943535993.Spec : Prop :=
  ∀ n, P8135673141943535993.a n = A258618 n

theorem P8135673141943535993.correct : P8135673141943535993.Spec := by
  intro n
  simp only [A258618, Nat.add_sub_cancel, A258618.P8135673141943535993.a, A258618.P12239949455466632365.a, A182868, A182868.P7978343847695056203.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A258618

/-! ## A258618.P12548766519178224716

`n*A007742(n+1)-5*n`
-/

namespace A258618.P12548766519178224716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A007742 (n + 1) - (5 * n : ℤ)

end

end A258618.P12548766519178224716

namespace A258618

/-- `n*A007742(n+1)-5*n` -/
def P12548766519178224716.Spec : Prop :=
  ∀ n, P12548766519178224716.a n = A258618 n

theorem P12548766519178224716.correct : P12548766519178224716.Spec := by
  intro n
  simp only [A258618, Nat.add_sub_cancel, A258618.P12548766519178224716.a, A258618.P12239949455466632365.a, A007742, A007742.P14173437786459717136.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A258618

/-! ## A258618.P4320099550368736705

`(4*n+1)*A005563(n)-2*n`
-/

namespace A258618.P4320099550368736705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 1 : ℤ) * A005563 n - (2 * n : ℤ)

end

end A258618.P4320099550368736705

namespace A258618

/-- `(4*n+1)*A005563(n)-2*n` -/
def P4320099550368736705.Spec : Prop :=
  ∀ n, P4320099550368736705.a n = A258618 n

theorem P4320099550368736705.correct : P4320099550368736705.Spec := by
  intro n
  simp only [A258618, Nat.add_sub_cancel, A258618.P4320099550368736705.a, A258618.P12239949455466632365.a, A005563, A005563.P13300161655551567421.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A258618

/-! ## A258618.P17461746020980978707

`A061804(n)+A013656(n)`
-/

namespace A258618.P17461746020980978707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061804 n + A013656 n

end

end A258618.P17461746020980978707

namespace A258618

/-- `A061804(n)+A013656(n)` -/
def P17461746020980978707.Spec : Prop :=
  ∀ n, P17461746020980978707.a n = A258618 n

theorem P17461746020980978707.correct : P17461746020980978707.Spec := by
  intro n
  simp only [A258618, Nat.add_sub_cancel, A258618.P17461746020980978707.a, A258618.P12239949455466632365.a, A013656, A013656.P11559324039876728310.a, A061804, A061804.P16305426185761710400.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A258618

/-! ## A258618.P10063486956998752399

`A144129(n)+A045945(n)`
-/

namespace A258618.P10063486956998752399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144129 n + A045945 n

end

end A258618.P10063486956998752399

namespace A258618

/-- `A144129(n)+A045945(n)` -/
def P10063486956998752399.Spec : Prop :=
  ∀ n, P10063486956998752399.a n = A258618 n

theorem P10063486956998752399.correct : P10063486956998752399.Spec := by
  intro n
  simp only [A258618, Nat.add_sub_cancel, A258618.P10063486956998752399.a, A258618.P12239949455466632365.a, A045945, A045945.P14001929662270589613.a, A144129, A144129.P2880121179738500010.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A258618

/-! ## A258618.P18167610959166827965

`A196507(n)+A064043(n)`
-/

namespace A258618.P18167610959166827965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196507 n + A064043 n

end

end A258618.P18167610959166827965

namespace A258618

/-- `A196507(n)+A064043(n)` -/
def P18167610959166827965.Spec : Prop :=
  ∀ n, P18167610959166827965.a n = A258618 n

theorem P18167610959166827965.correct : P18167610959166827965.Spec := by
  intro n
  simp only [A258618, Nat.add_sub_cancel, A258618.P18167610959166827965.a, A258618.P12239949455466632365.a, A064043, A064043.P3578565822102951633.a, A196507, A196507.P14709704508244085490.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A258618

/-! ## A258618.P15065472085667680311

`A300758(n)+A000567(n)`
-/

namespace A258618.P15065472085667680311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300758 n + A000567 n

end

end A258618.P15065472085667680311

namespace A258618

/-- `A300758(n)+A000567(n)` -/
def P15065472085667680311.Spec : Prop :=
  ∀ n, P15065472085667680311.a n = A258618 n

theorem P15065472085667680311.correct : P15065472085667680311.Spec := by
  intro n
  simp only [A258618, Nat.add_sub_cancel, A258618.P15065472085667680311.a, A258618.P12239949455466632365.a, A000567, A000567.P17850767079432249295.a, A300758, A300758.P12177003143173864216.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A258618

/-! ## A258618.P5066705363398012200

`A302302(n)+A062741(n)`
-/

namespace A258618.P5066705363398012200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302302 n + A062741 n

end

end A258618.P5066705363398012200

namespace A258618

/-- `A302302(n)+A062741(n)` -/
def P5066705363398012200.Spec : Prop :=
  ∀ n, P5066705363398012200.a n = A258618 n

end A258618

/-! ## A258618.P2493958665444248741

`A395241(n)+A033581(n)`
-/

namespace A258618.P2493958665444248741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395241 n + A033581 n

end

end A258618.P2493958665444248741

namespace A258618

/-- `A395241(n)+A033581(n)` -/
def P2493958665444248741.Spec : Prop :=
  ∀ n, P2493958665444248741.a n = A258618 n

theorem P2493958665444248741.correct : P2493958665444248741.Spec := by
  intro n
  simp only [A258618, Nat.add_sub_cancel, A258618.P2493958665444248741.a, A258618.P12239949455466632365.a, A033581, A033581.P13583599227635646969.a, A395241, A395241.P8661816280605708552.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A258618

/-! ## A258618.P5795460660239294940

`A268644(n)+A194454(n)`
-/

namespace A258618.P5795460660239294940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268644 n + A194454 n

end

end A258618.P5795460660239294940

namespace A258618

/-- `A268644(n)+A194454(n)` -/
def P5795460660239294940.Spec : Prop :=
  ∀ n, P5795460660239294940.a n = A258618 n

theorem P5795460660239294940.correct : P5795460660239294940.Spec := by
  intro n
  simp only [A258618, Nat.add_sub_cancel, A258618.P5795460660239294940.a, A258618.P12239949455466632365.a, A194454, A194454.P11085170661089486753.a, A268644, A268644.P12002499388164464672.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A258618

/-! ## A258618.P697873888003028049

`A103532(n)-A016921(n)`
-/

namespace A258618.P697873888003028049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103532 n - A016921 n

end

end A258618.P697873888003028049

namespace A258618

/-- `A103532(n)-A016921(n)` -/
def P697873888003028049.Spec : Prop :=
  ∀ n, P697873888003028049.a n = A258618 n

theorem P697873888003028049.correct : P697873888003028049.Spec := by
  intro n
  simp only [A258618, Nat.add_sub_cancel, A258618.P697873888003028049.a, A258618.P12239949455466632365.a, A016921, A016921.P18318603358862595186.a, A103532, A103532.P17143324640364294921.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A258618

/-! ## A258618.P3757921315384649899

`A244726(n)-A015243(n)`
-/

namespace A258618.P3757921315384649899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244726 n - A015243 n

end

end A258618.P3757921315384649899

namespace A258618

/-- `A244726(n)-A015243(n)` -/
def P3757921315384649899.Spec : Prop :=
  ∀ n, P3757921315384649899.a n = A258618 n

theorem P3757921315384649899.correct : P3757921315384649899.Spec := by
  intro n
  simp only [A258618, Nat.add_sub_cancel, A258618.P3757921315384649899.a, A258618.P12239949455466632365.a, A015243, A015243.P656564678258870490.a, A244726, A244726.P8868489498822434277.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A258618

/-! ## A258618.P1820326286670566379

`A131464(n+1)-A017089(n)`
-/

namespace A258618.P1820326286670566379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131464 (n + 1) - A017089 n

end

end A258618.P1820326286670566379

namespace A258618

/-- `A131464(n+1)-A017089(n)` -/
def P1820326286670566379.Spec : Prop :=
  ∀ n, P1820326286670566379.a n = A258618 n

theorem P1820326286670566379.correct : P1820326286670566379.Spec := by
  intro n
  simp only [A258618, Nat.add_sub_cancel, A258618.P1820326286670566379.a, A258618.P12239949455466632365.a, A017089, A017089.P13709942329986306669.a, A131464, A131464.P8425244943263735191.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A258618

/-! ## A258618.P838073092516070185

`A000567(n)+2*A055112(n)`
-/

namespace A258618.P838073092516070185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 n + 2 * A055112 n

end

end A258618.P838073092516070185

namespace A258618

/-- `A000567(n)+2*A055112(n)` -/
def P838073092516070185.Spec : Prop :=
  ∀ n, P838073092516070185.a n = A258618 n

theorem P838073092516070185.correct : P838073092516070185.Spec := by
  intro n
  simp only [A258618, Nat.add_sub_cancel, A258618.P838073092516070185.a, A258618.P12239949455466632365.a, A000567, A000567.P17850767079432249295.a, A055112, A055112.P15553195109781773626.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A258618

/-!
# A258620: Number of tanglegrams of size n.

The programs for A258620, there is no canonical definition to state claims against.
-/

/-! ## A258620.P17987231307332444913

`A008615(A089471(n)+A089460(n))`
-/

namespace A258620.P17987231307332444913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A089471 n + A089460 n).toNat

end

end A258620.P17987231307332444913

/-! ## A258620.P16146383296128220478

`A235042(or(A056562(n), A083062(n)))`
-/

namespace A258620.P16146383296128220478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235042 (Int.lor (A056562 n) (A083062 n)).toNat

end

end A258620.P16146383296128220478

/-!
# A258622: a(1) = 2, a(n+1) = a(n) * (1 + n + a(n))/n.

The programs for A258622, the canonical program `A258622.P7306860076771931795` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258622 has offset 1).

The definition of A258622 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A258622.P7306860076771931795

`a(n-1)*(n+1+a(n-1))/n` with `a(0)=2`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A258622

/-- `a(n-1)*(n+1+a(n-1))/n` -/
def P7306860076771931795.Spec : Prop :=
  ∀ n, P7306860076771931795.a n = (A258622 (n + 1) : ℚ)

end A258622

/-! ## A258622.P1888349453989066478

`(2-(n-1-a(n-1))/n)*a(n-1)` with `a(0)=2`
-/

namespace A258622.P1888349453989066478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  (2 - (((n : ℤ) - 1 : ℚ) - a (n - 1)) / (n : ℚ)) * a (n - 1)

end

end A258622.P1888349453989066478

namespace A258622

/-- `(2-(n-1-a(n-1))/n)*a(n-1)` -/
def P1888349453989066478.Spec : Prop :=
  ∀ n, P1888349453989066478.a n = (A258622 (n + 1) : ℚ)

end A258622

/-! ## A258622.P6243907752914612417

`a(n-1)+(a(n-1)+a(n-1)²)/n` with `a(0)=2`
-/

namespace A258622.P6243907752914612417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (a (n - 1) + a (n - 1) ^ 2) / (n : ℚ)

end

end A258622.P6243907752914612417

namespace A258622

/-- `a(n-1)+(a(n-1)+a(n-1)²)/n` -/
def P6243907752914612417.Spec : Prop :=
  ∀ n, P6243907752914612417.a n = (A258622 (n + 1) : ℚ)

end A258622

/-!
# A258623: Number of length n 1..(n+1) arrays with every leading partial sum divisible by 2, 3, 5 or 7.

The programs for A258623, there is no canonical definition to state claims against.
-/

/-! ## A258623.P17842312361995973735

`A258631(∑[4*n]+1)`
-/

namespace A258623.P17842312361995973735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258631 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A258623.P17842312361995973735

/-! ## A258623.P12442341656815724725

`record[gcd(A003987(n), A258631(n+1))]`
-/

namespace A258623.P12442341656815724725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A258631 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258623.P12442341656815724725

/-! ## A258623.P4044830250365919950

`gcd(A000038(n), A258631(A001844(n)))`
-/

namespace A258623.P4044830250365919950
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A258631 (A001844 n).toNat)

end

end A258623.P4044830250365919950

/-! ## A258623.P4783559492613404433

`lcm(A020985(n), A258631(A001844(n)))`
-/

namespace A258623.P4783559492613404433
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A258631 (A001844 n).toNat)

end

end A258623.P4783559492613404433

/-! ## A258623.P645409187260690299

`or(A000007(n), A258631(A001844(n)))`
-/

namespace A258623.P645409187260690299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A258631 (A001844 n).toNat)

end

end A258623.P645409187260690299

/-! ## A258623.P8612353472951223994

`or(A151934(n), A258631(A001844(n)))`
-/

namespace A258623.P8612353472951223994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A151934 n) (A258631 (A001844 n).toNat)

end

end A258623.P8612353472951223994

/-!
# A258624: Number of length n 1..(1+1) arrays with every leading partial sum divisible by 2, 3, 5 or 7.

The programs for A258624, there is no canonical definition to state claims against.
-/

/-! ## A258624.P10747471548389471311

`A258631(∑[n+1])`
-/

namespace A258624.P10747471548389471311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258631 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A258624.P10747471548389471311

/-! ## A258624.P12505702235014869265

`record[A258631(A000217(A126759(n)))]`
-/

namespace A258624.P12505702235014869265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258631 (A000217 (A126759 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258624.P12505702235014869265

/-! ## A258624.P5828869266002126599

`record[A258631(A000217(A154958(n)))]`
-/

namespace A258624.P5828869266002126599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258631 (A000217 (A154958 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258624.P5828869266002126599

/-! ## A258624.P5198366055595184158

`record[A258631(A000217(A003602(n+1)))]`
-/

namespace A258624.P5198366055595184158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258631 (A000217 (A003602 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258624.P5198366055595184158

/-! ## A258624.P10190825121366744976

`record[A258631(A000217(A032742(n+1)))]`
-/

namespace A258624.P10190825121366744976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258631 (A000217 (A032742 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258624.P10190825121366744976

/-! ## A258624.P17373117918928518682

`record[A258631(A000217(A094727(n+1)))]`
-/

namespace A258624.P17373117918928518682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258631 (A000217 (A094727 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258624.P17373117918928518682

/-! ## A258624.P5908986146996167959

`A258631(A161680(n+2))%A020701(n)`
-/

namespace A258624.P5908986146996167959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A258631 (A161680 (n + 2)).toNat) (A020701 n)

end

end A258624.P5908986146996167959

/-!
# A258625: Number of length n 1..(2+1) arrays with every leading partial sum divisible by 2, 3, 5 or 7.

The programs for A258625, there is no canonical definition to state claims against.
-/

/-! ## A258625.P2660924015693127017

`A258631(∑[n+2])`
-/

namespace A258625.P2660924015693127017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258631 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A258625.P2660924015693127017

/-! ## A258625.P16964420241853193382

`record[A258631(A000096(A126759(n)))]`
-/

namespace A258625.P16964420241853193382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258631 (A000096 (A126759 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258625.P16964420241853193382

/-! ## A258625.P3910083153642235625

`record[A258631(A000096(A002260(n+1)))]`
-/

namespace A258625.P3910083153642235625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258631 (A000096 (A002260 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258625.P3910083153642235625

/-! ## A258625.P10120949999649231415

`record[A258631(A000096(A003963(n+1)))]`
-/

namespace A258625.P10120949999649231415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258631 (A000096 (A003963 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258625.P10120949999649231415

/-! ## A258625.P8543267502465371707

`record[A258631(A000096(A058933(n+1)))]`
-/

namespace A258625.P8543267502465371707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258631 (A000096 (A058933 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258625.P8543267502465371707

/-! ## A258625.P963551638122122897

`record[A258631(A000096(A217438(n+1)))]`
-/

namespace A258625.P963551638122122897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258631 (A000096 (A217438 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258625.P963551638122122897

/-! ## A258625.P1925858890298784753

`record[A258631(A000096(A323405(n+1)))]`
-/

namespace A258625.P1925858890298784753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258631 (A000096 (A323405 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258625.P1925858890298784753

/-! ## A258625.P10911972785173081721

`record[A258631(A000096(A324933(n+1)))]`
-/

namespace A258625.P10911972785173081721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258631 (A000096 (A324933 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258625.P10911972785173081721

/-!
# A258626: Number of length n 1..(3+1) arrays with every leading partial sum divisible by 2, 3, 5 or 7.

The programs for A258626, there is no canonical definition to state claims against.
-/

/-! ## A258626.P15113544641620581168

`A258631(∑[n+3]+1)`
-/

namespace A258626.P15113544641620581168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258631 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A258626.P15113544641620581168

/-! ## A258626.P7574112753483854797

`or(char[2], A258631(A034856(n+2)))`
-/

namespace A258626.P7574112753483854797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A258631 (A034856 (n + 2)).toNat)

end

end A258626.P7574112753483854797

/-! ## A258626.P5979040380619415304

`or(A000007(n), A258631(A055999(n)+4))`
-/

namespace A258626.P5979040380619415304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A258631 (A055999 n + 4).toNat)

end

end A258626.P5979040380619415304

/-! ## A258626.P11603313105703115459

`A258631(A055999(n)+4)%A020737(n)²`
-/

namespace A258626.P11603313105703115459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A258631 (A055999 n + 4).toNat) (A020737 n ^ 2)

end

end A258626.P11603313105703115459

/-! ## A258626.P796060646749651274

`A258631(A055999(n)+4)+A000007(n+1)`
-/

namespace A258626.P796060646749651274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258631 (A055999 n + 4).toNat + A000007 (n + 1)

end

end A258626.P796060646749651274

/-! ## A258626.P9042671336333313442

`A258631(A034856(n+2))%A189265(n+1)`
-/

namespace A258626.P9042671336333313442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A258631 (A034856 (n + 2)).toNat) (A189265 (n + 1))

end

end A258626.P9042671336333313442

/-! ## A258626.P3147017403078239388

`lcm(A165471(n+1), A258631(A055999(n)+4))`
-/

namespace A258626.P3147017403078239388
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A165471 (n + 1)) (A258631 (A055999 n + 4).toNat)

end

end A258626.P3147017403078239388

/-! ## A258626.P5943326908544983981

`A007318(C(n, 2))*A258631(A055999(n)+4)`
-/

namespace A258626.P5943326908544983981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A258631 (A055999 n + 4).toNat

end

end A258626.P5943326908544983981

/-! ## A258626.P17436115876459078046

`A007318((n²+n)/2)*A258631(A055999(n)+4)`
-/

namespace A258626.P17436115876459078046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat * A258631 (A055999 n + 4).toNat

end

end A258626.P17436115876459078046

/-!
# A258627: Number of length n 1..(4+1) arrays with every leading partial sum divisible by 2, 3, 5 or 7.

The programs for A258627, there is no canonical definition to state claims against.
-/

/-! ## A258627.P2253038060986016711

`A258631(A027379(n+2))`
-/

namespace A258627.P2253038060986016711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258631 (A027379 (n + 2)).toNat

end

end A258627.P2253038060986016711

/-! ## A258627.P1169872395808958230

`A258631(A055998(n+2))`
-/

namespace A258627.P1169872395808958230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258631 (A055998 (n + 2)).toNat

end

end A258627.P1169872395808958230

/-! ## A258627.P6126640385893359853

`A258631(eq[3, A193592(n)])`
-/

namespace A258627.P6126640385893359853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258631 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258627.P6126640385893359853

/-! ## A258627.P9431510242844645263

`A258631(A052905(n+1)+2)`
-/

namespace A258627.P9431510242844645263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258631 (A052905 (n + 1) + 2).toNat

end

end A258627.P9431510242844645263

/-! ## A258627.P17541590048567243085

`A258631(lt[A258631(n+4), n])`
-/

namespace A258627.P17541590048567243085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258631 (n + 4)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258631 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A258627.P17541590048567243085

/-! ## A258627.P13989665418002780031

`A258631(A167499(n)+A016777(n))`
-/

namespace A258627.P13989665418002780031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258631 (A167499 n + A016777 n).toNat

end

end A258627.P13989665418002780031

/-! ## A258627.P16817758748441707154

`A258631(A167614(n+1)+A005408(n))`
-/

namespace A258627.P16817758748441707154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258631 (A167614 (n + 1) + A005408 n).toNat

end

end A258627.P16817758748441707154

/-! ## A258627.P13557720786138032456

`A258631(A005408(n)+A167499(n)+n)`
-/

namespace A258627.P13557720786138032456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258631 (A005408 n + (A167499 n + (n : ℤ))).toNat

end

end A258627.P13557720786138032456

/-!
# A258628: Number of length n 1..(5+1) arrays with every leading partial sum divisible by 2, 3, 5 or 7.

The programs for A258628, there is no canonical definition to state claims against.
-/

/-! ## A258628.P11137311717199523759

`A258631(Δ[A264443(n)])`
-/

namespace A258628.P11137311717199523759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258631 (f1 (n + 1) - f1 n).toNat

end

end A258628.P11137311717199523759

/-! ## A258628.P8078726036442058579

`A258631(A046691(n+3))`
-/

namespace A258628.P8078726036442058579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258631 (A046691 (n + 3)).toNat

end

end A258628.P8078726036442058579

/-! ## A258628.P2433718887029767993

`A258631(eq[4, A193592(n)])`
-/

namespace A258628.P2433718887029767993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258631 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258628.P2433718887029767993

/-! ## A258628.P6585008763516550987

`A258631(Δ[A023545(n+1)])`
-/

namespace A258628.P6585008763516550987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258631 (f1 (n + 1) - f1 n).toNat

end

end A258628.P6585008763516550987

/-! ## A258628.P15012507714615549215

`A258631(A052905(n+2)+1)`
-/

namespace A258628.P15012507714615549215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258631 (A052905 (n + 2) + 1).toNat

end

end A258628.P15012507714615549215

/-! ## A258628.P2440227538178573117

`A258631(A055999(n+2)+2)`
-/

namespace A258628.P2440227538178573117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258631 (A055999 (n + 2) + 2).toNat

end

end A258628.P2440227538178573117

/-! ## A258628.P6505518274117668117

`A258631(A000096(n+4)-3)`
-/

namespace A258628.P6505518274117668117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258631 (A000096 (n + 4) - 3).toNat

end

end A258628.P6505518274117668117

/-! ## A258628.P11261836214732331133

`A258631(A167614(n+4)-7)`
-/

namespace A258628.P11261836214732331133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258631 (A167614 (n + 4) - 7).toNat

end

end A258628.P11261836214732331133

/-! ## A258628.P1120042765396473480

`A258631(A000217(n+4)+n+1)`
-/

namespace A258628.P1120042765396473480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258631 (A000217 (n + 4) + (n + 1 : ℤ)).toNat

end

end A258628.P1120042765396473480

/-! ## A258628.P13880269428180242788

`A258631(A264443(n+1)-A264443(n))`
-/

namespace A258628.P13880269428180242788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258631 (A264443 (n + 1) - A264443 n).toNat

end

end A258628.P13880269428180242788

/-!
# A258629: Number of length n 1..(6+1) arrays with every leading partial sum divisible by 2, 3, 5 or 7.

The programs for A258629, there is no canonical definition to state claims against.
-/

/-! ## A258629.P1285903062784273876

`A258631(A052905(n+3))`
-/

namespace A258629.P1285903062784273876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258631 (A052905 (n + 3)).toNat

end

end A258629.P1285903062784273876

/-! ## A258629.P13404661230272069208

`A258631(A000217(n+6)-5)`
-/

namespace A258629.P13404661230272069208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258631 (A000217 (n + 6) - 5).toNat

end

end A258629.P13404661230272069208

/-! ## A258629.P18144139160375961715

`A258631(A000124(n+6)-6)`
-/

namespace A258629.P18144139160375961715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258631 (A000124 (n + 6) - 6).toNat

end

end A258629.P18144139160375961715

/-! ## A258629.P3145688986011984986

`A258631(Δ[A264443(n+1)]-1)`
-/

namespace A258629.P3145688986011984986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258631 (f1 (n + 1) - f1 n - 1).toNat

end

end A258629.P3145688986011984986

/-! ## A258629.P18138556273177052849

`A258631(Δ[A023545(n+2)]-1)`
-/

namespace A258629.P18138556273177052849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258631 (f1 (n + 1) - f1 n - 1).toNat

end

end A258629.P18138556273177052849

/-! ## A258629.P7055127349775420198

`A258631(A000096(n+7)-A005408(n+9))`
-/

namespace A258629.P7055127349775420198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258631 (A000096 (n + 7) - A005408 (n + 9)).toNat

end

end A258629.P7055127349775420198

/-! ## A258629.P11132901773876118027

`A258631(A167499(n+7)-A005408(n+12))`
-/

namespace A258629.P11132901773876118027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258631 (A167499 (n + 7) - A005408 (n + 12)).toNat

end

end A258629.P11132901773876118027

/-!
# A258630: Number of length n 1..(7+1) arrays with every leading partial sum divisible by 2, 3, 5 or 7.

The programs for A258630, there is no canonical definition to state claims against.
-/

/-! ## A258630.P6200352342883815182

`A258631(A055999(n+4))`
-/

namespace A258630.P6200352342883815182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258631 (A055999 (n + 4)).toNat

end

end A258630.P6200352342883815182

/-! ## A258630.P3445014738342817713

`A258631(∑[A020719(n)]+15)`
-/

namespace A258630.P3445014738342817713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020719 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258631 (∑ j ∈ Finset.range (n + 1), f1 j + 15).toNat

end

end A258630.P3445014738342817713

/-! ## A258630.P17963538358741896953

`A258631(A000096(n+6)-5)`
-/

namespace A258630.P17963538358741896953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258631 (A000096 (n + 6) - 5).toNat

end

end A258630.P17963538358741896953

/-! ## A258630.P9317588666117976618

`A258631(A000217(n+7)-6)`
-/

namespace A258630.P9317588666117976618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258631 (A000217 (n + 7) - 6).toNat

end

end A258630.P9317588666117976618

/-! ## A258630.P9006827968760145897

`A258631(A000124(n+7)-7)`
-/

namespace A258630.P9006827968760145897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258631 (A000124 (n + 7) - 7).toNat

end

end A258630.P9006827968760145897

/-!
# A258631: T(n,k)=Number of length n 1..(k+1) arrays with every leading partial sum divisible by 2, 3, 5 or 7.

The programs for A258631, there is no canonical definition to state claims against.
-/

/-! ## A258631.P5254054660733227807

`A254947(n+1)-A137510(A229891(n))`
-/

namespace A258631.P5254054660733227807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254947 (n + 1) - A137510 (A229891 n).toNat

end

end A258631.P5254054660733227807

/-! ## A258631.P12224561906238697214

`A106737(A249544(n+1)-1)-A137510(A229891(n))`
-/

namespace A258631.P12224561906238697214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106737 (A249544 (n + 1) - 1).toNat - A137510 (A229891 n).toNat

end

end A258631.P12224561906238697214

/-! ## A258631.P5071621733322256702

`A254947(A084193(∑[n]))`
-/

namespace A258631.P5071621733322256702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254947 (A084193 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A258631.P5071621733322256702

/-! ## A258631.P16280518127424631164

`A048266(A254947(n+1))`
-/

namespace A258631.P16280518127424631164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048266 (A254947 (n + 1)).toNat

end

end A258631.P16280518127424631164

/-! ## A258631.P2540483553795991116

`A254947(A072078(lcm(7, (-2)^n)))`
-/

namespace A258631.P2540483553795991116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254947 (A072078 (Int.lcm 7 ((-2) ^ n))).toNat

end

end A258631.P2540483553795991116

/-!
# A258632: Number of length 1 1..(n+1) arrays with every leading partial sum divisible by 2, 3, 5 or 7.

The programs for A258632, the canonical program `A258632.P10910427713438509506` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258632 has offset 1).

The definition of A258632 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A258632.P13216266504704135905

`∑[floor(atan(A129476(n+2)))]`
-/

namespace A258632.P13216266504704135905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A129476 (n + 2) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258632.P13216266504704135905

namespace A258632

/-- `∑[floor(atan(A129476(n+2)))]` -/
def P13216266504704135905.Spec : Prop :=
  ∀ n, P13216266504704135905.a n = A258632 (n + 1)

end A258632

/-! ## A258632.P10910427713438509506

`2-A092695(n+2)+n`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A258632

/-- `2-A092695(n+2)+n` -/
def P10910427713438509506.Spec : Prop :=
  ∀ n, P10910427713438509506.a n = A258632 (n + 1)

theorem P10910427713438509506.correct : P10910427713438509506.Spec := by
  intro n
  simp only [A258632, Nat.add_sub_cancel]

end A258632

/-! ## A258632.P10706846474600238595

`∑[round(4/A090369(n+2))]`
-/

namespace A258632.P10706846474600238595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (4 / (A090369 (n + 2) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258632.P10706846474600238595

namespace A258632

/-- `∑[round(4/A090369(n+2))]` -/
def P10706846474600238595.Spec : Prop :=
  ∀ n, P10706846474600238595.a n = A258632 (n + 1)

end A258632

/-! ## A258632.P10820329269657333067

`∑[char[A080672(n+1)-2]]`
-/

namespace A258632.P10820329269657333067
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080672 (n + 1) - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258632.P10820329269657333067

namespace A258632

/-- `∑[char[A080672(n+1)-2]]` -/
def P10820329269657333067.Spec : Prop :=
  ∀ n, (P10820329269657333067.a n : ℤ) = A258632 (n + 1)

end A258632

/-! ## A258632.P6423375841465393906

`∑[char[lt[A020639(n+2), 8]]]`
-/

namespace A258632.P6423375841465393906
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258632.P6423375841465393906

namespace A258632

/-- `∑[char[lt[A020639(n+2), 8]]]` -/
def P6423375841465393906.Spec : Prop :=
  ∀ n, (P6423375841465393906.a n : ℤ) = A258632 (n + 1)

end A258632

/-! ## A258632.P9367753850573401063

`∑[1-char[A008364(n+1)-2]]`
-/

namespace A258632.P9367753850573401063
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008364 (n + 1) - 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258632.P9367753850573401063

namespace A258632

/-- `∑[1-char[A008364(n+1)-2]]` -/
def P9367753850573401063.Spec : Prop :=
  ∀ n, P9367753850573401063.a n = A258632 (n + 1)

end A258632

/-! ## A258632.P6173155220699014546

`∑[round(sqrt(2/A020639(11*(n+2))))]`
-/

namespace A258632.P6173155220699014546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 / (A020639 (11 * (n + 2)) : ℚ) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258632.P6173155220699014546

namespace A258632

/-- `∑[round(sqrt(2/A020639(11*(n+2))))]` -/
def P6173155220699014546.Spec : Prop :=
  ∀ n, P6173155220699014546.a n = A258632 (n + 1)

end A258632

/-! ## A258632.P11979839978004209976

`∑[round(3/(ratio[A020639(n+1)]+2))]`
-/

namespace A258632.P11979839978004209976
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (3 / ((f2 (n + 1) : ℚ) / (f2 n : ℚ) + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258632.P11979839978004209976

namespace A258632

/-- `∑[round(3/(ratio[A020639(n+1)]+2))]` -/
def P11979839978004209976.Spec : Prop :=
  ∀ n, P11979839978004209976.a n = A258632 (n + 1)

end A258632

/-! ## A258632.P16630740022350038961

`∑[A067734(A020639(n+2))]`
-/

namespace A258632.P16630740022350038961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067734 (A020639 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258632.P16630740022350038961

namespace A258632

/-- `∑[A067734(A020639(n+2))]` -/
def P16630740022350038961.Spec : Prop :=
  ∀ n, P16630740022350038961.a n = A258632 (n + 1)

end A258632

/-! ## A258632.P11586074106033934403

`∑[A067734(A092028(n+3))]`
-/

namespace A258632.P11586074106033934403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067734 (A092028 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258632.P11586074106033934403

namespace A258632

/-- `∑[A067734(A092028(n+3))]` -/
def P11586074106033934403.Spec : Prop :=
  ∀ n, P11586074106033934403.a n = A258632 (n + 1)

end A258632

/-! ## A258632.P17612864266237963556

`∑[A000045(round(4/A020639(n+2)))]`
-/

namespace A258632.P17612864266237963556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway (4 / (A020639 (n + 2) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258632.P17612864266237963556

namespace A258632

/-- `∑[A000045(round(4/A020639(n+2)))]` -/
def P17612864266237963556.Spec : Prop :=
  ∀ n, P17612864266237963556.a n = A258632 (n + 1)

end A258632

/-! ## A258632.P15661866627002648342

`∑[A000120(round(4/A020639(n+2)))]`
-/

namespace A258632.P15661866627002648342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway (4 / (A020639 (n + 2) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258632.P15661866627002648342

namespace A258632

/-- `∑[A000120(round(4/A020639(n+2)))]` -/
def P15661866627002648342.Spec : Prop :=
  ∀ n, P15661866627002648342.a n = A258632 (n + 1)

end A258632

/-! ## A258632.P18037682294891205907

`∑[A004525(round(4/A020639(n+2)))]`
-/

namespace A258632.P18037682294891205907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (SequenceMachineLib.roundAway (4 / (A020639 (n + 2) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258632.P18037682294891205907

namespace A258632

/-- `∑[A004525(round(4/A020639(n+2)))]` -/
def P18037682294891205907.Spec : Prop :=
  ∀ n, P18037682294891205907.a n = A258632 (n + 1)

end A258632

/-! ## A258632.P823836614398046381

`∑[A006257(round(4/A020639(n+2)))]`
-/

namespace A258632.P823836614398046381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (SequenceMachineLib.roundAway (4 / (A020639 (n + 2) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258632.P823836614398046381

namespace A258632

/-- `∑[A006257(round(4/A020639(n+2)))]` -/
def P823836614398046381.Spec : Prop :=
  ∀ n, P823836614398046381.a n = A258632 (n + 1)

end A258632

/-! ## A258632.P17041149796211372581

`∑[A000007(floor(A020639(n+2)/9))]`
-/

namespace A258632.P17041149796211372581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ⌊(A020639 (n + 2) : ℚ) / 9⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258632.P17041149796211372581

namespace A258632

/-- `∑[A000007(floor(A020639(n+2)/9))]` -/
def P17041149796211372581.Spec : Prop :=
  ∀ n, P17041149796211372581.a n = A258632 (n + 1)

end A258632

/-! ## A258632.P2827808041672544073

`∑[A001222(ceil(9/(A020639(n+2)+1)))]`
-/

namespace A258632.P2827808041672544073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ⌈9 / (A020639 (n + 2) + 1 : ℚ)⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258632.P2827808041672544073

namespace A258632

/-- `∑[A001222(ceil(9/(A020639(n+2)+1)))]` -/
def P2827808041672544073.Spec : Prop :=
  ∀ n, P2827808041672544073.a n = A258632 (n + 1)

end A258632

/-! ## A258632.P3193069902412129270

`∑[A146162(A000384(n)%A020639(n+2))]`
-/

namespace A258632.P3193069902412129270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146162 (Int.tmod (A000384 n) (A020639 (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258632.P3193069902412129270

namespace A258632

/-- `∑[A146162(A000384(n)%A020639(n+2))]` -/
def P3193069902412129270.Spec : Prop :=
  ∀ n, P3193069902412129270.a n = A258632 (n + 1)

end A258632

/-! ## A258632.P7661447077319267170

`A258631(∑[n]+1)`
-/

namespace A258632.P7661447077319267170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258631 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A258632.P7661447077319267170

namespace A258632

/-- `A258631(∑[n]+1)` -/
def P7661447077319267170.Spec : Prop :=
  ∀ n, P7661447077319267170.a n = A258632 (n + 1)

end A258632

/-!
# A258633: Number of length 2 1..(n+1) arrays with every leading partial sum divisible by 2, 3, 5 or 7.

The programs for A258633, there is no canonical definition to state claims against.
-/

/-! ## A258633.P13813640375008762474

`A258631(∑[n+1]+2)`
-/

namespace A258633.P13813640375008762474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258631 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A258633.P13813640375008762474

/-! ## A258633.P6972889753865355884

`record[A258631(A238531(n)+C(2, n+2))]`
-/

namespace A258633.P6972889753865355884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258631 (A238531 n + (Nat.choose 2 (n + 2) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258633.P6972889753865355884

/-! ## A258633.P14591912131154504571

`gcd(A000038(n), A258631(A167487(n)-5))`
-/

namespace A258633.P14591912131154504571
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A258631 (A167487 n - 5).toNat)

end

end A258633.P14591912131154504571

/-! ## A258633.P667111278162934929

`abs(A020985(n)*A258631(A167487(n)-5))`
-/

namespace A258633.P667111278162934929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A020985 n * A258631 (A167487 n - 5).toNat|

end

end A258633.P667111278162934929

/-! ## A258633.P7859283383784473732

`A258631(A167487(n)-5)+A000038(n+1)`
-/

namespace A258633.P7859283383784473732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258631 (A167487 n - 5).toNat + A000038 (n + 1)

end

end A258633.P7859283383784473732

/-! ## A258633.P5175670204595519860

`A258631(A167487(n)-5)%A053767(n+1)`
-/

namespace A258633.P5175670204595519860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A258631 (A167487 n - 5).toNat) (A053767 (n + 1))

end

end A258633.P5175670204595519860

/-! ## A258633.P13888025937766696243

`gcd(2, A000265(n+1))*A258631(A167487(n)-5)`
-/

namespace A258633.P13888025937766696243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A000265 (n + 1)) : ℤ) * A258631 (A167487 n - 5).toNat

end

end A258633.P13888025937766696243

/-! ## A258633.P2166823933938567855

`A003557(A001122(n+1))*A258631(A167487(n)-5)`
-/

namespace A258633.P2166823933938567855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A001122 (n + 1)).toNat * A258631 (A167487 n - 5).toNat

end

end A258633.P2166823933938567855

/-! ## A258633.P1600366330940658573

`A001221(A046132(n+1))*A258631(A167487(n)-5)`
-/

namespace A258633.P1600366330940658573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A046132 (n + 1)).toNat * A258631 (A167487 n - 5).toNat

end

end A258633.P1600366330940658573

/-! ## A258633.P10399749857882440860

`record[A258631(A238531(n)+A151934(n))]`
-/

namespace A258633.P10399749857882440860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258631 (A238531 n + A151934 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258633.P10399749857882440860

/-!
# A258634: Number of length 3 1..(n+1) arrays with every leading partial sum divisible by 2, 3, 5 or 7.

The programs for A258634, there is no canonical definition to state claims against.
-/

/-! ## A258634.P8362639475544941518

`A258631(∑[n+2]+4)`
-/

namespace A258634.P8362639475544941518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258631 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A258634.P8362639475544941518

/-! ## A258634.P6256915608206839502

`and(log2(1/2), A258631(A152950(n+3)))`
-/

namespace A258634.P6256915608206839502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway (Real.logb 2 ((1 : ℚ) / 2 : ℝ))) (A258631 (A152950 (n + 3)).toNat)

end

end A258634.P6256915608206839502

/-! ## A258634.P11209866804018287211

`A258631(A167614(n+1))%A016936(n)`
-/

namespace A258634.P11209866804018287211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A258631 (A167614 (n + 1)).toNat) (A016936 n)

end

end A258634.P11209866804018287211

/-! ## A258634.P12419389879549569524

`lcm(A020985(n), A258631(A167614(n+1)))`
-/

namespace A258634.P12419389879549569524
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A258631 (A167614 (n + 1)).toNat)

end

end A258634.P12419389879549569524

/-! ## A258634.P15005676552790923339

`lcm(A033999(n), A258631(A055998(n)+6))`
-/

namespace A258634.P15005676552790923339
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A258631 (A055998 n + 6).toNat)

end

end A258634.P15005676552790923339

/-! ## A258634.P11381859729478887426

`A000108(C(2, n+2))*A258631(A167614(n+1))`
-/

namespace A258634.P11381859729478887426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A258631 (A167614 (n + 1)).toNat

end

end A258634.P11381859729478887426

/-! ## A258634.P5599292776106312540

`A123519(C(2, n+2))*A258631(A167614(n+1))`
-/

namespace A258634.P5599292776106312540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123519 (Nat.choose 2 (n + 2)) * A258631 (A167614 (n + 1)).toNat

end

end A258634.P5599292776106312540

/-! ## A258634.P9471271142342571113

`A238531(C(2, n+2))*A258631(A167614(n+1))`
-/

namespace A258634.P9471271142342571113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238531 (Nat.choose 2 (n + 2)) * A258631 (A167614 (n + 1)).toNat

end

end A258634.P9471271142342571113

/-! ## A258634.P14848839958992967395

`A008683(A006881(n+1))*A258631(A167614(n+1))`
-/

namespace A258634.P14848839958992967395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A006881 (n + 1)).toNat * A258631 (A167614 (n + 1)).toNat

end

end A258634.P14848839958992967395

/-! ## A258634.P14994148347860816049

`A001222(A109953(n+1))*A258631(A000217(n+2)+3)`
-/

namespace A258634.P14994148347860816049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A109953 (n + 1)).toNat * A258631 (A000217 (n + 2) + 3).toNat

end

end A258634.P14994148347860816049

/-!
# A258635: Number of length 4 1..(n+1) arrays with every leading partial sum divisible by 2, 3, 5 or 7.

The programs for A258635, there is no canonical definition to state claims against.
-/

/-! ## A258635.P18323479467932640448

`A258631(A052905(n)+9)`
-/

namespace A258635.P18323479467932640448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258631 (A052905 n + 9).toNat

end

end A258635.P18323479467932640448

/-! ## A258635.P3479663273510593911

`A258631(A055999(n)+10)`
-/

namespace A258635.P3479663273510593911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258631 (A055999 n + 10).toNat

end

end A258635.P3479663273510593911

/-! ## A258635.P15010329023573573016

`A258631(A167614(n+2)+1)`
-/

namespace A258635.P15010329023573573016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258631 (A167614 (n + 2) + 1).toNat

end

end A258635.P15010329023573573016

/-! ## A258635.P9913972747714179765

`A258631(A166136(n+2)-2)`
-/

namespace A258635.P9913972747714179765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258631 (A166136 (n + 2) - 2).toNat

end

end A258635.P9913972747714179765

/-! ## A258635.P17126129278895606263

`A258631(A000124(n+3)+3)`
-/

namespace A258635.P17126129278895606263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258631 (A000124 (n + 3) + 3).toNat

end

end A258635.P17126129278895606263

/-! ## A258635.P5012318173482569470

`A258631(A167487(n+2)-3)`
-/

namespace A258635.P5012318173482569470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258631 (A167487 (n + 2) - 3).toNat

end

end A258635.P5012318173482569470

/-! ## A258635.P610217575566308882

`A258631(A000217(n+3)+4)`
-/

namespace A258635.P610217575566308882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258631 (A000217 (n + 3) + 4).toNat

end

end A258635.P610217575566308882

/-! ## A258635.P8214731229620157852

`A258631(Δ[A264443(n)-n²])`
-/

namespace A258635.P8214731229620157852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258631 (f1 (n + 1) - f1 n).toNat

end

end A258635.P8214731229620157852

/-! ## A258635.P14988249112948536227

`A258631(A166136(n+1)+1+n)`
-/

namespace A258635.P14988249112948536227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258631 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A258635.P14988249112948536227

/-! ## A258635.P4632035278381822099

`A258631(Δ[A023545(n+1)-n²])`
-/

namespace A258635.P4632035278381822099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258631 (f1 (n + 1) - f1 n).toNat

end

end A258635.P4632035278381822099

/-!
# A258636: Number of length 5 1..(n+1) arrays with every leading partial sum divisible by 2, 3, 5 or 7.

The programs for A258636, there is no canonical definition to state claims against.
-/

/-! ## A258636.P5657833373095306384

`A258631(A167499(n+3))`
-/

namespace A258636.P5657833373095306384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258631 (A167499 (n + 3)).toNat

end

end A258636.P5657833373095306384

/-! ## A258636.P1264546758209791871

`A258631(A167614(n+3)+2)`
-/

namespace A258636.P1264546758209791871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258631 (A167614 (n + 3) + 2).toNat

end

end A258636.P1264546758209791871

/-! ## A258636.P1077999973360648201

`A258631(A000217(n+4)+5)`
-/

namespace A258636.P1077999973360648201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258631 (A000217 (n + 4) + 5).toNat

end

end A258636.P1077999973360648201

/-! ## A258636.P15717879236235300730

`A258631(A034856(n+3)+7)`
-/

namespace A258636.P15717879236235300730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258631 (A034856 (n + 3) + 7).toNat

end

end A258636.P15717879236235300730

/-! ## A258636.P4373220375193338751

`A258631(A179865(n+5)+5)`
-/

namespace A258636.P4373220375193338751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258631 (A179865 (n + 5) + 5).toNat

end

end A258636.P4373220375193338751

/-! ## A258636.P4697835342612377729

`A258631(A055998(n)+A005408(n+7))`
-/

namespace A258636.P4697835342612377729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258631 (A055998 n + A005408 (n + 7)).toNat

end

end A258636.P4697835342612377729

/-!
# A258637: Number of length 6 1..(n+1) arrays with every leading partial sum divisible by 2, 3, 5 or 7.

The programs for A258637, there is no canonical definition to state claims against.
-/

/-! ## A258637.P2916122245270200813

`A258631(A166136(n+4))`
-/

namespace A258637.P2916122245270200813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258631 (A166136 (n + 4)).toNat

end

end A258637.P2916122245270200813

/-! ## A258637.P2643055885986098115

`A258631(A167499(n+4)+1)`
-/

namespace A258637.P2643055885986098115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258631 (A167499 (n + 4) + 1).toNat

end

end A258637.P2643055885986098115

/-! ## A258637.P3960999524352448743

`A258631(A000217(n+5)+6)`
-/

namespace A258637.P3960999524352448743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258631 (A000217 (n + 5) + 6).toNat

end

end A258637.P3960999524352448743

/-! ## A258637.P301595568038176177

`A258631(A179865(n+6)+6)`
-/

namespace A258637.P301595568038176177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258631 (A179865 (n + 6) + 6).toNat

end

end A258637.P301595568038176177

/-! ## A258637.P10256506878851456835

`A258631(A046691(n+3)+10)`
-/

namespace A258637.P10256506878851456835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258631 (A046691 (n + 3) + 10).toNat

end

end A258637.P10256506878851456835

/-!
# A258638: Number of length 7 1..(n+1) arrays with every leading partial sum divisible by 2, 3, 5 or 7.

The programs for A258638, there is no canonical definition to state claims against.
-/

/-! ## A258638.P1117146842173113446

`A258631(A167499(n+5)+2)`
-/

namespace A258638.P1117146842173113446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258631 (A167499 (n + 5) + 2).toNat

end

end A258638.P1117146842173113446

/-! ## A258638.P13753842208470849070

`A258631(A000124(n+6)+6)`
-/

namespace A258638.P13753842208470849070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258631 (A000124 (n + 6) + 6).toNat

end

end A258638.P13753842208470849070

/-! ## A258638.P11524914280128006878

`A258631(A000217(n+6)+7)`
-/

namespace A258638.P11524914280128006878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258631 (A000217 (n + 6) + 7).toNat

end

end A258638.P11524914280128006878

/-! ## A258638.P6409451917472347529

`A258631(A179865(n+7)+7)`
-/

namespace A258638.P6409451917472347529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258631 (A179865 (n + 7) + 7).toNat

end

end A258638.P6409451917472347529

/-! ## A258638.P11303084384480848356

`A258631(A167614(n+4)+n+10)`
-/

namespace A258638.P11303084384480848356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258631 (A167614 (n + 4) + (n + 10 : ℤ)).toNat

end

end A258638.P11303084384480848356

/-! ## A258638.P3025661965288815557

`A258631(A055998(n+6)-A005408(n+2))`
-/

namespace A258638.P3025661965288815557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258631 (A055998 (n + 6) - A005408 (n + 2)).toNat

end

end A258638.P3025661965288815557

/-!
# A258641: First differences of A103739.

The programs for A258641, there is no canonical definition to state claims against.
-/

/-! ## A258641.P2809199547941550688

`A103739(n+2)-A103739(n+1)`
-/

namespace A258641.P2809199547941550688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103739 (n + 2) - A103739 (n + 1)

end

end A258641.P2809199547941550688

/-! ## A258641.P12397011280199138998

`Δ[A103739(n+1)]`
-/

namespace A258641.P12397011280199138998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258641.P12397011280199138998

/-! ## A258641.P4398889271769870465

`Δ[p?[A143850(n+1)]]`
-/

namespace A258641.P4398889271769870465
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143850 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258641.P4398889271769870465

/-! ## A258641.P2708151915098723806

`Δ[record[A103739(A134478(n))]]`
-/

namespace A258641.P2708151915098723806
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103739 (A134478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258641.P2708151915098723806

/-! ## A258641.P9358798821054406232

`Δ[record[A006530(A103558(n+1))]]`
-/

namespace A258641.P9358798821054406232
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A103558 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258641.P9358798821054406232

/-! ## A258641.P7300332541669890722

`Δ[record[A014963(A143850(n+2))]]`
-/

namespace A258641.P7300332541669890722
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A143850 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258641.P7300332541669890722

/-!
# A258642: Suppose A103739(n) = (p^2 + q^2)/2 with p < q primes. The sequence gives values of p.

The programs for A258642, there is no canonical definition to state claims against.
-/

/-! ## A258642.P5309218607894467915

`A064875(2*A103739(n+1))`
-/

namespace A258642.P5309218607894467915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064875 (2 * A103739 (n + 1)).toNat

end

end A258642.P5309218607894467915

/-! ## A258642.P30969510920909030

`A133388(A103739(n+1))-A258654(n+1)`
-/

namespace A258642.P30969510920909030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133388 (A103739 (n + 1)).toNat - A258654 (n + 1)

end

end A258642.P30969510920909030

/-! ## A258642.P2179855520305546359

`A133388(p?[A143850(n+1)])-A258654(n+1)`
-/

namespace A258642.P2179855520305546359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143850 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133388 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - A258654 (n + 1)

end

end A258642.P2179855520305546359

/-! ## A258642.P12305342886745331232

`A262689(p?[A103739(n+1)])-A258654(n+1)`
-/

namespace A258642.P12305342886745331232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - A258654 (n + 1)

end

end A258642.P12305342886745331232

/-! ## A258642.P12378939230987668581

`A262689(p?[A143850(n+1)])-A258654(n+1)`
-/

namespace A258642.P12378939230987668581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143850 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - A258654 (n + 1)

end

end A258642.P12378939230987668581

/-! ## A258642.P14161115830847562080

`A205790(2*A103739(n+1))`
-/

namespace A258642.P14161115830847562080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205790 (2 * A103739 (n + 1)).toNat

end

end A258642.P14161115830847562080

/-! ## A258642.P8738961405430840473

`A205790(2*p?[A143850(n+1)])`
-/

namespace A258642.P8738961405430840473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143850 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205790 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A258642.P8738961405430840473

/-! ## A258642.P16079465713054965590

`A257816(n+1)-A258654(n+1)`
-/

namespace A258642.P16079465713054965590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257816 (n + 1) - A258654 (n + 1)

end

end A258642.P16079465713054965590

/-! ## A258642.P1371793653246994908

`2*A257816(n+1)-A078908(A103739(n+1))`
-/

namespace A258642.P1371793653246994908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A257816 (n + 1) - A078908 (A103739 (n + 1)).toNat

end

end A258642.P1371793653246994908

/-! ## A258642.P14889906962177267673

`A005843(A257816(n+1))-A078908(A103739(n+1))`
-/

namespace A258642.P14889906962177267673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A257816 (n + 1)).toNat - A078908 (A103739 (n + 1)).toNat

end

end A258642.P14889906962177267673

/-!
# A258644: Fourth arithmetic derivative of n.

The programs for A258644, the canonical program `A258644.P500966150776542853` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258644 has offset 0).

The definition of A258644 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A258644.P500966150776542853

`A099306(A003415(n))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A258644

/-- `A099306(A003415(n))` -/
def P500966150776542853.Spec : Prop :=
  ∀ n, P500966150776542853.a n = A258644 n

theorem P500966150776542853.correct : P500966150776542853.Spec := by
  intro n
  simp only [A258644]

end A258644

/-! ## A258644.P12741692461363851421

`A099306(A168036(n)+n)`
-/

namespace A258644.P12741692461363851421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099306 (A168036 n + (n : ℤ)).toNat

end

end A258644.P12741692461363851421

namespace A258644

/-- `A099306(A168036(n)+n)` -/
def P12741692461363851421.Spec : Prop :=
  ∀ n, P12741692461363851421.a n = A258644 n

end A258644

/-! ## A258644.P17032393452494228077

`A099306(A129283(n)-n)`
-/

namespace A258644.P17032393452494228077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099306 (A129283 n - (n : ℤ)).toNat

end

end A258644.P17032393452494228077

namespace A258644

/-- `A099306(A129283(n)-n)` -/
def P17032393452494228077.Spec : Prop :=
  ∀ n, P17032393452494228077.a n = A258644 n

end A258644

/-! ## A258644.P7336519779409382386

`A099306(∑{d}[n, A300251(#)])`
-/

namespace A258644.P7336519779409382386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099306 (∑ d ∈ Nat.divisors (f1 n), A300251 d).toNat

end

end A258644.P7336519779409382386

namespace A258644

/-- `A099306(∑{d}[n, A300251(#)])` -/
def P7336519779409382386.Spec : Prop :=
  ∀ n, P7336519779409382386.a n = A258644 n

end A258644

/-! ## A258644.P934386913102613592

`A099306(A359423(n)/A351231(n))`
-/

namespace A258644.P934386913102613592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099306 (SequenceMachineLib.roundAway ((A359423 n : ℚ) / (A351231 n : ℚ))).toNat

end

end A258644.P934386913102613592

namespace A258644

/-- `A099306(A359423(n)/A351231(n))` -/
def P934386913102613592.Spec : Prop :=
  ∀ n, P934386913102613592.a n = A258644 n

end A258644

/-! ## A258644.P12772911343318687073

`A099306(abs(A129283(n)+A001489(n)))`
-/

namespace A258644.P12772911343318687073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099306 |A129283 n + A001489 n|.toNat

end

end A258644.P12772911343318687073

namespace A258644

/-- `A099306(abs(A129283(n)+A001489(n)))` -/
def P12772911343318687073.Spec : Prop :=
  ∀ n, P12772911343318687073.a n = A258644 n

end A258644

/-! ## A258644.P14099216667683313055

`A099306(∑[A258057(n)]-A258057(n))`
-/

namespace A258644.P14099216667683313055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099306 (∑ j ∈ Finset.range (n + 1), f1 j - A258057 n).toNat

end

end A258644.P14099216667683313055

namespace A258644

/-- `A099306(∑[A258057(n)]-A258057(n))` -/
def P14099216667683313055.Spec : Prop :=
  ∀ n, P14099216667683313055.a n = A258644 n

end A258644

/-! ## A258644.P16553144448001866646

`A068346(A068346(n))`
-/

namespace A258644.P16553144448001866646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068346 (A068346 n).toNat

end

end A258644.P16553144448001866646

namespace A258644

/-- `A068346(A068346(n))` -/
def P16553144448001866646.Spec : Prop :=
  ∀ n, P16553144448001866646.a n = A258644 n

end A258644

/-! ## A258644.P3799168534585270823

`A099306(A258651(∑[n+2]-1))`
-/

namespace A258644.P3799168534585270823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099306 (A258651 (∑ j ∈ Finset.range (n + 1), f1 j - 1)).toNat

end

end A258644.P3799168534585270823

namespace A258644

/-- `A099306(A258651(∑[n+2]-1))` -/
def P3799168534585270823.Spec : Prop :=
  ∀ n, P3799168534585270823.a n = A258644 n

end A258644

/-! ## A258644.P81450909004006999

`A258651(A052905(n+2))`
-/

namespace A258644.P81450909004006999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258651 (A052905 (n + 2)).toNat

end

end A258644.P81450909004006999

namespace A258644

/-- `A258651(A052905(n+2))` -/
def P81450909004006999.Spec : Prop :=
  ∀ n, P81450909004006999.a n = A258644 n

end A258644

/-!
# A258645: Fifth arithmetic derivative of n.

The programs for A258645, the canonical program `A258645.P7075663669890801924` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258645 has offset 0).

The definition of A258645 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A258645.P7075663669890801924

`A258644(A003415(n))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A258645

/-- `A258644(A003415(n))` -/
def P7075663669890801924.Spec : Prop :=
  ∀ n, P7075663669890801924.a n = A258645 n

theorem P7075663669890801924.correct : P7075663669890801924.Spec := by
  intro n
  simp only [A258645]

end A258645

/-! ## A258645.P335685754085636239

`A258644(A168036(n)+n)`
-/

namespace A258645.P335685754085636239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258644 (A168036 n + (n : ℤ)).toNat

end

end A258645.P335685754085636239

namespace A258645

/-- `A258644(A168036(n)+n)` -/
def P335685754085636239.Spec : Prop :=
  ∀ n, P335685754085636239.a n = A258645 n

end A258645

/-! ## A258645.P12753438800422668275

`A258644(A129283(n)-n)`
-/

namespace A258645.P12753438800422668275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258644 (A129283 n - (n : ℤ)).toNat

end

end A258645.P12753438800422668275

namespace A258645

/-- `A258644(A129283(n)-n)` -/
def P12753438800422668275.Spec : Prop :=
  ∀ n, P12753438800422668275.a n = A258645 n

end A258645

/-! ## A258645.P3213286699949035746

`A258644(∑{d}[n, A300251(#)])`
-/

namespace A258645.P3213286699949035746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258644 (∑ d ∈ Nat.divisors (f1 n), A300251 d).toNat

end

end A258645.P3213286699949035746

namespace A258645

/-- `A258644(∑{d}[n, A300251(#)])` -/
def P3213286699949035746.Spec : Prop :=
  ∀ n, P3213286699949035746.a n = A258645 n

end A258645

/-! ## A258645.P6789061662177988818

`A258644(A359423(n)/A351231(n))`
-/

namespace A258645.P6789061662177988818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258644 (SequenceMachineLib.roundAway ((A359423 n : ℚ) / (A351231 n : ℚ))).toNat

end

end A258645.P6789061662177988818

namespace A258645

/-- `A258644(A359423(n)/A351231(n))` -/
def P6789061662177988818.Spec : Prop :=
  ∀ n, P6789061662177988818.a n = A258645 n

end A258645

/-! ## A258645.P3914664977067794125

`A258644(abs(A129283(n)+A001489(n)))`
-/

namespace A258645.P3914664977067794125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258644 |A129283 n + A001489 n|.toNat

end

end A258645.P3914664977067794125

namespace A258645

/-- `A258644(abs(A129283(n)+A001489(n)))` -/
def P3914664977067794125.Spec : Prop :=
  ∀ n, P3914664977067794125.a n = A258645 n

end A258645

/-! ## A258645.P9154676975762950407

`A099306(A068346(n))`
-/

namespace A258645.P9154676975762950407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099306 (A068346 n).toNat

end

end A258645.P9154676975762950407

namespace A258645

/-- `A099306(A068346(n))` -/
def P9154676975762950407.Spec : Prop :=
  ∀ n, P9154676975762950407.a n = A258645 n

end A258645

/-! ## A258645.P9138860447377817624

`A068346(A068346(∑{d}[n, A300251(#)]))`
-/

namespace A258645.P9138860447377817624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068346 (A068346 (∑ d ∈ Nat.divisors (f1 n), A300251 d).toNat).toNat

end

end A258645.P9138860447377817624

namespace A258645

/-- `A068346(A068346(∑{d}[n, A300251(#)]))` -/
def P9138860447377817624.Spec : Prop :=
  ∀ n, P9138860447377817624.a n = A258645 n

end A258645

/-! ## A258645.P3531142812154527213

`A003415(A003415(A099306(n)))`
-/

namespace A258645.P3531142812154527213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A003415 (A099306 n).toNat).toNat

end

end A258645.P3531142812154527213

namespace A258645

/-- `A003415(A003415(A099306(n)))` -/
def P3531142812154527213.Spec : Prop :=
  ∀ n, P3531142812154527213.a n = A258645 n

end A258645

/-! ## A258645.P344489192307032785

`A258644(A258651(∑[n+2]-1))`
-/

namespace A258645.P344489192307032785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258644 (A258651 (∑ j ∈ Finset.range (n + 1), f1 j - 1)).toNat

end

end A258645.P344489192307032785

namespace A258645

/-- `A258644(A258651(∑[n+2]-1))` -/
def P344489192307032785.Spec : Prop :=
  ∀ n, P344489192307032785.a n = A258645 n

end A258645

/-!
# A258646: Sixth arithmetic derivative of n.

The programs for A258646, the canonical program `A258646.P3882891341193768385` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258646 has offset 0).

The definition of A258646 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A258646.P3882891341193768385

`A258645(A003415(n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A258646

/-- `A258645(A003415(n))` -/
def P3882891341193768385.Spec : Prop :=
  ∀ n, P3882891341193768385.a n = A258646 n

theorem P3882891341193768385.correct : P3882891341193768385.Spec := by
  intro n
  simp only [A258646]

end A258646

/-! ## A258646.P6401159667041256868

`A258645(A168036(n)+n)`
-/

namespace A258646.P6401159667041256868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258645 (A168036 n + (n : ℤ)).toNat

end

end A258646.P6401159667041256868

namespace A258646

/-- `A258645(A168036(n)+n)` -/
def P6401159667041256868.Spec : Prop :=
  ∀ n, P6401159667041256868.a n = A258646 n

end A258646

/-! ## A258646.P11203867020029226954

`A258645(A129283(n)-n)`
-/

namespace A258646.P11203867020029226954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258645 (A129283 n - (n : ℤ)).toNat

end

end A258646.P11203867020029226954

namespace A258646

/-- `A258645(A129283(n)-n)` -/
def P11203867020029226954.Spec : Prop :=
  ∀ n, P11203867020029226954.a n = A258646 n

end A258646

/-! ## A258646.P11106420791760256465

`A258645(∑{d}[n, A300251(#)])`
-/

namespace A258646.P11106420791760256465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258645 (∑ d ∈ Nat.divisors (f1 n), A300251 d).toNat

end

end A258646.P11106420791760256465

namespace A258646

/-- `A258645(∑{d}[n, A300251(#)])` -/
def P11106420791760256465.Spec : Prop :=
  ∀ n, P11106420791760256465.a n = A258646 n

end A258646

/-! ## A258646.P6197991681399466880

`A258644(A068346(n))`
-/

namespace A258646.P6197991681399466880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258644 (A068346 n).toNat

end

end A258646.P6197991681399466880

namespace A258646

/-- `A258644(A068346(n))` -/
def P6197991681399466880.Spec : Prop :=
  ∀ n, P6197991681399466880.a n = A258646 n

end A258646

/-! ## A258646.P16237223818830815736

`A099306(A099306(n))`
-/

namespace A258646.P16237223818830815736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099306 (A099306 n).toNat

end

end A258646.P16237223818830815736

namespace A258646

/-- `A099306(A099306(n))` -/
def P16237223818830815736.Spec : Prop :=
  ∀ n, P16237223818830815736.a n = A258646 n

end A258646

/-! ## A258646.P3631670821560299085

`A068346(A068346(A068346(n)+A000007(n)))`
-/

namespace A258646.P3631670821560299085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068346 (A068346 (A068346 n + A000007 n).toNat).toNat

end

end A258646.P3631670821560299085

namespace A258646

/-- `A068346(A068346(A068346(n)+A000007(n)))` -/
def P3631670821560299085.Spec : Prop :=
  ∀ n, P3631670821560299085.a n = A258646 n

end A258646

/-! ## A258646.P15188216118252522940

`A068346(A068346(A068346(n)+A000038(n)))`
-/

namespace A258646.P15188216118252522940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068346 (A068346 (A068346 n + A000038 n).toNat).toNat

end

end A258646.P15188216118252522940

namespace A258646

/-- `A068346(A068346(A068346(n)+A000038(n)))` -/
def P15188216118252522940.Spec : Prop :=
  ∀ n, P15188216118252522940.a n = A258646 n

end A258646

/-! ## A258646.P5721674442916369306

`A068346(A068346(A068346(n)%A000123(n)))`
-/

namespace A258646.P5721674442916369306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068346 (A068346 (Int.tmod (A068346 n) (A000123 n)).toNat).toNat

end

end A258646.P5721674442916369306

namespace A258646

/-- `A068346(A068346(A068346(n)%A000123(n)))` -/
def P5721674442916369306.Spec : Prop :=
  ∀ n, P5721674442916369306.a n = A258646 n

end A258646

/-! ## A258646.P447076078524389902

`A068346(A068346(A068346(n)))%A114254(n)`
-/

namespace A258646.P447076078524389902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068346 (A068346 (A068346 n).toNat).toNat) (A114254 n)

end

end A258646.P447076078524389902

namespace A258646

/-- `A068346(A068346(A068346(n)))%A114254(n)` -/
def P447076078524389902.Spec : Prop :=
  ∀ n, P447076078524389902.a n = A258646 n

end A258646

/-! ## A258646.P2554449694988141376

`A258645(A258197(A000217(n)+1))`
-/

namespace A258646.P2554449694988141376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258645 (A258197 (A000217 n + 1).toNat).toNat

end

end A258646.P2554449694988141376

namespace A258646

/-- `A258645(A258197(A000217(n)+1))` -/
def P2554449694988141376.Spec : Prop :=
  ∀ n, P2554449694988141376.a n = A258646 n

end A258646

/-!
# A258647: Seventh arithmetic derivative of n.

The programs for A258647, the canonical program `A258647.P3813352167158168580` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258647 has offset 0).

The definition of A258647 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A258647.P3813352167158168580

`A258646(A003415(n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A258647

/-- `A258646(A003415(n))` -/
def P3813352167158168580.Spec : Prop :=
  ∀ n, P3813352167158168580.a n = A258647 n

theorem P3813352167158168580.correct : P3813352167158168580.Spec := by
  intro n
  simp only [A258647]

end A258647

/-! ## A258647.P17546221621774677378

`A258646(A168036(n)+n)`
-/

namespace A258647.P17546221621774677378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258646 (A168036 n + (n : ℤ)).toNat

end

end A258647.P17546221621774677378

namespace A258647

/-- `A258646(A168036(n)+n)` -/
def P17546221621774677378.Spec : Prop :=
  ∀ n, P17546221621774677378.a n = A258647 n

end A258647

/-! ## A258647.P2462241698999493788

`A258646(A129283(n)-n)`
-/

namespace A258647.P2462241698999493788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258646 (A129283 n - (n : ℤ)).toNat

end

end A258647.P2462241698999493788

namespace A258647

/-- `A258646(A129283(n)-n)` -/
def P2462241698999493788.Spec : Prop :=
  ∀ n, P2462241698999493788.a n = A258647 n

end A258647

/-! ## A258647.P14675223137708750624

`A258645(A068346(n))`
-/

namespace A258647.P14675223137708750624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258645 (A068346 n).toNat

end

end A258647.P14675223137708750624

namespace A258647

/-- `A258645(A068346(n))` -/
def P14675223137708750624.Spec : Prop :=
  ∀ n, P14675223137708750624.a n = A258647 n

end A258647

/-! ## A258647.P10021704178510200688

`A258644(A099306(n))`
-/

namespace A258647.P10021704178510200688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258644 (A099306 n).toNat

end

end A258647.P10021704178510200688

namespace A258647

/-- `A258644(A099306(n))` -/
def P10021704178510200688.Spec : Prop :=
  ∀ n, P10021704178510200688.a n = A258647 n

end A258647

/-! ## A258647.P7110307546266673062

`A099306(A099306(∑{d}[n, A300251(#)]))`
-/

namespace A258647.P7110307546266673062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099306 (A099306 (∑ d ∈ Nat.divisors (f1 n), A300251 d).toNat).toNat

end

end A258647.P7110307546266673062

namespace A258647

/-- `A099306(A099306(∑{d}[n, A300251(#)]))` -/
def P7110307546266673062.Spec : Prop :=
  ∀ n, P7110307546266673062.a n = A258647 n

end A258647

/-! ## A258647.P12384427005057813764

`A099306(A099306(A003415(n)%A008458(n)))`
-/

namespace A258647.P12384427005057813764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099306 (A099306 (Int.tmod (A003415 n) (A008458 n)).toNat).toNat

end

end A258647.P12384427005057813764

namespace A258647

/-- `A099306(A099306(A003415(n)%A008458(n)))` -/
def P12384427005057813764.Spec : Prop :=
  ∀ n, P12384427005057813764.a n = A258647 n

end A258647

/-! ## A258647.P7016038494379535242

`A258645(A258651(∑[n+3]))`
-/

namespace A258647.P7016038494379535242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258645 (A258651 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A258647.P7016038494379535242

namespace A258647

/-- `A258645(A258651(∑[n+3]))` -/
def P7016038494379535242.Spec : Prop :=
  ∀ n, P7016038494379535242.a n = A258647 n

end A258647

/-! ## A258647.P16007763919536190938

`A003415(A003415(A258645(n)))`
-/

namespace A258647.P16007763919536190938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A003415 (A258645 n).toNat).toNat

end

end A258647.P16007763919536190938

namespace A258647

/-- `A003415(A003415(A258645(n)))` -/
def P16007763919536190938.Spec : Prop :=
  ∀ n, P16007763919536190938.a n = A258647 n

end A258647

/-! ## A258647.P13344761991502337056

`A068346(A003415(A258644(n)))`
-/

namespace A258647.P13344761991502337056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068346 (A003415 (A258644 n).toNat).toNat

end

end A258647.P13344761991502337056

namespace A258647

/-- `A068346(A003415(A258644(n)))` -/
def P13344761991502337056.Spec : Prop :=
  ∀ n, P13344761991502337056.a n = A258647 n

end A258647

/-!
# A258648: Eighth arithmetic derivative of n.

The programs for A258648, the canonical program `A258648.P15333979294396160624` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258648 has offset 0).

The definition of A258648 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A258648.P15333979294396160624

`A258647(A003415(n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A258648

/-- `A258647(A003415(n))` -/
def P15333979294396160624.Spec : Prop :=
  ∀ n, P15333979294396160624.a n = A258648 n

theorem P15333979294396160624.correct : P15333979294396160624.Spec := by
  intro n
  simp only [A258648]

end A258648

/-! ## A258648.P4749562831574492912

`A258647(A168036(n)+n)`
-/

namespace A258648.P4749562831574492912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258647 (A168036 n + (n : ℤ)).toNat

end

end A258648.P4749562831574492912

namespace A258648

/-- `A258647(A168036(n)+n)` -/
def P4749562831574492912.Spec : Prop :=
  ∀ n, P4749562831574492912.a n = A258648 n

end A258648

/-! ## A258648.P15084701194923671721

`A258647(A129283(n)-n)`
-/

namespace A258648.P15084701194923671721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258647 (A129283 n - (n : ℤ)).toNat

end

end A258648.P15084701194923671721

namespace A258648

/-- `A258647(A129283(n)-n)` -/
def P15084701194923671721.Spec : Prop :=
  ∀ n, P15084701194923671721.a n = A258648 n

end A258648

/-! ## A258648.P18134188855894142122

`A258646(A068346(n))`
-/

namespace A258648.P18134188855894142122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258646 (A068346 n).toNat

end

end A258648.P18134188855894142122

namespace A258648

/-- `A258646(A068346(n))` -/
def P18134188855894142122.Spec : Prop :=
  ∀ n, P18134188855894142122.a n = A258648 n

end A258648

/-! ## A258648.P14746347568056478879

`A258645(A099306(n))`
-/

namespace A258648.P14746347568056478879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258645 (A099306 n).toNat

end

end A258648.P14746347568056478879

namespace A258648

/-- `A258645(A099306(n))` -/
def P14746347568056478879.Spec : Prop :=
  ∀ n, P14746347568056478879.a n = A258648 n

end A258648

/-! ## A258648.P8539439584417606015

`A258644(A258644(n))`
-/

namespace A258648.P8539439584417606015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258644 (A258644 n).toNat

end

end A258648.P8539439584417606015

namespace A258648

/-- `A258644(A258644(n))` -/
def P8539439584417606015.Spec : Prop :=
  ∀ n, P8539439584417606015.a n = A258648 n

end A258648

/-! ## A258648.P8893375808387105012

`A258646(A258651(∑[n+3]))`
-/

namespace A258648.P8893375808387105012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258646 (A258651 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A258648.P8893375808387105012

namespace A258648

/-- `A258646(A258651(∑[n+3]))` -/
def P8893375808387105012.Spec : Prop :=
  ∀ n, P8893375808387105012.a n = A258648 n

end A258648

/-! ## A258648.P3556102987966153907

`A068346(A003415(A258645(n)))`
-/

namespace A258648.P3556102987966153907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068346 (A003415 (A258645 n).toNat).toNat

end

end A258648.P3556102987966153907

namespace A258648

/-- `A068346(A003415(A258645(n)))` -/
def P3556102987966153907.Spec : Prop :=
  ∀ n, P3556102987966153907.a n = A258648 n

end A258648

/-!
# A258649: Ninth arithmetic derivative of n.

The programs for A258649, the canonical program `A258649.P16645694679148408082` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258649 has offset 0).

The definition of A258649 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A258649.P16645694679148408082

`A258648(A003415(n))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A258649

/-- `A258648(A003415(n))` -/
def P16645694679148408082.Spec : Prop :=
  ∀ n, P16645694679148408082.a n = A258649 n

theorem P16645694679148408082.correct : P16645694679148408082.Spec := by
  intro n
  simp only [A258649]

end A258649

/-! ## A258649.P2543866675118112247

`A258648(A168036(n)+n)`
-/

namespace A258649.P2543866675118112247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258648 (A168036 n + (n : ℤ)).toNat

end

end A258649.P2543866675118112247

namespace A258649

/-- `A258648(A168036(n)+n)` -/
def P2543866675118112247.Spec : Prop :=
  ∀ n, P2543866675118112247.a n = A258649 n

end A258649

/-! ## A258649.P15822230729385273929

`A258648(A129283(n)-n)`
-/

namespace A258649.P15822230729385273929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258648 (A129283 n - (n : ℤ)).toNat

end

end A258649.P15822230729385273929

namespace A258649

/-- `A258648(A129283(n)-n)` -/
def P15822230729385273929.Spec : Prop :=
  ∀ n, P15822230729385273929.a n = A258649 n

end A258649

/-! ## A258649.P8546966718828268612

`A258647(A068346(n))`
-/

namespace A258649.P8546966718828268612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258647 (A068346 n).toNat

end

end A258649.P8546966718828268612

namespace A258649

/-- `A258647(A068346(n))` -/
def P8546966718828268612.Spec : Prop :=
  ∀ n, P8546966718828268612.a n = A258649 n

end A258649

/-! ## A258649.P2133212424366416292

`A258646(A099306(n))`
-/

namespace A258649.P2133212424366416292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258646 (A099306 n).toNat

end

end A258649.P2133212424366416292

namespace A258649

/-- `A258646(A099306(n))` -/
def P2133212424366416292.Spec : Prop :=
  ∀ n, P2133212424366416292.a n = A258649 n

end A258649

/-! ## A258649.P11047361093514672912

`A258645(A258644(n))`
-/

namespace A258649.P11047361093514672912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258645 (A258644 n).toNat

end

end A258649.P11047361093514672912

namespace A258649

/-- `A258645(A258644(n))` -/
def P11047361093514672912.Spec : Prop :=
  ∀ n, P11047361093514672912.a n = A258649 n

end A258649

/-! ## A258649.P5240646615032344434

`A258647(A258651(∑[n+3]))`
-/

namespace A258649.P5240646615032344434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258647 (A258651 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A258649.P5240646615032344434

namespace A258649

/-- `A258647(A258651(∑[n+3]))` -/
def P5240646615032344434.Spec : Prop :=
  ∀ n, P5240646615032344434.a n = A258649 n

end A258649

/-! ## A258649.P12558685519884346674

`A258647(A003415(A003415(n)%A003271(n)))`
-/

namespace A258649.P12558685519884346674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258647 (A003415 (Int.tmod (A003415 n) (A003271 n)).toNat).toNat

end

end A258649.P12558685519884346674

namespace A258649

/-- `A258647(A003415(A003415(n)%A003271(n)))` -/
def P12558685519884346674.Spec : Prop :=
  ∀ n, P12558685519884346674.a n = A258649 n

end A258649

/-! ## A258649.P9920530008001211595

`A369971(A258648(n))`
-/

namespace A258649.P9920530008001211595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369971 (A258648 n).toNat

end

end A258649.P9920530008001211595

namespace A258649

/-- `A369971(A258648(n))` -/
def P9920530008001211595.Spec : Prop :=
  ∀ n, P9920530008001211595.a n = A258649 n

end A258649

/-! ## A258649.P6810781893701137927

`A099306(A003415(A258645(n)))`
-/

namespace A258649.P6810781893701137927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099306 (A003415 (A258645 n).toNat).toNat

end

end A258649.P6810781893701137927

namespace A258649

/-- `A099306(A003415(A258645(n)))` -/
def P6810781893701137927.Spec : Prop :=
  ∀ n, P6810781893701137927.a n = A258649 n

end A258649

/-!
# A258650: Tenth arithmetic derivative of n.

The programs for A258650, the canonical program `A258650.P14977742307011664263` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258650 has offset 0).

The definition of A258650 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A258650.P14977742307011664263

`A258649(A003415(n))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A258650

/-- `A258649(A003415(n))` -/
def P14977742307011664263.Spec : Prop :=
  ∀ n, P14977742307011664263.a n = A258650 n

theorem P14977742307011664263.correct : P14977742307011664263.Spec := by
  intro n
  simp only [A258650]

end A258650

/-! ## A258650.P12382024630297072032

`A258649(A168036(n)+n)`
-/

namespace A258650.P12382024630297072032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258649 (A168036 n + (n : ℤ)).toNat

end

end A258650.P12382024630297072032

namespace A258650

/-- `A258649(A168036(n)+n)` -/
def P12382024630297072032.Spec : Prop :=
  ∀ n, P12382024630297072032.a n = A258650 n

end A258650

/-! ## A258650.P12293841373570226436

`A258649(A129283(n)-n)`
-/

namespace A258650.P12293841373570226436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258649 (A129283 n - (n : ℤ)).toNat

end

end A258650.P12293841373570226436

namespace A258650

/-- `A258649(A129283(n)-n)` -/
def P12293841373570226436.Spec : Prop :=
  ∀ n, P12293841373570226436.a n = A258650 n

end A258650

/-! ## A258650.P16723865550206523799

`A258649(∑{d}[n, A300251(#)])`
-/

namespace A258650.P16723865550206523799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258649 (∑ d ∈ Nat.divisors (f1 n), A300251 d).toNat

end

end A258650.P16723865550206523799

namespace A258650

/-- `A258649(∑{d}[n, A300251(#)])` -/
def P16723865550206523799.Spec : Prop :=
  ∀ n, P16723865550206523799.a n = A258650 n

end A258650

/-! ## A258650.P16211618769208058179

`A258648(A068346(n))`
-/

namespace A258650.P16211618769208058179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258648 (A068346 n).toNat

end

end A258650.P16211618769208058179

namespace A258650

/-- `A258648(A068346(n))` -/
def P16211618769208058179.Spec : Prop :=
  ∀ n, P16211618769208058179.a n = A258650 n

end A258650

/-! ## A258650.P7114371222822198853

`A258647(A099306(n))`
-/

namespace A258650.P7114371222822198853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258647 (A099306 n).toNat

end

end A258650.P7114371222822198853

namespace A258650

/-- `A258647(A099306(n))` -/
def P7114371222822198853.Spec : Prop :=
  ∀ n, P7114371222822198853.a n = A258650 n

end A258650

/-! ## A258650.P9406076281552821682

`A258646(A258644(n))`
-/

namespace A258650.P9406076281552821682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258646 (A258644 n).toNat

end

end A258650.P9406076281552821682

namespace A258650

/-- `A258646(A258644(n))` -/
def P9406076281552821682.Spec : Prop :=
  ∀ n, P9406076281552821682.a n = A258650 n

end A258650

/-! ## A258650.P11990899924753131209

`A258648(A258651(∑[n+3]))`
-/

namespace A258650.P11990899924753131209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258648 (A258651 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A258650.P11990899924753131209

namespace A258650

/-- `A258648(A258651(∑[n+3]))` -/
def P11990899924753131209.Spec : Prop :=
  ∀ n, P11990899924753131209.a n = A258650 n

end A258650

/-! ## A258650.P4095825982513224800

`A258645(A258645(n))`
-/

namespace A258650.P4095825982513224800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258645 (A258645 n).toNat

end

end A258650.P4095825982513224800

namespace A258650

/-- `A258645(A258645(n))` -/
def P4095825982513224800.Spec : Prop :=
  ∀ n, P4095825982513224800.a n = A258650 n

end A258650

/-!
# A258651: A(n,k) = n^(k) = k-th arithmetic derivative of n; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A258651, there is no canonical definition to state claims against.
-/

/-! ## A258651.P8674307150237348365

`∏{e}[A224024(n+1), A057357(#)]`
-/

namespace A258651.P8674307150237348365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A057357 (Nat.factorization (f1 n).natAbs p)

end

end A258651.P8674307150237348365

/-! ## A258651.P14624342691054643495

`C(A002262(n), A002024(A157109(n)))`
-/

namespace A258651.P14624342691054643495
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002262 n).toNat (A002024 (A157109 n).toNat).toNat

end

end A258651.P14624342691054643495

/-! ## A258651.P7254188180665064511

`C(A258850(n), A000188(A157109(n)))`
-/

namespace A258651.P7254188180665064511
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A258850 n).toNat (A000188 (A157109 n).toNat).toNat

end

end A258651.P7254188180665064511

/-! ## A258651.P7598119784338349437

`C(A258850(n), A043562(A291656(n)))`
-/

namespace A258651.P7598119784338349437
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A258850 n).toNat (A043562 (A291656 n).toNat).toNat

end

end A258651.P7598119784338349437

/-! ## A258651.P15913028286180807860

`C(A002262(n), A178487(A188586(n+1)))`
-/

namespace A258651.P15913028286180807860
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002262 n).toNat (A178487 (A188586 (n + 1)).toNat).toNat

end

end A258651.P15913028286180807860

/-!
# A258653: Suppose A103739(n)=(p^2 + q^2)/2 with p < q primes. The sequence gives values of q.

The programs for A258653, there is no canonical definition to state claims against.
-/

/-! ## A258653.P17358747817528055798

`A078908(A103739(n+1))`
-/

namespace A258653.P17358747817528055798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078908 (A103739 (n + 1)).toNat

end

end A258653.P17358747817528055798

/-! ## A258653.P11436210357195483882

`A078909(p?[A103739(n+1)])`
-/

namespace A258653.P11436210357195483882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078909 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A258653.P11436210357195483882

/-! ## A258653.P5412749191451310852

`A078908(p?[A143850(n+1)])`
-/

namespace A258653.P5412749191451310852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143850 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078908 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A258653.P5412749191451310852

/-! ## A258653.P2621218610729233207

`A078909(p?[A143850(n+1)])`
-/

namespace A258653.P2621218610729233207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143850 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078909 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A258653.P2621218610729233207

/-! ## A258653.P13042057339123880234

`A064876(2*A103739(n+1))`
-/

namespace A258653.P13042057339123880234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064876 (2 * A103739 (n + 1)).toNat

end

end A258653.P13042057339123880234

/-! ## A258653.P9522622605605612528

`A133388(2*A103739(n+1))`
-/

namespace A258653.P9522622605605612528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133388 (2 * A103739 (n + 1)).toNat

end

end A258653.P9522622605605612528

/-! ## A258653.P10978016802430870343

`A262689(2*A103739(n+1))`
-/

namespace A258653.P10978016802430870343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (2 * A103739 (n + 1)).toNat

end

end A258653.P10978016802430870343

/-! ## A258653.P6147287385657626966

`A133388(lcm(2, A103739(n+1)))`
-/

namespace A258653.P6147287385657626966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133388 (Int.lcm 2 (A103739 (n + 1)))

end

end A258653.P6147287385657626966

/-! ## A258653.P13734472489536958146

`A133388(2*p?[A143850(n+1)])`
-/

namespace A258653.P13734472489536958146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143850 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133388 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A258653.P13734472489536958146

/-! ## A258653.P2942788279999229862

`A262689(2*p?[A143850(n+1)])`
-/

namespace A258653.P2942788279999229862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143850 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A258653.P2942788279999229862

/-!
# A258654: Suppose A103739(n) = x^2 + y^2 with x < y. The sequence gives values of x.

The programs for A258654, there is no canonical definition to state claims against.
-/

/-! ## A258654.P4204111904682812854

`(A258653(n+1)-A258642(n+1))/2`
-/

namespace A258654.P4204111904682812854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258653 (n + 1) - A258642 (n + 1) : ℚ) / 2

end

end A258654.P4204111904682812854

/-! ## A258654.P8360845799169597203

`A064875(A103739(n+1))`
-/

namespace A258654.P8360845799169597203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064875 (A103739 (n + 1)).toNat

end

end A258654.P8360845799169597203

/-! ## A258654.P17785754144593953364

`A205790(p?[A143850(n+1)])`
-/

namespace A258654.P17785754144593953364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143850 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205790 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A258654.P17785754144593953364

/-! ## A258654.P1601504733385231445

`A205790(p?[floor(A045636(n+1)/2)])`
-/

namespace A258654.P1601504733385231445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A045636 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205790 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A258654.P1601504733385231445

/-! ## A258654.P14964899524664700343

`A205790(p?[floor(A214723(n+1)/2)])`
-/

namespace A258654.P14964899524664700343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A214723 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205790 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A258654.P14964899524664700343

/-! ## A258654.P11474413164191592190

`A133388(A103739(n+1))-A258642(n+1)`
-/

namespace A258654.P11474413164191592190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133388 (A103739 (n + 1)).toNat - A258642 (n + 1)

end

end A258654.P11474413164191592190

/-! ## A258654.P1549922416141186445

`A133388(p?[A143850(n+1)])-A258642(n+1)`
-/

namespace A258654.P1549922416141186445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143850 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133388 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - A258642 (n + 1)

end

end A258654.P1549922416141186445

/-! ## A258654.P6199003782821715176

`A262689(p?[A103739(n+1)])-A258642(n+1)`
-/

namespace A258654.P6199003782821715176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - A258642 (n + 1)

end

end A258654.P6199003782821715176

/-! ## A258654.P2778828211888136803

`A262689(p?[A143850(n+1)])-A258642(n+1)`
-/

namespace A258654.P2778828211888136803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143850 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - A258642 (n + 1)

end

end A258654.P2778828211888136803

/-! ## A258654.P7152021781262271605

`A257816(n+1)-A258642(n+1)`
-/

namespace A258654.P7152021781262271605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257816 (n + 1) - A258642 (n + 1)

end

end A258654.P7152021781262271605

/-!
# A258655: a(n) = A256357(n^2), where exp( Sum_{n>=1} A256357(n)*x^n/n ) = 1 + Sum_{n>=1} x^(n^2) + x^(2*n^2).

The programs for A258655, there is no canonical definition to state claims against.
-/

/-! ## A258655.P1271241853273362330

`A256357((n+1)²)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A258655.P1271241853273362330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256357 ((n + 1) ^ 2)

end

end A258655.P1271241853273362330

/-! ## A258655.P14780126560847500928

`or(1, A256357(∑[2*n+1]))`
-/

namespace A258655.P14780126560847500928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A256357 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A258655.P14780126560847500928

/-! ## A258655.P11871342626436001675

`and(-1, A256357(A000290(n+1)))`
-/

namespace A258655.P11871342626436001675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A256357 (A000290 (n + 1)).toNat)

end

end A258655.P11871342626436001675

/-! ## A258655.P11191218567391692291

`A007318(∑[n])*A256357(∑[n+1+n])`
-/

namespace A258655.P11191218567391692291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A256357 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A258655.P11191218567391692291

/-! ## A258655.P17968743712690880900

`A256357(∑[2*n+1])%A000040(∑[n+2])`
-/

namespace A258655.P17968743712690880900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256357 (∑ j ∈ Finset.range (n + 1), f1 j)) (A000040 (∑ j ∈ Finset.range (n + 1), f2 j))

end

end A258655.P17968743712690880900

/-!
# A258657: E.g.f. A(x) satisfies: A(x) = exp( Integral A(x)^2 * Integral 1/A(x)^6 dx dx ).

The programs for A258657, there is no canonical definition to state claims against.
-/

/-! ## A258657.P2595844975131224853

`∏[(A001221((2*n)!)^n-C(C(n, 2)+1, 2))%53]`
-/

namespace A258657.P2595844975131224853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001221 (Nat.factorial (2 * n)) ^ n - (Nat.choose (Nat.choose n 2 + 1) 2 : ℤ)) 53

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A258657.P2595844975131224853

/-!
# A258658: E.g.f. A(x) satisfies: A(x) = exp( Integral A(x)^3 * Integral 1/A(x)^9 dx dx ).

The programs for A258658, there is no canonical definition to state claims against.
-/

/-! ## A258658.P11435003935861659644

`A028310(A184314(2*(n+1))-n)`
-/

namespace A258658.P11435003935861659644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A184314 (2 * (n + 1)) - (n : ℤ)).toNat

end

end A258658.P11435003935861659644

/-!
# A258659: E.g.f. A(x) satisfies: A(x) = exp( Integral A(x)^(1/2) * Integral 1/A(x)^(3/2) dx dx ).

The programs for A258659, there is no canonical definition to state claims against.
-/

/-! ## A258659.P17995478743815678219

`3*A215523(a(n-1)+1)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A258659.P17995478743815678219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  3 * A215523 (a (n - 1) + 1).toNat

end

end A258659.P17995478743815678219

/-! ## A258659.P16586308420105566768

`A051801(A335867(n))`
-/

namespace A258659.P16586308420105566768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (A335867 n).toNat

end

end A258659.P16586308420105566768

/-!
# A258660: Numbers n such that the number of digits d in n is not prime and for each factor f of d the sum of the d/f digit groupings of size f is a square.

The programs for A258660, there is no canonical definition to state claims against.
-/

/-! ## A258660.P10617580262649248429

`A153745(n+1)²`
-/

namespace A258660.P10617580262649248429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153745 (n + 1) ^ 2

end

end A258660.P10617580262649248429

/-! ## A258660.P14604721870345007343

`A153745(n+1)^gcd(2, Δ[A158537(n)])`
-/

namespace A258660.P14604721870345007343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158537 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153745 (n + 1) ^ Int.gcd 2 (f1 (n + 1) - f1 n)

end

end A258660.P14604721870345007343

/-! ## A258660.P5861184515218124431

`A153745(n+1)^A001316(A001316(n))`
-/

namespace A258660.P5861184515218124431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153745 (n + 1) : ℚ) ^ (A001316 (A001316 n).toNat : ℤ)

end

end A258660.P5861184515218124431

/-! ## A258660.P9778252220061405664

`A153745(n+1)^A000122(A118881(n))`
-/

namespace A258660.P9778252220061405664
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153745 (n + 1) : ℚ) ^ (A000122 (A118881 n).toNat : ℤ)

end

end A258660.P9778252220061405664

/-! ## A258660.P4825430360890416503

`A153745(A000027(n+1))*A153745(n+1)`
-/

namespace A258660.P4825430360890416503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153745 (A000027 (n + 1)).toNat * A153745 (n + 1)

end

end A258660.P4825430360890416503

/-! ## A258660.P14932486284165831661

`A153745(n+1)^A001222(A006881(n+1))`
-/

namespace A258660.P14932486284165831661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153745 (n + 1) : ℚ) ^ (A001222 (A006881 (n + 1)).toNat : ℤ)

end

end A258660.P14932486284165831661

/-! ## A258660.P15213266840709708497

`A153745(n+1)^A044917(gcd(n+1, A158537(n+1))+1)`
-/

namespace A258660.P15213266840709708497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153745 (n + 1) : ℚ) ^ (A044917 (Int.gcd (n + 1 : ℤ) (A158537 (n + 1)) + 1) : ℤ)

end

end A258660.P15213266840709708497

/-! ## A258660.P11107621252642445247

`A153745(n+1)^A046523(A000040(n+1))`
-/

namespace A258660.P11107621252642445247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153745 (n + 1) : ℚ) ^ (A046523 (A000040 (n + 1)).toNat : ℤ)

end

end A258660.P11107621252642445247

/-! ## A258660.P1428599350189440279

`A153745(n+1)^A046523(A007528(n+1))`
-/

namespace A258660.P1428599350189440279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153745 (n + 1) : ℚ) ^ (A046523 (A007528 (n + 1)).toNat : ℤ)

end

end A258660.P1428599350189440279

/-! ## A258660.P11919934473175168803

`A153745(n+1)*A153745((n+1)%A153747(n+1))`
-/

namespace A258660.P11919934473175168803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153745 (n + 1) * A153745 (Int.tmod (n + 1 : ℤ) (A153747 (n + 1))).toNat

end

end A258660.P11919934473175168803

/-! ## A258660.P5356317269024509894

`A153745(n+1)%A153750(n+1)*A153745(n+1)`
-/

namespace A258660.P5356317269024509894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153745 (n + 1)) (A153750 (n + 1)) * A153745 (n + 1)

end

end A258660.P5356317269024509894

/-!
# A258663: Numbers n such that 9n-1 is prime.

The programs for A258663, the canonical program `A258663.P13409284266199840843` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258663 has offset 1).

The definition of A258663 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138918, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A258663.P13409284266199840843

`A138918(n+1)*2`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A258663

/-- `A138918(n+1)*2` -/
def P13409284266199840843.Spec : Prop :=
  ∀ n, P13409284266199840843.a n = A258663 (n + 1)

theorem P13409284266199840843.correct : P13409284266199840843.Spec := by
  intro n
  simp only [A258663, Nat.add_sub_cancel]

end A258663

/-! ## A258663.P9842056113485215358

`(A061242(n+1)+1)/9`
-/

namespace A258663.P9842056113485215358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061242 (n + 1) + 1 : ℚ) / 9

end

end A258663.P9842056113485215358

namespace A258663

/-- `(A061242(n+1)+1)/9` -/
def P9842056113485215358.Spec : Prop :=
  ∀ n, P9842056113485215358.a n = (A258663 (n + 1) : ℚ)

end A258663

/-! ## A258663.P5151055293119480710

`ceil(p?[9*n-1]/9)`
-/

namespace A258663.P5151055293119480710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 9⌉

end

end A258663.P5151055293119480710

namespace A258663

/-- `ceil(p?[9*n-1]/9)` -/
def P5151055293119480710.Spec : Prop :=
  ∀ n, P5151055293119480710.a n = A258663 (n + 1)

end A258663

/-! ## A258663.P5880916758362327589

`round(p?[9*n-1]/9)`
-/

namespace A258663.P5880916758362327589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 9)

end

end A258663.P5880916758362327589

namespace A258663

/-- `round(p?[9*n-1]/9)` -/
def P5880916758362327589.Spec : Prop :=
  ∀ n, P5880916758362327589.a n = A258663 (n + 1)

end A258663

/-! ## A258663.P14242883209002043638

`(p?[9*n-1]+1)/9`
-/

namespace A258663.P14242883209002043638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * n : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1 : ℚ) / 9

end

end A258663.P14242883209002043638

namespace A258663

/-- `(p?[9*n-1]+1)/9` -/
def P14242883209002043638.Spec : Prop :=
  ∀ n, P14242883209002043638.a n = (A258663 (n + 1) : ℚ)

end A258663

/-! ## A258663.P11796290576747567584

`∑{d}[p?[9*n-1], #/9]`
-/

namespace A258663.P11796290576747567584
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℚ) / 9

end

end A258663.P11796290576747567584

namespace A258663

/-- `∑{d}[p?[9*n-1], #/9]` -/
def P11796290576747567584.Spec : Prop :=
  ∀ n, P11796290576747567584.a n = (A258663 (n + 1) : ℚ)

end A258663

/-! ## A258663.P6968216896080475304

`2*(A246965(n+1)-1)`
-/

namespace A258663.P6968216896080475304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A246965 (n + 1) - 1)

end

end A258663.P6968216896080475304

namespace A258663

/-- `2*(A246965(n+1)-1)` -/
def P6968216896080475304.Spec : Prop :=
  ∀ n, P6968216896080475304.a n = A258663 (n + 1)

theorem P6968216896080475304.correct : P6968216896080475304.Spec := by
  intro n
  simp only [A258663, Nat.add_sub_cancel, A258663.P6968216896080475304.a, A258663.P13409284266199840843.a, A138918, A138918.P14615723305140985106.f1, A138918.P14615723305140985106.a, A246965, A246965.P5539066629223825607.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A258663

/-! ## A258663.P12564707843275635093

`A138918(A020725(n+1)-1)+A138918(n+1)`
-/

namespace A258663.P12564707843275635093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138918 (A020725 (n + 1) - 1).toNat + A138918 (n + 1)

end

end A258663.P12564707843275635093

namespace A258663

/-- `A138918(A020725(n+1)-1)+A138918(n+1)` -/
def P12564707843275635093.Spec : Prop :=
  ∀ n, P12564707843275635093.a n = A258663 (n + 1)

end A258663

/-! ## A258663.P1818000171088339696

`A004277(A138918(n+1))`
-/

namespace A258663.P1818000171088339696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A138918 (n + 1)).toNat

end

end A258663.P1818000171088339696

namespace A258663

/-- `A004277(A138918(n+1))` -/
def P1818000171088339696.Spec : Prop :=
  ∀ n, P1818000171088339696.a n = A258663 (n + 1)

end A258663

/-! ## A258663.P7328422544585477868

`A004275(A246965(n+1))`
-/

namespace A258663.P7328422544585477868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A246965 (n + 1)).toNat

end

end A258663.P7328422544585477868

namespace A258663

/-- `A004275(A246965(n+1))` -/
def P7328422544585477868.Spec : Prop :=
  ∀ n, P7328422544585477868.a n = A258663 (n + 1)

end A258663

/-! ## A258663.P2706543942123952968

`A246965(n+1)+A023443(A246965(n+1)-1)`
-/

namespace A258663.P2706543942123952968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246965 (n + 1) + A023443 (A246965 (n + 1) - 1).toNat

end

end A258663.P2706543942123952968

namespace A258663

/-- `A246965(n+1)+A023443(A246965(n+1)-1)` -/
def P2706543942123952968.Spec : Prop :=
  ∀ n, P2706543942123952968.a n = A258663 (n + 1)

end A258663

/-! ## A258663.P611248247686062051

`eq[1, A001222(abs(1-9*n))]`
-/

namespace A258663.P611248247686062051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 |1 - (9 * n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A258663.P611248247686062051

namespace A258663

/-- `eq[1, A001222(abs(1-9*n))]` -/
def P611248247686062051.Spec : Prop :=
  ∀ n, (P611248247686062051.a n : ℤ) = A258663 (n + 1)

end A258663

/-! ## A258663.P12475412792229649815

`eq[2, A000005(abs(1-9*n))]`
-/

namespace A258663.P12475412792229649815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 |1 - (9 * n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A258663.P12475412792229649815

namespace A258663

/-- `eq[2, A000005(abs(1-9*n))]` -/
def P12475412792229649815.Spec : Prop :=
  ∀ n, (P12475412792229649815.a n : ℤ) = A258663 (n + 1)

end A258663

/-! ## A258663.P15714819108914379114

`lt[A000005(and(1, n+1)+9*n+8), 3]+1`
-/

namespace A258663.P15714819108914379114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.land 1 (n + 1) + (9 * n + 8))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A258663.P15714819108914379114

namespace A258663

/-- `lt[A000005(and(1, n+1)+9*n+8), 3]+1` -/
def P15714819108914379114.Spec : Prop :=
  ∀ n, (P15714819108914379114.a n : ℤ) = A258663 (n + 1)

end A258663

/-! ## A258663.P2497711873350806042

`lt[A000005(abs(2-8*n-n)+1), A157532(n+1)]`
-/

namespace A258663.P2497711873350806042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (|2 - (8 * n : ℤ) - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157532 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A258663.P2497711873350806042

namespace A258663

/-- `lt[A000005(abs(2-8*n-n)+1), A157532(n+1)]` -/
def P2497711873350806042.Spec : Prop :=
  ∀ n, (P2497711873350806042.a n : ℤ) = A258663 (n + 1)

end A258663

/-! ## A258663.P16164726204095778217

`A143051(A138918(n+1)+A138918(n+1)+1)`
-/

namespace A258663.P16164726204095778217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143051 (A138918 (n + 1) + (A138918 (n + 1) + 1)).toNat

end

end A258663.P16164726204095778217

namespace A258663

/-- `A143051(A138918(n+1)+A138918(n+1)+1)` -/
def P16164726204095778217.Spec : Prop :=
  ∀ n, P16164726204095778217.a n = A258663 (n + 1)

end A258663

/-! ## A258663.P7887946723875379027

`A014681(A138918(n+1)+A138918(n+1)-1)`
-/

namespace A258663.P7887946723875379027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A138918 (n + 1) + (A138918 (n + 1) - 1)).toNat

end

end A258663.P7887946723875379027

namespace A258663

/-- `A014681(A138918(n+1)+A138918(n+1)-1)` -/
def P7887946723875379027.Spec : Prop :=
  ∀ n, P7887946723875379027.a n = A258663 (n + 1)

end A258663

/-! ## A258663.P10590355916247992859

`record[A003417(A024898(n+1)-1)]`
-/

namespace A258663.P10590355916247992859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003417 (A024898 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258663.P10590355916247992859

namespace A258663

/-- `record[A003417(A024898(n+1)-1)]` -/
def P10590355916247992859.Spec : Prop :=
  ∀ n, P10590355916247992859.a n = A258663 (n + 1)

end A258663

/-! ## A258663.P664104503846774048

`eq[2, A001222(Δ[(3*n+1)²]+1)]+1`
-/

namespace A258663.P664104503846774048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((f3 (n + 1) : ℤ) - (f3 n : ℤ) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A258663.P664104503846774048

namespace A258663

/-- `eq[2, A001222(Δ[(3*n+1)²]+1)]+1` -/
def P664104503846774048.Spec : Prop :=
  ∀ n, (P664104503846774048.a n : ℤ) = A258663 (n + 1)

end A258663

/-! ## A258663.P14897271235029724917

`record[(n+2)%A014963(9*n+17)]`
-/

namespace A258663.P14897271235029724917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A014963 (9 * n + 17))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258663.P14897271235029724917

namespace A258663

/-- `record[(n+2)%A014963(9*n+17)]` -/
def P14897271235029724917.Spec : Prop :=
  ∀ n, P14897271235029724917.a n = A258663 (n + 1)

end A258663

/-!
# A258664: A total of n married couples, including a mathematician M and his wife, are to be seated at the 2n chairs around a circular table, with no man seated next to his wife. After the ladies are seated at every other chair, M is the first man allowed to choose one of the remaining chairs. The sequence gives the number of ways of seating the other men, with no man seated next to his wife, if M chooses the chair that is 3 seats clockwise from his wife's chair.

The programs for A258664, there is no canonical definition to state claims against.
-/

/-! ## A258664.P7759548653913992694

`A000270(n-1)+a(n-1)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A258664.P7759548653913992694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  A000270 (n - 1) + a (n - 1)

end

end A258664.P7759548653913992694

/-! ## A258664.P4148966436533116674

`A258665(n+3)-A127548(n+2)`
-/

namespace A258664.P4148966436533116674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258665 (n + 3) - A127548 (n + 2)

end

end A258664.P4148966436533116674

/-! ## A258664.P4541025741015864951

`∑[A335391(∑[n]+1)]+1`
-/

namespace A258664.P4541025741015864951
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335391 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A258664.P4541025741015864951

/-! ## A258664.P10916670950596216469

`A008615(A324366(n)+A051295(n))`
-/

namespace A258664.P10916670950596216469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A324366 n + A051295 n).toNat

end

end A258664.P10916670950596216469

/-!
# A258665: A total of n married couples, including a mathematician M and his wife, are to be seated at the 2n chairs around a circular table, with no man seated next to his wife. After the ladies are seated at every other chair, M is the first man allowed to choose one of the remaining chairs. The sequence gives the number of ways of seating the other men, with no man seated next to his wife, if M chooses the chair that is 5 seats clockwise from his wife's chair.

The programs for A258665, there is no canonical definition to state claims against.
-/

/-! ## A258665.P15531183935529293006

`A078480(n)-A078461(A179596(n))`
-/

namespace A258665.P15531183935529293006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078480 n - A078461 (A179596 n).toNat

end

end A258665.P15531183935529293006

/-! ## A258665.P689618804167943627

`A078480(n)-A267813(A121076(n))`
-/

namespace A258665.P689618804167943627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078480 n - A267813 (A121076 n).toNat

end

end A258665.P689618804167943627

/-! ## A258665.P8293954381765615756

`A078480(n)-A342005(A055790(n))`
-/

namespace A258665.P8293954381765615756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078480 n - A342005 (A055790 n).toNat

end

end A258665.P8293954381765615756

/-! ## A258665.P440250893158631746

`A078480(n)-A333330(A078481(n))`
-/

namespace A258665.P440250893158631746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078480 n - A333330 (A078481 n).toNat

end

end A258665.P440250893158631746

/-!
# A258666: A total of n married couples, including a mathematician M and his wife, are to be seated at the 2n chairs around a circular table, with no man seated next to his wife. After the ladies are seated at every other chair, M is the first man allowed to choose one of the remaining chairs. The sequence gives the number of ways of seating the other men, with no man seated next to his wife, if M chooses the chair that is 7 seats clockwise from his wife's chair.

The programs for A258666, there is no canonical definition to state claims against.
-/

/-! ## A258666.P17441281344709156625

`A078480(n)-A360675(A121420(n))`
-/

namespace A258666.P17441281344709156625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078480 n - A360675 (A121420 n).toNat

end

end A258666.P17441281344709156625

/-! ## A258666.P2152032767976154919

`A072786(n)+A023443(A078480(n))`
-/

namespace A258666.P2152032767976154919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072786 n + A023443 (A078480 n).toNat

end

end A258666.P2152032767976154919

/-! ## A258666.P4958482443707633639

`A258649(n)+A231890(A258667(n+1))`
-/

namespace A258666.P4958482443707633639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258649 n + A231890 (A258667 (n + 1)).toNat

end

end A258666.P4958482443707633639

/-! ## A258666.P16812604403010465617

`A258650(n)+A231890(A258667(n+1))`
-/

namespace A258666.P16812604403010465617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258650 n + A231890 (A258667 (n + 1)).toNat

end

end A258666.P16812604403010465617

/-!
# A258667: A total of n married couples, including a mathematician M and his wife, are to be seated at the 2n chairs around a circular table, with no man seated next to his wife. After the ladies are seated at every other chair, M is the first man allowed to choose one of the remaining chairs. The sequence gives the number of ways of seating the other men, with no man seated next to his wife, if M chooses the chair that is 9 seats clockwise from his wife's chair.

The programs for A258667, there is no canonical definition to state claims against.
-/

/-! ## A258667.P13082294731364517210

`A258665(C(A258209(n), n))`
-/

namespace A258667.P13082294731364517210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258665 (Nat.choose (A258209 n).toNat n)

end

end A258667.P13082294731364517210

/-! ## A258667.P14668510618895345499

`A258665(C(A023758(n+1), n))`
-/

namespace A258667.P14668510618895345499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258665 (Nat.choose (A023758 (n + 1)).toNat n)

end

end A258667.P14668510618895345499

/-! ## A258667.P5382134399876416650

`A258665(C(A334274(n+1), n))`
-/

namespace A258667.P5382134399876416650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258665 (Nat.choose (A334274 (n + 1)).toNat n)

end

end A258667.P5382134399876416650

/-! ## A258667.P4919142637181762378

`A198517(n!)*A258665(n+1)`
-/

namespace A258667.P4919142637181762378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198517 (Nat.factorial n) * A258665 (n + 1)

end

end A258667.P4919142637181762378

/-!
# A258668: Number of partitions of (n-1)! into parts that are at most n.

The programs for A258668, there is no canonical definition to state claims against.
-/

/-! ## A258668.P6986448469533507208

`A120982(a(n-1))` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A258668.P6986448469533507208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 2] fun n a =>
  A120982 (a (n - 1)).toNat

end

end A258668.P6986448469533507208

/-! ## A258668.P16030107853115111654

`A289547(a(n-1)+1)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A258668.P16030107853115111654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 2] fun n a =>
  A289547 (a (n - 1) + 1).toNat

end

end A258668.P16030107853115111654

/-!
# A258669: Number of partitions of 2*n! into parts that are at most n.

The programs for A258669, there is no canonical definition to state claims against.
-/

/-! ## A258669.P3157003312168170804

`ceil(sqrt(A359067(2^n)))`
-/

namespace A258669.P3157003312168170804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A359067 (2 ^ n) : ℝ)⌉

end

end A258669.P3157003312168170804

/-!
# A258672: Number of partitions of n*2^n into parts that are at most n.

The programs for A258672, there is no canonical definition to state claims against.
-/

/-! ## A258672.P13574297079571104053

`A241314(A060182(n))-1`
-/

namespace A258672.P13574297079571104053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241314 (A060182 n).toNat - 1

end

end A258672.P13574297079571104053

/-!
# A258673: A total of n married couples, including a mathematician M and his wife, are to be seated at the 2n chairs around a circular table, with no man seated next to his wife. After the ladies are seated at every other chair, M is the first man allowed to choose one of the remaining chairs. The sequence gives the number of ways of seating the other men, with no man seated next to his wife, if M chooses the chair that is 11 seats clockwise from his wife's chair.

The programs for A258673, there is no canonical definition to state claims against.
-/

/-! ## A258673.P15055948607453324013

`A109785(A130275(n))*A152467(n)`
-/

namespace A258673.P15055948607453324013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109785 (A130275 n).toNat * A152467 n

end

end A258673.P15055948607453324013

/-! ## A258673.P11802651703930216092

`A105518(n)*A276798(A202213(n))`
-/

namespace A258673.P11802651703930216092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105518 n * A276798 (A202213 n).toNat

end

end A258673.P11802651703930216092

/-! ## A258673.P11630196936561900071

`A004525(A003480(n))%A293588(n)`
-/

namespace A258673.P11630196936561900071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004525 (A003480 n).toNat) (A293588 n)

end

end A258673.P11630196936561900071

/-! ## A258673.P6484007345029341350

`A001403(n+1)*A109785(A130275(n))`
-/

namespace A258673.P6484007345029341350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001403 (n + 1) * A109785 (A130275 n).toNat

end

end A258673.P6484007345029341350

/-!
# A258674: Number of (n+2) X (1+2) 0..1 arrays with no 3 x 3 subblock diagonal sum equal to the antidiagonal sum.

The programs for A258674, the canonical program `A258674.P16251848882729225083` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258674 has offset 1).

The definition of A258674 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A258674.P16251848882729225083

`2^(n+3)*A185790(n+2)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A258674

/-- `2^(n+3)*A185790(n+2)` -/
def P16251848882729225083.Spec : Prop :=
  ∀ n, P16251848882729225083.a n = A258674 (n + 1)

theorem P16251848882729225083.correct : P16251848882729225083.Spec := by
  intro n
  simp only [A258674, Nat.add_sub_cancel]

end A258674

/-! ## A258674.P4427405026580048631

`A000079(n+3)*A185798(A167499(n)-4)`
-/

namespace A258674.P4427405026580048631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 3) * A185798 (A167499 n - 4).toNat

end

end A258674.P4427405026580048631

namespace A258674

/-- `A000079(n+3)*A185798(A167499(n)-4)` -/
def P4427405026580048631.Spec : Prop :=
  ∀ n, P4427405026580048631.a n = A258674 (n + 1)

end A258674

/-! ## A258674.P17823029152145810685

`A000079(n+3)*A185798(A000217(n+2))`
-/

namespace A258674.P17823029152145810685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 3) * A185798 (A000217 (n + 2)).toNat

end

end A258674.P17823029152145810685

namespace A258674

/-- `A000079(n+3)*A185798(A000217(n+2))` -/
def P17823029152145810685.Spec : Prop :=
  ∀ n, P17823029152145810685.a n = A258674 (n + 1)

end A258674

/-! ## A258674.P4637096476154467581

`A258681(∑[n]+1)`
-/

namespace A258674.P4637096476154467581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258681 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A258674.P4637096476154467581

namespace A258674

/-- `A258681(∑[n]+1)` -/
def P4637096476154467581.Spec : Prop :=
  ∀ n, P4637096476154467581.a n = A258674 (n + 1)

end A258674

/-! ## A258674.P8614160224499919321

`lcm(2, A258681(A000124(n)))`
-/

namespace A258674.P8614160224499919321
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A258681 (A000124 n).toNat)

end

end A258674.P8614160224499919321

namespace A258674

/-- `lcm(2, A258681(A000124(n)))` -/
def P8614160224499919321.Spec : Prop :=
  ∀ n, (P8614160224499919321.a n : ℤ) = A258674 (n + 1)

end A258674

/-!
# A258675: Number of (n+2) X (2+2) 0..1 arrays with no 3 x 3 subblock diagonal sum equal to the antidiagonal sum.

The programs for A258675, the canonical program `A258675.P11136103461247616781` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258675 has offset 1).

The definition of A258675 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A258675.P11136103461247616781

`A185790(n+2)²`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A258675

/-- `A185790(n+2)²` -/
def P11136103461247616781.Spec : Prop :=
  ∀ n, P11136103461247616781.a n = A258675 (n + 1)

theorem P11136103461247616781.correct : P11136103461247616781.Spec := by
  intro n
  simp only [A258675, Nat.add_sub_cancel]

end A258675

/-! ## A258675.P16320070274591563697

`A258676(n+1)/A258677(n+1)*A258676(n+1)`
-/

namespace A258675.P16320070274591563697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258676 (n + 1) : ℚ) / (A258677 (n + 1) : ℚ) * (A258676 (n + 1) : ℚ)

end

end A258675.P16320070274591563697

namespace A258675

/-- `A258676(n+1)/A258677(n+1)*A258676(n+1)` -/
def P16320070274591563697.Spec : Prop :=
  ∀ n, P16320070274591563697.a n = (A258675 (n + 1) : ℚ)

end A258675

/-! ## A258675.P6498262268178954816

`A258676(n+1)²/A258677(n+1)`
-/

namespace A258675.P6498262268178954816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258676 (n + 1) ^ 2 : ℚ) / (A258677 (n + 1) : ℚ)

end

end A258675.P6498262268178954816

namespace A258675

/-- `A258676(n+1)²/A258677(n+1)` -/
def P6498262268178954816.Spec : Prop :=
  ∀ n, P6498262268178954816.a n = (A258675 (n + 1) : ℚ)

end A258675

/-! ## A258675.P5228306140221270865

`A185798(∑[n+1]+1)²`
-/

namespace A258675.P5228306140221270865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185798 (∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 2

end

end A258675.P5228306140221270865

namespace A258675

/-- `A185798(∑[n+1]+1)²` -/
def P5228306140221270865.Spec : Prop :=
  ∀ n, P5228306140221270865.a n = A258675 (n + 1)

end A258675

/-! ## A258675.P3794229196509822968

`record[A185798(A106247(n+1))²]`
-/

namespace A258675.P3794229196509822968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185798 (A106247 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258675.P3794229196509822968

namespace A258675

/-- `record[A185798(A106247(n+1))²]` -/
def P3794229196509822968.Spec : Prop :=
  ∀ n, P3794229196509822968.a n = A258675 (n + 1)

end A258675

/-!
# A258676: Number of (n+2)X(3+2) 0..1 arrays with no 3x3 subblock diagonal sum equal to the antidiagonal sum.

The programs for A258676, there is no canonical definition to state claims against.
-/

/-! ## A258676.P1617296185021984839

`sqrt(A258675(n+1))*sqrt(A258677(n+1))`
-/

namespace A258676.P1617296185021984839
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A258675 (n + 1) : ℝ) * Real.sqrt (A258677 (n + 1) : ℝ)

end

end A258676.P1617296185021984839

/-! ## A258676.P5000741883219230939

`sqrt(A258675(n+1)*A258677(n+1))`
-/

namespace A258676.P5000741883219230939
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A258675 (n + 1) * A258677 (n + 1) : ℝ)

end

end A258676.P5000741883219230939

/-! ## A258676.P11732651756438418994

`A258681(∑[n+2]+4)`
-/

namespace A258676.P11732651756438418994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258681 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A258676.P11732651756438418994

/-! ## A258676.P11369936831602207939

`lcm(2, A258681(A167614(n+1)))`
-/

namespace A258676.P11369936831602207939
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A258681 (A167614 (n + 1)).toNat)

end

end A258676.P11369936831602207939

/-! ## A258676.P8200234802518147882

`record[A010054(n+1)*A258681(n+4)]`
-/

namespace A258676.P8200234802518147882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 1) * A258681 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258676.P8200234802518147882

/-!
# A258677: Number of (n+2)X(4+2) 0..1 arrays with no 3x3 subblock diagonal sum equal to the antidiagonal sum.

The programs for A258677, there is no canonical definition to state claims against.
-/

/-! ## A258677.P15574991330386443659

`A258676(n+1)/A258675(n+1)*A258676(n+1)`
-/

namespace A258677.P15574991330386443659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258676 (n + 1) : ℚ) / (A258675 (n + 1) : ℚ) * (A258676 (n + 1) : ℚ)

end

end A258677.P15574991330386443659

/-! ## A258677.P10569642956081233469

`A258676(n+1)²/A258675(n+1)`
-/

namespace A258677.P10569642956081233469
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258676 (n + 1) ^ 2 : ℚ) / (A258675 (n + 1) : ℚ)

end

end A258677.P10569642956081233469

/-! ## A258677.P1583436711886453490

`A258678(n+1)/A258679(n+1)*A258678(n+1)`
-/

namespace A258677.P1583436711886453490
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258678 (n + 1) : ℚ) / (A258679 (n + 1) : ℚ) * (A258678 (n + 1) : ℚ)

end

end A258677.P1583436711886453490

/-! ## A258677.P2207302802789381247

`A258681(A374004(n+1))`
-/

namespace A258677.P2207302802789381247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258681 (A374004 (n + 1)).toNat

end

end A258677.P2207302802789381247

/-! ## A258677.P13744206498285003112

`A258681(A167614(n+2)+1)`
-/

namespace A258677.P13744206498285003112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258681 (A167614 (n + 2) + 1).toNat

end

end A258677.P13744206498285003112

/-!
# A258678: Number of (n+2)X(5+2) 0..1 arrays with no 3x3 subblock diagonal sum equal to the antidiagonal sum.

The programs for A258678, there is no canonical definition to state claims against.
-/

/-! ## A258678.P5910100614452962653

`sqrt(A258677(n+1)*A258679(n+1))`
-/

namespace A258678.P5910100614452962653
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A258677 (n + 1) * A258679 (n + 1) : ℝ)

end

end A258678.P5910100614452962653

/-! ## A258678.P11180619994563742835

`A258681(A374005(n+1))`
-/

namespace A258678.P11180619994563742835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258681 (A374005 (n + 1)).toNat

end

end A258678.P11180619994563742835

/-! ## A258678.P7754375465796742831

`A258681(A167499(n+3))`
-/

namespace A258678.P7754375465796742831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258681 (A167499 (n + 3)).toNat

end

end A258678.P7754375465796742831

/-! ## A258678.P971087422070844412

`A258681(A155212(n)+13)`
-/

namespace A258678.P971087422070844412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258681 (A155212 n + 13).toNat

end

end A258678.P971087422070844412

/-! ## A258678.P16055148234517729857

`A258681(A056000(n)+15)`
-/

namespace A258678.P16055148234517729857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258681 (A056000 n + 15).toNat

end

end A258678.P16055148234517729857

/-!
# A258679: Number of (n+2)X(6+2) 0..1 arrays with no 3x3 subblock diagonal sum equal to the antidiagonal sum.

The programs for A258679, there is no canonical definition to state claims against.
-/

/-! ## A258679.P11094318558813909793

`A258678(n+1)/A258677(n+1)*A258678(n+1)`
-/

namespace A258679.P11094318558813909793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258678 (n + 1) : ℚ) / (A258677 (n + 1) : ℚ) * (A258678 (n + 1) : ℚ)

end

end A258679.P11094318558813909793

/-! ## A258679.P17087854553509996324

`A258681(A374007(n+1))`
-/

namespace A258679.P17087854553509996324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258681 (A374007 (n + 1)).toNat

end

end A258679.P17087854553509996324

/-! ## A258679.P15897323756447633398

`A258681(eq[5, A193592(n)])`
-/

namespace A258679.P15897323756447633398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258681 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258679.P15897323756447633398

/-! ## A258679.P10981835051707051008

`A258681(eq[8, A258709(n)])`
-/

namespace A258679.P10981835051707051008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258681 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258679.P10981835051707051008

/-! ## A258679.P13414817284506054405

`A258681(A056115(n+1)+10)`
-/

namespace A258679.P13414817284506054405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258681 (A056115 (n + 1) + 10).toNat

end

end A258679.P13414817284506054405

/-!
# A258680: Number of (n+2)X(7+2) 0..1 arrays with no 3x3 subblock diagonal sum equal to the antidiagonal sum.

The programs for A258680, there is no canonical definition to state claims against.
-/

/-! ## A258680.P15614174651749484160

`A258681(A374008(n+1))`
-/

namespace A258680.P15614174651749484160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258681 (A374008 (n + 1)).toNat

end

end A258680.P15614174651749484160

/-! ## A258680.P17149387389102216271

`A258681(eq[8, A131818(n+1)])`
-/

namespace A258680.P17149387389102216271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258681 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258680.P17149387389102216271

/-! ## A258680.P2883891432567444938

`A258681(A055999(n+4))`
-/

namespace A258680.P2883891432567444938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258681 (A055999 (n + 4)).toNat

end

end A258680.P2883891432567444938

/-! ## A258680.P16381684470096196947

`A258681(eq[6, A193592(n)])`
-/

namespace A258680.P16381684470096196947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258681 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258680.P16381684470096196947

/-! ## A258680.P12750831135760516566

`A258681(eq[10, A185782(n+1)])`
-/

namespace A258680.P12750831135760516566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258681 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258680.P12750831135760516566

/-!
# A258682: Remove from n^2 all digits of n from left to right, in decimal representation.

The programs for A258682, there is no canonical definition to state claims against.
-/

/-! ## A258682.P7720417912000797163

`A387070(n)%A230713(n+1)`
-/

namespace A258682.P7720417912000797163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A387070 n) (A230713 (n + 1))

end

end A258682.P7720417912000797163

/-! ## A258682.P13163663807845439894

`A083888(A246256(n))*A387070(n)`
-/

namespace A258682.P13163663807845439894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083888 (A246256 n).toNat * A387070 n

end

end A258682.P13163663807845439894

/-! ## A258682.P3902228713327594285

`A116891(A284577(n))*A387070(n)`
-/

namespace A258682.P3902228713327594285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116891 (A284577 n).toNat * A387070 n

end

end A258682.P3902228713327594285

/-! ## A258682.P9554193222734209784

`A387070(n)^A116891(A090423(n+1))`
-/

namespace A258682.P9554193222734209784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A387070 n : ℚ) ^ (A116891 (A090423 (n + 1)).toNat : ℤ)

end

end A258682.P9554193222734209784

/-! ## A258682.P9488368757284038228

`A387070(n)%A363500(A001897(n))`
-/

namespace A258682.P9488368757284038228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A387070 n) (A363500 (A001897 n).toNat)

end

end A258682.P9488368757284038228

/-!
# A258683: Total number of permutations on {1,2,...,n} that have a unique longest increasing subsequence and a unique longest decreasing subsequence.

The programs for A258683, there is no canonical definition to state claims against.
-/

/-! ## A258683.P1446666983185042216

`A279327(lcm(4, a(n-1))+n)` with `a(0)=1`
-/

namespace A258683.P1446666983185042216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A279327 (Int.lcm 4 (a (n - 1)) + n)

end

end A258683.P1446666983185042216

/-! ## A258683.P13400528074327032035

`A097569(ceil(3*2^(n-3)))-n`
-/

namespace A258683.P13400528074327032035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097569 ⌈3 * (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ)⌉.toNat - (n : ℤ)

end

end A258683.P13400528074327032035

/-! ## A258683.P5066474060208597281

`A239500((n-4)*floor(3/acot(n))+13)`
-/

namespace A258683.P5066474060208597281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239500 (((n : ℤ) - 4) * ⌊3 / SequenceMachineLib.acot (n : ℝ)⌋ + 13).toNat

end

end A258683.P5066474060208597281

/-!
# A258684: a(n) = A041105(4n+1).

The programs for A258684, the canonical program `A258684.P10413141013243438134` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258684 has offset 0).

The definition of A258684 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A258684.P1162437662739553691

`62*a(n-1)-a(n-2)` with `a(0)=1, a(1)=63`
-/

namespace A258684.P1162437662739553691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 63] fun n a =>
  62 * a (n - 1) - a (n - 2)

end

end A258684.P1162437662739553691

namespace A258684

/-- `62*a(n-1)-a(n-2)` -/
def P1162437662739553691.Spec : Prop :=
  ∀ n, P1162437662739553691.a n = A258684 n

end A258684

/-! ## A258684.P10413141013243438134

`A041105(4*n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A258684

/-- `A041105(4*n+1)` -/
def P10413141013243438134.Spec : Prop :=
  ∀ n, P10413141013243438134.a n = A258684 n

theorem P10413141013243438134.correct : P10413141013243438134.Spec := by
  intro n
  simp only [A258684]

end A258684

/-! ## A258684.P3202751943931447770

`A001090(Δ[n²])`
-/

namespace A258684.P3202751943931447770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001090 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A258684.P3202751943931447770

namespace A258684

/-- `A001090(Δ[n²])` -/
def P3202751943931447770.Spec : Prop :=
  ∀ n, P3202751943931447770.a n = A258684 n

end A258684

/-! ## A258684.P10794395918585539873

`record[A001090(xor(1, n))]`
-/

namespace A258684.P10794395918585539873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001090 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258684.P10794395918585539873

namespace A258684

/-- `record[A001090(xor(1, n))]` -/
def P10794395918585539873.Spec : Prop :=
  ∀ n, P10794395918585539873.a n = A258684 n

end A258684

/-! ## A258684.P12743327368989688676

`A177187(4*n+2)`
-/

namespace A258684.P12743327368989688676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177187 (4 * n + 2)

end

end A258684.P12743327368989688676

namespace A258684

/-- `A177187(4*n+2)` -/
def P12743327368989688676.Spec : Prop :=
  ∀ n, P12743327368989688676.a n = A258684 n

end A258684

/-! ## A258684.P1858289052757965958

`A291033(2*n)/6`
-/

namespace A258684.P1858289052757965958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291033 (2 * n) : ℚ) / 6

end

end A258684.P1858289052757965958

namespace A258684

/-- `A291033(2*n)/6` -/
def P1858289052757965958.Spec : Prop :=
  ∀ n, P1858289052757965958.a n = (A258684 n : ℚ)

end A258684

/-! ## A258684.P7268696570988702643

`∑[A086903(2*n)]-1`
-/

namespace A258684.P7268696570988702643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086903 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A258684.P7268696570988702643

namespace A258684

/-- `∑[A086903(2*n)]-1` -/
def P7268696570988702643.Spec : Prop :=
  ∀ n, P7268696570988702643.a n = A258684 n

end A258684

/-! ## A258684.P18189815227685671722

`A136325(2*n+1)/3`
-/

namespace A258684.P18189815227685671722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136325 (2 * n + 1) : ℚ) / 3

end

end A258684.P18189815227685671722

namespace A258684

/-- `A136325(2*n+1)/3` -/
def P18189815227685671722.Spec : Prop :=
  ∀ n, P18189815227685671722.a n = (A258684 n : ℚ)

end A258684

/-! ## A258684.P10391843993518417262

`A273053(2*(n+1))/4`
-/

namespace A258684.P10391843993518417262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A273053 (2 * (n + 1)) : ℚ) / 4

end

end A258684.P10391843993518417262

namespace A258684

/-- `A273053(2*(n+1))/4` -/
def P10391843993518417262.Spec : Prop :=
  ∀ n, P10391843993518417262.a n = (A258684 n : ℚ)

end A258684

/-! ## A258684.P8371526359011320727

`A041023(3*n+n+1)`
-/

namespace A258684.P8371526359011320727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041023 (3 * n + (n + 1))

end

end A258684.P8371526359011320727

namespace A258684

/-- `A041023(3*n+n+1)` -/
def P8371526359011320727.Spec : Prop :=
  ∀ n, P8371526359011320727.a n = A258684 n

end A258684

/-!
# A258685: Number of (n+3) X (1+3) 0..1 arrays with no 4 X 4 subblock diagonal sum less than the antidiagonal sum.

The programs for A258685, there is no canonical definition to state claims against.
-/

/-! ## A258685.P12839934721504722815

`A258689(∑[n]+1)`
-/

namespace A258685.P12839934721504722815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258689 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A258685.P12839934721504722815

/-! ## A258685.P11111627797760339899

`lcm(2, A258689(A000124(n)))`
-/

namespace A258685.P11111627797760339899
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A258689 (A000124 n).toNat)

end

end A258685.P11111627797760339899

/-! ## A258685.P15991385113695169775

`record[A258689(A056536(n+1))]`
-/

namespace A258685.P15991385113695169775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258689 (A056536 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258685.P15991385113695169775

/-! ## A258685.P1219645809526108750

`record[A258689(A114091(n+1))]`
-/

namespace A258685.P1219645809526108750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258689 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258685.P1219645809526108750

/-! ## A258685.P6185400311072816995

`record[A258689(A286244(n+1))]`
-/

namespace A258685.P6185400311072816995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258689 (A286244 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258685.P6185400311072816995

/-!
# A258686: Number of (n+3)X(2+3) 0..1 arrays with no 4x4 subblock diagonal sum less than the antidiagonal sum.

The programs for A258686, there is no canonical definition to state claims against.
-/

/-! ## A258686.P10225046901774497350

`A258689(∑[n+1]+2)`
-/

namespace A258686.P10225046901774497350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258689 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A258686.P10225046901774497350

/-! ## A258686.P18146132292309432885

`record[A258689(A056536(n+1)+1)]`
-/

namespace A258686.P18146132292309432885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258689 (A056536 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258686.P18146132292309432885

/-! ## A258686.P832546793753149776

`record[A258689(A114091(n+1)+1)]`
-/

namespace A258686.P832546793753149776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258689 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258686.P832546793753149776

/-! ## A258686.P11736880934637665380

`record[A258689(A255130(2*n+3))]`
-/

namespace A258686.P11736880934637665380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258689 (A255130 (2 * n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258686.P11736880934637665380

/-!
# A258687: Number of (n+3)X(3+3) 0..1 arrays with no 4x4 subblock diagonal sum less than the antidiagonal sum.

The programs for A258687, there is no canonical definition to state claims against.
-/

/-! ## A258687.P7380156282723705326

`A258689(∑[n+2]+4)`
-/

namespace A258687.P7380156282723705326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258689 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A258687.P7380156282723705326

/-! ## A258687.P1352907620024447879

`record[gcd(A258689(n+4), A302670(n+1))]`
-/

namespace A258687.P1352907620024447879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A258689 (n + 4)) (A302670 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258687.P1352907620024447879

/-! ## A258687.P14619056092558979678

`A258689(A167614(n+1))+A011738(n)`
-/

namespace A258687.P14619056092558979678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258689 (A167614 (n + 1)).toNat + A011738 n

end

end A258687.P14619056092558979678

/-! ## A258687.P7119325540839318847

`A258689(A167614(n+1))+A025438(n)`
-/

namespace A258687.P7119325540839318847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258689 (A167614 (n + 1)).toNat + A025438 n

end

end A258687.P7119325540839318847

/-! ## A258687.P13853968461571931731

`A258689(A167614(n+1))+A025442(n)`
-/

namespace A258687.P13853968461571931731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258689 (A167614 (n + 1)).toNat + A025442 n

end

end A258687.P13853968461571931731

/-!
# A258688: Number of (n+3)X(4+3) 0..1 arrays with no 4x4 subblock diagonal sum less than the antidiagonal sum.

The programs for A258688, there is no canonical definition to state claims against.
-/

/-! ## A258688.P1101269262237622064

`A258689(∑[n+3]+7)`
-/

namespace A258688.P1101269262237622064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258689 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A258688.P1101269262237622064

/-!
# A258690: Total number of longest increasing runs in all permutations of [n].

The programs for A258690, there is no canonical definition to state claims against.
-/

/-! ## A258690.P18408814467334125580

`A004396(A004277(n*A020100(n)))`
-/

namespace A258690.P18408814467334125580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004277 ((n : ℤ) * A020100 n).toNat).toNat

end

end A258690.P18408814467334125580

/-! ## A258690.P2677754529061729646

`A103221((n+3)*n!+1)+A028391(A178381(n))`
-/

namespace A258690.P2677754529061729646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 ((n + 3) * Nat.factorial n + 1) + A028391 (A178381 n).toNat

end

end A258690.P2677754529061729646

/-!
# A258695: Maximal index of a congruence subgroup of PSL(2,Z) of genus n.

The programs for A258695, there is no canonical definition to state claims against.
-/

/-! ## A258695.P10569449553954906074

`A258700(n)+A121550(A004823(n+1))`
-/

namespace A258695.P10569449553954906074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258700 n + A121550 (A004823 (n + 1)).toNat

end

end A258695.P10569449553954906074

