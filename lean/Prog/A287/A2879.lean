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
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
# A287901: Number of Dyck paths of semilength n such that each positive level up to the highest nonempty level has at least one peak.

The programs for A287901, there is no canonical definition to state claims against.
-/

/-! ## A287901.P9551325404189365653

`floor(acot(n))+A000108(n)-A288539(n)`
-/

namespace A287901.P9551325404189365653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋ + (A000108 n - A288539 n)

end

end A287901.P9551325404189365653

/-! ## A287901.P16587436334121311738

`A000108(n)-A288539(A065033(2*n))`
-/

namespace A287901.P16587436334121311738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - A288539 (A065033 (2 * n)).toNat

end

end A287901.P16587436334121311738

/-! ## A287901.P17301329029314630155

`A000007(n)+A000108(n)-A288539(n)`
-/

namespace A287901.P17301329029314630155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A000108 n - A288539 n)

end

end A287901.P17301329029314630155

/-! ## A287901.P3039628647120667952

`floor(A065033(n)/(n+1))+A000108(n)-A288539(n)`
-/

namespace A287901.P3039628647120667952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A065033 n : ℚ) / (n + 1 : ℚ)⌋ + (A000108 n - A288539 n)

end

end A287901.P3039628647120667952

/-! ## A287901.P11560637824723157776

`A000108(n)+A010051(A017089(n))-A288539(n)`
-/

namespace A287901.P11560637824723157776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + (A010051 (A017089 n).toNat - A288539 n)

end

end A287901.P11560637824723157776

/-! ## A287901.P8103104322711609261

`A010051(A136612(n+1))+A000108(n)-A288539(n)`
-/

namespace A287901.P8103104322711609261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A136612 (n + 1)).toNat + (A000108 n - A288539 n)

end

end A287901.P8103104322711609261

/-! ## A287901.P13081654550930189181

`A010051(A289509(n+1))+A000108(n)-A288539(n)`
-/

namespace A287901.P13081654550930189181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A289509 (n + 1)).toNat + (A000108 n - A288539 n)

end

end A287901.P13081654550930189181

/-! ## A287901.P10692028821433650230

`A000108(n)-A001221(A034444(n+1))*A288539(n)`
-/

namespace A287901.P10692028821433650230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - A001221 (A034444 (n + 1)).toNat * A288539 n

end

end A287901.P10692028821433650230

/-! ## A287901.P3380982323929089879

`A288386(∑[n]+1)`
-/

namespace A287901.P3380982323929089879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288386 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A287901.P3380982323929089879

/-! ## A287901.P14072386543431105309

`gcd(A000038(n), A288386(A000124(n)))`
-/

namespace A287901.P14072386543431105309
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A288386 (A000124 n).toNat)

end

end A287901.P14072386543431105309

/-! ## A287901.P8337897174243092377

`lcm(A033999(n), A288386(A000124(n)))`
-/

namespace A287901.P8337897174243092377
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A288386 (A000124 n).toNat)

end

end A287901.P8337897174243092377

/-! ## A287901.P11917411106803052885

`A288386(A000124(n))%A252036(n+1)`
-/

namespace A287901.P11917411106803052885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288386 (A000124 n).toNat) (A252036 (n + 1))

end

end A287901.P11917411106803052885

/-! ## A287901.P400672460064767358

`A158405(n+1)%2*A288386(A000124(n))`
-/

namespace A287901.P400672460064767358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158405 (n + 1)) 2 * A288386 (A000124 n).toNat

end

end A287901.P400672460064767358

/-! ## A287901.P5815526471149968837

`A288386(A000124(n))%Δ[A001541(n)]`
-/

namespace A287901.P5815526471149968837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288386 (A000124 n).toNat) (f1 (n + 1) - f1 n)

end

end A287901.P5815526471149968837

/-!
# A287902: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 371", based on the 5-celled von Neumann neighborhood.

The programs for A287902, there is no canonical definition to state claims against.
-/

/-! ## A287902.P10393932045830753576

`A007088(A287904(n))`
-/

namespace A287902.P10393932045830753576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287904 n).toNat

end

end A287902.P10393932045830753576

/-! ## A287902.P15563144744674303250

`A185544(2*A287904(n))`
-/

namespace A287902.P15563144744674303250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A287904 n).toNat

end

end A287902.P15563144744674303250

/-! ## A287902.P11064315051841050783

`A287941(n*gcd(11, n))`
-/

namespace A287902.P11064315051841050783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287941 (n * Nat.gcd 11 n)

end

end A287902.P11064315051841050783

/-! ## A287902.P1599337959483188951

`A287941(A062399(n))`
-/

namespace A287902.P1599337959483188951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287941 (A062399 n).toNat

end

end A287902.P1599337959483188951

/-! ## A287902.P14009846016987131751

`A287941(A120126(n))`
-/

namespace A287902.P14009846016987131751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287941 (A120126 n).toNat

end

end A287902.P14009846016987131751

/-!
# A287903: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 371", based on the 5-celled von Neumann neighborhood.

The programs for A287903, there is no canonical definition to state claims against.
-/

/-! ## A287903.P7662503989896711806

`A007088(A287905(n))`
-/

namespace A287903.P7662503989896711806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287905 n).toNat

end

end A287903.P7662503989896711806

/-! ## A287903.P2942594818875270962

`A185544(2*A287905(n))`
-/

namespace A287903.P2942594818875270962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A287905 n).toNat

end

end A287903.P2942594818875270962

/-! ## A287903.P16831135417212874666

`A287942(A062399(n))`
-/

namespace A287903.P16831135417212874666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287942 (A062399 n).toNat

end

end A287903.P16831135417212874666

/-! ## A287903.P18408256826135467688

`A287942(A120126(n))`
-/

namespace A287903.P18408256826135467688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287942 (A120126 n).toNat

end

end A287903.P18408256826135467688

/-! ## A287903.P161965892201533908

`A287942(A351870(n))`
-/

namespace A287903.P161965892201533908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287942 (A351870 n).toNat

end

end A287903.P161965892201533908

/-!
# A287904: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 371", based on the 5-celled von Neumann neighborhood.

The programs for A287904, there is no canonical definition to state claims against.
-/

/-! ## A287904.P15963345683746819159

`A287946(n)-A024362(A100157(n+2))`
-/

namespace A287904.P15963345683746819159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287946 n - A024362 (A100157 (n + 2)).toNat

end

end A287904.P15963345683746819159

/-! ## A287904.P3589997576616812190

`A287946(n)-A184955(A135986(n+1))`
-/

namespace A287904.P3589997576616812190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287946 n - A184955 (A135986 (n + 1)).toNat

end

end A287904.P3589997576616812190

/-! ## A287904.P17850128353210317501

`A287946(n)-A184955(A213267(n))`
-/

namespace A287904.P17850128353210317501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287946 n - A184955 (A213267 n).toNat

end

end A287904.P17850128353210317501

/-! ## A287904.P12216103736903281250

`A287946(n)-A184955(A154443(n+4))`
-/

namespace A287904.P12216103736903281250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287946 n - A184955 (A154443 (n + 4)).toNat

end

end A287904.P12216103736903281250

/-! ## A287904.P5194701908362650935

`A287946(A062399(n))`
-/

namespace A287904.P5194701908362650935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287946 (A062399 n).toNat

end

end A287904.P5194701908362650935

/-!
# A287905: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 371", based on the 5-celled von Neumann neighborhood.

The programs for A287905, there is no canonical definition to state claims against.
-/

/-! ## A287905.P7057361531813447467

`A287947(A062399(n))`
-/

namespace A287905.P7057361531813447467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287947 (A062399 n).toNat

end

end A287905.P7057361531813447467

/-! ## A287905.P6014329003897487094

`A065668(A287947(n))`
-/

namespace A287905.P6014329003897487094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065668 (A287947 n).toNat

end

end A287905.P6014329003897487094

/-! ## A287905.P15005010594235611845

`A287947(A120126(n))`
-/

namespace A287905.P15005010594235611845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287947 (A120126 n).toNat

end

end A287905.P15005010594235611845

/-! ## A287905.P14400426969134177981

`A287947(A351870(n))`
-/

namespace A287905.P14400426969134177981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287947 (A351870 n).toNat

end

end A287905.P14400426969134177981

/-! ## A287905.P6600873969596304866

`A287947(A004894(n+1))`
-/

namespace A287905.P6600873969596304866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287947 (A004894 (n + 1)).toNat

end

end A287905.P6600873969596304866

/-!
# A287906: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 374", based on the 5-celled von Neumann neighborhood.

The programs for A287906, there is no canonical definition to state claims against.
-/

/-! ## A287906.P8307472555638387994

`A007088(A287908(n))`
-/

namespace A287906.P8307472555638387994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287908 n).toNat

end

end A287906.P8307472555638387994

/-! ## A287906.P5155555776255371598

`A007088(A000225(n+2)-A289525(n+1))`
-/

namespace A287906.P5155555776255371598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A000225 (n + 2) - A289525 (n + 1)).toNat

end

end A287906.P5155555776255371598

/-! ## A287906.P11957672660702977849

`A007088(A000225(n+2)%A289525(n+1))`
-/

namespace A287906.P11957672660702977849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.tmod (A000225 (n + 2)) (A289525 (n + 1))).toNat

end

end A287906.P11957672660702977849

/-! ## A287906.P1473791502849076065

`A007088(xor(A000225(n+2), A289525(n+1)))`
-/

namespace A287906.P1473791502849076065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.xor (A000225 (n + 2)) (A289525 (n + 1))).toNat

end

end A287906.P1473791502849076065

/-! ## A287906.P1417372642592321058

`A007088(A000079(n+2)-(A289525(n+1)+1))`
-/

namespace A287906.P1417372642592321058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A000079 (n + 2) - (A289525 (n + 1) + 1)).toNat

end

end A287906.P1417372642592321058

/-!
# A287907: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 374", based on the 5-celled von Neumann neighborhood.

The programs for A287907, there is no canonical definition to state claims against.
-/

/-! ## A287907.P3325482610595160368

`A007088(A287909(n))`
-/

namespace A287907.P3325482610595160368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287909 n).toNat

end

end A287907.P3325482610595160368

/-! ## A287907.P13991297795816951539

`A185544(2*A287909(n))`
-/

namespace A287907.P13991297795816951539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A287909 n).toNat

end

end A287907.P13991297795816951539

/-! ## A287907.P12741874715112782895

`A185544(A287909(n)+A287909(n))`
-/

namespace A287907.P12741874715112782895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A287909 n + A287909 n).toNat

end

end A287907.P12741874715112782895

/-!
# A287908: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 374", based on the 5-celled von Neumann neighborhood.

The programs for A287908, there is no canonical definition to state claims against.
-/

/-! ## A287908.P15170541895838903161

`A000225(n+2)-A289525(n+1)`
-/

namespace A287908.P15170541895838903161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 2) - A289525 (n + 1)

end

end A287908.P15170541895838903161

/-! ## A287908.P15675462254650792264

`A000079(n+2)-(A289525(n+1)+1)`
-/

namespace A287908.P15675462254650792264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 2) - (A289525 (n + 1) + 1)

end

end A287908.P15675462254650792264

/-! ## A287908.P3168018541841810591

`A131577(n+3)-(A289525(n+1)+1)`
-/

namespace A287908.P3168018541841810591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (n + 3) - (A289525 (n + 1) + 1)

end

end A287908.P3168018541841810591

/-! ## A287908.P2309200134967151215

`A289526(n)-and(A289525(n+1), A289526(n))`
-/

namespace A287908.P2309200134967151215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289526 n - Int.land (A289525 (n + 1)) (A289526 n)

end

end A287908.P2309200134967151215

/-! ## A287908.P2963378860498553926

`A285542(2*(n+1))-A289525(n+1)`
-/

namespace A287908.P2963378860498553926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285542 (2 * (n + 1)) - A289525 (n + 1)

end

end A287908.P2963378860498553926

/-!
# A287910: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 377", based on the 5-celled von Neumann neighborhood.

The programs for A287910, there is no canonical definition to state claims against.
-/

/-! ## A287910.P14284296355636816633

`A007088(A287912(n))`
-/

namespace A287910.P14284296355636816633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287912 n).toNat

end

end A287910.P14284296355636816633

/-! ## A287910.P8500163682364431308

`A185544(2*A287912(n))`
-/

namespace A287910.P8500163682364431308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A287912 n).toNat

end

end A287910.P8500163682364431308

/-! ## A287910.P14173678098393643442

`A288646(n)+A185255(A047406(n+1))`
-/

namespace A287910.P14173678098393643442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288646 n + A185255 (A047406 (n + 1)).toNat

end

end A287910.P14173678098393643442

/-! ## A287910.P5038934472485350275

`A288646(n)+A185255(A060735(n+1))`
-/

namespace A287910.P5038934472485350275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288646 n + A185255 (A060735 (n + 1)).toNat

end

end A287910.P5038934472485350275

/-!
# A287911: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 377", based on the 5-celled von Neumann neighborhood.

The programs for A287911, there is no canonical definition to state claims against.
-/

/-! ## A287911.P10180056888268822027

`A007088(A287913(n))`
-/

namespace A287911.P10180056888268822027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287913 n).toNat

end

end A287911.P10180056888268822027

/-! ## A287911.P10454804200782453416

`A185544(2*A287913(n))`
-/

namespace A287911.P10454804200782453416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A287913 n).toNat

end

end A287911.P10454804200782453416

/-! ## A287911.P897226230670979307

`A288647(A002289(n)+n)`
-/

namespace A287911.P897226230670979307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288647 (A002289 n + (n : ℤ)).toNat

end

end A287911.P897226230670979307

/-!
# A287912: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 377", based on the 5-celled von Neumann neighborhood.

The programs for A287912, there is no canonical definition to state claims against.
-/

/-! ## A287912.P14767903495182041685

`A288648(n)+A035187(A291382(n))`
-/

namespace A287912.P14767903495182041685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288648 n + A035187 (A291382 n).toNat

end

end A287912.P14767903495182041685

/-! ## A287912.P8636052622467889347

`A285818(n)+A083895(A306099(n))`
-/

namespace A287912.P8636052622467889347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285818 n + A083895 (A306099 n).toNat

end

end A287912.P8636052622467889347

/-! ## A287912.P15176558971892826893

`A288648(n)+A101030(A344110(n))`
-/

namespace A287912.P15176558971892826893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288648 n + A101030 (A344110 n).toNat

end

end A287912.P15176558971892826893

/-!
# A287913: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 377", based on the 5-celled von Neumann neighborhood.

The programs for A287913, there is no canonical definition to state claims against.
-/

/-! ## A287913.P10846647992570950815

`or(A051049(n), A250248(A287789(n)))`
-/

namespace A287913.P10846647992570950815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A051049 n) (A250248 (A287789 n).toNat)

end

end A287913.P10846647992570950815

/-! ## A287913.P5689538548668563257

`or(A051049(n), A287789(A351870(n)))`
-/

namespace A287913.P5689538548668563257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A051049 n) (A287789 (A351870 n).toNat)

end

end A287913.P5689538548668563257

/-! ## A287913.P5807582035566702153

`or(A122757(A206268(n)), A285913(n))`
-/

namespace A287913.P5807582035566702153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A122757 (A206268 n).toNat) (A285913 n)

end

end A287913.P5807582035566702153

/-! ## A287913.P12461985500943053260

`or(A122757(A206268(n)), A287789(n))`
-/

namespace A287913.P12461985500943053260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A122757 (A206268 n).toNat) (A287789 n)

end

end A287913.P12461985500943053260

/-!
# A287914: Numbers k such that k!6 + 4 is prime, where k!6 is the sextuple factorial number (A085158 ).

The programs for A287914, there is no canonical definition to state claims against.
-/

/-! ## A287914.P6391367946757605367

`or(1, A296387(A277856(n+1)))`
-/

namespace A287914.P6391367946757605367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A296387 (A277856 (n + 1)).toNat)

end

end A287914.P6391367946757605367

/-! ## A287914.P8567268708961316258

`lt[A000265(n+5), dr(A320829(n+2))]`
-/

namespace A287914.P8567268708961316258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 5)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A320829 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A287914.P8567268708961316258

/-! ## A287914.P13883282188973017582

`A296387(A277856(n+1))+A188642(n)`
-/

namespace A287914.P13883282188973017582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296387 (A277856 (n + 1)).toNat + A188642 n

end

end A287914.P13883282188973017582

/-! ## A287914.P13334113677376176753

`lt[A238675(n+1), A005383(A349141(n+5))]`
-/

namespace A287914.P13334113677376176753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005383 (A349141 (n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A287914.P13334113677376176753

/-! ## A287914.P5142784857444905307

`∑[A193432((n-1)!+n*a(n-1))]` with `a(0)=1`
-/

namespace A287914.P5142784857444905307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A193432 ((Nat.factorial ((n : ℤ) - 1).toNat : ℤ) + (n : ℤ) * f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287914.P5142784857444905307

/-!
# A287917: Number of distinct primorials A002110(k) > A285784(n) such that the primorials are coprime to A285784(n).

The programs for A287917, there is no canonical definition to state claims against.
-/

/-! ## A287917.P9355377118931976861

`A095734(p?[xor(2, A073291(n))])`
-/

namespace A287917.P9355377118931976861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A073291 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095734 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A287917.P9355377118931976861

/-! ## A287917.P287215387418271124

`A336691(∑[A057661(n+1)²])`
-/

namespace A287917.P287215387418271124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057661 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336691 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A287917.P287215387418271124

/-! ## A287917.P13772707988887770783

`A261794(A259016(n)+A007829(n))`
-/

namespace A287917.P13772707988887770783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261794 (A259016 n + A007829 n).toNat

end

end A287917.P13772707988887770783

/-! ## A287917.P17686601055171288498

`gcd(A001222(A195972(n+1)), A084057(n))`
-/

namespace A287917.P17686601055171288498
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001222 (A195972 (n + 1)).toNat) (A084057 n)

end

end A287917.P17686601055171288498

/-! ## A287917.P1974208006948928124

`gcd(A344777(n+1), A344779(A000009(n)))`
-/

namespace A287917.P1974208006948928124
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A344777 (n + 1)) (A344779 (A000009 n).toNat)

end

end A287917.P1974208006948928124

/-!
# A287918: Union of nonprime 1 <= t <= m for m in A036913, with gcd(t,m) = 1.

The programs for A287918, there is no canonical definition to state claims against.
-/

/-! ## A287918.P3655796150173231681

`∪[A067793(A067784(n+1)), A067794(n+1)]`
-/

namespace A287918.P3655796150173231681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067793 (A067784 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067794 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A287918.P3655796150173231681

/-! ## A287918.P8631030792691854325

`eq[A004248(A286852(n)), A010126(n)]`
-/

namespace A287918.P8631030792691854325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 (A286852 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010126 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A287918.P8631030792691854325

/-! ## A287918.P2416608835647400790

`eq[A004248(A286852(n)), A010135(n)]`
-/

namespace A287918.P2416608835647400790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 (A286852 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010135 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A287918.P2416608835647400790

/-! ## A287918.P17924698659351599423

`eq[A004248(A286852(n)), A010144(n)]`
-/

namespace A287918.P17924698659351599423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 (A286852 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010144 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A287918.P17924698659351599423

/-! ## A287918.P877909536071834511

`eq[A004248(A286852(n)), A010155(n)]`
-/

namespace A287918.P877909536071834511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 (A286852 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010155 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A287918.P877909536071834511

/-!
# A287919: Square array T(0,n) = prime(n) and T(m+1,n) = T(m,n) + T(m,n+1), m >= 0, n >= 1, read by falling antidiagonals.

The programs for A287919, there is no canonical definition to state claims against.
-/

/-! ## A287919.P900597124936026252

`A001414(A066117(n+1))`
-/

namespace A287919.P900597124936026252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A066117 (n + 1)).toNat

end

end A287919.P900597124936026252

/-!
# A287920: Triangle T(n,k) read by rows: T(n,k) = floor(prime(n)/prime(k)), n >= k >= 1.

The programs for A287920, there is no canonical definition to state claims against.
-/

/-! ## A287920.P6495542518763317559

`A069897(A087112(n+1))`
-/

namespace A287920.P6495542518763317559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069897 (A087112 (n + 1)).toNat

end

end A287920.P6495542518763317559

/-! ## A287920.P15707663782730316438

`floor(A005145(n+1)/A037126(n+1))`
-/

namespace A287920.P15707663782730316438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005145 (n + 1) : ℚ) / (A037126 (n + 1) : ℚ)⌋

end

end A287920.P15707663782730316438

/-! ## A287920.P17473022176622949824

`floor(A005145(n+1)²/A087112(n+1))`
-/

namespace A287920.P17473022176622949824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005145 (n + 1) ^ 2 : ℚ) / (A087112 (n + 1) : ℚ)⌋

end

end A287920.P17473022176622949824

/-! ## A287920.P8588724732807163106

`floor(A005145(n+1)/A019565(A059268(n)))`
-/

namespace A287920.P8588724732807163106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005145 (n + 1) : ℚ) / (A019565 (A059268 n).toNat : ℚ)⌋

end

end A287920.P8588724732807163106

/-! ## A287920.P13331073510375277468

`floor(A005145(n+1)/A000040(A002260(n+1)))`
-/

namespace A287920.P13331073510375277468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005145 (n + 1) : ℚ) / (A000040 (A002260 (n + 1)).toNat : ℚ)⌋

end

end A287920.P13331073510375277468

/-! ## A287920.P13880404626159769507

`floor(A005145(n+1)/A000040(A002262(n)+1))`
-/

namespace A287920.P13880404626159769507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005145 (n + 1) : ℚ) / (A000040 (A002262 n + 1).toNat : ℚ)⌋

end

end A287920.P13880404626159769507

/-! ## A287920.P8534623151277089479

`floor(A000040(A002024(n+1))/A037126(n+1))`
-/

namespace A287920.P8534623151277089479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (A002024 (n + 1)).toNat : ℚ) / (A037126 (n + 1) : ℚ)⌋

end

end A287920.P8534623151277089479

/-! ## A287920.P15792754478672374205

`floor(A008578(A003057(n+2))/A037126(n+1))`
-/

namespace A287920.P15792754478672374205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008578 (A003057 (n + 2)).toNat : ℚ) / (A037126 (n + 1) : ℚ)⌋

end

end A287920.P15792754478672374205

/-!
# A287922: a(n) = prime(1)^2 + prime(n)^2.

The programs for A287922, the canonical program `A287922.P785409424009348182` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287922 has offset 1).

The definition of A287922 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A287922.P8028105885987517216

`p?[ceil(2/acot(n))]²+4`
-/

namespace A287922.P8028105885987517216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 + 4

end

end A287922.P8028105885987517216

namespace A287922

/-- `p?[ceil(2/acot(n))]²+4` -/
def P8028105885987517216.Spec : Prop :=
  ∀ n, P8028105885987517216.a n = A287922 (n + 1)

end A287922

/-! ## A287922.P785409424009348182

`p?[round(8*n/7)]²+4`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A287922

/-- `p?[round(8*n/7)]²+4` -/
def P785409424009348182.Spec : Prop :=
  ∀ n, P785409424009348182.a n = A287922 (n + 1)

theorem P785409424009348182.correct : P785409424009348182.Spec := by
  intro n
  simp only [A287922, Nat.add_sub_cancel]

end A287922

/-! ## A287922.P12848929572727103372

`A061725(n+1)+2`
-/

namespace A287922.P12848929572727103372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061725 (n + 1) + 2

end

end A287922.P12848929572727103372

namespace A287922

/-- `A061725(n+1)+2` -/
def P12848929572727103372.Spec : Prop :=
  ∀ n, P12848929572727103372.a n = A287922 (n + 1)

end A287922

/-! ## A287922.P12846560572822543832

`A066872(n+1)+3`
-/

namespace A287922.P12846560572822543832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066872 (n + 1) + 3

end

end A287922.P12846560572822543832

namespace A287922

/-- `A066872(n+1)+3` -/
def P12846560572822543832.Spec : Prop :=
  ∀ n, P12846560572822543832.a n = A287922 (n + 1)

end A287922

/-! ## A287922.P11880180547970383132

`4+A001248(n+1)`
-/

namespace A287922.P11880180547970383132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 + A001248 (n + 1)

end

end A287922.P11880180547970383132

namespace A287922

/-- `4+A001248(n+1)` -/
def P11880180547970383132.Spec : Prop :=
  ∀ n, P11880180547970383132.a n = A287922 (n + 1)

end A287922

/-! ## A287922.P3477192748672427627

`A084920(n+1)+5`
-/

namespace A287922.P3477192748672427627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084920 (n + 1) + 5

end

end A287922.P3477192748672427627

namespace A287922

/-- `A084920(n+1)+5` -/
def P3477192748672427627.Spec : Prop :=
  ∀ n, P3477192748672427627.a n = A287922 (n + 1)

end A287922

/-! ## A287922.P8967748059944502165

`A049001(n+1)+6`
-/

namespace A287922.P8967748059944502165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049001 (n + 1) + 6

end

end A287922.P8967748059944502165

namespace A287922

/-- `A049001(n+1)+6` -/
def P8967748059944502165.Spec : Prop :=
  ∀ n, P8967748059944502165.a n = A287922 (n + 1)

end A287922

/-! ## A287922.P16575655038920632741

`A182200(n+1)+7`
-/

namespace A287922.P16575655038920632741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182200 (n + 1) + 7

end

end A287922.P16575655038920632741

namespace A287922

/-- `A182200(n+1)+7` -/
def P16575655038920632741.Spec : Prop :=
  ∀ n, P16575655038920632741.a n = A287922 (n + 1)

end A287922

/-! ## A287922.P10096507884123550198

`A166010(n+1)+8`
-/

namespace A287922.P10096507884123550198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166010 (n + 1) + 8

end

end A287922.P10096507884123550198

namespace A287922

/-- `A166010(n+1)+8` -/
def P10096507884123550198.Spec : Prop :=
  ∀ n, P10096507884123550198.a n = A287922 (n + 1)

end A287922

/-! ## A287922.P7467790171488192748

`A000040(n+1)²+4`
-/

namespace A287922.P7467790171488192748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 + 4

end

end A287922.P7467790171488192748

namespace A287922

/-- `A000040(n+1)²+4` -/
def P7467790171488192748.Spec : Prop :=
  ∀ n, P7467790171488192748.a n = A287922 (n + 1)

end A287922

/-! ## A287922.P12586263739606752198

`A273960(n+1)²+4`
-/

namespace A287922.P12586263739606752198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273960 (n + 1) ^ 2 + 4

end

end A287922.P12586263739606752198

namespace A287922

/-- `A273960(n+1)²+4` -/
def P12586263739606752198.Spec : Prop :=
  ∀ n, P12586263739606752198.a n = A287922 (n + 1)

end A287922

/-! ## A287922.P12065112186786903793

`A079704(n+1)/2+4`
-/

namespace A287922.P12065112186786903793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079704 (n + 1) : ℚ) / 2 + 4

end

end A287922.P12065112186786903793

namespace A287922

/-- `A079704(n+1)/2+4` -/
def P12065112186786903793.Spec : Prop :=
  ∀ n, P12065112186786903793.a n = (A287922 (n + 1) : ℚ)

end A287922

/-! ## A287922.P10750944004372796048

`A079705(n+1)/3+4`
-/

namespace A287922.P10750944004372796048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079705 (n + 1) : ℚ) / 3 + 4

end

end A287922.P10750944004372796048

namespace A287922

/-- `A079705(n+1)/3+4` -/
def P10750944004372796048.Spec : Prop :=
  ∀ n, P10750944004372796048.a n = (A287922 (n + 1) : ℚ)

end A287922

/-! ## A287922.P2489137619761355585

`A069262(n+1)/4+4`
-/

namespace A287922.P2489137619761355585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069262 (n + 1) : ℚ) / 4 + 4

end

end A287922.P2489137619761355585

namespace A287922

/-- `A069262(n+1)/4+4` -/
def P2489137619761355585.Spec : Prop :=
  ∀ n, P2489137619761355585.a n = (A287922 (n + 1) : ℚ)

end A287922

/-! ## A287922.P13087755808182438886

`A182174(n+1)+5+n`
-/

namespace A287922.P13087755808182438886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182174 (n + 1) + 5 + (n : ℤ)

end

end A287922.P13087755808182438886

namespace A287922

/-- `A182174(n+1)+5+n` -/
def P13087755808182438886.Spec : Prop :=
  ∀ n, P13087755808182438886.a n = A287922 (n + 1)

end A287922

/-! ## A287922.P9155063967453183361

`A182174(n+1)+A020710(n)`
-/

namespace A287922.P9155063967453183361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182174 (n + 1) + A020710 n

end

end A287922.P9155063967453183361

namespace A287922

/-- `A182174(n+1)+A020710(n)` -/
def P9155063967453183361.Spec : Prop :=
  ∀ n, P9155063967453183361.a n = A287922 (n + 1)

end A287922

/-! ## A287922.P14996538205879263045

`A079705(n+1)-A153480(n)`
-/

namespace A287922.P14996538205879263045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079705 (n + 1) - A153480 n

end

end A287922.P14996538205879263045

namespace A287922

/-- `A079705(n+1)-A153480(n)` -/
def P14996538205879263045.Spec : Prop :=
  ∀ n, P14996538205879263045.a n = A287922 (n + 1)

end A287922

/-! ## A287922.P7028878488706239526

`A129069(n+1)+A005722(n+1)`
-/

namespace A287922.P7028878488706239526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129069 (n + 1) + A005722 (n + 1)

end

end A287922.P7028878488706239526

namespace A287922

/-- `A129069(n+1)+A005722(n+1)` -/
def P7028878488706239526.Spec : Prop :=
  ∀ n, P7028878488706239526.a n = A287922 (n + 1)

end A287922

/-! ## A287922.P12466339050676664417

`A175221(n+1)+A036689(n+1)`
-/

namespace A287922.P12466339050676664417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175221 (n + 1) + A036689 (n + 1)

end

end A287922.P12466339050676664417

namespace A287922

/-- `A175221(n+1)+A036689(n+1)` -/
def P12466339050676664417.Spec : Prop :=
  ∀ n, P12466339050676664417.a n = A287922 (n + 1)

end A287922

/-! ## A287922.P18134196785113266155

`A119959(n+1)+A113935(n+1)`
-/

namespace A287922.P18134196785113266155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119959 (n + 1) + A113935 (n + 1)

end

end A287922.P18134196785113266155

namespace A287922

/-- `A119959(n+1)+A113935(n+1)` -/
def P18134196785113266155.Spec : Prop :=
  ∀ n, P18134196785113266155.a n = A287922 (n + 1)

end A287922

/-!
# A287924: Numbers k such that A287922(k) is a prime.

The programs for A287924, there is no canonical definition to state claims against.
-/

/-! ## A287924.P5862028736422199818

`eq[2, A240131(n+1)]+1`
-/

namespace A287924.P5862028736422199818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240131 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287924.P5862028736422199818

/-! ## A287924.P9751347751325496835

`lt[1, (a(n-3)+2)/A240131(n)]` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A287924.P9751347751325496835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 2] fun n f2 =>
  (f2 (n - 3) + 2) / (A240131 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A287924.P9751347751325496835

/-! ## A287924.P345225720213966612

`eq[2, A240131(A028310(n))]`
-/

namespace A287924.P345225720213966612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240131 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287924.P345225720213966612

/-! ## A287924.P9918707653607909865

`A000720(A062324(n+1))`
-/

namespace A287924.P9918707653607909865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A062324 (n + 1)).toNat

end

end A287924.P9918707653607909865

/-! ## A287924.P11424522062452491203

`A000720(p?[A007591(n+1)])`
-/

namespace A287924.P11424522062452491203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A287924.P11424522062452491203

/-! ## A287924.P3929237470866340387

`record[A061395(A134616(n+1))]`
-/

namespace A287924.P3929237470866340387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A134616 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287924.P3929237470866340387

/-! ## A287924.P16902165507503264937

`A003963(p?[A007591(n+1)])`
-/

namespace A287924.P16902165507503264937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A287924.P16902165507503264937

/-! ## A287924.P9814201386825287101

`A026233(p?[A007591(n+1)])`
-/

namespace A287924.P9814201386825287101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A287924.P9814201386825287101

/-! ## A287924.P8135568532356931782

`A026238(p?[A007591(n+1)])`
-/

namespace A287924.P8135568532356931782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A287924.P8135568532356931782

/-! ## A287924.P13908012016213169103

`A003963(A129119(n+1)/2)`
-/

namespace A287924.P13908012016213169103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (SequenceMachineLib.roundAway ((A129119 (n + 1) : ℚ) / 2)).toNat

end

end A287924.P13908012016213169103

/-! ## A287924.P132471408353766726

`A003963(A129119(n+1))`
-/

namespace A287924.P132471408353766726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A129119 (n + 1)).toNat

end

end A287924.P132471408353766726

/-!
# A287925: a(n) = prime(1)^4 + prime(n)^4.

The programs for A287925, the canonical program `A287925.P8080613236558141031` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287925 has offset 1).

The definition of A287925 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A287925.P8080613236558141031

`p?[round(8*n/7)]²²+16`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A287925

/-- `p?[round(8*n/7)]²²+16` -/
def P8080613236558141031.Spec : Prop :=
  ∀ n, P8080613236558141031.a n = A287925 (n + 1)

theorem P8080613236558141031.correct : P8080613236558141031.Spec := by
  intro n
  simp only [A287925, Nat.add_sub_cancel]

end A287925

/-! ## A287925.P6793524770206370363

`A030514(n+1)+16`
-/

namespace A287925.P6793524770206370363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030514 (n + 1) + 16

end

end A287925.P6793524770206370363

namespace A287925

/-- `A030514(n+1)+16` -/
def P6793524770206370363.Spec : Prop :=
  ∀ n, P6793524770206370363.a n = A287925 (n + 1)

end A287925

/-! ## A287925.P15172594787006539825

`A001248(n+1)²+16`
-/

namespace A287925.P15172594787006539825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) ^ 2 + 16

end

end A287925.P15172594787006539825

namespace A287925

/-- `A001248(n+1)²+16` -/
def P15172594787006539825.Spec : Prop :=
  ∀ n, P15172594787006539825.a n = A287925 (n + 1)

end A287925

/-! ## A287925.P15868502000394613564

`p?[abs(xor(n, -2))]^4+16`
-/

namespace A287925.P15868502000394613564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 4 + 16

end

end A287925.P15868502000394613564

namespace A287925

/-- `p?[abs(xor(n, -2))]^4+16` -/
def P15868502000394613564.Spec : Prop :=
  ∀ n, P15868502000394613564.a n = A287925 (n + 1)

end A287925

/-! ## A287925.P14628616259367540025

`record[A088379(2*(n+1))+A088379(n+2)]`
-/

namespace A287925.P14628616259367540025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088379 (2 * (n + 1)) + A088379 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287925.P14628616259367540025

namespace A287925

/-- `record[A088379(2*(n+1))+A088379(n+2)]` -/
def P14628616259367540025.Spec : Prop :=
  ∀ n, P14628616259367540025.a n = A287925 (n + 1)

end A287925

/-!
# A287926: Sum of the divisors of n that are not divisible by 49.

The programs for A287926, the canonical program `A287926.P317681200600062687` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287926 has offset 1).

The definition of A287926 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A287926.P317681200600062687

`∑{d}[n+1, #%lcm(49, #)]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A287926

/-- `∑{d}[n+1, #%lcm(49, #)]` -/
def P317681200600062687.Spec : Prop :=
  ∀ n, (P317681200600062687.a n : ℤ) = A287926 (n + 1)

theorem P317681200600062687.correct : P317681200600062687.Spec := by
  intro n
  simp only [A287926, Nat.add_sub_cancel]

end A287926

/-! ## A287926.P8149712074267829201

`∑{d}[n+1, #*A050326(A268354(#))]`
-/

namespace A287926.P8149712074267829201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A050326 (A268354 d).toNat

end

end A287926.P8149712074267829201

namespace A287926

/-- `∑{d}[n+1, #*A050326(A268354(#))]` -/
def P8149712074267829201.Spec : Prop :=
  ∀ n, P8149712074267829201.a n = A287926 (n + 1)

end A287926

/-! ## A287926.P2861576561321150128

`A000203(lcm(A007947(n+1), A242603(n+1)))`
-/

namespace A287926.P2861576561321150128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Int.lcm (A007947 (n + 1)) (A242603 (n + 1)))

end

end A287926.P2861576561321150128

namespace A287926

/-- `A000203(lcm(A007947(n+1), A242603(n+1)))` -/
def P2861576561321150128.Spec : Prop :=
  ∀ n, P2861576561321150128.a n = A287926 (n + 1)

end A287926

/-! ## A287926.P10789117030716534178

`A000203(A014963(A268354(n+1))*A242603(n+1))`
-/

namespace A287926.P10789117030716534178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A014963 (A268354 (n + 1)).toNat * A242603 (n + 1)).toNat

end

end A287926.P10789117030716534178

namespace A287926

/-- `A000203(A014963(A268354(n+1))*A242603(n+1))` -/
def P10789117030716534178.Spec : Prop :=
  ∀ n, P10789117030716534178.a n = A287926 (n + 1)

end A287926

/-! ## A287926.P18136792697203563069

`A000203(gcd(n+1, A328618((n+1)²)))`
-/

namespace A287926.P18136792697203563069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Int.gcd (n + 1 : ℤ) (A328618 ((n + 1) ^ 2)))

end

end A287926.P18136792697203563069

namespace A287926

/-- `A000203(gcd(n+1, A328618((n+1)²)))` -/
def P18136792697203563069.Spec : Prop :=
  ∀ n, P18136792697203563069.a n = A287926 (n + 1)

end A287926

/-! ## A287926.P12294031454289163179

`A000203(root(n+1, A294335(A294335(n)%(n+1))))`
-/

namespace A287926.P12294031454289163179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((n + 1 : ℝ) ^ (1 / (A294335 (Int.tmod (A294335 n) (n + 1 : ℤ)).toNat : ℝ)))).toNat

end

end A287926.P12294031454289163179

namespace A287926

/-- `A000203(root(n+1, A294335(A294335(n)%(n+1))))` -/
def P12294031454289163179.Spec : Prop :=
  ∀ n, P12294031454289163179.a n = A287926 (n + 1)

end A287926

/-!
# A287927: Numbers k such that A287925(k) is a prime.

The programs for A287927, there is no canonical definition to state claims against.
-/

/-! ## A287927.P9602979754810294571

`A000720(A158361(n+1))`
-/

namespace A287927.P9602979754810294571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A158361 (n + 1)).toNat

end

end A287927.P9602979754810294571

/-! ## A287927.P10481097388423858026

`record[A061395(A134620(n+1))]`
-/

namespace A287927.P10481097388423858026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A134620 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287927.P10481097388423858026

/-! ## A287927.P7510940886823491978

`A003963(p?[A158361(n+1)])`
-/

namespace A287927.P7510940886823491978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158361 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A287927.P7510940886823491978

/-! ## A287927.P14062746078423640339

`A026233(p?[A158361(n+1)])`
-/

namespace A287927.P14062746078423640339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158361 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A287927.P14062746078423640339

/-! ## A287927.P319766787766215231

`A026238(p?[A158361(n+1)])`
-/

namespace A287927.P319766787766215231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158361 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A287927.P319766787766215231

/-! ## A287927.P14929402431351702318

`A049084(p?[A158361(n+1)])`
-/

namespace A287927.P14929402431351702318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158361 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A287927.P14929402431351702318

/-! ## A287927.P12987681137012216034

`A055396(p?[A158361(n+1)])`
-/

namespace A287927.P12987681137012216034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158361 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A287927.P12987681137012216034

/-! ## A287927.P10426997394778901792

`A056239(p?[A158361(n+1)])`
-/

namespace A287927.P10426997394778901792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158361 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A287927.P10426997394778901792

/-! ## A287927.P18296524820907518333

`A061395(p?[A158361(n+1)])`
-/

namespace A287927.P18296524820907518333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158361 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A287927.P18296524820907518333

/-! ## A287927.P18266087034183536734

`A290103(p?[A158361(n+1)])`
-/

namespace A287927.P18266087034183536734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158361 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A287927.P18266087034183536734

/-!
# A287928: Lexicographically earliest sequence of distinct positive terms such that, if digsum(a(i)) = digsum(a(j)), then either i = j or digsum(a(i+1)) != digsum(a(j+1)) (where digsum is the digital sum, A007953).

The programs for A287928, there is no canonical definition to state claims against.
-/

/-! ## A287928.P17207913169540071211

`A287929(A287929(A287929(n+1)))%A291212(n+1)`
-/

namespace A287928.P17207913169540071211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287929 (A287929 (A287929 (n + 1)).toNat).toNat) (A291212 (n + 1))

end

end A287928.P17207913169540071211

/-! ## A287928.P8321721614618340773

`A287929(A287929(A287929(n+1)%A046367(n)))`
-/

namespace A287928.P8321721614618340773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287929 (A287929 (Int.tmod (A287929 (n + 1)) (A046367 n)).toNat).toNat

end

end A287928.P8321721614618340773

/-! ## A287928.P12291917041493687322

`A287929(n+1)+A107393(A185294(n))`
-/

namespace A287928.P12291917041493687322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287929 (n + 1) + A107393 (A185294 n).toNat

end

end A287928.P12291917041493687322

/-!
# A287929: Inverse permutation to A287928.

The programs for A287929, there is no canonical definition to state claims against.
-/

/-! ## A287929.P14275360019634034414

`A287928(n+1)-A107393(A185294(n))`
-/

namespace A287929.P14275360019634034414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287928 (n + 1) - A107393 (A185294 n).toNat

end

end A287929.P14275360019634034414

/-!
# A287930: Numbers m such that for any positive integers (x, y), if x * y = m where x <= y, then x^2 + 2*y^2 is a prime number.

The programs for A287930, there is no canonical definition to state claims against.
-/

/-! ## A287930.P5052452960360377937

`record[A241717(A130665(n)%A241717(n))]`
-/

namespace A287930.P5052452960360377937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241717 (Int.tmod (A130665 n) (A241717 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287930.P5052452960360377937

/-! ## A287930.P4991683292532599756

`∑[A323300(A003161(n+2))]`
-/

namespace A287930.P4991683292532599756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323300 (A003161 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287930.P4991683292532599756

/-!
# A287931: Fixed point of the mapping 00->0010, 1->10, starting with 00.

The programs for A287931, there is no canonical definition to state claims against.
-/

/-! ## A287931.P6053648885868875535

`char[A287380(n+1)-1]`
-/

namespace A287931.P6053648885868875535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287380 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A287931.P6053648885868875535

/-! ## A287931.P7070132991208236930

`char[2]+char[A288374(n+1)]`
-/

namespace A287931.P7070132991208236930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

end

end A287931.P7070132991208236930

/-! ## A287931.P2098049144416730459

`char[comp[A287379(n+1)-1]]`
-/

namespace A287931.P2098049144416730459
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287379 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A287931.P2098049144416730459

/-! ## A287931.P9360770110734737471

`char[2]+char[A287003(n+2)+n]`
-/

namespace A287931.P9360770110734737471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287003 (n + 2) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

end

end A287931.P9360770110734737471

/-! ## A287931.P4001737334679665166

`A288372(A000007(n)+n)+char[2]`
-/

namespace A287931.P4001737334679665166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288372 (A000007 n + (n : ℤ)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A287931.P4001737334679665166

/-! ## A287931.P14513900416071013858

`A089840(Δ[comp[A287379(n+1)+n]])`
-/

namespace A287931.P14513900416071013858
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287379 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089840 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A287931.P14513900416071013858

/-! ## A287931.P9011093554220949281

`A338232(Δ[comp[A287380(n+1)+n]])`
-/

namespace A287931.P9011093554220949281
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287380 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338232 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A287931.P9011093554220949281

/-! ## A287931.P15367193422691869888

`A338268(Δ[comp[A287379(n+1)+n]])`
-/

namespace A287931.P15367193422691869888
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287379 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338268 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A287931.P15367193422691869888

/-! ## A287931.P14229403088934395057

`A288372(A233583(n+1)*A261143(n))`
-/

namespace A287931.P14229403088934395057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288372 (A233583 (n + 1) * A261143 n).toNat

end

end A287931.P14229403088934395057

/-! ## A287931.P9430285133630576844

`A288372(or(A233583(n+1), A288352(n+1)))`
-/

namespace A287931.P9430285133630576844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288372 (Int.lor (A233583 (n + 1)) (A288352 (n + 1))).toNat

end

end A287931.P9430285133630576844

/-! ## A287931.P9003495795102599573

`A288372(A000122(A022856(n+1))+n)`
-/

namespace A287931.P9003495795102599573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288372 (A000122 (A022856 (n + 1)).toNat + (n : ℤ)).toNat

end

end A287931.P9003495795102599573

/-!
# A287932: a(n) = least k > n such that lpf(n) = lpf(k), where lpf = least prime factor (A020639).

The programs for A287932, there is no canonical definition to state claims against.
-/

/-! ## A287932.P3527336205566377426

`A174857(n+2)+2+n`
-/

namespace A287932.P3527336205566377426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174857 (n + 2) + 2 + (n : ℤ)

end

end A287932.P3527336205566377426

/-! ## A287932.P16254737865277846088

`A257252(A250252(n*and(1, n)+1))+2+n`
-/

namespace A287932.P16254737865277846088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257252 (A250252 (n * Nat.land 1 n + 1)).toNat + 2 + (n : ℤ)

end

end A287932.P16254737865277846088

/-! ## A287932.P6386948123478288749

`A257251(A249742(n+1))+2+n`
-/

namespace A287932.P6386948123478288749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257251 (A249742 (n + 1)).toNat + 2 + (n : ℤ)

end

end A287932.P6386948123478288749

/-! ## A287932.P10119814030752052017

`A257252(A250252(n+1))+2+n`
-/

namespace A287932.P10119814030752052017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257252 (A250252 (n + 1)).toNat + 2 + (n : ℤ)

end

end A287932.P10119814030752052017

/-! ## A287932.P16962243531217645719

`A009056(A174857(n+2)+n)`
-/

namespace A287932.P16962243531217645719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A174857 (n + 2) + (n : ℤ)).toNat

end

end A287932.P16962243531217645719

/-! ## A287932.P18102112485045752198

`A171463(A174857(n+2)+n)`
-/

namespace A287932.P18102112485045752198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171463 (A174857 (n + 2) + (n : ℤ)).toNat

end

end A287932.P18102112485045752198

/-! ## A287932.P11478355296072575231

`A243427(A174857(n+2)+n)`
-/

namespace A287932.P11478355296072575231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243427 (A174857 (n + 2) + (n : ℤ)).toNat

end

end A287932.P11478355296072575231

/-!
# A287936: Numerator of moments of Rvachëv function up(x).

The programs for A287936, there is no canonical definition to state claims against.
-/

/-! ## A287936.P17023462259971036386

`A272755(Δ[n²])`
-/

namespace A287936.P17023462259971036386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272755 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A287936.P17023462259971036386

/-! ## A287936.P1551420454940794357

`A272755(2*n+1)+char[10]`
-/

namespace A287936.P1551420454940794357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272755 (2 * n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A287936.P1551420454940794357

/-! ## A287936.P11450432303462772147

`or(1, A272755(A105356(n+1)))`
-/

namespace A287936.P11450432303462772147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A272755 (A105356 (n + 1)).toNat)

end

end A287936.P11450432303462772147

/-! ## A287936.P1717962813311726998

`gcd(A272755(2*n+1), A287938(n))`
-/

namespace A287936.P1717962813311726998
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A272755 (2 * n + 1)) (A287938 n)

end

end A287936.P1717962813311726998

/-! ## A287936.P5412810238615885215

`A272755(A105356(n+1))/gcd(2, A272755(n))`
-/

namespace A287936.P5412810238615885215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272755 (A105356 (n + 1)).toNat : ℚ) / (Int.gcd 2 (A272755 n) : ℚ)

end

end A287936.P5412810238615885215

/-!
# A287938: Integers associated with moments of Rvachëv function.

The programs for A287938, there is no canonical definition to state claims against.
-/

/-! ## A287938.P17745190998131926401

`A140191(A287014(n))*A287936(n)`
-/

namespace A287938.P17745190998131926401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140191 (A287014 n).toNat * A287936 n

end

end A287938.P17745190998131926401

/-!
# A287940: a(n) is the first odd prime greater than a(n-1) such that (a(1), ..., a(n)) forms a prime vector. a(1) = 3, a(2) = 5.

The programs for A287940, there is no canonical definition to state claims against.
-/

/-! ## A287940.P3090084937553428759

`record[A092674(A183987(n+1))]`
-/

namespace A287940.P3090084937553428759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092674 (A183987 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287940.P3090084937553428759

/-! ## A287940.P9526093946580240009

`A092674(p?[A183987(n+1)])`
-/

namespace A287940.P9526093946580240009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092674 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A287940.P9526093946580240009

/-! ## A287940.P3790652507542501265

`record[A136019(A153775(2*n+1))]`
-/

namespace A287940.P3790652507542501265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136019 (A153775 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287940.P3790652507542501265

/-!
# A287941: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 379", based on the 5-celled von Neumann neighborhood.

The programs for A287941, there is no canonical definition to state claims against.
-/

/-! ## A287941.P11130668063492771813

`A007088(A287946(n))`
-/

namespace A287941.P11130668063492771813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287946 n).toNat

end

end A287941.P11130668063492771813

/-! ## A287941.P11987882109251414803

`A185544(2*A287946(n))`
-/

namespace A287941.P11987882109251414803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A287946 n).toNat

end

end A287941.P11987882109251414803

/-!
# A287942: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 379", based on the 5-celled von Neumann neighborhood.

The programs for A287942, there is no canonical definition to state claims against.
-/

/-! ## A287942.P2050468293820358551

`A007088(A287947(n))`
-/

namespace A287942.P2050468293820358551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287947 n).toNat

end

end A287942.P2050468293820358551

/-! ## A287942.P4057998390271508246

`A185544(2*A287947(n))`
-/

namespace A287942.P4057998390271508246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A287947 n).toNat

end

end A287942.P4057998390271508246

/-!
# A287945: a(n) = largest prime q such that q | 2^p - 2 and p - 1 | q - 1, where p = prime(n).

The programs for A287945, there is no canonical definition to state claims against.
-/

/-! ## A287945.P14493871094597847779

`A093074(record[A016017(n+1)])`
-/

namespace A287945.P14493871094597847779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016017 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A287945.P14493871094597847779

/-! ## A287945.P4359904682650923430

`A093074(2^A102781(n+1))`
-/

namespace A287945.P4359904682650923430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A102781 (n + 1) : ℤ))).toNat

end

end A287945.P4359904682650923430

/-! ## A287945.P16302978098774208842

`A093074(round(sqrt(A061286(n+1))))`
-/

namespace A287945.P16302978098774208842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (SequenceMachineLib.roundAway (Real.sqrt (A061286 (n + 1) : ℝ))).toNat

end

end A287945.P16302978098774208842

/-!
# A287946: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 379", based on the 5-celled von Neumann neighborhood.

The programs for A287946, there is no canonical definition to state claims against.
-/

/-! ## A287946.P5788884891978232320

`or(∑[A130377(n)], A287904(n))`
-/

namespace A287946.P5788884891978232320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A287904 n)

end

end A287946.P5788884891978232320

/-! ## A287946.P15366472735149242791

`or(A000005(A042385(n)), A287904(n))`
-/

namespace A287946.P15366472735149242791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000005 (A042385 n).toNat) (A287904 n)

end

end A287946.P15366472735149242791

/-! ## A287946.P6713894436125708188

`or(Δ[A184955(n+3)], A287904(n))`
-/

namespace A287946.P6713894436125708188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184955 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A287904 n)

end

end A287946.P6713894436125708188

/-! ## A287946.P12312841916652539499

`A287904(n)+A200505(A200505(3*n+4))`
-/

namespace A287946.P12312841916652539499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287904 n + A200505 (A200505 (3 * n + 4)).toNat

end

end A287946.P12312841916652539499

/-!
# A287948: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 382", based on the 5-celled von Neumann neighborhood.

The programs for A287948, there is no canonical definition to state claims against.
-/

/-! ## A287948.P7919880815846582451

`A007088(A287950(n))`
-/

namespace A287948.P7919880815846582451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287950 n).toNat

end

end A287948.P7919880815846582451

/-! ## A287948.P16688506956470120876

`A007088(A126646(n+1)-A288831(n+1))`
-/

namespace A287948.P16688506956470120876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A126646 (n + 1) - A288831 (n + 1)).toNat

end

end A287948.P16688506956470120876

/-! ## A287948.P13884723879070981593

`A007088(A000225(n+2)-A288831(n+1))`
-/

namespace A287948.P13884723879070981593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A000225 (n + 2) - A288831 (n + 1)).toNat

end

end A287948.P13884723879070981593

/-! ## A287948.P12770166951793132974

`A007088(Δ[A125128(n+1)]-A288831(n+1))`
-/

namespace A287948.P12770166951793132974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125128 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (f1 (n + 1) - f1 n - A288831 (n + 1)).toNat

end

end A287948.P12770166951793132974

/-! ## A287948.P13736799738865471999

`A185544(2*A287950(n))`
-/

namespace A287948.P13736799738865471999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A287950 n).toNat

end

end A287948.P13736799738865471999

/-!
# A287949: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 382", based on the 5-celled von Neumann neighborhood.

The programs for A287949, there is no canonical definition to state claims against.
-/

/-! ## A287949.P12623471466515394205

`A007088(A287951(n))`
-/

namespace A287949.P12623471466515394205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287951 n).toNat

end

end A287949.P12623471466515394205

/-! ## A287949.P9633613747591110262

`A185544(2*A287951(n))`
-/

namespace A287949.P9633613747591110262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A287951 n).toNat

end

end A287949.P9633613747591110262

/-!
# A287950: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 382", based on the 5-celled von Neumann neighborhood.

The programs for A287950, there is no canonical definition to state claims against.
-/

/-! ## A287950.P10881819441328225866

`A126646(n+1)-A288831(n+1)`
-/

namespace A287950.P10881819441328225866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 (n + 1) - A288831 (n + 1)

end

end A287950.P10881819441328225866

/-! ## A287950.P15849020661614824705

`A000225(n+2)-A288831(n+1)`
-/

namespace A287950.P15849020661614824705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 2) - A288831 (n + 1)

end

end A287950.P15849020661614824705

/-! ## A287950.P14364097666922643704

`A288832(n)-and(A288831(n+1), A288832(n))`
-/

namespace A287950.P14364097666922643704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288832 n - Int.land (A288831 (n + 1)) (A288832 n)

end

end A287950.P14364097666922643704

/-! ## A287950.P5216694285426854208

`Δ[A125128(n+1)-∑[A288831(n)]]`
-/

namespace A287950.P5216694285426854208
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288831 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125128 (n + 1) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A287950.P5216694285426854208

/-! ## A287950.P11059328245393032084

`Δ[A125128(n+1)]-A288831(n+1)`
-/

namespace A287950.P11059328245393032084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125128 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A288831 (n + 1)

end

end A287950.P11059328245393032084

/-!
# A287951: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 382", based on the 5-celled von Neumann neighborhood.

The programs for A287951, there is no canonical definition to state claims against.
-/

/-! ## A287951.P5742591769635961013

`and(A154592(A154592(n+1)), A287629(n))`
-/

namespace A287951.P5742591769635961013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A154592 (A154592 (n + 1)).toNat) (A287629 n)

end

end A287951.P5742591769635961013

/-! ## A287951.P4546846497871143208

`and(A000201(A305064(n)), A287629(n))`
-/

namespace A287951.P4546846497871143208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000201 (A305064 n).toNat) (A287629 n)

end

end A287951.P4546846497871143208

/-! ## A287951.P14198688708348103682

`and(A257736(A288901(n)), A287629(n))`
-/

namespace A287951.P14198688708348103682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A257736 (A288901 n).toNat) (A287629 n)

end

end A287951.P14198688708348103682

/-! ## A287951.P17158150198134539649

`and(A152579(A075736(n+1)), A287629(n))`
-/

namespace A287951.P17158150198134539649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A152579 (A075736 (n + 1)).toNat) (A287629 n)

end

end A287951.P17158150198134539649

/-!
# A287952: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 387", based on the 5-celled von Neumann neighborhood.

The programs for A287952, there is no canonical definition to state claims against.
-/

/-! ## A287952.P5774275249985080847

`A007088(A287954(n))`
-/

namespace A287952.P5774275249985080847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287954 n).toNat

end

end A287952.P5774275249985080847

/-! ## A287952.P4267985289356873085

`A185544(2*A287954(n))`
-/

namespace A287952.P4267985289356873085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A287954 n).toNat

end

end A287952.P4267985289356873085

/-!
# A287953: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 387", based on the 5-celled von Neumann neighborhood.

The programs for A287953, there is no canonical definition to state claims against.
-/

/-! ## A287953.P17841509804291553004

`A007088(A287955(n))`
-/

namespace A287953.P17841509804291553004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287955 n).toNat

end

end A287953.P17841509804291553004

/-! ## A287953.P5868793156725990481

`A185544(2*A287955(n))`
-/

namespace A287953.P5868793156725990481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A287955 n).toNat

end

end A287953.P5868793156725990481

/-! ## A287953.P17137080062780041624

`A288362(A029966(n+1)-A324692(2*n+1))`
-/

namespace A287953.P17137080062780041624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288362 (A029966 (n + 1) - A324692 (2 * n + 1)).toNat

end

end A287953.P17137080062780041624

/-! ## A287953.P16020104563783429852

`A288440(and(n, A288484(3*(n+1))))`
-/

namespace A287953.P16020104563783429852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288440 (Int.land (n : ℤ) (A288484 (3 * (n + 1)))).toNat

end

end A287953.P16020104563783429852

/-!
# A287954: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 387", based on the 5-celled von Neumann neighborhood.

The programs for A287954, there is no canonical definition to state claims against.
-/

/-! ## A287954.P6662544834920009818

`or(A004540(Δ[3^n]), A285645(n))`
-/

namespace A287954.P6662544834920009818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004540 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat) (A285645 n)

end

end A287954.P6662544834920009818

/-! ## A287954.P13220214959943673771

`A324881(A000142(n))+A287720(n)`
-/

namespace A287954.P13220214959943673771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324881 (A000142 n).toNat + A287720 n

end

end A287954.P13220214959943673771

/-! ## A287954.P13752035616319321001

`A333755(A293942(n))+A285645(n)`
-/

namespace A287954.P13752035616319321001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333755 (A293942 n).toNat + A285645 n

end

end A287954.P13752035616319321001

/-! ## A287954.P4481678848664183623

`A288441(n)-A292241(A324619(n))`
-/

namespace A287954.P4481678848664183623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288441 n - A292241 (A324619 n).toNat

end

end A287954.P4481678848664183623

/-!
# A287955: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 387", based on the 5-celled von Neumann neighborhood.

The programs for A287955, there is no canonical definition to state claims against.
-/

/-! ## A287955.P3972664575713257445

`A288442(and(n, A288484(3*(n+1))))`
-/

namespace A287955.P3972664575713257445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288442 (Int.land (n : ℤ) (A288484 (3 * (n + 1)))).toNat

end

end A287955.P3972664575713257445

/-! ## A287955.P12160000865875682884

`A288442(n)%A220967(A288429(n))`
-/

namespace A287955.P12160000865875682884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288442 n) (A220967 (A288429 n).toNat)

end

end A287955.P12160000865875682884

/-!
# A287956: Numbers k such that k!6 + 6 is prime, where k!6 is the sextuple factorial number (A085158 ).

The programs for A287956, there is no canonical definition to state claims against.
-/

/-! ## A287956.P2813207297760941367

`record[and(A023691(n+1), A119788(n+1))]`
-/

namespace A287956.P2813207297760941367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A023691 (n + 1)) (A119788 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287956.P2813207297760941367

/-!
# A287957: Table read by antidiagonals: T(n, k) = greatest common recursive divisor of n and k; n > 0 and k > 0.

The programs for A287957, the canonical program `A287957.P9450790223427472973` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287957 has offset 1).

The definition of A287957 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A287957.P12184979664141949590

`gcd(A003989(n+1), A273724(A070277(n+1)))`
-/

namespace A287957.P12184979664141949590
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003989 (n + 1)) (A273724 (A070277 (n + 1)).toNat)

end

end A287957.P12184979664141949590

namespace A287957

/-- `gcd(A003989(n+1), A273724(A070277(n+1)))` -/
def P12184979664141949590.Spec : Prop :=
  ∀ n, (P12184979664141949590.a n : ℤ) = A287957 (n + 1)

end A287957

/-! ## A287957.P9450790223427472973

`gcd(A000217(A132411(n)), A003989(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A287957

/-- `gcd(A000217(A132411(n)), A003989(n+1))` -/
def P9450790223427472973.Spec : Prop :=
  ∀ n, (P9450790223427472973.a n : ℤ) = A287957 (n + 1)

theorem P9450790223427472973.correct : P9450790223427472973.Spec := by
  intro n
  simp only [A287957, Nat.add_sub_cancel]

end A287957

/-! ## A287957.P15239865635600894350

`gcd(A003989(n+1)*A197870(∑[n]), n²+n)`
-/

namespace A287957.P15239865635600894350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003989 (n + 1) * A197870 (∑ j ∈ Finset.range (n + 1), f1 j)) (n ^ 2 + n : ℤ)

end

end A287957.P15239865635600894350

namespace A287957

/-- `gcd(A003989(n+1)*A197870(∑[n]), n²+n)` -/
def P15239865635600894350.Spec : Prop :=
  ∀ n, (P15239865635600894350.a n : ℤ) = A287957 (n + 1)

end A287957

/-! ## A287957.P5951877218099201409

`A019554(gcd(A111603(n+1)², A114327(n)))`
-/

namespace A287957.P5951877218099201409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (Int.gcd (A111603 (n + 1) ^ 2) (A114327 n))

end

end A287957.P5951877218099201409

namespace A287957

/-- `A019554(gcd(A111603(n+1)², A114327(n)))` -/
def P5951877218099201409.Spec : Prop :=
  ∀ n, P5951877218099201409.a n = A287957 (n + 1)

end A287957

/-! ## A287957.P13716501416587033240

`gcd(A004736(A286102(n+1)), A028310(n²+n))`
-/

namespace A287957.P13716501416587033240
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004736 (A286102 (n + 1)).toNat) (A028310 (n ^ 2 + n))

end

end A287957.P13716501416587033240

namespace A287957

/-- `gcd(A004736(A286102(n+1)), A028310(n²+n))` -/
def P13716501416587033240.Spec : Prop :=
  ∀ n, (P13716501416587033240.a n : ℤ) = A287957 (n + 1)

end A287957

/-! ## A287957.P14799635798977460838

`gcd(A002378(n), A003989(A216455(n+1)))`
-/

namespace A287957.P14799635798977460838
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002378 n) (A003989 (A216455 (n + 1)).toNat)

end

end A287957.P14799635798977460838

namespace A287957

/-- `gcd(A002378(n), A003989(A216455(n+1)))` -/
def P14799635798977460838.Spec : Prop :=
  ∀ n, (P14799635798977460838.a n : ℤ) = A287957 (n + 1)

end A287957

/-! ## A287957.P5229865746044611526

`A019554(gcd(2*n, A164561(n+2)))`
-/

namespace A287957.P5229865746044611526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (Int.gcd (2 * n : ℤ) (A164561 (n + 2)))

end

end A287957.P5229865746044611526

namespace A287957

/-- `A019554(gcd(2*n, A164561(n+2)))` -/
def P5229865746044611526.Spec : Prop :=
  ∀ n, P5229865746044611526.a n = A287957 (n + 1)

end A287957

/-! ## A287957.P16911148353884345837

`ceil(A003989(n+1)/A003989(A165661(n)))`
-/

namespace A287957.P16911148353884345837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A003989 (n + 1) : ℚ) / (A003989 (A165661 n).toNat : ℚ)⌉

end

end A287957.P16911148353884345837

namespace A287957

/-- `ceil(A003989(n+1)/A003989(A165661(n)))` -/
def P16911148353884345837.Spec : Prop :=
  ∀ n, P16911148353884345837.a n = A287957 (n + 1)

end A287957

/-!
# A287958: Table read by antidiagonals: T(n, k) = least recursive multiple of n and k; n > 0 and k > 0.

The programs for A287958, there is no canonical definition to state claims against.
-/

/-! ## A287958.P3264458439183782139

`lcm(A003990(n+1), A216455(A305720(n+1)))`
-/

namespace A287958.P3264458439183782139
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A003990 (n + 1)) (A216455 (A305720 (n + 1)).toNat)

end

end A287958.P3264458439183782139

/-! ## A287958.P17049980323252708951

`A003990(n+1)^A050361(A239929(n+1))`
-/

namespace A287958.P17049980323252708951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003990 (n + 1) : ℚ) ^ (A050361 (A239929 (n + 1)).toNat : ℤ)

end

end A287958.P17049980323252708951

/-! ## A287958.P1872294243478598657

`(A003989(n+1)*A089913(n+1))^A050361(A239929(n+1))`
-/

namespace A287958.P1872294243478598657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003989 (n + 1) * A089913 (n + 1) : ℚ) ^ (A050361 (A239929 (n + 1)).toNat : ℤ)

end

end A287958.P1872294243478598657

/-! ## A287958.P6678654603822575627

`(A003991(n+1)/A003989(n+1))^A050361(A239929(n+1))`
-/

namespace A287958.P6678654603822575627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A003991 (n + 1) : ℚ) / (A003989 (n + 1) : ℚ)) ^ (A050361 (A239929 (n + 1)).toNat : ℤ)

end

end A287958.P6678654603822575627

/-! ## A287958.P10076492997916664816

`(A003506(n+1)/A050169(n+1))^A050361(A239929(n+1))`
-/

namespace A287958.P10076492997916664816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A003506 (n + 1) : ℚ) / (A050169 (n + 1) : ℚ)) ^ (A050361 (A239929 (n + 1)).toNat : ℤ)

end

end A287958.P10076492997916664816

/-! ## A287958.P13081072389496318967

`A003990(n+1)^A178252(A165661(n))`
-/

namespace A287958.P13081072389496318967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003990 (n + 1) : ℚ) ^ (A178252 (A165661 n).toNat : ℤ)

end

end A287958.P13081072389496318967

/-! ## A287958.P4780793682800762545

`A003990(n+1)^A043290(A061653(n+1))`
-/

namespace A287958.P4780793682800762545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003990 (n + 1) : ℚ) ^ (A043290 (A061653 (n + 1)).toNat : ℤ)

end

end A287958.P4780793682800762545

/-!
# A287960: Numbers that are the sum of two centered triangular numbers (A005448).

The programs for A287960, the canonical program `A287960.P10000643031088514054` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287960 has offset 1).

The definition of A287960 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A287960.P10000643031088514054

`3*A020756(n+1)+2`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A287960

/-- `3*A020756(n+1)+2` -/
def P10000643031088514054.Spec : Prop :=
  ∀ n, P10000643031088514054.a n = A287960 (n + 1)

theorem P10000643031088514054.correct : P10000643031088514054.Spec := by
  intro n
  simp only [A287960, Nat.add_sub_cancel]

end A287960

/-! ## A287960.P10842896808834675335

`3*eq[3, A176873(n)]+2`
-/

namespace A287960.P10842896808834675335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176873 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A287960.P10842896808834675335

namespace A287960

/-- `3*eq[3, A176873(n)]+2` -/
def P10842896808834675335.Spec : Prop :=
  ∀ n, (P10842896808834675335.a n : ℤ) = A287960 (n + 1)

end A287960

/-! ## A287960.P12238754189814999676

`3*lt[A061336(n), 3]+2`
-/

namespace A287960.P12238754189814999676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061336 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A287960.P12238754189814999676

namespace A287960

/-- `3*lt[A061336(n), 3]+2` -/
def P12238754189814999676.Spec : Prop :=
  ∀ n, (P12238754189814999676.a n : ℤ) = A287960 (n + 1)

end A287960

/-! ## A287960.P6622554772267705961

`A016789(A020756(n+1))`
-/

namespace A287960.P6622554772267705961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A020756 (n + 1)).toNat

end

end A287960.P6622554772267705961

namespace A287960

/-- `A016789(A020756(n+1))` -/
def P6622554772267705961.Spec : Prop :=
  ∀ n, P6622554772267705961.a n = A287960 (n + 1)

end A287960

/-! ## A287960.P8882501588502587188

`3*lt[0, A005883(n)]+2`
-/

namespace A287960.P8882501588502587188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005883 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A287960.P8882501588502587188

namespace A287960

/-- `3*lt[0, A005883(n)]+2` -/
def P8882501588502587188.Spec : Prop :=
  ∀ n, (P8882501588502587188.a n : ℤ) = A287960 (n + 1)

end A287960

/-! ## A287960.P12304831687176885644

`eq[2, A338482(n+1)]+1`
-/

namespace A287960.P12304831687176885644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338482 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287960.P12304831687176885644

namespace A287960

/-- `eq[2, A338482(n+1)]+1` -/
def P12304831687176885644.Spec : Prop :=
  ∀ n, (P12304831687176885644.a n : ℤ) = A287960 (n + 1)

end A287960

/-! ## A287960.P15689589328396026312

`A066530(A057653(n+1))`
-/

namespace A287960.P15689589328396026312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066530 (A057653 (n + 1)).toNat

end

end A287960.P15689589328396026312

namespace A287960

/-- `A066530(A057653(n+1))` -/
def P15689589328396026312.Spec : Prop :=
  ∀ n, P15689589328396026312.a n = A287960 (n + 1)

end A287960

/-! ## A287960.P5750979340782087520

`lt[1, A138741(2*n+1)]+2`
-/

namespace A287960.P5750979340782087520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138741 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A287960.P5750979340782087520

namespace A287960

/-- `lt[1, A138741(2*n+1)]+2` -/
def P5750979340782087520.Spec : Prop :=
  ∀ n, (P5750979340782087520.a n : ℤ) = A287960 (n + 1)

end A287960

/-! ## A287960.P16155373241872771417

`eq[2, A234533(2*(n+1))]+2`
-/

namespace A287960.P16155373241872771417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234533 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A287960.P16155373241872771417

namespace A287960

/-- `eq[2, A234533(2*(n+1))]+2` -/
def P16155373241872771417.Spec : Prop :=
  ∀ n, (P16155373241872771417.a n : ℤ) = A287960 (n + 1)

end A287960

/-! ## A287960.P6164231352984524818

`A108356(A097269(n+1))`
-/

namespace A287960.P6164231352984524818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108356 (A097269 (n + 1)).toNat

end

end A287960.P6164231352984524818

namespace A287960

/-- `A108356(A097269(n+1))` -/
def P6164231352984524818.Spec : Prop :=
  ∀ n, P6164231352984524818.a n = A287960 (n + 1)

end A287960

/-!
# A287961: Numbers that are the sum of two palindromic primes (A002385).

The programs for A287961, there is no canonical definition to state claims against.
-/

/-! ## A287961.P17046092520978564382

`∪[A164374(n+1), A377848(n+1)]`
-/

namespace A287961.P17046092520978564382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A287961.P17046092520978564382

/-!
# A287962: Positive numbers that are the sum of the squares of distinct Fibonacci numbers (with a single type of 1).

The programs for A287962, there is no canonical definition to state claims against.
-/

/-! ## A287962.P2403501891472571736

`∑[A208176(val(n+1, 2))]`
-/

namespace A287962.P2403501891472571736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208176 (SequenceMachineLib.valuation (n + 1) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287962.P2403501891472571736

/-! ## A287962.P5821428748999293258

`∑[A059929(val(n+1, 2))+1]`
-/

namespace A287962.P5821428748999293258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059929 (SequenceMachineLib.valuation (n + 1) 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287962.P5821428748999293258

/-! ## A287962.P11223211879688778759

`∑[A208176(Δ[A011371(n)])]`
-/

namespace A287962.P11223211879688778759
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208176 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287962.P11223211879688778759

/-! ## A287962.P597948194279900565

`∑[A208176(A007814(n+1))]`
-/

namespace A287962.P597948194279900565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208176 (A007814 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287962.P597948194279900565

/-! ## A287962.P6775923246624009484

`∑[A208176(log2(A006519(n+1)))]`
-/

namespace A287962.P6775923246624009484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208176 (SequenceMachineLib.roundAway (Real.logb 2 (A006519 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287962.P6775923246624009484

/-! ## A287962.P8041586014263596514

`∑[A208176(A001511(n+1)-1)]`
-/

namespace A287962.P8041586014263596514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208176 (A001511 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287962.P8041586014263596514

/-! ## A287962.P9756065987802141015

`∑{digits}[A048794(n+1), A042581(#)²]`
-/

namespace A287962.P9756065987802141015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A042581 x ^ 2).sum

end

end A287962.P9756065987802141015

/-! ## A287962.P9923236325999176301

`∑[A208176(A323048(A001511(n+1)))]`
-/

namespace A287962.P9923236325999176301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208176 (A323048 (A001511 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287962.P9923236325999176301

/-!
# A287963: Number of Dyck paths of semilength n such that each positive level up to the highest nonempty level has one or two peaks.

The programs for A287963, there is no canonical definition to state claims against.
-/

/-! ## A287963.P12663409606205193835

`A026819(A056273(n))-A343396(n+1)`
-/

namespace A287963.P12663409606205193835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A056273 n).toNat - A343396 (n + 1)

end

end A287963.P12663409606205193835

/-! ## A287963.P14474224846593492607

`A026819(A287255(n))-A343396(n+1)`
-/

namespace A287963.P14474224846593492607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A287255 n).toNat - A343396 (n + 1)

end

end A287963.P14474224846593492607

/-! ## A287963.P4807089739157729687

`A363388(n+1)+A324088(A259046(n+1))`
-/

namespace A287963.P4807089739157729687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363388 (n + 1) + A324088 (A259046 (n + 1)).toNat

end

end A287963.P4807089739157729687

/-!
# A287966: Number of Dyck paths of semilength n such that no level has more than two peaks.

The programs for A287966, there is no canonical definition to state claims against.
-/

/-! ## A287966.P17317434986761121103

`A287847(∑[n+3])`
-/

namespace A287966.P17317434986761121103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287847 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A287966.P17317434986761121103

/-! ## A287966.P16213956778038616847

`gcd(A169585(n), A287847(A055998(n+1)))`
-/

namespace A287966.P16213956778038616847
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A169585 n) (A287847 (A055998 (n + 1)).toNat)

end

end A287966.P16213956778038616847

/-! ## A287966.P3826974656930765394

`or(A000007(n), A287847(A055998(n+1)))`
-/

namespace A287966.P3826974656930765394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A287847 (A055998 (n + 1)).toNat)

end

end A287966.P3826974656930765394

/-! ## A287966.P17734173517451207751

`A287847(A055998(n+1))%A017942(n+1)`
-/

namespace A287966.P17734173517451207751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287847 (A055998 (n + 1)).toNat) (A017942 (n + 1))

end

end A287966.P17734173517451207751

/-! ## A287966.P16491708717965492710

`A001221(A136019(n+1))*A287847(A055998(n+1))`
-/

namespace A287966.P16491708717965492710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A136019 (n + 1)).toNat * A287847 (A055998 (n + 1)).toNat

end

end A287966.P16491708717965492710

/-! ## A287966.P5345514813824573144

`A001221(A205687(n+1))*A287847(A055998(n+1))`
-/

namespace A287966.P5345514813824573144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A205687 (n + 1)).toNat * A287847 (A055998 (n + 1)).toNat

end

end A287966.P5345514813824573144

/-! ## A287966.P15473061675249591238

`A287822(A133263(n))+A281874(n)`
-/

namespace A287966.P15473061675249591238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287822 (A133263 n).toNat + A281874 n

end

end A287966.P15473061675249591238

/-!
# A287967: Number of Dyck paths of semilength n such that no level has more than three peaks.

The programs for A287967, there is no canonical definition to state claims against.
-/

/-! ## A287967.P7487512892590783924

`A287847(∑[n+4]+2)`
-/

namespace A287967.P7487512892590783924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287847 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A287967.P7487512892590783924

/-! ## A287967.P12920773224947108790

`A287847(A046691(n+2))%A221051(n)`
-/

namespace A287967.P12920773224947108790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287847 (A046691 (n + 2)).toNat) (A221051 n)

end

end A287967.P12920773224947108790

/-! ## A287967.P13785143783224135082

`A287847(A046691(n+2))^A020985(n)²`
-/

namespace A287967.P13785143783224135082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287847 (A046691 (n + 2)).toNat : ℚ) ^ (A020985 n ^ 2 : ℤ)

end

end A287967.P13785143783224135082

/-! ## A287967.P9091460409215210039

`A287847(A046691(n+2))+C(n, A001539(n))`
-/

namespace A287967.P9091460409215210039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287847 (A046691 (n + 2)).toNat + (Nat.choose n (A001539 n).toNat : ℤ)

end

end A287967.P9091460409215210039

/-! ## A287967.P7682160519429185464

`A287847(A046691(n+2))+1-A020985(A060640(n+1))²`
-/

namespace A287967.P7682160519429185464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287847 (A046691 (n + 2)).toNat + 1 - A020985 (A060640 (n + 1)).toNat ^ 2

end

end A287967.P7682160519429185464

/-!
# A287968: Number of Dyck paths of semilength n such that no level has more than four peaks.

The programs for A287968, there is no canonical definition to state claims against.
-/

/-! ## A287968.P9015180521380043238

`A287847(A052905(n+2))`
-/

namespace A287968.P9015180521380043238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287847 (A052905 (n + 2)).toNat

end

end A287968.P9015180521380043238

/-! ## A287968.P11161576646086188393

`A287847(A055999(n+2)+1)`
-/

namespace A287968.P11161576646086188393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287847 (A055999 (n + 2) + 1).toNat

end

end A287968.P11161576646086188393

/-! ## A287968.P12899067422781860053

`A287847(A046691(n+3)-1)`
-/

namespace A287968.P12899067422781860053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287847 (A046691 (n + 3) - 1).toNat

end

end A287968.P12899067422781860053

/-! ## A287968.P12382588047982509977

`A287847(A055998(n+3)-2)`
-/

namespace A287968.P12382588047982509977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287847 (A055998 (n + 3) - 2).toNat

end

end A287968.P12382588047982509977

/-! ## A287968.P9726082094340291561

`A287847(A000217(n+5)-5)`
-/

namespace A287968.P9726082094340291561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287847 (A000217 (n + 5) - 5).toNat

end

end A287968.P9726082094340291561

/-! ## A287968.P9411370224883496064

`A287847(Δ[A023545(n+1)]-1)`
-/

namespace A287968.P9411370224883496064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287847 (f1 (n + 1) - f1 n - 1).toNat

end

end A287968.P9411370224883496064

/-! ## A287968.P2126217161782829871

`A287847(eq[4, A025581(n)])`
-/

namespace A287968.P2126217161782829871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287847 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A287968.P2126217161782829871

/-!
# A287969: Number of Dyck paths of semilength n such that no level has more than five peaks.

The programs for A287969, there is no canonical definition to state claims against.
-/

/-! ## A287969.P12746948788826209673

`A287847(A055999(n+3))`
-/

namespace A287969.P12746948788826209673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287847 (A055999 (n + 3)).toNat

end

end A287969.P12746948788826209673

/-! ## A287969.P13032921831841154928

`A287847(Δ[A023551(n+1)])`
-/

namespace A287969.P13032921831841154928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287847 (f1 (n + 1) - f1 n).toNat

end

end A287969.P13032921831841154928

/-! ## A287969.P16444190439802603196

`A287847(Δ[A026054(n+3)])`
-/

namespace A287969.P16444190439802603196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287847 (f1 (n + 1) - f1 n).toNat

end

end A287969.P16444190439802603196

/-! ## A287969.P9004055938119452068

`A287847(A000217(n+6)-6)`
-/

namespace A287969.P9004055938119452068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287847 (A000217 (n + 6) - 6).toNat

end

end A287969.P9004055938119452068

/-! ## A287969.P17816267569227420244

`A287847(Δ[A023545(n+2)]-2)`
-/

namespace A287969.P17816267569227420244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287847 (f1 (n + 1) - f1 n - 2).toNat

end

end A287969.P17816267569227420244

/-! ## A287969.P1334461273364816398

`A287847(A007401(Δ[A023545(n+1)]))`
-/

namespace A287969.P1334461273364816398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287847 (A007401 (f1 (n + 1) - f1 n).toNat).toNat

end

end A287969.P1334461273364816398

/-!
# A287970: Number of Dyck paths of semilength n such that no level has more than six peaks.

The programs for A287970, there is no canonical definition to state claims against.
-/

/-! ## A287970.P17728696093458638937

`A287847(A055999(n+4)-1)`
-/

namespace A287970.P17728696093458638937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287847 (A055999 (n + 4) - 1).toNat

end

end A287970.P17728696093458638937

/-! ## A287970.P6449325758374447766

`A287847(A134227(n+5)-1)`
-/

namespace A287970.P6449325758374447766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287847 (A134227 (n + 5) - 1).toNat

end

end A287970.P6449325758374447766

/-! ## A287970.P11232275961071745535

`A287847(A046691(n+5)-3)`
-/

namespace A287970.P11232275961071745535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287847 (A046691 (n + 5) - 3).toNat

end

end A287970.P11232275961071745535

/-! ## A287970.P9956495754760075567

`A287847(A055998(n+5)-4)`
-/

namespace A287970.P9956495754760075567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287847 (A055998 (n + 5) - 4).toNat

end

end A287970.P9956495754760075567

/-! ## A287970.P6474645215108997429

`A287847(A000217(n+7)-7)`
-/

namespace A287970.P6474645215108997429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287847 (A000217 (n + 7) - 7).toNat

end

end A287970.P6474645215108997429

/-! ## A287970.P13676716208025820947

`A287847(Δ[A023551(n+2)]-1)`
-/

namespace A287970.P13676716208025820947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287847 (f1 (n + 1) - f1 n - 1).toNat

end

end A287970.P13676716208025820947

/-! ## A287970.P11298251868862027165

`A287847(Δ[A026054(n+4)]-1)`
-/

namespace A287970.P11298251868862027165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287847 (f1 (n + 1) - f1 n - 1).toNat

end

end A287970.P11298251868862027165

/-! ## A287970.P17886325169177283947

`A287847(A016777(n+3)+A000124(n+4))`
-/

namespace A287970.P17886325169177283947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287847 (A016777 (n + 3) + A000124 (n + 4)).toNat

end

end A287970.P17886325169177283947

/-!
# A287971: Number of Dyck paths of semilength n such that no level has more than seven peaks.

The programs for A287971, there is no canonical definition to state claims against.
-/

/-! ## A287971.P4859693012088514616

`A287847(A055999(n+5)-2)`
-/

namespace A287971.P4859693012088514616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287847 (A055999 (n + 5) - 2).toNat

end

end A287971.P4859693012088514616

/-! ## A287971.P10959095069899464021

`A287847(A000217(n+8)-8)`
-/

namespace A287971.P10959095069899464021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287847 (A000217 (n + 8) - 8).toNat

end

end A287971.P10959095069899464021

/-! ## A287971.P16695904073517730281

`A287847(A000124(n+8)-9)`
-/

namespace A287971.P16695904073517730281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287847 (A000124 (n + 8) - 9).toNat

end

end A287971.P16695904073517730281

/-! ## A287971.P16641599361944443867

`A287847(eq[7, A025581(n)])`
-/

namespace A287971.P16641599361944443867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287847 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A287971.P16641599361944443867

/-! ## A287971.P14573803155445546540

`A287847(eq[8, A004736(n+1)])`
-/

namespace A287971.P14573803155445546540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287847 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A287971.P14573803155445546540

/-!
# A287972: Number of Dyck paths of semilength n such that no level has more than eight peaks.

The programs for A287972, there is no canonical definition to state claims against.
-/

/-! ## A287972.P18220589992928870378

`A287847(A055999(n+6)-3)`
-/

namespace A287972.P18220589992928870378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287847 (A055999 (n + 6) - 3).toNat

end

end A287972.P18220589992928870378

/-! ## A287972.P3566237433696337687

`A287847(A055998(n+7)-6)`
-/

namespace A287972.P3566237433696337687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287847 (A055998 (n + 7) - 6).toNat

end

end A287972.P3566237433696337687

/-! ## A287972.P536824813146266477

`A287847(A034856(n+8)-7)`
-/

namespace A287972.P536824813146266477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287847 (A034856 (n + 8) - 7).toNat

end

end A287972.P536824813146266477

/-! ## A287972.P1813157895184134243

`A287847(A000217(n+9)-9)`
-/

namespace A287972.P1813157895184134243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287847 (A000217 (n + 9) - 9).toNat

end

end A287972.P1813157895184134243

/-! ## A287972.P715085061415704316

`A287847(A161680(n+10)-9)`
-/

namespace A287972.P715085061415704316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287847 (A161680 (n + 10) - 9).toNat

end

end A287972.P715085061415704316

/-!
# A287973: Number of Dyck paths of semilength n such that no level has more than nine peaks.

The programs for A287973, there is no canonical definition to state claims against.
-/

/-! ## A287973.P11612587917715130458

`A287847(A055999(n+7)-4)`
-/

namespace A287973.P11612587917715130458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287847 (A055999 (n + 7) - 4).toNat

end

end A287973.P11612587917715130458

/-! ## A287973.P6494209086552755089

`A287847(A027379(n+8)-7)`
-/

namespace A287973.P6494209086552755089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287847 (A027379 (n + 8) - 7).toNat

end

end A287973.P6494209086552755089

/-! ## A287973.P9181728673083564553

`A287847(A055998(n+8)-7)`
-/

namespace A287973.P9181728673083564553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287847 (A055998 (n + 8) - 7).toNat

end

end A287973.P9181728673083564553

/-! ## A287973.P4817135446701948213

`A287847(A000217(n+10)-10)`
-/

namespace A287973.P4817135446701948213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287847 (A000217 (n + 10) - 10).toNat

end

end A287973.P4817135446701948213

/-! ## A287973.P2579534316492812394

`A287847(A161680(n+11)-10)`
-/

namespace A287973.P2579534316492812394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287847 (A161680 (n + 11) - 10).toNat

end

end A287973.P2579534316492812394

/-! ## A287973.P6331886544780435018

`A287847(A016777(n+5)+A000124(n+7))`
-/

namespace A287973.P6331886544780435018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287847 (A016777 (n + 5) + A000124 (n + 7)).toNat

end

end A287973.P6331886544780435018

/-!
# A287974: Number of Dyck paths of semilength n such that no level has more than ten peaks.

The programs for A287974, there is no canonical definition to state claims against.
-/

/-! ## A287974.P5936097733892819371

`A287847(A000217(n+11)-11)`
-/

namespace A287974.P5936097733892819371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287847 (A000217 (n + 11) - 11).toNat

end

end A287974.P5936097733892819371

/-! ## A287974.P6128398824762851512

`A287847(A027379(n+8)+n+3)`
-/

namespace A287974.P6128398824762851512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287847 (A027379 (n + 8) + (n + 3 : ℤ)).toNat

end

end A287974.P6128398824762851512

/-! ## A287974.P6908567357959855102

`A287847(A052905(n+6)+A005408(n+7))`
-/

namespace A287974.P6908567357959855102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287847 (A052905 (n + 6) + A005408 (n + 7)).toNat

end

end A287974.P6908567357959855102

/-! ## A287974.P8602649119303927682

`A287847(A055999(n+7)-A001489(n+6))`
-/

namespace A287974.P8602649119303927682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287847 (A055999 (n + 7) - A001489 (n + 6)).toNat

end

end A287974.P8602649119303927682

/-! ## A287974.P14482898080498477946

`A287847(eq[10, A025581(n)])`
-/

namespace A287974.P14482898080498477946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287847 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A287974.P14482898080498477946

/-!
# A287975: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 389", based on the 5-celled von Neumann neighborhood.

The programs for A287975, there is no canonical definition to state claims against.
-/

/-! ## A287975.P2352258021262765998

`A007088(A287977(n))`
-/

namespace A287975.P2352258021262765998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287977 n).toNat

end

end A287975.P2352258021262765998

/-! ## A287975.P15908634525362532082

`A185544(2*A287977(n))`
-/

namespace A287975.P15908634525362532082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A287977 n).toNat

end

end A287975.P15908634525362532082

/-! ## A287975.P13649372901509733236

`A288064(A287384(n)+A124625(n))`
-/

namespace A287975.P13649372901509733236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288064 (A287384 n + A124625 n).toNat

end

end A287975.P13649372901509733236

/-! ## A287975.P14599078159378764647

`A288064(n-A007814(A285475(n)))`
-/

namespace A287975.P14599078159378764647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288064 ((n : ℤ) - A007814 (A285475 n).toNat).toNat

end

end A287975.P14599078159378764647

/-! ## A287975.P15972647477175282779

`A288064(n*A056594(A280975(n)))`
-/

namespace A287975.P15972647477175282779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288064 ((n : ℤ) * A056594 (A280975 n).toNat).toNat

end

end A287975.P15972647477175282779

/-!
# A287976: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 389", based on the 5-celled von Neumann neighborhood.

The programs for A287976, there is no canonical definition to state claims against.
-/

/-! ## A287976.P13712727013551422043

`A007088(A287978(n))`
-/

namespace A287976.P13712727013551422043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287978 n).toNat

end

end A287976.P13712727013551422043

/-! ## A287976.P6378183315233584985

`A185544(2*A287978(n))`
-/

namespace A287976.P6378183315233584985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A287978 n).toNat

end

end A287976.P6378183315233584985

/-! ## A287976.P1019764513297125261

`A288366(A062943(n+1))`
-/

namespace A287976.P1019764513297125261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288366 (A062943 (n + 1)).toNat

end

end A287976.P1019764513297125261

/-!
# A287977: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 389", based on the 5-celled von Neumann neighborhood.

The programs for A287977, there is no canonical definition to state claims against.
-/

/-! ## A287977.P12018881461563476945

`A327529(A288066(n))`
-/

namespace A287977.P12018881461563476945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327529 (A288066 n).toNat

end

end A287977.P12018881461563476945

/-! ## A287977.P1869068031894298022

`A124625(A288066(n)+1)`
-/

namespace A287977.P1869068031894298022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124625 (A288066 n + 1).toNat

end

end A287977.P1869068031894298022

/-! ## A287977.P13663935825232824719

`A124625(xor(1, A288066(n)))`
-/

namespace A287977.P13663935825232824719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124625 (Int.xor 1 (A288066 n)).toNat

end

end A287977.P13663935825232824719

/-! ## A287977.P6322169146207725447

`A028310(n%2*A288066(n))`
-/

namespace A287977.P6322169146207725447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (((n % 2 : ℕ) : ℤ) * A288066 n).toNat

end

end A287977.P6322169146207725447

/-! ## A287977.P8020964742365614858

`A028310(A000035(n)*A288066(n))`
-/

namespace A287977.P8020964742365614858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A000035 n * A288066 n).toNat

end

end A287977.P8020964742365614858

/-!
# A287978: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 389", based on the 5-celled von Neumann neighborhood.

The programs for A287978, there is no canonical definition to state claims against.
-/

/-! ## A287978.P5198797366763041911

`and(A028310(A285475(n)), A288067(n))`
-/

namespace A287978.P5198797366763041911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028310 (A285475 n).toNat) (A288067 n)

end

end A287978.P5198797366763041911

/-! ## A287978.P12077377535625146637

`A288368(n)-A061858(A181545(n))`
-/

namespace A287978.P12077377535625146637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288368 n - A061858 (A181545 n).toNat

end

end A287978.P12077377535625146637

/-! ## A287978.P6515341839139695228

`and(A000265(A003665(n)), A288059(n))`
-/

namespace A287978.P6515341839139695228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000265 (A003665 n).toNat) (A288059 n)

end

end A287978.P6515341839139695228

/-! ## A287978.P10416326959617533082

`and(A000265(A003665(n)), A288067(n))`
-/

namespace A287978.P10416326959617533082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000265 (A003665 n).toNat) (A288067 n)

end

end A287978.P10416326959617533082

/-! ## A287978.P11647252019780515073

`and(A285475(A004892(n+1)), A288059(n))`
-/

namespace A287978.P11647252019780515073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A285475 (A004892 (n + 1)).toNat) (A288059 n)

end

end A287978.P11647252019780515073

/-!
# A287979: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 390", based on the 5-celled von Neumann neighborhood.

The programs for A287979, there is no canonical definition to state claims against.
-/

/-! ## A287979.P8602122213285292389

`A007088(A287981(n))`
-/

namespace A287979.P8602122213285292389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287981 n).toNat

end

end A287979.P8602122213285292389

/-! ## A287979.P14253762326684740393

`A185544(2*A287981(n))`
-/

namespace A287979.P14253762326684740393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A287981 n).toNat

end

end A287979.P14253762326684740393

/-! ## A287979.P15588647685038999395

`A185544(A287981(n)+A287981(n))`
-/

namespace A287979.P15588647685038999395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A287981 n + A287981 n).toNat

end

end A287979.P15588647685038999395

/-! ## A287979.P3712578889264175361

`A007088(A095121(n)+1-A290064(n))`
-/

namespace A287979.P3712578889264175361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A095121 n + (1 - A290064 n)).toNat

end

end A287979.P3712578889264175361

/-! ## A287979.P13727874503281268363

`A007088(1-(A290064(n)-A095121(n)))`
-/

namespace A287979.P13727874503281268363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (1 - (A290064 n - A095121 n)).toNat

end

end A287979.P13727874503281268363

/-!
# A287980: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 390", based on the 5-celled von Neumann neighborhood.

The programs for A287980, there is no canonical definition to state claims against.
-/

/-! ## A287980.P8540647892772861754

`A007088(A287982(n))`
-/

namespace A287980.P8540647892772861754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287982 n).toNat

end

end A287980.P8540647892772861754

/-! ## A287980.P7259433621170910367

`A007088(and(-A290065(n), A095121(n)))`
-/

namespace A287980.P7259433621170910367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (-A290065 n) (A095121 n)).toNat

end

end A287980.P7259433621170910367

/-! ## A287980.P5829627909720943712

`A007088(A095121(n)+1-A290065(n))`
-/

namespace A287980.P5829627909720943712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A095121 n + (1 - A290065 n)).toNat

end

end A287980.P5829627909720943712

/-! ## A287980.P15597633787636746375

`A007088(1-(A290065(n)-A095121(n)))`
-/

namespace A287980.P15597633787636746375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (1 - (A290065 n - A095121 n)).toNat

end

end A287980.P15597633787636746375

/-! ## A287980.P6203067248976937514

`A007088(xor(record[A324821(n+1)], A290065(n)))`
-/

namespace A287980.P6203067248976937514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.xor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A290065 n)).toNat

end

end A287980.P6203067248976937514

/-!
# A287981: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 390", based on the 5-celled von Neumann neighborhood.

The programs for A287981, there is no canonical definition to state claims against.
-/

/-! ## A287981.P17674253647865292928

`A095121(n)+1-A290064(n)`
-/

namespace A287981.P17674253647865292928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 n + (1 - A290064 n)

end

end A287981.P17674253647865292928

/-! ## A287981.P1476507218979960478

`A126646(n)%A290064(A028310(n))`
-/

namespace A287981.P1476507218979960478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126646 n) (A290064 (A028310 n).toNat)

end

end A287981.P1476507218979960478

/-! ## A287981.P16031889487141617761

`∑[A000079(n)]%A290064(A028310(n))`
-/

namespace A287981.P16031889487141617761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A290064 (A028310 n).toNat)

end

end A287981.P16031889487141617761

/-! ## A287981.P4157359673410659697

`A287982(n)+A290065(n)-A290064(n)`
-/

namespace A287981.P4157359673410659697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287982 n + (A290065 n - A290064 n)

end

end A287981.P4157359673410659697

/-! ## A287981.P16719283684642281614

`abs(A324821(A008578(n+1))-A290064(n))`
-/

namespace A287981.P16719283684642281614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A324821 (A008578 (n + 1)).toNat - A290064 n|

end

end A287981.P16719283684642281614

/-! ## A287981.P11489999502189731578

`and(A198851(n)-A290064(n), A290065(n))`
-/

namespace A287981.P11489999502189731578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A198851 n - A290064 n) (A290065 n)

end

end A287981.P11489999502189731578

/-! ## A287981.P4245243192138420756

`and(A198856(n)-A290064(n), A290065(n))`
-/

namespace A287981.P4245243192138420756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A198856 n - A290064 n) (A290065 n)

end

end A287981.P4245243192138420756

/-!
# A287982: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 390", based on the 5-celled von Neumann neighborhood.

The programs for A287982, there is no canonical definition to state claims against.
-/

/-! ## A287982.P5447660205259737644

`and(-A290065(n), A095121(n))`
-/

namespace A287982.P5447660205259737644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A290065 n) (A095121 n)

end

end A287982.P5447660205259737644

/-! ## A287982.P1415772204321858791

`xor(record[A324821(n+1)], A290065(n))`
-/

namespace A287982.P1415772204321858791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A290065 n)

end

end A287982.P1415772204321858791

/-! ## A287982.P6364754992594488767

`xor(A290065(n), A324821(A008578(n+1)))`
-/

namespace A287982.P6364754992594488767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A290065 n) (A324821 (A008578 (n + 1)).toNat)

end

end A287982.P6364754992594488767

/-! ## A287982.P10036686142762063138

`A287981(n)+A290064(n)-A290065(n)`
-/

namespace A287982.P10036686142762063138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287981 n + (A290064 n - A290065 n)

end

end A287982.P10036686142762063138

/-! ## A287982.P8901149179103772651

`and(A198851(n)-A290065(n), A290064(n))`
-/

namespace A287982.P8901149179103772651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A198851 n - A290065 n) (A290064 n)

end

end A287982.P8901149179103772651

/-! ## A287982.P14323755208356423343

`and(A198856(n)-A290065(n), A290064(n))`
-/

namespace A287982.P14323755208356423343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A198856 n - A290065 n) (A290064 n)

end

end A287982.P14323755208356423343

/-!
# A287983: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 395", based on the 5-celled von Neumann neighborhood.

The programs for A287983, there is no canonical definition to state claims against.
-/

/-! ## A287983.P16405021263504286933

`A007088(A287985(n))`
-/

namespace A287983.P16405021263504286933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287985 n).toNat

end

end A287983.P16405021263504286933

/-! ## A287983.P8370050581398591419

`A185544(2*A287985(n))`
-/

namespace A287983.P8370050581398591419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A287985 n).toNat

end

end A287983.P8370050581398591419

/-!
# A287984: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 395", based on the 5-celled von Neumann neighborhood.

The programs for A287984, there is no canonical definition to state claims against.
-/

/-! ## A287984.P7255449823428493075

`A007088(A287986(n))`
-/

namespace A287984.P7255449823428493075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287986 n).toNat

end

end A287984.P7255449823428493075

/-! ## A287984.P7277851053295086270

`A185544(2*A287986(n))`
-/

namespace A287984.P7277851053295086270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A287986 n).toNat

end

end A287984.P7277851053295086270

/-!
# A287992: Number of (undirected) paths in the prism graph Y_n.

The programs for A287992, the canonical program `A287992.P10436064229786702791` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287992 has offset 1).

The definition of A287992 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A287992.P10436064229786702791

`(5*2^(n+2)-5*(n+1)-(n+1)²-13)*(n+1)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A287992

/-- `(5*2^(n+2)-5*(n+1)-(n+1)²-13)*(n+1)` -/
def P10436064229786702791.Spec : Prop :=
  ∀ n, P10436064229786702791.a n = A287992 (n + 1)

theorem P10436064229786702791.correct : P10436064229786702791.Spec := by
  intro n
  simp only [A287992, Nat.add_sub_cancel]

end A287992

/-! ## A287992.P8500971311088696857

`∑[Δ[A020874(n)]-2]`
-/

namespace A287992.P8500971311088696857
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020874 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287992.P8500971311088696857

namespace A287992

/-- `∑[Δ[A020874(n)]-2]` -/
def P8500971311088696857.Spec : Prop :=
  ∀ n, P8500971311088696857.a n = A287992 (n + 1)

end A287992

/-! ## A287992.P2850601933624173932

`A020874(n+1)-2*(n+1)`
-/

namespace A287992.P2850601933624173932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020874 (n + 1) - (2 * (n + 1) : ℤ)

end

end A287992.P2850601933624173932

namespace A287992

/-- `A020874(n+1)-2*(n+1)` -/
def P2850601933624173932.Spec : Prop :=
  ∀ n, P2850601933624173932.a n = A287992 (n + 1)

end A287992

/-! ## A287992.P980913225020346130

`∑[A020874(n+1)-(A020874(n)+2)]`
-/

namespace A287992.P980913225020346130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020874 (n + 1) - (A020874 n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287992.P980913225020346130

namespace A287992

/-- `∑[A020874(n+1)-(A020874(n)+2)]` -/
def P980913225020346130.Spec : Prop :=
  ∀ n, P980913225020346130.a n = A287992 (n + 1)

end A287992

/-!
# A287996: Position of second occurrence of first n terms in A287108.

The programs for A287996, there is no canonical definition to state claims against.
-/

/-! ## A287996.P16871891524506395777

`A018007(A227177(2*(n+1)))%A177201(3*n+5)`
-/

namespace A287996.P16871891524506395777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018007 (A227177 (2 * (n + 1))).toNat) (A177201 (3 * n + 5))

end

end A287996.P16871891524506395777

/-!
# A287997: Expansion of 1/((1-x)(1-x^3)(1-x^5) ... (1-x^13)).

The programs for A287997, there is no canonical definition to state claims against.
-/

/-! ## A287997.P9405510433815828780

`A259094(A055999(n+4))`
-/

namespace A287997.P9405510433815828780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259094 (A055999 (n + 4)).toNat

end

end A287997.P9405510433815828780

/-! ## A287997.P12153436555483255688

`A259094(A056121(n)+22)`
-/

namespace A287997.P12153436555483255688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259094 (A056121 n + 22).toNat

end

end A287997.P12153436555483255688

/-! ## A287997.P8154337840539218839

`A259094(Δ[A023551(n+2)])`
-/

namespace A287997.P8154337840539218839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259094 (f1 (n + 1) - f1 n).toNat

end

end A287997.P8154337840539218839

/-! ## A287997.P4464034259205413977

`A259094(Δ[A026054(n+4)])`
-/

namespace A287997.P4464034259205413977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259094 (f1 (n + 1) - f1 n).toNat

end

end A287997.P4464034259205413977

/-! ## A287997.P4153621497641218461

`A259094(A052905(n+4)-1)`
-/

namespace A287997.P4153621497641218461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259094 (A052905 (n + 4) - 1).toNat

end

end A287997.P4153621497641218461

/-! ## A287997.P4115162287185056775

`A259094(A000096(n+6)-5)`
-/

namespace A287997.P4115162287185056775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259094 (A000096 (n + 6) - 5).toNat

end

end A287997.P4115162287185056775

/-! ## A287997.P8193871713014480650

`A259094(A000217(n+7)-6)`
-/

namespace A287997.P8193871713014480650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259094 (A000217 (n + 7) - 6).toNat

end

end A287997.P8193871713014480650

/-! ## A287997.P6603071134221058213

`A259094(A000124(n+7)-7)`
-/

namespace A287997.P6603071134221058213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259094 (A000124 (n + 7) - 7).toNat

end

end A287997.P6603071134221058213

/-! ## A287997.P511322232876046512

`A259094(A152947(n+9)-7)`
-/

namespace A287997.P511322232876046512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259094 (A152947 (n + 9) - 7).toNat

end

end A287997.P511322232876046512

/-!
# A287998: Expansion of 1/((1-x)(1-x^3)(1-x^5) ... (1-x^15)).

The programs for A287998, there is no canonical definition to state claims against.
-/

/-! ## A287998.P18206685664002006024

`A259094(A155212(n+4)+1)`
-/

namespace A287998.P18206685664002006024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259094 (A155212 (n + 4) + 1).toNat

end

end A287998.P18206685664002006024

/-! ## A287998.P12177680873365983421

`A259094(A055999(n+5)-1)`
-/

namespace A287998.P12177680873365983421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259094 (A055999 (n + 5) - 1).toNat

end

end A287998.P12177680873365983421

/-! ## A287998.P14782363170047920581

`A259094(A034856(n+7)-5)`
-/

namespace A287998.P14782363170047920581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259094 (A034856 (n + 7) - 5).toNat

end

end A287998.P14782363170047920581

/-! ## A287998.P5836544801325559890

`A259094(A000096(n+7)-6)`
-/

namespace A287998.P5836544801325559890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259094 (A000096 (n + 7) - 6).toNat

end

end A287998.P5836544801325559890

/-! ## A287998.P9363911279448882320

`A259094(A000217(n+8)-7)`
-/

namespace A287998.P9363911279448882320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259094 (A000217 (n + 8) - 7).toNat

end

end A287998.P9363911279448882320

/-! ## A287998.P3393588659216999036

`A259094(A000124(n+8)-8)`
-/

namespace A287998.P3393588659216999036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259094 (A000124 (n + 8) - 8).toNat

end

end A287998.P3393588659216999036

/-! ## A287998.P3037004569787151342

`A259094(A152947(n+10)-8)`
-/

namespace A287998.P3037004569787151342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259094 (A152947 (n + 10) - 8).toNat

end

end A287998.P3037004569787151342

/-! ## A287998.P16055728333555304082

`A259094(A130824(n+6)+A055998(n+2))`
-/

namespace A287998.P16055728333555304082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259094 (A130824 (n + 6) + A055998 (n + 2)).toNat

end

end A287998.P16055728333555304082

/-! ## A287998.P6309880791668109407

`A259094(A016789(n+4)+A000217(n+5))`
-/

namespace A287998.P6309880791668109407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259094 (A016789 (n + 4) + A000217 (n + 5)).toNat

end

end A287998.P6309880791668109407

