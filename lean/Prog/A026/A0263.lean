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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
# A026300: Motzkin triangle, T, read by rows; T(0,0) = T(1,0) = T(1,1) = 1; for n >= 2, T(n,0) = 1, T(n,k) = T(n-1,k-2) + T(n-1,k-1) + T(n-1,k) for k = 1,2,...,n-1 and T(n,n) = T(n-1,n-2) + T(n-1,n-1).

The programs for A026300, there is no canonical definition to state claims against.
-/

/-! ## A026300.P17805805695282666027

`A064189(A061579(n))`
-/

namespace A026300.P17805805695282666027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064189 (A061579 n).toNat

end

end A026300.P17805805695282666027

/-! ## A026300.P13166858782058521926

`A064189(A114327(n)+n)`
-/

namespace A026300.P13166858782058521926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064189 (A114327 n + (n : ℤ)).toNat

end

end A026300.P13166858782058521926

/-! ## A026300.P10508858247833486399

`A064189(A038722(n+1)-1)`
-/

namespace A026300.P10508858247833486399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064189 (A038722 (n + 1) - 1).toNat

end

end A026300.P10508858247833486399

/-! ## A026300.P15818831672136357180

`A064189(A093995(n+1)-(n+1))`
-/

namespace A026300.P15818831672136357180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064189 (A093995 (n + 1) - (n + 1 : ℤ)).toNat

end

end A026300.P15818831672136357180

/-! ## A026300.P14933216809121585062

`A064189(A002024(n+1)²-(n+1))`
-/

namespace A026300.P14933216809121585062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064189 (A002024 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A026300.P14933216809121585062

/-!
# A026301: Expansion of g.f. sqrt(V(x)), where V(x) = Sum_{n >= 0} A065409(n)*x^n.

The programs for A026301, there is no canonical definition to state claims against.
-/

/-! ## A026301.P9943913552018965431

`2^n*A046105(n)`
-/

namespace A026301.P9943913552018965431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A046105 n

end

end A026301.P9943913552018965431

/-! ## A026301.P7331362060367887563

`A046105(n)*A048675(A000040(n+1))`
-/

namespace A026301.P7331362060367887563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046105 n * A048675 (A000040 (n + 1)).toNat

end

end A026301.P7331362060367887563

/-! ## A026301.P9952626763620037989

`A046105(n)*A130321(A046092(n))`
-/

namespace A026301.P9952626763620037989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046105 n * A130321 (A046092 n).toNat

end

end A026301.P9952626763620037989

/-! ## A026301.P14247968534273759101

`A046105(n)*A139251(A000079(n))`
-/

namespace A026301.P14247968534273759101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046105 n * A139251 (A000079 n).toNat

end

end A026301.P14247968534273759101

/-! ## A026301.P12266816493448461834

`A046105(n)*A286468(A126646(n))`
-/

namespace A026301.P12266816493448461834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046105 n * A286468 (A126646 n).toNat

end

end A026301.P12266816493448461834

/-!
# A026302: a(n) = number of (s(0), s(1), ..., s(n)) such that s(i) is a nonnegative integer and |s(i) - s(i-1)| <= 1 for i = 1,2,...,n, s(0) = 0, s(2n) = n. Also a(n) = T(2n,n), where T is the array in A026300.

The programs for A026302, there is no canonical definition to state claims against.
-/

/-! ## A026302.P1256341750281562459

`(n+1)*A006605(n)`
-/

namespace A026302.P1256341750281562459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A006605 n

end

end A026302.P1256341750281562459

/-! ## A026302.P15826279593268322431

`A026307(2*n)`
-/

namespace A026302.P15826279593268322431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026307 (2 * n)

end

end A026302.P15826279593268322431

/-! ## A026302.P12878550216695354843

`(n+1)*A143926(Δ[n²])`
-/

namespace A026302.P12878550216695354843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A143926 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A026302.P12878550216695354843

/-! ## A026302.P8084003121286987141

`record[A026307(n)^((n+1)%2)]`
-/

namespace A026302.P8084003121286987141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026307 n ^ ((n + 1) % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026302.P8084003121286987141

/-! ## A026302.P5151866453804288374

`A027913(2*n+1)/(2*n+1)*(n+1)`
-/

namespace A026302.P5151866453804288374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027913 (2 * n + 1) : ℚ) / (2 * n + 1 : ℚ) * (n + 1 : ℚ)

end

end A026302.P5151866453804288374

/-! ## A026302.P11003289667595628047

`record[A026307(A014681(n))]`
-/

namespace A026302.P11003289667595628047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026307 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026302.P11003289667595628047

/-! ## A026302.P2106939056256640150

`record[A133265(n)/2*A143926(n)]`
-/

namespace A026302.P2106939056256640150
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133265 n : ℚ) / 2 * (A143926 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026302.P2106939056256640150

/-! ## A026302.P11990486406816682641

`A006605(n)*A110654(A005408(n))`
-/

namespace A026302.P11990486406816682641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006605 n * A110654 (A005408 n).toNat

end

end A026302.P11990486406816682641

/-! ## A026302.P1869061888755305329

`A026300(∑[4*n])`
-/

namespace A026302.P1869061888755305329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026300 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A026302.P1869061888755305329

/-! ## A026302.P10553160895982517553

`A064189(∑[4*n])`
-/

namespace A026302.P10553160895982517553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064189 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A026302.P10553160895982517553

/-!
# A026303: a(n) = T(3n,n), where T is the array in A026300.

The programs for A026303, there is no canonical definition to state claims against.
-/

/-! ## A026303.P13196695299019016812

`(2*n+1)*A255673(n)`
-/

namespace A026303.P13196695299019016812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A255673 n

end

end A026303.P13196695299019016812

/-! ## A026303.P9095027991045546916

`abs(A157142(n)*A255673(n))`
-/

namespace A026303.P9095027991045546916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A157142 n * A255673 n|

end

end A026303.P9095027991045546916

/-! ## A026303.P191168051026130336

`A026300(A062725(n))`
-/

namespace A026303.P191168051026130336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026300 (A062725 n).toNat

end

end A026303.P191168051026130336

/-! ## A026303.P6351655770907256612

`A064189(A062728(n))`
-/

namespace A026303.P6351655770907256612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064189 (A062728 n).toNat

end

end A026303.P6351655770907256612

/-!
# A026304: a(n) = T(4n,n), where T is the array in A026300.

The programs for A026304, there is no canonical definition to state claims against.
-/

/-! ## A026304.P6518758692751118768

`A026300(A139276(n))`
-/

namespace A026304.P6518758692751118768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026300 (A139276 n).toNat

end

end A026304.P6518758692751118768

/-! ## A026304.P10836771925412885932

`A064189(A139277(n))`
-/

namespace A026304.P10836771925412885932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064189 (A139277 n).toNat

end

end A026304.P10836771925412885932

/-! ## A026304.P593203580584327998

`A026300(A033585(n)+n)`
-/

namespace A026304.P593203580584327998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026300 (A033585 n + (n : ℤ)).toNat

end

end A026304.P593203580584327998

/-! ## A026304.P14508380777082673378

`A026300(n*A017101(n))`
-/

namespace A026304.P14508380777082673378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026300 ((n : ℤ) * A017101 n).toNat

end

end A026304.P14508380777082673378

/-! ## A026304.P14723545222269912076

`A026300(A001844(2*n)-(n+1))`
-/

namespace A026304.P14723545222269912076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026300 (A001844 (2 * n) - (n + 1 : ℤ)).toNat

end

end A026304.P14723545222269912076

/-!
# A026305: a(n) = T(2n,n-1), where T is the array in A026300.

The programs for A026305, there is no canonical definition to state claims against.
-/

/-! ## A026305.P10808709557679047647

`A064189((n+1)²+(n+2)²)`
-/

namespace A026305.P10808709557679047647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064189 ((n + 1) ^ 2 + (n + 2) ^ 2)

end

end A026305.P10808709557679047647

/-! ## A026305.P7666186265240192618

`A026300(A132209(n+1))`
-/

namespace A026305.P7666186265240192618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026300 (A132209 (n + 1)).toNat

end

end A026305.P7666186265240192618

/-! ## A026305.P6356845029429289981

`A026300(A142463(n+1))`
-/

namespace A026305.P6356845029429289981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026300 (A142463 (n + 1)).toNat

end

end A026305.P6356845029429289981

/-! ## A026305.P16054651423688305391

`A026300(A059993(n)+2)`
-/

namespace A026305.P16054651423688305391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026300 (A059993 n + 2).toNat

end

end A026305.P16054651423688305391

/-! ## A026305.P8472485966144632699

`A026300(or(2, A059993(n)))`
-/

namespace A026305.P8472485966144632699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026300 (Int.lor 2 (A059993 n)).toNat

end

end A026305.P8472485966144632699

/-! ## A026305.P6806722799216724078

`A026300(A001844(n+1)-2)`
-/

namespace A026305.P6806722799216724078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026300 (A001844 (n + 1) - 2).toNat

end

end A026305.P6806722799216724078

/-! ## A026305.P16633960473011195099

`A026300(A047838(2*n+3))`
-/

namespace A026305.P16633960473011195099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026300 (A047838 (2 * n + 3)).toNat

end

end A026305.P16633960473011195099

/-! ## A026305.P8073802705189231805

`A026300(A027379(2*n+1)-n)`
-/

namespace A026305.P8073802705189231805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026300 (A027379 (2 * n + 1) - (n : ℤ)).toNat

end

end A026305.P8073802705189231805

/-! ## A026305.P13171679896184018389

`A026300(A000096(2*n+1)+n+1)`
-/

namespace A026305.P13171679896184018389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026300 (A000096 (2 * n + 1) + (n + 1 : ℤ)).toNat

end

end A026305.P13171679896184018389

/-!
# A026306: a(n) = T(2n,n+1), where T is the array in A026300.

The programs for A026306, there is no canonical definition to state claims against.
-/

/-! ## A026306.P16661927063156299541

`lcm(n, A026300(A001844(n)))`
-/

namespace A026306.P16661927063156299541
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A026300 (A001844 n).toNat)

end

end A026306.P16661927063156299541

/-! ## A026306.P4239366631217903389

`A026300(A001844(n))-A000007(n)`
-/

namespace A026306.P4239366631217903389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026300 (A001844 n).toNat - A000007 n

end

end A026306.P4239366631217903389

/-! ## A026306.P4420031889696138836

`A026300(A001844(n))*A057427(n)`
-/

namespace A026306.P4420031889696138836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026300 (A001844 n).toNat * A057427 n

end

end A026306.P4420031889696138836

/-! ## A026306.P5514424203642760426

`A026300(A001844(n))%A001018(n)`
-/

namespace A026306.P5514424203642760426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026300 (A001844 n).toNat) (A001018 n)

end

end A026306.P5514424203642760426

/-! ## A026306.P3370110643962794475

`A002828(n²)*A026300(A001844(n))`
-/

namespace A026306.P3370110643962794475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (n ^ 2) * A026300 (A001844 n).toNat

end

end A026306.P3370110643962794475

/-! ## A026306.P10193764687508597266

`A057428(n)²*A026300(A001844(n))`
-/

namespace A026306.P10193764687508597266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n ^ 2 * A026300 (A001844 n).toNat

end

end A026306.P10193764687508597266

/-! ## A026306.P6808819088133661098

`char[A026300(n)]*A026300(A001844(n))`
-/

namespace A026306.P6808819088133661098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026300 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A026300 (A001844 n).toNat

end

end A026306.P6808819088133661098

/-! ## A026306.P11251905340488794190

`xor(A000007(2*n), A026300(A001844(n)))`
-/

namespace A026306.P11251905340488794190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 (2 * n)) (A026300 (A001844 n).toNat)

end

end A026306.P11251905340488794190

/-! ## A026306.P16202475543451300106

`A122896(A056220(n+1))`
-/

namespace A026306.P16202475543451300106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122896 (A056220 (n + 1)).toNat

end

end A026306.P16202475543451300106

/-! ## A026306.P14958602789952843272

`A122896(A080476(2*(n+1))-1)`
-/

namespace A026306.P14958602789952843272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122896 (A080476 (2 * (n + 1)) - 1).toNat

end

end A026306.P14958602789952843272

/-!
# A026307: a(n) = T(n,[ n/2 ]), where T is the array in A026300.

The programs for A026307, there is no canonical definition to state claims against.
-/

/-! ## A026307.P13809863981188381749

`A064189(∑[n%2+n])`
-/

namespace A026307.P13809863981188381749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064189 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A026307.P13809863981188381749

/-! ## A026307.P8110450227865969807

`A064189(∑[and(1, n)+n])`
-/

namespace A026307.P8110450227865969807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064189 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A026307.P8110450227865969807

/-! ## A026307.P14193154600701931415

`A064189(∑[∑[(2*n)%4]])`
-/

namespace A026307.P14193154600701931415
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n % 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064189 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A026307.P14193154600701931415

/-! ## A026307.P15933384061665896678

`A064189(∑[∑[2*and(1, n)]])`
-/

namespace A026307.P15933384061665896678
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.land 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064189 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A026307.P15933384061665896678

/-! ## A026307.P14298938316242518988

`A064189(A007590(n+1))`
-/

namespace A026307.P14298938316242518988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064189 (A007590 (n + 1)).toNat

end

end A026307.P14298938316242518988

/-! ## A026307.P3392936661094510186

`A064189(A080476(n+1))`
-/

namespace A026307.P3392936661094510186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064189 (A080476 (n + 1)).toNat

end

end A026307.P3392936661094510186

/-! ## A026307.P1136273248357417208

`A026300(A007590(n)+n)`
-/

namespace A026307.P1136273248357417208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026300 (A007590 n + (n : ℤ)).toNat

end

end A026307.P1136273248357417208

/-! ## A026307.P11291250444506552033

`A064189(A000982(n)+n)`
-/

namespace A026307.P11291250444506552033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064189 (A000982 n + (n : ℤ)).toNat

end

end A026307.P11291250444506552033

/-! ## A026307.P18371290436528616903

`A026300(A004526(n)+∑[n])`
-/

namespace A026307.P18371290436528616903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026300 (A004526 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A026307.P18371290436528616903

/-! ## A026307.P12521028607930074234

`A064189(∑[A000035(n)+n])`
-/

namespace A026307.P12521028607930074234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064189 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A026307.P12521028607930074234

/-! ## A026307.P1374702145331428478

`A064189(∑[∑[2*A000035(n)]])`
-/

namespace A026307.P1374702145331428478
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000035 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064189 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A026307.P1374702145331428478

/-! ## A026307.P6122376516542133611

`A026300(A047838(n+2)-(n+1))`
-/

namespace A026307.P6122376516542133611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026300 (A047838 (n + 2) - (n + 1 : ℤ)).toNat

end

end A026307.P6122376516542133611

/-! ## A026307.P4350414077420766654

`A064189(∑[val(A130482(n²)+1, 2)+n])`
-/

namespace A026307.P4350414077420766654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A130482 (n ^ 2) + 1).toNat 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064189 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A026307.P4350414077420766654

/-!
# A026308: Expansion of 1/((1-2*x)*(1-5*x)*(1-11*x)*(1-12*x)).

The programs for A026308, there is no canonical definition to state claims against.
-/

/-! ## A026308.P14097299101518048692

`A020569(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A026308.P14097299101518048692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020569 n + 2 * a (n - 1)

end

end A026308.P14097299101518048692

/-! ## A026308.P4725564970876510199

`Δ[A021164(n)-A021154(n)]`
-/

namespace A026308.P4725564970876510199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021164 n - A021154 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026308.P4725564970876510199

/-! ## A026308.P9051606477750802908

`Δ[A021164(n)]-A016301(n+1)`
-/

namespace A026308.P9051606477750802908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021164 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A016301 (n + 1)

end

end A026308.P9051606477750802908

/-! ## A026308.P8115478926410441977

`A016302(n+1)-A016301(n+1)`
-/

namespace A026308.P8115478926410441977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016302 (n + 1) - A016301 (n + 1)

end

end A026308.P8115478926410441977

/-! ## A026308.P7342110205113371057

`Δ[A021164(n)-A016301(n)]-A016301(n)`
-/

namespace A026308.P7342110205113371057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021164 n - A016301 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A016301 n

end

end A026308.P7342110205113371057

/-!
# A026309: a(n) = n-th nonnegative integer k satisfying sin(k) < sin(k+1).

The programs for A026309, the canonical program `A026309.P675510048242197511` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026309 has offset 1).

The definition of A026309 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026309.P675510048242197511

`lt[sin(n), sin(n+1)]`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026309

/-- `lt[sin(n), sin(n+1)]` -/
def P675510048242197511.Spec : Prop :=
  ∀ n, (P675510048242197511.a n : ℤ) = A026309 (n + 1)

theorem P675510048242197511.correct : P675510048242197511.Spec := by
  intro n
  simp only [A026309, Nat.add_sub_cancel]

end A026309

/-! ## A026309.P4429898730998901472

`lt[-cos(n+1), cos(n)]`
-/

namespace A026309.P4429898730998901472
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  -Real.cos (n + 1 : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A026309.P4429898730998901472

namespace A026309

/-- `lt[-cos(n+1), cos(n)]` -/
def P4429898730998901472.Spec : Prop :=
  ∀ n, (P4429898730998901472.a n : ℤ) = A026309 (n + 1)

end A026309

/-! ## A026309.P11428923167395298916

`lt[0, cos((2*n+1)/2)]`
-/

namespace A026309.P11428923167395298916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos ((2 * n + 1 : ℚ) / 2 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A026309.P11428923167395298916

namespace A026309

/-- `lt[0, cos((2*n+1)/2)]` -/
def P11428923167395298916.Spec : Prop :=
  ∀ n, (P11428923167395298916.a n : ℤ) = A026309 (n + 1)

end A026309

/-! ## A026309.P7899316953260487717

`comp[A246293(n+1)]`
-/

namespace A026309.P7899316953260487717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246293 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A026309.P7899316953260487717

namespace A026309

/-- `comp[A246293(n+1)]` -/
def P7899316953260487717.Spec : Prop :=
  ∀ n, (P7899316953260487717.a n : ℤ) = A026309 (n + 1)

end A026309

/-! ## A026309.P8797934471430771383

`A363089(n+3)-6`
-/

namespace A026309.P8797934471430771383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363089 (n + 3) - 6

end

end A026309.P8797934471430771383

namespace A026309

/-- `A363089(n+3)-6` -/
def P8797934471430771383.Spec : Prop :=
  ∀ n, P8797934471430771383.a n = A026309 (n + 1)

end A026309

/-! ## A026309.P9922264680332075058

`lt[0, Δ[sin(n)]]`
-/

namespace A026309.P9922264680332075058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A026309.P9922264680332075058

namespace A026309

/-- `lt[0, Δ[sin(n)]]` -/
def P9922264680332075058.Spec : Prop :=
  ∀ n, (P9922264680332075058.a n : ℤ) = A026309 (n + 1)

theorem P9922264680332075058.correct : P9922264680332075058.Spec := by
  intro n
  simp only [A026309, Nat.add_sub_cancel, A026309.P9922264680332075058.f1, A026309.P9922264680332075058.f3, A026309.P9922264680332075058.f2, A026309.P9922264680332075058.a, A026309.P675510048242197511.f1, A026309.P675510048242197511.f2, A026309.P675510048242197511.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A026309

/-! ## A026309.P7996798766402484765

`lt[1, ratio[exp(sin(n))]]`
-/

namespace A026309.P7996798766402484765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (Real.sin (n : ℝ))

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) / f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A026309.P7996798766402484765

namespace A026309

/-- `lt[1, ratio[exp(sin(n))]]` -/
def P7996798766402484765.Spec : Prop :=
  ∀ n, (P7996798766402484765.a n : ℤ) = A026309 (n + 1)

end A026309

/-! ## A026309.P13898668789960300174

`lt[ratio[acos(sin(n))], 1]`
-/

namespace A026309.P13898668789960300174
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arccos (Real.sin (n : ℝ))

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) / f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℝ)) n

end

end A026309.P13898668789960300174

namespace A026309

/-- `lt[ratio[acos(sin(n))], 1]` -/
def P13898668789960300174.Spec : Prop :=
  ∀ n, (P13898668789960300174.a n : ℤ) = A026309 (n + 1)

end A026309

/-!
# A026310: sin(n) > cos(n+1).

The programs for A026310, the canonical program `A026310.P5446918221003407911` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026310 has offset 1).

The definition of A026310 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026310.P5446918221003407911

`lt[cos(5-n), 0]`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026310

/-- `lt[cos(5-n), 0]` -/
def P5446918221003407911.Spec : Prop :=
  ∀ n, (P5446918221003407911.a n : ℤ) = A026310 (n + 1)

theorem P5446918221003407911.correct : P5446918221003407911.Spec := by
  intro n
  simp only [A026310, Nat.add_sub_cancel]

end A026310

/-! ## A026310.P11588676896604514500

`record[1-n*floor(cos(4-n))]`
-/

namespace A026310.P11588676896604514500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ) * ⌊Real.cos (4 - (n : ℤ) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026310.P11588676896604514500

namespace A026310

/-- `record[1-n*floor(cos(4-n))]` -/
def P11588676896604514500.Spec : Prop :=
  ∀ n, P11588676896604514500.a n = A026310 (n + 1)

end A026310

/-! ## A026310.P13734340983387238630

`comp[(n+2)*ceil(cos(3-n))]`
-/

namespace A026310.P13734340983387238630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * ⌈Real.cos (3 - (n : ℤ) : ℝ)⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A026310.P13734340983387238630

namespace A026310

/-- `comp[(n+2)*ceil(cos(3-n))]` -/
def P13734340983387238630.Spec : Prop :=
  ∀ n, (P13734340983387238630.a n : ℤ) = A026310 (n + 1)

end A026310

/-! ## A026310.P14482956694269481730

`record[and(n+1, floor(cos(4-n)))]`
-/

namespace A026310.P14482956694269481730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) ⌊Real.cos (4 - (n : ℤ) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026310.P14482956694269481730

namespace A026310

/-- `record[and(n+1, floor(cos(4-n)))]` -/
def P14482956694269481730.Spec : Prop :=
  ∀ n, P14482956694269481730.a n = A026310 (n + 1)

end A026310

/-! ## A026310.P8405441785328844067

`comp[lcm(n+2, ceil(cos(3-n)))]`
-/

namespace A026310.P8405441785328844067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 2 : ℤ) ⌈Real.cos (3 - (n : ℤ) : ℝ)⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A026310.P8405441785328844067

namespace A026310

/-- `comp[lcm(n+2, ceil(cos(3-n)))]` -/
def P8405441785328844067.Spec : Prop :=
  ∀ n, (P8405441785328844067.a n : ℤ) = A026310 (n + 1)

end A026310

/-! ## A026310.P2915234456553487372

`eq[n*ceil(cos(5-n)), A000010(2*n+1)%2]`
-/

namespace A026310.P2915234456553487372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌈Real.cos (5 - (n : ℤ) : ℝ)⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (2 * n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A026310.P2915234456553487372

namespace A026310

/-- `eq[n*ceil(cos(5-n)), A000010(2*n+1)%2]` -/
def P2915234456553487372.Spec : Prop :=
  ∀ n, (P2915234456553487372.a n : ℤ) = A026310 (n + 1)

end A026310

/-! ## A026310.P5754973527299576306

`record[A028310(n)-n*ceil(cos(5-n))]`
-/

namespace A026310.P5754973527299576306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - (n : ℤ) * ⌈Real.cos (5 - (n : ℤ) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026310.P5754973527299576306

namespace A026310

/-- `record[A028310(n)-n*ceil(cos(5-n))]` -/
def P5754973527299576306.Spec : Prop :=
  ∀ n, P5754973527299576306.a n = A026310 (n + 1)

end A026310

/-! ## A026310.P12318433730570754412

`record[A019590(n+2)+n-n*ceil(cos(5-n))]`
-/

namespace A026310.P12318433730570754412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (n + 2) + (n : ℤ) - (n : ℤ) * ⌈Real.cos (5 - (n : ℤ) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026310.P12318433730570754412

namespace A026310

/-- `record[A019590(n+2)+n-n*ceil(cos(5-n))]` -/
def P12318433730570754412.Spec : Prop :=
  ∀ n, P12318433730570754412.a n = A026310 (n + 1)

end A026310

/-!
# A026311: n-th nonnegative integer k satisfying cos(k) > cos(k+1).

The programs for A026311, the canonical program `A026311.P16510571916230585388` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026311 has offset 1).

The definition of A026311 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026311.P16510571916230585388

`lt[cos(n+1), cos(n)]`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026311

/-- `lt[cos(n+1), cos(n)]` -/
def P16510571916230585388.Spec : Prop :=
  ∀ n, (P16510571916230585388.a n : ℤ) = A026311 (n + 1)

theorem P16510571916230585388.correct : P16510571916230585388.Spec := by
  intro n
  simp only [A026311, Nat.add_sub_cancel]

end A026311

/-! ## A026311.P9808452596046678725

`lt[0, sin((2*n+1)/2)]`
-/

namespace A026311.P9808452596046678725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin ((2 * n + 1 : ℚ) / 2 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A026311.P9808452596046678725

namespace A026311

/-- `lt[0, sin((2*n+1)/2)]` -/
def P9808452596046678725.Spec : Prop :=
  ∀ n, (P9808452596046678725.a n : ℤ) = A026311 (n + 1)

end A026311

/-! ## A026311.P8045629704334167776

`lt[0, tan((2*n+1)/4)]`
-/

namespace A026311.P8045629704334167776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan ((2 * n + 1 : ℚ) / 4 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A026311.P8045629704334167776

namespace A026311

/-- `lt[0, tan((2*n+1)/4)]` -/
def P8045629704334167776.Spec : Prop :=
  ∀ n, (P8045629704334167776.a n : ℤ) = A026311 (n + 1)

end A026311

/-! ## A026311.P15509903248822982420

`lt[0, cot((2*n+1)/4)]`
-/

namespace A026311.P15509903248822982420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot ((2 * n + 1 : ℚ) / 4 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A026311.P15509903248822982420

namespace A026311

/-- `lt[0, cot((2*n+1)/4)]` -/
def P15509903248822982420.Spec : Prop :=
  ∀ n, (P15509903248822982420.a n : ℤ) = A026311 (n + 1)

end A026311

/-! ## A026311.P14394719234492071392

`comp[A246303(n+1)]`
-/

namespace A026311.P14394719234492071392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A026311.P14394719234492071392

namespace A026311

/-- `comp[A246303(n+1)]` -/
def P14394719234492071392.Spec : Prop :=
  ∀ n, (P14394719234492071392.a n : ℤ) = A026311 (n + 1)

end A026311

/-! ## A026311.P3590550622984494989

`lt[Δ[cos(n)], 0]`
-/

namespace A026311.P3590550622984494989
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℝ)) n

end

end A026311.P3590550622984494989

namespace A026311

/-- `lt[Δ[cos(n)], 0]` -/
def P3590550622984494989.Spec : Prop :=
  ∀ n, (P3590550622984494989.a n : ℤ) = A026311 (n + 1)

theorem P3590550622984494989.correct : P3590550622984494989.Spec := by
  intro n
  simp only [A026311, Nat.add_sub_cancel, A026311.P3590550622984494989.f2, A026311.P3590550622984494989.f1, A026311.P3590550622984494989.f3, A026311.P3590550622984494989.a, A026311.P16510571916230585388.f1, A026311.P16510571916230585388.f2, A026311.P16510571916230585388.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A026311

/-! ## A026311.P231734490398703167

`lt[ratio[exp(cos(n))], 1]`
-/

namespace A026311.P231734490398703167
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (Real.cos (n : ℝ))

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) / f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℝ)) n

end

end A026311.P231734490398703167

namespace A026311

/-- `lt[ratio[exp(cos(n))], 1]` -/
def P231734490398703167.Spec : Prop :=
  ∀ n, (P231734490398703167.a n : ℤ) = A026311 (n + 1)

end A026311

/-! ## A026311.P12565225802880460882

`lt[1, ∑[2*cos(n)]]`
-/

namespace A026311.P12565225802880460882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.cos (n : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A026311.P12565225802880460882

namespace A026311

/-- `lt[1, ∑[2*cos(n)]]` -/
def P12565225802880460882.Spec : Prop :=
  ∀ n, (P12565225802880460882.a n : ℤ) = A026311 (n + 1)

end A026311

/-! ## A026311.P5011442267262021920

`lt[1/2, ∑[cos(n)]]`
-/

namespace A026311.P5011442267262021920
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A026311.P5011442267262021920

namespace A026311

/-- `lt[1/2, ∑[cos(n)]]` -/
def P5011442267262021920.Spec : Prop :=
  ∀ n, (P5011442267262021920.a n : ℤ) = A026311 (n + 1)

end A026311

/-! ## A026311.P4218127822276082559

`lt[2, (2^∑[cos(n)])²]`
-/

namespace A026311.P4218127822276082559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 : ℝ) ^ (∑ j ∈ Finset.range (n + 1), f3 j)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A026311.P4218127822276082559

namespace A026311

/-- `lt[2, (2^∑[cos(n)])²]` -/
def P4218127822276082559.Spec : Prop :=
  ∀ n, (P4218127822276082559.a n : ℤ) = A026311 (n + 1)

end A026311

/-!
# A026312: n-th nonnegative integer k satisfying cos(k) > sin(k+1).

The programs for A026312, the canonical program `A026312.P7599095226989559161` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026312 has offset 1).

The definition of A026312 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026312.P7599095226989559161

`lt[0, cos(5-n)]`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026312

/-- `lt[0, cos(5-n)]` -/
def P7599095226989559161.Spec : Prop :=
  ∀ n, (P7599095226989559161.a n : ℤ) = A026312 (n + 1)

theorem P7599095226989559161.correct : P7599095226989559161.Spec := by
  intro n
  simp only [A026312, Nat.add_sub_cancel]

end A026312

/-! ## A026312.P12883493103427804054

`record[n*ceil(cos(5-n))]`
-/

namespace A026312.P12883493103427804054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌈Real.cos (5 - (n : ℤ) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026312.P12883493103427804054

namespace A026312

/-- `record[n*ceil(cos(5-n))]` -/
def P12883493103427804054.Spec : Prop :=
  ∀ n, P12883493103427804054.a n = A026312 (n + 1)

end A026312

/-! ## A026312.P8822755565940196001

`record[lcm(n, ceil(cos(5-n)))]`
-/

namespace A026312.P8822755565940196001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ⌈Real.cos (5 - (n : ℤ) : ℝ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026312.P8822755565940196001

namespace A026312

/-- `record[lcm(n, ceil(cos(5-n)))]` -/
def P8822755565940196001.Spec : Prop :=
  ∀ n, (P8822755565940196001.a n : ℤ) = A026312 (n + 1)

end A026312

/-! ## A026312.P11441748206583129124

`eq[abs(cos(5-n)), cos(5-n)]`
-/

namespace A026312.P11441748206583129124
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |Real.cos (5 - (n : ℤ) : ℝ)|

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (5 - (n : ℤ) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A026312.P11441748206583129124

namespace A026312

/-- `eq[abs(cos(5-n)), cos(5-n)]` -/
def P11441748206583129124.Spec : Prop :=
  ∀ n, (P11441748206583129124.a n : ℤ) = A026312 (n + 1)

end A026312

/-! ## A026312.P4506400838237629259

`comp[A026310(n+1)]`
-/

namespace A026312.P4506400838237629259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026310 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A026312.P4506400838237629259

namespace A026312

/-- `comp[A026310(n+1)]` -/
def P4506400838237629259.Spec : Prop :=
  ∀ n, (P4506400838237629259.a n : ℤ) = A026312 (n + 1)

end A026312

/-!
# A026313: Numbers k such that |sin(k)*sin(k+2)| < (sin(k+1))^2.

The programs for A026313, there is no canonical definition to state claims against.
-/

/-! ## A026313.P6883901026278647620

`lt[A035214(A035457(n)), A101667(n+1)]`
-/

namespace A026313.P6883901026278647620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 (A035457 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101667 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A026313.P6883901026278647620

/-! ## A026313.P6788572079453343307

`lt[A000007((n+3)²-2), A005671(n+1)]`
-/

namespace A026313.P6788572079453343307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((n + 3) ^ 2 - 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005671 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A026313.P6788572079453343307

/-! ## A026313.P2558163871618279738

`lt[A332499(n+1), A010693(n+1)]`
-/

namespace A026313.P2558163871618279738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010693 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A026313.P2558163871618279738

/-! ## A026313.P7818254681334529660

`lt[A332499(n+1), A245188(A336041(3*n+1))]`
-/

namespace A026313.P7818254681334529660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245188 (A336041 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A026313.P7818254681334529660

/-! ## A026313.P17405468332236395009

`lt[A000196(A014105(n)), A134903(2*(n+1))]`
-/

namespace A026313.P17405468332236395009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A014105 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134903 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A026313.P17405468332236395009

/-!
# A026314: a(n) = n-th nonnegative integer k satisfying |cos(k)*cos(k+2)| > (cos(k+1))^2.

The programs for A026314, the canonical program `A026314.P14845760068900750612` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026314 has offset 1).

The definition of A026314 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026314.P14845760068900750612

`lt[exp(cos(sin(n+1))), 2]`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026314

/-- `lt[exp(cos(sin(n+1))), 2]` -/
def P14845760068900750612.Spec : Prop :=
  ∀ n, (P14845760068900750612.a n : ℤ) = A026314 (n + 1)

theorem P14845760068900750612.correct : P14845760068900750612.Spec := by
  intro n
  simp only [A026314, Nat.add_sub_cancel]

end A026314

/-! ## A026314.P1431478901318482837

`lt[cos(sin(n+1)), log(2)]`
-/

namespace A026314.P1431478901318482837
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (Real.sin (n + 1 : ℝ))

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (2 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A026314.P1431478901318482837

namespace A026314

/-- `lt[cos(sin(n+1)), log(2)]` -/
def P1431478901318482837.Spec : Prop :=
  ∀ n, (P1431478901318482837.a n : ℤ) = A026314 (n + 1)

end A026314

/-! ## A026314.P5039107386971792986

`lt[exp(cos(sin(n))), 2]-1`
-/

namespace A026314.P5039107386971792986
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (Real.cos (Real.sin (n : ℝ)))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n : ℤ) - 1

end

end A026314.P5039107386971792986

namespace A026314

/-- `lt[exp(cos(sin(n))), 2]-1` -/
def P5039107386971792986.Spec : Prop :=
  ∀ n, P5039107386971792986.a n = A026314 (n + 1)

end A026314

/-! ## A026314.P5676568072454253910

`lt[4, A051499(n+1)²]`
-/

namespace A026314.P5676568072454253910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051499 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A026314.P5676568072454253910

namespace A026314

/-- `lt[4, A051499(n+1)²]` -/
def P5676568072454253910.Spec : Prop :=
  ∀ n, (P5676568072454253910.a n : ℤ) = A026314 (n + 1)

end A026314

/-! ## A026314.P7547606043193575526

`lt[cos(A004277(n+1)), cot(5)]`
-/

namespace A026314.P7547606043193575526
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (A004277 (n + 1) : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot (5 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A026314.P7547606043193575526

namespace A026314

/-- `lt[cos(A004277(n+1)), cot(5)]` -/
def P7547606043193575526.Spec : Prop :=
  ∀ n, (P7547606043193575526.a n : ℤ) = A026314 (n + 1)

end A026314

/-!
# A026315: |sin(n)| < |sin(n+1)|.

The programs for A026315, the canonical program `A026315.P7357060663739530032` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026315 has offset 1).

The definition of A026315 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026315.P7357060663739530032

`lt[0, sin(2*n+1)]`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026315

/-- `lt[0, sin(2*n+1)]` -/
def P7357060663739530032.Spec : Prop :=
  ∀ n, (P7357060663739530032.a n : ℤ) = A026315 (n + 1)

theorem P7357060663739530032.correct : P7357060663739530032.Spec := by
  intro n
  simp only [A026315, Nat.add_sub_cancel]

end A026315

/-! ## A026315.P4378408697565015480

`lt[sin(-(n+1+n)), 0]`
-/

namespace A026315.P4378408697565015480
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (-(n + 1 + n : ℤ) : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A026315.P4378408697565015480

namespace A026315

/-- `lt[sin(-(n+1+n)), 0]` -/
def P4378408697565015480.Spec : Prop :=
  ∀ n, (P4378408697565015480.a n : ℤ) = A026315 (n + 1)

end A026315

/-! ## A026315.P15690413420878911634

`lt[cos(n+1)², cos(n)²]`
-/

namespace A026315.P15690413420878911634
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n + 1 : ℝ) ^ 2

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n : ℝ) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A026315.P15690413420878911634

namespace A026315

/-- `lt[cos(n+1)², cos(n)²]` -/
def P15690413420878911634.Spec : Prop :=
  ∀ n, (P15690413420878911634.a n : ℤ) = A026315 (n + 1)

end A026315

/-! ## A026315.P2599106290231900983

`lt[sin(n)², sin(n+1)²]`
-/

namespace A026315.P2599106290231900983
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n : ℝ) ^ 2

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n + 1 : ℝ) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A026315.P2599106290231900983

namespace A026315

/-- `lt[sin(n)², sin(n+1)²]` -/
def P2599106290231900983.Spec : Prop :=
  ∀ n, (P2599106290231900983.a n : ℤ) = A026315 (n + 1)

end A026315

/-! ## A026315.P16369008660804624563

`lt[cos(cos(n)), cos(cos(n+1))]`
-/

namespace A026315.P16369008660804624563
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (Real.cos (n : ℝ))

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (Real.cos (n + 1 : ℝ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A026315.P16369008660804624563

namespace A026315

/-- `lt[cos(cos(n)), cos(cos(n+1))]` -/
def P16369008660804624563.Spec : Prop :=
  ∀ n, (P16369008660804624563.a n : ℤ) = A026315 (n + 1)

end A026315

/-! ## A026315.P4036346723515624806

`lt[1, sin(n+1+n)+1]`
-/

namespace A026315.P4036346723515624806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n + 1 + n : ℝ) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A026315.P4036346723515624806

namespace A026315

/-- `lt[1, sin(n+1+n)+1]` -/
def P4036346723515624806.Spec : Prop :=
  ∀ n, (P4036346723515624806.a n : ℤ) = A026315 (n + 1)

theorem P4036346723515624806.correct : P4036346723515624806.Spec := by
  intro n
  simp only [A026315, Nat.add_sub_cancel, A026315.P4036346723515624806.f1, A026315.P4036346723515624806.f2, A026315.P4036346723515624806.a, A026315.P7357060663739530032.f1, A026315.P7357060663739530032.f2, A026315.P7357060663739530032.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A026315

/-! ## A026315.P9867917001510387933

`record[n*ceil(sin(2*n+1))]`
-/

namespace A026315.P9867917001510387933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌈Real.sin (2 * n + 1 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026315.P9867917001510387933

namespace A026315

/-- `record[n*ceil(sin(2*n+1))]` -/
def P9867917001510387933.Spec : Prop :=
  ∀ n, P9867917001510387933.a n = A026315 (n + 1)

end A026315

/-! ## A026315.P13988767837088514153

`record[or(n, floor(sin(2*n+1)))]`
-/

namespace A026315.P13988767837088514153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ⌊Real.sin (2 * n + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026315.P13988767837088514153

namespace A026315

/-- `record[or(n, floor(sin(2*n+1)))]` -/
def P13988767837088514153.Spec : Prop :=
  ∀ n, P13988767837088514153.a n = A026315 (n + 1)

end A026315

/-! ## A026315.P17384809017364946653

`record[xor(n, floor(sin(2*n+1)))]`
-/

namespace A026315.P17384809017364946653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊Real.sin (2 * n + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026315.P17384809017364946653

namespace A026315

/-- `record[xor(n, floor(sin(2*n+1)))]` -/
def P17384809017364946653.Spec : Prop :=
  ∀ n, P17384809017364946653.a n = A026315 (n + 1)

end A026315

/-! ## A026315.P7136988870617486372

`eq[abs(sin(2*n+1)), sin(2*n+1)]`
-/

namespace A026315.P7136988870617486372
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |Real.sin (2 * n + 1 : ℝ)|

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (2 * n + 1 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A026315.P7136988870617486372

namespace A026315

/-- `eq[abs(sin(2*n+1)), sin(2*n+1)]` -/
def P7136988870617486372.Spec : Prop :=
  ∀ n, (P7136988870617486372.a n : ℤ) = A026315 (n + 1)

end A026315

/-! ## A026315.P2167274418480989959

`∪[A327139(n+1), A022853(n)]`
-/

namespace A026315.P2167274418480989959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022853 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026315.P2167274418480989959

namespace A026315

/-- `∪[A327139(n+1), A022853(n)]` -/
def P2167274418480989959.Spec : Prop :=
  ∀ n, (P2167274418480989959.a n : ℤ) = A026315 (n + 1)

end A026315

/-! ## A026315.P6839207683341089052

`lt[Δ[abs(cos(n))], 0]`
-/

namespace A026315.P6839207683341089052
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |Real.cos (n : ℝ)|

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℝ)) n

end

end A026315.P6839207683341089052

namespace A026315

/-- `lt[Δ[abs(cos(n))], 0]` -/
def P6839207683341089052.Spec : Prop :=
  ∀ n, (P6839207683341089052.a n : ℤ) = A026315 (n + 1)

end A026315

/-! ## A026315.P12563287866691952674

`lt[0, Δ[abs(sin(n))]]`
-/

namespace A026315.P12563287866691952674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |Real.sin (n : ℝ)|

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A026315.P12563287866691952674

namespace A026315

/-- `lt[0, Δ[abs(sin(n))]]` -/
def P12563287866691952674.Spec : Prop :=
  ∀ n, (P12563287866691952674.a n : ℤ) = A026315 (n + 1)

end A026315

/-! ## A026315.P18307263086357227167

`lt[0, Δ[abs(tan(n))]]`
-/

namespace A026315.P18307263086357227167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |Real.tan (n : ℝ)|

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A026315.P18307263086357227167

namespace A026315

/-- `lt[0, Δ[abs(tan(n))]]` -/
def P18307263086357227167.Spec : Prop :=
  ∀ n, (P18307263086357227167.a n : ℤ) = A026315 (n + 1)

end A026315

/-! ## A026315.P14906223357085272554

`lt[Δ[cos(n)²], 0]`
-/

namespace A026315.P14906223357085272554
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n : ℝ) ^ 2

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℝ)) n

end

end A026315.P14906223357085272554

namespace A026315

/-- `lt[Δ[cos(n)²], 0]` -/
def P14906223357085272554.Spec : Prop :=
  ∀ n, (P14906223357085272554.a n : ℤ) = A026315 (n + 1)

end A026315

/-! ## A026315.P15501281718721901605

`lt[ratio[abs(cos(n))], 1]`
-/

namespace A026315.P15501281718721901605
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |Real.cos (n : ℝ)|

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) / f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℝ)) n

end

end A026315.P15501281718721901605

namespace A026315

/-- `lt[ratio[abs(cos(n))], 1]` -/
def P15501281718721901605.Spec : Prop :=
  ∀ n, (P15501281718721901605.a n : ℤ) = A026315 (n + 1)

end A026315

/-! ## A026315.P17089741195220571741

`lt[0, Δ[tan(n)²]]`
-/

namespace A026315.P17089741195220571741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (n : ℝ) ^ 2

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A026315.P17089741195220571741

namespace A026315

/-- `lt[0, Δ[tan(n)²]]` -/
def P17089741195220571741.Spec : Prop :=
  ∀ n, (P17089741195220571741.a n : ℤ) = A026315 (n + 1)

end A026315

/-! ## A026315.P16090457748276638741

`lt[ratio[cos(n)²], 1]`
-/

namespace A026315.P16090457748276638741
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n : ℝ) ^ 2

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) / f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℝ)) n

end

end A026315.P16090457748276638741

namespace A026315

/-- `lt[ratio[cos(n)²], 1]` -/
def P16090457748276638741.Spec : Prop :=
  ∀ n, (P16090457748276638741.a n : ℤ) = A026315 (n + 1)

end A026315

/-! ## A026315.P11703519750713028618

`lt[0, Δ[cos(cos(n))]]`
-/

namespace A026315.P11703519750713028618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (Real.cos (n : ℝ))

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A026315.P11703519750713028618

namespace A026315

/-- `lt[0, Δ[cos(cos(n))]]` -/
def P11703519750713028618.Spec : Prop :=
  ∀ n, (P11703519750713028618.a n : ℤ) = A026315 (n + 1)

end A026315

/-! ## A026315.P1808122064647934485

`lt[1, ratio[cos(cos(n))]]`
-/

namespace A026315.P1808122064647934485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (Real.cos (n : ℝ))

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) / f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A026315.P1808122064647934485

namespace A026315

/-- `lt[1, ratio[cos(cos(n))]]` -/
def P1808122064647934485.Spec : Prop :=
  ∀ n, (P1808122064647934485.a n : ℤ) = A026315 (n + 1)

end A026315

/-!
# A026316: Numbers k such that |sin(k)| > |cos(k+1)|.

The programs for A026316, the canonical program `A026316.P10976337521712028406` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026316 has offset 1).

The definition of A026316 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026316.P10976337521712028406

`lt[0, tan(5-n)]`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026316

/-- `lt[0, tan(5-n)]` -/
def P10976337521712028406.Spec : Prop :=
  ∀ n, (P10976337521712028406.a n : ℤ) = A026316 (n + 1)

theorem P10976337521712028406.correct : P10976337521712028406.Spec := by
  intro n
  simp only [A026316, Nat.add_sub_cancel]

end A026316

/-! ## A026316.P8830758323230351760

`lt[cos(2*n+1), 0]`
-/

namespace A026316.P8830758323230351760
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (2 * n + 1 : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A026316.P8830758323230351760

namespace A026316

/-- `lt[cos(2*n+1), 0]` -/
def P8830758323230351760.Spec : Prop :=
  ∀ n, (P8830758323230351760.a n : ℤ) = A026316 (n + 1)

end A026316

/-! ## A026316.P5113850224305822653

`lt[0, sin(2*(5-n))]`
-/

namespace A026316.P5113850224305822653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (2 * (5 - (n : ℤ)) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A026316.P5113850224305822653

namespace A026316

/-- `lt[0, sin(2*(5-n))]` -/
def P5113850224305822653.Spec : Prop :=
  ∀ n, (P5113850224305822653.a n : ℤ) = A026316 (n + 1)

end A026316

/-! ## A026316.P17327916022697523456

`lt[cos(n+1+n)+1, 1]`
-/

namespace A026316.P17327916022697523456
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n + 1 + n : ℝ) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A026316.P17327916022697523456

namespace A026316

/-- `lt[cos(n+1+n)+1, 1]` -/
def P17327916022697523456.Spec : Prop :=
  ∀ n, (P17327916022697523456.a n : ℤ) = A026316 (n + 1)

end A026316

/-! ## A026316.P5211018074586156168

`eq[0, floor(exp(cos(2*n+1)))]`
-/

namespace A026316.P5211018074586156168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp (Real.cos (2 * n + 1 : ℝ))⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A026316.P5211018074586156168

namespace A026316

/-- `eq[0, floor(exp(cos(2*n+1)))]` -/
def P5211018074586156168.Spec : Prop :=
  ∀ n, (P5211018074586156168.a n : ℤ) = A026316 (n + 1)

end A026316

/-! ## A026316.P13329888227687321726

`eq[1, ceil(exp(cos(2*n+1)))]`
-/

namespace A026316.P13329888227687321726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp (Real.cos (2 * n + 1 : ℝ))⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A026316.P13329888227687321726

namespace A026316

/-- `eq[1, ceil(exp(cos(2*n+1)))]` -/
def P13329888227687321726.Spec : Prop :=
  ∀ n, (P13329888227687321726.a n : ℤ) = A026316 (n + 1)

end A026316

/-! ## A026316.P3136830961993536017

`comp[n*ceil(cos(2*n+1))]`
-/

namespace A026316.P3136830961993536017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌈Real.cos (2 * n + 1 : ℝ)⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A026316.P3136830961993536017

namespace A026316

/-- `comp[n*ceil(cos(2*n+1))]` -/
def P3136830961993536017.Spec : Prop :=
  ∀ n, (P3136830961993536017.a n : ℤ) = A026316 (n + 1)

end A026316

/-! ## A026316.P16733465096047797037

`comp[or(n, floor(cos(2*n+1)))]`
-/

namespace A026316.P16733465096047797037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ⌊Real.cos (2 * n + 1 : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A026316.P16733465096047797037

namespace A026316

/-- `comp[or(n, floor(cos(2*n+1)))]` -/
def P16733465096047797037.Spec : Prop :=
  ∀ n, (P16733465096047797037.a n : ℤ) = A026316 (n + 1)

end A026316

/-! ## A026316.P8748966494380285015

`comp[xor(n, floor(cos(2*n+1)))]`
-/

namespace A026316.P8748966494380285015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊Real.cos (2 * n + 1 : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A026316.P8748966494380285015

namespace A026316

/-- `comp[xor(n, floor(cos(2*n+1)))]` -/
def P8748966494380285015.Spec : Prop :=
  ∀ n, (P8748966494380285015.a n : ℤ) = A026316 (n + 1)

end A026316

/-! ## A026316.P1017688974572737291

`∪[A327136(n+1), A327137(n+1)]`
-/

namespace A026316.P1017688974572737291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026316.P1017688974572737291

namespace A026316

/-- `∪[A327136(n+1), A327137(n+1)]` -/
def P1017688974572737291.Spec : Prop :=
  ∀ n, (P1017688974572737291.a n : ℤ) = A026316 (n + 1)

end A026316

/-! ## A026316.P11737074086961934125

`lt[10, Δ[tan(n)]²]`
-/

namespace A026316.P11737074086961934125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (n : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) - f3 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A026316.P11737074086961934125

namespace A026316

/-- `lt[10, Δ[tan(n)]²]` -/
def P11737074086961934125.Spec : Prop :=
  ∀ n, (P11737074086961934125.a n : ℤ) = A026316 (n + 1)

end A026316

/-! ## A026316.P2782294280624275725

`lt[π, abs(Δ[tan(n)])]`
-/

namespace A026316.P2782294280624275725
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.pi

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (n : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |f3 (n + 1) - f3 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A026316.P2782294280624275725

namespace A026316

/-- `lt[π, abs(Δ[tan(n)])]` -/
def P2782294280624275725.Spec : Prop :=
  ∀ n, (P2782294280624275725.a n : ℤ) = A026316 (n + 1)

end A026316

/-! ## A026316.P15194884652363534627

`lt[Δ[sin(2*n)], 0]`
-/

namespace A026316.P15194884652363534627
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (2 * n : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℝ)) n

end

end A026316.P15194884652363534627

namespace A026316

/-- `lt[Δ[sin(2*n)], 0]` -/
def P15194884652363534627.Spec : Prop :=
  ∀ n, (P15194884652363534627.a n : ℤ) = A026316 (n + 1)

end A026316

/-! ## A026316.P4431662225658853586

`lt[0, -cos(comp[2*n])]`
-/

namespace A026316.P4431662225658853586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  -Real.cos (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A026316.P4431662225658853586

namespace A026316

/-- `lt[0, -cos(comp[2*n])]` -/
def P4431662225658853586.Spec : Prop :=
  ∀ n, (P4431662225658853586.a n : ℤ) = A026316 (n + 1)

end A026316

/-! ## A026316.P7796427694936962229

`lt[ratio[exp(sin(2*n))], 1]`
-/

namespace A026316.P7796427694936962229
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (Real.sin (2 * n : ℝ))

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) / f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℝ)) n

end

end A026316.P7796427694936962229

namespace A026316

/-- `lt[ratio[exp(sin(2*n))], 1]` -/
def P7796427694936962229.Spec : Prop :=
  ∀ n, (P7796427694936962229.a n : ℤ) = A026316 (n + 1)

end A026316

/-! ## A026316.P16680734667858276086

`lt[exp(cos(comp[2*n])), 1]`
-/

namespace A026316.P16680734667858276086
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (Real.cos (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℝ))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℝ)) n

end

end A026316.P16680734667858276086

namespace A026316

/-- `lt[exp(cos(comp[2*n])), 1]` -/
def P16680734667858276086.Spec : Prop :=
  ∀ n, (P16680734667858276086.a n : ℤ) = A026316 (n + 1)

end A026316

/-! ## A026316.P12146787261204961718

`lt[1, ∑[tan(sin(2*n))]]`
-/

namespace A026316.P12146787261204961718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (Real.sin (2 * n : ℝ))

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A026316.P12146787261204961718

namespace A026316

/-- `lt[1, ∑[tan(sin(2*n))]]` -/
def P12146787261204961718.Spec : Prop :=
  ∀ n, (P12146787261204961718.a n : ℤ) = A026316 (n + 1)

end A026316

/-! ## A026316.P8942863970470731416

`lt[1, ratio[acos(sin(2*n))]]`
-/

namespace A026316.P8942863970470731416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arccos (Real.sin (2 * n : ℝ))

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) / f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A026316.P8942863970470731416

namespace A026316

/-- `lt[1, ratio[acos(sin(2*n))]]` -/
def P8942863970470731416.Spec : Prop :=
  ∀ n, (P8942863970470731416.a n : ℤ) = A026316 (n + 1)

end A026316

/-! ## A026316.P11299681082342453830

`lt[sin(cos(comp[2*n])), 0]`
-/

namespace A026316.P11299681082342453830
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (Real.cos (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℝ))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℝ)) n

end

end A026316.P11299681082342453830

namespace A026316

/-- `lt[sin(cos(comp[2*n])), 0]` -/
def P11299681082342453830.Spec : Prop :=
  ∀ n, (P11299681082342453830.a n : ℤ) = A026316 (n + 1)

end A026316

/-! ## A026316.P9307477441377346038

`lt[tan(cos(comp[2*n])), 0]`
-/

namespace A026316.P9307477441377346038
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (Real.cos (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℝ))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℝ)) n

end

end A026316.P9307477441377346038

namespace A026316

/-- `lt[tan(cos(comp[2*n])), 0]` -/
def P9307477441377346038.Spec : Prop :=
  ∀ n, (P9307477441377346038.a n : ℤ) = A026316 (n + 1)

end A026316

/-!
# A026317: Nonnegative integers k such that |cos(k)| > |sin(k+1)|.

The programs for A026317, the canonical program `A026317.P17497952412291256142` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026317 has offset 1).

The definition of A026317 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026317.P17497952412291256142

`lt[0, cos(2*n+1)]`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026317

/-- `lt[0, cos(2*n+1)]` -/
def P17497952412291256142.Spec : Prop :=
  ∀ n, (P17497952412291256142.a n : ℤ) = A026317 (n + 1)

theorem P17497952412291256142.correct : P17497952412291256142.Spec := by
  intro n
  simp only [A026317, Nat.add_sub_cancel]

end A026317

/-! ## A026317.P11529757420404345171

`lt[-cos(n+1+n), 0]`
-/

namespace A026317.P11529757420404345171
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  -Real.cos (n + 1 + n : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A026317.P11529757420404345171

namespace A026317

/-- `lt[-cos(n+1+n), 0]` -/
def P11529757420404345171.Spec : Prop :=
  ∀ n, (P11529757420404345171.a n : ℤ) = A026317 (n + 1)

theorem P11529757420404345171.correct : P11529757420404345171.Spec := by
  intro n
  simp only [A026317, Nat.add_sub_cancel, A026317.P11529757420404345171.f1, A026317.P11529757420404345171.f2, A026317.P11529757420404345171.a, A026317.P17497952412291256142.f1, A026317.P17497952412291256142.f2, A026317.P17497952412291256142.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A026317

/-! ## A026317.P16394668917623699539

`lt[1, cos(n+1+n)+1]`
-/

namespace A026317.P16394668917623699539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n + 1 + n : ℝ) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A026317.P16394668917623699539

namespace A026317

/-- `lt[1, cos(n+1+n)+1]` -/
def P16394668917623699539.Spec : Prop :=
  ∀ n, (P16394668917623699539.a n : ℤ) = A026317 (n + 1)

theorem P16394668917623699539.correct : P16394668917623699539.Spec := by
  intro n
  simp only [A026317, Nat.add_sub_cancel, A026317.P16394668917623699539.f1, A026317.P16394668917623699539.f2, A026317.P16394668917623699539.a, A026317.P17497952412291256142.f1, A026317.P17497952412291256142.f2, A026317.P17497952412291256142.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A026317

/-! ## A026317.P1523605578956706425

`record[n*ceil(cos(2*n+1))]`
-/

namespace A026317.P1523605578956706425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌈Real.cos (2 * n + 1 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026317.P1523605578956706425

namespace A026317

/-- `record[n*ceil(cos(2*n+1))]` -/
def P1523605578956706425.Spec : Prop :=
  ∀ n, P1523605578956706425.a n = A026317 (n + 1)

end A026317

/-! ## A026317.P7975912765011802931

`record[or(n, floor(cos(2*n+1)))]`
-/

namespace A026317.P7975912765011802931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ⌊Real.cos (2 * n + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026317.P7975912765011802931

namespace A026317

/-- `record[or(n, floor(cos(2*n+1)))]` -/
def P7975912765011802931.Spec : Prop :=
  ∀ n, P7975912765011802931.a n = A026317 (n + 1)

end A026317

/-! ## A026317.P1457629009699729624

`record[xor(n, floor(cos(2*n+1)))]`
-/

namespace A026317.P1457629009699729624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊Real.cos (2 * n + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026317.P1457629009699729624

namespace A026317

/-- `record[xor(n, floor(cos(2*n+1)))]` -/
def P1457629009699729624.Spec : Prop :=
  ∀ n, P1457629009699729624.a n = A026317 (n + 1)

end A026317

/-! ## A026317.P2553545809399516513

`lt[(tan(n+1)*tan(n))², 1]`
-/

namespace A026317.P2553545809399516513
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.tan (n + 1 : ℝ) * Real.tan (n : ℝ)) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A026317.P2553545809399516513

namespace A026317

/-- `lt[(tan(n+1)*tan(n))², 1]` -/
def P2553545809399516513.Spec : Prop :=
  ∀ n, (P2553545809399516513.a n : ℤ) = A026317 (n + 1)

end A026317

/-! ## A026317.P15436112132730651833

`eq[abs(cos(2*n+1)), cos(2*n+1)]`
-/

namespace A026317.P15436112132730651833
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |Real.cos (2 * n + 1 : ℝ)|

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (2 * n + 1 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A026317.P15436112132730651833

namespace A026317

/-- `eq[abs(cos(2*n+1)), cos(2*n+1)]` -/
def P15436112132730651833.Spec : Prop :=
  ∀ n, (P15436112132730651833.a n : ℤ) = A026317 (n + 1)

end A026317

/-! ## A026317.P15534213110614494514

`comp[A026316(n+1)]`
-/

namespace A026317.P15534213110614494514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026316 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A026317.P15534213110614494514

namespace A026317

/-- `comp[A026316(n+1)]` -/
def P15534213110614494514.Spec : Prop :=
  ∀ n, (P15534213110614494514.a n : ℤ) = A026317 (n + 1)

end A026317

/-! ## A026317.P16001191776032707322

`lt[Δ[tan(n)]², 10]`
-/

namespace A026317.P16001191776032707322
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (n : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℝ)) n

end

end A026317.P16001191776032707322

namespace A026317

/-- `lt[Δ[tan(n)]², 10]` -/
def P16001191776032707322.Spec : Prop :=
  ∀ n, (P16001191776032707322.a n : ℤ) = A026317 (n + 1)

end A026317

/-! ## A026317.P17709820792675589822

`lt[abs(Δ[tan(n)]), π]`
-/

namespace A026317.P17709820792675589822
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (n : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.pi

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A026317.P17709820792675589822

namespace A026317

/-- `lt[abs(Δ[tan(n)]), π]` -/
def P17709820792675589822.Spec : Prop :=
  ∀ n, (P17709820792675589822.a n : ℤ) = A026317 (n + 1)

end A026317

/-! ## A026317.P4100997245272048507

`lt[0, Δ[sin(2*n)]]`
-/

namespace A026317.P4100997245272048507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (2 * n : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A026317.P4100997245272048507

namespace A026317

/-- `lt[0, Δ[sin(2*n)]]` -/
def P4100997245272048507.Spec : Prop :=
  ∀ n, (P4100997245272048507.a n : ℤ) = A026317 (n + 1)

end A026317

/-! ## A026317.P18353910180800663884

`lt[1, ratio[exp(sin(2*n))]]`
-/

namespace A026317.P18353910180800663884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (Real.sin (2 * n : ℝ))

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) / f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A026317.P18353910180800663884

namespace A026317

/-- `lt[1, ratio[exp(sin(2*n))]]` -/
def P18353910180800663884.Spec : Prop :=
  ∀ n, (P18353910180800663884.a n : ℤ) = A026317 (n + 1)

end A026317

/-! ## A026317.P11057665404447952677

`lt[1, exp(cos(comp[2*n]))]`
-/

namespace A026317.P11057665404447952677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (Real.cos (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℝ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A026317.P11057665404447952677

namespace A026317

/-- `lt[1, exp(cos(comp[2*n]))]` -/
def P11057665404447952677.Spec : Prop :=
  ∀ n, (P11057665404447952677.a n : ℤ) = A026317 (n + 1)

end A026317

/-! ## A026317.P1756114770309630320

`lt[∑[tan(sin(2*n))], 1]`
-/

namespace A026317.P1756114770309630320
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (Real.sin (2 * n : ℝ))

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℝ)) n

end

end A026317.P1756114770309630320

namespace A026317

/-- `lt[∑[tan(sin(2*n))], 1]` -/
def P1756114770309630320.Spec : Prop :=
  ∀ n, (P1756114770309630320.a n : ℤ) = A026317 (n + 1)

end A026317

/-! ## A026317.P9922695777412856765

`lt[ratio[acos(sin(2*n))], 1]`
-/

namespace A026317.P9922695777412856765
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arccos (Real.sin (2 * n : ℝ))

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) / f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℝ)) n

end

end A026317.P9922695777412856765

namespace A026317

/-- `lt[ratio[acos(sin(2*n))], 1]` -/
def P9922695777412856765.Spec : Prop :=
  ∀ n, (P9922695777412856765.a n : ℤ) = A026317 (n + 1)

end A026317

/-! ## A026317.P10389900762242310104

`lt[0, sin(cos(comp[2*n]))]`
-/

namespace A026317.P10389900762242310104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (Real.cos (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℝ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A026317.P10389900762242310104

namespace A026317

/-- `lt[0, sin(cos(comp[2*n]))]` -/
def P10389900762242310104.Spec : Prop :=
  ∀ n, (P10389900762242310104.a n : ℤ) = A026317 (n + 1)

end A026317

/-! ## A026317.P3521774271325315287

`lt[0, tan(cos(comp[2*n]))]`
-/

namespace A026317.P3521774271325315287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (Real.cos (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℝ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A026317.P3521774271325315287

namespace A026317

/-- `lt[0, tan(cos(comp[2*n]))]` -/
def P3521774271325315287.Spec : Prop :=
  ∀ n, (P3521774271325315287.a n : ℤ) = A026317 (n + 1)

end A026317

/-! ## A026317.P10087239273414859876

`lt[0, asin(cos(comp[2*n]))]`
-/

namespace A026317.P10087239273414859876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arcsin (Real.cos (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℝ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A026317.P10087239273414859876

namespace A026317

/-- `lt[0, asin(cos(comp[2*n]))]` -/
def P10087239273414859876.Spec : Prop :=
  ∀ n, (P10087239273414859876.a n : ℤ) = A026317 (n + 1)

end A026317

/-! ## A026317.P8196289296920819440

`lt[∑[sin(2*n)], acot(3)]`
-/

namespace A026317.P8196289296920819440
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (2 * n : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (3 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A026317.P8196289296920819440

namespace A026317

/-- `lt[∑[sin(2*n)], acot(3)]` -/
def P8196289296920819440.Spec : Prop :=
  ∀ n, (P8196289296920819440.a n : ℤ) = A026317 (n + 1)

end A026317

/-!
# A026318: a(n) = n-th nonnegative integer k satisfying sin(k) < cos(k) < sin(k+1).

The programs for A026318, the canonical program `A026318.P11805155564372986449` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026318 has offset 1).

The definition of A026318 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026318.P11805155564372986449

`∩[A004082(n+1), A026319(n+1)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A026318

/-- `∩[A004082(n+1), A026319(n+1)]` -/
def P11805155564372986449.Spec : Prop :=
  ∀ n, (P11805155564372986449.a n : ℤ) = A026318 (n + 1)

theorem P11805155564372986449.correct : P11805155564372986449.Spec := by
  intro n
  simp only [A026318, Nat.add_sub_cancel]

end A026318

/-! ## A026318.P10436321265839767657

`∩[A026319(n+1), A246294(n+1)]`
-/

namespace A026318.P10436321265839767657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246294 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A026318.P10436321265839767657

namespace A026318

/-- `∩[A026319(n+1), A246294(n+1)]` -/
def P10436321265839767657.Spec : Prop :=
  ∀ n, (P10436321265839767657.a n : ℤ) = A026318 (n + 1)

end A026318

/-! ## A026318.P5382476826097618415

`∩[A026319(n+1), A277093(n+1)]`
-/

namespace A026318.P5382476826097618415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277093 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A026318.P5382476826097618415

namespace A026318

/-- `∩[A026319(n+1), A277093(n+1)]` -/
def P5382476826097618415.Spec : Prop :=
  ∀ n, (P5382476826097618415.a n : ℤ) = A026318 (n + 1)

end A026318

/-! ## A026318.P7098195956169710495

`∩[A026319(n+1), A332480(n+1)]`
-/

namespace A026318.P7098195956169710495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A026318.P7098195956169710495

namespace A026318

/-- `∩[A026319(n+1), A332480(n+1)]` -/
def P7098195956169710495.Spec : Prop :=
  ∀ n, (P7098195956169710495.a n : ℤ) = A026318 (n + 1)

end A026318

/-! ## A026318.P17105648803336534834

`∩[A026319(n+1), A277137(n+1)]`
-/

namespace A026318.P17105648803336534834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A026318.P17105648803336534834

namespace A026318

/-- `∩[A026319(n+1), A277137(n+1)]` -/
def P17105648803336534834.Spec : Prop :=
  ∀ n, (P17105648803336534834.a n : ℤ) = A026318 (n + 1)

end A026318

/-! ## A026318.P11203156205669851091

`∩[A026319(n+1), A246411(n+1)]`
-/

namespace A026318.P11203156205669851091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246411 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A026318.P11203156205669851091

namespace A026318

/-- `∩[A026319(n+1), A246411(n+1)]` -/
def P11203156205669851091.Spec : Prop :=
  ∀ n, (P11203156205669851091.a n : ℤ) = A026318 (n + 1)

end A026318

/-! ## A026318.P306353674586260492

`∩[A026319(n+1), A246414(n+1)+1]`
-/

namespace A026318.P306353674586260492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246414 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A026318.P306353674586260492

namespace A026318

/-- `∩[A026319(n+1), A246414(n+1)+1]` -/
def P306353674586260492.Spec : Prop :=
  ∀ n, (P306353674586260492.a n : ℤ) = A026318 (n + 1)

end A026318

/-! ## A026318.P1712041606661463638

`∩[A026310(n+1), A026319(n+1)]`
-/

namespace A026318.P1712041606661463638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A026318.P1712041606661463638

namespace A026318

/-- `∩[A026310(n+1), A026319(n+1)]` -/
def P1712041606661463638.Spec : Prop :=
  ∀ n, (P1712041606661463638.a n : ℤ) = A026318 (n + 1)

end A026318

/-! ## A026318.P11688811235115462481

`∩[A026319(n+1), A070752(n+1)]`
-/

namespace A026318.P11688811235115462481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A026318.P11688811235115462481

namespace A026318

/-- `∩[A026319(n+1), A070752(n+1)]` -/
def P11688811235115462481.Spec : Prop :=
  ∀ n, (P11688811235115462481.a n : ℤ) = A026318 (n + 1)

end A026318

/-! ## A026318.P853197232314884141

`∩[A026319(n+1), A246413(n+1)]`
-/

namespace A026318.P853197232314884141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A026318.P853197232314884141

namespace A026318

/-- `∩[A026319(n+1), A246413(n+1)]` -/
def P853197232314884141.Spec : Prop :=
  ∀ n, (P853197232314884141.a n : ℤ) = A026318 (n + 1)

end A026318

/-! ## A026318.P10667932325514378148

`∩[A026310(n+1), A363089(n+1)]`
-/

namespace A026318.P10667932325514378148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A026318.P10667932325514378148

namespace A026318

/-- `∩[A026310(n+1), A363089(n+1)]` -/
def P10667932325514378148.Spec : Prop :=
  ∀ n, (P10667932325514378148.a n : ℤ) = A026318 (n + 1)

end A026318

/-! ## A026318.P2289349267367511728

`∩[A026319(n+1), A363089(n+1)]`
-/

namespace A026318.P2289349267367511728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A026318.P2289349267367511728

namespace A026318

/-- `∩[A026319(n+1), A363089(n+1)]` -/
def P2289349267367511728.Spec : Prop :=
  ∀ n, (P2289349267367511728.a n : ℤ) = A026318 (n + 1)

end A026318

/-! ## A026318.P13455068292817579937

`∩[A026319(n+1), A070751(n+1)+1]`
-/

namespace A026318.P13455068292817579937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070751 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A026318.P13455068292817579937

namespace A026318

/-- `∩[A026319(n+1), A070751(n+1)+1]` -/
def P13455068292817579937.Spec : Prop :=
  ∀ n, (P13455068292817579937.a n : ℤ) = A026318 (n + 1)

end A026318

/-! ## A026318.P5347695918886419421

`∩[A026319(n+1), A246410(n+1)+1]`
-/

namespace A026318.P5347695918886419421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246410 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A026318.P5347695918886419421

namespace A026318

/-- `∩[A026319(n+1), A246410(n+1)+1]` -/
def P5347695918886419421.Spec : Prop :=
  ∀ n, (P5347695918886419421.a n : ℤ) = A026318 (n + 1)

end A026318

/-! ## A026318.P10671555057757786217

`∩[A026309(n+1)+2, A026319(n+1)]`
-/

namespace A026318.P10671555057757786217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026309 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A026318.P10671555057757786217

namespace A026318

/-- `∩[A026309(n+1)+2, A026319(n+1)]` -/
def P10671555057757786217.Spec : Prop :=
  ∀ n, (P10671555057757786217.a n : ℤ) = A026318 (n + 1)

end A026318

/-! ## A026318.P779465432584141423

`∩[A026319(n+1), A246303(n+1)+2]`
-/

namespace A026318.P779465432584141423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246303 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A026318.P779465432584141423

namespace A026318

/-- `∩[A026319(n+1), A246303(n+1)+2]` -/
def P779465432584141423.Spec : Prop :=
  ∀ n, (P779465432584141423.a n : ℤ) = A026318 (n + 1)

end A026318

/-! ## A026318.P12792317368018290727

`∩[A026309(n+1), A026319(n+1)]`
-/

namespace A026318.P12792317368018290727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A026318.P12792317368018290727

namespace A026318

/-- `∩[A026309(n+1), A026319(n+1)]` -/
def P12792317368018290727.Spec : Prop :=
  ∀ n, (P12792317368018290727.a n : ℤ) = A026318 (n + 1)

end A026318

/-! ## A026318.P9052759569556903824

`∩[A026311(n+1), A026319(n+1)]`
-/

namespace A026318.P9052759569556903824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A026318.P9052759569556903824

namespace A026318

/-- `∩[A026311(n+1), A026319(n+1)]` -/
def P9052759569556903824.Spec : Prop :=
  ∀ n, (P9052759569556903824.a n : ℤ) = A026318 (n + 1)

end A026318

/-! ## A026318.P13066792377068738421

`∩[A026319(n+1), A131503(n+1)]`
-/

namespace A026318.P13066792377068738421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131503 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A026318.P13066792377068738421

namespace A026318

/-- `∩[A026319(n+1), A131503(n+1)]` -/
def P13066792377068738421.Spec : Prop :=
  ∀ n, (P13066792377068738421.a n : ℤ) = A026318 (n + 1)

end A026318

/-! ## A026318.P843572166288376640

`∩[A026312(n+1)+1, A026319(n+1)]`
-/

namespace A026318.P843572166288376640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026312 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A026318.P843572166288376640

namespace A026318

/-- `∩[A026312(n+1)+1, A026319(n+1)]` -/
def P843572166288376640.Spec : Prop :=
  ∀ n, (P843572166288376640.a n : ℤ) = A026318 (n + 1)

end A026318

/-!
# A026319: a(n) is the n-th nonnegative integer k satisfying |sin(k)| < |cos(k)| < |sin(k+1)|.

The programs for A026319, the canonical program `A026319.P8227672307196475035` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026319 has offset 1).

The definition of A026319 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7956 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026319.P16847585884440184775

`∪[A026318(n+1), A026320(n+1)]`
-/

namespace A026319.P16847585884440184775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026318 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026319.P16847585884440184775

namespace A026319

/-- `∪[A026318(n+1), A026320(n+1)]` -/
def P16847585884440184775.Spec : Prop :=
  ∀ n, (P16847585884440184775.a n : ℤ) = A026319 (n + 1)

end A026319

/-! ## A026319.P8227672307196475035

`lt[ceil(cos(2*n+1)), cos(2*n)]`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026319

/-- `lt[ceil(cos(2*n+1)), cos(2*n)]` -/
def P8227672307196475035.Spec : Prop :=
  ∀ n, (P8227672307196475035.a n : ℤ) = A026319 (n + 1)

theorem P8227672307196475035.correct : P8227672307196475035.Spec := by
  intro n
  simp only [A026319, Nat.add_sub_cancel]

end A026319

/-! ## A026319.P13265876763208237972

`∩[A277137(2*n+1), A054386(2*(n+1))]/2`
-/

namespace A026319.P13265876763208237972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277137 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054386 (2 * (n + 1))

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A026319.P13265876763208237972

namespace A026319

/-- `∩[A277137(2*n+1), A054386(2*(n+1))]/2` -/
def P13265876763208237972.Spec : Prop :=
  ∀ n, P13265876763208237972.a n = (A026319 (n + 1) : ℚ)

end A026319

/-! ## A026319.P5072789209621097738

`record[A001057(A246388(n))+5]`
-/

namespace A026319.P5072789209621097738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A246388 n).toNat + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026319.P5072789209621097738

namespace A026319

/-- `record[A001057(A246388(n))+5]` -/
def P5072789209621097738.Spec : Prop :=
  ∀ n, P5072789209621097738.a n = A026319 (n + 1)

end A026319

/-! ## A026319.P4424175942618638155

`record[A078898(A246393(n+2))]`
-/

namespace A026319.P4424175942618638155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A246393 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026319.P4424175942618638155

namespace A026319

/-- `record[A078898(A246393(n+2))]` -/
def P4424175942618638155.Spec : Prop :=
  ∀ n, P4424175942618638155.a n = A026319 (n + 1)

end A026319

/-! ## A026319.P5299007436882353606

`record[A025480(A062389(2*n+5))]`
-/

namespace A026319.P5299007436882353606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A062389 (2 * n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026319.P5299007436882353606

namespace A026319

/-- `record[A025480(A062389(2*n+5))]` -/
def P5299007436882353606.Spec : Prop :=
  ∀ n, P5299007436882353606.a n = A026319 (n + 1)

end A026319

/-! ## A026319.P12783938422027046963

`lt[2*A344858(2*n+1), A344858(2*n)]`
-/

namespace A026319.P12783938422027046963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A344858 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344858 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A026319.P12783938422027046963

namespace A026319

/-- `lt[2*A344858(2*n+1), A344858(2*n)]` -/
def P12783938422027046963.Spec : Prop :=
  ∀ n, (P12783938422027046963.a n : ℤ) = A026319 (n + 1)

end A026319

/-! ## A026319.P2168992687926868352

`A000720(p?[A207790(A246393(n))])`
-/

namespace A026319.P2168992687926868352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (A246393 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A026319.P2168992687926868352

namespace A026319

/-- `A000720(p?[A207790(A246393(n))])` -/
def P2168992687926868352.Spec : Prop :=
  ∀ n, P2168992687926868352.a n = A026319 (n + 1)

end A026319

/-!
# A026320: sin(n) > cos(n) > sin(n+1).

The programs for A026320, the canonical program `A026320.P3662656461649246048` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026320 has offset 1).

The definition of A026320 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026320.P3662656461649246048

`∩[A026319(n+1), A246297(n+1)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A026320

/-- `∩[A026319(n+1), A246297(n+1)]` -/
def P3662656461649246048.Spec : Prop :=
  ∀ n, (P3662656461649246048.a n : ℤ) = A026320 (n + 1)

theorem P3662656461649246048.correct : P3662656461649246048.Spec := by
  intro n
  simp only [A026320, Nat.add_sub_cancel]

end A026320

/-! ## A026320.P10838897750194739698

`∩[A026319(n+1), A277096(n+1)]`
-/

namespace A026320.P10838897750194739698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A026320.P10838897750194739698

namespace A026320

/-- `∩[A026319(n+1), A277096(n+1)]` -/
def P10838897750194739698.Spec : Prop :=
  ∀ n, (P10838897750194739698.a n : ℤ) = A026320 (n + 1)

end A026320

/-! ## A026320.P2951536780225210769

`∩[A026319(n+1), A332483(n+1)]`
-/

namespace A026320.P2951536780225210769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332483 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A026320.P2951536780225210769

namespace A026320

/-- `∩[A026319(n+1), A332483(n+1)]` -/
def P2951536780225210769.Spec : Prop :=
  ∀ n, (P2951536780225210769.a n : ℤ) = A026320 (n + 1)

end A026320

/-! ## A026320.P9797257807298042520

`∩[A026319(n+1), A277138(n+1)]`
-/

namespace A026320.P9797257807298042520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A026320.P9797257807298042520

namespace A026320

/-- `∩[A026319(n+1), A277138(n+1)]` -/
def P9797257807298042520.Spec : Prop :=
  ∀ n, (P9797257807298042520.a n : ℤ) = A026320 (n + 1)

end A026320

/-! ## A026320.P6502455681785691402

`∩[A026319(n+1), A246390(n)]`
-/

namespace A026320.P6502455681785691402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246390 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A026320.P6502455681785691402

namespace A026320

/-- `∩[A026319(n+1), A246390(n)]` -/
def P6502455681785691402.Spec : Prop :=
  ∀ n, (P6502455681785691402.a n : ℤ) = A026320 (n + 1)

end A026320

/-! ## A026320.P8949831466862256173

`∩[A026319(n+1), A246414(n+1)]`
-/

namespace A026320.P8949831466862256173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A026320.P8949831466862256173

namespace A026320

/-- `∩[A026319(n+1), A246414(n+1)]` -/
def P8949831466862256173.Spec : Prop :=
  ∀ n, (P8949831466862256173.a n : ℤ) = A026320 (n + 1)

end A026320

/-! ## A026320.P12421491903303665931

`∩[A026319(n+1), A246411(n+1)+1]`
-/

namespace A026320.P12421491903303665931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246411 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A026320.P12421491903303665931

namespace A026320

/-- `∩[A026319(n+1), A246411(n+1)+1]` -/
def P12421491903303665931.Spec : Prop :=
  ∀ n, (P12421491903303665931.a n : ℤ) = A026320 (n + 1)

end A026320

/-! ## A026320.P18080143604178394338

`∩[A026312(n+1), A026319(n+1)]`
-/

namespace A026320.P18080143604178394338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A026320.P18080143604178394338

namespace A026320

/-- `∩[A026312(n+1), A026319(n+1)]` -/
def P18080143604178394338.Spec : Prop :=
  ∀ n, (P18080143604178394338.a n : ℤ) = A026320 (n + 1)

end A026320

/-! ## A026320.P14139678027096897943

`∩[A026319(n+1), A070751(n+1)]`
-/

namespace A026320.P14139678027096897943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A026320.P14139678027096897943

namespace A026320

/-- `∩[A026319(n+1), A070751(n+1)]` -/
def P14139678027096897943.Spec : Prop :=
  ∀ n, (P14139678027096897943.a n : ℤ) = A026320 (n + 1)

end A026320

/-! ## A026320.P10472032066752663960

`∩[A026319(n+1), A246293(n+1)]`
-/

namespace A026320.P10472032066752663960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246293 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A026320.P10472032066752663960

namespace A026320

/-- `∩[A026319(n+1), A246293(n+1)]` -/
def P10472032066752663960.Spec : Prop :=
  ∀ n, (P10472032066752663960.a n : ℤ) = A026320 (n + 1)

end A026320

/-! ## A026320.P8223632024644626606

`∩[A026319(n+1), A246303(n+1)]`
-/

namespace A026320.P8223632024644626606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A026320.P8223632024644626606

namespace A026320

/-- `∩[A026319(n+1), A246303(n+1)]` -/
def P8223632024644626606.Spec : Prop :=
  ∀ n, (P8223632024644626606.a n : ℤ) = A026320 (n + 1)

end A026320

/-! ## A026320.P16295169154651494953

`∩[A026319(n+1), A246410(n+1)]`
-/

namespace A026320.P16295169154651494953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246410 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A026320.P16295169154651494953

namespace A026320

/-- `∩[A026319(n+1), A246410(n+1)]` -/
def P16295169154651494953.Spec : Prop :=
  ∀ n, (P16295169154651494953.a n : ℤ) = A026320 (n + 1)

end A026320

/-! ## A026320.P17570860620599363880

`∩[A026310(n+1)+1, A026319(n+1)]`
-/

namespace A026320.P17570860620599363880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026310 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A026320.P17570860620599363880

namespace A026320

/-- `∩[A026310(n+1)+1, A026319(n+1)]` -/
def P17570860620599363880.Spec : Prop :=
  ∀ n, (P17570860620599363880.a n : ℤ) = A026320 (n + 1)

end A026320

/-! ## A026320.P8536284206345445461

`∩[A026319(n+1), A070752(n+1)+1]`
-/

namespace A026320.P8536284206345445461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070752 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A026320.P8536284206345445461

namespace A026320

/-- `∩[A026319(n+1), A070752(n+1)+1]` -/
def P8536284206345445461.Spec : Prop :=
  ∀ n, (P8536284206345445461.a n : ℤ) = A026320 (n + 1)

end A026320

/-! ## A026320.P11019939865822512343

`∩[A026319(n+1), A246413(n+1)+1]`
-/

namespace A026320.P11019939865822512343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246413 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A026320.P11019939865822512343

namespace A026320

/-- `∩[A026319(n+1), A246413(n+1)+1]` -/
def P11019939865822512343.Spec : Prop :=
  ∀ n, (P11019939865822512343.a n : ℤ) = A026320 (n + 1)

end A026320

/-! ## A026320.P904591400744856662

`∩[A026309(n+1)-1, A026319(n+1)]`
-/

namespace A026320.P904591400744856662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026309 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A026320.P904591400744856662

namespace A026320

/-- `∩[A026309(n+1)-1, A026319(n+1)]` -/
def P904591400744856662.Spec : Prop :=
  ∀ n, (P904591400744856662.a n : ℤ) = A026320 (n + 1)

end A026320

/-! ## A026320.P1328838922489280008

`∩[A026311(n+1)+2, A026319(n+1)]`
-/

namespace A026320.P1328838922489280008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026311 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A026320.P1328838922489280008

namespace A026320

/-- `∩[A026311(n+1)+2, A026319(n+1)]` -/
def P1328838922489280008.Spec : Prop :=
  ∀ n, (P1328838922489280008.a n : ℤ) = A026320 (n + 1)

end A026320

/-! ## A026320.P18392857321521421601

`∩[A026319(n+1), A363089(n+1)-1]`
-/

namespace A026320.P18392857321521421601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363089 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A026320.P18392857321521421601

namespace A026320

/-- `∩[A026319(n+1), A363089(n+1)-1]` -/
def P18392857321521421601.Spec : Prop :=
  ∀ n, (P18392857321521421601.a n : ℤ) = A026320 (n + 1)

end A026320

/-! ## A026320.P11432604082852049161

`∩[A026319(n+1), A131503(n+1)-2]`
-/

namespace A026320.P11432604082852049161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131503 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A026320.P11432604082852049161

namespace A026320

/-- `∩[A026319(n+1), A131503(n+1)-2]` -/
def P11432604082852049161.Spec : Prop :=
  ∀ n, (P11432604082852049161.a n : ℤ) = A026320 (n + 1)

end A026320

/-! ## A026320.P5337794841749935429

`∩[A026319(n+1), A332487(n+1)]`
-/

namespace A026320.P5337794841749935429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A026320.P5337794841749935429

namespace A026320

/-- `∩[A026319(n+1), A332487(n+1)]` -/
def P5337794841749935429.Spec : Prop :=
  ∀ n, (P5337794841749935429.a n : ℤ) = A026320 (n + 1)

end A026320

/-!
# A026321: n-th nonnegative integer k satisfying |sin(k)| > |cos(k)| > |sin(k+1)|.

The programs for A026321, the canonical program `A026321.P163468611954759205` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026321 has offset 1).

The definition of A026321 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7961 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026321.P163468611954759205

`lt[cos(2*n), floor(cos(2*n+1))]`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026321

/-- `lt[cos(2*n), floor(cos(2*n+1))]` -/
def P163468611954759205.Spec : Prop :=
  ∀ n, (P163468611954759205.a n : ℤ) = A026321 (n + 1)

theorem P163468611954759205.correct : P163468611954759205.Spec := by
  intro n
  simp only [A026321, Nat.add_sub_cancel]

end A026321

/-! ## A026321.P14923674218700870108

`lt[ceil(cos(2*n)), cos(2*n+1)]`
-/

namespace A026321.P14923674218700870108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cos (2 * n : ℝ)⌉

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (2 * n + 1 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A026321.P14923674218700870108

namespace A026321

/-- `lt[ceil(cos(2*n)), cos(2*n+1)]` -/
def P14923674218700870108.Spec : Prop :=
  ∀ n, (P14923674218700870108.a n : ℤ) = A026321 (n + 1)

end A026321

/-! ## A026321.P14200467916911777000

`record[gcd(A246394(n), A257984(n+1))]`
-/

namespace A026321.P14200467916911777000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A246394 n) (A257984 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026321.P14200467916911777000

namespace A026321

/-- `record[gcd(A246394(n), A257984(n+1))]` -/
def P14200467916911777000.Spec : Prop :=
  ∀ n, (P14200467916911777000.a n : ℤ) = A026321 (n + 1)

end A026321

/-! ## A026321.P14669850230591606529

`filter[A026317(n+2), A372456(#)]`
-/

namespace A026321.P14669850230591606529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026317 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A372456 (f1 j).toNat = 1) n)

end

end A026321.P14669850230591606529

namespace A026321

/-- `filter[A026317(n+2), A372456(#)]` -/
def P14669850230591606529.Spec : Prop :=
  ∀ n, P14669850230591606529.a n = A026321 (n + 1)

end A026321

/-! ## A026321.P10528676171784124437

`record[A325563(A277138(2*(n+1)))]`
-/

namespace A026321.P10528676171784124437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325563 (A277138 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026321.P10528676171784124437

namespace A026321

/-- `record[A325563(A277138(2*(n+1)))]` -/
def P10528676171784124437.Spec : Prop :=
  ∀ n, P10528676171784124437.a n = A026321 (n + 1)

end A026321

/-! ## A026321.P3538941711716394790

`∩[A054386(2*n+1), A277138(2*(n+1))]/2`
-/

namespace A026321.P3538941711716394790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054386 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277138 (2 * (n + 1))

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A026321.P3538941711716394790

namespace A026321

/-- `∩[A054386(2*n+1), A277138(2*(n+1))]/2` -/
def P3538941711716394790.Spec : Prop :=
  ∀ n, P3538941711716394790.a n = (A026321 (n + 1) : ℚ)

end A026321

/-! ## A026321.P14751228377315347080

`record[A032742(A246394(n))]`
-/

namespace A026321.P14751228377315347080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A246394 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026321.P14751228377315347080

namespace A026321

/-- `record[A032742(A246394(n))]` -/
def P14751228377315347080.Spec : Prop :=
  ∀ n, P14751228377315347080.a n = A026321 (n + 1)

end A026321

/-! ## A026321.P1755584339660590442

`record[A057979(A004083(n+1))]`
-/

namespace A026321.P1755584339660590442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A004083 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026321.P1755584339660590442

namespace A026321

/-- `record[A057979(A004083(n+1))]` -/
def P1755584339660590442.Spec : Prop :=
  ∀ n, P1755584339660590442.a n = A026321 (n + 1)

end A026321

/-! ## A026321.P14891967699152969560

`record[-A001057(A246408(3*(n+1)))]`
-/

namespace A026321.P14891967699152969560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A001057 (A246408 (3 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026321.P14891967699152969560

namespace A026321

/-- `record[-A001057(A246408(3*(n+1)))]` -/
def P14891967699152969560.Spec : Prop :=
  ∀ n, P14891967699152969560.a n = A026321 (n + 1)

end A026321

/-! ## A026321.P18351870928970117936

`lt[2*A344858(2*n), A344858(2*n+1)]`
-/

namespace A026321.P18351870928970117936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A344858 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344858 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A026321.P18351870928970117936

namespace A026321

/-- `lt[2*A344858(2*n), A344858(2*n+1)]` -/
def P18351870928970117936.Spec : Prop :=
  ∀ n, (P18351870928970117936.a n : ℤ) = A026321 (n + 1)

end A026321

/-!
# A026322: |sin(2n)| > |sin(n)|.

The programs for A026322, the canonical program `A026322.P5053136787949816957` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026322 has offset 1).

The definition of A026322 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026322.P5053136787949816957

`eq[2, ceil(abs(1/cos(n)))]`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026322

/-- `eq[2, ceil(abs(1/cos(n)))]` -/
def P5053136787949816957.Spec : Prop :=
  ∀ n, (P5053136787949816957.a n : ℤ) = A026322 (n + 1)

theorem P5053136787949816957.correct : P5053136787949816957.Spec := by
  intro n
  simp only [A026322, Nat.add_sub_cancel]

end A026322

/-! ## A026322.P7128078521542139638

`eq[1, ceil(tan(n)²/3)]`
-/

namespace A026322.P7128078521542139638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tan (n : ℝ) ^ 2 / 3⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A026322.P7128078521542139638

namespace A026322

/-- `eq[1, ceil(tan(n)²/3)]` -/
def P7128078521542139638.Spec : Prop :=
  ∀ n, (P7128078521542139638.a n : ℤ) = A026322 (n + 1)

end A026322

/-! ## A026322.P12114921116870937205

`lt[tan(n+1)², 3]+1`
-/

namespace A026322.P12114921116870937205
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (n + 1 : ℝ) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n + 1

end

end A026322.P12114921116870937205

namespace A026322

/-- `lt[tan(n+1)², 3]+1` -/
def P12114921116870937205.Spec : Prop :=
  ∀ n, (P12114921116870937205.a n : ℤ) = A026322 (n + 1)

end A026322

/-! ## A026322.P9645973021671999166

`record[lcm(n+1, round(cos(n+1)))]`
-/

namespace A026322.P9645973021671999166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (SequenceMachineLib.roundAway (Real.cos (n + 1 : ℝ)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026322.P9645973021671999166

namespace A026322

/-- `record[lcm(n+1, round(cos(n+1)))]` -/
def P9645973021671999166.Spec : Prop :=
  ∀ n, (P9645973021671999166.a n : ℤ) = A026322 (n + 1)

end A026322

/-! ## A026322.P647184291159754273

`lt[-2*n*cos(2*n), n]`
-/

namespace A026322.P647184291159754273
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  -((2 * n : ℝ) * Real.cos (2 * n : ℝ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A026322.P647184291159754273

namespace A026322

/-- `lt[-2*n*cos(2*n), n]` -/
def P647184291159754273.Spec : Prop :=
  ∀ n, (P647184291159754273.a n : ℤ) = A026322 (n + 1)

end A026322

/-! ## A026322.P4761209498305986342

`lt[(tan(n)²-2)*3*n, 3*n]`
-/

namespace A026322.P4761209498305986342
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.tan (n : ℝ) ^ 2 - 2) * (3 * n : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A026322.P4761209498305986342

namespace A026322

/-- `lt[(tan(n)²-2)*3*n, 3*n]` -/
def P4761209498305986342.Spec : Prop :=
  ∀ n, (P4761209498305986342.a n : ℤ) = A026322 (n + 1)

end A026322

/-! ## A026322.P3067085912656632701

`A000196((1-A054386(n+2))²)`
-/

namespace A026322.P3067085912656632701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((1 - A054386 (n + 2)) ^ 2).toNat

end

end A026322.P3067085912656632701

namespace A026322

/-- `A000196((1-A054386(n+2))²)` -/
def P3067085912656632701.Spec : Prop :=
  ∀ n, P3067085912656632701.a n = A026322 (n + 1)

end A026322

/-! ## A026322.P10135460405584231570

`eq[A151878(n), A163581(n+1)]`
-/

namespace A026322.P10135460405584231570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163581 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A026322.P10135460405584231570

namespace A026322

/-- `eq[A151878(n), A163581(n+1)]` -/
def P10135460405584231570.Spec : Prop :=
  ∀ n, (P10135460405584231570.a n : ℤ) = A026322 (n + 1)

end A026322

/-! ## A026322.P17801916031794625038

`A163581(A246046(n+1))+A054386(n+1)`
-/

namespace A026322.P17801916031794625038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163581 (A246046 (n + 1)).toNat + A054386 (n + 1)

end

end A026322.P17801916031794625038

namespace A026322

/-- `A163581(A246046(n+1))+A054386(n+1)` -/
def P17801916031794625038.Spec : Prop :=
  ∀ n, P17801916031794625038.a n = A026322 (n + 1)

end A026322

/-! ## A026322.P13403021285013603677

`A054386(n+2)-A061347(A069099(n+2))`
-/

namespace A026322.P13403021285013603677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054386 (n + 2) - A061347 (A069099 (n + 2)).toNat

end

end A026322.P13403021285013603677

namespace A026322

/-- `A054386(n+2)-A061347(A069099(n+2))` -/
def P13403021285013603677.Spec : Prop :=
  ∀ n, P13403021285013603677.a n = A026322 (n + 1)

end A026322

/-!
# A026323: Irregular triangular array T read by rows: T(0,0) = 1, T(0,1) = T(0,2) = 0; T(1,0) = T(1,1) = T(1,2) = 1, T(1,3) = 0; for n >= 2, T(n,0) = 1, T(n,1) = T(n-1,0) + T(n-1,1), T(n,k) = T(n-1,k-2) + T(n-1,k-1) + T(n-1,k) for k = 2,3,...,n+1 and T(n,n+2) = T(n-1,n) + T(n-1,n+1).

The programs for A026323, there is no canonical definition to state claims against.
-/

/-! ## A026323.P921845571771612649

`2*A026105(n+3)-A026300(n+3)`
-/

namespace A026323.P921845571771612649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026105 (n + 3) - A026300 (n + 3)

end

end A026323.P921845571771612649

/-! ## A026323.P9784855675582470656

`A119369(∑[A054576(n+1)]^A204988(n+1))`
-/

namespace A026323.P9784855675582470656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119369 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (A204988 (n + 1) : ℤ))).toNat

end

end A026323.P9784855675582470656

/-! ## A026323.P8600724077364556233

`A125184(A000009(2*n)*A354092(3*n+2))`
-/

namespace A026323.P8600724077364556233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125184 (A000009 (2 * n) * A354092 (3 * n + 2)).toNat

end

end A026323.P8600724077364556233

/-!
# A026324: Expansion of 1/((1-2*x)*(1-6*x)*(1-7*x)*(1-8*x)).

The programs for A026324, the canonical program `A026324.P18035085884532946173` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026324 has offset 0).

The definition of A026324 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026324.P18035085884532946173

`A016304(n)+8*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A026324

/-- `A016304(n)+8*a(n-1)` -/
def P18035085884532946173.Spec : Prop :=
  ∀ n, P18035085884532946173.a n = A026324 n

theorem P18035085884532946173.correct : P18035085884532946173.Spec := by
  intro n
  simp only [A026324]

end A026324

/-! ## A026324.P12634416424526863714

`a(n-1)+A020570(n)+a(n-1)` with `a(0)=1`
-/

namespace A026324.P12634416424526863714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A020570 n + a (n - 1))

end

end A026324.P12634416424526863714

namespace A026324

/-- `a(n-1)+A020570(n)+a(n-1)` -/
def P12634416424526863714.Spec : Prop :=
  ∀ n, P12634416424526863714.a n = A026324 n

end A026324

/-! ## A026324.P12406628680709187140

`Δ[A021184(n)-A021174(n)]`
-/

namespace A026324.P12406628680709187140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021184 n - A021174 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026324.P12406628680709187140

namespace A026324

/-- `Δ[A021184(n)-A021174(n)]` -/
def P12406628680709187140.Spec : Prop :=
  ∀ n, P12406628680709187140.a n = A026324 n

end A026324

/-! ## A026324.P8893261027719509284

`Δ[A021224(n)-A021184(n)]`
-/

namespace A026324.P8893261027719509284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021224 n - A021184 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026324.P8893261027719509284

namespace A026324

/-- `Δ[A021224(n)-A021184(n)]` -/
def P8893261027719509284.Spec : Prop :=
  ∀ n, P8893261027719509284.a n = A026324 n

end A026324

/-! ## A026324.P5558478430273750545

`2*A025971(n)-A025965(n)`
-/

namespace A026324.P5558478430273750545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025971 n - A025965 n

end

end A026324.P5558478430273750545

namespace A026324

/-- `2*A025971(n)-A025965(n)` -/
def P5558478430273750545.Spec : Prop :=
  ∀ n, P5558478430273750545.a n = A026324 n

end A026324

/-! ## A026324.P17430335553633861697

`2*A025992(n)-A025987(n)`
-/

namespace A026324.P17430335553633861697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025992 n - A025987 n

end

end A026324.P17430335553633861697

namespace A026324

/-- `2*A025992(n)-A025987(n)` -/
def P17430335553633861697.Spec : Prop :=
  ∀ n, P17430335553633861697.a n = A026324 n

end A026324

/-! ## A026324.P17200430381896302844

`A016305(n+1)-A016304(n+1)`
-/

namespace A026324.P17200430381896302844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016305 (n + 1) - A016304 (n + 1)

end

end A026324.P17200430381896302844

namespace A026324

/-- `A016305(n+1)-A016304(n+1)` -/
def P17200430381896302844.Spec : Prop :=
  ∀ n, P17200430381896302844.a n = A026324 n

end A026324

/-! ## A026324.P3195164036725922191

`(A016311(n+1)-A016304(n+1))/2`
-/

namespace A026324.P3195164036725922191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016311 (n + 1) - A016304 (n + 1) : ℚ) / 2

end

end A026324.P3195164036725922191

namespace A026324

/-- `(A016311(n+1)-A016304(n+1))/2` -/
def P3195164036725922191.Spec : Prop :=
  ∀ n, P3195164036725922191.a n = (A026324 n : ℚ)

end A026324

/-! ## A026324.P912000790694904408

`A025987(n)+A025992(n)-A025986(n)`
-/

namespace A026324.P912000790694904408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025987 n + (A025992 n - A025986 n)

end

end A026324.P912000790694904408

namespace A026324

/-- `A025987(n)+A025992(n)-A025986(n)` -/
def P912000790694904408.Spec : Prop :=
  ∀ n, P912000790694904408.a n = A026324 n

end A026324

/-!
# A026325: Number of paths in the plane x >= 0 and y >= -2, from (0,0) to (n,0), and consisting of steps U = (1,1), D = (1,-1) and H = (1,0).

The programs for A026325, the canonical program `A026325.P12326969144217981572` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026325 has offset 0).

The definition of A026325 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026325.P14172702798788115446

`A026151(n)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A026325.P14172702798788115446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A026151 n + a (n - 1)

end

end A026325.P14172702798788115446

namespace A026325

/-- `A026151(n)+a(n-1)` -/
def P14172702798788115446.Spec : Prop :=
  ∀ n, P14172702798788115446.a n = A026325 n

end A026325

/-! ## A026325.P12326969144217981572

`2*A026134(n+1)-A005322(n+2)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A026325

/-- `2*A026134(n+1)-A005322(n+2)` -/
def P12326969144217981572.Spec : Prop :=
  ∀ n, P12326969144217981572.a n = A026325 n

theorem P12326969144217981572.correct : P12326969144217981572.Spec := by
  intro n
  simp only [A026325]

end A026325

/-! ## A026325.P12288113592351658667

`A026122(n+2)+A001006(n)-A026269(n+3)`
-/

namespace A026325.P12288113592351658667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026122 (n + 2) + (A001006 n - A026269 (n + 3))

end

end A026325.P12288113592351658667

namespace A026325

/-- `A026122(n+2)+A001006(n)-A026269(n+3)` -/
def P12288113592351658667.Spec : Prop :=
  ∀ n, P12288113592351658667.a n = A026325 n

end A026325

/-! ## A026325.P17681942297181050554

`A001006(n+1)+A026134(n+1)-A026107(n+2)`
-/

namespace A026325.P17681942297181050554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 (n + 1) + (A026134 (n + 1) - A026107 (n + 2))

end

end A026325.P17681942297181050554

namespace A026325

/-- `A001006(n+1)+A026134(n+1)-A026107(n+2)` -/
def P17681942297181050554.Spec : Prop :=
  ∀ n, P17681942297181050554.a n = A026325 n

end A026325

/-! ## A026325.P2364693123131437100

`A001006(n+4)%A002026(n+2)`
-/

namespace A026325.P2364693123131437100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001006 (n + 4)) (A002026 (n + 2))

end

end A026325.P2364693123131437100

namespace A026325

/-- `A001006(n+4)%A002026(n+2)` -/
def P2364693123131437100.Spec : Prop :=
  ∀ n, P2364693123131437100.a n = A026325 n

end A026325

/-! ## A026325.P11557695454138114186

`Δ[A086615(n+3)%A001006(n+2)]`
-/

namespace A026325.P11557695454138114186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086615 (n + 3)) (A001006 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026325.P11557695454138114186

namespace A026325

/-- `Δ[A086615(n+3)%A001006(n+2)]` -/
def P11557695454138114186.Spec : Prop :=
  ∀ n, P11557695454138114186.a n = A026325 n

end A026325

/-! ## A026325.P15869310333906267292

`Δ[A086615(n+3)]%A002026(n+2)`
-/

namespace A026325.P15869310333906267292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086615 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A002026 (n + 2))

end

end A026325.P15869310333906267292

namespace A026325

/-- `Δ[A086615(n+3)]%A002026(n+2)` -/
def P15869310333906267292.Spec : Prop :=
  ∀ n, P15869310333906267292.a n = A026325 n

end A026325

/-! ## A026325.P15138021533091947618

`A086246(n+6)%Δ[A001006(n+2)]`
-/

namespace A026325.P15138021533091947618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086246 (n + 6)) (f1 (n + 1) - f1 n)

end

end A026325.P15138021533091947618

namespace A026325

/-- `A086246(n+6)%Δ[A001006(n+2)]` -/
def P15138021533091947618.Spec : Prop :=
  ∀ n, P15138021533091947618.a n = A026325 n

end A026325

/-! ## A026325.P4570951828816462626

`A168049(n+6)%Δ[A168049(n+4)]`
-/

namespace A026325.P4570951828816462626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168049 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168049 (n + 6)) (f1 (n + 1) - f1 n)

end

end A026325.P4570951828816462626

namespace A026325

/-- `A168049(n+6)%Δ[A168049(n+4)]` -/
def P4570951828816462626.Spec : Prop :=
  ∀ n, P4570951828816462626.a n = A026325 n

end A026325

/-! ## A026325.P10783936092516473684

`A026109(n+3)+A001006(n)-A026289(n+3)`
-/

namespace A026325.P10783936092516473684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026109 (n + 3) + (A001006 n - A026289 (n + 3))

end

end A026325.P10783936092516473684

namespace A026325

/-- `A026109(n+3)+A001006(n)-A026289(n+3)` -/
def P10783936092516473684.Spec : Prop :=
  ∀ n, P10783936092516473684.a n = A026325 n

end A026325

/-! ## A026325.P12893112983914576993

`A005043(n+2)+A005043(n+5)%A002026(n+2)`
-/

namespace A026325.P12893112983914576993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005043 (n + 2) + Int.tmod (A005043 (n + 5)) (A002026 (n + 2))

end

end A026325.P12893112983914576993

namespace A026325

/-- `A005043(n+2)+A005043(n+5)%A002026(n+2)` -/
def P12893112983914576993.Spec : Prop :=
  ∀ n, P12893112983914576993.a n = A026325 n

end A026325

/-! ## A026325.P12853610540296312288

`A026323(∑[n+3]-2)`
-/

namespace A026325.P12853610540296312288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026323 (∑ j ∈ Finset.range (n + 1), f1 j - 2)

end

end A026325.P12853610540296312288

namespace A026325

/-- `A026323(∑[n+3]-2)` -/
def P12853610540296312288.Spec : Prop :=
  ∀ n, P12853610540296312288.a n = A026325 n

end A026325

/-!
# A026326: Expansion of 1/((1-2*x)*(1-6*x)*(1-7*x)*(1-9*x)).

The programs for A026326, the canonical program `A026326.P16799518592668040838` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026326 has offset 0).

The definition of A026326 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026326.P16799518592668040838

`a(n-1)+A020571(n)+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A026326

/-- `a(n-1)+A020571(n)+a(n-1)` -/
def P16799518592668040838.Spec : Prop :=
  ∀ n, P16799518592668040838.a n = A026326 n

theorem P16799518592668040838.correct : P16799518592668040838.Spec := by
  intro n
  simp only [A026326]

end A026326

/-! ## A026326.P9989103467114032761

`2*A025944(n)-A025937(n)`
-/

namespace A026326.P9989103467114032761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025944 n - A025937 n

end

end A026326.P9989103467114032761

namespace A026326

/-- `2*A025944(n)-A025937(n)` -/
def P9989103467114032761.Spec : Prop :=
  ∀ n, P9989103467114032761.a n = A026326 n

end A026326

/-! ## A026326.P8111483409422424107

`2*A025993(n)-A025988(n)`
-/

namespace A026326.P8111483409422424107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025993 n - A025988 n

end

end A026326.P8111483409422424107

namespace A026326

/-- `2*A025993(n)-A025988(n)` -/
def P8111483409422424107.Spec : Prop :=
  ∀ n, P8111483409422424107.a n = A026326 n

end A026326

/-! ## A026326.P2235818137809162471

`(A016306(n+1)-A016304(n+1))/2`
-/

namespace A026326.P2235818137809162471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016306 (n + 1) - A016304 (n + 1) : ℚ) / 2

end

end A026326.P2235818137809162471

namespace A026326

/-- `(A016306(n+1)-A016304(n+1))/2` -/
def P2235818137809162471.Spec : Prop :=
  ∀ n, P2235818137809162471.a n = (A026326 n : ℚ)

end A026326

/-! ## A026326.P3253409324663341436

`A025933(n)+A025993(n)-A025937(n)`
-/

namespace A026326.P3253409324663341436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025933 n + (A025993 n - A025937 n)

end

end A026326.P3253409324663341436

namespace A026326

/-- `A025933(n)+A025993(n)-A025937(n)` -/
def P3253409324663341436.Spec : Prop :=
  ∀ n, P3253409324663341436.a n = A026326 n

end A026326

/-! ## A026326.P10563529204541681542

`Δ[A021229(n)-A021194(n)]`
-/

namespace A026326.P10563529204541681542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021229 n - A021194 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026326.P10563529204541681542

namespace A026326

/-- `Δ[A021229(n)-A021194(n)]` -/
def P10563529204541681542.Spec : Prop :=
  ∀ n, P10563529204541681542.a n = A026326 n

end A026326

/-! ## A026326.P9314327792080732106

`A016312(n+1)-A016306(n+1)`
-/

namespace A026326.P9314327792080732106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016312 (n + 1) - A016306 (n + 1)

end

end A026326.P9314327792080732106

namespace A026326

/-- `A016312(n+1)-A016306(n+1)` -/
def P9314327792080732106.Spec : Prop :=
  ∀ n, P9314327792080732106.a n = A026326 n

end A026326

/-!
# A026327: a(n) = number of (s(0), s(1), ..., s(n)) such that s(i) is a nonnegative integer and |s(i) - s(i-1)| <= 1 for i = 1,2,...,n, s(0) = 2, s(n) = 4. Also a(n) = T(n,n-2), where T is the array in A026323.

The programs for A026327, the canonical program `A026327.P163708418849694211` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026327 has offset 2).

The definition of A026327 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026327.P163708418849694211

`∑[A026153(n+2)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A026327

/-- `∑[A026153(n+2)]` -/
def P163708418849694211.Spec : Prop :=
  ∀ n, P163708418849694211.a n = A026327 (n + 2)

theorem P163708418849694211.correct : P163708418849694211.Spec := by
  intro n
  simp only [A026327, Nat.add_sub_cancel]

end A026327

/-! ## A026327.P18007064419953491532

`A026110(n+4)+A026110(n+4)-A005324(n+4)`
-/

namespace A026327.P18007064419953491532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026110 (n + 4) + (A026110 (n + 4) - A005324 (n + 4))

end

end A026327.P18007064419953491532

namespace A026327

/-- `A026110(n+4)+A026110(n+4)-A005324(n+4)` -/
def P18007064419953491532.Spec : Prop :=
  ∀ n, P18007064419953491532.a n = A026327 (n + 2)

end A026327

/-! ## A026327.P2845286568795290328

`2*A026110(n+4)-A005324(n+4)`
-/

namespace A026327.P2845286568795290328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026110 (n + 4) - A005324 (n + 4)

end

end A026327.P2845286568795290328

namespace A026327

/-- `2*A026110(n+4)-A005324(n+4)` -/
def P2845286568795290328.Spec : Prop :=
  ∀ n, P2845286568795290328.a n = A026327 (n + 2)

end A026327

/-! ## A026327.P7454724236693944013

`∑[A026148(A183905(n+2))]`
-/

namespace A026327.P7454724236693944013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026148 (A183905 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026327.P7454724236693944013

namespace A026327

/-- `∑[A026148(A183905(n+2))]` -/
def P7454724236693944013.Spec : Prop :=
  ∀ n, P7454724236693944013.a n = A026327 (n + 2)

end A026327

/-! ## A026327.P17339596293950954248

`∑[A026148(∑[A074764(n+2)])]`
-/

namespace A026327.P17339596293950954248
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074764 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026148 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026327.P17339596293950954248

namespace A026327

/-- `∑[A026148(∑[A074764(n+2)])]` -/
def P17339596293950954248.Spec : Prop :=
  ∀ n, P17339596293950954248.a n = A026327 (n + 2)

end A026327

/-! ## A026327.P12011000954503497027

`∑[A026148(A155212(n+1)-3)]`
-/

namespace A026327.P12011000954503497027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026148 (A155212 (n + 1) - 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026327.P12011000954503497027

namespace A026327

/-- `∑[A026148(A155212(n+1)-3)]` -/
def P12011000954503497027.Spec : Prop :=
  ∀ n, P12011000954503497027.a n = A026327 (n + 2)

end A026327

/-! ## A026327.P9939753577162662799

`∑[A026148(4*n+3+A000217(n+1))]`
-/

namespace A026327.P9939753577162662799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026148 ((4 * n + 3 : ℤ) + A000217 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026327.P9939753577162662799

namespace A026327

/-- `∑[A026148(4*n+3+A000217(n+1))]` -/
def P9939753577162662799.Spec : Prop :=
  ∀ n, P9939753577162662799.a n = A026327 (n + 2)

end A026327

/-! ## A026327.P2381002388192989639

`∑[A026148(A016885(n)+A000124(n))]`
-/

namespace A026327.P2381002388192989639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026148 (A016885 n + A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026327.P2381002388192989639

namespace A026327

/-- `∑[A026148(A016885(n)+A000124(n))]` -/
def P2381002388192989639.Spec : Prop :=
  ∀ n, P2381002388192989639.a n = A026327 (n + 2)

end A026327

/-!
# A026328: a(n) = number of (s(0), s(1), ..., s(n)) such that s(i) is a nonnegative integer and |s(i) - s(i-1)| <= 1 for i = 1,2,...,n, s(0) = 2, s(n) = 5. Also a(n) = T(n,n-3), where T is the array in A026323.

The programs for A026328, the canonical program `A026328.P9734538290856281181` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026328 has offset 3).

The definition of A026328 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026328.P9734538290856281181

`∑[A026154(n+3)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A026328

/-- `∑[A026154(n+3)]` -/
def P9734538290856281181.Spec : Prop :=
  ∀ n, P9734538290856281181.a n = A026328 (n + 3)

theorem P9734538290856281181.correct : P9734538290856281181.Spec := by
  intro n
  simp only [A026328, Nat.add_sub_cancel]

end A026328

/-! ## A026328.P10090270212390347222

`A026323(A056000(n+2)+2)`
-/

namespace A026328.P10090270212390347222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026323 (A056000 (n + 2) + 2).toNat

end

end A026328.P10090270212390347222

namespace A026328

/-- `A026323(A056000(n+2)+2)` -/
def P10090270212390347222.Spec : Prop :=
  ∀ n, P10090270212390347222.a n = A026328 (n + 3)

end A026328

/-! ## A026328.P3399919825088158879

`A026323(A052905(n+3)-3)`
-/

namespace A026328.P3399919825088158879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026323 (A052905 (n + 3) - 3).toNat

end

end A026328.P3399919825088158879

namespace A026328

/-- `A026323(A052905(n+3)-3)` -/
def P3399919825088158879.Spec : Prop :=
  ∀ n, P3399919825088158879.a n = A026328 (n + 3)

end A026328

/-! ## A026328.P16234862550910972560

`A026323(A046691(n+4)-4)`
-/

namespace A026328.P16234862550910972560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026323 (A046691 (n + 4) - 4).toNat

end

end A026328.P16234862550910972560

namespace A026328

/-- `A026323(A046691(n+4)-4)` -/
def P16234862550910972560.Spec : Prop :=
  ∀ n, P16234862550910972560.a n = A026328 (n + 3)

end A026328

/-! ## A026328.P14956801468994841647

`A026323(A055998(n+4)-5)`
-/

namespace A026328.P14956801468994841647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026323 (A055998 (n + 4) - 5).toNat

end

end A026328.P14956801468994841647

namespace A026328

/-- `A026323(A055998(n+4)-5)` -/
def P14956801468994841647.Spec : Prop :=
  ∀ n, P14956801468994841647.a n = A026328 (n + 3)

end A026328

/-! ## A026328.P14163095507513666983

`A026323(Δ[A023551(n+1)]-2)`
-/

namespace A026328.P14163095507513666983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026323 (f1 (n + 1) - f1 n - 2).toNat

end

end A026328.P14163095507513666983

namespace A026328

/-- `A026323(Δ[A023551(n+1)]-2)` -/
def P14163095507513666983.Spec : Prop :=
  ∀ n, P14163095507513666983.a n = A026328 (n + 3)

end A026328

/-! ## A026328.P10854902753870284561

`A026323(A027379(n+3)+n+1)`
-/

namespace A026328.P10854902753870284561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026323 (A027379 (n + 3) + (n + 1 : ℤ)).toNat

end

end A026328.P10854902753870284561

namespace A026328

/-- `A026323(A027379(n+3)+n+1)` -/
def P10854902753870284561.Spec : Prop :=
  ∀ n, P10854902753870284561.a n = A026328 (n + 3)

end A026328

/-! ## A026328.P4714823012990058841

`A026323(A167614(n+3)+2*n)`
-/

namespace A026328.P4714823012990058841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026323 (A167614 (n + 3) + (2 * n : ℤ)).toNat

end

end A026328.P4714823012990058841

namespace A026328

/-- `A026323(A167614(n+3)+2*n)` -/
def P4714823012990058841.Spec : Prop :=
  ∀ n, P4714823012990058841.a n = A026328 (n + 3)

end A026328

/-! ## A026328.P18081914790638961889

`A026323(A000124(n+4)+2*(n+1))`
-/

namespace A026328.P18081914790638961889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026323 (A000124 (n + 4) + (2 * (n + 1) : ℤ)).toNat

end

end A026328.P18081914790638961889

namespace A026328

/-- `A026323(A000124(n+4)+2*(n+1))` -/
def P18081914790638961889.Spec : Prop :=
  ∀ n, P18081914790638961889.a n = A026328 (n + 3)

end A026328

/-!
# A026329: a(n) = number of (s(0), s(1), ..., s(n)) such that s(i) is a nonnegative integer and |s(i) - s(i-1)| <= 1 for i = 1,2,...,n, s(0) = 2, s(n) = 6. Also a(n) = T(n,n-4), where T is the array in A026323.

The programs for A026329, there is no canonical definition to state claims against.
-/

/-! ## A026329.P17296548289565638244

`∑[A026155(n+4)]`
-/

namespace A026329.P17296548289565638244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026155 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026329.P17296548289565638244

/-! ## A026329.P17870612419294770429

`A026323(A055999(n+4)-3)`
-/

namespace A026329.P17870612419294770429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026323 (A055999 (n + 4) - 3).toNat

end

end A026329.P17870612419294770429

/-! ## A026329.P10258315307391218656

`A026323(A034856(n+6)-7)`
-/

namespace A026329.P10258315307391218656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026323 (A034856 (n + 6) - 7).toNat

end

end A026329.P10258315307391218656

/-! ## A026329.P17343310063553240395

`A026323(A000217(n+7)-9)`
-/

namespace A026329.P17343310063553240395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026323 (A000217 (n + 7) - 9).toNat

end

end A026329.P17343310063553240395

/-! ## A026329.P10124484577440557438

`A026323(eq[7, A004736(n+1)]-2)`
-/

namespace A026329.P10124484577440557438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026323 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 2)

end

end A026329.P10124484577440557438

/-! ## A026329.P2464222069356407488

`A026323(A055998(n+4)+n+1)`
-/

namespace A026329.P2464222069356407488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026323 (A055998 (n + 4) + (n + 1 : ℤ)).toNat

end

end A026329.P2464222069356407488

/-! ## A026329.P2500935887024101236

`A026323(eq[7, A195663(n+2)])`
-/

namespace A026329.P2500935887024101236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026323 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A026329.P2500935887024101236

/-! ## A026329.P8820820789458699827

`A026323(eq[7, A195663(n)]-2)`
-/

namespace A026329.P8820820789458699827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026323 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 2)

end

end A026329.P8820820789458699827

/-!
# A026330: a(n) = number of (s(0), s(1), ..., s(n)) such that s(i) is a nonnegative integer and |s(i) - s(i-1)| <= 1 for i = 1,2,...,n, s(0) = 2, s(2n) = n+1. Also a(n) = T(2n,n+1), where T is the array in A026323.

The programs for A026330, there is no canonical definition to state claims against.
-/

/-! ## A026330.P5078745862127413637

`A026156(n+1)-A026335(A028310(n))`
-/

namespace A026330.P5078745862127413637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026156 (n + 1) - A026335 (A028310 n).toNat

end

end A026330.P5078745862127413637

/-! ## A026330.P8298251424093796769

`A026302(n+1)-2*A327871(n+1)`
-/

namespace A026330.P8298251424093796769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026302 (n + 1) - 2 * A327871 (n + 1)

end

end A026330.P8298251424093796769

/-! ## A026330.P9256312715949612537

`A026307(2*(n+1))-(A026307(2*n+1)+A026307(2*n+1))`
-/

namespace A026330.P9256312715949612537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026307 (2 * (n + 1)) - (A026307 (2 * n + 1) + A026307 (2 * n + 1))

end

end A026330.P9256312715949612537

/-! ## A026330.P1858599098094327889

`A026127(n+1)-A026300(A132209(n))`
-/

namespace A026330.P1858599098094327889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026127 (n + 1) - A026300 (A132209 n).toNat

end

end A026330.P1858599098094327889

/-! ## A026330.P15397582740751057781

`A026323(A090288(n))`
-/

namespace A026330.P15397582740751057781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026323 (A090288 n).toNat

end

end A026330.P15397582740751057781

/-! ## A026330.P15060105554186084842

`A026323(A059993(n)+1)`
-/

namespace A026330.P15060105554186084842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026323 (A059993 n + 1).toNat

end

end A026330.P15060105554186084842

/-! ## A026330.P656169257661188967

`A026323(A047838(2*n+3)-1)`
-/

namespace A026330.P656169257661188967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026323 (A047838 (2 * n + 3) - 1).toNat

end

end A026330.P656169257661188967

/-! ## A026330.P1554093316216822461

`A026323(A046691(2*n+1)-n)`
-/

namespace A026330.P1554093316216822461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026323 (A046691 (2 * n + 1) - (n : ℤ)).toNat

end

end A026330.P1554093316216822461

/-! ## A026330.P14143629593022624987

`A026323(A001844(n)+4*n+1)`
-/

namespace A026330.P14143629593022624987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026323 (A001844 n + (4 * n + 1 : ℤ)).toNat

end

end A026330.P14143629593022624987

/-!
# A026331: a(n) = T(2n-1,n), where T is the array in A026323.

The programs for A026331, there is no canonical definition to state claims against.
-/

/-! ## A026331.P7122606800278517588

`A026330(n+1)-A026161(n+1)`
-/

namespace A026331.P7122606800278517588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026330 (n + 1) - A026161 (n + 1)

end

end A026331.P7122606800278517588

/-! ## A026331.P14269902353323825479

`A026330(A000027(n+1))%A026161(n+1)`
-/

namespace A026331.P14269902353323825479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026330 (A000027 (n + 1)).toNat) (A026161 (n + 1))

end

end A026331.P14269902353323825479

/-! ## A026331.P5118928965935152969

`A026323(A268581(n))`
-/

namespace A026331.P5118928965935152969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026323 (A268581 n).toNat

end

end A026331.P5118928965935152969

/-! ## A026331.P1649826355314100484

`A026323(A004274((n+2)²))`
-/

namespace A026331.P1649826355314100484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026323 (A004274 ((n + 2) ^ 2)).toNat

end

end A026331.P1649826355314100484

/-! ## A026331.P16843619386578085741

`A026323(A052905(2*n+1)-n)`
-/

namespace A026331.P16843619386578085741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026323 (A052905 (2 * n + 1) - (n : ℤ)).toNat

end

end A026331.P16843619386578085741

/-! ## A026331.P4430090404873408559

`A026323(A090288(n)+1+2*(n+1))`
-/

namespace A026331.P4430090404873408559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026323 (A090288 n + 1 + (2 * (n + 1) : ℤ)).toNat

end

end A026331.P4430090404873408559

/-! ## A026331.P11001651701431971544

`A026323(or(1, A090288(n))+n+2+n)`
-/

namespace A026331.P11001651701431971544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026323 (Int.lor 1 (A090288 n) + (n + 2 + n : ℤ)).toNat

end

end A026331.P11001651701431971544

/-!
# A026332: a(n) = T(2n,n), where T is the array in A026323.

The programs for A026332, there is no canonical definition to state claims against.
-/

/-! ## A026332.P16606552884978845820

`A026336(2*n)`
-/

namespace A026332.P16606552884978845820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026336 (2 * n)

end

end A026332.P16606552884978845820

/-! ## A026332.P8372046601255494378

`record[A026336(n)/(-1)^n]`
-/

namespace A026332.P8372046601255494378
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026336 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026332.P8372046601255494378

/-! ## A026332.P2101975016944271137

`record[A026336(C(n+1, and(1, n)))]`
-/

namespace A026332.P2101975016944271137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026336 (Nat.choose (n + 1) (Nat.land 1 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026332.P2101975016944271137

/-! ## A026332.P882360164916851187

`record[A026336(A014681(n))]`
-/

namespace A026332.P882360164916851187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026336 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026332.P882360164916851187

/-! ## A026332.P5086597560035033096

`A026323(A059993(n))`
-/

namespace A026332.P5086597560035033096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026323 (A059993 n).toNat

end

end A026332.P5086597560035033096

/-! ## A026332.P1880651011218038820

`A026323(A090288(n)-1)`
-/

namespace A026332.P1880651011218038820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026323 (A090288 n - 1).toNat

end

end A026332.P1880651011218038820

/-! ## A026332.P779304237821238136

`A026323(A052905(2*n)-n)`
-/

namespace A026332.P779304237821238136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026323 (A052905 (2 * n) - (n : ℤ)).toNat

end

end A026332.P779304237821238136

/-! ## A026332.P1479966791682370114

`A026323(A047838(2*n+3)-2)`
-/

namespace A026332.P1479966791682370114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026323 (A047838 (2 * n + 3) - 2).toNat

end

end A026332.P1479966791682370114

/-! ## A026332.P11242006419601652243

`A026323(A034856(2*n+1)+n)`
-/

namespace A026332.P11242006419601652243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026323 (A034856 (2 * n + 1) + (n : ℤ)).toNat

end

end A026332.P11242006419601652243

/-!
# A026333: a(n) = T(3n,n), where T is the array in A026323.

The programs for A026333, there is no canonical definition to state claims against.
-/

/-! ## A026333.P8011184391625592448

`A026323(∑[9*n+4]-3)`
-/

namespace A026333.P8011184391625592448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026323 (∑ j ∈ Finset.range (n + 1), f1 j - 3)

end

end A026333.P8011184391625592448

/-! ## A026333.P12533275283183701219

`A370170(n)-A185284(A011782(n))`
-/

namespace A026333.P12533275283183701219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370170 n - A185284 (A011782 n).toNat

end

end A026333.P12533275283183701219

/-! ## A026333.P7524827463227447300

`A370170(n)-A379958(A290568(n+1))`
-/

namespace A026333.P7524827463227447300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370170 n - A379958 (A290568 (n + 1)).toNat

end

end A026333.P7524827463227447300

/-!
# A026334: T(4n,n), where T is the array in A026323.

The programs for A026334, there is no canonical definition to state claims against.
-/

/-! ## A026334.P8230238230940766686

`A026323(A059993(2*n)-n)`
-/

namespace A026334.P8230238230940766686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026323 (A059993 (2 * n) - (n : ℤ)).toNat

end

end A026334.P8230238230940766686

/-! ## A026334.P15743722551588317259

`A094531(C(A139277(n), A327482(n+1)))`
-/

namespace A026334.P15743722551588317259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094531 (Nat.choose (A139277 n).toNat (A327482 (n + 1)).toNat)

end

end A026334.P15743722551588317259

/-!
# A026335: a(n) = T(2n,n-1), where T is the array in A026323.

The programs for A026335, there is no canonical definition to state claims against.
-/

/-! ## A026335.P5470137115638271156

`A026323(∑[4*(n+2)])`
-/

namespace A026335.P5470137115638271156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026323 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A026335.P5470137115638271156

/-! ## A026335.P640585319668479690

`record[A026323(A008574(n))/A125906(n)]`
-/

namespace A026335.P640585319668479690
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026323 (A008574 n).toNat : ℚ) / (A125906 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026335.P640585319668479690

/-! ## A026335.P313382276956426347

`record[A026323(A008574(n))/A126331(n)]`
-/

namespace A026335.P313382276956426347
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026323 (A008574 n).toNat : ℚ) / (A126331 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026335.P313382276956426347

/-!
# A026336: a(n) = T(n,[ n/2 ]), where T is the array in A026323.

The programs for A026336, there is no canonical definition to state claims against.
-/

/-! ## A026336.P5838441408753023295

`A026323(∑[or(1, n)]+2*n)`
-/

namespace A026336.P5838441408753023295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026323 (∑ j ∈ Finset.range (n + 1), f1 j + 2 * n)

end

end A026336.P5838441408753023295

/-! ## A026336.P15097916263283660995

`A026323(A047838(n+2)+n)`
-/

namespace A026336.P15097916263283660995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026323 (A047838 (n + 2) + (n : ℤ)).toNat

end

end A026336.P15097916263283660995

/-! ## A026336.P5614535233394134467

`A026323(A055998(n)+ceil((n+1)/2))`
-/

namespace A026336.P5614535233394134467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026323 (A055998 n + ⌈(n + 1 : ℚ) / 2⌉).toNat

end

end A026336.P5614535233394134467

/-! ## A026336.P12340758600123191132

`A026323(A052905(n)-A110654(n))`
-/

namespace A026336.P12340758600123191132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026323 (A052905 n - A110654 n).toNat

end

end A026336.P12340758600123191132

/-! ## A026336.P10762532278118363979

`A026323(A034856(n+1)+A004526(n))`
-/

namespace A026336.P10762532278118363979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026323 (A034856 (n + 1) + A004526 n).toNat

end

end A026336.P10762532278118363979

/-!
# A026337: a(n) = 4^n*(4^n - 1)/2.

The programs for A026337, the canonical program `A026337.P12034790805220100507` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026337 has offset 0).

The definition of A026337 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n*(4^n-1)/2` (program `A026337.P6285683181624833645`, by `A026337.P6285683181624833645.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A026337.P6285683181624833645

`4^n*(4^n-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A026337.P6285683181624833645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℚ) * (((4 ^ n : ℤ) - 1 : ℚ) / 2)

end

end A026337.P6285683181624833645

namespace A026337

/-- `4^n*(4^n-1)/2` -/
def P6285683181624833645.Spec : Prop :=
  ∀ n, P6285683181624833645.a n = (A026337 n : ℚ)

theorem P6285683181624833645.correct : P6285683181624833645.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A026337, Nat.add_sub_cancel, A026337.P6285683181624833645.a, A026337.P12034790805220100507.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A026337, Nat.add_sub_cancel, A026337.P6285683181624833645.a, A026337.P12034790805220100507.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A026337

/-! ## A026337.P12034790805220100507

`20*a(n-1)-64*a(n-2)` with `a(0)=0, a(1)=6`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026337

/-- `20*a(n-1)-64*a(n-2)` -/
def P12034790805220100507.Spec : Prop :=
  ∀ n, P12034790805220100507.a n = A026337 n

theorem P12034790805220100507.correct : P12034790805220100507.Spec := by
  intro n
  simp only [A026337]

end A026337

/-! ## A026337.P15118475283857104493

`lcm(4^n-1, ceil(4^n/2))`
-/

namespace A026337.P15118475283857104493
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((4 ^ n : ℤ) - 1) ⌈(4 ^ n : ℚ) / 2⌉

end

end A026337.P15118475283857104493

namespace A026337

/-- `lcm(4^n-1, ceil(4^n/2))` -/
def P15118475283857104493.Spec : Prop :=
  ∀ n, (P15118475283857104493.a n : ℤ) = A026337 n

end A026337

/-! ## A026337.P15498093101412288785

`record[(-4)^n/2-2^(n-1)]`
-/

namespace A026337.P15498093101412288785
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-4) ^ n : ℚ) / 2 - (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026337.P15498093101412288785

namespace A026337

/-- `record[(-4)^n/2-2^(n-1)]` -/
def P15498093101412288785.Spec : Prop :=
  ∀ n, P15498093101412288785.a n = (A026337 n : ℚ)

end A026337

/-! ## A026337.P9850057608981376449

`A003674(2*n)`
-/

namespace A026337.P9850057608981376449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003674 (2 * n)

end

end A026337.P9850057608981376449

namespace A026337

/-- `A003674(2*n)` -/
def P9850057608981376449.Spec : Prop :=
  ∀ n, P9850057608981376449.a n = A026337 n

end A026337

/-! ## A026337.P13940532945962844201

`A006516(2*n)`
-/

namespace A026337.P13940532945962844201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006516 (2 * n)

end

end A026337.P13940532945962844201

namespace A026337

/-- `A006516(2*n)` -/
def P13940532945962844201.Spec : Prop :=
  ∀ n, P13940532945962844201.a n = A026337 n

end A026337

/-! ## A026337.P4457475657223518525

`A007179(4*n)`
-/

namespace A026337.P4457475657223518525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007179 (4 * n)

end

end A026337.P4457475657223518525

namespace A026337

/-- `A007179(4*n)` -/
def P4457475657223518525.Spec : Prop :=
  ∀ n, P4457475657223518525.a n = A026337 n

end A026337

/-! ## A026337.P9864344782624450980

`A137173(4*n)`
-/

namespace A026337.P9864344782624450980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137173 (4 * n)

end

end A026337.P9864344782624450980

namespace A026337

/-- `A137173(4*n)` -/
def P9864344782624450980.Spec : Prop :=
  ∀ n, P9864344782624450980.a n = A026337 n

end A026337

/-! ## A026337.P3327264148832443447

`A377855(Δ[n²])`
-/

namespace A026337.P3327264148832443447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377855 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A026337.P3327264148832443447

namespace A026337

/-- `A377855(Δ[n²])` -/
def P3327264148832443447.Spec : Prop :=
  ∀ n, P3327264148832443447.a n = A026337 n

end A026337

/-! ## A026337.P5083201859492502895

`A395948(Δ[n²])`
-/

namespace A026337.P5083201859492502895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395948 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A026337.P5083201859492502895

namespace A026337

/-- `A395948(Δ[n²])` -/
def P5083201859492502895.Spec : Prop :=
  ∀ n, P5083201859492502895.a n = A026337 n

end A026337

/-!
# A026339: a(n) = least k such that s(k) = n, where s = A026338.

The programs for A026339, there is no canonical definition to state claims against.
-/

/-! ## A026339.P13763339986245214946

`A004396(A026340(n+1)-1)`
-/

namespace A026339.P13763339986245214946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A026340 (n + 1) - 1).toNat

end

end A026339.P13763339986245214946

/-! ## A026339.P6808704464882157301

`A092942(A026340(n+1)-1)`
-/

namespace A026339.P6808704464882157301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092942 (A026340 (n + 1) - 1).toNat

end

end A026339.P6808704464882157301

/-! ## A026339.P3650444103673967782

`A131452(A026340(n+1)-1)/2`
-/

namespace A026339.P3650444103673967782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131452 (A026340 (n + 1) - 1).toNat : ℚ) / 2

end

end A026339.P3650444103673967782

/-! ## A026339.P15521010185485219328

`A004523(A026340(n+1))`
-/

namespace A026339.P15521010185485219328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A026340 (n + 1)).toNat

end

end A026339.P15521010185485219328

/-! ## A026339.P16411852247063946931

`A002264(2*A026340(n+1))`
-/

namespace A026339.P16411852247063946931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (2 * A026340 (n + 1)).toNat

end

end A026339.P16411852247063946931

/-! ## A026339.P8033676461814164201

`A002264(A026340(n+1)+A026340(n+1))`
-/

namespace A026339.P8033676461814164201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A026340 (n + 1) + A026340 (n + 1)).toNat

end

end A026339.P8033676461814164201

/-!
# A026340: a(n) = greatest k such that s(k) = n, where s = A026338.

The programs for A026340, there is no canonical definition to state claims against.
-/

/-! ## A026340.P339295153284671620

`A001651(A026339(n+1)+1)`
-/

namespace A026340.P339295153284671620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A026339 (n + 1) + 1).toNat

end

end A026340.P339295153284671620

/-! ## A026340.P15788042662791787884

`A110654(A026339(n+1)+1)+A026339(n+1)`
-/

namespace A026340.P15788042662791787884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A026339 (n + 1) + 1).toNat + A026339 (n + 1)

end

end A026340.P15788042662791787884

/-! ## A026340.P926350739585431355

`A026339(n+1)+A004526(A026339(n+1)+2)`
-/

namespace A026340.P926350739585431355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026339 (n + 1) + A004526 (A026339 (n + 1) + 2).toNat

end

end A026340.P926350739585431355

/-! ## A026340.P2798238829538905877

`A265428(2*A026339(n+1))`
-/

namespace A026340.P2798238829538905877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265428 (2 * A026339 (n + 1)).toNat

end

end A026340.P2798238829538905877

/-! ## A026340.P2838649696782145177

`A006368(2*A026339(n+1)+1)`
-/

namespace A026340.P2838649696782145177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (2 * A026339 (n + 1) + 1).toNat

end

end A026340.P2838649696782145177

/-! ## A026340.P79750272319106885

`A006368(A005408(A026339(n+1)))`
-/

namespace A026340.P79750272319106885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A005408 (A026339 (n + 1)).toNat).toNat

end

end A026340.P79750272319106885

/-! ## A026340.P2434916646943977976

`A006368(A026339(n+1)+A026339(n+1)+1)`
-/

namespace A026340.P2434916646943977976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A026339 (n + 1) + (A026339 (n + 1) + 1)).toNat

end

end A026340.P2434916646943977976

/-! ## A026340.P16442645851242078661

`A265428(A026339(n+1)+A026339(n+1)-1)`
-/

namespace A026340.P16442645851242078661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265428 (A026339 (n + 1) + (A026339 (n + 1) - 1)).toNat

end

end A026340.P16442645851242078661

/-! ## A026340.P11278686499650866985

`A026339(n+1)+A008621(2*A026339(n+1))`
-/

namespace A026340.P11278686499650866985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026339 (n + 1) + A008621 (2 * A026339 (n + 1)).toNat

end

end A026340.P11278686499650866985

/-! ## A026340.P5567712639897005554

`A026339(n+1)+A008624(2*A026339(n+1))`
-/

namespace A026340.P5567712639897005554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026339 (n + 1) + A008624 (2 * A026339 (n + 1)).toNat

end

end A026340.P5567712639897005554

/-! ## A026340.P6352371185407464741

`A008619(3*A026339(n+1))`
-/

namespace A026340.P6352371185407464741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (3 * A026339 (n + 1)).toNat

end

end A026340.P6352371185407464741

/-! ## A026340.P11027077971458680457

`A008621(6*A026339(n+1))`
-/

namespace A026340.P11027077971458680457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (6 * A026339 (n + 1)).toNat

end

end A026340.P11027077971458680457

/-! ## A026340.P12657934835056851293

`A008624(6*A026339(n+1))`
-/

namespace A026340.P12657934835056851293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (6 * A026339 (n + 1)).toNat

end

end A026340.P12657934835056851293

/-! ## A026340.P15620134928797447710

`A008612(9*A026339(n+1))`
-/

namespace A026340.P15620134928797447710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (9 * A026339 (n + 1)).toNat

end

end A026340.P15620134928797447710

/-!
# A026341: a(n) = sum of the numbers between the two n's in A026338.

The programs for A026341, there is no canonical definition to state claims against.
-/

/-! ## A026341.P3766446387578650376

`A228942(xor(A306621(n+1), A307866(n+1)))`
-/

namespace A026341.P3766446387578650376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228942 (Int.xor (A306621 (n + 1)) (A307866 (n + 1))).toNat

end

end A026341.P3766446387578650376

/-!
# A026342: a(n) = a(m) if a(m) has already occurred exactly once and n = m+[ (m+1)/2 ], else a(n) = least positive integer that has not yet occurred.

The programs for A026342, there is no canonical definition to state claims against.
-/

/-! ## A026342.P2022541067631750690

`floor(A072759(n+2)/2)`
-/

namespace A026342.P2022541067631750690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A072759 (n + 2) : ℚ) / 2⌋

end

end A026342.P2022541067631750690

/-! ## A026342.P2193360281802769513

`A008619(A072759(n+2)-2)`
-/

namespace A026342.P2193360281802769513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A072759 (n + 2) - 2).toNat

end

end A026342.P2193360281802769513

/-! ## A026342.P8183449363064486868

`A065033(A072759(n+2)-1)`
-/

namespace A026342.P8183449363064486868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A072759 (n + 2) - 1).toNat

end

end A026342.P8183449363064486868

/-! ## A026342.P8643141115577202974

`A004526(A072759(n+2))`
-/

namespace A026342.P8643141115577202974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A072759 (n + 2)).toNat

end

end A026342.P8643141115577202974

/-! ## A026342.P10112160335290133490

`A123108(or(1, A072759(n+2)))`
-/

namespace A026342.P10112160335290133490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (Int.lor 1 (A072759 (n + 2))).toNat

end

end A026342.P10112160335290133490

/-! ## A026342.P10905604268311731655

`A002265(2*A072759(n+2))`
-/

namespace A026342.P10905604268311731655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A072759 (n + 2)).toNat

end

end A026342.P10905604268311731655

/-!
# A026343: Least k such that s(k) = n, where s = A026342.

The programs for A026343, the canonical program `A026343.P5692666688220806051` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026343 has offset 1).

The definition of A026343 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026343.P15637351378749032967

`comp[A026344(n+1)-1]+1`
-/

namespace A026343.P15637351378749032967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026344 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A026343.P15637351378749032967

namespace A026343

/-- `comp[A026344(n+1)-1]+1` -/
def P15637351378749032967.Spec : Prop :=
  ∀ n, (P15637351378749032967.a n : ℤ) = A026343 (n + 1)

end A026343

/-! ## A026343.P5692666688220806051

`eq[1, A087088(n+1)%2]+1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A026343

/-- `eq[1, A087088(n+1)%2]+1` -/
def P5692666688220806051.Spec : Prop :=
  ∀ n, (P5692666688220806051.a n : ℤ) = A026343 (n + 1)

theorem P5692666688220806051.correct : P5692666688220806051.Spec := by
  intro n
  simp only [A026343, Nat.add_sub_cancel]

end A026343

/-! ## A026343.P2130316813495816987

`eq[1, A000035(A087088(n+1))]+1`
-/

namespace A026343.P2130316813495816987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A087088 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A026343.P2130316813495816987

namespace A026343

/-- `eq[1, A000035(A087088(n+1))]+1` -/
def P2130316813495816987.Spec : Prop :=
  ∀ n, (P2130316813495816987.a n : ℤ) = A026343 (n + 1)

end A026343

/-! ## A026343.P1086030880183975588

`record[(n+1)*A010873(A087088(n+1)²)]`
-/

namespace A026343.P1086030880183975588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A010873 (A087088 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026343.P1086030880183975588

namespace A026343

/-- `record[(n+1)*A010873(A087088(n+1)²)]` -/
def P1086030880183975588.Spec : Prop :=
  ∀ n, P1086030880183975588.a n = A026343 (n + 1)

end A026343

/-! ## A026343.P14696760777358318507

`record[(n+1)*A039982(A087088(n+1)²)]`
-/

namespace A026343.P14696760777358318507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A039982 (A087088 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026343.P14696760777358318507

namespace A026343

/-- `record[(n+1)*A039982(A087088(n+1)²)]` -/
def P14696760777358318507.Spec : Prop :=
  ∀ n, P14696760777358318507.a n = A026343 (n + 1)

end A026343

/-! ## A026343.P1914945898351386046

`record[(n+1)*A096268(A087088(n+1)²)]`
-/

namespace A026343.P1914945898351386046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A096268 (A087088 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026343.P1914945898351386046

namespace A026343

/-- `record[(n+1)*A096268(A087088(n+1)²)]` -/
def P1914945898351386046.Spec : Prop :=
  ∀ n, P1914945898351386046.a n = A026343 (n + 1)

end A026343

/-! ## A026343.P7816969533276456347

`record[and(1, A087088(n+1))*A000027(n+1)]`
-/

namespace A026343.P7816969533276456347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A087088 (n + 1)) * A000027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026343.P7816969533276456347

namespace A026343

/-- `record[and(1, A087088(n+1))*A000027(n+1)]` -/
def P7816969533276456347.Spec : Prop :=
  ∀ n, P7816969533276456347.a n = A026343 (n + 1)

end A026343

/-! ## A026343.P17135739842531778325

`A072756(n+2)-1`
-/

namespace A026343.P17135739842531778325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072756 (n + 2) - 1

end

end A026343.P17135739842531778325

namespace A026343

/-- `A072756(n+2)-1` -/
def P17135739842531778325.Spec : Prop :=
  ∀ n, P17135739842531778325.a n = A026343 (n + 1)

end A026343

/-! ## A026343.P15232152785426469820

`filter[n+1, A357518(#)]`
-/

namespace A026343.P15232152785426469820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A357518 (f1 j) = 1) n)

end

end A026343.P15232152785426469820

namespace A026343

/-- `filter[n+1, A357518(#)]` -/
def P15232152785426469820.Spec : Prop :=
  ∀ n, (P15232152785426469820.a n : ℤ) = A026343 (n + 1)

end A026343

/-! ## A026343.P11831559472597797377

`A072758(2*(n+1))-1`
-/

namespace A026343.P11831559472597797377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072758 (2 * (n + 1)) - 1

end

end A026343.P11831559472597797377

namespace A026343

/-- `A072758(2*(n+1))-1` -/
def P11831559472597797377.Spec : Prop :=
  ∀ n, P11831559472597797377.a n = A026343 (n + 1)

end A026343

/-! ## A026343.P2026377000019082090

`A133310(A026344(n+1)-2)`
-/

namespace A026343.P2026377000019082090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133310 (A026344 (n + 1) - 2).toNat

end

end A026343.P2026377000019082090

namespace A026343

/-- `A133310(A026344(n+1)-2)` -/
def P2026377000019082090.Spec : Prop :=
  ∀ n, P2026377000019082090.a n = A026343 (n + 1)

end A026343

/-! ## A026343.P11590844016883389630

`A131737(A072757(n))`
-/

namespace A026343.P11590844016883389630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131737 (A072757 n).toNat

end

end A026343.P11590844016883389630

namespace A026343

/-- `A131737(A072757(n))` -/
def P11590844016883389630.Spec : Prop :=
  ∀ n, P11590844016883389630.a n = A026343 (n + 1)

end A026343

/-! ## A026343.P8180793290159806385

`A004396(A026344(n+1))`
-/

namespace A026343.P8180793290159806385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A026344 (n + 1)).toNat

end

end A026343.P8180793290159806385

namespace A026343

/-- `A004396(A026344(n+1))` -/
def P8180793290159806385.Spec : Prop :=
  ∀ n, P8180793290159806385.a n = A026343 (n + 1)

end A026343

/-! ## A026343.P4312571609142303043

`A274616(A026344(n+1)+1)-1`
-/

namespace A026343.P4312571609142303043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274616 (A026344 (n + 1) + 1).toNat - 1

end

end A026343.P4312571609142303043

namespace A026343

/-- `A274616(A026344(n+1)+1)-1` -/
def P4312571609142303043.Spec : Prop :=
  ∀ n, P4312571609142303043.a n = A026343 (n + 1)

end A026343

/-! ## A026343.P13418134233622848120

`A004523(A026344(n+1)%(∑[n+4]+3))`
-/

namespace A026343.P13418134233622848120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (Int.tmod (A026344 (n + 1)) ((∑ j ∈ Finset.range (n + 1), f1 j + 3 : ℕ) : ℤ)).toNat

end

end A026343.P13418134233622848120

namespace A026343

/-- `A004523(A026344(n+1)%(∑[n+4]+3))` -/
def P13418134233622848120.Spec : Prop :=
  ∀ n, P13418134233622848120.a n = A026343 (n + 1)

end A026343

/-! ## A026343.P17458658610534911679

`A274616(A026344(n+1)-A000007(n))`
-/

namespace A026343.P17458658610534911679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274616 (A026344 (n + 1) - A000007 n).toNat

end

end A026343.P17458658610534911679

namespace A026343

/-- `A274616(A026344(n+1)-A000007(n))` -/
def P17458658610534911679.Spec : Prop :=
  ∀ n, P17458658610534911679.a n = A026343 (n + 1)

end A026343

/-! ## A026343.P9982808468610525954

`A274616(A026344(n+1)/(A000007(n)+1))`
-/

namespace A026343.P9982808468610525954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274616 (SequenceMachineLib.roundAway ((A026344 (n + 1) : ℚ) / (A000007 n + 1 : ℚ))).toNat

end

end A026343.P9982808468610525954

namespace A026343

/-- `A274616(A026344(n+1)/(A000007(n)+1))` -/
def P9982808468610525954.Spec : Prop :=
  ∀ n, P9982808468610525954.a n = A026343 (n + 1)

end A026343

/-! ## A026343.P3542004013053505361

`A274616(A026344(n+1)%A000124(n+3))`
-/

namespace A026343.P3542004013053505361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274616 (Int.tmod (A026344 (n + 1)) (A000124 (n + 3))).toNat

end

end A026343.P3542004013053505361

namespace A026343

/-- `A274616(A026344(n+1)%A000124(n+3))` -/
def P3542004013053505361.Spec : Prop :=
  ∀ n, P3542004013053505361.a n = A026343 (n + 1)

end A026343

/-! ## A026343.P9975793338608885670

`A274616(A026344(n+1)+n*A000007(n))`
-/

namespace A026343.P9975793338608885670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274616 (A026344 (n + 1) + (n : ℤ) * A000007 n).toNat

end

end A026343.P9975793338608885670

namespace A026343

/-- `A274616(A026344(n+1)+n*A000007(n))` -/
def P9975793338608885670.Spec : Prop :=
  ∀ n, P9975793338608885670.a n = A026343 (n + 1)

end A026343

/-! ## A026343.P14057697866513405748

`A026344(n+1)-A002264(A026344(n+1)+1)`
-/

namespace A026343.P14057697866513405748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026344 (n + 1) - A002264 (A026344 (n + 1) + 1).toNat

end

end A026343.P14057697866513405748

namespace A026343

/-- `A026344(n+1)-A002264(A026344(n+1)+1)` -/
def P14057697866513405748.Spec : Prop :=
  ∀ n, P14057697866513405748.a n = A026343 (n + 1)

end A026343

/-!
# A026344: a(n) = greatest k such that s(k) = n, where s = A026342.

The programs for A026344, the canonical program `A026344.P5306302893136981966` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026344 has offset 1).

The definition of A026344 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026344.P13337675505183936988

`A072757(n)-1`
-/

namespace A026344.P13337675505183936988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072757 n - 1

end

end A026344.P13337675505183936988

namespace A026344

/-- `A072757(n)-1` -/
def P13337675505183936988.Spec : Prop :=
  ∀ n, P13337675505183936988.a n = A026344 (n + 1)

end A026344

/-! ## A026344.P5306302893136981966

`ceil(3*A026343(n+1)/2)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A026344

/-- `ceil(3*A026343(n+1)/2)` -/
def P5306302893136981966.Spec : Prop :=
  ∀ n, P5306302893136981966.a n = A026344 (n + 1)

theorem P5306302893136981966.correct : P5306302893136981966.Spec := by
  intro n
  simp only [A026344, Nat.add_sub_cancel]

end A026344

/-! ## A026344.P580418574585922629

`lt[A087088(n+1)%2+1, 2]+1`
-/

namespace A026344.P580418574585922629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087088 (n + 1)) 2 + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A026344.P580418574585922629

namespace A026344

/-- `lt[A087088(n+1)%2+1, 2]+1` -/
def P580418574585922629.Spec : Prop :=
  ∀ n, (P580418574585922629.a n : ℤ) = A026344 (n + 1)

end A026344

/-! ## A026344.P523040104585242237

`lt[A000035(A087088(n+1))+1, 2]+1`
-/

namespace A026344.P523040104585242237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A087088 (n + 1)).toNat + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A026344.P523040104585242237

namespace A026344

/-- `lt[A000035(A087088(n+1))+1, 2]+1` -/
def P523040104585242237.Spec : Prop :=
  ∀ n, (P523040104585242237.a n : ℤ) = A026344 (n + 1)

end A026344

/-! ## A026344.P8348511485260284949

`A007494(A026343(n+1))`
-/

namespace A026344.P8348511485260284949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (A026343 (n + 1)).toNat

end

end A026344.P8348511485260284949

namespace A026344

/-- `A007494(A026343(n+1))` -/
def P8348511485260284949.Spec : Prop :=
  ∀ n, P8348511485260284949.a n = A026344 (n + 1)

end A026344

/-! ## A026344.P1287831955347052278

`A032766(A026343(n+1)-1)+2`
-/

namespace A026344.P1287831955347052278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A026343 (n + 1) - 1).toNat + 2

end

end A026344.P1287831955347052278

namespace A026344

/-- `A032766(A026343(n+1)-1)+2` -/
def P1287831955347052278.Spec : Prop :=
  ∀ n, P1287831955347052278.a n = A026344 (n + 1)

end A026344

/-! ## A026344.P5699603644208624951

`A026343(n+1)+A008619(A026343(n+1)-1)`
-/

namespace A026344.P5699603644208624951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026343 (n + 1) + A008619 (A026343 (n + 1) - 1).toNat

end

end A026344.P5699603644208624951

namespace A026344

/-- `A026343(n+1)+A008619(A026343(n+1)-1)` -/
def P5699603644208624951.Spec : Prop :=
  ∀ n, P5699603644208624951.a n = A026344 (n + 1)

end A026344

/-! ## A026344.P8311447189519470138

`A123108(A026343(n+1)+1)+A026343(n+1)`
-/

namespace A026344.P8311447189519470138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A026343 (n + 1) + 1).toNat + A026343 (n + 1)

end

end A026344.P8311447189519470138

namespace A026344

/-- `A123108(A026343(n+1)+1)+A026343(n+1)` -/
def P8311447189519470138.Spec : Prop :=
  ∀ n, P8311447189519470138.a n = A026344 (n + 1)

end A026344

/-! ## A026344.P3132143895791600343

`A072758(2*n+3)-1`
-/

namespace A026344.P3132143895791600343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072758 (2 * n + 3) - 1

end

end A026344.P3132143895791600343

namespace A026344

/-- `A072758(2*n+3)-1` -/
def P3132143895791600343.Spec : Prop :=
  ∀ n, P3132143895791600343.a n = A026344 (n + 1)

end A026344

/-! ## A026344.P7109332561741484053

`A023443(A072757(n))`
-/

namespace A026344.P7109332561741484053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A072757 n).toNat

end

end A026344.P7109332561741484053

namespace A026344

/-- `A023443(A072757(n))` -/
def P7109332561741484053.Spec : Prop :=
  ∀ n, P7109332561741484053.a n = A026344 (n + 1)

end A026344

/-! ## A026344.P15838670313393431374

`A065033(3*A026343(n+1))`
-/

namespace A026344.P15838670313393431374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (3 * A026343 (n + 1)).toNat

end

end A026344.P15838670313393431374

namespace A026344

/-- `A065033(3*A026343(n+1))` -/
def P15838670313393431374.Spec : Prop :=
  ∀ n, P15838670313393431374.a n = A026344 (n + 1)

end A026344

/-! ## A026344.P18226279870319627269

`A110654(3*A026343(n+1))`
-/

namespace A026344.P18226279870319627269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (3 * A026343 (n + 1)).toNat

end

end A026344.P18226279870319627269

namespace A026344

/-- `A110654(3*A026343(n+1))` -/
def P18226279870319627269.Spec : Prop :=
  ∀ n, P18226279870319627269.a n = A026344 (n + 1)

end A026344

/-! ## A026344.P13604955304045472097

`A008619(3*A026343(n+1)-1)`
-/

namespace A026344.P13604955304045472097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (3 * A026343 (n + 1) - 1).toNat

end

end A026344.P13604955304045472097

namespace A026344

/-- `A008619(3*A026343(n+1)-1)` -/
def P13604955304045472097.Spec : Prop :=
  ∀ n, P13604955304045472097.a n = A026344 (n + 1)

end A026344

/-! ## A026344.P15235970270544701820

`A123108(3*A026343(n+1)+1)`
-/

namespace A026344.P15235970270544701820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (3 * A026343 (n + 1) + 1).toNat

end

end A026344.P15235970270544701820

namespace A026344

/-- `A123108(3*A026343(n+1)+1)` -/
def P15235970270544701820.Spec : Prop :=
  ∀ n, P15235970270544701820.a n = A026344 (n + 1)

end A026344

/-!
# A026347: a(n) = least k such that s(k) = n, where s = A026346.

The programs for A026347, there is no canonical definition to state claims against.
-/

/-! ## A026347.P11742621954448843234

`eq[char[A026348(n+1)], A000007(n)]`
-/

namespace A026347.P11742621954448843234
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026348 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A026347.P11742621954448843234

/-! ## A026347.P5237782340696661788

`eq[char[A026348(n+1)], A000038(n)]`
-/

namespace A026347.P5237782340696661788
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026348 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A026347.P5237782340696661788

/-! ## A026347.P9966352426206989586

`record[(n+1)%A026340(A026346(n+1))]`
-/

namespace A026347.P9966352426206989586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A026340 (A026346 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026347.P9966352426206989586

/-! ## A026347.P14582173179760096265

`A004396(A026348(n+1)-(n+1))`
-/

namespace A026347.P14582173179760096265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A026348 (n + 1) - (n + 1 : ℤ)).toNat

end

end A026347.P14582173179760096265

/-! ## A026347.P3744948958678906265

`A004523(A026348(n+1)-n)`
-/

namespace A026347.P3744948958678906265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A026348 (n + 1) - (n : ℤ)).toNat

end

end A026347.P3744948958678906265

/-! ## A026347.P13464946783299834231

`eq[char[A026348(n+1)], A072594((n+1)²)]`
-/

namespace A026347.P13464946783299834231
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026348 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072594 ((n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A026347.P13464946783299834231

/-!
# A026348: Greatest k such that s(k) = n, where s = A026346.

The programs for A026348, there is no canonical definition to state claims against.
-/

/-! ## A026348.P5390116340784964574

`record[Δ[A002620(A026347(n+1))]]`
-/

namespace A026348.P5390116340784964574
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A026347 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026348.P5390116340784964574

/-! ## A026348.P2810535535874974290

`eq[char[A026347(n+1)], A000007(n)]`
-/

namespace A026348.P2810535535874974290
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026347 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A026348.P2810535535874974290

/-! ## A026348.P6002640231669046427

`eq[char[A026347(n+1)], A000038(n)]`
-/

namespace A026348.P6002640231669046427
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026347 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A026348.P6002640231669046427

/-! ## A026348.P4654299962314042625

`eq[char[A026347(n+1)], A169585(n)]`
-/

namespace A026348.P4654299962314042625
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026347 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A026348.P4654299962314042625

/-! ## A026348.P15605423013512707776

`eq[n, A028310(n)-char[A026347(n+1)]]`
-/

namespace A026348.P15605423013512707776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026347 (n + 1)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A026348.P15605423013512707776

/-!
# A026349: a(n) = sum of the numbers between the two n's in A026346.

The programs for A026349, there is no canonical definition to state claims against.
-/

/-! ## A026349.P7060077597556762264

`eq[A018252(A059268(n)), A123709(n+1)]`
-/

namespace A026349.P7060077597556762264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A059268 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123709 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A026349.P7060077597556762264

/-! ## A026349.P6604614295183079388

`eq[A004526(A290428(n)), A055631(n+1)]`
-/

namespace A026349.P6604614295183079388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A290428 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055631 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A026349.P6604614295183079388

/-!
# A026350: a(n) = a(m) if a(m) has already occurred exactly once and n = a(m)+m-1, else a(n) = least positive integer that has not yet occurred.

The programs for A026350, the canonical program `A026350.P7602566330336333435` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026350 has offset 1).

The definition of A026350 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026350.P7602566330336333435

`abs(Δ[n*floor(n/ϕ)]-n)+1`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026350

/-- `abs(Δ[n*floor(n/ϕ)]-n)+1` -/
def P7602566330336333435.Spec : Prop :=
  ∀ n, P7602566330336333435.a n = A026350 (n + 1)

theorem P7602566330336333435.correct : P7602566330336333435.Spec := by
  intro n
  simp only [A026350, Nat.add_sub_cancel]

end A026350

/-! ## A026350.P6480730785490831680

`ceil(A064579(n+2)/2)`
-/

namespace A026350.P6480730785490831680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A064579 (n + 2) : ℚ) / 2⌉

end

end A026350.P6480730785490831680

namespace A026350

/-- `ceil(A064579(n+2)/2)` -/
def P6480730785490831680.Spec : Prop :=
  ∀ n, P6480730785490831680.a n = A026350 (n + 1)

end A026350

/-! ## A026350.P4150820402105258348

`A028310(A026354(n+2)-1)`
-/

namespace A026350.P4150820402105258348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A026354 (n + 2) - 1).toNat

end

end A026350.P4150820402105258348

namespace A026350

/-- `A028310(A026354(n+2)-1)` -/
def P4150820402105258348.Spec : Prop :=
  ∀ n, P4150820402105258348.a n = A026350 (n + 1)

end A026350

/-! ## A026350.P10454979599967970228

`∑[A026354(n+2)-A026354(n+1)]`
-/

namespace A026350.P10454979599967970228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026354 (n + 2) - A026354 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026350.P10454979599967970228

namespace A026350

/-- `∑[A026354(n+2)-A026354(n+1)]` -/
def P10454979599967970228.Spec : Prop :=
  ∀ n, P10454979599967970228.a n = A026350 (n + 1)

end A026350

/-! ## A026350.P1120926278425996947

`A026242(A054082(A064786(n+2)))`
-/

namespace A026350.P1120926278425996947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026242 (A054082 (A064786 (n + 2)).toNat).toNat

end

end A026350.P1120926278425996947

namespace A026350

/-- `A026242(A054082(A064786(n+2)))` -/
def P1120926278425996947.Spec : Prop :=
  ∀ n, P1120926278425996947.a n = A026350 (n + 1)

end A026350

/-! ## A026350.P5749138679730544778

`A065033(A064579(n+2))`
-/

namespace A026350.P5749138679730544778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A064579 (n + 2)).toNat

end

end A026350.P5749138679730544778

namespace A026350

/-- `A065033(A064579(n+2))` -/
def P5749138679730544778.Spec : Prop :=
  ∀ n, P5749138679730544778.a n = A026350 (n + 1)

end A026350

/-! ## A026350.P4306359371460443036

`A189663(A026355(A026354(A000201(n+1))))`
-/

namespace A026350.P4306359371460443036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189663 (A026355 (A026354 (A000201 (n + 1)).toNat).toNat).toNat

end

end A026350.P4306359371460443036

namespace A026350

/-- `A189663(A026355(A026354(A000201(n+1))))` -/
def P4306359371460443036.Spec : Prop :=
  ∀ n, P4306359371460443036.a n = A026350 (n + 1)

end A026350

/-! ## A026350.P18216708091422932430

`A060145(A002251(n)+2+n)`
-/

namespace A026350.P18216708091422932430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060145 (A002251 n + 2 + (n : ℤ)).toNat

end

end A026350.P18216708091422932430

namespace A026350

/-- `A060145(A002251(n)+2+n)` -/
def P18216708091422932430.Spec : Prop :=
  ∀ n, P18216708091422932430.a n = A026350 (n + 1)

end A026350

/-! ## A026350.P911756699726335105

`A060145(A019444(n+1)+1+n)`
-/

namespace A026350.P911756699726335105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060145 (A019444 (n + 1) + 1 + (n : ℤ)).toNat

end

end A026350.P911756699726335105

namespace A026350

/-- `A060145(A019444(n+1)+1+n)` -/
def P911756699726335105.Spec : Prop :=
  ∀ n, P911756699726335105.a n = A026350 (n + 1)

end A026350

/-! ## A026350.P9520467642309525127

`A300763(A019444(n+1)+n+1)`
-/

namespace A026350.P9520467642309525127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300763 (A019444 (n + 1) + (n + 1 : ℤ)).toNat

end

end A026350.P9520467642309525127

namespace A026350

/-- `A300763(A019444(n+1)+n+1)` -/
def P9520467642309525127.Spec : Prop :=
  ∀ n, P9520467642309525127.a n = A026350 (n + 1)

end A026350

/-! ## A026350.P9971873288569783060

`A189663(A026354(A001950(n+1)))`
-/

namespace A026350.P9971873288569783060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189663 (A026354 (A001950 (n + 1)).toNat).toNat

end

end A026350.P9971873288569783060

namespace A026350

/-- `A189663(A026354(A001950(n+1)))` -/
def P9971873288569783060.Spec : Prop :=
  ∀ n, P9971873288569783060.a n = A026350 (n + 1)

end A026350

/-! ## A026350.P8635025178428203520

`A189663(A026354(A000201(n+1)+n+1))`
-/

namespace A026350.P8635025178428203520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189663 (A026354 (A000201 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A026350.P8635025178428203520

namespace A026350

/-- `A189663(A026354(A000201(n+1)+n+1))` -/
def P8635025178428203520.Spec : Prop :=
  ∀ n, P8635025178428203520.a n = A026350 (n + 1)

end A026350

/-! ## A026350.P3847604585475475121

`A189663(A026354(A026355(n+1)+n+2))`
-/

namespace A026350.P3847604585475475121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189663 (A026354 (A026355 (n + 1) + (n + 2 : ℤ)).toNat).toNat

end

end A026350.P3847604585475475121

namespace A026350

/-- `A189663(A026354(A026355(n+1)+n+2))` -/
def P3847604585475475121.Spec : Prop :=
  ∀ n, P3847604585475475121.a n = A026350 (n + 1)

end A026350

/-! ## A026350.P15054295023926876044

`A189663(A026354(A189662(n+1)+n+2))`
-/

namespace A026350.P15054295023926876044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189663 (A026354 (A189662 (n + 1) + (n + 2 : ℤ)).toNat).toNat

end

end A026350.P15054295023926876044

namespace A026350

/-- `A189663(A026354(A189662(n+1)+n+2))` -/
def P15054295023926876044.Spec : Prop :=
  ∀ n, P15054295023926876044.a n = A026350 (n + 1)

end A026350

/-! ## A026350.P545244414813839769

`A026242(A026354(A026273(A026273(n+2))))`
-/

namespace A026350.P545244414813839769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026242 (A026354 (A026273 (A026273 (n + 2)).toNat).toNat).toNat

end

end A026350.P545244414813839769

namespace A026350

/-- `A026242(A026354(A026273(A026273(n+2))))` -/
def P545244414813839769.Spec : Prop :=
  ∀ n, P545244414813839769.a n = A026350 (n + 1)

end A026350

/-!
# A026351: a(n) = floor(n*phi) + 1, where phi = (1+sqrt(5))/2.

The programs for A026351, the canonical program `A026351.P16838321733923579855` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026351 has offset 0).

The definition of A026351 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*ϕ)+1` (program `A026351.P16838321733923579855`, by `A026351.P16838321733923579855.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A026351.P16838321733923579855

`floor(n*ϕ)+1`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026351

/-- `floor(n*ϕ)+1` -/
def P16838321733923579855.Spec : Prop :=
  ∀ n, P16838321733923579855.a n = A026351 n

theorem P16838321733923579855.correct : P16838321733923579855.Spec := by
  intro n
  simp only [A026351]

end A026351

/-! ## A026351.P6335781396427925887

`ceil(ϕ/sinh(acot(n)))`
-/

namespace A026351.P6335781396427925887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio / Real.sinh (SequenceMachineLib.acot (n : ℝ))⌉

end

end A026351.P6335781396427925887

namespace A026351

/-- `ceil(ϕ/sinh(acot(n)))` -/
def P6335781396427925887.Spec : Prop :=
  ∀ n, P6335781396427925887.a n = A026351 n

end A026351

/-! ## A026351.P13864275863801057442

`ceil(cot(acot(n)/ϕ))`
-/

namespace A026351.P13864275863801057442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cot (SequenceMachineLib.acot (n : ℝ) / Real.goldenRatio)⌉

end

end A026351.P13864275863801057442

namespace A026351

/-- `ceil(cot(acot(n)/ϕ))` -/
def P13864275863801057442.Spec : Prop :=
  ∀ n, P13864275863801057442.a n = A026351 n

end A026351

/-! ## A026351.P723397512062074786

`ceil(1/acot(ϕ*n))`
-/

namespace A026351.P723397512062074786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / SequenceMachineLib.acot (Real.goldenRatio * (n : ℝ))⌉

end

end A026351.P723397512062074786

namespace A026351

/-- `ceil(1/acot(ϕ*n))` -/
def P723397512062074786.Spec : Prop :=
  ∀ n, P723397512062074786.a n = A026351 n

end A026351

/-! ## A026351.P5002542223222095557

`-xor(-1, floor(ϕ*n))`
-/

namespace A026351.P5002542223222095557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (-1) ⌊Real.goldenRatio * (n : ℝ)⌋

end

end A026351.P5002542223222095557

namespace A026351

/-- `-xor(-1, floor(ϕ*n))` -/
def P5002542223222095557.Spec : Prop :=
  ∀ n, P5002542223222095557.a n = A026351 n

end A026351

/-! ## A026351.P14346421754492164118

`record[abs(ceil(ϕ*(n-1)))]`
-/

namespace A026351.P14346421754492164118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈Real.goldenRatio * ((n : ℤ) - 1 : ℝ)⌉|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026351.P14346421754492164118

namespace A026351

/-- `record[abs(ceil(ϕ*(n-1)))]` -/
def P14346421754492164118.Spec : Prop :=
  ∀ n, P14346421754492164118.a n = A026351 n

end A026351

/-! ## A026351.P5280947740827152726

`ceil(C(2, n+2)+ϕ*n)`
-/

namespace A026351.P5280947740827152726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose 2 (n + 2) : ℝ) + Real.goldenRatio * (n : ℝ)⌉

end

end A026351.P5280947740827152726

namespace A026351

/-- `ceil(C(2, n+2)+ϕ*n)` -/
def P5280947740827152726.Spec : Prop :=
  ∀ n, P5280947740827152726.a n = A026351 n

end A026351

/-! ## A026351.P14755950632759259805

`floor(C(n+1, n)+n/ϕ)`
-/

namespace A026351.P14755950632759259805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 1) n : ℝ) + (n : ℝ) / Real.goldenRatio⌋

end

end A026351.P14755950632759259805

namespace A026351

/-- `floor(C(n+1, n)+n/ϕ)` -/
def P14755950632759259805.Spec : Prop :=
  ∀ n, P14755950632759259805.a n = A026351 n

end A026351

/-! ## A026351.P15163627207456038269

`ceil((a(n-1)+n+1)/ϕ)` with `a(0)=1`
-/

namespace A026351.P15163627207456038269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(a (n - 1) + (n + 1 : ℤ) : ℝ) / Real.goldenRatio⌉

end

end A026351.P15163627207456038269

namespace A026351

/-- `ceil((a(n-1)+n+1)/ϕ)` -/
def P15163627207456038269.Spec : Prop :=
  ∀ n, P15163627207456038269.a n = A026351 n

end A026351

/-! ## A026351.P9733644036690173900

`floor((a(n-1)+n)/ϕ+ϕ)` with `a(0)=1`
-/

namespace A026351.P9733644036690173900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) + (n : ℤ) : ℝ) / Real.goldenRatio + Real.goldenRatio⌋

end

end A026351.P9733644036690173900

namespace A026351

/-- `floor((a(n-1)+n)/ϕ+ϕ)` -/
def P9733644036690173900.Spec : Prop :=
  ∀ n, P9733644036690173900.a n = A026351 n

end A026351

/-! ## A026351.P10713176364515992457

`floor(ϕ²*gcd(n, 2*n)-(n-1))`
-/

namespace A026351.P10713176364515992457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio ^ 2 * (Nat.gcd n (2 * n) : ℝ) - ((n : ℤ) - 1 : ℝ)⌋

end

end A026351.P10713176364515992457

namespace A026351

/-- `floor(ϕ²*gcd(n, 2*n)-(n-1))` -/
def P10713176364515992457.Spec : Prop :=
  ∀ n, P10713176364515992457.a n = A026351 n

end A026351

/-! ## A026351.P4634560198599722131

`floor(n²/(a(n-1)+1)+n+1)` with `a(0)=1`
-/

namespace A026351.P4634560198599722131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(n ^ 2 : ℚ) / (a (n - 1) + 1 : ℚ) + (n + 1 : ℚ)⌋

end

end A026351.P4634560198599722131

namespace A026351

/-- `floor(n²/(a(n-1)+1)+n+1)` -/
def P4634560198599722131.Spec : Prop :=
  ∀ n, P4634560198599722131.a n = A026351 n

end A026351

/-! ## A026351.P4360686264700701688

`floor(n-(1-n²-n)/a(n-1))` with `a(0)=1`
-/

namespace A026351.P4360686264700701688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(n : ℚ) - (1 - (n ^ 2 : ℤ) - (n : ℤ) : ℚ) / (a (n - 1) : ℚ)⌋

end

end A026351.P4360686264700701688

namespace A026351

/-- `floor(n-(1-n²-n)/a(n-1))` -/
def P4360686264700701688.Spec : Prop :=
  ∀ n, P4360686264700701688.a n = A026351 n

end A026351

/-! ## A026351.P14224406515788273211

`comp[A004957(n)]`
-/

namespace A026351.P14224406515788273211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004957 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A026351.P14224406515788273211

namespace A026351

/-- `comp[A004957(n)]` -/
def P14224406515788273211.Spec : Prop :=
  ∀ n, (P14224406515788273211.a n : ℤ) = A026351 n

end A026351

/-! ## A026351.P14607233480655608984

`ceil(A191402(n)/2)`
-/

namespace A026351.P14607233480655608984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A191402 n : ℚ) / 2⌉

end

end A026351.P14607233480655608984

namespace A026351

/-- `ceil(A191402(n)/2)` -/
def P14607233480655608984.Spec : Prop :=
  ∀ n, P14607233480655608984.a n = A026351 n

end A026351

/-! ## A026351.P4275417209665915726

`comp[A004956(n)+n]`
-/

namespace A026351.P4275417209665915726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A026351.P4275417209665915726

namespace A026351

/-- `comp[A004956(n)+n]` -/
def P4275417209665915726.Spec : Prop :=
  ∀ n, (P4275417209665915726.a n : ℤ) = A026351 n

end A026351

/-! ## A026351.P8446105047045334830

`(A130568(n)+1)/2`
-/

namespace A026351.P8446105047045334830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130568 n + 1 : ℚ) / 2

end

end A026351.P8446105047045334830

namespace A026351

/-- `(A130568(n)+1)/2` -/
def P8446105047045334830.Spec : Prop :=
  ∀ n, P8446105047045334830.a n = (A026351 n : ℚ)

end A026351

/-! ## A026351.P15749767893694392396

`comp[A007066(n+1)-1]`
-/

namespace A026351.P15749767893694392396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007066 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A026351.P15749767893694392396

namespace A026351

/-- `comp[A007066(n+1)-1]` -/
def P15749767893694392396.Spec : Prop :=
  ∀ n, (P15749767893694392396.a n : ℤ) = A026351 n

end A026351

/-!
# A026352: a(n) = floor(n*phi) + n + 1 where phi is the golden ratio A001622.

The programs for A026352, the canonical program `A026352.P15908387424660426559` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026352 has offset 0).

The definition of A026352 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*ϕ)+n+1` (program `A026352.P1404319932275583257`, by `A026352.P1404319932275583257.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A026352.P15908387424660426559

`floor(ϕ*n)+n+1`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026352

/-- `floor(ϕ*n)+n+1` -/
def P15908387424660426559.Spec : Prop :=
  ∀ n, P15908387424660426559.a n = A026352 n

theorem P15908387424660426559.correct : P15908387424660426559.Spec := by
  intro n
  simp only [A026352]

end A026352

/-! ## A026352.P1404319932275583257

`floor(n*ϕ)+n+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A026352.P1404319932275583257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.goldenRatio⌋ + (n + 1 : ℤ)

end

end A026352.P1404319932275583257

namespace A026352

/-- `floor(n*ϕ)+n+1` -/
def P1404319932275583257.Spec : Prop :=
  ∀ n, P1404319932275583257.a n = A026352 n

theorem P1404319932275583257.correct : P1404319932275583257.Spec := by
  intro n
  simp only [A026352, Nat.add_sub_cancel, A026352.P1404319932275583257.a, A026352.P15908387424660426559.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A026352

/-! ## A026352.P16733306830899345371

`ceil(1/acot(n*ϕ²))`
-/

namespace A026352.P16733306830899345371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / SequenceMachineLib.acot ((n : ℝ) * Real.goldenRatio ^ 2)⌉

end

end A026352.P16733306830899345371

namespace A026352

/-- `ceil(1/acot(n*ϕ²))` -/
def P16733306830899345371.Spec : Prop :=
  ∀ n, P16733306830899345371.a n = A026352 n

end A026352

/-! ## A026352.P10816940420758498086

`floor(ϕ/acot(ceil(ϕ*n)))`
-/

namespace A026352.P10816940420758498086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio / SequenceMachineLib.acot (⌈Real.goldenRatio * (n : ℝ)⌉ : ℝ)⌋

end

end A026352.P10816940420758498086

namespace A026352

/-- `floor(ϕ/acot(ceil(ϕ*n)))` -/
def P10816940420758498086.Spec : Prop :=
  ∀ n, P10816940420758498086.a n = A026352 n

end A026352

/-! ## A026352.P7894147827955643621

`floor(ϕ*n-xor(n, -1))`
-/

namespace A026352.P7894147827955643621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ) - (Int.xor (n : ℤ) (-1) : ℝ)⌋

end

end A026352.P7894147827955643621

namespace A026352

/-- `floor(ϕ*n-xor(n, -1))` -/
def P7894147827955643621.Spec : Prop :=
  ∀ n, P7894147827955643621.a n = A026352 n

end A026352

/-! ## A026352.P7495010243308991576

`abs(xor(-1, floor(n*ϕ²)))`
-/

namespace A026352.P7495010243308991576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (-1) ⌊(n : ℝ) * Real.goldenRatio ^ 2⌋|

end

end A026352.P7495010243308991576

namespace A026352

/-- `abs(xor(-1, floor(n*ϕ²)))` -/
def P7495010243308991576.Spec : Prop :=
  ∀ n, P7495010243308991576.a n = A026352 n

end A026352

/-! ## A026352.P7652728038825375145

`floor((a(n-1)+2)/ϕ+n+1)` with `a(0)=1`
-/

namespace A026352.P7652728038825375145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) + 2 : ℝ) / Real.goldenRatio + (n + 1 : ℝ)⌋

end

end A026352.P7652728038825375145

namespace A026352

/-- `floor((a(n-1)+2)/ϕ+n+1)` -/
def P7652728038825375145.Spec : Prop :=
  ∀ n, P7652728038825375145.a n = A026352 n

end A026352

/-! ## A026352.P15238164448531629303

`(A284621(n+1)+1)/2`
-/

namespace A026352.P15238164448531629303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284621 (n + 1) + 1 : ℚ) / 2

end

end A026352.P15238164448531629303

namespace A026352

/-- `(A284621(n+1)+1)/2` -/
def P15238164448531629303.Spec : Prop :=
  ∀ n, P15238164448531629303.a n = (A026352 n : ℚ)

end A026352

/-! ## A026352.P13712372580588491935

`(A284395(n+1)+1)/3`
-/

namespace A026352.P13712372580588491935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284395 (n + 1) + 1 : ℚ) / 3

end

end A026352.P13712372580588491935

namespace A026352

/-- `(A284395(n+1)+1)/3` -/
def P13712372580588491935.Spec : Prop :=
  ∀ n, P13712372580588491935.a n = (A026352 n : ℚ)

end A026352

/-! ## A026352.P584576122704533627

`(A288709(n+1)-1)/2`
-/

namespace A026352.P584576122704533627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288709 (n + 1) - 1 : ℚ) / 2

end

end A026352.P584576122704533627

namespace A026352

/-- `(A288709(n+1)-1)/2` -/
def P584576122704533627.Spec : Prop :=
  ∀ n, P584576122704533627.a n = (A026352 n : ℚ)

end A026352

/-! ## A026352.P16155012140368056047

`(A188012(n+1)+n)/3`
-/

namespace A026352.P16155012140368056047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188012 (n + 1) + (n : ℤ) : ℚ) / 3

end

end A026352.P16155012140368056047

namespace A026352

/-- `(A188012(n+1)+n)/3` -/
def P16155012140368056047.Spec : Prop :=
  ∀ n, P16155012140368056047.a n = (A026352 n : ℚ)

end A026352

/-! ## A026352.P6839009572608817833

`(A276885(n+1)+n+1)/2`
-/

namespace A026352.P6839009572608817833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276885 (n + 1) + (n + 1 : ℤ) : ℚ) / 2

end

end A026352.P6839009572608817833

namespace A026352

/-- `(A276885(n+1)+n+1)/2` -/
def P6839009572608817833.Spec : Prop :=
  ∀ n, P6839009572608817833.a n = (A026352 n : ℚ)

end A026352

/-! ## A026352.P6105748661512012264

`xor(A000007(n), A004957(n))`
-/

namespace A026352.P6105748661512012264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 n) (A004957 n)

end

end A026352.P6105748661512012264

namespace A026352

/-- `xor(A000007(n), A004957(n))` -/
def P6105748661512012264.Spec : Prop :=
  ∀ n, P6105748661512012264.a n = A026352 n

end A026352

/-! ## A026352.P4297403841297088083

`A288709(n+1)%A026356(n+1)`
-/

namespace A026352.P4297403841297088083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288709 (n + 1)) (A026356 (n + 1))

end

end A026352.P4297403841297088083

namespace A026352

/-- `A288709(n+1)%A026356(n+1)` -/
def P4297403841297088083.Spec : Prop :=
  ∀ n, P4297403841297088083.a n = A026352 n

end A026352

/-! ## A026352.P7384297342814340186

`A288713(n+1)%A026356(n+1)`
-/

namespace A026352.P7384297342814340186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288713 (n + 1)) (A026356 (n + 1))

end

end A026352.P7384297342814340186

namespace A026352

/-- `A288713(n+1)%A026356(n+1)` -/
def P7384297342814340186.Spec : Prop :=
  ∀ n, P7384297342814340186.a n = A026352 n

end A026352

/-! ## A026352.P4990997045821727373

`A188012(n+1)%A188434(n+1)`
-/

namespace A026352.P4990997045821727373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188012 (n + 1)) (A188434 (n + 1))

end

end A026352.P4990997045821727373

namespace A026352

/-- `A188012(n+1)%A188434(n+1)` -/
def P4990997045821727373.Spec : Prop :=
  ∀ n, P4990997045821727373.a n = A026352 n

end A026352

/-!
# A026353: a(n) = sum of the numbers between the two n's in A026350.

The programs for A026353, the canonical program `A026353.P11254182584666036756` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026353 has offset 2).

The definition of A026353 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026353.P11598288169148120595

`∑[Δ[n*floor(n/ϕ)]+n]+n`
-/

namespace A026353.P11598288169148120595
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌊(n : ℝ) / Real.goldenRatio⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A026353.P11598288169148120595

namespace A026353

/-- `∑[Δ[n*floor(n/ϕ)]+n]+n` -/
def P11598288169148120595.Spec : Prop :=
  ∀ n, P11598288169148120595.a n = A026353 (n + 2)

end A026353

/-! ## A026353.P11170830887772647771

`abs(A026357(n+3)-n)`
-/

namespace A026353.P11170830887772647771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A026357 (n + 3) - (n : ℤ)|

end

end A026353.P11170830887772647771

namespace A026353

/-- `abs(A026357(n+3)-n)` -/
def P11170830887772647771.Spec : Prop :=
  ∀ n, P11170830887772647771.a n = A026353 (n + 2)

end A026353

/-! ## A026353.P17468221449623320663

`∑[Δ[n*floor(ϕ*n)]-A028310(n)]`
-/

namespace A026353.P17468221449623320663
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌊Real.goldenRatio * (n : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026353.P17468221449623320663

namespace A026353

/-- `∑[Δ[n*floor(ϕ*n)]-A028310(n)]` -/
def P17468221449623320663.Spec : Prop :=
  ∀ n, P17468221449623320663.a n = A026353 (n + 2)

end A026353

/-! ## A026353.P11254182584666036756

`abs(A001489(n)-A026271(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A026353

/-- `abs(A001489(n)-A026271(n+1))` -/
def P11254182584666036756.Spec : Prop :=
  ∀ n, P11254182584666036756.a n = A026353 (n + 2)

theorem P11254182584666036756.correct : P11254182584666036756.Spec := by
  intro n
  simp only [A026353, Nat.add_sub_cancel]

end A026353

/-! ## A026353.P8297242149140673091

`∑[A087156(n+1)+A002251(n)]`
-/

namespace A026353.P8297242149140673091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (n + 1) + A002251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026353.P8297242149140673091

namespace A026353

/-- `∑[A087156(n+1)+A002251(n)]` -/
def P8297242149140673091.Spec : Prop :=
  ∀ n, P8297242149140673091.a n = A026353 (n + 2)

end A026353

/-! ## A026353.P5536909809204778557

`∑[(A002251(n)+1+n)*A057427(n)]`
-/

namespace A026353.P5536909809204778557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002251 n + 1 + (n : ℤ)) * A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026353.P5536909809204778557

namespace A026353

/-- `∑[(A002251(n)+1+n)*A057427(n)]` -/
def P5536909809204778557.Spec : Prop :=
  ∀ n, P5536909809204778557.a n = A026353 (n + 2)

end A026353

/-! ## A026353.P8590358066367508972

`∑[Δ[n*floor(ϕ*n)]-A065033(2*n)]`
-/

namespace A026353.P8590358066367508972
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌊Real.goldenRatio * (n : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A065033 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026353.P8590358066367508972

namespace A026353

/-- `∑[Δ[n*floor(ϕ*n)]-A065033(2*n)]` -/
def P8590358066367508972.Spec : Prop :=
  ∀ n, P8590358066367508972.a n = A026353 (n + 2)

end A026353

/-!
# A026354: a(n) = a(m) if a(m) has already occurred exactly once and n = a(m)+m-2, else a(n) = least positive integer that has not yet occurred.

The programs for A026354, the canonical program `A026354.P15799425750104031641` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026354 has offset 1).

The definition of A026354 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026354.P15799425750104031641

`A026350(A028310(n))%(n+1)+1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A026354

/-- `A026350(A028310(n))%(n+1)+1` -/
def P15799425750104031641.Spec : Prop :=
  ∀ n, P15799425750104031641.a n = A026354 (n + 1)

theorem P15799425750104031641.correct : P15799425750104031641.Spec := by
  intro n
  simp only [A026354, Nat.add_sub_cancel]

end A026354

/-! ## A026354.P9440299864697947555

`A057427(n)+A026350(A028310(n))`
-/

namespace A026354.P9440299864697947555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A026350 (A028310 n).toNat

end

end A026354.P9440299864697947555

namespace A026354

/-- `A057427(n)+A026350(A028310(n))` -/
def P9440299864697947555.Spec : Prop :=
  ∀ n, P9440299864697947555.a n = A026354 (n + 1)

end A026354

/-! ## A026354.P7605867883281594444

`A026350(A028310(n))-A057428(n)`
-/

namespace A026354.P7605867883281594444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026350 (A028310 n).toNat - A057428 n

end

end A026354.P7605867883281594444

namespace A026354

/-- `A026350(A028310(n))-A057428(n)` -/
def P7605867883281594444.Spec : Prop :=
  ∀ n, P7605867883281594444.a n = A026354 (n + 1)

end A026354

/-! ## A026354.P1519925259163112725

`A026350(A028310(n))+A062157(n)²`
-/

namespace A026354.P1519925259163112725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026350 (A028310 n).toNat + A062157 n ^ 2

end

end A026354.P1519925259163112725

namespace A026354

/-- `A026350(A028310(n))+A062157(n)²` -/
def P1519925259163112725.Spec : Prop :=
  ∀ n, P1519925259163112725.a n = A026354 (n + 1)

end A026354

/-! ## A026354.P2965673443189444977

`A026350(A028310(n))+char[A344180(n)]`
-/

namespace A026354.P2965673443189444977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026350 (A028310 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A026354.P2965673443189444977

namespace A026354

/-- `A026350(A028310(n))+char[A344180(n)]` -/
def P2965673443189444977.Spec : Prop :=
  ∀ n, P2965673443189444977.a n = A026354 (n + 1)

end A026354

/-! ## A026354.P11620283162941318104

`A026350(A028310(n))+1-A000007(n)`
-/

namespace A026354.P11620283162941318104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026350 (A028310 n).toNat + (1 - A000007 n)

end

end A026354.P11620283162941318104

namespace A026354

/-- `A026350(A028310(n))+1-A000007(n)` -/
def P11620283162941318104.Spec : Prop :=
  ∀ n, P11620283162941318104.a n = A026354 (n + 1)

end A026354

/-! ## A026354.P4208251518299638932

`A026350(A028310(n))+A001221(A001316(n))`
-/

namespace A026354.P4208251518299638932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026350 (A028310 n).toNat + A001221 (A001316 n).toNat

end

end A026354.P4208251518299638932

namespace A026354

/-- `A026350(A028310(n))+A001221(A001316(n))` -/
def P4208251518299638932.Spec : Prop :=
  ∀ n, P4208251518299638932.a n = A026354 (n + 1)

end A026354

/-! ## A026354.P6975665802516464447

`A026350(A028310(n))+A001221(A000961(n+1))`
-/

namespace A026354.P6975665802516464447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026350 (A028310 n).toNat + A001221 (A000961 (n + 1)).toNat

end

end A026354.P6975665802516464447

namespace A026354

/-- `A026350(A028310(n))+A001221(A000961(n+1))` -/
def P6975665802516464447.Spec : Prop :=
  ∀ n, P6975665802516464447.a n = A026354 (n + 1)

end A026354

/-! ## A026354.P15741541578355978788

`A026350(A028310(n))-A062157(2*n)`
-/

namespace A026354.P15741541578355978788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026350 (A028310 n).toNat - A062157 (2 * n)

end

end A026354.P15741541578355978788

namespace A026354

/-- `A026350(A028310(n))-A062157(2*n)` -/
def P15741541578355978788.Spec : Prop :=
  ∀ n, P15741541578355978788.a n = A026354 (n + 1)

end A026354

/-!
# A026355: a(n) = least k such that s(k) = n+1, where s = A026354.

The programs for A026355, the canonical program `A026355.P3650251424323481173` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026355 has offset 0).

The definition of A026355 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026355.P2714902265192248535

`comp[ceil(ϕ*ceil(ϕ*n))]`
-/

namespace A026355.P2714902265192248535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (⌈Real.goldenRatio * (n : ℝ)⌉ : ℝ)⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A026355.P2714902265192248535

namespace A026355

/-- `comp[ceil(ϕ*ceil(ϕ*n))]` -/
def P2714902265192248535.Spec : Prop :=
  ∀ n, (P2714902265192248535.a n : ℤ) = A026355 n

end A026355

/-! ## A026355.P15955759686021350509

`floor(record[a(n-2)+ϕ])` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A026355.P15955759686021350509
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [1, 0, 2] fun n f1 =>
  f1 (n - 2) + Real.goldenRatio

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A026355.P15955759686021350509

namespace A026355

/-- `floor(record[a(n-2)+ϕ])` -/
def P15955759686021350509.Spec : Prop :=
  ∀ n, P15955759686021350509.a n = A026355 n

end A026355

/-! ## A026355.P5054228865715831742

`ceil(a(n-1)/ϕ²+n)` with `a(0)=1`
-/

namespace A026355.P5054228865715831742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(a (n - 1) : ℝ) / Real.goldenRatio ^ 2 + (n : ℝ)⌉

end

end A026355.P5054228865715831742

namespace A026355

/-- `ceil(a(n-1)/ϕ²+n)` -/
def P5054228865715831742.Spec : Prop :=
  ∀ n, P5054228865715831742.a n = A026355 n

end A026355

/-! ## A026355.P3319661600409996306

`ceil((2-ϕ)*a(n-1)+n)` with `a(0)=1`
-/

namespace A026355.P3319661600409996306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(2 - Real.goldenRatio) * (a (n - 1) : ℝ) + (n : ℝ)⌉

end

end A026355.P3319661600409996306

namespace A026355

/-- `ceil((2-ϕ)*a(n-1)+n)` -/
def P3319661600409996306.Spec : Prop :=
  ∀ n, P3319661600409996306.a n = A026355 n

end A026355

/-! ## A026355.P7280767760843593651

`n-floor((ϕ-2)*a(n-1))` with `a(0)=1`
-/

namespace A026355.P7280767760843593651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) - ⌊(Real.goldenRatio - 2) * (a (n - 1) : ℝ)⌋

end

end A026355.P7280767760843593651

namespace A026355

/-- `n-floor((ϕ-2)*a(n-1))` -/
def P7280767760843593651.Spec : Prop :=
  ∀ n, P7280767760843593651.a n = A026355 n

end A026355

/-! ## A026355.P16690869925093268410

`floor(a(n-1)/ϕ²+n+1)` with `a(0)=1`
-/

namespace A026355.P16690869925093268410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℝ) / Real.goldenRatio ^ 2 + (n + 1 : ℝ)⌋

end

end A026355.P16690869925093268410

namespace A026355

/-- `floor(a(n-1)/ϕ²+n+1)` -/
def P16690869925093268410.Spec : Prop :=
  ∀ n, P16690869925093268410.a n = A026355 n

end A026355

/-! ## A026355.P4978487644768912202

`floor((a(n-1)+n-1)/ϕ)+2` with `a(0)=1`
-/

namespace A026355.P4978487644768912202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) + ((n : ℤ) - 1) : ℝ) / Real.goldenRatio⌋ + 2

end

end A026355.P4978487644768912202

namespace A026355

/-- `floor((a(n-1)+n-1)/ϕ)+2` -/
def P4978487644768912202.Spec : Prop :=
  ∀ n, P4978487644768912202.a n = A026355 n

end A026355

/-! ## A026355.P3650251424323481173

`floor((1-n)²/a(n-1)+n+1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026355

/-- `floor((1-n)²/a(n-1)+n+1)` -/
def P3650251424323481173.Spec : Prop :=
  ∀ n, P3650251424323481173.a n = A026355 n

theorem P3650251424323481173.correct : P3650251424323481173.Spec := by
  intro n
  simp only [A026355]

end A026355

/-! ## A026355.P3954233192907912948

`a(n-1)-floor(a(n-1)/ϕ-n)` with `a(0)=1`
-/

namespace A026355.P3954233192907912948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - ⌊(a (n - 1) : ℝ) / Real.goldenRatio - (n : ℝ)⌋

end

end A026355.P3954233192907912948

namespace A026355

/-- `a(n-1)-floor(a(n-1)/ϕ-n)` -/
def P3954233192907912948.Spec : Prop :=
  ∀ n, P3954233192907912948.a n = A026355 n

end A026355

/-! ## A026355.P96577280805073978

`floor((n+1)/(n/a(n-1)+1)+n)` with `a(0)=1`
-/

namespace A026355.P96577280805073978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(n + 1 : ℚ) / ((n : ℚ) / (a (n - 1) : ℚ) + 1) + (n : ℚ)⌋

end

end A026355.P96577280805073978

namespace A026355

/-- `floor((n+1)/(n/a(n-1)+1)+n)` -/
def P96577280805073978.Spec : Prop :=
  ∀ n, P96577280805073978.a n = A026355 n

end A026355

/-! ## A026355.P17554216561488871912

`n-floor((n*(2-n)-2)/a(n-1))` with `a(0)=1`
-/

namespace A026355.P17554216561488871912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) - ⌊((n : ℤ) * (2 - (n : ℤ)) - 2 : ℚ) / (a (n - 1) : ℚ)⌋

end

end A026355.P17554216561488871912

namespace A026355

/-- `n-floor((n*(2-n)-2)/a(n-1))` -/
def P17554216561488871912.Spec : Prop :=
  ∀ n, P17554216561488871912.a n = A026355 n

end A026355

/-! ## A026355.P15714681137837230554

`n-floor(a(n-1)/((1-n)/a(n-1)-2))` with `a(0)=1`
-/

namespace A026355.P15714681137837230554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) - ⌊(a (n - 1) : ℚ) / ((1 - (n : ℤ) : ℚ) / (a (n - 1) : ℚ) - 2)⌋

end

end A026355.P15714681137837230554

namespace A026355

/-- `n-floor(a(n-1)/((1-n)/a(n-1)-2))` -/
def P15714681137837230554.Spec : Prop :=
  ∀ n, P15714681137837230554.a n = A026355 n

end A026355

/-! ## A026355.P16769774410220136621

`comp[A004957(n+1)]+1`
-/

namespace A026355.P16769774410220136621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A026355.P16769774410220136621

namespace A026355

/-- `comp[A004957(n+1)]+1` -/
def P16769774410220136621.Spec : Prop :=
  ∀ n, (P16769774410220136621.a n : ℤ) = A026355 n

end A026355

/-! ## A026355.P1439326145237701343

`comp[A026352(n+1)]+1`
-/

namespace A026355.P1439326145237701343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A026355.P1439326145237701343

namespace A026355

/-- `comp[A026352(n+1)]+1` -/
def P1439326145237701343.Spec : Prop :=
  ∀ n, (P1439326145237701343.a n : ℤ) = A026355 n

end A026355

/-! ## A026355.P14166887544353411855

`comp[A001950(n+1)+1]+1`
-/

namespace A026355.P14166887544353411855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A026355.P14166887544353411855

namespace A026355

/-- `comp[A001950(n+1)+1]+1` -/
def P14166887544353411855.Spec : Prop :=
  ∀ n, (P14166887544353411855.a n : ℤ) = A026355 n

end A026355

/-! ## A026355.P13968362479222775098

`comp[A003622(n+1)+2]+1`
-/

namespace A026355.P13968362479222775098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A026355.P13968362479222775098

namespace A026355

/-- `comp[A003622(n+1)+2]+1` -/
def P13968362479222775098.Spec : Prop :=
  ∀ n, (P13968362479222775098.a n : ℤ) = A026355 n

end A026355

/-! ## A026355.P14960823226013577068

`comp[A003231(n+1)-n]+1`
-/

namespace A026355.P14960823226013577068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003231 (n + 1) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A026355.P14960823226013577068

namespace A026355

/-- `comp[A003231(n+1)-n]+1` -/
def P14960823226013577068.Spec : Prop :=
  ∀ n, (P14960823226013577068.a n : ℤ) = A026355 n

end A026355

/-! ## A026355.P6871505805282563911

`∑[char[A003849(n)+3+n]+1]`
-/

namespace A026355.P6871505805282563911
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 n + 3 + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026355.P6871505805282563911

namespace A026355

/-- `∑[char[A003849(n)+3+n]+1]` -/
def P6871505805282563911.Spec : Prop :=
  ∀ n, (P6871505805282563911.a n : ℤ) = A026355 n

end A026355

/-! ## A026355.P5289834319135243561

`A001468(n-2)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A026355.P5289834319135243561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A001468 (n - 2) + a (n - 1)

end

end A026355.P5289834319135243561

namespace A026355

/-- `A001468(n-2)+a(n-1)` -/
def P5289834319135243561.Spec : Prop :=
  ∀ n, P5289834319135243561.a n = A026355 n

end A026355

/-! ## A026355.P7845981974195272841

`floor(A000032(C(2, 2*n+1))+ϕ*(n-1))`
-/

namespace A026355.P7845981974195272841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000032 (Nat.choose 2 (2 * n + 1)) : ℝ) + Real.goldenRatio * ((n : ℤ) - 1 : ℝ)⌋

end

end A026355.P7845981974195272841

namespace A026355

/-- `floor(A000032(C(2, 2*n+1))+ϕ*(n-1))` -/
def P7845981974195272841.Spec : Prop :=
  ∀ n, P7845981974195272841.a n = A026355 n

end A026355

/-!
# A026356: a(n) = floor((n-1)*phi) + n + 1, n > 0, where phi = (1+sqrt(5))/2.

The programs for A026356, the canonical program `A026356.P5106793333067476771` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026356 has offset 1).

The definition of A026356 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*ϕ)+n+2` (program `A026356.P5106793333067476771`, by `A026356.P5106793333067476771.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A026356.P5106793333067476771

`floor(n*ϕ)+n+2`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026356

/-- `floor(n*ϕ)+n+2` -/
def P5106793333067476771.Spec : Prop :=
  ∀ n, P5106793333067476771.a n = A026356 (n + 1)

theorem P5106793333067476771.correct : P5106793333067476771.Spec := by
  intro n
  simp only [A026356, Nat.add_sub_cancel]

end A026356

/-! ## A026356.P14406080401052020392

`abs(xor(comp[ceil(ϕ*n)], -1))`
-/

namespace A026356.P14406080401052020392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n : ℝ)⌉

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (-1)|

end

end A026356.P14406080401052020392

namespace A026356

/-- `abs(xor(comp[ceil(ϕ*n)], -1))` -/
def P14406080401052020392.Spec : Prop :=
  ∀ n, P14406080401052020392.a n = A026356 (n + 1)

end A026356

/-! ## A026356.P13552215731248760126

`-xor(comp[ceil(ϕ*n)], -1)`
-/

namespace A026356.P13552215731248760126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n : ℝ)⌉

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (-1)

end

end A026356.P13552215731248760126

namespace A026356

/-- `-xor(comp[ceil(ϕ*n)], -1)` -/
def P13552215731248760126.Spec : Prop :=
  ∀ n, P13552215731248760126.a n = A026356 (n + 1)

end A026356

/-! ## A026356.P15955548110214417020

`floor(Δ[lcm(n, n+1)]+n/ϕ)`
-/

namespace A026356.P15955548110214417020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ) + (n : ℝ) / Real.goldenRatio⌋

end

end A026356.P15955548110214417020

namespace A026356

/-- `floor(Δ[lcm(n, n+1)]+n/ϕ)` -/
def P15955548110214417020.Spec : Prop :=
  ∀ n, P15955548110214417020.a n = A026356 (n + 1)

end A026356

/-! ## A026356.P11686917425919114603

`floor((a(n-1)+1)/ϕ+n+2)` with `a(0)=2`
-/

namespace A026356.P11686917425919114603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌊(a (n - 1) + 1 : ℝ) / Real.goldenRatio + (n + 2 : ℝ)⌋

end

end A026356.P11686917425919114603

namespace A026356

/-- `floor((a(n-1)+1)/ϕ+n+2)` -/
def P11686917425919114603.Spec : Prop :=
  ∀ n, P11686917425919114603.a n = A026356 (n + 1)

end A026356

/-! ## A026356.P1030377424200838524

`(A288709(n+1)+1)/2`
-/

namespace A026356.P1030377424200838524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288709 (n + 1) + 1 : ℚ) / 2

end

end A026356.P1030377424200838524

namespace A026356

/-- `(A288709(n+1)+1)/2` -/
def P1030377424200838524.Spec : Prop :=
  ∀ n, P1030377424200838524.a n = (A026356 (n + 1) : ℚ)

end A026356

/-! ## A026356.P4295732465371788603

`(A284621(n+1)+3)/2`
-/

namespace A026356.P4295732465371788603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284621 (n + 1) + 3 : ℚ) / 2

end

end A026356.P4295732465371788603

namespace A026356

/-- `(A284621(n+1)+3)/2` -/
def P4295732465371788603.Spec : Prop :=
  ∀ n, P4295732465371788603.a n = (A026356 (n + 1) : ℚ)

end A026356

/-! ## A026356.P15792413932060490886

`(A284395(n+1)+4)/3`
-/

namespace A026356.P15792413932060490886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284395 (n + 1) + 4 : ℚ) / 3

end

end A026356.P15792413932060490886

namespace A026356

/-- `(A284395(n+1)+4)/3` -/
def P15792413932060490886.Spec : Prop :=
  ∀ n, P15792413932060490886.a n = (A026356 (n + 1) : ℚ)

end A026356

/-! ## A026356.P1895164827161625026

`(A047924(n)+1+n)/2`
-/

namespace A026356.P1895164827161625026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047924 n + 1 + (n : ℤ) : ℚ) / 2

end

end A026356.P1895164827161625026

namespace A026356

/-- `(A047924(n)+1+n)/2` -/
def P1895164827161625026.Spec : Prop :=
  ∀ n, P1895164827161625026.a n = (A026356 (n + 1) : ℚ)

end A026356

/-! ## A026356.P5137107637012301596

`∑[char[A004956(n+1)]+2]`
-/

namespace A026356.P5137107637012301596
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026356.P5137107637012301596

namespace A026356

/-- `∑[char[A004956(n+1)]+2]` -/
def P5137107637012301596.Spec : Prop :=
  ∀ n, (P5137107637012301596.a n : ℤ) = A026356 (n + 1)

end A026356

/-! ## A026356.P9110877904578744477

`A047925(n)%A047924(n)`
-/

namespace A026356.P9110877904578744477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047925 n) (A047924 n)

end

end A026356.P9110877904578744477

namespace A026356

/-- `A047925(n)%A047924(n)` -/
def P9110877904578744477.Spec : Prop :=
  ∀ n, P9110877904578744477.a n = A026356 (n + 1)

end A026356

/-! ## A026356.P7468565607329557679

`A007066(n+1)*A054977(n)`
-/

namespace A026356.P7468565607329557679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007066 (n + 1) * A054977 n

end

end A026356.P7468565607329557679

namespace A026356

/-- `A007066(n+1)*A054977(n)` -/
def P7468565607329557679.Spec : Prop :=
  ∀ n, P7468565607329557679.a n = A026356 (n + 1)

end A026356

/-! ## A026356.P3400763455138279860

`record[A002251(n)+2]`
-/

namespace A026356.P3400763455138279860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026356.P3400763455138279860

namespace A026356

/-- `record[A002251(n)+2]` -/
def P3400763455138279860.Spec : Prop :=
  ∀ n, P3400763455138279860.a n = A026356 (n + 1)

end A026356

/-! ## A026356.P9299097466013913664

`record[A019444(n+1)+1]`
-/

namespace A026356.P9299097466013913664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019444 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026356.P9299097466013913664

namespace A026356

/-- `record[A019444(n+1)+1]` -/
def P9299097466013913664.Spec : Prop :=
  ∀ n, P9299097466013913664.a n = A026356 (n + 1)

end A026356

/-! ## A026356.P4926799783982503089

`A004956(A026351(n))`
-/

namespace A026356.P4926799783982503089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 (A026351 n).toNat

end

end A026356.P4926799783982503089

namespace A026356

/-- `A004956(A026351(n))` -/
def P4926799783982503089.Spec : Prop :=
  ∀ n, P4926799783982503089.a n = A026356 (n + 1)

end A026356

/-!
# A026357: a(n) = sum of the numbers between the two n's in A026354.

The programs for A026357, the canonical program `A026357.P9448903342911315199` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026357 has offset 3).

The definition of A026357 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026357.P984534177888938457

`∑[Δ[n*floor(ϕ*n)]-abs(1-n)]`
-/

namespace A026357.P984534177888938457
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌊Real.goldenRatio * (n : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026357.P984534177888938457

namespace A026357

/-- `∑[Δ[n*floor(ϕ*n)]-abs(1-n)]` -/
def P984534177888938457.Spec : Prop :=
  ∀ n, P984534177888938457.a n = A026357 (n + 3)

end A026357

/-! ## A026357.P9448903342911315199

`A026353(n+2)+n`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A026357

/-- `A026353(n+2)+n` -/
def P9448903342911315199.Spec : Prop :=
  ∀ n, P9448903342911315199.a n = A026357 (n + 3)

theorem P9448903342911315199.correct : P9448903342911315199.Spec := by
  intro n
  simp only [A026357, Nat.add_sub_cancel]

end A026357

/-! ## A026357.P3093015193752757592

`A026271(n+1)+2*n`
-/

namespace A026357.P3093015193752757592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026271 (n + 1) + (2 * n : ℤ)

end

end A026357.P3093015193752757592

namespace A026357

/-- `A026271(n+1)+2*n` -/
def P3093015193752757592.Spec : Prop :=
  ∀ n, P3093015193752757592.a n = A026357 (n + 3)

end A026357

/-! ## A026357.P16663521887291484228

`∑[A002251(n)+2+n]-2`
-/

namespace A026357.P16663521887291484228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 n + 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A026357.P16663521887291484228

namespace A026357

/-- `∑[A002251(n)+2+n]-2` -/
def P16663521887291484228.Spec : Prop :=
  ∀ n, P16663521887291484228.a n = A026357 (n + 3)

end A026357

/-! ## A026357.P447019965050360581

`A293688(n)+A055998(n)`
-/

namespace A026357.P447019965050360581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293688 n + A055998 n

end

end A026357.P447019965050360581

namespace A026357

/-- `A293688(n)+A055998(n)` -/
def P447019965050360581.Spec : Prop :=
  ∀ n, P447019965050360581.a n = A026357 (n + 3)

end A026357

/-! ## A026357.P6608743508206042721

`A000096(n)+A293688(n)+n`
-/

namespace A026357.P6608743508206042721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n + (A293688 n + (n : ℤ))

end

end A026357.P6608743508206042721

namespace A026357

/-- `A000096(n)+A293688(n)+n` -/
def P6608743508206042721.Spec : Prop :=
  ∀ n, P6608743508206042721.a n = A026357 (n + 3)

end A026357

/-! ## A026357.P8302896922425790612

`∑[A087156(n+1)+A002251(n)]+n`
-/

namespace A026357.P8302896922425790612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (n + 1) + A002251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A026357.P8302896922425790612

namespace A026357

/-- `∑[A087156(n+1)+A002251(n)]+n` -/
def P8302896922425790612.Spec : Prop :=
  ∀ n, P8302896922425790612.a n = A026357 (n + 3)

end A026357

/-! ## A026357.P5942938723231585209

`(n+1)*A000201(n+1)-A152947(n+1)`
-/

namespace A026357.P5942938723231585209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000201 (n + 1) - A152947 (n + 1)

end

end A026357.P5942938723231585209

namespace A026357

/-- `(n+1)*A000201(n+1)-A152947(n+1)` -/
def P5942938723231585209.Spec : Prop :=
  ∀ n, P5942938723231585209.a n = A026357 (n + 3)

end A026357

/-!
# A026358: a(n) = a(m) if a(m) has already occurred exactly once and n = a(m)+2m-2, else a(n) = least positive integer that has not yet occurred.

The programs for A026358, there is no canonical definition to state claims against.
-/

/-! ## A026358.P4823823576831972437

`A057427(n)+A026366(A028310(n))`
-/

namespace A026358.P4823823576831972437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A026366 (A028310 n).toNat

end

end A026358.P4823823576831972437

/-! ## A026358.P7751913742520790272

`A026366(A028310(n))-A057428(n)`
-/

namespace A026358.P7751913742520790272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026366 (A028310 n).toNat - A057428 n

end

end A026358.P7751913742520790272

/-! ## A026358.P17119849770072709487

`A026366(A028310(n))+A062157(n)²`
-/

namespace A026358.P17119849770072709487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026366 (A028310 n).toNat + A062157 n ^ 2

end

end A026358.P17119849770072709487

/-! ## A026358.P11437222312058928244

`A026366(A028310(n))+A001221(A000961(n+1))`
-/

namespace A026358.P11437222312058928244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026366 (A028310 n).toNat + A001221 (A000961 (n + 1)).toNat

end

end A026358.P11437222312058928244

/-! ## A026358.P15065570800469807467

`A026366(A028310(n))-A062157(2*n)`
-/

namespace A026358.P15065570800469807467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026366 (A028310 n).toNat - A062157 (2 * n)

end

end A026358.P15065570800469807467

/-! ## A026358.P1175168048038408404

`A055396(A008574(n))+A026366(A028310(n))`
-/

namespace A026358.P1175168048038408404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A008574 n).toNat + A026366 (A028310 n).toNat

end

end A026358.P1175168048038408404

/-! ## A026358.P17553549973962188071

`∑{d}[A008578(n+1), A026366(A003963(#))]`
-/

namespace A026358.P17553549973962188071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A026366 (A003963 d).toNat

end

end A026358.P17553549973962188071

/-!
# A026359: a(n) = least k such that s(k) = n, where s = A026358.

The programs for A026359, the canonical program `A026359.P3570022919299884675` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026359 has offset 1).

The definition of A026359 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026359.P14229246953361582819

`comp[A026368(n+1)]+1`
-/

namespace A026359.P14229246953361582819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026368 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A026359.P14229246953361582819

namespace A026359

/-- `comp[A026368(n+1)]+1` -/
def P14229246953361582819.Spec : Prop :=
  ∀ n, (P14229246953361582819.a n : ℤ) = A026359 (n + 1)

end A026359

/-! ## A026359.P17786938039012131943

`(A026360(n+1)-(n-1))/2`
-/

namespace A026359.P17786938039012131943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026360 (n + 1) - ((n : ℤ) - 1) : ℚ) / 2

end

end A026359.P17786938039012131943

namespace A026359

/-- `(A026360(n+1)-(n-1))/2` -/
def P17786938039012131943.Spec : Prop :=
  ∀ n, P17786938039012131943.a n = (A026359 (n + 1) : ℚ)

end A026359

/-! ## A026359.P6482776864852310551

`comp[A284853(n+1)+1+n]+1`
-/

namespace A026359.P6482776864852310551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284853 (n + 1) + 1 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A026359.P6482776864852310551

namespace A026359

/-- `comp[A284853(n+1)+1+n]+1` -/
def P6482776864852310551.Spec : Prop :=
  ∀ n, (P6482776864852310551.a n : ℤ) = A026359 (n + 1)

end A026359

/-! ## A026359.P8227918158809950261

`comp[A284507(n+1)+2*(n+1)]+1`
-/

namespace A026359.P8227918158809950261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284507 (n + 1) + (2 * (n + 1) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A026359.P8227918158809950261

namespace A026359

/-- `comp[A284507(n+1)+2*(n+1)]+1` -/
def P8227918158809950261.Spec : Prop :=
  ∀ n, (P8227918158809950261.a n : ℤ) = A026359 (n + 1)

end A026359

/-! ## A026359.P15260338719173068456

`comp[A284506(2*(n+1))-(n+1)]+1`
-/

namespace A026359.P15260338719173068456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284506 (2 * (n + 1)) - (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A026359.P15260338719173068456

namespace A026359

/-- `comp[A284506(2*(n+1))-(n+1)]+1` -/
def P15260338719173068456.Spec : Prop :=
  ∀ n, (P15260338719173068456.a n : ℤ) = A026359 (n + 1)

end A026359

/-! ## A026359.P5608388363290241973

`comp[A026367(A284853(n+1))+1]+1`
-/

namespace A026359.P5608388363290241973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026367 (A284853 (n + 1)).toNat + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A026359.P5608388363290241973

namespace A026359

/-- `comp[A026367(A284853(n+1))+1]+1` -/
def P5608388363290241973.Spec : Prop :=
  ∀ n, (P5608388363290241973.a n : ℤ) = A026359 (n + 1)

end A026359

/-! ## A026359.P4434835354977488476

`A026367(n+1)-char[A284853(n+1)]`
-/

namespace A026359.P4434835354977488476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284853 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026367 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A026359.P4434835354977488476

namespace A026359

/-- `A026367(n+1)-char[A284853(n+1)]` -/
def P4434835354977488476.Spec : Prop :=
  ∀ n, P4434835354977488476.a n = A026359 (n + 1)

end A026359

/-! ## A026359.P3570022919299884675

`A057427(n)+A026367(A028310(n))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A026359

/-- `A057427(n)+A026367(A028310(n))` -/
def P3570022919299884675.Spec : Prop :=
  ∀ n, P3570022919299884675.a n = A026359 (n + 1)

theorem P3570022919299884675.correct : P3570022919299884675.Spec := by
  intro n
  simp only [A026359, Nat.add_sub_cancel]

end A026359

/-! ## A026359.P9798405323635940512

`record[(n+1)*A285431(n+1)]-char[A284853(n+1)]`
-/

namespace A026359.P9798405323635940512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A285431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284853 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A026359.P9798405323635940512

namespace A026359

/-- `record[(n+1)*A285431(n+1)]-char[A284853(n+1)]` -/
def P9798405323635940512.Spec : Prop :=
  ∀ n, P9798405323635940512.a n = A026359 (n + 1)

end A026359

/-! ## A026359.P1966589144060514678

`record[A052938(A284851(n+1)+n)]`
-/

namespace A026359.P1966589144060514678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A284851 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026359.P1966589144060514678

namespace A026359

/-- `record[A052938(A284851(n+1)+n)]` -/
def P1966589144060514678.Spec : Prop :=
  ∀ n, P1966589144060514678.a n = A026359 (n + 1)

end A026359

/-! ## A026359.P9243562743738547841

`record[A284851(n+1)+A065033(n)]`
-/

namespace A026359.P9243562743738547841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284851 (n + 1) + A065033 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026359.P9243562743738547841

namespace A026359

/-- `record[A284851(n+1)+A065033(n)]` -/
def P9243562743738547841.Spec : Prop :=
  ∀ n, P9243562743738547841.a n = A026359 (n + 1)

end A026359

/-! ## A026359.P16660449871504941140

`record[A284851(n+1)+A032742(n+1)]`
-/

namespace A026359.P16660449871504941140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284851 (n + 1) + A032742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026359.P16660449871504941140

namespace A026359

/-- `record[A284851(n+1)+A032742(n+1)]` -/
def P16660449871504941140.Spec : Prop :=
  ∀ n, P16660449871504941140.a n = A026359 (n + 1)

end A026359

/-! ## A026359.P13481966240727785728

`record[A028242(A286389(A004273(n)))]`
-/

namespace A026359.P13481966240727785728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A286389 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026359.P13481966240727785728

namespace A026359

/-- `record[A028242(A286389(A004273(n)))]` -/
def P13481966240727785728.Spec : Prop :=
  ∀ n, P13481966240727785728.a n = A026359 (n + 1)

end A026359

/-! ## A026359.P255718044142174841

`record[A028242(A286389(A006257(n)))]`
-/

namespace A026359.P255718044142174841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A286389 (A006257 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026359.P255718044142174841

namespace A026359

/-- `record[A028242(A286389(A006257(n)))]` -/
def P255718044142174841.Spec : Prop :=
  ∀ n, P255718044142174841.a n = A026359 (n + 1)

end A026359

/-! ## A026359.P11097840054837256637

`A026358(A026360(n+1)+1)/2`
-/

namespace A026359.P11097840054837256637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026358 (A026360 (n + 1) + 1).toNat : ℚ) / 2

end

end A026359.P11097840054837256637

namespace A026359

/-- `A026358(A026360(n+1)+1)/2` -/
def P11097840054837256637.Spec : Prop :=
  ∀ n, P11097840054837256637.a n = (A026359 (n + 1) : ℚ)

end A026359

/-! ## A026359.P13189643567825284643

`A008620(A284658(a(n-1)+n+1))` with `a(0)=1`
-/

namespace A026359.P13189643567825284643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008620 (A284658 (a (n - 1) + (n : ℤ) + 1).toNat).toNat

end

end A026359.P13189643567825284643

namespace A026359

/-- `A008620(A284658(a(n-1)+n+1))` -/
def P13189643567825284643.Spec : Prop :=
  ∀ n, P13189643567825284643.a n = A026359 (n + 1)

end A026359

/-! ## A026359.P9726626632864412574

`record[A032742(A284852(2*(n+1)))-n]`
-/

namespace A026359.P9726626632864412574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A284852 (2 * (n + 1))).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026359.P9726626632864412574

namespace A026359

/-- `record[A032742(A284852(2*(n+1)))-n]` -/
def P9726626632864412574.Spec : Prop :=
  ∀ n, P9726626632864412574.a n = A026359 (n + 1)

end A026359

/-!
# A026360: a(n) = greatest k such that s(k) = n, where s = A026358.

The programs for A026360, the canonical program `A026360.P12649275342122522798` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026360 has offset 1).

The definition of A026360 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026360.P12649275342122522798

`2*A026359(n+1)-1+n`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A026360

/-- `2*A026359(n+1)-1+n` -/
def P12649275342122522798.Spec : Prop :=
  ∀ n, P12649275342122522798.a n = A026360 (n + 1)

theorem P12649275342122522798.correct : P12649275342122522798.Spec := by
  intro n
  simp only [A026360, Nat.add_sub_cancel]

end A026360

/-! ## A026360.P9867030228215745632

`A023443(n)+2*A026359(n+1)`
-/

namespace A026360.P9867030228215745632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 n + 2 * A026359 (n + 1)

end

end A026360.P9867030228215745632

namespace A026360

/-- `A023443(n)+2*A026359(n+1)` -/
def P9867030228215745632.Spec : Prop :=
  ∀ n, P9867030228215745632.a n = A026360 (n + 1)

end A026360

/-! ## A026360.P14052484067138604963

`A004273(A026359(n+1))+n`
-/

namespace A026360.P14052484067138604963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A026359 (n + 1)).toNat + (n : ℤ)

end

end A026360.P14052484067138604963

namespace A026360

/-- `A004273(A026359(n+1))+n` -/
def P14052484067138604963.Spec : Prop :=
  ∀ n, P14052484067138604963.a n = A026360 (n + 1)

end A026360

/-! ## A026360.P3398373194623420231

`A284773(A026359(n+1)+n)`
-/

namespace A026360.P3398373194623420231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284773 (A026359 (n + 1) + (n : ℤ)).toNat

end

end A026360.P3398373194623420231

namespace A026360

/-- `A284773(A026359(n+1)+n)` -/
def P3398373194623420231.Spec : Prop :=
  ∀ n, P3398373194623420231.a n = A026360 (n + 1)

end A026360

/-! ## A026360.P8920661423595106957

`A026359(n+1)+A023443(A026359(n+1)+n)`
-/

namespace A026360.P8920661423595106957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026359 (n + 1) + A023443 (A026359 (n + 1) + (n : ℤ)).toNat

end

end A026360.P8920661423595106957

namespace A026360

/-- `A026359(n+1)+A023443(A026359(n+1)+n)` -/
def P8920661423595106957.Spec : Prop :=
  ∀ n, P8920661423595106957.a n = A026360 (n + 1)

end A026360

/-! ## A026360.P17487577406903628115

`A026359(2*A026359(n+1))-1`
-/

namespace A026360.P17487577406903628115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026359 (2 * A026359 (n + 1)).toNat - 1

end

end A026360.P17487577406903628115

namespace A026360

/-- `A026359(2*A026359(n+1))-1` -/
def P17487577406903628115.Spec : Prop :=
  ∀ n, P17487577406903628115.a n = A026360 (n + 1)

end A026360

/-! ## A026360.P8317999366742125251

`record[A278539(A284852(2*(n+1)))]`
-/

namespace A026360.P8317999366742125251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278539 (A284852 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026360.P8317999366742125251

namespace A026360

/-- `record[A278539(A284852(2*(n+1)))]` -/
def P8317999366742125251.Spec : Prop :=
  ∀ n, P8317999366742125251.a n = A026360 (n + 1)

end A026360

/-! ## A026360.P1342821459859614371

`record[abs(A110514(A284852(n+1)))]`
-/

namespace A026360.P1342821459859614371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A110514 (A284852 (n + 1)).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026360.P1342821459859614371

namespace A026360

/-- `record[abs(A110514(A284852(n+1)))]` -/
def P1342821459859614371.Spec : Prop :=
  ∀ n, P1342821459859614371.a n = A026360 (n + 1)

end A026360

/-! ## A026360.P6576197355765757195

`record[A032742(A284852(n+1)+2)]`
-/

namespace A026360.P6576197355765757195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A284852 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026360.P6576197355765757195

namespace A026360

/-- `record[A032742(A284852(n+1)+2)]` -/
def P6576197355765757195.Spec : Prop :=
  ∀ n, P6576197355765757195.a n = A026360 (n + 1)

end A026360

/-! ## A026360.P699127802350219292

`record[A057979(A284852(n+1)+3)]`
-/

namespace A026360.P699127802350219292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A284852 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026360.P699127802350219292

namespace A026360

/-- `record[A057979(A284852(n+1)+3)]` -/
def P699127802350219292.Spec : Prop :=
  ∀ n, P699127802350219292.a n = A026360 (n + 1)

end A026360

/-!
# A026361: a(n) = sum of the numbers between the two n's in A026358.

The programs for A026361, there is no canonical definition to state claims against.
-/

/-! ## A026361.P17844151345726476647

`A026367(n+1)+A026369(n+1)+n`
-/

namespace A026361.P17844151345726476647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026367 (n + 1) + (A026369 (n + 1) + (n : ℤ))

end

end A026361.P17844151345726476647

/-! ## A026361.P12480136651826542923

`A269818(n+2)+A070939(A269811(n))`
-/

namespace A026361.P12480136651826542923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269818 (n + 2) + A070939 (A269811 n).toNat

end

end A026361.P12480136651826542923

/-!
# A026362: a(n) = a(m) if a(m) has already occurred exactly once and n = a(m)+2m-1, else a(n) = least positive integer that has not yet occurred.

The programs for A026362, the canonical program `A026362.P625232870546419862` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026362 has offset 1).

The definition of A026362 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026362.P6945861823021406267

`val(∏[A080428(n+1)], A285430(n+1)+2)`
-/

namespace A026362.P6945861823021406267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080428 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ j ∈ Finset.range (n + 1), f1 j).toNat (A285430 (n + 1) + 2).toNat

end

end A026362.P6945861823021406267

namespace A026362

/-- `val(∏[A080428(n+1)], A285430(n+1)+2)` -/
def P6945861823021406267.Spec : Prop :=
  ∀ n, (P6945861823021406267.a n : ℤ) = A026362 (n + 1)

end A026362

/-! ## A026362.P3355889013753467377

`val(∏[A284751(2*(n+1))+2], A080428(n+1))`
-/

namespace A026362.P3355889013753467377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284751 (2 * (n + 1)) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ j ∈ Finset.range (n + 1), f1 j).toNat (A080428 (n + 1)).toNat

end

end A026362.P3355889013753467377

namespace A026362

/-- `val(∏[A284751(2*(n+1))+2], A080428(n+1))` -/
def P3355889013753467377.Spec : Prop :=
  ∀ n, (P3355889013753467377.a n : ℤ) = A026362 (n + 1)

end A026362

/-! ## A026362.P625232870546419862

`val(∏[A284751(2*(n+1))+2], Δ[A079255(n+1)])`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A026362

/-- `val(∏[A284751(2*(n+1))+2], Δ[A079255(n+1)])` -/
def P625232870546419862.Spec : Prop :=
  ∀ n, (P625232870546419862.a n : ℤ) = A026362 (n + 1)

theorem P625232870546419862.correct : P625232870546419862.Spec := by
  intro n
  simp only [A026362, Nat.add_sub_cancel]

end A026362

/-! ## A026362.P11291359491791650211

`val(∏[A284751(2*(n+1))+2], Δ[A080902(n+2)])`
-/

namespace A026362.P11291359491791650211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284751 (2 * (n + 1)) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080902 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ j ∈ Finset.range (n + 1), f1 j).toNat (f2 (n + 1) - f2 n).toNat

end

end A026362.P11291359491791650211

namespace A026362

/-- `val(∏[A284751(2*(n+1))+2], Δ[A080902(n+2)])` -/
def P11291359491791650211.Spec : Prop :=
  ∀ n, (P11291359491791650211.a n : ℤ) = A026362 (n + 1)

end A026362

/-! ## A026362.P11963154539774133980

`val(∏[A284751(2*(n+1))+2], A285430(n+1)+2)`
-/

namespace A026362.P11963154539774133980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284751 (2 * (n + 1)) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ j ∈ Finset.range (n + 1), f1 j).toNat (A285430 (n + 1) + 2).toNat

end

end A026362.P11963154539774133980

namespace A026362

/-- `val(∏[A284751(2*(n+1))+2], A285430(n+1)+2)` -/
def P11963154539774133980.Spec : Prop :=
  ∀ n, (P11963154539774133980.a n : ℤ) = A026362 (n + 1)

end A026362

/-!
# A026363: a(n) is the least k such that s(k) = n, where s = A026362.

The programs for A026363, the canonical program `A026363.P14993341173863048355` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026363 has offset 1).

The definition of A026363 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026363.P14993341173863048355

`floor(a(n-1)+(n+1)/a(a(n-1)-n))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026363

/-- `floor(a(n-1)+(n+1)/a(a(n-1)-n))` -/
def P14993341173863048355.Spec : Prop :=
  ∀ n, P14993341173863048355.a n = A026363 (n + 1)

theorem P14993341173863048355.correct : P14993341173863048355.Spec := by
  intro n
  simp only [A026363, Nat.add_sub_cancel]

end A026363

/-! ## A026363.P15273720708624858964

`A284753(n+1)/2`
-/

namespace A026363.P15273720708624858964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284753 (n + 1) : ℚ) / 2

end

end A026363.P15273720708624858964

namespace A026363

/-- `A284753(n+1)/2` -/
def P15273720708624858964.Spec : Prop :=
  ∀ n, P15273720708624858964.a n = (A026363 (n + 1) : ℚ)

end A026363

/-! ## A026363.P9270042560240324803

`ceil(A086398(n+1)/2)`
-/

namespace A026363.P9270042560240324803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A086398 (n + 1) : ℚ) / 2⌉

end

end A026363.P9270042560240324803

namespace A026363

/-- `ceil(A086398(n+1)/2)` -/
def P9270042560240324803.Spec : Prop :=
  ∀ n, P9270042560240324803.a n = A026363 (n + 1)

end A026363

/-! ## A026363.P1255233905059358897

`∑[A284751(n+1)+1]`
-/

namespace A026363.P1255233905059358897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284751 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026363.P1255233905059358897

namespace A026363

/-- `∑[A284751(n+1)+1]` -/
def P1255233905059358897.Spec : Prop :=
  ∀ n, P1255233905059358897.a n = A026363 (n + 1)

end A026363

/-! ## A026363.P7805856918820287930

`(A026364(n+1)-n)/2`
-/

namespace A026363.P7805856918820287930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026364 (n + 1) - (n : ℤ) : ℚ) / 2

end

end A026363.P7805856918820287930

namespace A026363

/-- `(A026364(n+1)-n)/2` -/
def P7805856918820287930.Spec : Prop :=
  ∀ n, P7805856918820287930.a n = (A026363 (n + 1) : ℚ)

end A026363

/-! ## A026363.P1005602171940376309

`comp[comp[A285302(n+1)]+n]`
-/

namespace A026363.P1005602171940376309
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285302 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A026363.P1005602171940376309

namespace A026363

/-- `comp[comp[A285302(n+1)]+n]` -/
def P1005602171940376309.Spec : Prop :=
  ∀ n, (P1005602171940376309.a n : ℤ) = A026363 (n + 1)

end A026363

/-! ## A026363.P11582404281557295310

`(A284371(n+1)+n+1)/2`
-/

namespace A026363.P11582404281557295310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284371 (n + 1) + (n + 1 : ℤ) : ℚ) / 2

end

end A026363.P11582404281557295310

namespace A026363

/-- `(A284371(n+1)+n+1)/2` -/
def P11582404281557295310.Spec : Prop :=
  ∀ n, P11582404281557295310.a n = (A026363 (n + 1) : ℚ)

end A026363

/-! ## A026363.P16248349476737419350

`a(n-1)+A285301(n)+1` with `a(0)=1`
-/

namespace A026363.P16248349476737419350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A285301 n + 1)

end

end A026363.P16248349476737419350

namespace A026363

/-- `a(n-1)+A285301(n)+1` -/
def P16248349476737419350.Spec : Prop :=
  ∀ n, P16248349476737419350.a n = A026363 (n + 1)

end A026363

/-! ## A026363.P11401015623926981305

`∑[A285301(n+1)+1]-A285301(n+1)`
-/

namespace A026363.P11401015623926981305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285301 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A285301 (n + 1)

end

end A026363.P11401015623926981305

namespace A026363

/-- `∑[A285301(n+1)+1]-A285301(n+1)` -/
def P11401015623926981305.Spec : Prop :=
  ∀ n, P11401015623926981305.a n = A026363 (n + 1)

end A026363

/-! ## A026363.P14877536420373250321

`∑[Δ[A080903(n+1)]/2]`
-/

namespace A026363.P14877536420373250321
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080903 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026363.P14877536420373250321

namespace A026363

/-- `∑[Δ[A080903(n+1)]/2]` -/
def P14877536420373250321.Spec : Prop :=
  ∀ n, P14877536420373250321.a n = (A026363 (n + 1) : ℚ)

end A026363

/-! ## A026363.P5942169907397809815

`filter[n+1, A285430(#)]`
-/

namespace A026363.P5942169907397809815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285430 (f1 j) = 1) n)

end

end A026363.P5942169907397809815

namespace A026363

/-- `filter[n+1, A285430(#)]` -/
def P5942169907397809815.Spec : Prop :=
  ∀ n, (P5942169907397809815.a n : ℤ) = A026363 (n + 1)

end A026363

/-! ## A026363.P12504792484767695986

`eq[1, A285430(n+1)]+1`
-/

namespace A026363.P12504792484767695986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285430 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A026363.P12504792484767695986

namespace A026363

/-- `eq[1, A285430(n+1)]+1` -/
def P12504792484767695986.Spec : Prop :=
  ∀ n, (P12504792484767695986.a n : ℤ) = A026363 (n + 1)

end A026363

/-! ## A026363.P8838462071581009192

`lt[char[A284753(n+1)+n], A057427(n)]`
-/

namespace A026363.P8838462071581009192
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284753 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A026363.P8838462071581009192

namespace A026363

/-- `lt[char[A284753(n+1)+n], A057427(n)]` -/
def P8838462071581009192.Spec : Prop :=
  ∀ n, (P8838462071581009192.a n : ℤ) = A026363 (n + 1)

end A026363

/-! ## A026363.P3634438697600931757

`A284370(2*n+1)/2-n`
-/

namespace A026363.P3634438697600931757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284370 (2 * n + 1) : ℚ) / 2 - (n : ℚ)

end

end A026363.P3634438697600931757

namespace A026363

/-- `A284370(2*n+1)/2-n` -/
def P3634438697600931757.Spec : Prop :=
  ∀ n, P3634438697600931757.a n = (A026363 (n + 1) : ℚ)

end A026363

/-! ## A026363.P15005261134828211800

`lt[A284369(2*n+1), 1]-n`
-/

namespace A026363.P15005261134828211800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284369 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - (n : ℤ)

end

end A026363.P15005261134828211800

namespace A026363

/-- `lt[A284369(2*n+1), 1]-n` -/
def P15005261134828211800.Spec : Prop :=
  ∀ n, P15005261134828211800.a n = A026363 (n + 1)

end A026363

/-! ## A026363.P95548052656508604

`A285302(A284371(n+1))/2`
-/

namespace A026363.P95548052656508604
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285302 (A284371 (n + 1)).toNat : ℚ) / 2

end

end A026363.P95548052656508604

namespace A026363

/-- `A285302(A284371(n+1))/2` -/
def P95548052656508604.Spec : Prop :=
  ∀ n, P95548052656508604.a n = (A026363 (n + 1) : ℚ)

end A026363

/-! ## A026363.P5345738683292913477

`eq[1, A284751(2*(n+1))]+1`
-/

namespace A026363.P5345738683292913477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284751 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A026363.P5345738683292913477

namespace A026363

/-- `eq[1, A284751(2*(n+1))]+1` -/
def P5345738683292913477.Spec : Prop :=
  ∀ n, (P5345738683292913477.a n : ℤ) = A026363 (n + 1)

end A026363

/-!
# A026364: a(n) = greatest k such that s(k) = n, where s = A026362.

The programs for A026364, the canonical program `A026364.P4351493388388613125` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026364 has offset 1).

The definition of A026364 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026364.P8725297888619243331

`A284753(n+1)+n`
-/

namespace A026364.P8725297888619243331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284753 (n + 1) + (n : ℤ)

end

end A026364.P8725297888619243331

namespace A026364

/-- `A284753(n+1)+n` -/
def P8725297888619243331.Spec : Prop :=
  ∀ n, P8725297888619243331.a n = A026364 (n + 1)

end A026364

/-! ## A026364.P4638173573344707769

`A086398(n+1)+1+n`
-/

namespace A026364.P4638173573344707769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086398 (n + 1) + 1 + (n : ℤ)

end

end A026364.P4638173573344707769

namespace A026364

/-- `A086398(n+1)+1+n` -/
def P4638173573344707769.Spec : Prop :=
  ∀ n, P4638173573344707769.a n = A026364 (n + 1)

end A026364

/-! ## A026364.P4351493388388613125

`2*A026363(n+1)+n`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A026364

/-- `2*A026363(n+1)+n` -/
def P4351493388388613125.Spec : Prop :=
  ∀ n, P4351493388388613125.a n = A026364 (n + 1)

theorem P4351493388388613125.correct : P4351493388388613125.Spec := by
  intro n
  simp only [A026364, Nat.add_sub_cancel]

end A026364

/-! ## A026364.P14855526887014874614

`A284371(n+1)+Δ[n²]`
-/

namespace A026364.P14855526887014874614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284371 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A026364.P14855526887014874614

namespace A026364

/-- `A284371(n+1)+Δ[n²]` -/
def P14855526887014874614.Spec : Prop :=
  ∀ n, P14855526887014874614.a n = A026364 (n + 1)

end A026364

/-! ## A026364.P15953600672151636735

`A080903(n+2)-1+n`
-/

namespace A026364.P15953600672151636735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080903 (n + 2) - 1 + (n : ℤ)

end

end A026364.P15953600672151636735

namespace A026364

/-- `A080903(n+2)-1+n` -/
def P15953600672151636735.Spec : Prop :=
  ∀ n, P15953600672151636735.a n = A026364 (n + 1)

end A026364

/-! ## A026364.P13287537417639385894

`∑[abs(Δ[A080903(n+1)])]+n`
-/

namespace A026364.P13287537417639385894
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080903 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A026364.P13287537417639385894

namespace A026364

/-- `∑[abs(Δ[A080903(n+1)])]+n` -/
def P13287537417639385894.Spec : Prop :=
  ∀ n, P13287537417639385894.a n = A026364 (n + 1)

end A026364

/-! ## A026364.P6422058150108119102

`A080903(n+2)+A023444(n+1)`
-/

namespace A026364.P6422058150108119102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080903 (n + 2) + A023444 (n + 1)

end

end A026364.P6422058150108119102

namespace A026364

/-- `A080903(n+2)+A023444(n+1)` -/
def P6422058150108119102.Spec : Prop :=
  ∀ n, P6422058150108119102.a n = A026364 (n + 1)

end A026364

/-! ## A026364.P17028019578276747177

`A079255(A026363(n+1))+1`
-/

namespace A026364.P17028019578276747177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079255 (A026363 (n + 1)).toNat + 1

end

end A026364.P17028019578276747177

namespace A026364

/-- `A079255(A026363(n+1))+1` -/
def P17028019578276747177.Spec : Prop :=
  ∀ n, P17028019578276747177.a n = A026364 (n + 1)

end A026364

/-! ## A026364.P6498201861957323875

`A284370(Δ[n²])-n`
-/

namespace A026364.P6498201861957323875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284370 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ)

end

end A026364.P6498201861957323875

namespace A026364

/-- `A284370(Δ[n²])-n` -/
def P6498201861957323875.Spec : Prop :=
  ∀ n, P6498201861957323875.a n = A026364 (n + 1)

end A026364

/-! ## A026364.P9039578169981268951

`abs(A284370(2*n+1)-n)`
-/

namespace A026364.P9039578169981268951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A284370 (2 * n + 1) - (n : ℤ)|

end

end A026364.P9039578169981268951

namespace A026364

/-- `abs(A284370(2*n+1)-n)` -/
def P9039578169981268951.Spec : Prop :=
  ∀ n, P9039578169981268951.a n = A026364 (n + 1)

end A026364

/-! ## A026364.P2898237181151387389

`A285302(A284371(n+1))+n`
-/

namespace A026364.P2898237181151387389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285302 (A284371 (n + 1)).toNat + (n : ℤ)

end

end A026364.P2898237181151387389

namespace A026364

/-- `A285302(A284371(n+1))+n` -/
def P2898237181151387389.Spec : Prop :=
  ∀ n, P2898237181151387389.a n = A026364 (n + 1)

end A026364

/-! ## A026364.P14540139214078995299

`A187484(A284753(n+1))`
-/

namespace A026364.P14540139214078995299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187484 (A284753 (n + 1)).toNat

end

end A026364.P14540139214078995299

namespace A026364

/-- `A187484(A284753(n+1))` -/
def P14540139214078995299.Spec : Prop :=
  ∀ n, P14540139214078995299.a n = A026364 (n + 1)

end A026364

/-! ## A026364.P3251923092524688668

`A026363(A086398(n+1))+1`
-/

namespace A026364.P3251923092524688668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026363 (A086398 (n + 1)).toNat + 1

end

end A026364.P3251923092524688668

namespace A026364

/-- `A026363(A086398(n+1))+1` -/
def P3251923092524688668.Spec : Prop :=
  ∀ n, P3251923092524688668.a n = A026364 (n + 1)

end A026364

/-! ## A026364.P1775116758597789660

`A052928(A187480(2*n+1))+n+2`
-/

namespace A026364.P1775116758597789660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A187480 (2 * n + 1)).toNat + (n + 2 : ℤ)

end

end A026364.P1775116758597789660

namespace A026364

/-- `A052928(A187480(2*n+1))+n+2` -/
def P1775116758597789660.Spec : Prop :=
  ∀ n, P1775116758597789660.a n = A026364 (n + 1)

end A026364

/-! ## A026364.P8363603035309324081

`A026363(A080903(n+2))-2`
-/

namespace A026364.P8363603035309324081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026363 (A080903 (n + 2)).toNat - 2

end

end A026364.P8363603035309324081

namespace A026364

/-- `A026363(A080903(n+2))-2` -/
def P8363603035309324081.Spec : Prop :=
  ∀ n, P8363603035309324081.a n = A026364 (n + 1)

end A026364

/-! ## A026364.P9975595865256585994

`lt[A285430(n+1), 1]+1`
-/

namespace A026364.P9975595865256585994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285430 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A026364.P9975595865256585994

namespace A026364

/-- `lt[A285430(n+1), 1]+1` -/
def P9975595865256585994.Spec : Prop :=
  ∀ n, (P9975595865256585994.a n : ℤ) = A026364 (n + 1)

end A026364

/-! ## A026364.P18167676522264591874

`eq[0, A285430(A028310(n))]`
-/

namespace A026364.P18167676522264591874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285430 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A026364.P18167676522264591874

namespace A026364

/-- `eq[0, A285430(A028310(n))]` -/
def P18167676522264591874.Spec : Prop :=
  ∀ n, (P18167676522264591874.a n : ℤ) = A026364 (n + 1)

end A026364

/-! ## A026364.P6055720736237622473

`A008619(A187481(2*n+1))`
-/

namespace A026364.P6055720736237622473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A187481 (2 * n + 1)).toNat

end

end A026364.P6055720736237622473

namespace A026364

/-- `A008619(A187481(2*n+1))` -/
def P6055720736237622473.Spec : Prop :=
  ∀ n, P6055720736237622473.a n = A026364 (n + 1)

end A026364

/-! ## A026364.P4498348192194704488

`eq[0, A284751(2*(n+1))]+1`
-/

namespace A026364.P4498348192194704488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284751 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A026364.P4498348192194704488

namespace A026364

/-- `eq[0, A284751(2*(n+1))]+1` -/
def P4498348192194704488.Spec : Prop :=
  ∀ n, (P4498348192194704488.a n : ℤ) = A026364 (n + 1)

end A026364

/-!
# A026366: a(n) = a(m) if a(m) has already occurred exactly once and n = a(m)+2m, else a(n) = least positive integer that has not yet occurred.

The programs for A026366, there is no canonical definition to state claims against.
-/

/-! ## A026366.P15986938054082610929

`A026358(n+2)-1`
-/

namespace A026366.P15986938054082610929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026358 (n + 2) - 1

end

end A026366.P15986938054082610929

/-! ## A026366.P12963825264345762653

`A023443(A026358(n+2))`
-/

namespace A026366.P12963825264345762653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A026358 (n + 2)).toNat

end

end A026366.P12963825264345762653

/-! ## A026366.P833262254688532261

`A003963(p?[A008578(A026358(n+1))])`
-/

namespace A026366.P833262254688532261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A026358 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A026366.P833262254688532261

/-! ## A026366.P13990960347997192361

`A055396(p?[A008578(A026358(n+1))])`
-/

namespace A026366.P13990960347997192361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A026358 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A026366.P13990960347997192361

/-! ## A026366.P4210763243805034321

`A056239(p?[A008578(A026358(n+1))])`
-/

namespace A026366.P4210763243805034321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A026358 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A026366.P4210763243805034321

/-!
# A026367: a(n) = least k such that s(k) = n, where s = A026366.

The programs for A026367, the canonical program `A026367.P15574987113732587765` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026367 has offset 1).

The definition of A026367 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026367.P15574987113732587765

`floor(a(n-1)+n/a(a(n-1)-n))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026367

/-- `floor(a(n-1)+n/a(a(n-1)-n))` -/
def P15574987113732587765.Spec : Prop :=
  ∀ n, P15574987113732587765.a n = A026367 (n + 1)

theorem P15574987113732587765.correct : P15574987113732587765.Spec := by
  intro n
  simp only [A026367, Nat.add_sub_cancel]

end A026367

/-! ## A026367.P15063080906101263034

`A284853(n+1)/2`
-/

namespace A026367.P15063080906101263034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284853 (n + 1) : ℚ) / 2

end

end A026367.P15063080906101263034

namespace A026367

/-- `A284853(n+1)/2` -/
def P15063080906101263034.Spec : Prop :=
  ∀ n, P15063080906101263034.a n = (A026367 (n + 1) : ℚ)

end A026367

/-! ## A026367.P13303756059502371057

`A283964(n+1)-(n+1)`
-/

namespace A026367.P13303756059502371057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283964 (n + 1) - (n + 1 : ℤ)

end

end A026367.P13303756059502371057

namespace A026367

/-- `A283964(n+1)-(n+1)` -/
def P13303756059502371057.Spec : Prop :=
  ∀ n, P13303756059502371057.a n = A026367 (n + 1)

end A026367

/-! ## A026367.P16031936637995900828

`comp[A026368(n+1)-1]+1`
-/

namespace A026367.P16031936637995900828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026368 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A026367.P16031936637995900828

namespace A026367

/-- `comp[A026368(n+1)-1]+1` -/
def P16031936637995900828.Spec : Prop :=
  ∀ n, (P16031936637995900828.a n : ℤ) = A026367 (n + 1)

end A026367

/-! ## A026367.P2106489189503377089

`ceil((A284507(n+1)+n)/2)`
-/

namespace A026367.P2106489189503377089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A284507 (n + 1) + (n : ℤ) : ℚ) / 2⌉

end

end A026367.P2106489189503377089

namespace A026367

/-- `ceil((A284507(n+1)+n)/2)` -/
def P2106489189503377089.Spec : Prop :=
  ∀ n, P2106489189503377089.a n = A026367 (n + 1)

end A026367

/-! ## A026367.P7476611113560969977

`a(n-1)+A284851(n)+1` with `a(0)=1`
-/

namespace A026367.P7476611113560969977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A284851 n + 1)

end

end A026367.P7476611113560969977

namespace A026367

/-- `a(n-1)+A284851(n)+1` -/
def P7476611113560969977.Spec : Prop :=
  ∀ n, P7476611113560969977.a n = A026367 (n + 1)

end A026367

/-! ## A026367.P18363052519926424072

`A286389(A004526(n))+1+n`
-/

namespace A026367.P18363052519926424072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286389 (A004526 n).toNat + 1 + (n : ℤ)

end

end A026367.P18363052519926424072

namespace A026367

/-- `A286389(A004526(n))+1+n` -/
def P18363052519926424072.Spec : Prop :=
  ∀ n, P18363052519926424072.a n = A026367 (n + 1)

end A026367

/-! ## A026367.P18019684704386409252

`A026368(n+1)%A283964(n+1)`
-/

namespace A026367.P18019684704386409252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026368 (n + 1)) (A283964 (n + 1))

end

end A026367.P18019684704386409252

namespace A026367

/-- `A026368(n+1)%A283964(n+1)` -/
def P18019684704386409252.Spec : Prop :=
  ∀ n, P18019684704386409252.a n = A026367 (n + 1)

end A026367

/-! ## A026367.P13669010278899531759

`(A026368(n+1)+A001478(n+1))/2`
-/

namespace A026367.P13669010278899531759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026368 (n + 1) + A001478 (n + 1) : ℚ) / 2

end

end A026367.P13669010278899531759

namespace A026367

/-- `(A026368(n+1)+A001478(n+1))/2` -/
def P13669010278899531759.Spec : Prop :=
  ∀ n, P13669010278899531759.a n = (A026367 (n + 1) : ℚ)

end A026367

/-! ## A026367.P1147748776202659186

`∑[A284851(n+1)+1]-A284851(n+1)`
-/

namespace A026367.P1147748776202659186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284851 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A284851 (n + 1)

end

end A026367.P1147748776202659186

namespace A026367

/-- `∑[A284851(n+1)+1]-A284851(n+1)` -/
def P1147748776202659186.Spec : Prop :=
  ∀ n, P1147748776202659186.a n = A026367 (n + 1)

end A026367

/-! ## A026367.P12339308184257301843

`comp[A026368(A026366(n+1))*A285431(n+1)]`
-/

namespace A026367.P12339308184257301843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026368 (A026366 (n + 1)).toNat * A285431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A026367.P12339308184257301843

namespace A026367

/-- `comp[A026368(A026366(n+1))*A285431(n+1)]` -/
def P12339308184257301843.Spec : Prop :=
  ∀ n, (P12339308184257301843.a n : ℤ) = A026367 (n + 1)

end A026367

/-! ## A026367.P13544018746395972658

`A026359(n+2)-1`
-/

namespace A026367.P13544018746395972658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026359 (n + 2) - 1

end

end A026367.P13544018746395972658

namespace A026367

/-- `A026359(n+2)-1` -/
def P13544018746395972658.Spec : Prop :=
  ∀ n, P13544018746395972658.a n = A026367 (n + 1)

end A026367

/-! ## A026367.P16362752680729944550

`(A026360(n+2)-(n+2))/2`
-/

namespace A026367.P16362752680729944550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026360 (n + 2) - (n + 2 : ℤ) : ℚ) / 2

end

end A026367.P16362752680729944550

namespace A026367

/-- `(A026360(n+2)-(n+2))/2` -/
def P16362752680729944550.Spec : Prop :=
  ∀ n, P16362752680729944550.a n = (A026367 (n + 1) : ℚ)

end A026367

/-! ## A026367.P16471770042393165729

`filter[n+1, A285431(#)]`
-/

namespace A026367.P16471770042393165729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285431 (f1 j) = 1) n)

end

end A026367.P16471770042393165729

namespace A026367

/-- `filter[n+1, A285431(#)]` -/
def P16471770042393165729.Spec : Prop :=
  ∀ n, (P16471770042393165729.a n : ℤ) = A026367 (n + 1)

end A026367

/-! ## A026367.P1139170701316530247

`record[(n+1)*A285431(n+1)]`
-/

namespace A026367.P1139170701316530247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A285431 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026367.P1139170701316530247

namespace A026367

/-- `record[(n+1)*A285431(n+1)]` -/
def P1139170701316530247.Spec : Prop :=
  ∀ n, P1139170701316530247.a n = A026367 (n + 1)

end A026367

/-! ## A026367.P2365538956124995252

`record[A026366(n+1)+n]-n`
-/

namespace A026367.P2365538956124995252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026366 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A026367.P2365538956124995252

namespace A026367

/-- `record[A026366(n+1)+n]-n` -/
def P2365538956124995252.Spec : Prop :=
  ∀ n, P2365538956124995252.a n = A026367 (n + 1)

end A026367

/-! ## A026367.P16405216060383167923

`A023443(A026359(n+2))`
-/

namespace A026367.P16405216060383167923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A026359 (n + 2)).toNat

end

end A026367.P16405216060383167923

namespace A026367

/-- `A023443(A026359(n+2))` -/
def P16405216060383167923.Spec : Prop :=
  ∀ n, P16405216060383167923.a n = A026367 (n + 1)

end A026367

/-!
# A026368: a(n) = greatest k such that s(k) = n, where s = A026366.

The programs for A026368, the canonical program `A026368.P5295631279945250445` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026368 has offset 1).

The definition of A026368 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026368.P12145884489530356603

`A284853(n+1)+1+n`
-/

namespace A026368.P12145884489530356603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284853 (n + 1) + 1 + (n : ℤ)

end

end A026368.P12145884489530356603

namespace A026368

/-- `A284853(n+1)+1+n` -/
def P12145884489530356603.Spec : Prop :=
  ∀ n, P12145884489530356603.a n = A026368 (n + 1)

end A026368

/-! ## A026368.P5295631279945250445

`2*A026367(n+1)+1+n`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A026368

/-- `2*A026367(n+1)+1+n` -/
def P5295631279945250445.Spec : Prop :=
  ∀ n, P5295631279945250445.a n = A026368 (n + 1)

theorem P5295631279945250445.correct : P5295631279945250445.Spec := by
  intro n
  simp only [A026368, Nat.add_sub_cancel]

end A026368

/-! ## A026368.P2273119550628999452

`A284507(n+1)+2*(n+1)`
-/

namespace A026368.P2273119550628999452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284507 (n + 1) + (2 * (n + 1) : ℤ)

end

end A026368.P2273119550628999452

namespace A026368

/-- `A284507(n+1)+2*(n+1)` -/
def P2273119550628999452.Spec : Prop :=
  ∀ n, P2273119550628999452.a n = A026368 (n + 1)

end A026368

/-! ## A026368.P8205599039941925529

`2*A283964(n+1)-(n+1)`
-/

namespace A026368.P8205599039941925529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A283964 (n + 1) - (n + 1 : ℤ)

end

end A026368.P8205599039941925529

namespace A026368

/-- `2*A283964(n+1)-(n+1)` -/
def P8205599039941925529.Spec : Prop :=
  ∀ n, P8205599039941925529.a n = A026368 (n + 1)

end A026368

/-! ## A026368.P6533770680128601877

`A283964(n+1)+A026367(n+1)`
-/

namespace A026368.P6533770680128601877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283964 (n + 1) + A026367 (n + 1)

end

end A026368.P6533770680128601877

namespace A026368

/-- `A283964(n+1)+A026367(n+1)` -/
def P6533770680128601877.Spec : Prop :=
  ∀ n, P6533770680128601877.a n = A026368 (n + 1)

end A026368

/-! ## A026368.P12989919023264783053

`A001478(n+1)+2*A283964(n+1)`
-/

namespace A026368.P12989919023264783053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + 2 * A283964 (n + 1)

end

end A026368.P12989919023264783053

namespace A026368

/-- `A001478(n+1)+2*A283964(n+1)` -/
def P12989919023264783053.Spec : Prop :=
  ∀ n, P12989919023264783053.a n = A026368 (n + 1)

end A026368

/-! ## A026368.P14550758178487787175

`A000027(A026367(n+1)+A026367(n+1)+n+1)`
-/

namespace A026368.P14550758178487787175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A026367 (n + 1) + (A026367 (n + 1) + (n + 1 : ℤ))).toNat

end

end A026368.P14550758178487787175

namespace A026368

/-- `A000027(A026367(n+1)+A026367(n+1)+n+1)` -/
def P14550758178487787175.Spec : Prop :=
  ∀ n, P14550758178487787175.a n = A026368 (n + 1)

end A026368

/-! ## A026368.P9384132416387909077

`A026360(n+2)-1`
-/

namespace A026368.P9384132416387909077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026360 (n + 2) - 1

end

end A026368.P9384132416387909077

namespace A026368

/-- `A026360(n+2)-1` -/
def P9384132416387909077.Spec : Prop :=
  ∀ n, P9384132416387909077.a n = A026368 (n + 1)

end A026368

/-! ## A026368.P7790821932053292840

`2*A026359(n+2)+n-1`
-/

namespace A026368.P7790821932053292840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026359 (n + 2) + ((n : ℤ) - 1)

end

end A026368.P7790821932053292840

namespace A026368

/-- `2*A026359(n+2)+n-1` -/
def P7790821932053292840.Spec : Prop :=
  ∀ n, P7790821932053292840.a n = A026368 (n + 1)

end A026368

/-! ## A026368.P13863205845670587539

`A284774(A026367(n+1))+1`
-/

namespace A026368.P13863205845670587539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284774 (A026367 (n + 1)).toNat + 1

end

end A026368.P13863205845670587539

namespace A026368

/-- `A284774(A026367(n+1))+1` -/
def P13863205845670587539.Spec : Prop :=
  ∀ n, P13863205845670587539.a n = A026368 (n + 1)

end A026368

/-! ## A026368.P8734757492188774018

`A004273(A026359(n+2))+n`
-/

namespace A026368.P8734757492188774018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A026359 (n + 2)).toNat + (n : ℤ)

end

end A026368.P8734757492188774018

namespace A026368

/-- `A004273(A026359(n+2))+n` -/
def P8734757492188774018.Spec : Prop :=
  ∀ n, P8734757492188774018.a n = A026368 (n + 1)

end A026368

/-! ## A026368.P9948789908366861022

`A283964(n+1)-A001478(A283964(n+1)+A001478(n+1))`
-/

namespace A026368.P9948789908366861022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283964 (n + 1) - A001478 (A283964 (n + 1) + A001478 (n + 1)).toNat

end

end A026368.P9948789908366861022

namespace A026368

/-- `A283964(n+1)-A001478(A283964(n+1)+A001478(n+1))` -/
def P9948789908366861022.Spec : Prop :=
  ∀ n, P9948789908366861022.a n = A026368 (n + 1)

end A026368

/-! ## A026368.P15747964545483906202

`A284852(A284507(n+1)+1)+n`
-/

namespace A026368.P15747964545483906202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284852 (A284507 (n + 1) + 1).toNat + (n : ℤ)

end

end A026368.P15747964545483906202

namespace A026368

/-- `A284852(A284507(n+1)+1)+n` -/
def P15747964545483906202.Spec : Prop :=
  ∀ n, P15747964545483906202.a n = A026368 (n + 1)

end A026368

/-! ## A026368.P11036305372801210598

`A284506(Δ[n²])-n`
-/

namespace A026368.P11036305372801210598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284506 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ)

end

end A026368.P11036305372801210598

namespace A026368

/-- `A284506(Δ[n²])-n` -/
def P11036305372801210598.Spec : Prop :=
  ∀ n, P11036305372801210598.a n = A026368 (n + 1)

end A026368

/-! ## A026368.P14104528151913153101

`A284773(A283964(n+1))`
-/

namespace A026368.P14104528151913153101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284773 (A283964 (n + 1)).toNat

end

end A026368.P14104528151913153101

namespace A026368

/-- `A284773(A283964(n+1))` -/
def P14104528151913153101.Spec : Prop :=
  ∀ n, P14104528151913153101.a n = A026368 (n + 1)

end A026368

/-! ## A026368.P7183009197467633646

`A284773(A026359(n+2)+n)`
-/

namespace A026368.P7183009197467633646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284773 (A026359 (n + 2) + (n : ℤ)).toNat

end

end A026368.P7183009197467633646

namespace A026368

/-- `A284773(A026359(n+2)+n)` -/
def P7183009197467633646.Spec : Prop :=
  ∀ n, P7183009197467633646.a n = A026368 (n + 1)

end A026368

/-! ## A026368.P6191994622719259891

`∩[A284773(n+1)-1, A284773(n+1)]`
-/

namespace A026368.P6191994622719259891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284773 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284773 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A026368.P6191994622719259891

namespace A026368

/-- `∩[A284773(n+1)-1, A284773(n+1)]` -/
def P6191994622719259891.Spec : Prop :=
  ∀ n, (P6191994622719259891.a n : ℤ) = A026368 (n + 1)

end A026368

/-! ## A026368.P3681167047815405180

`A026367(A284853(n+1))+1`
-/

namespace A026368.P3681167047815405180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026367 (A284853 (n + 1)).toNat + 1

end

end A026368.P3681167047815405180

namespace A026368

/-- `A026367(A284853(n+1))+1` -/
def P3681167047815405180.Spec : Prop :=
  ∀ n, P3681167047815405180.a n = A026368 (n + 1)

end A026368

/-! ## A026368.P12594875194723390395

`A026367(2*A026367(n+1))+1`
-/

namespace A026368.P12594875194723390395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026367 (2 * A026367 (n + 1)).toNat + 1

end

end A026368.P12594875194723390395

namespace A026368

/-- `A026367(2*A026367(n+1))+1` -/
def P12594875194723390395.Spec : Prop :=
  ∀ n, P12594875194723390395.a n = A026368 (n + 1)

end A026368

/-!
# A026369: a(n) = sum of the numbers between the two n's in A026366.

The programs for A026369, there is no canonical definition to state claims against.
-/

/-! ## A026369.P16947356164405047111

`A026361(n+2)-(A026367(n+1)+n)`
-/

namespace A026369.P16947356164405047111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026361 (n + 2) - (A026367 (n + 1) + (n : ℤ))

end

end A026369.P16947356164405047111

/-! ## A026369.P17255090250627476875

`round(sqrt(A320497(comp[3*n]²²+n)))`
-/

namespace A026369.P17255090250627476875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A320497 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 2) ^ 2 + n) : ℝ))

end

end A026369.P17255090250627476875

/-!
# A026370: a(n) = a(m) if a(m) has already occurred exactly once and n = a(m)+2m+1, else a(n) = least positive integer that has not yet occurred.

The programs for A026370, there is no canonical definition to state claims against.
-/

/-! ## A026370.P10441214430580705684

`A126760(record[A309424(A168496(n+1))])`
-/

namespace A026370.P10441214430580705684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309424 (A168496 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A026370.P10441214430580705684

/-! ## A026370.P3011983766416023757

`A253887(A000401(n+3)%A358445(n+1))`
-/

namespace A026370.P3011983766416023757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253887 (Int.tmod (A000401 (n + 3)) (A358445 (n + 1))).toNat

end

end A026370.P3011983766416023757

/-! ## A026370.P17292420747055701024

`A253887(A000401(n+3))%A233696(2*n+3)`
-/

namespace A026370.P17292420747055701024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253887 (A000401 (n + 3)).toNat) (A233696 (2 * n + 3))

end

end A026370.P17292420747055701024

/-! ## A026370.P12589001970884446658

`A253887(comp[A153462(3*(n+2))-A008574(n)]+1)`
-/

namespace A026370.P12589001970884446658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153462 (3 * (n + 2)) - A008574 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253887 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A026370.P12589001970884446658

/-! ## A026370.P17647893794627297429

`A353278(2*A077168(n+1))`
-/

namespace A026370.P17647893794627297429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353278 (2 * A077168 (n + 1)).toNat

end

end A026370.P17647893794627297429

/-!
# A026371: a(n) = least k such that s(k) = n, where s = A026370.

The programs for A026371, the canonical program `A026371.P13801578725644884414` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026371 has offset 1).

The definition of A026371 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026371.P13801578725644884414

`floor(a(n-1)+(n-1)/a(a(n-1)-n))` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026371

/-- `floor(a(n-1)+(n-1)/a(a(n-1)-n))` -/
def P13801578725644884414.Spec : Prop :=
  ∀ n, P13801578725644884414.a n = A026371 (n + 1)

theorem P13801578725644884414.correct : P13801578725644884414.Spec := by
  intro n
  simp only [A026371, Nat.add_sub_cancel]

end A026371

/-! ## A026371.P11407488308691934436

`(A026372(n+1)-(n+2))/2`
-/

namespace A026371.P11407488308691934436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026372 (n + 1) - (n + 2 : ℤ) : ℚ) / 2

end

end A026371.P11407488308691934436

namespace A026371

/-- `(A026372(n+1)-(n+2))/2` -/
def P11407488308691934436.Spec : Prop :=
  ∀ n, P11407488308691934436.a n = (A026371 (n + 1) : ℚ)

end A026371

/-! ## A026371.P11313375419778256418

`A252463(A026372(n+1)-(n+2))`
-/

namespace A026371.P11313375419778256418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (A026372 (n + 1) - (n + 2 : ℤ)).toNat

end

end A026371.P11313375419778256418

namespace A026371

/-- `A252463(A026372(n+1)-(n+2))` -/
def P11313375419778256418.Spec : Prop :=
  ∀ n, P11313375419778256418.a n = A026371 (n + 1)

end A026371

/-! ## A026371.P6741697492462564238

`A000463(A026372(n+1)-(n+3))`
-/

namespace A026371.P6741697492462564238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A026372 (n + 1) - (n + 3 : ℤ)).toNat

end

end A026371.P6741697492462564238

namespace A026371

/-- `A000463(A026372(n+1)-(n+3))` -/
def P6741697492462564238.Spec : Prop :=
  ∀ n, P6741697492462564238.a n = A026371 (n + 1)

end A026371

/-! ## A026371.P1650451201597975392

`A001057(A026372(n+1)-(n+3))`
-/

namespace A026371.P1650451201597975392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A026372 (n + 1) - (n + 3 : ℤ)).toNat

end

end A026371.P1650451201597975392

namespace A026371

/-- `A001057(A026372(n+1)-(n+3))` -/
def P1650451201597975392.Spec : Prop :=
  ∀ n, P1650451201597975392.a n = A026371 (n + 1)

end A026371

/-! ## A026371.P1535057703525707911

`A046667(A026372(n+1)-n)`
-/

namespace A026371.P1535057703525707911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046667 (A026372 (n + 1) - (n : ℤ)).toNat

end

end A026371.P1535057703525707911

namespace A026371

/-- `A046667(A026372(n+1)-n)` -/
def P1535057703525707911.Spec : Prop :=
  ∀ n, P1535057703525707911.a n = A026371 (n + 1)

end A026371

/-! ## A026371.P10106940915870858687

`A004524(A026372(n+1)-(n+1))`
-/

namespace A026371.P10106940915870858687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A026372 (n + 1) - (n + 1 : ℤ)).toNat

end

end A026371.P10106940915870858687

namespace A026371

/-- `A004524(A026372(n+1)-(n+1))` -/
def P10106940915870858687.Spec : Prop :=
  ∀ n, P10106940915870858687.a n = A026371 (n + 1)

end A026371

/-! ## A026371.P7012926763834533863

`A004526(A026372(n+1)-(n+1))`
-/

namespace A026371.P7012926763834533863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A026372 (n + 1) - (n + 1 : ℤ)).toNat

end

end A026371.P7012926763834533863

namespace A026371

/-- `A004526(A026372(n+1)-(n+1))` -/
def P7012926763834533863.Spec : Prop :=
  ∀ n, P7012926763834533863.a n = A026371 (n + 1)

end A026371

/-! ## A026371.P11835139671011785045

`A001281(A026372(n+1)-(n+2))`
-/

namespace A026371.P11835139671011785045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A026372 (n + 1) - (n + 2 : ℤ)).toNat

end

end A026371.P11835139671011785045

namespace A026371

/-- `A001281(A026372(n+1)-(n+2))` -/
def P11835139671011785045.Spec : Prop :=
  ∀ n, P11835139671011785045.a n = A026371 (n + 1)

end A026371

/-! ## A026371.P13976731780611942213

`A008619(A026372(n+1)-n)-2`
-/

namespace A026371.P13976731780611942213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A026372 (n + 1) - (n : ℤ)).toNat - 2

end

end A026371.P13976731780611942213

namespace A026371

/-- `A008619(A026372(n+1)-n)-2` -/
def P13976731780611942213.Spec : Prop :=
  ∀ n, P13976731780611942213.a n = A026371 (n + 1)

end A026371

/-! ## A026371.P14204855128544333530

`A004526(A026372(n+1))-A008619(n)`
-/

namespace A026371.P14204855128544333530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A026372 (n + 1)).toNat - A008619 n

end

end A026371.P14204855128544333530

namespace A026371

/-- `A004526(A026372(n+1))-A008619(n)` -/
def P14204855128544333530.Spec : Prop :=
  ∀ n, P14204855128544333530.a n = A026371 (n + 1)

end A026371

/-!
# A026372: a(n) = greatest k such that s(k) = n, where s = A026370.

The programs for A026372, the canonical program `A026372.P338144107310347952` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026372 has offset 1).

The definition of A026372 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026372.P338144107310347952

`2*A026371(n+1)+2+n`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A026372

/-- `2*A026371(n+1)+2+n` -/
def P338144107310347952.Spec : Prop :=
  ∀ n, P338144107310347952.a n = A026372 (n + 1)

theorem P338144107310347952.correct : P338144107310347952.Spec := by
  intro n
  simp only [A026372, Nat.add_sub_cancel]

end A026372

/-! ## A026372.P16872931945213590165

`A005408(A026371(n+1))+1+n`
-/

namespace A026372.P16872931945213590165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A026371 (n + 1)).toNat + 1 + (n : ℤ)

end

end A026372.P16872931945213590165

namespace A026372

/-- `A005408(A026371(n+1))+1+n` -/
def P16872931945213590165.Spec : Prop :=
  ∀ n, P16872931945213590165.a n = A026372 (n + 1)

end A026372

/-! ## A026372.P12490721405635329502

`A103517(A026371(n+1))+n`
-/

namespace A026372.P12490721405635329502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A026371 (n + 1)).toNat + (n : ℤ)

end

end A026372.P12490721405635329502

namespace A026372

/-- `A103517(A026371(n+1))+n` -/
def P12490721405635329502.Spec : Prop :=
  ∀ n, P12490721405635329502.a n = A026372 (n + 1)

end A026372

/-! ## A026372.P13336509045199135151

`A005843(A026371(n+1)+1)+n`
-/

namespace A026372.P13336509045199135151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A026371 (n + 1) + 1).toNat + (n : ℤ)

end

end A026372.P13336509045199135151

namespace A026372

/-- `A005843(A026371(n+1)+1)+n` -/
def P13336509045199135151.Spec : Prop :=
  ∀ n, P13336509045199135151.a n = A026372 (n + 1)

end A026372

/-! ## A026372.P12732675075969065671

`A004273(A026371(n+1)+1)+n+1`
-/

namespace A026372.P12732675075969065671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A026371 (n + 1) + 1).toNat + (n + 1 : ℤ)

end

end A026372.P12732675075969065671

namespace A026372

/-- `A004273(A026371(n+1)+1)+n+1` -/
def P12732675075969065671.Spec : Prop :=
  ∀ n, P12732675075969065671.a n = A026372 (n + 1)

end A026372

/-! ## A026372.P13312286270687404575

`A062545(A026371(n+1))+A023443(n)`
-/

namespace A026372.P13312286270687404575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 (A026371 (n + 1)).toNat + A023443 n

end

end A026372.P13312286270687404575

namespace A026372

/-- `A062545(A026371(n+1))+A023443(n)` -/
def P13312286270687404575.Spec : Prop :=
  ∀ n, P13312286270687404575.a n = A026372 (n + 1)

end A026372

/-! ## A026372.P9009798432433879007

`A062545(A026371(n+1))-A024000(n)`
-/

namespace A026372.P9009798432433879007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 (A026371 (n + 1)).toNat - A024000 n

end

end A026372.P9009798432433879007

namespace A026372

/-- `A062545(A026371(n+1))-A024000(n)` -/
def P9009798432433879007.Spec : Prop :=
  ∀ n, P9009798432433879007.a n = A026372 (n + 1)

end A026372

/-! ## A026372.P2444950773718400231

`A026371(2*A026371(n+1))+2`
-/

namespace A026372.P2444950773718400231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026371 (2 * A026371 (n + 1)).toNat + 2

end

end A026372.P2444950773718400231

namespace A026372

/-- `A026371(2*A026371(n+1))+2` -/
def P2444950773718400231.Spec : Prop :=
  ∀ n, P2444950773718400231.a n = A026372 (n + 1)

end A026372

/-!
# A026373: a(n) = sum of the numbers between the two n's in A026370.

The programs for A026373, there is no canonical definition to state claims against.
-/

/-! ## A026373.P5645440284093410964

`A216244(n+2)+A054525(A000272(n))`
-/

namespace A026373.P5645440284093410964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216244 (n + 2) + A054525 (A000272 n).toNat

end

end A026373.P5645440284093410964

/-! ## A026373.P17697509876009240382

`A216244(n+2)+A143104(A002577(n))`
-/

namespace A026373.P17697509876009240382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216244 (n + 2) + A143104 (A002577 n).toNat

end

end A026373.P17697509876009240382

/-! ## A026373.P12124263956501905974

`A216244(n+2)+A026794(A151024(n))`
-/

namespace A026373.P12124263956501905974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216244 (n + 2) + A026794 (A151024 n).toNat

end

end A026373.P12124263956501905974

/-!
# A026374: Triangular array T read by rows: T(n,0) = T(n,n) = 1 for all n >= 0, T(n,k) = T(n-1,k-1) + T(n-1,k) for odd n and 1< = k <= n-1, T(n,k) = T(n-1,k-1) + T(n-1,k) + T(n-2,k-1) for even n and 1 <= k <= n-1.

The programs for A026374, there is no canonical definition to state claims against.
-/

/-! ## A026374.P1183724582211928413

`A332104(A001263(n+1))+A007318(n)`
-/

namespace A026374.P1183724582211928413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332104 (A001263 (n + 1)).toNat + A007318 n

end

end A026374.P1183724582211928413

/-! ## A026374.P10177290035135978988

`A319951(A144463(n)+A001263(n+1))`
-/

namespace A026374.P10177290035135978988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319951 (A144463 n + A001263 (n + 1)).toNat

end

end A026374.P10177290035135978988

/-! ## A026374.P10552129863243401176

`A124761(A296405(n+1))+A026670(n)`
-/

namespace A026374.P10552129863243401176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124761 (A296405 (n + 1)).toNat + A026670 n

end

end A026374.P10552129863243401176

/-! ## A026374.P11468471637135508694

`A045681(A013580(n)%A072396(2*(n+1)))`
-/

namespace A026374.P11468471637135508694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045681 (Int.tmod (A013580 n) (A072396 (2 * (n + 1)))).toNat

end

end A026374.P11468471637135508694

/-! ## A026374.P16584194412129012799

`A047201(A013580(n))%A380423(3*(n+1))`
-/

namespace A026374.P16584194412129012799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047201 (A013580 n).toNat) (A380423 (3 * (n + 1)))

end

end A026374.P16584194412129012799

/-!
# A026375: a(n) = Sum_{k=0..n} binomial(n,k)*binomial(2*k,k).

The programs for A026375, the canonical program `A026375.P8104787001125521639` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026375 has offset 0).

The definition of A026375 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026375.P8104787001125521639

`∑[A085362(n)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A026375

/-- `∑[A085362(n)]` -/
def P8104787001125521639.Spec : Prop :=
  ∀ n, P8104787001125521639.a n = A026375 n

theorem P8104787001125521639.correct : P8104787001125521639.Spec := by
  intro n
  simp only [A026375]

end A026375

/-! ## A026375.P17765496683912766702

`Δ[n*A181768(n)]`
-/

namespace A026375.P17765496683912766702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A181768 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026375.P17765496683912766702

namespace A026375

/-- `Δ[n*A181768(n)]` -/
def P17765496683912766702.Spec : Prop :=
  ∀ n, P17765496683912766702.a n = A026375 n

end A026375

/-! ## A026375.P1529981069092225771

`2*A242586(n)-1`
-/

namespace A026375.P1529981069092225771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A242586 n - 1

end

end A026375.P1529981069092225771

namespace A026375

/-- `2*A242586(n)-1` -/
def P1529981069092225771.Spec : Prop :=
  ∀ n, P1529981069092225771.a n = A026375 n

end A026375

/-! ## A026375.P18022043999424186464

`A026392(2*n)+a(n-1)` with `a(0)=1`
-/

namespace A026375.P18022043999424186464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026392 (2 * n) + a (n - 1)

end

end A026375.P18022043999424186464

namespace A026375

/-- `A026392(2*n)+a(n-1)` -/
def P18022043999424186464.Spec : Prop :=
  ∀ n, P18022043999424186464.a n = A026375 n

end A026375

/-! ## A026375.P4533989598623230984

`A026380(round(1/acot(n))-1+n)`
-/

namespace A026375.P4533989598623230984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026380 (SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) - 1 + (n : ℤ)).toNat

end

end A026375.P4533989598623230984

namespace A026375

/-- `A026380(round(1/acot(n))-1+n)` -/
def P4533989598623230984.Spec : Prop :=
  ∀ n, P4533989598623230984.a n = A026375 n

end A026375

/-! ## A026375.P14928229653579609307

`A026380(round(1/acot(n))-(1-n))`
-/

namespace A026375.P14928229653579609307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026380 (SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) - (1 - (n : ℤ))).toNat

end

end A026375.P14928229653579609307

namespace A026375

/-- `A026380(round(1/acot(n))-(1-n))` -/
def P14928229653579609307.Spec : Prop :=
  ∀ n, P14928229653579609307.a n = A026375 n

end A026375

/-! ## A026375.P16396162810158227555

`A026380(A004273(n))`
-/

namespace A026375.P16396162810158227555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026380 (A004273 n).toNat

end

end A026375.P16396162810158227555

namespace A026375

/-- `A026380(A004273(n))` -/
def P16396162810158227555.Spec : Prop :=
  ∀ n, P16396162810158227555.a n = A026375 n

end A026375

/-! ## A026375.P18234064901886772845

`∑[A026392(A004277(n))]`
-/

namespace A026375.P18234064901886772845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026392 (A004277 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026375.P18234064901886772845

namespace A026375

/-- `∑[A026392(A004277(n))]` -/
def P18234064901886772845.Spec : Prop :=
  ∀ n, P18234064901886772845.a n = A026375 n

end A026375

/-! ## A026375.P10711281915618855369

`∑[A026392(A004275(n+1))]`
-/

namespace A026375.P10711281915618855369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026392 (A004275 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026375.P10711281915618855369

namespace A026375

/-- `∑[A026392(A004275(n+1))]` -/
def P10711281915618855369.Spec : Prop :=
  ∀ n, P10711281915618855369.a n = A026375 n

end A026375

/-! ## A026375.P8835251600022692057

`∑[A026392(A028310(2*n))]`
-/

namespace A026375.P8835251600022692057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026392 (A028310 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026375.P8835251600022692057

namespace A026375

/-- `∑[A026392(A028310(2*n))]` -/
def P8835251600022692057.Spec : Prop :=
  ∀ n, P8835251600022692057.a n = A026375 n

end A026375

/-! ## A026375.P16682483029949439721

`∑[A026392(A028310(n)+n)]`
-/

namespace A026375.P16682483029949439721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026392 (A028310 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026375.P16682483029949439721

namespace A026375

/-- `∑[A026392(A028310(n)+n)]` -/
def P16682483029949439721.Spec : Prop :=
  ∀ n, P16682483029949439721.a n = A026375 n

end A026375

/-! ## A026375.P2452555228204401381

`∑[A128732(n)+A126568(n)]`
-/

namespace A026375.P2452555228204401381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128732 n + A126568 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026375.P2452555228204401381

namespace A026375

/-- `∑[A128732(n)+A126568(n)]` -/
def P2452555228204401381.Spec : Prop :=
  ∀ n, P2452555228204401381.a n = A026375 n

end A026375

/-! ## A026375.P452863031463098845

`A128730(n+1)+A126568(n)`
-/

namespace A026375.P452863031463098845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128730 (n + 1) + A126568 n

end

end A026375.P452863031463098845

namespace A026375

/-- `A128730(n+1)+A126568(n)` -/
def P452863031463098845.Spec : Prop :=
  ∀ n, P452863031463098845.a n = A026375 n

end A026375

/-! ## A026375.P6091900718964056725

`2*A102319(n)-A002426(n)`
-/

namespace A026375.P6091900718964056725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A102319 n - A002426 n

end

end A026375.P6091900718964056725

namespace A026375

/-- `2*A102319(n)-A002426(n)` -/
def P6091900718964056725.Spec : Prop :=
  ∀ n, P6091900718964056725.a n = A026375 n

end A026375

/-! ## A026375.P12902307162637130601

`∑[A002212(n)]+n*A002212(n)`
-/

namespace A026375.P12902307162637130601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002212 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) * A002212 n

end

end A026375.P12902307162637130601

namespace A026375

/-- `∑[A002212(n)]+n*A002212(n)` -/
def P12902307162637130601.Spec : Prop :=
  ∀ n, P12902307162637130601.a n = A026375 n

end A026375

/-! ## A026375.P5210184604697937472

`Δ[n*(A129167(n)-A128714(n))]`
-/

namespace A026375.P5210184604697937472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A129167 n - A128714 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026375.P5210184604697937472

namespace A026375

/-- `Δ[n*(A129167(n)-A128714(n))]` -/
def P5210184604697937472.Spec : Prop :=
  ∀ n, P5210184604697937472.a n = A026375 n

end A026375

/-! ## A026375.P7350238143410671180

`A007317(n+1)+n*A002212(n)`
-/

namespace A026375.P7350238143410671180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007317 (n + 1) + (n : ℤ) * A002212 n

end

end A026375.P7350238143410671180

namespace A026375

/-- `A007317(n+1)+n*A002212(n)` -/
def P7350238143410671180.Spec : Prop :=
  ∀ n, P7350238143410671180.a n = A026375 n

end A026375

/-! ## A026375.P10377857047613169131

`A026378(n+1)-n*A002212(n)`
-/

namespace A026375.P10377857047613169131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026378 (n + 1) - (n : ℤ) * A002212 n

end

end A026375.P10377857047613169131

namespace A026375

/-- `A026378(n+1)-n*A002212(n)` -/
def P10377857047613169131.Spec : Prop :=
  ∀ n, P10377857047613169131.a n = A026375 n

end A026375

/-! ## A026375.P13569303412753725544

`Δ[n*(A045868(n)-A039919(n+1))]`
-/

namespace A026375.P13569303412753725544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A045868 n - A039919 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026375.P13569303412753725544

namespace A026375

/-- `Δ[n*(A045868(n)-A039919(n+1))]` -/
def P13569303412753725544.Spec : Prop :=
  ∀ n, P13569303412753725544.a n = A026375 n

end A026375

/-! ## A026375.P15802830214951226788

`A007317(n+1)+n*A025238(n+1)`
-/

namespace A026375.P15802830214951226788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007317 (n + 1) + (n : ℤ) * A025238 (n + 1)

end

end A026375.P15802830214951226788

namespace A026375

/-- `A007317(n+1)+n*A025238(n+1)` -/
def P15802830214951226788.Spec : Prop :=
  ∀ n, P15802830214951226788.a n = A026375 n

end A026375

/-!
# A026376: a(n) is the number of integer strings s(0),...,s(n) counted by array T in A026374 that have s(n)=2; also a(n) = T(2n,n-1).

The programs for A026376, the canonical program `A026376.P14512375577864825145` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026376 has offset 1).

The definition of A026376 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A026376.P14512375577864825145

`(n+1)*A002212(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A026376

/-- `(n+1)*A002212(n+1)` -/
def P14512375577864825145.Spec : Prop :=
  ∀ n, P14512375577864825145.a n = A026376 (n + 1)

theorem P14512375577864825145.correct : P14512375577864825145.Spec := by
  intro n
  simp only [A026376, Nat.add_sub_cancel]

end A026376

/-! ## A026376.P8769455349289578754

`∑[A026388(n+1)]`
-/

namespace A026376.P8769455349289578754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026388 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026376.P8769455349289578754

namespace A026376

/-- `∑[A026388(n+1)]` -/
def P8769455349289578754.Spec : Prop :=
  ∀ n, P8769455349289578754.a n = A026376 (n + 1)

end A026376

/-! ## A026376.P16127778208840685993

`(n+1)*∑[A045868(n)]`
-/

namespace A026376.P16127778208840685993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045868 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A026376.P16127778208840685993

namespace A026376

/-- `(n+1)*∑[A045868(n)]` -/
def P16127778208840685993.Spec : Prop :=
  ∀ n, P16127778208840685993.a n = A026376 (n + 1)

end A026376

/-! ## A026376.P15635769329318404700

`∑[abs(Δ[n*A002212(n)])]`
-/

namespace A026376.P15635769329318404700
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A002212 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026376.P15635769329318404700

namespace A026376

/-- `∑[abs(Δ[n*A002212(n)])]` -/
def P15635769329318404700.Spec : Prop :=
  ∀ n, P15635769329318404700.a n = A026376 (n + 1)

end A026376

/-! ## A026376.P15442534575272534266

`(n+1)*A025238(n+2)`
-/

namespace A026376.P15442534575272534266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A025238 (n + 2)

end

end A026376.P15442534575272534266

namespace A026376

/-- `(n+1)*A025238(n+2)` -/
def P15442534575272534266.Spec : Prop :=
  ∀ n, P15442534575272534266.a n = A026376 (n + 1)

end A026376

/-! ## A026376.P4079244430845286045

`(n+1)*Δ[A007317(n+1)]`
-/

namespace A026376.P4079244430845286045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007317 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A026376.P4079244430845286045

namespace A026376

/-- `(n+1)*Δ[A007317(n+1)]` -/
def P4079244430845286045.Spec : Prop :=
  ∀ n, P4079244430845286045.a n = A026376 (n + 1)

end A026376

/-! ## A026376.P10159791307475216252

`(n+1)*Δ[A181768(n+1)]`
-/

namespace A026376.P10159791307475216252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181768 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A026376.P10159791307475216252

namespace A026376

/-- `(n+1)*Δ[A181768(n+1)]` -/
def P10159791307475216252.Spec : Prop :=
  ∀ n, P10159791307475216252.a n = A026376 (n + 1)

end A026376

/-! ## A026376.P12597569483615021847

`(n+1)*A002215(2*(n+1))`
-/

namespace A026376.P12597569483615021847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A002215 (2 * (n + 1))

end

end A026376.P12597569483615021847

namespace A026376

/-- `(n+1)*A002215(2*(n+1))` -/
def P12597569483615021847.Spec : Prop :=
  ∀ n, P12597569483615021847.a n = A026376 (n + 1)

end A026376

/-! ## A026376.P17533149839971454700

`(n+1)/2*A122737(n+2)`
-/

namespace A026376.P17533149839971454700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A122737 (n + 2) : ℚ)

end

end A026376.P17533149839971454700

namespace A026376

/-- `(n+1)/2*A122737(n+2)` -/
def P17533149839971454700.Spec : Prop :=
  ∀ n, P17533149839971454700.a n = (A026376 (n + 1) : ℚ)

end A026376

/-! ## A026376.P16338258774078080141

`(n+1)*Δ[A055879(2*(n+1))]`
-/

namespace A026376.P16338258774078080141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055879 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A026376.P16338258774078080141

namespace A026376

/-- `(n+1)*Δ[A055879(2*(n+1))]` -/
def P16338258774078080141.Spec : Prop :=
  ∀ n, P16338258774078080141.a n = A026376 (n + 1)

end A026376

/-! ## A026376.P11184282873780883767

`A128743(n+1)+A026378(n+1)`
-/

namespace A026376.P11184282873780883767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128743 (n + 1) + A026378 (n + 1)

end

end A026376.P11184282873780883767

namespace A026376

/-- `A128743(n+1)+A026378(n+1)` -/
def P11184282873780883767.Spec : Prop :=
  ∀ n, P11184282873780883767.a n = A026376 (n + 1)

end A026376

/-! ## A026376.P13395631254493811498

`A026375(n+1)-A007317(n+2)`
-/

namespace A026376.P13395631254493811498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026375 (n + 1) - A007317 (n + 2)

end

end A026376.P13395631254493811498

namespace A026376

/-- `A026375(n+1)-A007317(n+2)` -/
def P13395631254493811498.Spec : Prop :=
  ∀ n, P13395631254493811498.a n = A026376 (n + 1)

end A026376

/-! ## A026376.P5353511749789927212

`A026378(n+2)-A026375(n+1)`
-/

namespace A026376.P5353511749789927212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026378 (n + 2) - A026375 (n + 1)

end

end A026376.P5353511749789927212

namespace A026376

/-- `A026378(n+2)-A026375(n+1)` -/
def P5353511749789927212.Spec : Prop :=
  ∀ n, P5353511749789927212.a n = A026376 (n + 1)

end A026376

/-! ## A026376.P14060583097151622819

`A128743(n+2)-A026379(n+2)`
-/

namespace A026376.P14060583097151622819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128743 (n + 2) - A026379 (n + 2)

end

end A026376.P14060583097151622819

namespace A026376

/-- `A128743(n+2)-A026379(n+2)` -/
def P14060583097151622819.Spec : Prop :=
  ∀ n, P14060583097151622819.a n = A026376 (n + 1)

end A026376

/-! ## A026376.P4774604702509106444

`A026380(2*(n+1))-A026375(n+1)`
-/

namespace A026376.P4774604702509106444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026380 (2 * (n + 1)) - A026375 (n + 1)

end

end A026376.P4774604702509106444

namespace A026376

/-- `A026380(2*(n+1))-A026375(n+1)` -/
def P4774604702509106444.Spec : Prop :=
  ∀ n, P4774604702509106444.a n = A026376 (n + 1)

end A026376

/-! ## A026376.P14043920498382514900

`A026380(2*n+1)-A007317(n+2)`
-/

namespace A026376.P14043920498382514900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026380 (2 * n + 1) - A007317 (n + 2)

end

end A026376.P14043920498382514900

namespace A026376

/-- `A026380(2*n+1)-A007317(n+2)` -/
def P14043920498382514900.Spec : Prop :=
  ∀ n, P14043920498382514900.a n = A026376 (n + 1)

end A026376

/-! ## A026376.P3494850859053874763

`A026378(n+2)-A026380(2*n+1)`
-/

namespace A026376.P3494850859053874763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026378 (n + 2) - A026380 (2 * n + 1)

end

end A026376.P3494850859053874763

namespace A026376

/-- `A026378(n+2)-A026380(2*n+1)` -/
def P3494850859053874763.Spec : Prop :=
  ∀ n, P3494850859053874763.a n = A026376 (n + 1)

end A026376

/-! ## A026376.P16174967361639268451

`A026392(2*n+3)-A026375(n+1)`
-/

namespace A026376.P16174967361639268451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026392 (2 * n + 3) - A026375 (n + 1)

end

end A026376.P16174967361639268451

namespace A026376

/-- `A026392(2*n+3)-A026375(n+1)` -/
def P16174967361639268451.Spec : Prop :=
  ∀ n, P16174967361639268451.a n = A026376 (n + 1)

end A026376

/-! ## A026376.P11443252490451111299

`A026380(2*(n+1))-A026380(2*n+1)`
-/

namespace A026376.P11443252490451111299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026380 (2 * (n + 1)) - A026380 (2 * n + 1)

end

end A026376.P11443252490451111299

namespace A026376

/-- `A026380(2*(n+1))-A026380(2*n+1)` -/
def P11443252490451111299.Spec : Prop :=
  ∀ n, P11443252490451111299.a n = A026376 (n + 1)

end A026376

/-! ## A026376.P473301328416210241

`∑[Δ[A026392(2*n+1)]-A026392(2*(n+1))]`
-/

namespace A026376.P473301328416210241
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026392 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A026392 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026376.P473301328416210241

namespace A026376

/-- `∑[Δ[A026392(2*n+1)]-A026392(2*(n+1))]` -/
def P473301328416210241.Spec : Prop :=
  ∀ n, P473301328416210241.a n = A026376 (n + 1)

end A026376

/-!
# A026377: a(n) = number of integer strings s(0),...,s(n) counted by array T in A026374 that have s(n)=4; also a(n) = T(2n,n-2).

The programs for A026377, the canonical program `A026377.P5720323990611058510` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026377 has offset 2).

The definition of A026377 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026377.P4980299858602374785

`∑[A026389(n+2)]`
-/

namespace A026377.P4980299858602374785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026389 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026377.P4980299858602374785

namespace A026377

/-- `∑[A026389(n+2)]` -/
def P4980299858602374785.Spec : Prop :=
  ∀ n, P4980299858602374785.a n = A026377 (n + 2)

end A026377

/-! ## A026377.P13349622104920803114

`(n+2)/2*A045445(n+2)`
-/

namespace A026377.P13349622104920803114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 2 * (A045445 (n + 2) : ℚ)

end

end A026377.P13349622104920803114

namespace A026377

/-- `(n+2)/2*A045445(n+2)` -/
def P13349622104920803114.Spec : Prop :=
  ∀ n, P13349622104920803114.a n = (A026377 (n + 2) : ℚ)

end A026377

/-! ## A026377.P12494501750962712483

`∑[(n+1)/3*A045890(n+1)]`
-/

namespace A026377.P12494501750962712483
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 3 * (A045890 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026377.P12494501750962712483

namespace A026377

/-- `∑[(n+1)/3*A045890(n+1)]` -/
def P12494501750962712483.Spec : Prop :=
  ∀ n, P12494501750962712483.a n = (A026377 (n + 2) : ℚ)

end A026377

/-! ## A026377.P5720323990611058510

`A026375(n+2)-A002212(n+3)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A026377

/-- `A026375(n+2)-A002212(n+3)` -/
def P5720323990611058510.Spec : Prop :=
  ∀ n, P5720323990611058510.a n = A026377 (n + 2)

theorem P5720323990611058510.correct : P5720323990611058510.Spec := by
  intro n
  simp only [A026377, Nat.add_sub_cancel]

end A026377

/-! ## A026377.P1366767899517174711

`A026379(n+3)-A026376(n+2)`
-/

namespace A026377.P1366767899517174711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026379 (n + 3) - A026376 (n + 2)

end

end A026377.P1366767899517174711

namespace A026377

/-- `A026379(n+3)-A026376(n+2)` -/
def P1366767899517174711.Spec : Prop :=
  ∀ n, P1366767899517174711.a n = A026377 (n + 2)

end A026377

/-! ## A026377.P18209055694079151255

`A026376(n+2)-A039919(n+3)`
-/

namespace A026377.P18209055694079151255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026376 (n + 2) - A039919 (n + 3)

end

end A026377.P18209055694079151255

namespace A026377

/-- `A026376(n+2)-A039919(n+3)` -/
def P18209055694079151255.Spec : Prop :=
  ∀ n, P18209055694079151255.a n = A026377 (n + 2)

end A026377

/-! ## A026377.P13832007801515457811

`A272866(∑[2*(n+2)])`
-/

namespace A026377.P13832007801515457811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272866 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A026377.P13832007801515457811

namespace A026377

/-- `A272866(∑[2*(n+2)])` -/
def P13832007801515457811.Spec : Prop :=
  ∀ n, P13832007801515457811.a n = A026377 (n + 2)

end A026377

/-! ## A026377.P5067924259295578576

`A026374(A090288(n+1))`
-/

namespace A026377.P5067924259295578576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026374 (A090288 (n + 1)).toNat

end

end A026377.P5067924259295578576

namespace A026377

/-- `A026374(A090288(n+1))` -/
def P5067924259295578576.Spec : Prop :=
  ∀ n, P5067924259295578576.a n = A026377 (n + 2)

end A026377

/-! ## A026377.P4243145387614885682

`A026374(A001844(n+2)+1)`
-/

namespace A026377.P4243145387614885682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026374 (A001844 (n + 2) + 1).toNat

end

end A026377.P4243145387614885682

namespace A026377

/-- `A026374(A001844(n+2)+1)` -/
def P4243145387614885682.Spec : Prop :=
  ∀ n, P4243145387614885682.a n = A026377 (n + 2)

end A026377

/-! ## A026377.P12391028051429040827

`A026374(A155212(2*n+1)-(n-3))`
-/

namespace A026377.P12391028051429040827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026374 (A155212 (2 * n + 1) - ((n : ℤ) - 3)).toNat

end

end A026377.P12391028051429040827

namespace A026377

/-- `A026374(A155212(2*n+1)-(n-3))` -/
def P12391028051429040827.Spec : Prop :=
  ∀ n, P12391028051429040827.a n = A026377 (n + 2)

end A026377

/-!
# A026378: a(n) = number of integer strings s(0),...,s(n) counted by array T in A026374 that have s(n)=1; also a(n) = T(2n-1,n-1).

The programs for A026378, the canonical program `A026378.P4860940138042552490` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026378 has offset 1).

The definition of A026378 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A026378.P4669314372667905399

`A026380(2*n)`
-/

namespace A026378.P4669314372667905399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026380 (2 * n)

end

end A026378.P4669314372667905399

namespace A026378

/-- `A026380(2*n)` -/
def P4669314372667905399.Spec : Prop :=
  ∀ n, P4669314372667905399.a n = A026378 (n + 1)

end A026378

/-! ## A026378.P4860940138042552490

`(2*(3*(n+1)-2)*a(n-1)-5*(n-1)*a(n-2))/(n+1)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026378

/-- `(2*(3*(n+1)-2)*a(n-1)-5*(n-1)*a(n-2))/(n+1)` -/
def P4860940138042552490.Spec : Prop :=
  ∀ n, P4860940138042552490.a n = (A026378 (n + 1) : ℚ)

end A026378

/-! ## A026378.P7451096396371700710

`Δ[A242586(n)]`
-/

namespace A026378.P7451096396371700710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242586 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026378.P7451096396371700710

namespace A026378

/-- `Δ[A242586(n)]` -/
def P7451096396371700710.Spec : Prop :=
  ∀ n, P7451096396371700710.a n = A026378 (n + 1)

end A026378

/-! ## A026378.P7844305089609345721

`A026387(n)/2`
-/

namespace A026378.P7844305089609345721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026387 n : ℚ) / 2

end

end A026378.P7844305089609345721

namespace A026378

/-- `A026387(n)/2` -/
def P7844305089609345721.Spec : Prop :=
  ∀ n, P7844305089609345721.a n = (A026378 (n + 1) : ℚ)

end A026378

/-! ## A026378.P338872552498674390

`A026392(Δ[n²])`
-/

namespace A026378.P338872552498674390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026392 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A026378.P338872552498674390

namespace A026378

/-- `A026392(Δ[n²])` -/
def P338872552498674390.Spec : Prop :=
  ∀ n, P338872552498674390.a n = A026378 (n + 1)

end A026378

/-! ## A026378.P10143726863671606825

`A085362(n+1)/2`
-/

namespace A026378.P10143726863671606825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085362 (n + 1) : ℚ) / 2

end

end A026378.P10143726863671606825

namespace A026378

/-- `A085362(n+1)/2` -/
def P10143726863671606825.Spec : Prop :=
  ∀ n, P10143726863671606825.a n = (A026378 (n + 1) : ℚ)

end A026378

/-! ## A026378.P14637722907050042203

`A026392(2*(n+1))/2`
-/

namespace A026378.P14637722907050042203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026392 (2 * (n + 1)) : ℚ) / 2

end

end A026378.P14637722907050042203

namespace A026378

/-- `A026392(2*(n+1))/2` -/
def P14637722907050042203.Spec : Prop :=
  ∀ n, P14637722907050042203.a n = (A026378 (n + 1) : ℚ)

end A026378

/-! ## A026378.P17039326009565399624

`A117641(n)+Δ[A126952(n)]`
-/

namespace A026378.P17039326009565399624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126952 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117641 n + (f1 (n + 1) - f1 n)

end

end A026378.P17039326009565399624

namespace A026378

/-- `A117641(n)+Δ[A126952(n)]` -/
def P17039326009565399624.Spec : Prop :=
  ∀ n, P17039326009565399624.a n = A026378 (n + 1)

end A026378

/-! ## A026378.P4497558184990490535

`A128752(n+1)+A085362(n)`
-/

namespace A026378.P4497558184990490535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128752 (n + 1) + A085362 n

end

end A026378.P4497558184990490535

namespace A026378

/-- `A128752(n+1)+A085362(n)` -/
def P4497558184990490535.Spec : Prop :=
  ∀ n, P4497558184990490535.a n = A026378 (n + 1)

end A026378

/-! ## A026378.P8169327900701152772

`A242586(n+1)-A242586(n)`
-/

namespace A026378.P8169327900701152772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242586 (n + 1) - A242586 n

end

end A026378.P8169327900701152772

namespace A026378

/-- `A242586(n+1)-A242586(n)` -/
def P8169327900701152772.Spec : Prop :=
  ∀ n, P8169327900701152772.a n = A026378 (n + 1)

end A026378

/-! ## A026378.P7388979099108451593

`∩[A026392(n+1), A026380(n)]`
-/

namespace A026378.P7388979099108451593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026380 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A026378.P7388979099108451593

namespace A026378

/-- `∩[A026392(n+1), A026380(n)]` -/
def P7388979099108451593.Spec : Prop :=
  ∀ n, (P7388979099108451593.a n : ℤ) = A026378 (n + 1)

end A026378

/-! ## A026378.P12166687315067715826

`A026375(n)+n*A002212(n)`
-/

namespace A026378.P12166687315067715826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026375 n + (n : ℤ) * A002212 n

end

end A026378.P12166687315067715826

namespace A026378

/-- `A026375(n)+n*A002212(n)` -/
def P12166687315067715826.Spec : Prop :=
  ∀ n, P12166687315067715826.a n = A026378 (n + 1)

end A026378

/-! ## A026378.P9563324726704456018

`A128748(n+1)+A033321(n+1)`
-/

namespace A026378.P9563324726704456018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128748 (n + 1) + A033321 (n + 1)

end

end A026378.P9563324726704456018

namespace A026378

/-- `A128748(n+1)+A033321(n+1)` -/
def P9563324726704456018.Spec : Prop :=
  ∀ n, P9563324726704456018.a n = A026378 (n + 1)

end A026378

/-! ## A026378.P1095231479355265022

`2*A026375(n)-A007317(n+1)`
-/

namespace A026378.P1095231479355265022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026375 n - A007317 (n + 1)

end

end A026378.P1095231479355265022

namespace A026378

/-- `2*A026375(n)-A007317(n+1)` -/
def P1095231479355265022.Spec : Prop :=
  ∀ n, P1095231479355265022.a n = A026378 (n + 1)

end A026378

/-! ## A026378.P156717974145614678

`A026387(n)-A026392(2*n+1)`
-/

namespace A026378.P156717974145614678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026387 n - A026392 (2 * n + 1)

end

end A026378.P156717974145614678

namespace A026378

/-- `A026387(n)-A026392(2*n+1)` -/
def P156717974145614678.Spec : Prop :=
  ∀ n, P156717974145614678.a n = A026378 (n + 1)

end A026378

/-! ## A026378.P7433342920041834688

`A085362(n+1)-A026392(2*n+1)`
-/

namespace A026378.P7433342920041834688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085362 (n + 1) - A026392 (2 * n + 1)

end

end A026378.P7433342920041834688

namespace A026378

/-- `A085362(n+1)-A026392(2*n+1)` -/
def P7433342920041834688.Spec : Prop :=
  ∀ n, P7433342920041834688.a n = A026378 (n + 1)

end A026378

/-! ## A026378.P7399809230171611786

`A007317(n+1)+n*A122737(n+1)`
-/

namespace A026378.P7399809230171611786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007317 (n + 1) + (n : ℤ) * A122737 (n + 1)

end

end A026378.P7399809230171611786

namespace A026378

/-- `A007317(n+1)+n*A122737(n+1)` -/
def P7399809230171611786.Spec : Prop :=
  ∀ n, P7399809230171611786.a n = A026378 (n + 1)

end A026378

/-! ## A026378.P4807334198170022049

`A026392(2*(n+1))-A026392(2*n+1)`
-/

namespace A026378.P4807334198170022049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026392 (2 * (n + 1)) - A026392 (2 * n + 1)

end

end A026378.P4807334198170022049

namespace A026378

/-- `A026392(2*(n+1))-A026392(2*n+1)` -/
def P4807334198170022049.Spec : Prop :=
  ∀ n, P4807334198170022049.a n = A026378 (n + 1)

end A026378

/-! ## A026378.P4187186701356882081

`A126952(n+1)+A117641(n)-A126952(n)`
-/

namespace A026378.P4187186701356882081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126952 (n + 1) + (A117641 n - A126952 n)

end

end A026378.P4187186701356882081

namespace A026378

/-- `A126952(n+1)+A117641(n)-A126952(n)` -/
def P4187186701356882081.Spec : Prop :=
  ∀ n, P4187186701356882081.a n = A026378 (n + 1)

end A026378

/-! ## A026378.P17845799571851166275

`Δ[A026375(n)/2]`
-/

namespace A026378.P17845799571851166275
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026375 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026378.P17845799571851166275

namespace A026378

/-- `Δ[A026375(n)/2]` -/
def P17845799571851166275.Spec : Prop :=
  ∀ n, P17845799571851166275.a n = (A026378 (n + 1) : ℚ)

end A026378

/-!
# A026379: a(n) = number of integer strings s(0),...,s(n) counted by array T in A026374 that have s(n)=3; also a(n) = T(2n-1,n-2).

The programs for A026379, the canonical program `A026379.P3720313122135347011` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026379 has offset 2).

The definition of A026379 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026379.P9356615605760683266

`∑[A034942(n)]`
-/

namespace A026379.P9356615605760683266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034942 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026379.P9356615605760683266

namespace A026379

/-- `∑[A034942(n)]` -/
def P9356615605760683266.Spec : Prop :=
  ∀ n, P9356615605760683266.a n = A026379 (n + 2)

end A026379

/-! ## A026379.P15137252585324795705

`(n+1)/2*A045868(n+1)`
-/

namespace A026379.P15137252585324795705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A045868 (n + 1) : ℚ)

end

end A026379.P15137252585324795705

namespace A026379

/-- `(n+1)/2*A045868(n+1)` -/
def P15137252585324795705.Spec : Prop :=
  ∀ n, P15137252585324795705.a n = (A026379 (n + 2) : ℚ)

end A026379

/-! ## A026379.P2446164125184097046

`A128743(n+2)-A026376(n+1)`
-/

namespace A026379.P2446164125184097046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128743 (n + 2) - A026376 (n + 1)

end

end A026379.P2446164125184097046

namespace A026379

/-- `A128743(n+2)-A026376(n+1)` -/
def P2446164125184097046.Spec : Prop :=
  ∀ n, P2446164125184097046.a n = A026379 (n + 2)

end A026379

/-! ## A026379.P3720313122135347011

`A026378(n+2)-A002212(n+2)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A026379

/-- `A026378(n+2)-A002212(n+2)` -/
def P3720313122135347011.Spec : Prop :=
  ∀ n, P3720313122135347011.a n = A026379 (n + 2)

theorem P3720313122135347011.correct : P3720313122135347011.Spec := by
  intro n
  simp only [A026379, Nat.add_sub_cancel]

end A026379

/-! ## A026379.P17434459125164642802

`A026388(n+2)-A026378(n+2)`
-/

namespace A026379.P17434459125164642802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026388 (n + 2) - A026378 (n + 2)

end

end A026379.P17434459125164642802

namespace A026379

/-- `A026388(n+2)-A026378(n+2)` -/
def P17434459125164642802.Spec : Prop :=
  ∀ n, P17434459125164642802.a n = A026379 (n + 2)

end A026379

/-! ## A026379.P18271806085593880258

`A026392(2*n+3)-A002212(n+2)`
-/

namespace A026379.P18271806085593880258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026392 (2 * n + 3) - A002212 (n + 2)

end

end A026379.P18271806085593880258

namespace A026379

/-- `A026392(2*n+3)-A002212(n+2)` -/
def P18271806085593880258.Spec : Prop :=
  ∀ n, P18271806085593880258.a n = A026379 (n + 2)

end A026379

/-! ## A026379.P2509470676066012690

`A026376(n+1)+A026376(n+1)-A039919(n+2)`
-/

namespace A026379.P2509470676066012690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026376 (n + 1) + (A026376 (n + 1) - A039919 (n + 2))

end

end A026379.P2509470676066012690

namespace A026379

/-- `A026376(n+1)+A026376(n+1)-A039919(n+2)` -/
def P2509470676066012690.Spec : Prop :=
  ∀ n, P2509470676066012690.a n = A026379 (n + 2)

end A026379

/-! ## A026379.P4247154893139505524

`A002212(n+1)*A004277(n+1)-A039919(n+2)`
-/

namespace A026379.P4247154893139505524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002212 (n + 1) * A004277 (n + 1) - A039919 (n + 2)

end

end A026379.P4247154893139505524

namespace A026379

/-- `A002212(n+1)*A004277(n+1)-A039919(n+2)` -/
def P4247154893139505524.Spec : Prop :=
  ∀ n, P4247154893139505524.a n = A026379 (n + 2)

end A026379

/-! ## A026379.P4663761467392883780

`A026378(n+3)%A026378(n+2)`
-/

namespace A026379.P4663761467392883780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026378 (n + 3)) (A026378 (n + 2))

end

end A026379.P4663761467392883780

namespace A026379

/-- `A026378(n+3)%A026378(n+2)` -/
def P4663761467392883780.Spec : Prop :=
  ∀ n, P4663761467392883780.a n = A026379 (n + 2)

end A026379

/-! ## A026379.P14693796132456453488

`Δ[A026376(n+1)-A129164(n+1)]`
-/

namespace A026379.P14693796132456453488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026376 (n + 1) - A129164 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026379.P14693796132456453488

namespace A026379

/-- `Δ[A026376(n+1)-A129164(n+1)]` -/
def P14693796132456453488.Spec : Prop :=
  ∀ n, P14693796132456453488.a n = A026379 (n + 2)

end A026379

/-! ## A026379.P10996872745520108261

`A026376(n+2)-(A026378(n+2)+A026376(n+1))`
-/

namespace A026379.P10996872745520108261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026376 (n + 2) - (A026378 (n + 2) + A026376 (n + 1))

end

end A026379.P10996872745520108261

namespace A026379

/-- `A026376(n+2)-(A026378(n+2)+A026376(n+1))` -/
def P10996872745520108261.Spec : Prop :=
  ∀ n, P10996872745520108261.a n = A026379 (n + 2)

end A026379

/-! ## A026379.P16104871000741093949

`A126791(∑[n+1]+1)`
-/

namespace A026379.P16104871000741093949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126791 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A026379.P16104871000741093949

namespace A026379

/-- `A126791(∑[n+1]+1)` -/
def P16104871000741093949.Spec : Prop :=
  ∀ n, P16104871000741093949.a n = A026379 (n + 2)

end A026379

/-! ## A026379.P6578167930044516313

`record[Δ[A126791(n)-A091965(n)]]`
-/

namespace A026379.P6578167930044516313
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126791 n - A091965 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026379.P6578167930044516313

namespace A026379

/-- `record[Δ[A126791(n)-A091965(n)]]` -/
def P6578167930044516313.Spec : Prop :=
  ∀ n, P6578167930044516313.a n = A026379 (n + 2)

end A026379

/-! ## A026379.P10732558183837168279

`record[A126791(n+1)-A091965(n+1)]`
-/

namespace A026379.P10732558183837168279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126791 (n + 1) - A091965 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026379.P10732558183837168279

namespace A026379

/-- `record[A126791(n+1)-A091965(n+1)]` -/
def P10732558183837168279.Spec : Prop :=
  ∀ n, P10732558183837168279.a n = A026379 (n + 2)

end A026379

/-!
# A026380: a(n) = T(n,[ n/2 ]), where T is the array in A026374.

The programs for A026380, there is no canonical definition to state claims against.
-/

/-! ## A026380.P12588560512058959134

`record[A026374(A001972(n))]`
-/

namespace A026380.P12588560512058959134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026374 (A001972 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026380.P12588560512058959134

/-! ## A026380.P11643471919480418556

`record[A026374(A008652(n))]`
-/

namespace A026380.P11643471919480418556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026374 (A008652 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026380.P11643471919480418556

/-! ## A026380.P16824758840575787537

`A026374(A074148(n+1))`
-/

namespace A026380.P16824758840575787537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026374 (A074148 (n + 1)).toNat

end

end A026380.P16824758840575787537

/-! ## A026380.P8965149261127085180

`A026374(A194274(n+1))`
-/

namespace A026380.P8965149261127085180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026374 (A194274 (n + 1)).toNat

end

end A026380.P8965149261127085180

/-! ## A026380.P18257002909275733812

`A026374(A007590(n+2))`
-/

namespace A026380.P18257002909275733812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026374 (A007590 (n + 2)).toNat

end

end A026380.P18257002909275733812

/-! ## A026380.P3133143138292671879

`A026374(A080476(n+2))`
-/

namespace A026380.P3133143138292671879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026374 (A080476 (n + 2)).toNat

end

end A026380.P3133143138292671879

/-! ## A026380.P8376046493372300281

`A026374(A001972(Δ[n²]))`
-/

namespace A026380.P8376046493372300281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026374 (A001972 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A026380.P8376046493372300281

/-! ## A026380.P2580888688241573665

`A026374(∑[2*A008619(n)])`
-/

namespace A026380.P2580888688241573665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026374 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A026380.P2580888688241573665

/-! ## A026380.P5379849681494281936

`A026374(A000982(n+1)+n+1)`
-/

namespace A026380.P5379849681494281936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026374 (A000982 (n + 1) + (n + 1 : ℤ)).toNat

end

end A026380.P5379849681494281936

/-! ## A026380.P12538396004028440929

`A026374(A004526((n+2)²))`
-/

namespace A026380.P12538396004028440929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026374 (A004526 ((n + 2) ^ 2)).toNat

end

end A026380.P12538396004028440929

/-!
# A026381: T(n,n-2), where T is the array in A026374.

The programs for A026381, the canonical program `A026381.P16939836640149287143` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026381 has offset 2).

The definition of A026381 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026381.P12325036486506100696

`Δ[n²]+C(comp[3*n], 2)`
-/

namespace A026381.P12325036486506100696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n) 2 : ℤ)

end

end A026381.P12325036486506100696

namespace A026381

/-- `Δ[n²]+C(comp[3*n], 2)` -/
def P12325036486506100696.Spec : Prop :=
  ∀ n, P12325036486506100696.a n = A026381 (n + 2)

end A026381

/-! ## A026381.P10858649876510072170

`C(comp[3*n], 2)+2*n+1`
-/

namespace A026381.P10858649876510072170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) 2 + 2 * n + 1

end

end A026381.P10858649876510072170

namespace A026381

/-- `C(comp[3*n], 2)+2*n+1` -/
def P10858649876510072170.Spec : Prop :=
  ∀ n, (P10858649876510072170.a n : ℤ) = A026381 (n + 2)

end A026381

/-! ## A026381.P16939836640149287143

`∑[a(n-2)+3*gcd(2, n)]` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026381

/-- `∑[a(n-2)+3*gcd(2, n)]` -/
def P16939836640149287143.Spec : Prop :=
  ∀ n, (P16939836640149287143.a n : ℤ) = A026381 (n + 2)

theorem P16939836640149287143.correct : P16939836640149287143.Spec := by
  intro n
  simp only [A026381, Nat.add_sub_cancel]

end A026381

/-! ## A026381.P15019341379204881809

`∑[n%2+lcm(2, 3*n+1)/2]`
-/

namespace A026381.P15019341379204881809
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℚ) + (Nat.lcm 2 (3 * n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026381.P15019341379204881809

namespace A026381

/-- `∑[n%2+lcm(2, 3*n+1)/2]` -/
def P15019341379204881809.Spec : Prop :=
  ∀ n, P15019341379204881809.a n = (A026381 (n + 2) : ℚ)

end A026381

/-! ## A026381.P10783442598510423257

`∑[a(n-2)+9]-a(n-1)` with `a(0)=1, a(1)=4`
-/

namespace A026381.P10783442598510423257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  f1 (n - 2) + 9

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A026381.P10783442598510423257

namespace A026381

/-- `∑[a(n-2)+9]-a(n-1)` -/
def P10783442598510423257.Spec : Prop :=
  ∀ n, P10783442598510423257.a n = A026381 (n + 2)

end A026381

/-! ## A026381.P7619261366418992943

`∑[∑[9-a(n-1)]-a(n-1)]` with `a(0)=1, a(1)=3`
-/

namespace A026381.P7619261366418992943
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f2 =>
  9 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  ∑ j ∈ Finset.range (n + 1), f2 j - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026381.P7619261366418992943

namespace A026381

/-- `∑[∑[9-a(n-1)]-a(n-1)]` -/
def P7619261366418992943.Spec : Prop :=
  ∀ n, P7619261366418992943.a n = A026381 (n + 2)

end A026381

/-! ## A026381.P12843529220906771741

`C(∑[and(1, n+1)]+n, 2)+2*n+1`
-/

namespace A026381.P12843529220906771741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + n) 2 + (2 * n + 1)

end

end A026381.P12843529220906771741

namespace A026381

/-- `C(∑[and(1, n+1)]+n, 2)+2*n+1` -/
def P12843529220906771741.Spec : Prop :=
  ∀ n, (P12843529220906771741.a n : ℤ) = A026381 (n + 2)

end A026381

/-! ## A026381.P17034669827831578144

`A193053(n)+A131805(n)`
-/

namespace A026381.P17034669827831578144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193053 n + A131805 n

end

end A026381.P17034669827831578144

namespace A026381

/-- `A193053(n)+A131805(n)` -/
def P17034669827831578144.Spec : Prop :=
  ∀ n, P17034669827831578144.a n = A026381 (n + 2)

end A026381

/-! ## A026381.P14112379001558994779

`A198392(n)-A057979(n)`
-/

namespace A026381.P14112379001558994779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198392 n - A057979 n

end

end A026381.P14112379001558994779

namespace A026381

/-- `A198392(n)-A057979(n)` -/
def P14112379001558994779.Spec : Prop :=
  ∀ n, P14112379001558994779.a n = A026381 (n + 2)

end A026381

/-! ## A026381.P14809105429895486344

`A210981(n)+Δ[A006578(n)]`
-/

namespace A026381.P14809105429895486344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210981 n + (f1 (n + 1) - f1 n)

end

end A026381.P14809105429895486344

namespace A026381

/-- `A210981(n)+Δ[A006578(n)]` -/
def P14809105429895486344.Spec : Prop :=
  ∀ n, P14809105429895486344.a n = A026381 (n + 2)

end A026381

/-! ## A026381.P6241612295331007895

`A210981(n)+A032766(n+1)`
-/

namespace A026381.P6241612295331007895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210981 n + A032766 (n + 1)

end

end A026381.P6241612295331007895

namespace A026381

/-- `A210981(n)+A032766(n+1)` -/
def P6241612295331007895.Spec : Prop :=
  ∀ n, P6241612295331007895.a n = A026381 (n + 2)

end A026381

/-! ## A026381.P120280724909907623

`A195160(n)+A080512(n+1)`
-/

namespace A026381.P120280724909907623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195160 n + A080512 (n + 1)

end

end A026381.P120280724909907623

namespace A026381

/-- `A195160(n)+A080512(n+1)` -/
def P120280724909907623.Spec : Prop :=
  ∀ n, P120280724909907623.a n = A026381 (n + 2)

end A026381

/-! ## A026381.P11926117972552382947

`A195014(n)+A093005(n+1)`
-/

namespace A026381.P11926117972552382947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195014 n + A093005 (n + 1)

end

end A026381.P11926117972552382947

namespace A026381

/-- `A195014(n)+A093005(n+1)` -/
def P11926117972552382947.Spec : Prop :=
  ∀ n, P11926117972552382947.a n = A026381 (n + 2)

end A026381

/-! ## A026381.P17369151856953821602

`A266304(n)+A087099(n+1)`
-/

namespace A026381.P17369151856953821602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266304 n + A087099 (n + 1)

end

end A026381.P17369151856953821602

namespace A026381

/-- `A266304(n)+A087099(n+1)` -/
def P17369151856953821602.Spec : Prop :=
  ∀ n, P17369151856953821602.a n = A026381 (n + 2)

end A026381

/-! ## A026381.P4489473781892209548

`A110349(n+1)-A317301(n)`
-/

namespace A026381.P4489473781892209548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110349 (n + 1) - A317301 n

end

end A026381.P4489473781892209548

namespace A026381

/-- `A110349(n+1)-A317301(n)` -/
def P4489473781892209548.Spec : Prop :=
  ∀ n, P4489473781892209548.a n = A026381 (n + 2)

end A026381

/-! ## A026381.P13552282437573241765

`A000217(A032766(n))+Δ[n²]`
-/

namespace A026381.P13552282437573241765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A032766 n).toNat + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A026381.P13552282437573241765

namespace A026381

/-- `A000217(A032766(n))+Δ[n²]` -/
def P13552282437573241765.Spec : Prop :=
  ∀ n, P13552282437573241765.a n = A026381 (n + 2)

end A026381

/-! ## A026381.P11165735656218797072

`A195020(n)+(A004526(n)+1)²`
-/

namespace A026381.P11165735656218797072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195020 n + (A004526 n + 1) ^ 2

end

end A026381.P11165735656218797072

namespace A026381

/-- `A195020(n)+(A004526(n)+1)²` -/
def P11165735656218797072.Spec : Prop :=
  ∀ n, P11165735656218797072.a n = A026381 (n + 2)

end A026381

/-! ## A026381.P8953789762532859164

`A117748(n+1)+A065262(n+1)`
-/

namespace A026381.P8953789762532859164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117748 (n + 1) + A065262 (n + 1)

end

end A026381.P8953789762532859164

namespace A026381

/-- `A117748(n+1)+A065262(n+1)` -/
def P8953789762532859164.Spec : Prop :=
  ∀ n, P8953789762532859164.a n = A026381 (n + 2)

end A026381

/-! ## A026381.P13423606576886016300

`A111712(n+1)+A105638(n+3)`
-/

namespace A026381.P13423606576886016300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111712 (n + 1) + A105638 (n + 3)

end

end A026381.P13423606576886016300

namespace A026381

/-- `A111712(n+1)+A105638(n+3)` -/
def P13423606576886016300.Spec : Prop :=
  ∀ n, P13423606576886016300.a n = A026381 (n + 2)

end A026381

/-!
# A026382: a(n) = T(n,n-3), where T is the array in A026374.

The programs for A026382, the canonical program `A026382.P9905226329419189044` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026382 has offset 3).

The definition of A026382 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6667 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026382.P9905226329419189044

`A007980(A032766(n))+A000292(A007494(n))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A026382

/-- `A007980(A032766(n))+A000292(A007494(n))` -/
def P9905226329419189044.Spec : Prop :=
  ∀ n, P9905226329419189044.a n = A026382 (n + 3)

theorem P9905226329419189044.correct : P9905226329419189044.Spec := by
  intro n
  simp only [A026382, Nat.add_sub_cancel]

end A026382

/-! ## A026382.P18323755853722982685

`A124093(3*n+2)+a(n-1)+n-∑[n]%n` with `a(0)=1`
-/

namespace A026382.P18323755853722982685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A124093 (3 * n + 2) + (a (n - 1) + ((n : ℤ) - (((∑ j ∈ Finset.range (n + 1), f1 j) % n : ℕ) : ℤ)))

end

end A026382.P18323755853722982685

namespace A026382

/-- `A124093(3*n+2)+a(n-1)+n-∑[n]%n` -/
def P18323755853722982685.Spec : Prop :=
  ∀ n, P18323755853722982685.a n = A026382 (n + 3)

end A026382

/-! ## A026382.P15294895479362170194

`A001318(n)+∑[A124093(3*n+2)]`
-/

namespace A026382.P15294895479362170194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124093 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026382.P15294895479362170194

namespace A026382

/-- `A001318(n)+∑[A124093(3*n+2)]` -/
def P15294895479362170194.Spec : Prop :=
  ∀ n, P15294895479362170194.a n = A026382 (n + 3)

end A026382

/-! ## A026382.P1742958326778223871

`∑[A124093(3*n+2)]+A319390(n)-1`
-/

namespace A026382.P1742958326778223871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124093 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A319390 n - 1)

end

end A026382.P1742958326778223871

namespace A026382

/-- `∑[A124093(3*n+2)]+A319390(n)-1` -/
def P1742958326778223871.Spec : Prop :=
  ∀ n, P1742958326778223871.a n = A026382 (n + 3)

end A026382

/-! ## A026382.P12853384298102685172

`A069905(A047270(n+1))+A000292(A007494(n))`
-/

namespace A026382.P12853384298102685172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (A047270 (n + 1)).toNat + A000292 (A007494 n).toNat

end

end A026382.P12853384298102685172

namespace A026382

/-- `A069905(A047270(n+1))+A000292(A007494(n))` -/
def P12853384298102685172.Spec : Prop :=
  ∀ n, P12853384298102685172.a n = A026382 (n + 3)

end A026382

/-! ## A026382.P15076902643278442922

`A026374(∑[n+3]+6)`
-/

namespace A026382.P15076902643278442922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026374 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A026382.P15076902643278442922

namespace A026382

/-- `A026374(∑[n+3]+6)` -/
def P15076902643278442922.Spec : Prop :=
  ∀ n, P15076902643278442922.a n = A026382 (n + 3)

end A026382

/-! ## A026382.P13786337416421440184

`A026374(A167614(n+2))%A016901(n)`
-/

namespace A026382.P13786337416421440184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026374 (A167614 (n + 2)).toNat) (A016901 n)

end

end A026382.P13786337416421440184

namespace A026382

/-- `A026374(A167614(n+2))%A016901(n)` -/
def P13786337416421440184.Spec : Prop :=
  ∀ n, P13786337416421440184.a n = A026382 (n + 3)

end A026382

/-! ## A026382.P2345283050915297618

`or(A000007(n), A026374(A000124(n+3)+2))`
-/

namespace A026382.P2345283050915297618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A026374 (A000124 (n + 3) + 2).toNat)

end

end A026382.P2345283050915297618

namespace A026382

/-- `or(A000007(n), A026374(A000124(n+3)+2))` -/
def P2345283050915297618.Spec : Prop :=
  ∀ n, P2345283050915297618.a n = A026382 (n + 3)

end A026382

/-! ## A026382.P11330730809854915717

`A026374(A000124(n+3)+2)%A255172(n+1)`
-/

namespace A026382.P11330730809854915717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026374 (A000124 (n + 3) + 2).toNat) (A255172 (n + 1))

end

end A026382.P11330730809854915717

namespace A026382

/-- `A026374(A000124(n+3)+2)%A255172(n+1)` -/
def P11330730809854915717.Spec : Prop :=
  ∀ n, P11330730809854915717.a n = A026382 (n + 3)

end A026382

/-!
# A026383: a(n) = 5*a(n-2), starting 1,2.

The programs for A026383, the canonical program `A026383.P10508355315579602220` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026383 has offset 0).

The definition of A026383 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-2)` (program `A026383.P10508355315579602220`, by `A026383.P10508355315579602220.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A026383.P10508355315579602220

`5*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026383

/-- `5*a(n-2)` -/
def P10508355315579602220.Spec : Prop :=
  ∀ n, (P10508355315579602220.a n : ℤ) = A026383 n

theorem P10508355315579602220.correct : P10508355315579602220.Spec := by
  intro n
  simp only [A026383]

end A026383

/-! ## A026383.P7534573091929156121

`∏[5/a(n-1)]` with `a(0)=1, a(1)=2`
-/

namespace A026383.P7534573091929156121
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  5 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A026383.P7534573091929156121

namespace A026383

/-- `∏[5/a(n-1)]` -/
def P7534573091929156121.Spec : Prop :=
  ∀ n, P7534573091929156121.a n = (A026383 n : ℚ)

end A026383

/-! ## A026383.P7323261653912167021

`a(n-2)/(1-4/5)` with `a(0)=1, a(1)=2`
-/

namespace A026383.P7323261653912167021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) / (1 - (4 : ℚ) / 5)

end

end A026383.P7323261653912167021

namespace A026383

/-- `a(n-2)/(1-4/5)` -/
def P7323261653912167021.Spec : Prop :=
  ∀ n, P7323261653912167021.a n = (A026383 n : ℚ)

end A026383

/-! ## A026383.P17348257770466016683

`a(n-1)+a(n-2)+a(n-2)+gcd(a(n-1), a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A026383.P17348257770466016683
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + (a (n - 2) + (a (n - 2) + Nat.gcd (a (n - 1)) (a (n - 2))))

end

end A026383.P17348257770466016683

namespace A026383

/-- `a(n-1)+a(n-2)+a(n-2)+gcd(a(n-1), a(n-2))` -/
def P17348257770466016683.Spec : Prop :=
  ∀ n, (P17348257770466016683.a n : ℤ) = A026383 n

end A026383

/-! ## A026383.P14422184968274249244

`5^(n/2)*(1/2+1/sqrt(5)+(1/2-1/sqrt(5))*(-1)^n)`
-/

namespace A026383.P14422184968274249244
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (5 : ℝ) ^ ((n : ℚ) / 2 : ℝ) * (((1 : ℚ) / 2 : ℝ) + 1 / Real.sqrt (5 : ℝ) + (((1 : ℚ) / 2 : ℝ) - 1 / Real.sqrt (5 : ℝ)) * ((-1) ^ n : ℝ))

end

end A026383.P14422184968274249244

namespace A026383

/-- `5^(n/2)*(1/2+1/sqrt(5)+(1/2-1/sqrt(5))*(-1)^n)` -/
def P14422184968274249244.Spec : Prop :=
  ∀ n, P14422184968274249244.a n = (A026383 n : ℝ)

end A026383

/-! ## A026383.P16342997928606182233

`A133335(A032766(n))`
-/

namespace A026383.P16342997928606182233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133335 (A032766 n).toNat

end

end A026383.P16342997928606182233

namespace A026383

/-- `A133335(A032766(n))` -/
def P16342997928606182233.Spec : Prop :=
  ∀ n, P16342997928606182233.a n = A026383 n

end A026383

/-! ## A026383.P5163316932262278214

`A140730(A042948(n))`
-/

namespace A026383.P5163316932262278214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140730 (A042948 n).toNat

end

end A026383.P5163316932262278214

namespace A026383

/-- `A140730(A042948(n))` -/
def P5163316932262278214.Spec : Prop :=
  ∀ n, P5163316932262278214.a n = A026383 n

end A026383

/-! ## A026383.P9560178584355616334

`A245478(A001651(n+1))`
-/

namespace A026383.P9560178584355616334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245478 (A001651 (n + 1)).toNat

end

end A026383.P9560178584355616334

namespace A026383

/-- `A245478(A001651(n+1))` -/
def P9560178584355616334.Spec : Prop :=
  ∀ n, P9560178584355616334.a n = A026383 n

end A026383

/-! ## A026383.P3273885157133208709

`A245478(A032766(n)+1)`
-/

namespace A026383.P3273885157133208709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245478 (A032766 n + 1).toNat

end

end A026383.P3273885157133208709

namespace A026383

/-- `A245478(A032766(n)+1)` -/
def P3273885157133208709.Spec : Prop :=
  ∀ n, P3273885157133208709.a n = A026383 n

end A026383

/-! ## A026383.P7846891207229345320

`A133335(A007494(n+1)-2)`
-/

namespace A026383.P7846891207229345320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133335 (A007494 (n + 1) - 2).toNat

end

end A026383.P7846891207229345320

namespace A026383

/-- `A133335(A007494(n+1)-2)` -/
def P7846891207229345320.Spec : Prop :=
  ∀ n, P7846891207229345320.a n = A026383 n

end A026383

/-! ## A026383.P9567626989637946012

`A245478(A294732(n+3)-1)`
-/

namespace A026383.P9567626989637946012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245478 (A294732 (n + 3) - 1).toNat

end

end A026383.P9567626989637946012

namespace A026383

/-- `A245478(A294732(n+3)-1)` -/
def P9567626989637946012.Spec : Prop :=
  ∀ n, P9567626989637946012.a n = A026383 n

end A026383

/-! ## A026383.P17311352941983248618

`A133335(A047238(n+1)/2)`
-/

namespace A026383.P17311352941983248618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133335 (SequenceMachineLib.roundAway ((A047238 (n + 1) : ℚ) / 2)).toNat

end

end A026383.P17311352941983248618

namespace A026383

/-- `A133335(A047238(n+1)/2)` -/
def P17311352941983248618.Spec : Prop :=
  ∀ n, P17311352941983248618.a n = A026383 n

end A026383

/-! ## A026383.P14380188135737410965

`A140730(A047467(n+1)/2)`
-/

namespace A026383.P14380188135737410965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140730 (SequenceMachineLib.roundAway ((A047467 (n + 1) : ℚ) / 2)).toNat

end

end A026383.P14380188135737410965

namespace A026383

/-- `A140730(A047467(n+1)/2)` -/
def P14380188135737410965.Spec : Prop :=
  ∀ n, P14380188135737410965.a n = A026383 n

end A026383

/-! ## A026383.P11308198873494882858

`A133335(A294732(n+3)-2)`
-/

namespace A026383.P11308198873494882858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133335 (A294732 (n + 3) - 2).toNat

end

end A026383.P11308198873494882858

namespace A026383

/-- `A133335(A294732(n+3)-2)` -/
def P11308198873494882858.Spec : Prop :=
  ∀ n, P11308198873494882858.a n = A026383 n

end A026383

/-! ## A026383.P13675630893170563859

`A133632(n+1)/A000034(n)`
-/

namespace A026383.P13675630893170563859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133632 (n + 1) : ℚ) / (A000034 n : ℚ)

end

end A026383.P13675630893170563859

namespace A026383

/-- `A133632(n+1)/A000034(n)` -/
def P13675630893170563859.Spec : Prop :=
  ∀ n, P13675630893170563859.a n = (A026383 n : ℚ)

end A026383

/-! ## A026383.P15618680487348750963

`lcm(A000034(n), A074872(n+1))`
-/

namespace A026383.P15618680487348750963
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A074872 (n + 1))

end

end A026383.P15618680487348750963

namespace A026383

/-- `lcm(A000034(n), A074872(n+1))` -/
def P15618680487348750963.Spec : Prop :=
  ∀ n, (P15618680487348750963.a n : ℤ) = A026383 n

end A026383

/-! ## A026383.P3762138440756210649

`∩[A245478(n+1), A133335(n)]`
-/

namespace A026383.P3762138440756210649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245478 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133335 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A026383.P3762138440756210649

namespace A026383

/-- `∩[A245478(n+1), A133335(n)]` -/
def P3762138440756210649.Spec : Prop :=
  ∀ n, (P3762138440756210649.a n : ℤ) = A026383 n

end A026383

/-! ## A026383.P1747518918926192018

`A140730(A154708(2*(n+1))-A154708(n+2))`
-/

namespace A026383.P1747518918926192018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140730 (A154708 (2 * (n + 1)) - A154708 (n + 2)).toNat

end

end A026383.P1747518918926192018

namespace A026383

/-- `A140730(A154708(2*(n+1))-A154708(n+2))` -/
def P1747518918926192018.Spec : Prop :=
  ∀ n, P1747518918926192018.a n = A026383 n

end A026383

/-! ## A026383.P17324693652180279463

`∪[A162963(n+1), A162963(n+1)-A056487(n)]`
-/

namespace A026383.P17324693652180279463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162963 (n + 1) - A056487 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026383.P17324693652180279463

namespace A026383

/-- `∪[A162963(n+1), A162963(n+1)-A056487(n)]` -/
def P17324693652180279463.Spec : Prop :=
  ∀ n, (P17324693652180279463.a n : ℤ) = A026383 n

end A026383

/-!
# A026384: a(n) = Sum_{j=0..i, i=0..n} T(i,j), where T is the array in A026374.

The programs for A026384, the canonical program `A026384.P2266593069133610081` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026384 has offset 0).

The definition of A026384 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A026384.P2266593069133610081

`5*a(n-2)+3` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026384

/-- `5*a(n-2)+3` -/
def P2266593069133610081.Spec : Prop :=
  ∀ n, (P2266593069133610081.a n : ℤ) = A026384 n

theorem P2266593069133610081.correct : P2266593069133610081.Spec := by
  intro n
  simp only [A026384]

end A026384

/-! ## A026384.P10827964642652384918

`∑[5*a(n-2)]` with `a(0)=1, a(1)=2`
-/

namespace A026384.P10827964642652384918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  5 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026384.P10827964642652384918

namespace A026384

/-- `∑[5*a(n-2)]` -/
def P10827964642652384918.Spec : Prop :=
  ∀ n, (P10827964642652384918.a n : ℤ) = A026384 n

end A026384

/-! ## A026384.P249711783728391083

`lcm(5, a(n-2))+3` with `a(0)=1, a(1)=3`
-/

namespace A026384.P249711783728391083
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  Nat.lcm 5 (a (n - 2)) + 3

end

end A026384.P249711783728391083

namespace A026384

/-- `lcm(5, a(n-2))+3` -/
def P249711783728391083.Spec : Prop :=
  ∀ n, (P249711783728391083.a n : ℤ) = A026384 n

end A026384

/-! ## A026384.P4493754477109988401

`8-5*(1-a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A026384.P4493754477109988401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  8 - 5 * (1 - a (n - 2))

end

end A026384.P4493754477109988401

namespace A026384

/-- `8-5*(1-a(n-2))` -/
def P4493754477109988401.Spec : Prop :=
  ∀ n, P4493754477109988401.a n = A026384 n

end A026384

/-! ## A026384.P15461366164329445626

`∑[a(n-2)/(1-4/5)]` with `a(0)=1, a(1)=2`
-/

namespace A026384.P15461366164329445626
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 2) / (1 - (4 : ℚ) / 5)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026384.P15461366164329445626

namespace A026384

/-- `∑[a(n-2)/(1-4/5)]` -/
def P15461366164329445626.Spec : Prop :=
  ∀ n, P15461366164329445626.a n = (A026384 n : ℚ)

end A026384

/-! ## A026384.P16869824752659454434

`∑[A026383(n)]`
-/

namespace A026384.P16869824752659454434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026383 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026384.P16869824752659454434

namespace A026384

/-- `∑[A026383(n)]` -/
def P16869824752659454434.Spec : Prop :=
  ∀ n, P16869824752659454434.a n = A026384 n

end A026384

/-! ## A026384.P18363667078395254541

`∑[A026395(n+1)/2]`
-/

namespace A026384.P18363667078395254541
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026395 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026384.P18363667078395254541

namespace A026384

/-- `∑[A026395(n+1)/2]` -/
def P18363667078395254541.Spec : Prop :=
  ∀ n, P18363667078395254541.a n = (A026384 n : ℚ)

end A026384

/-! ## A026384.P11894027507026750714

`A162963(n)+a(n-1)` with `a(0)=1`
-/

namespace A026384.P11894027507026750714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A162963 n + a (n - 1)

end

end A026384.P11894027507026750714

namespace A026384

/-- `A162963(n)+a(n-1)` -/
def P11894027507026750714.Spec : Prop :=
  ∀ n, P11894027507026750714.a n = A026384 n

end A026384

/-! ## A026384.P10808759275923467234

`∑[A140730(2*n+1)/2]`
-/

namespace A026384.P10808759275923467234
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140730 (2 * n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026384.P10808759275923467234

namespace A026384

/-- `∑[A140730(2*n+1)/2]` -/
def P10808759275923467234.Spec : Prop :=
  ∀ n, P10808759275923467234.a n = (A026384 n : ℚ)

end A026384

/-! ## A026384.P12041455496385032980

`∑[gcd(2, n+1)*A074872(n+1)]`
-/

namespace A026384.P12041455496385032980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (n + 1) : ℤ) * A074872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026384.P12041455496385032980

namespace A026384

/-- `∑[gcd(2, n+1)*A074872(n+1)]` -/
def P12041455496385032980.Spec : Prop :=
  ∀ n, P12041455496385032980.a n = A026384 n

end A026384

/-! ## A026384.P2920267571754157166

`∑[A245478(A001651(n+1))]`
-/

namespace A026384.P2920267571754157166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245478 (A001651 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026384.P2920267571754157166

namespace A026384

/-- `∑[A245478(A001651(n+1))]` -/
def P2920267571754157166.Spec : Prop :=
  ∀ n, P2920267571754157166.a n = A026384 n

end A026384

/-! ## A026384.P6667718122779429158

`∑[A245478(A032766(n)+1)]`
-/

namespace A026384.P6667718122779429158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245478 (A032766 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026384.P6667718122779429158

namespace A026384

/-- `∑[A245478(A032766(n)+1)]` -/
def P6667718122779429158.Spec : Prop :=
  ∀ n, P6667718122779429158.a n = A026384 n

end A026384

/-! ## A026384.P6754182282831203949

`∑[A000034(n)*A074872(n+1)]`
-/

namespace A026384.P6754182282831203949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A074872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026384.P6754182282831203949

namespace A026384

/-- `∑[A000034(n)*A074872(n+1)]` -/
def P6754182282831203949.Spec : Prop :=
  ∀ n, P6754182282831203949.a n = A026384 n

end A026384

/-! ## A026384.P11137905851139564225

`floor(A026396(n)/2)`
-/

namespace A026384.P11137905851139564225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A026396 n : ℚ) / 2⌋

end

end A026384.P11137905851139564225

namespace A026384

/-- `floor(A026396(n)/2)` -/
def P11137905851139564225.Spec : Prop :=
  ∀ n, P11137905851139564225.a n = A026384 n

end A026384

/-! ## A026384.P17139231183613624617

`∑[A162963(n+2)/5]`
-/

namespace A026384.P17139231183613624617
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162963 (n + 2) : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026384.P17139231183613624617

namespace A026384

/-- `∑[A162963(n+2)/5]` -/
def P17139231183613624617.Spec : Prop :=
  ∀ n, P17139231183613624617.a n = (A026384 n : ℚ)

end A026384

/-! ## A026384.P5561946632645063258

`∑[A162963(n+1)]+1-A162963(n+1)`
-/

namespace A026384.P5561946632645063258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A162963 (n + 1))

end

end A026384.P5561946632645063258

namespace A026384

/-- `∑[A162963(n+1)]+1-A162963(n+1)` -/
def P5561946632645063258.Spec : Prop :=
  ∀ n, P5561946632645063258.a n = A026384 n

end A026384

/-! ## A026384.P9253435548711302433

`∑[A026955(n+1)/(n+3)]`
-/

namespace A026384.P9253435548711302433
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026955 (n + 1) : ℚ) / (n + 3 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026384.P9253435548711302433

namespace A026384

/-- `∑[A026955(n+1)/(n+3)]` -/
def P9253435548711302433.Spec : Prop :=
  ∀ n, P9253435548711302433.a n = (A026384 n : ℚ)

end A026384

/-! ## A026384.P7555435119749984261

`∑[record[A232646(n+1)]]`
-/

namespace A026384.P7555435119749984261
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232646 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026384.P7555435119749984261

namespace A026384

/-- `∑[record[A232646(n+1)]]` -/
def P7555435119749984261.Spec : Prop :=
  ∀ n, P7555435119749984261.a n = A026384 n

end A026384

/-!
# A026385: Sum{T(n-k,k)}, 0<=k<=[ n/2 ], where T is the array in A026374.

The programs for A026385, the canonical program `A026385.P6683939860366398613` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026385 has offset 0).

The definition of A026385 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A026385.P6683939860366398613

`a(n-2)+3*a(n-3)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026385

/-- `a(n-2)+3*a(n-3)+a(n-4)` -/
def P6683939860366398613.Spec : Prop :=
  ∀ n, (P6683939860366398613.a n : ℤ) = A026385 n

theorem P6683939860366398613.correct : P6683939860366398613.Spec := by
  intro n
  simp only [A026385]

end A026385

/-! ## A026385.P13037051209495252593

`A026397(n)-a(n-1)` with `a(0)=1`
-/

namespace A026385.P13037051209495252593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026397 n - a (n - 1)

end

end A026385.P13037051209495252593

namespace A026385

/-- `A026397(n)-a(n-1)` -/
def P13037051209495252593.Spec : Prop :=
  ∀ n, P13037051209495252593.a n = A026385 n

end A026385

/-! ## A026385.P3846282338616085698

`A257062(A212342(n))`
-/

namespace A026385.P3846282338616085698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257062 (A212342 n).toNat

end

end A026385.P3846282338616085698

namespace A026385

/-- `A257062(A212342(n))` -/
def P3846282338616085698.Spec : Prop :=
  ∀ n, P3846282338616085698.a n = A026385 n

end A026385

/-! ## A026385.P118903422637756952

`A257062(A000124(n)-A046698(n))`
-/

namespace A026385.P118903422637756952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257062 (A000124 n - A046698 n).toNat

end

end A026385.P118903422637756952

namespace A026385

/-- `A257062(A000124(n)-A046698(n))` -/
def P118903422637756952.Spec : Prop :=
  ∀ n, P118903422637756952.a n = A026385 n

end A026385

/-! ## A026385.P4439200850949589804

`A257062(A289207(n)+A152947(n+1))`
-/

namespace A026385.P4439200850949589804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257062 (A289207 n + A152947 (n + 1)).toNat

end

end A026385.P4439200850949589804

namespace A026385

/-- `A257062(A289207(n)+A152947(n+1))` -/
def P4439200850949589804.Spec : Prop :=
  ∀ n, P4439200850949589804.a n = A026385 n

end A026385

/-! ## A026385.P4638234691463447022

`A257062(A000124(n)+1-A158799(n))`
-/

namespace A026385.P4638234691463447022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257062 (A000124 n + (1 - A158799 n)).toNat

end

end A026385.P4638234691463447022

namespace A026385

/-- `A257062(A000124(n)+1-A158799(n))` -/
def P4638234691463447022.Spec : Prop :=
  ∀ n, P4638234691463447022.a n = A026385 n

end A026385

/-! ## A026385.P1116273167442058333

`A257062(1-(A158799(n)-A000124(n)))`
-/

namespace A026385.P1116273167442058333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257062 (1 - (A158799 n - A000124 n)).toNat

end

end A026385.P1116273167442058333

namespace A026385

/-- `A257062(1-(A158799(n)-A000124(n)))` -/
def P1116273167442058333.Spec : Prop :=
  ∀ n, P1116273167442058333.a n = A026385 n

end A026385

/-!
# A026386: Triangular array T read by rows: T(n,0) = T(n,n) = 1 for all n >= 0; T(n,k) = T(n-1,k-1) + T(n-1,k) for even n and k = 1..n-1; T(n,k) = T(n-1,k-1) + T(n-1,k) + T(n-2,k-1) for odd n and k = 1 ..n-1.

The programs for A026386, there is no canonical definition to state claims against.
-/

/-! ## A026386.P1380038189579929168

`A036042(A059328(n)%A090123(n+1))`
-/

namespace A026386.P1380038189579929168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036042 (Int.tmod (A059328 n) (A090123 (n + 1))).toNat

end

end A026386.P1380038189579929168

/-! ## A026386.P2134541974163669343

`A036042(A059328(n))`
-/

namespace A026386.P2134541974163669343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036042 (A059328 n).toNat

end

end A026386.P2134541974163669343

/-! ## A026386.P5872524742051816791

`A091951(A156184(n))`
-/

namespace A026386.P5872524742051816791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091951 (A156184 n).toNat

end

end A026386.P5872524742051816791

/-! ## A026386.P13921780324219976244

`A363671(A088925(n))`
-/

namespace A026386.P13921780324219976244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363671 (A088925 n).toNat

end

end A026386.P13921780324219976244

/-! ## A026386.P3873246249240793559

`A363671(A100862(n))`
-/

namespace A026386.P3873246249240793559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363671 (A100862 n).toNat

end

end A026386.P3873246249240793559

/-!
# A026387: a(n) = number of integer strings s(0),...,s(n) counted by array T in A026386 that have s(n)=0; also a(n) = T(2n,n).

The programs for A026387, the canonical program `A026387.P3989606059390218038` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026387 has offset 0).

The definition of A026387 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A026387.P3989606059390218038

`A085362(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A026387

/-- `A085362(n+1)` -/
def P3989606059390218038.Spec : Prop :=
  ∀ n, P3989606059390218038.a n = A026387 n

theorem P3989606059390218038.correct : P3989606059390218038.Spec := by
  intro n
  simp only [A026387]

end A026387

/-! ## A026387.P7726048758009006139

`2*Δ[A242586(n)]`
-/

namespace A026387.P7726048758009006139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242586 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A026387.P7726048758009006139

namespace A026387

/-- `2*Δ[A242586(n)]` -/
def P7726048758009006139.Spec : Prop :=
  ∀ n, P7726048758009006139.a n = A026387 n

end A026387

/-! ## A026387.P4523012477767192568

`2*A026378(n+1)`
-/

namespace A026387.P4523012477767192568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026378 (n + 1)

end

end A026387.P4523012477767192568

namespace A026387

/-- `2*A026378(n+1)` -/
def P4523012477767192568.Spec : Prop :=
  ∀ n, P4523012477767192568.a n = A026387 n

end A026387

/-! ## A026387.P12141767907371668908

`A026392(2*(n+1))`
-/

namespace A026387.P12141767907371668908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026392 (2 * (n + 1))

end

end A026387.P12141767907371668908

namespace A026387

/-- `A026392(2*(n+1))` -/
def P12141767907371668908.Spec : Prop :=
  ∀ n, P12141767907371668908.a n = A026387 n

end A026387

/-! ## A026387.P6069929004373597698

`2*A026380(2*n)`
-/

namespace A026387.P6069929004373597698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026380 (2 * n)

end

end A026387.P6069929004373597698

namespace A026387

/-- `2*A026380(2*n)` -/
def P6069929004373597698.Spec : Prop :=
  ∀ n, P6069929004373597698.a n = A026387 n

end A026387

/-! ## A026387.P17463970472176869729

`2*A026392(Δ[n²])`
-/

namespace A026387.P17463970472176869729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026392 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A026387.P17463970472176869729

namespace A026387

/-- `2*A026392(Δ[n²])` -/
def P17463970472176869729.Spec : Prop :=
  ∀ n, P17463970472176869729.a n = A026387 n

end A026387

/-! ## A026387.P1289664978569594315

`record[A085362(abs(1-n))]`
-/

namespace A026387.P1289664978569594315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085362 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026387.P1289664978569594315

namespace A026387

/-- `record[A085362(abs(1-n))]` -/
def P1289664978569594315.Spec : Prop :=
  ∀ n, P1289664978569594315.a n = A026387 n

end A026387

/-! ## A026387.P15630671152824709053

`ratio[A085362(n)]*A085362(n)`
-/

namespace A026387.P15630671152824709053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085362 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A085362 n : ℚ)

end

end A026387.P15630671152824709053

namespace A026387

/-- `ratio[A085362(n)]*A085362(n)` -/
def P15630671152824709053.Spec : Prop :=
  ∀ n, P15630671152824709053.a n = (A026387 n : ℚ)

end A026387

/-! ## A026387.P2565211811795426993

`A026388(n+1)+A002212(n+1)`
-/

namespace A026387.P2565211811795426993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026388 (n + 1) + A002212 (n + 1)

end

end A026387.P2565211811795426993

namespace A026387

/-- `A026388(n+1)+A002212(n+1)` -/
def P2565211811795426993.Spec : Prop :=
  ∀ n, P2565211811795426993.a n = A026387 n

end A026387

/-! ## A026387.P9033512324262645362

`A128732(n+1)+A126568(n+1)`
-/

namespace A026387.P9033512324262645362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128732 (n + 1) + A126568 (n + 1)

end

end A026387.P9033512324262645362

namespace A026387

/-- `A128732(n+1)+A126568(n+1)` -/
def P9033512324262645362.Spec : Prop :=
  ∀ n, P9033512324262645362.a n = A026387 n

end A026387

/-! ## A026387.P1995036886414220909

`A026378(n+1)+A242586(n+1)-A242586(n)`
-/

namespace A026387.P1995036886414220909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026378 (n + 1) + (A242586 (n + 1) - A242586 n)

end

end A026387.P1995036886414220909

namespace A026387

/-- `A026378(n+1)+A242586(n+1)-A242586(n)` -/
def P1995036886414220909.Spec : Prop :=
  ∀ n, P1995036886414220909.a n = A026387 n

end A026387

/-! ## A026387.P9574273438376787753

`Δ[A026375(n)]`
-/

namespace A026387.P9574273438376787753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026387.P9574273438376787753

namespace A026387

/-- `Δ[A026375(n)]` -/
def P9574273438376787753.Spec : Prop :=
  ∀ n, P9574273438376787753.a n = A026387 n

end A026387

/-! ## A026387.P16482246319177315509

`Δ[Δ[n*A181768(n)]]`
-/

namespace A026387.P16482246319177315509
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A181768 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026387.P16482246319177315509

namespace A026387

/-- `Δ[Δ[n*A181768(n)]]` -/
def P16482246319177315509.Spec : Prop :=
  ∀ n, P16482246319177315509.a n = A026387 n

end A026387

/-! ## A026387.P153729769008293500

`A026375(n+1)-A026375(n)`
-/

namespace A026387.P153729769008293500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026375 (n + 1) - A026375 n

end

end A026387.P153729769008293500

namespace A026387

/-- `A026375(n+1)-A026375(n)` -/
def P153729769008293500.Spec : Prop :=
  ∀ n, P153729769008293500.a n = A026387 n

end A026387

/-! ## A026387.P135914637974682336

`Δ[Δ[n*A055879(A004277(n))]]`
-/

namespace A026387.P135914637974682336
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A055879 (A004277 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026387.P135914637974682336

namespace A026387

/-- `Δ[Δ[n*A055879(A004277(n))]]` -/
def P135914637974682336.Spec : Prop :=
  ∀ n, P135914637974682336.a n = A026387 n

end A026387

/-! ## A026387.P12494083074956684516

`A026378(n+2)-A128752(n+2)`
-/

namespace A026387.P12494083074956684516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026378 (n + 2) - A128752 (n + 2)

end

end A026387.P12494083074956684516

namespace A026387

/-- `A026378(n+2)-A128752(n+2)` -/
def P12494083074956684516.Spec : Prop :=
  ∀ n, P12494083074956684516.a n = A026387 n

end A026387

/-! ## A026387.P12821722980849000042

`A026378(n+2)-(A026388(n+1)+A026378(n+1))`
-/

namespace A026387.P12821722980849000042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026378 (n + 2) - (A026388 (n + 1) + A026378 (n + 1))

end

end A026387.P12821722980849000042

namespace A026387

/-- `A026378(n+2)-(A026388(n+1)+A026378(n+1))` -/
def P12821722980849000042.Spec : Prop :=
  ∀ n, P12821722980849000042.a n = A026387 n

end A026387

/-! ## A026387.P6906988422970820932

`A129160(n+2)-(A026388(n+1)+A026388(n+1))`
-/

namespace A026387.P6906988422970820932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129160 (n + 2) - (A026388 (n + 1) + A026388 (n + 1))

end

end A026387.P6906988422970820932

namespace A026387

/-- `A129160(n+2)-(A026388(n+1)+A026388(n+1))` -/
def P6906988422970820932.Spec : Prop :=
  ∀ n, P6906988422970820932.a n = A026387 n

end A026387

/-! ## A026387.P1410398325766551962

`2*A126791(∑[n])`
-/

namespace A026387.P1410398325766551962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A126791 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A026387.P1410398325766551962

namespace A026387

/-- `2*A126791(∑[n])` -/
def P1410398325766551962.Spec : Prop :=
  ∀ n, P1410398325766551962.a n = A026387 n

end A026387

/-! ## A026387.P3218381667277002935

`record[2*A126791(n)]`
-/

namespace A026387.P3218381667277002935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A126791 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026387.P3218381667277002935

namespace A026387

/-- `record[2*A126791(n)]` -/
def P3218381667277002935.Spec : Prop :=
  ∀ n, P3218381667277002935.a n = A026387 n

end A026387

/-!
# A026388: a(n) is the number of integer strings s(0),...,s(n) counted by array T in A026386 that have s(n)=2; also a(n) = T(2n,n-1).

The programs for A026388, the canonical program `A026388.P5698085782588348674` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026388 has offset 1).

The definition of A026388 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026388.P5698085782588348674

`A026387(n)-A002212(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A026388

/-- `A026387(n)-A002212(n+1)` -/
def P5698085782588348674.Spec : Prop :=
  ∀ n, P5698085782588348674.a n = A026388 (n + 1)

theorem P5698085782588348674.correct : P5698085782588348674.Spec := by
  intro n
  simp only [A026388, Nat.add_sub_cancel]

end A026388

/-! ## A026388.P16127948431683319425

`A026387(n)-Δ[A007317(n+1)]`
-/

namespace A026388.P16127948431683319425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007317 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026387 n - (f1 (n + 1) - f1 n)

end

end A026388.P16127948431683319425

namespace A026388

/-- `A026387(n)-Δ[A007317(n+1)]` -/
def P16127948431683319425.Spec : Prop :=
  ∀ n, P16127948431683319425.a n = A026388 (n + 1)

end A026388

/-! ## A026388.P17608934110238395799

`∑[A045868(n)]+n*A045868(n)`
-/

namespace A026388.P17608934110238395799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045868 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) * A045868 n

end

end A026388.P17608934110238395799

namespace A026388

/-- `∑[A045868(n)]+n*A045868(n)` -/
def P17608934110238395799.Spec : Prop :=
  ∀ n, P17608934110238395799.a n = A026388 (n + 1)

end A026388

/-! ## A026388.P13694450866972094673

`A085362(n+1)-A002212(n+1)`
-/

namespace A026388.P13694450866972094673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085362 (n + 1) - A002212 (n + 1)

end

end A026388.P13694450866972094673

namespace A026388

/-- `A085362(n+1)-A002212(n+1)` -/
def P13694450866972094673.Spec : Prop :=
  ∀ n, P13694450866972094673.a n = A026388 (n + 1)

end A026388

/-! ## A026388.P15801563163136203871

`A033321(n)+2*A128748(n+1)`
-/

namespace A026388.P15801563163136203871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033321 n + 2 * A128748 (n + 1)

end

end A026388.P15801563163136203871

namespace A026388

/-- `A033321(n)+2*A128748(n+1)` -/
def P15801563163136203871.Spec : Prop :=
  ∀ n, P15801563163136203871.a n = A026388 (n + 1)

end A026388

/-! ## A026388.P3802490362534265778

`A026392(2*(n+1))-A002212(n+1)`
-/

namespace A026388.P3802490362534265778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026392 (2 * (n + 1)) - A002212 (n + 1)

end

end A026388.P3802490362534265778

namespace A026388

/-- `A026392(2*(n+1))-A002212(n+1)` -/
def P3802490362534265778.Spec : Prop :=
  ∀ n, P3802490362534265778.a n = A026388 (n + 1)

end A026388

/-! ## A026388.P457654315668804456

`Δ[A128726(n+1)]+Δ[A128732(n+1)]`
-/

namespace A026388.P457654315668804456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128726 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (f2 (n + 1) - f2 n)

end

end A026388.P457654315668804456

namespace A026388

/-- `Δ[A128726(n+1)]+Δ[A128732(n+1)]` -/
def P457654315668804456.Spec : Prop :=
  ∀ n, P457654315668804456.a n = A026388 (n + 1)

end A026388

/-! ## A026388.P9261762013263302247

`A026378(n+1)+A026378(n+1)-∑[A045868(n)]`
-/

namespace A026388.P9261762013263302247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045868 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026378 (n + 1) + (A026378 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A026388.P9261762013263302247

namespace A026388

/-- `A026378(n+1)+A026378(n+1)-∑[A045868(n)]` -/
def P9261762013263302247.Spec : Prop :=
  ∀ n, P9261762013263302247.a n = A026388 (n + 1)

end A026388

/-! ## A026388.P8222553042991022588

`A026378(n+1)+A026378(n+1)-A002212(n+1)`
-/

namespace A026388.P8222553042991022588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026378 (n + 1) + (A026378 (n + 1) - A002212 (n + 1))

end

end A026388.P8222553042991022588

namespace A026388

/-- `A026378(n+1)+A026378(n+1)-A002212(n+1)` -/
def P8222553042991022588.Spec : Prop :=
  ∀ n, P8222553042991022588.a n = A026388 (n + 1)

end A026388

/-! ## A026388.P16353541730250387286

`A007317(n+1)+A085362(n+1)-A007317(n+2)`
-/

namespace A026388.P16353541730250387286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007317 (n + 1) + (A085362 (n + 1) - A007317 (n + 2))

end

end A026388.P16353541730250387286

namespace A026388

/-- `A007317(n+1)+A085362(n+1)-A007317(n+2)` -/
def P16353541730250387286.Spec : Prop :=
  ∀ n, P16353541730250387286.a n = A026388 (n + 1)

end A026388

/-! ## A026388.P16291312044561520030

`Δ[n*A002212(n)]`
-/

namespace A026388.P16291312044561520030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A002212 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026388.P16291312044561520030

namespace A026388

/-- `Δ[n*A002212(n)]` -/
def P16291312044561520030.Spec : Prop :=
  ∀ n, P16291312044561520030.a n = A026388 (n + 1)

end A026388

/-! ## A026388.P10055660388279156774

`Δ[n*Δ[A181768(n)]]`
-/

namespace A026388.P10055660388279156774
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181768 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026388.P10055660388279156774

namespace A026388

/-- `Δ[n*Δ[A181768(n)]]` -/
def P10055660388279156774.Spec : Prop :=
  ∀ n, P10055660388279156774.a n = A026388 (n + 1)

end A026388

/-! ## A026388.P14798822078110517918

`Δ[n*A025238(n+1)]`
-/

namespace A026388.P14798822078110517918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A025238 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026388.P14798822078110517918

namespace A026388

/-- `Δ[n*A025238(n+1)]` -/
def P14798822078110517918.Spec : Prop :=
  ∀ n, P14798822078110517918.a n = A026388 (n + 1)

end A026388

/-! ## A026388.P9143345988924799353

`Δ[n*∑[∑[A277969(n)]]]`
-/

namespace A026388.P9143345988924799353
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277969 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026388.P9143345988924799353

namespace A026388

/-- `Δ[n*∑[∑[A277969(n)]]]` -/
def P9143345988924799353.Spec : Prop :=
  ∀ n, P9143345988924799353.a n = A026388 (n + 1)

end A026388

/-! ## A026388.P453691245621297022

`Δ[n/2*A122737(n+1)]`
-/

namespace A026388.P453691245621297022
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A122737 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026388.P453691245621297022

namespace A026388

/-- `Δ[n/2*A122737(n+1)]` -/
def P453691245621297022.Spec : Prop :=
  ∀ n, P453691245621297022.a n = (A026388 (n + 1) : ℚ)

end A026388

/-! ## A026388.P10712356592844738520

`Δ[n*record[Δ[A055879(n+1)]]]`
-/

namespace A026388.P10712356592844738520
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026388.P10712356592844738520

namespace A026388

/-- `Δ[n*record[Δ[A055879(n+1)]]]` -/
def P10712356592844738520.Spec : Prop :=
  ∀ n, P10712356592844738520.a n = A026388 (n + 1)

end A026388

/-! ## A026388.P15139388922761833801

`Δ[n*Δ[A055879(A004277(n))]]`
-/

namespace A026388.P15139388922761833801
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055879 (A004277 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026388.P15139388922761833801

namespace A026388

/-- `Δ[n*Δ[A055879(A004277(n))]]` -/
def P15139388922761833801.Spec : Prop :=
  ∀ n, P15139388922761833801.a n = A026388 (n + 1)

end A026388

/-! ## A026388.P13747757943362632425

`Δ[A026375(n)]-A002212(n+1)`
-/

namespace A026388.P13747757943362632425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A002212 (n + 1)

end

end A026388.P13747757943362632425

namespace A026388

/-- `Δ[A026375(n)]-A002212(n+1)` -/
def P13747757943362632425.Spec : Prop :=
  ∀ n, P13747757943362632425.a n = A026388 (n + 1)

end A026388

/-! ## A026388.P5271124727932170021

`Δ[A026375(n)-A007317(n+1)]`
-/

namespace A026388.P5271124727932170021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026375 n - A007317 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026388.P5271124727932170021

namespace A026388

/-- `Δ[A026375(n)-A007317(n+1)]` -/
def P5271124727932170021.Spec : Prop :=
  ∀ n, P5271124727932170021.a n = A026388 (n + 1)

end A026388

/-! ## A026388.P16390024421659088688

`Δ[A026378(n+1)-A026375(n)]`
-/

namespace A026388.P16390024421659088688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026378 (n + 1) - A026375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026388.P16390024421659088688

namespace A026388

/-- `Δ[A026378(n+1)-A026375(n)]` -/
def P16390024421659088688.Spec : Prop :=
  ∀ n, P16390024421659088688.a n = A026388 (n + 1)

end A026388

/-!
# A026389: a(n) = number of integer strings s(0),...,s(n) counted by array T in A026386 that have s(n)=4; also a(n) = T(2n,n-2).

The programs for A026389, the canonical program `A026389.P12442585239649590018` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026389 has offset 2).

The definition of A026389 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026389.P725958349242203201

`(n+1)/3*A045890(n+1)`
-/

namespace A026389.P725958349242203201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 3 * (A045890 (n + 1) : ℚ)

end

end A026389.P725958349242203201

namespace A026389

/-- `(n+1)/3*A045890(n+1)` -/
def P725958349242203201.Spec : Prop :=
  ∀ n, P725958349242203201.a n = (A026389 (n + 2) : ℚ)

end A026389

/-! ## A026389.P12442585239649590018

`A026387(n+1)-Δ[Δ[A007317(n+2)]]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A026389

/-- `A026387(n+1)-Δ[Δ[A007317(n+2)]]` -/
def P12442585239649590018.Spec : Prop :=
  ∀ n, P12442585239649590018.a n = A026389 (n + 2)

theorem P12442585239649590018.correct : P12442585239649590018.Spec := by
  intro n
  simp only [A026389, Nat.add_sub_cancel]

end A026389

/-! ## A026389.P14072773691061061786

`Δ[A026379(n+2)-A026376(n+1)]`
-/

namespace A026389.P14072773691061061786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026379 (n + 2) - A026376 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026389.P14072773691061061786

namespace A026389

/-- `Δ[A026379(n+2)-A026376(n+1)]` -/
def P14072773691061061786.Spec : Prop :=
  ∀ n, P14072773691061061786.a n = A026389 (n + 2)

end A026389

/-! ## A026389.P13207400267937324402

`Δ[A026375(n+1)-Δ[A007317(n+2)]]`
-/

namespace A026389.P13207400267937324402
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007317 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026375 (n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026389.P13207400267937324402

namespace A026389

/-- `Δ[A026375(n+1)-Δ[A007317(n+2)]]` -/
def P13207400267937324402.Spec : Prop :=
  ∀ n, P13207400267937324402.a n = A026389 (n + 2)

end A026389

/-! ## A026389.P4851649055807637501

`A026386(A090288(n+1))`
-/

namespace A026389.P4851649055807637501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026386 (A090288 (n + 1)).toNat

end

end A026389.P4851649055807637501

namespace A026389

/-- `A026386(A090288(n+1))` -/
def P4851649055807637501.Spec : Prop :=
  ∀ n, P4851649055807637501.a n = A026389 (n + 2)

end A026389

/-! ## A026389.P14896808449663125861

`A026386(A051890(n+3))`
-/

namespace A026389.P14896808449663125861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026386 (A051890 (n + 3)).toNat

end

end A026389.P14896808449663125861

namespace A026389

/-- `A026386(A051890(n+3))` -/
def P14896808449663125861.Spec : Prop :=
  ∀ n, P14896808449663125861.a n = A026389 (n + 2)

end A026389

/-! ## A026389.P12395702046506213865

`A026386(A016825(∑[n+2]))`
-/

namespace A026389.P12395702046506213865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026386 (A016825 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A026389.P12395702046506213865

namespace A026389

/-- `A026386(A016825(∑[n+2]))` -/
def P12395702046506213865.Spec : Prop :=
  ∀ n, P12395702046506213865.a n = A026389 (n + 2)

end A026389

/-! ## A026389.P10367523269797380525

`record[A026386(A051890(A027656(n)))]`
-/

namespace A026389.P10367523269797380525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026386 (A051890 (A027656 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026389.P10367523269797380525

namespace A026389

/-- `record[A026386(A051890(A027656(n)))]` -/
def P10367523269797380525.Spec : Prop :=
  ∀ n, P10367523269797380525.a n = A026389 (n + 2)

end A026389

/-!
# A026390: Expansion of (2 + x + x^2)/((1 - x)*(1 - x - x^2)).

The programs for A026390, the canonical program `A026390.P14938519571960378373` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026390 has offset 0).

The definition of A026390 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A026390.P14938519571960378373

`A022086(n+3)-4`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A026390

/-- `A022086(n+3)-4` -/
def P14938519571960378373.Spec : Prop :=
  ∀ n, P14938519571960378373.a n = A026390 n

theorem P14938519571960378373.correct : P14938519571960378373.Spec := by
  intro n
  simp only [A026390]

end A026390

/-! ## A026390.P13395688188723933435

`floor(ϕ*a(n-1))+3` with `a(0)=2, a(1)=5`
-/

namespace A026390.P13395688188723933435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  ⌊Real.goldenRatio * (a (n - 1) : ℝ)⌋ + 3

end

end A026390.P13395688188723933435

namespace A026390

/-- `floor(ϕ*a(n-1))+3` -/
def P13395688188723933435.Spec : Prop :=
  ∀ n, P13395688188723933435.a n = A026390 n

end A026390

/-! ## A026390.P17275358899507926809

`ceil(ϕ*a(n-1))+2` with `a(0)=2, a(1)=5`
-/

namespace A026390.P17275358899507926809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  ⌈Real.goldenRatio * (a (n - 1) : ℝ)⌉ + 2

end

end A026390.P17275358899507926809

namespace A026390

/-- `ceil(ϕ*a(n-1))+2` -/
def P17275358899507926809.Spec : Prop :=
  ∀ n, P17275358899507926809.a n = A026390 n

end A026390

/-! ## A026390.P8097366284811924929

`round(ϕ*(a(n-1)+ϕ))` with `a(0)=2, a(1)=5`
-/

namespace A026390.P8097366284811924929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio * ((a (n - 1) : ℝ) + Real.goldenRatio))

end

end A026390.P8097366284811924929

namespace A026390

/-- `round(ϕ*(a(n-1)+ϕ))` -/
def P8097366284811924929.Spec : Prop :=
  ∀ n, P8097366284811924929.a n = A026390 n

end A026390

/-! ## A026390.P10938694098777989741

`a(n-1)+a(n-2)+4` with `a(0)=2, a(1)=5`
-/

namespace A026390.P10938694098777989741
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 5] fun n a =>
  a (n - 1) + (a (n - 2) + 4)

end

end A026390.P10938694098777989741

namespace A026390

/-- `a(n-1)+a(n-2)+4` -/
def P10938694098777989741.Spec : Prop :=
  ∀ n, (P10938694098777989741.a n : ℤ) = A026390 n

end A026390

/-! ## A026390.P4313549167729350567

`2*a(n-1)-a(n-3)` with `a(0)=2, a(1)=5, a(2)=11`
-/

namespace A026390.P4313549167729350567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5, 11] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A026390.P4313549167729350567

namespace A026390

/-- `2*a(n-1)-a(n-3)` -/
def P4313549167729350567.Spec : Prop :=
  ∀ n, P4313549167729350567.a n = A026390 n

end A026390

/-! ## A026390.P9737346289090143265

`5-floor(1-a(n-1)-a(n-2))` with `a(0)=2, a(1)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A026390.P9737346289090143265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  5 - (1 - a (n - 1) - a (n - 2))

end

end A026390.P9737346289090143265

namespace A026390

/-- `5-floor(1-a(n-1)-a(n-2))` -/
def P9737346289090143265.Spec : Prop :=
  ∀ n, P9737346289090143265.a n = A026390 n

end A026390

/-! ## A026390.P1293419211857311080

`n-∑[a(n-1)-(1-a(n-2))]` with `a(0)=-2, a(1)=-2`
-/

namespace A026390.P1293419211857311080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-2, -2] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026390.P1293419211857311080

namespace A026390

/-- `n-∑[a(n-1)-(1-a(n-2))]` -/
def P1293419211857311080.Spec : Prop :=
  ∀ n, P1293419211857311080.a n = A026390 n

end A026390

/-! ## A026390.P5800263723506518494

`∑[A377628(n)]+n`
-/

namespace A026390.P5800263723506518494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377628 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A026390.P5800263723506518494

namespace A026390

/-- `∑[A377628(n)]+n` -/
def P5800263723506518494.Spec : Prop :=
  ∀ n, P5800263723506518494.a n = A026390 n

end A026390

/-! ## A026390.P15515242276359958760

`A111314(n+2)-2`
-/

namespace A026390.P15515242276359958760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111314 (n + 2) - 2

end

end A026390.P15515242276359958760

namespace A026390

/-- `A111314(n+2)-2` -/
def P15515242276359958760.Spec : Prop :=
  ∀ n, P15515242276359958760.a n = A026390 n

end A026390

/-! ## A026390.P3056899182272811856

`A377628(n+2)-3`
-/

namespace A026390.P3056899182272811856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377628 (n + 2) - 3

end

end A026390.P3056899182272811856

namespace A026390

/-- `A377628(n+2)-3` -/
def P3056899182272811856.Spec : Prop :=
  ∀ n, P3056899182272811856.a n = A026390 n

end A026390

/-! ## A026390.P10586834516890358645

`3*A001911(n)+2`
-/

namespace A026390.P10586834516890358645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A001911 n + 2

end

end A026390.P10586834516890358645

namespace A026390

/-- `3*A001911(n)+2` -/
def P10586834516890358645.Spec : Prop :=
  ∀ n, P10586834516890358645.a n = A026390 n

end A026390

/-! ## A026390.P1791376781401517418

`A097135(n+3)-4`
-/

namespace A026390.P1791376781401517418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097135 (n + 3) - 4

end

end A026390.P1791376781401517418

namespace A026390

/-- `A097135(n+3)-4` -/
def P1791376781401517418.Spec : Prop :=
  ∀ n, P1791376781401517418.a n = A026390 n

end A026390

/-! ## A026390.P9085104017085479795

`A036999(n+1)-7`
-/

namespace A026390.P9085104017085479795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036999 (n + 1) - 7

end

end A026390.P9085104017085479795

namespace A026390

/-- `A036999(n+1)-7` -/
def P9085104017085479795.Spec : Prop :=
  ∀ n, P9085104017085479795.a n = A026390 n

end A026390

/-! ## A026390.P5919946476089243125

`A187893(n+3)-5`
-/

namespace A026390.P5919946476089243125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187893 (n + 3) - 5

end

end A026390.P5919946476089243125

namespace A026390

/-- `A187893(n+3)-5` -/
def P5919946476089243125.Spec : Prop :=
  ∀ n, P5919946476089243125.a n = A026390 n

end A026390

/-! ## A026390.P5608572177917289444

`3*A020695(n)-4`
-/

namespace A026390.P5608572177917289444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A020695 n - 4

end

end A026390.P5608572177917289444

namespace A026390

/-- `3*A020695(n)-4` -/
def P5608572177917289444.Spec : Prop :=
  ∀ n, P5608572177917289444.a n = A026390 n

end A026390

/-! ## A026390.P11921652990665512356

`A192967(n+2)+n`
-/

namespace A026390.P11921652990665512356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192967 (n + 2) + (n : ℤ)

end

end A026390.P11921652990665512356

namespace A026390

/-- `A192967(n+2)+n` -/
def P11921652990665512356.Spec : Prop :=
  ∀ n, P11921652990665512356.a n = A026390 n

end A026390

/-! ## A026390.P1383839184064179131

`3*A000045(n+3)-4`
-/

namespace A026390.P1383839184064179131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000045 (n + 3) - 4

end

end A026390.P1383839184064179131

namespace A026390

/-- `3*A000045(n+3)-4` -/
def P1383839184064179131.Spec : Prop :=
  ∀ n, P1383839184064179131.a n = A026390 n

end A026390

/-! ## A026390.P5788563812266413892

`A131300(n+1)+2*n`
-/

namespace A026390.P5788563812266413892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131300 (n + 1) + (2 * n : ℤ)

end

end A026390.P5788563812266413892

namespace A026390

/-- `A131300(n+1)+2*n` -/
def P5788563812266413892.Spec : Prop :=
  ∀ n, P5788563812266413892.a n = A026390 n

end A026390

/-!
# A026391: Expansion of 1/((1-2x)(1-6x)(1-7x)(1-10x)).

The programs for A026391, there is no canonical definition to state claims against.
-/

/-! ## A026391.P14637766915301613458

`A016304(n)+10*a(n-1)` with `a(0)=1`
-/

namespace A026391.P14637766915301613458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016304 n + 10 * a (n - 1)

end

end A026391.P14637766915301613458

/-! ## A026391.P13505455797110272354

`a(n-1)+A020572(n)+a(n-1)` with `a(0)=1`
-/

namespace A026391.P13505455797110272354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A020572 n + a (n - 1))

end

end A026391.P13505455797110272354

/-! ## A026391.P7408559701032596275

`Δ[A021234(n)-A021202(n)]`
-/

namespace A026391.P7408559701032596275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021234 n - A021202 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026391.P7408559701032596275

/-! ## A026391.P13211442329950791292

`2*A025968(n)-A025965(n)`
-/

namespace A026391.P13211442329950791292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025968 n - A025965 n

end

end A026391.P13211442329950791292

/-! ## A026391.P1945597919214498788

`2*A025994(n)-A025989(n)`
-/

namespace A026391.P1945597919214498788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025994 n - A025989 n

end

end A026391.P1945597919214498788

/-! ## A026391.P681088599383117618

`A021234(n)+A023951(n)-A021202(n)`
-/

namespace A026391.P681088599383117618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021234 n + (A023951 n - A021202 n)

end

end A026391.P681088599383117618

/-! ## A026391.P11207517711629864469

`A025966(n)+A025977(n)-A025965(n)`
-/

namespace A026391.P11207517711629864469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025966 n + (A025977 n - A025965 n)

end

end A026391.P11207517711629864469

/-! ## A026391.P5805333303095224527

`A025971(n)+A025977(n)-A025966(n)`
-/

namespace A026391.P5805333303095224527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025971 n + (A025977 n - A025966 n)

end

end A026391.P5805333303095224527

/-!
# A026392: T(n,[ n/2 ]), where T is the array in A026386.

The programs for A026392, there is no canonical definition to state claims against.
-/

/-! ## A026392.P18146939068049608349

`record[A026386(A001972(n))]`
-/

namespace A026392.P18146939068049608349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026386 (A001972 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026392.P18146939068049608349

/-! ## A026392.P4935654507876074991

`record[A026386(A008652(n))]`
-/

namespace A026392.P4935654507876074991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026386 (A008652 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026392.P4935654507876074991

/-! ## A026392.P16160326872194838698

`A026386(A074148(n+1))`
-/

namespace A026392.P16160326872194838698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026386 (A074148 (n + 1)).toNat

end

end A026392.P16160326872194838698

/-! ## A026392.P813111937515966485

`A026386(A194274(n+1))`
-/

namespace A026392.P813111937515966485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026386 (A194274 (n + 1)).toNat

end

end A026392.P813111937515966485

/-! ## A026392.P2201055890960218062

`A026386(A007590(n+2))`
-/

namespace A026392.P2201055890960218062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026386 (A007590 (n + 2)).toNat

end

end A026392.P2201055890960218062

/-! ## A026392.P8342638953371339694

`A026386(A080476(n+2))`
-/

namespace A026392.P8342638953371339694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026386 (A080476 (n + 2)).toNat

end

end A026392.P8342638953371339694

/-! ## A026392.P16044972868824914458

`A026386(A000982(n+2)-1)`
-/

namespace A026392.P16044972868824914458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026386 (A000982 (n + 2) - 1).toNat

end

end A026392.P16044972868824914458

/-! ## A026392.P13380616566024867865

`A026386(A001972(2*n+1))`
-/

namespace A026392.P13380616566024867865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026386 (A001972 (2 * n + 1)).toNat

end

end A026392.P13380616566024867865

/-! ## A026392.P2110826823654226703

`A026386(∑[∑[A007877(n+1)]])`
-/

namespace A026392.P2110826823654226703
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007877 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026386 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A026392.P2110826823654226703

/-! ## A026392.P12934198320063648109

`A026386(∑[∑[A010673(n+1)]])`
-/

namespace A026392.P12934198320063648109
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026386 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A026392.P12934198320063648109

/-! ## A026392.P2155237201224916177

`A026386(∑[∑[2-A010673(n)]])`
-/

namespace A026392.P2155237201224916177
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A010673 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026386 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A026392.P2155237201224916177

/-! ## A026392.P361000761412355764

`A026386(A110654(2*n+1)+A000982(n+1))`
-/

namespace A026392.P361000761412355764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026386 (A110654 (2 * n + 1) + A000982 (n + 1)).toNat

end

end A026392.P361000761412355764

/-!
# A026393: a(n) = T(n,n-2), where T is the array in A026386.

The programs for A026393, the canonical program `A026393.P7542022600208661733` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026393 has offset 2).

The definition of A026393 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026393.P18289663875041706234

`∑[or(1, n)+n*ratio[gcd(2, n)]]`
-/

namespace A026393.P18289663875041706234
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℚ) + (n : ℚ) * ((f2 (n + 1) : ℚ) / (f2 n : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026393.P18289663875041706234

namespace A026393

/-- `∑[or(1, n)+n*ratio[gcd(2, n)]]` -/
def P18289663875041706234.Spec : Prop :=
  ∀ n, P18289663875041706234.a n = (A026393 (n + 2) : ℚ)

end A026393

/-! ## A026393.P7542022600208661733

`∑[A064680(n)+or(1, n)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A026393

/-- `∑[A064680(n)+or(1, n)]` -/
def P7542022600208661733.Spec : Prop :=
  ∀ n, P7542022600208661733.a n = A026393 (n + 2)

theorem P7542022600208661733.correct : P7542022600208661733.Spec := by
  intro n
  simp only [A026393, Nat.add_sub_cancel]

end A026393

/-! ## A026393.P494545870640404707

`∑[n+1]+A338544(n)+n`
-/

namespace A026393.P494545870640404707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A338544 n + (n : ℤ))

end

end A026393.P494545870640404707

namespace A026393

/-- `∑[n+1]+A338544(n)+n` -/
def P494545870640404707.Spec : Prop :=
  ∀ n, P494545870640404707.a n = A026393 (n + 2)

end A026393

/-! ## A026393.P11654234765688793655

`2*n+C(A007494(n), 2)+1`
-/

namespace A026393.P11654234765688793655
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + (Nat.choose (A007494 n).toNat 2 + 1)

end

end A026393.P11654234765688793655

namespace A026393

/-- `2*n+C(A007494(n), 2)+1` -/
def P11654234765688793655.Spec : Prop :=
  ∀ n, (P11654234765688793655.a n : ℤ) = A026393 (n + 2)

end A026393

/-! ## A026393.P16370170089779300185

`∑[floor(A168329(n+1)/gcd(2, n))]`
-/

namespace A026393.P16370170089779300185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A168329 (n + 1) : ℚ) / (Nat.gcd 2 n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026393.P16370170089779300185

namespace A026393

/-- `∑[floor(A168329(n+1)/gcd(2, n))]` -/
def P16370170089779300185.Spec : Prop :=
  ∀ n, P16370170089779300185.a n = A026393 (n + 2)

end A026393

/-! ## A026393.P933318185221722959

`∑[ceil((A019426(n)+3*n+1)/2)]`
-/

namespace A026393.P933318185221722959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A019426 n + (3 * n + 1 : ℤ) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026393.P933318185221722959

namespace A026393

/-- `∑[ceil((A019426(n)+3*n+1)/2)]` -/
def P933318185221722959.Spec : Prop :=
  ∀ n, P933318185221722959.a n = A026393 (n + 2)

end A026393

/-! ## A026393.P2158702591808928803

`C(∑[A000041(a(n-2))], 2)+2*n+1` with `a(0)=0, a(1)=2`
-/

namespace A026393.P2158702591808928803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  A000041 (f1 (n - 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2 + (2 * n + 1)

end

end A026393.P2158702591808928803

namespace A026393

/-- `C(∑[A000041(a(n-2))], 2)+2*n+1` -/
def P2158702591808928803.Spec : Prop :=
  ∀ n, (P2158702591808928803.a n : ℤ) = A026393 (n + 2)

end A026393

/-! ## A026393.P2853619647603027375

`A074378(n)+A008805(n)`
-/

namespace A026393.P2853619647603027375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074378 n + A008805 n

end

end A026393.P2853619647603027375

namespace A026393

/-- `A074378(n)+A008805(n)` -/
def P2853619647603027375.Spec : Prop :=
  ∀ n, P2853619647603027375.a n = A026393 (n + 2)

end A026393

/-! ## A026393.P7471955639771729583

`A213479(n)-A071045(n)`
-/

namespace A026393.P7471955639771729583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213479 n - A071045 n

end

end A026393.P7471955639771729583

namespace A026393

/-- `A213479(n)-A071045(n)` -/
def P7471955639771729583.Spec : Prop :=
  ∀ n, P7471955639771729583.a n = A026393 (n + 2)

end A026393

/-! ## A026393.P2578948162724496649

`∑[A109613(n)+A064680(n)]`
-/

namespace A026393.P2578948162724496649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n + A064680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026393.P2578948162724496649

namespace A026393

/-- `∑[A109613(n)+A064680(n)]` -/
def P2578948162724496649.Spec : Prop :=
  ∀ n, P2578948162724496649.a n = A026393 (n + 2)

end A026393

/-! ## A026393.P15561657117008171749

`A117748(n+1)+A008619(n)`
-/

namespace A026393.P15561657117008171749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117748 (n + 1) + A008619 n

end

end A026393.P15561657117008171749

namespace A026393

/-- `A117748(n+1)+A008619(n)` -/
def P15561657117008171749.Spec : Prop :=
  ∀ n, P15561657117008171749.a n = A026393 (n + 2)

end A026393

/-! ## A026393.P8300863737554533790

`A213037(n)+A111712(n+1)`
-/

namespace A026393.P8300863737554533790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213037 n + A111712 (n + 1)

end

end A026393.P8300863737554533790

namespace A026393

/-- `A213037(n)+A111712(n+1)` -/
def P8300863737554533790.Spec : Prop :=
  ∀ n, P8300863737554533790.a n = A026393 (n + 2)

end A026393

/-! ## A026393.P8060213403106683968

`A338544(n)+A034856(n+1)`
-/

namespace A026393.P8060213403106683968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338544 n + A034856 (n + 1)

end

end A026393.P8060213403106683968

namespace A026393

/-- `A338544(n)+A034856(n+1)` -/
def P8060213403106683968.Spec : Prop :=
  ∀ n, P8060213403106683968.a n = A026393 (n + 2)

end A026393

/-! ## A026393.P4585990789912543030

`∑[A000034(n)*A032766(n)+1]`
-/

namespace A026393.P4585990789912543030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A032766 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026393.P4585990789912543030

namespace A026393

/-- `∑[A000034(n)*A032766(n)+1]` -/
def P4585990789912543030.Spec : Prop :=
  ∀ n, P4585990789912543030.a n = A026393 (n + 2)

end A026393

/-! ## A026393.P9421646958819388420

`A008619(n)+∑[A064680(n)+n]`
-/

namespace A026393.P9421646958819388420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026393.P9421646958819388420

namespace A026393

/-- `A008619(n)+∑[A064680(n)+n]` -/
def P9421646958819388420.Spec : Prop :=
  ∀ n, P9421646958819388420.a n = A026393 (n + 2)

end A026393

/-! ## A026393.P15168649820800028236

`∑[A000034(n)*A029579(n)+n]`
-/

namespace A026393.P15168649820800028236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A029579 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026393.P15168649820800028236

namespace A026393

/-- `∑[A000034(n)*A029579(n)+n]` -/
def P15168649820800028236.Spec : Prop :=
  ∀ n, P15168649820800028236.a n = A026393 (n + 2)

end A026393

/-! ## A026393.P5042946584816977750

`A117748(n+1)+A110654(n+1)`
-/

namespace A026393.P5042946584816977750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117748 (n + 1) + A110654 (n + 1)

end

end A026393.P5042946584816977750

namespace A026393

/-- `A117748(n+1)+A110654(n+1)` -/
def P5042946584816977750.Spec : Prop :=
  ∀ n, P5042946584816977750.a n = A026393 (n + 2)

end A026393

/-! ## A026393.P4370305643274061021

`A274830(n+1)+A130404(n+1)`
-/

namespace A026393.P4370305643274061021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274830 (n + 1) + A130404 (n + 1)

end

end A026393.P4370305643274061021

namespace A026393

/-- `A274830(n+1)+A130404(n+1)` -/
def P4370305643274061021.Spec : Prop :=
  ∀ n, P4370305643274061021.a n = A026393 (n + 2)

end A026393

/-! ## A026393.P17321665667877132914

`A087099(n+1)+abs(n*A001057(n))`
-/

namespace A026393.P17321665667877132914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087099 (n + 1) + |(n : ℤ) * A001057 n|

end

end A026393.P17321665667877132914

namespace A026393

/-- `A087099(n+1)+abs(n*A001057(n))` -/
def P17321665667877132914.Spec : Prop :=
  ∀ n, P17321665667877132914.a n = A026393 (n + 2)

end A026393

/-!
# A026394: a(n) = T(n,n-3), where T is the array in A026386.

The programs for A026394, the canonical program `A026394.P12365354529536378391` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026394 has offset 3).

The definition of A026394 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026394.P12365354529536378391

`A211538(n+4)+A001651(n+1)*A211538(n+3)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A026394

/-- `A211538(n+4)+A001651(n+1)*A211538(n+3)` -/
def P12365354529536378391.Spec : Prop :=
  ∀ n, P12365354529536378391.a n = A026394 (n + 3)

theorem P12365354529536378391.correct : P12365354529536378391.Spec := by
  intro n
  simp only [A026394, Nat.add_sub_cancel]

end A026394

/-! ## A026394.P15310820462263286193

`A007980(A007494(n))+A000292(A032766(n))`
-/

namespace A026394.P15310820462263286193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007980 (A007494 n).toNat + A000292 (A032766 n).toNat

end

end A026394.P15310820462263286193

namespace A026394

/-- `A007980(A007494(n))+A000292(A032766(n))` -/
def P15310820462263286193.Spec : Prop :=
  ∀ n, P15310820462263286193.a n = A026394 (n + 3)

end A026394

/-! ## A026394.P8713456269234015344

`A001318(n+1)+∑[A124093(3*n+1)]`
-/

namespace A026394.P8713456269234015344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124093 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026394.P8713456269234015344

namespace A026394

/-- `A001318(n+1)+∑[A124093(3*n+1)]` -/
def P8713456269234015344.Spec : Prop :=
  ∀ n, P8713456269234015344.a n = A026394 (n + 3)

end A026394

/-! ## A026394.P9329910218073846596

`A026386(A167614(n+2))`
-/

namespace A026394.P9329910218073846596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026386 (A167614 (n + 2)).toNat

end

end A026394.P9329910218073846596

namespace A026394

/-- `A026386(A167614(n+2))` -/
def P9329910218073846596.Spec : Prop :=
  ∀ n, P9329910218073846596.a n = A026394 (n + 3)

end A026394

/-! ## A026394.P14058666291479019747

`A026386(A000217(n+3)+3)`
-/

namespace A026394.P14058666291479019747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026386 (A000217 (n + 3) + 3).toNat

end

end A026394.P14058666291479019747

namespace A026394

/-- `A026386(A000217(n+3)+3)` -/
def P14058666291479019747.Spec : Prop :=
  ∀ n, P14058666291479019747.a n = A026394 (n + 3)

end A026394

/-! ## A026394.P17390359582541925536

`A026386(A166136(n+2)-3)`
-/

namespace A026394.P17390359582541925536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026386 (A166136 (n + 2) - 3).toNat

end

end A026394.P17390359582541925536

namespace A026394

/-- `A026386(A166136(n+2)-3)` -/
def P17390359582541925536.Spec : Prop :=
  ∀ n, P17390359582541925536.a n = A026394 (n + 3)

end A026394

/-! ## A026394.P17269434583010406768

`A026386(∑[n+3]+n+3)`
-/

namespace A026394.P17269434583010406768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026386 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A026394.P17269434583010406768

namespace A026394

/-- `A026386(∑[n+3]+n+3)` -/
def P17269434583010406768.Spec : Prop :=
  ∀ n, P17269434583010406768.a n = A026394 (n + 3)

end A026394

/-! ## A026394.P3115666299066786529

`record[A026386(A046691(A328399(n)))]`
-/

namespace A026394.P3115666299066786529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026386 (A046691 (A328399 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026394.P3115666299066786529

namespace A026394

/-- `record[A026386(A046691(A328399(n)))]` -/
def P3115666299066786529.Spec : Prop :=
  ∀ n, P3115666299066786529.a n = A026394 (n + 3)

end A026394

/-!
# A026395: a(n) = 5*a(n-2), starting 1,2,4.

The programs for A026395, the canonical program `A026395.P16262965714225979875` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026395 has offset 0).

The definition of A026395 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-2)` (program `A026395.P16262965714225979875`, by `A026395.P16262965714225979875.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A026395.P16262965714225979875

`5*a(n-2)` with `a(0)=1, a(1)=2, a(2)=4`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026395

/-- `5*a(n-2)` -/
def P16262965714225979875.Spec : Prop :=
  ∀ n, (P16262965714225979875.a n : ℤ) = A026395 n

theorem P16262965714225979875.correct : P16262965714225979875.Spec := by
  intro n
  simp only [A026395]

end A026395

/-! ## A026395.P18404993084540292753

`∏[5/a(n-1)]` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A026395.P18404993084540292753
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 2] fun n f1 =>
  5 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A026395.P18404993084540292753

namespace A026395

/-- `∏[5/a(n-1)]` -/
def P18404993084540292753.Spec : Prop :=
  ∀ n, P18404993084540292753.a n = (A026395 n : ℚ)

end A026395

/-! ## A026395.P12860039660090987087

`a(n-2)/(1-4/5)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A026395.P12860039660090987087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  a (n - 2) / (1 - (4 : ℚ) / 5)

end

end A026395.P12860039660090987087

namespace A026395

/-- `a(n-2)/(1-4/5)` -/
def P12860039660090987087.Spec : Prop :=
  ∀ n, P12860039660090987087.a n = (A026395 n : ℚ)

end A026395

/-! ## A026395.P241708428776242647

`A140730(A004273(n))`
-/

namespace A026395.P241708428776242647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140730 (A004273 n).toNat

end

end A026395.P241708428776242647

namespace A026395

/-- `A140730(A004273(n))` -/
def P241708428776242647.Spec : Prop :=
  ∀ n, P241708428776242647.a n = A026395 n

end A026395

/-! ## A026395.P9220484651938492334

`A245478(A267528(n+1))`
-/

namespace A026395.P9220484651938492334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245478 (A267528 (n + 1)).toNat

end

end A026395.P9220484651938492334

namespace A026395

/-- `A245478(A267528(n+1))` -/
def P9220484651938492334.Spec : Prop :=
  ∀ n, P9220484651938492334.a n = A026395 n

end A026395

/-! ## A026395.P3293084088471403654

`A245478(A294732(n+2))`
-/

namespace A026395.P3293084088471403654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245478 (A294732 (n + 2)).toNat

end

end A026395.P3293084088471403654

namespace A026395

/-- `A245478(A294732(n+2))` -/
def P3293084088471403654.Spec : Prop :=
  ∀ n, P3293084088471403654.a n = A026395 n

end A026395

/-! ## A026395.P17992459915974922340

`A140730(A130824(n)/2)`
-/

namespace A026395.P17992459915974922340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140730 (SequenceMachineLib.roundAway ((A130824 n : ℚ) / 2)).toNat

end

end A026395.P17992459915974922340

namespace A026395

/-- `A140730(A130824(n)/2)` -/
def P17992459915974922340.Spec : Prop :=
  ∀ n, P17992459915974922340.a n = A026395 n

end A026395

/-! ## A026395.P6936264951719126310

`2/(n+2)*A026955(n)`
-/

namespace A026395.P6936264951719126310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 2 : ℚ) * (A026955 n : ℚ)

end

end A026395.P6936264951719126310

namespace A026395

/-- `2/(n+2)*A026955(n)` -/
def P6936264951719126310.Spec : Prop :=
  ∀ n, P6936264951719126310.a n = (A026395 n : ℚ)

end A026395

/-! ## A026395.P16429386227092307280

`∏{digits}[A094624(n), #²+1]`
-/

namespace A026395.P16429386227092307280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094624 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x ^ 2 + 1).prod

end

end A026395.P16429386227092307280

namespace A026395

/-- `∏{digits}[A094624(n), #²+1]` -/
def P16429386227092307280.Spec : Prop :=
  ∀ n, (P16429386227092307280.a n : ℤ) = A026395 n

end A026395

/-! ## A026395.P3728322645828947960

`A232646(A101881(n))`
-/

namespace A026395.P3728322645828947960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232646 (A101881 n).toNat

end

end A026395.P3728322645828947960

namespace A026395

/-- `A232646(A101881(n))` -/
def P3728322645828947960.Spec : Prop :=
  ∀ n, P3728322645828947960.a n = A026395 n

end A026395

/-! ## A026395.P602834505539869771

`A140730(lt[A140721(n), 2])`
-/

namespace A026395.P602834505539869771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140721 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140730 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A026395.P602834505539869771

namespace A026395

/-- `A140730(lt[A140721(n), 2])` -/
def P602834505539869771.Spec : Prop :=
  ∀ n, P602834505539869771.a n = A026395 n

end A026395

/-!
# A026396: Sum_{T(i,j)}, 0<=j<=i, 0<=i<=n, where T is the array in A026386.

The programs for A026396, the canonical program `A026396.P1991859066648839927` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026396 has offset 0).

The definition of A026396 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A026396.P1991859066648839927

`a(n-1)+5*a(n-2)-5*a(n-3)` with `a(0)=3, a(1)=7, a(2)=17`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026396

/-- `a(n-1)+5*a(n-2)-5*a(n-3)` -/
def P1991859066648839927.Spec : Prop :=
  ∀ n, P1991859066648839927.a n = A026396 n

theorem P1991859066648839927.correct : P1991859066648839927.Spec := by
  intro n
  simp only [A026396]

end A026396

/-! ## A026396.P7244318634326021128

`5*a(n-2)+2` with `a(0)=3, a(1)=7`
-/

namespace A026396.P7244318634326021128
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 7] fun n a =>
  5 * a (n - 2) + 2

end

end A026396.P7244318634326021128

namespace A026396

/-- `5*a(n-2)+2` -/
def P7244318634326021128.Spec : Prop :=
  ∀ n, (P7244318634326021128.a n : ℤ) = A026396 n

end A026396

/-! ## A026396.P3890181338307771906

`lcm(5, a(n-2))+2` with `a(0)=3, a(1)=7`
-/

namespace A026396.P3890181338307771906
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 7] fun n a =>
  Nat.lcm 5 (a (n - 2)) + 2

end

end A026396.P3890181338307771906

namespace A026396

/-- `lcm(5, a(n-2))+2` -/
def P3890181338307771906.Spec : Prop :=
  ∀ n, (P3890181338307771906.a n : ℤ) = A026396 n

end A026396

/-! ## A026396.P5557882363630792354

`∑[5*a(n-2)]` with `a(0)=3, a(1)=4, a(2)=10`
-/

namespace A026396.P5557882363630792354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 4, 10] fun n f1 =>
  5 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026396.P5557882363630792354

namespace A026396

/-- `∑[5*a(n-2)]` -/
def P5557882363630792354.Spec : Prop :=
  ∀ n, (P5557882363630792354.a n : ℤ) = A026396 n

end A026396

/-! ## A026396.P12324876562374157008

`7-5*(1-a(n-2))` with `a(0)=3, a(1)=7`
-/

namespace A026396.P12324876562374157008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 7] fun n a =>
  7 - 5 * (1 - a (n - 2))

end

end A026396.P12324876562374157008

namespace A026396

/-- `7-5*(1-a(n-2))` -/
def P12324876562374157008.Spec : Prop :=
  ∀ n, P12324876562374157008.a n = A026396 n

end A026396

/-! ## A026396.P3823069111433631135

`2*A026384(n)+1`
-/

namespace A026396.P3823069111433631135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026384 n + 1

end

end A026396.P3823069111433631135

namespace A026396

/-- `2*A026384(n)+1` -/
def P3823069111433631135.Spec : Prop :=
  ∀ n, P3823069111433631135.a n = A026396 n

end A026396

/-! ## A026396.P4468430126897619252

`∑[A026395(n+1)]+1`
-/

namespace A026396.P4468430126897619252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026395 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A026396.P4468430126897619252

namespace A026396

/-- `∑[A026395(n+1)]+1` -/
def P4468430126897619252.Spec : Prop :=
  ∀ n, P4468430126897619252.a n = A026396 n

end A026396

/-! ## A026396.P1148245035387666216

`∑[2*A026383(n)]+1`
-/

namespace A026396.P1148245035387666216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026383 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A026396.P1148245035387666216

namespace A026396

/-- `∑[2*A026383(n)]+1` -/
def P1148245035387666216.Spec : Prop :=
  ∀ n, P1148245035387666216.a n = A026396 n

end A026396

/-! ## A026396.P16632131302408535696

`∑[A140730(2*n+1)]+1`
-/

namespace A026396.P16632131302408535696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140730 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A026396.P16632131302408535696

namespace A026396

/-- `∑[A140730(2*n+1)]+1` -/
def P16632131302408535696.Spec : Prop :=
  ∀ n, P16632131302408535696.a n = A026396 n

end A026396

/-! ## A026396.P14992223177482367072

`A238366(n)+A162963(n+1)`
-/

namespace A026396.P14992223177482367072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238366 n + A162963 (n + 1)

end

end A026396.P14992223177482367072

namespace A026396

/-- `A238366(n)+A162963(n+1)` -/
def P14992223177482367072.Spec : Prop :=
  ∀ n, P14992223177482367072.a n = A026396 n

end A026396

/-! ## A026396.P2551048687421170244

`A198306(n+3)-A163141(n+1)`
-/

namespace A026396.P2551048687421170244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198306 (n + 3) - A163141 (n + 1)

end

end A026396.P2551048687421170244

namespace A026396

/-- `A198306(n+3)-A163141(n+1)` -/
def P2551048687421170244.Spec : Prop :=
  ∀ n, P2551048687421170244.a n = A026396 n

end A026396

/-!
# A026397: Sum{T(n-k,k)}, 0<=k<=[ n/2 ], where T is the array in A026386.

The programs for A026397, there is no canonical definition to state claims against.
-/

/-! ## A026397.P13972659959173446170

`A181120(n)+A003056(A294790(n)+n)`
-/

namespace A026397.P13972659959173446170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181120 n + A003056 (A294790 n + (n : ℤ)).toNat

end

end A026397.P13972659959173446170

/-! ## A026397.P12680026506626761683

`floor(sqrt(A187386(3^n+1)))`
-/

namespace A026397.P12680026506626761683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A187386 (3 ^ n + 1))

end

end A026397.P12680026506626761683

/-! ## A026397.P5267921705703246392

`A067731(A018043(n))`
-/

namespace A026397.P5267921705703246392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067731 (A018043 n).toNat

end

end A026397.P5267921705703246392

/-! ## A026397.P14448605999698276476

`A104055(A109634(n))`
-/

namespace A026397.P14448605999698276476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104055 (A109634 n).toNat

end

end A026397.P14448605999698276476

/-!
# A026398: a(n) = greatest k such that s(j) > 0 for all j < k at end of stage n in forming A026400.

The programs for A026398, there is no canonical definition to state claims against.
-/

/-! ## A026398.P10374352188075584880

`A026401(n+2)-1`
-/

namespace A026398.P10374352188075584880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026401 (n + 2) - 1

end

end A026398.P10374352188075584880

/-! ## A026398.P11627929588517057690

`∑[abs(Δ[A026401(n+1)])]`
-/

namespace A026398.P11627929588517057690
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026401 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026398.P11627929588517057690

/-! ## A026398.P6473240549217460560

`∑[A000027(Δ[A026401(n+1)])]`
-/

namespace A026398.P6473240549217460560
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026401 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026398.P6473240549217460560

/-! ## A026398.P926364890399640233

`A026403(n+2)-(A002378(n+1)+1)`
-/

namespace A026398.P926364890399640233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026403 (n + 2) - (A002378 (n + 1) + 1)

end

end A026398.P926364890399640233

/-! ## A026398.P8873306245981317546

`A023443(A026401(n+2))`
-/

namespace A026398.P8873306245981317546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A026401 (n + 2)).toNat

end

end A026398.P8873306245981317546

/-!
# A026399: a(n) = s(k), where, at the end of stage n when forming A026400, k is the greatest integer such that s(j) > 0 for all j < k.

The programs for A026399, there is no canonical definition to state claims against.
-/

/-! ## A026399.P14905329207871117640

`A026400(A026398(n+1))`
-/

namespace A026399.P14905329207871117640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026400 (A026398 (n + 1)).toNat

end

end A026399.P14905329207871117640

/-! ## A026399.P10167423411463815831

`A026400(A026401(n+2)-1)`
-/

namespace A026399.P10167423411463815831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026400 (A026401 (n + 2) - 1).toNat

end

end A026399.P10167423411463815831

/-! ## A026399.P5963778496372148896

`A026400(A026403(n+2)-(A002378(n+1)+1))`
-/

namespace A026399.P5963778496372148896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026400 (A026403 (n + 2) - (A002378 (n + 1) + 1)).toNat

end

end A026399.P5963778496372148896

/-! ## A026399.P2890340525516102176

`A344310(n)+A000120(A327477(n+3))`
-/

namespace A026399.P2890340525516102176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344310 n + A000120 (A327477 (n + 3)).toNat

end

end A026399.P2890340525516102176

