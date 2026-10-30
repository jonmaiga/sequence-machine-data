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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
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
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C001
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A307600: Numbers k such that the digits of k^(1/4) begin with k.

The programs for A307600, there is no canonical definition to state claims against.
-/

/-! ## A307600.P8998843747767666368

`A230038(A060752(n))-A229116(n)`
-/

namespace A307600.P8998843747767666368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230038 (A060752 n).toNat - A229116 n

end

end A307600.P8998843747767666368

/-!
# A307604: G.f. A(x) satisfies: A(x) = (1/(1 - x)) * A(x^2)^2*A(x^3)^3*A(x^4)^4* ... *A(x^k)^k* ...

The programs for A307604, there is no canonical definition to state claims against.
-/

/-! ## A307604.P13758072617362924550

`A209885(A214938(n+1))`
-/

namespace A307604.P13758072617362924550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209885 (A214938 (n + 1)).toNat

end

end A307604.P13758072617362924550

/-! ## A307604.P17722135879576897945

`A327068(n)+A160086(A027649(n))`
-/

namespace A307604.P17722135879576897945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327068 n + A160086 (A027649 n).toNat

end

end A307604.P17722135879576897945

/-! ## A307604.P7615480698821897429

`A359240(A295370(n))+A063834(n)`
-/

namespace A307604.P7615480698821897429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359240 (A295370 n).toNat + A063834 n

end

end A307604.P7615480698821897429

/-! ## A307604.P2003583033891902432

`A174465(n)-A316523(A177251(n))`
-/

namespace A307604.P2003583033891902432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174465 n - A316523 (A177251 n).toNat

end

end A307604.P2003583033891902432

/-!
# A307606: G.f. A(x) satisfies: A(x) = ((1 + x)/(1 - x)) * A(x^2)^2*A(x^3)^3*A(x^4)^4* ... *A(x^k)^k* ...

The programs for A307606, there is no canonical definition to state claims against.
-/

/-! ## A307606.P7180124691233554799

`A178965(n)+A112911(A178963(n))`
-/

namespace A307606.P7180124691233554799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178965 n + A112911 (A178963 n).toNat

end

end A307606.P7180124691233554799

/-! ## A307606.P12583834362152110830

`A237715(A047891(n+1))+A177155(n)`
-/

namespace A307606.P12583834362152110830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237715 (A047891 (n + 1)).toNat + A177155 n

end

end A307606.P12583834362152110830

/-! ## A307606.P12339981938324587626

`A000032(2*n)-A324079(A006116(n))`
-/

namespace A307606.P12339981938324587626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * n) - A324079 (A006116 n).toNat

end

end A307606.P12339981938324587626

/-!
# A307607: a(n) = 1 + Sum_{d|n, d > 1} d^2*a(n/d).

The programs for A307607, there is no canonical definition to state claims against.
-/

/-! ## A307607.P7399546779249803273

`∑{d}[1+n, #*A050369(#)]`
-/

namespace A307607.P7399546779249803273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A050369 d

end

end A307607.P7399546779249803273

/-! ## A307607.P10811549689774192233

`∑{d}[n+1, #*#*A074206(#)]`
-/

namespace A307607.P10811549689774192233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * ((d : ℤ) * A074206 d)

end

end A307607.P10811549689774192233

/-! ## A307607.P4096720195260158422

`∑{d}[n+1, #²*A002033(#-1)]`
-/

namespace A307607.P4096720195260158422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d ^ 2 : ℤ) * A002033 (d - 1)

end

end A307607.P4096720195260158422

/-!
# A307608: Number of partitions of n^2 into consecutive positive squares.

The programs for A307608, there is no canonical definition to state claims against.
-/

/-! ## A307608.P14445576001772175377

`A296338(A000290(n+1))`
-/

namespace A307608.P14445576001772175377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296338 (A000290 (n + 1)).toNat

end

end A307608.P14445576001772175377

/-! ## A307608.P12077845756258908335

`A296338((n+1)²)`
-/

namespace A307608.P12077845756258908335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296338 ((n + 1) ^ 2)

end

end A307608.P12077845756258908335

/-! ## A307608.P9793849708987607754

`A296338((n+1)^2)!`
-/

namespace A307608.P9793849708987607754
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A296338 ((n + 1) ^ 2)).toNat

end

end A307608.P9793849708987607754

/-! ## A307608.P5055411263856759166

`char[A075405(n+1)-1]+1`
-/

namespace A307608.P5055411263856759166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075405 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A307608.P5055411263856759166

/-! ## A307608.P4820402786499760472

`char[A097812(n+1)-1]+1`
-/

namespace A307608.P4820402786499760472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097812 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A307608.P4820402786499760472

/-! ## A307608.P7681774175258554443

`char[A184886(n+1)-1]+1`
-/

namespace A307608.P7681774175258554443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184886 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A307608.P7681774175258554443

/-! ## A307608.P16410667803309364945

`dr(A296338(record[A008611(n)²]))`
-/

namespace A307608.P16410667803309364945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A296338 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A307608.P16410667803309364945

/-! ## A307608.P17453660386908713267

`A000005(gcd(∑[n], A299173((n+1)²)))`
-/

namespace A307608.P17453660386908713267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A299173 ((n + 1) ^ 2)))

end

end A307608.P17453660386908713267

/-! ## A307608.P4062006435571542535

`A006530(A000005(A299173((n+1)²)))`
-/

namespace A307608.P4062006435571542535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000005 (A299173 ((n + 1) ^ 2)).toNat).toNat

end

end A307608.P4062006435571542535

/-! ## A307608.P13291974961814603393

`∏{p}[A000005(A299173((n+1)²)), A014963(#)]`
-/

namespace A307608.P13291974961814603393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A299173 ((n + 1) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A014963 p

end

end A307608.P13291974961814603393

/-!
# A307609: Number of partitions of n^3 into consecutive positive cubes.

The programs for A307609, there is no canonical definition to state claims against.
-/

/-! ## A307609.P739294848692805692

`A297199((n+1)^3)`
-/

namespace A307609.P739294848692805692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297199 ((n + 1) ^ 3)

end

end A307609.P739294848692805692

/-! ## A307609.P1725111782011411174

`A345932(A002034(n+1)*A238943(n+1))`
-/

namespace A307609.P1725111782011411174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345932 (A002034 (n + 1) * A238943 (n + 1)).toNat

end

end A307609.P1725111782011411174

/-! ## A307609.P7003421300931511162

`A345932((A034699(n+1)-A057110(n+1))*A238943(n+1))`
-/

namespace A307609.P7003421300931511162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345932 ((A034699 (n + 1) - A057110 (n + 1)) * A238943 (n + 1)).toNat

end

end A307609.P7003421300931511162

/-! ## A307609.P13307066773162759492

`A345932(A345931(n+1)*A345932(n+1)*A238943(n+1))`
-/

namespace A307609.P13307066773162759492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345932 (A345931 (n + 1) * A345932 (n + 1) * A238943 (n + 1)).toNat

end

end A307609.P13307066773162759492

/-! ## A307609.P8701766430857387235

`A345932((n+1-A072480(n+1)%A006093(n+1))*A238943(n+1))`
-/

namespace A307609.P8701766430857387235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345932 (((n + 1 : ℤ) - Int.tmod (A072480 (n + 1)) (A006093 (n + 1))) * A238943 (n + 1)).toNat

end

end A307609.P8701766430857387235

/-! ## A307609.P819998610906105874

`gcd(Δ[A182324(n)], A211360(n))`
-/

namespace A307609.P819998610906105874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182324 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A211360 n)

end

end A307609.P819998610906105874

/-! ## A307609.P13640518504881170716

`gcd(A000164(A228363(n+1)), A076489(n))`
-/

namespace A307609.P13640518504881170716
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000164 (A228363 (n + 1)).toNat) (A076489 n)

end

end A307609.P13640518504881170716

/-! ## A307609.P15529743817259655267

`Δ[A048766(A199934(or(1, n)))+n]`
-/

namespace A307609.P15529743817259655267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A199934 (Nat.lor 1 n)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A307609.P15529743817259655267

/-! ## A307609.P12854815947202587611

`ceil(ratio[A048766(A199934(n+1))])`
-/

namespace A307609.P12854815947202587611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A199934 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉

end

end A307609.P12854815947202587611

/-! ## A307609.P8020623658185402089

`Δ[A048766(A199934(n+1))+A004524(2*n+1)]`
-/

namespace A307609.P8020623658185402089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A199934 (n + 1)).toNat + A004524 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A307609.P8020623658185402089

/-!
# A307610: Number of partitions of prime(n) into consecutive primes.

The programs for A307610, there is no canonical definition to state claims against.
-/

/-! ## A307610.P10043392585533918587

`A054845(A000040(n+1))`
-/

namespace A307610.P10043392585533918587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054845 (A000040 (n + 1)).toNat

end

end A307610.P10043392585533918587

/-! ## A307610.P12555687329684064786

`A054845(p?[xor(1, n)])`
-/

namespace A307610.P12555687329684064786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054845 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A307610.P12555687329684064786

/-! ## A307610.P16957950927352805394

`A054845(p?[n%3+n])`
-/

namespace A307610.P16957950927352805394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054845 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A307610.P16957950927352805394

/-! ## A307610.P14915727792565947841

`A054845(p?[n-(-1)^n])`
-/

namespace A307610.P14915727792565947841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054845 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A307610.P14915727792565947841

/-! ## A307610.P8073284541603369672

`A084143(p?[xor(1, n)+1])+1`
-/

namespace A307610.P8073284541603369672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084143 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) + 1

end

end A307610.P8073284541603369672

/-! ## A307610.P11328394205731553185

`A054845(Δ[A007504(n)])`
-/

namespace A307610.P11328394205731553185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054845 (f1 (n + 1) - f1 n).toNat

end

end A307610.P11328394205731553185

/-! ## A307610.P16591488552659487464

`A054845(A008578(n+2))`
-/

namespace A307610.P16591488552659487464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054845 (A008578 (n + 2)).toNat

end

end A307610.P16591488552659487464

/-! ## A307610.P11614681043274217603

`A054845(A182986(n+2))`
-/

namespace A307610.P11614681043274217603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054845 (A182986 (n + 2)).toNat

end

end A307610.P11614681043274217603

/-! ## A307610.P10209870878458781859

`A054845(eq[2, A092976(n)])`
-/

namespace A307610.P10209870878458781859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092976 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054845 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A307610.P10209870878458781859

/-! ## A307610.P2579374865445031302

`A054845(eq[2, A225244(n)])`
-/

namespace A307610.P2579374865445031302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054845 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A307610.P2579374865445031302

/-! ## A307610.P8124047437785495839

`A054845(eq[2, A327859(n)])`
-/

namespace A307610.P8124047437785495839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327859 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054845 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A307610.P8124047437785495839

/-! ## A307610.P17928824082754577676

`A054845(eq[2, A343371(n)])`
-/

namespace A307610.P17928824082754577676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343371 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054845 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A307610.P17928824082754577676

/-! ## A307610.P13877997636897693105

`A054845(record[A033883(n)+1])`
-/

namespace A307610.P13877997636897693105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033883 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054845 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A307610.P13877997636897693105

/-! ## A307610.P12027698733793632832

`A054845(record[A037225(n)+1])`
-/

namespace A307610.P12027698733793632832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054845 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A307610.P12027698733793632832

/-! ## A307610.P129585785811815020

`A054845(A008864(n+1)-1)`
-/

namespace A307610.P129585785811815020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054845 (A008864 (n + 1) - 1).toNat

end

end A307610.P129585785811815020

/-!
# A307612: Partial sums of the permutation A307485: one odd, two even, four odd, eight even, etc.

The programs for A307612, the canonical program `A307612.P12442353200099132177` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307612 has offset 0).

The definition of A307612 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A307612.P12442353200099132177

`∑[A307485(n)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A307612

/-- `∑[A307485(n)]` -/
def P12442353200099132177.Spec : Prop :=
  ∀ n, P12442353200099132177.a n = A307612 n

theorem P12442353200099132177.correct : P12442353200099132177.Spec := by
  intro n
  simp only [A307612]

end A307612

/-! ## A307612.P8637531929990516187

`∑[floor(2*(A006257(n)+n)/3)]`
-/

namespace A307612.P8637531929990516187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * (A006257 n + (n : ℤ)) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307612.P8637531929990516187

namespace A307612

/-- `∑[floor(2*(A006257(n)+n)/3)]` -/
def P8637531929990516187.Spec : Prop :=
  ∀ n, P8637531929990516187.a n = A307612 n

end A307612

/-! ## A307612.P16712635589404886118

`∑[2*n-A000975(ceil(log2(n+1)))]`
-/

namespace A307612.P16712635589404886118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A000975 ⌈Real.logb 2 (n + 1 : ℝ)⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307612.P16712635589404886118

namespace A307612

/-- `∑[2*n-A000975(ceil(log2(n+1)))]` -/
def P16712635589404886118.Spec : Prop :=
  ∀ n, P16712635589404886118.a n = A307612 n

end A307612

/-! ## A307612.P2480495194386336029

`∑[ceil((A006257(2*n)+2*n)/3)]`
-/

namespace A307612.P2480495194386336029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A006257 (2 * n) + (2 * n : ℤ) : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307612.P2480495194386336029

namespace A307612

/-- `∑[ceil((A006257(2*n)+2*n)/3)]` -/
def P2480495194386336029.Spec : Prop :=
  ∀ n, P2480495194386336029.a n = A307612 n

end A307612

/-! ## A307612.P8216247732231208613

`∑[2*n-A004523(2^ceil(log2(n+1)))]`
-/

namespace A307612.P8216247732231208613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A004523 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307612.P8216247732231208613

namespace A307612

/-- `∑[2*n-A004523(2^ceil(log2(n+1)))]` -/
def P8216247732231208613.Spec : Prop :=
  ∀ n, P8216247732231208613.a n = A307612 n

end A307612

/-! ## A307612.P13924930683045884337

`∑[A004396(A006257(n)+n)]`
-/

namespace A307612.P13924930683045884337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A006257 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307612.P13924930683045884337

namespace A307612

/-- `∑[A004396(A006257(n)+n)]` -/
def P13924930683045884337.Spec : Prop :=
  ∀ n, P13924930683045884337.a n = A307612 n

end A307612

/-! ## A307612.P16414165456948409959

`∑[ceil((a(n-1)+2)/A014963(2*n))]` with `a(0)=0`
-/

namespace A307612.P16414165456948409959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  ⌈(f1 (n - 1) + 2 : ℚ) / (A014963 (2 * n) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307612.P16414165456948409959

namespace A307612

/-- `∑[ceil((a(n-1)+2)/A014963(2*n))]` -/
def P16414165456948409959.Spec : Prop :=
  ∀ n, P16414165456948409959.a n = A307612 n

end A307612

/-! ## A307612.P7334047154145119840

`∑[round(A230892(6*n+2)/6)]`
-/

namespace A307612.P7334047154145119840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A230892 (6 * n + 2) : ℚ) / 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307612.P7334047154145119840

namespace A307612

/-- `∑[round(A230892(6*n+2)/6)]` -/
def P7334047154145119840.Spec : Prop :=
  ∀ n, P7334047154145119840.a n = A307612 n

end A307612

/-! ## A307612.P14420150941003943169

`∑[floor(A080541(3*n+1)/3)]`
-/

namespace A307612.P14420150941003943169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A080541 (3 * n + 1) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307612.P14420150941003943169

namespace A307612

/-- `∑[floor(A080541(3*n+1)/3)]` -/
def P14420150941003943169.Spec : Prop :=
  ∀ n, P14420150941003943169.a n = A307612 n

end A307612

/-! ## A307612.P2005667780521803490

`∑[round(A080541(6*n+1)/6)]`
-/

namespace A307612.P2005667780521803490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A080541 (6 * n + 1) : ℚ) / 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307612.P2005667780521803490

namespace A307612

/-- `∑[round(A080541(6*n+1)/6)]` -/
def P2005667780521803490.Spec : Prop :=
  ∀ n, P2005667780521803490.a n = A307612 n

end A307612

/-!
# A307613: Inverse of the permutation A307485: one odd, two even, four odd, eight even, etc; extended with a(0) = 0.

The programs for A307613, the canonical program `A307613.P859576868444545900` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307613 has offset 0).

The definition of A307613 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9078 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A307613.P859576868444545900

`A153151(a(n-2)+1)+1` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A307613

/-- `A153151(a(n-2)+1)+1` -/
def P859576868444545900.Spec : Prop :=
  ∀ n, P859576868444545900.a n = A307613 n

theorem P859576868444545900.correct : P859576868444545900.Spec := by
  intro n
  simp only [A307613]

end A307613

/-! ## A307613.P4991824772366704141

`A002264(A063946(3*a(n-1)+2))` with `a(0)=0`
-/

namespace A307613.P4991824772366704141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A002264 (A063946 (3 * a (n - 1) + 2).toNat).toNat

end

end A307613.P4991824772366704141

namespace A307613

/-- `A002264(A063946(3*a(n-1)+2))` -/
def P4991824772366704141.Spec : Prop :=
  ∀ n, P4991824772366704141.a n = A307613 n

end A307613

/-! ## A307613.P15039567417357167160

`A025480(A053738(A038608(n)+A016777(n)))`
-/

namespace A307613.P15039567417357167160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A053738 (A038608 n + A016777 n).toNat).toNat

end

end A307613.P15039567417357167160

namespace A307613

/-- `A025480(A053738(A038608(n)+A016777(n)))` -/
def P15039567417357167160.Spec : Prop :=
  ∀ n, P15039567417357167160.a n = A307613 n

end A307613

/-! ## A307613.P10209557873516645647

`A360434(A345101(n)%A204559(n+1))`
-/

namespace A307613.P10209557873516645647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360434 (Int.tmod (A345101 n) (A204559 (n + 1))).toNat

end

end A307613.P10209557873516645647

namespace A307613

/-- `A360434(A345101(n)%A204559(n+1))` -/
def P10209557873516645647.Spec : Prop :=
  ∀ n, P10209557873516645647.a n = A307613 n

end A307613

/-!
# A307614: Number of partitions of the n-th triangular number into consecutive positive triangular numbers.

The programs for A307614, there is no canonical definition to state claims against.
-/

/-! ## A307614.P18089653719646866952

`A307666(∑[n+1])`
-/

namespace A307614.P18089653719646866952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307666 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A307614.P18089653719646866952

/-! ## A307614.P6456944745725628336

`A307666(C(n+2, 2))!`
-/

namespace A307614.P6456944745725628336
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A307666 (Nat.choose (n + 2) 2)).toNat

end

end A307614.P6456944745725628336

/-! ## A307614.P9445283843270673261

`A307666(∑[Δ[n²]-n])!`
-/

namespace A307614.P9445283843270673261
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A307666 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A307614.P9445283843270673261

/-! ## A307614.P3707642436862348238

`gcd(2, A307666(∑[1-(n-2*n)]))`
-/

namespace A307614.P3707642436862348238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n : ℤ) - (2 * n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A307666 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A307614.P3707642436862348238

/-! ## A307614.P15684061560664807175

`dr(A307666(Δ[A000292(n)]))`
-/

namespace A307614.P15684061560664807175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A307666 (f1 (n + 1) - f1 n).toNat)

end

end A307614.P15684061560664807175

/-! ## A307614.P10186132759856606932

`dr(A307666(record[A025810(n)]))`
-/

namespace A307614.P10186132759856606932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025810 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A307666 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A307614.P10186132759856606932

/-! ## A307614.P14955822959747728864

`dr(A307666(A000217(n+1)))`
-/

namespace A307614.P14955822959747728864
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A307666 (A000217 (n + 1)).toNat)

end

end A307614.P14955822959747728864

/-! ## A307614.P11738661125050343451

`A020985(n)²*A307666(A000096(n)+1)`
-/

namespace A307614.P11738661125050343451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * A307666 (A000096 n + 1).toNat

end

end A307614.P11738661125050343451

/-! ## A307614.P147166935285468090

`A033999(n)²*A307666(A000217(n+1))`
-/

namespace A307614.P147166935285468090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A307666 (A000217 (n + 1)).toNat

end

end A307614.P147166935285468090

/-! ## A307614.P718542947559199761

`A001511(or(3, n))*A307666(A000096(n)+1)`
-/

namespace A307614.P718542947559199761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (Nat.lor 3 n) * A307666 (A000096 n + 1).toNat

end

end A307614.P718542947559199761

/-! ## A307614.P1111519052804264044

`and(1, A007318(n))!*A307666(A000217(n+1))`
-/

namespace A307614.P1111519052804264044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.land 1 (A007318 n)).toNat : ℤ) * A307666 (A000217 (n + 1)).toNat

end

end A307614.P1111519052804264044

/-! ## A307614.P12040118004856619786

`A014963(6*(n+1))*A307666(A000217(n+1))`
-/

namespace A307614.P12040118004856619786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A307666 (A000217 (n + 1)).toNat

end

end A307614.P12040118004856619786

/-! ## A307614.P5170154706987030207

`A307666(A000096(n)+1)+and(2, A010059(n+1))`
-/

namespace A307614.P5170154706987030207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307666 (A000096 n + 1).toNat + Int.land 2 (A010059 (n + 1))

end

end A307614.P5170154706987030207

/-! ## A307614.P11287931545776822896

`and(A192592(n+1)+2, A307666(A000096(n)+1))`
-/

namespace A307614.P11287931545776822896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A192592 (n + 1) + 2) (A307666 (A000096 n + 1).toNat)

end

end A307614.P11287931545776822896

/-! ## A307614.P3555540129001608346

`A000045(a(n-1))*A307666(A000096(n)+1)` with `a(0)=1`
-/

namespace A307614.P3555540129001608346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000045 (a (n - 1)).toNat * A307666 (A000096 n + 1).toNat

end

end A307614.P3555540129001608346

/-!
# A307615: E.g.f. A(x) satisfies: A(x) = exp(x) * A(x^2)^2*A(x^3)^3*A(x^4)^4* ... *A(x^k)^k* ...

The programs for A307615, there is no canonical definition to state claims against.
-/

/-! ## A307615.P15605381930939671657

`A075409(n!+2)`
-/

namespace A307615.P15605381930939671657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075409 (Nat.factorial n + 2)

end

end A307615.P15605381930939671657

/-!
# A307617: Distinct terms in A307616.

The programs for A307617, there is no canonical definition to state claims against.
-/

/-! ## A307617.P3283837728364532780

`A036484(record[A300013(n+1)])`
-/

namespace A307617.P3283837728364532780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300013 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036484 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A307617.P3283837728364532780

/-! ## A307617.P11677336844339596721

`∩[A095848(n+1), A242407(n+1)]`
-/

namespace A307617.P11677336844339596721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307617.P11677336844339596721

/-! ## A307617.P5562203393507886893

`∩[A095849(n+1), A242407(n+1)]`
-/

namespace A307617.P5562203393507886893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307617.P5562203393507886893

/-! ## A307617.P3276715565335869752

`∩[A162936(n+1), A242407(n+1)]`
-/

namespace A307617.P3276715565335869752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307617.P3276715565335869752

/-! ## A307617.P8067437399118141673

`∩[A208767(n+1), A242407(n+1)]`
-/

namespace A307617.P8067437399118141673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208767 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307617.P8067437399118141673

/-!
# A307618: A Calabi-Yau period integral: a(n) = C(4*n,2*n)*C(2*n,n)^3.

The programs for A307618, the canonical program `A307618.P1864052292421445551` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307618 has offset 0).

The definition of A307618 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(4*n, 2*n)*C(2*n, n)^3` (program `A307618.P1864052292421445551`, by `A307618.P1864052292421445551.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A307618.P1864052292421445551

`C(4*n, 2*n)*C(2*n, n)^3`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A307618

/-- `C(4*n, 2*n)*C(2*n, n)^3` -/
def P1864052292421445551.Spec : Prop :=
  ∀ n, (P1864052292421445551.a n : ℤ) = A307618 n

theorem P1864052292421445551.correct : P1864052292421445551.Spec := by
  intro n
  simp only [A307618]

end A307618

/-! ## A307618.P14391330369299991183

`C(4*n, n)*C(3*n, n)*C(2*n, n)²`
-/

namespace A307618.P14391330369299991183
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (4 * n) n * Nat.choose (3 * n) n * Nat.choose (2 * n) n ^ 2

end

end A307618.P14391330369299991183

namespace A307618

/-- `C(4*n, n)*C(3*n, n)*C(2*n, n)²` -/
def P14391330369299991183.Spec : Prop :=
  ∀ n, (P14391330369299991183.a n : ℤ) = A307618 n

end A307618

/-! ## A307618.P6895746770853695389

`A000984(n)*A008977(n)`
-/

namespace A307618.P6895746770853695389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A008977 n

end

end A307618.P6895746770853695389

namespace A307618

/-- `A000984(n)*A008977(n)` -/
def P6895746770853695389.Spec : Prop :=
  ∀ n, P6895746770853695389.a n = A307618 n

end A307618

/-! ## A307618.P12217940076923335478

`C(2*n, n)²*A000897(n)`
-/

namespace A307618.P12217940076923335478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n ^ 2 : ℤ) * A000897 n

end

end A307618.P12217940076923335478

namespace A307618

/-- `C(2*n, n)²*A000897(n)` -/
def P12217940076923335478.Spec : Prop :=
  ∀ n, P12217940076923335478.a n = A307618 n

theorem P12217940076923335478.correct : P12217940076923335478.Spec := by
  intro n
  simp only [A307618, Nat.add_sub_cancel, A307618.P12217940076923335478.a, A307618.P1864052292421445551.a, A000897, A000897.P14910180461201994835.a, A000984, A000984.P7946844122574426130.a, A001448, A001448.P10146391060409880259.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A307618

/-! ## A307618.P15806568690968437060

`∑{#}[n, C(n, #)²]*A008977(n)`
-/

namespace A307618.P15806568690968437060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ k ∈ Finset.range (f1 n + 1), Nat.choose n k ^ 2 : ℕ) : ℤ) * A008977 n

end

end A307618.P15806568690968437060

namespace A307618

/-- `∑{#}[n, C(n, #)²]*A008977(n)` -/
def P15806568690968437060.Spec : Prop :=
  ∀ n, P15806568690968437060.a n = A307618 n

end A307618

/-!
# A307620: Integers x such that [f(0), f(f(0)), ..., f(...f(0)...)] is a permutation of [0, 1, ..., k-1], where k is the number of digits in x and f(a) denotes the 0-based index of the first occurrence of the substring a in x.

The programs for A307620, there is no canonical definition to state claims against.
-/

/-! ## A307620.P5422465923758835996

`A226767(A217647(n+1)%A226747(n))`
-/

namespace A307620.P5422465923758835996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226767 (Int.tmod (A217647 (n + 1)) (A226747 n)).toNat

end

end A307620.P5422465923758835996

/-!
# A307621: Number of cycles in the n-dipyramidal graph.

The programs for A307621, the canonical program `A307621.P14985715426129270013` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307621 has offset 1).

The definition of A307621 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A307621.P5436103990226736485

`ogf((1+x+2x^2+3x^3+x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A307621.P5436103990226736485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 2, 3, 1] [1, -5, 10, -10, 5, -1] n

end

end A307621.P5436103990226736485

namespace A307621

/-- `ogf((1+x+2x^2+3x^3+x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P5436103990226736485.Spec : Prop :=
  ∀ n, P5436103990226736485.a n = A307621 (n + 1)

end A307621

/-! ## A307621.P14985715426129270013

`(n+1)*n*(2*(n+1)²-4*(n+1)+15)/6+1`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A307621

/-- `(n+1)*n*(2*(n+1)²-4*(n+1)+15)/6+1` -/
def P14985715426129270013.Spec : Prop :=
  ∀ n, P14985715426129270013.a n = (A307621 (n + 1) : ℚ)

end A307621

/-! ## A307621.P6345623644884154503

`abs(A066804(n+1)-A185788(n+1))`
-/

namespace A307621.P6345623644884154503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A066804 (n + 1) - A185788 (n + 1)|

end

end A307621.P6345623644884154503

namespace A307621

/-- `abs(A066804(n+1)-A185788(n+1))` -/
def P6345623644884154503.Spec : Prop :=
  ∀ n, P6345623644884154503.a n = A307621 (n + 1)

end A307621

/-! ## A307621.P949758870765486484

`∑[A100178(A028310(n))+A008586(n)]`
-/

namespace A307621.P949758870765486484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100178 (A028310 n).toNat + A008586 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307621.P949758870765486484

namespace A307621

/-- `∑[A100178(A028310(n))+A008586(n)]` -/
def P949758870765486484.Spec : Prop :=
  ∀ n, P949758870765486484.a n = A307621 (n + 1)

end A307621

/-! ## A307621.P3277042702653116313

`Δ[A069038(n)-A277228(n)]`
-/

namespace A307621.P3277042702653116313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069038 n - A277228 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A307621.P3277042702653116313

namespace A307621

/-- `Δ[A069038(n)-A277228(n)]` -/
def P3277042702653116313.Spec : Prop :=
  ∀ n, P3277042702653116313.a n = A307621 (n + 1)

end A307621

/-! ## A307621.P4460295296421672990

`Δ[A277229(n)-A071245(n)]`
-/

namespace A307621.P4460295296421672990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277229 n - A071245 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A307621.P4460295296421672990

namespace A307621

/-- `Δ[A277229(n)-A071245(n)]` -/
def P4460295296421672990.Spec : Prop :=
  ∀ n, P4460295296421672990.a n = A307621 (n + 1)

end A307621

/-! ## A307621.P17726055839205592256

`∑[A212964(2*n)+A008706(n)]`
-/

namespace A307621.P17726055839205592256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212964 (2 * n) + A008706 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307621.P17726055839205592256

namespace A307621

/-- `∑[A212964(2*n)+A008706(n)]` -/
def P17726055839205592256.Spec : Prop :=
  ∀ n, P17726055839205592256.a n = A307621 (n + 1)

end A307621

/-! ## A307621.P14799731048289208404

`∑[∑[A267873(A116735(n+1))]]`
-/

namespace A307621.P14799731048289208404
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267873 (A116735 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307621.P14799731048289208404

namespace A307621

/-- `∑[∑[A267873(A116735(n+1))]]` -/
def P14799731048289208404.Spec : Prop :=
  ∀ n, P14799731048289208404.a n = A307621 (n + 1)

end A307621

/-!
# A307623: Numbers that set a record for the number of distinct composite numbers that can be obtained by permuting some subset of their digits.

The programs for A307623, there is no canonical definition to state claims against.
-/

/-! ## A307623.P10347970852027884045

`A307624(lt[A307624(n), A072200(2*(n+1))])`
-/

namespace A307623.P10347970852027884045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307624 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072200 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307624 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A307623.P10347970852027884045

/-! ## A307623.P6891630284538476144

`A138234(A327687(n+1))`
-/

namespace A307623.P6891630284538476144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138234 (A327687 (n + 1)).toNat

end

end A307623.P6891630284538476144

/-!
# A307624: Least number whose digits can be used to form exactly n distinct composite numbers (not necessarily using all digits).

The programs for A307624, there is no canonical definition to state claims against.
-/

/-! ## A307624.P8935850784174316246

`A215063(A110038(n))+A091936(n+1)`
-/

namespace A307624.P8935850784174316246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215063 (A110038 n).toNat + A091936 (n + 1)

end

end A307624.P8935850784174316246

/-! ## A307624.P3665950674295014720

`A307623(n+1)+A059841(A118342(n))`
-/

namespace A307624.P3665950674295014720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307623 (n + 1) + A059841 (A118342 n).toNat

end

end A307624.P3665950674295014720

/-!
# A307625: Numbers k such that q = 2^k - 2^m + 1 is prime, where m = A270096(k).

The programs for A307625, there is no canonical definition to state claims against.
-/

/-! ## A307625.P18284064950401120053

`A270427(A270428(n+1))%p?[A000025(n)]`
-/

namespace A307625.P18284064950401120053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000025 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A270427 (A270428 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A307625.P18284064950401120053

/-! ## A307625.P2440222564809495658

`A270427(n+2)-A014744(A292522(n+1))`
-/

namespace A307625.P2440222564809495658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270427 (n + 2) - A014744 (A292522 (n + 1)).toNat

end

end A307625.P2440222564809495658

/-! ## A307625.P2312286702855730056

`A270427(A270428(n+1))*A336160(2^n)`
-/

namespace A307625.P2312286702855730056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270427 (A270428 (n + 1)).toNat * A336160 (2 ^ n)

end

end A307625.P2312286702855730056

/-! ## A307625.P14276011285881010388

`A270427(∑[A270419((n+1)*Δ[n^3])])`
-/

namespace A307625.P14276011285881010388
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270419 ((n + 1 : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270427 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A307625.P14276011285881010388

/-! ## A307625.P9774947885363401578

`lt[∑[A086074(n+1)], A046053(2*n+1)]`
-/

namespace A307625.P9774947885363401578
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086074 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046053 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A307625.P9774947885363401578

/-!
# A307627: Primes p such that 2 is a primitive root modulo p while 8 is not.

The programs for A307627, there is no canonical definition to state claims against.
-/

/-! ## A307627.P2493782323618953385

`p?[A001122(n+1)%3*A001122(n+1)]`
-/

namespace A307627.P2493782323618953385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001122 (n + 1)) 3 * A001122 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A307627.P2493782323618953385

/-! ## A307627.P7801316918356287457

`∩[A001122(n+1), A040034(n+1)]`
-/

namespace A307627.P7801316918356287457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307627.P7801316918356287457

/-! ## A307627.P10073734076623772792

`∩[A040034(n+1), A050229(n+1)]`
-/

namespace A307627.P10073734076623772792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307627.P10073734076623772792

/-! ## A307627.P3575063863884153665

`∩[A040034(n+1), A139099(n+1)]`
-/

namespace A307627.P3575063863884153665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307627.P3575063863884153665

/-! ## A307627.P7711346976094683583

`∩[A001122(n+1), A002476(n+1)]`
-/

namespace A307627.P7711346976094683583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307627.P7711346976094683583

/-! ## A307627.P379988744853554812

`∩[A001122(n+1), A045375(n+1)]`
-/

namespace A307627.P379988744853554812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307627.P379988744853554812

/-! ## A307627.P8021753115161043682

`∩[A002476(n+1), A050229(n+1)]`
-/

namespace A307627.P8021753115161043682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307627.P8021753115161043682

/-! ## A307627.P12754335799328589472

`∩[A001122(n+1), A123365(n+1)]`
-/

namespace A307627.P12754335799328589472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307627.P12754335799328589472

/-! ## A307627.P18307607096202248166

`∩[A002476(n+1), A139099(n+1)]`
-/

namespace A307627.P18307607096202248166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307627.P18307607096202248166

/-! ## A307627.P1794956453044973342

`∩[A002476(n+1), A167791(n+1)]`
-/

namespace A307627.P1794956453044973342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167791 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307627.P1794956453044973342

/-! ## A307627.P11458527666993435690

`∩[A002476(n+1), A179383(n+1)]`
-/

namespace A307627.P11458527666993435690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307627.P11458527666993435690

/-! ## A307627.P3257103276101594324

`∩[A045375(n+1), A139099(n+1)]`
-/

namespace A307627.P3257103276101594324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307627.P3257103276101594324

/-! ## A307627.P6550287755998070040

`∩[A007645(n+1), A179383(n+1)]`
-/

namespace A307627.P6550287755998070040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307627.P6550287755998070040

/-! ## A307627.P3659844434073877817

`∩[A045331(n+1), A179383(n+1)]`
-/

namespace A307627.P3659844434073877817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307627.P3659844434073877817

/-! ## A307627.P656906730688729617

`∩[A045375(n+1), A179383(n+1)]`
-/

namespace A307627.P656906730688729617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307627.P656906730688729617

/-! ## A307627.P15829742340428750419

`∩[A001122(n+1), A191059(n+1)]`
-/

namespace A307627.P15829742340428750419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307627.P15829742340428750419

/-! ## A307627.P12706839502639076338

`∩[A001122(n+1), A133290(n+1)]`
-/

namespace A307627.P12706839502639076338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307627.P12706839502639076338

/-! ## A307627.P14585668130391877869

`∩[A050229(n+1), A133290(n+1)]`
-/

namespace A307627.P14585668130391877869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307627.P14585668130391877869

/-! ## A307627.P10478859812248932080

`∩[A001122(n+1), A137827(n+1)]`
-/

namespace A307627.P10478859812248932080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307627.P10478859812248932080

/-! ## A307627.P5462568017937775134

`∩[A050229(n+1), A137827(n+1)]`
-/

namespace A307627.P5462568017937775134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307627.P5462568017937775134

/-!
# A307628: Primes p such that 2 is a primitive root modulo p while 32 is not.

The programs for A307628, there is no canonical definition to state claims against.
-/

/-! ## A307628.P1126245850181818123

`∩[A001122(n+1), A004615(n+1)]`
-/

namespace A307628.P1126245850181818123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307628.P1126245850181818123

/-! ## A307628.P3987022622600175403

`∩[A001122(n+1), A030430(n+1)]`
-/

namespace A307628.P3987022622600175403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307628.P3987022622600175403

/-! ## A307628.P14149956718191960548

`∩[A001122(n+1), A090756(n+1)]`
-/

namespace A307628.P14149956718191960548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307628.P14149956718191960548

/-! ## A307628.P546055442716292847

`∩[A001122(n+1), A327752(n+1)]`
-/

namespace A307628.P546055442716292847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307628.P546055442716292847

/-! ## A307628.P9927690752532590108

`∩[A030430(n+1), A050229(n+1)]`
-/

namespace A307628.P9927690752532590108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307628.P9927690752532590108

/-! ## A307628.P12274488163802916948

`∩[A050229(n+1), A090756(n+1)]`
-/

namespace A307628.P12274488163802916948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307628.P12274488163802916948

/-! ## A307628.P8127702349758628952

`∩[A030430(n+1), A139099(n+1)]`
-/

namespace A307628.P8127702349758628952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307628.P8127702349758628952

/-! ## A307628.P7093737865393714791

`∩[A090756(n+1), A139099(n+1)]`
-/

namespace A307628.P7093737865393714791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307628.P7093737865393714791

/-! ## A307628.P16885899204287039546

`∩[A030430(n+1), A167791(n+1)]`
-/

namespace A307628.P16885899204287039546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167791 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307628.P16885899204287039546

/-! ## A307628.P2351162691272256139

`∩[A090756(n+1), A167791(n+1)]`
-/

namespace A307628.P2351162691272256139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167791 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307628.P2351162691272256139

/-! ## A307628.P16216729659537374236

`∩[A030430(n+1), A179383(n+1)]`
-/

namespace A307628.P16216729659537374236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307628.P16216729659537374236

/-! ## A307628.P3380092979225056229

`∩[A001122(n+1), A040160(n+1)]`
-/

namespace A307628.P3380092979225056229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307628.P3380092979225056229

/-! ## A307628.P7414228497876738788

`∩[A040160(n+1), A050229(n+1)]`
-/

namespace A307628.P7414228497876738788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040160 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307628.P7414228497876738788

/-! ## A307628.P11439562476578825100

`∩[A040160(n+1), A139099(n+1)]`
-/

namespace A307628.P11439562476578825100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040160 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307628.P11439562476578825100

/-! ## A307628.P18257112258718004261

`∩[A040160(n+1), A167791(n+1)]`
-/

namespace A307628.P18257112258718004261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040160 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167791 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307628.P18257112258718004261

/-! ## A307628.P9005796871893101701

`∩[A040160(n+1), A179383(n+1)]`
-/

namespace A307628.P9005796871893101701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040160 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307628.P9005796871893101701

/-! ## A307628.P6748479532887551091

`∩[A001122(n+1), A059313(n+1)]`
-/

namespace A307628.P6748479532887551091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307628.P6748479532887551091

/-! ## A307628.P11711996296659293953

`∩[A050229(n+1), A059313(n+1)]`
-/

namespace A307628.P11711996296659293953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307628.P11711996296659293953

/-! ## A307628.P2938246522292318264

`∩[A059313(n+1), A139099(n+1)]`
-/

namespace A307628.P2938246522292318264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307628.P2938246522292318264

/-! ## A307628.P11909320226855923647

`∩[A059313(n+1), A167791(n+1)]`
-/

namespace A307628.P11909320226855923647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167791 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307628.P11909320226855923647

/-!
# A307629: Let decimal expansion of n be d_1 d_2 ... d_k; a(n) = Sum_{i=1..k-1} Sum_{j=i+1..k} (d_i + d_j).

The programs for A307629, the canonical program `A307629.P2074332402500536225` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307629 has offset 0).

The definition of A307629 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A307629.P2074332402500536225

`A007953(n)*(A055642(n)-1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A307629

/-- `A007953(n)*(A055642(n)-1)` -/
def P2074332402500536225.Spec : Prop :=
  ∀ n, P2074332402500536225.a n = A307629 n

theorem P2074332402500536225.correct : P2074332402500536225.Spec := by
  intro n
  simp only [A307629]

end A307629

/-! ## A307629.P16642099918789279641

`∑{digits}[n, A007953(n)-#]`
-/

namespace A307629.P16642099918789279641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A007953 n - (x : ℤ)).sum

end

end A307629.P16642099918789279641

namespace A307629

/-- `∑{digits}[n, A007953(n)-#]` -/
def P16642099918789279641.Spec : Prop :=
  ∀ n, P16642099918789279641.a n = A307629 n

end A307629

/-! ## A307629.P15065336728454959904

`∑{digits}[n, A062028(n)-(#+n)]`
-/

namespace A307629.P15065336728454959904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A062028 n - (x + n : ℤ)).sum

end

end A307629.P15065336728454959904

namespace A307629

/-- `∑{digits}[n, A062028(n)-(#+n)]` -/
def P15065336728454959904.Spec : Prop :=
  ∀ n, P15065336728454959904.a n = A307629 n

end A307629

/-! ## A307629.P10635642724017804372

`(A004218(n+1)-1)*A007953(n)`
-/

namespace A307629.P10635642724017804372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004218 (n + 1) - 1) * A007953 n

end

end A307629.P10635642724017804372

namespace A307629

/-- `(A004218(n+1)-1)*A007953(n)` -/
def P10635642724017804372.Spec : Prop :=
  ∀ n, P10635642724017804372.a n = A307629 n

end A307629

/-! ## A307629.P9949357218798368119

`A004216(A109613(n))*A007953(n)`
-/

namespace A307629.P9949357218798368119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (A109613 n).toNat * A007953 n

end

end A307629.P9949357218798368119

namespace A307629

/-- `A004216(A109613(n))*A007953(n)` -/
def P9949357218798368119.Spec : Prop :=
  ∀ n, P9949357218798368119.a n = A307629 n

end A307629

/-! ## A307629.P7067024153926848813

`A004216(A139337(n))*A007953(n)`
-/

namespace A307629.P7067024153926848813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (A139337 n).toNat * A007953 n

end

end A307629.P7067024153926848813

namespace A307629

/-- `A004216(A139337(n))*A007953(n)` -/
def P7067024153926848813.Spec : Prop :=
  ∀ n, P7067024153926848813.a n = A307629 n

end A307629

/-! ## A307629.P14025007968698003458

`A004216(A213217(n))*A007953(n)`
-/

namespace A307629.P14025007968698003458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (A213217 n).toNat * A007953 n

end

end A307629.P14025007968698003458

namespace A307629

/-- `A004216(A213217(n))*A007953(n)` -/
def P14025007968698003458.Spec : Prop :=
  ∀ n, P14025007968698003458.a n = A307629 n

end A307629

/-! ## A307629.P10623271141716448418

`A033930(n)%A143573(n)`
-/

namespace A307629.P10623271141716448418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033930 n) (A143573 n)

end

end A307629.P10623271141716448418

namespace A307629

/-- `A033930(n)%A143573(n)` -/
def P10623271141716448418.Spec : Prop :=
  ∀ n, P10623271141716448418.a n = A307629 n

end A307629

/-! ## A307629.P1852530953393868352

`A053392(n+n-A118759(n))`
-/

namespace A307629.P1852530953393868352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053392 ((n + n : ℤ) - A118759 n).toNat

end

end A307629.P1852530953393868352

namespace A307629

/-- `A053392(n+n-A118759(n))` -/
def P1852530953393868352.Spec : Prop :=
  ∀ n, P1852530953393868352.a n = A307629 n

end A307629

/-!
# A307631: Indices of record high-points in A307720.

The programs for A307631, there is no canonical definition to state claims against.
-/

/-! ## A307631.P4532682021031224840

`A307630(A307750(n+1))`
-/

namespace A307631.P4532682021031224840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307630 (A307750 (n + 1)).toNat

end

end A307631.P4532682021031224840

/-! ## A307631.P15169309882174898541

`A307630(record[A307747(n+1)])`
-/

namespace A307631.P15169309882174898541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307747 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307630 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A307631.P15169309882174898541

/-! ## A307631.P14049595181430355298

`A307630(record[A307720(n+1)])`
-/

namespace A307631.P14049595181430355298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307630 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A307631.P14049595181430355298

/-! ## A307631.P10076494597415490968

`A307630(record[A348459(n+1)])`
-/

namespace A307631.P10076494597415490968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348459 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307630 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A307631.P10076494597415490968

/-! ## A307631.P14568339083561398277

`A307630(A005100(n+1)%A225554(3*n+4))`
-/

namespace A307631.P14568339083561398277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307630 (Int.tmod (A005100 (n + 1)) (A225554 (3 * n + 4))).toNat

end

end A307631.P14568339083561398277

/-!
# A307632: Index of first occurrence of n-th prime in A307720.

The programs for A307632, there is no canonical definition to state claims against.
-/

/-! ## A307632.P15501334877740182486

`A348773(n)+a(n-1)` with `a(0)=3`
-/

namespace A307632.P15501334877740182486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A348773 n + a (n - 1)

end

end A307632.P15501334877740182486

/-! ## A307632.P2532015811992703350

`A307630(A000040(n+1))`
-/

namespace A307632.P2532015811992703350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307630 (A000040 (n + 1)).toNat

end

end A307632.P2532015811992703350

/-! ## A307632.P12277844476619367589

`A307630(A008578(n+2))`
-/

namespace A307632.P12277844476619367589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307630 (A008578 (n + 2)).toNat

end

end A307632.P12277844476619367589

/-! ## A307632.P17548920791244621299

`A307630(A182986(n+2))`
-/

namespace A307632.P17548920791244621299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307630 (A182986 (n + 2)).toNat

end

end A307632.P17548920791244621299

/-! ## A307632.P6702864453531906487

`A307630(sqrt(A001248(n+1)))`
-/

namespace A307632.P6702864453531906487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307630 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

end

end A307632.P6702864453531906487

/-! ## A307632.P17607296271255459824

`A307630(record[A006530(n+2)])`
-/

namespace A307632.P17607296271255459824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307630 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A307632.P17607296271255459824

/-! ## A307632.P15021492444224855576

`A307630(record[A014963(n+2)])`
-/

namespace A307632.P15021492444224855576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307630 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A307632.P15021492444224855576

/-! ## A307632.P15599974779712237872

`A307630(record[A020639(n+2)])`
-/

namespace A307632.P15599974779712237872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307630 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A307632.P15599974779712237872

/-! ## A307632.P9088115831527914266

`A307630(record[A061397(n+2)])`
-/

namespace A307632.P9088115831527914266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307630 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A307632.P9088115831527914266

/-! ## A307632.P3153646353551551028

`A307630(eq[1, A001222(n+1)]+1)`
-/

namespace A307632.P3153646353551551028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307630 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A307632.P3153646353551551028

/-! ## A307632.P2397997086927597750

`A348247(n+1)+A135528(n+1)`
-/

namespace A307632.P2397997086927597750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348247 (n + 1) + A135528 (n + 1)

end

end A307632.P2397997086927597750

/-!
# A307633: RUNS transform of bisection {A307720(2k+1): k>=0}.

The programs for A307633, there is no canonical definition to state claims against.
-/

/-! ## A307633.P6255452578448949739

`runs[A348241(n)]`
-/

namespace A307633.P6255452578448949739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348241 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A307633.P6255452578448949739

/-! ## A307633.P764230160761180527

`runs[A307720(2*n+1)]`
-/

namespace A307633.P764230160761180527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307720 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A307633.P764230160761180527

/-! ## A307633.P6218086263844267912

`runs[A307720((n+1)²-n²)!]`
-/

namespace A307633.P6218086263844267912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A307720 ((n + 1) ^ 2 - n ^ 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A307633.P6218086263844267912

/-! ## A307633.P17859993472148690403

`runs[A348446(n+1)+A348242(n+1)]`
-/

namespace A307633.P17859993472148690403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348446 (n + 1) + A348242 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A307633.P17859993472148690403

/-!
# A307634: RUNS transform of bisection {A307720(2k): k>=1}.

The programs for A307634, there is no canonical definition to state claims against.
-/

/-! ## A307634.P17401657854874204270

`runs[A348242(n+1)]`
-/

namespace A307634.P17401657854874204270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348242 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A307634.P17401657854874204270

/-! ## A307634.P15792301621230134366

`runs[A307720(2*(n+1))]`
-/

namespace A307634.P15792301621230134366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307720 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A307634.P15792301621230134366

/-! ## A307634.P6020893647428385

`runs[A307720(2+n+n)!]`
-/

namespace A307634.P6020893647428385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A307720 (2 + n + n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A307634.P6020893647428385

/-!
# A307635: a(0)=1; thereafter a(n) = largest number that can be obtained by applying "Choix de Bruxelles (version 2)" (see A323460) to a(n-1).

The programs for A307635, there is no canonical definition to state claims against.
-/

/-! ## A307635.P10623616917850279521

`A323288(a(n-1))` with `a(0)=1`
-/

namespace A307635.P10623616917850279521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A323288 (a (n - 1)).toNat

end

end A307635.P10623616917850279521

/-! ## A307635.P13637280576477523495

`∪[A323453(2*n), A323288(A323453(2*n))]`
-/

namespace A307635.P13637280576477523495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323453 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323288 (A323453 (2 * n)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A307635.P13637280576477523495

/-! ## A307635.P8046174022334537813

`∏[A020639(A270678(n))]`
-/

namespace A307635.P8046174022334537813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A270678 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A307635.P8046174022334537813

/-! ## A307635.P717760759199594134

`A355223(A061581(n+1))`
-/

namespace A307635.P717760759199594134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355223 (A061581 (n + 1)).toNat

end

end A307635.P717760759199594134

/-!
# A307636: Numbers k with property that no two divisors of k share a common digit.

The programs for A307636, there is no canonical definition to state claims against.
-/

/-! ## A307636.P15454754219964885189

`eq[A243360(n+1), A256824(n+1)]+1`
-/

namespace A307636.P15454754219964885189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243360 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256824 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A307636.P15454754219964885189

/-! ## A307636.P6607929751152411811

`A199343(eq[A243360(n+1), A256824(n+1)])`
-/

namespace A307636.P6607929751152411811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243360 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256824 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199343 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A307636.P6607929751152411811

/-! ## A307636.P4062812360384908802

`A199344(eq[A243360(n+1), A256824(n+1)])`
-/

namespace A307636.P4062812360384908802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243360 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256824 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199344 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A307636.P4062812360384908802

/-! ## A307636.P18263139328814346178

`record[A113764(2*n+1)%(n+3)]`
-/

namespace A307636.P18263139328814346178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113764 (2 * n + 1)) (n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307636.P18263139328814346178

/-!
# A307637: Sum of the second largest parts of the partitions of n into 7 primes.

The programs for A307637, there is no canonical definition to state claims against.
-/

/-! ## A307637.P16818544145119920204

`A308974(n)-A308975(n)-A308976(n)-A308977(n)-A308978(n)-A308979(n)-A308980(n)`
-/

namespace A307637.P16818544145119920204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308974 n - A308975 n - A308976 n - A308977 n - A308978 n - A308979 n - A308980 n

end

end A307637.P16818544145119920204

/-!
# A307638: a(n) = sum of digits of A308075(n).

The programs for A307638, there is no canonical definition to state claims against.
-/

/-! ## A307638.P18440643819767141205

`∑{digits}[A308075(n+1), #]`
-/

namespace A307638.P18440643819767141205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308075 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A307638.P18440643819767141205

/-! ## A307638.P11149964455778173766

`log2(∏{digits}[A308075(n+1), A329562(#)])`
-/

namespace A307638.P11149964455778173766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308075 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A329562 x).prod : ℤ) : ℝ)

end

end A307638.P11149964455778173766

/-! ## A307638.P1705038736914362422

`A037123(A308075(n+1))-A037123(A308075(n+1)-1)`
-/

namespace A307638.P1705038736914362422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 (A308075 (n + 1)).toNat - A037123 (A308075 (n + 1) - 1).toNat

end

end A307638.P1705038736914362422

/-! ## A307638.P17362443566525754504

`A007953(A308075(n+1))`
-/

namespace A307638.P17362443566525754504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A308075 (n + 1)).toNat

end

end A307638.P17362443566525754504

/-! ## A307638.P5268114467818676537

`A057147(A308075(n+1))/A308075(A000027(n+1))`
-/

namespace A307638.P5268114467818676537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057147 (A308075 (n + 1)).toNat : ℚ) / (A308075 (A000027 (n + 1)).toNat : ℚ)

end

end A307638.P5268114467818676537

/-! ## A307638.P10409548010098865801

`A061762(10*A308075(n+1))`
-/

namespace A307638.P10409548010098865801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 (10 * A308075 (n + 1)).toNat

end

end A307638.P10409548010098865801

/-! ## A307638.P7049861211571061

`A062329(10*A308075(n+1))`
-/

namespace A307638.P7049861211571061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062329 (10 * A308075 (n + 1)).toNat

end

end A307638.P7049861211571061

/-!
# A307640: Least number k such that n divides gcd(sigma(k), phi(k), tau(k)).

The programs for A307640, there is no canonical definition to state claims against.
-/

/-! ## A307640.P9146703608267311491

`A269303(A164039(n))+A241119(A084810(n+1))`
-/

namespace A307640.P9146703608267311491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269303 (A164039 n).toNat + A241119 (A084810 (n + 1)).toNat

end

end A307640.P9146703608267311491

/-!
# A307641: Triangle T(i,j=1..i) read by rows which contain the naturally ordered prime-or-one factorization of the row number i.

The programs for A307641, the canonical program `A307641.P8431992554252271675` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307641 has offset 1).

The definition of A307641 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8646 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A307641.P8431992554252271675

`A014963(A307662(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A307641

/-- `A014963(A307662(n+1))` -/
def P8431992554252271675.Spec : Prop :=
  ∀ n, P8431992554252271675.a n = A307641 (n + 1)

theorem P8431992554252271675.correct : P8431992554252271675.Spec := by
  intro n
  simp only [A307641, Nat.add_sub_cancel]

end A307641

/-! ## A307641.P1180981601710457077

`gcd(A014473(n), A342255(n+1))`
-/

namespace A307641.P1180981601710457077
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014473 n) (A342255 (n + 1))

end

end A307641.P1180981601710457077

namespace A307641

/-- `gcd(A014473(n), A342255(n+1))` -/
def P1180981601710457077.Spec : Prop :=
  ∀ n, (P1180981601710457077.a n : ℤ) = A307641 (n + 1)

end A307641

/-! ## A307641.P15395323874374659717

`A014963(∏{p}[A127093(n+1), #])`
-/

namespace A307641.P15395323874374659717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A307641.P15395323874374659717

namespace A307641

/-- `A014963(∏{p}[A127093(n+1), #])` -/
def P15395323874374659717.Spec : Prop :=
  ∀ n, P15395323874374659717.a n = A307641 (n + 1)

end A307641

/-! ## A307641.P9490894016900407613

`A089026(∏{p}[A176079(n+1)+1, #])`
-/

namespace A307641.P9490894016900407613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176079 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A307641.P9490894016900407613

namespace A307641

/-- `A089026(∏{p}[A176079(n+1)+1, #])` -/
def P9490894016900407613.Spec : Prop :=
  ∀ n, P9490894016900407613.a n = A307641 (n + 1)

end A307641

/-! ## A307641.P4522353668535724558

`A014963(A102885(A127639(n+1)))`
-/

namespace A307641.P4522353668535724558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A102885 (A127639 (n + 1)).toNat).toNat

end

end A307641.P4522353668535724558

namespace A307641

/-- `A014963(A102885(A127639(n+1)))` -/
def P4522353668535724558.Spec : Prop :=
  ∀ n, P4522353668535724558.a n = A307641 (n + 1)

end A307641

/-! ## A307641.P13914146141127647856

`A014963(A002260(n*A051731(n+1)+1))`
-/

namespace A307641.P13914146141127647856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A002260 ((n : ℤ) * A051731 (n + 1) + 1).toNat).toNat

end

end A307641.P13914146141127647856

namespace A307641

/-- `A014963(A002260(n*A051731(n+1)+1))` -/
def P13914146141127647856.Spec : Prop :=
  ∀ n, P13914146141127647856.a n = A307641 (n + 1)

end A307641

/-! ## A307641.P2228656626048206871

`A014963(A127093(n%(A127093(n+1)+n)+1))`
-/

namespace A307641.P2228656626048206871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A127093 (Int.tmod (n : ℤ) (A127093 (n + 1) + (n : ℤ)) + 1).toNat).toNat

end

end A307641.P2228656626048206871

namespace A307641

/-- `A014963(A127093(n%(A127093(n+1)+n)+1))` -/
def P2228656626048206871.Spec : Prop :=
  ∀ n, P2228656626048206871.a n = A307641 (n + 1)

end A307641

/-! ## A307641.P9001610648904447331

`A014963(A127093(n+1)+A000007(A127093(n+1)))`
-/

namespace A307641.P9001610648904447331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A127093 (n + 1) + A000007 (A127093 (n + 1)).toNat).toNat

end

end A307641.P9001610648904447331

namespace A307641

/-- `A014963(A127093(n+1)+A000007(A127093(n+1)))` -/
def P9001610648904447331.Spec : Prop :=
  ∀ n, P9001610648904447331.a n = A307641 (n + 1)

end A307641

/-! ## A307641.P4265960457441045350

`A014963(A000194(A127093(n+1)²+1))`
-/

namespace A307641.P4265960457441045350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000194 (A127093 (n + 1) ^ 2 + 1).toNat).toNat

end

end A307641.P4265960457441045350

namespace A307641

/-- `A014963(A000194(A127093(n+1)²+1))` -/
def P4265960457441045350.Spec : Prop :=
  ∀ n, P4265960457441045350.a n = A307641 (n + 1)

end A307641

/-! ## A307641.P9698632582728625032

`A014963(A000196(A127093(n+1)²+1))`
-/

namespace A307641.P9698632582728625032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000196 (A127093 (n + 1) ^ 2 + 1).toNat).toNat

end

end A307641.P9698632582728625032

namespace A307641

/-- `A014963(A000196(A127093(n+1)²+1))` -/
def P9698632582728625032.Spec : Prop :=
  ∀ n, P9698632582728625032.a n = A307641 (n + 1)

end A307641

/-! ## A307641.P13417274320223645813

`A014963(A000194(A127093(n+1)^2+1))`
-/

namespace A307641.P13417274320223645813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000194 (A127093 (n + 1) ^ 2 + 1).toNat).toNat

end

end A307641.P13417274320223645813

namespace A307641

/-- `A014963(A000194(A127093(n+1)^2+1))` -/
def P13417274320223645813.Spec : Prop :=
  ∀ n, P13417274320223645813.a n = A307641 (n + 1)

end A307641

/-! ## A307641.P12160869034717898063

`A014963(A000196(A127093(n+1)^2+1))`
-/

namespace A307641.P12160869034717898063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000196 (A127093 (n + 1) ^ 2 + 1).toNat).toNat

end

end A307641.P12160869034717898063

namespace A307641

/-- `A014963(A000196(A127093(n+1)^2+1))` -/
def P12160869034717898063.Spec : Prop :=
  ∀ n, P12160869034717898063.a n = A307641 (n + 1)

end A307641

/-! ## A307641.P4893478833047221731

`A014963(∏{d}[A127093(n+1), #])`
-/

namespace A307641.P4893478833047221731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A307641.P4893478833047221731

namespace A307641

/-- `A014963(∏{d}[A127093(n+1), #])` -/
def P4893478833047221731.Spec : Prop :=
  ∀ n, P4893478833047221731.a n = A307641 (n + 1)

end A307641

/-!
# A307642: a(n) = n!*Sum_{i=1..n} (Sum_{j=1..i} (i/j)).

The programs for A307642, there is no canonical definition to state claims against.
-/

/-! ## A307642.P2848122726461481010

`(n+1)*A182541(n+3)`
-/

namespace A307642.P2848122726461481010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A182541 (n + 3)

end

end A307642.P2848122726461481010

/-! ## A307642.P15788001114264831384

`record[A285795(n)+A081047(n)]`
-/

namespace A307642.P15788001114264831384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285795 n + A081047 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307642.P15788001114264831384

/-! ## A307642.P3578343341525462233

`A321853(n+1)+A001711(n)`
-/

namespace A307642.P3578343341525462233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321853 (n + 1) + A001711 n

end

end A307642.P3578343341525462233

/-! ## A307642.P15715409598560980744

`A006675(n+2)-A001711(n)`
-/

namespace A307642.P15715409598560980744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006675 (n + 2) - A001711 n

end

end A307642.P15715409598560980744

/-! ## A307642.P2541979896013406736

`A285795(n+2)-A001705(n+1)`
-/

namespace A307642.P2541979896013406736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285795 (n + 2) - A001705 (n + 1)

end

end A307642.P2541979896013406736

/-! ## A307642.P2126803873191059437

`A182541(n+4)-A000254(n+2)`
-/

namespace A307642.P2126803873191059437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182541 (n + 4) - A000254 (n + 2)

end

end A307642.P2126803873191059437

/-! ## A307642.P1796348461338627873

`(n+1)*(A285382(n+1)-A180119(n))`
-/

namespace A307642.P1796348461338627873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A285382 (n + 1) - A180119 n)

end

end A307642.P1796348461338627873

/-!
# A307645: Numbers that are the sum of a positive triangular number and a positive cube.

The programs for A307645, there is no canonical definition to state claims against.
-/

/-! ## A307645.P3577502713492826485

`A054406(n+1)+A007949(A126683(n))`
-/

namespace A307645.P3577502713492826485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (n + 1) + A007949 (A126683 n).toNat

end

end A307645.P3577502713492826485

/-!
# A307646: Numbers that are the sum of a prime number and a nonnegative cube.

The programs for A307646, there is no canonical definition to state claims against.
-/

/-! ## A307646.P7300438181987407401

`lt[0, A302354(n+1)]+1`
-/

namespace A307646.P7300438181987407401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302354 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A307646.P7300438181987407401

/-! ## A307646.P9627042900377858795

`lt[0, A302354(A028310(n))]`
-/

namespace A307646.P9627042900377858795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302354 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A307646.P9627042900377858795

/-! ## A307646.P2850259323232759163

`eq[char[A045911(n+1)], A130706(n)]`
-/

namespace A307646.P2850259323232759163
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045911 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A307646.P2850259323232759163

/-! ## A307646.P14878706523448511204

`eq[char[A045911(n+1)], A169585(n)]`
-/

namespace A307646.P14878706523448511204
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045911 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A307646.P14878706523448511204

/-! ## A307646.P10988857890721099421

`∪[A307647(n+1), Δ[A007504(n)]]`
-/

namespace A307646.P10988857890721099421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307647 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A307646.P10988857890721099421

/-! ## A307646.P11846812791990102320

`∪[A000040(n+1), A307647(n+1)]`
-/

namespace A307646.P11846812791990102320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307647 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A307646.P11846812791990102320

/-! ## A307646.P18178139766893199767

`∪[A029743(n+1), A307647(n+1)]`
-/

namespace A307646.P18178139766893199767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307647 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A307646.P18178139766893199767

/-! ## A307646.P5865796819442093000

`∪[A030291(n+1), A307647(n+1)]`
-/

namespace A307646.P5865796819442093000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307647 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A307646.P5865796819442093000

/-! ## A307646.P8435857966156545047

`∪[A030475(n+1), A307647(n+1)]`
-/

namespace A307646.P8435857966156545047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307647 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A307646.P8435857966156545047

/-! ## A307646.P3269253401081720788

`∪[A032758(n+1), A307647(n+1)]`
-/

namespace A307646.P3269253401081720788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032758 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307647 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A307646.P3269253401081720788

/-!
# A307647: Numbers that are the sum of a prime number and a positive cube.

The programs for A307647, there is no canonical definition to state claims against.
-/

/-! ## A307647.P6225331020767606253

`lt[0, A283760(n+1)]+1`
-/

namespace A307647.P6225331020767606253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283760 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A307647.P6225331020767606253

/-! ## A307647.P17913239477843477905

`lt[1, A283760(A028310(n))+1]`
-/

namespace A307647.P17913239477843477905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283760 (A028310 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A307647.P17913239477843477905

/-! ## A307647.P3568977003514655532

`lt[0, A283760(A233583(n+1))]`
-/

namespace A307647.P3568977003514655532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283760 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A307647.P3568977003514655532

/-! ## A307647.P9133084882737320774

`lt[A010051(n+1), A302354(n+1)]+1`
-/

namespace A307647.P9133084882737320774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302354 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A307647.P9133084882737320774

/-!
# A307650: Number of regions in the Shi-threshold arrangement STn.

The programs for A307650, there is no canonical definition to state claims against.
-/

/-! ## A307650.P14336689541074789260

`A258976(∑[A273998(n)])`
-/

namespace A307650.P14336689541074789260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258976 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A307650.P14336689541074789260

/-!
# A307651: a(n) is the determinant of the Vandermonde matrix of the digits of n.

The programs for A307651, there is no canonical definition to state claims against.
-/

/-! ## A307651.P14385490045505889157

`A055017(n)^A056594(2^∑{digits}[n, #%C(n, #)])`
-/

namespace A307651.P14385490045505889157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055017 n : ℚ) ^ (A056594 (2 ^ ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x % Nat.choose n x).sum) : ℤ)

end

end A307651.P14385490045505889157

/-! ## A307651.P9570029439400592228

`A055017(n^A056926(A309438(n)))`
-/

namespace A307651.P9570029439400592228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A056926 (A309438 n).toNat : ℤ))).toNat

end

end A307651.P9570029439400592228

/-! ## A307651.P14160972142599037876

`A055017(n)^A056978(A092749(n))`
-/

namespace A307651.P14160972142599037876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055017 n : ℚ) ^ (A056978 (A092749 n).toNat : ℤ)

end

end A307651.P14160972142599037876

/-!
# A307653: a(n) = Sum_{d|n} mu(d) * d^d.

The programs for A307653, the canonical program `A307653.P6096814010301031058` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307653 has offset 1).

The definition of A307653 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n+1, A008683(#)*#^#]` (program `A307653.P6096814010301031058`, by `A307653.P6096814010301031058.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A307653.P6096814010301031058

`∑{d}[n+1, A008683(#)*#^#]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A307653

/-- `∑{d}[n+1, A008683(#)*#^#]` -/
def P6096814010301031058.Spec : Prop :=
  ∀ n, P6096814010301031058.a n = A307653 (n + 1)

theorem P6096814010301031058.correct : P6096814010301031058.Spec := by
  intro n
  simp only [A307653, Nat.add_sub_cancel]

end A307653

/-! ## A307653.P15823772736836420385

`∑{d}[n+1, #^#*A008683(#)]`
-/

namespace A307653.P15823772736836420385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d ^ d : ℤ) * A008683 d

end

end A307653.P15823772736836420385

namespace A307653

/-- `∑{d}[n+1, #^#*A008683(#)]` -/
def P15823772736836420385.Spec : Prop :=
  ∀ n, P15823772736836420385.a n = A307653 (n + 1)

end A307653

/-!
# A307654: a(n) = Product_{p|n, p prime} (1 - p^p).

The programs for A307654, there is no canonical definition to state claims against.
-/

/-! ## A307654.P12180926675472924855

`∏{p}[n+1, 1-#^#]`
-/

namespace A307654.P12180926675472924855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (1 - (p ^ p : ℤ))

end

end A307654.P12180926675472924855

/-!
# A307660: E.g.f. A(x) satisfies: A(x) = exp(-x) * A(x^2)*A(x^3)*A(x^4)* ... *A(x^k)* ...

The programs for A307660, there is no canonical definition to state claims against.
-/

/-! ## A307660.P16338274602635034720

`A058030(C(2*n, A058071(n)))`
-/

namespace A307660.P16338274602635034720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058030 (Nat.choose (2 * n) (A058071 n).toNat)

end

end A307660.P16338274602635034720

/-! ## A307660.P16481553347038423870

`A354347(A185616(n+1)+A002275(n))`
-/

namespace A307660.P16481553347038423870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354347 (A185616 (n + 1) + A002275 n).toNat

end

end A307660.P16481553347038423870

/-!
# A307662: Triangle T(i,j=1..i) read by rows which contain the naturally ordered divisors-or-ones of the row number i.

The programs for A307662, the canonical program `A307662.P16149030003919297589` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307662 has offset 1).

The definition of A307662 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8646 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A307662.P10726711550779346608

`floor(sqrt(A127093(n+1)²+1))`
-/

namespace A307662.P10726711550779346608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A127093 (n + 1) ^ 2 + 1)

end

end A307662.P10726711550779346608

namespace A307662

/-- `floor(sqrt(A127093(n+1)²+1))` -/
def P10726711550779346608.Spec : Prop :=
  ∀ n, P10726711550779346608.a n = A307662 (n + 1)

end A307662

/-! ## A307662.P1173138059435779575

`1+A051731(n+1)*col(n)`
-/

namespace A307662.P1173138059435779575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A051731 (n + 1) * (SequenceMachineLib.triCol n : ℤ)

end

end A307662.P1173138059435779575

namespace A307662

/-- `1+A051731(n+1)*col(n)` -/
def P1173138059435779575.Spec : Prop :=
  ∀ n, P1173138059435779575.a n = A307662 (n + 1)

end A307662

/-! ## A307662.P16149030003919297589

`A028310(A127093(n+1))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A307662

/-- `A028310(A127093(n+1))` -/
def P16149030003919297589.Spec : Prop :=
  ∀ n, P16149030003919297589.a n = A307662 (n + 1)

theorem P16149030003919297589.correct : P16149030003919297589.Spec := by
  intro n
  simp only [A307662, Nat.add_sub_cancel]

end A307662

/-! ## A307662.P7732411380808105950

`A102885(A127639(n+1))`
-/

namespace A307662.P7732411380808105950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102885 (A127639 (n + 1)).toNat

end

end A307662.P7732411380808105950

namespace A307662

/-- `A102885(A127639(n+1))` -/
def P7732411380808105950.Spec : Prop :=
  ∀ n, P7732411380808105950.a n = A307662 (n + 1)

end A307662

/-! ## A307662.P5233210602692609248

`A004524(A134560(n+1))+1`
-/

namespace A307662.P5233210602692609248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A134560 (n + 1)).toNat + 1

end

end A307662.P5233210602692609248

namespace A307662

/-- `A004524(A134560(n+1))+1` -/
def P5233210602692609248.Spec : Prop :=
  ∀ n, P5233210602692609248.a n = A307662 (n + 1)

end A307662

/-! ## A307662.P4556528595931857313

`A032742(A134560(n+1)+1)`
-/

namespace A307662.P4556528595931857313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A134560 (n + 1) + 1).toNat

end

end A307662.P4556528595931857313

namespace A307662

/-- `A032742(A134560(n+1)+1)` -/
def P4556528595931857313.Spec : Prop :=
  ∀ n, P4556528595931857313.a n = A307662 (n + 1)

end A307662

/-! ## A307662.P3001455009346764790

`A123108(2*A127093(n+1))`
-/

namespace A307662.P3001455009346764790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (2 * A127093 (n + 1)).toNat

end

end A307662.P3001455009346764790

namespace A307662

/-- `A123108(2*A127093(n+1))` -/
def P3001455009346764790.Spec : Prop :=
  ∀ n, P3001455009346764790.a n = A307662 (n + 1)

end A307662

/-! ## A307662.P4644857911823278640

`A001057(or(1, A134560(n+1)))`
-/

namespace A307662.P4644857911823278640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (Int.lor 1 (A134560 (n + 1))).toNat

end

end A307662.P4644857911823278640

namespace A307662

/-- `A001057(or(1, A134560(n+1)))` -/
def P4644857911823278640.Spec : Prop :=
  ∀ n, P4644857911823278640.a n = A307662 (n + 1)

end A307662

/-! ## A307662.P12519033735280731122

`A127093(n+1)^A144515(n)`
-/

namespace A307662.P12519033735280731122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127093 (n + 1) : ℚ) ^ (A144515 n : ℤ)

end

end A307662.P12519033735280731122

namespace A307662

/-- `A127093(n+1)^A144515(n)` -/
def P12519033735280731122.Spec : Prop :=
  ∀ n, P12519033735280731122.a n = (A307662 (n + 1) : ℚ)

end A307662

/-! ## A307662.P7524890846316223859

`∏{d}[A127093(n+1), A014963(#)]`
-/

namespace A307662.P7524890846316223859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A307662.P7524890846316223859

namespace A307662

/-- `∏{d}[A127093(n+1), A014963(#)]` -/
def P7524890846316223859.Spec : Prop :=
  ∀ n, P7524890846316223859.a n = A307662 (n + 1)

end A307662

/-! ## A307662.P5971631984854201141

`A094727(C(A127093(n+1), 2)+1)`
-/

namespace A307662.P5971631984854201141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (Nat.choose (A127093 (n + 1)).toNat 2 + 1)

end

end A307662.P5971631984854201141

namespace A307662

/-- `A094727(C(A127093(n+1), 2)+1)` -/
def P5971631984854201141.Spec : Prop :=
  ∀ n, P5971631984854201141.a n = A307662 (n + 1)

end A307662

/-! ## A307662.P14222608850001174794

`A134560(n+1)-A176079(n+1)`
-/

namespace A307662.P14222608850001174794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134560 (n + 1) - A176079 (n + 1)

end

end A307662.P14222608850001174794

namespace A307662

/-- `A134560(n+1)-A176079(n+1)` -/
def P14222608850001174794.Spec : Prop :=
  ∀ n, P14222608850001174794.a n = A307662 (n + 1)

end A307662

/-! ## A307662.P1515485200450407320

`A002260(n*A051731(n+1)+1)`
-/

namespace A307662.P1515485200450407320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 ((n : ℤ) * A051731 (n + 1) + 1).toNat

end

end A307662.P1515485200450407320

namespace A307662

/-- `A002260(n*A051731(n+1)+1)` -/
def P1515485200450407320.Spec : Prop :=
  ∀ n, P1515485200450407320.a n = A307662 (n + 1)

end A307662

/-! ## A307662.P8800187292783126362

`A002262(n*A051731(n+1))+1`
-/

namespace A307662.P8800187292783126362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 ((n : ℤ) * A051731 (n + 1)).toNat + 1

end

end A307662.P8800187292783126362

namespace A307662

/-- `A002262(n*A051731(n+1))+1` -/
def P8800187292783126362.Spec : Prop :=
  ∀ n, P8800187292783126362.a n = A307662 (n + 1)

end A307662

/-! ## A307662.P6272048371938768062

`A050873(n*A051731(n+1)+1)`
-/

namespace A307662.P6272048371938768062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 ((n : ℤ) * A051731 (n + 1) + 1).toNat

end

end A307662.P6272048371938768062

namespace A307662

/-- `A050873(n*A051731(n+1)+1)` -/
def P6272048371938768062.Spec : Prop :=
  ∀ n, P6272048371938768062.a n = A307662 (n + 1)

end A307662

/-! ## A307662.P10217396647379099779

`A123275(n*A051731(n+1)+1)`
-/

namespace A307662.P10217396647379099779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123275 ((n : ℤ) * A051731 (n + 1) + 1).toNat

end

end A307662.P10217396647379099779

namespace A307662

/-- `A123275(n*A051731(n+1)+1)` -/
def P10217396647379099779.Spec : Prop :=
  ∀ n, P10217396647379099779.a n = A307662 (n + 1)

end A307662

/-! ## A307662.P11294400447275257597

`A127093(n*A051731(n+1)+1)`
-/

namespace A307662.P11294400447275257597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 ((n : ℤ) * A051731 (n + 1) + 1).toNat

end

end A307662.P11294400447275257597

namespace A307662

/-- `A127093(n*A051731(n+1)+1)` -/
def P11294400447275257597.Spec : Prop :=
  ∀ n, P11294400447275257597.a n = A307662 (n + 1)

end A307662

/-! ## A307662.P5431460434883350974

`A334230(n*A051731(n+1)+1)`
-/

namespace A307662.P5431460434883350974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334230 ((n : ℤ) * A051731 (n + 1) + 1).toNat

end

end A307662.P5431460434883350974

namespace A307662

/-- `A334230(n*A051731(n+1)+1)` -/
def P5431460434883350974.Spec : Prop :=
  ∀ n, P5431460434883350974.a n = A307662 (n + 1)

end A307662

/-! ## A307662.P7815690115016653140

`A127093(n+1)+1-A051731(n+1)`
-/

namespace A307662.P7815690115016653140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1) + (1 - A051731 (n + 1))

end

end A307662.P7815690115016653140

namespace A307662

/-- `A127093(n+1)+1-A051731(n+1)` -/
def P7815690115016653140.Spec : Prop :=
  ∀ n, P7815690115016653140.a n = A307662 (n + 1)

end A307662

/-! ## A307662.P6619138512910807613

`A129234(n+1)+1-A126988(n+1)`
-/

namespace A307662.P6619138512910807613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129234 (n + 1) + (1 - A126988 (n + 1))

end

end A307662.P6619138512910807613

namespace A307662

/-- `A129234(n+1)+1-A126988(n+1)` -/
def P6619138512910807613.Spec : Prop :=
  ∀ n, P6619138512910807613.a n = A307662 (n + 1)

end A307662

/-!
# A307663: a(n) = (n-1)!*(Sum_{i=1..n} Sum_{j=1..i} binomial(i,j)*i/j).

The programs for A307663, there is no canonical definition to state claims against.
-/

/-! ## A307663.P2520127879282398957

`A103213(n+1)+n*a(n-1)` with `a(0)=1`
-/

namespace A307663.P2520127879282398957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A103213 (n + 1) + (n : ℤ) * a (n - 1)

end

end A307663.P2520127879282398957

/-! ## A307663.P17615581031676151714

`A355171(n+1)-A355372(n)`
-/

namespace A307663.P17615581031676151714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355171 (n + 1) - A355372 n

end

end A307663.P17615581031676151714

/-! ## A307663.P1659766153548580618

`A355257(A141214(n+1))-A355372(n)`
-/

namespace A307663.P1659766153548580618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355257 (A141214 (n + 1)).toNat - A355372 n

end

end A307663.P1659766153548580618

/-!
# A307664: Lexicographically earliest sequence of positive terms, such that each value, say v, appears three times at indices k, k + v and k + 2*v for some k.

The programs for A307664, there is no canonical definition to state claims against.
-/

/-! ## A307664.P1773893599242432838

`A023416(∑[A241168(2*(n+1))+A084796(n+1)])`
-/

namespace A307664.P1773893599242432838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241168 (2 * (n + 1)) + A084796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A307664.P1773893599242432838

/-!
# A307666: Number of partitions of n into consecutive positive triangular numbers.

The programs for A307666, there is no canonical definition to state claims against.
-/

/-! ## A307666.P1417052588465016898

`A356241(A255159(n+1)-A031018(n+1))`
-/

namespace A307666.P1417052588465016898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356241 (A255159 (n + 1) - A031018 (n + 1)).toNat

end

end A307666.P1417052588465016898

/-! ## A307666.P11384379357745879202

`A333817(A054582(n+1))+A010054(n+1)`
-/

namespace A307666.P11384379357745879202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333817 (A054582 (n + 1)).toNat + A010054 (n + 1)

end

end A307666.P11384379357745879202

/-! ## A307666.P4281778621807761925

`A259361(gcd(A008474(n+2), A229323(n+6)))`
-/

namespace A307666.P4281778621807761925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (Int.gcd (A008474 (n + 2)) (A229323 (n + 6)))

end

end A307666.P4281778621807761925

/-! ## A307666.P3870337398540058129

`A331327(gcd(A049780(n), A063955(n+1)))`
-/

namespace A307666.P3870337398540058129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331327 (Int.gcd (A049780 n) (A063955 (n + 1)))

end

end A307666.P3870337398540058129

/-! ## A307666.P5093530635168256262

`A319000(n+1)+A030308(A185951(3*n+2))`
-/

namespace A307666.P5093530635168256262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319000 (n + 1) + A030308 (A185951 (3 * n + 2)).toNat

end

end A307666.P5093530635168256262

/-!
# A307668: A(n,k) = Sum_{j=0..floor(n/k)} (-1)^j*binomial(2*n,k*j+n), square array A(n,k) read by antidiagonals, for n >= 0, k >= 1.

The programs for A307668, there is no canonical definition to state claims against.
-/

/-! ## A307668.P17588383973532116492

`A048766(C((p?[4*n+1]-5)/4, A002262(n)))`
-/

namespace A307668.P17588383973532116492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (Nat.choose (SequenceMachineLib.roundAway (((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 5 : ℚ) / 4)).toNat (A002262 n).toNat)

end

end A307668.P17588383973532116492

/-! ## A307668.P12695044623867909533

`A220104(A011371(n)^A002262(n))`
-/

namespace A307668.P12695044623867909533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220104 (SequenceMachineLib.roundAway ((A011371 n : ℚ) ^ (A002262 n : ℤ))).toNat

end

end A307668.P12695044623867909533

/-! ## A307668.P2814460878946401138

`A048766(A195232(n+1)-A000120(n))`
-/

namespace A307668.P2814460878946401138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A195232 (n + 1) - A000120 n).toNat

end

end A307668.P2814460878946401138

/-! ## A307668.P8900888048665967526

`A048766(A195232(n+1)-A003056(n))`
-/

namespace A307668.P8900888048665967526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A195232 (n + 1) - A003056 n).toNat

end

end A307668.P8900888048665967526

/-! ## A307668.P6115814146849882029

`A048766(A195232(n+1)-A007318(n))`
-/

namespace A307668.P6115814146849882029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A195232 (n + 1) - A007318 n).toNat

end

end A307668.P6115814146849882029

/-!
# A307670: Number of (undirected) cycles in the n X n antelope graph.

The programs for A307670, there is no canonical definition to state claims against.
-/

/-! ## A307670.P9782253217375739081

`xor(1, A143871(A035038(n)))`
-/

namespace A307670.P9782253217375739081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A143871 (A035038 n).toNat)

end

end A307670.P9782253217375739081

/-! ## A307670.P17133302681858963683

`A215664(A060086(n)^A331574(n))`
-/

namespace A307670.P17133302681858963683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215664 (SequenceMachineLib.roundAway ((A060086 n : ℚ) ^ (A331574 n : ℤ))).toNat

end

end A307670.P17133302681858963683

/-! ## A307670.P15278749564095123177

`A160664(A160667(n))%A160667(A160646(n+1))`
-/

namespace A307670.P15278749564095123177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160664 (A160667 n).toNat) (A160667 (A160646 (n + 1)).toNat)

end

end A307670.P15278749564095123177

/-!
# A307673: Partial sums of A108754.

The programs for A307673, the canonical program `A307673.P7363177245116075700` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307673 has offset 1).

The definition of A307673 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A307673.P7363177245116075700

`∑[A108754(n+1)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A307673

/-- `∑[A108754(n+1)]` -/
def P7363177245116075700.Spec : Prop :=
  ∀ n, P7363177245116075700.a n = A307673 (n + 1)

theorem P7363177245116075700.correct : P7363177245116075700.Spec := by
  intro n
  simp only [A307673, Nat.add_sub_cancel]

end A307673

/-! ## A307673.P8534294350618645214

`∑[∑[A131733(n+1)]]`
-/

namespace A307673.P8534294350618645214
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131733 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307673.P8534294350618645214

namespace A307673

/-- `∑[∑[A131733(n+1)]]` -/
def P8534294350618645214.Spec : Prop :=
  ∀ n, P8534294350618645214.a n = A307673 (n + 1)

end A307673

/-! ## A307673.P3864029739671650838

`∑[∑[A173072(n+1)-1]]`
-/

namespace A307673.P3864029739671650838
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173072 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307673.P3864029739671650838

namespace A307673

/-- `∑[∑[A173072(n+1)-1]]` -/
def P3864029739671650838.Spec : Prop :=
  ∀ n, P3864029739671650838.a n = A307673 (n + 1)

end A307673

/-! ## A307673.P2326561915823015914

`∑[∑[A014689(n+1)-n]]`
-/

namespace A307673.P2326561915823015914
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (n + 1) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307673.P2326561915823015914

namespace A307673

/-- `∑[∑[A014689(n+1)-n]]` -/
def P2326561915823015914.Spec : Prop :=
  ∀ n, P2326561915823015914.a n = A307673 (n + 1)

end A307673

/-! ## A307673.P14603934851733471834

`∑[A112997(n+1)-∑[n]]`
-/

namespace A307673.P14603934851733471834
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112997 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307673.P14603934851733471834

namespace A307673

/-- `∑[A112997(n+1)-∑[n]]` -/
def P14603934851733471834.Spec : Prop :=
  ∀ n, P14603934851733471834.a n = A307673 (n + 1)

end A307673

/-! ## A307673.P9647334212916802237

`∑[A135267(n+1)+n+1]`
-/

namespace A307673.P9647334212916802237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135267 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307673.P9647334212916802237

namespace A307673

/-- `∑[A135267(n+1)+n+1]` -/
def P9647334212916802237.Spec : Prop :=
  ∀ n, P9647334212916802237.a n = A307673 (n + 1)

theorem P9647334212916802237.correct : P9647334212916802237.Spec := by
  intro n
  simp only [A307673, Nat.add_sub_cancel, A307673.P9647334212916802237.f1, A307673.P9647334212916802237.a, A307673.P7363177245116075700.f1, A307673.P7363177245116075700.a, A108754, A108754.P16448062333260017930.a, A135267, A135267.P10837298668863611185.a, A000290, A000290.P12206242496348924484.a, A002378, A002378.P6342434596694243671.a, A007504, A007504.P14310834286015847203.a, A014284, A014284.P18183547548072881472.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A307673

/-! ## A307673.P10783897604469633607

`∑[∑[n²-A073497(n+1)]]`
-/

namespace A307673.P10783897604469633607
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A073497 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307673.P10783897604469633607

namespace A307673

/-- `∑[∑[n²-A073497(n+1)]]` -/
def P10783897604469633607.Spec : Prop :=
  ∀ n, P10783897604469633607.a n = A307673 (n + 1)

end A307673

/-! ## A307673.P10611827940178990052

`∑[∑[n²]-A108753(n+1)]`
-/

namespace A307673.P10611827940178990052
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A108753 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307673.P10611827940178990052

namespace A307673

/-- `∑[∑[n²]-A108753(n+1)]` -/
def P10611827940178990052.Spec : Prop :=
  ∀ n, P10611827940178990052.a n = A307673 (n + 1)

end A307673

/-! ## A307673.P2049803119968734371

`∑[A007504(n+1)-(n+1)²]`
-/

namespace A307673.P2049803119968734371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) - ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307673.P2049803119968734371

namespace A307673

/-- `∑[A007504(n+1)-(n+1)²]` -/
def P2049803119968734371.Spec : Prop :=
  ∀ n, P2049803119968734371.a n = A307673 (n + 1)

theorem P2049803119968734371.correct : P2049803119968734371.Spec := by
  intro n
  simp only [A307673, Nat.add_sub_cancel, A307673.P2049803119968734371.f1, A307673.P2049803119968734371.a, A307673.P7363177245116075700.f1, A307673.P7363177245116075700.a, A007504, A007504.P14310834286015847203.a, A108754, A108754.P16448062333260017930.a, A000290, A000290.P12206242496348924484.a, A014284, A014284.P18183547548072881472.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A307673

/-! ## A307673.P8149614769782479320

`A014148(n+1)-∑[(n+1)²]`
-/

namespace A307673.P8149614769782479320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014148 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A307673.P8149614769782479320

namespace A307673

/-- `A014148(n+1)-∑[(n+1)²]` -/
def P8149614769782479320.Spec : Prop :=
  ∀ n, P8149614769782479320.a n = A307673 (n + 1)

end A307673

/-! ## A307673.P738426597465303986

`∑[∑[A000040(n+1)-Δ[n²]]]`
-/

namespace A307673.P738426597465303986
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - ((f3 (n + 1) : ℤ) - (f3 n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307673.P738426597465303986

namespace A307673

/-- `∑[∑[A000040(n+1)-Δ[n²]]]` -/
def P738426597465303986.Spec : Prop :=
  ∀ n, P738426597465303986.a n = A307673 (n + 1)

end A307673

/-! ## A307673.P2563502816293985064

`∑[∑[A006093(n+1)-A005843(n)]]`
-/

namespace A307673.P2563502816293985064
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - A005843 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307673.P2563502816293985064

namespace A307673

/-- `∑[∑[A006093(n+1)-A005843(n)]]` -/
def P2563502816293985064.Spec : Prop :=
  ∀ n, P2563502816293985064.a n = A307673 (n + 1)

end A307673

/-! ## A307673.P1247329334518543087

`∑[∑[A000040(n+1)]-A005563(n)-1]`
-/

namespace A307673.P1247329334518543087
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A005563 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307673.P1247329334518543087

namespace A307673

/-- `∑[∑[A000040(n+1)]-A005563(n)-1]` -/
def P1247329334518543087.Spec : Prop :=
  ∀ n, P1247329334518543087.a n = A307673 (n + 1)

end A307673

/-! ## A307673.P9490267746439143648

`∑[∑[A000040(n+1)]-A000027(n+1)²]`
-/

namespace A307673.P9490267746439143648
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A000027 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307673.P9490267746439143648

namespace A307673

/-- `∑[∑[A000040(n+1)]-A000027(n+1)²]` -/
def P9490267746439143648.Spec : Prop :=
  ∀ n, P9490267746439143648.a n = A307673 (n + 1)

end A307673

/-! ## A307673.P4066142909729615110

`∑[∑[A008578(n+2)-(2*n+1)]]`
-/

namespace A307673.P4066142909729615110
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) - (2 * n + 1 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307673.P4066142909729615110

namespace A307673

/-- `∑[∑[A008578(n+2)-(2*n+1)]]` -/
def P4066142909729615110.Spec : Prop :=
  ∀ n, P4066142909729615110.a n = A307673 (n + 1)

end A307673

/-! ## A307673.P17513757057370170236

`∑[∑[record[A000010(n+1)]-2*n]]`
-/

namespace A307673.P17513757057370170236
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n) - (2 * n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307673.P17513757057370170236

namespace A307673

/-- `∑[∑[record[A000010(n+1)]-2*n]]` -/
def P17513757057370170236.Spec : Prop :=
  ∀ n, P17513757057370170236.a n = A307673 (n + 1)

end A307673

/-! ## A307673.P6501404727224232799

`∑[∑[record[A000010(n+2)]-n-n]]`
-/

namespace A307673.P6501404727224232799
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n) - (n : ℤ) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307673.P6501404727224232799

namespace A307673

/-- `∑[∑[record[A000010(n+2)]-n-n]]` -/
def P6501404727224232799.Spec : Prop :=
  ∀ n, P6501404727224232799.a n = A307673 (n + 1)

end A307673

/-! ## A307673.P6782300091777086086

`∑[A160793(2*(n+1))-(n+1)²]`
-/

namespace A307673.P6782300091777086086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160793 (2 * (n + 1)) - ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307673.P6782300091777086086

namespace A307673

/-- `∑[A160793(2*(n+1))-(n+1)²]` -/
def P6782300091777086086.Spec : Prop :=
  ∀ n, P6782300091777086086.a n = A307673 (n + 1)

end A307673

/-! ## A307673.P4005354489609471965

`∑[∑[A067747(2*n+1)-(2*n+1)]]`
-/

namespace A307673.P4005354489609471965
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (2 * n + 1) - (2 * n + 1 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307673.P4005354489609471965

namespace A307673

/-- `∑[∑[A067747(2*n+1)-(2*n+1)]]` -/
def P4005354489609471965.Spec : Prop :=
  ∀ n, P4005354489609471965.a n = A307673 (n + 1)

end A307673

/-!
# A307674: L.g.f.: log(Product_{k>=1} 1/(1 - x^k/(1 - x))) = Sum_{k>=1} a(k)*x^k/k.

The programs for A307674, there is no canonical definition to state claims against.
-/

/-! ## A307674.P4753989318521576295

`A331699(n+1)-A137735(A331716(n))`
-/

namespace A307674.P4753989318521576295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331699 (n + 1) - A137735 (A331716 n).toNat

end

end A307674.P4753989318521576295

/-! ## A307674.P15364590979999679826

`A089361(A156760(n))`
-/

namespace A307674.P15364590979999679826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089361 (A156760 n).toNat

end

end A307674.P15364590979999679826

/-!
# A307677: a(0) = a(1) = a(2) = a(3) = 1; thereafter a(n) = a(n-1) + a(n-2) + a(n-4).

The programs for A307677, the canonical program `A307677.P478791265807137639` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307677 has offset 0).

The definition of A307677 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-4)` (program `A307677.P478791265807137639`, by `A307677.P478791265807137639.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A307677.P5815263793143666236

`ogf((1-x^2-x^3)/(1-x-x^2-x^4))`
-/

namespace A307677.P5815263793143666236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -1, -1] [1, -1, -1, 0, -1] n

end

end A307677.P5815263793143666236

namespace A307677

/-- `ogf((1-x^2-x^3)/(1-x-x^2-x^4))` -/
def P5815263793143666236.Spec : Prop :=
  ∀ n, P5815263793143666236.a n = A307677 n

end A307677

/-! ## A307677.P478791265807137639

`a(n-1)+a(n-2)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A307677

/-- `a(n-1)+a(n-2)+a(n-4)` -/
def P478791265807137639.Spec : Prop :=
  ∀ n, (P478791265807137639.a n : ℤ) = A307677 n

theorem P478791265807137639.correct : P478791265807137639.Spec := by
  intro n
  simp only [A307677]

end A307677

/-! ## A307677.P16522725076542575213

`A122519(A004274(n+1))`
-/

namespace A307677.P16522725076542575213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122519 (A004274 (n + 1)).toNat

end

end A307677.P16522725076542575213

namespace A307677

/-- `A122519(A004274(n+1))` -/
def P16522725076542575213.Spec : Prop :=
  ∀ n, P16522725076542575213.a n = A307677 n

end A307677

/-! ## A307677.P581948351851539947

`A122519(A004280(n+1))`
-/

namespace A307677.P581948351851539947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122519 (A004280 (n + 1)).toNat

end

end A307677.P581948351851539947

namespace A307677

/-- `A122519(A004280(n+1))` -/
def P581948351851539947.Spec : Prop :=
  ∀ n, P581948351851539947.a n = A307677 n

end A307677

/-! ## A307677.P4715120203138701388

`A122519(A004281(n+1))`
-/

namespace A307677.P4715120203138701388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122519 (A004281 (n + 1)).toNat

end

end A307677.P4715120203138701388

namespace A307677

/-- `A122519(A004281(n+1))` -/
def P4715120203138701388.Spec : Prop :=
  ∀ n, P4715120203138701388.a n = A307677 n

end A307677

/-! ## A307677.P8880652995159638024

`A005251(n)+∑[A347493(n)-A005251(n)]`
-/

namespace A307677.P8880652995159638024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347493 n - A005251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005251 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307677.P8880652995159638024

namespace A307677

/-- `A005251(n)+∑[A347493(n)-A005251(n)]` -/
def P8880652995159638024.Spec : Prop :=
  ∀ n, P8880652995159638024.a n = A307677 n

end A307677

/-! ## A307677.P12660961891894764639

`A005251(n+1)+A005251(n)-A181532(n)`
-/

namespace A307677.P12660961891894764639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005251 (n + 1) + (A005251 n - A181532 n)

end

end A307677.P12660961891894764639

namespace A307677

/-- `A005251(n+1)+A005251(n)-A181532(n)` -/
def P12660961891894764639.Spec : Prop :=
  ∀ n, P12660961891894764639.a n = A307677 n

end A307677

/-! ## A307677.P2609586903454970429

`A049853(n)-A181532(n)`
-/

namespace A307677.P2609586903454970429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049853 n - A181532 n

end

end A307677.P2609586903454970429

namespace A307677

/-- `A049853(n)-A181532(n)` -/
def P2609586903454970429.Spec : Prop :=
  ∀ n, P2609586903454970429.a n = A307677 n

end A307677

/-! ## A307677.P8392190594262313339

`A060945(n)-Δ[A005251(n+1)]`
-/

namespace A307677.P8392190594262313339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060945 n - (f1 (n + 1) - f1 n)

end

end A307677.P8392190594262313339

namespace A307677

/-- `A060945(n)-Δ[A005251(n+1)]` -/
def P8392190594262313339.Spec : Prop :=
  ∀ n, P8392190594262313339.a n = A307677 n

end A307677

/-! ## A307677.P9031143869734289363

`A017818(2*n+3)-A000931(2*(n+1))`
-/

namespace A307677.P9031143869734289363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017818 (2 * n + 3) - A000931 (2 * (n + 1))

end

end A307677.P9031143869734289363

namespace A307677

/-- `A017818(2*n+3)-A000931(2*(n+1))` -/
def P9031143869734289363.Spec : Prop :=
  ∀ n, P9031143869734289363.a n = A307677 n

end A307677

/-! ## A307677.P3582946251921270920

`A060945(n)-A000931(A317108(n+1))`
-/

namespace A307677.P3582946251921270920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060945 n - A000931 (A317108 (n + 1)).toNat

end

end A307677.P3582946251921270920

namespace A307677

/-- `A060945(n)-A000931(A317108(n+1))` -/
def P3582946251921270920.Spec : Prop :=
  ∀ n, P3582946251921270920.a n = A307677 n

end A307677

/-! ## A307677.P8864750097221900183

`A005251(n)+A060945(n)-A005314(n)`
-/

namespace A307677.P8864750097221900183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005251 n + (A060945 n - A005314 n)

end

end A307677.P8864750097221900183

namespace A307677

/-- `A005251(n)+A060945(n)-A005314(n)` -/
def P8864750097221900183.Spec : Prop :=
  ∀ n, P8864750097221900183.a n = A307677 n

end A307677

/-! ## A307677.P12779650160382045595

`A049853(n)+A347493(n)-∑[A347493(n)]`
-/

namespace A307677.P12779650160382045595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347493 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049853 n + (A347493 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A307677.P12779650160382045595

namespace A307677

/-- `A049853(n)+A347493(n)-∑[A347493(n)]` -/
def P12779650160382045595.Spec : Prop :=
  ∀ n, P12779650160382045595.a n = A307677 n

end A307677

/-! ## A307677.P3823475368520864009

`A137495(n)-A060945(n+1)`
-/

namespace A307677.P3823475368520864009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137495 n - A060945 (n + 1)

end

end A307677.P3823475368520864009

namespace A307677

/-- `A137495(n)-A060945(n+1)` -/
def P3823475368520864009.Spec : Prop :=
  ∀ n, P3823475368520864009.a n = A307677 n

end A307677

/-! ## A307677.P18179065944969378575

`A232582(n+2)-(A060945(n+1)+A005314(n))`
-/

namespace A307677.P18179065944969378575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232582 (n + 2) - (A060945 (n + 1) + A005314 n)

end

end A307677.P18179065944969378575

namespace A307677

/-- `A232582(n+2)-(A060945(n+1)+A005314(n))` -/
def P18179065944969378575.Spec : Prop :=
  ∀ n, P18179065944969378575.a n = A307677 n

end A307677

/-!
# A307678: G.f. A(x) satisfies: A(x) = 1 + x*A(x)^3/(1 - x).

The programs for A307678, the canonical program `A307678.P18339785356069423381` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307678 has offset 0).

The definition of A307678 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A307678.P18339785356069423381

`abs(Δ[A188687(abs(1-n))])`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A307678

/-- `abs(Δ[A188687(abs(1-n))])` -/
def P18339785356069423381.Spec : Prop :=
  ∀ n, P18339785356069423381.a n = A307678 n

theorem P18339785356069423381.correct : P18339785356069423381.Spec := by
  intro n
  simp only [A307678]

end A307678

/-! ## A307678.P8604321704627213283

`∑{#}[n, C(n, #)*A188678(#)]`
-/

namespace A307678.P8604321704627213283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A188678 k

end

end A307678.P8604321704627213283

namespace A307678

/-- `∑{#}[n, C(n, #)*A188678(#)]` -/
def P8604321704627213283.Spec : Prop :=
  ∀ n, P8604321704627213283.a n = A307678 n

end A307678

/-! ## A307678.P1438974797818197836

`A065033(A151382(n)+A007564(n))`
-/

namespace A307678.P1438974797818197836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A151382 n + A007564 n).toNat

end

end A307678.P1438974797818197836

namespace A307678

/-- `A065033(A151382(n)+A007564(n))` -/
def P1438974797818197836.Spec : Prop :=
  ∀ n, P1438974797818197836.a n = A307678 n

end A307678

/-!
# A307679: Expansion of e.g.f. Product_{k>=1} 1/(1 - x^k/(1 - x)^k)^(1/k).

The programs for A307679, there is no canonical definition to state claims against.
-/

/-! ## A307679.P12175918652835044662

`A066339(A002866(n))+A023882(n)`
-/

namespace A307679.P12175918652835044662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066339 (A002866 n).toNat + A023882 n

end

end A307679.P12175918652835044662

/-! ## A307679.P17903028408365838597

`A318669(or(A098189(n+1), A292419(n)))`
-/

namespace A307679.P17903028408365838597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318669 (Int.lor (A098189 (n + 1)) (A292419 n)).toNat

end

end A307679.P17903028408365838597

/-!
# A307680: Expansion of e.g.f. Product_{k>=1} (1 + x^k/(1 - x)^k)^(1/k).

The programs for A307680, there is no canonical definition to state claims against.
-/

/-! ## A307680.P8970965283991024897

`A195013(A361584(n))-1`
-/

namespace A307680.P8970965283991024897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195013 (A361584 n).toNat - 1

end

end A307680.P8970965283991024897

/-! ## A307680.P12834847179942184786

`Δ[A110655(Δ[A346894(n+1)])]`
-/

namespace A307680.P12834847179942184786
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346894 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A307680.P12834847179942184786

/-!
# A307681: Difference between the number of diagonals and the number of sides for a convex n-gon.

The programs for A307681, the canonical program `A307681.P2004751241341022597` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307681 has offset 3).

The definition of A307681 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A307681.P2004751241341022597

`C(n+1, 2)-3`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A307681

/-- `C(n+1, 2)-3` -/
def P2004751241341022597.Spec : Prop :=
  ∀ n, P2004751241341022597.a n = A307681 (n + 3)

theorem P2004751241341022597.correct : P2004751241341022597.Spec := by
  intro n
  simp only [A307681, Nat.add_sub_cancel]

end A307681

/-! ## A307681.P10969874842761748720

`(n+3)*(n-2)/2`
-/

namespace A307681.P10969874842761748720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 3 : ℤ) * ((n : ℤ) - 2) : ℚ) / 2

end

end A307681.P10969874842761748720

namespace A307681

/-- `(n+3)*(n-2)/2` -/
def P10969874842761748720.Spec : Prop :=
  ∀ n, P10969874842761748720.a n = (A307681 (n + 3) : ℚ)

theorem P10969874842761748720.correct : P10969874842761748720.Spec := by
  intro n
  simp only [A307681, Nat.add_sub_cancel, A307681.P10969874842761748720.a, A307681.P2004751241341022597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A307681

/-! ## A307681.P9219140659692340686

`ogf((-3+7x-3x^2)/(1-3x+3x^2-x^3))`
-/

namespace A307681.P9219140659692340686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-3, 7, -3] [1, -3, 3, -1] n

end

end A307681.P9219140659692340686

namespace A307681

/-- `ogf((-3+7x-3x^2)/(1-3x+3x^2-x^3))` -/
def P9219140659692340686.Spec : Prop :=
  ∀ n, P9219140659692340686.a n = A307681 (n + 3)

end A307681

/-! ## A307681.P18414429564453493544

`∑[gcd(n, n)]-3`
-/

namespace A307681.P18414429564453493544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 3

end

end A307681.P18414429564453493544

namespace A307681

/-- `∑[gcd(n, n)]-3` -/
def P18414429564453493544.Spec : Prop :=
  ∀ n, P18414429564453493544.a n = A307681 (n + 3)

end A307681

/-! ## A307681.P2218622556193612194

`∑[lcm(n, n)]-3`
-/

namespace A307681.P2218622556193612194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 3

end

end A307681.P2218622556193612194

namespace A307681

/-- `∑[lcm(n, n)]-3` -/
def P2218622556193612194.Spec : Prop :=
  ∀ n, P2218622556193612194.a n = A307681 (n + 3)

end A307681

/-! ## A307681.P5981817055988255576

`xor(-1, 2-∑[n])`
-/

namespace A307681.P5981817055988255576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) (2 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A307681.P5981817055988255576

namespace A307681

/-- `xor(-1, 2-∑[n])` -/
def P5981817055988255576.Spec : Prop :=
  ∀ n, P5981817055988255576.a n = A307681 (n + 3)

end A307681

/-! ## A307681.P1082546421802221792

`a(n-1)+n` with `a(0)=-3`
-/

namespace A307681.P1082546421802221792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-3] fun n a =>
  a (n - 1) + (n : ℤ)

end

end A307681.P1082546421802221792

namespace A307681

/-- `a(n-1)+n` -/
def P1082546421802221792.Spec : Prop :=
  ∀ n, P1082546421802221792.a n = A307681 (n + 3)

end A307681

/-! ## A307681.P18099708294975857787

`n²-C(n, 2)-3`
-/

namespace A307681.P18099708294975857787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (Nat.choose n 2 : ℤ) - 3

end

end A307681.P18099708294975857787

namespace A307681

/-- `n²-C(n, 2)-3` -/
def P18099708294975857787.Spec : Prop :=
  ∀ n, P18099708294975857787.a n = A307681 (n + 3)

theorem P18099708294975857787.correct : P18099708294975857787.Spec := by
  intro n
  simp only [A307681, Nat.add_sub_cancel, A307681.P18099708294975857787.a, A307681.P2004751241341022597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A307681

/-! ## A307681.P10992033386412269598

`-(xor(-1, ∑[n])+4)`
-/

namespace A307681.P10992033386412269598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Int.xor (-1) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 4)

end

end A307681.P10992033386412269598

namespace A307681

/-- `-(xor(-1, ∑[n])+4)` -/
def P10992033386412269598.Spec : Prop :=
  ∀ n, P10992033386412269598.a n = A307681 (n + 3)

end A307681

/-! ## A307681.P4841360236373552533

`-(Δ[-C(n+1, 3)]+3)`
-/

namespace A307681.P4841360236373552533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.choose (n + 1) 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n + 3)

end

end A307681.P4841360236373552533

namespace A307681

/-- `-(Δ[-C(n+1, 3)]+3)` -/
def P4841360236373552533.Spec : Prop :=
  ∀ n, P4841360236373552533.a n = A307681 (n + 3)

theorem P4841360236373552533.correct : P4841360236373552533.Spec := by
  intro n
  simp only [A307681, Nat.add_sub_cancel, A307681.P4841360236373552533.f1, A307681.P4841360236373552533.a, A307681.P2004751241341022597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A307681

/-! ## A307681.P16184144220829422664

`floor(n-1-(ϕ-C(n, 2)))`
-/

namespace A307681.P16184144220829422664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - 1 : ℝ) - (Real.goldenRatio - (Nat.choose n 2 : ℝ))⌋

end

end A307681.P16184144220829422664

namespace A307681

/-- `floor(n-1-(ϕ-C(n, 2)))` -/
def P16184144220829422664.Spec : Prop :=
  ∀ n, P16184144220829422664.a n = A307681 (n + 3)

end A307681

/-! ## A307681.P356764612089161653

`round(n-1-(ϕ-C(n, 2)))`
-/

namespace A307681.P356764612089161653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℝ) - (Real.goldenRatio - (Nat.choose n 2 : ℝ)))

end

end A307681.P356764612089161653

namespace A307681

/-- `round(n-1-(ϕ-C(n, 2)))` -/
def P356764612089161653.Spec : Prop :=
  ∀ n, P356764612089161653.a n = A307681 (n + 3)

end A307681

/-! ## A307681.P4646676833265786163

`ceil(n-2-(ϕ-C(n, 2)))`
-/

namespace A307681.P4646676833265786163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) - 2 : ℝ) - (Real.goldenRatio - (Nat.choose n 2 : ℝ))⌉

end

end A307681.P4646676833265786163

namespace A307681

/-- `ceil(n-2-(ϕ-C(n, 2)))` -/
def P4646676833265786163.Spec : Prop :=
  ∀ n, P4646676833265786163.a n = A307681 (n + 3)

end A307681

/-! ## A307681.P13335538250425195739

`round((n-2)*cosh(log(n+3)))`
-/

namespace A307681.P13335538250425195739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℤ) - 2 : ℝ) * Real.cosh (Real.log (n + 3 : ℝ)))

end

end A307681.P13335538250425195739

namespace A307681

/-- `round((n-2)*cosh(log(n+3)))` -/
def P13335538250425195739.Spec : Prop :=
  ∀ n, P13335538250425195739.a n = A307681 (n + 3)

end A307681

/-! ## A307681.P14572688628794724356

`A000217(n)-3`
-/

namespace A307681.P14572688628794724356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n - 3

end

end A307681.P14572688628794724356

namespace A307681

/-- `A000217(n)-3` -/
def P14572688628794724356.Spec : Prop :=
  ∀ n, P14572688628794724356.a n = A307681 (n + 3)

end A307681

/-! ## A307681.P7830583392233608473

`A161680(n)+A023445(n)`
-/

namespace A307681.P7830583392233608473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n + A023445 n

end

end A307681.P7830583392233608473

namespace A307681

/-- `A161680(n)+A023445(n)` -/
def P7830583392233608473.Spec : Prop :=
  ∀ n, P7830583392233608473.a n = A307681 (n + 3)

theorem P7830583392233608473.correct : P7830583392233608473.Spec := by
  intro n
  simp only [A307681, Nat.add_sub_cancel, A307681.P7830583392233608473.a, A307681.P2004751241341022597.a, A023445, A023445.P17030645253662401943.a, A161680, A161680.P17206074215489759881.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A307681

/-! ## A307681.P7404449698196352852

`A007742(n)-A006124(n)`
-/

namespace A307681.P7404449698196352852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007742 n - A006124 n

end

end A307681.P7404449698196352852

namespace A307681

/-- `A007742(n)-A006124(n)` -/
def P7404449698196352852.Spec : Prop :=
  ∀ n, P7404449698196352852.a n = A307681 (n + 3)

end A307681

/-! ## A307681.P15285389716304775188

`A056000(n)-A004767(n)`
-/

namespace A307681.P15285389716304775188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056000 n - A004767 n

end

end A307681.P15285389716304775188

namespace A307681

/-- `A056000(n)-A004767(n)` -/
def P15285389716304775188.Spec : Prop :=
  ∀ n, P15285389716304775188.a n = A307681 (n + 3)

end A307681

/-! ## A307681.P1643932300342162615

`A056115(n)-A016885(n)`
-/

namespace A307681.P1643932300342162615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056115 n - A016885 n

end

end A307681.P1643932300342162615

namespace A307681

/-- `A056115(n)-A016885(n)` -/
def P1643932300342162615.Spec : Prop :=
  ∀ n, P1643932300342162615.a n = A307681 (n + 3)

end A307681

/-! ## A307681.P15429726528855773314

`A056119(n)-A016945(n)`
-/

namespace A307681.P15429726528855773314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056119 n - A016945 n

end

end A307681.P15429726528855773314

namespace A307681

/-- `A056119(n)-A016945(n)` -/
def P15429726528855773314.Spec : Prop :=
  ∀ n, P15429726528855773314.a n = A307681 (n + 3)

end A307681

/-!
# A307682: Products of four primes, two of which are distinct.

The programs for A307682, there is no canonical definition to state claims against.
-/

/-! ## A307682.P9917532566502484502

`∪[A065036(n+1), A085986(n+1)]`
-/

namespace A307682.P9917532566502484502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A307682.P9917532566502484502

/-! ## A307682.P1975610425633344011

`∩[A067341(n+1), A195086(n+1)]`
-/

namespace A307682.P1975610425633344011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307682.P1975610425633344011

/-! ## A307682.P14435417453710419320

`∩[A067801(n+1), A195086(n+1)]`
-/

namespace A307682.P14435417453710419320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307682.P14435417453710419320

/-! ## A307682.P15128319786546998712

`∩[A195086(n+1), A320894(n+1)]`
-/

namespace A307682.P15128319786546998712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320894 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307682.P15128319786546998712

/-! ## A307682.P8464327116931509368

`∩[A067341(n+1), A307341(n+1)]`
-/

namespace A307682.P8464327116931509368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307341 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307682.P8464327116931509368

/-! ## A307682.P11680247493628215968

`∩[A067801(n+1), A307341(n+1)]`
-/

namespace A307682.P11680247493628215968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307341 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307682.P11680247493628215968

/-! ## A307682.P5481723569670381179

`∩[A195086(n+1), A307341(n+1)]`
-/

namespace A307682.P5481723569670381179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307341 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307682.P5481723569670381179

/-! ## A307682.P7878321094571923858

`filter[A067341(n+1), A101637(#)]`
-/

namespace A307682.P7878321094571923858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067341 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101637 (f1 j).toNat = 1) n)

end

end A307682.P7878321094571923858

/-! ## A307682.P9004211523090736824

`filter[A067801(n+1), A101637(#)]`
-/

namespace A307682.P9004211523090736824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101637 (f1 j).toNat = 1) n)

end

end A307682.P9004211523090736824

/-! ## A307682.P1114775195965319339

`filter[A195086(n+1), A101637(#)]`
-/

namespace A307682.P1114775195965319339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195086 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101637 (f1 j).toNat = 1) n)

end

end A307682.P1114775195965319339

/-! ## A307682.P15502706996165283944

`filter[A307341(n+1), A181183(#)]`
-/

namespace A307682.P15502706996165283944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307341 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181183 (f1 j).toNat = 1) n)

end

end A307682.P15502706996165283944

/-! ## A307682.P11088062262022748110

`filter[A382208(n+1), A101637(#)]`
-/

namespace A307682.P11088062262022748110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382208 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101637 (f1 j).toNat = 1) n)

end

end A307682.P11088062262022748110

/-! ## A307682.P14600656608117263188

`∩[A067341(n+1), A307342(n+1)]`
-/

namespace A307682.P14600656608117263188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307682.P14600656608117263188

/-! ## A307682.P10743680448015741093

`∩[A067801(n+1), A307342(n+1)]`
-/

namespace A307682.P10743680448015741093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307682.P10743680448015741093

/-! ## A307682.P17429145454406284457

`∩[A014613(n+1), A067341(n+1)]`
-/

namespace A307682.P17429145454406284457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067341 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307682.P17429145454406284457

/-! ## A307682.P239609869845421451

`∩[A014613(n+1), A067801(n+1)]`
-/

namespace A307682.P239609869845421451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307682.P239609869845421451

/-! ## A307682.P10496526720875860347

`∩[A014613(n+1), A195086(n+1)]`
-/

namespace A307682.P10496526720875860347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307682.P10496526720875860347

/-! ## A307682.P14247236637969334099

`∩[A014613(n+1), A382208(n+1)]`
-/

namespace A307682.P14247236637969334099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307682.P14247236637969334099

/-! ## A307682.P9374747143930427662

`∩[A067801(n+1), A323350(n+1)]`
-/

namespace A307682.P9374747143930427662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307682.P9374747143930427662

/-! ## A307682.P4228551206473268403

`∩[A195086(n+1), A323350(n+1)]`
-/

namespace A307682.P4228551206473268403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307682.P4228551206473268403

/-!
# A307683: Number of partitions of n having a non-integer median.

The programs for A307683, there is no canonical definition to state claims against.
-/

/-! ## A307683.P3267120274377213713

`Δ[A000070(n)]-A325347(n+1)`
-/

namespace A307683.P3267120274377213713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A325347 (n + 1)

end

end A307683.P3267120274377213713

/-! ## A307683.P15378298125275934298

`record[A035363(n)]-A325347(n+1)`
-/

namespace A307683.P15378298125275934298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A325347 (n + 1)

end

end A307683.P15378298125275934298

/-! ## A307683.P2204883424831306393

`record[A035444(n)]-A325347(n+1)`
-/

namespace A307683.P2204883424831306393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A325347 (n + 1)

end

end A307683.P2204883424831306393

/-! ## A307683.P7133285855580233103

`record[A114099(n)]-A325347(n+1)`
-/

namespace A307683.P7133285855580233103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A325347 (n + 1)

end

end A307683.P7133285855580233103

/-! ## A307683.P13317192503140599738

`A000041(n+1)-A325347(n+1)`
-/

namespace A307683.P13317192503140599738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A325347 (n + 1)

end

end A307683.P13317192503140599738

/-! ## A307683.P9539126092750294426

`A000065(n+1)+1-A325347(n+1)`
-/

namespace A307683.P9539126092750294426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (n + 1) + (1 - A325347 (n + 1))

end

end A307683.P9539126092750294426

/-! ## A307683.P3846239465149939465

`A000041(A000027(n+1))%A325347(n+1)`
-/

namespace A307683.P3846239465149939465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 (A000027 (n + 1)).toNat) (A325347 (n + 1))

end

end A307683.P3846239465149939465

/-!
# A307684: Total volume of all rectangular prisms with dimensions r X s X t where r, s and t are the smallest, middle and largest parts in each partition of n into 3 parts.

The programs for A307684, the canonical program `A307684.P16996879891209528173` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307684 has offset 1).

The definition of A307684 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4097 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A307684.P16996879891209528173

`ogf((x^2+3x^3+7x^4+15x^5+23x^6+21x^7+18x^8+14x^9+6x^10)/(1+x-2x^2-6x^3-3x^4+9x^5+14x^6+2x^7-16x^8-16x^9+2x^10+14x^11+9x^12-3x^13-6x^14-2x^15+x^16+x^17))`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A307684

/-- `ogf((x^2+3x^3+7x^4+15x^5+23x^6+21x^7+18x^8+14x^9+6x^10)/(1+x-2x^2-6x^3-3x^4+9x^5+14x^6+2x^7-16x^8-16x^9+2x^10+14x^11+9x^12-3x^13-6x^14-2x^15+x^16+x^17))` -/
def P16996879891209528173.Spec : Prop :=
  ∀ n, P16996879891209528173.a n = A307684 (n + 1)

theorem P16996879891209528173.correct : P16996879891209528173.Spec := by
  intro n
  simp only [A307684, Nat.add_sub_cancel]

end A307684

/-!
# A307685: Clique covering number of the n-Sierpinski gasket graph.

The programs for A307685, the canonical program `A307685.P5086455540853881870` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307685 has offset 1).

The definition of A307685 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A307685.P7952295468329683172

`ogf((1-4x^2-x^3)/(1-3x-x^2+3x^3))`
-/

namespace A307685.P7952295468329683172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -4, -1] [1, -3, -1, 3] n

end

end A307685.P7952295468329683172

namespace A307685

/-- `ogf((1-4x^2-x^3)/(1-3x-x^2+3x^3))` -/
def P7952295468329683172.Spec : Prop :=
  ∀ n, P7952295468329683172.a n = A307685 (n + 1)

end A307685

/-! ## A307685.P5086455540853881870

`3*a(n-1)+a(n-2)-3*a(n-3)` with `a(0)=1, a(1)=3, a(2)=6, a(3)=17`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A307685

/-- `3*a(n-1)+a(n-2)-3*a(n-3)` -/
def P5086455540853881870.Spec : Prop :=
  ∀ n, P5086455540853881870.a n = A307685 (n + 1)

theorem P5086455540853881870.correct : P5086455540853881870.Spec := by
  intro n
  simp only [A307685, Nat.add_sub_cancel]

end A307685

/-! ## A307685.P14040093700841509626

`∑[ogf((-1+4x^2+x^3)/(-1+2x+3x^2))]`
-/

namespace A307685.P14040093700841509626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -4, -1] [1, -2, -3] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307685.P14040093700841509626

namespace A307685

/-- `∑[ogf((-1+4x^2+x^3)/(-1+2x+3x^2))]` -/
def P14040093700841509626.Spec : Prop :=
  ∀ n, P14040093700841509626.a n = A307685 (n + 1)

end A307685

/-! ## A307685.P17963391979731326917

`3*a(n-1)-gcd(3, n%2)` with `a(0)=1, a(1)=3`
-/

namespace A307685.P17963391979731326917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  3 * a (n - 1) - (Nat.gcd 3 (n % 2) : ℤ)

end

end A307685.P17963391979731326917

namespace A307685

/-- `3*a(n-1)-gcd(3, n%2)` -/
def P17963391979731326917.Spec : Prop :=
  ∀ n, P17963391979731326917.a n = A307685 (n + 1)

end A307685

/-! ## A307685.P1194776205367522699

`3*a(n-1)-a(a(n-1)%2)` with `a(0)=1, a(1)=3`
-/

namespace A307685.P1194776205367522699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  3 * a (n - 1) - a (Int.tmod (a (n - 1)) 2).toNat

end

end A307685.P1194776205367522699

namespace A307685

/-- `3*a(n-1)-a(a(n-1)%2)` -/
def P1194776205367522699.Spec : Prop :=
  ∀ n, P1194776205367522699.a n = A307685 (n + 1)

end A307685

/-! ## A307685.P9159864137777328106

`A094388(n)+A015518(n)`
-/

namespace A307685.P9159864137777328106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094388 n + A015518 n

end

end A307685.P9159864137777328106

namespace A307685

/-- `A094388(n)+A015518(n)` -/
def P9159864137777328106.Spec : Prop :=
  ∀ n, P9159864137777328106.a n = A307685 (n + 1)

end A307685

/-! ## A307685.P10720454020647894018

`floor(∑[3*a(n-1)]/2)` with `a(0)=2, a(1)=4, a(2)=7`
-/

namespace A307685.P10720454020647894018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 4, 7] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2⌋

end

end A307685.P10720454020647894018

namespace A307685

/-- `floor(∑[3*a(n-1)]/2)` -/
def P10720454020647894018.Spec : Prop :=
  ∀ n, P10720454020647894018.a n = A307685 (n + 1)

end A307685

/-! ## A307685.P2368499231295662191

`A003946(n)-A080926(n)`
-/

namespace A307685.P2368499231295662191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003946 n - A080926 n

end

end A307685.P2368499231295662191

namespace A307685

/-- `A003946(n)-A080926(n)` -/
def P2368499231295662191.Spec : Prop :=
  ∀ n, P2368499231295662191.a n = A307685 (n + 1)

end A307685

/-!
# A307686: Sum of the smallest side lengths of all integer-sided triangles with perimeter n.

The programs for A307686, the canonical program `A307686.P3638517855153991514` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307686 has offset 1).

The definition of A307686 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3949 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A307686.P3638517855153991514

`ogf((x^2+x^3+x^4+x^5+x^6+x^7+x^8)/(1+x-2x^3-4x^4-2x^5+x^6+5x^7+5x^8+x^9-2x^10-4x^11-2x^12+x^14+x^15))`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A307686

/-- `ogf((x^2+x^3+x^4+x^5+x^6+x^7+x^8)/(1+x-2x^3-4x^4-2x^5+x^6+5x^7+5x^8+x^9-2x^10-4x^11-2x^12+x^14+x^15))` -/
def P3638517855153991514.Spec : Prop :=
  ∀ n, P3638517855153991514.a n = A307686 (n + 1)

theorem P3638517855153991514.correct : P3638517855153991514.Spec := by
  intro n
  simp only [A307686, Nat.add_sub_cancel]

end A307686

/-! ## A307686.P6739160397961959396

`Δ[A308758(n+1)]`
-/

namespace A307686.P6739160397961959396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308758 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A307686.P6739160397961959396

namespace A307686

/-- `Δ[A308758(n+1)]` -/
def P6739160397961959396.Spec : Prop :=
  ∀ n, P6739160397961959396.a n = A307686 (n + 1)

end A307686

/-! ## A307686.P6975607182283506609

`A308158(n+1)+A308107(n+1)`
-/

namespace A307686.P6975607182283506609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308158 (n + 1) + A308107 (n + 1)

end

end A307686.P6975607182283506609

namespace A307686

/-- `A308158(n+1)+A308107(n+1)` -/
def P6975607182283506609.Spec : Prop :=
  ∀ n, P6975607182283506609.a n = A307686 (n + 1)

end A307686

/-! ## A307686.P11619002757192067652

`A336973(n+1)-A307966(n+1)`
-/

namespace A307686.P11619002757192067652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336973 (n + 1) - A307966 (n + 1)

end

end A307686.P11619002757192067652

namespace A307686

/-- `A336973(n+1)-A307966(n+1)` -/
def P11619002757192067652.Spec : Prop :=
  ∀ n, P11619002757192067652.a n = A307686 (n + 1)

end A307686

/-! ## A307686.P13147643924885599316

`A308089(n+1)-A336974(n+1)`
-/

namespace A307686.P13147643924885599316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308089 (n + 1) - A336974 (n + 1)

end

end A307686.P13147643924885599316

namespace A307686

/-- `A308089(n+1)-A336974(n+1)` -/
def P13147643924885599316.Spec : Prop :=
  ∀ n, P13147643924885599316.a n = A307686 (n + 1)

end A307686

/-! ## A307686.P1267266292742457301

`A336972(n+1)-A308096(n+1)`
-/

namespace A307686.P1267266292742457301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336972 (n + 1) - A308096 (n + 1)

end

end A307686.P1267266292742457301

namespace A307686

/-- `A336972(n+1)-A308096(n+1)` -/
def P1267266292742457301.Spec : Prop :=
  ∀ n, P1267266292742457301.a n = A307686 (n + 1)

end A307686

/-! ## A307686.P11208427678093865125

`A308758(n+2)-A308758(n+1)`
-/

namespace A307686.P11208427678093865125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308758 (n + 2) - A308758 (n + 1)

end

end A307686.P11208427678093865125

namespace A307686

/-- `A308758(n+2)-A308758(n+1)` -/
def P11208427678093865125.Spec : Prop :=
  ∀ n, P11208427678093865125.a n = A307686 (n + 1)

end A307686

/-!
# A307687: a(n) is the first prime value of the n-th cyclotomic polynomial.

The programs for A307687, there is no canonical definition to state claims against.
-/

/-! ## A307687.P15582461341879854653

`A111089(4*(n+1)*A064085(n+1))`
-/

namespace A307687.P15582461341879854653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 ((4 * (n + 1) : ℤ) * A064085 (n + 1)).toNat

end

end A307687.P15582461341879854653

/-! ## A307687.P14349136873670729017

`A111089(A064085(n+1)*A187829(n+1))`
-/

namespace A307687.P14349136873670729017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (A064085 (n + 1) * A187829 (n + 1)).toNat

end

end A307687.P14349136873670729017

/-! ## A307687.P10309828967630217930

`A111089(lcm(A064085(n+1), A187829(n+1)))`
-/

namespace A307687.P10309828967630217930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (Int.lcm (A064085 (n + 1)) (A187829 (n + 1)))

end

end A307687.P10309828967630217930

/-! ## A307687.P14626420967399355945

`A006530((2*(n+1))²*A064085(n+1))`
-/

namespace A307687.P14626420967399355945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (((2 * (n + 1)) ^ 2 : ℤ) * A064085 (n + 1)).toNat

end

end A307687.P14626420967399355945

/-! ## A307687.P14897077649727593550

`A284695(A290235(n)+A117544(n+1))`
-/

namespace A307687.P14897077649727593550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284695 (A290235 n + A117544 (n + 1)).toNat

end

end A307687.P14897077649727593550

/-!
# A307688: a(n) = 2*a(n-1)-2*a(n-2)+a(n-3)+2*a(n-4) with a(0)=a(1)=0, a(2)=2, a(3)=3.

The programs for A307688, the canonical program `A307688.P11737365850085370571` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307688 has offset 0).

The definition of A307688 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)-2*a(n-2)+a(n-3)+2*a(n-4)` (program `A307688.P11737365850085370571`, by `A307688.P11737365850085370571.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A307688.P16575930893723467898

`ogf((2x^2-x^3)/(1-2x+2x^2-x^3-2x^4))`
-/

namespace A307688.P16575930893723467898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 2, -1] [1, -2, 2, -1, -2] n

end

end A307688.P16575930893723467898

namespace A307688

/-- `ogf((2x^2-x^3)/(1-2x+2x^2-x^3-2x^4))` -/
def P16575930893723467898.Spec : Prop :=
  ∀ n, P16575930893723467898.a n = A307688 n

end A307688

/-! ## A307688.P11737365850085370571

`2*a(n-1)-2*a(n-2)+a(n-3)+2*a(n-4)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=3`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A307688

/-- `2*a(n-1)-2*a(n-2)+a(n-3)+2*a(n-4)` -/
def P11737365850085370571.Spec : Prop :=
  ∀ n, P11737365850085370571.a n = A307688 n

theorem P11737365850085370571.correct : P11737365850085370571.Spec := by
  intro n
  simp only [A307688]

end A307688

/-! ## A307688.P7616958736001251742

`A192395(n+1)+Δ[A192395(n)]`
-/

namespace A307688.P7616958736001251742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192395 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192395 (n + 1) + (f1 (n + 1) - f1 n)

end

end A307688.P7616958736001251742

namespace A307688

/-- `A192395(n+1)+Δ[A192395(n)]` -/
def P7616958736001251742.Spec : Prop :=
  ∀ n, P7616958736001251742.a n = A307688 n

end A307688

/-! ## A307688.P11443486669296126518

`(A000032(n)-A002249(n))/3`
-/

namespace A307688.P11443486669296126518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 n - A002249 n : ℚ) / 3

end

end A307688.P11443486669296126518

namespace A307688

/-- `(A000032(n)-A002249(n))/3` -/
def P11443486669296126518.Spec : Prop :=
  ∀ n, P11443486669296126518.a n = (A307688 n : ℚ)

end A307688

/-! ## A307688.P16380159642856051238

`Δ[A192395(n)+∑[A192395(n)]]`
-/

namespace A307688.P16380159642856051238
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192395 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192395 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A307688.P16380159642856051238

namespace A307688

/-- `Δ[A192395(n)+∑[A192395(n)]]` -/
def P16380159642856051238.Spec : Prop :=
  ∀ n, P16380159642856051238.a n = A307688 n

end A307688

/-!
# A307690: Integers with only one prime factor and whose Euler's totient is a perfect biquadrate.

The programs for A307690, there is no canonical definition to state claims against.
-/

/-! ## A307690.P16851086669044958223

`∩[A003336(n+1), A054754(n+1)]`
-/

namespace A307690.P16851086669044958223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307690.P16851086669044958223

/-! ## A307690.P7356452335547562035

`∩[A003336(n+1), A054755(n+1)]`
-/

namespace A307690.P7356452335547562035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054755 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307690.P7356452335547562035

/-! ## A307690.P6550334078364920127

`∩[A054754(n+1), A344187(n+1)]`
-/

namespace A307690.P6550334078364920127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307690.P6550334078364920127

/-! ## A307690.P12956113510355025868

`∩[A054755(n+1), A344187(n+1)]`
-/

namespace A307690.P12956113510355025868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054755 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307690.P12956113510355025868

/-! ## A307690.P250953049108825435

`∩[A004831(n+1), A054755(n+1)]`
-/

namespace A307690.P250953049108825435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054755 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307690.P250953049108825435

/-!
# A307692: g values of Triphosian primes.

The programs for A307692, there is no canonical definition to state claims against.
-/

/-! ## A307692.P2874654821605890133

`n%2*A000040(or(1, floor(n/3)))`
-/

namespace A307692.P2874654821605890133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) * A000040 (Int.lor 1 ⌊(n : ℚ) / 3⌋).toNat

end

end A307692.P2874654821605890133

/-! ## A307692.P18308079581787471310

`and(1, n)*A000040(or(1, floor(n/π)))`
-/

namespace A307692.P18308079581787471310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) * A000040 (Int.lor 1 ⌊(n : ℝ) / Real.pi⌋).toNat

end

end A307692.P18308079581787471310

/-! ## A307692.P1866677064025621725

`A133726(round(sqrt(n)))-a(n-1)+1` with `a(0)=0`
-/

namespace A307692.P1866677064025621725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A133726 (SequenceMachineLib.roundAway (Real.sqrt (n : ℝ))).toNat - a (n - 1) + 1

end

end A307692.P1866677064025621725

/-! ## A307692.P17513074254696155274

`n%2*A000041(A099480(n))`
-/

namespace A307692.P17513074254696155274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) * A000041 (A099480 n).toNat

end

end A307692.P17513074254696155274

/-! ## A307692.P18227646651623623984

`and(1, n)*A008578(A008611(n+2))`
-/

namespace A307692.P18227646651623623984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) * A008578 (A008611 (n + 2)).toNat

end

end A307692.P18227646651623623984

/-!
# A307693: Rectangular quotient array, R, of A003188 read by descending antidiagonals; see Comments.

The programs for A307693, there is no canonical definition to state claims against.
-/

/-! ## A307693.P1790035386759487354

`A003188(A135227(A348798(n)+n))`
-/

namespace A307693.P1790035386759487354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A135227 (A348798 n + (n : ℤ)).toNat).toNat

end

end A307693.P1790035386759487354

/-! ## A307693.P8020805698259769253

`A063946(A348798(n)+A135227(n))`
-/

namespace A307693.P8020805698259769253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063946 (A348798 n + A135227 n).toNat

end

end A307693.P8020805698259769253

/-! ## A307693.P7423757887478903800

`A003188(or(A135227(n), A348798(n)))`
-/

namespace A307693.P7423757887478903800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (Int.lor (A135227 n) (A348798 n)).toNat

end

end A307693.P7423757887478903800

/-! ## A307693.P565593424241749927

`A063946(or(A135227(n), A348798(n)))`
-/

namespace A307693.P565593424241749927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063946 (Int.lor (A135227 n) (A348798 n)).toNat

end

end A307693.P565593424241749927

/-! ## A307693.P13734306741167017739

`A003188(xor(A135227(n), A348798(n)))`
-/

namespace A307693.P13734306741167017739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (Int.xor (A135227 n) (A348798 n)).toNat

end

end A307693.P13734306741167017739

/-!
# A307694: b values of Triphosian primes.

The programs for A307694, there is no canonical definition to state claims against.
-/

/-! ## A307694.P12999960707381620738

`A307692(∑[gcd(1-n, floor(n/2))%3])`
-/

namespace A307694.P12999960707381620738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - (n : ℤ)) ⌊(n : ℚ) / 2⌋ % 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307692 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A307694.P12999960707381620738

/-! ## A307694.P13968910271020994960

`p?[A090621(n)]*A214090(n)`
-/

namespace A307694.P13968910271020994960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090621 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A214090 n

end

end A307694.P13968910271020994960

/-! ## A307694.P11720567210116872861

`round(ϕ*A029155(n)*A214090(n))`
-/

namespace A307694.P11720567210116872861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (A029155 n * A214090 n : ℝ))

end

end A307694.P11720567210116872861

/-! ## A307694.P3281576162750724568

`A059009(A126120(round(xor(1, n+2)/3)))`
-/

namespace A307694.P3281576162750724568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059009 (A126120 (SequenceMachineLib.roundAway ((Nat.xor 1 (n + 2) : ℚ) / 3)).toNat).toNat

end

end A307694.P3281576162750724568

/-! ## A307694.P1985999137336266713

`A014682(A029155(n)*A214090(n))`
-/

namespace A307694.P1985999137336266713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A029155 n * A214090 n).toNat

end

end A307694.P1985999137336266713

/-!
# A307695: Expansion of 1/(sqrt(1-4*x)*sqrt(1-16*x)).

The programs for A307695, there is no canonical definition to state claims against.
-/

/-! ## A307695.P14097617154899795427

`∑{#}[n, 9^#*C(n, #)*C(n, #)]`
-/

namespace A307695.P14097617154899795427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), 9 ^ k * Nat.choose n k * Nat.choose n k

end

end A307695.P14097617154899795427

/-! ## A307695.P10612416328354010188

`A307883(eq[9, A025581(n)])`
-/

namespace A307695.P10612416328354010188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307883 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A307695.P10612416328354010188

/-! ## A307695.P1197520218516107004

`A307883(eq[10, A004736(n+1)])`
-/

namespace A307695.P1197520218516107004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307883 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A307695.P1197520218516107004

/-! ## A307695.P12156483351346182478

`A143683(∑[4*n])`
-/

namespace A307695.P12156483351346182478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143683 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A307695.P12156483351346182478

/-! ## A307695.P18015683544364653743

`sqrt(A307810(n))`
-/

namespace A307695.P18015683544364653743
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A307810 n : ℝ)

end

end A307695.P18015683544364653743

/-!
# A307696: Number of evolutionary duplication-loss-histories with n leaves of the caterpillar species tree with 2 leaves.

The programs for A307696, there is no canonical definition to state claims against.
-/

/-! ## A307696.P16100949848503844949

`A292248(A027391(n))+A027390(n)`
-/

namespace A307696.P16100949848503844949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292248 (A027391 n).toNat + A027390 n

end

end A307696.P16100949848503844949

/-!
# A307699: Numbers k such that there is no integer partition of k with exactly k-1 submultisets.

The programs for A307699, there is no canonical definition to state claims against.
-/

/-! ## A307699.P4232471328437667833

`eq[0, A325836(n)]`
-/

namespace A307699.P4232471328437667833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325836 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A307699.P4232471328437667833

/-! ## A307699.P5216626937520761469

`lt[A325836(round(acot(n)+n)), 1]`
-/

namespace A307699.P5216626937520761469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325836 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A307699.P5216626937520761469

/-! ## A307699.P9124249862537916860

`lt[A325836(A028310(n)), 1]`
-/

namespace A307699.P9124249862537916860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325836 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A307699.P9124249862537916860

/-! ## A307699.P17619829133541729068

`lt[A325836(n), A054977(n)]`
-/

namespace A307699.P17619829133541729068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325836 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A307699.P17619829133541729068

/-! ## A307699.P8136660732072428662

`lt[A325836(n), A057079(n)]`
-/

namespace A307699.P8136660732072428662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325836 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A307699.P8136660732072428662

/-! ## A307699.P17647416503395938308

`lt[A325836(n), A266591(n)]`
-/

namespace A307699.P17647416503395938308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325836 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266591 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A307699.P17647416503395938308

/-! ## A307699.P9402412214392945626

`lt[A325836(n), A020985(n)²]`
-/

namespace A307699.P9402412214392945626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325836 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A307699.P9402412214392945626

/-! ## A307699.P17502571217830078722

`lt[A325836(n), A033999(n)²]`
-/

namespace A307699.P17502571217830078722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325836 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A307699.P17502571217830078722

/-! ## A307699.P8014037493035874863

`lt[A325836(n), A023531(n)+1]`
-/

namespace A307699.P8014037493035874863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325836 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A307699.P8014037493035874863

/-! ## A307699.P468690879164662416

`lt[A325836(n), A131735(n+3)]`
-/

namespace A307699.P468690879164662416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325836 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131735 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A307699.P468690879164662416

