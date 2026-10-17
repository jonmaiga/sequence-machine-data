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
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C028
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
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
import Seq.Opaque.C026

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A160400: a(n) is the smallest positive integer such that a(n)*n = j^k, for some j (j>=1) and k (k>=2).

The programs for A160400, there is no canonical definition to state claims against.
-/

/-! ## A160400.P8317700932286290080

`A087320(n+1)/(n+1)`
-/

namespace A160400.P8317700932286290080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087320 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A160400.P8317700932286290080

/-! ## A160400.P8468283991495418057

`gcd(A294336(n+1)+A164660(2*n), A007913(n+1))`
-/

namespace A160400.P8468283991495418057
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A294336 (n + 1) + A164660 (2 * n)) (A007913 (n + 1))

end

end A160400.P8468283991495418057

/-! ## A160400.P18382515151281230612

`A007913((n+1)*A087320(n+1))`
-/

namespace A160400.P18382515151281230612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 ((n + 1 : ℤ) * A087320 (n + 1)).toNat

end

end A160400.P18382515151281230612

/-! ## A160400.P9907068607612989191

`A007913((n+1)*A203025(A197863(n+1)))`
-/

namespace A160400.P9907068607612989191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 ((n + 1 : ℤ) * A203025 (A197863 (n + 1)).toNat).toNat

end

end A160400.P9907068607612989191

/-! ## A160400.P5469274432617304905

`∏{p}[n+1, lcm(n+1, #²)/(n+1)]*A345932(A222345(n+4))`
-/

namespace A160400.P5469274432617304905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), (Nat.lcm (n + 1) (p ^ 2) : ℚ) / (n + 1 : ℚ)) * (A345932 (A222345 (n + 4)).toNat : ℚ)

end

end A160400.P5469274432617304905

/-!
# A160401: Table read by antidiagonals: a(m,n) = the smallest composite multiple of both m and n.

The programs for A160401, there is no canonical definition to state claims against.
-/

/-! ## A160401.P823072111561399886

`A066560(A003990(n+1))`
-/

namespace A160401.P823072111561399886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066560 (A003990 (n + 1)).toNat

end

end A160401.P823072111561399886

/-! ## A160401.P1071752929568476346

`A143545(floor(A003990(n+1)+acot(n)))`
-/

namespace A160401.P1071752929568476346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143545 ⌊(A003990 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋.toNat

end

end A160401.P1071752929568476346

/-! ## A160401.P2117199620199874612

`A143545(A003990(n+1)+C(2, n+2))`
-/

namespace A160401.P2117199620199874612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143545 (A003990 (n + 1) + (Nat.choose 2 (n + 2) : ℤ)).toNat

end

end A160401.P2117199620199874612

/-! ## A160401.P1488824429530822656

`A066560(lcm(A131818(n+1), A193592(n)))`
-/

namespace A160401.P1488824429530822656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066560 (Int.lcm (A131818 (n + 1)) (A193592 n))

end

end A160401.P1488824429530822656

/-! ## A160401.P6547111443126697799

`A066560(lcm(A128227(n), A257522(n+1)))`
-/

namespace A160401.P6547111443126697799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066560 (Int.lcm (A128227 n) (A257522 (n + 1)))

end

end A160401.P6547111443126697799

/-! ## A160401.P3508254984861039753

`A066560(A003989(n+1)*A089913(n+1))`
-/

namespace A160401.P3508254984861039753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066560 (A003989 (n + 1) * A089913 (n + 1)).toNat

end

end A160401.P3508254984861039753

/-! ## A160401.P4265289379827073743

`A066560(A002260(n+1)*A112543(n+1))`
-/

namespace A160401.P4265289379827073743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066560 (A002260 (n + 1) * A112543 (n + 1)).toNat

end

end A160401.P4265289379827073743

/-! ## A160401.P734571831509140190

`A066560(A004736(n+1)*A112544(n+1))`
-/

namespace A160401.P734571831509140190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066560 (A004736 (n + 1) * A112544 (n + 1)).toNat

end

end A160401.P734571831509140190

/-! ## A160401.P3557700988514766442

`A066560(A003991(n+1)/A003989(n+1))`
-/

namespace A160401.P3557700988514766442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066560 (SequenceMachineLib.roundAway ((A003991 (n + 1) : ℚ) / (A003989 (n + 1) : ℚ))).toNat

end

end A160401.P3557700988514766442

/-! ## A160401.P11415569433605346258

`A066560(A003506(n+1)/A050169(n+1))`
-/

namespace A160401.P11415569433605346258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066560 (SequenceMachineLib.roundAway ((A003506 (n + 1) : ℚ) / (A050169 (n + 1) : ℚ))).toNat

end

end A160401.P11415569433605346258

/-!
# A160402: Primes made up of all distinct digits except 0 and 1.

The programs for A160402, there is no canonical definition to state claims against.
-/

/-! ## A160402.P16677517827096771942

`A038564(n+21)+A000007(A106102(n+1))`
-/

namespace A160402.P16677517827096771942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038564 (n + 21) + A000007 (A106102 (n + 1)).toNat

end

end A160402.P16677517827096771942

/-! ## A160402.P2971789880431761754

`A038564(n+21)%A290502(A277710(2*n+5))`
-/

namespace A160402.P2971789880431761754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038564 (n + 21)) (A290502 (A277710 (2 * n + 5)).toNat)

end

end A160402.P2971789880431761754

/-! ## A160402.P8105158718635394214

`A343023(A147582(3*n+5))+A038564(n+21)`
-/

namespace A160402.P8105158718635394214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343023 (A147582 (3 * n + 5)).toNat + A038564 (n + 21)

end

end A160402.P8105158718635394214

/-! ## A160402.P10553776397049425343

`A280712((n+2)²+n+1)+A038564(n+21)`
-/

namespace A160402.P10553776397049425343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280712 ((n + 2) ^ 2 + (n + 1)) + A038564 (n + 21)

end

end A160402.P10553776397049425343

/-! ## A160402.P16756022949248447438

`A038564(n+21)+A000007(A061203(n+1))`
-/

namespace A160402.P16756022949248447438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038564 (n + 21) + A000007 (A061203 (n + 1)).toNat

end

end A160402.P16756022949248447438

/-! ## A160402.P4670250516442055625

`A038564(n+21)/A001221(A002385(n+1))`
-/

namespace A160402.P4670250516442055625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038564 (n + 21) : ℚ) / (A001221 (A002385 (n + 1)).toNat : ℚ)

end

end A160402.P4670250516442055625

/-! ## A160402.P12633470569615585215

`A038564(n+21)%A038564(A073277(n+1))`
-/

namespace A160402.P12633470569615585215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038564 (n + 21)) (A038564 (A073277 (n + 1)).toNat)

end

end A160402.P12633470569615585215

/-! ## A160402.P12408948618948911934

`A038564(n+21)+A000007(A002522(n))`
-/

namespace A160402.P12408948618948911934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038564 (n + 21) + A000007 (A002522 n).toNat

end

end A160402.P12408948618948911934

/-! ## A160402.P3630821599870189230

`A038564(n+21)+A000007(A069611(n+1))`
-/

namespace A160402.P3630821599870189230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038564 (n + 21) + A000007 (A069611 (n + 1)).toNat

end

end A160402.P3630821599870189230

/-!
# A160406: Toothpick sequence starting at the vertex of an infinite 90-degree wedge.

The programs for A160406, there is no canonical definition to state claims against.
-/

/-! ## A160406.P5911865741479591819

`A160407(n)+a(n-1)` with `a(0)=0`
-/

namespace A160406.P5911865741479591819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A160407 n + a (n - 1)

end

end A160406.P5911865741479591819

/-! ## A160406.P6436000993771510103

`∑[A160407(floor(acot(n)+n))]-1`
-/

namespace A160406.P6436000993771510103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160407 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A160406.P6436000993771510103

/-! ## A160406.P5081166725642664776

`∑[A160407(round(acot(n)+n))]-1`
-/

namespace A160406.P5081166725642664776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160407 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A160406.P5081166725642664776

/-! ## A160406.P11775055727079570488

`∑[A160407(abs(1-n)+1)]-1`
-/

namespace A160406.P11775055727079570488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160407 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A160406.P11775055727079570488

/-! ## A160406.P12901178674571383466

`∑[A160407(gcd(n, n*a(n-2)))]` with `a(0)=0, a(1)=1`
-/

namespace A160406.P12901178674571383466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  A160407 (Int.gcd (n : ℤ) ((n : ℤ) * f1 (n - 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160406.P12901178674571383466

/-! ## A160406.P12338327055004784141

`∑[A160407(n)-a(A141056(n)%2)]` with `a(0)=0`
-/

namespace A160406.P12338327055004784141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A160407 n - f1 (Int.tmod (A141056 n) 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160406.P12338327055004784141

/-! ## A160406.P11027336784789519355

`A160740(n)/4`
-/

namespace A160406.P11027336784789519355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160740 n : ℚ) / 4

end

end A160406.P11027336784789519355

/-! ## A160406.P15507654120009904363

`A002265(A160740(n))`
-/

namespace A160406.P15507654120009904363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A160740 n).toNat

end

end A160406.P15507654120009904363

/-! ## A160406.P17610934692695770702

`A160730(n)-∑[A170893(n)]`
-/

namespace A160406.P17610934692695770702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170893 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160730 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160406.P17610934692695770702

/-! ## A160406.P5731647818004975938

`A160730(n)-A170892(n)`
-/

namespace A160406.P5731647818004975938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160730 n - A170892 n

end

end A160406.P5731647818004975938

/-!
# A160407: First differences of toothpick numbers A160406.

The programs for A160407, there is no canonical definition to state claims against.
-/

/-! ## A160407.P10852480745880246617

`floor(A151704(n)/2)+1`
-/

namespace A160407.P10852480745880246617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A151704 n : ℚ) / 2⌋ + 1

end

end A160407.P10852480745880246617

/-! ## A160407.P18224236254363098782

`ceil((A151568(n)+2)/4)`
-/

namespace A160407.P18224236254363098782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A151568 n + 2 : ℚ) / 4⌉

end

end A160407.P18224236254363098782

/-! ## A160407.P13940640924600870779

`round(A151569(n)/6)+1`
-/

namespace A160407.P13940640924600870779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A151569 n : ℚ) / 6) + 1

end

end A160407.P13940640924600870779

/-! ## A160407.P13779802394439978768

`ceil((A160552(n)+2-n%2)/2)`
-/

namespace A160407.P13779802394439978768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A160552 n + (2 - ((n % 2 : ℕ) : ℤ)) : ℚ) / 2⌉

end

end A160407.P13779802394439978768

/-! ## A160407.P9068330160415339565

`A151704(round(acot(n+1)+n))/2+1`
-/

namespace A160407.P9068330160415339565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151704 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n + 1 : ℝ) + (n : ℝ))).toNat : ℚ) / 2 + 1

end

end A160407.P9068330160415339565

/-! ## A160407.P2785426361857709655

`Δ[A160406(n)]`
-/

namespace A160407.P2785426361857709655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160406 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160407.P2785426361857709655

/-! ## A160407.P2930789351100425755

`A160406(n+1)-A160406(n)`
-/

namespace A160407.P2930789351100425755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160406 (n + 1) - A160406 n

end

end A160407.P2930789351100425755

/-! ## A160407.P4911028973802122800

`Δ[A160740(n)/4]`
-/

namespace A160407.P4911028973802122800
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160740 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160407.P4911028973802122800

/-! ## A160407.P14645434388695337007

`A008619(A151704(n))`
-/

namespace A160407.P14645434388695337007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A151704 n).toNat

end

end A160407.P14645434388695337007

/-! ## A160407.P11765142314610365090

`A000463(A151704(n)+1)`
-/

namespace A160407.P11765142314610365090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A151704 n + 1).toNat

end

end A160407.P11765142314610365090

/-!
# A160408: Toothpick pyramid (see Comments lines for definition).

The programs for A160408, there is no canonical definition to state claims against.
-/

/-! ## A160408.P3016965974201737603

`A160728(n)/6`
-/

namespace A160408.P3016965974201737603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160728 n : ℚ) / 6

end

end A160408.P3016965974201737603

/-! ## A160408.P5675701745059056160

`∑[A173531(round(2*n/3))]`
-/

namespace A160408.P5675701745059056160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173531 (SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160408.P5675701745059056160

/-! ## A160408.P11910220545413923637

`A008615(A160728(n))`
-/

namespace A160408.P11910220545413923637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A160728 n).toNat

end

end A160408.P11910220545413923637

/-! ## A160408.P7377151386480568604

`A008612(A160728(n)+1)`
-/

namespace A160408.P7377151386480568604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A160728 n + 1).toNat

end

end A160408.P7377151386480568604

/-! ## A160408.P7541120926530264196

`∪[A125991(n+1), A368430(n)]`
-/

namespace A160408.P7541120926530264196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368430 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A160408.P7541120926530264196

/-!
# A160410: Number of "ON" cells at n-th stage in simple 2-dimensional cellular automaton (see Comments for precise definition).

The programs for A160410, the canonical program `A160410.P2265682032129566440` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160410 has offset 0).

The definition of A160410 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A160410.P16237995214117144763

`A161411(n)+a(n-1)` with `a(0)=0`
-/

namespace A160410.P16237995214117144763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A161411 n + a (n - 1)

end

end A160410.P16237995214117144763

namespace A160410

/-- `A161411(n)+a(n-1)` -/
def P16237995214117144763.Spec : Prop :=
  ∀ n, P16237995214117144763.a n = A160410 n

end A160410

/-! ## A160410.P3905444856563163154

`2*(A151917(n)+A147562(n))`
-/

namespace A160410.P3905444856563163154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A151917 n + A147562 n)

end

end A160410.P3905444856563163154

namespace A160410

/-- `2*(A151917(n)+A147562(n))` -/
def P3905444856563163154.Spec : Prop :=
  ∀ n, P3905444856563163154.a n = A160410 n

end A160410

/-! ## A160410.P12883948439254846712

`4*A130665(n)-A161411(n+1)`
-/

namespace A160410.P12883948439254846712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A130665 n - A161411 (n + 1)

end

end A160410.P12883948439254846712

namespace A160410

/-- `4*A130665(n)-A161411(n+1)` -/
def P12883948439254846712.Spec : Prop :=
  ∀ n, P12883948439254846712.a n = A160410 n

end A160410

/-! ## A160410.P2265682032129566440

`∑[4*A048883(n)]-4*A048883(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A160410

/-- `∑[4*A048883(n)]-4*A048883(n)` -/
def P2265682032129566440.Spec : Prop :=
  ∀ n, P2265682032129566440.a n = A160410 n

theorem P2265682032129566440.correct : P2265682032129566440.Spec := by
  intro n
  simp only [A160410]

end A160410

/-! ## A160410.P4672719790027009772

`A160799(n+1)-A160799(A028310(n))`
-/

namespace A160410.P4672719790027009772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160799 (n + 1) - A160799 (A028310 n).toNat

end

end A160410.P4672719790027009772

namespace A160410

/-- `A160799(n+1)-A160799(A028310(n))` -/
def P4672719790027009772.Spec : Prop :=
  ∀ n, P4672719790027009772.a n = A160410 n

end A160410

/-! ## A160410.P5293298036616537707

`A130665(n)+A160412(n)-A048883(n)`
-/

namespace A160410.P5293298036616537707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130665 n + (A160412 n - A048883 n)

end

end A160410.P5293298036616537707

namespace A160410

/-- `A130665(n)+A160412(n)-A048883(n)` -/
def P5293298036616537707.Spec : Prop :=
  ∀ n, P5293298036616537707.a n = A160410 n

end A160410

/-! ## A160410.P11509005839626386514

`A160799(n+2)-(A161411(n+1)+A160799(n+1))`
-/

namespace A160410.P11509005839626386514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160799 (n + 2) - (A161411 (n + 1) + A160799 (n + 1))

end

end A160410.P11509005839626386514

namespace A160410

/-- `A160799(n+2)-(A161411(n+1)+A160799(n+1))` -/
def P11509005839626386514.Spec : Prop :=
  ∀ n, P11509005839626386514.a n = A160410 n

end A160410

/-! ## A160410.P18208275904717351669

`A160414(n)+A256534(n)-A256530(n)`
-/

namespace A160410.P18208275904717351669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160414 n + (A256534 n - A256530 n)

end

end A160410.P18208275904717351669

namespace A160410

/-- `A160414(n)+A256534(n)-A256530(n)` -/
def P18208275904717351669.Spec : Prop :=
  ∀ n, P18208275904717351669.a n = A160410 n

end A160410

/-! ## A160410.P17163776900335339641

`record[A000035(n)*A130665(n)]`
-/

namespace A160410.P17163776900335339641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A130665 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160410.P17163776900335339641

namespace A160410

/-- `record[A000035(n)*A130665(n)]` -/
def P17163776900335339641.Spec : Prop :=
  ∀ n, P17163776900335339641.a n = A160410 n

end A160410

/-! ## A160410.P16045593431538493207

`A130665(2*n)-A048883(n)`
-/

namespace A160410.P16045593431538493207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130665 (2 * n) - A048883 n

end

end A160410.P16045593431538493207

namespace A160410

/-- `A130665(2*n)-A048883(n)` -/
def P16045593431538493207.Spec : Prop :=
  ∀ n, P16045593431538493207.a n = A160410 n

end A160410

/-! ## A160410.P9608144133213073105

`A147562(2*n)-A147562(n)`
-/

namespace A160410.P9608144133213073105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147562 (2 * n) - A147562 n

end

end A160410.P9608144133213073105

namespace A160410

/-- `A147562(2*n)-A147562(n)` -/
def P9608144133213073105.Spec : Prop :=
  ∀ n, P9608144133213073105.a n = A160410 n

end A160410

/-! ## A160410.P12998261217737150145

`A151917(A005843(n))+A147562(n)`
-/

namespace A160410.P12998261217737150145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151917 (A005843 n).toNat + A147562 n

end

end A160410.P12998261217737150145

namespace A160410

/-- `A151917(A005843(n))+A147562(n)` -/
def P12998261217737150145.Spec : Prop :=
  ∀ n, P12998261217737150145.a n = A160410 n

end A160410

/-! ## A160410.P14016543286810792005

`record[A147562(n)-A147562(A026741(n))]`
-/

namespace A160410.P14016543286810792005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147562 n - A147562 (A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160410.P14016543286810792005

namespace A160410

/-- `record[A147562(n)-A147562(A026741(n))]` -/
def P14016543286810792005.Spec : Prop :=
  ∀ n, P14016543286810792005.a n = A160410 n

end A160410

/-! ## A160410.P4401156119595954491

`A151917(A005843(n))+floor(A151917(2*n)/2)`
-/

namespace A160410.P4401156119595954491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151917 (A005843 n).toNat + ⌊(A151917 (2 * n) : ℚ) / 2⌋

end

end A160410.P4401156119595954491

namespace A160410

/-- `A151917(A005843(n))+floor(A151917(2*n)/2)` -/
def P4401156119595954491.Spec : Prop :=
  ∀ n, P4401156119595954491.a n = A160410 n

end A160410

/-! ## A160410.P6585792450402098805

`A151917(A005843(n))+A151920(2*n)-A147582(n+1)`
-/

namespace A160410.P6585792450402098805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151917 (A005843 n).toNat + (A151920 (2 * n) - A147582 (n + 1))

end

end A160410.P6585792450402098805

namespace A160410

/-- `A151917(A005843(n))+A151920(2*n)-A147582(n+1)` -/
def P6585792450402098805.Spec : Prop :=
  ∀ n, P6585792450402098805.a n = A160410 n

end A160410

/-! ## A160410.P12525289247867746728

`A160412(2*n)/3`
-/

namespace A160410.P12525289247867746728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160412 (2 * n) : ℚ) / 3

end

end A160410.P12525289247867746728

namespace A160410

/-- `A160412(2*n)/3` -/
def P12525289247867746728.Spec : Prop :=
  ∀ n, P12525289247867746728.a n = (A160410 n : ℚ)

end A160410

/-! ## A160410.P10012509687126294675

`2*(A151917(2*n+1)-A151917(n+1))`
-/

namespace A160410.P10012509687126294675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A151917 (2 * n + 1) - A151917 (n + 1))

end

end A160410.P10012509687126294675

namespace A160410

/-- `2*(A151917(2*n+1)-A151917(n+1))` -/
def P10012509687126294675.Spec : Prop :=
  ∀ n, P10012509687126294675.a n = A160410 n

end A160410

/-! ## A160410.P11963078062355823706

`∑[A147582(2*(n+1))]-A147582(2*(n+1))`
-/

namespace A160410.P11963078062355823706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147582 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A147582 (2 * (n + 1))

end

end A160410.P11963078062355823706

namespace A160410

/-- `∑[A147582(2*(n+1))]-A147582(2*(n+1))` -/
def P11963078062355823706.Spec : Prop :=
  ∀ n, P11963078062355823706.a n = A160410 n

end A160410

/-! ## A160410.P8639843042942437757

`A130665(A004273(n))%A147562(3*n+1)`
-/

namespace A160410.P8639843042942437757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130665 (A004273 n).toNat) (A147562 (3 * n + 1))

end

end A160410.P8639843042942437757

namespace A160410

/-- `A130665(A004273(n))%A147562(3*n+1)` -/
def P8639843042942437757.Spec : Prop :=
  ∀ n, P8639843042942437757.a n = A160410 n

end A160410

/-! ## A160410.P6631444155942076917

`A151920(4*n)-A151920(2*n)`
-/

namespace A160410.P6631444155942076917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151920 (4 * n) - A151920 (2 * n)

end

end A160410.P6631444155942076917

namespace A160410

/-- `A151920(4*n)-A151920(2*n)` -/
def P6631444155942076917.Spec : Prop :=
  ∀ n, P6631444155942076917.a n = A160410 n

end A160410

/-!
# A160411: Number of cells turned "ON" at n-th stage of A160117.

The programs for A160411, the canonical program `A160411.P12900847626427089277` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160411 has offset 1).

The definition of A160411 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A160411.P12900847626427089277

`2*a(n-2)-a(n-4)` with `a(0)=1, a(1)=8, a(2)=4, a(3)=28, a(4)=8, a(5)=52`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A160411

/-- `2*a(n-2)-a(n-4)` -/
def P12900847626427089277.Spec : Prop :=
  ∀ n, P12900847626427089277.a n = A160411 (n + 1)

theorem P12900847626427089277.correct : P12900847626427089277.Spec := by
  intro n
  simp only [A160411, Nat.add_sub_cancel]

end A160411

/-! ## A160411.P6892918689128086140

`Δ[A160117(n)]`
-/

namespace A160411.P6892918689128086140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160117 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160411.P6892918689128086140

namespace A160411

/-- `Δ[A160117(n)]` -/
def P6892918689128086140.Spec : Prop :=
  ∀ n, P6892918689128086140.a n = A160411 (n + 1)

end A160411

/-! ## A160411.P4646181879270857301

`A160117(n+1)-A160117(n)`
-/

namespace A160411.P4646181879270857301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160117 (n + 1) - A160117 n

end

end A160411.P4646181879270857301

namespace A160411

/-- `A160117(n+1)-A160117(n)` -/
def P4646181879270857301.Spec : Prop :=
  ∀ n, P4646181879270857301.a n = A160411 (n + 1)

end A160411

/-!
# A160412: Number of "ON" cells at n-th stage in simple 2-dimensional cellular automaton (see Comments for precise definition).

The programs for A160412, the canonical program `A160412.P11058933196610822851` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160412 has offset 0).

The definition of A160412 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160410, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A160412.P11058933196610822851

`A160410(n)*3/4`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A160412

/-- `A160410(n)*3/4` -/
def P11058933196610822851.Spec : Prop :=
  ∀ n, P11058933196610822851.a n = (A160412 n : ℚ)

end A160412

/-! ## A160412.P7939235716632717273

`3*floor(3*A151917(n)/2)`
-/

namespace A160412.P7939235716632717273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌊3 * ((A151917 n : ℚ) / 2)⌋

end

end A160412.P7939235716632717273

namespace A160412

/-- `3*floor(3*A151917(n)/2)` -/
def P7939235716632717273.Spec : Prop :=
  ∀ n, P7939235716632717273.a n = A160412 n

end A160412

/-! ## A160412.P11699633702930214792

`∑[A162349(n+1)]-A162349(n+1)`
-/

namespace A160412.P11699633702930214792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162349 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A162349 (n + 1)

end

end A160412.P11699633702930214792

namespace A160412

/-- `∑[A162349(n+1)]-A162349(n+1)` -/
def P11699633702930214792.Spec : Prop :=
  ∀ n, P11699633702930214792.a n = A160412 n

end A160412

/-! ## A160412.P13563999890829834675

`∑[3*A048883(n)]-3*A048883(n)`
-/

namespace A160412.P13563999890829834675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A048883 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3 * A048883 n

end

end A160412.P13563999890829834675

namespace A160412

/-- `∑[3*A048883(n)]-3*A048883(n)` -/
def P13563999890829834675.Spec : Prop :=
  ∀ n, P13563999890829834675.a n = A160412 n

end A160412

/-! ## A160412.P12797780832740712603

`2*(A151917(n)+A147562(n))*3/4`
-/

namespace A160412.P12797780832740712603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * (A151917 n + A147562 n) : ℚ) * ((3 : ℚ) / 4)

end

end A160412.P12797780832740712603

namespace A160412

/-- `2*(A151917(n)+A147562(n))*3/4` -/
def P12797780832740712603.Spec : Prop :=
  ∀ n, P12797780832740712603.a n = (A160412 n : ℚ)

end A160412

/-! ## A160412.P7865527488343092926

`A048883(n)+A160410(n)-A130665(n)`
-/

namespace A160412.P7865527488343092926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048883 n + (A160410 n - A130665 n)

end

end A160412.P7865527488343092926

namespace A160412

/-- `A048883(n)+A160410(n)-A130665(n)` -/
def P7865527488343092926.Spec : Prop :=
  ∀ n, P7865527488343092926.a n = A160412 n

end A160412

/-! ## A160412.P12488480053478615189

`A130665(2*n)-A130665(n)`
-/

namespace A160412.P12488480053478615189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130665 (2 * n) - A130665 n

end

end A160412.P12488480053478615189

namespace A160412

/-- `A130665(2*n)-A130665(n)` -/
def P12488480053478615189.Spec : Prop :=
  ∀ n, P12488480053478615189.a n = A160412 n

end A160412

/-! ## A160412.P9982152731267497343

`(A151917(n)+A147562(A005843(n)))/2`
-/

namespace A160412.P9982152731267497343
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151917 n + A147562 (A005843 n).toNat : ℚ) / 2

end

end A160412.P9982152731267497343

namespace A160412

/-- `(A151917(n)+A147562(A005843(n)))/2` -/
def P9982152731267497343.Spec : Prop :=
  ∀ n, P9982152731267497343.a n = (A160412 n : ℚ)

end A160412

/-! ## A160412.P5479533526515552278

`3/4*record[A079317(n)-1]`
-/

namespace A160412.P5479533526515552278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079317 n - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 4 * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A160412.P5479533526515552278

namespace A160412

/-- `3/4*record[A079317(n)-1]` -/
def P5479533526515552278.Spec : Prop :=
  ∀ n, P5479533526515552278.a n = (A160412 n : ℚ)

end A160412

/-! ## A160412.P109328190334967762

`∑[A173457(3*n)/4]`
-/

namespace A160412.P109328190334967762
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173457 (3 * n) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160412.P109328190334967762

namespace A160412

/-- `∑[A173457(3*n)/4]` -/
def P109328190334967762.Spec : Prop :=
  ∀ n, P109328190334967762.a n = (A160412 n : ℚ)

end A160412

/-! ## A160412.P5006821946094903498

`3*A160796(2*n)/8`
-/

namespace A160412.P5006821946094903498
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((A160796 (2 * n) : ℚ) / 8)

end

end A160412.P5006821946094903498

namespace A160412

/-- `3*A160796(2*n)/8` -/
def P5006821946094903498.Spec : Prop :=
  ∀ n, P5006821946094903498.a n = (A160412 n : ℚ)

end A160412

/-! ## A160412.P14850907138241028637

`3*A374800(∑[n])`
-/

namespace A160412.P14850907138241028637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A374800 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A160412.P14850907138241028637

namespace A160412

/-- `3*A374800(∑[n])` -/
def P14850907138241028637.Spec : Prop :=
  ∀ n, P14850907138241028637.a n = A160412 n

end A160412

/-! ## A160412.P9592843097861942374

`A151917(2*n)+A004526(A151917(n))`
-/

namespace A160412.P9592843097861942374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151917 (2 * n) + A004526 (A151917 n).toNat

end

end A160412.P9592843097861942374

namespace A160412

/-- `A151917(2*n)+A004526(A151917(n))` -/
def P9592843097861942374.Spec : Prop :=
  ∀ n, P9592843097861942374.a n = A160412 n

end A160412

/-!
# A160413: a(n) = A160411(n+1)/4.

The programs for A160413, the canonical program `A160413.P4933104029081619910` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160413 has offset 1).

The definition of A160413 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A160413.P4933104029081619910

`2*a(n-2)-a(n-4)` with `a(0)=2, a(1)=1, a(2)=7, a(3)=2, a(4)=13`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A160413

/-- `2*a(n-2)-a(n-4)` -/
def P4933104029081619910.Spec : Prop :=
  ∀ n, P4933104029081619910.a n = A160413 (n + 1)

theorem P4933104029081619910.correct : P4933104029081619910.Spec := by
  intro n
  simp only [A160413, Nat.add_sub_cancel]

end A160413

/-! ## A160413.P9039616043921265360

`A160411(n+2)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A160413.P9039616043921265360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160411 (n + 2) : ℚ) / 4

end

end A160413.P9039616043921265360

namespace A160413

/-- `A160411(n+2)/4` -/
def P9039616043921265360.Spec : Prop :=
  ∀ n, P9039616043921265360.a n = (A160413 (n + 1) : ℚ)

end A160413

/-! ## A160413.P2774093264219543981

`floor((∑[n]+n²)/a(n-1))` with `a(0)=2`
-/

namespace A160413.P2774093264219543981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j + n ^ 2 : ℕ) : ℚ) / (a (n - 1) : ℚ)⌋

end

end A160413.P2774093264219543981

namespace A160413

/-- `floor((∑[n]+n²)/a(n-1))` -/
def P2774093264219543981.Spec : Prop :=
  ∀ n, P2774093264219543981.a n = A160413 (n + 1)

end A160413

/-! ## A160413.P2004482704665792975

`a(n-2)+6^((n-1)%2)` with `a(0)=2, a(1)=1, a(2)=7`
-/

namespace A160413.P2004482704665792975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 1, 7] fun n a =>
  a (n - 2) + (6 : ℚ) ^ (Int.tmod ((n : ℤ) - 1) 2 : ℤ)

end

end A160413.P2004482704665792975

namespace A160413

/-- `a(n-2)+6^((n-1)%2)` -/
def P2004482704665792975.Spec : Prop :=
  ∀ n, P2004482704665792975.a n = (A160413 (n + 1) : ℚ)

end A160413

/-! ## A160413.P12730843899208646554

`n+1-floor(n²/(a(n-1)-n))` with `a(0)=2`
-/

namespace A160413.P12730843899208646554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (n + 1 : ℤ) - ⌊(n ^ 2 : ℚ) / (a (n - 1) - (n : ℤ) : ℚ)⌋

end

end A160413.P12730843899208646554

namespace A160413

/-- `n+1-floor(n²/(a(n-1)-n))` -/
def P12730843899208646554.Spec : Prop :=
  ∀ n, P12730843899208646554.a n = A160413 (n + 1)

end A160413

/-! ## A160413.P3250169158578051401

`1-floor(n/(a(n-1)/n-1))+n` with `a(0)=2`
-/

namespace A160413.P3250169158578051401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  1 - ⌊(n : ℚ) / ((a (n - 1) : ℚ) / (n : ℚ) - 1)⌋ + (n : ℤ)

end

end A160413.P3250169158578051401

namespace A160413

/-- `1-floor(n/(a(n-1)/n-1))+n` -/
def P3250169158578051401.Spec : Prop :=
  ∀ n, P3250169158578051401.a n = A160413 (n + 1)

end A160413

/-! ## A160413.P16036475980742850476

`1-floor(n/(a(n-1)/n-1)-n)` with `a(0)=2`
-/

namespace A160413.P16036475980742850476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  1 - ⌊(n : ℚ) / ((a (n - 1) : ℚ) / (n : ℚ) - 1) - (n : ℚ)⌋

end

end A160413.P16036475980742850476

namespace A160413

/-- `1-floor(n/(a(n-1)/n-1)-n)` -/
def P16036475980742850476.Spec : Prop :=
  ∀ n, P16036475980742850476.a n = A160413 (n + 1)

end A160413

/-! ## A160413.P14420943217963376814

`A047353(n+1)-a(n-1)` with `a(0)=2, a(1)=1`
-/

namespace A160413.P14420943217963376814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  A047353 (n + 1) - a (n - 1)

end

end A160413.P14420943217963376814

namespace A160413

/-- `A047353(n+1)-a(n-1)` -/
def P14420943217963376814.Spec : Prop :=
  ∀ n, P14420943217963376814.a n = A160413 (n + 1)

end A160413

/-! ## A160413.P5132653217230808064

`A095894(n-1)/a(n-1)` with `a(0)=2, a(1)=1`
-/

namespace A160413.P5132653217230808064
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 1] fun n a =>
  (A095894 (n - 1) : ℚ) / a (n - 1)

end

end A160413.P5132653217230808064

namespace A160413

/-- `A095894(n-1)/a(n-1)` -/
def P5132653217230808064.Spec : Prop :=
  ∀ n, P5132653217230808064.a n = (A160413 (n + 1) : ℚ)

end A160413

/-! ## A160413.P16261928507307655248

`A280167(n)+A001651(n+1)`
-/

namespace A160413.P16261928507307655248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280167 n + A001651 (n + 1)

end

end A160413.P16261928507307655248

namespace A160413

/-- `A280167(n)+A001651(n+1)` -/
def P16261928507307655248.Spec : Prop :=
  ∀ n, P16261928507307655248.a n = A160413 (n + 1)

end A160413

/-! ## A160413.P14335577718920909973

`A280166(n)+A063914(n+1)`
-/

namespace A160413.P14335577718920909973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280166 n + A063914 (n + 1)

end

end A160413.P14335577718920909973

namespace A160413

/-- `A280166(n)+A063914(n+1)` -/
def P14335577718920909973.Spec : Prop :=
  ∀ n, P14335577718920909973.a n = A160413 (n + 1)

end A160413

/-! ## A160413.P5576863757977258290

`A008619(n)+A280167(n)+n`
-/

namespace A160413.P5576863757977258290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n + (A280167 n + (n : ℤ))

end

end A160413.P5576863757977258290

namespace A160413

/-- `A008619(n)+A280167(n)+n` -/
def P5576863757977258290.Spec : Prop :=
  ∀ n, P5576863757977258290.a n = A160413 (n + 1)

end A160413

/-! ## A160413.P278718347515508387

`A028242(n)+A008706(A142150(n))`
-/

namespace A160413.P278718347515508387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n + A008706 (A142150 n).toNat

end

end A160413.P278718347515508387

namespace A160413

/-- `A028242(n)+A008706(A142150(n))` -/
def P278718347515508387.Spec : Prop :=
  ∀ n, P278718347515508387.a n = A160413 (n + 1)

end A160413

/-! ## A160413.P3610692004669895119

`A028242(n)+A008706(n-A026741(n))`
-/

namespace A160413.P3610692004669895119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n + A008706 ((n : ℤ) - A026741 n).toNat

end

end A160413.P3610692004669895119

namespace A160413

/-- `A028242(n)+A008706(n-A026741(n))` -/
def P3610692004669895119.Spec : Prop :=
  ∀ n, P3610692004669895119.a n = A160413 (n + 1)

end A160413

/-! ## A160413.P17319485841611723583

`A178414(n+1)+A026741(n+1)-comp[A004277(n)]`
-/

namespace A160413.P17319485841611723583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178414 (n + 1) + A026741 (n + 1) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A160413.P17319485841611723583

namespace A160413

/-- `A178414(n+1)+A026741(n+1)-comp[A004277(n)]` -/
def P17319485841611723583.Spec : Prop :=
  ∀ n, P17319485841611723583.a n = A160413 (n + 1)

end A160413

/-! ## A160413.P15520674595619924269

`A028242(n)+A008706(A174239(n)-A028242(n))`
-/

namespace A160413.P15520674595619924269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n + A008706 (A174239 n - A028242 n).toNat

end

end A160413.P15520674595619924269

namespace A160413

/-- `A028242(n)+A008706(A174239(n)-A028242(n))` -/
def P15520674595619924269.Spec : Prop :=
  ∀ n, P15520674595619924269.a n = A160413 (n + 1)

end A160413

/-! ## A160413.P1186582917924600738

`A001281(n+1)-char[A004277(n+1)]`
-/

namespace A160413.P1186582917924600738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A160413.P1186582917924600738

namespace A160413

/-- `A001281(n+1)-char[A004277(n+1)]` -/
def P1186582917924600738.Spec : Prop :=
  ∀ n, P1186582917924600738.a n = A160413 (n + 1)

end A160413

/-! ## A160413.P11791159326192260693

`A001281(n+1)-char[A005843(n+1)]`
-/

namespace A160413.P11791159326192260693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A160413.P11791159326192260693

namespace A160413

/-- `A001281(n+1)-char[A005843(n+1)]` -/
def P11791159326192260693.Spec : Prop :=
  ∀ n, P11791159326192260693.a n = A160413 (n + 1)

end A160413

/-! ## A160413.P11553720815108639824

`Δ[A160117(n+1)/4]`
-/

namespace A160413.P11553720815108639824
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160117 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160413.P11553720815108639824

namespace A160413

/-- `Δ[A160117(n+1)/4]` -/
def P11553720815108639824.Spec : Prop :=
  ∀ n, P11553720815108639824.a n = (A160413 (n + 1) : ℚ)

end A160413

/-! ## A160413.P7107634912592785050

`A019426(n+1)*A057979(n+2)`
-/

namespace A160413.P7107634912592785050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (n + 1) * A057979 (n + 2)

end

end A160413.P7107634912592785050

namespace A160413

/-- `A019426(n+1)*A057979(n+2)` -/
def P7107634912592785050.Spec : Prop :=
  ∀ n, P7107634912592785050.a n = A160413 (n + 1)

end A160413

/-!
# A160414: Number of "ON" cells at n-th stage in simple 2-dimensional cellular automaton (same as A160410, but a(1) = 1, not 4).

The programs for A160414, there is no canonical definition to state claims against.
-/

/-! ## A160414.P13826903135272539514

`A173460(A004273(n)+n)/9`
-/

namespace A160414.P13826903135272539514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173460 (A004273 n + (n : ℤ)).toNat : ℚ) / 9

end

end A160414.P13826903135272539514

/-! ## A160414.P207814754802028563

`A161415(n)+a(n-1)` with `a(0)=0`
-/

namespace A160414.P207814754802028563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A161415 n + a (n - 1)

end

end A160414.P207814754802028563

/-! ## A160414.P18278003083819217963

`∑[A161415(round(sqrt(n²+1)))]-1`
-/

namespace A160414.P18278003083819217963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161415 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A160414.P18278003083819217963

/-! ## A160414.P7404039659837361024

`∑[A161415(A028310(n))-1]+n`
-/

namespace A160414.P7404039659837361024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161415 (A028310 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A160414.P7404039659837361024

/-! ## A160414.P12819883081254772690

`Δ[A161325(round(sqrt(n²+1)))]`
-/

namespace A160414.P12819883081254772690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161325 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160414.P12819883081254772690

/-!
# A160415: First differences of A160118.

The programs for A160415, there is no canonical definition to state claims against.
-/

/-! ## A160415.P15919899732879575149

`A173457(floor(n/2)+n+1)`
-/

namespace A160415.P15919899732879575149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173457 (⌊(n : ℚ) / 2⌋ + (n + 1 : ℤ)).toNat

end

end A160415.P15919899732879575149

/-! ## A160415.P3240956140548283194

`Δ[A160118(n)]`
-/

namespace A160415.P3240956140548283194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160118 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160415.P3240956140548283194

/-! ## A160415.P18027015622819941670

`A160118(n+1)-A160118(n)`
-/

namespace A160415.P18027015622819941670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160118 (n + 1) - A160118 n

end

end A160415.P18027015622819941670

/-! ## A160415.P12245393650373215046

`A063200(Δ[A160796(n)])`
-/

namespace A160415.P12245393650373215046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160796 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063200 (f1 (n + 1) - f1 n).toNat

end

end A160415.P12245393650373215046

/-! ## A160415.P15254609177284085074

`A063200(A160797(n+1))`
-/

namespace A160415.P15254609177284085074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063200 (A160797 (n + 1)).toNat

end

end A160415.P15254609177284085074

/-! ## A160415.P11493937918100561714

`A063200(A160796(n+1)-A160796(n))`
-/

namespace A160415.P11493937918100561714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063200 (A160796 (n + 1) - A160796 n).toNat

end

end A160415.P11493937918100561714

/-!
# A160416: Number of "ON" cells at n-th stage in simple 2-dimensional cellular automaton (see Comments for precise definition).

The programs for A160416, there is no canonical definition to state claims against.
-/

/-! ## A160416.P5556971031437164492

`∑[A161417(n+1)]-A161417(n+1)`
-/

namespace A160416.P5556971031437164492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A161417 (n + 1)

end

end A160416.P5556971031437164492

/-!
# A160417: a(n) = A160415(n+1)/4.

The programs for A160417, the canonical program `A160417.P5505954181710526844` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160417 has offset 1).

The definition of A160417 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1091 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A160417.P4694154215566421186

`A160415(n+2)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A160417.P4694154215566421186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160415 (n + 2) : ℚ) / 4

end

end A160417.P4694154215566421186

namespace A160417

/-- `A160415(n+2)/4` -/
def P4694154215566421186.Spec : Prop :=
  ∀ n, P4694154215566421186.a n = (A160417 (n + 1) : ℚ)

end A160417

/-! ## A160417.P5505954181710526844

`floor(A160797(n+2)/3)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A160417

/-- `floor(A160797(n+2)/3)` -/
def P5505954181710526844.Spec : Prop :=
  ∀ n, P5505954181710526844.a n = A160417 (n + 1)

theorem P5505954181710526844.correct : P5505954181710526844.Spec := by
  intro n
  simp only [A160417, Nat.add_sub_cancel]

end A160417

/-! ## A160417.P12693632038774832996

`Δ[A160118(n+1)/4]`
-/

namespace A160417.P12693632038774832996
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160118 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160417.P12693632038774832996

namespace A160417

/-- `Δ[A160118(n+1)/4]` -/
def P12693632038774832996.Spec : Prop :=
  ∀ n, P12693632038774832996.a n = (A160417 (n + 1) : ℚ)

end A160417

/-! ## A160417.P3518679028337131819

`A002265(A160415(n+2))`
-/

namespace A160417.P3518679028337131819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A160415 (n + 2)).toNat

end

end A160417.P3518679028337131819

namespace A160417

/-- `A002265(A160415(n+2))` -/
def P3518679028337131819.Spec : Prop :=
  ∀ n, P3518679028337131819.a n = A160417 (n + 1)

end A160417

/-! ## A160417.P12786636905172130509

`A002264(A160797(n+2))`
-/

namespace A160417.P12786636905172130509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A160797 (n + 2)).toNat

end

end A160417.P12786636905172130509

namespace A160417

/-- `A002264(A160797(n+2))` -/
def P12786636905172130509.Spec : Prop :=
  ∀ n, P12786636905172130509.a n = A160417 (n + 1)

end A160417

/-! ## A160417.P18084757947056211363

`A008621(A160415(n+2)-1)`
-/

namespace A160417.P18084757947056211363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A160415 (n + 2) - 1).toNat

end

end A160417.P18084757947056211363

namespace A160417

/-- `A008621(A160415(n+2)-1)` -/
def P18084757947056211363.Spec : Prop :=
  ∀ n, P18084757947056211363.a n = A160417 (n + 1)

end A160417

/-! ## A160417.P11731155195149521311

`A008620(A160797(n+2)-2)`
-/

namespace A160417.P11731155195149521311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A160797 (n + 2) - 2).toNat

end

end A160417.P11731155195149521311

namespace A160417

/-- `A008620(A160797(n+2)-2)` -/
def P11731155195149521311.Spec : Prop :=
  ∀ n, P11731155195149521311.a n = A160417 (n + 1)

end A160417

/-! ## A160417.P3466955777179416864

`Δ[A008620(∑[A160797(n+1)])]`
-/

namespace A160417.P3466955777179416864
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160797 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160417.P3466955777179416864

namespace A160417

/-- `Δ[A008620(∑[A160797(n+1)])]` -/
def P3466955777179416864.Spec : Prop :=
  ∀ n, P3466955777179416864.a n = A160417 (n + 1)

end A160417

/-! ## A160417.P9644470923134186803

`Δ[A063200(A160796(n+1))-A160796(n+1)]`
-/

namespace A160417.P9644470923134186803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063200 (A160796 (n + 1)).toNat - A160796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160417.P9644470923134186803

namespace A160417

/-- `Δ[A063200(A160796(n+1))-A160796(n+1)]` -/
def P9644470923134186803.Spec : Prop :=
  ∀ n, P9644470923134186803.a n = A160417 (n + 1)

end A160417

/-! ## A160417.P6298578127802170609

`A306556(A071044(n+1))`
-/

namespace A160417.P6298578127802170609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306556 (A071044 (n + 1)).toNat

end

end A160417.P6298578127802170609

namespace A160417

/-- `A306556(A071044(n+1))` -/
def P6298578127802170609.Spec : Prop :=
  ∀ n, P6298578127802170609.a n = A160417 (n + 1)

end A160417

/-!
# A160418: a(n) = A160407(n+2)/2.

The programs for A160418, there is no canonical definition to state claims against.
-/

/-! ## A160418.P6358381307569843771

`A160407(n+3)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A160418.P6358381307569843771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160407 (n + 3) : ℚ) / 2

end

end A160418.P6358381307569843771

/-! ## A160418.P16994284136892421947

`ceil(A255045(n+2)/2)`
-/

namespace A160418.P16994284136892421947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A255045 (n + 2) : ℚ) / 2⌉

end

end A160418.P16994284136892421947

/-! ## A160418.P13543374535312641952

`ceil(A151704(n+2)/4)`
-/

namespace A160418.P13543374535312641952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A151704 (n + 2) : ℚ) / 4⌉

end

end A160418.P13543374535312641952

/-! ## A160418.P13519389398387087198

`ceil(A160552(n+2)/4)`
-/

namespace A160418.P13519389398387087198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A160552 (n + 2) : ℚ) / 4⌉

end

end A160418.P13519389398387087198

/-! ## A160418.P4854216605386728061

`ceil(A151569(n+2)/12)`
-/

namespace A160418.P4854216605386728061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A151569 (n + 2) : ℚ) / 12⌉

end

end A160418.P4854216605386728061

/-! ## A160418.P15161074677374001689

`ceil(A266529(2*(n+3))/4)`
-/

namespace A160418.P15161074677374001689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A266529 (2 * (n + 3)) : ℚ) / 4⌉

end

end A160418.P15161074677374001689

/-! ## A160418.P11469571053481895689

`A152978(n)+1-a(n-1)` with `a(0)=1`
-/

namespace A160418.P11469571053481895689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A152978 n + (1 - a (n - 1))

end

end A160418.P11469571053481895689

/-! ## A160418.P17929579890245320602

`ceil(Δ[A255747(n+1)/2]/2)`
-/

namespace A160418.P17929579890245320602
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255747 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) - f1 n) / 2⌉

end

end A160418.P17929579890245320602

/-! ## A160418.P8748882418606732872

`1-(a(n-1)-Δ[A152998(n)/2])` with `a(0)=1`
-/

namespace A160418.P8748882418606732872
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152998 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  1 - (a (n - 1) - (f1 (n + 1) - f1 n))

end

end A160418.P8748882418606732872

/-! ## A160418.P15471441905891550139

`A008647(A151569(n+2))`
-/

namespace A160418.P15471441905891550139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008647 (A151569 (n + 2)).toNat

end

end A160418.P15471441905891550139

/-!
# A160420: Number of "ON" cells at n-th stage in simple 2-dimensional cellular automaton whose skeleton is the same network as the toothpick structure of A139250 but with toothpicks of length 4.

The programs for A160420, there is no canonical definition to state claims against.
-/

/-! ## A160420.P1012682695716584204

`A160421(n)+a(n-1)` with `a(0)=0`
-/

namespace A160420.P1012682695716584204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A160421 n + a (n - 1)

end

end A160420.P1012682695716584204

/-! ## A160420.P456991548462266531

`A160164(n)+A147614(n)`
-/

namespace A160420.P456991548462266531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160164 n + A147614 n

end

end A160420.P456991548462266531

/-! ## A160420.P3077395564881722202

`A160422(n)-A160164(n)`
-/

namespace A160420.P3077395564881722202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160422 n - A160164 n

end

end A160420.P3077395564881722202

/-! ## A160420.P16527905147274379027

`A147614(n)+2*A139250(n)`
-/

namespace A160420.P16527905147274379027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147614 n + 2 * A139250 n

end

end A160420.P16527905147274379027

/-! ## A160420.P16000997767751225154

`A160422(n)-2*A139250(n)`
-/

namespace A160420.P16000997767751225154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160422 n - 2 * A139250 n

end

end A160420.P16000997767751225154

/-!
# A160421: First differences of A160420.

The programs for A160421, there is no canonical definition to state claims against.
-/

/-! ## A160421.P17686562966412918352

`Δ[A160420(n)]`
-/

namespace A160421.P17686562966412918352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160421.P17686562966412918352

/-! ## A160421.P2340449653455146407

`Δ[A160164(n)+A147614(n)]`
-/

namespace A160421.P2340449653455146407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160164 n + A147614 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160421.P2340449653455146407

/-! ## A160421.P1617319771216857614

`Δ[A160422(n)-A160164(n)]`
-/

namespace A160421.P1617319771216857614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160422 n - A160164 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160421.P1617319771216857614

/-! ## A160421.P10465555651130118414

`A160420(n+1)-A160420(n)`
-/

namespace A160421.P10465555651130118414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160420 (n + 1) - A160420 n

end

end A160421.P10465555651130118414

/-! ## A160421.P5513126322101439916

`A162625(n+1)+Δ[A160164(n)]`
-/

namespace A160421.P5513126322101439916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160164 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162625 (n + 1) + (f1 (n + 1) - f1 n)

end

end A160421.P5513126322101439916

/-!
# A160422: Number of "ON" cells at n-th stage in simple 2-dimensional cellular automaton whose virtual skeleton is a polyedge as the toothpick structure of A139250 but with toothpicks of length 6.

The programs for A160422, there is no canonical definition to state claims against.
-/

/-! ## A160422.P8071874321722129489

`A160420(n)+2*A139250(n)`
-/

namespace A160422.P8071874321722129489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160420 n + 2 * A139250 n

end

end A160422.P8071874321722129489

/-! ## A160422.P4022046296520397527

`A147614(n)+4*A139250(n)`
-/

namespace A160422.P4022046296520397527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147614 n + 4 * A139250 n

end

end A160422.P4022046296520397527

/-! ## A160422.P921192435810978309

`A160420(n)+A160164(n)`
-/

namespace A160422.P921192435810978309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160420 n + A160164 n

end

end A160422.P921192435810978309

/-! ## A160422.P14836924738244151596

`A147614(n)+2*A160164(n)`
-/

namespace A160422.P14836924738244151596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147614 n + 2 * A160164 n

end

end A160422.P14836924738244151596

/-! ## A160422.P5250264590487925684

`2*A160420(n)-A147614(n)`
-/

namespace A160422.P5250264590487925684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A160420 n - A147614 n

end

end A160422.P5250264590487925684

/-!
# A160423: First differences of A160422.

The programs for A160423, there is no canonical definition to state claims against.
-/

/-! ## A160423.P12226305276077511613

`Δ[A160422(n)]`
-/

namespace A160423.P12226305276077511613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160423.P12226305276077511613

/-! ## A160423.P12020365101791606356

`Δ[A160420(n)+A160164(n)]`
-/

namespace A160423.P12020365101791606356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160420 n + A160164 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160423.P12020365101791606356

/-! ## A160423.P9814671936578509983

`A160422(n+1)-A160422(n)`
-/

namespace A160423.P9814671936578509983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160422 (n + 1) - A160422 n

end

end A160423.P9814671936578509983

/-! ## A160423.P14689332622084103063

`A160421(n+1)+Δ[A160164(n)]`
-/

namespace A160423.P14689332622084103063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160164 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160421 (n + 1) + (f1 (n + 1) - f1 n)

end

end A160423.P14689332622084103063

/-! ## A160423.P4727061133492217363

`Δ[A160420(n)+2*A139250(n)]`
-/

namespace A160423.P4727061133492217363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160420 n + 2 * A139250 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160423.P4727061133492217363

/-!
# A160424: Partial sums of A139250.

The programs for A160424, there is no canonical definition to state claims against.
-/

/-! ## A160424.P14222016030450123883

`∑[A139250(n)]`
-/

namespace A160424.P14222016030450123883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160424.P14222016030450123883

/-! ## A160424.P6390460144006115290

`∑[∑[A139251(n)]]`
-/

namespace A160424.P6390460144006115290
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160424.P6390460144006115290

/-! ## A160424.P14713723204335165162

`∑[A160164(n)/2]`
-/

namespace A160424.P14713723204335165162
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160164 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160424.P14713723204335165162

/-! ## A160424.P8112829179156248669

`∑[floor(A187220(n+1)/2)]`
-/

namespace A160424.P8112829179156248669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A187220 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160424.P8112829179156248669

/-! ## A160424.P5728771719492902106

`∑[A173522(n)+A173454(n)]`
-/

namespace A160424.P5728771719492902106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173522 n + A173454 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160424.P5728771719492902106

/-! ## A160424.P12606342719625381883

`A139250(n)+a(A023443(n))` with `a(0)=0, a(1)=1`
-/

namespace A160424.P12606342719625381883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A139250 n + a (A023443 n).toNat

end

end A160424.P12606342719625381883

/-! ## A160424.P17872616953770953450

`∑[2*A153006(n)-A152998(n)]`
-/

namespace A160424.P17872616953770953450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153006 n - A152998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160424.P17872616953770953450

/-! ## A160424.P14976988572397507460

`∑[2*A255747(n)]-A255747(n)`
-/

namespace A160424.P14976988572397507460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A255747 n

end

end A160424.P14976988572397507460

/-! ## A160424.P166204406268176978

`∑[∑[2*A160552(n)]-A160552(n)]`
-/

namespace A160424.P166204406268176978
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A160552 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A160552 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160424.P166204406268176978

/-! ## A160424.P102410259606494210

`∑[A266530(Δ[n²])]`
-/

namespace A160424.P102410259606494210
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266530 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160424.P102410259606494210

/-! ## A160424.P16763026098453237373

`∑[A266530(2*n+1)+A235796(A001316(n))]`
-/

namespace A160424.P16763026098453237373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266530 (2 * n + 1) + A235796 (A001316 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160424.P16763026098453237373

/-! ## A160424.P9510338790104260543

`∑[A325817(A001316(2*(n+2)))+A266530(2*n+1)]`
-/

namespace A160424.P9510338790104260543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325817 (A001316 (2 * (n + 2))).toNat + A266530 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160424.P9510338790104260543

/-! ## A160424.P5013322530424515438

`∑[A266530(2*n+3)]-A266530(2*n+3)`
-/

namespace A160424.P5013322530424515438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266530 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A266530 (2 * n + 3)

end

end A160424.P5013322530424515438

/-! ## A160424.P15249663378839644134

`∑[A004525(A160164(n))]`
-/

namespace A160424.P15249663378839644134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A160164 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160424.P15249663378839644134

/-! ## A160424.P10601959216254532695

`∑[A061721(A187220(n+1))]`
-/

namespace A160424.P10601959216254532695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061721 (A187220 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160424.P10601959216254532695

/-! ## A160424.P8910535904691834068

`∑[A025480(A187220(n+1)-1)]`
-/

namespace A160424.P8910535904691834068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A187220 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160424.P8910535904691834068

/-!
# A160426: Toothpick sequence starting from an asymmetric cross, with four edges of length 1, 2, 3 and 4, formed by five toothpicks of length 2.

The programs for A160426, there is no canonical definition to state claims against.
-/

/-! ## A160426.P10267272547622507571

`A160427(n)+a(n-1)` with `a(0)=0`
-/

namespace A160426.P10267272547622507571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A160427 n + a (n - 1)

end

end A160426.P10267272547622507571

/-! ## A160426.P7225505378074899158

`∑[A160427(A028310(n))]-5`
-/

namespace A160426.P7225505378074899158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160427 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 5

end

end A160426.P7225505378074899158

/-! ## A160426.P16837098450567219805

`∑[A057427(n)*A160427(A028310(n))]`
-/

namespace A160426.P16837098450567219805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A160427 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160426.P16837098450567219805

/-! ## A160426.P13632081837990376050

`∑[A160427(A028310(n))%A003215(n)]`
-/

namespace A160426.P13632081837990376050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160427 (A028310 n).toNat) (A003215 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160426.P13632081837990376050

/-! ## A160426.P7388945179761848014

`∑[A160427(A000038(n)+n)%A003215(n)]`
-/

namespace A160426.P7388945179761848014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160427 (A000038 n + (n : ℤ)).toNat) (A003215 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160426.P7388945179761848014

/-! ## A160426.P15713157934433107229

`∑[A000040(n+1)%2*A160427(A028310(n))]`
-/

namespace A160426.P15713157934433107229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A160427 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160426.P15713157934433107229

/-! ## A160426.P5617828089858666894

`∑[A160427(n+1)]-A160427(n+1)`
-/

namespace A160426.P5617828089858666894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160427 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A160427 (n + 1)

end

end A160426.P5617828089858666894

/-!
# A160427: First differences of A160426.

The programs for A160427, there is no canonical definition to state claims against.
-/

/-! ## A160427.P893419831613637665

`Δ[A160426(n)]`
-/

namespace A160427.P893419831613637665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160426 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160427.P893419831613637665

/-! ## A160427.P16697872304476088256

`A160426(n+1)-A160426(n)`
-/

namespace A160427.P16697872304476088256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160426 (n + 1) - A160426 n

end

end A160427.P16697872304476088256

/-! ## A160427.P1669612822593364197

`A160426(n+1)+A160426(n)/A008683(A240475(n+1))`
-/

namespace A160427.P1669612822593364197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160426 (n + 1) : ℚ) + (A160426 n : ℚ) / (A008683 (A240475 (n + 1)).toNat : ℚ)

end

end A160427.P1669612822593364197

/-!
# A160428: Number of ON cells at n-th stage of three-dimensional version of the cellular automaton A160410, using cubes.

The programs for A160428, the canonical program `A160428.P12855854113436876490` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160428 has offset 0).

The definition of A160428 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A160428.P14398615751762453229

`A040012(n)*A161342(n)`
-/

namespace A160428.P14398615751762453229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040012 n * A161342 n

end

end A160428.P14398615751762453229

namespace A160428

/-- `A040012(n)*A161342(n)` -/
def P14398615751762453229.Spec : Prop :=
  ∀ n, P14398615751762453229.a n = A160428 n

end A160428

/-! ## A160428.P12855854113436876490

`∑[A160429(n+1)]-A160429(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A160428

/-- `∑[A160429(n+1)]-A160429(n+1)` -/
def P12855854113436876490.Spec : Prop :=
  ∀ n, P12855854113436876490.a n = A160428 n

theorem P12855854113436876490.correct : P12855854113436876490.Spec := by
  intro n
  simp only [A160428]

end A160428

/-! ## A160428.P16206728944790397778

`8*(∑[7^A000120(n)]-7^A000120(n))`
-/

namespace A160428.P16206728944790397778
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) ^ (A000120 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  8 * (∑ j ∈ Finset.range (n + 1), f1 j - (7 : ℚ) ^ (A000120 n : ℤ))

end

end A160428.P16206728944790397778

namespace A160428

/-- `8*(∑[7^A000120(n)]-7^A000120(n))` -/
def P16206728944790397778.Spec : Prop :=
  ∀ n, P16206728944790397778.a n = (A160428 n : ℚ)

end A160428

/-! ## A160428.P3171045577462581364

`A161342(2*n)`
-/

namespace A160428.P3171045577462581364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161342 (2 * n)

end

end A160428.P3171045577462581364

namespace A160428

/-- `A161342(2*n)` -/
def P3171045577462581364.Spec : Prop :=
  ∀ n, P3171045577462581364.a n = A160428 n

end A160428

/-! ## A160428.P13678469721495535712

`record[A161342(n%4+n)]`
-/

namespace A160428.P13678469721495535712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161342 (n % 4 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160428.P13678469721495535712

namespace A160428

/-- `record[A161342(n%4+n)]` -/
def P13678469721495535712.Spec : Prop :=
  ∀ n, P13678469721495535712.a n = A160428 n

end A160428

/-! ## A160428.P7233215359588219444

`record[A161342(floor(n/2^val(n+1, 2)))]`
-/

namespace A160428.P7233215359588219444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161342 ⌊(n : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160428.P7233215359588219444

namespace A160428

/-- `record[A161342(floor(n/2^val(n+1, 2)))]` -/
def P7233215359588219444.Spec : Prop :=
  ∀ n, P7233215359588219444.a n = A160428 n

end A160428

/-! ## A160428.P6601157350250030116

`A151793(2*n+1)-A151793(n+1)`
-/

namespace A160428.P6601157350250030116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151793 (2 * n + 1) - A151793 (n + 1)

end

end A160428.P6601157350250030116

namespace A160428

/-- `A151793(2*n+1)-A151793(n+1)` -/
def P6601157350250030116.Spec : Prop :=
  ∀ n, P6601157350250030116.a n = A160428 n

end A160428

/-! ## A160428.P1112474287144143038

`∑[A151782(2*(n+1))]-A151782(2*(n+1))`
-/

namespace A160428.P1112474287144143038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151782 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A151782 (2 * (n + 1))

end

end A160428.P1112474287144143038

namespace A160428

/-- `∑[A151782(2*(n+1))]-A151782(2*(n+1))` -/
def P1112474287144143038.Spec : Prop :=
  ∀ n, P1112474287144143038.a n = A160428 n

end A160428

/-!
# A160429: First differences of A160428.

The programs for A160429, the canonical program `A160429.P17383197603716212150` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160429 has offset 1).

The definition of A160429 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A160429.P17383197603716212150

`8*7^A000120(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A160429

/-- `8*7^A000120(n)` -/
def P17383197603716212150.Spec : Prop :=
  ∀ n, P17383197603716212150.a n = (A160429 (n + 1) : ℚ)

end A160429

/-! ## A160429.P14531534093276690470

`7*a(and(n, n-1))` with `a(0)=8`
-/

namespace A160429.P14531534093276690470
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [8] fun n a =>
  7 * a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

end

end A160429.P14531534093276690470

namespace A160429

/-- `7*a(and(n, n-1))` -/
def P14531534093276690470.Spec : Prop :=
  ∀ n, (P14531534093276690470.a n : ℤ) = A160429 (n + 1)

end A160429

/-! ## A160429.P6757284346811819781

`7*a(n-2^floor(log2(n)))` with `a(0)=8`
-/

namespace A160429.P6757284346811819781
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [8] fun n a =>
  7 * a (n - 2 ^ Nat.log 2 n)

end

end A160429.P6757284346811819781

namespace A160429

/-- `7*a(n-2^floor(log2(n)))` -/
def P6757284346811819781.Spec : Prop :=
  ∀ n, (P6757284346811819781.a n : ℤ) = A160429 (n + 1)

end A160429

/-! ## A160429.P11615276004031442698

`floor(7/acot(a(and(n, n-1))))` with `a(0)=8`
-/

namespace A160429.P11615276004031442698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  ⌊7 / SequenceMachineLib.acot (a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat : ℝ)⌋

end

end A160429.P11615276004031442698

namespace A160429

/-- `floor(7/acot(a(and(n, n-1))))` -/
def P11615276004031442698.Spec : Prop :=
  ∀ n, P11615276004031442698.a n = A160429 (n + 1)

end A160429

/-! ## A160429.P14766314659154896008

`8*A161343(n)`
-/

namespace A160429.P14766314659154896008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A161343 n

end

end A160429.P14766314659154896008

namespace A160429

/-- `8*A161343(n)` -/
def P14766314659154896008.Spec : Prop :=
  ∀ n, P14766314659154896008.a n = A160429 (n + 1)

end A160429

/-! ## A160429.P7338930795964612944

`Δ[A160428(n)]`
-/

namespace A160429.P7338930795964612944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160429.P7338930795964612944

namespace A160429

/-- `Δ[A160428(n)]` -/
def P7338930795964612944.Spec : Prop :=
  ∀ n, P7338930795964612944.a n = A160429 (n + 1)

end A160429

/-! ## A160429.P7168089589147231962

`A160428(n+1)-A160428(n)`
-/

namespace A160429.P7168089589147231962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160428 (n + 1) - A160428 n

end

end A160429.P7168089589147231962

namespace A160429

/-- `A160428(n+1)-A160428(n)` -/
def P7168089589147231962.Spec : Prop :=
  ∀ n, P7168089589147231962.a n = A160429 (n + 1)

end A160429

/-! ## A160429.P12783856275263216628

`Δ[A161342(2*n)]`
-/

namespace A160429.P12783856275263216628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161342 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160429.P12783856275263216628

namespace A160429

/-- `Δ[A161342(2*n)]` -/
def P12783856275263216628.Spec : Prop :=
  ∀ n, P12783856275263216628.a n = A160429 (n + 1)

end A160429

/-! ## A160429.P12795002177003475358

`A151782(A117973(n))`
-/

namespace A160429.P12795002177003475358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151782 (A117973 n).toNat

end

end A160429.P12795002177003475358

namespace A160429

/-- `A151782(A117973(n))` -/
def P12795002177003475358.Spec : Prop :=
  ∀ n, P12795002177003475358.a n = A160429 (n + 1)

end A160429

/-! ## A160429.P9091166064339192973

`A151782(2*A048896(2*n))`
-/

namespace A160429.P9091166064339192973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151782 (2 * A048896 (2 * n)).toNat

end

end A160429.P9091166064339192973

namespace A160429

/-- `A151782(2*A048896(2*n))` -/
def P9091166064339192973.Spec : Prop :=
  ∀ n, P9091166064339192973.a n = A160429 (n + 1)

end A160429

/-! ## A160429.P15342521373657300546

`A151782(2*(n+1))`
-/

namespace A160429.P15342521373657300546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151782 (2 * (n + 1))

end

end A160429.P15342521373657300546

namespace A160429

/-- `A151782(2*(n+1))` -/
def P15342521373657300546.Spec : Prop :=
  ∀ n, P15342521373657300546.a n = A160429 (n + 1)

end A160429

/-! ## A160429.P2369258693382060671

`8*A151785(2*n+1)`
-/

namespace A160429.P2369258693382060671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A151785 (2 * n + 1)

end

end A160429.P2369258693382060671

namespace A160429

/-- `8*A151785(2*n+1)` -/
def P2369258693382060671.Spec : Prop :=
  ∀ n, P2369258693382060671.a n = A160429 (n + 1)

end A160429

/-! ## A160429.P6006204192276762519

`A151793(2*(n+1))-A151793(2*n+1)`
-/

namespace A160429.P6006204192276762519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151793 (2 * (n + 1)) - A151793 (2 * n + 1)

end

end A160429.P6006204192276762519

namespace A160429

/-- `A151793(2*(n+1))-A151793(2*n+1)` -/
def P6006204192276762519.Spec : Prop :=
  ∀ n, P6006204192276762519.a n = A160429 (n + 1)

end A160429

/-! ## A160429.P8062617788537730602

`A342611(A151787(2*(n+1)))`
-/

namespace A160429.P8062617788537730602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342611 (A151787 (2 * (n + 1))).toNat

end

end A160429.P8062617788537730602

namespace A160429

/-- `A342611(A151787(2*(n+1)))` -/
def P8062617788537730602.Spec : Prop :=
  ∀ n, P8062617788537730602.a n = A160429 (n + 1)

end A160429

/-! ## A160429.P11450199681759748039

`A037455(A161411(n+1))`
-/

namespace A160429.P11450199681759748039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037455 (A161411 (n + 1)).toNat

end

end A160429.P11450199681759748039

namespace A160429

/-- `A037455(A161411(n+1))` -/
def P11450199681759748039.Spec : Prop :=
  ∀ n, P11450199681759748039.a n = A160429 (n + 1)

end A160429

/-! ## A160429.P1021876038391396791

`A037455(A147582(2*(n+1)))`
-/

namespace A160429.P1021876038391396791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037455 (A147582 (2 * (n + 1))).toNat

end

end A160429.P1021876038391396791

namespace A160429

/-- `A037455(A147582(2*(n+1)))` -/
def P1021876038391396791.Spec : Prop :=
  ∀ n, P1021876038391396791.a n = A160429 (n + 1)

end A160429

/-!
# A160430: The 3-D toothpick sequence A160160, but using toothpicks of length 4; a(n) is the number of nodes occupied after n steps.

The programs for A160430, there is no canonical definition to state claims against.
-/

/-! ## A160430.P17434148946374081758

`A170884(n)+2*A160160(n)`
-/

namespace A160430.P17434148946374081758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170884 n + 2 * A160160 n

end

end A160430.P17434148946374081758

/-! ## A160430.P12335910449964926148

`A170884(n)+∑[2*A160161(n)]`
-/

namespace A160430.P12335910449964926148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A160161 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170884 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160430.P12335910449964926148

/-! ## A160430.P7433742350803263425

`A170884(n)+A005843(A160160(n))`
-/

namespace A160430.P7433742350803263425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170884 n + A005843 (A160160 n).toNat

end

end A160430.P7433742350803263425

/-! ## A160430.P8992333811864161116

`A170884(n)+A005843(∑[A160161(n)])`
-/

namespace A160430.P8992333811864161116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160161 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170884 n + A005843 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A160430.P8992333811864161116

/-!
# A160434: a(n) is the least number k such that (k-th prime after A002110(n)+1) - A002110(n) is not a prime, where A002110(n) is the n-th primorial.

The programs for A160434, there is no canonical definition to state claims against.
-/

/-! ## A160434.P2531718228396993699

`A127567(A028310(n))+ceil(sin(n)²)`
-/

namespace A160434.P2531718228396993699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127567 (A028310 n).toNat + ⌈Real.sin (n : ℝ) ^ 2⌉

end

end A160434.P2531718228396993699

/-! ## A160434.P11543901582496205006

`A127567(round(sqrt(n²+1)))+A057427(n)`
-/

namespace A160434.P11543901582496205006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127567 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + A057427 n

end

end A160434.P11543901582496205006

/-! ## A160434.P290065763848956525

`A127567(A008486(n)-2*n)+ceil(sin(n)²)`
-/

namespace A160434.P290065763848956525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127567 (A008486 n - (2 * n : ℤ)).toNat + ⌈Real.sin (n : ℝ) ^ 2⌉

end

end A160434.P290065763848956525

/-! ## A160434.P5179146702587503642

`A127567(round(sqrt(n²+1)))+A000040(n+1)%2`
-/

namespace A160434.P5179146702587503642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127567 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + Int.tmod (A000040 (n + 1)) 2

end

end A160434.P5179146702587503642

/-! ## A160434.P17627598248433659890

`A178334(n)+A127567(A028310(n))`
-/

namespace A160434.P17627598248433659890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A127567 (A028310 n).toNat

end

end A160434.P17627598248433659890

/-! ## A160434.P2515629227205177486

`A127567(A028310(n))-A057428(n)`
-/

namespace A160434.P2515629227205177486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127567 (A028310 n).toNat - A057428 n

end

end A160434.P2515629227205177486

/-! ## A160434.P5115193082682649853

`A165476(n²)+A127567(A028310(n))`
-/

namespace A160434.P5115193082682649853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165476 (n ^ 2) + A127567 (A028310 n).toNat

end

end A160434.P5115193082682649853

/-! ## A160434.P1351507536050292897

`A165581(n²)+A127567(A028310(n))`
-/

namespace A160434.P1351507536050292897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165581 (n ^ 2) + A127567 (A028310 n).toNat

end

end A160434.P1351507536050292897

/-! ## A160434.P7109292636857299088

`A127567(A028310(n))+A001221(A001316(n))`
-/

namespace A160434.P7109292636857299088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127567 (A028310 n).toNat + A001221 (A001316 n).toNat

end

end A160434.P7109292636857299088

/-!
# A160440: Smaller member of a pair (p,q) of cousin primes such that p and q are in different centuries.

The programs for A160440, there is no canonical definition to state claims against.
-/

/-! ## A160440.P17574859529451602053

`p?[A172367(A028505(n+1)-1)]`
-/

namespace A160440.P17574859529451602053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172367 (A028505 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A160440.P17574859529451602053

/-! ## A160440.P12526553520400481912

`p?[A151800(10*10*n)-4]`
-/

namespace A160440.P12526553520400481912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (10 * (10 * n)) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A160440.P12526553520400481912

/-! ## A160440.P8718551680702571484

`∩[A151800(10*10*n)-4, A000040(A028505(n+1))]`
-/

namespace A160440.P8718551680702571484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (10 * (10 * n)) - 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A028505 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160440.P8718551680702571484

/-!
# A160444: Expansion of g.f.: x^2*(1 + x - x^2)/(1 - 2*x^2 - 2*x^4).

The programs for A160444, the canonical program `A160444.P12441775950776829135` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160444 has offset 1).

The definition of A160444 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A160444.P12441775950776829135

`2*(a(n-2)+a(n-4))` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A160444

/-- `2*(a(n-2)+a(n-4))` -/
def P12441775950776829135.Spec : Prop :=
  ∀ n, (P12441775950776829135.a n : ℤ) = A160444 (n + 1)

theorem P12441775950776829135.correct : P12441775950776829135.Spec := by
  intro n
  simp only [A160444, Nat.add_sub_cancel]

end A160444

/-! ## A160444.P8349297523745629663

`a(n-2)+a(n-2)+a(n-4)+a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A160444.P8349297523745629663
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 1] fun n a =>
  a (n - 2) + (a (n - 2) + (a (n - 4) + a (n - 4)))

end

end A160444.P8349297523745629663

namespace A160444

/-- `a(n-2)+a(n-2)+a(n-4)+a(n-4)` -/
def P8349297523745629663.Spec : Prop :=
  ∀ n, (P8349297523745629663.a n : ℤ) = A160444 (n + 1)

theorem P8349297523745629663.correct : P8349297523745629663.Spec := by
  intro n
  simp only [A160444, Nat.add_sub_cancel, A160444.P8349297523745629663.a, A160444.P12441775950776829135.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A160444

/-! ## A160444.P6837602952881815885

`A160572((-1)^n+n+1)`
-/

namespace A160444.P6837602952881815885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160572 ((-1) ^ n + (n + 1 : ℤ)).toNat

end

end A160444.P6837602952881815885

namespace A160444

/-- `A160572((-1)^n+n+1)` -/
def P6837602952881815885.Spec : Prop :=
  ∀ n, P6837602952881815885.a n = A160444 (n + 1)

end A160444

/-! ## A160444.P4496811011262441273

`A002605(A008619(n))-A160572(n+1)`
-/

namespace A160444.P4496811011262441273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002605 (A008619 n).toNat - A160572 (n + 1)

end

end A160444.P4496811011262441273

namespace A160444

/-- `A002605(A008619(n))-A160572(n+1)` -/
def P4496811011262441273.Spec : Prop :=
  ∀ n, P4496811011262441273.a n = A160444 (n + 1)

end A160444

/-! ## A160444.P14721493366085296608

`A057427(n)*A160572(A103889(n+1))`
-/

namespace A160444.P14721493366085296608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A160572 (A103889 (n + 1)).toNat

end

end A160444.P14721493366085296608

namespace A160444

/-- `A057427(n)*A160572(A103889(n+1))` -/
def P14721493366085296608.Spec : Prop :=
  ∀ n, P14721493366085296608.a n = A160444 (n + 1)

end A160444

/-! ## A160444.P4067018487385528467

`A002605(A004526(n)+1)-A160572(n+1)`
-/

namespace A160444.P4067018487385528467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002605 (A004526 n + 1).toNat - A160572 (n + 1)

end

end A160444.P4067018487385528467

namespace A160444

/-- `A002605(A004526(n)+1)-A160572(n+1)` -/
def P4067018487385528467.Spec : Prop :=
  ∀ n, P4067018487385528467.a n = A160444 (n + 1)

end A160444

/-!
# A160445: Numerator of Hermite(n, 20/21).

The programs for A160445, the canonical program `A160445.P962757091439145700` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160445 has offset 0).

The definition of A160445 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A160445.P962757091439145700

`40*a(n-1)-882*(n-1)*a(n-2)` with `a(0)=1, a(1)=40`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A160445

/-- `40*a(n-1)-882*(n-1)*a(n-2)` -/
def P962757091439145700.Spec : Prop :=
  ∀ n, P962757091439145700.a n = A160445 n

theorem P962757091439145700.correct : P962757091439145700.Spec := by
  intro n
  simp only [A160445]

end A160445

/-!
# A160446: Number of isomorphism classes of n-fold coverings of a connected graph with Betti number 4.

The programs for A160446, there is no canonical definition to state claims against.
-/

/-! ## A160446.P10183009506620259739

`A160449(A155212(n)+12)`
-/

namespace A160446.P10183009506620259739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160449 (A155212 n + 12).toNat

end

end A160446.P10183009506620259739

/-! ## A160446.P10050836281433374138

`A160449(eq[4, A002262(n)])`
-/

namespace A160446.P10050836281433374138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160449 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A160446.P10050836281433374138

/-! ## A160446.P9102650252464723619

`A160449(eq[4, A258651(n)])`
-/

namespace A160446.P9102650252464723619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258651 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160449 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A160446.P9102650252464723619

/-! ## A160446.P11636563083071481862

`A160449(eq[5, A140207(n)])`
-/

namespace A160446.P11636563083071481862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140207 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160449 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A160446.P11636563083071481862

/-! ## A160446.P4663843835550562727

`A160449(eq[16, A059268(n)])`
-/

namespace A160446.P4663843835550562727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160449 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A160446.P4663843835550562727

/-!
# A160447: Number of isomorphism classes of n-fold coverings of a connected graph with Betti number 5.

The programs for A160447, there is no canonical definition to state claims against.
-/

/-! ## A160447.P17496714660038104146

`A160449(A167499(n+3))`
-/

namespace A160447.P17496714660038104146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160449 (A167499 (n + 3)).toNat

end

end A160447.P17496714660038104146

/-! ## A160447.P1752775273336798895

`A160449(A155212(n)+13)`
-/

namespace A160447.P1752775273336798895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160449 (A155212 n + 13).toNat

end

end A160447.P1752775273336798895

/-! ## A160447.P7290872751994550501

`A160449(A056000(n)+15)`
-/

namespace A160447.P7290872751994550501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160449 (A056000 n + 15).toNat

end

end A160447.P7290872751994550501

/-! ## A160447.P2910165275651879188

`A160449(eq[7, A066657(n)])`
-/

namespace A160447.P2910165275651879188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160449 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A160447.P2910165275651879188

/-! ## A160447.P5284167927766769693

`A160449(eq[6, A131818(n+1)])`
-/

namespace A160447.P5284167927766769693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160449 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A160447.P5284167927766769693

/-!
# A160448: Number of isomorphism classes of n-fold coverings of a connected graph with Betti number 6.

The programs for A160448, there is no canonical definition to state claims against.
-/

/-! ## A160448.P16748672423834189591

`A160449(A166136(n+4))`
-/

namespace A160448.P16748672423834189591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160449 (A166136 (n + 4)).toNat

end

end A160448.P16748672423834189591

/-! ## A160448.P9428124421498064857

`A160449(A056115(n)+21)`
-/

namespace A160448.P9428124421498064857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160449 (A056115 n + 21).toNat

end

end A160448.P9428124421498064857

/-! ## A160448.P5273540530547700664

`A160449(eq[7, A131818(n+1)])`
-/

namespace A160448.P5273540530547700664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160449 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A160448.P5273540530547700664

/-! ## A160448.P2748558891284628861

`A160449(Δ[A023545(n+1)]+10)`
-/

namespace A160448.P2748558891284628861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160449 (f1 (n + 1) - f1 n + 10).toNat

end

end A160448.P2748558891284628861

/-! ## A160448.P7408438036997688751

`A160449(A000096(n+5)-(n-1))`
-/

namespace A160448.P7408438036997688751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160449 (A000096 (n + 5) - ((n : ℤ) - 1)).toNat

end

end A160448.P7408438036997688751

/-!
# A160449: Array read by antidiagonals: T(n,k) is the number of isomorphism classes of n-fold coverings of a connected graph with Betti number k (1 <= n, 0 <= k).

The programs for A160449, there is no canonical definition to state claims against.
-/

/-! ## A160449.P9595469234381997231

`A176839(A039756(n)+1)`
-/

namespace A160449.P9595469234381997231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176839 (A039756 n + 1).toNat

end

end A160449.P9595469234381997231

/-! ## A160449.P5169580756006701039

`A048766(A016028(A132813(n)))`
-/

namespace A160449.P5169580756006701039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A016028 (A132813 n).toNat).toNat

end

end A160449.P5169580756006701039

/-! ## A160449.P7101396114269765880

`or(A001222(A347811(n)), A009999(n))`
-/

namespace A160449.P7101396114269765880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A347811 n).toNat) (A009999 n)

end

end A160449.P7101396114269765880

/-! ## A160449.P3330985243138738793

`or(A001221(A347811(n)), A073165(n))`
-/

namespace A160449.P3330985243138738793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A347811 n).toNat) (A073165 n)

end

end A160449.P3330985243138738793

/-! ## A160449.P2126083830624281969

`or(A001221(A347811(n)), A271465(n+1))`
-/

namespace A160449.P2126083830624281969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A347811 n).toNat) (A271465 (n + 1))

end

end A160449.P2126083830624281969

/-!
# A160450: Expansion of (1-34*x+276*x^2-584*x^3)/((1-3*x)*(1-4*x)*(1-8*x)*(1-24*x)).

The programs for A160450, the canonical program `A160450.P3382274997825542132` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160450 has offset 0).

The definition of A160450 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A160450.P3382274997825542132

`3^(n-1)+2*4^(n-1)+8^(n-1)+24^(n-1)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A160450

/-- `3^(n-1)+2*4^(n-1)+8^(n-1)+24^(n-1)` -/
def P3382274997825542132.Spec : Prop :=
  ∀ n, P3382274997825542132.a n = (A160450 n : ℚ)

end A160450

/-! ## A160450.P13067542284682576150

`A160449(∑[n+3]+n+3)`
-/

namespace A160450.P13067542284682576150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160449 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A160450.P13067542284682576150

namespace A160450

/-- `A160449(∑[n+3]+n+3)` -/
def P13067542284682576150.Spec : Prop :=
  ∀ n, P13067542284682576150.a n = A160450 n

end A160450

/-! ## A160450.P11304279247936566967

`record[gcd(A160449(n), A244124(n+4))]`
-/

namespace A160450.P11304279247936566967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A160449 n) (A244124 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160450.P11304279247936566967

namespace A160450

/-- `record[gcd(A160449(n), A244124(n+4))]` -/
def P11304279247936566967.Spec : Prop :=
  ∀ n, (P11304279247936566967.a n : ℤ) = A160450 n

end A160450

/-! ## A160450.P15364473427832886628

`A160449(A046691(n+2))%A046709(n+1)`
-/

namespace A160450.P15364473427832886628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160449 (A046691 (n + 2)).toNat) (A046709 (n + 1))

end

end A160450.P15364473427832886628

namespace A160450

/-- `A160449(A046691(n+2))%A046709(n+1)` -/
def P15364473427832886628.Spec : Prop :=
  ∀ n, P15364473427832886628.a n = A160450 n

end A160450

/-!
# A160451: a(n) = (4/3)*u*(u^3+6*u^2+8*u-3) where u=floor((3*n+5)/2).

The programs for A160451, the canonical program `A160451.P1535954668451377781` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160451 has offset 1).

The definition of A160451 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A160451.P1535954668451377781

`8*A033568(A001318(n+3))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A160451

/-- `8*A033568(A001318(n+3))` -/
def P1535954668451377781.Spec : Prop :=
  ∀ n, P1535954668451377781.a n = A160451 (n + 1)

theorem P1535954668451377781.correct : P1535954668451377781.Spec := by
  intro n
  simp only [A160451, Nat.add_sub_cancel]

end A160451

/-! ## A160451.P17335583917159248960

`4*A049451(A135370(n+3))`
-/

namespace A160451.P17335583917159248960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A049451 (A135370 (n + 3)).toNat

end

end A160451.P17335583917159248960

namespace A160451

/-- `4*A049451(A135370(n+3))` -/
def P17335583917159248960.Spec : Prop :=
  ∀ n, P17335583917159248960.a n = A160451 (n + 1)

end A160451

/-! ## A160451.P5968884587286982488

`A045944(A164097(n+3)-1)`
-/

namespace A160451.P5968884587286982488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045944 (A164097 (n + 3) - 1).toNat

end

end A160451.P5968884587286982488

namespace A160451

/-- `A045944(A164097(n+3)-1)` -/
def P5968884587286982488.Spec : Prop :=
  ∀ n, P5968884587286982488.a n = A160451 (n + 1)

end A160451

/-! ## A160451.P18245200592078539445

`2/A062717(A164097(n+3))^A008683(A020483(n))`
-/

namespace A160451.P18245200592078539445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A062717 (A164097 (n + 3)).toNat : ℚ) ^ (A008683 (A020483 n).toNat : ℤ)

end

end A160451.P18245200592078539445

namespace A160451

/-- `2/A062717(A164097(n+3))^A008683(A020483(n))` -/
def P18245200592078539445.Spec : Prop :=
  ∀ n, P18245200592078539445.a n = (A160451 (n + 1) : ℚ)

end A160451

/-!
# A160453: Numbers k which have a prime divisor p such that 1 is the only positive integer which divides k/p^m and is congruent to 1 modulo p, where p^(m+1) does not divide k.

The programs for A160453, there is no canonical definition to state claims against.
-/

/-! ## A160453.P17112954858153920660

`comp[A352287(n+1)]+floor(acot(n))`
-/

namespace A160453.P17112954858153920660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352287 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A160453.P17112954858153920660

/-! ## A160453.P1929639078320553615

`A000007(n)+comp[A352287(n+1)]`
-/

namespace A160453.P1929639078320553615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352287 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A160453.P1929639078320553615

/-! ## A160453.P16786421641842756438

`comp[A352287(n+1)%A016756(n)]`
-/

namespace A160453.P16786421641842756438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A352287 (n + 1)) (A016756 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A160453.P16786421641842756438

/-! ## A160453.P18359101509201058231

`comp[C(A352287(n+1), A054977(n))]`
-/

namespace A160453.P18359101509201058231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A352287 (n + 1)).toNat (A054977 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A160453.P18359101509201058231

/-! ## A160453.P17364600074734134189

`A028310(comp[A352287(n+1)])`
-/

namespace A160453.P17364600074734134189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352287 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A160453.P17364600074734134189

/-! ## A160453.P7322322161826503419

`lt[A331979(n), A328397(A308168(n+1))]`
-/

namespace A160453.P7322322161826503419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331979 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328397 (A308168 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A160453.P7322322161826503419

/-! ## A160453.P4590339144261305795

`lt[A331979(n), A325357(A325456(n+1))]`
-/

namespace A160453.P4590339144261305795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331979 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325357 (A325456 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A160453.P4590339144261305795

/-!
# A160454: Number of isomorphism classes of 5-fold coverings of a connected graph with Betti number n.

The programs for A160454, there is no canonical definition to state claims against.
-/

/-! ## A160454.P2352927474649734693

`A160449(A052905(n+2))`
-/

namespace A160454.P2352927474649734693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160449 (A052905 (n + 2)).toNat

end

end A160454.P2352927474649734693

/-! ## A160454.P2754450014660036195

`A160449(A056115(n)+10)`
-/

namespace A160454.P2754450014660036195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160449 (A056115 n + 10).toNat

end

end A160454.P2754450014660036195

/-! ## A160454.P16509818802769578618

`A160449(eq[4, A025581(n)])`
-/

namespace A160454.P16509818802769578618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160449 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A160454.P16509818802769578618

/-! ## A160454.P11684048244404813894

`A160449(eq[5, A193739(n)])`
-/

namespace A160454.P11684048244404813894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160449 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A160454.P11684048244404813894

/-! ## A160454.P11474753263032797585

`A160449(eq[9, A099375(n)])`
-/

namespace A160454.P11474753263032797585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160449 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A160454.P11474753263032797585

/-!
# A160455: Number of triangles that can be built from rods with lengths 1,2,...,n by using and concatenating all rods.

The programs for A160455, the canonical program `A160455.P8880904531920314958` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160455 has offset 3).

The definition of A160455 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A160455.P5124591360355085652

`record[A005044(∑[n])+char[2]]`
-/

namespace A160455.P5124591360355085652
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (∑ j ∈ Finset.range (n + 1), f2 j) + ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160455.P5124591360355085652

namespace A160455

/-- `record[A005044(∑[n])+char[2]]` -/
def P5124591360355085652.Spec : Prop :=
  ∀ n, P5124591360355085652.a n = A160455 (n + 3)

end A160455

/-! ## A160455.P8880904531920314958

`A005044(C(n+4, 2))%Δ[n²²]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A160455

/-- `A005044(C(n+4, 2))%Δ[n²²]` -/
def P8880904531920314958.Spec : Prop :=
  ∀ n, P8880904531920314958.a n = A160455 (n + 3)

theorem P8880904531920314958.correct : P8880904531920314958.Spec := by
  intro n
  simp only [A160455, Nat.add_sub_cancel]

end A160455

/-! ## A160455.P7847094588947968198

`A005044(C(n-floor(acot(n)²)+4, 2))`
-/

namespace A160455.P7847094588947968198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (Nat.choose ((n : ℤ) - ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋ + 4).toNat 2)

end

end A160455.P7847094588947968198

namespace A160455

/-- `A005044(C(n-floor(acot(n)²)+4, 2))` -/
def P7847094588947968198.Spec : Prop :=
  ∀ n, P7847094588947968198.a n = A160455 (n + 3)

end A160455

/-! ## A160455.P7307919325208882763

`A005044(C(n+4, 2)%(3*n+2)²)`
-/

namespace A160455.P7307919325208882763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (Nat.choose (n + 4) 2 % (3 * n + 2) ^ 2)

end

end A160455.P7307919325208882763

namespace A160455

/-- `A005044(C(n+4, 2)%(3*n+2)²)` -/
def P7307919325208882763.Spec : Prop :=
  ∀ n, P7307919325208882763.a n = A160455 (n + 3)

end A160455

/-! ## A160455.P2929157543150208701

`A266755(∑[n+3])%((4*n+1)^4)`
-/

namespace A160455.P2929157543150208701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266755 (∑ j ∈ Finset.range (n + 1), f1 j)) ((4 * n + 1) ^ 4 : ℤ)

end

end A160455.P2929157543150208701

namespace A160455

/-- `A266755(∑[n+3])%((4*n+1)^4)` -/
def P2929157543150208701.Spec : Prop :=
  ∀ n, P2929157543150208701.a n = A160455 (n + 3)

end A160455

/-! ## A160455.P15667966985842068399

`A005044(C(n+4, 2))-A000007(n)`
-/

namespace A160455.P15667966985842068399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (Nat.choose (n + 4) 2) - A000007 n

end

end A160455.P15667966985842068399

namespace A160455

/-- `A005044(C(n+4, 2))-A000007(n)` -/
def P15667966985842068399.Spec : Prop :=
  ∀ n, P15667966985842068399.a n = A160455 (n + 3)

end A160455

/-! ## A160455.P13321671840812076229

`A005044(record[A168197(n+1)+2]+∑[n])`
-/

namespace A160455.P13321671840812076229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168197 (n + 1) + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)).toNat

end

end A160455.P13321671840812076229

namespace A160455

/-- `A005044(record[A168197(n+1)+2]+∑[n])` -/
def P13321671840812076229.Spec : Prop :=
  ∀ n, P13321671840812076229.a n = A160455 (n + 3)

end A160455

/-! ## A160455.P14169504296013302811

`A000040(n+1)%2*A005044(C(n+4, 2))`
-/

namespace A160455.P14169504296013302811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A005044 (Nat.choose (n + 4) 2)

end

end A160455.P14169504296013302811

namespace A160455

/-- `A000040(n+1)%2*A005044(C(n+4, 2))` -/
def P14169504296013302811.Spec : Prop :=
  ∀ n, P14169504296013302811.a n = A160455 (n + 3)

end A160455

/-! ## A160455.P5626155484244335538

`A005044(C(n+4, 2))-A000045(C(2, n+2))`
-/

namespace A160455.P5626155484244335538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (Nat.choose (n + 4) 2) - A000045 (Nat.choose 2 (n + 2))

end

end A160455.P5626155484244335538

namespace A160455

/-- `A005044(C(n+4, 2))-A000045(C(2, n+2))` -/
def P5626155484244335538.Spec : Prop :=
  ∀ n, P5626155484244335538.a n = A160455 (n + 3)

end A160455

/-! ## A160455.P13752322078635472116

`A005044(A008795(A103517(n)+2))`
-/

namespace A160455.P13752322078635472116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (A008795 (A103517 n + 2).toNat).toNat

end

end A160455.P13752322078635472116

namespace A160455

/-- `A005044(A008795(A103517(n)+2))` -/
def P13752322078635472116.Spec : Prop :=
  ∀ n, P13752322078635472116.a n = A160455 (n + 3)

end A160455

/-! ## A160455.P1384598759427436067

`A005044(A000217(A122553(n)+n))`
-/

namespace A160455.P1384598759427436067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (A000217 (A122553 n + (n : ℤ)).toNat).toNat

end

end A160455.P1384598759427436067

namespace A160455

/-- `A005044(A000217(A122553(n)+n))` -/
def P1384598759427436067.Spec : Prop :=
  ∀ n, P1384598759427436067.a n = A160455 (n + 3)

end A160455

/-! ## A160455.P3069212526086460166

`record[A005044(A008805(n)%A001400(n))]`
-/

namespace A160455.P3069212526086460166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (Int.tmod (A008805 n) (A001400 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160455.P3069212526086460166

namespace A160455

/-- `record[A005044(A008805(n)%A001400(n))]` -/
def P3069212526086460166.Spec : Prop :=
  ∀ n, P3069212526086460166.a n = A160455 (n + 3)

end A160455

/-! ## A160455.P5531552448611574094

`A005044(A133263(A171463(n+1))-2)`
-/

namespace A160455.P5531552448611574094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (A133263 (A171463 (n + 1)).toNat - 2).toNat

end

end A160455.P5531552448611574094

namespace A160455

/-- `A005044(A133263(A171463(n+1))-2)` -/
def P5531552448611574094.Spec : Prop :=
  ∀ n, P5531552448611574094.a n = A160455 (n + 3)

end A160455

/-! ## A160455.P1936565590562863675

`A005044(A171463(2*n+1)+A133263(n+1))`
-/

namespace A160455.P1936565590562863675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (A171463 (2 * n + 1) + A133263 (n + 1)).toNat

end

end A160455.P1936565590562863675

namespace A160455

/-- `A005044(A171463(2*n+1)+A133263(n+1))` -/
def P1936565590562863675.Spec : Prop :=
  ∀ n, P1936565590562863675.a n = A160455 (n + 3)

end A160455

/-!
# A160456: Number of triangles that can be built from rods with lengths 1,2,...,n by using and concatenating not necessarily all rods.

The programs for A160456, there is no canonical definition to state claims against.
-/

/-! ## A160456.P3472846642954849797

`A362882(A064999(n))`
-/

namespace A160456.P3472846642954849797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362882 (A064999 n).toNat

end

end A160456.P3472846642954849797

/-!
# A160457: a(n) = n^2 - 2*n + 2.

The programs for A160457, the canonical program `A160457.P13231799295759563819` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160457 has offset 0).

The definition of A160457 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²-2*n+2` (program `A160457.P13231799295759563819`, by `A160457.P13231799295759563819.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A160457.P13231799295759563819

`n²-2*n+2`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A160457

/-- `n²-2*n+2` -/
def P13231799295759563819.Spec : Prop :=
  ∀ n, P13231799295759563819.a n = A160457 n

theorem P13231799295759563819.correct : P13231799295759563819.Spec := by
  intro n
  simp only [A160457]

end A160457

/-! ## A160457.P513328281202137162

`abs(xor(-1, (1-n)²))`
-/

namespace A160457.P513328281202137162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (-1) ((1 - (n : ℤ)) ^ 2)|

end

end A160457.P513328281202137162

namespace A160457

/-- `abs(xor(-1, (1-n)²))` -/
def P513328281202137162.Spec : Prop :=
  ∀ n, P513328281202137162.a n = A160457 n

end A160457

/-! ## A160457.P9458478942433554398

`-xor(-1, (1-n)²)`
-/

namespace A160457.P9458478942433554398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (-1) ((1 - (n : ℤ)) ^ 2)

end

end A160457.P9458478942433554398

namespace A160457

/-- `-xor(-1, (1-n)²)` -/
def P9458478942433554398.Spec : Prop :=
  ∀ n, P9458478942433554398.a n = A160457 n

end A160457

/-! ## A160457.P13642796163466962221

`ceil(1/acot((1-n)²))`
-/

namespace A160457.P13642796163466962221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / SequenceMachineLib.acot ((1 - (n : ℤ)) ^ 2 : ℝ)⌉

end

end A160457.P13642796163466962221

namespace A160457

/-- `ceil(1/acot((1-n)²))` -/
def P13642796163466962221.Spec : Prop :=
  ∀ n, P13642796163466962221.a n = A160457 n

end A160457

/-! ## A160457.P12693889810077205205

`ceil(acot(n-1)^-2)`
-/

namespace A160457.P12693889810077205205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot ((n : ℤ) - 1 : ℝ) ^ (-2 : ℤ)⌉

end

end A160457.P12693889810077205205

namespace A160457

/-- `ceil(acot(n-1)^-2)` -/
def P12693889810077205205.Spec : Prop :=
  ∀ n, P12693889810077205205.a n = A160457 n

end A160457

/-! ## A160457.P7333703570535230720

`(1/cos(atan(1-n)))²`
-/

namespace A160457.P7333703570535230720
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (1 / Real.cos (Real.arctan (1 - (n : ℤ) : ℝ))) ^ 2

end

end A160457.P7333703570535230720

namespace A160457

/-- `(1/cos(atan(1-n)))²` -/
def P7333703570535230720.Spec : Prop :=
  ∀ n, P7333703570535230720.a n = (A160457 n : ℝ)

end A160457

/-! ## A160457.P13017913834328248610

`cos(atan(n-1))^-2`
-/

namespace A160457.P13017913834328248610
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (Real.arctan ((n : ℤ) - 1 : ℝ)) ^ (-2 : ℤ)

end

end A160457.P13017913834328248610

namespace A160457

/-- `cos(atan(n-1))^-2` -/
def P13017913834328248610.Spec : Prop :=
  ∀ n, P13017913834328248610.a n = (A160457 n : ℝ)

end A160457

/-! ## A160457.P6295050626141427977

`(1/sin(acot(1-n)))²`
-/

namespace A160457.P6295050626141427977
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (1 / Real.sin (SequenceMachineLib.acot (1 - (n : ℤ) : ℝ))) ^ 2

end

end A160457.P6295050626141427977

namespace A160457

/-- `(1/sin(acot(1-n)))²` -/
def P6295050626141427977.Spec : Prop :=
  ∀ n, P6295050626141427977.a n = (A160457 n : ℝ)

end A160457

/-! ## A160457.P13398965797406046495

`sin(acot(n-1))^-2`
-/

namespace A160457.P13398965797406046495
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (SequenceMachineLib.acot ((n : ℤ) - 1 : ℝ)) ^ (-2 : ℤ)

end

end A160457.P13398965797406046495

namespace A160457

/-- `sin(acot(n-1))^-2` -/
def P13398965797406046495.Spec : Prop :=
  ∀ n, P13398965797406046495.a n = (A160457 n : ℝ)

end A160457

/-! ## A160457.P17574254124149978777

`abs(ceil(cot(acot(n-1)²)))`
-/

namespace A160457.P17574254124149978777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈Real.cot (SequenceMachineLib.acot ((n : ℤ) - 1 : ℝ) ^ 2)⌉|

end

end A160457.P17574254124149978777

namespace A160457

/-- `abs(ceil(cot(acot(n-1)²)))` -/
def P17574254124149978777.Spec : Prop :=
  ∀ n, P17574254124149978777.a n = A160457 n

end A160457

/-! ## A160457.P14590358441979249315

`ceil(cot(cos(atan((1-n)²))))`
-/

namespace A160457.P14590358441979249315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cot (Real.cos (Real.arctan ((1 - (n : ℤ)) ^ 2 : ℝ)))⌉

end

end A160457.P14590358441979249315

namespace A160457

/-- `ceil(cot(cos(atan((1-n)²))))` -/
def P14590358441979249315.Spec : Prop :=
  ∀ n, P14590358441979249315.a n = A160457 n

end A160457

/-! ## A160457.P15804151195838360564

`round(cot(cos(atan(n-1))²))`
-/

namespace A160457.P15804151195838360564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (Real.cos (Real.arctan ((n : ℤ) - 1 : ℝ)) ^ 2))

end

end A160457.P15804151195838360564

namespace A160457

/-- `round(cot(cos(atan(n-1))²))` -/
def P15804151195838360564.Spec : Prop :=
  ∀ n, P15804151195838360564.a n = A160457 n

end A160457

/-! ## A160457.P17228928320795527937

`ceil(cot(sin(acot((1-n)²))))`
-/

namespace A160457.P17228928320795527937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cot (Real.sin (SequenceMachineLib.acot ((1 - (n : ℤ)) ^ 2 : ℝ)))⌉

end

end A160457.P17228928320795527937

namespace A160457

/-- `ceil(cot(sin(acot((1-n)²))))` -/
def P17228928320795527937.Spec : Prop :=
  ∀ n, P17228928320795527937.a n = A160457 n

end A160457

/-! ## A160457.P707197339820786462

`round(cot(sin(acot(n-1)²)))`
-/

namespace A160457.P707197339820786462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (Real.sin (SequenceMachineLib.acot ((n : ℤ) - 1 : ℝ) ^ 2)))

end

end A160457.P707197339820786462

namespace A160457

/-- `round(cot(sin(acot(n-1)²)))` -/
def P707197339820786462.Spec : Prop :=
  ∀ n, P707197339820786462.a n = A160457 n

end A160457

/-! ## A160457.P9662408790326791954

`ceil(tan(acot(acot((1-n)²))))`
-/

namespace A160457.P9662408790326791954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tan (SequenceMachineLib.acot (SequenceMachineLib.acot ((1 - (n : ℤ)) ^ 2 : ℝ)))⌉

end

end A160457.P9662408790326791954

namespace A160457

/-- `ceil(tan(acot(acot((1-n)²))))` -/
def P9662408790326791954.Spec : Prop :=
  ∀ n, P9662408790326791954.a n = A160457 n

end A160457

/-! ## A160457.P10664188525357402075

`ceil(cot(atan(acot((1-n)²))))`
-/

namespace A160457.P10664188525357402075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cot (Real.arctan (SequenceMachineLib.acot ((1 - (n : ℤ)) ^ 2 : ℝ)))⌉

end

end A160457.P10664188525357402075

namespace A160457

/-- `ceil(cot(atan(acot((1-n)²))))` -/
def P10664188525357402075.Spec : Prop :=
  ∀ n, P10664188525357402075.a n = A160457 n

end A160457

/-! ## A160457.P15018430521092736256

`round(cot(atan(acot(n-1))²))`
-/

namespace A160457.P15018430521092736256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (Real.arctan (SequenceMachineLib.acot ((n : ℤ) - 1 : ℝ)) ^ 2))

end

end A160457.P15018430521092736256

namespace A160457

/-- `round(cot(atan(acot(n-1))²))` -/
def P15018430521092736256.Spec : Prop :=
  ∀ n, P15018430521092736256.a n = A160457 n

end A160457

/-! ## A160457.P8997071945844979601

`ceil(cot(tanh(acot((1-n)²))))`
-/

namespace A160457.P8997071945844979601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cot (Real.tanh (SequenceMachineLib.acot ((1 - (n : ℤ)) ^ 2 : ℝ)))⌉

end

end A160457.P8997071945844979601

namespace A160457

/-- `ceil(cot(tanh(acot((1-n)²))))` -/
def P8997071945844979601.Spec : Prop :=
  ∀ n, P8997071945844979601.a n = A160457 n

end A160457

/-! ## A160457.P14766317885987919042

`round(cot(tanh(acot(n-1)²)))`
-/

namespace A160457.P14766317885987919042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (Real.tanh (SequenceMachineLib.acot ((n : ℤ) - 1 : ℝ) ^ 2)))

end

end A160457.P14766317885987919042

namespace A160457

/-- `round(cot(tanh(acot(n-1)²)))` -/
def P14766317885987919042.Spec : Prop :=
  ∀ n, P14766317885987919042.a n = A160457 n

end A160457

/-!
# A160458: Coefficients in the expansion of C^2/B^10, in Watson's notation of page 106.

The programs for A160458, there is no canonical definition to state claims against.
-/

/-! ## A160458.P9709101089994856186

`∪[A008587(A160459(n+2)), A023009(n)]`
-/

namespace A160458.P9709101089994856186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (A160459 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023009 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A160458.P9709101089994856186

/-! ## A160458.P14094163150317907708

`A327184(A023009(n))/2`
-/

namespace A160458.P14094163150317907708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327184 (A023009 n).toNat : ℚ) / 2

end

end A160458.P14094163150317907708

/-!
# A160459: Omit first term of A160458 and divide by 5.

The programs for A160459, there is no canonical definition to state claims against.
-/

/-! ## A160459.P4245128883305259501

`A160458(n+1)/5`
-/

namespace A160459.P4245128883305259501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160458 (n + 1) : ℚ) / 5

end

end A160459.P4245128883305259501

/-! ## A160459.P4644745626771066041

`Δ[∑[A160458(n)]/5]`
-/

namespace A160459.P4644745626771066041
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160458 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160459.P4644745626771066041

/-!
# A160460: Coefficients in the expansion of C^6 / B^7, in Watson's notation of page 106.

The programs for A160460, there is no canonical definition to state claims against.
-/

/-! ## A160460.P5506252028519294916

`A023006(n)-A090418(A023000(n))`
-/

namespace A160460.P5506252028519294916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023006 n - A090418 (A023000 n).toNat

end

end A160460.P5506252028519294916

/-! ## A160460.P13837475757579624030

`A023006(n)-A097508(A129613(n))`
-/

namespace A160460.P13837475757579624030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023006 n - A097508 (A129613 n).toNat

end

end A160460.P13837475757579624030

/-!
# A160461: Coefficients in the expansion of C/B^2, in Watson's notation of page 106.

The programs for A160461, there is no canonical definition to state claims against.
-/

/-! ## A160461.P4597973808845945787

`A351595(3*A032889(n+1))`
-/

namespace A160461.P4597973808845945787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351595 (3 * A032889 (n + 1)).toNat

end

end A160461.P4597973808845945787

/-! ## A160461.P1193879823065291927

`A351595(3*A038367(n+1))`
-/

namespace A160461.P1193879823065291927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351595 (3 * A038367 (n + 1)).toNat

end

end A160461.P1193879823065291927

/-! ## A160461.P2971651420714844135

`A351595(3*A116069(n+1))`
-/

namespace A160461.P2971651420714844135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351595 (3 * A116069 (n + 1)).toNat

end

end A160461.P2971651420714844135

/-! ## A160461.P9713217854898486140

`A351595(A000005(Δ[Δ[3^n]]))`
-/

namespace A160461.P9713217854898486140
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351595 (A000005 (f1 (n + 1) - f1 n).toNat).toNat

end

end A160461.P9713217854898486140

/-! ## A160461.P15879810530275468577

`A351595(A051022(n)+2*n+3)`
-/

namespace A160461.P15879810530275468577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351595 (A051022 n + (2 * n + 3 : ℤ)).toNat

end

end A160461.P15879810530275468577

/-!
# A160462: Coefficients in the expansion of C^2/B^3, in Watson's notation of page 106.

The programs for A160462, there is no canonical definition to state claims against.
-/

/-! ## A160462.P9501306157100345483

`A000711(n)-A333766(A241466(n+1))`
-/

namespace A160462.P9501306157100345483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000711 n - A333766 (A241466 (n + 1)).toNat

end

end A160462.P9501306157100345483

/-! ## A160462.P2828966229168600347

`∑[∑[A175948(A005513(n+6))]]`
-/

namespace A160462.P2828966229168600347
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175948 (A005513 (n + 6)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160462.P2828966229168600347

/-! ## A160462.P11480564452994582632

`∑[A000010(n+1)+∑[A321728(2*n+1)]]`
-/

namespace A160462.P11480564452994582632
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321728 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160462.P11480564452994582632

/-!
# A160463: Coefficients in the expansion of C^3/B^4, in Watson's notation of page 106.

The programs for A160463, there is no canonical definition to state claims against.
-/

/-! ## A160463.P16310373324182507137

`A248566(A160399(n+1)-A160406(n))`
-/

namespace A160463.P16310373324182507137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248566 (A160399 (n + 1) - A160406 n).toNat

end

end A160463.P16310373324182507137

/-! ## A160463.P11614463636513918091

`A008617(A006128(3*n+4)-A335784(n+3))`
-/

namespace A160463.P11614463636513918091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (A006128 (3 * n + 4) - A335784 (n + 3)).toNat

end

end A160463.P11614463636513918091

/-!
# A160465: First left hand column of the Eta triangle A160464.

The programs for A160465, there is no canonical definition to state claims against.
-/

/-! ## A160465.P18016356066115088203

`A160464(∑[n]+2)`
-/

namespace A160465.P18016356066115088203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160464 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A160465.P18016356066115088203

/-! ## A160465.P5834888832224658101

`-record[-A160464(n+2)]`
-/

namespace A160465.P5834888832224658101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A160464 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160465.P5834888832224658101

/-! ## A160465.P8293117586678773747

`1-record[A015118(n)-A160464(n+2)]`
-/

namespace A160465.P8293117586678773747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015118 n - A160464 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160465.P8293117586678773747

/-!
# A160467: a(n) = 1 if n is odd; otherwise, a(n) = 2^(k-1) where 2^k is the largest power of 2 that divides n.

The programs for A160467, the canonical program `A160467.P4224605916113656247` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160467 has offset 1).

The definition of A160467 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A140670, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A160467.P4224605916113656247

`(1+A140670(n+1))/2`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A160467

/-- `(1+A140670(n+1))/2` -/
def P4224605916113656247.Spec : Prop :=
  ∀ n, P4224605916113656247.a n = (A160467 (n + 1) : ℚ)

end A160467

/-! ## A160467.P13680134372771202456

`ceil(xor(n, n+1)/4)`
-/

namespace A160467.P13680134372771202456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor n (n + 1) : ℚ) / 4⌉

end

end A160467.P13680134372771202456

namespace A160467

/-- `ceil(xor(n, n+1)/4)` -/
def P13680134372771202456.Spec : Prop :=
  ∀ n, P13680134372771202456.a n = A160467 (n + 1)

end A160467

/-! ## A160467.P6884869464941519146

`gcd((1-n)^12, ∑[n])`
-/

namespace A160467.P6884869464941519146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((1 - (n : ℤ)) ^ 12) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A160467.P6884869464941519146

namespace A160467

/-- `gcd((1-n)^12, ∑[n])` -/
def P6884869464941519146.Spec : Prop :=
  ∀ n, (P6884869464941519146.a n : ℤ) = A160467 (n + 1)

end A160467

/-! ## A160467.P12005377245831066030

`2^val(∑[∑[n]+1], 2)`
-/

namespace A160467.P12005377245831066030
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A160467.P12005377245831066030

namespace A160467

/-- `2^val(∑[∑[n]+1], 2)` -/
def P12005377245831066030.Spec : Prop :=
  ∀ n, (P12005377245831066030.a n : ℤ) = A160467 (n + 1)

end A160467

/-! ## A160467.P14700492419388952054

`ceil(2^(val(n+1, 2)-1))`
-/

namespace A160467.P14700492419388952054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((SequenceMachineLib.valuation (n + 1) 2 : ℤ) - 1 : ℤ)⌉

end

end A160467.P14700492419388952054

namespace A160467

/-- `ceil(2^(val(n+1, 2)-1))` -/
def P14700492419388952054.Spec : Prop :=
  ∀ n, P14700492419388952054.a n = A160467 (n + 1)

end A160467

/-! ## A160467.P14002286709640542784

`round(2^(val(n+1, 2)-1))`
-/

namespace A160467.P14002286709640542784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ ((SequenceMachineLib.valuation (n + 1) 2 : ℤ) - 1 : ℤ))

end

end A160467.P14002286709640542784

namespace A160467

/-- `round(2^(val(n+1, 2)-1))` -/
def P14002286709640542784.Spec : Prop :=
  ∀ n, P14002286709640542784.a n = A160467 (n + 1)

end A160467

/-! ## A160467.P9338321615961260293

`ceil(2^val(n+1, 2)/2)`
-/

namespace A160467.P9338321615961260293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) / 2⌉

end

end A160467.P9338321615961260293

namespace A160467

/-- `ceil(2^val(n+1, 2)/2)` -/
def P9338321615961260293.Spec : Prop :=
  ∀ n, P9338321615961260293.a n = A160467 (n + 1)

end A160467

/-! ## A160467.P3779184736168814525

`round(2^val(n+1, 2)/2)`
-/

namespace A160467.P3779184736168814525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) / 2)

end

end A160467.P3779184736168814525

namespace A160467

/-- `round(2^val(n+1, 2)/2)` -/
def P3779184736168814525.Spec : Prop :=
  ∀ n, P3779184736168814525.a n = A160467 (n + 1)

end A160467

/-! ## A160467.P10940566890004615905

`floor(xor(n, n+1)/4)+1`
-/

namespace A160467.P10940566890004615905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor n (n + 1) : ℚ) / 4⌋ + 1

end

end A160467.P10940566890004615905

namespace A160467

/-- `floor(xor(n, n+1)/4)+1` -/
def P10940566890004615905.Spec : Prop :=
  ∀ n, P10940566890004615905.a n = A160467 (n + 1)

end A160467

/-! ## A160467.P7419178930377333726

`lcm(4, xor(n, -(n+2)))/4`
-/

namespace A160467.P7419178930377333726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 4 (Int.xor (n : ℤ) (-(n + 2 : ℤ))) : ℚ) / 4

end

end A160467.P7419178930377333726

namespace A160467

/-- `lcm(4, xor(n, -(n+2)))/4` -/
def P7419178930377333726.Spec : Prop :=
  ∀ n, P7419178930377333726.a n = (A160467 (n + 1) : ℚ)

end A160467

/-! ## A160467.P11870875205154103480

`round((xor(n, n+1)+1)/4)`
-/

namespace A160467.P11870875205154103480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor n (n + 1) + 1 : ℚ) / 4)

end

end A160467.P11870875205154103480

namespace A160467

/-- `round((xor(n, n+1)+1)/4)` -/
def P11870875205154103480.Spec : Prop :=
  ∀ n, P11870875205154103480.a n = A160467 (n + 1)

end A160467

/-! ## A160467.P6599489446219351629

`ceil((or(n, n+1)-n)/2)`
-/

namespace A160467.P6599489446219351629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ) / 2⌉

end

end A160467.P6599489446219351629

namespace A160467

/-- `ceil((or(n, n+1)-n)/2)` -/
def P6599489446219351629.Spec : Prop :=
  ∀ n, P6599489446219351629.a n = A160467 (n + 1)

end A160467

/-! ## A160467.P13835057799824896721

`round((or(n, n+1)-n)/2)`
-/

namespace A160467.P13835057799824896721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ) / 2)

end

end A160467.P13835057799824896721

namespace A160467

/-- `round((or(n, n+1)-n)/2)` -/
def P13835057799824896721.Spec : Prop :=
  ∀ n, P13835057799824896721.a n = A160467 (n + 1)

end A160467

/-! ## A160467.P3459929318263602336

`floor(-or(n, -(n+2))/2)`
-/

namespace A160467.P3459929318263602336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊-((Int.lor (n : ℤ) (-(n + 2 : ℤ)) : ℚ) / 2)⌋

end

end A160467.P3459929318263602336

namespace A160467

/-- `floor(-or(n, -(n+2))/2)` -/
def P3459929318263602336.Spec : Prop :=
  ∀ n, P3459929318263602336.a n = A160467 (n + 1)

end A160467

/-! ## A160467.P7743921302960928503

`-ceil(or(n, -(n+2))/2)`
-/

namespace A160467.P7743921302960928503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌈(Int.lor (n : ℤ) (-(n + 2 : ℤ)) : ℚ) / 2⌉

end

end A160467.P7743921302960928503

namespace A160467

/-- `-ceil(or(n, -(n+2))/2)` -/
def P7743921302960928503.Spec : Prop :=
  ∀ n, P7743921302960928503.a n = A160467 (n + 1)

end A160467

/-! ## A160467.P7677120923729349320

`ceil(and(n+1, -(n+1))/2)`
-/

namespace A160467.P7677120923729349320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ) / 2⌉

end

end A160467.P7677120923729349320

namespace A160467

/-- `ceil(and(n+1, -(n+1))/2)` -/
def P7677120923729349320.Spec : Prop :=
  ∀ n, P7677120923729349320.a n = A160467 (n + 1)

end A160467

/-! ## A160467.P2380918675593235004

`round(and(n+1, -(n+1))/2)`
-/

namespace A160467.P2380918675593235004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ) / 2)

end

end A160467.P2380918675593235004

namespace A160467

/-- `round(and(n+1, -(n+1))/2)` -/
def P2380918675593235004.Spec : Prop :=
  ∀ n, P2380918675593235004.a n = A160467 (n + 1)

end A160467

/-! ## A160467.P16101081666131010373

`lcm(2, and(n+1, -(n+1)))/2`
-/

namespace A160467.P16101081666131010373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))) : ℚ) / 2

end

end A160467.P16101081666131010373

namespace A160467

/-- `lcm(2, and(n+1, -(n+1)))/2` -/
def P16101081666131010373.Spec : Prop :=
  ∀ n, P16101081666131010373.a n = (A160467 (n + 1) : ℚ)

end A160467

/-! ## A160467.P7304501350610154297

`ceil((n+1-and(n, n+1))/2)`
-/

namespace A160467.P7304501350610154297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n + 1 : ℤ) - (Nat.land n (n + 1) : ℤ) : ℚ) / 2⌉

end

end A160467.P7304501350610154297

namespace A160467

/-- `ceil((n+1-and(n, n+1))/2)` -/
def P7304501350610154297.Spec : Prop :=
  ∀ n, P7304501350610154297.a n = A160467 (n + 1)

end A160467

/-! ## A160467.P7167636090407868289

`round((n+1-and(n, n+1))/2)`
-/

namespace A160467.P7167636090407868289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n + 1 : ℤ) - (Nat.land n (n + 1) : ℤ) : ℚ) / 2)

end

end A160467.P7167636090407868289

namespace A160467

/-- `round((n+1-and(n, n+1))/2)` -/
def P7167636090407868289.Spec : Prop :=
  ∀ n, P7167636090407868289.a n = A160467 (n + 1)

end A160467

/-!
# A160469: The left hand column of the triangle A160468.

The programs for A160469, there is no canonical definition to state claims against.
-/

/-! ## A160469.P10787932345583393872

`A002430(n+1)*A089170(n)`
-/

namespace A160469.P10787932345583393872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002430 (n + 1) * A089170 n

end

end A160469.P10787932345583393872

/-! ## A160469.P6590351051016869594

`A392676(n²+1)`
-/

namespace A160469.P6590351051016869594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392676 (n ^ 2 + 1)

end

end A160469.P6590351051016869594

/-! ## A160469.P706480102891607097

`record[A009006(n)]/A046161(n)`
-/

namespace A160469.P706480102891607097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009006 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A046161 n : ℚ)

end

end A160469.P706480102891607097

/-! ## A160469.P17532855996099225139

`A002425(n+1)*A048896(n)`
-/

namespace A160469.P17532855996099225139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002425 (n + 1) * A048896 n

end

end A160469.P17532855996099225139

/-!
# A160470: Third right hand column of triangles A094665 and A083061.

The programs for A160470, there is no canonical definition to state claims against.
-/

/-! ## A160470.P17260358232510818919

`∑[(n+2)²*∑[(n+1)²]]*∏[Δ[n²]]`
-/

namespace A160470.P17260358232510818919
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f4 (n + 1) : ℤ) - (f4 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * (∏ j ∈ Finset.range (n + 1), f3 j)

end

end A160470.P17260358232510818919

/-! ## A160470.P16443782809275118618

`A083061(∑[n+3])`
-/

namespace A160470.P16443782809275118618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083061 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A160470.P16443782809275118618

/-! ## A160470.P2185280447457415874

`A094665(A056000(n)+7)`
-/

namespace A160470.P2185280447457415874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094665 (A056000 n + 7).toNat

end

end A160470.P2185280447457415874

/-! ## A160470.P4248428451346411034

`A094665(A052905(n+1)+2)`
-/

namespace A160470.P4248428451346411034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094665 (A052905 (n + 1) + 2).toNat

end

end A160470.P4248428451346411034

/-! ## A160470.P7846202558703375724

`A085734(∑[n+3])/4`
-/

namespace A160470.P7846202558703375724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085734 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 4

end

end A160470.P7846202558703375724

/-!
# A160471: Fourth right hand column of triangles A094665 and A083061.

The programs for A160471, there is no canonical definition to state claims against.
-/

/-! ## A160471.P1466260973149265309

`A094665(eq[4, A193592(n)])`
-/

namespace A160471.P1466260973149265309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094665 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A160471.P1466260973149265309

/-! ## A160471.P12631502579101675400

`A094665(Δ[A023545(n+1)])`
-/

namespace A160471.P12631502579101675400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094665 (f1 (n + 1) - f1 n).toNat

end

end A160471.P12631502579101675400

/-! ## A160471.P17197139715028078335

`A094665(eq[8, A057728(n+1)])`
-/

namespace A160471.P17197139715028078335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094665 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A160471.P17197139715028078335

/-! ## A160471.P14077868154768218431

`A094665(eq[10, A239829(n+1)])`
-/

namespace A160471.P14077868154768218431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239829 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094665 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A160471.P14077868154768218431

/-! ## A160471.P12978525323058337784

`A083061(A000217(n+3)+n)`
-/

namespace A160471.P12978525323058337784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083061 (A000217 (n + 3) + (n : ℤ)).toNat

end

end A160471.P12978525323058337784

/-!
# A160472: Fifth right hand column of triangles A094665 and A083061.

The programs for A160472, there is no canonical definition to state claims against.
-/

/-! ## A160472.P9771319026863528172

`A094665(A052905(n+3))`
-/

namespace A160472.P9771319026863528172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094665 (A052905 (n + 3)).toNat

end

end A160472.P9771319026863528172

/-! ## A160472.P3203404419092029738

`A094665(eq[3, A219347(n)])`
-/

namespace A160472.P3203404419092029738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094665 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A160472.P3203404419092029738

/-! ## A160472.P10661252497143551554

`A094665(eq[5, A193592(n)])`
-/

namespace A160472.P10661252497143551554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094665 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A160472.P10661252497143551554

/-! ## A160472.P14080244321483754132

`A094665(eq[8, A243070(n+1)])`
-/

namespace A160472.P14080244321483754132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243070 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094665 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A160472.P14080244321483754132

/-! ## A160472.P572266305437936502

`A094665(eq[16, A057728(n+1)])`
-/

namespace A160472.P572266305437936502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094665 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A160472.P572266305437936502

/-!
# A160473: The p(n) sequence that is associated with the Eta triangle A160464.

The programs for A160473, there is no canonical definition to state claims against.
-/

/-! ## A160473.P9977127112494217245

`∏[A014105(n+1)/(2-char[2^n-1])]`
-/

namespace A160473.P9977127112494217245
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014105 (n + 1) : ℚ) / (2 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A160473.P9977127112494217245

/-! ## A160473.P14949060934743421022

`∏[A000217(2*(n+1))/(2-char[2^n-1])]`
-/

namespace A160473.P14949060934743421022
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (2 * (n + 1)) : ℚ) / (2 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A160473.P14949060934743421022

/-! ## A160473.P13392924022686022637

`∏[∑[A004767(n)]/A043529(n)]`
-/

namespace A160473.P13392924022686022637
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / (A043529 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A160473.P13392924022686022637

/-! ## A160473.P4138819959343071010

`A000079(A080791(n+1))*A049606(2*n+3)`
-/

namespace A160473.P4138819959343071010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A080791 (n + 1)).toNat * A049606 (2 * n + 3)

end

end A160473.P4138819959343071010

/-! ## A160473.P5807512650747060673

`A001803(n+1)/A046161(n+1)*A162440(n+2)`
-/

namespace A160473.P5807512650747060673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001803 (n + 1) : ℚ) / (A046161 (n + 1) : ℚ) * (A162440 (n + 2) : ℚ)

end

end A160473.P5807512650747060673

/-!
# A160475: First left hand column of the Zeta triangle A160474.

The programs for A160475, there is no canonical definition to state claims against.
-/

/-! ## A160475.P11730012532427029928

`A160474(∑[n]+2)`
-/

namespace A160475.P11730012532427029928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160474 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A160475.P11730012532427029928

/-! ## A160475.P15420777258654156931

`A185238(n)+A160474(A089071(n+2))`
-/

namespace A160475.P15420777258654156931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185238 n + A160474 (A089071 (n + 2)).toNat

end

end A160475.P15420777258654156931

/-!
# A160476: The first right hand column of the Zeta and Lambda triangles.

The programs for A160476, there is no canonical definition to state claims against.
-/

/-! ## A160476.P254282788178553550

`a(n-1)*A160479(n+2)` with `a(0)=1`
-/

namespace A160476.P254282788178553550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A160479 (n + 2)

end

end A160476.P254282788178553550

/-! ## A160476.P8265278603637016465

`lcm(a(n-1), A202318(n+1))` with `a(0)=1`
-/

namespace A160476.P8265278603637016465
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A202318 (n + 1))

end

end A160476.P8265278603637016465

/-! ## A160476.P2144754098641891014

`∏[A145737(n+1)*A217983(n+1)]`
-/

namespace A160476.P2144754098641891014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145737 (n + 1) * A217983 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A160476.P2144754098641891014

/-! ## A160476.P6737085772456661248

`∏[A160479(n+3)]/A160479(n+3)`
-/

namespace A160476.P6737085772456661248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160479 (n + 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A160479 (n + 3) : ℚ)

end

end A160476.P6737085772456661248

/-!
# A160479: The ZL(n) sequence of the Zeta and Lambda triangles A160474 and A160487.

The programs for A160479, there is no canonical definition to state claims against.
-/

/-! ## A160479.P7084143854701638139

`A381887(2*(n+2))`
-/

namespace A160479.P7084143854701638139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381887 (2 * (n + 2))

end

end A160479.P7084143854701638139

/-! ## A160479.P2444487968045021890

`ratio[lcm(a(n-1), A202318(n+1))]` with `a(0)=1`
-/

namespace A160479.P2444487968045021890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.lcm (f1 (n - 1) : ℤ) (A202318 (n + 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A160479.P2444487968045021890

/-! ## A160479.P2297986955436995734

`A145737(n+2)*A217983(n+2)`
-/

namespace A160479.P2297986955436995734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145737 (n + 2) * A217983 (n + 2)

end

end A160479.P2297986955436995734

/-! ## A160479.P7504322811180322614

`A128059(n+3)*A217983(n+2)`
-/

namespace A160479.P7504322811180322614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128059 (n + 3) * A217983 (n + 2)

end

end A160479.P7504322811180322614

/-! ## A160479.P10601675563062018848

`ratio[A160476(n+2)]`
-/

namespace A160479.P10601675563062018848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160476 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A160479.P10601675563062018848

/-!
# A160481: Row sums of the Beta triangle A160480.

The programs for A160481, there is no canonical definition to state claims against.
-/

/-! ## A160481.P5097980455685645276

`Δ[n²]!-A002474(n)`
-/

namespace A160481.P5097980455685645276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℤ) - A002474 n

end

end A160481.P5097980455685645276

/-! ## A160481.P18388334425968831148

`-2^n*n!*A129890(n)`
-/

namespace A160481.P18388334425968831148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((2 ^ n * Nat.factorial n : ℤ) * A129890 n)

end

end A160481.P18388334425968831148

/-! ## A160481.P14485240608397315117

`-A000165(n)*A129890(n)`
-/

namespace A160481.P14485240608397315117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A000165 n * A129890 n)

end

end A160481.P14485240608397315117

/-! ## A160481.P4901862663720802997

`A189790(2*n+1)-A002474(n)`
-/

namespace A160481.P4901862663720802997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189790 (2 * n + 1) - A002474 n

end

end A160481.P4901862663720802997

/-! ## A160481.P7126262016925635499

`A000142(2*n+1)-A001900(2*n+1)`
-/

namespace A160481.P7126262016925635499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (2 * n + 1) - A001900 (2 * n + 1)

end

end A160481.P7126262016925635499

/-!
# A160482: Second left hand column of the Beta triangle A160480.

The programs for A160482, there is no canonical definition to state claims against.
-/

/-! ## A160482.P6467829054532185084

`record[A160480(n+4)]`
-/

namespace A160482.P6467829054532185084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160480 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160482.P6467829054532185084

/-! ## A160482.P12876030087527962980

`A160480(∑[n+1]+3)`
-/

namespace A160482.P12876030087527962980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160480 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A160482.P12876030087527962980

/-!
# A160483: Second right hand column of the Beta triangle A160480.

The programs for A160483, the canonical program `A160483.P5032807256580291187` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160483 has offset 1).

The definition of A160483 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A160483.P5032807256580291187

`Δ[∑[A195605(n)]*A033999(n)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A160483

/-- `Δ[∑[A195605(n)]*A033999(n)]` -/
def P5032807256580291187.Spec : Prop :=
  ∀ n, P5032807256580291187.a n = A160483 (n + 1)

theorem P5032807256580291187.correct : P5032807256580291187.Spec := by
  intro n
  simp only [A160483, Nat.add_sub_cancel]

end A160483

/-! ## A160483.P14343621131609515722

`-xor(A000292(2*n+3), A062157(n+1))`
-/

namespace A160483.P14343621131609515722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (A000292 (2 * n + 3)) (A062157 (n + 1))

end

end A160483.P14343621131609515722

namespace A160483

/-- `-xor(A000292(2*n+3), A062157(n+1))` -/
def P14343621131609515722.Spec : Prop :=
  ∀ n, P14343621131609515722.a n = A160483 (n + 1)

end A160483

/-! ## A160483.P951173214767620498

`-xor(A000292(2*n+3), A057077(2*n))`
-/

namespace A160483.P951173214767620498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (A000292 (2 * n + 3)) (A057077 (2 * n))

end

end A160483.P951173214767620498

namespace A160483

/-- `-xor(A000292(2*n+3), A057077(2*n))` -/
def P951173214767620498.Spec : Prop :=
  ∀ n, P951173214767620498.a n = A160483 (n + 1)

end A160483

/-! ## A160483.P18213155075178460714

`(A000292(2*n+3)+1)*A033999(n+1)`
-/

namespace A160483.P18213155075178460714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000292 (2 * n + 3) + 1) * A033999 (n + 1)

end

end A160483.P18213155075178460714

namespace A160483

/-- `(A000292(2*n+3)+1)*A033999(n+1)` -/
def P18213155075178460714.Spec : Prop :=
  ∀ n, P18213155075178460714.a n = A160483 (n + 1)

end A160483

/-! ## A160483.P13283937617446002137

`(A000292(2*n+3)+1)*A009531(2*n+3)`
-/

namespace A160483.P13283937617446002137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000292 (2 * n + 3) + 1) * A009531 (2 * n + 3)

end

end A160483.P13283937617446002137

namespace A160483

/-- `(A000292(2*n+3)+1)*A009531(2*n+3)` -/
def P13283937617446002137.Spec : Prop :=
  ∀ n, P13283937617446002137.a n = A160483 (n + 1)

end A160483

/-!
# A160484: Third right hand column of the Beta triangle A160480.

The programs for A160484, there is no canonical definition to state claims against.
-/

/-! ## A160484.P16519869558002840686

`A160480(∑[n+3]+2)`
-/

namespace A160484.P16519869558002840686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160480 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A160484.P16519869558002840686

/-!
# A160486: Triangle of polynomial coefficients related to the o.g.f.s. of the RBS1 polynomials.

The programs for A160486, there is no canonical definition to state claims against.
-/

/-! ## A160486.P16907387748830910468

`A008971(2*n-(n-C(∑[char[∑[n]]], 2)))`
-/

namespace A160486.P16907387748830910468
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008971 ((2 * n : ℤ) - ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ))).toNat

end

end A160486.P16907387748830910468

/-! ## A160486.P1847266464571406520

`A008971(A061885(n))`
-/

namespace A160486.P1847266464571406520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008971 (A061885 n).toNat

end

end A160486.P1847266464571406520

/-! ## A160486.P1615793231839663177

`A008971(A057944(n)+n)`
-/

namespace A160486.P1615793231839663177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008971 (A057944 n + (n : ℤ)).toNat

end

end A160486.P1615793231839663177

/-! ## A160486.P2267922341712110645

`A008971(eq[1, Δ[A053615(n)]])`
-/

namespace A160486.P2267922341712110645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008971 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A160486.P2267922341712110645

/-! ## A160486.P9955838151797578050

`A008971(A004201(n+1)-1)`
-/

namespace A160486.P9955838151797578050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008971 (A004201 (n + 1) - 1).toNat

end

end A160486.P9955838151797578050

/-!
# A160488: First left hand column of the Lambda triangle A160487.

The programs for A160488, there is no canonical definition to state claims against.
-/

/-! ## A160488.P13070364545095245595

`A160487(∑[n]+2)`
-/

namespace A160488.P13070364545095245595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160487 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A160488.P13070364545095245595

/-!
# A160491: First differences of A062481.

The programs for A160491, there is no canonical definition to state claims against.
-/

/-! ## A160491.P14155567290424299715

`A062481(n+2)-A062481(n+1)`
-/

namespace A160491.P14155567290424299715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062481 (n + 2) - A062481 (n + 1)

end

end A160491.P14155567290424299715

/-! ## A160491.P11373449961344882254

`Δ[A062481(n+1)]`
-/

namespace A160491.P11373449961344882254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062481 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160491.P11373449961344882254

/-! ## A160491.P9903365721377524787

`Δ[(n+1)^A000040(n+1)]`
-/

namespace A160491.P9903365721377524787
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A000040 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160491.P9903365721377524787

/-! ## A160491.P8365906191669460868

`Δ[(n+1)^record[A006530(n+2)]]`
-/

namespace A160491.P8365906191669460868
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160491.P8365906191669460868

/-! ## A160491.P13706558332692051006

`Δ[(n+1)^record[A020639(n+2)]]`
-/

namespace A160491.P13706558332692051006
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160491.P13706558332692051006

/-!
# A160493: Maximum height of the third-order cyclotomic polynomial Phi(pqr,x) with p

The programs for A160493, there is no canonical definition to state claims against.
-/

/-! ## A160493.P6493115535555462474

`A170957(A355596(n+4))+2`
-/

namespace A160493.P6493115535555462474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170957 (A355596 (n + 4)).toNat + 2

end

end A160493.P6493115535555462474

/-! ## A160493.P18171821264994796873

`A060501(eq[A121450(n+1), A330961(n)])`
-/

namespace A160493.P18171821264994796873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330961 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060501 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A160493.P18171821264994796873

/-! ## A160493.P17999001649958518556

`A115362(A095062(n+3))+1`
-/

namespace A160493.P17999001649958518556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115362 (A095062 (n + 3)).toNat + 1

end

end A160493.P17999001649958518556

/-! ## A160493.P12775999888153123059

`A136480(36*A348659(n+1))`
-/

namespace A160493.P12775999888153123059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (36 * A348659 (n + 1)).toNat

end

end A160493.P12775999888153123059

/-! ## A160493.P149543964466426238

`A184271(∏{e}[A256571(n+1), #])`
-/

namespace A160493.P149543964466426238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256571 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184271 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A160493.P149543964466426238

/-!
# A160496: Half the number of terms in row n of A160495.

The programs for A160496, there is no canonical definition to state claims against.
-/

/-! ## A160496.P12504152515463835104

`Δ[eq[1, A160495(2*n+1)]]`
-/

namespace A160496.P12504152515463835104
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160495 (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A160496.P12504152515463835104

/-! ## A160496.P16986114184186464446

`Δ[eq[1, A160495(n+1)]/2]`
-/

namespace A160496.P16986114184186464446
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160495 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160496.P16986114184186464446

/-! ## A160496.P5855407378161702859

`A004526(Δ[eq[1, A160495(n+1)]])`
-/

namespace A160496.P5855407378161702859
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160495 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A160496.P5855407378161702859

/-! ## A160496.P13338426252610733332

`Δ[A008619(eq[1, A160495(n+1)])]`
-/

namespace A160496.P13338426252610733332
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160495 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160496.P13338426252610733332

/-! ## A160496.P4650259309492909357

`Δ[A052938(eq[1, A160495(n+1)])]`
-/

namespace A160496.P4650259309492909357
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160495 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160496.P4650259309492909357

/-! ## A160496.P12470478269993172148

`A004526(Δ[record[n-A160495(n+1)]])`
-/

namespace A160496.P12470478269993172148
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A160495 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (n + 1) - f1 n).toNat

end

end A160496.P12470478269993172148

/-! ## A160496.P1565920976447540722

`Δ[record[A008619(n)-A160495(n+1)]]`
-/

namespace A160496.P1565920976447540722
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n - A160495 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160496.P1565920976447540722

/-! ## A160496.P1060923312180258983

`Δ[record[A004526(n)/A160495(n+1)]]`
-/

namespace A160496.P1060923312180258983
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004526 n : ℚ) / (A160495 (n + 1) : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160496.P1060923312180258983

/-! ## A160496.P378947124165882773

`Δ[record[A052938(n)/A160495(n+1)]]`
-/

namespace A160496.P378947124165882773
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052938 n : ℚ) / (A160495 (n + 1) : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160496.P378947124165882773

/-! ## A160496.P463803618211883344

`Δ[record[A008619(2*n)/A160495(2*n+1)]]`
-/

namespace A160496.P463803618211883344
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 (2 * n) : ℚ) / (A160495 (2 * n + 1) : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160496.P463803618211883344

/-!
# A160497: Values of pq such that there are only two residue classes (mod pq) of primes r that produce flat cyclotomic polynomial Phi(pqr,x).

The programs for A160497, there is no canonical definition to state claims against.
-/

/-! ## A160497.P5997096107250300906

`A046388(eq[1, A160496(n+1)]+1)`
-/

namespace A160497.P5997096107250300906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160496 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046388 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A160497.P5997096107250300906

/-! ## A160497.P15894106439752905632

`A046388(record[(n+1)/A160496(n+1)])`
-/

namespace A160497.P15894106439752905632
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A160496 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046388 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A160497.P15894106439752905632

/-! ## A160497.P16146499238302913131

`A056913(record[(n+2)/A160496(n+1)])`
-/

namespace A160497.P16146499238302913131
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A160496 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056913 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A160497.P16146499238302913131

/-! ## A160497.P3767773770911226658

`record[root(A046388(n+1), A160496(n+1))]`
-/

namespace A160497.P3767773770911226658
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A046388 (n + 1) : ℝ) ^ (1 / (A160496 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160497.P3767773770911226658

/-! ## A160497.P15832282748268460406

`A056913(record[root(n+2, A160496(n+1))])`
-/

namespace A160497.P15832282748268460406
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℝ) ^ (1 / (A160496 (n + 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056913 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A160497.P15832282748268460406

/-!
# A160498: Number of cubic primitive Dirichlet characters modulo n.

The programs for A160498, the canonical program `A160498.P18345148161744705762` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160498 has offset 1).

The definition of A160498 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A160498.P11707610552596377695

`A182231(a(n-1)+1)*A343023(n+1)` with `a(0)=1`
-/

namespace A160498.P11707610552596377695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A182231 (a (n - 1) + 1).toNat * A343023 (n + 1)

end

end A160498.P11707610552596377695

namespace A160498

/-- `A182231(a(n-1)+1)*A343023(n+1)` -/
def P11707610552596377695.Spec : Prop :=
  ∀ n, P11707610552596377695.a n = A160498 (n + 1)

end A160498

/-! ## A160498.P17322877788985198684

`A323288(a(n-1)+1)*A343023(n+1)` with `a(0)=1`
-/

namespace A160498.P17322877788985198684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A323288 (a (n - 1) + 1).toNat * A343023 (n + 1)

end

end A160498.P17322877788985198684

namespace A160498

/-- `A323288(a(n-1)+1)*A343023(n+1)` -/
def P17322877788985198684.Spec : Prop :=
  ∀ n, P17322877788985198684.a n = A160498 (n + 1)

end A160498

/-! ## A160498.P12415676690437936365

`A051162(a(n-1)+3)*A343023(n+1)` with `a(0)=1`
-/

namespace A160498.P12415676690437936365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A051162 (a (n - 1) + 3).toNat * A343023 (n + 1)

end

end A160498.P12415676690437936365

namespace A160498

/-- `A051162(a(n-1)+3)*A343023(n+1)` -/
def P12415676690437936365.Spec : Prop :=
  ∀ n, P12415676690437936365.a n = A160498 (n + 1)

end A160498

/-! ## A160498.P18345148161744705762

`∑{d}[n+1, A008683(#)*A060839((n+1)/#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A160498

/-- `∑{d}[n+1, A008683(#)*A060839((n+1)/#)]` -/
def P18345148161744705762.Spec : Prop :=
  ∀ n, P18345148161744705762.a n = A160498 (n + 1)

theorem P18345148161744705762.correct : P18345148161744705762.Spec := by
  intro n
  simp only [A160498, Nat.add_sub_cancel]

end A160498

/-! ## A160498.P15640941056769103506

`A002024(A002024(a(n-1)+1)+1)*A343023(n+1)` with `a(0)=1`
-/

namespace A160498.P15640941056769103506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002024 (A002024 (a (n - 1) + 1).toNat + 1).toNat * A343023 (n + 1)

end

end A160498.P15640941056769103506

namespace A160498

/-- `A002024(A002024(a(n-1)+1)+1)*A343023(n+1)` -/
def P15640941056769103506.Spec : Prop :=
  ∀ n, P15640941056769103506.a n = A160498 (n + 1)

end A160498

/-! ## A160498.P12319238972268877411

`A132336(A141691(a(n-1)+1)+1)*A343023(n+1)` with `a(0)=1`
-/

namespace A160498.P12319238972268877411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A132336 (A141691 (a (n - 1) + 1).toNat + 1).toNat * A343023 (n + 1)

end

end A160498.P12319238972268877411

namespace A160498

/-- `A132336(A141691(a(n-1)+1)+1)*A343023(n+1)` -/
def P12319238972268877411.Spec : Prop :=
  ∀ n, P12319238972268877411.a n = A160498 (n + 1)

end A160498

/-! ## A160498.P14226385587620928845

`A343023(A138127(n+1))`
-/

namespace A160498.P14226385587620928845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343023 (A138127 (n + 1)).toNat

end

end A160498.P14226385587620928845

namespace A160498

/-- `A343023(A138127(n+1))` -/
def P14226385587620928845.Spec : Prop :=
  ∀ n, P14226385587620928845.a n = A160498 (n + 1)

end A160498

/-! ## A160498.P3620457140305966899

`A354058(∑[n+2]+4)`
-/

namespace A160498.P3620457140305966899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354058 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A160498.P3620457140305966899

namespace A160498

/-- `A354058(∑[n+2]+4)` -/
def P3620457140305966899.Spec : Prop :=
  ∀ n, P3620457140305966899.a n = A160498 (n + 1)

end A160498

/-! ## A160498.P11713289265037027769

`A343023(A004926(n+1))`
-/

namespace A160498.P11713289265037027769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343023 (A004926 (n + 1)).toNat

end

end A160498.P11713289265037027769

namespace A160498

/-- `A343023(A004926(n+1))` -/
def P11713289265037027769.Spec : Prop :=
  ∀ n, P11713289265037027769.a n = A160498 (n + 1)

end A160498

/-!
# A160499: Number of quartic primitive Dirichlet characters modulo n.

The programs for A160499, there is no canonical definition to state claims against.
-/

/-! ## A160499.P7090484073126813573

`∑{d}[n+1, A008683(#)*A073103((n+1)/#)]`
-/

namespace A160499.P7090484073126813573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A073103 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A160499.P7090484073126813573

/-! ## A160499.P15502459228129226113

`A354058(∑[n+3]+7)`
-/

namespace A160499.P15502459228129226113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354058 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A160499.P15502459228129226113

/-! ## A160499.P10233133542533418423

`A329272(n+1)%A285965(A288627(n+5))`
-/

namespace A160499.P10233133542533418423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329272 (n + 1)) (A285965 (A288627 (n + 5)).toNat)

end

end A160499.P10233133542533418423

/-! ## A160499.P6761695068734802476

`and(A139832(A272045(n)), A329272(n+1))`
-/

namespace A160499.P6761695068734802476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A139832 (A272045 n).toNat) (A329272 (n + 1))

end

end A160499.P6761695068734802476

/-! ## A160499.P8915401492437053834

`and(A329272(n+1), A342632(n))`
-/

namespace A160499.P8915401492437053834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A329272 (n + 1)) (A342632 n)

end

end A160499.P8915401492437053834

