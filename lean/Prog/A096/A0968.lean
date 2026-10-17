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
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
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
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A096801: Triangle, read by rows, that transforms the (n+m)-dimensional partitions of n into the (n+m+1)-dimensional partitions of n, for fixed m.

The programs for A096801, there is no canonical definition to state claims against.
-/

/-! ## A096801.P10735728303900582619

`A118088(A276974(n))`
-/

namespace A096801.P10735728303900582619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118088 (A276974 n).toNat

end

end A096801.P10735728303900582619

/-! ## A096801.P14735911697888046921

`A117707(A281446(n))`
-/

namespace A096801.P14735911697888046921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (A281446 n).toNat

end

end A096801.P14735911697888046921

/-! ## A096801.P4817050145006630667

`A172263(A371077(n))`
-/

namespace A096801.P4817050145006630667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172263 (A371077 n).toNat

end

end A096801.P4817050145006630667

/-! ## A096801.P8817076927608551052

`A347396(A380252(n))`
-/

namespace A096801.P8817076927608551052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347396 (A380252 n).toNat

end

end A096801.P8817076927608551052

/-! ## A096801.P8292716844601978128

`A032741(A114153(n)+1)`
-/

namespace A096801.P8292716844601978128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A114153 n + 1).toNat

end

end A096801.P8292716844601978128

/-!
# A096802: Row sums of triangle A096801, which transforms the (n+m)-dimensional partitions of n into the (n+m+1)-dimensional partitions of n, for any fixed m.

The programs for A096802, there is no canonical definition to state claims against.
-/

/-! ## A096802.P15545245053036519462

`A097882(∑[n!]+n!)`
-/

namespace A096802.P15545245053036519462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097882 (∑ j ∈ Finset.range (n + 1), f1 j + Nat.factorial n)

end

end A096802.P15545245053036519462

/-! ## A096802.P5455454740083468301

`floor(root(A196203(2*n+1), 6))`
-/

namespace A096802.P5455454740083468301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A196203 (2 * n + 1) : ℝ) ^ (1 / (6 : ℝ))⌋

end

end A096802.P5455454740083468301

/-! ## A096802.P9068746698711248274

`round(root(A147153(3*(n+1)), 4))`
-/

namespace A096802.P9068746698711248274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A147153 (3 * (n + 1)) : ℝ) ^ (1 / (4 : ℝ)))

end

end A096802.P9068746698711248274

/-!
# A096803: Column 1 of triangle A096801, which transforms the (n+m)-dimensional partitions of n into the (n+m+1)-dimensional partitions of n, for any fixed m.

The programs for A096803, there is no canonical definition to state claims against.
-/

/-! ## A096803.P10044742515074752691

`abs(record[Δ[A096801(n)]])`
-/

namespace A096803.P10044742515074752691
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096801 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A096803.P10044742515074752691

/-! ## A096803.P7076114970502711702

`A096801(∑[n+1]+1)`
-/

namespace A096803.P7076114970502711702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096801 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A096803.P7076114970502711702

/-! ## A096803.P9239283913815619107

`A000007(n)+record[A096801(n+1)]`
-/

namespace A096803.P9239283913815619107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096803.P9239283913815619107

/-! ## A096803.P9263337381036161709

`A096766(n)+record[A096801(n+1)]`
-/

namespace A096803.P9263337381036161709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096766 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096803.P9263337381036161709

/-! ## A096803.P12835248524375152525

`or(record[A096801(n+1)], A096793(n+2))`
-/

namespace A096803.P12835248524375152525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A096793 (n + 2))

end

end A096803.P12835248524375152525

/-!
# A096804: Column 2 of triangle A096801, which transforms the (n+m)-dimensional partitions of n into the (n+m+1)-dimensional partitions of n, for any fixed m.

The programs for A096804, there is no canonical definition to state claims against.
-/

/-! ## A096804.P15369993518269575374

`A096801(∑[n+2]+3)`
-/

namespace A096804.P15369993518269575374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096801 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A096804.P15369993518269575374

/-! ## A096804.P2932294538752529088

`A034887(A271269(n+1)+A229811(n+1))`
-/

namespace A096804.P2932294538752529088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (A271269 (n + 1) + A229811 (n + 1)).toNat

end

end A096804.P2932294538752529088

/-!
# A096805: Column 3 of triangle A096801, which transforms the (n+m)-dimensional partitions of n into the (n+m+1)-dimensional partitions of n, for any fixed m.

The programs for A096805, there is no canonical definition to state claims against.
-/

/-! ## A096805.P12997535495790131033

`A096801(∑[n+3]+6)`
-/

namespace A096805.P12997535495790131033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096801 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A096805.P12997535495790131033

/-! ## A096805.P15019510496120577592

`lcm(A046854(n), A096801(A167614(n+2)))`
-/

namespace A096805.P15019510496120577592
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A046854 n) (A096801 (A167614 (n + 2)).toNat)

end

end A096805.P15019510496120577592

/-!
# A096806: Triangle, read by rows, such that the binomial transform of the n-th row lists the m-dimensional partitions of n, for n>=1 and m>=0.

The programs for A096806, there is no canonical definition to state claims against.
-/

/-! ## A096806.P5026561149823418332

`A119271(n+1)+A119271(n+2)`
-/

namespace A096806.P5026561149823418332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119271 (n + 1) + A119271 (n + 2)

end

end A096806.P5026561149823418332

/-! ## A096806.P6623062578995817994

`A116672(n+1)-A108069(A185294(n))`
-/

namespace A096806.P6623062578995817994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116672 (n + 1) - A108069 (A185294 n).toNat

end

end A096806.P6623062578995817994

/-! ## A096806.P1225180828976466913

`A116672(n+1)-A044941(A060818(n))`
-/

namespace A096806.P1225180828976466913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116672 (n + 1) - A044941 (A060818 n).toNat

end

end A096806.P1225180828976466913

/-! ## A096806.P9713925846548762867

`A116672(n+1)-A185284(A000961(n+1))`
-/

namespace A096806.P9713925846548762867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116672 (n + 1) - A185284 (A000961 (n + 1)).toNat

end

end A096806.P9713925846548762867

/-! ## A096806.P4531823469061960758

`A116672(n+1)-A185294(n*A185294(n))`
-/

namespace A096806.P4531823469061960758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116672 (n + 1) - A185294 ((n : ℤ) * A185294 n).toNat

end

end A096806.P4531823469061960758

/-!
# A096807: Row sums of triangle A096806, in which the binomial transform of the n-th row lists the m-dimensional partitions of n, for n>=1 and m>=0.

The programs for A096807, there is no canonical definition to state claims against.
-/

/-! ## A096807.P16894650328470221374

`∑[A316470(A059221(n))]`
-/

namespace A096807.P16894650328470221374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316470 (A059221 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096807.P16894650328470221374

/-! ## A096807.P9963535188111588870

`A023193(Δ[A149903(n)])`
-/

namespace A096807.P9963535188111588870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149903 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (f1 (n + 1) - f1 n).toNat

end

end A096807.P9963535188111588870

/-! ## A096807.P4786335274527095788

`∑[A328596(A252653(n+1))]`
-/

namespace A096807.P4786335274527095788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328596 (A252653 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096807.P4786335274527095788

/-!
# A096809: Square table of signs, read by antidiagonals, where T(n,k)=(-1)^A096810(n,k); related to products of hypercomplex units.

The programs for A096809, there is no canonical definition to state claims against.
-/

/-! ## A096809.P8105438092737557662

`(-1)^A096810(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A096809.P8105438092737557662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A096810 n : ℤ)

end

end A096809.P8105438092737557662

/-! ## A096809.P4305936228707422563

`A033999(A096810(n)+2*n)`
-/

namespace A096809.P4305936228707422563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A096810 n + (2 * n : ℤ)).toNat

end

end A096809.P4305936228707422563

/-! ## A096809.P8934083640031803483

`A033999(2*n-A096810(n))`
-/

namespace A096809.P8934083640031803483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 ((2 * n : ℤ) - A096810 n).toNat

end

end A096809.P8934083640031803483

/-! ## A096809.P17441210170646506274

`A033999(xor(2*n, A096810(n)))`
-/

namespace A096809.P17441210170646506274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (Int.xor (2 * n : ℤ) (A096810 n)).toNat

end

end A096809.P17441210170646506274

/-! ## A096809.P11700398486868186872

`A033999(A096810(n)+n+n)`
-/

namespace A096809.P11700398486868186872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A096810 n + (n : ℤ) + (n : ℤ)).toNat

end

end A096809.P11700398486868186872

/-! ## A096809.P17867733975571474393

`A033999(n-(A096810(n)-n))`
-/

namespace A096809.P17867733975571474393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 ((n : ℤ) - (A096810 n - (n : ℤ))).toNat

end

end A096809.P17867733975571474393

/-! ## A096809.P6497726711255562819

`A033999(xor(n, xor(n, A096810(n))))`
-/

namespace A096809.P6497726711255562819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (Int.xor (n : ℤ) (Int.xor (n : ℤ) (A096810 n))).toNat

end

end A096809.P6497726711255562819

/-! ## A096809.P348246928985863376

`A033999(Δ[n²]*A096810(n))`
-/

namespace A096809.P348246928985863376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A096810 n).toNat

end

end A096809.P348246928985863376

/-! ## A096809.P3068508377682159743

`A062157(A096810(n)+2*n+1)`
-/

namespace A096809.P3068508377682159743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A096810 n + (2 * n + 1 : ℤ)).toNat

end

end A096809.P3068508377682159743

/-! ## A096809.P3514394504110747885

`A115952(lcm(a(n-1), A096810(n)))` with `a(0)=1`
-/

namespace A096809.P3514394504110747885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A115952 (Int.lcm (a (n - 1)) (A096810 n))

end

end A096809.P3514394504110747885

/-! ## A096809.P12498587233015307052

`A033999(and(A002249(n), A096810(n)))`
-/

namespace A096809.P12498587233015307052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (Int.land (A002249 n) (A096810 n)).toNat

end

end A096809.P12498587233015307052

/-! ## A096809.P249090626033510322

`A033999(and(A009001(n), A096810(n)))`
-/

namespace A096809.P249090626033510322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (Int.land (A009001 n) (A096810 n)).toNat

end

end A096809.P249090626033510322

/-! ## A096809.P12981229569068170315

`1-A096810(and(A002249(n), A096810(n)))`
-/

namespace A096809.P12981229569068170315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A096810 (Int.land (A002249 n) (A096810 n)).toNat

end

end A096809.P12981229569068170315

/-! ## A096809.P15912007938927307266

`1-A096810(and(A009001(n), A096810(n)))`
-/

namespace A096809.P15912007938927307266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A096810 (Int.land (A009001 n) (A096810 n)).toNat

end

end A096809.P15912007938927307266

/-! ## A096809.P7560718032581151926

`A009001(2*and(A009001(n), A096810(n)))`
-/

namespace A096809.P7560718032581151926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * Int.land (A009001 n) (A096810 n)).toNat

end

end A096809.P7560718032581151926

/-!
# A096810: Fractal table, read by antidiagonals, consisting of numbers 0..3.

The programs for A096810, there is no canonical definition to state claims against.
-/

/-! ## A096810.P16883790352974838147

`A328169(A307584(n+1))`
-/

namespace A096810.P16883790352974838147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328169 (A307584 (n + 1)).toNat

end

end A096810.P16883790352974838147

/-! ## A096810.P6740857066944057448

`A319954(3^A029635(n))`
-/

namespace A096810.P6740857066944057448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319954 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A029635 n : ℤ))).toNat

end

end A096810.P6740857066944057448

/-! ## A096810.P16013582087732284325

`A122853(A029653(n))%3`
-/

namespace A096810.P16013582087732284325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122853 (A029653 n).toNat) 3

end

end A096810.P16013582087732284325

/-! ## A096810.P8904176841718360130

`A161197(A093562(n))%3`
-/

namespace A096810.P8904176841718360130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161197 (A093562 n).toNat) 3

end

end A096810.P8904176841718360130

/-! ## A096810.P16781376523719412171

`A328169(A114192(n))`
-/

namespace A096810.P16781376523719412171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328169 (A114192 n).toNat

end

end A096810.P16781376523719412171

/-!
# A096811: Triangle, read by rows, such that T(n,k) equals the k-th term of the convolution of the two prior rows indexed by (n-k) and (k-2).

The programs for A096811, there is no canonical definition to state claims against.
-/

/-! ## A096811.P5169044598395074819

`A000930(A053616(n%A178121(n)))`
-/

namespace A096811.P5169044598395074819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (A053616 (Int.tmod (n : ℤ) (A178121 n)).toNat).toNat

end

end A096811.P5169044598395074819

/-! ## A096811.P2710846715729459239

`gcd(A161333(n), A374763(A053616(n)))`
-/

namespace A096811.P2710846715729459239
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A161333 n) (A374763 (A053616 n).toNat)

end

end A096811.P2710846715729459239

/-! ## A096811.P11951794534257628686

`A227309(A053616(n))%A059608(n+1)`
-/

namespace A096811.P11951794534257628686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A227309 (A053616 n).toNat) (A059608 (n + 1))

end

end A096811.P11951794534257628686

/-! ## A096811.P16863010888150240562

`A135894(A053616(n)%A265135(n+1))`
-/

namespace A096811.P16863010888150240562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135894 (Int.tmod (A053616 n) (A265135 (n + 1))).toNat

end

end A096811.P16863010888150240562

/-! ## A096811.P2992553317589588584

`A167934(A053616(n))%A306119(n+3)`
-/

namespace A096811.P2992553317589588584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A167934 (A053616 n).toNat) (A306119 (n + 3))

end

end A096811.P2992553317589588584

/-!
# A096812: Forwards row convergent of triangle A096811, in which A096811(n,k) equals the k-th term of the convolution of the two prior rows indexed by (n-k) and (k-2).

The programs for A096812, there is no canonical definition to state claims against.
-/

/-! ## A096812.P6582450575050353864

`A096811(A037255(n+1))`
-/

namespace A096812.P6582450575050353864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096811 (A037255 (n + 1)).toNat

end

end A096812.P6582450575050353864

/-! ## A096812.P9895220390329765889

`A096811(A176145(n+3))`
-/

namespace A096812.P9895220390329765889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096811 (A176145 (n + 3)).toNat

end

end A096812.P9895220390329765889

/-! ## A096812.P17231889136308096571

`A096811(A002817(n)+n)`
-/

namespace A096812.P17231889136308096571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096811 (A002817 n + (n : ℤ)).toNat

end

end A096812.P17231889136308096571

/-! ## A096812.P2029756148307793624

`A096811(A086602(n)+∑[n])`
-/

namespace A096812.P2029756148307793624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096811 (A086602 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A096812.P2029756148307793624

/-! ## A096812.P15046624987330534103

`A096811(A004255(n+1)-1)`
-/

namespace A096812.P15046624987330534103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096811 (A004255 (n + 1) - 1).toNat

end

end A096812.P15046624987330534103

/-!
# A096813: Backwards row convergent of triangle A096811, in which A096811(n,k) equals the k-th term of the convolution of the two prior rows indexed by (n-k) and (k-2).

The programs for A096813, there is no canonical definition to state claims against.
-/

/-! ## A096813.P12782452174372066483

`A352830(a(n-1))+1` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A096813.P12782452174372066483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  A352830 (a (n - 1)).toNat + 1

end

end A096813.P12782452174372066483

/-! ## A096813.P16458056552625322607

`2*A344742(a(n-1))` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A096813.P16458056552625322607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  2 * A344742 (a (n - 1)).toNat

end

end A096813.P16458056552625322607

/-! ## A096813.P5997077384432717539

`A353504(∑[A025049(n)])`
-/

namespace A096813.P5997077384432717539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353504 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A096813.P5997077384432717539

/-! ## A096813.P10616449460863774288

`A024327(A092073(n)+n)`
-/

namespace A096813.P10616449460863774288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024327 (A092073 n + (n : ℤ)).toNat

end

end A096813.P10616449460863774288

/-! ## A096813.P3291749786751554354

`A135664(A107591(n)+n)`
-/

namespace A096813.P3291749786751554354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135664 (A107591 n + (n : ℤ)).toNat

end

end A096813.P3291749786751554354

/-!
# A096814: Row sums of triangle A096811, in which A096811(n,k) equals the k-th term of the convolution of the two prior rows indexed by (n-k) and (k-2).

The programs for A096814, there is no canonical definition to state claims against.
-/

/-! ## A096814.P13395901889879883458

`A202304(round(A020718(n)/5))`
-/

namespace A096814.P13395901889879883458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202304 (SequenceMachineLib.roundAway ((A020718 n : ℚ) / 5)).toNat

end

end A096814.P13395901889879883458

/-! ## A096814.P7041217034392308010

`A216256(∑[A004396(A048814(n))])`
-/

namespace A096814.P7041217034392308010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A048814 (n + 10)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216256 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A096814.P7041217034392308010

/-! ## A096814.P8817496216720710444

`A375815(A325955(n)+A302018(n+1))`
-/

namespace A096814.P8817496216720710444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375815 (A325955 n + A302018 (n + 1)).toNat

end

end A096814.P8817496216720710444

/-! ## A096814.P9011990950866717483

`A055086(A227376(n)+A055086(2*n))`
-/

namespace A096814.P9011990950866717483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A227376 n + A055086 (2 * n)).toNat

end

end A096814.P9011990950866717483

/-! ## A096814.P197233136255156958

`A002024(∑[A048814(n)])`
-/

namespace A096814.P197233136255156958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048814 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A096814.P197233136255156958

/-!
# A096816: Row sums of triangle A096815, in which A096815(n,k) equals the k-th term of the convolution of the two prior rows indexed by (n-k) and k.

The programs for A096816, there is no canonical definition to state claims against.
-/

/-! ## A096816.P10136367157464200308

`A073031(A185095(∑[n]))`
-/

namespace A096816.P10136367157464200308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073031 (A185095 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A096816.P10136367157464200308

/-! ## A096816.P11874455326977872237

`A073031(A255238(∑[n]))`
-/

namespace A096816.P11874455326977872237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073031 (A255238 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A096816.P11874455326977872237

/-! ## A096816.P1542600542445179317

`A073031(A061497(n+1))`
-/

namespace A096816.P1542600542445179317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073031 (A061497 (n + 1)).toNat

end

end A096816.P1542600542445179317

/-! ## A096816.P4821917723535389721

`A073031(A077741(n+1))`
-/

namespace A096816.P4821917723535389721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073031 (A077741 (n + 1)).toNat

end

end A096816.P4821917723535389721

/-!
# A096818: Numbers k such that 2^k - 13 is prime.

The programs for A096818, there is no canonical definition to state claims against.
-/

/-! ## A096818.P1929888114158760989

`A008965(n+4)-A004736(A366052(n))`
-/

namespace A096818.P1929888114158760989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008965 (n + 4) - A004736 (A366052 n).toNat

end

end A096818.P1929888114158760989

/-!
# A096820: Numbers k such that 2^k - 21 is prime.

The programs for A096820, there is no canonical definition to state claims against.
-/

/-! ## A096820.P4080523681678237727

`A057202(n+5)`
-/

namespace A096820.P4080523681678237727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057202 (n + 5)

end

end A096820.P4080523681678237727

/-! ## A096820.P17566735475803842219

`record[A057202(A020705(abs(1-n)))]`
-/

namespace A096820.P17566735475803842219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057202 (A020705 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096820.P17566735475803842219

/-! ## A096820.P17537887840774539590

`A057202(A020710(n))-and(1, 2*n)`
-/

namespace A096820.P17537887840774539590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057202 (A020710 n).toNat - (Nat.land 1 (2 * n) : ℤ)

end

end A096820.P17537887840774539590

/-! ## A096820.P7668353964463154889

`A057202(A020710(n))%A305065(n)`
-/

namespace A096820.P7668353964463154889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057202 (A020710 n).toNat) (A305065 n)

end

end A096820.P7668353964463154889

/-! ## A096820.P9566878875616813196

`lcm(A057077(n), A057202(A020710(n)))`
-/

namespace A096820.P9566878875616813196
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A057202 (A020710 n).toNat)

end

end A096820.P9566878875616813196

/-!
# A096821: Solutions to Mod[sigma(x),x]=12 of the form p*(p+13)/2 where p is a prime of form=2^j-13, of which j exponents are listed in A096818.

The programs for A096821, there is no canonical definition to state claims against.
-/

/-! ## A096821.P16465757162318929057

`A234238(lt[0, A277255(n+2)])`
-/

namespace A096821.P16465757162318929057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277255 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234238 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A096821.P16465757162318929057

/-!
# A096822: Smallest primes of form p = 2^x-(2n-1) where x=A096502(n), the least exponent providing this kind of prime.

The programs for A096822, there is no canonical definition to state claims against.
-/

/-! ## A096822.P7054988998827139028

`2^A096502(n)-Δ[n²]`
-/

namespace A096822.P7054988998827139028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A096502 n : ℤ) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)

end

end A096822.P7054988998827139028

/-! ## A096822.P16947700955514043239

`A000225(A096502(n))-2*n`
-/

namespace A096822.P16947700955514043239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A096502 n).toNat - (2 * n : ℤ)

end

end A096822.P16947700955514043239

/-! ## A096822.P8537335077706677005

`A000079(A096502(n))-A005408(n)`
-/

namespace A096822.P8537335077706677005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A096502 n).toNat - A005408 n

end

end A096822.P8537335077706677005

/-! ## A096822.P1980570251598063600

`xor(A000225(A096502(n)), A005843(n))`
-/

namespace A096822.P1980570251598063600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000225 (A096502 n).toNat) (A005843 n)

end

end A096822.P1980570251598063600

/-! ## A096822.P3714697685635904540

`A000079(A096502(n))-Δ[A000290(n)]`
-/

namespace A096822.P3714697685635904540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A096502 n).toNat - (f1 (n + 1) - f1 n)

end

end A096822.P3714697685635904540

/-! ## A096822.P12097611305056152769

`A000079(A096502(n))-Δ[A002522(n)]`
-/

namespace A096822.P12097611305056152769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A096502 n).toNat - (f1 (n + 1) - f1 n)

end

end A096822.P12097611305056152769

/-! ## A096822.P6452058447541744598

`A000079(A096502(n))-Δ[A059100(n)]`
-/

namespace A096822.P6452058447541744598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059100 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A096502 n).toNat - (f1 (n + 1) - f1 n)

end

end A096822.P6452058447541744598

/-! ## A096822.P17069518112237727693

`A000079(A096502(n))-Δ[A189834(n)]`
-/

namespace A096822.P17069518112237727693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189834 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A096502 n).toNat - (f1 (n + 1) - f1 n)

end

end A096822.P17069518112237727693

/-! ## A096822.P6475133404709357612

`A000079(A096502(n))-record[A004442(n)]`
-/

namespace A096822.P6475133404709357612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A096502 n).toNat - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096822.P6475133404709357612

/-! ## A096822.P11153927719959532135

`A001489(2*n)+A000225(A096502(n))`
-/

namespace A096822.P11153927719959532135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (2 * n) + A000225 (A096502 n).toNat

end

end A096822.P11153927719959532135

/-! ## A096822.P10405034841066367401

`A000079(A096502(n))-A004442(2*n)`
-/

namespace A096822.P10405034841066367401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A096502 n).toNat - A004442 (2 * n)

end

end A096822.P10405034841066367401

/-! ## A096822.P14366775494490961184

`A000079(A096502(n))-record[A000265(n+1)]`
-/

namespace A096822.P14366775494490961184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A096502 n).toNat - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096822.P14366775494490961184

/-! ## A096822.P737617507652086163

`A000079(A096502(n))-A000027(2*n+1)`
-/

namespace A096822.P737617507652086163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A096502 n).toNat - A000027 (2 * n + 1)

end

end A096822.P737617507652086163

/-! ## A096822.P2474126799906896145

`A000079(A096502(n))-A000265(2*n+1)`
-/

namespace A096822.P2474126799906896145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A096502 n).toNat - A000265 (2 * n + 1)

end

end A096822.P2474126799906896145

/-! ## A096822.P2815128197786572147

`A000079(A096502(n))-(A000027(n+1)+n)`
-/

namespace A096822.P2815128197786572147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A096502 n).toNat - (A000027 (n + 1) + (n : ℤ))

end

end A096822.P2815128197786572147

/-! ## A096822.P9114362019621984226

`A000079(A096502(n))-(A007318(C(2, n))+2*n)`
-/

namespace A096822.P9114362019621984226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A096502 n).toNat - (A007318 (Nat.choose 2 n) + (2 * n : ℤ))

end

end A096822.P9114362019621984226

/-!
# A096824: a(n) = n for n <= 2; for n > 2, a(n) = 2a(n-1) - a(n - floor(1/2 + sqrt(2(n-1)))).

The programs for A096824, the canonical program `A096824.P12904615696829496368` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096824 has offset 0).

The definition of A096824 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)-a(n-floor(1/2+sqrt(2*(n-1))))` (program `A096824.P12904615696829496368`, by `A096824.P12904615696829496368.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A096824.P12904615696829496368

`2*a(n-1)-a(n-floor(1/2+sqrt(2*(n-1))))` with `a(0)=0, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A096824

/-- `2*a(n-1)-a(n-floor(1/2+sqrt(2*(n-1))))` -/
def P12904615696829496368.Spec : Prop :=
  ∀ n, P12904615696829496368.a n = A096824 n

theorem P12904615696829496368.correct : P12904615696829496368.Spec := by
  intro n
  simp only [A096824]

end A096824

/-! ## A096824.P12406923658725678063

`A096796(A057428(n)+n)+A057427(n)`
-/

namespace A096824.P12406923658725678063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096796 (A057428 n + (n : ℤ)).toNat + A057427 n

end

end A096824.P12406923658725678063

namespace A096824

/-- `A096796(A057428(n)+n)+A057427(n)` -/
def P12406923658725678063.Spec : Prop :=
  ∀ n, P12406923658725678063.a n = A096824 n

end A096824

/-! ## A096824.P3241415789914906172

`A096796(n-A057427(n))+A057427(n)`
-/

namespace A096824.P3241415789914906172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096796 ((n : ℤ) - A057427 n).toNat + A057427 n

end

end A096824.P3241415789914906172

namespace A096824

/-- `A096796(n-A057427(n))+A057427(n)` -/
def P3241415789914906172.Spec : Prop :=
  ∀ n, P3241415789914906172.a n = A096824 n

end A096824

/-! ## A096824.P1441565957398841198

`A096796(n-A057427(n))-A057428(n)`
-/

namespace A096824.P1441565957398841198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096796 ((n : ℤ) - A057427 n).toNat - A057428 n

end

end A096824.P1441565957398841198

namespace A096824

/-- `A096796(n-A057427(n))-A057428(n)` -/
def P1441565957398841198.Spec : Prop :=
  ∀ n, P1441565957398841198.a n = A096824 n

end A096824

/-! ## A096824.P5932622289468965618

`1-(A000007(n)-A096796(n-A057427(n)))`
-/

namespace A096824.P5932622289468965618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A000007 n - A096796 ((n : ℤ) - A057427 n).toNat)

end

end A096824.P5932622289468965618

namespace A096824

/-- `1-(A000007(n)-A096796(n-A057427(n)))` -/
def P5932622289468965618.Spec : Prop :=
  ∀ n, P5932622289468965618.a n = A096824 n

end A096824

/-! ## A096824.P7457272500025011358

`2-(A054977(n)-A096796(n-A057427(n)))`
-/

namespace A096824.P7457272500025011358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A054977 n - A096796 ((n : ℤ) - A057427 n).toNat)

end

end A096824.P7457272500025011358

namespace A096824

/-- `2-(A054977(n)-A096796(n-A057427(n)))` -/
def P7457272500025011358.Spec : Prop :=
  ∀ n, P7457272500025011358.a n = A096824 n

end A096824

/-! ## A096824.P1117090265346859141

`A096796(n-A057427(n))-A062157(2*n)`
-/

namespace A096824.P1117090265346859141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096796 ((n : ℤ) - A057427 n).toNat - A062157 (2 * n)

end

end A096824.P1117090265346859141

namespace A096824

/-- `A096796(n-A057427(n))-A062157(2*n)` -/
def P1117090265346859141.Spec : Prop :=
  ∀ n, P1117090265346859141.a n = A096824 n

end A096824

/-!
# A096825: Maximal size of an antichain in divisor lattice D(n).

The programs for A096825, there is no canonical definition to state claims against.
-/

/-! ## A096825.P5774686034044348202

`A004526(A136164(4*A046523(n+1)))`
-/

namespace A096825.P5774686034044348202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A136164 (4 * A046523 (n + 1)).toNat).toNat

end

end A096825.P5774686034044348202

/-! ## A096825.P11679202197895570813

`A167439(A050320(n+1)²)`
-/

namespace A096825.P11679202197895570813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167439 (A050320 (n + 1) ^ 2).toNat

end

end A096825.P11679202197895570813

/-! ## A096825.P2584288940657501089

`A327390(A050320(n+1)²)`
-/

namespace A096825.P2584288940657501089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327390 (A050320 (n + 1) ^ 2).toNat

end

end A096825.P2584288940657501089

/-! ## A096825.P2761973788630861792

`A167439(A050320(n+1)^2)`
-/

namespace A096825.P2761973788630861792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167439 (A050320 (n + 1) ^ 2).toNat

end

end A096825.P2761973788630861792

/-! ## A096825.P7426262634157437599

`A005811(A001104(A050320(n+1))²)`
-/

namespace A096825.P7426262634157437599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A001104 (A050320 (n + 1)).toNat ^ 2).toNat

end

end A096825.P7426262634157437599

/-! ## A096825.P9950910184206290045

`A005811(A002998(A050320(n+1))²)`
-/

namespace A096825.P9950910184206290045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A002998 (A050320 (n + 1)).toNat ^ 2).toNat

end

end A096825.P9950910184206290045

/-! ## A096825.P14431067785461185798

`A055642(A007089(A050320(n+1)²))`
-/

namespace A096825.P14431067785461185798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A007089 (A050320 (n + 1) ^ 2).toNat).toNat

end

end A096825.P14431067785461185798

/-! ## A096825.P13509334225542435433

`A002034(A039728(A050320(n+1))!)`
-/

namespace A096825.P13509334225542435433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (Nat.factorial (A039728 (A050320 (n + 1)).toNat).toNat)

end

end A096825.P13509334225542435433

/-! ## A096825.P5317930890463007962

`A001222(A000108(A050320(n+1)+2))`
-/

namespace A096825.P5317930890463007962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000108 (A050320 (n + 1) + 2).toNat).toNat

end

end A096825.P5317930890463007962

/-! ## A096825.P17211114595313264162

`∑{d}[A050320(n+1), A008441(A038747(#))]`
-/

namespace A096825.P17211114595313264162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050320 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A008441 (A038747 d).toNat

end

end A096825.P17211114595313264162

/-! ## A096825.P14625677584303412903

`∑{e}[A000108(A050320(n+1)+2), A000041(#)]`
-/

namespace A096825.P14625677584303412903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A050320 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000041 (Nat.factorization (f1 n).natAbs p)

end

end A096825.P14625677584303412903

/-! ## A096825.P16529490287793715439

`∑{e}[A000108(A050320(n+1)+2), A000108(#)]`
-/

namespace A096825.P16529490287793715439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A050320 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000108 (Nat.factorization (f1 n).natAbs p)

end

end A096825.P16529490287793715439

/-! ## A096825.P14756626167873176100

`A048687(A345957((n+1)²))`
-/

namespace A096825.P14756626167873176100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048687 (A345957 ((n + 1) ^ 2)).toNat

end

end A096825.P14756626167873176100

/-! ## A096825.P13709294855146886332

`A072628(A345957((n+1)²)²)`
-/

namespace A096825.P13709294855146886332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072628 (A345957 ((n + 1) ^ 2) ^ 2).toNat

end

end A096825.P13709294855146886332

/-!
# A096826: Number of maximal-sized antichains in divisor lattice D(n).

The programs for A096826, there is no canonical definition to state claims against.
-/

/-! ## A096826.P15937197998604315192

`A001511(A036565(A238952(n+1)))`
-/

namespace A096826.P15937197998604315192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A036565 (A238952 (n + 1)).toNat).toNat

end

end A096826.P15937197998604315192

/-! ## A096826.P12306798480552799855

`A347205(A238745(n+1)%A175565(n+1))`
-/

namespace A096826.P12306798480552799855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347205 (Int.tmod (A238745 (n + 1)) (A175565 (n + 1))).toNat

end

end A096826.P12306798480552799855

/-! ## A096826.P11797582551948915186

`A335521(3*A238745(n+1))`
-/

namespace A096826.P11797582551948915186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335521 (3 * A238745 (n + 1)).toNat

end

end A096826.P11797582551948915186

/-! ## A096826.P9871776220058608712

`∏{e}[A256624(A124859(n+1)), #]`
-/

namespace A096826.P9871776220058608712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256624 (A124859 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A096826.P9871776220058608712

/-! ## A096826.P13671472355871233428

`A004736(A238952(A000978(n+1))+A238952(n+1))`
-/

namespace A096826.P13671472355871233428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A238952 (A000978 (n + 1)).toNat + A238952 (n + 1)).toNat

end

end A096826.P13671472355871233428

/-!
# A096827: Number of antichains in divisor lattice D(n).

The programs for A096827, there is no canonical definition to state claims against.
-/

/-! ## A096827.P12031108463602165565

`A285573(n+1)+1`
-/

namespace A096827.P12031108463602165565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285573 (n + 1) + 1

end

end A096827.P12031108463602165565

/-! ## A096827.P14634915799403458604

`∑{d}[n+1, A285572(#)]+1`
-/

namespace A096827.P14634915799403458604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A285572 d + 1

end

end A096827.P14634915799403458604

/-! ## A096827.P12679151561860173444

`A020725(∑{d}[n+1, A285572(#)])`
-/

namespace A096827.P12679151561860173444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (∑ d ∈ Nat.divisors (f1 n), A285572 d).toNat

end

end A096827.P12679151561860173444

/-! ## A096827.P2371252819786618370

`A096826(2*lcm(A046523(n+1), A061142(n+1)))`
-/

namespace A096827.P2371252819786618370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096826 (2 * Int.lcm (A046523 (n + 1)) (A061142 (n + 1)))

end

end A096827.P2371252819786618370

/-! ## A096827.P1921217253348924985

`A096826(lcm(n+1, A061142(2*(n+1))))`
-/

namespace A096827.P1921217253348924985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096826 (Int.lcm (n + 1 : ℤ) (A061142 (2 * (n + 1))))

end

end A096827.P1921217253348924985

/-! ## A096827.P10624595955214639886

`A020725(A285573(n+1))`
-/

namespace A096827.P10624595955214639886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A285573 (n + 1)).toNat

end

end A096827.P10624595955214639886

/-!
# A096831: Number of primes in the neighborhood with center = n-th primorial and radius = ceiling(log(n-th primorial)).

The programs for A096831, there is no canonical definition to state claims against.
-/

/-! ## A096831.P10247826900298572188

`A333058(ceil(acot(n)+n))`
-/

namespace A096831.P10247826900298572188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333058 ⌈SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌉.toNat

end

end A096831.P10247826900298572188

/-! ## A096831.P6463729569402089758

`A333058(abs(1-n)+2)`
-/

namespace A096831.P6463729569402089758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333058 (|1 - (n : ℤ)| + 2).toNat

end

end A096831.P6463729569402089758

/-! ## A096831.P10329243231275311198

`floor(A333058(n+1)+acot(n))`
-/

namespace A096831.P10329243231275311198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A333058 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A096831.P10329243231275311198

/-! ## A096831.P3794902744995539400

`A333058(A028310(n)+1)%4`
-/

namespace A096831.P3794902744995539400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333058 (A028310 n + 1).toNat) 4

end

end A096831.P3794902744995539400

/-! ## A096831.P5757954847965169614

`A333058(n+1)+A000007(n)`
-/

namespace A096831.P5757954847965169614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333058 (n + 1) + A000007 n

end

end A096831.P5757954847965169614

/-! ## A096831.P5956799475531087721

`A000038(n)!*A333058(n+1)`
-/

namespace A096831.P5956799475531087721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000038 n).toNat : ℤ) * A333058 (n + 1)

end

end A096831.P5956799475531087721

/-! ## A096831.P7793446742403215502

`A333058(n+1)+A010051(2*(n+1))`
-/

namespace A096831.P7793446742403215502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333058 (n + 1) + A010051 (2 * (n + 1))

end

end A096831.P7793446742403215502

/-! ## A096831.P2381224504344269452

`(1-A014016(n+1))*A333058(n+1)`
-/

namespace A096831.P2381224504344269452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A014016 (n + 1)) * A333058 (n + 1)

end

end A096831.P2381224504344269452

/-! ## A096831.P16358433405803238144

`A014963(4*n+2)*A333058(n+1)`
-/

namespace A096831.P16358433405803238144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 2) * A333058 (n + 1)

end

end A096831.P16358433405803238144

/-! ## A096831.P14849221482374349682

`A000108(C(2, n+1))*A333058(n+1)`
-/

namespace A096831.P14849221482374349682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 1)) * A333058 (n + 1)

end

end A096831.P14849221482374349682

/-! ## A096831.P8358885860243866211

`A007318(a(n-1))*A333058(n+1)` with `a(0)=2`
-/

namespace A096831.P8358885860243866211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A007318 (a (n - 1)).toNat * A333058 (n + 1)

end

end A096831.P8358885860243866211

/-! ## A096831.P14233510578465032434

`A097117(a(n-1))*A333058(n+1)` with `a(0)=2`
-/

namespace A096831.P14233510578465032434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A097117 (a (n - 1)).toNat * A333058 (n + 1)

end

end A096831.P14233510578465032434

/-! ## A096831.P6301852293006479798

`A097121(a(n-1))*A333058(n+1)` with `a(0)=2`
-/

namespace A096831.P6301852293006479798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A097121 (a (n - 1)).toNat * A333058 (n + 1)

end

end A096831.P6301852293006479798

/-! ## A096831.P7168662760408791428

`A333058(n+1)+char[A007814(2*n+1)]`
-/

namespace A096831.P7168662760408791428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (2 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333058 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A096831.P7168662760408791428

/-! ## A096831.P12980252215403353253

`A333058(n+1)+char[A067180(A158740(n))]`
-/

namespace A096831.P12980252215403353253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067180 (A158740 n).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333058 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A096831.P12980252215403353253

/-! ## A096831.P16018160099905542425

`A333058(n+1)+A010815(A289750(n+2))`
-/

namespace A096831.P16018160099905542425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333058 (n + 1) + A010815 (A289750 (n + 2)).toNat

end

end A096831.P16018160099905542425

/-! ## A096831.P5040147319070814487

`A001511(A000040(n+1))*A333058(n+1)`
-/

namespace A096831.P5040147319070814487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A000040 (n + 1)).toNat * A333058 (n + 1)

end

end A096831.P5040147319070814487

/-! ## A096831.P9600729350385589368

`A333058(n+1)-A008683(2*A000010(n+2))`
-/

namespace A096831.P9600729350385589368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333058 (n + 1) - A008683 (2 * A000010 (n + 2)).toNat

end

end A096831.P9600729350385589368

/-! ## A096831.P16288619352413279985

`A000034(A000032(floor(1/(n+1))))*A333058(n+1)`
-/

namespace A096831.P16288619352413279985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A000032 ⌊1 / (n + 1 : ℚ)⌋.toNat).toNat * A333058 (n + 1)

end

end A096831.P16288619352413279985

/-! ## A096831.P12136489967660769679

`A333058(n+1)-A010815(2*n+1)*A010815(2*n)`
-/

namespace A096831.P12136489967660769679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333058 (n + 1) - A010815 (2 * n + 1) * A010815 (2 * n)

end

end A096831.P12136489967660769679

/-!
# A096833: Values of n such that in the interval centered at A002110(n) = n-th primorial and of radius ceiling(log(center)) there is a single prime.

The programs for A096833, there is no canonical definition to state claims against.
-/

/-! ## A096833.P1606493120900738806

`A088411(n+6)-C(2, n+2)`
-/

namespace A096833.P1606493120900738806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088411 (n + 6) - (Nat.choose 2 (n + 2) : ℤ)

end

end A096833.P1606493120900738806

/-! ## A096833.P18444704630802478170

`A088411(A242963(n+1))`
-/

namespace A096833.P18444704630802478170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088411 (A242963 (n + 1)).toNat

end

end A096833.P18444704630802478170

/-! ## A096833.P17695558893790262246

`A088411(A065475(n+1)+4)`
-/

namespace A096833.P17695558893790262246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088411 (A065475 (n + 1) + 4).toNat

end

end A096833.P17695558893790262246

/-! ## A096833.P11569071058019298293

`A088411(A263772(n+1)-4)`
-/

namespace A096833.P11569071058019298293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088411 (A263772 (n + 1) - 4).toNat

end

end A096833.P11569071058019298293

/-! ## A096833.P14049575045060687788

`A088411(A057427(n)+5+n)`
-/

namespace A096833.P14049575045060687788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088411 (A057427 n + 5 + (n : ℤ)).toNat

end

end A096833.P14049575045060687788

/-!
# A096836: Number of primes in the neighborhood of 10^n with radius ceiling(log(10^n)).

The programs for A096836, there is no canonical definition to state claims against.
-/

/-! ## A096836.P17222161560148950303

`A174805(A001405(n))%4`
-/

namespace A096836.P17222161560148950303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A174805 (A001405 n).toNat) 4

end

end A096836.P17222161560148950303

/-! ## A096836.P13171771025749861307

`A152735(A028338(n+1)+1)`
-/

namespace A096836.P13171771025749861307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152735 (A028338 (n + 1) + 1).toNat

end

end A096836.P13171771025749861307

/-! ## A096836.P16003936161569455123

`A245554(A024313(n+1)+1)`
-/

namespace A096836.P16003936161569455123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245554 (A024313 (n + 1) + 1).toNat

end

end A096836.P16003936161569455123

/-! ## A096836.P16206616820479435606

`A090499(A090670(n+1))%4`
-/

namespace A096836.P16206616820479435606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090499 (A090670 (n + 1)).toNat) 4

end

end A096836.P16206616820479435606

/-! ## A096836.P15372625517118791451

`A108363(xor(6, A130513(n+1)))`
-/

namespace A096836.P15372625517118791451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108363 (Int.xor 6 (A130513 (n + 1))).toNat

end

end A096836.P15372625517118791451

/-!
# A096839: Number of primes in the neighborhood of n^2 with radius ceiling(log(n^2)).

The programs for A096839, there is no canonical definition to state claims against.
-/

/-! ## A096839.P16917501310269732604

`A044944(n+5)+A000035(A063012(n))`
-/

namespace A096839.P16917501310269732604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044944 (n + 5) + A000035 (A063012 n).toNat

end

end A096839.P16917501310269732604

/-! ## A096839.P14965608421094176632

`1-A162289(A126646(n))+A044944(n+5)`
-/

namespace A096839.P14965608421094176632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A162289 (A126646 n).toNat + A044944 (n + 5)

end

end A096839.P14965608421094176632

/-! ## A096839.P4175181434703352020

`A162289(A126646(n+1))+A044944(n+5)`
-/

namespace A096839.P4175181434703352020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162289 (A126646 (n + 1)).toNat + A044944 (n + 5)

end

end A096839.P4175181434703352020

/-!
# A096841: Numbers n such that sum of divisors of these numbers gives a decimal repdigit.

The programs for A096841, there is no canonical definition to state claims against.
-/

/-! ## A096841.P10919761003936660718

`eq[1, A047726(sqrt(A072861(n+1)))]+1`
-/

namespace A096841.P10919761003936660718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047726 (SequenceMachineLib.roundAway (Real.sqrt (A072861 (n + 1) : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A096841.P10919761003936660718

/-! ## A096841.P15173142411412714853

`eq[1, A047726(A319528(n+1)/8)]+1`
-/

namespace A096841.P15173142411412714853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047726 (SequenceMachineLib.roundAway ((A319528 (n + 1) : ℚ) / 8)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A096841.P15173142411412714853

/-! ## A096841.P9363940253635859967

`eq[1, A043537(A000203(n+1))]+1`
-/

namespace A096841.P9363940253635859967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (A000203 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A096841.P9363940253635859967

/-! ## A096841.P6046119032566869550

`eq[1, A043537(A039653(n+1)+1)]+1`
-/

namespace A096841.P6046119032566869550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (A039653 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A096841.P6046119032566869550

/-! ## A096841.P2059608304443118219

`A070982(A096842(n+1)^A131361(n+1))`
-/

namespace A096841.P2059608304443118219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070982 (SequenceMachineLib.roundAway ((A096842 (n + 1) : ℚ) ^ (A131361 (n + 1) : ℤ))).toNat

end

end A096841.P2059608304443118219

/-!
# A096842: Sigma applied to A096841 produces these repdigits: a[n]=A000203[A096841(n)].

The programs for A096842, there is no canonical definition to state claims against.
-/

/-! ## A096842.P7752725989686965432

`∑{d}[A096841(n+1), #]`
-/

namespace A096842.P7752725989686965432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096841 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A096842.P7752725989686965432

/-! ## A096842.P6741981587125498698

`A000203(A096841(n+1))`
-/

namespace A096842.P6741981587125498698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A096841 (n + 1)).toNat

end

end A096842.P6741981587125498698

/-! ## A096842.P932882369121832542

`A227131(A096841(n+1)+A025466(n))`
-/

namespace A096842.P932882369121832542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227131 (A096841 (n + 1) + A025466 n).toNat

end

end A096842.P932882369121832542

/-! ## A096842.P1373124611516947192

`A284341(A096841(n+1))+A243831(n)`
-/

namespace A096842.P1373124611516947192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284341 (A096841 (n + 1)).toNat + A243831 n

end

end A096842.P1373124611516947192

/-! ## A096842.P3620269355040669438

`A039653(A096841(n+1))+A007318(∑[n])`
-/

namespace A096842.P3620269355040669438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (A096841 (n + 1)).toNat + A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A096842.P3620269355040669438

/-!
# A096843: Primes of form repdigit - 1. Primes whose sum of divisors is a decimal repdigit.

The programs for A096843, there is no canonical definition to state claims against.
-/

/-! ## A096843.P4064480385273710919

`A028987(n+1)-1`
-/

namespace A096843.P4064480385273710919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028987 (n + 1) - 1

end

end A096843.P4064480385273710919

/-! ## A096843.P2394109476003039313

`A057428(n+1)+A028987(n+1)`
-/

namespace A096843.P2394109476003039313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A028987 (n + 1)

end

end A096843.P2394109476003039313

/-! ## A096843.P14929709407896759574

`A134824(n+2)+A028987(n+1)`
-/

namespace A096843.P14929709407896759574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A028987 (n + 1)

end

end A096843.P14929709407896759574

/-! ## A096843.P3895099583937337831

`A033999(2*n+1)+A028987(n+1)`
-/

namespace A096843.P3895099583937337831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + A028987 (n + 1)

end

end A096843.P3895099583937337831

/-! ## A096843.P11145071280256220006

`A064179(A000040(n+1))+A028987(n+1)`
-/

namespace A096843.P11145071280256220006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064179 (A000040 (n + 1)).toNat + A028987 (n + 1)

end

end A096843.P11145071280256220006

/-!
# A096844: Numbers where 0 is the only even decimal digit.

The programs for A096844, the canonical program `A096844.P1230674438731432842` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096844 has offset 1).

The definition of A096844 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 516 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096844.P9618144119809428513

`eq[1, A059905(A086066(n))]`
-/

namespace A096844.P9618144119809428513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 (A086066 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A096844.P9618144119809428513

namespace A096844

/-- `eq[1, A059905(A086066(n))]` -/
def P9618144119809428513.Spec : Prop :=
  ∀ n, (P9618144119809428513.a n : ℤ) = A096844 (n + 1)

end A096844

/-! ## A096844.P16741676347257503520

`eq[A009101(n), A107128(n)]`
-/

namespace A096844.P16741676347257503520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009101 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107128 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096844.P16741676347257503520

namespace A096844

/-- `eq[A009101(n), A107128(n)]` -/
def P16741676347257503520.Spec : Prop :=
  ∀ n, (P16741676347257503520.a n : ℤ) = A096844 (n + 1)

end A096844

/-! ## A096844.P10195006711723827933

`eq[A107128(n), A230099(n)]`
-/

namespace A096844.P10195006711723827933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107128 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230099 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096844.P10195006711723827933

namespace A096844

/-- `eq[A107128(n), A230099(n)]` -/
def P10195006711723827933.Spec : Prop :=
  ∀ n, (P10195006711723827933.a n : ℤ) = A096844 (n + 1)

end A096844

/-! ## A096844.P12322150930466001258

`record[A107128(n)-A007954(n)]`
-/

namespace A096844.P12322150930466001258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107128 n - A007954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096844.P12322150930466001258

namespace A096844

/-- `record[A107128(n)-A007954(n)]` -/
def P12322150930466001258.Spec : Prop :=
  ∀ n, P12322150930466001258.a n = A096844 (n + 1)

end A096844

/-! ## A096844.P12253220179686814886

`eq[1, A059906(2*A086066(n))]`
-/

namespace A096844.P12253220179686814886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059906 (2 * A086066 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A096844.P12253220179686814886

namespace A096844

/-- `eq[1, A059906(2*A086066(n))]` -/
def P12253220179686814886.Spec : Prop :=
  ∀ n, (P12253220179686814886.a n : ℤ) = A096844 (n + 1)

end A096844

/-! ## A096844.P10778311863957082595

`eq[1, A247339(A051801(n))+A007954(n)]`
-/

namespace A096844.P10778311863957082595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247339 (A051801 n).toNat + A007954 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A096844.P10778311863957082595

namespace A096844

/-- `eq[1, A247339(A051801(n))+A007954(n)]` -/
def P10778311863957082595.Spec : Prop :=
  ∀ n, (P10778311863957082595.a n : ℤ) = A096844 (n + 1)

end A096844

/-! ## A096844.P8045950629595341152

`eq[A001613(n), A098736(n)]`
-/

namespace A096844.P8045950629595341152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001613 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098736 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096844.P8045950629595341152

namespace A096844

/-- `eq[A001613(n), A098736(n)]` -/
def P8045950629595341152.Spec : Prop :=
  ∀ n, (P8045950629595341152.a n : ℤ) = A096844 (n + 1)

end A096844

/-! ## A096844.P5669159163196297853

`eq[A001613(n), A100817(n)]`
-/

namespace A096844.P5669159163196297853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001613 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100817 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096844.P5669159163196297853

namespace A096844

/-- `eq[A001613(n), A100817(n)]` -/
def P5669159163196297853.Spec : Prop :=
  ∀ n, (P5669159163196297853.a n : ℤ) = A096844 (n + 1)

end A096844

/-! ## A096844.P13482318069111578404

`eq[A001613(n), A168046(n)]`
-/

namespace A096844.P13482318069111578404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001613 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096844.P13482318069111578404

namespace A096844

/-- `eq[A001613(n), A168046(n)]` -/
def P13482318069111578404.Spec : Prop :=
  ∀ n, (P13482318069111578404.a n : ℤ) = A096844 (n + 1)

end A096844

/-! ## A096844.P1230674438731432842

`eq[A249121(n), A304440(n)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A096844

/-- `eq[A249121(n), A304440(n)]` -/
def P1230674438731432842.Spec : Prop :=
  ∀ n, (P1230674438731432842.a n : ℤ) = A096844 (n + 1)

theorem P1230674438731432842.correct : P1230674438731432842.Spec := by
  intro n
  simp only [A096844, Nat.add_sub_cancel]

end A096844

/-! ## A096844.P6329519727062785755

`eq[1, A217096(n)+A001613(n)]`
-/

namespace A096844.P6329519727062785755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217096 n + A001613 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A096844.P6329519727062785755

namespace A096844

/-- `eq[1, A217096(n)+A001613(n)]` -/
def P6329519727062785755.Spec : Prop :=
  ∀ n, (P6329519727062785755.a n : ℤ) = A096844 (n + 1)

end A096844

/-! ## A096844.P17053886525386982722

`eq[n*A001613(n), A059707(n)]`
-/

namespace A096844.P17053886525386982722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001613 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059707 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096844.P17053886525386982722

namespace A096844

/-- `eq[n*A001613(n), A059707(n)]` -/
def P17053886525386982722.Spec : Prop :=
  ∀ n, (P17053886525386982722.a n : ℤ) = A096844 (n + 1)

end A096844

/-! ## A096844.P16392165778039185292

`lt[n*A001613(n), A001613(A222215(n))]`
-/

namespace A096844.P16392165778039185292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001613 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001613 (A222215 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A096844.P16392165778039185292

namespace A096844

/-- `lt[n*A001613(n), A001613(A222215(n))]` -/
def P16392165778039185292.Spec : Prop :=
  ∀ n, (P16392165778039185292.a n : ℤ) = A096844 (n + 1)

end A096844

/-! ## A096844.P3829452948411969072

`eq[A040005(2*n+1), A318702(A086066(n))]`
-/

namespace A096844.P3829452948411969072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040005 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318702 (A086066 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096844.P3829452948411969072

namespace A096844

/-- `eq[A040005(2*n+1), A318702(A086066(n))]` -/
def P3829452948411969072.Spec : Prop :=
  ∀ n, (P3829452948411969072.a n : ℤ) = A096844 (n + 1)

end A096844

/-!
# A096845: Numbers n for which 4*R_n - 1 is a prime, where R_n = 11...1 is the repunit (A002275) of length n.

The programs for A096845, there is no canonical definition to state claims against.
-/

/-! ## A096845.P14927547564491269383

`A056661(n+1)+1`
-/

namespace A096845.P14927547564491269383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056661 (n + 1) + 1

end

end A096845.P14927547564491269383

/-! ## A096845.P9780435366000116902

`eq[1, A104660(A028310(n))]+1`
-/

namespace A096845.P9780435366000116902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104660 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A096845.P9780435366000116902

/-! ## A096845.P15857451297692939174

`eq[1, A104660(A233583(n+1))]+1`
-/

namespace A096845.P15857451297692939174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104660 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A096845.P15857451297692939174

/-!
# A096846: Numbers n for which 8*R_n - 1 is prime, where R_n = 11...1 is the repunit (A002275) of length n.

The programs for A096846, there is no canonical definition to state claims against.
-/

/-! ## A096846.P14903179442138295988

`A056695(n+1)+1`
-/

namespace A096846.P14903179442138295988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056695 (n + 1) + 1

end

end A096846.P14903179442138295988

/-! ## A096846.P13616567516138063652

`A061800(A056695(n+1))`
-/

namespace A096846.P13616567516138063652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061800 (A056695 (n + 1)).toNat

end

end A096846.P13616567516138063652

/-! ## A096846.P436327537116956844

`eq[1, A105248(n)]+1`
-/

namespace A096846.P436327537116956844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105248 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A096846.P436327537116956844

/-! ## A096846.P12334422771276354680

`A061800(eq[1, A105248(n)])`
-/

namespace A096846.P12334422771276354680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105248 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061800 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A096846.P12334422771276354680

/-! ## A096846.P8993437537869165879

`lt[A000045(A105248(n)+1), 2]+1`
-/

namespace A096846.P8993437537869165879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A105248 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A096846.P8993437537869165879

/-!
# A096847: Numbers k such that A094471(k) is prime.

The programs for A096847, there is no canonical definition to state claims against.
-/

/-! ## A096847.P17076138965139006960

`eq[1, A003415(A094471(n+1))]+1`
-/

namespace A096847.P17076138965139006960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A094471 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A096847.P17076138965139006960

/-!
# A096848: Primes arising in A096847.

The programs for A096848, there is no canonical definition to state claims against.
-/

/-! ## A096848.P14324244269261005613

`∑{d}[A096847(n+1), A096847(n+1)-#]`
-/

namespace A096848.P14324244269261005613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096847 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A096847 (n + 1) - (d : ℤ))

end

end A096848.P14324244269261005613

/-! ## A096848.P5850181989949965700

`p?[A094471(n+1)]`
-/

namespace A096848.P5850181989949965700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094471 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096848.P5850181989949965700

/-! ## A096848.P10783576559348069510

`A094471(A096847(n+1))`
-/

namespace A096848.P10783576559348069510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094471 (A096847 (n + 1)).toNat

end

end A096848.P10783576559348069510

/-! ## A096848.P14184608112563205337

`p?[A143348(n+1)+A038040(n+1)]`
-/

namespace A096848.P14184608112563205337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143348 (n + 1) + A038040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096848.P14184608112563205337

/-! ## A096848.P4608523916984741706

`p?[A038040(n+1)-A000203(n+1)]`
-/

namespace A096848.P4608523916984741706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (n + 1) - A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096848.P4608523916984741706

/-!
# A096849: If f(x) = phi(sigma(x)) is iterated starting from these numbers, then the start-value never returns. These are the transient terms of this iteration. Never occur in terminal cycles.

The programs for A096849, there is no canonical definition to state claims against.
-/

/-! ## A096849.P4667925142587037765

`eq[char[A096850(n+1)], A000007(n)]`
-/

namespace A096849.P4667925142587037765
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096850 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A096849.P4667925142587037765

/-! ## A096849.P1470829009259047427

`eq[char[A096850(n+1)], A000038(n)]`
-/

namespace A096849.P1470829009259047427
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096850 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A096849.P1470829009259047427

/-! ## A096849.P2678606263995991143

`eq[char[A096850(n+1)], A130706(n)]`
-/

namespace A096849.P2678606263995991143
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096850 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A096849.P2678606263995991143

/-! ## A096849.P8220991596572822230

`eq[A260196(n)+1, char[A096850(n+1)]]`
-/

namespace A096849.P8220991596572822230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096850 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A096849.P8220991596572822230

/-! ## A096849.P3755085242995298650

`eq[2*A266220(2*n), char[A096850(n+1)]]`
-/

namespace A096849.P3755085242995298650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A266220 (2 * n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096850 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A096849.P3755085242995298650

/-! ## A096849.P7474104664617693999

`eq[char[A096850(n+1)], A151933(n)]`
-/

namespace A096849.P7474104664617693999
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096850 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A096849.P7474104664617693999

/-!
# A096850: Consider iteration of the function f(x) = phi(sigma(x)) = A062401(x). Sequence gives numbers n such that the trajectory of n returns to n.

The programs for A096850, there is no canonical definition to state claims against.
-/

/-! ## A096850.P12651320675487845773

`eq[0, A096860(n+1)]+1`
-/

namespace A096850.P12651320675487845773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096860 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A096850.P12651320675487845773

/-! ## A096850.P8183331886066845691

`record[gcd(A000027(n+1), A096860(n+1))]`
-/

namespace A096850.P8183331886066845691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A096860 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096850.P8183331886066845691

/-! ## A096850.P10945121766840085574

`eq[A095955(n+1), A096859(n+1)]+1`
-/

namespace A096850.P10945121766840085574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096859 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A096850.P10945121766840085574

/-! ## A096850.P3311194659877356885

`record[A008620(3*n)/A008778(A096860(n+1))]`
-/

namespace A096850.P3311194659877356885
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008620 (3 * n) : ℚ) / (A008778 (A096860 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096850.P3311194659877356885

/-! ## A096850.P8016032851590674371

`record[gcd(A096860(n+1), A164020(n))]`
-/

namespace A096850.P8016032851590674371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A096860 (n + 1)) (A164020 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096850.P8016032851590674371

/-!
# A096851: Even transient values of f(x)=phi(sigma(x)) iterations.

The programs for A096851, there is no canonical definition to state claims against.
-/

/-! ## A096851.P17904348766536080160

`∩[2*n, A096849(n+1)]`
-/

namespace A096851.P17904348766536080160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096851.P17904348766536080160

/-! ## A096851.P14520834059471008089

`∩[A096849(n+1), A004275(n)]`
-/

namespace A096851.P14520834059471008089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096851.P14520834059471008089

/-! ## A096851.P12218011395564397305

`∩[A096849(n+1), A004277(n)]`
-/

namespace A096851.P12218011395564397305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096851.P12218011395564397305

/-! ## A096851.P6936453861349364488

`∩[A096849(n+1), A005843(n)]`
-/

namespace A096851.P6936453861349364488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096851.P6936453861349364488

/-! ## A096851.P14607830216959489719

`∩[A096849(n+1), A020739(n)]`
-/

namespace A096851.P14607830216959489719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096851.P14607830216959489719

/-! ## A096851.P16556998619572820988

`∩[A096849(n+1), A020744(n)]`
-/

namespace A096851.P16556998619572820988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020744 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096851.P16556998619572820988

/-! ## A096851.P17300490111862133885

`∩[A096849(n+1), A103517(n)]`
-/

namespace A096851.P17300490111862133885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096851.P17300490111862133885

/-! ## A096851.P12156346018184202363

`∩[A096849(n+1), A163300(n+1)]`
-/

namespace A096851.P12156346018184202363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096851.P12156346018184202363

/-! ## A096851.P16989801567965826750

`filter[A096849(n+1), A135528(#)]`
-/

namespace A096851.P16989801567965826750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096849 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A096851.P16989801567965826750

/-! ## A096851.P9927035721817756675

`filter[A096849(n+1), A059841(#)]`
-/

namespace A096851.P9927035721817756675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096849 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A096851.P9927035721817756675

/-! ## A096851.P11342778856382552412

`filter[A096849(n+1), A266591(#)]`
-/

namespace A096851.P11342778856382552412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096849 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A096851.P11342778856382552412

/-! ## A096851.P6236321443170528487

`filter[A096849(n+1), A267043(#)]`
-/

namespace A096851.P6236321443170528487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096849 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267043 (f1 j).toNat = 1) n)

end

end A096851.P6236321443170528487

/-! ## A096851.P18426144288186092315

`eq[char[A096849(n+1)], A000034(n)]`
-/

namespace A096851.P18426144288186092315
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096849 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A096851.P18426144288186092315

/-! ## A096851.P12292744648028413216

`eq[char[A096849(n+1)], A010685(n)]`
-/

namespace A096851.P12292744648028413216
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096849 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A096851.P12292744648028413216

/-! ## A096851.P12341657152237044422

`eq[char[A096850(n+1)], A084099(n)]`
-/

namespace A096851.P12341657152237044422
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096850 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084099 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A096851.P12341657152237044422

/-! ## A096851.P1606147390639899822

`eq[char[A096850(n+1)], A266220(n)]`
-/

namespace A096851.P1606147390639899822
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096850 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266220 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A096851.P1606147390639899822

/-! ## A096851.P13260002850493950158

`eq[char[A096849(n+1)], A001511(n+1)]`
-/

namespace A096851.P13260002850493950158
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096849 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A096851.P13260002850493950158

/-! ## A096851.P8641936916373056638

`eq[char[A096849(n+1)], A003484(n+1)]`
-/

namespace A096851.P8641936916373056638
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096849 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003484 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A096851.P8641936916373056638

/-! ## A096851.P17239411208835813189

`eq[char[A096849(n+1)], A094603(n+1)]`
-/

namespace A096851.P17239411208835813189
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096849 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094603 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A096851.P17239411208835813189

/-!
# A096852: a(n) is the length of terminal cycle of the trajectory of f(x)=phi(sigma(x)) if started at 2^n.

The programs for A096852, there is no canonical definition to state claims against.
-/

/-! ## A096852.P11023832919952570816

`A095955(2^n)`
-/

namespace A096852.P11023832919952570816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095955 (2 ^ n)

end

end A096852.P11023832919952570816

/-! ## A096852.P8564065762523652291

`A097003(n)-A096994(n)`
-/

namespace A096852.P8564065762523652291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097003 n - A096994 n

end

end A096852.P8564065762523652291

/-! ## A096852.P1627052655718879580

`A097004(n+1)-A096995(n+1)`
-/

namespace A096852.P1627052655718879580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097004 (n + 1) - A096995 (n + 1)

end

end A096852.P1627052655718879580

/-! ## A096852.P17177437110477593435

`A097003(n)+1-A096995(n+1)`
-/

namespace A096852.P17177437110477593435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097003 n + (1 - A096995 (n + 1))

end

end A096852.P17177437110477593435

/-! ## A096852.P8417223477878040314

`A097004(n+1)-1-A096994(n)`
-/

namespace A096852.P8417223477878040314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097004 (n + 1) - 1 - A096994 n

end

end A096852.P8417223477878040314

/-!
# A096853: a(n) = A062401(2^n-1).

The programs for A096853, there is no canonical definition to state claims against.
-/

/-! ## A096853.P16493279659791525373

`A000010(∑{d}[∑[2^n], #])`
-/

namespace A096853.P16493279659791525373
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A096853.P16493279659791525373

/-! ## A096853.P10456293444922051905

`A000010(A075708(n+1))`
-/

namespace A096853.P10456293444922051905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A075708 (n + 1)).toNat

end

end A096853.P10456293444922051905

/-! ## A096853.P10316674458501044968

`A000010(A193337(2^n))`
-/

namespace A096853.P10316674458501044968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A193337 (2 ^ n)).toNat

end

end A096853.P10316674458501044968

/-! ## A096853.P6416308257618979026

`A000010(A353802(2^n))`
-/

namespace A096853.P6416308257618979026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A353802 (2 ^ n)).toNat

end

end A096853.P6416308257618979026

/-! ## A096853.P14275191946142309341

`A000010(A353804(2^n))`
-/

namespace A096853.P14275191946142309341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A353804 (2 ^ n)).toNat

end

end A096853.P14275191946142309341

/-!
# A096854: a(n) = A062402(2^n-1).

The programs for A096854, there is no canonical definition to state claims against.
-/

/-! ## A096854.P10130789144686634406

`∑{d}[A053287(n+1), #]`
-/

namespace A096854.P10130789144686634406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053287 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A096854.P10130789144686634406

/-! ## A096854.P1298471503216103774

`∑{d}[(n+1)*A011260(n+1), #]`
-/

namespace A096854.P1298471503216103774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A011260 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A096854.P1298471503216103774

/-! ## A096854.P354264025961626619

`∑{d}[(n+1)*A158502(∑[n+1]), #]`
-/

namespace A096854.P354264025961626619
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A158502 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A096854.P354264025961626619

/-! ## A096854.P11809340601967561670

`∑{d}[A053288(n+1)-A126646(n), #]`
-/

namespace A096854.P11809340601967561670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053288 (n + 1) - A126646 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A096854.P11809340601967561670

/-! ## A096854.P6034639012754770911

`∑{d}[∑[A000079(n)]-A053288(n+1), #]`
-/

namespace A096854.P6034639012754770911
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A053288 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A096854.P6034639012754770911

/-!
# A096855: a(n) = A062401(2^n + 1).

The programs for A096855, the canonical program `A096855.P4288218702433459592` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096855 has offset 0).

The definition of A096855 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062401, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A096855.P4288218702433459592

`A062401(2^n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A096855

/-- `A062401(2^n+1)` -/
def P4288218702433459592.Spec : Prop :=
  ∀ n, P4288218702433459592.a n = A096855 n

theorem P4288218702433459592.correct : P4288218702433459592.Spec := by
  intro n
  simp only [A096855]

end A096855

/-! ## A096855.P5519250774737410339

`A000010(∑{d}[2^n+1, #])`
-/

namespace A096855.P5519250774737410339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A096855.P5519250774737410339

namespace A096855

/-- `A000010(∑{d}[2^n+1, #])` -/
def P5519250774737410339.Spec : Prop :=
  ∀ n, P5519250774737410339.a n = A096855 n

end A096855

/-! ## A096855.P15619477126239625231

`A000010(A000203(2^n+1))`
-/

namespace A096855.P15619477126239625231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000203 (2 ^ n + 1)).toNat

end

end A096855.P15619477126239625231

namespace A096855

/-- `A000010(A000203(2^n+1))` -/
def P15619477126239625231.Spec : Prop :=
  ∀ n, P15619477126239625231.a n = A096855 n

end A096855

/-! ## A096855.P110804879820988121

`A000010(∑{d}[A000051(n), #])%A000051(n+1)`
-/

namespace A096855.P110804879820988121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)) (A000051 (n + 1))

end

end A096855.P110804879820988121

namespace A096855

/-- `A000010(∑{d}[A000051(n), #])%A000051(n+1)` -/
def P110804879820988121.Spec : Prop :=
  ∀ n, P110804879820988121.a n = A096855 n

end A096855

/-! ## A096855.P6070764997209690894

`A000010(A008438(ceil(2^(n-1))))`
-/

namespace A096855.P6070764997209690894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A008438 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat).toNat

end

end A096855.P6070764997209690894

namespace A096855

/-- `A000010(A008438(ceil(2^(n-1))))` -/
def P6070764997209690894.Spec : Prop :=
  ∀ n, P6070764997209690894.a n = A096855 n

end A096855

/-!
# A096856: a(n) = A062402(2^n+1).

The programs for A096856, the canonical program `A096856.P6825072489695385686` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096856 has offset 0).

The definition of A096856 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062402, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A096856.P7606799314622879845

`A000203(A053285(n))`
-/

namespace A096856.P7606799314622879845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A053285 n).toNat

end

end A096856.P7606799314622879845

namespace A096856

/-- `A000203(A053285(n))` -/
def P7606799314622879845.Spec : Prop :=
  ∀ n, P7606799314622879845.a n = A096856 n

end A096856

/-! ## A096856.P6825072489695385686

`A062402(2^n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A096856

/-- `A062402(2^n+1)` -/
def P6825072489695385686.Spec : Prop :=
  ∀ n, P6825072489695385686.a n = A096856 n

theorem P6825072489695385686.correct : P6825072489695385686.Spec := by
  intro n
  simp only [A096856]

end A096856

/-! ## A096856.P3942992347070924357

`∑{d}[A324104(record[2*A014963(n+1)]), #]`
-/

namespace A096856.P3942992347070924357
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014963 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324104 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A096856.P3942992347070924357

namespace A096856

/-- `∑{d}[A324104(record[2*A014963(n+1)]), #]` -/
def P3942992347070924357.Spec : Prop :=
  ∀ n, (P3942992347070924357.a n : ℤ) = A096856 n

end A096856

/-! ## A096856.P779604385336617119

`∑{d}[A053285(n), A000027(#)]`
-/

namespace A096856.P779604385336617119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000027 d

end

end A096856.P779604385336617119

namespace A096856

/-- `∑{d}[A053285(n), A000027(#)]` -/
def P779604385336617119.Spec : Prop :=
  ∀ n, P779604385336617119.a n = A096856 n

end A096856

/-! ## A096856.P13694959586336237458

`∑{d}[A000010(2^n+1), #]`
-/

namespace A096856.P13694959586336237458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 ^ n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A096856.P13694959586336237458

namespace A096856

/-- `∑{d}[A000010(2^n+1), #]` -/
def P13694959586336237458.Spec : Prop :=
  ∀ n, (P13694959586336237458.a n : ℤ) = A096856 n

end A096856

/-!
# A096858: Triangle read by rows in which row n gives the n-set obtained as the differences {b(n)-b(n-i), 0 <= i <= n-1}, where b() = A005318().

The programs for A096858, the canonical program `A096858.P12905405690355423415` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096858 has offset 1).

The definition of A096858 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096858.P12905405690355423415

`A005318(A002024(n+1))-A005318(A025581(n))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A096858

/-- `A005318(A002024(n+1))-A005318(A025581(n))` -/
def P12905405690355423415.Spec : Prop :=
  ∀ n, P12905405690355423415.a n = A096858 (n + 1)

theorem P12905405690355423415.correct : P12905405690355423415.Spec := by
  intro n
  simp only [A096858, Nat.add_sub_cancel]

end A096858

/-! ## A096858.P5842502584439294151

`A037254(n+1)%A075941(n)`
-/

namespace A096858.P5842502584439294151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037254 (n + 1)) (A075941 n)

end

end A096858.P5842502584439294151

namespace A096858

/-- `A037254(n+1)%A075941(n)` -/
def P5842502584439294151.Spec : Prop :=
  ∀ n, P5842502584439294151.a n = A096858 (n + 1)

end A096858

/-! ## A096858.P3206035620676667876

`A037254(n+1)+A000007(A025047(n))`
-/

namespace A096858.P3206035620676667876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037254 (n + 1) + A000007 (A025047 n).toNat

end

end A096858.P3206035620676667876

namespace A096858

/-- `A037254(n+1)+A000007(A025047(n))` -/
def P3206035620676667876.Spec : Prop :=
  ∀ n, P3206035620676667876.a n = A096858 (n + 1)

end A096858

/-! ## A096858.P5682327581496661553

`A037254(n+1)+A000007(A121431(n))`
-/

namespace A096858.P5682327581496661553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037254 (n + 1) + A000007 (A121431 n).toNat

end

end A096858.P5682327581496661553

namespace A096858

/-- `A037254(n+1)+A000007(A121431(n))` -/
def P5682327581496661553.Spec : Prop :=
  ∀ n, P5682327581496661553.a n = A096858 (n + 1)

end A096858

/-! ## A096858.P11876242433732138169

`A037254(n+1)+A010052(A154355(n))`
-/

namespace A096858.P11876242433732138169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037254 (n + 1) + A010052 (A154355 n).toNat

end

end A096858.P11876242433732138169

namespace A096858

/-- `A037254(n+1)+A010052(A154355(n))` -/
def P11876242433732138169.Spec : Prop :=
  ∀ n, P11876242433732138169.a n = A096858 (n + 1)

end A096858

/-!
# A096859: Function A062401(x) = phi(sigma(x)) = f(x) is iterated. Starting with n, a(n) is the count of distinct terms arising in trajectory; a(n)=t(n)+c(n)=t+c, where t=number of transient terms, c=number of recurrent terms (in the terminal cycle).

The programs for A096859, there is no canonical definition to state claims against.
-/

/-! ## A096859.P14839696414056210322

`A096860(n+1)+A095955(n+1)`
-/

namespace A096859.P14839696414056210322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096860 (n + 1) + A095955 (n + 1)

end

end A096859.P14839696414056210322

/-! ## A096859.P11457600780209935321

`A096860(n+1)+A004525(A082991(n+1))`
-/

namespace A096859.P11457600780209935321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096860 (n + 1) + A004525 (A082991 (n + 1)).toNat

end

end A096859.P11457600780209935321

/-! ## A096859.P2340815692374696068

`A096993(A000203(n+1))+A096860(n+1)`
-/

namespace A096859.P2340815692374696068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096993 (A000203 (n + 1)).toNat + A096860 (n + 1)

end

end A096859.P2340815692374696068

/-! ## A096859.P5983289490025355003

`A096993(sqrt(A072861(n+1)))+A096860(n+1)`
-/

namespace A096859.P5983289490025355003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096993 (SequenceMachineLib.roundAway (Real.sqrt (A072861 (n + 1) : ℝ))).toNat + A096860 (n + 1)

end

end A096859.P5983289490025355003

/-! ## A096859.P5453702664346903874

`A096993(A163372(n+1))+A096860(n+1)`
-/

namespace A096859.P5453702664346903874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096993 (A163372 (n + 1)).toNat + A096860 (n + 1)

end

end A096859.P5453702664346903874

/-!
# A096860: Function A062401(x) = phi(sigma(x)) = f(x) is iterated. Starting with n, a(n) is the count of distinct terms arising in the transient of this trajectory, that is: a(n) = A096859(n) - A095955(n).

The programs for A096860, there is no canonical definition to state claims against.
-/

/-! ## A096860.P13946986710726935868

`A096859(n+1)-A095955(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A096860.P13946986710726935868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096859 (n + 1) - A095955 (n + 1)

end

end A096860.P13946986710726935868

/-! ## A096860.P452557261411181842

`A096859(n+1)-A000006(A082991(n+1))`
-/

namespace A096860.P452557261411181842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096859 (n + 1) - A000006 (A082991 (n + 1)).toNat

end

end A096860.P452557261411181842

/-! ## A096860.P5391158740163332568

`A096859(n+1)-A096993(Δ[A160664(n)])`
-/

namespace A096860.P5391158740163332568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096859 (n + 1) - A096993 (f1 (n + 1) - f1 n).toNat

end

end A096860.P5391158740163332568

/-! ## A096860.P359137843107867622

`A096859(n+1)-A096993(A000203(n+1))`
-/

namespace A096860.P359137843107867622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096859 (n + 1) - A096993 (A000203 (n + 1)).toNat

end

end A096860.P359137843107867622

/-! ## A096860.P18094691381998502411

`A096859(n+1)-A096993(abs(A143348(n+1)))`
-/

namespace A096860.P18094691381998502411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096859 (n + 1) - A096993 |A143348 (n + 1)|.toNat

end

end A096860.P18094691381998502411

/-! ## A096860.P12240478014965991588

`A096859(n+1)-A096993(sqrt(A072861(n+1)))`
-/

namespace A096860.P12240478014965991588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096859 (n + 1) - A096993 (SequenceMachineLib.roundAway (Real.sqrt (A072861 (n + 1) : ℝ))).toNat

end

end A096860.P12240478014965991588

/-! ## A096860.P8706907706114589238

`A096859(n+1)-A096993(A163372(n+1))`
-/

namespace A096860.P8706907706114589238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096859 (n + 1) - A096993 (A163372 (n + 1)).toNat

end

end A096860.P8706907706114589238

/-!
# A096862: Function A062402(x)=sigma(phi(x)) is iterated. Starting with n, a(n) is the count of distinct terms arising during this trajectory; a(n)=t(n)+c(n)=t+c, where t is the number of transient terms, c is the number of recurrent terms [in the terminal cycle].

The programs for A096862, there is no canonical definition to state claims against.
-/

/-! ## A096862.P14982511945862330253

`A096993(n+1)+A096863(n+1)`
-/

namespace A096862.P14982511945862330253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096993 (n + 1) + A096863 (n + 1)

end

end A096862.P14982511945862330253

/-! ## A096862.P3991524579638587955

`A096863(n+1)+A095955(Δ[A002088(n)])`
-/

namespace A096862.P3991524579638587955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096863 (n + 1) + A095955 (f1 (n + 1) - f1 n).toNat

end

end A096862.P3991524579638587955

/-! ## A096862.P17835977337617327819

`A096863(n+1)+A095955(Δ[A005728(n)])`
-/

namespace A096862.P17835977337617327819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096863 (n + 1) + A095955 (f1 (n + 1) - f1 n).toNat

end

end A096862.P17835977337617327819

/-! ## A096862.P7839270667652501403

`A096863(n+1)+A095955(A000010(n+1))`
-/

namespace A096862.P7839270667652501403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096863 (n + 1) + A095955 (A000010 (n + 1)).toNat

end

end A096862.P7839270667652501403

/-! ## A096862.P1163311912589958483

`A096863(n+1)+A095955(A036840(n+1))`
-/

namespace A096862.P1163311912589958483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096863 (n + 1) + A095955 (A036840 (n + 1)).toNat

end

end A096862.P1163311912589958483

/-! ## A096862.P12807333975241946170

`A096863(n+1)+A095955(A036845(n+1))`
-/

namespace A096862.P12807333975241946170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096863 (n + 1) + A095955 (A036845 (n + 1)).toNat

end

end A096862.P12807333975241946170

/-! ## A096862.P7724198179391678298

`A096863(n+1)+A095955(A163370(n+1))`
-/

namespace A096862.P7724198179391678298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096863 (n + 1) + A095955 (A163370 (n + 1)).toNat

end

end A096862.P7724198179391678298

/-! ## A096862.P6362357899256781812

`A096863(n+1)+A095955(sqrt(A127473(n+1)))`
-/

namespace A096862.P6362357899256781812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096863 (n + 1) + A095955 (SequenceMachineLib.roundAway (Real.sqrt (A127473 (n + 1) : ℝ))).toNat

end

end A096862.P6362357899256781812

/-! ## A096862.P16333540692842162241

`A096863(n+1)+A095955(∑{d}[n+1, (n+1)/#*A008683(#)])`
-/

namespace A096862.P16333540692842162241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096863 (n + 1) + A095955 (SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ) * (A008683 d : ℚ))).toNat

end

end A096862.P16333540692842162241

/-!
# A096863: Function A062402(x)=sigma(phi(x)) is iterated. Starting with n, a(n) is the count of transient terms of trajectory.

The programs for A096863, there is no canonical definition to state claims against.
-/

/-! ## A096863.P12863479137879616729

`A096862(n+1)-A096993(n+1)`
-/

namespace A096863.P12863479137879616729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096862 (n + 1) - A096993 (n + 1)

end

end A096863.P12863479137879616729

/-! ## A096863.P16700173463483931064

`A096862(n+1)-A095955(Δ[A002088(n)])`
-/

namespace A096863.P16700173463483931064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096862 (n + 1) - A095955 (f1 (n + 1) - f1 n).toNat

end

end A096863.P16700173463483931064

/-! ## A096863.P2540365914371304728

`A096862(n+1)-A095955(Δ[A005728(n)])`
-/

namespace A096863.P2540365914371304728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096862 (n + 1) - A095955 (f1 (n + 1) - f1 n).toNat

end

end A096863.P2540365914371304728

/-! ## A096863.P15195193628251705687

`A096862(n+1)-A095955(A000010(n+1))`
-/

namespace A096863.P15195193628251705687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096862 (n + 1) - A095955 (A000010 (n + 1)).toNat

end

end A096863.P15195193628251705687

/-! ## A096863.P7757041422227559441

`A096862(n+1)-A095955(A036840(n+1))`
-/

namespace A096863.P7757041422227559441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096862 (n + 1) - A095955 (A036840 (n + 1)).toNat

end

end A096863.P7757041422227559441

/-! ## A096863.P13224053787959568590

`A096862(n+1)-A095955(A036845(n+1))`
-/

namespace A096863.P13224053787959568590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096862 (n + 1) - A095955 (A036845 (n + 1)).toNat

end

end A096863.P13224053787959568590

/-! ## A096863.P15113331676563716778

`A096862(n+1)-A095955(A163370(n+1))`
-/

namespace A096863.P15113331676563716778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096862 (n + 1) - A095955 (A163370 (n + 1)).toNat

end

end A096863.P15113331676563716778

/-! ## A096863.P7290001575269070517

`A096862(n+1)-A095955(sqrt(A127473(n+1)))`
-/

namespace A096863.P7290001575269070517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096862 (n + 1) - A095955 (SequenceMachineLib.roundAway (Real.sqrt (A127473 (n + 1) : ℝ))).toNat

end

end A096863.P7290001575269070517

/-! ## A096863.P11567731772654053554

`A096862(n+1)-A095955(∑{d}[n+1, (n+1)/#*A008683(#)])`
-/

namespace A096863.P11567731772654053554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096862 (n + 1) - A095955 (SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ) * (A008683 d : ℚ))).toNat

end

end A096863.P11567731772654053554

/-!
# A096865: Function A062401(x) = phi(sigma(x)) is iterated. Starting with n, a(n) is the smallest term arising in trajectory, either in transient or in terminal cycle.

The programs for A096865, there is no canonical definition to state claims against.
-/

/-! ## A096865.P5220898936672206443

`∑{d}[Δ[A047920(n)]+3^n+1, #%2]`
-/

namespace A096865.P5220898936672206443
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (3 ^ n : ℤ) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d % 2

end

end A096865.P5220898936672206443

/-!
# A096867: Records in A068189 (smallest number k such that n = product of nonzero digits of k, or 0 if no such k exists).

The programs for A096867, there is no canonical definition to state claims against.
-/

/-! ## A096867.P4342869189910667066

`record[A280249(n+1)]`
-/

namespace A096867.P4342869189910667066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280249 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096867.P4342869189910667066

/-! ## A096867.P8461208804942632031

`record[A280249(A028310(n))-A159075(n)]`
-/

namespace A096867.P8461208804942632031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280249 (A028310 n).toNat - A159075 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096867.P8461208804942632031

/-! ## A096867.P5894653453155926699

`record[A280249(A242112(n))-n%2]`
-/

namespace A096867.P5894653453155926699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280249 (A242112 n).toNat - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096867.P5894653453155926699

/-! ## A096867.P17603491911324816065

`record[A280249(A242112(n))-A159075(n)]`
-/

namespace A096867.P17603491911324816065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280249 (A242112 n).toNat - A159075 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096867.P17603491911324816065

/-! ## A096867.P13366637242843273770

`record[A033999(n)*A280249(A242112(n))]`
-/

namespace A096867.P13366637242843273770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A280249 (A242112 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096867.P13366637242843273770

/-! ## A096867.P7658351477188671504

`record[A087960(2*n)*A280249(A242112(n))]`
-/

namespace A096867.P7658351477188671504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (2 * n) * A280249 (A242112 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096867.P7658351477188671504

/-! ## A096867.P710946281229945120

`record[A280249(A242112(n))]*A010052(n²)`
-/

namespace A096867.P710946281229945120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280249 (A242112 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A010052 (n ^ 2)

end

end A096867.P710946281229945120

/-! ## A096867.P1944038373280147571

`record[A068189(n+1)]`
-/

namespace A096867.P1944038373280147571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068189 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096867.P1944038373280147571

/-! ## A096867.P13139976534748084804

`A068189(A096868(n+1))`
-/

namespace A096867.P13139976534748084804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068189 (A096868 (n + 1)).toNat

end

end A096867.P13139976534748084804

/-! ## A096867.P12333565391403923514

`record[A068189(Δ[n²]-n)]%A087289(n)`
-/

namespace A096867.P12333565391403923514
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068189 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A087289 n)

end

end A096867.P12333565391403923514

/-!
# A096868: Where records occur in A068189.

The programs for A096868, there is no canonical definition to state claims against.
-/

/-! ## A096868.P2870735696975300478

`∏{digits}[A096867(n+1), #]`
-/

namespace A096868.P2870735696975300478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096867 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A096868.P2870735696975300478

/-! ## A096868.P13759930501654441597

`∏{digits}[record[A280249(n+1)], #]`
-/

namespace A096868.P13759930501654441597
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280249 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A096868.P13759930501654441597

/-! ## A096868.P4538661849183060518

`record[∏{digits}[A096867(A242112(n)), #]]`
-/

namespace A096868.P4538661849183060518
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096867 (A242112 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).prod

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096868.P4538661849183060518

/-! ## A096868.P24770901962278467

`∏{digits}[record[A068189(n+1)], #]`
-/

namespace A096868.P24770901962278467
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068189 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A096868.P24770901962278467

/-! ## A096868.P6833152883151944074

`A007954(A096867(n+1))`
-/

namespace A096868.P6833152883151944074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A096867 (n + 1)).toNat

end

end A096868.P6833152883151944074

/-!
# A096869: Difference between the n-th repunit and the next prime.

The programs for A096869, there is no canonical definition to state claims against.
-/

/-! ## A096869.P17776879147367638931

`A096497(n+1)-∑[10^n]`
-/

namespace A096869.P17776879147367638931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096497 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A096869.P17776879147367638931

/-! ## A096869.P16479934709431627520

`abs(A000042(n+1)-A096497(n+1))`
-/

namespace A096869.P16479934709431627520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000042 (n + 1) - A096497 (n + 1)|

end

end A096869.P16479934709431627520

/-! ## A096869.P13844037651831582579

`abs(A002275(n+1)-A096497(n+1))`
-/

namespace A096869.P13844037651831582579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002275 (n + 1) - A096497 (n + 1)|

end

end A096869.P13844037651831582579

/-! ## A096869.P5829288324281804915

`A096497(n+1)+1-A047855(n+1)`
-/

namespace A096869.P5829288324281804915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096497 (n + 1) + 1 - A047855 (n + 1)

end

end A096869.P5829288324281804915

/-! ## A096869.P2287682236327386869

`A245092(A096497(n+1)-A000042(n+1))`
-/

namespace A096869.P2287682236327386869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A096497 (n + 1) - A000042 (n + 1)).toNat

end

end A096869.P2287682236327386869

/-!
# A096870: Difference between the n-th repunit and the previous prime.

The programs for A096870, there is no canonical definition to state claims against.
-/

/-! ## A096870.P8451073462330201631

`A000042(n+2)-A096498(n+2)`
-/

namespace A096870.P8451073462330201631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 2) - A096498 (n + 2)

end

end A096870.P8451073462330201631

/-! ## A096870.P16418927341863641342

`A002275(n+2)-A096498(n+2)`
-/

namespace A096870.P16418927341863641342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (n + 2) - A096498 (n + 2)

end

end A096870.P16418927341863641342

/-! ## A096870.P8676239877574795406

`record[A287468(n+2)]-A096498(n+2)`
-/

namespace A096870.P8676239877574795406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287468 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A096498 (n + 2)

end

end A096870.P8676239877574795406

/-! ## A096870.P14241013231852379024

`record[A290420(n+2)]-A096498(n+2)`
-/

namespace A096870.P14241013231852379024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290420 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A096498 (n + 2)

end

end A096870.P14241013231852379024

/-! ## A096870.P8247509403324646136

`A287468(A005843(n+1))-A096498(n+2)`
-/

namespace A096870.P8247509403324646136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287468 (A005843 (n + 1)).toNat - A096498 (n + 2)

end

end A096870.P8247509403324646136

/-! ## A096870.P16594276180127977487

`A094026(A004273(n+2))-A096498(n+2)`
-/

namespace A096870.P16594276180127977487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094026 (A004273 (n + 2)).toNat - A096498 (n + 2)

end

end A096870.P16594276180127977487

/-! ## A096870.P4655639343854431808

`A096497(n+2)-(A096869(n+2)+A096498(n+2))`
-/

namespace A096870.P4655639343854431808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096497 (n + 2) - (A096869 (n + 2) + A096498 (n + 2))

end

end A096870.P4655639343854431808

/-! ## A096870.P14611087678598582215

`A096499(n+2)-A096869(n+2)`
-/

namespace A096870.P14611087678598582215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096499 (n + 2) - A096869 (n + 2)

end

end A096870.P14611087678598582215

/-! ## A096870.P7515755977114014501

`A000042(n+2)+A096499(n+2)-A096497(n+2)`
-/

namespace A096870.P7515755977114014501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 2) + (A096499 (n + 2) - A096497 (n + 2))

end

end A096870.P7515755977114014501

/-!
# A096872: Minimum diameter of an integral set of n points in the plane, no 3 on a line.

The programs for A096872, there is no canonical definition to state claims against.
-/

/-! ## A096872.P13972888726860819440

`A085942(A032058(round(2*n/3)²))`
-/

namespace A096872.P13972888726860819440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085942 (A032058 (SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3)) ^ 2).toNat).toNat

end

end A096872.P13972888726860819440

/-!
# A096873: Minimum diameter of an integral set of n points in the plane, no 3 on a line, no 4 on a circle.

The programs for A096873, there is no canonical definition to state claims against.
-/

/-! ## A096873.P17673734913422127319

`A302854(A192814(n))`
-/

namespace A096873.P17673734913422127319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302854 (A192814 n).toNat

end

end A096873.P17673734913422127319

/-! ## A096873.P9451216572348807697

`A302854(A007576(n)²)`
-/

namespace A096873.P9451216572348807697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302854 (A007576 n ^ 2).toNat

end

end A096873.P9451216572348807697

/-!
# A096874: Matrix inverse of triangle A096651; transforms n-dimensional partitions into (n-1)-dimensional partitions.

The programs for A096874, there is no canonical definition to state claims against.
-/

/-! ## A096874.P7546661762514548115

`A010892(A105652(n+1)*A266213(n))`
-/

namespace A096874.P7546661762514548115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A105652 (n + 1) * A266213 n).toNat

end

end A096874.P7546661762514548115

/-! ## A096874.P5354640617639613174

`A206437(A166343(n+1))-A002262(n+1)`
-/

namespace A096874.P5354640617639613174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206437 (A166343 (n + 1)).toNat - A002262 (n + 1)

end

end A096874.P5354640617639613174

/-! ## A096874.P17449744019078259892

`(A010054(A326079(n))-A266213(n))%3+1`
-/

namespace A096874.P17449744019078259892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010054 (A326079 n).toNat - A266213 n) 3 + 1

end

end A096874.P17449744019078259892

/-! ## A096874.P14534519252878500027

`A306453(A357585(n))`
-/

namespace A096874.P14534519252878500027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306453 (A357585 n).toNat

end

end A096874.P14534519252878500027

/-! ## A096874.P15501808200425173663

`A343493(A128718(n+2))`
-/

namespace A096874.P15501808200425173663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343493 (A128718 (n + 2)).toNat

end

end A096874.P15501808200425173663

/-!
# A096875: Matrix square of inverse triangle A096651; transforms n-dimensional partitions into (n-2)-dimensional partitions.

The programs for A096875, there is no canonical definition to state claims against.
-/

/-! ## A096875.P3392703927061230750

`A323886(A120449(n+1)+1)`
-/

namespace A096875.P3392703927061230750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323886 (A120449 (n + 1) + 1).toNat

end

end A096875.P3392703927061230750

/-! ## A096875.P17383387063099341618

`A264428(n)-A304038(A176242(n+1))`
-/

namespace A096875.P17383387063099341618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264428 n - A304038 (A176242 (n + 1)).toNat

end

end A096875.P17383387063099341618

/-! ## A096875.P17716164624333291661

`A155033(n+1)*A193002(A144845(n))`
-/

namespace A096875.P17716164624333291661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155033 (n + 1) * A193002 (A144845 n).toNat

end

end A096875.P17716164624333291661

/-! ## A096875.P7817707059055129589

`A360170(A048993(n)*A277951(n+1))`
-/

namespace A096875.P7817707059055129589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360170 (A048993 n * A277951 (n + 1)).toNat

end

end A096875.P7817707059055129589

/-!
# A096876: Row sums of the triangle A096875, which transforms n-dimensional partitions into (n-2)-dimensional partitions.

The programs for A096876, there is no canonical definition to state claims against.
-/

/-! ## A096876.P748402493223707753

`A096874(∑[char[1]+n])`
-/

namespace A096876.P748402493223707753
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096874 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A096876.P748402493223707753

/-!
# A096877: Expansion in power series of a parametrization of the Folium of Descartes.

The programs for A096877, there is no canonical definition to state claims against.
-/

/-! ## A096877.P7354887760240510201

`(A008683(n+1)-(1-A354108((n+1)²)))*A200322(A047104(n+2))`
-/

namespace A096877.P7354887760240510201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008683 (n + 1) - (1 - A354108 ((n + 1) ^ 2))) * A200322 (A047104 (n + 2)).toNat

end

end A096877.P7354887760240510201

/-!
# A096878: Primes arising in A096134 (as absolute first differences).

The programs for A096878, there is no canonical definition to state claims against.
-/

/-! ## A096878.P14266682148037832101

`abs(Δ[A096134(n+1)])`
-/

namespace A096878.P14266682148037832101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096134 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A096878.P14266682148037832101

/-! ## A096878.P15931401684723183433

`A006530(lcm(2, Δ[A096134(n+1)]))`
-/

namespace A096878.P15931401684723183433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096134 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lcm 2 (f1 (n + 1) - f1 n))

end

end A096878.P15931401684723183433

/-! ## A096878.P6941281229263865937

`∑{d}[Δ[A096134(n+1)], A000010(#)]`
-/

namespace A096878.P6941281229263865937
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096134 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A096878.P6941281229263865937

/-! ## A096878.P12505638799874301140

`∏{d}[Δ[A096134(n+1)], A006530(#)]`
-/

namespace A096878.P12505638799874301140
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096134 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A006530 d

end

end A096878.P12505638799874301140

/-! ## A096878.P10634817916707572981

`∏{d}[Δ[A096134(n+1)], A014963(#)]`
-/

namespace A096878.P10634817916707572981
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096134 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A096878.P10634817916707572981

/-! ## A096878.P9884511073639092123

`A014963(∏{p}[Δ[A096134(n+1)], #])`
-/

namespace A096878.P9884511073639092123
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096134 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A096878.P9884511073639092123

/-! ## A096878.P6532038271303956770

`abs(A096134(n+2)-A096134(n+1))`
-/

namespace A096878.P6532038271303956770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A096134 (n + 2) - A096134 (n + 1)|

end

end A096878.P6532038271303956770

/-!
# A096880: Primes arising in A096879 (as absolute first differences).

The programs for A096880, there is no canonical definition to state claims against.
-/

/-! ## A096880.P11005776626897298833

`abs(Δ[A096879(n+1)])`
-/

namespace A096880.P11005776626897298833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A096880.P11005776626897298833

/-! ## A096880.P10569673559679516288

`A006530(lcm(2, Δ[A096879(n+1)]))`
-/

namespace A096880.P10569673559679516288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lcm 2 (f1 (n + 1) - f1 n))

end

end A096880.P10569673559679516288

/-! ## A096880.P18194449404438237585

`∑{d}[Δ[A096879(n+1)], A000010(#)]`
-/

namespace A096880.P18194449404438237585
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096879 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A096880.P18194449404438237585

/-! ## A096880.P3458794001581488867

`∏{d}[Δ[A096879(n+1)], A006530(#)]`
-/

namespace A096880.P3458794001581488867
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096879 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A006530 d

end

end A096880.P3458794001581488867

/-! ## A096880.P4317618848628288610

`∏{d}[Δ[A096879(n+1)], A014963(#)]`
-/

namespace A096880.P4317618848628288610
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096879 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A096880.P4317618848628288610

/-! ## A096880.P7280291580666729260

`A006530(∏{p}[Δ[A096879(n+1)], #])`
-/

namespace A096880.P7280291580666729260
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096879 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A096880.P7280291580666729260

/-! ## A096880.P8465891789532066469

`abs(A096879(n+1)-A096879(n+2))`
-/

namespace A096880.P8465891789532066469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A096879 (n + 1) - A096879 (n + 2)|

end

end A096880.P8465891789532066469

/-!
# A096881: Expansion of g.f. (1 + 4*x)/(1 - 17*x^2).

The programs for A096881, the canonical program `A096881.P735653368900650407` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096881 has offset 0).

The definition of A096881 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A096881.P735653368900650407

`17*a(n-2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A096881

/-- `17*a(n-2)` -/
def P735653368900650407.Spec : Prop :=
  ∀ n, (P735653368900650407.a n : ℤ) = A096881 n

theorem P735653368900650407.correct : P735653368900650407.Spec := by
  intro n
  simp only [A096881]

end A096881

/-! ## A096881.P1475236059000521344

`∏[17/a(n-1)]` with `a(0)=1, a(1)=4`
-/

namespace A096881.P1475236059000521344
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  17 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A096881.P1475236059000521344

namespace A096881

/-- `∏[17/a(n-1)]` -/
def P1475236059000521344.Spec : Prop :=
  ∀ n, P1475236059000521344.a n = (A096881 n : ℚ)

end A096881

/-! ## A096881.P12242739147271374573

`a(n-2)/root(17, -1)` with `a(0)=1, a(1)=4`
-/

namespace A096881.P12242739147271374573
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 2) / (17 : ℝ) ^ (1 / (-1 : ℝ))

end

end A096881.P12242739147271374573

namespace A096881

/-- `a(n-2)/root(17, -1)` -/
def P12242739147271374573.Spec : Prop :=
  ∀ n, P12242739147271374573.a n = (A096881 n : ℝ)

end A096881

/-! ## A096881.P17144449750697697188

`a(n-2)+a(n-2)/(1/4)²` with `a(0)=1, a(1)=4`
-/

namespace A096881.P17144449750697697188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 2) + a (n - 2) / ((1 : ℚ) / 4) ^ 2

end

end A096881.P17144449750697697188

namespace A096881

/-- `a(n-2)+a(n-2)/(1/4)²` -/
def P17144449750697697188.Spec : Prop :=
  ∀ n, P17144449750697697188.a n = (A096881 n : ℚ)

end A096881

/-! ## A096881.P818068450178204230

`17/a(n-2)^A115513(A013615(∑[n]))` with `a(0)=1, a(1)=4`
-/

namespace A096881.P818068450178204230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n a =>
  17 / a (n - 2) ^ (A115513 (A013615 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat : ℤ)

end

end A096881.P818068450178204230

namespace A096881

/-- `17/a(n-2)^A115513(A013615(∑[n]))` -/
def P818068450178204230.Spec : Prop :=
  ∀ n, P818068450178204230.a n = (A096881 n : ℚ)

end A096881

/-!
# A096882: Expansion of g.f. (1 + 7*x)/(1 - 50*x^2).

The programs for A096882, the canonical program `A096882.P1296854427574866181` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096882 has offset 0).

The definition of A096882 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A096882.P1296854427574866181

`6*a(n-1)+7*a(n-2)+50^floor((n-2)/2)` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A096882

/-- `6*a(n-1)+7*a(n-2)+50^floor((n-2)/2)` -/
def P1296854427574866181.Spec : Prop :=
  ∀ n, P1296854427574866181.a n = (A096882 n : ℚ)

end A096882

/-! ## A096882.P6029007532236865958

`50*a(n-2)` with `a(0)=1, a(1)=7`
-/

namespace A096882.P6029007532236865958
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n a =>
  50 * a (n - 2)

end

end A096882.P6029007532236865958

namespace A096882

/-- `50*a(n-2)` -/
def P6029007532236865958.Spec : Prop :=
  ∀ n, (P6029007532236865958.a n : ℤ) = A096882 n

end A096882

/-! ## A096882.P15775417380217416739

`∏[50/a(n-1)]` with `a(0)=1, a(1)=7`
-/

namespace A096882.P15775417380217416739
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 7] fun n f1 =>
  50 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A096882.P15775417380217416739

namespace A096882

/-- `∏[50/a(n-1)]` -/
def P15775417380217416739.Spec : Prop :=
  ∀ n, P15775417380217416739.a n = (A096882 n : ℚ)

end A096882

/-! ## A096882.P11290938207141556156

`A286507(n)*A396584(n)`
-/

namespace A096882.P11290938207141556156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286507 n * A396584 n

end

end A096882.P11290938207141556156

namespace A096882

/-- `A286507(n)*A396584(n)` -/
def P11290938207141556156.Spec : Prop :=
  ∀ n, P11290938207141556156.a n = A096882 n

end A096882

/-! ## A096882.P11398020902850574530

`5^A023443(n)*A070875(n)`
-/

namespace A096882.P11398020902850574530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A023443 n : ℤ) * (A070875 n : ℚ)

end

end A096882.P11398020902850574530

namespace A096882

/-- `5^A023443(n)*A070875(n)` -/
def P11398020902850574530.Spec : Prop :=
  ∀ n, P11398020902850574530.a n = (A096882 n : ℚ)

end A096882

/-! ## A096882.P6302580403777979635

`A010718(n)*A016116(n)*5^(n-1)`
-/

namespace A096882.P6302580403777979635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010718 n * A016116 n : ℚ) * (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A096882.P6302580403777979635

namespace A096882

/-- `A010718(n)*A016116(n)*5^(n-1)` -/
def P6302580403777979635.Spec : Prop :=
  ∀ n, P6302580403777979635.a n = (A096882 n : ℚ)

end A096882

/-!
# A096883: Expansion of (1+10x)/(1-101x^2).

The programs for A096883, the canonical program `A096883.P15051369533468866184` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096883 has offset 0).

The definition of A096883 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A096883.P15051369533468866184

`9*a(n-1)+10*a(n-2)+101^floor((n-2)/2)` with `a(0)=1, a(1)=10`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A096883

/-- `9*a(n-1)+10*a(n-2)+101^floor((n-2)/2)` -/
def P15051369533468866184.Spec : Prop :=
  ∀ n, P15051369533468866184.a n = (A096883 n : ℚ)

end A096883

/-! ## A096883.P3773600258674735842

`101*a(n-2)` with `a(0)=1, a(1)=10`
-/

namespace A096883.P3773600258674735842
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 10] fun n a =>
  101 * a (n - 2)

end

end A096883.P3773600258674735842

namespace A096883

/-- `101*a(n-2)` -/
def P3773600258674735842.Spec : Prop :=
  ∀ n, (P3773600258674735842.a n : ℤ) = A096883 n

end A096883

/-! ## A096883.P8915768939635718238

`∏{digits}[A094626(n), A267623(#)]`
-/

namespace A096883.P8915768939635718238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094626 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A267623 x).prod

end

end A096883.P8915768939635718238

namespace A096883

/-- `∏{digits}[A094626(n), A267623(#)]` -/
def P8915768939635718238.Spec : Prop :=
  ∀ n, P8915768939635718238.a n = A096883 n

end A096883

/-!
# A096884: a(n) = 101^n.

The programs for A096884, the canonical program `A096884.P4953587357281749470` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096884 has offset 0).

The definition of A096884 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `101^n` (program `A096884.P4953587357281749470`, by `A096884.P4953587357281749470.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A096884.P4953587357281749470

`101^n`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A096884

/-- `101^n` -/
def P4953587357281749470.Spec : Prop :=
  ∀ n, (P4953587357281749470.a n : ℤ) = A096884 n

theorem P4953587357281749470.correct : P4953587357281749470.Spec := by
  intro n
  simp only [A096884]

end A096884

/-!
# A096886: Expansion of (1+3*x)/(1-8*x^2).

The programs for A096886, the canonical program `A096886.P909964387650955912` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096886 has offset 0).

The definition of A096886 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 222 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096886.P909964387650955912

`8*a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A096886

/-- `8*a(n-2)` -/
def P909964387650955912.Spec : Prop :=
  ∀ n, (P909964387650955912.a n : ℤ) = A096886 n

theorem P909964387650955912.correct : P909964387650955912.Spec := by
  intro n
  simp only [A096886]

end A096886

/-! ## A096886.P2793823832084852981

`∏[8/a(n-1)]` with `a(0)=1, a(1)=3`
-/

namespace A096886.P2793823832084852981
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  8 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A096886.P2793823832084852981

namespace A096886

/-- `∏[8/a(n-1)]` -/
def P2793823832084852981.Spec : Prop :=
  ∀ n, P2793823832084852981.a n = (A096886 n : ℚ)

end A096886

/-! ## A096886.P3850083419492822135

`2^(log2(a(n-2))+3)` with `a(0)=1, a(1)=3`
-/

namespace A096886.P3850083419492822135
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 3] fun n a =>
  (2 : ℝ) ^ (Real.logb 2 (a (n - 2)) + 3)

end

end A096886.P3850083419492822135

namespace A096886

/-- `2^(log2(a(n-2))+3)` -/
def P3850083419492822135.Spec : Prop :=
  ∀ n, P3850083419492822135.a n = (A096886 n : ℝ)

end A096886

/-! ## A096886.P17479575500660305570

`a(n-2)/(1/2)^3` with `a(0)=1, a(1)=3`
-/

namespace A096886.P17479575500660305570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) / ((1 : ℚ) / 2) ^ 3

end

end A096886.P17479575500660305570

namespace A096886

/-- `a(n-2)/(1/2)^3` -/
def P17479575500660305570.Spec : Prop :=
  ∀ n, P17479575500660305570.a n = (A096886 n : ℚ)

end A096886

/-! ## A096886.P9934402365379965358

`a(n-2)/(1/3)²-a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A096886.P9934402365379965358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) / ((1 : ℚ) / 3) ^ 2 - a (n - 2)

end

end A096886.P9934402365379965358

namespace A096886

/-- `a(n-2)/(1/3)²-a(n-2)` -/
def P9934402365379965358.Spec : Prop :=
  ∀ n, P9934402365379965358.a n = (A096886 n : ℚ)

end A096886

/-! ## A096886.P9502852573919136109

`A086931(3*n)`
-/

namespace A096886.P9502852573919136109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086931 (3 * n)

end

end A096886.P9502852573919136109

namespace A096886

/-- `A086931(3*n)` -/
def P9502852573919136109.Spec : Prop :=
  ∀ n, P9502852573919136109.a n = A096886 n

end A096886

/-! ## A096886.P8977842546836949481

`A157176(3*n)`
-/

namespace A096886.P8977842546836949481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157176 (3 * n)

end

end A096886.P8977842546836949481

namespace A096886

/-- `A157176(3*n)` -/
def P8977842546836949481.Spec : Prop :=
  ∀ n, P8977842546836949481.a n = A096886 n

end A096886

/-! ## A096886.P15547826839538371809

`2^(n-1)*A164090(n+1)`
-/

namespace A096886.P15547826839538371809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A164090 (n + 1) : ℚ)

end

end A096886.P15547826839538371809

namespace A096886

/-- `2^(n-1)*A164090(n+1)` -/
def P15547826839538371809.Spec : Prop :=
  ∀ n, P15547826839538371809.a n = (A096886 n : ℚ)

end A096886

/-! ## A096886.P8443163697543060247

`2^(n-1)*A029744(n+2)`
-/

namespace A096886.P8443163697543060247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A029744 (n + 2) : ℚ)

end

end A096886.P8443163697543060247

namespace A096886

/-- `2^(n-1)*A029744(n+2)` -/
def P8443163697543060247.Spec : Prop :=
  ∀ n, P8443163697543060247.a n = (A096886 n : ℚ)

end A096886

/-! ## A096886.P2201828142272668690

`2^(n-2)*A090989(n+1)`
-/

namespace A096886.P2201828142272668690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A090989 (n + 1) : ℚ)

end

end A096886.P2201828142272668690

namespace A096886

/-- `2^(n-2)*A090989(n+1)` -/
def P2201828142272668690.Spec : Prop :=
  ∀ n, P2201828142272668690.a n = (A096886 n : ℚ)

end A096886

/-! ## A096886.P10979294920466908312

`2^(n-2)*A063759(n+2)`
-/

namespace A096886.P10979294920466908312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A063759 (n + 2) : ℚ)

end

end A096886.P10979294920466908312

namespace A096886

/-- `2^(n-2)*A063759(n+2)` -/
def P10979294920466908312.Spec : Prop :=
  ∀ n, P10979294920466908312.a n = (A096886 n : ℚ)

end A096886

/-! ## A096886.P8759273082223619898

`2^(n-2)*A163978(n+2)`
-/

namespace A096886.P8759273082223619898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A163978 (n + 2) : ℚ)

end

end A096886.P8759273082223619898

namespace A096886

/-- `2^(n-2)*A163978(n+2)` -/
def P8759273082223619898.Spec : Prop :=
  ∀ n, P8759273082223619898.a n = (A096886 n : ℚ)

end A096886

/-! ## A096886.P17044933544857655090

`A029744(comp[2*(n+1)]+n+1)`
-/

namespace A096886.P17044933544857655090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n + 1)

end

end A096886.P17044933544857655090

namespace A096886

/-- `A029744(comp[2*(n+1)]+n+1)` -/
def P17044933544857655090.Spec : Prop :=
  ∀ n, P17044933544857655090.a n = A096886 n

end A096886

/-! ## A096886.P17493783751399836050

`A137529(A042948(n))`
-/

namespace A096886.P17493783751399836050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137529 (A042948 n).toNat

end

end A096886.P17493783751399836050

namespace A096886

/-- `A137529(A042948(n))` -/
def P17493783751399836050.Spec : Prop :=
  ∀ n, P17493783751399836050.a n = A096886 n

end A096886

/-! ## A096886.P2501366931256637835

`A074323(A047239(n+1))`
-/

namespace A096886.P2501366931256637835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074323 (A047239 (n + 1)).toNat

end

end A096886.P2501366931256637835

namespace A096886

/-- `A074323(A047239(n+1))` -/
def P2501366931256637835.Spec : Prop :=
  ∀ n, P2501366931256637835.a n = A096886 n

end A096886

/-! ## A096886.P4382404243716239182

`A074323(A004442(3*n))`
-/

namespace A096886.P4382404243716239182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074323 (A004442 (3 * n)).toNat

end

end A096886.P4382404243716239182

namespace A096886

/-- `A074323(A004442(3*n))` -/
def P4382404243716239182.Spec : Prop :=
  ∀ n, P4382404243716239182.a n = A096886 n

end A096886

/-! ## A096886.P16812016512395257186

`A016116(n)*A084221(n)`
-/

namespace A096886.P16812016512395257186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n * A084221 n

end

end A096886.P16812016512395257186

namespace A096886

/-- `A016116(n)*A084221(n)` -/
def P16812016512395257186.Spec : Prop :=
  ∀ n, P16812016512395257186.a n = A096886 n

end A096886

/-! ## A096886.P15837362408777545724

`A074323(A047225(n+1)+1)`
-/

namespace A096886.P15837362408777545724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074323 (A047225 (n + 1) + 1).toNat

end

end A096886.P15837362408777545724

namespace A096886

/-- `A074323(A047225(n+1)+1)` -/
def P15837362408777545724.Spec : Prop :=
  ∀ n, P15837362408777545724.a n = A096886 n

end A096886

/-! ## A096886.P6191028233233322452

`A164073(n+1)*A213173(n)`
-/

namespace A096886.P6191028233233322452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164073 (n + 1) * A213173 n

end

end A096886.P6191028233233322452

namespace A096886

/-- `A164073(n+1)*A213173(n)` -/
def P6191028233233322452.Spec : Prop :=
  ∀ n, P6191028233233322452.a n = A096886 n

end A096886

/-!
# A096887: Initial values for f(x)=phi(sigma(x)) such that iteration of f ends in cycle of length=2.

The programs for A096887, there is no canonical definition to state claims against.
-/

/-! ## A096887.P6505734864715281478

`eq[4, A082991(n+1)]+1`
-/

namespace A096887.P6505734864715281478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082991 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A096887.P6505734864715281478

/-! ## A096887.P7510231300393527618

`eq[2, A095955(n+1)]+1`
-/

namespace A096887.P7510231300393527618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095955 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A096887.P7510231300393527618

/-! ## A096887.P2855720503361934802

`eq[2, A095955(A028310(n))]`
-/

namespace A096887.P2855720503361934802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095955 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A096887.P2855720503361934802

/-! ## A096887.P1918250913946240733

`A020725(eq[2, A095955(n+1)])`
-/

namespace A096887.P1918250913946240733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095955 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A096887.P1918250913946240733

/-! ## A096887.P15998926918148010992

`A065475(eq[2, A095955(n+1)])`
-/

namespace A096887.P15998926918148010992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095955 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A096887.P15998926918148010992

/-! ## A096887.P18440716880469393465

`eq[2, A095955(A000007(n)+n)]`
-/

namespace A096887.P18440716880469393465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095955 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A096887.P18440716880469393465

/-! ## A096887.P400077381731086546

`eq[2, A095955(A000038(n)+n)]`
-/

namespace A096887.P400077381731086546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095955 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A096887.P400077381731086546

/-! ## A096887.P5198678885392335322

`eq[2, A096993(A000203(n+1))]+1`
-/

namespace A096887.P5198678885392335322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096993 (A000203 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A096887.P5198678885392335322

/-! ## A096887.P3620524307736362159

`eq[2, A095955(A065033(2*n))]`
-/

namespace A096887.P3620524307736362159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095955 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A096887.P3620524307736362159

/-! ## A096887.P14166351396210241920

`eq[2, A095955(A233583(n+1))]`
-/

namespace A096887.P14166351396210241920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095955 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A096887.P14166351396210241920

/-!
# A096891: Least hypotenuse of primitive Pythagorean triangles with odd leg 2n+1.

The programs for A096891, there is no canonical definition to state claims against.
-/

/-! ## A096891.P10352553324711434528

`A096892(n+1)-A096894(n+1)`
-/

namespace A096891.P10352553324711434528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096892 (n + 1) - A096894 (n + 1)

end

end A096891.P10352553324711434528

/-! ## A096891.P11523022105695515294

`A004525(A081403(2*n+3))`
-/

namespace A096891.P11523022105695515294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A081403 (2 * n + 3)).toNat

end

end A096891.P11523022105695515294

/-! ## A096891.P10386082192046568417

`A110654(A081403(Δ[(n+1)²]))`
-/

namespace A096891.P10386082192046568417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A081403 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A096891.P10386082192046568417

/-! ## A096891.P13938510517685623313

`A004525(A008475((2*n+3)²))`
-/

namespace A096891.P13938510517685623313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A008475 ((2 * n + 3) ^ 2)).toNat

end

end A096891.P13938510517685623313

/-! ## A096891.P1848421442848752163

`A004526(A159077((2*n+3)²))`
-/

namespace A096891.P1848421442848752163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A159077 ((2 * n + 3) ^ 2)).toNat

end

end A096891.P1848421442848752163

/-!
# A096892: Least semiperimeter of primitive Pythagorean triangles with odd leg 2n+1.

The programs for A096892, there is no canonical definition to state claims against.
-/

/-! ## A096892.P6263174512340665120

`A096894(n+1)+A096891(n+1)`
-/

namespace A096892.P6263174512340665120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096894 (n + 1) + A096891 (n + 1)

end

end A096892.P6263174512340665120

/-! ## A096892.P12800951464637471695

`A004525(A034699((2*n+3)²))+n+1`
-/

namespace A096892.P12800951464637471695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A034699 ((2 * n + 3) ^ 2)).toNat + (n + 1 : ℤ)

end

end A096892.P12800951464637471695

/-! ## A096892.P3654001071995506191

`A004525(A324388((2*n+3)²))+n+1`
-/

namespace A096892.P3654001071995506191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A324388 ((2 * n + 3) ^ 2)).toNat + (n + 1 : ℤ)

end

end A096892.P3654001071995506191

/-! ## A096892.P13583064142292871798

`A052938(A324388((2*n+3)²)+Δ[n²])`
-/

namespace A096892.P13583064142292871798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A324388 ((2 * n + 3) ^ 2) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A096892.P13583064142292871798

/-! ## A096892.P14361661406343692561

`A029579(A034699(2*n+3)²+2*n+1)`
-/

namespace A096892.P14361661406343692561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (A034699 (2 * n + 3) ^ 2 + (2 * n + 1 : ℤ)).toNat

end

end A096892.P14361661406343692561

/-!
# A096893: Least area/6 of primitive Pythagorean triangles with odd leg 2n+1.

The programs for A096893, there is no canonical definition to state claims against.
-/

/-! ## A096893.P8732951878708422628

`(2*n+3)*A096895(n+1)/3`
-/

namespace A096893.P8732951878708422628
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℚ) * ((A096895 (n + 1) : ℚ) / 3)

end

end A096893.P8732951878708422628

/-! ## A096893.P2136300533295481598

`A096895(n+1)/3*A144396(n+1)`
-/

namespace A096893.P2136300533295481598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096895 (n + 1) : ℚ) / 3 * (A144396 (n + 1) : ℚ)

end

end A096893.P2136300533295481598

/-! ## A096893.P10733831101277630461

`A096892(n+1)/6*A096894(n+1)`
-/

namespace A096893.P10733831101277630461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096892 (n + 1) : ℚ) / 6 * (A096894 (n + 1) : ℚ)

end

end A096893.P10733831101277630461

/-! ## A096893.P3363365751807078665

`A255588(Δ[A005563(n)]*A096895(n+1))`
-/

namespace A096893.P3363365751807078665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255588 ((f1 (n + 1) - f1 n) * A096895 (n + 1)).toNat

end

end A096893.P3363365751807078665

/-! ## A096893.P5889347767526636539

`A255588(A096895(n+1)*A144396(n+1))`
-/

namespace A096893.P5889347767526636539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255588 (A096895 (n + 1) * A144396 (n + 1)).toNat

end

end A096893.P5889347767526636539

/-!
# A096894: Least inradius of primitive Pythagorean triangles with odd leg 2n+1.

The programs for A096894, there is no canonical definition to state claims against.
-/

/-! ## A096894.P13257708375566092274

`A096892(n+1)-A096891(n+1)`
-/

namespace A096894.P13257708375566092274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096892 (n + 1) - A096891 (n + 1)

end

end A096894.P13257708375566092274

/-! ## A096894.P1051145928952331558

`A096892(C(n+1, n))%A096891(n+1)`
-/

namespace A096894.P1051145928952331558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096892 (Nat.choose (n + 1) n)) (A096891 (n + 1))

end

end A096894.P1051145928952331558

/-! ## A096894.P2781464776510335214

`A096892((n+2+n)/2)%A096891(n+1)`
-/

namespace A096894.P2781464776510335214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096892 (SequenceMachineLib.roundAway ((n + 2 + n : ℚ) / 2)).toNat) (A096891 (n + 1))

end

end A096894.P2781464776510335214

/-! ## A096894.P11637314368826219510

`A028310(A096892(n+1)%A096891(n+1))`
-/

namespace A096894.P11637314368826219510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A096892 (n + 1)) (A096891 (n + 1))).toNat

end

end A096894.P11637314368826219510

/-! ## A096894.P18251029880354393024

`(A096892(n+1)+A046092(n)%2)%A096891(n+1)`
-/

namespace A096894.P18251029880354393024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096892 (n + 1) + Int.tmod (A046092 n) 2) (A096891 (n + 1))

end

end A096894.P18251029880354393024

/-!
# A096895: a(n) = A088557(n)/4.

The programs for A096895, there is no canonical definition to state claims against.
-/

/-! ## A096895.P10941275726792243236

`A088557(n+1)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A096895.P10941275726792243236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088557 (n + 1) : ℚ) / 4

end

end A096895.P10941275726792243236

/-! ## A096895.P1243903026650316665

`A002265(A088557(n+1))`
-/

namespace A096895.P1243903026650316665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A088557 (n + 1)).toNat

end

end A096895.P1243903026650316665

/-! ## A096895.P14332738018239432540

`A008624(A088557(n+1)+1)`
-/

namespace A096895.P14332738018239432540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A088557 (n + 1) + 1).toNat

end

end A096895.P14332738018239432540

/-! ## A096895.P17840699034836676285

`A025480(A088557(n+1)+1)`
-/

namespace A096895.P17840699034836676285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A088557 (n + 1) + 1).toNat

end

end A096895.P17840699034836676285

/-! ## A096895.P12159700471508246130

`A059169(A088557(n+1)+1)`
-/

namespace A096895.P12159700471508246130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (A088557 (n + 1) + 1).toNat

end

end A096895.P12159700471508246130

/-! ## A096895.P16557723378186923641

`A246552(A088557(n+1)+1)`
-/

namespace A096895.P16557723378186923641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246552 (A088557 (n + 1) + 1).toNat

end

end A096895.P16557723378186923641

/-! ## A096895.P14221898473966246731

`A008621(A088557(n+1)-1)`
-/

namespace A096895.P14221898473966246731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A088557 (n + 1) - 1).toNat

end

end A096895.P14221898473966246731

/-! ## A096895.P17028891524156044813

`A110653(A088557(n+1)-1)`
-/

namespace A096895.P17028891524156044813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110653 (A088557 (n + 1) - 1).toNat

end

end A096895.P17028891524156044813

/-! ## A096895.P78134393095329336

`A003602(A088557(n+1)-2)`
-/

namespace A096895.P78134393095329336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A088557 (n + 1) - 2).toNat

end

end A096895.P78134393095329336

/-! ## A096895.P16496882047498600685

`A060819(lcm(2, A088557(n+1)))`
-/

namespace A096895.P16496882047498600685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (Int.lcm 2 (A088557 (n + 1)))

end

end A096895.P16496882047498600685

/-!
# A096896: Least hypotenuse of primitive Pythagorean triangles with even leg 4n.

The programs for A096896, there is no canonical definition to state claims against.
-/

/-! ## A096896.P11220735437717773302

`4*(n+1)+A076388(2*(n+1))²`
-/

namespace A096896.P11220735437717773302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) + A076388 (2 * (n + 1)) ^ 2

end

end A096896.P11220735437717773302

/-! ## A096896.P15479642537540020014

`A087475(A076388(2*(n+1)))+4*n`
-/

namespace A096896.P15479642537540020014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087475 (A076388 (2 * (n + 1))).toNat + (4 * n : ℤ)

end

end A096896.P15479642537540020014

/-! ## A096896.P5193503918799390730

`A034699(2*(n+1))²+A284600(2*(n+1))²`
-/

namespace A096896.P5193503918799390730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (2 * (n + 1)) ^ 2 + A284600 (2 * (n + 1)) ^ 2

end

end A096896.P5193503918799390730

/-! ## A096896.P6723462644062606925

`A052128(2*(n+1))²+A354933(2*(n+1))²`
-/

namespace A096896.P6723462644062606925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052128 (2 * (n + 1)) ^ 2 + A354933 (2 * (n + 1)) ^ 2

end

end A096896.P6723462644062606925

/-! ## A096896.P13056561455356420240

`(A354933(2*(n+1))+A052128(2*(n+1)))*A354933(2*(n+1))-A096899(n+1)`
-/

namespace A096896.P13056561455356420240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A354933 (2 * (n + 1)) + A052128 (2 * (n + 1))) * A354933 (2 * (n + 1)) - A096899 (n + 1)

end

end A096896.P13056561455356420240

/-! ## A096896.P12756030356497299181

`A096897(n+1)-A096899(n+1)`
-/

namespace A096896.P12756030356497299181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096897 (n + 1) - A096899 (n + 1)

end

end A096896.P12756030356497299181

/-! ## A096896.P9182659404380429804

`A096897(n+1)-(2*(n+1)-A052128(2*(n+1))²)`
-/

namespace A096896.P9182659404380429804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096897 (n + 1) - ((2 * (n + 1) : ℤ) - A052128 (2 * (n + 1)) ^ 2)

end

end A096896.P9182659404380429804

/-! ## A096896.P17283044713063088250

`A096897(n+1)-(A005408(n)+1-A052128(2*(n+1))²)`
-/

namespace A096896.P17283044713063088250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096897 (n + 1) - (A005408 n + (1 - A052128 (2 * (n + 1)) ^ 2))

end

end A096896.P17283044713063088250

/-! ## A096896.P8779937953567596486

`A096897(n+1)-A052128(2*(n+1))*A076388(2*(n+1))`
-/

namespace A096896.P8779937953567596486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096897 (n + 1) - A052128 (2 * (n + 1)) * A076388 (2 * (n + 1))

end

end A096896.P8779937953567596486

/-!
# A096897: Least semiperimeter of primitive Pythagorean triangles with even leg 4n.

The programs for A096897, there is no canonical definition to state claims against.
-/

/-! ## A096897.P11308318639333578102

`A354933(2*(n+1))²+2*(n+1)`
-/

namespace A096897.P11308318639333578102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354933 (2 * (n + 1)) ^ 2 + (2 * (n + 1) : ℤ)

end

end A096897.P11308318639333578102

/-! ## A096897.P11751713532222149500

`A096899(n+1)+A096896(n+1)`
-/

namespace A096897.P11751713532222149500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096899 (n + 1) + A096896 (n + 1)

end

end A096897.P11751713532222149500

/-! ## A096897.P953588412518613179

`A096896(n+1)+2*(n+1)-A052128(2*(n+1))²`
-/

namespace A096897.P953588412518613179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096896 (n + 1) + ((2 * (n + 1) : ℤ) - A052128 (2 * (n + 1)) ^ 2)

end

end A096897.P953588412518613179

/-! ## A096897.P10774682027383780238

`4*(n+1)+A076388(2*(n+1))*A354933(2*(n+1))`
-/

namespace A096897.P10774682027383780238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) + A076388 (2 * (n + 1)) * A354933 (2 * (n + 1))

end

end A096897.P10774682027383780238

/-! ## A096897.P765890882534588130

`A096899(n+1)+A087475(A076388(2*(n+1)))+4*n`
-/

namespace A096897.P765890882534588130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096899 (n + 1) + (A087475 (A076388 (2 * (n + 1))).toNat + (4 * n : ℤ))

end

end A096897.P765890882534588130

/-! ## A096897.P3028516043868241930

`A096896(n+1)+A005408(n)+1-A052128(2*(n+1))²`
-/

namespace A096897.P3028516043868241930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096896 (n + 1) + (A005408 n + (1 - A052128 (2 * (n + 1)) ^ 2))

end

end A096897.P3028516043868241930

/-! ## A096897.P16353290799428278929

`A096896(n+1)+A005843(n)+2-A052128(2*(n+1))²`
-/

namespace A096897.P16353290799428278929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096896 (n + 1) + (A005843 n + (2 - A052128 (2 * (n + 1)) ^ 2))

end

end A096897.P16353290799428278929

/-! ## A096897.P17297244916794559181

`A096896(n+1)+A052128(2*(n+1))*A076388(2*(n+1))`
-/

namespace A096897.P17297244916794559181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096896 (n + 1) + A052128 (2 * (n + 1)) * A076388 (2 * (n + 1))

end

end A096897.P17297244916794559181

/-! ## A096897.P9879244142080712547

`(A354933(2*(n+1))+A052128(2*(n+1)))*A354933(2*(n+1))`
-/

namespace A096897.P9879244142080712547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A354933 (2 * (n + 1)) + A052128 (2 * (n + 1))) * A354933 (2 * (n + 1))

end

end A096897.P9879244142080712547

/-!
# A096898: Least area/6 of primitive Pythagorean triangles with even leg 4n.

The programs for A096898, there is no canonical definition to state claims against.
-/

/-! ## A096898.P3274058089705771733

`(n+1)/3*A088558(n+1)`
-/

namespace A096898.P3274058089705771733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 3 * (A088558 (n + 1) : ℚ)

end

end A096898.P3274058089705771733

/-! ## A096898.P13244155116910775012

`lcm(n+1, A088558(Δ[n²]-n))/3`
-/

namespace A096898.P13244155116910775012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A088558 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat) : ℚ) / 3

end

end A096898.P13244155116910775012

/-! ## A096898.P8759001223201525227

`A096897(n+1)/6*A096899(n+1)`
-/

namespace A096898.P8759001223201525227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096897 (n + 1) : ℚ) / 6 * (A096899 (n + 1) : ℚ)

end

end A096898.P8759001223201525227

/-! ## A096898.P3714646558979783082

`A255588((n+1)*A088558(n+1))`
-/

namespace A096898.P3714646558979783082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255588 ((n + 1 : ℤ) * A088558 (n + 1)).toNat

end

end A096898.P3714646558979783082

/-! ## A096898.P14397770700506189290

`A255588(lcm(n+1, A088558(n+1)))`
-/

namespace A096898.P14397770700506189290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255588 (Int.lcm (n + 1 : ℤ) (A088558 (n + 1)))

end

end A096898.P14397770700506189290

/-!
# A096899: Least inradius of primitive Pythagorean triangles with even leg 4n.

The programs for A096899, there is no canonical definition to state claims against.
-/

/-! ## A096899.P14769456607490730309

`2*(n+1)-A052128(2*(n+1))²`
-/

namespace A096899.P14769456607490730309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A052128 (2 * (n + 1)) ^ 2

end

end A096899.P14769456607490730309

/-! ## A096899.P1670053934430814214

`A005408(n)+1-A052128(2*(n+1))²`
-/

namespace A096899.P1670053934430814214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n + (1 - A052128 (2 * (n + 1)) ^ 2)

end

end A096899.P1670053934430814214

/-! ## A096899.P5843424647336705314

`A005843(n)+2-A052128(2*(n+1))²`
-/

namespace A096899.P5843424647336705314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (2 - A052128 (2 * (n + 1)) ^ 2)

end

end A096899.P5843424647336705314

/-! ## A096899.P13238525133158551967

`A052128(2*(n+1))*A076388(2*(n+1))`
-/

namespace A096899.P13238525133158551967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052128 (2 * (n + 1)) * A076388 (2 * (n + 1))

end

end A096899.P13238525133158551967

/-! ## A096899.P7395393468044018152

`(A354933(2*(n+1))-A052128(2*(n+1)))*A052128(2*(n+1))`
-/

namespace A096899.P7395393468044018152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A354933 (2 * (n + 1)) - A052128 (2 * (n + 1))) * A052128 (2 * (n + 1))

end

end A096899.P7395393468044018152

/-! ## A096899.P7211442577088646110

`(A354933(2*(n+1))-A076388(2*(n+1)))*A076388(2*(n+1))`
-/

namespace A096899.P7211442577088646110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A354933 (2 * (n + 1)) - A076388 (2 * (n + 1))) * A076388 (2 * (n + 1))

end

end A096899.P7211442577088646110

/-! ## A096899.P7381503518507750531

`A096897(n+1)-A096896(n+1)`
-/

namespace A096899.P7381503518507750531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096897 (n + 1) - A096896 (n + 1)

end

end A096899.P7381503518507750531

/-! ## A096899.P18177541949329598309

`A096897(A000027(n+1))%A096896(n+1)`
-/

namespace A096899.P18177541949329598309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096897 (A000027 (n + 1)).toNat) (A096896 (n + 1))

end

end A096899.P18177541949329598309

/-! ## A096899.P7607746651903272697

`A028310(A096897(n+1)%A096896(n+1))`
-/

namespace A096899.P7607746651903272697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A096897 (n + 1)) (A096896 (n + 1))).toNat

end

end A096899.P7607746651903272697

/-! ## A096899.P12859897778063281781

`A005843(n+1)-A052128(A005843(n+1)²)`
-/

namespace A096899.P12859897778063281781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) - A052128 (A005843 (n + 1) ^ 2).toNat

end

end A096899.P12859897778063281781

