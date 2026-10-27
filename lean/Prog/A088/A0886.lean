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
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
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
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
# A088600: Number of simple loops with n elements: loops with no real substructure, every subset which is closed under the operation is either {E} or the whole set.

The programs for A088600, there is no canonical definition to state claims against.
-/

/-! ## A088600.P10336230566726359958

`A054361(n+1)+A005574(A208222(n))`
-/

namespace A088600.P10336230566726359958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054361 (n + 1) + A005574 (A208222 n).toNat

end

end A088600.P10336230566726359958

/-! ## A088600.P8826279140841830372

`A179009(A039804(n+5)+A014521(n))`
-/

namespace A088600.P8826279140841830372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179009 (A039804 (n + 5) + A014521 n).toNat

end

end A088600.P8826279140841830372

/-! ## A088600.P955142434735103174

`A025792(A278461(n)%A003266(n+1))`
-/

namespace A088600.P955142434735103174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025792 (Int.tmod (A278461 n) (A003266 (n + 1))).toNat

end

end A088600.P955142434735103174

/-!
# A088601: Number of steps to reach 0 when iterating A261424(x) = x - (the largest palindrome less than x), starting at n.

The programs for A088601, there is no canonical definition to state claims against.
-/

/-! ## A088601.P11013987986871644582

`A096825(A048519(n+1))*A261675(n+1)`
-/

namespace A088601.P11013987986871644582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096825 (A048519 (n + 1)).toNat * A261675 (n + 1)

end

end A088601.P11013987986871644582

/-!
# A088603: a(n) = smallest prime in which n substrings containing the most significant digit are primes.

The programs for A088603, there is no canonical definition to state claims against.
-/

/-! ## A088603.P17399621765293224255

`A127889(n+1)`
-/

namespace A088603.P17399621765293224255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127889 (n + 1)

end

end A088603.P17399621765293224255

/-! ## A088603.P1954734120321241194

`record[A127889(A133310(n))]`
-/

namespace A088603.P1954734120321241194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127889 (A133310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088603.P1954734120321241194

/-! ## A088603.P12690172195272201467

`record[A127889(A328399(n))]`
-/

namespace A088603.P12690172195272201467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127889 (A328399 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088603.P12690172195272201467

/-! ## A088603.P353680163812132772

`record[A127889(∑[A020985(n)])]`
-/

namespace A088603.P353680163812132772
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127889 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088603.P353680163812132772

/-!
# A088606: Smallest number k such that concatenation of k and prime(n) is a prime, or 0 if no other number exists. a(1) = a(3) = 0.

The programs for A088606, there is no canonical definition to state claims against.
-/

/-! ## A088606.P1577827435600886926

`A000030(A065112(n+1))`
-/

namespace A088606.P1577827435600886926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A065112 (n + 1)).toNat

end

end A088606.P1577827435600886926

/-! ## A088606.P1928237833399634237

`A000030(A256480(A008578(n+2)))`
-/

namespace A088606.P1928237833399634237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A256480 (A008578 (n + 2)).toNat).toNat

end

end A088606.P1928237833399634237

/-! ## A088606.P15046775179924326483

`A000030(∑{p}[A000040(n+1), A256480(#)])`
-/

namespace A088606.P15046775179924326483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A256480 p).toNat

end

end A088606.P15046775179924326483

/-! ## A088606.P13357637250537330631

`A000030(∑{p}[A095320(n+1), A256480(#)])`
-/

namespace A088606.P13357637250537330631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095320 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A256480 p).toNat

end

end A088606.P13357637250537330631

/-!
# A088607: a(1) = 1. For n > 1, a(n) = prime(n) if n is prime, else a(n) = composite(n).

The programs for A088607, there is no canonical definition to state claims against.
-/

/-! ## A088607.P8760653169256501626

`A073846(A103517(n)+A066247(n+1))`
-/

namespace A088607.P8760653169256501626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A103517 n + A066247 (n + 1)).toNat

end

end A088607.P8760653169256501626

/-! ## A088607.P6457021376979586047

`A026239(A236676(n+1)-A000007(n))`
-/

namespace A088607.P6457021376979586047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (A236676 (n + 1) - A000007 n).toNat

end

end A088607.P6457021376979586047

/-! ## A088607.P13743502692449095777

`A073846(or(A005171(n+1), A103517(n)))`
-/

namespace A088607.P13743502692449095777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (Int.lor (A005171 (n + 1)) (A103517 n)).toNat

end

end A088607.P13743502692449095777

/-! ## A088607.P12705814395335357246

`A073846(xor(A062545(n), A080339(n+1)))`
-/

namespace A088607.P12705814395335357246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (Int.xor (A062545 n) (A080339 (n + 1))).toNat

end

end A088607.P12705814395335357246

/-! ## A088607.P3391311117322769282

`A026239(abs(A236676(n+1)-A151878(n)))`
-/

namespace A088607.P3391311117322769282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 |A236676 (n + 1) - A151878 n|.toNat

end

end A088607.P3391311117322769282

/-! ## A088607.P12552337694160121601

`A026239(abs(A236676(n+1)-A151909(n)))`
-/

namespace A088607.P12552337694160121601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 |A236676 (n + 1) - A151909 n|.toNat

end

end A088607.P12552337694160121601

/-! ## A088607.P13851354220695881193

`A026239(abs(A236676(n+1)-A151933(n)))`
-/

namespace A088607.P13851354220695881193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 |A236676 (n + 1) - A151933 n|.toNat

end

end A088607.P13851354220695881193

/-! ## A088607.P17334267229280199139

`A073846(A114637(n+1)+A014684(n+1))`
-/

namespace A088607.P17334267229280199139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A114637 (n + 1) + A014684 (n + 1)).toNat

end

end A088607.P17334267229280199139

/-! ## A088607.P9876858000707034447

`A073846(A163300(n+1)+A005171(n+1))`
-/

namespace A088607.P9876858000707034447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A163300 (n + 1) + A005171 (n + 1)).toNat

end

end A088607.P9876858000707034447

/-! ## A088607.P3156898963064716115

`A073846(A103517(n)+1-A080339(n+1))`
-/

namespace A088607.P3156898963064716115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A103517 n + (1 - A080339 (n + 1))).toNat

end

end A088607.P3156898963064716115

/-!
# A088608: a(1) = 1, a(n) = prime(n) if n is composite else a(n) = composite(n).

The programs for A088608, there is no canonical definition to state claims against.
-/

/-! ## A088608.P3068944515651916891

`A236676(n+1)-floor(acot(n))`
-/

namespace A088608.P3068944515651916891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236676 (n + 1) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A088608.P3068944515651916891

/-! ## A088608.P8553420247071638209

`A026239(A088607(n+1))`
-/

namespace A088608.P8553420247071638209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (A088607 (n + 1)).toNat

end

end A088608.P8553420247071638209

/-! ## A088608.P11828160139696863013

`A171526(A236676(n+1))`
-/

namespace A088608.P11828160139696863013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171526 (A236676 (n + 1)).toNat

end

end A088608.P11828160139696863013

/-! ## A088608.P10794260773052717529

`A236676(n+1)-A000007(n)`
-/

namespace A088608.P10794260773052717529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236676 (n + 1) - A000007 n

end

end A088608.P10794260773052717529

/-! ## A088608.P3371124565442281159

`A236676(n+1)-A112316(n)`
-/

namespace A088608.P3371124565442281159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236676 (n + 1) - A112316 n

end

end A088608.P3371124565442281159

/-! ## A088608.P9121604688715488973

`A236676(n+1)-A151878(n)`
-/

namespace A088608.P9121604688715488973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236676 (n + 1) - A151878 n

end

end A088608.P9121604688715488973

/-! ## A088608.P18184684966457238760

`A236676(n+1)-A151909(n)`
-/

namespace A088608.P18184684966457238760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236676 (n + 1) - A151909 n

end

end A088608.P18184684966457238760

/-! ## A088608.P10844062727424819244

`A236676(n+1)-A151933(n)`
-/

namespace A088608.P10844062727424819244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236676 (n + 1) - A151933 n

end

end A088608.P10844062727424819244

/-! ## A088608.P18143744227408108091

`A236676(n+1)-A151934(n)`
-/

namespace A088608.P18143744227408108091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236676 (n + 1) - A151934 n

end

end A088608.P18143744227408108091

/-! ## A088608.P6201035706784569970

`A236676(n+1)-A151935(n)`
-/

namespace A088608.P6201035706784569970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236676 (n + 1) - A151935 n

end

end A088608.P6201035706784569970

/-!
# A088609: a(1) = 1, a(n) is the smallest squarefree number not included earlier if n is not squarefree, else n is the smallest nonsquarefree number.

The programs for A088609, there is no canonical definition to state claims against.
-/

/-! ## A088609.P2661901101536183664

`A088610(xor(A057427(n), A243352(n+1)))`
-/

namespace A088609.P2661901101536183664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088610 (Int.xor (A057427 n) (A243352 (n + 1))).toNat

end

end A088609.P2661901101536183664

/-! ## A088609.P3604882744839153189

`A075378(A243352(n+1))`
-/

namespace A088609.P3604882744839153189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075378 (A243352 (n + 1)).toNat

end

end A088609.P3604882744839153189

/-! ## A088609.P14462102448671515835

`A243346(xor(A057427(n), A243345(n+1)))`
-/

namespace A088609.P14462102448671515835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243346 (Int.xor (A057427 n) (A243345 (n + 1))).toNat

end

end A088609.P14462102448671515835

/-! ## A088609.P6151661402444936463

`A243346(xor(A062157(n)², A243345(n+1)))`
-/

namespace A088609.P6151661402444936463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243346 (Int.xor (A062157 n ^ 2) (A243345 (n + 1))).toNat

end

end A088609.P6151661402444936463

/-! ## A088609.P17129850392037440290

`A243344(xor(A057427(n), A243343(n+1)))`
-/

namespace A088609.P17129850392037440290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243344 (Int.xor (A057427 n) (A243343 (n + 1))).toNat

end

end A088609.P17129850392037440290

/-! ## A088609.P17144435515148983172

`A243344(xor(A057428(n)², A243343(n+1)))`
-/

namespace A088609.P17144435515148983172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243344 (Int.xor (A057428 n ^ 2) (A243343 (n + 1))).toNat

end

end A088609.P17144435515148983172

/-!
# A088610: Starting with n = 1, a(n) is the smallest squarefree number not included earlier if n is odd, else n is the smallest nonsquarefree number.

The programs for A088610, there is no canonical definition to state claims against.
-/

/-! ## A088610.P5137241256905022198

`A075378(A014681(n)+1)`
-/

namespace A088610.P5137241256905022198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075378 (A014681 n + 1).toNat

end

end A088610.P5137241256905022198

/-! ## A088610.P4881178759876573077

`A075378(A065190(n+1))`
-/

namespace A088610.P4881178759876573077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075378 (A065190 (n + 1)).toNat

end

end A088610.P4881178759876573077

/-! ## A088610.P5125404380578128713

`A075378(xor(1, A087156(n+1)))`
-/

namespace A088610.P5125404380578128713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075378 (Int.xor 1 (A087156 (n + 1))).toNat

end

end A088610.P5125404380578128713

/-! ## A088610.P16059194837540692071

`A075378(A062157(n)+1+n)`
-/

namespace A088610.P16059194837540692071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075378 (A062157 n + 1 + (n : ℤ)).toNat

end

end A088610.P16059194837540692071

/-! ## A088610.P14171708367465291563

`A075378(xor(1, A057427(n)+n))`
-/

namespace A088610.P14171708367465291563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075378 (Int.xor 1 (A057427 n + (n : ℤ))).toNat

end

end A088610.P14171708367465291563

/-! ## A088610.P5869512185477187088

`A075378(xor(n+1, A019426(2*n)))`
-/

namespace A088610.P5869512185477187088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075378 (Int.xor (n + 1 : ℤ) (A019426 (2 * n))).toNat

end

end A088610.P5869512185477187088

/-! ## A088610.P15841397777162431707

`A075378(xor(n+1, and(1, A000040(n+1))))`
-/

namespace A088610.P15841397777162431707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075378 (Int.xor (n + 1 : ℤ) (Int.land 1 (A000040 (n + 1)))).toNat

end

end A088610.P15841397777162431707

/-! ## A088610.P14992043664898977884

`A075378(xor(n+1, ceil(n/A000041(n))))`
-/

namespace A088610.P14992043664898977884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075378 (Int.xor (n + 1 : ℤ) ⌈(n : ℚ) / (A000041 n : ℚ)⌉).toNat

end

end A088610.P14992043664898977884

/-! ## A088610.P12433329091526520347

`A088609(A075378(n+1))`
-/

namespace A088610.P12433329091526520347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088609 (A075378 (n + 1)).toNat

end

end A088610.P12433329091526520347

/-!
# A088611: a(1) = 1, a(n) = n-th squarefree number if n is squarefree else a(n) is the n-th nonsquarefree number.

The programs for A088611, there is no canonical definition to state claims against.
-/

/-! ## A088611.P17476221119134679711

`A088610(A007424(n+1)+2*n)`
-/

namespace A088611.P17476221119134679711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088610 (A007424 (n + 1) + (2 * n : ℤ)).toNat

end

end A088611.P17476221119134679711

/-! ## A088611.P5630842616043975365

`A088610(A007424(n+1)+n+n)`
-/

namespace A088611.P5630842616043975365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088610 (A007424 (n + 1) + (n : ℤ) + (n : ℤ)).toNat

end

end A088611.P5630842616043975365

/-! ## A088611.P6326530681172193264

`A088610(A107078(n+1)+2*n+1)`
-/

namespace A088611.P6326530681172193264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088610 (A107078 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A088611.P6326530681172193264

/-! ## A088611.P2245085569851703129

`A088610(2*(n+1)-A008966(n+1))`
-/

namespace A088611.P2245085569851703129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088610 ((2 * (n + 1) : ℤ) - A008966 (n + 1)).toNat

end

end A088611.P2245085569851703129

/-! ## A088611.P6856847969247977437

`A088610(2*(n+1)-abs(A008683(n+1)))`
-/

namespace A088611.P6856847969247977437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088610 ((2 * (n + 1) : ℤ) - |A008683 (n + 1)|).toNat

end

end A088611.P6856847969247977437

/-! ## A088611.P3906800318449303896

`A088610(A005843(n)+2-A008966(n+1))`
-/

namespace A088611.P3906800318449303896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088610 (A005843 n + (2 - A008966 (n + 1))).toNat

end

end A088611.P3906800318449303896

/-!
# A088612: a(1) = 1, a(n) = n-th squarefree number if n is not squarefree else a(n) is the n-th nonsquarefree number.

The programs for A088612, there is no canonical definition to state claims against.
-/

/-! ## A088612.P16473249024324085720

`A088610(A103517(n)-A107078(n+1))`
-/

namespace A088612.P16473249024324085720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088610 (A103517 n - A107078 (n + 1)).toNat

end

end A088612.P16473249024324085720

/-! ## A088612.P7406787511851965189

`A088610(A103517(n)-log2(A007424(n+1)))`
-/

namespace A088612.P7406787511851965189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088610 (SequenceMachineLib.roundAway ((A103517 n : ℝ) - Real.logb 2 (A007424 (n + 1) : ℝ))).toNat

end

end A088612.P7406787511851965189

/-! ## A088612.P17929890728246077462

`A088610(A005843(n+1)-A087049(n+1))`
-/

namespace A088612.P17929890728246077462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088610 (A005843 (n + 1) - A087049 (n + 1)).toNat

end

end A088612.P17929890728246077462

/-! ## A088612.P14510733964864384430

`A088610(A103517(n)+1-A007424(n+1))`
-/

namespace A088612.P14510733964864384430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088610 (A103517 n + (1 - A007424 (n + 1))).toNat

end

end A088612.P14510733964864384430

/-! ## A088612.P14261701786057694114

`A088610(A004275(n+2)-A087049(n+1))`
-/

namespace A088612.P14261701786057694114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088610 (A004275 (n + 2) - A087049 (n + 1)).toNat

end

end A088612.P14261701786057694114

/-!
# A088613: Smallest nonsquarefree multiple of n.

The programs for A088613, there is no canonical definition to state claims against.
-/

/-! ## A088613.P7416586690208052496

`lcm(n+1, A020639(A082894(n+1))²)`
-/

namespace A088613.P7416586690208052496
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A020639 (A082894 (n + 1)).toNat ^ 2)

end

end A088613.P7416586690208052496

/-! ## A088613.P3791331028012887954

`lcm(n+1, A003484(A129575(n+1)))`
-/

namespace A088613.P3791331028012887954
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A003484 (A129575 (n + 1)).toNat)

end

end A088613.P3791331028012887954

/-! ## A088613.P14224503313799629474

`lcm(A060135(2*n+1)², A132264(n+1))`
-/

namespace A088613.P14224503313799629474
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A060135 (2 * n + 1) ^ 2) (A132264 (n + 1))

end

end A088613.P14224503313799629474

/-!
# A088617: Triangle read by rows: T(n,k) = C(n+k,n)*C(n,k)/(k+1), for n >= 0, k = 0..n.

The programs for A088617, the canonical program `A088617.P12881547544489177211` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088617 has offset 0).

The definition of A088617 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A088617.P12881547544489177211

`C(row(n)+col(n), row(n))*C(row(n), col(n))/(col(n)+1)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A088617

/-- `C(row(n)+col(n), row(n))*C(row(n), col(n))/(col(n)+1)` -/
def P12881547544489177211.Spec : Prop :=
  ∀ n, P12881547544489177211.a n = (A088617 n : ℚ)

end A088617

/-! ## A088617.P12003198639226379597

`A086810(n+1)+A086810(n)`
-/

namespace A088617.P12003198639226379597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086810 (n + 1) + A086810 n

end

end A088617.P12003198639226379597

namespace A088617

/-- `A086810(n+1)+A086810(n)` -/
def P12003198639226379597.Spec : Prop :=
  ∀ n, P12003198639226379597.a n = A088617 n

end A088617

/-! ## A088617.P1528694509801735224

`A057977(2*A002262(n))*A085478(n)`
-/

namespace A088617.P1528694509801735224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 (2 * A002262 n).toNat * A085478 n

end

end A088617.P1528694509801735224

namespace A088617

/-- `A057977(2*A002262(n))*A085478(n)` -/
def P1528694509801735224.Spec : Prop :=
  ∀ n, P1528694509801735224.a n = A088617 n

end A088617

/-! ## A088617.P2404491017015374610

`A057977(2*A144328(n+1))*A085478(n)`
-/

namespace A088617.P2404491017015374610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 (2 * A144328 (n + 1)).toNat * A085478 n

end

end A088617.P2404491017015374610

namespace A088617

/-- `A057977(2*A144328(n+1))*A085478(n)` -/
def P2404491017015374610.Spec : Prop :=
  ∀ n, P2404491017015374610.a n = A088617 n

end A088617

/-! ## A088617.P6505534040933306509

`A001263(n+1)/A007318(n)*A009766(n)`
-/

namespace A088617.P6505534040933306509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001263 (n + 1) : ℚ) / (A007318 n : ℚ) * (A009766 n : ℚ)

end

end A088617.P6505534040933306509

namespace A088617

/-- `A001263(n+1)/A007318(n)*A009766(n)` -/
def P6505534040933306509.Spec : Prop :=
  ∀ n, P6505534040933306509.a n = (A088617 n : ℚ)

end A088617

/-! ## A088617.P9229343536879950670

`A060693(A061579(n))`
-/

namespace A088617.P9229343536879950670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060693 (A061579 n).toNat

end

end A088617.P9229343536879950670

namespace A088617

/-- `A060693(A061579(n))` -/
def P9229343536879950670.Spec : Prop :=
  ∀ n, P9229343536879950670.a n = A088617 n

end A088617

/-! ## A088617.P2184440232809528858

`A063007(n)/A002260(n+1)`
-/

namespace A088617.P2184440232809528858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063007 n : ℚ) / (A002260 (n + 1) : ℚ)

end

end A088617.P2184440232809528858

namespace A088617

/-- `A063007(n)/A002260(n+1)` -/
def P2184440232809528858.Spec : Prop :=
  ∀ n, P2184440232809528858.a n = (A088617 n : ℚ)

end A088617

/-! ## A088617.P1814755023348254023

`A063007(n)/(A002262(n)+1)`
-/

namespace A088617.P1814755023348254023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063007 n : ℚ) / (A002262 n + 1 : ℚ)

end

end A088617.P1814755023348254023

namespace A088617

/-- `A063007(n)/(A002262(n)+1)` -/
def P1814755023348254023.Spec : Prop :=
  ∀ n, P1814755023348254023.a n = (A088617 n : ℚ)

end A088617

/-! ## A088617.P10973277263405967955

`A063007(n)/(log2(A059268(n))+1)`
-/

namespace A088617.P10973277263405967955
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A063007 n : ℝ) / (Real.logb 2 (A059268 n : ℝ) + 1)

end

end A088617.P10973277263405967955

namespace A088617

/-- `A063007(n)/(log2(A059268(n))+1)` -/
def P10973277263405967955.Spec : Prop :=
  ∀ n, P10973277263405967955.a n = (A088617 n : ℝ)

end A088617

/-! ## A088617.P17159554996624674378

`A104684(A061579(n))/(A127739(n+1)-A061579(n))`
-/

namespace A088617.P17159554996624674378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104684 (A061579 n).toNat : ℚ) / (A127739 (n + 1) - A061579 n : ℚ)

end

end A088617.P17159554996624674378

namespace A088617

/-- `A104684(A061579(n))/(A127739(n+1)-A061579(n))` -/
def P17159554996624674378.Spec : Prop :=
  ∀ n, P17159554996624674378.a n = (A088617 n : ℚ)

end A088617

/-! ## A088617.P16339552846047415336

`A080159(A245300(n))`
-/

namespace A088617.P16339552846047415336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080159 (A245300 n).toNat

end

end A088617.P16339552846047415336

namespace A088617

/-- `A080159(A245300(n))` -/
def P16339552846047415336.Spec : Prop :=
  ∀ n, P16339552846047415336.a n = A088617 n

end A088617

/-! ## A088617.P4197265583183853310

`A113025(n)/A166350(n+1)`
-/

namespace A088617.P4197265583183853310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113025 n : ℚ) / (A166350 (n + 1) : ℚ)

end

end A088617.P4197265583183853310

namespace A088617

/-- `A113025(n)/A166350(n+1)` -/
def P4197265583183853310.Spec : Prop :=
  ∀ n, P4197265583183853310.a n = (A088617 n : ℚ)

end A088617

/-! ## A088617.P16052099225244619155

`A253284(n)/A130493(n+1)`
-/

namespace A088617.P16052099225244619155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253284 n : ℚ) / (A130493 (n + 1) : ℚ)

end

end A088617.P16052099225244619155

namespace A088617

/-- `A253284(n)/A130493(n+1)` -/
def P16052099225244619155.Spec : Prop :=
  ∀ n, P16052099225244619155.a n = (A088617 n : ℚ)

end A088617

/-!
# A088622: Smallest prime obtained as the concatenation of a power of n followed by a 1, or 0 if no such number exists.

The programs for A088622, there is no canonical definition to state claims against.
-/

/-! ## A088622.P8896738696914663979

`A017281((n+1)^A088782(n+1))`
-/

namespace A088622.P8896738696914663979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A088782 (n + 1) : ℤ))).toNat

end

end A088622.P8896738696914663979

/-!
# A088625: a(n) = 14*binomial(n,8).

The programs for A088625, the canonical program `A088625.P2020191955663149875` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088625 has offset 0).

The definition of A088625 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `14*C(n, 8)` (program `A088625.P2020191955663149875`, by `A088625.P2020191955663149875.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A088625.P2020191955663149875

`14*C(n, 8)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A088625

/-- `14*C(n, 8)` -/
def P2020191955663149875.Spec : Prop :=
  ∀ n, (P2020191955663149875.a n : ℤ) = A088625 n

theorem P2020191955663149875.correct : P2020191955663149875.Spec := by
  intro n
  simp only [A088625]

end A088625

/-! ## A088625.P2867117201326631529

`Δ[14*A115205(n)]`
-/

namespace A088625.P2867117201326631529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  14 * A115205 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088625.P2867117201326631529

namespace A088625

/-- `Δ[14*A115205(n)]` -/
def P2867117201326631529.Spec : Prop :=
  ∀ n, P2867117201326631529.a n = A088625 n

theorem P2867117201326631529.correct : P2867117201326631529.Spec := by
  intro n
  simp only [A088625, Nat.add_sub_cancel, A088625.P2867117201326631529.f1, A088625.P2867117201326631529.a, A088625.P2020191955663149875.a, A115205, A115205.P18109322668786232172.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A088625

/-! ## A088625.P10401040973385131105

`14*(A008861(n)-A008860(n))`
-/

namespace A088625.P10401040973385131105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  14 * (A008861 n - A008860 n)

end

end A088625.P10401040973385131105

namespace A088625

/-- `14*(A008861(n)-A008860(n))` -/
def P10401040973385131105.Spec : Prop :=
  ∀ n, P10401040973385131105.a n = A088625 n

end A088625

/-! ## A088625.P13195060359770632716

`Δ[Δ[A088626(n)/3]]`
-/

namespace A088625.P13195060359770632716
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088626 n : ℚ) / 3

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088625.P13195060359770632716

namespace A088625

/-- `Δ[Δ[A088626(n)/3]]` -/
def P13195060359770632716.Spec : Prop :=
  ∀ n, P13195060359770632716.a n = (A088625 n : ℚ)

theorem P13195060359770632716.correct : P13195060359770632716.Spec := by
  intro n
  simp only [A088625, Nat.add_sub_cancel, A088625.P13195060359770632716.f2, A088625.P13195060359770632716.f1, A088625.P13195060359770632716.a, A088625.P2020191955663149875.a, A088626, A088626.P14761167228759543582.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A088625

/-! ## A088625.P12855394884436627228

`14*(A035040(n)-A035041(n))`
-/

namespace A088625.P12855394884436627228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  14 * (A035040 n - A035041 n)

end

end A088625.P12855394884436627228

namespace A088625

/-- `14*(A035040(n)-A035041(n))` -/
def P12855394884436627228.Spec : Prop :=
  ∀ n, P12855394884436627228.a n = A088625 n

end A088625

/-! ## A088625.P11654488389215241634

`14*A026729(A055999(n+6)-3)`
-/

namespace A088625.P11654488389215241634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  14 * A026729 (A055999 (n + 6) - 3).toNat

end

end A088625.P11654488389215241634

namespace A088625

/-- `14*A026729(A055999(n+6)-3)` -/
def P11654488389215241634.Spec : Prop :=
  ∀ n, P11654488389215241634.a n = A088625 n

end A088625

/-!
# A088626: a(n) = 42*binomial(n,10).

The programs for A088626, the canonical program `A088626.P14761167228759543582` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088626 has offset 0).

The definition of A088626 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `42*C(n, 10)` (program `A088626.P14761167228759543582`, by `A088626.P14761167228759543582.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A088626.P14761167228759543582

`42*C(n, 10)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A088626

/-- `42*C(n, 10)` -/
def P14761167228759543582.Spec : Prop :=
  ∀ n, (P14761167228759543582.a n : ℤ) = A088626 n

theorem P14761167228759543582.correct : P14761167228759543582.Spec := by
  intro n
  simp only [A088626]

end A088626

/-! ## A088626.P15297829765400711786

`42*(A008863(n)-A008862(n))`
-/

namespace A088626.P15297829765400711786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  42 * (A008863 n - A008862 n)

end

end A088626.P15297829765400711786

namespace A088626

/-- `42*(A008863(n)-A008862(n))` -/
def P15297829765400711786.Spec : Prop :=
  ∀ n, P15297829765400711786.a n = A088626 n

theorem P15297829765400711786.correct : P15297829765400711786.Spec := by
  intro n
  simp only [A088626, Nat.add_sub_cancel, A088626.P15297829765400711786.a, A088626.P14761167228759543582.a, A008862, A008862.P15109180093103356418.a, A008863, A008863.P10720815592373183918.a, A008861, A008861.P14057265660229562183.f1, A008861.P14057265660229562183.a, A008860, A008860.P18332775515594479900.a, A008859, A008859.P14957720110934266118.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A088626

/-! ## A088626.P16325073783362208459

`42*A023443(A212389(n))`
-/

namespace A088626.P16325073783362208459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  42 * A023443 (A212389 n).toNat

end

end A088626.P16325073783362208459

namespace A088626

/-- `42*A023443(A212389(n))` -/
def P16325073783362208459.Spec : Prop :=
  ∀ n, P16325073783362208459.a n = A088626 n

end A088626

/-! ## A088626.P16248093569308982389

`3*A047287(A143573(n))`
-/

namespace A088626.P16248093569308982389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A047287 (A143573 n).toNat

end

end A088626.P16248093569308982389

namespace A088626

/-- `3*A047287(A143573(n))` -/
def P16248093569308982389.Spec : Prop :=
  ∀ n, P16248093569308982389.a n = A088626 n

end A088626

/-! ## A088626.P11423059336386649720

`A002264(A351931(n)+n*(n-1)*(n-2)*(n-3)*(n-4)/120)`
-/

namespace A088626.P11423059336386649720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (SequenceMachineLib.roundAway ((A351931 n : ℚ) + (n : ℚ) * (((n : ℤ) - 1 : ℚ) * (((n : ℤ) - 2 : ℚ) * (((n : ℤ) - 3 : ℚ) * (((n : ℤ) - 4 : ℚ) / 120)))))).toNat

end

end A088626.P11423059336386649720

namespace A088626

/-- `A002264(A351931(n)+n*(n-1)*(n-2)*(n-3)*(n-4)/120)` -/
def P11423059336386649720.Spec : Prop :=
  ∀ n, P11423059336386649720.a n = A088626 n

end A088626

/-!
# A088627: Let 2n = r*s. Then a(n) = number of primes of the form r+s (r= 1 and s = 2n contributes 1 to the count if 2n+1 is prime).

The programs for A088627, the canonical program `A088627.P14290878190274737592` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088627 has offset 1).

The definition of A088627 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088627.P14290878190274737592

`A382983(2*(n+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A088627

/-- `A382983(2*(n+1))` -/
def P14290878190274737592.Spec : Prop :=
  ∀ n, P14290878190274737592.a n = A088627 (n + 1)

theorem P14290878190274737592.correct : P14290878190274737592.Spec := by
  intro n
  simp only [A088627, Nat.add_sub_cancel]

end A088627

/-! ## A088627.P560222375586337597

`A282849(2*(n+1))/2`
-/

namespace A088627.P560222375586337597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282849 (2 * (n + 1)) : ℚ) / 2

end

end A088627.P560222375586337597

namespace A088627

/-- `A282849(2*(n+1))/2` -/
def P560222375586337597.Spec : Prop :=
  ∀ n, P560222375586337597.a n = (A088627 (n + 1) : ℚ)

end A088627

/-! ## A088627.P8057951856814196502

`A004525(A282849(2*(n+1)))`
-/

namespace A088627.P8057951856814196502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A282849 (2 * (n + 1))).toNat

end

end A088627.P8057951856814196502

namespace A088627

/-- `A004525(A282849(2*(n+1)))` -/
def P8057951856814196502.Spec : Prop :=
  ∀ n, P8057951856814196502.a n = A088627 (n + 1)

end A088627

/-! ## A088627.P11706518999160612365

`A273943(A282849(2*n+2))`
-/

namespace A088627.P11706518999160612365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A282849 (2 * n + 2)).toNat

end

end A088627.P11706518999160612365

namespace A088627

/-- `A273943(A282849(2*n+2))` -/
def P11706518999160612365.Spec : Prop :=
  ∀ n, P11706518999160612365.a n = A088627 (n + 1)

end A088627

/-! ## A088627.P9607598815166573021

`A226107(A282849(2*(n+1))+1)`
-/

namespace A088627.P9607598815166573021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226107 (A282849 (2 * (n + 1)) + 1).toNat

end

end A088627.P9607598815166573021

namespace A088627

/-- `A226107(A282849(2*(n+1))+1)` -/
def P9607598815166573021.Spec : Prop :=
  ∀ n, P9607598815166573021.a n = A088627 (n + 1)

end A088627

/-! ## A088627.P8482080648788355602

`A249122(A282849(2*(n+1))+1)`
-/

namespace A088627.P8482080648788355602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249122 (A282849 (2 * (n + 1)) + 1).toNat

end

end A088627.P8482080648788355602

namespace A088627

/-- `A249122(A282849(2*(n+1))+1)` -/
def P8482080648788355602.Spec : Prop :=
  ∀ n, P8482080648788355602.a n = A088627 (n + 1)

end A088627

/-! ## A088627.P7381897820017623320

`A038572(lcm(2, A282849(2*(n+1))))`
-/

namespace A088627.P7381897820017623320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (Int.lcm 2 (A282849 (2 * (n + 1))))

end

end A088627.P7381897820017623320

namespace A088627

/-- `A038572(lcm(2, A282849(2*(n+1))))` -/
def P7381897820017623320.Spec : Prop :=
  ∀ n, P7381897820017623320.a n = A088627 (n + 1)

end A088627

/-! ## A088627.P8641044221803186032

`A038572(A282849(2*(n+1))%(n+3))`
-/

namespace A088627.P8641044221803186032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (Int.tmod (A282849 (2 * (n + 1))) (n + 3 : ℤ)).toNat

end

end A088627.P8641044221803186032

namespace A088627

/-- `A038572(A282849(2*(n+1))%(n+3))` -/
def P8641044221803186032.Spec : Prop :=
  ∀ n, P8641044221803186032.a n = A088627 (n + 1)

end A088627

/-! ## A088627.P14987558859509853231

`A038572(A282849(2*(n+1))-A282849(2*n+1))`
-/

namespace A088627.P14987558859509853231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A282849 (2 * (n + 1)) - A282849 (2 * n + 1)).toNat

end

end A088627.P14987558859509853231

namespace A088627

/-- `A038572(A282849(2*(n+1))-A282849(2*n+1))` -/
def P14987558859509853231.Spec : Prop :=
  ∀ n, P14987558859509853231.a n = A088627 (n + 1)

end A088627

/-! ## A088627.P10684871368242309653

`A001221(A282849(2*(n+1))!)`
-/

namespace A088627.P10684871368242309653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial (A282849 (2 * (n + 1))).toNat)

end

end A088627.P10684871368242309653

namespace A088627

/-- `A001221(A282849(2*(n+1))!)` -/
def P10684871368242309653.Spec : Prop :=
  ∀ n, P10684871368242309653.a n = A088627 (n + 1)

end A088627

/-!
# A088630: Members of A088629 such that all the eligible odd numbers less than n have already occurred.

The programs for A088630, there is no canonical definition to state claims against.
-/

/-! ## A088630.P296546892717475977

`eq[A040642(n), A040669(A238138(n+1))]`
-/

namespace A088630.P296546892717475977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040642 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040669 (A238138 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A088630.P296546892717475977

/-! ## A088630.P13031711506527969128

`A255508(n+1)+A001222(A149595(n))`
-/

namespace A088630.P13031711506527969128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255508 (n + 1) + A001222 (A149595 n).toNat

end

end A088630.P13031711506527969128

/-! ## A088630.P11186197894423464685

`lt[A138980(A249823(n+3)), A340202(n+3)]`
-/

namespace A088630.P11186197894423464685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138980 (A249823 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340202 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A088630.P11186197894423464685

/-! ## A088630.P12005378828609358139

`lt[A096608(2*n), A096601(A096583(n+4))]`
-/

namespace A088630.P12005378828609358139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096608 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096601 (A096583 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A088630.P12005378828609358139

/-! ## A088630.P10297522836631939578

`lt[A135376(A007700(n+1)), A135376(2*(n+1))]`
-/

namespace A088630.P10297522836631939578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135376 (A007700 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135376 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A088630.P10297522836631939578

/-!
# A088631: Largest number m < n such that m+n is a prime.

The programs for A088631, the canonical program `A088631.P7843051689605076685` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088631 has offset 2).

The definition of A088631 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A088631.P7843051689605076685

`A060265(n+2)-(n+2)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A088631

/-- `A060265(n+2)-(n+2)` -/
def P7843051689605076685.Spec : Prop :=
  ∀ n, P7843051689605076685.a n = A088631 (n + 2)

theorem P7843051689605076685.correct : P7843051689605076685.Spec := by
  intro n
  simp only [A088631, Nat.add_sub_cancel]

end A088631

/-! ## A088631.P1406965661256894006

`2-A049653(n+2)+n`
-/

namespace A088631.P1406965661256894006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A049653 (n + 2) + (n : ℤ)

end

end A088631.P1406965661256894006

namespace A088631

/-- `2-A049653(n+2)+n` -/
def P1406965661256894006.Spec : Prop :=
  ∀ n, P1406965661256894006.a n = A088631 (n + 2)

end A088631

/-! ## A088631.P17615542017254589918

`4-A049613(n+3)+n`
-/

namespace A088631.P17615542017254589918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A049613 (n + 3) + (n : ℤ)

end

end A088631.P17615542017254589918

namespace A088631

/-- `4-A049613(n+3)+n` -/
def P17615542017254589918.Spec : Prop :=
  ∀ n, P17615542017254589918.a n = A088631 (n + 2)

end A088631

/-! ## A088631.P6491435839109709540

`n+3-2*A049847(n+2)`
-/

namespace A088631.P6491435839109709540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - 2 * A049847 (n + 2)

end

end A088631.P6491435839109709540

namespace A088631

/-- `n+3-2*A049847(n+2)` -/
def P6491435839109709540.Spec : Prop :=
  ∀ n, P6491435839109709540.a n = A088631 (n + 2)

end A088631

/-! ## A088631.P9864896591483832454

`n-A175851(2*n+3)+2`
-/

namespace A088631.P9864896591483832454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A175851 (2 * n + 3) + 2

end

end A088631.P9864896591483832454

namespace A088631

/-- `n-A175851(2*n+3)+2` -/
def P9864896591483832454.Spec : Prop :=
  ∀ n, P9864896591483832454.a n = A088631 (n + 2)

end A088631

/-! ## A088631.P15028757850963001543

`A020705(n)-A049613(n+3)`
-/

namespace A088631.P15028757850963001543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 n - A049613 (n + 3)

end

end A088631.P15028757850963001543

namespace A088631

/-- `A020705(n)-A049613(n+3)` -/
def P15028757850963001543.Spec : Prop :=
  ∀ n, P15028757850963001543.a n = A088631 (n + 2)

end A088631

/-! ## A088631.P6164644095361182077

`A000040(A099801(n+1))-(n+2)`
-/

namespace A088631.P6164644095361182077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A099801 (n + 1)).toNat - (n + 2 : ℤ)

end

end A088631.P6164644095361182077

namespace A088631

/-- `A000040(A099801(n+1))-(n+2)` -/
def P6164644095361182077.Spec : Prop :=
  ∀ n, P6164644095361182077.a n = A088631 (n + 2)

end A088631

/-! ## A088631.P8072554198243836439

`A040976(A000720(2*(n+2)))-n`
-/

namespace A088631.P8072554198243836439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (A000720 (2 * (n + 2))).toNat - (n : ℤ)

end

end A088631.P8072554198243836439

namespace A088631

/-- `A040976(A000720(2*(n+2)))-n` -/
def P8072554198243836439.Spec : Prop :=
  ∀ n, P8072554198243836439.a n = A088631 (n + 2)

end A088631

/-! ## A088631.P15626774516341916573

`A060265(n+2)%A020725(n+1)`
-/

namespace A088631.P15626774516341916573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060265 (n + 2)) (A020725 (n + 1))

end

end A088631.P15626774516341916573

namespace A088631

/-- `A060265(n+2)%A020725(n+1)` -/
def P15626774516341916573.Spec : Prop :=
  ∀ n, P15626774516341916573.a n = A088631 (n + 2)

end A088631

/-! ## A088631.P3535659317641526886

`2-A238737(n+1)+n`
-/

namespace A088631.P3535659317641526886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A238737 (n + 1) + (n : ℤ)

end

end A088631.P3535659317641526886

namespace A088631

/-- `2-A238737(n+1)+n` -/
def P3535659317641526886.Spec : Prop :=
  ∀ n, P3535659317641526886.a n = A088631 (n + 2)

end A088631

/-! ## A088631.P13329064031994270904

`A060308(n+2)-(n+2)`
-/

namespace A088631.P13329064031994270904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060308 (n + 2) - (n + 2 : ℤ)

end

end A088631.P13329064031994270904

namespace A088631

/-- `A060308(n+2)-(n+2)` -/
def P13329064031994270904.Spec : Prop :=
  ∀ n, P13329064031994270904.a n = A088631 (n + 2)

theorem P13329064031994270904.correct : P13329064031994270904.Spec := by
  intro n
  simp only [A088631, Nat.add_sub_cancel, A088631.P13329064031994270904.a, A088631.P7843051689605076685.a, A060265, A060265.P9470967359991943160.a, A060308, A060308.P17439184872653742562.a, A007917, A007917.P1836476777957611455.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A088631

/-! ## A088631.P1357380626770783753

`3-A049716(n+2)+n`
-/

namespace A088631.P1357380626770783753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A049716 (n + 2) + (n : ℤ)

end

end A088631.P1357380626770783753

namespace A088631

/-- `3-A049716(n+2)+n` -/
def P1357380626770783753.Spec : Prop :=
  ∀ n, P1357380626770783753.a n = A088631 (n + 2)

end A088631

/-! ## A088631.P11766790757708820417

`A000040(A099802(n+2))-(n+2)`
-/

namespace A088631.P11766790757708820417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A099802 (n + 2)).toNat - (n + 2 : ℤ)

end

end A088631.P11766790757708820417

namespace A088631

/-- `A000040(A099802(n+2))-(n+2)` -/
def P11766790757708820417.Spec : Prop :=
  ∀ n, P11766790757708820417.a n = A088631 (n + 2)

end A088631

/-! ## A088631.P17574114243510720275

`A008619(A308044(n+3))`
-/

namespace A088631.P17574114243510720275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A308044 (n + 3)).toNat

end

end A088631.P17574114243510720275

namespace A088631

/-- `A008619(A308044(n+3))` -/
def P17574114243510720275.Spec : Prop :=
  ∀ n, P17574114243510720275.a n = A088631 (n + 2)

end A088631

/-! ## A088631.P1963157934055690995

`A345668(2*(n+2))/2`
-/

namespace A088631.P1963157934055690995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345668 (2 * (n + 2)) : ℚ) / 2

end

end A088631.P1963157934055690995

namespace A088631

/-- `A345668(2*(n+2))/2` -/
def P1963157934055690995.Spec : Prop :=
  ∀ n, P1963157934055690995.a n = (A088631 (n + 2) : ℚ)

end A088631

/-! ## A088631.P2401530998174170356

`2-A049711(2*(n+2))+n`
-/

namespace A088631.P2401530998174170356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A049711 (2 * (n + 2)) + (n : ℤ)

end

end A088631.P2401530998174170356

namespace A088631

/-- `2-A049711(2*(n+2))+n` -/
def P2401530998174170356.Spec : Prop :=
  ∀ n, P2401530998174170356.a n = A088631 (n + 2)

end A088631

/-! ## A088631.P8854348190981601845

`A007917(2*n+3)-(n+2)`
-/

namespace A088631.P8854348190981601845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (2 * n + 3) - (n + 2 : ℤ)

end

end A088631.P8854348190981601845

namespace A088631

/-- `A007917(2*n+3)-(n+2)` -/
def P8854348190981601845.Spec : Prop :=
  ∀ n, P8854348190981601845.a n = A088631 (n + 2)

end A088631

/-! ## A088631.P9466747366350776685

`A013635(2*(n+2))%(n+2)`
-/

namespace A088631.P9466747366350776685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013635 (2 * (n + 2))) (n + 2 : ℤ)

end

end A088631.P9466747366350776685

namespace A088631

/-- `A013635(2*(n+2))%(n+2)` -/
def P9466747366350776685.Spec : Prop :=
  ∀ n, P9466747366350776685.a n = A088631 (n + 2)

end A088631

/-! ## A088631.P14927637901783264615

`A013635(2*(n+2))-A020739(2*n)+n`
-/

namespace A088631.P14927637901783264615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013635 (2 * (n + 2)) - A020739 (2 * n) + (n : ℤ)

end

end A088631.P14927637901783264615

namespace A088631

/-- `A013635(2*(n+2))-A020739(2*n)+n` -/
def P14927637901783264615.Spec : Prop :=
  ∀ n, P14927637901783264615.a n = A088631 (n + 2)

end A088631

/-!
# A088633: P-n where P = smallest prime > 2n.

The programs for A088633, there is no canonical definition to state claims against.
-/

/-! ## A088633.P4705573130685213503

`A060264(n)-n`
-/

namespace A088633.P4705573130685213503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060264 n - (n : ℤ)

end

end A088633.P4705573130685213503

/-! ## A088633.P3250394449767312048

`A013632(2*n)+n`
-/

namespace A088633.P3250394449767312048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (2 * n) + (n : ℤ)

end

end A088633.P3250394449767312048

/-! ## A088633.P7891208411659561068

`A151800(2*n)-n`
-/

namespace A088633.P7891208411659561068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (2 * n) - (n : ℤ)

end

end A088633.P7891208411659561068

/-! ## A088633.P6544765155857071909

`A007918(Δ[n²])-n`
-/

namespace A088633.P6544765155857071909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ)

end

end A088633.P6544765155857071909

/-! ## A088633.P1618479982569776665

`A308052(4*n+1)-n`
-/

namespace A088633.P1618479982569776665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308052 (4 * n + 1) - (n : ℤ)

end

end A088633.P1618479982569776665

/-! ## A088633.P17782194920661908307

`A013634(2*n)-3*n`
-/

namespace A088633.P17782194920661908307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013634 (2 * n) - (3 * n : ℤ)

end

end A088633.P17782194920661908307

/-! ## A088633.P10802974237709600519

`A007920(Δ[n²])+n+1`
-/

namespace A088633.P10802974237709600519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (n + 1 : ℤ)

end

end A088633.P10802974237709600519

/-! ## A088633.P15260414971416115955

`abs(A007918(2*n+1)-n)`
-/

namespace A088633.P15260414971416115955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A007918 (2 * n + 1) - (n : ℤ)|

end

end A088633.P15260414971416115955

/-! ## A088633.P3489171840003374735

`sqrt(A069549(2*n+1))-n`
-/

namespace A088633.P3489171840003374735
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A069549 (2 * n + 1) : ℝ) - (n : ℝ)

end

end A088633.P3489171840003374735

/-! ## A088633.P7186622907714575424

`A007920(2*n+1)+1+n`
-/

namespace A088633.P7186622907714575424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (2 * n + 1) + 1 + (n : ℤ)

end

end A088633.P7186622907714575424

/-!
# A088635: a(1) = 1, a(n+1) = smallest number such that the product of all numbers between a(n) and a(n+1), ( both excluded) is divisible by n!.

The programs for A088635, there is no canonical definition to state claims against.
-/

/-! ## A088635.P17146269380697500907

`A281228(A027642(n))+∑[n]`
-/

namespace A088635.P17146269380697500907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281228 (A027642 n).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A088635.P17146269380697500907

/-! ## A088635.P15967473698408028809

`A281228(A306149(n))+∑[n]`
-/

namespace A088635.P15967473698408028809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281228 (A306149 n).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A088635.P15967473698408028809

/-! ## A088635.P5048229392092750401

`A359511(A027642(n))+A000217(n)`
-/

namespace A088635.P5048229392092750401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359511 (A027642 n).toNat + A000217 n

end

end A088635.P5048229392092750401

/-! ## A088635.P7015533720520873617

`xor(∑[n]+1, A010051(A005425(n)))`
-/

namespace A088635.P7015533720520873617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) (A010051 (A005425 n).toNat)

end

end A088635.P7015533720520873617

/-! ## A088635.P10280406051310104094

`xor(∑[n]+1, A294019(A294007(n+5)))`
-/

namespace A088635.P10280406051310104094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) (A294019 (A294007 (n + 5)).toNat)

end

end A088635.P10280406051310104094

/-!
# A088636: a(1) = 1, a(2n+1) - a(2n) = composite(n), a(2n) - a(2n-1) = prime(n).

The programs for A088636, the canonical program `A088636.P7304659136786252971` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088636 has offset 1).

The definition of A088636 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088636.P7304659136786252971

`∑[A073846(n+1)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A088636

/-- `∑[A073846(n+1)]` -/
def P7304659136786252971.Spec : Prop :=
  ∀ n, P7304659136786252971.a n = A088636 (n + 1)

theorem P7304659136786252971.correct : P7304659136786252971.Spec := by
  intro n
  simp only [A088636, Nat.add_sub_cancel]

end A088636

/-! ## A088636.P10979271460487802250

`A067747(n)+a(n-1)` with `a(0)=1`
-/

namespace A088636.P10979271460487802250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A067747 n + a (n - 1)

end

end A088636.P10979271460487802250

namespace A088636

/-- `A067747(n)+a(n-1)` -/
def P10979271460487802250.Spec : Prop :=
  ∀ n, P10979271460487802250.a n = A088636 (n + 1)

end A088636

/-! ## A088636.P4896407881785780918

`a(n-1)+A066251(n)+1` with `a(0)=1`
-/

namespace A088636.P4896407881785780918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A066251 n + 1)

end

end A088636.P4896407881785780918

namespace A088636

/-- `a(n-1)+A066251(n)+1` -/
def P4896407881785780918.Spec : Prop :=
  ∀ n, P4896407881785780918.a n = A088636 (n + 1)

end A088636

/-! ## A088636.P1583513217817866357

`root(∑[A073846(Δ[n²]-n)], 2)²`
-/

namespace A088636.P1583513217817866357
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A088636.P1583513217817866357

namespace A088636

/-- `root(∑[A073846(Δ[n²]-n)], 2)²` -/
def P1583513217817866357.Spec : Prop :=
  ∀ n, P1583513217817866357.a n = (A088636 (n + 1) : ℝ)

end A088636

/-! ## A088636.P4036456188302958857

`∑[A067747(A028310(n))]-1`
-/

namespace A088636.P4036456188302958857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A088636.P4036456188302958857

namespace A088636

/-- `∑[A067747(A028310(n))]-1` -/
def P4036456188302958857.Spec : Prop :=
  ∀ n, P4036456188302958857.a n = A088636 (n + 1)

end A088636

/-! ## A088636.P5868860535602738038

`∑[A067747(A000007(n)+n)]-1`
-/

namespace A088636.P5868860535602738038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A088636.P5868860535602738038

namespace A088636

/-- `∑[A067747(A000007(n)+n)]-1` -/
def P5868860535602738038.Spec : Prop :=
  ∀ n, P5868860535602738038.a n = A088636 (n + 1)

end A088636

/-! ## A088636.P16028052143782196280

`∑[∏{e}[A006530(n+1), A067747(n*#)]]`
-/

namespace A088636.P16028052143782196280
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, A067747 (n * Nat.factorization (f2 n).natAbs p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088636.P16028052143782196280

namespace A088636

/-- `∑[∏{e}[A006530(n+1), A067747(n*#)]]` -/
def P16028052143782196280.Spec : Prop :=
  ∀ n, P16028052143782196280.a n = A088636 (n + 1)

end A088636

/-! ## A088636.P11502029684646461333

`∑[A067747(n+1)]+1-A067747(n+1)`
-/

namespace A088636.P11502029684646461333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A067747 (n + 1))

end

end A088636.P11502029684646461333

namespace A088636

/-- `∑[A067747(n+1)]+1-A067747(n+1)` -/
def P11502029684646461333.Spec : Prop :=
  ∀ n, P11502029684646461333.a n = A088636 (n + 1)

end A088636

/-! ## A088636.P18247603400733963482

`a(n-1)+A008683(2*A000040(n+1))*A073846(n+1)` with `a(0)=1`
-/

namespace A088636.P18247603400733963482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A008683 (2 * A000040 (n + 1)).toNat * A073846 (n + 1)

end

end A088636.P18247603400733963482

namespace A088636

/-- `a(n-1)+A008683(2*A000040(n+1))*A073846(n+1)` -/
def P18247603400733963482.Spec : Prop :=
  ∀ n, P18247603400733963482.a n = A088636 (n + 1)

end A088636

/-! ## A088636.P7336246950705677250

`A028310(∑[A073846(Δ[n²]-n)])`
-/

namespace A088636.P7336246950705677250
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A088636.P7336246950705677250

namespace A088636

/-- `A028310(∑[A073846(Δ[n²]-n)])` -/
def P7336246950705677250.Spec : Prop :=
  ∀ n, P7336246950705677250.a n = A088636 (n + 1)

end A088636

/-!
# A088637: a(1) = 1, a(n+1) = a(n) + smallest prime not added earlier if a(n) is noncomposite else a(n+1) = a(n) + the smallest composite number not added earlier.

The programs for A088637, there is no canonical definition to state claims against.
-/

/-! ## A088637.P12831051128373987029

`ceil(A073895(n+1)-(n+1)/a(n-1))` with `a(0)=1`
-/

namespace A088637.P12831051128373987029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(A073895 (n + 1) : ℚ) - (n + 1 : ℚ) / (a (n - 1) : ℚ)⌉

end

end A088637.P12831051128373987029

/-! ## A088637.P15099879802208136122

`A073895(n+1)-A004526(char[2]+C(2, n)²)`
-/

namespace A088637.P15099879802208136122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073895 (n + 1) - A004526 ((if ∃ j, f1 j = n then 1 else 0) + Nat.choose 2 n ^ 2)

end

end A088637.P15099879802208136122

/-! ## A088637.P13627187523439811697

`A073895(n+1)-A267883(∑{p}[n+1, #*val(n+1, #)])`
-/

namespace A088637.P13627187523439811697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073895 (n + 1) - A267883 (∑ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p)

end

end A088637.P13627187523439811697

/-! ## A088637.P114451922928531317

`A073895(n+1)-A267883(A338938(n+1))`
-/

namespace A088637.P114451922928531317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073895 (n + 1) - A267883 (A338938 (n + 1)).toNat

end

end A088637.P114451922928531317

/-! ## A088637.P8023402356651745361

`A073895(n+1)-val(A073920(n+1), A073919(n))`
-/

namespace A088637.P8023402356651745361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073895 (n + 1) - (SequenceMachineLib.valuation (A073920 (n + 1)).toNat (A073919 n).toNat : ℤ)

end

end A088637.P8023402356651745361

/-!
# A088638: a(1) = 1, a(n+1) = a(n)+ smallest composite number not added earlier if a(n) is noncomposite else a(n+1) = a(n) + the smallest prime not added earlier.

The programs for A088638, there is no canonical definition to state claims against.
-/

/-! ## A088638.P3965327854874394493

`∑[dr(A163297(A025192(n)))]`
-/

namespace A088638.P3965327854874394493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A163297 (A025192 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088638.P3965327854874394493

/-! ## A088638.P5157398726950674065

`∑[dr(A098388(A220509(n)))]`
-/

namespace A088638.P5157398726950674065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A098388 (A220509 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088638.P5157398726950674065

/-!
# A088642: If k is a palindrome made of only two nonzero digits a and b then the palindrome arising by swapping the digits a and b.

The programs for A088642, there is no canonical definition to state claims against.
-/

/-! ## A088642.P2431588073904644078

`A347346(A101594(n+1))`
-/

namespace A088642.P2431588073904644078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347346 (A101594 (n + 1)).toNat

end

end A088642.P2431588073904644078

/-! ## A088642.P13433951987564121352

`A347346(A125290(n+1))`
-/

namespace A088642.P13433951987564121352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347346 (A125290 (n + 1)).toNat

end

end A088642.P13433951987564121352

/-! ## A088642.P13645031816281329138

`A347346(lt[0, A061467(n)])`
-/

namespace A088642.P13645031816281329138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061467 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347346 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A088642.P13645031816281329138

/-! ## A088642.P4305369761581360200

`A347346(lt[1, A050782(n)])`
-/

namespace A088642.P4305369761581360200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347346 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A088642.P4305369761581360200

/-! ## A088642.P13184834350894738305

`A347346(lt[1, A248327(n)])`
-/

namespace A088642.P13184834350894738305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347346 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A088642.P13184834350894738305

/-!
# A088643: Triangle read by rows: row n >= 1 is obtained as follows. Start with n, next term is always largest number m with 1 <= m < n which has not yet appeared in that row and such that m + previous term in the row is a prime. Stop when no further m can be found.

The programs for A088643, there is no canonical definition to state claims against.
-/

/-! ## A088643.P16774717112212244701

`A051237(A038722(n+1))%A062395(n)²`
-/

namespace A088643.P16774717112212244701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051237 (A038722 (n + 1)).toNat) (A062395 n ^ 2)

end

end A088643.P16774717112212244701

/-! ## A088643.P15888104856245771453

`A051237(A038722(n+1)%A107977(n+1))`
-/

namespace A088643.P15888104856245771453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051237 (Int.tmod (A038722 (n + 1)) (A107977 (n + 1))).toNat

end

end A088643.P15888104856245771453

/-! ## A088643.P11010444573598618473

`A051237(A038722(n+1))+val(A318401(n+1), 25)`
-/

namespace A088643.P11010444573598618473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051237 (A038722 (n + 1)).toNat + (SequenceMachineLib.valuation (A318401 (n + 1)).toNat 25 : ℤ)

end

end A088643.P11010444573598618473

/-! ## A088643.P15724119083610665672

`A014963(A107982(n+1))*A051237(A038722(n+1))`
-/

namespace A088643.P15724119083610665672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A107982 (n + 1)).toNat * A051237 (A038722 (n + 1)).toNat

end

end A088643.P15724119083610665672

/-! ## A088643.P5615075925402701363

`A051237(A038722(n+1))*A057427(A125228(n+1))`
-/

namespace A088643.P5615075925402701363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051237 (A038722 (n + 1)).toNat * A057427 (A125228 (n + 1)).toNat

end

end A088643.P5615075925402701363

/-! ## A088643.P17864349681539190058

`A001222(A249077(n+1))*A051237(A038722(n+1))`
-/

namespace A088643.P17864349681539190058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A249077 (n + 1)).toNat * A051237 (A038722 (n + 1)).toNat

end

end A088643.P17864349681539190058

/-! ## A088643.P6331072731111187644

`A014963(A118904(n+1))*A051237(A038722(n+1))`
-/

namespace A088643.P6331072731111187644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A118904 (n + 1)).toNat * A051237 (A038722 (n + 1)).toNat

end

end A088643.P6331072731111187644

/-! ## A088643.P13391452178413384757

`A001222(A145993(n+1))*A051237(A038722(n+1))`
-/

namespace A088643.P13391452178413384757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A145993 (n + 1)).toNat * A051237 (A038722 (n + 1)).toNat

end

end A088643.P13391452178413384757

/-!
# A088644: Smallest n-digit number divisible by n!.

The programs for A088644, the canonical program `A088644.P11289073568603251773` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088644 has offset 1).

The definition of A088644 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A088644.P11289073568603251773

`(n+1)!*ceil(10^n/(n+1)!)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A088644

/-- `(n+1)!*ceil(10^n/(n+1)!)` -/
def P11289073568603251773.Spec : Prop :=
  ∀ n, P11289073568603251773.a n = A088644 (n + 1)

theorem P11289073568603251773.correct : P11289073568603251773.Spec := by
  intro n
  simp only [A088644, Nat.add_sub_cancel]

end A088644

/-! ## A088644.P760151770948446462

`(n+1)!*ceil(∏[10/(n+1)]/10)`
-/

namespace A088644.P760151770948446462
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  10 / (n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * ⌈(∏ j ∈ Finset.range (n + 1), f1 j) / 10⌉

end

end A088644.P760151770948446462

namespace A088644

/-- `(n+1)!*ceil(∏[10/(n+1)]/10)` -/
def P760151770948446462.Spec : Prop :=
  ∀ n, P760151770948446462.a n = A088644 (n + 1)

end A088644

/-! ## A088644.P7783548072370032825

`ceil(∏[10/(n+1)]/10)*∏[n+1]`
-/

namespace A088644.P7783548072370032825
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  10 / (n + 1 : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(∏ j ∈ Finset.range (n + 1), f1 j) / 10⌉ * ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A088644.P7783548072370032825

namespace A088644

/-- `ceil(∏[10/(n+1)]/10)*∏[n+1]` -/
def P7783548072370032825.Spec : Prop :=
  ∀ n, P7783548072370032825.a n = A088644 (n + 1)

end A088644

/-!
# A088645: a(n) = A088644(n)/n!.

The programs for A088645, the canonical program `A088645.P4753994594381804477` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088645 has offset 1).

The definition of A088645 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A088645.P4753994594381804477

`ceil(10^n/(n+1)!)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A088645

/-- `ceil(10^n/(n+1)!)` -/
def P4753994594381804477.Spec : Prop :=
  ∀ n, P4753994594381804477.a n = A088645 (n + 1)

theorem P4753994594381804477.correct : P4753994594381804477.Spec := by
  intro n
  simp only [A088645, Nat.add_sub_cancel]

end A088645

/-! ## A088645.P5236110011756024157

`A088644(n+1)/(n+1)!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A088645.P5236110011756024157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088644 (n + 1) : ℚ) / (Nat.factorial (n + 1) : ℚ)

end

end A088645.P5236110011756024157

namespace A088645

/-- `A088644(n+1)/(n+1)!` -/
def P5236110011756024157.Spec : Prop :=
  ∀ n, P5236110011756024157.a n = (A088645 (n + 1) : ℚ)

end A088645

/-! ## A088645.P2752485627854722409

`ceil(∏[10/(n+1)]/10)`
-/

namespace A088645.P2752485627854722409
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  10 / (n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(∏ j ∈ Finset.range (n + 1), f1 j) / 10⌉

end

end A088645.P2752485627854722409

namespace A088645

/-- `ceil(∏[10/(n+1)]/10)` -/
def P2752485627854722409.Spec : Prop :=
  ∀ n, P2752485627854722409.a n = A088645 (n + 1)

end A088645

/-! ## A088645.P9432862863013158949

`A088644(n+1)/A000142(n+1)`
-/

namespace A088645.P9432862863013158949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088644 (n + 1) : ℚ) / (A000142 (n + 1) : ℚ)

end

end A088645.P9432862863013158949

namespace A088645

/-- `A088644(n+1)/A000142(n+1)` -/
def P9432862863013158949.Spec : Prop :=
  ∀ n, P9432862863013158949.a n = (A088645 (n + 1) : ℚ)

end A088645

/-! ## A088645.P18150329025773268840

`A088644(n+1)/A104150(n+2)`
-/

namespace A088645.P18150329025773268840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088644 (n + 1) : ℚ) / (A104150 (n + 2) : ℚ)

end

end A088645.P18150329025773268840

namespace A088645

/-- `A088644(n+1)/A104150(n+2)` -/
def P18150329025773268840.Spec : Prop :=
  ∀ n, P18150329025773268840.a n = (A088645 (n + 1) : ℚ)

end A088645

/-!
# A088646: a(0) = 1 and then alternately prime and composite numbers such that the successive difference is (distinct) composite and prime respectively.

The programs for A088646, there is no canonical definition to state claims against.
-/

/-! ## A088646.P6826562821411418828

`∑[A103825(n+1)]`
-/

namespace A088646.P6826562821411418828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103825 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088646.P6826562821411418828

/-! ## A088646.P3248489747186980225

`A103825(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A088646.P3248489747186980225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A103825 (n + 1) + a (A023443 n).toNat

end

end A088646.P3248489747186980225

/-!
# A088647: a(1) = 1, then the smallest number such that the concatenation a(r), a(s) is prime for all s > r.

The programs for A088647, there is no canonical definition to state claims against.
-/

/-! ## A088647.P16689537124738083362

`A075611(floor(acot(n)+n))`
-/

namespace A088647.P16689537124738083362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075611 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

end

end A088647.P16689537124738083362

/-! ## A088647.P3505000990094243578

`A075611(C(n, floor(atan(n))))`
-/

namespace A088647.P3505000990094243578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075611 (Nat.choose n ⌊Real.arctan (n : ℝ)⌋.toNat)

end

end A088647.P3505000990094243578

/-! ## A088647.P2405899961591168265

`A075611(or(n, floor(acot(n))))`
-/

namespace A088647.P2405899961591168265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075611 (Int.lor (n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A088647.P2405899961591168265

/-! ## A088647.P2483367844102459033

`A075611(xor(n, floor(acot(n))))`
-/

namespace A088647.P2483367844102459033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075611 (Int.xor (n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A088647.P2483367844102459033

/-! ## A088647.P3612429132250523899

`∏{e}[(-2)^n, A075611(#)]`
-/

namespace A088647.P3612429132250523899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A075611 (Nat.factorization (f1 n).natAbs p)

end

end A088647.P3612429132250523899

/-!
# A088648: a(1) = 1, then the smallest odd number not occurring earlier such that the concatenation a(r), a(s) is composite for all s > r.

The programs for A088648, the canonical program `A088648.P12877960287944101613` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088648 has offset 1).

The definition of A088648 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088648.P12877960287944101613

`ogf((1+3x+2x^2-2x^3+2x^5+4x^6)/(1-2x+x^2))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A088648

/-- `ogf((1+3x+2x^2-2x^3+2x^5+4x^6)/(1-2x+x^2))` -/
def P12877960287944101613.Spec : Prop :=
  ∀ n, P12877960287944101613.a n = A088648 (n + 1)

theorem P12877960287944101613.correct : P12877960287944101613.Spec := by
  intro n
  simp only [A088648, Nat.add_sub_cancel]

end A088648

/-!
# A088651: a(n) = smallest number k such that r*k-1 is prime for all r = 1 to n.

The programs for A088651, there is no canonical definition to state claims against.
-/

/-! ## A088651.P15617536347929373575

`A101779(n+1)+1`
-/

namespace A088651.P15617536347929373575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101779 (n + 1) + 1

end

end A088651.P15617536347929373575

/-! ## A088651.P8409982592833909356

`A088652(∑[n]+1)+1`
-/

namespace A088651.P8409982592833909356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088652 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 1

end

end A088651.P8409982592833909356

/-! ## A088651.P16274894746955896292

`or(A088652(A152947(n+2))+1, char[1])`
-/

namespace A088651.P16274894746955896292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A088652 (A152947 (n + 2)).toNat + 1) ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A088651.P16274894746955896292

/-! ## A088651.P16724296868663187284

`A119335(n)+A088652(A000124(n))`
-/

namespace A088651.P16724296868663187284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119335 n + A088652 (A000124 n).toNat

end

end A088651.P16724296868663187284

/-!
# A088653: Smallest prime whose product of digits is 3^n.

The programs for A088653, there is no canonical definition to state claims against.
-/

/-! ## A088653.P2992449116390639526

`A341634(A071604(3^n))`
-/

namespace A088653.P2992449116390639526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341634 (A071604 (3 ^ n)).toNat

end

end A088653.P2992449116390639526

/-!
# A088655: a(n) is the absolute value of floor(x^n), where x = e/(2-e) = -3.784422... is derived from e=A001113.

The programs for A088655, the canonical program `A088655.P3660560177776406207` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088655 has offset 1).

The definition of A088655 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A088655.P3660560177776406207

`abs(floor((e/(2-e))^(n+1)))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A088655

/-- `abs(floor((e/(2-e))^(n+1)))` -/
def P3660560177776406207.Spec : Prop :=
  ∀ n, P3660560177776406207.a n = A088655 (n + 1)

theorem P3660560177776406207.correct : P3660560177776406207.Spec := by
  intro n
  simp only [A088655, Nat.add_sub_cancel]

end A088655

/-! ## A088655.P13566534584994142525

`A004396(or(n, A108306(n+1)))`
-/

namespace A088655.P13566534584994142525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (Int.lor (n : ℤ) (A108306 (n + 1))).toNat

end

end A088655.P13566534584994142525

namespace A088655

/-- `A004396(or(n, A108306(n+1)))` -/
def P13566534584994142525.Spec : Prop :=
  ∀ n, P13566534584994142525.a n = A088655 (n + 1)

end A088655

/-!
# A088656: a(n) = floor( (2/(exp(1) - 2))^n ) for n >= 2, a(1) = 1.

The programs for A088656, there is no canonical definition to state claims against.
-/

/-! ## A088656.P9952053883397275156

`A088210(n)+A014701(A289539(n))`
-/

namespace A088656.P9952053883397275156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088210 n + A014701 (A289539 n).toNat

end

end A088656.P9952053883397275156

/-!
# A088658: Number of triangles in an n X n unit grid that have minimal possible area (of 1/2).

The programs for A088658, there is no canonical definition to state claims against.
-/

/-! ## A088658.P3792231152280073909

`A331761(Δ[n²])`
-/

namespace A088658.P3792231152280073909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331761 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A088658.P3792231152280073909

/-! ## A088658.P5107805465652938167

`lcm(2, A331761(2*n+1))`
-/

namespace A088658.P5107805465652938167
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A331761 (2 * n + 1))

end

end A088658.P5107805465652938167

/-! ## A088658.P1733441739963328253

`2*(A344993(n)-2*n)`
-/

namespace A088658.P1733441739963328253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A344993 n - (2 * n : ℤ))

end

end A088658.P1733441739963328253

/-! ## A088658.P16179695704821627563

`or(1, A331761(n+n+1))-1`
-/

namespace A088658.P16179695704821627563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A331761 (n + n + 1)) - 1

end

end A088658.P16179695704821627563

/-! ## A088658.P16516696937591013230

`2*(A114043(n+1)-A001844(n))`
-/

namespace A088658.P16516696937591013230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A114043 (n + 1) - A001844 n)

end

end A088658.P16516696937591013230

/-! ## A088658.P2716688966988728415

`A177719(2*(n+1))/2-A005563(2*n)`
-/

namespace A088658.P2716688966988728415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177719 (2 * (n + 1)) : ℚ) / 2 - (A005563 (2 * n) : ℚ)

end

end A088658.P2716688966988728415

/-! ## A088658.P17388481775975107286

`A331771(n+1)-A033996(n)`
-/

namespace A088658.P17388481775975107286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331771 (n + 1) - A033996 n

end

end A088658.P17388481775975107286

/-! ## A088658.P3604172676649706794

`A331771(n+1)-2*A046092(n)`
-/

namespace A088658.P3604172676649706794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331771 (n + 1) - 2 * A046092 n

end

end A088658.P3604172676649706794

/-! ## A088658.P2675090531352824423

`A115004(2*n+1)-A159065(2*(n+1))`
-/

namespace A088658.P2675090531352824423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115004 (2 * n + 1) - A159065 (2 * (n + 1))

end

end A088658.P2675090531352824423

/-! ## A088658.P895399600139387946

`A115004(2*n+1)%A159065(2*n+2)`
-/

namespace A088658.P895399600139387946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115004 (2 * n + 1)) (A159065 (2 * n + 2))

end

end A088658.P895399600139387946

/-! ## A088658.P11102356208754991110

`gcd(A286733(n+1)*A331761(2*n+1), A331761(2*n+1))`
-/

namespace A088658.P11102356208754991110
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A286733 (n + 1) * A331761 (2 * n + 1)) (A331761 (2 * n + 1))

end

end A088658.P11102356208754991110

/-! ## A088658.P161655127103792829

`gcd(2, A286733(2*n+1))*A331761(2*n+1)`
-/

namespace A088658.P161655127103792829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A286733 (2 * n + 1)) : ℤ) * A331761 (2 * n + 1)

end

end A088658.P161655127103792829

/-!
# A088659: a(n) = n*(p-1) where p is the largest prime factor of n.

The programs for A088659, the canonical program `A088659.P1179813804115170838` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088659 has offset 2).

The definition of A088659 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070777, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A088659.P1179813804115170838

`(n+2)*A070777(n+2)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A088659

/-- `(n+2)*A070777(n+2)` -/
def P1179813804115170838.Spec : Prop :=
  ∀ n, P1179813804115170838.a n = A088659 (n + 2)

theorem P1179813804115170838.correct : P1179813804115170838.Spec := by
  intro n
  simp only [A088659, Nat.add_sub_cancel]

end A088659

/-! ## A088659.P2780909969039753100

`(n+2)*(A006530(n+2)-1)`
-/

namespace A088659.P2780909969039753100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (A006530 (n + 2) - 1)

end

end A088659.P2780909969039753100

namespace A088659

/-- `(n+2)*(A006530(n+2)-1)` -/
def P2780909969039753100.Spec : Prop :=
  ∀ n, P2780909969039753100.a n = A088659 (n + 2)

end A088659

/-! ## A088659.P8292867078905956483

`(n%A006530(2*(n+2))+1)*(n+2)`
-/

namespace A088659.P8292867078905956483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.tmod (n : ℤ) (A006530 (2 * (n + 2))) + 1) * (n + 2 : ℤ)

end

end A088659.P8292867078905956483

namespace A088659

/-- `(n%A006530(2*(n+2))+1)*(n+2)` -/
def P8292867078905956483.Spec : Prop :=
  ∀ n, P8292867078905956483.a n = A088659 (n + 2)

end A088659

/-! ## A088659.P12201492884574902005

`(n+2)*A000010(A006530(n+2))`
-/

namespace A088659.P12201492884574902005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A000010 (A006530 (n + 2)).toNat

end

end A088659.P12201492884574902005

namespace A088659

/-- `(n+2)*A000010(A006530(n+2))` -/
def P12201492884574902005.Spec : Prop :=
  ∀ n, P12201492884574902005.a n = A088659 (n + 2)

end A088659

/-! ## A088659.P10496639122874275199

`(n+2)*A090624(A007947(n+2))`
-/

namespace A088659.P10496639122874275199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A090624 (A007947 (n + 2)).toNat

end

end A088659.P10496639122874275199

namespace A088659

/-- `(n+2)*A090624(A007947(n+2))` -/
def P10496639122874275199.Spec : Prop :=
  ∀ n, P10496639122874275199.a n = A088659 (n + 2)

end A088659

/-! ## A088659.P4428230730825064273

`(n+2)*A003958(A006530(2*(n+2)))`
-/

namespace A088659.P4428230730825064273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A003958 (A006530 (2 * (n + 2))).toNat

end

end A088659.P4428230730825064273

namespace A088659

/-- `(n+2)*A003958(A006530(2*(n+2)))` -/
def P4428230730825064273.Spec : Prop :=
  ∀ n, P4428230730825064273.a n = A088659 (n + 2)

end A088659

/-! ## A088659.P11784343125244864610

`A000027(n+2)*A033879(A006530(n+2))`
-/

namespace A088659.P11784343125244864610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 2) * A033879 (A006530 (n + 2)).toNat

end

end A088659.P11784343125244864610

namespace A088659

/-- `A000027(n+2)*A033879(A006530(n+2))` -/
def P11784343125244864610.Spec : Prop :=
  ∀ n, P11784343125244864610.a n = A088659 (n + 2)

end A088659

/-! ## A088659.P11706337867731661644

`A129598(n+2)-(n+2)`
-/

namespace A088659.P11706337867731661644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129598 (n + 2) - (n + 2 : ℤ)

end

end A088659.P11706337867731661644

namespace A088659

/-- `A129598(n+2)-(n+2)` -/
def P11706337867731661644.Spec : Prop :=
  ∀ n, P11706337867731661644.a n = A088659 (n + 2)

end A088659

/-! ## A088659.P2987454102529063079

`A253560(n+2)-(n+2)`
-/

namespace A088659.P2987454102529063079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253560 (n + 2) - (n + 2 : ℤ)

end

end A088659.P2987454102529063079

namespace A088659

/-- `A253560(n+2)-(n+2)` -/
def P2987454102529063079.Spec : Prop :=
  ∀ n, P2987454102529063079.a n = A088659 (n + 2)

end A088659

/-! ## A088659.P12154321478644578228

`lcm(n+2, A171462(n+2))`
-/

namespace A088659.P12154321478644578228
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 2 : ℤ) (A171462 (n + 2))

end

end A088659.P12154321478644578228

namespace A088659

/-- `lcm(n+2, A171462(n+2))` -/
def P12154321478644578228.Spec : Prop :=
  ∀ n, (P12154321478644578228.a n : ℤ) = A088659 (n + 2)

end A088659

/-! ## A088659.P13742442650692544721

`(n+2)*(A070229(n+2)-(n+3))`
-/

namespace A088659.P13742442650692544721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (A070229 (n + 2) - (n + 3 : ℤ))

end

end A088659.P13742442650692544721

namespace A088659

/-- `(n+2)*(A070229(n+2)-(n+3))` -/
def P13742442650692544721.Spec : Prop :=
  ∀ n, P13742442650692544721.a n = A088659 (n + 2)

end A088659

/-! ## A088659.P9280522760105530757

`(n+2)*A000010(A111089(n+2))`
-/

namespace A088659.P9280522760105530757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A000010 (A111089 (n + 2)).toNat

end

end A088659.P9280522760105530757

namespace A088659

/-- `(n+2)*A000010(A111089(n+2))` -/
def P9280522760105530757.Spec : Prop :=
  ∀ n, P9280522760105530757.a n = A088659 (n + 2)

end A088659

/-! ## A088659.P3309238051964358180

`A006530(n+2)*A171462(n+2)`
-/

namespace A088659.P3309238051964358180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) * A171462 (n + 2)

end

end A088659.P3309238051964358180

namespace A088659

/-- `A006530(n+2)*A171462(n+2)` -/
def P3309238051964358180.Spec : Prop :=
  ∀ n, P3309238051964358180.a n = A088659 (n + 2)

end A088659

/-! ## A088659.P6433771790643940688

`(n+2)*A000010(A299766(n+2))`
-/

namespace A088659.P6433771790643940688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A000010 (A299766 (n + 2)).toNat

end

end A088659.P6433771790643940688

namespace A088659

/-- `(n+2)*A000010(A299766(n+2))` -/
def P6433771790643940688.Spec : Prop :=
  ∀ n, P6433771790643940688.a n = A088659 (n + 2)

end A088659

/-! ## A088659.P3138594321845234596

`A217434(n+2)*A351168(A007947(n+2))`
-/

namespace A088659.P3138594321845234596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217434 (n + 2) * A351168 (A007947 (n + 2)).toNat

end

end A088659.P3138594321845234596

namespace A088659

/-- `A217434(n+2)*A351168(A007947(n+2))` -/
def P3138594321845234596.Spec : Prop :=
  ∀ n, P3138594321845234596.a n = A088659 (n + 2)

end A088659

/-! ## A088659.P2119227390255771526

`A053585(n+2)*A351168(A243074(n+2))`
-/

namespace A088659.P2119227390255771526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (n + 2) * A351168 (A243074 (n + 2)).toNat

end

end A088659.P2119227390255771526

namespace A088659

/-- `A053585(n+2)*A351168(A243074(n+2))` -/
def P2119227390255771526.Spec : Prop :=
  ∀ n, P2119227390255771526.a n = A088659 (n + 2)

end A088659

/-!
# A088660: A logarithmic scale Sierpinski self-similar sequence.

The programs for A088660, the canonical program `A088660.P2669219846437675816` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088660 has offset 3).

The definition of A088660 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 254 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088660.P2669219846437675816

`9-A070940(A220466(n+2))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A088660

/-- `9-A070940(A220466(n+2))` -/
def P2669219846437675816.Spec : Prop :=
  ∀ n, P2669219846437675816.a n = A088660 (n + 3)

theorem P2669219846437675816.correct : P2669219846437675816.Spec := by
  intro n
  simp only [A088660, Nat.add_sub_cancel]

end A088660

/-!
# A088662: Number of peaks at even level in all symmetric Dyck paths of semilength n+2.

The programs for A088662, the canonical program `A088662.P10445434705329533365` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088662 has offset 0).

The definition of A088662 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088662.P7904201859150681286

`A099325(n)-Δ[A294175(n)]`
-/

namespace A088662.P7904201859150681286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294175 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099325 n - (f1 (n + 1) - f1 n)

end

end A088662.P7904201859150681286

namespace A088662

/-- `A099325(n)-Δ[A294175(n)]` -/
def P7904201859150681286.Spec : Prop :=
  ∀ n, P7904201859150681286.a n = A088662 n

end A088662

/-! ## A088662.P14949168376802221643

`A138364(n+1)+2*A100071(n)`
-/

namespace A088662.P14949168376802221643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138364 (n + 1) + 2 * A100071 n

end

end A088662.P14949168376802221643

namespace A088662

/-- `A138364(n+1)+2*A100071(n)` -/
def P14949168376802221643.Spec : Prop :=
  ∀ n, P14949168376802221643.a n = A088662 n

end A088662

/-! ## A088662.P14474973667641909735

`(n+2)*A001405(n)-A057977(n)`
-/

namespace A088662.P14474973667641909735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A001405 n - A057977 n

end

end A088662.P14474973667641909735

namespace A088662

/-- `(n+2)*A001405(n)-A057977(n)` -/
def P14474973667641909735.Spec : Prop :=
  ∀ n, P14474973667641909735.a n = A088662 n

end A088662

/-! ## A088662.P10445434705329533365

`A001405(A109613(n))+n*A001405(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A088662

/-- `A001405(A109613(n))+n*A001405(n)` -/
def P10445434705329533365.Spec : Prop :=
  ∀ n, P10445434705329533365.a n = A088662 n

theorem P10445434705329533365.correct : P10445434705329533365.Spec := by
  intro n
  simp only [A088662]

end A088662

/-! ## A088662.P1442695463125936787

`A100071(n+1)+A001405(n)-A057977(n)`
-/

namespace A088662.P1442695463125936787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100071 (n + 1) + (A001405 n - A057977 n)

end

end A088662.P1442695463125936787

namespace A088662

/-- `A100071(n+1)+A001405(n)-A057977(n)` -/
def P1442695463125936787.Spec : Prop :=
  ∀ n, P1442695463125936787.a n = A088662 n

end A088662

/-! ## A088662.P11152387914585941384

`A045621(n)+Δ[A107373(n+2)]`
-/

namespace A088662.P11152387914585941384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107373 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045621 n + (f1 (n + 1) - f1 n)

end

end A088662.P11152387914585941384

namespace A088662

/-- `A045621(n)+Δ[A107373(n+2)]` -/
def P11152387914585941384.Spec : Prop :=
  ∀ n, P11152387914585941384.a n = A088662 n

end A088662

/-!
# A088666: a(n) = (n^4 + 1) mod 10.

The programs for A088666, the canonical program `A088666.P12537930140718941059` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088666 has offset 0).

The definition of A088666 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^4+1)%10` (program `A088666.P12537930140718941059`, by `A088666.P12537930140718941059.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A088666.P12537930140718941059

`(n^4+1)%10`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A088666

/-- `(n^4+1)%10` -/
def P12537930140718941059.Spec : Prop :=
  ∀ n, (P12537930140718941059.a n : ℤ) = A088666 n

theorem P12537930140718941059.correct : P12537930140718941059.Spec := by
  intro n
  simp only [A088666]

end A088666

/-!
# A088667: n^4 + 6 mod 10.

The programs for A088667, the canonical program `A088667.P12023258083440027465` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088667 has offset 0).

The definition of A088667 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088667.P12023258083440027465

`(n^4+6)%10`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A088667

/-- `(n^4+6)%10` -/
def P12023258083440027465.Spec : Prop :=
  ∀ n, (P12023258083440027465.a n : ℤ) = A088667 n

theorem P12023258083440027465.correct : P12023258083440027465.Spec := by
  intro n
  simp only [A088667]

end A088667

/-!
# A088668: Number of n X n matrices over GF(2) with characteristic polynomial x^(n-1) * (x-1).

The programs for A088668, the canonical program `A088668.P16161738528872052248` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088668 has offset 1).

The definition of A088668 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A088668.P16161738528872052248

`2*(2^((n+1)²-(n+1))-2^((n+1)²-2*(n+1)))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A088668

/-- `2*(2^((n+1)²-(n+1))-2^((n+1)²-2*(n+1)))` -/
def P16161738528872052248.Spec : Prop :=
  ∀ n, P16161738528872052248.a n = (A088668 (n + 1) : ℚ)

end A088668

/-! ## A088668.P16876970101319603502

`lcm(2^n², ∑[2^n])`
-/

namespace A088668.P16876970101319603502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 ^ n ^ 2) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A088668.P16876970101319603502

namespace A088668

/-- `lcm(2^n², ∑[2^n])` -/
def P16876970101319603502.Spec : Prop :=
  ∀ n, (P16876970101319603502.a n : ℤ) = A088668 (n + 1)

end A088668

/-! ## A088668.P3062227266979331612

`A190999(n)-A153836(n+1)`
-/

namespace A088668.P3062227266979331612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190999 n - A153836 (n + 1)

end

end A088668.P3062227266979331612

namespace A088668

/-- `A190999(n)-A153836(n+1)` -/
def P3062227266979331612.Spec : Prop :=
  ∀ n, P3062227266979331612.a n = A088668 (n + 1)

end A088668

/-! ## A088668.P3343090540633311690

`A089888((n+1)²)/A000079(n)`
-/

namespace A088668.P3343090540633311690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089888 ((n + 1) ^ 2) : ℚ) / (A000079 n : ℚ)

end

end A088668.P3343090540633311690

namespace A088668

/-- `A089888((n+1)²)/A000079(n)` -/
def P3343090540633311690.Spec : Prop :=
  ∀ n, P3343090540633311690.a n = (A088668 (n + 1) : ℚ)

end A088668

/-! ## A088668.P7084806831165323680

`A000079(A002061(n+1))-2^n²`
-/

namespace A088668.P7084806831165323680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002061 (n + 1)).toNat - (2 ^ n ^ 2 : ℤ)

end

end A088668.P7084806831165323680

namespace A088668

/-- `A000079(A002061(n+1))-2^n²` -/
def P7084806831165323680.Spec : Prop :=
  ∀ n, P7084806831165323680.a n = A088668 (n + 1)

end A088668

/-!
# A088670: Number of partitions of n into distinct decimal repdigit numbers.

The programs for A088670, there is no canonical definition to state claims against.
-/

/-! ## A088670.P8513975692863597087

`A109967(n-1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A088670.P8513975692863597087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A109967 (n - 1) + a (n - 1)

end

end A088670.P8513975692863597087

/-! ## A088670.P15937964159058928107

`A091581(A000196(n²))`
-/

namespace A088670.P15937964159058928107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091581 (A000196 (n ^ 2)).toNat

end

end A088670.P15937964159058928107

/-! ## A088670.P18221640681031736005

`A091581(A037213(n²))`
-/

namespace A088670.P18221640681031736005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091581 (A037213 (n ^ 2)).toNat

end

end A088670.P18221640681031736005

/-! ## A088670.P9280722469175278421

`A091581(A038690(n²))`
-/

namespace A088670.P9280722469175278421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091581 (A038690 (n ^ 2)).toNat

end

end A088670.P9280722469175278421

/-! ## A088670.P4905779448194039697

`A091581(A137734(n²))`
-/

namespace A088670.P4905779448194039697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091581 (A137734 (n ^ 2)).toNat

end

end A088670.P4905779448194039697

/-! ## A088670.P2372069379137916023

`A091581(A322832(n²))`
-/

namespace A088670.P2372069379137916023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091581 (A322832 (n ^ 2)).toNat

end

end A088670.P2372069379137916023

/-! ## A088670.P6747179814937164906

`A091581(n)+A003076(n²)`
-/

namespace A088670.P6747179814937164906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091581 n + A003076 (n ^ 2)

end

end A088670.P6747179814937164906

/-! ## A088670.P4372049163024019736

`A039963(n²)*A091581(n)`
-/

namespace A088670.P4372049163024019736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039963 (n ^ 2) * A091581 n

end

end A088670.P4372049163024019736

/-! ## A088670.P8000084106808038908

`gcd(A000038(n²), A091581(n))`
-/

namespace A088670.P8000084106808038908
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 (n ^ 2)) (A091581 n)

end

end A088670.P8000084106808038908

/-! ## A088670.P374443509178985725

`A091581(n)%p?[A000328(n)]`
-/

namespace A088670.P374443509178985725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000328 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091581 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A088670.P374443509178985725

/-! ## A088670.P14132665485704583817

`A091581(2-A000122(n²)+n)`
-/

namespace A088670.P14132665485704583817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091581 (2 - A000122 (n ^ 2) + (n : ℤ)).toNat

end

end A088670.P14132665485704583817

/-! ## A088670.P17268544120387273823

`A091581(2*n/A000122(n²))`
-/

namespace A088670.P17268544120387273823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091581 (SequenceMachineLib.roundAway ((2 * n : ℚ) / (A000122 (n ^ 2) : ℚ))).toNat

end

end A088670.P17268544120387273823

/-! ## A088670.P10604904648970594490

`A091581(A122197(n^(2%(n+1))))`
-/

namespace A088670.P10604904648970594490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091581 (A122197 (n ^ (2 % (n + 1)))).toNat

end

end A088670.P10604904648970594490

/-! ## A088670.P2407416174567716719

`A091581(A253580(n*(n+1))+n)`
-/

namespace A088670.P2407416174567716719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091581 (A253580 (n * (n + 1)) + (n : ℤ)).toNat

end

end A088670.P2407416174567716719

/-! ## A088670.P6490354740327234288

`A007318(A007318(A131364(n²)))*A091581(n)`
-/

namespace A088670.P6490354740327234288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A007318 (A131364 (n ^ 2)).toNat).toNat * A091581 n

end

end A088670.P6490354740327234288

/-!
# A088671: Number of n X n matrices over GF(3) with characteristic polynomial x^(n-1) * (x-1).

The programs for A088671, the canonical program `A088671.P9839863296185157480` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088671 has offset 1).

The definition of A088671 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A088671.P9839863296185157480

`3/2*(3^((n+1)²-(n+1))-3^((n+1)²-2*(n+1)))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A088671

/-- `3/2*(3^((n+1)²-(n+1))-3^((n+1)²-2*(n+1)))` -/
def P9839863296185157480.Spec : Prop :=
  ∀ n, P9839863296185157480.a n = (A088671 (n + 1) : ℚ)

end A088671

/-! ## A088671.P14040371091906074125

`lcm(A000244(n)^n, A167993(2*(n+1)))`
-/

namespace A088671.P14040371091906074125
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000244 n ^ n) (A167993 (2 * (n + 1)))

end

end A088671.P14040371091906074125

namespace A088671

/-- `lcm(A000244(n)^n, A167993(2*(n+1)))` -/
def P14040371091906074125.Spec : Prop :=
  ∀ n, (P14040371091906074125.a n : ℤ) = A088671 (n + 1)

end A088671

/-!
# A088672: Number of n X n (0,1)-matrices with zero permanent.

The programs for A088672, there is no canonical definition to state claims against.
-/

/-! ## A088672.P1625152355535465554

`A002416(n)-A227414(n)`
-/

namespace A088672.P1625152355535465554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002416 n - A227414 n

end

end A088672.P1625152355535465554

/-! ## A088672.P1576487695422260979

`record[A089479(n)]`
-/

namespace A088672.P1576487695422260979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089479 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088672.P1576487695422260979

/-!
# A088673: a(n) = n mod A002024(n), where A002024 is "n appears n times": 1, 2, 2, 3, 3, 3, ...

The programs for A088673, the canonical program `A088673.P12926897245048726424` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088673 has offset 1).

The definition of A088673 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A088673.P12926897245048726424

`(n+1)%floor(1/2+sqrt(2*(n+1)))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A088673

/-- `(n+1)%floor(1/2+sqrt(2*(n+1)))` -/
def P12926897245048726424.Spec : Prop :=
  ∀ n, P12926897245048726424.a n = A088673 (n + 1)

theorem P12926897245048726424.correct : P12926897245048726424.Spec := by
  intro n
  simp only [A088673, Nat.add_sub_cancel]

end A088673

/-! ## A088673.P17253618070148878738

`-(xor(n, -1)%∑[char[∑[n]]])`
-/

namespace A088673.P17253618070148878738
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (Int.xor (n : ℤ) (-1)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A088673.P17253618070148878738

namespace A088673

/-- `-(xor(n, -1)%∑[char[∑[n]]])` -/
def P17253618070148878738.Spec : Prop :=
  ∀ n, P17253618070148878738.a n = A088673 (n + 1)

end A088673

/-! ## A088673.P4647752585415055397

`abs((Δ[n²]-n)%∑[char[∑[n]]])`
-/

namespace A088673.P4647752585415055397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)|

end

end A088673.P4647752585415055397

namespace A088673

/-- `abs((Δ[n²]-n)%∑[char[∑[n]]])` -/
def P4647752585415055397.Spec : Prop :=
  ∀ n, P4647752585415055397.a n = A088673 (n + 1)

end A088673

/-! ## A088673.P9742350469914816505

`-((n-Δ[n²])%∑[char[∑[n]]])`
-/

namespace A088673.P9742350469914816505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod ((n : ℤ) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A088673.P9742350469914816505

namespace A088673

/-- `-((n-Δ[n²])%∑[char[∑[n]]])` -/
def P9742350469914816505.Spec : Prop :=
  ∀ n, P9742350469914816505.a n = A088673 (n + 1)

end A088673

/-! ## A088673.P4956998042682506998

`A083920(n)%A002024(n+1)*A157928(n)`
-/

namespace A088673.P4956998042682506998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083920 n) (A002024 (n + 1)) * A157928 n

end

end A088673.P4956998042682506998

namespace A088673

/-- `A083920(n)%A002024(n+1)*A157928(n)` -/
def P4956998042682506998.Spec : Prop :=
  ∀ n, P4956998042682506998.a n = A088673 (n + 1)

end A088673

/-! ## A088673.P977062493924828789

`C(n+1, n)%A002024(n+1)*A001222(A256148(n+1))`
-/

namespace A088673.P977062493924828789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.choose (n + 1) n : ℤ) (A002024 (n + 1)) * A001222 (A256148 (n + 1)).toNat

end

end A088673.P977062493924828789

namespace A088673

/-- `C(n+1, n)%A002024(n+1)*A001222(A256148(n+1))` -/
def P977062493924828789.Spec : Prop :=
  ∀ n, P977062493924828789.a n = A088673 (n + 1)

end A088673

/-! ## A088673.P11771135375445776735

`A048158(∑[char[∑[n]]+n])`
-/

namespace A088673.P11771135375445776735
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048158 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A088673.P11771135375445776735

namespace A088673

/-- `A048158(∑[char[∑[n]]+n])` -/
def P11771135375445776735.Spec : Prop :=
  ∀ n, P11771135375445776735.a n = A088673 (n + 1)

end A088673

/-!
# A088674: Coefficients of the eigenfunction of a sequence transformation.

The programs for A088674, there is no canonical definition to state claims against.
-/

/-! ## A088674.P5173965418251234411

`A348686(∑[n]+1)`
-/

namespace A088674.P5173965418251234411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348686 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A088674.P5173965418251234411

/-! ## A088674.P12511904174293187508

`record[A348686(∑[A057979(n)])]`
-/

namespace A088674.P12511904174293187508
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348686 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088674.P12511904174293187508

/-! ## A088674.P10635881238624523652

`record[A348686(∑[A145677(n)])]`
-/

namespace A088674.P10635881238624523652
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145677 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348686 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088674.P10635881238624523652

/-! ## A088674.P7361662854262140124

`record[A348686(A056534(n+1))]`
-/

namespace A088674.P7361662854262140124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348686 (A056534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088674.P7361662854262140124

/-! ## A088674.P18077441234204559154

`record[A348686(A112367(n)+1)]`
-/

namespace A088674.P18077441234204559154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348686 (A112367 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088674.P18077441234204559154

/-!
# A088676: Values of "i" in A087732 and the index of the prime in A087731.

The programs for A088676, there is no canonical definition to state claims against.
-/

/-! ## A088676.P17721322954706008813

`A000720(A087731(n))`
-/

namespace A088676.P17721322954706008813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A087731 n).toNat

end

end A088676.P17721322954706008813

/-! ## A088676.P13239643447610251252

`A061395(A087731(n)²)`
-/

namespace A088676.P13239643447610251252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A087731 n ^ 2).toNat

end

end A088676.P13239643447610251252

/-! ## A088676.P8420108024008512657

`A003963(2*A087731(n))`
-/

namespace A088676.P8420108024008512657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 * A087731 n).toNat

end

end A088676.P8420108024008512657

/-! ## A088676.P15881615429949317587

`A061395(2*A087731(n))`
-/

namespace A088676.P15881615429949317587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A087731 n).toNat

end

end A088676.P15881615429949317587

/-! ## A088676.P4313952385057258009

`A003963(lcm(2, A087731(n)))`
-/

namespace A088676.P4313952385057258009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (Int.lcm 2 (A087731 n))

end

end A088676.P4313952385057258009

/-!
# A088677: Numbers that can be represented as j^6 + k^6, with 0 < j < k, in exactly one way.

The programs for A088677, there is no canonical definition to state claims against.
-/

/-! ## A088677.P16571504959306319568

`A003358(comp[∑[n]])`
-/

namespace A088677.P16571504959306319568
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003358 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A088677.P16571504959306319568

/-! ## A088677.P11659471902034757362

`A194769(A018900(n+1))`
-/

namespace A088677.P11659471902034757362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194769 (A018900 (n + 1)).toNat

end

end A088677.P11659471902034757362

/-! ## A088677.P4195646607404543809

`A004853(lt[1, A002262(n)])`
-/

namespace A088677.P4195646607404543809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004853 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A088677.P4195646607404543809

/-! ## A088677.P14038169208151228345

`A194769(eq[2, A000120(n)])`
-/

namespace A088677.P14038169208151228345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194769 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A088677.P14038169208151228345

/-! ## A088677.P6971768092072215709

`A004853(lt[1, A245980(n)])`
-/

namespace A088677.P6971768092072215709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004853 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A088677.P6971768092072215709

/-!
# A088678: Number of polybes.

The programs for A088678, there is no canonical definition to state claims against.
-/

/-! ## A088678.P7764029642829921864

`A320340(or(n, A002103(n)))`
-/

namespace A088678.P7764029642829921864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320340 (Int.lor (n : ℤ) (A002103 n)).toNat

end

end A088678.P7764029642829921864

/-!
# A088679: a(n) = a(n-1)^2 * n / (n-1), n>1, a(0) = 0, a(1) = 1.

The programs for A088679, the canonical program `A088679.P12876309192337421894` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088679 has offset 0).

The definition of A088679 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A088679.P12876309192337421894

`a(n-1)²*n/(n-1)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A088679

/-- `a(n-1)²*n/(n-1)` -/
def P12876309192337421894.Spec : Prop :=
  ∀ n, P12876309192337421894.a n = (A088679 n : ℚ)

end A088679

/-! ## A088679.P13398116951469521840

`a(n-1)²/(1-1/n)` with `a(0)=0, a(1)=1`
-/

namespace A088679.P13398116951469521840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) ^ 2 / (1 - 1 / (n : ℚ))

end

end A088679.P13398116951469521840

namespace A088679

/-- `a(n-1)²/(1-1/n)` -/
def P13398116951469521840.Spec : Prop :=
  ∀ n, P13398116951469521840.a n = (A088679 n : ℚ)

end A088679

/-! ## A088679.P5974617262551666813

`a(n-1)/(1-1/n)*a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A088679.P5974617262551666813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) / (1 - 1 / (n : ℚ)) * a (n - 1)

end

end A088679.P5974617262551666813

namespace A088679

/-- `a(n-1)/(1-1/n)*a(n-1)` -/
def P5974617262551666813.Spec : Prop :=
  ∀ n, P5974617262551666813.a n = (A088679 n : ℚ)

end A088679

/-! ## A088679.P4467775749951687571

`(2*a(n-1)-a(n-2)²)*a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A088679.P4467775749951687571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (2 * a (n - 1) - a (n - 2) ^ 2) * a (n - 1)

end

end A088679.P4467775749951687571

namespace A088679

/-- `(2*a(n-1)-a(n-2)²)*a(n-1)` -/
def P4467775749951687571.Spec : Prop :=
  ∀ n, P4467775749951687571.a n = A088679 n

end A088679

/-! ## A088679.P5288621138825051261

`(2*a(n-1)-a(n-2)*a(n-2))*a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A088679.P5288621138825051261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (2 * a (n - 1) - a (n - 2) * a (n - 2)) * a (n - 1)

end

end A088679.P5288621138825051261

namespace A088679

/-- `(2*a(n-1)-a(n-2)*a(n-2))*a(n-1)` -/
def P5288621138825051261.Spec : Prop :=
  ∀ n, P5288621138825051261.a n = A088679 n

end A088679

/-!
# A088680: a(n) = prime(2n+1) - prime(2n).

The programs for A088680, the canonical program `A088680.P2200563258996376312` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088680 has offset 1).

The definition of A088680 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(2*(n+1)+1)-A000040(2*(n+1))` (program `A088680.P2200563258996376312`, by `A088680.P2200563258996376312.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A088680.P9618985522616182700

`A001223(2*(n+1))`
-/

namespace A088680.P9618985522616182700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (2 * (n + 1))

end

end A088680.P9618985522616182700

namespace A088680

/-- `A001223(2*(n+1))` -/
def P9618985522616182700.Spec : Prop :=
  ∀ n, P9618985522616182700.a n = A088680 (n + 1)

end A088680

/-! ## A088680.P2200563258996376312

`A000040(2*(n+1)+1)-A000040(2*(n+1))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A088680

/-- `A000040(2*(n+1)+1)-A000040(2*(n+1))` -/
def P2200563258996376312.Spec : Prop :=
  ∀ n, P2200563258996376312.a n = A088680 (n + 1)

theorem P2200563258996376312.correct : P2200563258996376312.Spec := by
  intro n
  simp only [A088680, Nat.add_sub_cancel]

end A088680

/-! ## A088680.P4119888195353227391

`A256736(n+1)+1`
-/

namespace A088680.P4119888195353227391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256736 (n + 1) + 1

end

end A088680.P4119888195353227391

namespace A088680

/-- `A256736(n+1)+1` -/
def P4119888195353227391.Spec : Prop :=
  ∀ n, P4119888195353227391.a n = A088680 (n + 1)

theorem P4119888195353227391.correct : P4119888195353227391.Spec := by
  intro n
  simp only [A088680, Nat.add_sub_cancel, A088680.P4119888195353227391.a, A088680.P2200563258996376312.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A256736, A256736.P10823075426796552149.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A088680

/-! ## A088680.P17665392602365464268

`Δ[A008347(2*n+1)]`
-/

namespace A088680.P17665392602365464268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008347 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088680.P17665392602365464268

namespace A088680

/-- `Δ[A008347(2*n+1)]` -/
def P17665392602365464268.Spec : Prop :=
  ∀ n, P17665392602365464268.a n = A088680 (n + 1)

end A088680

/-! ## A088680.P12802105320669058883

`lcm(2, A001223(n+2+n))`
-/

namespace A088680.P12802105320669058883
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A001223 (n + 2 + n))

end

end A088680.P12802105320669058883

namespace A088680

/-- `lcm(2, A001223(n+2+n))` -/
def P12802105320669058883.Spec : Prop :=
  ∀ n, (P12802105320669058883.a n : ℤ) = A088680 (n + 1)

end A088680

/-! ## A088680.P6259952146782122479

`abs(1-A001223(Δ[n²]+1))+1`
-/

namespace A088680.P6259952146782122479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A001223 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat| + 1

end

end A088680.P6259952146782122479

namespace A088680

/-- `abs(1-A001223(Δ[n²]+1))+1` -/
def P6259952146782122479.Spec : Prop :=
  ∀ n, P6259952146782122479.a n = A088680 (n + 1)

end A088680

/-! ## A088680.P18198956340739070558

`A140201(A001223(Δ[n²]+1))`
-/

namespace A088680.P18198956340739070558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140201 (A001223 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat).toNat

end

end A088680.P18198956340739070558

namespace A088680

/-- `A140201(A001223(Δ[n²]+1))` -/
def P18198956340739070558.Spec : Prop :=
  ∀ n, P18198956340739070558.a n = A088680 (n + 1)

end A088680

/-! ## A088680.P7788691509751948302

`A031368(n+1)-A135275(n+1)`
-/

namespace A088680.P7788691509751948302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031368 (n + 1) - A135275 (n + 1)

end

end A088680.P7788691509751948302

namespace A088680

/-- `A031368(n+1)-A135275(n+1)` -/
def P7788691509751948302.Spec : Prop :=
  ∀ n, P7788691509751948302.a n = A088680 (n + 1)

end A088680

/-! ## A088680.P10025081841540906419

`A155067(n+1)-A078584(n+1)`
-/

namespace A088680.P10025081841540906419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155067 (n + 1) - A078584 (n + 1)

end

end A088680.P10025081841540906419

namespace A088680

/-- `A155067(n+1)-A078584(n+1)` -/
def P10025081841540906419.Spec : Prop :=
  ∀ n, P10025081841540906419.a n = A088680 (n + 1)

end A088680

/-! ## A088680.P7518005545206431025

`A345071(n+1)-A100479(n+1)`
-/

namespace A088680.P7518005545206431025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345071 (n + 1) - A100479 (n + 1)

end

end A088680.P7518005545206431025

namespace A088680

/-- `A345071(n+1)-A100479(n+1)` -/
def P7518005545206431025.Spec : Prop :=
  ∀ n, P7518005545206431025.a n = A088680 (n + 1)

theorem P7518005545206431025.correct : P7518005545206431025.Spec := by
  intro n
  simp only [A088680, Nat.add_sub_cancel, A088680.P7518005545206431025.a, A088680.P2200563258996376312.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A100479, A100479.P2671842593850112912.a, A345071, A345071.P17369145219068528899.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A088680

/-! ## A088680.P9160253031341346981

`A092163(n+1)%A031215(n+1)`
-/

namespace A088680.P9160253031341346981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092163 (n + 1)) (A031215 (n + 1))

end

end A088680.P9160253031341346981

namespace A088680

/-- `A092163(n+1)%A031215(n+1)` -/
def P9160253031341346981.Spec : Prop :=
  ∀ n, P9160253031341346981.a n = A088680 (n + 1)

end A088680

/-! ## A088680.P2418484902291428701

`A001223(Δ[n²]+1)%A004767(n)`
-/

namespace A088680.P2418484902291428701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001223 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat) (A004767 n)

end

end A088680.P2418484902291428701

namespace A088680

/-- `A001223(Δ[n²]+1)%A004767(n)` -/
def P2418484902291428701.Spec : Prop :=
  ∀ n, P2418484902291428701.a n = A088680 (n + 1)

end A088680

/-! ## A088680.P4228555779726030402

`A007504(2*n+1)-A166448(2*(n+1))`
-/

namespace A088680.P4228555779726030402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (2 * n + 1) - A166448 (2 * (n + 1))

end

end A088680.P4228555779726030402

namespace A088680

/-- `A007504(2*n+1)-A166448(2*(n+1))` -/
def P4228555779726030402.Spec : Prop :=
  ∀ n, P4228555779726030402.a n = A088680 (n + 1)

end A088680

/-! ## A088680.P5919390506921966119

`val(A024062(A001223(Δ[n²]+1)-1)+1, 2)+1`
-/

namespace A088680.P5919390506921966119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A024062 (A001223 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat - 1).toNat + 1).toNat 2 + 1

end

end A088680.P5919390506921966119

namespace A088680

/-- `val(A024062(A001223(Δ[n²]+1)-1)+1, 2)+1` -/
def P5919390506921966119.Spec : Prop :=
  ∀ n, (P5919390506921966119.a n : ℤ) = A088680 (n + 1)

end A088680

/-! ## A088680.P4176163804086273500

`A031368(n+2)-A031215(n+1)`
-/

namespace A088680.P4176163804086273500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031368 (n + 2) - A031215 (n + 1)

end

end A088680.P4176163804086273500

namespace A088680

/-- `A031368(n+2)-A031215(n+1)` -/
def P4176163804086273500.Spec : Prop :=
  ∀ n, P4176163804086273500.a n = A088680 (n + 1)

theorem P4176163804086273500.correct : P4176163804086273500.Spec := by
  intro n
  simp only [A088680, Nat.add_sub_cancel, A088680.P4176163804086273500.a, A088680.P2200563258996376312.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031215, A031215.P2952175553723239727.a, A031368, A031368.P13740709942306963407.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A088680

/-! ## A088680.P1035514046570051466

`A001223(n+2+n)%(A016885(n+1)+3)`
-/

namespace A088680.P1035514046570051466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001223 (n + 2 + n)) (A016885 (n + 1) + 3)

end

end A088680.P1035514046570051466

namespace A088680

/-- `A001223(n+2+n)%(A016885(n+1)+3)` -/
def P1035514046570051466.Spec : Prop :=
  ∀ n, P1035514046570051466.a n = A088680 (n + 1)

end A088680

/-! ## A088680.P17135861442659574429

`A261470(2*n)+a(n-1)` with `a(0)=2`
-/

namespace A088680.P17135861442659574429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A261470 (2 * n) + a (n - 1)

end

end A088680.P17135861442659574429

namespace A088680

/-- `A261470(2*n)+a(n-1)` -/
def P17135861442659574429.Spec : Prop :=
  ∀ n, P17135861442659574429.a n = A088680 (n + 1)

end A088680

/-! ## A088680.P2260765628621825654

`A176246(Δ[n²])+1`
-/

namespace A088680.P2260765628621825654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176246 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A088680.P2260765628621825654

namespace A088680

/-- `A176246(Δ[n²])+1` -/
def P2260765628621825654.Spec : Prop :=
  ∀ n, P2260765628621825654.a n = A088680 (n + 1)

end A088680

/-! ## A088680.P16937927973509735617

`sqrt(A076821(2*(n+1)))`
-/

namespace A088680.P16937927973509735617
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A076821 (2 * (n + 1)) : ℝ)

end

end A088680.P16937927973509735617

namespace A088680

/-- `sqrt(A076821(2*(n+1)))` -/
def P16937927973509735617.Spec : Prop :=
  ∀ n, P16937927973509735617.a n = (A088680 (n + 1) : ℝ)

end A088680

/-! ## A088680.P1799568086327024300

`log2(A218075(2*(n+1)))`
-/

namespace A088680.P1799568086327024300
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A218075 (2 * (n + 1)) : ℝ)

end

end A088680.P1799568086327024300

namespace A088680

/-- `log2(A218075(2*(n+1)))` -/
def P1799568086327024300.Spec : Prop :=
  ∀ n, P1799568086327024300.a n = (A088680 (n + 1) : ℝ)

end A088680

/-!
# A088682: a(n) = prime(3*n+1) - prime(3*n-1).

The programs for A088682, the canonical program `A088682.P18299921211379391005` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088682 has offset 1).

The definition of A088682 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(3*(n+1)+1)-A000040(3*(n+1)-1)` (program `A088682.P18299921211379391005`, by `A088682.P18299921211379391005.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A088682.P18299921211379391005

`A000040(3*(n+1)+1)-A000040(3*(n+1)-1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A088682

/-- `A000040(3*(n+1)+1)-A000040(3*(n+1)-1)` -/
def P18299921211379391005.Spec : Prop :=
  ∀ n, P18299921211379391005.a n = A088682 (n + 1)

theorem P18299921211379391005.correct : P18299921211379391005.Spec := by
  intro n
  simp only [A088682, Nat.add_sub_cancel]

end A088682

/-! ## A088682.P16408597995929489488

`A031377(n+2)-A031369(n+1)`
-/

namespace A088682.P16408597995929489488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031377 (n + 2) - A031369 (n + 1)

end

end A088682.P16408597995929489488

namespace A088682

/-- `A031377(n+2)-A031369(n+1)` -/
def P16408597995929489488.Spec : Prop :=
  ∀ n, P16408597995929489488.a n = A088682 (n + 1)

theorem P16408597995929489488.correct : P16408597995929489488.Spec := by
  intro n
  simp only [A088682, Nat.add_sub_cancel, A088682.P16408597995929489488.a, A088682.P18299921211379391005.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031369, A031369.P7838803522888195590.a, A031377, A031377.P14585949674201147163.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A088682

/-! ## A088682.P5835497278100906970

`2*A052288(3*n+1)`
-/

namespace A088682.P5835497278100906970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052288 (3 * n + 1)

end

end A088682.P5835497278100906970

namespace A088682

/-- `2*A052288(3*n+1)` -/
def P5835497278100906970.Spec : Prop :=
  ∀ n, P5835497278100906970.a n = A088682 (n + 1)

end A088682

/-! ## A088682.P17852301657532260284

`A031131(3*n+2)`
-/

namespace A088682.P17852301657532260284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031131 (3 * n + 2)

end

end A088682.P17852301657532260284

namespace A088682

/-- `A031131(3*n+2)` -/
def P17852301657532260284.Spec : Prop :=
  ∀ n, P17852301657532260284.a n = A088682 (n + 1)

end A088682

/-! ## A088682.P14058462746600198399

`A075527(3*n+2)`
-/

namespace A088682.P14058462746600198399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075527 (3 * n + 2)

end

end A088682.P14058462746600198399

namespace A088682

/-- `A075527(3*n+2)` -/
def P14058462746600198399.Spec : Prop :=
  ∀ n, P14058462746600198399.a n = A088682 (n + 1)

end A088682

/-! ## A088682.P12292667659268807745

`A046930(3*(n+1))+2`
-/

namespace A088682.P12292667659268807745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046930 (3 * (n + 1)) + 2

end

end A088682.P12292667659268807745

namespace A088682

/-- `A046930(3*(n+1))+2` -/
def P12292667659268807745.Spec : Prop :=
  ∀ n, P12292667659268807745.a n = A088682 (n + 1)

end A088682

/-! ## A088682.P4912641124401678396

`A159461(3*(n+1))+2`
-/

namespace A088682.P4912641124401678396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159461 (3 * (n + 1)) + 2

end

end A088682.P4912641124401678396

namespace A088682

/-- `A159461(3*(n+1))+2` -/
def P4912641124401678396.Spec : Prop :=
  ∀ n, P4912641124401678396.a n = A088682 (n + 1)

end A088682

/-! ## A088682.P13800477666186731330

`2*A115061(3*(n+1))`
-/

namespace A088682.P13800477666186731330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A115061 (3 * (n + 1))

end

end A088682.P13800477666186731330

namespace A088682

/-- `2*A115061(3*(n+1))` -/
def P13800477666186731330.Spec : Prop :=
  ∀ n, P13800477666186731330.a n = A088682 (n + 1)

end A088682

/-! ## A088682.P12316494017873364852

`2*A162345(3*(n+1))`
-/

namespace A088682.P12316494017873364852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A162345 (3 * (n + 1))

end

end A088682.P12316494017873364852

namespace A088682

/-- `2*A162345(3*(n+1))` -/
def P12316494017873364852.Spec : Prop :=
  ∀ n, P12316494017873364852.a n = A088682 (n + 1)

end A088682

/-! ## A088682.P11160818574379513161

`A105161(A031369(n+1))`
-/

namespace A088682.P11160818574379513161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105161 (A031369 (n + 1)).toNat

end

end A088682.P11160818574379513161

namespace A088682

/-- `A105161(A031369(n+1))` -/
def P11160818574379513161.Spec : Prop :=
  ∀ n, P11160818574379513161.a n = A088682 (n + 1)

end A088682

/-! ## A088682.P5470372023924191110

`A105161(A000040(2*n+n+2))`
-/

namespace A088682.P5470372023924191110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105161 (A000040 (2 * n + (n + 2))).toNat

end

end A088682.P5470372023924191110

namespace A088682

/-- `A105161(A000040(2*n+n+2))` -/
def P5470372023924191110.Spec : Prop :=
  ∀ n, P5470372023924191110.a n = A088682 (n + 1)

end A088682

/-! ## A088682.P12388918142226135105

`A013633(A031336(n+1))`
-/

namespace A088682.P12388918142226135105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013633 (A031336 (n + 1)).toNat

end

end A088682.P12388918142226135105

namespace A088682

/-- `A013633(A031336(n+1))` -/
def P12388918142226135105.Spec : Prop :=
  ∀ n, P12388918142226135105.a n = A088682 (n + 1)

end A088682

/-! ## A088682.P3484113032656432654

`A013633(A000040(3*(n+1)))`
-/

namespace A088682.P3484113032656432654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013633 (A000040 (3 * (n + 1))).toNat

end

end A088682.P3484113032656432654

namespace A088682

/-- `A013633(A000040(3*(n+1)))` -/
def P3484113032656432654.Spec : Prop :=
  ∀ n, P3484113032656432654.a n = A088682 (n + 1)

end A088682

/-! ## A088682.P14025108949658740351

`A013633(A065091(2*n+n+2))`
-/

namespace A088682.P14025108949658740351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013633 (A065091 (2 * n + (n + 2))).toNat

end

end A088682.P14025108949658740351

namespace A088682

/-- `A013633(A065091(2*n+n+2))` -/
def P14025108949658740351.Spec : Prop :=
  ∀ n, P14025108949658740351.a n = A088682 (n + 1)

end A088682

/-!
# A088683: a(n) = prime(3*n+2) - prime(3*n).

The programs for A088683, the canonical program `A088683.P8784821782294256922` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088683 has offset 1).

The definition of A088683 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(3*(n+1)+2)-A000040(3*(n+1))` (program `A088683.P8784821782294256922`, by `A088683.P8784821782294256922.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A088683.P8784821782294256922

`A000040(3*(n+1)+2)-A000040(3*(n+1))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A088683

/-- `A000040(3*(n+1)+2)-A000040(3*(n+1))` -/
def P8784821782294256922.Spec : Prop :=
  ∀ n, P8784821782294256922.a n = A088683 (n + 1)

theorem P8784821782294256922.correct : P8784821782294256922.Spec := by
  intro n
  simp only [A088683, Nat.add_sub_cancel]

end A088683

/-! ## A088683.P17789304423585038432

`A001223(3*(n+1))+A001223(3*n+4)`
-/

namespace A088683.P17789304423585038432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (3 * (n + 1)) + A001223 (3 * n + 4)

end

end A088683.P17789304423585038432

namespace A088683

/-- `A001223(3*(n+1))+A001223(3*n+4)` -/
def P17789304423585038432.Spec : Prop :=
  ∀ n, P17789304423585038432.a n = A088683 (n + 1)

end A088683

/-! ## A088683.P15323289416292538718

`A031369(n+2)-A031336(n+1)`
-/

namespace A088683.P15323289416292538718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031369 (n + 2) - A031336 (n + 1)

end

end A088683.P15323289416292538718

namespace A088683

/-- `A031369(n+2)-A031336(n+1)` -/
def P15323289416292538718.Spec : Prop :=
  ∀ n, P15323289416292538718.a n = A088683 (n + 1)

end A088683

/-! ## A088683.P12320483741011067839

`A031166(3*n+1)-A031131(3*n+1)`
-/

namespace A088683.P12320483741011067839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031166 (3 * n + 1) - A031131 (3 * n + 1)

end

end A088683.P12320483741011067839

namespace A088683

/-- `A031166(3*n+1)-A031131(3*n+1)` -/
def P12320483741011067839.Spec : Prop :=
  ∀ n, P12320483741011067839.a n = A088683 (n + 1)

end A088683

/-! ## A088683.P15001471140479662327

`A031131(3*(n+1))`
-/

namespace A088683.P15001471140479662327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031131 (3 * (n + 1))

end

end A088683.P15001471140479662327

namespace A088683

/-- `A031131(3*(n+1))` -/
def P15001471140479662327.Spec : Prop :=
  ∀ n, P15001471140479662327.a n = A088683 (n + 1)

end A088683

/-! ## A088683.P13413822781164136655

`A075527(3*(n+1))`
-/

namespace A088683.P13413822781164136655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075527 (3 * (n + 1))

end

end A088683.P13413822781164136655

namespace A088683

/-- `A075527(3*(n+1))` -/
def P13413822781164136655.Spec : Prop :=
  ∀ n, P13413822781164136655.a n = A088683 (n + 1)

end A088683

/-! ## A088683.P14293650794205894486

`A046930(3*n+4)+2`
-/

namespace A088683.P14293650794205894486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046930 (3 * n + 4) + 2

end

end A088683.P14293650794205894486

namespace A088683

/-- `A046930(3*n+4)+2` -/
def P14293650794205894486.Spec : Prop :=
  ∀ n, P14293650794205894486.a n = A088683 (n + 1)

end A088683

/-! ## A088683.P4737788259808774748

`2*A052288(3*n+2)`
-/

namespace A088683.P4737788259808774748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052288 (3 * n + 2)

end

end A088683.P4737788259808774748

namespace A088683

/-- `2*A052288(3*n+2)` -/
def P4737788259808774748.Spec : Prop :=
  ∀ n, P4737788259808774748.a n = A088683 (n + 1)

end A088683

/-! ## A088683.P11162323688456861392

`2*A115061(3*n+4)`
-/

namespace A088683.P11162323688456861392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A115061 (3 * n + 4)

end

end A088683.P11162323688456861392

namespace A088683

/-- `2*A115061(3*n+4)` -/
def P11162323688456861392.Spec : Prop :=
  ∀ n, P11162323688456861392.a n = A088683 (n + 1)

end A088683

/-! ## A088683.P9576185605794476448

`2*A162345(3*n+4)`
-/

namespace A088683.P9576185605794476448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A162345 (3 * n + 4)

end

end A088683.P9576185605794476448

namespace A088683

/-- `2*A162345(3*n+4)` -/
def P9576185605794476448.Spec : Prop :=
  ∀ n, P9576185605794476448.a n = A088683 (n + 1)

end A088683

/-! ## A088683.P11095526084803737289

`A159461(3*(n+1)+1)+2`
-/

namespace A088683.P11095526084803737289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159461 (3 * (n + 1) + 1) + 2

end

end A088683.P11095526084803737289

namespace A088683

/-- `A159461(3*(n+1)+1)+2` -/
def P11095526084803737289.Spec : Prop :=
  ∀ n, P11095526084803737289.a n = A088683 (n + 1)

end A088683

/-! ## A088683.P16733606491044023410

`filter[A075527(3*n), A005171(#)]`
-/

namespace A088683.P16733606491044023410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075527 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A088683.P16733606491044023410

namespace A088683

/-- `filter[A075527(3*n), A005171(#)]` -/
def P16733606491044023410.Spec : Prop :=
  ∀ n, P16733606491044023410.a n = A088683 (n + 1)

end A088683

/-! ## A088683.P4825610901019438991

`filter[A075527(3*n), A066247(#)]`
-/

namespace A088683.P4825610901019438991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075527 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A088683.P4825610901019438991

namespace A088683

/-- `filter[A075527(3*n), A066247(#)]` -/
def P4825610901019438991.Spec : Prop :=
  ∀ n, P4825610901019438991.a n = A088683 (n + 1)

end A088683

/-! ## A088683.P2073594590612065891

`filter[A075527(3*n), A091247(#)]`
-/

namespace A088683.P2073594590612065891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075527 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091247 (f1 j).toNat = 1) n)

end

end A088683.P2073594590612065891

namespace A088683

/-- `filter[A075527(3*n), A091247(#)]` -/
def P2073594590612065891.Spec : Prop :=
  ∀ n, P2073594590612065891.a n = A088683 (n + 1)

end A088683

/-! ## A088683.P16522523391110715477

`filter[A075527(3*n), A093521(#)]`
-/

namespace A088683.P16522523391110715477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075527 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093521 (f1 j).toNat = 1) n)

end

end A088683.P16522523391110715477

namespace A088683

/-- `filter[A075527(3*n), A093521(#)]` -/
def P16522523391110715477.Spec : Prop :=
  ∀ n, P16522523391110715477.a n = A088683 (n + 1)

end A088683

/-! ## A088683.P18359995259673788503

`filter[A075527(3*n), A181359(#)]`
-/

namespace A088683.P18359995259673788503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075527 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181359 (f1 j).toNat = 1) n)

end

end A088683.P18359995259673788503

namespace A088683

/-- `filter[A075527(3*n), A181359(#)]` -/
def P18359995259673788503.Spec : Prop :=
  ∀ n, P18359995259673788503.a n = A088683 (n + 1)

end A088683

/-! ## A088683.P2528620478531775645

`filter[A075527(3*n), A267043(#)]`
-/

namespace A088683.P2528620478531775645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075527 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267043 (f1 j).toNat = 1) n)

end

end A088683.P2528620478531775645

namespace A088683

/-- `filter[A075527(3*n), A267043(#)]` -/
def P2528620478531775645.Spec : Prop :=
  ∀ n, P2528620478531775645.a n = A088683 (n + 1)

end A088683

/-! ## A088683.P4489889843355941865

`filter[A075527(3*n), A283265(#)]`
-/

namespace A088683.P4489889843355941865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075527 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283265 (f1 j).toNat = 1) n)

end

end A088683.P4489889843355941865

namespace A088683

/-- `filter[A075527(3*n), A283265(#)]` -/
def P4489889843355941865.Spec : Prop :=
  ∀ n, P4489889843355941865.a n = A088683 (n + 1)

end A088683

/-! ## A088683.P1786202075711093707

`A065091(A016777(n+1))-A065091(3*n+2)`
-/

namespace A088683.P1786202075711093707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A016777 (n + 1)).toNat - A065091 (3 * n + 2)

end

end A088683.P1786202075711093707

namespace A088683

/-- `A065091(A016777(n+1))-A065091(3*n+2)` -/
def P1786202075711093707.Spec : Prop :=
  ∀ n, P1786202075711093707.a n = A088683 (n + 1)

end A088683

/-! ## A088683.P18437983311925350616

`A006093(3*n+5)-A000010(A065091(3*n+2))`
-/

namespace A088683.P18437983311925350616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (3 * n + 5) - A000010 (A065091 (3 * n + 2)).toNat

end

end A088683.P18437983311925350616

namespace A088683

/-- `A006093(3*n+5)-A000010(A065091(3*n+2))` -/
def P18437983311925350616.Spec : Prop :=
  ∀ n, P18437983311925350616.a n = A088683 (n + 1)

end A088683

/-!
# A088684: Prime(3n+3)-prime(3n+1).

The programs for A088684, the canonical program `A088684.P10195923140512723538` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088684 has offset 1).

The definition of A088684 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(3*(n+1)+3)-A000040(3*(n+1)+1)` (program `A088684.P10195923140512723538`, by `A088684.P10195923140512723538.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A088684.P10195923140512723538

`A000040(3*(n+1)+3)-A000040(3*(n+1)+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A088684

/-- `A000040(3*(n+1)+3)-A000040(3*(n+1)+1)` -/
def P10195923140512723538.Spec : Prop :=
  ∀ n, P10195923140512723538.a n = A088684 (n + 1)

theorem P10195923140512723538.correct : P10195923140512723538.Spec := by
  intro n
  simp only [A088684, Nat.add_sub_cancel]

end A088684

/-! ## A088684.P11538417431754173552

`A001223(3*n+4)+A001223(3*n+5)`
-/

namespace A088684.P11538417431754173552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (3 * n + 4) + A001223 (3 * n + 5)

end

end A088684.P11538417431754173552

namespace A088684

/-- `A001223(3*n+4)+A001223(3*n+5)` -/
def P11538417431754173552.Spec : Prop :=
  ∀ n, P11538417431754173552.a n = A088684 (n + 1)

theorem P11538417431754173552.correct : P11538417431754173552.Spec := by
  intro n
  simp only [A088684, Nat.add_sub_cancel, A088684.P11538417431754173552.a, A088684.P10195923140512723538.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5034056745985311719.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A088684

/-! ## A088684.P3650450808195772551

`A031336(n+2)-A031377(n+2)`
-/

namespace A088684.P3650450808195772551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031336 (n + 2) - A031377 (n + 2)

end

end A088684.P3650450808195772551

namespace A088684

/-- `A031336(n+2)-A031377(n+2)` -/
def P3650450808195772551.Spec : Prop :=
  ∀ n, P3650450808195772551.a n = A088684 (n + 1)

end A088684

/-! ## A088684.P16391925025472246250

`A031167(3*n+1)-A031165(3*n+1)`
-/

namespace A088684.P16391925025472246250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031167 (3 * n + 1) - A031165 (3 * n + 1)

end

end A088684.P16391925025472246250

namespace A088684

/-- `A031167(3*n+1)-A031165(3*n+1)` -/
def P16391925025472246250.Spec : Prop :=
  ∀ n, P16391925025472246250.a n = A088684 (n + 1)

theorem P16391925025472246250.correct : P16391925025472246250.Spec := by
  intro n
  simp only [A088684, Nat.add_sub_cancel, A088684.P16391925025472246250.a, A088684.P10195923140512723538.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031165, A031165.P11271458498397254626.a, A031167, A031167.P2441032652030270759.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A088684

/-! ## A088684.P16232450984537618540

`A031131(3*n+4)`
-/

namespace A088684.P16232450984537618540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031131 (3 * n + 4)

end

end A088684.P16232450984537618540

namespace A088684

/-- `A031131(3*n+4)` -/
def P16232450984537618540.Spec : Prop :=
  ∀ n, P16232450984537618540.a n = A088684 (n + 1)

theorem P16232450984537618540.correct : P16232450984537618540.Spec := by
  intro n
  simp only [A088684, Nat.add_sub_cancel, A088684.P16232450984537618540.a, A088684.P10195923140512723538.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031131, A031131.P2453725465626413076.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A088684

/-! ## A088684.P16476919673657538014

`A261468(3*(n+1)+1)`
-/

namespace A088684.P16476919673657538014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261468 (3 * (n + 1) + 1)

end

end A088684.P16476919673657538014

namespace A088684

/-- `A261468(3*(n+1)+1)` -/
def P16476919673657538014.Spec : Prop :=
  ∀ n, P16476919673657538014.a n = A088684 (n + 1)

end A088684

/-! ## A088684.P8328276794180492814

`2*A052288(3*(n+1))`
-/

namespace A088684.P8328276794180492814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052288 (3 * (n + 1))

end

end A088684.P8328276794180492814

namespace A088684

/-- `2*A052288(3*(n+1))` -/
def P8328276794180492814.Spec : Prop :=
  ∀ n, P8328276794180492814.a n = A088684 (n + 1)

end A088684

/-! ## A088684.P8456792825124138465

`A075527(3*(n+1)+1)`
-/

namespace A088684.P8456792825124138465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075527 (3 * (n + 1) + 1)

end

end A088684.P8456792825124138465

namespace A088684

/-- `A075527(3*(n+1)+1)` -/
def P8456792825124138465.Spec : Prop :=
  ∀ n, P8456792825124138465.a n = A088684 (n + 1)

end A088684

/-! ## A088684.P13474962975044862078

`A046930(3*n+5)+2`
-/

namespace A088684.P13474962975044862078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046930 (3 * n + 5) + 2

end

end A088684.P13474962975044862078

namespace A088684

/-- `A046930(3*n+5)+2` -/
def P13474962975044862078.Spec : Prop :=
  ∀ n, P13474962975044862078.a n = A088684 (n + 1)

end A088684

/-! ## A088684.P15560763727251925162

`2*A115061(3*n+5)`
-/

namespace A088684.P15560763727251925162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A115061 (3 * n + 5)

end

end A088684.P15560763727251925162

namespace A088684

/-- `2*A115061(3*n+5)` -/
def P15560763727251925162.Spec : Prop :=
  ∀ n, P15560763727251925162.a n = A088684 (n + 1)

end A088684

/-! ## A088684.P3272431693122497497

`2*A162345(3*n+5)`
-/

namespace A088684.P3272431693122497497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A162345 (3 * n + 5)

end

end A088684.P3272431693122497497

namespace A088684

/-- `2*A162345(3*n+5)` -/
def P3272431693122497497.Spec : Prop :=
  ∀ n, P3272431693122497497.a n = A088684 (n + 1)

end A088684

/-! ## A088684.P1221122979420811414

`A159461(2*n+5+n)+2`
-/

namespace A088684.P1221122979420811414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159461 (2 * n + 5 + n) + 2

end

end A088684.P1221122979420811414

namespace A088684

/-- `A159461(2*n+5+n)+2` -/
def P1221122979420811414.Spec : Prop :=
  ∀ n, P1221122979420811414.a n = A088684 (n + 1)

end A088684

/-! ## A088684.P6782866835614604022

`A013633(A031369(n+2))`
-/

namespace A088684.P6782866835614604022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013633 (A031369 (n + 2)).toNat

end

end A088684.P6782866835614604022

namespace A088684

/-- `A013633(A031369(n+2))` -/
def P6782866835614604022.Spec : Prop :=
  ∀ n, P6782866835614604022.a n = A088684 (n + 1)

end A088684

/-! ## A088684.P5685821436003658053

`A105161(A031377(n+2))`
-/

namespace A088684.P5685821436003658053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105161 (A031377 (n + 2)).toNat

end

end A088684.P5685821436003658053

namespace A088684

/-- `A105161(A031377(n+2))` -/
def P5685821436003658053.Spec : Prop :=
  ∀ n, P5685821436003658053.a n = A088684 (n + 1)

end A088684

/-! ## A088684.P2735151434361327612

`A105161(Δ[A000040(3*n+1)]+A000040(3*n+1))`
-/

namespace A088684.P2735151434361327612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105161 (f1 (n + 1) - f1 n + A000040 (3 * n + 1)).toNat

end

end A088684.P2735151434361327612

namespace A088684

/-- `A105161(Δ[A000040(3*n+1)]+A000040(3*n+1))` -/
def P2735151434361327612.Spec : Prop :=
  ∀ n, P2735151434361327612.a n = A088684 (n + 1)

end A088684

/-!
# A088685: Records for the sum-of-primes function sopfr(n) if sopfr(prime) is taken to be 0.

The programs for A088685, the canonical program `A088685.P17946984410848939442` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088685 has offset 1).

The definition of A088685 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5136 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088685.P17946984410848939442

`record[A001414(n+1)%(1-lcm(2, n))]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A088685

/-- `record[A001414(n+1)%(1-lcm(2, n))]` -/
def P17946984410848939442.Spec : Prop :=
  ∀ n, P17946984410848939442.a n = A088685 (n + 1)

theorem P17946984410848939442.correct : P17946984410848939442.Spec := by
  intro n
  simp only [A088685, Nat.add_sub_cancel]

end A088685

/-! ## A088685.P3472768619614480075

`A001414(A088686(n+1))`
-/

namespace A088685.P3472768619614480075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A088686 (n + 1)).toNat

end

end A088685.P3472768619614480075

namespace A088685

/-- `A001414(A088686(n+1))` -/
def P3472768619614480075.Spec : Prop :=
  ∀ n, P3472768619614480075.a n = A088685 (n + 1)

end A088685

/-! ## A088685.P10152410907786969970

`record[floor(atan(n/2))*A107463(n)]`
-/

namespace A088685.P10152410907786969970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan ((n : ℚ) / 2 : ℝ)⌋ * A107463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088685.P10152410907786969970

namespace A088685

/-- `record[floor(atan(n/2))*A107463(n)]` -/
def P10152410907786969970.Spec : Prop :=
  ∀ n, P10152410907786969970.a n = A088685 (n + 1)

end A088685

/-! ## A088685.P12905397334292080249

`record[A206475(n)+a(n-1)]` with `a(0)=0, a(1)=4`
-/

namespace A088685.P12905397334292080249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n f1 =>
  A206475 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088685.P12905397334292080249

namespace A088685

/-- `record[A206475(n)+a(n-1)]` -/
def P12905397334292080249.Spec : Prop :=
  ∀ n, P12905397334292080249.a n = A088685 (n + 1)

end A088685

/-! ## A088685.P12887170284696268716

`record[A001414(A018252(n+1))]`
-/

namespace A088685.P12887170284696268716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A018252 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088685.P12887170284696268716

namespace A088685

/-- `record[A001414(A018252(n+1))]` -/
def P12887170284696268716.Spec : Prop :=
  ∀ n, P12887170284696268716.a n = A088685 (n + 1)

end A088685

/-! ## A088685.P15670665198592034300

`record[A352167(n+1)]`
-/

namespace A088685.P15670665198592034300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352167 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088685.P15670665198592034300

namespace A088685

/-- `record[A352167(n+1)]` -/
def P15670665198592034300.Spec : Prop :=
  ∀ n, P15670665198592034300.a n = A088685 (n + 1)

end A088685

/-! ## A088685.P9773527552212740710

`record[A063655(n+1)%(n+2)]`
-/

namespace A088685.P9773527552212740710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063655 (n + 1)) (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088685.P9773527552212740710

namespace A088685

/-- `record[A063655(n+1)%(n+2)]` -/
def P9773527552212740710.Spec : Prop :=
  ∀ n, P9773527552212740710.a n = A088685 (n + 1)

end A088685

/-! ## A088685.P5666469812552817635

`record[A163520(n+1)%(n+2)]`
-/

namespace A088685.P5666469812552817635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163520 (n + 1)) (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088685.P5666469812552817635

namespace A088685

/-- `record[A163520(n+1)%(n+2)]` -/
def P5666469812552817635.Spec : Prop :=
  ∀ n, P5666469812552817635.a n = A088685 (n + 1)

end A088685

/-! ## A088685.P886792787570552048

`record[A074320(n+1)%(2*(n+1))]`
-/

namespace A088685.P886792787570552048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074320 (n + 1)) (2 * (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088685.P886792787570552048

namespace A088685

/-- `record[A074320(n+1)%(2*(n+1))]` -/
def P886792787570552048.Spec : Prop :=
  ∀ n, P886792787570552048.a n = A088685 (n + 1)

end A088685

/-! ## A088685.P17670810927354729972

`record[(A262767(n+1)/2)%(n+2)]`
-/

namespace A088685.P17670810927354729972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A262767 (n + 1) : ℚ) / 2)) (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088685.P17670810927354729972

namespace A088685

/-- `record[(A262767(n+1)/2)%(n+2)]` -/
def P17670810927354729972.Spec : Prop :=
  ∀ n, P17670810927354729972.a n = A088685 (n + 1)

end A088685

/-!
# A088686: Positions of the records in the sum-of-primes function sopfr(n) if sopfr(prime) is taken to be 0.

The programs for A088686, the canonical program `A088686.P10388938499725904433` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088686 has offset 1).

The definition of A088686 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 672 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088686.P12210439671846346462

`record[A077127(n)-A002483(n)]`
-/

namespace A088686.P12210439671846346462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077127 n - A002483 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088686.P12210439671846346462

namespace A088686

/-- `record[A077127(n)-A002483(n)]` -/
def P12210439671846346462.Spec : Prop :=
  ∀ n, P12210439671846346462.a n = A088686 (n + 1)

end A088686

/-! ## A088686.P9550854085306150444

`A058359(A067126(n+1))+A000203(A067126(n+1))`
-/

namespace A088686.P9550854085306150444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058359 (A067126 (n + 1)).toNat + A000203 (A067126 (n + 1)).toNat

end

end A088686.P9550854085306150444

namespace A088686

/-- `A058359(A067126(n+1))+A000203(A067126(n+1))` -/
def P9550854085306150444.Spec : Prop :=
  ∀ n, P9550854085306150444.a n = A088686 (n + 1)

end A088686

/-! ## A088686.P13178864127948067058

`record[A072593(n+1)*A345941(A284011(n+1))]`
-/

namespace A088686.P13178864127948067058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072593 (n + 1) * A345941 (A284011 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088686.P13178864127948067058

namespace A088686

/-- `record[A072593(n+1)*A345941(A284011(n+1))]` -/
def P13178864127948067058.Spec : Prop :=
  ∀ n, P13178864127948067058.a n = A088686 (n + 1)

end A088686

/-! ## A088686.P10388938499725904433

`eq[A074374(n), A111074(n)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A088686

/-- `eq[A074374(n), A111074(n)]` -/
def P10388938499725904433.Spec : Prop :=
  ∀ n, (P10388938499725904433.a n : ℤ) = A088686 (n + 1)

theorem P10388938499725904433.correct : P10388938499725904433.Spec := by
  intro n
  simp only [A088686, Nat.add_sub_cancel]

end A088686

/-! ## A088686.P2656711501127983611

`eq[A001414(A028310(n)), A084964(n)]`
-/

namespace A088686.P2656711501127983611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084964 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A088686.P2656711501127983611

namespace A088686

/-- `eq[A001414(A028310(n)), A084964(n)]` -/
def P2656711501127983611.Spec : Prop :=
  ∀ n, (P2656711501127983611.a n : ℤ) = A088686 (n + 1)

end A088686

/-!
# A088687: Numbers that can be represented as j^4 + k^4, with 0 < j < k, in exactly one way.

The programs for A088687, there is no canonical definition to state claims against.
-/

/-! ## A088687.P3188951713810197066

`∩[A003336(n+1), A028983(n+1)]`
-/

namespace A088687.P3188951713810197066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088687.P3188951713810197066

/-! ## A088687.P9948391720293532992

`A038572(A165447(n+2)+A055096(n+2)²)`
-/

namespace A088687.P9948391720293532992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A165447 (n + 2) + A055096 (n + 2) ^ 2).toNat

end

end A088687.P9948391720293532992

/-! ## A088687.P11112693220432751469

`A004525(A165447(n+2)+A055096(n+2)²)`
-/

namespace A088687.P11112693220432751469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A165447 (n + 2) + A055096 (n + 2) ^ 2).toNat

end

end A088687.P11112693220432751469

/-! ## A088687.P14728732442070118626

`A004526(A165447(n+2)+A055096(n+2)²)`
-/

namespace A088687.P14728732442070118626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A165447 (n + 2) + A055096 (n + 2) ^ 2).toNat

end

end A088687.P14728732442070118626

/-! ## A088687.P14364048840398067718

`filter[A363714(n+1), A216280(#)]`
-/

namespace A088687.P14364048840398067718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363714 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A216280 (f1 j).toNat = 1) n)

end

end A088687.P14364048840398067718

/-!
# A088688: Binomial transform of A088689.

The programs for A088688, the canonical program `A088688.P3404494729207677874` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088688 has offset 0).

The definition of A088688 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A088688.P3404494729207677874

`2^n-cos(π*n/3)-3^(n/2)*sin(π*n/6)/sqrt(3)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A088688

/-- `2^n-cos(π*n/3)-3^(n/2)*sin(π*n/6)/sqrt(3)` -/
def P3404494729207677874.Spec : Prop :=
  ∀ n, P3404494729207677874.a n = (A088688 n : ℝ)

end A088688

/-! ## A088688.P38122522142159933

`A290993(n+1)+A024495(n+1)`
-/

namespace A088688.P38122522142159933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290993 (n + 1) + A024495 (n + 1)

end

end A088688.P38122522142159933

namespace A088688

/-- `A290993(n+1)+A024495(n+1)` -/
def P38122522142159933.Spec : Prop :=
  ∀ n, P38122522142159933.a n = A088688 n

end A088688

/-! ## A088688.P832062854866661677

`A227430(n+1)+2*A290993(n+1)`
-/

namespace A088688.P832062854866661677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227430 (n + 1) + 2 * A290993 (n + 1)

end

end A088688.P832062854866661677

namespace A088688

/-- `A227430(n+1)+2*A290993(n+1)` -/
def P832062854866661677.Spec : Prop :=
  ∀ n, P832062854866661677.a n = A088688 n

end A088688

/-! ## A088688.P13960355821592222794

`A000079(n)-(A134581(n)+A010892(n+1))`
-/

namespace A088688.P13960355821592222794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (A134581 n + A010892 (n + 1))

end

end A088688.P13960355821592222794

namespace A088688

/-- `A000079(n)-(A134581(n)+A010892(n+1))` -/
def P13960355821592222794.Spec : Prop :=
  ∀ n, P13960355821592222794.a n = A088688 n

end A088688

/-! ## A088688.P10662826253616999865

`A024495(n+1)+A024495(n+1)-A227430(n+1)`
-/

namespace A088688.P10662826253616999865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024495 (n + 1) + (A024495 (n + 1) - A227430 (n + 1))

end

end A088688.P10662826253616999865

namespace A088688

/-- `A024495(n+1)+A024495(n+1)-A227430(n+1)` -/
def P10662826253616999865.Spec : Prop :=
  ∀ n, P10662826253616999865.a n = A088688 n

end A088688

/-! ## A088688.P14838201343636758608

`Δ[A281166(n)]-A134581(n)`
-/

namespace A088688.P14838201343636758608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281166 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A134581 n

end

end A088688.P14838201343636758608

namespace A088688

/-- `Δ[A281166(n)]-A134581(n)` -/
def P14838201343636758608.Spec : Prop :=
  ∀ n, P14838201343636758608.a n = A088688 n

end A088688

/-! ## A088688.P7544844136709419311

`Δ[A130781(n)+Δ[A119336(n)]]`
-/

namespace A088688.P7544844136709419311
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119336 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130781 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088688.P7544844136709419311

namespace A088688

/-- `Δ[A130781(n)+Δ[A119336(n)]]` -/
def P7544844136709419311.Spec : Prop :=
  ∀ n, P7544844136709419311.a n = A088688 n

end A088688

/-! ## A088688.P7662473530629898055

`A290993(n+1)+Δ[A130781(n)]`
-/

namespace A088688.P7662473530629898055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130781 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290993 (n + 1) + (f1 (n + 1) - f1 n)

end

end A088688.P7662473530629898055

namespace A088688

/-- `A290993(n+1)+Δ[A130781(n)]` -/
def P7662473530629898055.Spec : Prop :=
  ∀ n, P7662473530629898055.a n = A088688 n

end A088688

/-! ## A088688.P1820184168469991829

`2*A024495(n+1)-A227430(n+1)`
-/

namespace A088688.P1820184168469991829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024495 (n + 1) - A227430 (n + 1)

end

end A088688.P1820184168469991829

namespace A088688

/-- `2*A024495(n+1)-A227430(n+1)` -/
def P1820184168469991829.Spec : Prop :=
  ∀ n, P1820184168469991829.a n = A088688 n

end A088688

/-!
# A088689: Jacobsthal numbers modulo 3.

The programs for A088689, the canonical program `A088689.P12437325045673445681` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088689 has offset 0).

The definition of A088689 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A088689.P12437325045673445681

`a(n-6)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=0, a(4)=2, a(5)=2`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A088689

/-- `a(n-6)` -/
def P12437325045673445681.Spec : Prop :=
  ∀ n, (P12437325045673445681.a n : ℤ) = A088689 n

theorem P12437325045673445681.correct : P12437325045673445681.Spec := by
  intro n
  simp only [A088689]

end A088689

/-!
# A088690: E.g.f.: A(x) = f(x*A(x)), where f(x) = (1+x)*exp(x).

The programs for A088690, there is no canonical definition to state claims against.
-/

/-! ## A088690.P3445370758978268346

`A052885(n+1)/(n+1)`
-/

namespace A088690.P3445370758978268346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052885 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A088690.P3445370758978268346

/-! ## A088690.P6793767004302055245

`A293145(n+1)/(n+1)²`
-/

namespace A088690.P6793767004302055245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293145 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A088690.P6793767004302055245

/-!
# A088691: E.g.f.: A(x) = f(x*A(x)^2), where f(x) = exp(arctan(x)).

The programs for A088691, there is no canonical definition to state claims against.
-/

/-! ## A088691.P2661563239066079625

`A005408(A024812((n-1)*a(n-1)))` with `a(0)=1, a(1)=1`
-/

namespace A088691.P2661563239066079625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A005408 (A024812 (((n : ℤ) - 1) * a (n - 1)).toNat).toNat

end

end A088691.P2661563239066079625

/-!
# A088692: E.g.f: A(x) = f(x*A(x)), where f(x) = (1+2*x)*exp(x).

The programs for A088692, there is no canonical definition to state claims against.
-/

/-! ## A088692.P14797914121586171078

`A376123(n+1)/(n+1)`
-/

namespace A088692.P14797914121586171078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A376123 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A088692.P14797914121586171078

/-!
# A088695: E.g.f. satisfies A(x) = f(x*A(x)), where f(x) = exp(x+x^2).

The programs for A088695, there is no canonical definition to state claims against.
-/

/-! ## A088695.P3802050601445642247

`A067840((n+1)^n+3)`
-/

namespace A088695.P3802050601445642247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067840 ((n + 1) ^ n + 3)

end

end A088695.P3802050601445642247

/-!
# A088696: Triangle read by rows, giving number of partial quotients in continued fraction representation of terms in the left branch of the infinite Stern-Brocot tree.

The programs for A088696, the canonical program `A088696.P11522645216660844429` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088696 has offset 1).

The definition of A088696 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088696.P13600643804742958474

`A063787(A088208(n))`
-/

namespace A088696.P13600643804742958474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063787 (A088208 n).toNat

end

end A088696.P13600643804742958474

namespace A088696

/-- `A063787(A088208(n))` -/
def P13600643804742958474.Spec : Prop :=
  ∀ n, P13600643804742958474.a n = A088696 (n + 1)

end A088696

/-! ## A088696.P17383345701467569639

`A000006(A164738(n))`
-/

namespace A088696.P17383345701467569639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A164738 n).toNat

end

end A088696.P17383345701467569639

namespace A088696

/-- `A000006(A164738(n))` -/
def P17383345701467569639.Spec : Prop :=
  ∀ n, P17383345701467569639.a n = A088696 (n + 1)

end A088696

/-! ## A088696.P1351737661396840830

`A005811(A054429(n+1))`
-/

namespace A088696.P1351737661396840830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A054429 (n + 1)).toNat

end

end A088696.P1351737661396840830

namespace A088696

/-- `A005811(A054429(n+1))` -/
def P1351737661396840830.Spec : Prop :=
  ∀ n, P1351737661396840830.a n = A088696 (n + 1)

end A088696

/-! ## A088696.P11522645216660844429

`A072339(A006257(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A088696

/-- `A072339(A006257(n+1))` -/
def P11522645216660844429.Spec : Prop :=
  ∀ n, P11522645216660844429.a n = A088696 (n + 1)

theorem P11522645216660844429.correct : P11522645216660844429.Spec := by
  intro n
  simp only [A088696, Nat.add_sub_cancel]

end A088696

/-! ## A088696.P11588316293089462479

`A088748(A053645(n+1))`
-/

namespace A088696.P11588316293089462479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088748 (A053645 (n + 1)).toNat

end

end A088696.P11588316293089462479

namespace A088696

/-- `A088748(A053645(n+1))` -/
def P11588316293089462479.Spec : Prop :=
  ∀ n, P11588316293089462479.a n = A088696 (n + 1)

end A088696

/-! ## A088696.P14208295124998926803

`A072339(A139708(n+1))`
-/

namespace A088696.P14208295124998926803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072339 (A139708 (n + 1)).toNat

end

end A088696.P14208295124998926803

namespace A088696

/-- `A072339(A139708(n+1))` -/
def P14208295124998926803.Spec : Prop :=
  ∀ n, P14208295124998926803.a n = A088696 (n + 1)

end A088696

/-! ## A088696.P12265180267777749334

`A000120(A233280(n+1))`
-/

namespace A088696.P12265180267777749334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A233280 (n + 1)).toNat

end

end A088696.P12265180267777749334

namespace A088696

/-- `A000120(A233280(n+1))` -/
def P12265180267777749334.Spec : Prop :=
  ∀ n, P12265180267777749334.a n = A088696 (n + 1)

end A088696

/-! ## A088696.P11943777393278899573

`A000120(A362160(n))+1`
-/

namespace A088696.P11943777393278899573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A362160 n).toNat + 1

end

end A088696.P11943777393278899573

namespace A088696

/-- `A000120(A362160(n))+1` -/
def P11943777393278899573.Spec : Prop :=
  ∀ n, P11943777393278899573.a n = A088696 (n + 1)

end A088696

/-! ## A088696.P1417423979278531241

`A227185(A258746(n+1))`
-/

namespace A088696.P1417423979278531241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227185 (A258746 (n + 1)).toNat

end

end A088696.P1417423979278531241

namespace A088696

/-- `A227185(A258746(n+1))` -/
def P1417423979278531241.Spec : Prop :=
  ∀ n, P1417423979278531241.a n = A088696 (n + 1)

end A088696

/-! ## A088696.P5398316357644318572

`A072339(A256251(n+1)/2)`
-/

namespace A088696.P5398316357644318572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072339 (SequenceMachineLib.roundAway ((A256251 (n + 1) : ℚ) / 2)).toNat

end

end A088696.P5398316357644318572

namespace A088696

/-- `A072339(A256251(n+1)/2)` -/
def P5398316357644318572.Spec : Prop :=
  ∀ n, P5398316357644318572.a n = A088696 (n + 1)

end A088696

/-! ## A088696.P12777597887845369913

`A005811(A233275(A233278(n+1)))`
-/

namespace A088696.P12777597887845369913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A233275 (A233278 (n + 1)).toNat).toNat

end

end A088696.P12777597887845369913

namespace A088696

/-- `A005811(A233275(A233278(n+1)))` -/
def P12777597887845369913.Spec : Prop :=
  ∀ n, P12777597887845369913.a n = A088696 (n + 1)

end A088696

/-! ## A088696.P10009024158322058778

`A005811(A331274(A298847(n+1)))`
-/

namespace A088696.P10009024158322058778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A331274 (A298847 (n + 1)).toNat).toNat

end

end A088696.P10009024158322058778

namespace A088696

/-- `A005811(A331274(A298847(n+1)))` -/
def P10009024158322058778.Spec : Prop :=
  ∀ n, P10009024158322058778.a n = A088696 (n + 1)

end A088696

/-! ## A088696.P13326987011273314132

`A005811(A006519(n+1)+A006257(n))`
-/

namespace A088696.P13326987011273314132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A006519 (n + 1) + A006257 n).toNat

end

end A088696.P13326987011273314132

namespace A088696

/-- `A005811(A006519(n+1)+A006257(n))` -/
def P13326987011273314132.Spec : Prop :=
  ∀ n, P13326987011273314132.a n = A088696 (n + 1)

end A088696

/-! ## A088696.P10345279553634397915

`A072339(A256251(n+1))`
-/

namespace A088696.P10345279553634397915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072339 (A256251 (n + 1)).toNat

end

end A088696.P10345279553634397915

namespace A088696

/-- `A072339(A256251(n+1))` -/
def P10345279553634397915.Spec : Prop :=
  ∀ n, P10345279553634397915.a n = A088696 (n + 1)

end A088696

/-! ## A088696.P1782081434008795605

`A037834(A004754(n+1))`
-/

namespace A088696.P1782081434008795605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037834 (A004754 (n + 1)).toNat

end

end A088696.P1782081434008795605

namespace A088696

/-- `A037834(A004754(n+1))` -/
def P1782081434008795605.Spec : Prop :=
  ∀ n, P1782081434008795605.a n = A088696 (n + 1)

end A088696

/-! ## A088696.P17481912900138295311

`A037834(A092754(n+1)+1)`
-/

namespace A088696.P17481912900138295311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037834 (A092754 (n + 1) + 1).toNat

end

end A088696.P17481912900138295311

namespace A088696

/-- `A037834(A092754(n+1)+1)` -/
def P17481912900138295311.Spec : Prop :=
  ∀ n, P17481912900138295311.a n = A088696 (n + 1)

end A088696

/-! ## A088696.P12088115437013662297

`A037834(eq[A090996(2*n+1)², A090996(n)])`
-/

namespace A088696.P12088115437013662297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (2 * n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037834 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A088696.P12088115437013662297

namespace A088696

/-- `A037834(eq[A090996(2*n+1)², A090996(n)])` -/
def P12088115437013662297.Spec : Prop :=
  ∀ n, P12088115437013662297.a n = A088696 (n + 1)

end A088696

/-! ## A088696.P11761730411921048267

`A005811(lt[n, A006068(n)])-1`
-/

namespace A088696.P11761730411921048267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) - 1

end

end A088696.P11761730411921048267

namespace A088696

/-- `A005811(lt[n, A006068(n)])-1` -/
def P11761730411921048267.Spec : Prop :=
  ∀ n, P11761730411921048267.a n = A088696 (n + 1)

end A088696

/-! ## A088696.P15726222327476101041

`A088748(A030109(A030109(2*n+3)))`
-/

namespace A088696.P15726222327476101041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088748 (A030109 (A030109 (2 * n + 3)).toNat).toNat

end

end A088696.P15726222327476101041

namespace A088696

/-- `A088748(A030109(A030109(2*n+3)))` -/
def P15726222327476101041.Spec : Prop :=
  ∀ n, P15726222327476101041.a n = A088696 (n + 1)

end A088696

/-! ## A088696.P12798212134473785418

`A037834(A004756(n+1))`
-/

namespace A088696.P12798212134473785418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037834 (A004756 (n + 1)).toNat

end

end A088696.P12798212134473785418

namespace A088696

/-- `A037834(A004756(n+1))` -/
def P12798212134473785418.Spec : Prop :=
  ∀ n, P12798212134473785418.a n = A088696 (n + 1)

end A088696

/-!
# A088697: Replace 0 with 10 in binary representation of n.

The programs for A088697, the canonical program `A088697.P12678659063188516566` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088697 has offset 0).

The definition of A088697 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088697.P12678659063188516566

`(2*a(floor(n/2))+1)*(2-and(1, n))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A088697

/-- `(2*a(floor(n/2))+1)*(2-and(1, n))` -/
def P12678659063188516566.Spec : Prop :=
  ∀ n, P12678659063188516566.a n = A088697 n

theorem P12678659063188516566.correct : P12678659063188516566.Spec := by
  intro n
  simp only [A088697]

end A088697

/-! ## A088697.P14306266511927592444

`A005408(a(floor(n/2)))*A040001(n)` with `a(0)=0`
-/

namespace A088697.P14306266511927592444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A005408 (a ⌊(n : ℚ) / 2⌋.toNat).toNat * A040001 n

end

end A088697.P14306266511927592444

namespace A088697

/-- `A005408(a(floor(n/2)))*A040001(n)` -/
def P14306266511927592444.Spec : Prop :=
  ∀ n, P14306266511927592444.a n = A088697 n

end A088697

/-! ## A088697.P11877225940390075241

`A005408(a(floor(n/2)))*A134451(n)` with `a(0)=0`
-/

namespace A088697.P11877225940390075241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A005408 (a ⌊(n : ℚ) / 2⌋.toNat).toNat * A134451 n

end

end A088697.P11877225940390075241

namespace A088697

/-- `A005408(a(floor(n/2)))*A134451(n)` -/
def P11877225940390075241.Spec : Prop :=
  ∀ n, P11877225940390075241.a n = A088697 n

end A088697

/-! ## A088697.P2671847906258477752

`A016825(a(floor(n/2)))/A000034(n)` with `a(0)=0`
-/

namespace A088697.P2671847906258477752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (A016825 (SequenceMachineLib.roundAway (a ⌊(n : ℚ) / 2⌋.toNat)).toNat : ℚ) / (A000034 n : ℚ)

end

end A088697.P2671847906258477752

namespace A088697

/-- `A016825(a(floor(n/2)))/A000034(n)` -/
def P2671847906258477752.Spec : Prop :=
  ∀ n, P2671847906258477752.a n = (A088697 n : ℚ)

end A088697

/-! ## A088697.P5170071324462755306

`A266150(A080303(n))-A000038(n)`
-/

namespace A088697.P5170071324462755306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266150 (A080303 n).toNat - A000038 n

end

end A088697.P5170071324462755306

namespace A088697

/-- `A266150(A080303(n))-A000038(n)` -/
def P5170071324462755306.Spec : Prop :=
  ∀ n, P5170071324462755306.a n = A088697 n

end A088697

/-!
# A088698: Replace 1 with 11 in binary representation of n.

The programs for A088698, the canonical program `A088698.P17035698120643235049` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088698 has offset 0).

The definition of A088698 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088698.P17035698120643235049

`n%2+(3-(-1)^n)*a(floor(n/2))+1-(-1)^n` with `a(0)=0`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A088698

/-- `n%2+(3-(-1)^n)*a(floor(n/2))+1-(-1)^n` -/
def P17035698120643235049.Spec : Prop :=
  ∀ n, P17035698120643235049.a n = A088698 n

theorem P17035698120643235049.correct : P17035698120643235049.Spec := by
  intro n
  simp only [A088698]

end A088698

/-! ## A088698.P18305981265604992829

`3*A048678(n)`
-/

namespace A088698.P18305981265604992829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A048678 n

end

end A088698.P18305981265604992829

namespace A088698

/-- `3*A048678(n)` -/
def P18305981265604992829.Spec : Prop :=
  ∀ n, P18305981265604992829.a n = A088698 n

end A088698

/-! ## A088698.P13316265723840870796

`3/2*A124108(n)`
-/

namespace A088698.P13316265723840870796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A124108 n : ℚ)

end

end A088698.P13316265723840870796

namespace A088698

/-- `3/2*A124108(n)` -/
def P13316265723840870796.Spec : Prop :=
  ∀ n, P13316265723840870796.a n = (A088698 n : ℚ)

end A088698

/-! ## A088698.P234400161876668071

`A124108(n)+A048678(n)`
-/

namespace A088698.P234400161876668071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124108 n + A048678 n

end

end A088698.P234400161876668071

namespace A088698

/-- `A124108(n)+A048678(n)` -/
def P234400161876668071.Spec : Prop :=
  ∀ n, P234400161876668071.a n = A088698 n

end A088698

/-! ## A088698.P1982397085662210566

`A048678(n+n)+A048678(n)`
-/

namespace A088698.P1982397085662210566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048678 (n + n) + A048678 n

end

end A088698.P1982397085662210566

namespace A088698

/-- `A048678(n+n)+A048678(n)` -/
def P1982397085662210566.Spec : Prop :=
  ∀ n, P1982397085662210566.a n = A088698 n

end A088698

/-! ## A088698.P9767512718748587907

`A277335(A048680(n))`
-/

namespace A088698.P9767512718748587907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277335 (A048680 n).toNat

end

end A088698.P9767512718748587907

namespace A088698

/-- `A277335(A048680(n))` -/
def P9767512718748587907.Spec : Prop :=
  ∀ n, P9767512718748587907.a n = A088698 n

end A088698

/-! ## A088698.P7706399374151033954

`A124108(n)+A003714(A048680(n))`
-/

namespace A088698.P7706399374151033954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124108 n + A003714 (A048680 n).toNat

end

end A088698.P7706399374151033954

namespace A088698

/-- `A124108(n)+A003714(A048680(n))` -/
def P7706399374151033954.Spec : Prop :=
  ∀ n, P7706399374151033954.a n = A088698 n

end A088698

/-! ## A088698.P17043667930831491845

`A003188(A124108(n))`
-/

namespace A088698.P17043667930831491845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A124108 n).toNat

end

end A088698.P17043667930831491845

namespace A088698

/-- `A003188(A124108(n))` -/
def P17043667930831491845.Spec : Prop :=
  ∀ n, P17043667930831491845.a n = A088698 n

end A088698

/-! ## A088698.P7831087413016196936

`A003188(A003714(A048680(2*n)))`
-/

namespace A088698.P7831087413016196936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A003714 (A048680 (2 * n)).toNat).toNat

end

end A088698.P7831087413016196936

namespace A088698

/-- `A003188(A003714(A048680(2*n)))` -/
def P7831087413016196936.Spec : Prop :=
  ∀ n, P7831087413016196936.a n = A088698 n

end A088698

/-! ## A088698.P5324687656794996029

`A008585(A048678(n))`
-/

namespace A088698.P5324687656794996029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A048678 n).toNat

end

end A088698.P5324687656794996029

namespace A088698

/-- `A008585(A048678(n))` -/
def P5324687656794996029.Spec : Prop :=
  ∀ n, P5324687656794996029.a n = A088698 n

end A088698

/-! ## A088698.P8882873963497377758

`A341521(∑[n]+n)`
-/

namespace A088698.P8882873963497377758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341521 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A088698.P8882873963497377758

namespace A088698

/-- `A341521(∑[n]+n)` -/
def P8882873963497377758.Spec : Prop :=
  ∀ n, P8882873963497377758.a n = A088698 n

end A088698

/-! ## A088698.P3132590325778082222

`A038556(A196168(n))`
-/

namespace A088698.P3132590325778082222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038556 (A196168 n).toNat

end

end A088698.P3132590325778082222

namespace A088698

/-- `A038556(A196168(n))` -/
def P3132590325778082222.Spec : Prop :=
  ∀ n, P3132590325778082222.a n = A088698 n

end A088698

/-!
# A088699: Array read by antidiagonals of coefficients of generating function exp(x)/(1-y-xy).

The programs for A088699, there is no canonical definition to state claims against.
-/

/-! ## A088699.P1486798820767922722

`A342088(n)/A008279(n)`
-/

namespace A088699.P1486798820767922722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342088 n : ℚ) / (A008279 n : ℚ)

end

end A088699.P1486798820767922722

/-! ## A088699.P3589019552375849380

`A093190(n+1)/A002260(n+1)`
-/

namespace A088699.P3589019552375849380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093190 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A088699.P3589019552375849380

/-! ## A088699.P14160665573383336900

`A093190(n+1)/(A002262(n)+1)`
-/

namespace A088699.P14160665573383336900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093190 (n + 1) : ℚ) / (A002262 n + 1 : ℚ)

end

end A088699.P14160665573383336900

/-! ## A088699.P4240031165209587410

`A093190(n+1)/sqrt(A133819(n+1))`
-/

namespace A088699.P4240031165209587410
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A093190 (n + 1) : ℝ) / Real.sqrt (A133819 (n + 1) : ℝ)

end

end A088699.P4240031165209587410

/-! ## A088699.P12654040592566361043

`A130595(n)/A021010(n)*A342088(n)`
-/

namespace A088699.P12654040592566361043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130595 n : ℚ) / (A021010 n : ℚ) * (A342088 n : ℚ)

end

end A088699.P12654040592566361043

/-! ## A088699.P14790696964454787549

`A093190(n+1)/A000720(A037126(n+1))`
-/

namespace A088699.P14790696964454787549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093190 (n + 1) : ℚ) / (A000720 (A037126 (n + 1)).toNat : ℚ)

end

end A088699.P14790696964454787549

/-! ## A088699.P11614504974383048377

`A093190(n+1)/A008619(A158405(n+1))`
-/

namespace A088699.P11614504974383048377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093190 (n + 1) : ℚ) / (A008619 (A158405 (n + 1)).toNat : ℚ)

end

end A088699.P11614504974383048377

/-! ## A088699.P6999665951189613758

`A093190(n+1)/A065033(A211197(n+1))`
-/

namespace A088699.P6999665951189613758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093190 (n + 1) : ℚ) / (A065033 (A211197 (n + 1)).toNat : ℚ)

end

end A088699.P6999665951189613758

/-! ## A088699.P9184848774061811211

`A093190(n+1)/(A004736(n+1)-A114327(n))`
-/

namespace A088699.P9184848774061811211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093190 (n + 1) : ℚ) / (A004736 (n + 1) - A114327 n : ℚ)

end

end A088699.P9184848774061811211

/-! ## A088699.P14750479444035392450

`A002024(n+1)/A068424(n+1)*A342088(n)`
-/

namespace A088699.P14750479444035392450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002024 (n + 1) : ℚ) / (A068424 (n + 1) : ℚ) * (A342088 n : ℚ)

end

end A088699.P14750479444035392450

/-! ## A088699.P12827737937210773844

`A004736(n+1)/A003991(n+1)*A093190(n+1)`
-/

namespace A088699.P12827737937210773844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) : ℚ) / (A003991 (n + 1) : ℚ) * (A093190 (n + 1) : ℚ)

end

end A088699.P12827737937210773844

/-! ## A088699.P16144562622509418276

`A002024(n+1)/A075362(n+1)*A093190(n+1)`
-/

namespace A088699.P16144562622509418276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002024 (n + 1) : ℚ) / (A075362 (n + 1) : ℚ) * (A093190 (n + 1) : ℚ)

end

end A088699.P16144562622509418276

/-! ## A088699.P12264772447441176196

`A093190(n+1)/A000005(A059268(n))`
-/

namespace A088699.P12264772447441176196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093190 (n + 1) : ℚ) / (A000005 (A059268 n).toNat : ℚ)

end

end A088699.P12264772447441176196

