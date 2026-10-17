import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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
import Seq.Opaque.C026

/-!
# A125500: Expansion of -LambertW(-x^2*exp(x))/x^2.

The programs for A125500, there is no canonical definition to state claims against.
-/

/-! ## A125500.P7153111748182470273

`A362377(∑[n+3])`
-/

namespace A125500.P7153111748182470273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362377 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A125500.P7153111748182470273

/-! ## A125500.P9341238760611244617

`A161631(n+1)/(n+1)`
-/

namespace A125500.P9341238760611244617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161631 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A125500.P9341238760611244617

/-!
# A125501: The (1,1)-entry in the matrix M^n, where M is the 7 X 7 Cartan matrix [2,-1,0,0,0,0,0; -1,2,-1,0,0,0,0; 0,-1,2,-1,0,0,-1; 0,0,-1,2,-1,0,0; 0,0,0,-1,2,-1,0; 0,0,0,0,-1,2,0; 0,0,-1,0,0,0,2].

The programs for A125501, there is no canonical definition to state claims against.
-/

/-! ## A125501.P17972893567890673930

`A126569(n)-A025469(A107467(n))`
-/

namespace A125501.P17972893567890673930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126569 n - A025469 (A107467 n).toNat

end

end A125501.P17972893567890673930

/-! ## A125501.P7223763523982714176

`A126569(n)-A185284(A008578(n+1))`
-/

namespace A125501.P7223763523982714176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126569 n - A185284 (A008578 (n + 1)).toNat

end

end A125501.P7223763523982714176

/-! ## A125501.P4472953676495604776

`A126569(n)-A044941(A242438(n+1))`
-/

namespace A125501.P4472953676495604776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126569 n - A044941 (A242438 (n + 1)).toNat

end

end A125501.P4472953676495604776

/-! ## A125501.P8582513621698992944

`A126569(n)-A165766(A124151(n+1))`
-/

namespace A125501.P8582513621698992944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126569 n - A165766 (A124151 (n + 1)).toNat

end

end A125501.P8582513621698992944

/-! ## A125501.P13463958341491511648

`A126569(n)-A185284(A205850(n+1))`
-/

namespace A125501.P13463958341491511648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126569 n - A185284 (A205850 (n + 1)).toNat

end

end A125501.P13463958341491511648

/-!
# A125505: Number of arithmetic progressions of primes (p,q,r) of length 3 with r <= prime(n).

The programs for A125505, there is no canonical definition to state claims against.
-/

/-! ## A125505.P782362496555614679

`∑[A268686(abs(1-n)+2)]`
-/

namespace A125505.P782362496555614679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268686 (|1 - (n : ℤ)| + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125505.P782362496555614679

/-! ## A125505.P12013206187717726995

`A268686(n+1)+a(n-1)` with `a(0)=0`
-/

namespace A125505.P12013206187717726995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A268686 (n + 1) + a (n - 1)

end

end A125505.P12013206187717726995

/-! ## A125505.P5231039795576219183

`∑[A268686(n+2)]-A268686(n+2)`
-/

namespace A125505.P5231039795576219183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268686 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A268686 (n + 2)

end

end A125505.P5231039795576219183

/-! ## A125505.P7067000789746309325

`∑[A268686(n+1)+a(A327928(n))]` with `a(0)=0`
-/

namespace A125505.P7067000789746309325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A268686 (n + 1) + f1 (A327928 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125505.P7067000789746309325

/-! ## A125505.P15865971743347633455

`∑[A268686(n+1)+a(A366851(n+3))]` with `a(0)=0`
-/

namespace A125505.P15865971743347633455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A268686 (n + 1) + f1 (A366851 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125505.P15865971743347633455

/-! ## A125505.P9345471414258145258

`∑[A268686(n+1)+a(A355742(n+1)%2)]` with `a(0)=0`
-/

namespace A125505.P9345471414258145258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A268686 (n + 1) + f1 (Int.tmod (A355742 (n + 1)) 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125505.P9345471414258145258

/-!
# A125508: Lowest number having a particular shape of factor decomposition binary tree.

The programs for A125508, there is no canonical definition to state claims against.
-/

/-! ## A125508.P16199221562454125224

`record[and(A005701(n), A220521(n+1))]`
-/

namespace A125508.P16199221562454125224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005701 n) (A220521 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125508.P16199221562454125224

/-! ## A125508.P11355261377445419935

`record[and(A093036(n+1), A304713(n+1))]`
-/

namespace A125508.P11355261377445419935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A093036 (n + 1)) (A304713 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125508.P11355261377445419935

/-! ## A125508.P1367729124442151511

`lt[2*and(n, 2*n), A357624(n)]`
-/

namespace A125508.P1367729124442151511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.land n (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357624 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A125508.P1367729124442151511

/-! ## A125508.P7972150276196780920

`record[A045836(A052330(n))]`
-/

namespace A125508.P7972150276196780920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045836 (A052330 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125508.P7972150276196780920

/-! ## A125508.P850508339891599195

`A067945(A032565(n+1))%98`
-/

namespace A125508.P850508339891599195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067945 (A032565 (n + 1)).toNat) 98

end

end A125508.P850508339891599195

/-!
# A125510: Theta series of 4-dimensional lattice QQF.4.g.

The programs for A125510, there is no canonical definition to state claims against.
-/

/-! ## A125510.P8936459953834612360

`A282544(2*n)`
-/

namespace A125510.P8936459953834612360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282544 (2 * n)

end

end A125510.P8936459953834612360

/-! ## A125510.P14213131691958766105

`2*A131943(n)-A186100(n)`
-/

namespace A125510.P14213131691958766105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131943 n - A186100 n

end

end A125510.P14213131691958766105

/-! ## A125510.P10536987503141974463

`2*A006353(n)-A125514(n)`
-/

namespace A125510.P10536987503141974463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006353 n - A125514 n

end

end A125510.P10536987503141974463

/-! ## A125510.P3330063978233821477

`A000027(A282544(lcm(2, n)))`
-/

namespace A125510.P3330063978233821477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A282544 (Nat.lcm 2 n)).toNat

end

end A125510.P3330063978233821477

/-! ## A125510.P674125610293166353

`A000027(A282544(n+n))`
-/

namespace A125510.P674125610293166353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A282544 (n + n)).toNat

end

end A125510.P674125610293166353

/-! ## A125510.P14248055843118222707

`A282544(A004277(n))-A000007(n)`
-/

namespace A125510.P14248055843118222707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282544 (A004277 n).toNat - A000007 n

end

end A125510.P14248055843118222707

/-! ## A125510.P10464152517915421875

`lcm(A000034(n), A282544(A005843(n)))`
-/

namespace A125510.P10464152517915421875
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A282544 (A005843 n).toNat)

end

end A125510.P10464152517915421875

/-! ## A125510.P6400457796621475930

`or(A000007(n), A282544(A005843(n)))`
-/

namespace A125510.P6400457796621475930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A282544 (A005843 n).toNat)

end

end A125510.P6400457796621475930

/-! ## A125510.P7392873791764862546

`or(A000007(n), A282544(A109043(n)))`
-/

namespace A125510.P7392873791764862546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A282544 (A109043 n).toNat)

end

end A125510.P7392873791764862546

/-! ## A125510.P8966960175825470853

`or(A214304(n), A282544(A109043(n)))`
-/

namespace A125510.P8966960175825470853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A214304 n) (A282544 (A109043 n).toNat)

end

end A125510.P8966960175825470853

/-! ## A125510.P4343950568284264193

`A282544(A005843(n))+A000007(n+1)`
-/

namespace A125510.P4343950568284264193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282544 (A005843 n).toNat + A000007 (n + 1)

end

end A125510.P4343950568284264193

/-! ## A125510.P4264555166271744419

`A282544(A109043(n))+A000007(n+1)`
-/

namespace A125510.P4264555166271744419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282544 (A109043 n).toNat + A000007 (n + 1)

end

end A125510.P4264555166271744419

/-! ## A125510.P6800522061394665536

`A033712(4*n)`
-/

namespace A125510.P6800522061394665536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033712 (4 * n)

end

end A125510.P6800522061394665536

/-! ## A125510.P11076683791839699750

`A282544(A008574(n))-floor(acot(n))`
-/

namespace A125510.P11076683791839699750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282544 (A008574 n).toNat - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A125510.P11076683791839699750

/-! ## A125510.P6077008211240684335

`A033712(A008574(n))-A000007(n)`
-/

namespace A125510.P6077008211240684335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033712 (A008574 n).toNat - A000007 n

end

end A125510.P6077008211240684335

/-! ## A125510.P8422174094739614657

`A033712(A008586(n))%A081270(n)`
-/

namespace A125510.P8422174094739614657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033712 (A008586 n).toNat) (A081270 n)

end

end A125510.P8422174094739614657

/-! ## A125510.P12194531801352482275

`or(A000007(n), A282544(A109045(n)))`
-/

namespace A125510.P12194531801352482275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A282544 (A109045 n).toNat)

end

end A125510.P12194531801352482275

/-! ## A125510.P3290662727166471593

`or(A214304(n), A282544(A109045(n)))`
-/

namespace A125510.P3290662727166471593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A214304 n) (A282544 (A109045 n).toNat)

end

end A125510.P3290662727166471593

/-! ## A125510.P13559518295484323107

`A282544(A109045(n))+A000007(n+1)`
-/

namespace A125510.P13559518295484323107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282544 (A109045 n).toNat + A000007 (n + 1)

end

end A125510.P13559518295484323107

/-! ## A125510.P9212591156574523982

`A246707(4*n)`
-/

namespace A125510.P9212591156574523982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246707 (4 * n)

end

end A125510.P9212591156574523982

/-!
# A125512: Array x read by diagonals, where x(i,j) = floor((T(i,j-1)+T(i,j+1))/2) for i>=0 and j>=0. Here T is Wythoff's array A035513.

The programs for A125512, there is no canonical definition to state claims against.
-/

/-! ## A125512.P13350312936447873023

`floor(A287869(n+1)+A035513(n+1)/2)`
-/

namespace A125512.P13350312936447873023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A287869 (n + 1) : ℚ) + (A035513 (n + 1) : ℚ) / 2⌋

end

end A125512.P13350312936447873023

/-! ## A125512.P17536285453240642478

`A287869(n+1)+A004526(A035513(n+1))`
-/

namespace A125512.P17536285453240642478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287869 (n + 1) + A004526 (A035513 (n + 1)).toNat

end

end A125512.P17536285453240642478

/-! ## A125512.P14784646370772659000

`A032766(A035513(n+1))-A287870(n+1)`
-/

namespace A125512.P14784646370772659000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A035513 (n + 1)).toNat - A287870 (n + 1)

end

end A125512.P14784646370772659000

/-! ## A125512.P946643004693877644

`A035513(A014132(n+1))-A065033(A035513(n+1))`
-/

namespace A125512.P946643004693877644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035513 (A014132 (n + 1)).toNat - A065033 (A035513 (n + 1)).toNat

end

end A125512.P946643004693877644

/-! ## A125512.P17902865790310184595

`A287869(n+1)+A004526(A287870(n+1)+A287869(n+1))`
-/

namespace A125512.P17902865790310184595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287869 (n + 1) + A004526 (A287870 (n + 1) + A287869 (n + 1)).toNat

end

end A125512.P17902865790310184595

/-! ## A125512.P6065221267555285205

`A032766(A287870(n+1)+A287869(n+1))-A287870(n+1)`
-/

namespace A125512.P6065221267555285205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A287870 (n + 1) + A287869 (n + 1)).toNat - A287870 (n + 1)

end

end A125512.P6065221267555285205

/-! ## A125512.P4632676340068984069

`A004526(A335500(comp[∑[n]]))`
-/

namespace A125512.P4632676340068984069
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A335500 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A125512.P4632676340068984069

/-! ## A125512.P9070297894479426012

`floor(A335500(A014132(n+1))/2)`
-/

namespace A125512.P9070297894479426012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A335500 (A014132 (n + 1)).toNat : ℚ) / 2⌋

end

end A125512.P9070297894479426012

/-!
# A125513: a(n) is the number of binary strings of length n such that no subsequence of length 5 or less contains 4 or more ones.

The programs for A125513, the canonical program `A125513.P10255396220864572072` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125513 has offset 1).

The definition of A125513 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A125513.P10255396220864572072

`a(n-1)+a(n-2)+a(n-4)+2*a(n-5)-a(n-7)-a(n-10)` with `a(0)=2, a(1)=4, a(2)=8, a(3)=15, a(4)=26, a(5)=48, a(6)=89, a(7)=165, a(8)=305, a(9)=561`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A125513

/-- `a(n-1)+a(n-2)+a(n-4)+2*a(n-5)-a(n-7)-a(n-10)` -/
def P10255396220864572072.Spec : Prop :=
  ∀ n, P10255396220864572072.a n = A125513 (n + 1)

theorem P10255396220864572072.correct : P10255396220864572072.Spec := by
  intro n
  simp only [A125513, Nat.add_sub_cancel]

end A125513

/-! ## A125513.P1131722502446463493

`2^(n+1)-A130902(n)`
-/

namespace A125513.P1131722502446463493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A130902 n

end

end A125513.P1131722502446463493

namespace A125513

/-- `2^(n+1)-A130902(n)` -/
def P1131722502446463493.Spec : Prop :=
  ∀ n, P1131722502446463493.a n = A125513 (n + 1)

end A125513

/-! ## A125513.P6821641766709995180

`abs(A000079(n+1)-A130902(n))`
-/

namespace A125513.P6821641766709995180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 (n + 1) - A130902 n|

end

end A125513.P6821641766709995180

namespace A125513

/-- `abs(A000079(n+1)-A130902(n))` -/
def P6821641766709995180.Spec : Prop :=
  ∀ n, P6821641766709995180.a n = A125513 (n + 1)

end A125513

/-! ## A125513.P8026963016323448773

`A000079(n)+A000079(n)-A130902(n)`
-/

namespace A125513.P8026963016323448773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (A000079 n - A130902 n)

end

end A125513.P8026963016323448773

namespace A125513

/-- `A000079(n)+A000079(n)-A130902(n)` -/
def P8026963016323448773.Spec : Prop :=
  ∀ n, P8026963016323448773.a n = A125513 (n + 1)

end A125513

/-! ## A125513.P17819368982490866300

`A118646(n+1)+A118647(n+1)-A130902(n)`
-/

namespace A125513.P17819368982490866300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118646 (n + 1) + (A118647 (n + 1) - A130902 n)

end

end A125513.P17819368982490866300

namespace A125513

/-- `A118646(n+1)+A118647(n+1)-A130902(n)` -/
def P17819368982490866300.Spec : Prop :=
  ∀ n, P17819368982490866300.a n = A125513 (n + 1)

end A125513

/-! ## A125513.P7937721095505018224

`A120118(n+1)+A131283(n+1)-A130902(n)`
-/

namespace A125513.P7937721095505018224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120118 (n + 1) + (A131283 (n + 1) - A130902 n)

end

end A125513.P7937721095505018224

namespace A125513

/-- `A120118(n+1)+A131283(n+1)-A130902(n)` -/
def P7937721095505018224.Spec : Prop :=
  ∀ n, P7937721095505018224.a n = A125513 (n + 1)

end A125513

/-!
# A125514: Theta series of 4-dimensional lattice QQF.4.i.

The programs for A125514, there is no canonical definition to state claims against.
-/

/-! ## A125514.P4184165464456479553

`2*A006353(n)-A125510(n)`
-/

namespace A125514.P4184165464456479553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006353 n - A125510 n

end

end A125514.P4184165464456479553

/-! ## A125514.P4527224721728768695

`2*A131946(n)-A186100(n)`
-/

namespace A125514.P4527224721728768695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131946 n - A186100 n

end

end A125514.P4527224721728768695

/-! ## A125514.P8804196713725136536

`A034896(n*gcd(2, n))`
-/

namespace A125514.P8804196713725136536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034896 (n * Nat.gcd 2 n)

end

end A125514.P8804196713725136536

/-! ## A125514.P7719433794907484195

`A034896(ceil(3*n/2)-∑[-n*(-1)^n])`
-/

namespace A125514.P7719433794907484195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n : ℤ) * (-1) ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034896 (⌈3 * ((n : ℚ) / 2)⌉ - ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A125514.P7719433794907484195

/-! ## A125514.P13043036009410135352

`A131946(2*n)`
-/

namespace A125514.P13043036009410135352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131946 (2 * n)

end

end A125514.P13043036009410135352

/-! ## A125514.P6921872733509726428

`abs(A131946(n+n))`
-/

namespace A125514.P6921872733509726428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A131946 (n + n)|

end

end A125514.P6921872733509726428

/-! ## A125514.P2768320421028782021

`A034896(A005843(n))^round(n/(n+1))`
-/

namespace A125514.P2768320421028782021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034896 (A005843 n).toNat : ℚ) ^ (SequenceMachineLib.roundAway ((n : ℚ) / (n + 1 : ℚ)) : ℤ)

end

end A125514.P2768320421028782021

/-! ## A125514.P3906401048092458887

`root(A034896(n+n), A019425(A019425(n+1)))`
-/

namespace A125514.P3906401048092458887
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A034896 (n + n) : ℝ) ^ (1 / (A019425 (A019425 (n + 1)).toNat : ℝ))

end

end A125514.P3906401048092458887

/-! ## A125514.P7926533077931960716

`filter[A034896(2*n), A005171(#)]`
-/

namespace A125514.P7926533077931960716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034896 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A125514.P7926533077931960716

/-! ## A125514.P18300002574172419890

`filter[A034896(2*n), A087049(#)]`
-/

namespace A125514.P18300002574172419890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034896 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A125514.P18300002574172419890

/-! ## A125514.P7785195491348876042

`filter[A034896(2*n), A105234(#)]`
-/

namespace A125514.P7785195491348876042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034896 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A105234 (f1 j).toNat = 1) n)

end

end A125514.P7785195491348876042

/-! ## A125514.P5151738620772819832

`filter[A034896(2*n), A152822(#)]`
-/

namespace A125514.P5151738620772819832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034896 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A125514.P5151738620772819832

/-! ## A125514.P4943036646494416561

`filter[A034896(2*n), A093521(#)]`
-/

namespace A125514.P4943036646494416561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034896 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093521 (f1 j).toNat = 1) n)

end

end A125514.P4943036646494416561

/-! ## A125514.P3620831447808348982

`filter[A034896(2*n), A014577(#)]`
-/

namespace A125514.P3620831447808348982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034896 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014577 (f1 j).toNat = 1) n)

end

end A125514.P3620831447808348982

/-! ## A125514.P11892092306330597350

`filter[A034896(2*n), A039963(#)]`
-/

namespace A125514.P11892092306330597350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034896 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039963 (f1 j).toNat = 1) n)

end

end A125514.P11892092306330597350

/-! ## A125514.P644479825249048198

`filter[A034896(2*n), A133872(#)]`
-/

namespace A125514.P644479825249048198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034896 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A133872 (f1 j).toNat = 1) n)

end

end A125514.P644479825249048198

/-! ## A125514.P12940259903799964184

`filter[A034896(2*n), A135528(#)]`
-/

namespace A125514.P12940259903799964184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034896 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A125514.P12940259903799964184

/-! ## A125514.P14799159199570142476

`filter[A034896(2*n), A262808(#)]`
-/

namespace A125514.P14799159199570142476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034896 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A262808 (f1 j).toNat = 1) n)

end

end A125514.P14799159199570142476

/-! ## A125514.P11142445675461297850

`filter[A034896(2*n), A263243(#)]`
-/

namespace A125514.P11142445675461297850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034896 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A263243 (f1 j).toNat = 1) n)

end

end A125514.P11142445675461297850

/-! ## A125514.P14198663296997885099

`A033739(3*6*n)`
-/

namespace A125514.P14198663296997885099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033739 (3 * (6 * n))

end

end A125514.P14198663296997885099

/-!
# A125515: Primes derived from A116516.

The programs for A125515, there is no canonical definition to state claims against.
-/

/-! ## A125515.P9124917584530879932

`A151800(a(n-1)*record[∑{p}[n+2, #]])` with `a(0)=2`
-/

namespace A125515.P9124917584530879932
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A151800 (a (n - 1) * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ)).toNat

end

end A125515.P9124917584530879932

/-! ## A125515.P2922104149339231996

`p?[A151800(a(n-1)*A000040(n))]` with `a(0)=0`
-/

namespace A125515.P2922104149339231996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A151800 (f1 (n - 1) * A000040 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A125515.P2922104149339231996

/-!
# A125516: Prime numbers that are the sum of three distinct positive squares.

The programs for A125516, there is no canonical definition to state claims against.
-/

/-! ## A125516.P17336614522810117196

`p?[A004432(n+1)]`
-/

namespace A125516.P17336614522810117196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004432 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A125516.P17336614522810117196

/-! ## A125516.P3093809427530136804

`p?[A224771(n+1)]`
-/

namespace A125516.P3093809427530136804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224771 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A125516.P3093809427530136804

/-! ## A125516.P3112056702930485506

`p?[comp[A004440(n+1)]]`
-/

namespace A125516.P3112056702930485506
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004440 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A125516.P3112056702930485506

/-! ## A125516.P7703695897924986044

`A004432(A024805(n+1))`
-/

namespace A125516.P7703695897924986044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004432 (A024805 (n + 1)).toNat

end

end A125516.P7703695897924986044

/-! ## A125516.P17427240231146150342

`filter[A004432(n+1), A010051(#)]`
-/

namespace A125516.P17427240231146150342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004432 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A125516.P17427240231146150342

/-! ## A125516.P11815393023497609355

`filter[A224771(n+1), A010051(#)]`
-/

namespace A125516.P11815393023497609355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224771 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A125516.P11815393023497609355

/-! ## A125516.P7900146313180571452

`filter[A004432(n+1), A323153(#)]`
-/

namespace A125516.P7900146313180571452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004432 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A125516.P7900146313180571452

/-! ## A125516.P5939790764386805190

`filter[A224771(n+1), A323152(#)]`
-/

namespace A125516.P5939790764386805190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224771 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A125516.P5939790764386805190

/-! ## A125516.P16943114938543791680

`filter[A224771(n+1), A323153(#)]`
-/

namespace A125516.P16943114938543791680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224771 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A125516.P16943114938543791680

/-! ## A125516.P14967247483649616793

`∩[A000040(n+1), A004432(n+1)]`
-/

namespace A125516.P14967247483649616793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125516.P14967247483649616793

/-! ## A125516.P4127815192005735103

`∩[A004139(n+1), A004432(n+1)]`
-/

namespace A125516.P4127815192005735103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125516.P4127815192005735103

/-! ## A125516.P6607749418583072535

`∩[A004432(n+1), A006005(n+1)]`
-/

namespace A125516.P6607749418583072535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125516.P6607749418583072535

/-! ## A125516.P12422241968453964085

`∩[A004432(n+1), A008578(n+1)]`
-/

namespace A125516.P12422241968453964085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125516.P12422241968453964085

/-! ## A125516.P17106349461771731187

`∩[A004432(n+1), A042998(n+1)]`
-/

namespace A125516.P17106349461771731187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042998 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125516.P17106349461771731187

/-! ## A125516.P8101962381487599523

`∩[A004432(n+1), A045319(n+1)]`
-/

namespace A125516.P8101962381487599523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125516.P8101962381487599523

/-! ## A125516.P5781029794418032094

`∩[A004432(n+1), A045344(n+1)]`
-/

namespace A125516.P5781029794418032094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125516.P5781029794418032094

/-! ## A125516.P13001355367414755675

`∩[A004432(n+1), A045403(n+1)]`
-/

namespace A125516.P13001355367414755675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045403 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125516.P13001355367414755675

/-! ## A125516.P12368065670026658194

`∩[A004432(n+1), A046022(n+1)]`
-/

namespace A125516.P12368065670026658194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125516.P12368065670026658194

/-! ## A125516.P4483315063034301400

`∩[A004432(n+1), A051948(n+1)]`
-/

namespace A125516.P4483315063034301400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125516.P4483315063034301400

/-! ## A125516.P16706312758999834503

`∩[A004432(n+1), A053813(n+1)]`
-/

namespace A125516.P16706312758999834503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125516.P16706312758999834503

/-!
# A125518: a(n) = tau(n) * prime(n).

The programs for A125518, the canonical program `A125518.P13782331751493634703` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125518 has offset 1).

The definition of A125518 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A125518.P13782331751493634703

`∑{d}[n+1, A000040(lcm(#, n+1))]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A125518

/-- `∑{d}[n+1, A000040(lcm(#, n+1))]` -/
def P13782331751493634703.Spec : Prop :=
  ∀ n, P13782331751493634703.a n = A125518 (n + 1)

theorem P13782331751493634703.correct : P13782331751493634703.Spec := by
  intro n
  simp only [A125518, Nat.add_sub_cancel]

end A125518

/-! ## A125518.P8151242488262602397

`∏{e}[n+1, #+1]*A000040(n+1)`
-/

namespace A125518.P8151242488262602397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) * A000040 (n + 1)

end

end A125518.P8151242488262602397

namespace A125518

/-- `∏{e}[n+1, #+1]*A000040(n+1)` -/
def P8151242488262602397.Spec : Prop :=
  ∀ n, P8151242488262602397.a n = A125518 (n + 1)

end A125518

/-! ## A125518.P7210789629243757462

`lcm(A001749(n+1)/4, -∑{d}[n+1, or(#, -1)])`
-/

namespace A125518.P7210789629243757462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((A001749 (n + 1) : ℚ) / 4)) (-(∑ d ∈ Nat.divisors (f1 n), Int.lor (d : ℤ) (-1)))

end

end A125518.P7210789629243757462

namespace A125518

/-- `lcm(A001749(n+1)/4, -∑{d}[n+1, or(#, -1)])` -/
def P7210789629243757462.Spec : Prop :=
  ∀ n, (P7210789629243757462.a n : ℤ) = A125518 (n + 1)

end A125518

/-! ## A125518.P8158013690026035937

`A033286(n+1)/(n+1)*floor(∑{d}[n+1, root(#, n+1)])`
-/

namespace A125518.P8158013690026035937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033286 (n + 1) : ℚ) / (n + 1 : ℚ) * (⌊∑ d ∈ Nat.divisors (f1 n), (d : ℝ) ^ (1 / (n + 1 : ℝ))⌋ : ℚ)

end

end A125518.P8158013690026035937

namespace A125518

/-- `A033286(n+1)/(n+1)*floor(∑{d}[n+1, root(#, n+1)])` -/
def P8158013690026035937.Spec : Prop :=
  ∀ n, P8158013690026035937.a n = (A125518 (n + 1) : ℚ)

end A125518

/-! ## A125518.P1974629568665487474

`Δ[A006218(n)]*Δ[A007504(n)]`
-/

namespace A125518.P1974629568665487474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (f2 (n + 1) - f2 n)

end

end A125518.P1974629568665487474

namespace A125518

/-- `Δ[A006218(n)]*Δ[A007504(n)]` -/
def P1974629568665487474.Spec : Prop :=
  ∀ n, P1974629568665487474.a n = A125518 (n + 1)

end A125518

/-! ## A125518.P14025855713117026302

`Δ[A007504(n)]*Δ[A054519(n)]`
-/

namespace A125518.P14025855713117026302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (f2 (n + 1) - f2 n)

end

end A125518.P14025855713117026302

namespace A125518

/-- `Δ[A007504(n)]*Δ[A054519(n)]` -/
def P14025855713117026302.Spec : Prop :=
  ∀ n, P14025855713117026302.a n = A125518 (n + 1)

end A125518

/-! ## A125518.P12395244764362955014

`A000040(n+1)*Δ[A006218(n)]`
-/

namespace A125518.P12395244764362955014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * (f1 (n + 1) - f1 n)

end

end A125518.P12395244764362955014

namespace A125518

/-- `A000040(n+1)*Δ[A006218(n)]` -/
def P12395244764362955014.Spec : Prop :=
  ∀ n, P12395244764362955014.a n = A125518 (n + 1)

end A125518

/-! ## A125518.P13775301945354315476

`A000005(n+1)*Δ[A007504(n)]`
-/

namespace A125518.P13775301945354315476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * (f1 (n + 1) - f1 n)

end

end A125518.P13775301945354315476

namespace A125518

/-- `A000005(n+1)*Δ[A007504(n)]` -/
def P13775301945354315476.Spec : Prop :=
  ∀ n, P13775301945354315476.a n = A125518 (n + 1)

end A125518

/-! ## A125518.P18378900754144202098

`A000040(n+1)*Δ[A054519(n)]`
-/

namespace A125518.P18378900754144202098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * (f1 (n + 1) - f1 n)

end

end A125518.P18378900754144202098

namespace A125518

/-- `A000040(n+1)*Δ[A054519(n)]` -/
def P18378900754144202098.Spec : Prop :=
  ∀ n, P18378900754144202098.a n = A125518 (n + 1)

end A125518

/-! ## A125518.P17286790597070241048

`A000005(n+1)*A000040(n+1)`
-/

namespace A125518.P17286790597070241048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A000040 (n + 1)

end

end A125518.P17286790597070241048

namespace A125518

/-- `A000005(n+1)*A000040(n+1)` -/
def P17286790597070241048.Spec : Prop :=
  ∀ n, P17286790597070241048.a n = A125518 (n + 1)

end A125518

/-! ## A125518.P1899186317679307983

`(A006218(n+1)-A006218(n))*A000040(n+1)`
-/

namespace A125518.P1899186317679307983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006218 (n + 1) - A006218 n) * A000040 (n + 1)

end

end A125518.P1899186317679307983

namespace A125518

/-- `(A006218(n+1)-A006218(n))*A000040(n+1)` -/
def P1899186317679307983.Spec : Prop :=
  ∀ n, P1899186317679307983.a n = A125518 (n + 1)

end A125518

/-! ## A125518.P16610122930706252691

`(A007504(n+1)-A007504(n))*A000005(n+1)`
-/

namespace A125518.P16610122930706252691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007504 (n + 1) - A007504 n) * A000005 (n + 1)

end

end A125518.P16610122930706252691

namespace A125518

/-- `(A007504(n+1)-A007504(n))*A000005(n+1)` -/
def P16610122930706252691.Spec : Prop :=
  ∀ n, P16610122930706252691.a n = A125518 (n + 1)

end A125518

/-! ## A125518.P15568378828125185294

`A000005(n+1)+A000005(n+1)*A006093(n+1)`
-/

namespace A125518.P15568378828125185294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + A000005 (n + 1) * A006093 (n + 1)

end

end A125518.P15568378828125185294

namespace A125518

/-- `A000005(n+1)+A000005(n+1)*A006093(n+1)` -/
def P15568378828125185294.Spec : Prop :=
  ∀ n, P15568378828125185294.a n = A125518 (n + 1)

end A125518

/-! ## A125518.P3919465176269038048

`A000040(n+1)+A000040(n+1)*A032741(n+1)`
-/

namespace A125518.P3919465176269038048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A000040 (n + 1) * A032741 (n + 1)

end

end A125518.P3919465176269038048

namespace A125518

/-- `A000040(n+1)+A000040(n+1)*A032741(n+1)` -/
def P3919465176269038048.Spec : Prop :=
  ∀ n, P3919465176269038048.a n = A125518 (n + 1)

end A125518

/-! ## A125518.P7729769374507495341

`(A394830(n+1)+A163671(n+1))*A000040(n+1)`
-/

namespace A125518.P7729769374507495341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A394830 (n + 1) + A163671 (n + 1)) * A000040 (n + 1)

end

end A125518.P7729769374507495341

namespace A125518

/-- `(A394830(n+1)+A163671(n+1))*A000040(n+1)` -/
def P7729769374507495341.Spec : Prop :=
  ∀ n, P7729769374507495341.a n = A125518 (n + 1)

end A125518

/-! ## A125518.P9132013956841114458

`(A353362(n+1)+A353361(n+1))*A000040(n+1)`
-/

namespace A125518.P9132013956841114458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A353362 (n + 1) + A353361 (n + 1)) * A000040 (n + 1)

end

end A125518.P9132013956841114458

namespace A125518

/-- `(A353362(n+1)+A353361(n+1))*A000040(n+1)` -/
def P9132013956841114458.Spec : Prop :=
  ∀ n, P9132013956841114458.a n = A125518 (n + 1)

end A125518

/-! ## A125518.P15679009110967510968

`A000005(n+1)*A008864(n+1)-A000005(n+1)`
-/

namespace A125518.P15679009110967510968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A008864 (n + 1) - A000005 (n + 1)

end

end A125518.P15679009110967510968

namespace A125518

/-- `A000005(n+1)*A008864(n+1)-A000005(n+1)` -/
def P15679009110967510968.Spec : Prop :=
  ∀ n, P15679009110967510968.a n = A125518 (n + 1)

end A125518

/-! ## A125518.P16600529239913647844

`(A138636(n+1)-A001750(n+1))*A000005(n+1)`
-/

namespace A125518.P16600529239913647844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A138636 (n + 1) - A001750 (n + 1)) * A000005 (n + 1)

end

end A125518.P16600529239913647844

namespace A125518

/-- `(A138636(n+1)-A001750(n+1))*A000005(n+1)` -/
def P16600529239913647844.Spec : Prop :=
  ∀ n, P16600529239913647844.a n = A125518 (n + 1)

end A125518

/-! ## A125518.P1793739780638462295

`A000040(n+1)/A000203(n+1)*A064840(n+1)`
-/

namespace A125518.P1793739780638462295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ) * (A064840 (n + 1) : ℚ)

end

end A125518.P1793739780638462295

namespace A125518

/-- `A000040(n+1)/A000203(n+1)*A064840(n+1)` -/
def P1793739780638462295.Spec : Prop :=
  ∀ n, P1793739780638462295.a n = (A125518 (n + 1) : ℚ)

end A125518

/-! ## A125518.P3107143776442382746

`A000040(n+1)/A007947(n+1)*A304409(n+1)`
-/

namespace A125518.P3107143776442382746
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) / (A007947 (n + 1) : ℚ) * (A304409 (n + 1) : ℚ)

end

end A125518.P3107143776442382746

namespace A125518

/-- `A000040(n+1)/A007947(n+1)*A304409(n+1)` -/
def P3107143776442382746.Spec : Prop :=
  ∀ n, P3107143776442382746.a n = (A125518 (n + 1) : ℚ)

end A125518

/-!
# A125521: a(n) is the minimal difference between two distinct n-digit numbers with property that when one of them is typed into a calculator and rotated 180 degrees, the other one is seen.

The programs for A125521, the canonical program `A125521.P6676729144673450737` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125521 has offset 1).

The definition of A125521 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A125521.P6676729144673450737

`10*a(n-2)` with `a(0)=3, a(1)=6`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A125521

/-- `10*a(n-2)` -/
def P6676729144673450737.Spec : Prop :=
  ∀ n, (P6676729144673450737.a n : ℤ) = A125521 (n + 1)

theorem P6676729144673450737.correct : P6676729144673450737.Spec := by
  intro n
  simp only [A125521, Nat.add_sub_cancel]

end A125521

/-! ## A125521.P14330230893482411425

`∏[7-a(n-1)]` with `a(0)=3, a(1)=2`
-/

namespace A125521.P14330230893482411425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n f1 =>
  7 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A125521.P14330230893482411425

namespace A125521

/-- `∏[7-a(n-1)]` -/
def P14330230893482411425.Spec : Prop :=
  ∀ n, P14330230893482411425.a n = A125521 (n + 1)

end A125521

/-! ## A125521.P7295772521495132597

`∏[ceil(5*3^n/2)%6]`
-/

namespace A125521.P7295772521495132597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(5 * 3 ^ n : ℚ) / 2⌉ 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A125521.P7295772521495132597

namespace A125521

/-- `∏[ceil(5*3^n/2)%6]` -/
def P7295772521495132597.Spec : Prop :=
  ∀ n, P7295772521495132597.a n = A125521 (n + 1)

end A125521

/-! ## A125521.P9337623801988144728

`3*∏[((n-1)%2+1)²+1]`
-/

namespace A125521.P9337623801988144728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.tmod ((n : ℤ) - 1) 2 + 1) ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A125521.P9337623801988144728

namespace A125521

/-- `3*∏[((n-1)%2+1)²+1]` -/
def P9337623801988144728.Spec : Prop :=
  ∀ n, P9337623801988144728.a n = A125521 (n + 1)

end A125521

/-! ## A125521.P17007971345097416908

`a(n-2)+a(n-2)/(1/3)²` with `a(0)=3, a(1)=6`
-/

namespace A125521.P17007971345097416908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3, 6] fun n a =>
  a (n - 2) + a (n - 2) / ((1 : ℚ) / 3) ^ 2

end

end A125521.P17007971345097416908

namespace A125521

/-- `a(n-2)+a(n-2)/(1/3)²` -/
def P17007971345097416908.Spec : Prop :=
  ∀ n, P17007971345097416908.a n = (A125521 (n + 1) : ℚ)

end A125521

/-! ## A125521.P10755854542333712891

`3*A004643(n)`
-/

namespace A125521.P10755854542333712891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A004643 n

end

end A125521.P10755854542333712891

namespace A125521

/-- `3*A004643(n)` -/
def P10755854542333712891.Spec : Prop :=
  ∀ n, P10755854542333712891.a n = A125521 (n + 1)

end A125521

/-! ## A125521.P39093412820443442

`∏[A040005(n)+1]`
-/

namespace A125521.P39093412820443442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040005 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A125521.P39093412820443442

namespace A125521

/-- `∏[A040005(n)+1]` -/
def P39093412820443442.Spec : Prop :=
  ∀ n, P39093412820443442.a n = A125521 (n + 1)

end A125521

/-! ## A125521.P12005340933870790753

`Δ[A004655(2*n)]`
-/

namespace A125521.P12005340933870790753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004655 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A125521.P12005340933870790753

namespace A125521

/-- `Δ[A004655(2*n)]` -/
def P12005340933870790753.Spec : Prop :=
  ∀ n, P12005340933870790753.a n = A125521 (n + 1)

end A125521

/-! ## A125521.P14958997465056765295

`3*A194350(Δ[n²])`
-/

namespace A125521.P14958997465056765295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A194350 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A125521.P14958997465056765295

namespace A125521

/-- `3*A194350(Δ[n²])` -/
def P14958997465056765295.Spec : Prop :=
  ∀ n, P14958997465056765295.a n = A125521 (n + 1)

end A125521

/-! ## A125521.P9824722019989046077

`∏[A010121(2*n)+1]`
-/

namespace A125521.P9824722019989046077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010121 (2 * n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A125521.P9824722019989046077

namespace A125521

/-- `∏[A010121(2*n)+1]` -/
def P9824722019989046077.Spec : Prop :=
  ∀ n, P9824722019989046077.a n = A125521 (n + 1)

end A125521

/-! ## A125521.P12276680261714781608

`∏[A040015(n)/2+1]`
-/

namespace A125521.P12276680261714781608
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040015 n : ℚ) / 2 + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A125521.P12276680261714781608

namespace A125521

/-- `∏[A040015(n)/2+1]` -/
def P12276680261714781608.Spec : Prop :=
  ∀ n, P12276680261714781608.a n = (A125521 (n + 1) : ℚ)

end A125521

/-! ## A125521.P2676519150206985911

`∏[A029648(a(n-1))]` with `a(0)=3`
-/

namespace A125521.P2676519150206985911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A029648 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A125521.P2676519150206985911

namespace A125521

/-- `∏[A029648(a(n-1))]` -/
def P2676519150206985911.Spec : Prop :=
  ∀ n, P2676519150206985911.a n = A125521 (n + 1)

end A125521

/-! ## A125521.P9017805217228297221

`∏[A040235(a(n-1))]` with `a(0)=3`
-/

namespace A125521.P9017805217228297221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A040235 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A125521.P9017805217228297221

namespace A125521

/-- `∏[A040235(a(n-1))]` -/
def P9017805217228297221.Spec : Prop :=
  ∀ n, P9017805217228297221.a n = A125521 (n + 1)

end A125521

/-! ## A125521.P14080712155275519038

`∏[A040642(a(n-1))]` with `a(0)=3`
-/

namespace A125521.P14080712155275519038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A040642 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A125521.P14080712155275519038

namespace A125521

/-- `∏[A040642(a(n-1))]` -/
def P14080712155275519038.Spec : Prop :=
  ∀ n, P14080712155275519038.a n = A125521 (n + 1)

end A125521

/-! ## A125521.P4431239767392543521

`∏[A040941(a(n-1))]` with `a(0)=3`
-/

namespace A125521.P4431239767392543521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A040941 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A125521.P4431239767392543521

namespace A125521

/-- `∏[A040941(a(n-1))]` -/
def P4431239767392543521.Spec : Prop :=
  ∀ n, P4431239767392543521.a n = A125521 (n + 1)

end A125521

/-! ## A125521.P6961392258577732537

`∏[A055385(a(n-1))]` with `a(0)=3`
-/

namespace A125521.P6961392258577732537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A055385 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A125521.P6961392258577732537

namespace A125521

/-- `∏[A055385(a(n-1))]` -/
def P6961392258577732537.Spec : Prop :=
  ∀ n, P6961392258577732537.a n = A125521 (n + 1)

end A125521

/-! ## A125521.P13715946159394648402

`∏[A070633(a(n-1))]` with `a(0)=3`
-/

namespace A125521.P13715946159394648402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A070633 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A125521.P13715946159394648402

namespace A125521

/-- `∏[A070633(a(n-1))]` -/
def P13715946159394648402.Spec : Prop :=
  ∀ n, P13715946159394648402.a n = A125521 (n + 1)

end A125521

/-! ## A125521.P18148639406711451023

`∏[A072996(a(n-1))]` with `a(0)=3`
-/

namespace A125521.P18148639406711451023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A072996 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A125521.P18148639406711451023

namespace A125521

/-- `∏[A072996(a(n-1))]` -/
def P18148639406711451023.Spec : Prop :=
  ∀ n, P18148639406711451023.a n = A125521 (n + 1)

end A125521

/-! ## A125521.P2427089686651144571

`∏[A076556(a(n-1))]` with `a(0)=3`
-/

namespace A125521.P2427089686651144571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A076556 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A125521.P2427089686651144571

namespace A125521

/-- `∏[A076556(a(n-1))]` -/
def P2427089686651144571.Spec : Prop :=
  ∀ n, P2427089686651144571.a n = A125521 (n + 1)

end A125521

/-!
# A125523: Democratic primes: primes such that the left half of the prime is prime and the right half is not.

The programs for A125523, there is no canonical definition to state claims against.
-/

/-! ## A125523.P823561164006106758

`p?[A125663(n+1)]`
-/

namespace A125523.P823561164006106758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125663 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A125523.P823561164006106758

/-! ## A125523.P2034936591880680779

`p?[record[A125663(A117910(n))]]`
-/

namespace A125523.P2034936591880680779
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125663 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A125523.P2034936591880680779

/-! ## A125523.P5199704448033278483

`p?[record[A125663(A154958(n))]]`
-/

namespace A125523.P5199704448033278483
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125663 (A154958 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A125523.P5199704448033278483

/-! ## A125523.P12487266527233476880

`p?[record[A125663(A158416(n))]]`
-/

namespace A125523.P12487266527233476880
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125663 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A125523.P12487266527233476880

/-! ## A125523.P12925611863205101167

`filter[A125663(n+1), A010051(#)]`
-/

namespace A125523.P12925611863205101167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125663 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A125523.P12925611863205101167

/-!
# A125524: Republican primes: primes such that the right half of the prime is prime and the left half is not.

The programs for A125524, there is no canonical definition to state claims against.
-/

/-! ## A125524.P3933722675242233892

`p?[A125664(n+1)]`
-/

namespace A125524.P3933722675242233892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125664 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A125524.P3933722675242233892

/-! ## A125524.P17939871901028032965

`p?[record[A125664(A158416(n))]]`
-/

namespace A125524.P17939871901028032965
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125664 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A125524.P17939871901028032965

/-! ## A125524.P17374472181005451665

`p?[record[A125664(A203814(n))]]`
-/

namespace A125524.P17374472181005451665
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125664 (A203814 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A125524.P17374472181005451665

/-! ## A125524.P4198188497291108348

`p?[record[A125664(A292266(n))]]`
-/

namespace A125524.P4198188497291108348
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125664 (A292266 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A125524.P4198188497291108348

/-! ## A125524.P11934986812389252714

`p?[record[A125664(A331300(n))]]`
-/

namespace A125524.P11934986812389252714
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125664 (A331300 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A125524.P11934986812389252714

/-! ## A125524.P10513691057682748621

`record[A020639(A125664(n+2))]`
-/

namespace A125524.P10513691057682748621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A125664 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125524.P10513691057682748621

/-! ## A125524.P9805428901123853113

`filter[A125664(n+1), A010051(#)]`
-/

namespace A125524.P9805428901123853113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125664 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A125524.P9805428901123853113

/-! ## A125524.P808807607369942533

`filter[A125664(n+1), A080339(#)]`
-/

namespace A125524.P808807607369942533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125664 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A125524.P808807607369942533

/-! ## A125524.P6929684852959020356

`filter[A125664(n+1), A080545(#)]`
-/

namespace A125524.P6929684852959020356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125664 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A125524.P6929684852959020356

/-! ## A125524.P15460914823538878036

`filter[A125664(n+1), A171387(#)]`
-/

namespace A125524.P15460914823538878036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125664 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A125524.P15460914823538878036

/-!
# A125525: Centrist primes: primes such that both the right half and the left half of the prime are prime.

The programs for A125525, there is no canonical definition to state claims against.
-/

/-! ## A125525.P3424334484697196297

`A059806(∩[A042993(n+1), A320585(n+1)])`
-/

namespace A125525.P3424334484697196297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320585 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059806 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A125525.P3424334484697196297

/-! ## A125525.P14685173235366235205

`∩[A260181(n+1), A028310(A320585(n+1))]`
-/

namespace A125525.P14685173235366235205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A320585 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125525.P14685173235366235205

/-! ## A125525.P18405038811730999211

`p?[A125665(n+1)+A102677(n)]`
-/

namespace A125525.P18405038811730999211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125665 (n + 1) + A102677 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A125525.P18405038811730999211

/-! ## A125525.P13179093675446788998

`p?[or(A025442(n), A125665(n+1))]`
-/

namespace A125525.P13179093675446788998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025442 n) (A125665 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A125525.P13179093675446788998

/-! ## A125525.P4796182348670048588

`record[A020639(A125665(n+1)+A102677(n))]`
-/

namespace A125525.P4796182348670048588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A125665 (n + 1) + A102677 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125525.P4796182348670048588

/-!
# A125527: Number of semiprimes <= 2^n.

The programs for A125527, there is no canonical definition to state claims against.
-/

/-! ## A125527.P14788878616819402999

`∑[A120033(n)]`
-/

namespace A125527.P14788878616819402999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120033 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125527.P14788878616819402999

/-! ## A125527.P7543203945455820182

`A126279(∑[n]+2)%(2^n)`
-/

namespace A125527.P7543203945455820182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126279 (∑ j ∈ Finset.range (n + 1), f1 j + 2)) (2 ^ n : ℤ)

end

end A125527.P7543203945455820182

/-! ## A125527.P16842829880419922089

`A126279(∑[n]+2)-A000038(n)`
-/

namespace A125527.P16842829880419922089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126279 (∑ j ∈ Finset.range (n + 1), f1 j + 2) - A000038 n

end

end A125527.P16842829880419922089

/-! ## A125527.P6993178846362553024

`A057427(n)*A126279(∑[n]+2)`
-/

namespace A125527.P6993178846362553024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A126279 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A125527.P6993178846362553024

/-! ## A125527.P16280601298912290971

`and(A000225(n), A126279(∑[n]+2))`
-/

namespace A125527.P16280601298912290971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A126279 (∑ j ∈ Finset.range (n + 1), f1 j + 2))

end

end A125527.P16280601298912290971

/-! ## A125527.P14272514645396466746

`A126279(A133263(n))-C(2, n+2)`
-/

namespace A125527.P14272514645396466746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126279 (A133263 n).toNat - (Nat.choose 2 (n + 2) : ℤ)

end

end A125527.P14272514645396466746

/-! ## A125527.P10388352040178416249

`A126279(∑[n]+2)-C(2, A212959(n))`
-/

namespace A125527.P10388352040178416249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126279 (∑ j ∈ Finset.range (n + 1), f1 j + 2) - (Nat.choose 2 (A212959 n).toNat : ℤ)

end

end A125527.P10388352040178416249

/-! ## A125527.P1307288387084111718

`A126279(A133263(n))-A000007(n)`
-/

namespace A125527.P1307288387084111718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126279 (A133263 n).toNat - A000007 n

end

end A125527.P1307288387084111718

/-! ## A125527.P9879691435932272759

`A126279(A133263(n))-A008683((n+1)²)`
-/

namespace A125527.P9879691435932272759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126279 (A133263 n).toNat - A008683 ((n + 1) ^ 2)

end

end A125527.P9879691435932272759

/-!
# A125528: Number of different Othello shapes at the end of the n-th ply.

The programs for A125528, there is no canonical definition to state claims against.
-/

/-! ## A125528.P13359143323070170322

`A267311(a(n-1))+2` with `a(0)=1`
-/

namespace A125528.P13359143323070170322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A267311 (a (n - 1)).toNat + 2

end

end A125528.P13359143323070170322

/-!
# A125529: Number of Othello shapes with unique realization at the end of the n-th ply.

The programs for A125529, there is no canonical definition to state claims against.
-/

/-! ## A125529.P1297808117260919302

`Δ[A098162(2^n)]`
-/

namespace A125529.P1297808117260919302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098162 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A125529.P1297808117260919302

/-!
# A125548: Number of j-sets in symmetric group S_n.

The programs for A125548, there is no canonical definition to state claims against.
-/

/-! ## A125548.P16448822000740233342

`∑[A000196(n*A082582(n))]`
-/

namespace A125548.P16448822000740233342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((n : ℤ) * A082582 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125548.P16448822000740233342

/-! ## A125548.P7587122025963203938

`∑[A000196(∑[A357182(2*(n+1))])]`
-/

namespace A125548.P7587122025963203938
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357182 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125548.P7587122025963203938

/-! ## A125548.P2633763088322835270

`A057142(A132838(n))-A055641(n)`
-/

namespace A125548.P2633763088322835270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057142 (A132838 n).toNat - A055641 n

end

end A125548.P2633763088322835270

/-! ## A125548.P15365508557778605770

`A057142(A132838(n))%A007051(n)`
-/

namespace A125548.P15365508557778605770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057142 (A132838 n).toNat) (A007051 n)

end

end A125548.P15365508557778605770

/-! ## A125548.P1698669096304735040

`A001462(A025047(2*n+1))-A319564(n)`
-/

namespace A125548.P1698669096304735040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A025047 (2 * n + 1)).toNat - A319564 n

end

end A125548.P1698669096304735040

/-!
# A125549: Composite Kummer numbers: -1 + product of first n consecutive primes (A057588).

The programs for A125549, there is no canonical definition to state claims against.
-/

/-! ## A125549.P17281070275383733640

`A136350(n+1)-1`
-/

namespace A125549.P17281070275383733640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136350 (n + 1) - 1

end

end A125549.P17281070275383733640

/-! ## A125549.P14303313912654831689

`xor(3, A136350(A187829(n+1)))`
-/

namespace A125549.P14303313912654831689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A136350 (A187829 (n + 1)).toNat)

end

end A125549.P14303313912654831689

/-! ## A125549.P1560767182276023646

`xor(A136350(n+1), A178487(A088214(n+1)))`
-/

namespace A125549.P1560767182276023646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A136350 (n + 1)) (A178487 (A088214 (n + 1)).toNat)

end

end A125549.P1560767182276023646

/-! ## A125549.P1722073718952759762

`xor(A136350(n+1), A165824(A136338(n+1)))`
-/

namespace A125549.P1722073718952759762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A136350 (n + 1)) (A165824 (A136338 (n + 1)).toNat)

end

end A125549.P1722073718952759762

/-! ## A125549.P13826974800554331186

`xor(A136350(n+1), A165824(A319248(n+1)))`
-/

namespace A125549.P13826974800554331186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A136350 (n + 1)) (A165824 (A319248 (n + 1)).toNat)

end

end A125549.P13826974800554331186

/-!
# A125550: a(n) = C(prime(n+2), prime(n)).

The programs for A125550, the canonical program `A125550.P15741989387128445011` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125550 has offset 1).

The definition of A125550 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 547 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A125550.P9939788313291299851

`C(A065091(n+2), record[A051698(n)])`
-/

namespace A125550.P9939788313291299851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A065091 (n + 2)).toNat (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A125550.P9939788313291299851

namespace A125550

/-- `C(A065091(n+2), record[A051698(n)])` -/
def P9939788313291299851.Spec : Prop :=
  ∀ n, (P9939788313291299851.a n : ℤ) = A125550 (n + 1)

end A125550

/-! ## A125550.P10428265080774817840

`C(A215848(n+1), p?[A001057(n)])`
-/

namespace A125550.P10428265080774817840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A215848 (n + 1)).toNat (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A125550.P10428265080774817840

namespace A125550

/-- `C(A215848(n+1), p?[A001057(n)])` -/
def P10428265080774817840.Spec : Prop :=
  ∀ n, (P10428265080774817840.a n : ℤ) = A125550 (n + 1)

end A125550

/-! ## A125550.P4774683080390142125

`C(A215848(n+1), p?[A014681(n)])`
-/

namespace A125550.P4774683080390142125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A215848 (n + 1)).toNat (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A125550.P4774683080390142125

namespace A125550

/-- `C(A215848(n+1), p?[A014681(n)])` -/
def P4774683080390142125.Spec : Prop :=
  ∀ n, (P4774683080390142125.a n : ℤ) = A125550 (n + 1)

end A125550

/-! ## A125550.P6318640957999080160

`C(A215848(n+1), p?[A074306(n)])`
-/

namespace A125550.P6318640957999080160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074306 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A215848 (n + 1)).toNat (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A125550.P6318640957999080160

namespace A125550

/-- `C(A215848(n+1), p?[A074306(n)])` -/
def P6318640957999080160.Spec : Prop :=
  ∀ n, (P6318640957999080160.a n : ℤ) = A125550 (n + 1)

end A125550

/-! ## A125550.P7758159307826412813

`C(A000040(n+3), p?[A259153(n)])`
-/

namespace A125550.P7758159307826412813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000040 (n + 3)).toNat (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A125550.P7758159307826412813

namespace A125550

/-- `C(A000040(n+3), p?[A259153(n)])` -/
def P7758159307826412813.Spec : Prop :=
  ∀ n, (P7758159307826412813.a n : ℤ) = A125550 (n + 1)

end A125550

/-! ## A125550.P8415513203867479115

`C(A000040(n+3), p?[A352844(n)])`
-/

namespace A125550.P8415513203867479115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352844 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000040 (n + 3)).toNat (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A125550.P8415513203867479115

namespace A125550

/-- `C(A000040(n+3), p?[A352844(n)])` -/
def P8415513203867479115.Spec : Prop :=
  ∀ n, (P8415513203867479115.a n : ℤ) = A125550 (n + 1)

end A125550

/-! ## A125550.P4842889284772925486

`C(A215848(n+1), A008578(n+2))`
-/

namespace A125550.P4842889284772925486
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A215848 (n + 1)).toNat (A008578 (n + 2)).toNat

end

end A125550.P4842889284772925486

namespace A125550

/-- `C(A215848(n+1), A008578(n+2))` -/
def P4842889284772925486.Spec : Prop :=
  ∀ n, (P4842889284772925486.a n : ℤ) = A125550 (n + 1)

end A125550

/-! ## A125550.P15741989387128445011

`C(A000040(n+3), A000040(n+1))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A125550

/-- `C(A000040(n+3), A000040(n+1))` -/
def P15741989387128445011.Spec : Prop :=
  ∀ n, (P15741989387128445011.a n : ℤ) = A125550 (n + 1)

theorem P15741989387128445011.correct : P15741989387128445011.Spec := by
  intro n
  simp only [A125550, Nat.add_sub_cancel]

end A125550

/-! ## A125550.P2010895606167119839

`C(A045344(n+2), A008578(n+2))`
-/

namespace A125550.P2010895606167119839
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A045344 (n + 2)).toNat (A008578 (n + 2)).toNat

end

end A125550.P2010895606167119839

namespace A125550

/-- `C(A045344(n+2), A008578(n+2))` -/
def P2010895606167119839.Spec : Prop :=
  ∀ n, (P2010895606167119839.a n : ℤ) = A125550 (n + 1)

end A125550

/-! ## A125550.P17060366794917571881

`C(A065091(n+2), A008578(n+2))`
-/

namespace A125550.P17060366794917571881
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A065091 (n + 2)).toNat (A008578 (n + 2)).toNat

end

end A125550.P17060366794917571881

namespace A125550

/-- `C(A065091(n+2), A008578(n+2))` -/
def P17060366794917571881.Spec : Prop :=
  ∀ n, (P17060366794917571881.a n : ℤ) = A125550 (n + 1)

end A125550

/-! ## A125550.P3182571601442005191

`C(A045344(n+2), A182986(n+2))`
-/

namespace A125550.P3182571601442005191
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A045344 (n + 2)).toNat (A182986 (n + 2)).toNat

end

end A125550.P3182571601442005191

namespace A125550

/-- `C(A045344(n+2), A182986(n+2))` -/
def P3182571601442005191.Spec : Prop :=
  ∀ n, (P3182571601442005191.a n : ℤ) = A125550 (n + 1)

end A125550

/-! ## A125550.P12785549431694098987

`C(A065091(n+2), A182986(n+2))`
-/

namespace A125550.P12785549431694098987
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A065091 (n + 2)).toNat (A182986 (n + 2)).toNat

end

end A125550.P12785549431694098987

namespace A125550

/-- `C(A065091(n+2), A182986(n+2))` -/
def P12785549431694098987.Spec : Prop :=
  ∀ n, (P12785549431694098987.a n : ℤ) = A125550 (n + 1)

end A125550

/-! ## A125550.P4277957557393770105

`C(A215848(n+1), sqrt(A001248(n+1)))`
-/

namespace A125550.P4277957557393770105
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A215848 (n + 1)).toNat (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

end

end A125550.P4277957557393770105

namespace A125550

/-- `C(A215848(n+1), sqrt(A001248(n+1)))` -/
def P4277957557393770105.Spec : Prop :=
  ∀ n, (P4277957557393770105.a n : ℤ) = A125550 (n + 1)

end A125550

/-! ## A125550.P6539961272076010697

`C(A215848(n+1), record[A084127(n+1)])`
-/

namespace A125550.P6539961272076010697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084127 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A215848 (n + 1)).toNat (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A125550.P6539961272076010697

namespace A125550

/-- `C(A215848(n+1), record[A084127(n+1)])` -/
def P6539961272076010697.Spec : Prop :=
  ∀ n, (P6539961272076010697.a n : ℤ) = A125550 (n + 1)

end A125550

/-! ## A125550.P4889320387454744537

`C(A065091(n+2), record[A014963(n+2)])`
-/

namespace A125550.P4889320387454744537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A065091 (n + 2)).toNat (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A125550.P4889320387454744537

namespace A125550

/-- `C(A065091(n+2), record[A014963(n+2)])` -/
def P4889320387454744537.Spec : Prop :=
  ∀ n, (P4889320387454744537.a n : ℤ) = A125550 (n + 1)

end A125550

/-! ## A125550.P11917216866851266218

`C(A006005(n+3), A006093(n+1)+1)`
-/

namespace A125550.P11917216866851266218
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006005 (n + 3)).toNat (A006093 (n + 1) + 1).toNat

end

end A125550.P11917216866851266218

namespace A125550

/-- `C(A006005(n+3), A006093(n+1)+1)` -/
def P11917216866851266218.Spec : Prop :=
  ∀ n, (P11917216866851266218.a n : ℤ) = A125550 (n + 1)

end A125550

/-! ## A125550.P5610207906520517768

`C(A065091(n+2), p?[A018252(n+1)-7])`
-/

namespace A125550.P5610207906520517768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A065091 (n + 2)).toNat (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A125550.P5610207906520517768

namespace A125550

/-- `C(A065091(n+2), p?[A018252(n+1)-7])` -/
def P5610207906520517768.Spec : Prop :=
  ∀ n, (P5610207906520517768.a n : ℤ) = A125550 (n + 1)

end A125550

/-! ## A125550.P12029611104882484991

`C(A006005(n+3), p?[A018252(n+1)-7])`
-/

namespace A125550.P12029611104882484991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006005 (n + 3)).toNat (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A125550.P12029611104882484991

namespace A125550

/-- `C(A006005(n+3), p?[A018252(n+1)-7])` -/
def P12029611104882484991.Spec : Prop :=
  ∀ n, (P12029611104882484991.a n : ℤ) = A125550 (n + 1)

end A125550

/-! ## A125550.P17268913926087266193

`C(A215848(n+1), A006530(A001748(n+1)))`
-/

namespace A125550.P17268913926087266193
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A215848 (n + 1)).toNat (A006530 (A001748 (n + 1)).toNat).toNat

end

end A125550.P17268913926087266193

namespace A125550

/-- `C(A215848(n+1), A006530(A001748(n+1)))` -/
def P17268913926087266193.Spec : Prop :=
  ∀ n, (P17268913926087266193.a n : ℤ) = A125550 (n + 1)

end A125550

/-! ## A125550.P16502687087903273529

`C(A215848(n+1), A006530(A001749(n+1)))`
-/

namespace A125550.P16502687087903273529
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A215848 (n + 1)).toNat (A006530 (A001749 (n + 1)).toNat).toNat

end

end A125550.P16502687087903273529

namespace A125550

/-- `C(A215848(n+1), A006530(A001749(n+1)))` -/
def P16502687087903273529.Spec : Prop :=
  ∀ n, (P16502687087903273529.a n : ℤ) = A125550 (n + 1)

end A125550

/-!
# A125551: As p runs through primes >= 5, sequence gives { numerator of Sum_{k=1..p-1} 1/k^2 } / p.

The programs for A125551, there is no canonical definition to state claims against.
-/

/-! ## A125551.P7800480702020411113

`A186722(n+3)/A020621(n+1)`
-/

namespace A125551.P7800480702020411113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186722 (n + 3) : ℚ) / (A020621 (n + 1) : ℚ)

end

end A125551.P7800480702020411113

/-! ## A125551.P15746112764113198849

`A186722(n+3)/A020624(n+1)`
-/

namespace A125551.P15746112764113198849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186722 (n + 3) : ℚ) / (A020624 (n + 1) : ℚ)

end

end A125551.P15746112764113198849

/-!
# A125552: Maximal value of m such that 3^m <= n! : a(n) = floor( log(n!) / log(3) ).

The programs for A125552, the canonical program `A125552.P6262566538800102554` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125552 has offset 2).

The definition of A125552 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A125552.P6262566538800102554

`floor(∑[log(n+2)/log(3)])`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A125552

/-- `floor(∑[log(n+2)/log(3)])` -/
def P6262566538800102554.Spec : Prop :=
  ∀ n, P6262566538800102554.a n = A125552 (n + 2)

theorem P6262566538800102554.correct : P6262566538800102554.Spec := by
  intro n
  simp only [A125552, Nat.add_sub_cancel]

end A125552

/-! ## A125552.P8060864399089571904

`A213857(n+2)-1`
-/

namespace A125552.P8060864399089571904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213857 (n + 2) - 1

end

end A125552.P8060864399089571904

namespace A125552

/-- `A213857(n+2)-1` -/
def P8060864399089571904.Spec : Prop :=
  ∀ n, P8060864399089571904.a n = A125552 (n + 2)

end A125552

/-! ## A125552.P16426370895777214780

`A023443(A213857(n+2))`
-/

namespace A125552.P16426370895777214780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A213857 (n + 2)).toNat

end

end A125552.P16426370895777214780

namespace A125552

/-- `A023443(A213857(n+2))` -/
def P16426370895777214780.Spec : Prop :=
  ∀ n, P16426370895777214780.a n = A125552 (n + 2)

end A125552

/-! ## A125552.P3993159121905179647

`∑[A004086(Δ[A213857(n+1)])]`
-/

namespace A125552.P3993159121905179647
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213857 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125552.P3993159121905179647

namespace A125552

/-- `∑[A004086(Δ[A213857(n+1)])]` -/
def P3993159121905179647.Spec : Prop :=
  ∀ n, P3993159121905179647.a n = A125552 (n + 2)

end A125552

/-! ## A125552.P13128622750909777303

`∑[A007953(Δ[A213857(n+1)])]`
-/

namespace A125552.P13128622750909777303
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213857 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125552.P13128622750909777303

namespace A125552

/-- `∑[A007953(Δ[A213857(n+1)])]` -/
def P13128622750909777303.Spec : Prop :=
  ∀ n, P13128622750909777303.a n = A125552 (n + 2)

end A125552

/-! ## A125552.P17031836519674238087

`∑[A055645(Δ[A213857(n+1)])]`
-/

namespace A125552.P17031836519674238087
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213857 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055645 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125552.P17031836519674238087

namespace A125552

/-- `∑[A055645(Δ[A213857(n+1)])]` -/
def P17031836519674238087.Spec : Prop :=
  ∀ n, P17031836519674238087.a n = A125552 (n + 2)

end A125552

/-! ## A125552.P3726028281685850940

`∑[A055649(Δ[A213857(n+1)])]`
-/

namespace A125552.P3726028281685850940
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213857 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055649 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125552.P3726028281685850940

namespace A125552

/-- `∑[A055649(Δ[A213857(n+1)])]` -/
def P3726028281685850940.Spec : Prop :=
  ∀ n, P3726028281685850940.a n = A125552 (n + 2)

end A125552

/-! ## A125552.P1471906579266438242

`∑[Δ[A213857(n+1)]%A039649(n+1)]`
-/

namespace A125552.P1471906579266438242
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213857 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A039649 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125552.P1471906579266438242

namespace A125552

/-- `∑[Δ[A213857(n+1)]%A039649(n+1)]` -/
def P1471906579266438242.Spec : Prop :=
  ∀ n, P1471906579266438242.a n = A125552 (n + 2)

end A125552

/-! ## A125552.P1367590951637115742

`abs(A001057(2*A213857(n+2))+1)`
-/

namespace A125552.P1367590951637115742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001057 (2 * A213857 (n + 2)).toNat + 1|

end

end A125552.P1367590951637115742

namespace A125552

/-- `abs(A001057(2*A213857(n+2))+1)` -/
def P1367590951637115742.Spec : Prop :=
  ∀ n, P1367590951637115742.a n = A125552 (n + 2)

end A125552

/-!
# A125553: Triangle read by rows: T(n,k) = S1(n,k)*2^k, where S1(n,k) is an unsigned Stirling number of the first kind (cf. A008275) (n >= 1, 1 <= k <= n).

The programs for A125553, there is no canonical definition to state claims against.
-/

/-! ## A125553.P12175399792227395879

`2*A059268(n)*A130534(n)`
-/

namespace A125553.P12175399792227395879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A059268 n * A130534 n)

end

end A125553.P12175399792227395879

/-! ## A125553.P14487463717312846001

`A137320(comp[∑[n]])`
-/

namespace A125553.P14487463717312846001
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137320 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A125553.P14487463717312846001

/-! ## A125553.P18070405908457942152

`abs(A137312(comp[∑[n]]))`
-/

namespace A125553.P18070405908457942152
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A137312 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)|

end

end A125553.P18070405908457942152

/-! ## A125553.P1433944569079947872

`lcm(2, A137312(A014132(n+1)))`
-/

namespace A125553.P1433944569079947872
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A137312 (A014132 (n + 1)).toNat)

end

end A125553.P1433944569079947872

/-! ## A125553.P10710964787219994322

`A097807(n)*A137312(comp[∑[n]])`
-/

namespace A125553.P10710964787219994322
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A137312 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A125553.P10710964787219994322

/-!
# A125554: a(0)=2. a(n) = the a(n-1)th integer from among those positive integers coprime to n.

The programs for A125554, there is no canonical definition to state claims against.
-/

/-! ## A125554.P12037275333982517615

`A214526(A025192(n))+A040001(3*n+4)`
-/

namespace A125554.P12037275333982517615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214526 (A025192 n).toNat + A040001 (3 * n + 4)

end

end A125554.P12037275333982517615

/-!
# A125555: Theta series of 4-dimensional lattice S(7) with Gram matrix [ 3, 1, 0, -1; 1, 3, 1, 0; 0, 1, 3, 1; -1, 0, 1, 3 ].

The programs for A125555, there is no canonical definition to state claims against.
-/

/-! ## A125555.P1105933433228390852

`A028997(n/gcd(2, n))`
-/

namespace A125555.P1105933433228390852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028997 (SequenceMachineLib.roundAway ((n : ℚ) / (Nat.gcd 2 n : ℚ))).toNat

end

end A125555.P1105933433228390852

/-! ## A125555.P16491722738626677188

`A028997(n/(2-n%2))`
-/

namespace A125555.P16491722738626677188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028997 (SequenceMachineLib.roundAway ((n : ℚ) / (2 - ((n % 2 : ℕ) : ℤ) : ℚ))).toNat

end

end A125555.P16491722738626677188

/-! ## A125555.P1554599475883213282

`A028997(A026741(n))`
-/

namespace A125555.P1554599475883213282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028997 (A026741 n).toNat

end

end A125555.P1554599475883213282

/-! ## A125555.P16539228840232959996

`A028997(A106615(n))`
-/

namespace A125555.P16539228840232959996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028997 (A106615 n).toNat

end

end A125555.P16539228840232959996

/-! ## A125555.P13640312962275202952

`A028997(gcd(n, A000217(n)))`
-/

namespace A125555.P13640312962275202952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028997 (Int.gcd (n : ℤ) (A000217 n))

end

end A125555.P13640312962275202952

/-! ## A125555.P5976891610764199407

`A028997(A195159(n))`
-/

namespace A125555.P5976891610764199407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028997 (A195159 n).toNat

end

end A125555.P5976891610764199407

/-!
# A125556: Smallest prime p = n*m + 1 that divides m^m - 1 for some m > 1.

The programs for A125556, there is no canonical definition to state claims against.
-/

/-! ## A125556.P4997663817362089225

`(n+1)*A177494(n+1)+1`
-/

namespace A125556.P4997663817362089225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A177494 (n + 1) + 1

end

end A125556.P4997663817362089225

/-! ## A125556.P12914317913235575643

`A151800((n+1)*A177494(n+1))`
-/

namespace A125556.P12914317913235575643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 ((n + 1 : ℤ) * A177494 (n + 1)).toNat

end

end A125556.P12914317913235575643

/-! ## A125556.P16294374307544784489

`A004442((n+1)*A177494(n+1))`
-/

namespace A125556.P16294374307544784489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 ((n + 1 : ℤ) * A177494 (n + 1)).toNat

end

end A125556.P16294374307544784489

/-! ## A125556.P5272070031971388626

`A086507((n+1)*A177494(n+1))`
-/

namespace A125556.P5272070031971388626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086507 ((n + 1 : ℤ) * A177494 (n + 1)).toNat

end

end A125556.P5272070031971388626

/-!
# A125557: Primes in the sequence a(n)=n^2+3/2-1/2*(-1)^n.

The programs for A125557, the canonical program `A125557.P209641272661717766` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125557 has offset 1).

The definition of A125557 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 179 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A125557.P209641272661717766

`p?[or(1, n²+1)]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A125557

/-- `p?[or(1, n²+1)]` -/
def P209641272661717766.Spec : Prop :=
  ∀ n, (P209641272661717766.a n : ℤ) = A125557 (n + 1)

theorem P209641272661717766.correct : P209641272661717766.Spec := by
  intro n
  simp only [A125557, Nat.add_sub_cancel]

end A125557

/-! ## A125557.P3944299565143196343

`p?[2-or(1, -n²)]`
-/

namespace A125557.P3944299565143196343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.lor 1 (-(n ^ 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A125557.P3944299565143196343

namespace A125557

/-- `p?[2-or(1, -n²)]` -/
def P3944299565143196343.Spec : Prop :=
  ∀ n, P3944299565143196343.a n = A125557 (n + 1)

end A125557

/-! ## A125557.P16151806166780093145

`p?[n%2+n²+1]`
-/

namespace A125557.P16151806166780093145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + (n ^ 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A125557.P16151806166780093145

namespace A125557

/-- `p?[n%2+n²+1]` -/
def P16151806166780093145.Spec : Prop :=
  ∀ n, (P16151806166780093145.a n : ℤ) = A125557 (n + 1)

end A125557

/-! ## A125557.P14978465898457974293

`p?[gcd(2, n+1)+n²]`
-/

namespace A125557.P14978465898457974293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1) + n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A125557.P14978465898457974293

namespace A125557

/-- `p?[gcd(2, n+1)+n²]` -/
def P14978465898457974293.Spec : Prop :=
  ∀ n, (P14978465898457974293.a n : ℤ) = A125557 (n + 1)

end A125557

/-! ## A125557.P3227215071845067675

`p?[and(1, n)+n²+1]`
-/

namespace A125557.P3227215071845067675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + (n ^ 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A125557.P3227215071845067675

namespace A125557

/-- `p?[and(1, n)+n²+1]` -/
def P3227215071845067675.Spec : Prop :=
  ∀ n, (P3227215071845067675.a n : ℤ) = A125557 (n + 1)

end A125557

/-! ## A125557.P16411968307945792554

`p?[a(n-2)+4*n]` with `a(0)=3, a(1)=5`
-/

namespace A125557.P16411968307945792554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 5] fun n f1 =>
  f1 (n - 2) + 4 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A125557.P16411968307945792554

namespace A125557

/-- `p?[a(n-2)+4*n]` -/
def P16411968307945792554.Spec : Prop :=
  ∀ n, (P16411968307945792554.a n : ℤ) = A125557 (n + 1)

end A125557

/-! ## A125557.P17261123407590547730

`p?[A286264(n+1)]`
-/

namespace A125557.P17261123407590547730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286264 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A125557.P17261123407590547730

namespace A125557

/-- `p?[A286264(n+1)]` -/
def P17261123407590547730.Spec : Prop :=
  ∀ n, P17261123407590547730.a n = A125557 (n + 1)

end A125557

/-! ## A125557.P18445786711036303857

`p?[xor(1, A137224(n))]`
-/

namespace A125557.P18445786711036303857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A137224 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A125557.P18445786711036303857

namespace A125557

/-- `p?[xor(1, A137224(n))]` -/
def P18445786711036303857.Spec : Prop :=
  ∀ n, P18445786711036303857.a n = A125557 (n + 1)

end A125557

/-! ## A125557.P4064654762405982681

`p?[A000034(n)+n²]`
-/

namespace A125557.P4064654762405982681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A125557.P4064654762405982681

namespace A125557

/-- `p?[A000034(n)+n²]` -/
def P4064654762405982681.Spec : Prop :=
  ∀ n, P4064654762405982681.a n = A125557 (n + 1)

end A125557

/-! ## A125557.P7955005897025010093

`p?[A006446(n+1)+2]`
-/

namespace A125557.P7955005897025010093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006446 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A125557.P7955005897025010093

namespace A125557

/-- `p?[A006446(n+1)+2]` -/
def P7955005897025010093.Spec : Prop :=
  ∀ n, P7955005897025010093.a n = A125557 (n + 1)

end A125557

/-! ## A125557.P11005039873152949361

`p?[A085046(n+1)+2]`
-/

namespace A125557.P11005039873152949361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085046 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A125557.P11005039873152949361

namespace A125557

/-- `p?[A085046(n+1)+2]` -/
def P11005039873152949361.Spec : Prop :=
  ∀ n, P11005039873152949361.a n = A125557 (n + 1)

end A125557

/-! ## A125557.P2360653339313724972

`p?[A135276(n+1)+2]`
-/

namespace A125557.P2360653339313724972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135276 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A125557.P2360653339313724972

namespace A125557

/-- `p?[A135276(n+1)+2]` -/
def P2360653339313724972.Spec : Prop :=
  ∀ n, P2360653339313724972.a n = A125557 (n + 1)

end A125557

/-! ## A125557.P7768617983633815045

`p?[A008811(2*n)+1]`
-/

namespace A125557.P7768617983633815045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008811 (2 * n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A125557.P7768617983633815045

namespace A125557

/-- `p?[A008811(2*n)+1]` -/
def P7768617983633815045.Spec : Prop :=
  ∀ n, P7768617983633815045.a n = A125557 (n + 1)

end A125557

/-! ## A125557.P16190973364437909560

`p?[A137224(2*n)+1]`
-/

namespace A125557.P16190973364437909560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137224 (2 * n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A125557.P16190973364437909560

namespace A125557

/-- `p?[A137224(2*n)+1]` -/
def P16190973364437909560.Spec : Prop :=
  ∀ n, P16190973364437909560.a n = A125557 (n + 1)

end A125557

/-! ## A125557.P6962187067707837892

`∩[A079545(n+1), A286264(n+1)]`
-/

namespace A125557.P6962187067707837892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286264 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125557.P6962187067707837892

namespace A125557

/-- `∩[A079545(n+1), A286264(n+1)]` -/
def P6962187067707837892.Spec : Prop :=
  ∀ n, (P6962187067707837892.a n : ℤ) = A125557 (n + 1)

end A125557

/-!
# A125558: Central column of triangle A090181.

The programs for A125558, there is no canonical definition to state claims against.
-/

/-! ## A125558.P3291689775708710851

`ceil(A000888(n)/2)`
-/

namespace A125558.P3291689775708710851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000888 n : ℚ) / 2⌉

end

end A125558.P3291689775708710851

/-! ## A125558.P13505755914433697391

`A005558(comp[2*(n+1)])`
-/

namespace A125558.P13505755914433697391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005558 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A125558.P13505755914433697391

/-! ## A125558.P4583177371544116578

`ceil((n+1)/2*A000108(n)²)`
-/

namespace A125558.P4583177371544116578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / 2 * (A000108 n ^ 2 : ℚ)⌉

end

end A125558.P4583177371544116578

/-! ## A125558.P5273774283982836465

`A000888(A028310(n))/2`
-/

namespace A125558.P5273774283982836465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000888 (A028310 n).toNat : ℚ) / 2

end

end A125558.P5273774283982836465

/-! ## A125558.P7460748333950442597

`A000108(n)*A088218(n)`
-/

namespace A125558.P7460748333950442597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A088218 n

end

end A125558.P7460748333950442597

/-! ## A125558.P167045438478684570

`A110556(n)*A168491(n)`
-/

namespace A125558.P167045438478684570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110556 n * A168491 n

end

end A125558.P167045438478684570

/-! ## A125558.P15440530405281378241

`A088218(n)*A120588(n+1)`
-/

namespace A125558.P15440530405281378241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 n * A120588 (n + 1)

end

end A125558.P15440530405281378241

/-! ## A125558.P3625229546637617932

`(A260878(n)-1)*A000108(n)`
-/

namespace A125558.P3625229546637617932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A260878 n - 1) * A000108 n

end

end A125558.P3625229546637617932

/-! ## A125558.P9418104220521112064

`A028304(2*n)*A088218(n)`
-/

namespace A125558.P9418104220521112064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028304 (2 * n) * A088218 n

end

end A125558.P9418104220521112064

/-! ## A125558.P11673190896179960989

`A000108(n)*A210736(2*n)`
-/

namespace A125558.P11673190896179960989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A210736 (2 * n)

end

end A125558.P11673190896179960989

/-!
# A125559: Numbers k such that 2k^3 + 7 is prime. For k >= 8, bases in which 2007 is prime.

The programs for A125559, there is no canonical definition to state claims against.
-/

/-! ## A125559.P1120107289613161923

`lt[∑{e}[A000578(n)+A000578(n)+7, #], 2]`
-/

namespace A125559.P1120107289613161923
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n + (A000578 n + 7)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A125559.P1120107289613161923

/-! ## A125559.P12581268240658774156

`eq[1, A001222(2*n^3+7)]`
-/

namespace A125559.P12581268240658774156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n ^ 3 + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A125559.P12581268240658774156

/-! ## A125559.P13995336052638312645

`eq[2, A000005(2*n^3+7)]`
-/

namespace A125559.P13995336052638312645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n ^ 3 + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A125559.P13995336052638312645

/-! ## A125559.P12737433259679610757

`lt[A001222(2*n*n²+7), 2]`
-/

namespace A125559.P12737433259679610757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * (n * n ^ 2) + 7)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A125559.P12737433259679610757

/-! ## A125559.P9740544751919685706

`lt[A000005(2*(n^3+3)+1), 3]`
-/

namespace A125559.P9740544751919685706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * (n ^ 3 + 3) + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A125559.P9740544751919685706

/-!
# A125561: Theta series of 5-dimensional lattice A_5^{+2}.

The programs for A125561, there is no canonical definition to state claims against.
-/

/-! ## A125561.P1604071564703845979

`A023917(∑[6-a(n-2)])` with `a(0)=0, a(1)=4, a(2)=0, a(3)=5, a(4)=3`
-/

namespace A125561.P1604071564703845979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 4, 0, 5, 3] fun n f1 =>
  6 - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023917 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A125561.P1604071564703845979

/-! ## A125561.P14196482147044574485

`A023917(A112652(n))`
-/

namespace A125561.P14196482147044574485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023917 (A112652 n).toNat

end

end A125561.P14196482147044574485

/-! ## A125561.P2582691373466623704

`A023917(A218155(n+1)-2)`
-/

namespace A125561.P2582691373466623704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023917 (A218155 (n + 1) - 2).toNat

end

end A125561.P2582691373466623704

/-! ## A125561.P11861623084330479436

`A023917(3*n)`
-/

namespace A125561.P11861623084330479436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023917 (3 * n)

end

end A125561.P11861623084330479436

/-! ## A125561.P92515037444612758

`A023917(A008486(n))+A000007(n)`
-/

namespace A125561.P92515037444612758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023917 (A008486 n).toNat + A000007 n

end

end A125561.P92515037444612758

/-! ## A125561.P8306927020007790418

`A023917(A008574(n)-n)+A000007(n)`
-/

namespace A125561.P8306927020007790418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023917 (A008574 n - (n : ℤ)).toNat + A000007 n

end

end A125561.P8306927020007790418

/-! ## A125561.P7862797997108062660

`A030385(A039710(n+1))+A023917(A008486(n))`
-/

namespace A125561.P7862797997108062660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030385 (A039710 (n + 1)).toNat + A023917 (A008486 n).toNat

end

end A125561.P7862797997108062660

/-! ## A125561.P5166794312650246401

`A023917(A072833(n))-A023917(A174398(n+2))`
-/

namespace A125561.P5166794312650246401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023917 (A072833 n).toNat - A023917 (A174398 (n + 2)).toNat

end

end A125561.P5166794312650246401

/-! ## A125561.P8247650423101805569

`A023917(A008486(n))+A000035(A008458(n))`
-/

namespace A125561.P8247650423101805569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023917 (A008486 n).toNat + A000035 (A008458 n).toNat

end

end A125561.P8247650423101805569

/-! ## A125561.P4634000221633513694

`A023917(A008486(n))+A000035(A023917(n))`
-/

namespace A125561.P4634000221633513694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023917 (A008486 n).toNat + A000035 (A023917 n).toNat

end

end A125561.P4634000221633513694

/-!
# A125562: a(n) = denominator of (2n + 1)!/3^n.

The programs for A125562, the canonical program `A125562.P4991088652026869533` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125562 has offset 0).

The definition of A125562 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A125562.P4991088652026869533

`A147610(A065361(n)+2)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A125562

/-- `A147610(A065361(n)+2)` -/
def P4991088652026869533.Spec : Prop :=
  ∀ n, P4991088652026869533.a n = A125562 n

theorem P4991088652026869533.correct : P4991088652026869533.Spec := by
  intro n
  simp only [A125562]

end A125562

/-! ## A125562.P5570033228031451709

`3^(n-A054861(2*n+1))`
-/

namespace A125562.P5570033228031451709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - A054861 (2 * n + 1) : ℤ)

end

end A125562.P5570033228031451709

namespace A125562

/-- `3^(n-A054861(2*n+1))` -/
def P5570033228031451709.Spec : Prop :=
  ∀ n, P5570033228031451709.a n = (A125562 n : ℚ)

end A125562

/-! ## A125562.P12895735296945677191

`A108411(A053735(2*n+1))`
-/

namespace A125562.P12895735296945677191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108411 (A053735 (2 * n + 1)).toNat

end

end A125562.P12895735296945677191

namespace A125562

/-- `A108411(A053735(2*n+1))` -/
def P12895735296945677191.Spec : Prop :=
  ∀ n, P12895735296945677191.a n = A125562 n

end A125562

/-! ## A125562.P17803740068531915282

`A130599(A053735(n+1+n))`
-/

namespace A125562.P17803740068531915282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130599 (A053735 (n + 1 + n)).toNat

end

end A125562.P17803740068531915282

namespace A125562

/-- `A130599(A053735(n+1+n))` -/
def P17803740068531915282.Spec : Prop :=
  ∀ n, P17803740068531915282.a n = A125562 n

end A125562

/-! ## A125562.P7854913307402947885

`A038754(A053735(2*n+1)-1)`
-/

namespace A125562.P7854913307402947885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 (A053735 (2 * n + 1) - 1).toNat

end

end A125562.P7854913307402947885

namespace A125562

/-- `A038754(A053735(2*n+1)-1)` -/
def P7854913307402947885.Spec : Prop :=
  ∀ n, P7854913307402947885.a n = A125562 n

end A125562

/-! ## A125562.P11069400911551086936

`A254006(A053735(2*n+1)-1)`
-/

namespace A125562.P11069400911551086936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254006 (A053735 (2 * n + 1) - 1).toNat

end

end A125562.P11069400911551086936

namespace A125562

/-- `A254006(A053735(2*n+1)-1)` -/
def P11069400911551086936.Spec : Prop :=
  ∀ n, P11069400911551086936.a n = A125562 n

end A125562

/-! ## A125562.P17760331899995659115

`A000244(n-A054861(2*n+1))`
-/

namespace A125562.P17760331899995659115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 ((n : ℤ) - A054861 (2 * n + 1)).toNat

end

end A125562.P17760331899995659115

namespace A125562

/-- `A000244(n-A054861(2*n+1))` -/
def P17760331899995659115.Spec : Prop :=
  ∀ n, P17760331899995659115.a n = A125562 n

end A125562

/-! ## A125562.P2774678802765086050

`gcd(A056449(n), A364645(n))`
-/

namespace A125562.P2774678802765086050
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056449 n) (A364645 n)

end

end A125562.P2774678802765086050

namespace A125562

/-- `gcd(A056449(n), A364645(n))` -/
def P2774678802765086050.Spec : Prop :=
  ∀ n, (P2774678802765086050.a n : ℤ) = A125562 n

end A125562

/-! ## A125562.P10919037413320827045

`A000244(n)/A060828(2*n+1)`
-/

namespace A125562.P10919037413320827045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000244 n : ℚ) / (A060828 (2 * n + 1) : ℚ)

end

end A125562.P10919037413320827045

namespace A125562

/-- `A000244(n)/A060828(2*n+1)` -/
def P10919037413320827045.Spec : Prop :=
  ∀ n, P10919037413320827045.a n = (A125562 n : ℚ)

end A125562

/-! ## A125562.P12887086867669019853

`A000244(n)/A000244(A054861(2*n+1))`
-/

namespace A125562.P12887086867669019853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000244 n : ℚ) / (A000244 (A054861 (2 * n + 1)).toNat : ℚ)

end

end A125562.P12887086867669019853

namespace A125562

/-- `A000244(n)/A000244(A054861(2*n+1))` -/
def P12887086867669019853.Spec : Prop :=
  ∀ n, P12887086867669019853.a n = (A125562 n : ℚ)

end A125562

/-! ## A125562.P4634203657275943855

`A017913(2*n)/A017913(A344853(2*n+1))`
-/

namespace A125562.P4634203657275943855
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017913 (2 * n) : ℚ) / (A017913 (A344853 (2 * n + 1)).toNat : ℚ)

end

end A125562.P4634203657275943855

namespace A125562

/-- `A017913(2*n)/A017913(A344853(2*n+1))` -/
def P4634203657275943855.Spec : Prop :=
  ∀ n, P4634203657275943855.a n = (A125562 n : ℚ)

end A125562

/-! ## A125562.P2834002666390072137

`A125824(2*n+1)/A000244(n+1)`
-/

namespace A125562.P2834002666390072137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125824 (2 * n + 1) : ℚ) / (A000244 (n + 1) : ℚ)

end

end A125562.P2834002666390072137

namespace A125562

/-- `A125824(2*n+1)/A000244(n+1)` -/
def P2834002666390072137.Spec : Prop :=
  ∀ n, P2834002666390072137.a n = (A125562 n : ℚ)

end A125562

/-! ## A125562.P17439537431236613189

`A125824(2*n+1)/record[A125824(n+1)]`
-/

namespace A125562.P17439537431236613189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125824 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125824 (2 * n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A125562.P17439537431236613189

namespace A125562

/-- `A125824(2*n+1)/record[A125824(n+1)]` -/
def P17439537431236613189.Spec : Prop :=
  ∀ n, P17439537431236613189.a n = (A125562 n : ℚ)

end A125562

/-! ## A125562.P16740224716770161740

`A000244(A089792(2*n+1))/A000244(n+1)`
-/

namespace A125562.P16740224716770161740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000244 (A089792 (2 * n + 1)).toNat : ℚ) / (A000244 (n + 1) : ℚ)

end

end A125562.P16740224716770161740

namespace A125562

/-- `A000244(A089792(2*n+1))/A000244(n+1)` -/
def P16740224716770161740.Spec : Prop :=
  ∀ n, P16740224716770161740.a n = (A125562 n : ℚ)

end A125562

/-! ## A125562.P6937674766286274308

`gcd(A000244(n), A143046(n))`
-/

namespace A125562.P6937674766286274308
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000244 n) (A143046 n)

end

end A125562.P6937674766286274308

namespace A125562

/-- `gcd(A000244(n), A143046(n))` -/
def P6937674766286274308.Spec : Prop :=
  ∀ n, (P6937674766286274308.a n : ℤ) = A125562 n

end A125562

/-! ## A125562.P15184129311084324685

`gcd(A000244(n+1), A047749(2*n))`
-/

namespace A125562.P15184129311084324685
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000244 (n + 1)) (A047749 (2 * n))

end

end A125562.P15184129311084324685

namespace A125562

/-- `gcd(A000244(n+1), A047749(2*n))` -/
def P15184129311084324685.Spec : Prop :=
  ∀ n, (P15184129311084324685.a n : ℤ) = A125562 n

end A125562

/-! ## A125562.P2456006362933017294

`gcd(A000244(n+1), A045721(n))`
-/

namespace A125562.P2456006362933017294
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000244 (n + 1)) (A045721 n)

end

end A125562.P2456006362933017294

namespace A125562

/-- `gcd(A000244(n+1), A045721(n))` -/
def P2456006362933017294.Spec : Prop :=
  ∀ n, (P2456006362933017294.a n : ℤ) = A125562 n

end A125562

/-! ## A125562.P965491911895254119

`gcd(floor(9^(n-1)), A001764(n))`
-/

namespace A125562.P965491911895254119
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊(9 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ (A001764 n)

end

end A125562.P965491911895254119

namespace A125562

/-- `gcd(floor(9^(n-1)), A001764(n))` -/
def P965491911895254119.Spec : Prop :=
  ∀ n, (P965491911895254119.a n : ℤ) = A125562 n

end A125562

/-!
# A125563: Denominator of (4n+1)!/5^n.

The programs for A125563, there is no canonical definition to state claims against.
-/

/-! ## A125563.P15816121732551383107

`gcd(A000351(n), A002294(n))`
-/

namespace A125563.P15816121732551383107
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000351 n) (A002294 n)

end

end A125563.P15816121732551383107

/-! ## A125563.P9383699283045586445

`gcd(5^n, A002443(Δ[n²]))`
-/

namespace A125563.P9383699283045586445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (5 ^ n : ℤ) (A002443 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A125563.P9383699283045586445

/-!
# A125564: Theta series of 5-dimensional lattice A_5^{+3}.

The programs for A125564, there is no canonical definition to state claims against.
-/

/-! ## A125564.P12736269545358929985

`A023917(4*n)`
-/

namespace A125564.P12736269545358929985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023917 (4 * n)

end

end A125564.P12736269545358929985

/-! ## A125564.P10628349401359182172

`A023917(A008574(n))+A000007(n)`
-/

namespace A125564.P10628349401359182172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023917 (A008574 n).toNat + A000007 n

end

end A125564.P10628349401359182172

/-! ## A125564.P2688225419946130082

`A023917(A008486(n)+n)+A000007(n)`
-/

namespace A125564.P2688225419946130082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023917 (A008486 n + (n : ℤ)).toNat + A000007 n

end

end A125564.P2688225419946130082

/-! ## A125564.P12354368786137624454

`A023917(A005843(A005843(n)))%A158684(n+1)`
-/

namespace A125564.P12354368786137624454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023917 (A005843 (A005843 n).toNat).toNat) (A158684 (n + 1))

end

end A125564.P12354368786137624454

/-! ## A125564.P13240872063882608031

`A023917(A008486(n)+n)+A000035(A008458(n))`
-/

namespace A125564.P13240872063882608031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023917 (A008486 n + (n : ℤ)).toNat + A000035 (A008458 n).toNat

end

end A125564.P13240872063882608031

/-! ## A125564.P5936221509484483205

`A094497(∑[n+1]+1)+A023917(A008486(n)+n)`
-/

namespace A125564.P5936221509484483205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094497 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + A023917 (A008486 n + (n : ℤ)).toNat

end

end A125564.P5936221509484483205

/-!
# A125567: Numbers k such that Sum_{x=2..k} (x-1)*3^(x-2) = ((2*k-3)*3^(k-1)+1)/4 is prime.

The programs for A125567, there is no canonical definition to state claims against.
-/

/-! ## A125567.P6955900634254445645

`A099375(A141358(n))*A305797(n+1)`
-/

namespace A125567.P6955900634254445645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 (A141358 n).toNat * A305797 (n + 1)

end

end A125567.P6955900634254445645

/-!
# A125568: a(0)=1. For n>=1, n-th run consists of the integers (in ascending order) of n through a(n-1)+n-1.

The programs for A125568, there is no canonical definition to state claims against.
-/

/-! ## A125568.P15283752379235184207

`A134478(lt[A008554(n+1), A144280(n+1)])`
-/

namespace A125568.P15283752379235184207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144280 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134478 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A125568.P15283752379235184207

/-! ## A125568.P11454315168493720764

`A134478(lt[A056943(2*n), A144280(n+1)])`
-/

namespace A125568.P11454315168493720764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056943 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144280 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134478 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A125568.P11454315168493720764

/-! ## A125568.P9692214537339195497

`A101504(n)+A105519(n)%A331946(n+1)`
-/

namespace A125568.P9692214537339195497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101504 n + Int.tmod (A105519 n) (A331946 (n + 1))

end

end A125568.P9692214537339195497

/-! ## A125568.P3151100826400846558

`A134478(lt[A185953(2*(n+1)), A136230(n)])`
-/

namespace A125568.P3151100826400846558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185953 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136230 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134478 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A125568.P3151100826400846558

/-! ## A125568.P13234966580099572925

`A134478(lt[A325152(n+1), A167560(n+1)])`
-/

namespace A125568.P13234966580099572925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167560 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134478 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A125568.P13234966580099572925

/-!
# A125569: Numbers k such that Sum_{j=1..k-1} j*5^(j-1) is prime.

The programs for A125569, there is no canonical definition to state claims against.
-/

/-! ## A125569.P15892003830260481216

`A060372(A000214(n+1))+A051889(n)`
-/

namespace A125569.P15892003830260481216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060372 (A000214 (n + 1)).toNat + A051889 n

end

end A125569.P15892003830260481216

/-!
# A125573: a(n) = number of n-digit terms with different sets of decimal digits in A108571.

The programs for A125573, there is no canonical definition to state claims against.
-/

/-! ## A125573.P8670731320749188719

`A034139(n+1)`
-/

namespace A125573.P8670731320749188719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034139 (n + 1)

end

end A125573.P8670731320749188719

/-! ## A125573.P15666626793270889503

`A026836(eq[10, A002262(n)])`
-/

namespace A125573.P15666626793270889503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026836 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A125573.P15666626793270889503

/-! ## A125573.P11245389422416197694

`A034139(A008619(2*n))%25`
-/

namespace A125573.P11245389422416197694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034139 (A008619 (2 * n)).toNat) 25

end

end A125573.P11245389422416197694

/-! ## A125573.P4193158893735771853

`A026836(eq[11, A002260(n+1)])`
-/

namespace A125573.P4193158893735771853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026836 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A125573.P4193158893735771853

/-! ## A125573.P16948226586525505920

`A070936(A000096(n+9)+n+2)`
-/

namespace A125573.P16948226586525505920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070936 (A000096 (n + 9) + (n + 2 : ℤ)).toNat

end

end A125573.P16948226586525505920

/-!
# A125575: Initial digit of squares of primes.

The programs for A125575, the canonical program `A125575.P7635791061298922058` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125575 has offset 1).

The definition of A125575 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000030, A001248, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A125575.P7635791061298922058

`A000030(A001248(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A125575

/-- `A000030(A001248(n+1))` -/
def P7635791061298922058.Spec : Prop :=
  ∀ n, P7635791061298922058.a n = A125575 (n + 1)

theorem P7635791061298922058.correct : P7635791061298922058.Spec := by
  intro n
  simp only [A125575, Nat.add_sub_cancel]

end A125575

/-! ## A125575.P9197577830897527159

`A000030(A000040(n+1)²)`
-/

namespace A125575.P9197577830897527159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A000040 (n + 1) ^ 2).toNat

end

end A125575.P9197577830897527159

namespace A125575

/-- `A000030(A000040(n+1)²)` -/
def P9197577830897527159.Spec : Prop :=
  ∀ n, P9197577830897527159.a n = A125575 (n + 1)

end A125575

/-! ## A125575.P3632003582475252479

`A002993(p?[comp[n²]])`
-/

namespace A125575.P3632003582475252479
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002993 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A125575.P3632003582475252479

namespace A125575

/-- `A002993(p?[comp[n²]])` -/
def P3632003582475252479.Spec : Prop :=
  ∀ n, P3632003582475252479.a n = A125575 (n + 1)

end A125575

/-! ## A125575.P15047303657804334137

`A002993(Δ[A007504(n)])`
-/

namespace A125575.P15047303657804334137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002993 (f1 (n + 1) - f1 n).toNat

end

end A125575.P15047303657804334137

namespace A125575

/-- `A002993(Δ[A007504(n)])` -/
def P15047303657804334137.Spec : Prop :=
  ∀ n, P15047303657804334137.a n = A125575 (n + 1)

end A125575

/-! ## A125575.P6299553420681792144

`A002993(record[A051698(n)])`
-/

namespace A125575.P6299553420681792144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002993 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A125575.P6299553420681792144

namespace A125575

/-- `A002993(record[A051698(n)])` -/
def P6299553420681792144.Spec : Prop :=
  ∀ n, P6299553420681792144.a n = A125575 (n + 1)

end A125575

/-! ## A125575.P17081455112934976685

`A002993(A000040(n+1))`
-/

namespace A125575.P17081455112934976685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002993 (A000040 (n + 1)).toNat

end

end A125575.P17081455112934976685

namespace A125575

/-- `A002993(A000040(n+1))` -/
def P17081455112934976685.Spec : Prop :=
  ∀ n, P17081455112934976685.a n = A125575 (n + 1)

end A125575

/-! ## A125575.P9672849081535148683

`A002993(A008578(n+2))`
-/

namespace A125575.P9672849081535148683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002993 (A008578 (n + 2)).toNat

end

end A125575.P9672849081535148683

namespace A125575

/-- `A002993(A008578(n+2))` -/
def P9672849081535148683.Spec : Prop :=
  ∀ n, P9672849081535148683.a n = A125575 (n + 1)

end A125575

/-! ## A125575.P656323235348382287

`A002993(A182986(n+2))`
-/

namespace A125575.P656323235348382287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002993 (A182986 (n + 2)).toNat

end

end A125575.P656323235348382287

namespace A125575

/-- `A002993(A182986(n+2))` -/
def P656323235348382287.Spec : Prop :=
  ∀ n, P656323235348382287.a n = A125575 (n + 1)

end A125575

/-! ## A125575.P10427349521760686315

`A002993(eq[1, A003415(n)])`
-/

namespace A125575.P10427349521760686315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002993 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A125575.P10427349521760686315

namespace A125575

/-- `A002993(eq[1, A003415(n)])` -/
def P10427349521760686315.Spec : Prop :=
  ∀ n, P10427349521760686315.a n = A125575 (n + 1)

end A125575

/-! ## A125575.P1811485483015058206

`A002993(record[A006530(n+2)])`
-/

namespace A125575.P1811485483015058206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002993 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A125575.P1811485483015058206

namespace A125575

/-- `A002993(record[A006530(n+2)])` -/
def P1811485483015058206.Spec : Prop :=
  ∀ n, P1811485483015058206.a n = A125575 (n + 1)

end A125575

/-! ## A125575.P8518067586911586908

`A002993(record[A014963(n+2)])`
-/

namespace A125575.P8518067586911586908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002993 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A125575.P8518067586911586908

namespace A125575

/-- `A002993(record[A014963(n+2)])` -/
def P8518067586911586908.Spec : Prop :=
  ∀ n, P8518067586911586908.a n = A125575 (n + 1)

end A125575

/-! ## A125575.P15597868985342273575

`A002993(record[A020639(n+2)])`
-/

namespace A125575.P15597868985342273575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002993 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A125575.P15597868985342273575

namespace A125575

/-- `A002993(record[A020639(n+2)])` -/
def P15597868985342273575.Spec : Prop :=
  ∀ n, P15597868985342273575.a n = A125575 (n + 1)

end A125575

/-! ## A125575.P3236952416090130243

`A002993(A001747(n+2)/2)`
-/

namespace A125575.P3236952416090130243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002993 (SequenceMachineLib.roundAway ((A001747 (n + 2) : ℚ) / 2)).toNat

end

end A125575.P3236952416090130243

namespace A125575

/-- `A002993(A001747(n+2)/2)` -/
def P3236952416090130243.Spec : Prop :=
  ∀ n, P3236952416090130243.a n = A125575 (n + 1)

end A125575

/-! ## A125575.P1937147049321047450

`A002993(eq[2, A000005(n+1)]+1)`
-/

namespace A125575.P1937147049321047450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002993 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A125575.P1937147049321047450

namespace A125575

/-- `A002993(eq[2, A000005(n+1)]+1)` -/
def P1937147049321047450.Spec : Prop :=
  ∀ n, P1937147049321047450.a n = A125575 (n + 1)

end A125575

/-! ## A125575.P14128861731803097196

`A002993(A007504(n+1)-A007504(n))`
-/

namespace A125575.P14128861731803097196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002993 (A007504 (n + 1) - A007504 n).toNat

end

end A125575.P14128861731803097196

namespace A125575

/-- `A002993(A007504(n+1)-A007504(n))` -/
def P14128861731803097196.Spec : Prop :=
  ∀ n, P14128861731803097196.a n = A125575 (n + 1)

end A125575

/-! ## A125575.P12479857326044103059

`A002993(A142342(n+1))`
-/

namespace A125575.P12479857326044103059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002993 (A142342 (n + 1)).toNat

end

end A125575.P12479857326044103059

namespace A125575

/-- `A002993(A142342(n+1))` -/
def P12479857326044103059.Spec : Prop :=
  ∀ n, P12479857326044103059.a n = A125575 (n + 1)

end A125575

/-! ## A125575.P5930147347414525272

`A002993(∑{p}[A001248(n+1), #])`
-/

namespace A125575.P5930147347414525272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002993 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A125575.P5930147347414525272

namespace A125575

/-- `A002993(∑{p}[A001248(n+1), #])` -/
def P5930147347414525272.Spec : Prop :=
  ∀ n, P5930147347414525272.a n = A125575 (n + 1)

end A125575

/-!
# A125577: a(0) = 1; for n >= 1, a(n) = n^2 - a(n-1).

The programs for A125577, the canonical program `A125577.P13726266312695836129` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125577 has offset 0).

The definition of A125577 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²-a(n-1)` (program `A125577.P13726266312695836129`, by `A125577.P13726266312695836129.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A125577.P13726266312695836129

`n²-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A125577

/-- `n²-a(n-1)` -/
def P13726266312695836129.Spec : Prop :=
  ∀ n, P13726266312695836129.a n = A125577 n

theorem P13726266312695836129.correct : P13726266312695836129.Spec := by
  intro n
  simp only [A125577]

end A125577

/-! ## A125577.P1901118470308887904

`n*(n+1)/2+(-1)^n`
-/

namespace A125577.P1901118470308887904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((n + 1 : ℚ) / 2) + ((-1) ^ n : ℚ)

end

end A125577.P1901118470308887904

namespace A125577

/-- `n*(n+1)/2+(-1)^n` -/
def P1901118470308887904.Spec : Prop :=
  ∀ n, P1901118470308887904.a n = (A125577 n : ℚ)

end A125577

/-! ## A125577.P9004150405683367157

`Δ[C(n+1, 3)+n%2]`
-/

namespace A125577.P9004150405683367157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 3 + n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A125577.P9004150405683367157

namespace A125577

/-- `Δ[C(n+1, 3)+n%2]` -/
def P9004150405683367157.Spec : Prop :=
  ∀ n, P9004150405683367157.a n = A125577 n

end A125577

/-! ## A125577.P9614256032884265654

`∑[a(n-2)+2]` with `a(0)=1, a(1)=-1, a(2)=4`
-/

namespace A125577.P9614256032884265654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 4] fun n f1 =>
  f1 (n - 2) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125577.P9614256032884265654

namespace A125577

/-- `∑[a(n-2)+2]` -/
def P9614256032884265654.Spec : Prop :=
  ∀ n, P9614256032884265654.a n = A125577 n

end A125577

/-! ## A125577.P7256456817964602769

`abs(xor(1, n+1)-∑[n+1])`
-/

namespace A125577.P7256456817964602769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.xor 1 (n + 1) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)|

end

end A125577.P7256456817964602769

namespace A125577

/-- `abs(xor(1, n+1)-∑[n+1])` -/
def P7256456817964602769.Spec : Prop :=
  ∀ n, P7256456817964602769.a n = A125577 n

end A125577

/-! ## A125577.P4872010334567236643

`n*(n-a(n-1)/n)` with `a(0)=1`
-/

namespace A125577.P4872010334567236643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) * ((n : ℚ) - a (n - 1) / (n : ℚ))

end

end A125577.P4872010334567236643

namespace A125577

/-- `n*(n-a(n-1)/n)` -/
def P4872010334567236643.Spec : Prop :=
  ∀ n, P4872010334567236643.a n = (A125577 n : ℚ)

end A125577

/-! ## A125577.P4072926840584524984

`floor(∑[n]+ϕ-2*and(1, n))`
-/

namespace A125577.P4072926840584524984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) + (Real.goldenRatio - (2 * Nat.land 1 n : ℝ))⌋

end

end A125577.P4072926840584524984

namespace A125577

/-- `floor(∑[n]+ϕ-2*and(1, n))` -/
def P4072926840584524984.Spec : Prop :=
  ∀ n, P4072926840584524984.a n = A125577 n

end A125577

/-! ## A125577.P10167608272631347058

`floor(∑[n]-(2*and(1, n)-ϕ))`
-/

namespace A125577.P10167608272631347058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) - ((2 * Nat.land 1 n : ℝ) - Real.goldenRatio)⌋

end

end A125577.P10167608272631347058

namespace A125577

/-- `floor(∑[n]-(2*and(1, n)-ϕ))` -/
def P10167608272631347058.Spec : Prop :=
  ∀ n, P10167608272631347058.a n = A125577 n

end A125577

/-! ## A125577.P5872798784813206420

`∑[∑[2-a(n-1)]]` with `a(0)=1, a(1)=-2, a(2)=5`
-/

namespace A125577.P5872798784813206420
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 5] fun n f2 =>
  2 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125577.P5872798784813206420

namespace A125577

/-- `∑[∑[2-a(n-1)]]` -/
def P5872798784813206420.Spec : Prop :=
  ∀ n, P5872798784813206420.a n = A125577 n

end A125577

/-! ## A125577.P10302861031774196967

`abs(1-(a(n-2)+2*n))` with `a(0)=1, a(1)=0`
-/

namespace A125577.P10302861031774196967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  |1 - (a (n - 2) + (2 * n : ℤ))|

end

end A125577.P10302861031774196967

namespace A125577

/-- `abs(1-(a(n-2)+2*n))` -/
def P10302861031774196967.Spec : Prop :=
  ∀ n, P10302861031774196967.a n = A125577 n

end A125577

/-! ## A125577.P14137828223272630490

`abs(1-2*n-a(n-2))` with `a(0)=1, a(1)=0`
-/

namespace A125577.P14137828223272630490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  |1 - (2 * n : ℤ) - a (n - 2)|

end

end A125577.P14137828223272630490

namespace A125577

/-- `abs(1-2*n-a(n-2))` -/
def P14137828223272630490.Spec : Prop :=
  ∀ n, P14137828223272630490.a n = A125577 n

end A125577

/-! ## A125577.P15546724335006436059

`floor(2*n+a(n-2)-1)` with `a(0)=1, a(1)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A125577.P15546724335006436059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  (2 * n : ℤ) + (a (n - 2) - 1)

end

end A125577.P15546724335006436059

namespace A125577

/-- `floor(2*n+a(n-2)-1)` -/
def P15546724335006436059.Spec : Prop :=
  ∀ n, P15546724335006436059.a n = A125577 n

end A125577

/-! ## A125577.P2746920614949141607

`floor(2*n-(1-a(n-2)))` with `a(0)=1, a(1)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A125577.P2746920614949141607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  (2 * n : ℤ) - (1 - a (n - 2))

end

end A125577.P2746920614949141607

namespace A125577

/-- `floor(2*n-(1-a(n-2)))` -/
def P2746920614949141607.Spec : Prop :=
  ∀ n, P2746920614949141607.a n = A125577 n

end A125577

/-! ## A125577.P15554359345927966413

`ceil(2*n+a(n-2)-1)` with `a(0)=1, a(1)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A125577.P15554359345927966413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  (2 * n : ℤ) + (a (n - 2) - 1)

end

end A125577.P15554359345927966413

namespace A125577

/-- `ceil(2*n+a(n-2)-1)` -/
def P15554359345927966413.Spec : Prop :=
  ∀ n, P15554359345927966413.a n = A125577 n

end A125577

/-! ## A125577.P4315697497549322885

`ceil(2*n-(1-a(n-2)))` with `a(0)=1, a(1)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A125577.P4315697497549322885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  (2 * n : ℤ) - (1 - a (n - 2))

end

end A125577.P4315697497549322885

namespace A125577

/-- `ceil(2*n-(1-a(n-2)))` -/
def P4315697497549322885.Spec : Prop :=
  ∀ n, P4315697497549322885.a n = A125577 n

end A125577

/-!
# A125585: Array of constant-spaced integers read by antidiagonals.

The programs for A125585, there is no canonical definition to state claims against.
-/

/-! ## A125585.P572809714441068377

`A077264(n)+1`
-/

namespace A125585.P572809714441068377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077264 n + 1

end

end A125585.P572809714441068377

/-! ## A125585.P9948229215308326907

`A008619(2*A077264(n))`
-/

namespace A125585.P9948229215308326907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A077264 n).toNat

end

end A125585.P9948229215308326907

/-! ## A125585.P13740794338218815151

`A027656(2*A077264(n))`
-/

namespace A125585.P13740794338218815151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (2 * A077264 n).toNat

end

end A125585.P13740794338218815151

/-! ## A125585.P15900862793757476571

`A052938(2*A077264(n))`
-/

namespace A125585.P15900862793757476571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (2 * A077264 n).toNat

end

end A125585.P15900862793757476571

/-! ## A125585.P10055345451985472931

`A008611(3*A077264(n))`
-/

namespace A125585.P10055345451985472931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A077264 n).toNat

end

end A125585.P10055345451985472931

/-! ## A125585.P3580016793498395126

`A008620(3*A077264(n))`
-/

namespace A125585.P3580016793498395126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (3 * A077264 n).toNat

end

end A125585.P3580016793498395126

/-! ## A125585.P10954979205917159389

`A063942(3*A077264(n))`
-/

namespace A125585.P10954979205917159389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063942 (3 * A077264 n).toNat

end

end A125585.P10954979205917159389

/-! ## A125585.P5471507369815365039

`A008621(4*A077264(n))`
-/

namespace A125585.P5471507369815365039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (4 * A077264 n).toNat

end

end A125585.P5471507369815365039

/-! ## A125585.P13733400557362045168

`A008612(6*A077264(n))`
-/

namespace A125585.P13733400557362045168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (6 * A077264 n).toNat

end

end A125585.P13733400557362045168

/-! ## A125585.P4931222854651924859

`A182630(A061579(n))+1`
-/

namespace A125585.P4931222854651924859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182630 (A061579 n).toNat + 1

end

end A125585.P4931222854651924859

/-!
# A125586: a(n) = 2^(2n-1) - (n+2)*3^(n-2).

The programs for A125586, the canonical program `A125586.P9385725487738589463` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125586 has offset 1).

The definition of A125586 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A125586.P12034868944587061989

`2*4^n-(n+3)*3^(n-1)`
-/

namespace A125586.P12034868944587061989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * 4 ^ n : ℚ) - (n + 3 : ℚ) * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A125586.P12034868944587061989

namespace A125586

/-- `2*4^n-(n+3)*3^(n-1)` -/
def P12034868944587061989.Spec : Prop :=
  ∀ n, P12034868944587061989.a n = (A125586 (n + 1) : ℚ)

end A125586

/-! ## A125586.P9385725487738589463

`Δ[A083586(n)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A125586

/-- `Δ[A083586(n)]` -/
def P9385725487738589463.Spec : Prop :=
  ∀ n, P9385725487738589463.a n = A125586 (n + 1)

theorem P9385725487738589463.correct : P9385725487738589463.Spec := by
  intro n
  simp only [A125586, Nat.add_sub_cancel]

end A125586

/-! ## A125586.P13975595462011928535

`or(4^n, A086443(n))`
-/

namespace A125586.P13975595462011928535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (4 ^ n : ℤ) (A086443 n)

end

end A125586.P13975595462011928535

namespace A125586

/-- `or(4^n, A086443(n))` -/
def P13975595462011928535.Spec : Prop :=
  ∀ n, P13975595462011928535.a n = A125586 (n + 1)

end A125586

/-! ## A125586.P12098738394626952688

`abs(2^(2*n+1)-A006234(n+3))`
-/

namespace A125586.P12098738394626952688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 ^ (2 * n + 1) : ℤ) - A006234 (n + 3)|

end

end A125586.P12098738394626952688

namespace A125586

/-- `abs(2^(2*n+1)-A006234(n+3))` -/
def P12098738394626952688.Spec : Prop :=
  ∀ n, P12098738394626952688.a n = A125586 (n + 1)

end A125586

/-! ## A125586.P13957793541147603663

`xor(A000302(n), A086443(n))`
-/

namespace A125586.P13957793541147603663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000302 n) (A086443 n)

end

end A125586.P13957793541147603663

namespace A125586

/-- `xor(A000302(n), A086443(n))` -/
def P13957793541147603663.Spec : Prop :=
  ∀ n, P13957793541147603663.a n = A125586 (n + 1)

end A125586

/-!
# A125587: Call an n X n matrix robust if the top left i X i submatrix is invertible for all i = 1..n. Sequence gives number of n X n robust real {0,1}-matrices.

The programs for A125587, there is no canonical definition to state claims against.
-/

/-! ## A125587.P853056321793134912

`∏[A004171(n)]-A126603(n+1)`
-/

namespace A125587.P853056321793134912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004171 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A126603 (n + 1)

end

end A125587.P853056321793134912

/-!
# A125588: a(0) = 10; for n > 0, a(n) is determined by the rule that the concatenation of the leading terms of the difference triangle is the same as the concatenation of the digits of the sequence.

The programs for A125588, there is no canonical definition to state claims against.
-/

/-! ## A125588.P13544253565219169340

`A099172(∑[4*n])+9`
-/

namespace A125588.P13544253565219169340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099172 (∑ j ∈ Finset.range (n + 1), f1 j) + 9

end

end A125588.P13544253565219169340

/-! ## A125588.P1571788619799433844

`A316428(floor(2^(n-1))+2)+8`
-/

namespace A125588.P1571788619799433844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316428 (⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ + 2).toNat + 8

end

end A125588.P1571788619799433844

/-! ## A125588.P9274063395745807970

`A000188(A381551(n))+9`
-/

namespace A125588.P9274063395745807970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A381551 n).toNat + 9

end

end A125588.P9274063395745807970

/-!
# A125589: Smallest n-digit base-10 deletable prime.

The programs for A125589, there is no canonical definition to state claims against.
-/

/-! ## A125589.P17557985864957341094

`A173964(10^n)+10^n`
-/

namespace A125589.P17557985864957341094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173964 (10 ^ n) + (10 ^ n : ℤ)

end

end A125589.P17557985864957341094

/-!
# A125591: Unique sequence that begins with nine zeros and a 1 and has the properties that each leading term of the difference triangle is single-digit, and the concatenation of the leading terms of the difference triangle is the same as the concatenation of the digits of the sequence.

The programs for A125591, there is no canonical definition to state claims against.
-/

/-! ## A125591.P11248162115790056665

`A348960(A185254(n))+A035041(n)`
-/

namespace A125591.P11248162115790056665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348960 (A185254 n).toNat + A035041 n

end

end A125591.P11248162115790056665

/-!
# A125592: Evil numbers (A001969) multiplied by 2.

The programs for A125592, the canonical program `A125592.P3798831700092176904` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125592 has offset 1).

The definition of A125592 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A125592.P15284184980915918086

`2*comp[xor(n, 2*n+1)]`
-/

namespace A125592.P15284184980915918086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A125592.P15284184980915918086

namespace A125592

/-- `2*comp[xor(n, 2*n+1)]` -/
def P15284184980915918086.Spec : Prop :=
  ∀ n, (P15284184980915918086.a n : ℤ) = A125592 (n + 1)

end A125592

/-! ## A125592.P2697041541999568884

`2*xor(1, comp[xor(n, 2*n)])`
-/

namespace A125592.P2697041541999568884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.xor 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A125592.P2697041541999568884

namespace A125592

/-- `2*xor(1, comp[xor(n, 2*n)])` -/
def P2697041541999568884.Spec : Prop :=
  ∀ n, (P2697041541999568884.a n : ℤ) = A125592 (n + 1)

end A125592

/-! ## A125592.P3798831700092176904

`eq[1, -a(and(n, n-2))]` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A125592

/-- `eq[1, -a(and(n, n-2))]` -/
def P3798831700092176904.Spec : Prop :=
  ∀ n, (P3798831700092176904.a n : ℤ) = A125592 (n + 1)

theorem P3798831700092176904.correct : P3798831700092176904.Spec := by
  intro n
  simp only [A125592, Nat.add_sub_cancel]

end A125592

/-! ## A125592.P14810400881164697104

`comp[xor(n+1, gcd(n, floor(n/2)))]`
-/

namespace A125592.P14810400881164697104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 1) (Int.gcd (n : ℤ) ⌊(n : ℚ) / 2⌋)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A125592.P14810400881164697104

namespace A125592

/-- `comp[xor(n+1, gcd(n, floor(n/2)))]` -/
def P14810400881164697104.Spec : Prop :=
  ∀ n, (P14810400881164697104.a n : ℤ) = A125592 (n + 1)

end A125592

/-! ## A125592.P11933565954520948303

`comp[xor(n, floor((n/2)^(n%2)))]`
-/

namespace A125592.P11933565954520948303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊((n : ℚ) / 2) ^ (n % 2)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A125592.P11933565954520948303

namespace A125592

/-- `comp[xor(n, floor((n/2)^(n%2)))]` -/
def P11933565954520948303.Spec : Prop :=
  ∀ n, (P11933565954520948303.a n : ℤ) = A125592 (n + 1)

end A125592

/-! ## A125592.P14671247081758986338

`comp[xor(n, floor((n/2)^and(1, n)))]`
-/

namespace A125592.P14671247081758986338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊((n : ℚ) / 2) ^ Nat.land 1 n⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A125592.P14671247081758986338

namespace A125592

/-- `comp[xor(n, floor((n/2)^and(1, n)))]` -/
def P14671247081758986338.Spec : Prop :=
  ∀ n, (P14671247081758986338.a n : ℤ) = A125592 (n + 1)

end A125592

/-! ## A125592.P948136464593683272

`2*(char[xor(n, Δ[n²])]+2*n)`
-/

namespace A125592.P948136464593683272
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 2 * n)

end

end A125592.P948136464593683272

namespace A125592

/-- `2*(char[xor(n, Δ[n²])]+2*n)` -/
def P948136464593683272.Spec : Prop :=
  ∀ n, (P948136464593683272.a n : ℤ) = A125592 (n + 1)

end A125592

/-! ## A125592.P13017683178257572732

`2*(Δ[n²]-char[xor(n, 2*n)])`
-/

namespace A125592.P13017683178257572732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ))

end

end A125592.P13017683178257572732

namespace A125592

/-- `2*(Δ[n²]-char[xor(n, 2*n)])` -/
def P13017683178257572732.Spec : Prop :=
  ∀ n, P13017683178257572732.a n = A125592 (n + 1)

end A125592

/-! ## A125592.P3039724496727704245

`2*xor(Δ[n²], char[xor(n, 2*n)])`
-/

namespace A125592.P3039724496727704245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.xor ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A125592.P3039724496727704245

namespace A125592

/-- `2*xor(Δ[n²], char[xor(n, 2*n)])` -/
def P3039724496727704245.Spec : Prop :=
  ∀ n, P3039724496727704245.a n = A125592 (n + 1)

end A125592

/-! ## A125592.P12378208520853580411

`eq[0, A316828(n)]`
-/

namespace A125592.P12378208520853580411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316828 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A125592.P12378208520853580411

namespace A125592

/-- `eq[0, A316828(n)]` -/
def P12378208520853580411.Spec : Prop :=
  ∀ n, (P12378208520853580411.a n : ℤ) = A125592 (n + 1)

end A125592

/-! ## A125592.P9690368311479660336

`comp[n-A254377(n)]`
-/

namespace A125592.P9690368311479660336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A254377 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A125592.P9690368311479660336

namespace A125592

/-- `comp[n-A254377(n)]` -/
def P9690368311479660336.Spec : Prop :=
  ∀ n, (P9690368311479660336.a n : ℤ) = A125592 (n + 1)

end A125592

/-! ## A125592.P6260562565868923300

`A092246(n+1)-1`
-/

namespace A125592.P6260562565868923300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092246 (n + 1) - 1

end

end A125592.P6260562565868923300

namespace A125592

/-- `A092246(n+1)-1` -/
def P6260562565868923300.Spec : Prop :=
  ∀ n, P6260562565868923300.a n = A125592 (n + 1)

end A125592

/-! ## A125592.P16386140931206755450

`2*A001969(n+1)`
-/

namespace A125592.P16386140931206755450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001969 (n + 1)

end

end A125592.P16386140931206755450

namespace A125592

/-- `2*A001969(n+1)` -/
def P16386140931206755450.Spec : Prop :=
  ∀ n, P16386140931206755450.a n = A125592 (n + 1)

end A125592

/-! ## A125592.P17300288805974335463

`xor(2, A128309(n+1))`
-/

namespace A125592.P17300288805974335463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A128309 (n + 1))

end

end A125592.P17300288805974335463

namespace A125592

/-- `xor(2, A128309(n+1))` -/
def P17300288805974335463.Spec : Prop :=
  ∀ n, P17300288805974335463.a n = A125592 (n + 1)

end A125592

/-! ## A125592.P10426742175329856260

`xor(3, A129771(n+1))`
-/

namespace A125592.P10426742175329856260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A129771 (n + 1))

end

end A125592.P10426742175329856260

namespace A125592

/-- `xor(3, A129771(n+1))` -/
def P10426742175329856260.Spec : Prop :=
  ∀ n, P10426742175329856260.a n = A125592 (n + 1)

end A125592

/-! ## A125592.P9558514565363318432

`eq[0, A254377(n+1)]`
-/

namespace A125592.P9558514565363318432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254377 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A125592.P9558514565363318432

namespace A125592

/-- `eq[0, A254377(n+1)]` -/
def P9558514565363318432.Spec : Prop :=
  ∀ n, (P9558514565363318432.a n : ℤ) = A125592 (n + 1)

end A125592

/-! ## A125592.P13616851171373667127

`eq[1, A228495(n+1)]`
-/

namespace A125592.P13616851171373667127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228495 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A125592.P13616851171373667127

namespace A125592

/-- `eq[1, A228495(n+1)]` -/
def P13616851171373667127.Spec : Prop :=
  ∀ n, (P13616851171373667127.a n : ℤ) = A125592 (n + 1)

end A125592

/-! ## A125592.P17382345482472944356

`eq[1, A228495(n)]-1`
-/

namespace A125592.P17382345482472944356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228495 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A125592.P17382345482472944356

namespace A125592

/-- `eq[1, A228495(n)]-1` -/
def P17382345482472944356.Spec : Prop :=
  ∀ n, P17382345482472944356.a n = A125592 (n + 1)

end A125592

/-! ## A125592.P7817295006057629839

`2*(A026147(n+1)-1)`
-/

namespace A125592.P7817295006057629839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A026147 (n + 1) - 1)

end

end A125592.P7817295006057629839

namespace A125592

/-- `2*(A026147(n+1)-1)` -/
def P7817295006057629839.Spec : Prop :=
  ∀ n, P7817295006057629839.a n = A125592 (n + 1)

end A125592

/-!
# A125593: Number of nonsingular real n X n {0,1}-matrices which are not robust (cf. A125587).

The programs for A125593, there is no canonical definition to state claims against.
-/

/-! ## A125593.P15596031026390862258

`A126603(n+1)-A046747(n+1)`
-/

namespace A125593.P15596031026390862258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126603 (n + 1) - A046747 (n + 1)

end

end A125593.P15596031026390862258

/-!
# A125598: a(n) = ((n+1)^(n-1) - 1)/n.

The programs for A125598, there is no canonical definition to state claims against.
-/

/-! ## A125598.P11528141545182748958

`((n+2)^n-1)/(n+1)`
-/

namespace A125598.P11528141545182748958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 2) ^ n : ℤ) - 1 : ℚ) / (n + 1 : ℚ)

end

end A125598.P11528141545182748958

/-! ## A125598.P4573424556941404849

`floor(cot((n+1)/(n+2)^n))`
-/

namespace A125598.P4573424556941404849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cot ((n + 1 : ℚ) / ((n + 2) ^ n : ℚ) : ℝ)⌋

end

end A125598.P4573424556941404849

/-! ## A125598.P13947205293015240950

`floor(xor(1, (n+2)^n)/(n+1))`
-/

namespace A125598.P13947205293015240950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor 1 ((n + 2) ^ n) : ℚ) / (n + 1 : ℚ)⌋

end

end A125598.P13947205293015240950

/-! ## A125598.P10457260072846896451

`floor(A060072(n+2)/(n+2))`
-/

namespace A125598.P10457260072846896451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A060072 (n + 2) : ℚ) / (n + 2 : ℚ)⌋

end

end A125598.P10457260072846896451

/-! ## A125598.P4597437258894123998

`A060072(n+2)-record[A232006(n)]`
-/

namespace A125598.P4597437258894123998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060072 (n + 2) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125598.P4597437258894123998

/-! ## A125598.P11356833406224565045

`A060072(n+2)-A000272(n+2)`
-/

namespace A125598.P11356833406224565045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060072 (n + 2) - A000272 (n + 2)

end

end A125598.P11356833406224565045

/-! ## A125598.P14142997710729652822

`record[(A338280(n+2)-1)/A002024(n+1)]`
-/

namespace A125598.P14142997710729652822
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338280 (n + 2) - 1 : ℚ) / (A002024 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125598.P14142997710729652822

/-!
# A125599: Quotient ((2n)^(2n-2)-1)/(2n+1)/(2n-1).

The programs for A125599, there is no canonical definition to state claims against.
-/

/-! ## A125599.P5641950508745123587

`A083063(2*n+1)/(2*n+1)`
-/

namespace A125599.P5641950508745123587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083063 (2 * n + 1) : ℚ) / (2 * n + 1 : ℚ)

end

end A125599.P5641950508745123587

/-! ## A125599.P16352208193000811366

`A125598(A005408(n))/(2*n+3)`
-/

namespace A125599.P16352208193000811366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125598 (A005408 n).toNat : ℚ) / (2 * n + 3 : ℚ)

end

end A125599.P16352208193000811366

/-! ## A125599.P16511737075335720661

`ceil(A083063(A005408(n))/A005408(n))`
-/

namespace A125599.P16511737075335720661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A083063 (A005408 n).toNat : ℚ) / (A005408 n : ℚ)⌉

end

end A125599.P16511737075335720661

/-! ## A125599.P1409600921062992697

`(A083063(A005408(n))/A005408(n))^(A000040(n+1)%2)!`
-/

namespace A125599.P1409600921062992697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A083063 (A005408 n).toNat : ℚ) / (A005408 n : ℚ)) ^ Nat.factorial (Int.tmod (A000040 (n + 1)) 2).toNat

end

end A125599.P1409600921062992697

/-! ## A125599.P17375865487710451979

`A059848(∑[4*4*n])`
-/

namespace A125599.P17375865487710451979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059848 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A125599.P17375865487710451979

