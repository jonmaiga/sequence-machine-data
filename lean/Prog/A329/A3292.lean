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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
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
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
# A329200: The ghost iteration (A): add or subtract the number formed by absolute differences of digits (A040115), according to parity (even or odd).

The programs for A329200, there is no canonical definition to state claims against.
-/

/-! ## A329200.P15684539309358261176

`2*n-A329201(n)`
-/

namespace A329200.P15684539309358261176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A329201 n

end

end A329200.P15684539309358261176

/-! ## A329200.P17857779767725441077

`A038608(A040115(n))+n`
-/

namespace A329200.P17857779767725441077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A040115 n).toNat + (n : ℤ)

end

end A329200.P17857779767725441077

/-! ## A329200.P7985767877585931206

`A038608(A064834(n))+n`
-/

namespace A329200.P7985767877585931206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A064834 n).toNat + (n : ℤ)

end

end A329200.P7985767877585931206

/-! ## A329200.P8727894660058874485

`A038608(A151950(n))+n`
-/

namespace A329200.P8727894660058874485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A151950 n).toNat + (n : ℤ)

end

end A329200.P8727894660058874485

/-! ## A329200.P463584762838241121

`abs(A005843(n)-A329201(n))`
-/

namespace A329200.P463584762838241121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005843 n - A329201 n|

end

end A329200.P463584762838241121

/-!
# A329201: The ghost iteration (B): add or subtract the number formed by absolute differences of digits (A040115), according to parity (odd or even).

The programs for A329201, there is no canonical definition to state claims against.
-/

/-! ## A329201.P3215865133342091247

`A181983(A040115(n))+n`
-/

namespace A329201.P3215865133342091247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181983 (A040115 n).toNat + (n : ℤ)

end

end A329201.P3215865133342091247

/-! ## A329201.P18113391260622960039

`A181983(A064834(n))+n`
-/

namespace A329201.P18113391260622960039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181983 (A064834 n).toNat + (n : ℤ)

end

end A329201.P18113391260622960039

/-! ## A329201.P3375610699301408550

`A181983(A151950(n))+n`
-/

namespace A329201.P3375610699301408550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181983 (A151950 n).toNat + (n : ℤ)

end

end A329201.P3375610699301408550

/-! ## A329201.P16466900739213447814

`abs(A038608(A040115(n))%A038722(n+1)-n)`
-/

namespace A329201.P16466900739213447814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A038608 (A040115 n).toNat) (A038722 (n + 1)) - (n : ℤ)|

end

end A329201.P16466900739213447814

/-! ## A329201.P11252184519071844128

`2*n-A329200(n)`
-/

namespace A329201.P11252184519071844128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A329200 n

end

end A329201.P11252184519071844128

/-! ## A329201.P12583986173516913831

`abs(A005843(n)-A329200(n))`
-/

namespace A329201.P12583986173516913831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005843 n - A329200 n|

end

end A329201.P12583986173516913831

/-!
# A329202: a(n) = floor(2*log_2(n)) = floor(log_2(n^2)).

The programs for A329202, there is no canonical definition to state claims against.
-/

/-! ## A329202.P17826102058052036362

`floor(log2((n+1)²))`
-/

namespace A329202.P17826102058052036362
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 ((n + 1) ^ 2)

end

end A329202.P17826102058052036362

/-! ## A329202.P8260713178261191258

`ceil(log2(∑[cos(1)+n]))`
-/

namespace A329202.P8260713178261191258
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (1 : ℝ) + (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (∑ j ∈ Finset.range (n + 1), f1 j)⌉

end

end A329202.P8260713178261191258

/-! ## A329202.P10902059379050736943

`ceil(log2(or(1, ∑[or(1, n)])))`
-/

namespace A329202.P10902059379050736943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)⌉

end

end A329202.P10902059379050736943

/-! ## A329202.P11986112602879792803

`abs(ceil(log2(acot((n+1)²))))`
-/

namespace A329202.P11986112602879792803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈Real.logb 2 (SequenceMachineLib.acot ((n + 1) ^ 2 : ℝ))⌉|

end

end A329202.P11986112602879792803

/-! ## A329202.P4178536647913301110

`-ceil(log2(acot((n+1)²)))`
-/

namespace A329202.P4178536647913301110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌈Real.logb 2 (SequenceMachineLib.acot ((n + 1) ^ 2 : ℝ))⌉

end

end A329202.P4178536647913301110

/-! ## A329202.P13933088225345407671

`ceil(log2(cosh(log((n+1)²))))`
-/

namespace A329202.P13933088225345407671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (Real.cosh (Real.log ((n + 1) ^ 2 : ℝ)))⌉

end

end A329202.P13933088225345407671

/-! ## A329202.P10781190692603311253

`round(log2(((n+1)*sin(1))²))`
-/

namespace A329202.P10781190692603311253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (((n + 1 : ℝ) * Real.sin (1 : ℝ)) ^ 2))

end

end A329202.P10781190692603311253

/-! ## A329202.P7120214008942753395

`floor(log2(∑[2*n+1]))%15`
-/

namespace A329202.P7120214008942753395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (∑ j ∈ Finset.range (n + 1), f1 j) % 15

end

end A329202.P7120214008942753395

/-! ## A329202.P12769163394824646130

`ceil(log2(∑[n%2+n]+1))`
-/

namespace A329202.P12769163394824646130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℝ)⌉

end

end A329202.P12769163394824646130

/-! ## A329202.P4316205969378443447

`ceil(log2(∑[and(1, n)+n]+1))`
-/

namespace A329202.P4316205969378443447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℝ)⌉

end

end A329202.P4316205969378443447

/-!
# A329203: Numbers k such that A329308(k) = 0.

The programs for A329203, there is no canonical definition to state claims against.
-/

/-! ## A329203.P4105969471877825567

`eq[0, A329308(n+1)]+1`
-/

namespace A329203.P4105969471877825567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329308 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A329203.P4105969471877825567

/-! ## A329203.P16717165093454759430

`record[gcd(A000027(n+1), A329308(n+1))]`
-/

namespace A329203.P16717165093454759430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A329308 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329203.P16717165093454759430

/-! ## A329203.P17898132364442459621

`eq[A000007(n), A329308(A028310(n))]`
-/

namespace A329203.P17898132364442459621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329308 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A329203.P17898132364442459621

/-! ## A329203.P9199280432635911880

`eq[A000038(n), A329308(A028310(n))]`
-/

namespace A329203.P9199280432635911880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329308 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A329203.P9199280432635911880

/-! ## A329203.P13323208951380373896

`lt[A329308(n+1), A014963(A000040(n+3)+1)]+1`
-/

namespace A329203.P13323208951380373896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000040 (n + 3) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A329203.P13323208951380373896

/-!
# A329204: Number of integers less than n having at least as many totatives as n.

The programs for A329204, there is no canonical definition to state claims against.
-/

/-! ## A329204.P11516341735891081091

`A010846(n+1)-A000032(A179960(n))`
-/

namespace A329204.P11516341735891081091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010846 (n + 1) - A000032 (A179960 n).toNat

end

end A329204.P11516341735891081091

/-! ## A329204.P4045274446857621184

`A325339(n+1)-A000032(A179960(n))`
-/

namespace A329204.P4045274446857621184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325339 (n + 1) - A000032 (A179960 n).toNat

end

end A329204.P4045274446857621184

/-! ## A329204.P4757047327037208680

`A010846(n+1)-A214074(2^n)`
-/

namespace A329204.P4757047327037208680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010846 (n + 1) - A214074 (2 ^ n)

end

end A329204.P4757047327037208680

/-! ## A329204.P3116559272615264057

`A010846(n+1)-A014673(A000079(n))`
-/

namespace A329204.P3116559272615264057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010846 (n + 1) - A014673 (A000079 n).toNat

end

end A329204.P3116559272615264057

/-! ## A329204.P17148621898897991081

`A010846(n+1)-A020639(A037223(n))`
-/

namespace A329204.P17148621898897991081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010846 (n + 1) - A020639 (A037223 n).toNat

end

end A329204.P17148621898897991081

/-!
# A329206: Minimal product of a solution to Erdős's Last Equation in n variables, x_1*...*x_n = n*(x_1 + ... + x_n), with 1 <= x_1 <= ... <= x_n.

The programs for A329206, there is no canonical definition to state claims against.
-/

/-! ## A329206.P12558385208428752120

`A075190(n+3)*A379017(A122151(n+1))`
-/

namespace A329206.P12558385208428752120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075190 (n + 3) * A379017 (A122151 (n + 1)).toNat

end

end A329206.P12558385208428752120

/-!
# A329221: a(0)=0. If a(n)=k is the first occurrence of k then a(n+1)=a(k), otherwise a(n+1)=n-m where m is the index of the greatest prior term.

The programs for A329221, there is no canonical definition to state claims against.
-/

/-! ## A329221.P4683878303875177442

`A384660(n+1)-1`
-/

namespace A329221.P4683878303875177442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384660 (n + 1) - 1

end

end A329221.P4683878303875177442

/-! ## A329221.P6975653540415125271

`A214292(C(A384660(n+1), 2))`
-/

namespace A329221.P6975653540415125271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214292 (Nat.choose (A384660 (n + 1)).toNat 2)

end

end A329221.P6975653540415125271

/-! ## A329221.P4727495663360742708

`A200748(n)%A384660(n+1)`
-/

namespace A329221.P4727495663360742708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200748 n) (A384660 (n + 1))

end

end A329221.P4727495663360742708

/-! ## A329221.P7564424502539226382

`A083800(n+1)%A384660(n+1)`
-/

namespace A329221.P7564424502539226382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083800 (n + 1)) (A384660 (n + 1))

end

end A329221.P7564424502539226382

/-! ## A329221.P3636097258706727994

`A070198(n)%A384660(n+1)`
-/

namespace A329221.P3636097258706727994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A384660 (n + 1))

end

end A329221.P3636097258706727994

/-! ## A329221.P7321803200410698890

`A079782(n+1)%A384660(n+1)`
-/

namespace A329221.P7321803200410698890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A384660 (n + 1))

end

end A329221.P7321803200410698890

/-! ## A329221.P916869254721610330

`A083685(n+1)%A384660(n+1)`
-/

namespace A329221.P916869254721610330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A384660 (n + 1))

end

end A329221.P916869254721610330

/-! ## A329221.P12280309121786214727

`A121934(n+1)%A384660(n+1)`
-/

namespace A329221.P12280309121786214727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A384660 (n + 1))

end

end A329221.P12280309121786214727

/-! ## A329221.P11709664550549850389

`A030494(n+1)%A384660(n+1)`
-/

namespace A329221.P11709664550549850389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A384660 (n + 1))

end

end A329221.P11709664550549850389

/-! ## A329221.P8352709639034504265

`A072828(n+1)%A384660(n+1)`
-/

namespace A329221.P8352709639034504265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A384660 (n + 1))

end

end A329221.P8352709639034504265

/-! ## A329221.P9962878082538439476

`A198277(n)%A384660(n+1)`
-/

namespace A329221.P9962878082538439476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198277 n) (A384660 (n + 1))

end

end A329221.P9962878082538439476

/-!
# A329222: Numbers m that divide 5^(m + 1) + 1.

The programs for A329222, there is no canonical definition to state claims against.
-/

/-! ## A329222.P5871841924787317342

`A055688(n+1)-1`
-/

namespace A329222.P5871841924787317342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055688 (n + 1) - 1

end

end A329222.P5871841924787317342

/-! ## A329222.P7342967579839805331

`record[A055688(A152271(n))-1]`
-/

namespace A329222.P7342967579839805331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055688 (A152271 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329222.P7342967579839805331

/-! ## A329222.P6524695724531590752

`record[A055688(A328396(n))-1]`
-/

namespace A329222.P6524695724531590752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055688 (A328396 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329222.P6524695724531590752

/-! ## A329222.P17830369191351740595

`A308778(n²)+A055688(n+1)`
-/

namespace A329222.P17830369191351740595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 (n ^ 2) + A055688 (n + 1)

end

end A329222.P17830369191351740595

/-! ## A329222.P2568113643913569406

`A057428(n+1)+A055688(n+1)`
-/

namespace A329222.P2568113643913569406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A055688 (n + 1)

end

end A329222.P2568113643913569406

/-!
# A329226: Numbers m that divide 6^(m + 1) + 1.

The programs for A329226, there is no canonical definition to state claims against.
-/

/-! ## A329226.P7578629029880243906

`A055689(n+1)-1`
-/

namespace A329226.P7578629029880243906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055689 (n + 1) - 1

end

end A329226.P7578629029880243906

/-! ## A329226.P8317247322045177412

`xor(3, A055689(A348553(n)))`
-/

namespace A329226.P8317247322045177412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A055689 (A348553 n).toNat)

end

end A329226.P8317247322045177412

/-! ## A329226.P18030487714094410789

`xor(3, A055689(A000027(n+1)))`
-/

namespace A329226.P18030487714094410789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A055689 (A000027 (n + 1)).toNat)

end

end A329226.P18030487714094410789

/-! ## A329226.P3333080084761818803

`xor(3, A055689(A008619(2*n)))`
-/

namespace A329226.P3333080084761818803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A055689 (A008619 (2 * n)).toNat)

end

end A329226.P3333080084761818803

/-! ## A329226.P2664311915598831689

`A375389(n+1)+A055689(n+1)`
-/

namespace A329226.P2664311915598831689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375389 (n + 1) + A055689 (n + 1)

end

end A329226.P2664311915598831689

/-!
# A329227: Products of consecutive terms of the Padovan sequence A000931.

The programs for A329227, the canonical program `A329227.P5060117533590298669` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329227 has offset 0).

The definition of A329227 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A329227.P5060117533590298669

`A000931(n)*A000931(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A329227

/-- `A000931(n)*A000931(n+1)` -/
def P5060117533590298669.Spec : Prop :=
  ∀ n, P5060117533590298669.a n = A329227 n

theorem P5060117533590298669.correct : P5060117533590298669.Spec := by
  intro n
  simp only [A329227]

end A329227

/-! ## A329227.P10952617009170976898

`Δ[A228361(n)]*A000931(n)`
-/

namespace A329227.P10952617009170976898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228361 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000931 n

end

end A329227.P10952617009170976898

namespace A329227

/-- `Δ[A228361(n)]*A000931(n)` -/
def P10952617009170976898.Spec : Prop :=
  ∀ n, P10952617009170976898.a n = A329227 n

end A329227

/-! ## A329227.P5207990451299691595

`Δ[A228361(n)]*A078027(n+2)`
-/

namespace A329227.P5207990451299691595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228361 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A078027 (n + 2)

end

end A329227.P5207990451299691595

namespace A329227

/-- `Δ[A228361(n)]*A078027(n+2)` -/
def P5207990451299691595.Spec : Prop :=
  ∀ n, P5207990451299691595.a n = A329227 n

end A329227

/-! ## A329227.P12757097172139181542

`Δ[A228361(n)]*A133034(n+4)`
-/

namespace A329227.P12757097172139181542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228361 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A133034 (n + 4)

end

end A329227.P12757097172139181542

namespace A329227

/-- `Δ[A228361(n)]*A133034(n+4)` -/
def P12757097172139181542.Spec : Prop :=
  ∀ n, P12757097172139181542.a n = A329227 n

end A329227

/-! ## A329227.P4651041586042542307

`Δ[A052954(n+1)]*Δ[A228361(n)]`
-/

namespace A329227.P4651041586042542307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228361 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (f2 (n + 1) - f2 n)

end

end A329227.P4651041586042542307

namespace A329227

/-- `Δ[A052954(n+1)]*Δ[A228361(n)]` -/
def P4651041586042542307.Spec : Prop :=
  ∀ n, P4651041586042542307.a n = A329227 n

end A329227

/-! ## A329227.P7248998215152181875

`Δ[A052954(n+1)]*Δ[A134816(n+1)]`
-/

namespace A329227.P7248998215152181875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (f2 (n + 1) - f2 n)

end

end A329227.P7248998215152181875

namespace A329227

/-- `Δ[A052954(n+1)]*Δ[A134816(n+1)]` -/
def P7248998215152181875.Spec : Prop :=
  ∀ n, P7248998215152181875.a n = A329227 n

end A329227

/-! ## A329227.P12416634289347372787

`(A182097(n)-A000931(n))*A000931(n)`
-/

namespace A329227.P12416634289347372787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A182097 n - A000931 n) * A000931 n

end

end A329227.P12416634289347372787

namespace A329227

/-- `(A182097(n)-A000931(n))*A000931(n)` -/
def P12416634289347372787.Spec : Prop :=
  ∀ n, P12416634289347372787.a n = A329227 n

end A329227

/-!
# A329228: Triangle read by rows: T(n,k) is the number of digraphs on n unlabeled vertices such that every vertex has outdegree k, n >= 1, 0 <= k < n.

The programs for A329228, there is no canonical definition to state claims against.
-/

/-! ## A329228.P8512775960560168229

`A064960(A007318(n)%A114538(2*n+3))`
-/

namespace A329228.P8512775960560168229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064960 (Int.tmod (A007318 n) (A114538 (2 * n + 3))).toNat

end

end A329228.P8512775960560168229

/-!
# A329229: Numbers that are the product of two odd prime powers with Euler phi-functions having solely a single 2 as a common prime factor.

The programs for A329229, there is no canonical definition to state claims against.
-/

/-! ## A329229.P11590823730343932944

`eq[1, A353677(n+1)]+1`
-/

namespace A329229.P11590823730343932944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353677 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A329229.P11590823730343932944

/-! ## A329229.P5019588816684032361

`filter[A062373(n+3), A353675(#)]`
-/

namespace A329229.P5019588816684032361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062373 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353675 (f1 j).toNat = 1) n)

end

end A329229.P5019588816684032361

/-! ## A329229.P3797921837115890665

`filter[A062373(n+1), A353676(#)]`
-/

namespace A329229.P3797921837115890665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062373 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353676 (f1 j).toNat = 1) n)

end

end A329229.P3797921837115890665

/-! ## A329229.P3992903340646968081

`filter[A062373(n+1), A353677(#)]`
-/

namespace A329229.P3992903340646968081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062373 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353677 (f1 j).toNat = 1) n)

end

end A329229.P3992903340646968081

/-! ## A329229.P4560163591562801277

`filter[A062373(n+1), A374134(#)]`
-/

namespace A329229.P4560163591562801277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062373 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A329229.P4560163591562801277

/-! ## A329229.P3386565196857635364

`filter[A280862(n+1), A353677(#)]`
-/

namespace A329229.P3386565196857635364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353677 (f1 j).toNat = 1) n)

end

end A329229.P3386565196857635364

/-! ## A329229.P7542106629467143995

`filter[A280862(n+1), A353678(#)]`
-/

namespace A329229.P7542106629467143995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353678 (f1 j).toNat = 1) n)

end

end A329229.P7542106629467143995

/-! ## A329229.P8130401479024858623

`filter[A007774(n+1), A353677(#)]`
-/

namespace A329229.P8130401479024858623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353677 (f1 j).toNat = 1) n)

end

end A329229.P8130401479024858623

/-! ## A329229.P15144502216539704029

`filter[A067800(n+1), A353677(#)]`
-/

namespace A329229.P15144502216539704029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353677 (f1 j).toNat = 1) n)

end

end A329229.P15144502216539704029

/-! ## A329229.P14690313977751280304

`filter[A067800(n+1), A353678(#)]`
-/

namespace A329229.P14690313977751280304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353678 (f1 j).toNat = 1) n)

end

end A329229.P14690313977751280304

/-! ## A329229.P3178690495015465947

`∩[A062373(n+1), A067800(n+1)]`
-/

namespace A329229.P3178690495015465947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067800 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329229.P3178690495015465947

/-! ## A329229.P30207137564410786

`filter[A061346(n+1), A353677(#)]`
-/

namespace A329229.P30207137564410786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061346 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353677 (f1 j).toNat = 1) n)

end

end A329229.P30207137564410786

/-! ## A329229.P9848766462022211201

`filter[A061346(n+1), A353678(#)]`
-/

namespace A329229.P9848766462022211201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061346 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353678 (f1 j).toNat = 1) n)

end

end A329229.P9848766462022211201

/-! ## A329229.P16553807280610896069

`∩[A061346(n+1), A062373(n+1)]`
-/

namespace A329229.P16553807280610896069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329229.P16553807280610896069

/-! ## A329229.P4133368311124285849

`filter[A226025(n+1), A353677(#)]`
-/

namespace A329229.P4133368311124285849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226025 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353677 (f1 j).toNat = 1) n)

end

end A329229.P4133368311124285849

/-! ## A329229.P14689650071311513360

`filter[A226025(n+1), A353678(#)]`
-/

namespace A329229.P14689650071311513360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226025 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353678 (f1 j).toNat = 1) n)

end

end A329229.P14689650071311513360

/-! ## A329229.P5588772188562859756

`filter[A014076(n+1), A353677(#)]`
-/

namespace A329229.P5588772188562859756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353677 (f1 j).toNat = 1) n)

end

end A329229.P5588772188562859756

/-! ## A329229.P13876002045872151573

`filter[A014076(n+1), A353678(#)]`
-/

namespace A329229.P13876002045872151573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353678 (f1 j).toNat = 1) n)

end

end A329229.P13876002045872151573

/-! ## A329229.P7162870842576204774

`filter[A071904(n+1), A353677(#)]`
-/

namespace A329229.P7162870842576204774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353677 (f1 j).toNat = 1) n)

end

end A329229.P7162870842576204774

/-!
# A329232: The number of counterclockwise steps during the grasshopper procedure.

The programs for A329232, there is no canonical definition to state claims against.
-/

/-! ## A329232.P12578471207133438233

`A080791(n)*A316556(A027180(n))`
-/

namespace A329232.P12578471207133438233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n * A316556 (A027180 n).toNat

end

end A329232.P12578471207133438233

/-! ## A329232.P8469293240318116401

`A252735(A108951(n+1))*A322865(n+1)`
-/

namespace A329232.P8469293240318116401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252735 (A108951 (n + 1)).toNat * A322865 (n + 1)

end

end A329232.P8469293240318116401

/-!
# A329233: The time of the first counterclockwise step during the grasshopper procedure, or 0 if no counterclockwise steps occur.

The programs for A329233, there is no canonical definition to state claims against.
-/

/-! ## A329233.P2077480258360911356

`A000120(floor(n/(xor(n, n+1)+1))*A195021(n))`
-/

namespace A329233.P2077480258360911356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ * A195021 n).toNat

end

end A329233.P2077480258360911356

/-! ## A329233.P972194254659329307

`A000120(A025480(n)*A195021(n))`
-/

namespace A329233.P972194254659329307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A025480 n * A195021 n).toNat

end

end A329233.P972194254659329307

/-!
# A329234: Number of digraphs on n unlabeled vertices such that every vertex has the same outdegree.

The programs for A329234, there is no canonical definition to state claims against.
-/

/-! ## A329234.P18361287555418799624

`floor(sqrt(A093713(2^n)))`
-/

namespace A329234.P18361287555418799624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A093713 (2 ^ n))

end

end A329234.P18361287555418799624

/-! ## A329234.P16903728001836999317

`A105360(A041979(n))`
-/

namespace A329234.P16903728001836999317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105360 (A041979 n).toNat

end

end A329234.P16903728001836999317

/-!
# A329235: Number of nonequivalent symmetric sets whose translations cover {1..n}.

The programs for A329235, there is no canonical definition to state claims against.
-/

/-! ## A329235.P6107361990495418939

`record[Δ[A202304(A050160(n))]]`
-/

namespace A329235.P6107361990495418939
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202304 (A050160 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329235.P6107361990495418939

/-! ## A329235.P3778459735383772285

`A240218(n+1)-A102681(A148182(n))`
-/

namespace A329235.P3778459735383772285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240218 (n + 1) - A102681 (A148182 n).toNat

end

end A329235.P3778459735383772285

/-! ## A329235.P13178935166382566326

`A343721(round(round(n^(n/5))^(n/5)))+n`
-/

namespace A329235.P13178935166382566326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343721 (SequenceMachineLib.roundAway ((SequenceMachineLib.roundAway ((n : ℝ) ^ ((n : ℚ) / 5 : ℝ)) : ℝ) ^ ((n : ℚ) / 5 : ℝ))).toNat + (n : ℤ)

end

end A329235.P13178935166382566326

/-! ## A329235.P17456875374063981273

`A056556(A056497(n+1)/3)`
-/

namespace A329235.P17456875374063981273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (SequenceMachineLib.roundAway ((A056497 (n + 1) : ℚ) / 3)).toNat

end

end A329235.P17456875374063981273

/-!
# A329238: Carmichael quotients to base 2: a(n) = (2^lambda(2*n-1)-1)/(2*n-1), where lambda is the Carmichael lambda function (A002322).

The programs for A329238, there is no canonical definition to state claims against.
-/

/-! ## A329238.P11820349905682885468

`A000225(A002322(2*n+1))/(2*n+1)`
-/

namespace A329238.P11820349905682885468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000225 (A002322 (2 * n + 1)).toNat : ℚ) / (2 * n + 1 : ℚ)

end

end A329238.P11820349905682885468

/-! ## A329238.P6029728306739933830

`floor(A000225(A002322(2*n+1))/A005408(n))`
-/

namespace A329238.P6029728306739933830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000225 (A002322 (2 * n + 1)).toNat : ℚ) / (A005408 n : ℚ)⌋

end

end A329238.P6029728306739933830

/-! ## A329238.P12924436895522872338

`round(A000225(A002322(n+1+n))/A005408(n))`
-/

namespace A329238.P12924436895522872338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000225 (A002322 (n + 1 + n)).toNat : ℚ) / (A005408 n : ℚ))

end

end A329238.P12924436895522872338

/-! ## A329238.P2840587539539158317

`gcd(A001226(n+1), A055671(A012111(n)))`
-/

namespace A329238.P2840587539539158317
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001226 (n + 1)) (A055671 (A012111 n).toNat)

end

end A329238.P2840587539539158317

/-! ## A329238.P1332234478224164182

`A106618(A001226(n+1))`
-/

namespace A329238.P1332234478224164182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106618 (A001226 (n + 1)).toNat

end

end A329238.P1332234478224164182

/-!
# A329239: Numbers k such that the sum of unitary divisors of k is a cube.

The programs for A329239, there is no canonical definition to state claims against.
-/

/-! ## A329239.P14470098871786255464

`eq[1, A010057(A034448(n+1))]+1`
-/

namespace A329239.P14470098871786255464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (A034448 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A329239.P14470098871786255464

/-!
# A329240: Numbers that are both Fermat pseudoprimes to base 2 (A001567) and Bruckman-Lucas pseudoprimes (A005845).

The programs for A329240, there is no canonical definition to state claims against.
-/

/-! ## A329240.P4192934803917525757

`∩[A001567(n+1), A005845(n+1)]`
-/

namespace A329240.P4192934803917525757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329240.P4192934803917525757

/-!
# A329241: Primes p such that Sum_{primes r <= q} Kronecker(r,p) <= 0 for all primes q <= p.

The programs for A329241, there is no canonical definition to state claims against.
-/

/-! ## A329241.P9370384025546025129

`record[p?[A259153(n)]%A329224(n+1)]`
-/

namespace A329241.P9370384025546025129
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)) (A329224 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329241.P9370384025546025129

/-! ## A329241.P10697719277231139692

`record[A000040(n+1)%A329224(n+1)]`
-/

namespace A329241.P10697719277231139692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (A329224 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329241.P10697719277231139692

/-! ## A329241.P14619648236066840333

`record[sqrt(A001248(n+1))%A329224(n+1)]`
-/

namespace A329241.P14619648236066840333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))) (A329224 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329241.P14619648236066840333

/-! ## A329241.P2173514664402666306

`record[(A006093(n+1)+1)%A329224(n+1)]`
-/

namespace A329241.P2173514664402666306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006093 (n + 1) + 1) (A329224 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329241.P2173514664402666306

/-! ## A329241.P9613651425961694782

`record[(A008864(n+1)-1)%A329224(n+1)]`
-/

namespace A329241.P9613651425961694782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008864 (n + 1) - 1) (A329224 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329241.P9613651425961694782

/-!
# A329242: a(n) = Pi(8,3)(n) + Pi(8,5)(n) + Pi(8,7)(n) - 3*Pi(8,1)(n), where Pi(a,b)(x) denotes the number of primes in the arithmetic progression a*k + b less than or equal to x.

The programs for A329242, the canonical program `A329242.P1185710204891356265` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329242 has offset 1).

The definition of A329242 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A329242.P1758150518660727627

`A329243(∑[∏{p}[n+1, C(#, n)%2]])`
-/

namespace A329242.P1758150518660727627
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.choose p n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329243 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A329242.P1758150518660727627

namespace A329242

/-- `A329243(∑[∏{p}[n+1, C(#, n)%2]])` -/
def P1758150518660727627.Spec : Prop :=
  ∀ n, P1758150518660727627.a n = A329242 (n + 1)

end A329242

/-! ## A329242.P11430434307168371308

`A329243(∑[char[p?[2*n+1]-1]]+1)`
-/

namespace A329242.P11430434307168371308
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329243 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A329242.P11430434307168371308

namespace A329242

/-- `A329243(∑[char[p?[2*n+1]-1]]+1)` -/
def P11430434307168371308.Spec : Prop :=
  ∀ n, P11430434307168371308.a n = A329242 (n + 1)

end A329242

/-! ## A329242.P11843031823933470477

`A329243(∑[A080545(n+1)])`
-/

namespace A329242.P11843031823933470477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329243 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A329242.P11843031823933470477

namespace A329242

/-- `A329243(∑[A080545(n+1)])` -/
def P11843031823933470477.Spec : Prop :=
  ∀ n, P11843031823933470477.a n = A329242 (n + 1)

end A329242

/-! ## A329242.P2508612656396745483

`A329243(A033270(n+1)+1)`
-/

namespace A329242.P2508612656396745483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329243 (A033270 (n + 1) + 1).toNat

end

end A329242.P2508612656396745483

namespace A329242

/-- `A329243(A033270(n+1)+1)` -/
def P2508612656396745483.Spec : Prop :=
  ∀ n, P2508612656396745483.a n = A329242 (n + 1)

end A329242

/-! ## A329242.P1185710204891356265

`A033270(n+1)-4*A071839(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A329242

/-- `A033270(n+1)-4*A071839(n+1)` -/
def P1185710204891356265.Spec : Prop :=
  ∀ n, P1185710204891356265.a n = A329242 (n + 1)

theorem P1185710204891356265.correct : P1185710204891356265.Spec := by
  intro n
  simp only [A329242, Nat.add_sub_cancel]

end A329242

/-! ## A329242.P4209318987431524511

`A329243(A000720(n+1)+A000007(n))`
-/

namespace A329242.P4209318987431524511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329243 (A000720 (n + 1) + A000007 n).toNat

end

end A329242.P4209318987431524511

namespace A329242

/-- `A329243(A000720(n+1)+A000007(n))` -/
def P4209318987431524511.Spec : Prop :=
  ∀ n, P4209318987431524511.a n = A329242 (n + 1)

end A329242

/-! ## A329242.P8852956995519233634

`A066520(n+1)+A320857(n+1)+A071838(n+1)`
-/

namespace A329242.P8852956995519233634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066520 (n + 1) + (A320857 (n + 1) + A071838 (n + 1))

end

end A329242.P8852956995519233634

namespace A329242

/-- `A066520(n+1)+A320857(n+1)+A071838(n+1)` -/
def P8852956995519233634.Spec : Prop :=
  ∀ n, P8852956995519233634.a n = A329242 (n + 1)

end A329242

/-! ## A329242.P7201608729784646279

`A329243(A049084(2*(n+1))+A000720(n+1))`
-/

namespace A329242.P7201608729784646279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329243 (A049084 (2 * (n + 1)) + A000720 (n + 1)).toNat

end

end A329242.P7201608729784646279

namespace A329242

/-- `A329243(A049084(2*(n+1))+A000720(n+1))` -/
def P7201608729784646279.Spec : Prop :=
  ∀ n, P7201608729784646279.a n = A329242 (n + 1)

end A329242

/-! ## A329242.P1057999139204758944

`A329243(A151909(n)+A000720(n+1))`
-/

namespace A329242.P1057999139204758944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329243 (A151909 n + A000720 (n + 1)).toNat

end

end A329242.P1057999139204758944

namespace A329242

/-- `A329243(A151909(n)+A000720(n+1))` -/
def P1057999139204758944.Spec : Prop :=
  ∀ n, P1057999139204758944.a n = A329242 (n + 1)

end A329242

/-!
# A329243: a(n) = Pi(8,3)(prime(n)) + Pi(8,5)(prime(n)) + Pi(8,7)(prime(n)) - 3*Pi(8,1)(prime(n)), where Pi(a,b)(x) denotes the number of primes in the arithmetic progression a*k + b less than or equal to x.

The programs for A329243, the canonical program `A329243.P9180453080884109219` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329243 has offset 1).

The definition of A329243 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A329243.P9180453080884109219

`A038698(n+1)+A321861(n+1)+A320858(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A329243

/-- `A038698(n+1)+A321861(n+1)+A320858(n+1)` -/
def P9180453080884109219.Spec : Prop :=
  ∀ n, P9180453080884109219.a n = A329243 (n + 1)

theorem P9180453080884109219.correct : P9180453080884109219.Spec := by
  intro n
  simp only [A329243, Nat.add_sub_cancel]

end A329243

/-! ## A329243.P2277106947181099579

`A329242(Δ[A007504(n)])`
-/

namespace A329243.P2277106947181099579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329242 (f1 (n + 1) - f1 n).toNat

end

end A329243.P2277106947181099579

namespace A329243

/-- `A329242(Δ[A007504(n)])` -/
def P2277106947181099579.Spec : Prop :=
  ∀ n, P2277106947181099579.a n = A329243 (n + 1)

end A329243

/-! ## A329243.P4748920554761861326

`A329242(A000040(n+1))`
-/

namespace A329243.P4748920554761861326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329242 (A000040 (n + 1)).toNat

end

end A329243.P4748920554761861326

namespace A329243

/-- `A329242(A000040(n+1))` -/
def P4748920554761861326.Spec : Prop :=
  ∀ n, P4748920554761861326.a n = A329243 (n + 1)

end A329243

/-! ## A329243.P10590059706944214907

`A329242(A006005(n+1))`
-/

namespace A329243.P10590059706944214907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329242 (A006005 (n + 1)).toNat

end

end A329243.P10590059706944214907

namespace A329243

/-- `A329242(A006005(n+1))` -/
def P10590059706944214907.Spec : Prop :=
  ∀ n, P10590059706944214907.a n = A329243 (n + 1)

end A329243

/-! ## A329243.P11829086538004685863

`A329242(A055670(n+1))`
-/

namespace A329243.P11829086538004685863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329242 (A055670 (n + 1)).toNat

end

end A329243.P11829086538004685863

namespace A329243

/-- `A329242(A055670(n+1))` -/
def P11829086538004685863.Spec : Prop :=
  ∀ n, P11829086538004685863.a n = A329243 (n + 1)

end A329243

/-! ## A329243.P8380887926719778316

`A329242(A078444(n+1))`
-/

namespace A329243.P8380887926719778316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329242 (A078444 (n + 1)).toNat

end

end A329243.P8380887926719778316

namespace A329243

/-- `A329242(A078444(n+1))` -/
def P8380887926719778316.Spec : Prop :=
  ∀ n, P8380887926719778316.a n = A329243 (n + 1)

end A329243

/-! ## A329243.P6807529394723435802

`A329242(A162735(n+1))`
-/

namespace A329243.P6807529394723435802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329242 (A162735 (n + 1)).toNat

end

end A329243.P6807529394723435802

namespace A329243

/-- `A329242(A162735(n+1))` -/
def P6807529394723435802.Spec : Prop :=
  ∀ n, P6807529394723435802.a n = A329243 (n + 1)

end A329243

/-! ## A329243.P6478949484310238984

`A329242(A162800(n+1))`
-/

namespace A329243.P6478949484310238984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329242 (A162800 (n + 1)).toNat

end

end A329243.P6478949484310238984

namespace A329243

/-- `A329242(A162800(n+1))` -/
def P6478949484310238984.Spec : Prop :=
  ∀ n, P6478949484310238984.a n = A329243 (n + 1)

end A329243

/-! ## A329243.P8603088026875110617

`A329242(A008578(n+2))`
-/

namespace A329243.P8603088026875110617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329242 (A008578 (n + 2)).toNat

end

end A329243.P8603088026875110617

namespace A329243

/-- `A329242(A008578(n+2))` -/
def P8603088026875110617.Spec : Prop :=
  ∀ n, P8603088026875110617.a n = A329243 (n + 1)

end A329243

/-! ## A329243.P6998812780677593603

`A329242(record[A006530(n+2)])`
-/

namespace A329243.P6998812780677593603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329242 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A329243.P6998812780677593603

namespace A329243

/-- `A329242(record[A006530(n+2)])` -/
def P6998812780677593603.Spec : Prop :=
  ∀ n, P6998812780677593603.a n = A329243 (n + 1)

end A329243

/-! ## A329243.P2009283775611920411

`A329242(record[A014963(n+2)])`
-/

namespace A329243.P2009283775611920411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329242 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A329243.P2009283775611920411

namespace A329243

/-- `A329242(record[A014963(n+2)])` -/
def P2009283775611920411.Spec : Prop :=
  ∀ n, P2009283775611920411.a n = A329243 (n + 1)

end A329243

/-! ## A329243.P89758680283690761

`A329242(record[A020639(n+2)])`
-/

namespace A329243.P89758680283690761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329242 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A329243.P89758680283690761

namespace A329243

/-- `A329242(record[A020639(n+2)])` -/
def P89758680283690761.Spec : Prop :=
  ∀ n, P89758680283690761.a n = A329243 (n + 1)

end A329243

/-! ## A329243.P10071158926678257502

`A329242(A006093(n+1)+1)`
-/

namespace A329243.P10071158926678257502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329242 (A006093 (n + 1) + 1).toNat

end

end A329243.P10071158926678257502

namespace A329243

/-- `A329242(A006093(n+1)+1)` -/
def P10071158926678257502.Spec : Prop :=
  ∀ n, P10071158926678257502.a n = A329243 (n + 1)

end A329243

/-! ## A329243.P9180444626867972201

`A329242(A040976(n+1)+2)`
-/

namespace A329243.P9180444626867972201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329242 (A040976 (n + 1) + 2).toNat

end

end A329243.P9180444626867972201

namespace A329243

/-- `A329242(A040976(n+1)+2)` -/
def P9180444626867972201.Spec : Prop :=
  ∀ n, P9180444626867972201.a n = A329243 (n + 1)

end A329243

/-! ## A329243.P11488911158209767461

`A329242(record[A000010(n+1)+1])`
-/

namespace A329243.P11488911158209767461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329242 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A329243.P11488911158209767461

namespace A329243

/-- `A329242(record[A000010(n+1)+1])` -/
def P11488911158209767461.Spec : Prop :=
  ∀ n, P11488911158209767461.a n = A329243 (n + 1)

end A329243

/-! ## A329243.P6701725454863922464

`A329242(A157049(n+1))`
-/

namespace A329243.P6701725454863922464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329242 (A157049 (n + 1)).toNat

end

end A329243.P6701725454863922464

namespace A329243

/-- `A329242(A157049(n+1))` -/
def P6701725454863922464.Spec : Prop :=
  ∀ n, P6701725454863922464.a n = A329243 (n + 1)

end A329243

/-! ## A329243.P910732251341741649

`A329242(A165972(n+1))`
-/

namespace A329243.P910732251341741649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329242 (A165972 (n + 1)).toNat

end

end A329243.P910732251341741649

namespace A329243

/-- `A329242(A165972(n+1))` -/
def P910732251341741649.Spec : Prop :=
  ∀ n, P910732251341741649.a n = A329243 (n + 1)

end A329243

/-! ## A329243.P3908630765060637899

`A329242(A006093(n+2))`
-/

namespace A329243.P3908630765060637899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329242 (A006093 (n + 2)).toNat

end

end A329243.P3908630765060637899

namespace A329243

/-- `A329242(A006093(n+2))` -/
def P3908630765060637899.Spec : Prop :=
  ∀ n, P3908630765060637899.a n = A329243 (n + 1)

end A329243

/-! ## A329243.P6457426739894526940

`A329242(A039915(n+2))`
-/

namespace A329243.P6457426739894526940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329242 (A039915 (n + 2)).toNat

end

end A329243.P6457426739894526940

namespace A329243

/-- `A329242(A039915(n+2))` -/
def P6457426739894526940.Spec : Prop :=
  ∀ n, P6457426739894526940.a n = A329243 (n + 1)

end A329243

/-! ## A329243.P13227484151770343140

`A329242(A040976(n+2))`
-/

namespace A329243.P13227484151770343140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329242 (A040976 (n + 2)).toNat

end

end A329243.P13227484151770343140

namespace A329243

/-- `A329242(A040976(n+2))` -/
def P13227484151770343140.Spec : Prop :=
  ∀ n, P13227484151770343140.a n = A329243 (n + 1)

end A329243

/-!
# A329244: Sum of every third term of the Padovan sequence A000931.

The programs for A329244, the canonical program `A329244.P4010248767116107399` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329244 has offset 0).

The definition of A329244 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A329244.P4010248767116107399

`A000931(3*n+2)+1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A329244

/-- `A000931(3*n+2)+1` -/
def P4010248767116107399.Spec : Prop :=
  ∀ n, P4010248767116107399.a n = A329244 n

theorem P4010248767116107399.correct : P4010248767116107399.Spec := by
  intro n
  simp only [A329244]

end A329244

/-! ## A329244.P16423028034234233548

`4*a(n-1)-5*a(n-2)+3*a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5`
-/

namespace A329244.P16423028034234233548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 5] fun n a =>
  4 * a (n - 1) - 5 * a (n - 2) + 3 * a (n - 3) - a (n - 4)

end

end A329244.P16423028034234233548

namespace A329244

/-- `4*a(n-1)-5*a(n-2)+3*a(n-3)-a(n-4)` -/
def P16423028034234233548.Spec : Prop :=
  ∀ n, P16423028034234233548.a n = A329244 n

end A329244

/-! ## A329244.P6009900730147751965

`∑[A034943(n)]`
-/

namespace A329244.P6009900730147751965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034943 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329244.P6009900730147751965

namespace A329244

/-- `∑[A034943(n)]` -/
def P6009900730147751965.Spec : Prop :=
  ∀ n, P6009900730147751965.a n = A329244 n

end A329244

/-! ## A329244.P16813348655811960113

`∑[A000931(3*n)]`
-/

namespace A329244.P16813348655811960113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329244.P16813348655811960113

namespace A329244

/-- `∑[A000931(3*n)]` -/
def P16813348655811960113.Spec : Prop :=
  ∀ n, P16813348655811960113.a n = A329244 n

end A329244

/-! ## A329244.P14313302554031021340

`∑[∑[A078027(3*n)]]`
-/

namespace A329244.P14313302554031021340
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 (3 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329244.P14313302554031021340

namespace A329244

/-- `∑[∑[A078027(3*n)]]` -/
def P14313302554031021340.Spec : Prop :=
  ∀ n, P14313302554031021340.a n = A329244 n

end A329244

/-! ## A329244.P3280647450632734179

`A133034(3*(n+2))+1`
-/

namespace A329244.P3280647450632734179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133034 (3 * (n + 2)) + 1

end

end A329244.P3280647450632734179

namespace A329244

/-- `A133034(3*(n+2))+1` -/
def P3280647450632734179.Spec : Prop :=
  ∀ n, P3280647450632734179.a n = A329244 n

end A329244

/-! ## A329244.P13377231027561274390

`A078027(3*n+4)+1`
-/

namespace A329244.P13377231027561274390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 (3 * n + 4) + 1

end

end A329244.P13377231027561274390

namespace A329244

/-- `A078027(3*n+4)+1` -/
def P13377231027561274390.Spec : Prop :=
  ∀ n, P13377231027561274390.a n = A329244 n

end A329244

/-! ## A329244.P13114491471387966352

`A181984(n-2)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A329244.P13114491471387966352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A181984 (n - 2) + a (n - 1)

end

end A329244.P13114491471387966352

namespace A329244

/-- `A181984(n-2)+a(n-1)` -/
def P13114491471387966352.Spec : Prop :=
  ∀ n, P13114491471387966352.a n = A329244 n

end A329244

/-! ## A329244.P7006979904602723466

`∑[A181984(A004275(n)-n)]`
-/

namespace A329244.P7006979904602723466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181984 (A004275 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329244.P7006979904602723466

namespace A329244

/-- `∑[A181984(A004275(n)-n)]` -/
def P7006979904602723466.Spec : Prop :=
  ∀ n, P7006979904602723466.a n = A329244 n

end A329244

/-! ## A329244.P3352863339758000150

`A228361(A004274(n)+n)+1`
-/

namespace A329244.P3352863339758000150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228361 (A004274 n + (n : ℤ)).toNat + 1

end

end A329244.P3352863339758000150

namespace A329244

/-- `A228361(A004274(n)+n)+1` -/
def P3352863339758000150.Spec : Prop :=
  ∀ n, P3352863339758000150.a n = A329244 n

end A329244

/-! ## A329244.P3191626085462912627

`∑[∑[A000931(A004275(n)+n)]]`
-/

namespace A329244.P3191626085462912627
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (A004275 n + (n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329244.P3191626085462912627

namespace A329244

/-- `∑[∑[A000931(A004275(n)+n)]]` -/
def P3191626085462912627.Spec : Prop :=
  ∀ n, P3191626085462912627.a n = A329244 n

end A329244

/-! ## A329244.P15027592721686711587

`A134816(3*n+1)+1-A182097(3*n)`
-/

namespace A329244.P15027592721686711587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (3 * n + 1) + (1 - A182097 (3 * n))

end

end A329244.P15027592721686711587

namespace A329244

/-- `A134816(3*n+1)+1-A182097(3*n)` -/
def P15027592721686711587.Spec : Prop :=
  ∀ n, P15027592721686711587.a n = A329244 n

end A329244

/-! ## A329244.P5671323945816074771

`A137531(n)+1-A097550(n)`
-/

namespace A329244.P5671323945816074771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137531 n + (1 - A097550 n)

end

end A329244.P5671323945816074771

namespace A329244

/-- `A137531(n)+1-A097550(n)` -/
def P5671323945816074771.Spec : Prop :=
  ∀ n, P5671323945816074771.a n = A329244 n

end A329244

/-! ## A329244.P495277598946026209

`∑[A052921(n+1)-A097550(n)]`
-/

namespace A329244.P495277598946026209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052921 (n + 1) - A097550 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329244.P495277598946026209

namespace A329244

/-- `∑[A052921(n+1)-A097550(n)]` -/
def P495277598946026209.Spec : Prop :=
  ∀ n, P495277598946026209.a n = A329244 n

end A329244

/-! ## A329244.P251693839157344318

`Δ[A181984(n)]+1-A181984(n)`
-/

namespace A329244.P251693839157344318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181984 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (1 - A181984 n)

end

end A329244.P251693839157344318

namespace A329244

/-- `Δ[A181984(n)]+1-A181984(n)` -/
def P251693839157344318.Spec : Prop :=
  ∀ n, P251693839157344318.a n = A329244 n

end A329244

/-! ## A329244.P9546824047819073769

`A137229(n+1)+2-A159328(n)`
-/

namespace A329244.P9546824047819073769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137229 (n + 1) + (2 - A159328 n)

end

end A329244.P9546824047819073769

namespace A329244

/-- `A137229(n+1)+2-A159328(n)` -/
def P9546824047819073769.Spec : Prop :=
  ∀ n, P9546824047819073769.a n = A329244 n

end A329244

/-! ## A329244.P16687152620634808145

`∑[∑[A159328(n)-A159347(n+2)]]`
-/

namespace A329244.P16687152620634808145
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159328 n - A159347 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329244.P16687152620634808145

namespace A329244

/-- `∑[∑[A159328(n)-A159347(n+2)]]` -/
def P16687152620634808145.Spec : Prop :=
  ∀ n, P16687152620634808145.a n = A329244 n

end A329244

/-! ## A329244.P13150942418105966729

`A052921(n+1)+1-A135364(n+1)`
-/

namespace A329244.P13150942418105966729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052921 (n + 1) + (1 - A135364 (n + 1))

end

end A329244.P13150942418105966729

namespace A329244

/-- `A052921(n+1)+1-A135364(n+1)` -/
def P13150942418105966729.Spec : Prop :=
  ∀ n, P13150942418105966729.a n = A329244 n

end A329244

/-! ## A329244.P6041198551374909754

`A095263(n+1)+A095263(n+1)-A137229(n+1)`
-/

namespace A329244.P6041198551374909754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095263 (n + 1) + (A095263 (n + 1) - A137229 (n + 1))

end

end A329244.P6041198551374909754

namespace A329244

/-- `A095263(n+1)+A095263(n+1)-A137229(n+1)` -/
def P6041198551374909754.Spec : Prop :=
  ∀ n, P6041198551374909754.a n = A329244 n

end A329244

/-!
# A329249: Starting from n: as long as the decimal representation starts with an odd number, multiply the largest such prefix by 2; a(n) corresponds to the final value.

The programs for A329249, there is no canonical definition to state claims against.
-/

/-! ## A329249.P12388778303026812850

`A020639(2*A017913(n+1))*A107128(2*A107128(n))`
-/

namespace A329249.P12388778303026812850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * A017913 (n + 1)).toNat * A107128 (2 * A107128 n).toNat

end

end A329249.P12388778303026812850

/-! ## A329249.P14035290537292918592

`A020639(A056040(n+1))*A107128(2*A107128(n))`
-/

namespace A329249.P14035290537292918592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A056040 (n + 1)).toNat * A107128 (2 * A107128 n).toNat

end

end A329249.P14035290537292918592

/-!
# A329250: Let P1, P2, P3, P4 be consecutive primes, with P2 - P1 = P4 - P3 = 2. a(n) = (P1 + P2)/12 for the first occurrence of (P3 - P1)/6 = n.

The programs for A329250, there is no canonical definition to state claims against.
-/

/-! ## A329250.P15589351757706667365

`ceil(A082512(3*n+2)/6)`
-/

namespace A329250.P15589351757706667365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A082512 (3 * n + 2) : ℚ) / 6⌉

end

end A329250.P15589351757706667365

/-! ## A329250.P4257562983238469951

`ceil(p?[A082512(n+1)]/6)`
-/

namespace A329250.P4257562983238469951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082512 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 6⌉

end

end A329250.P4257562983238469951

/-!
# A329251: Let P1 >= 3, P2, P3 be consecutive primes, with P3 - P2 = 2. a(n) = (P2 + P3)/12 for the first occurrence of (P2 - P1)/2 = n.

The programs for A329251, there is no canonical definition to state claims against.
-/

/-! ## A329251.P9204458994266776550

`ceil(A308764(∑[n+1])/6)`
-/

namespace A329251.P9204458994266776550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A308764 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 6⌉

end

end A329251.P9204458994266776550

/-! ## A329251.P9264455745462641805

`round(A308764(∑[a(n-1)+1])/6)` with `a(0)=1`
-/

namespace A329251.P9264455745462641805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A308764 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 6)

end

end A329251.P9264455745462641805

/-! ## A329251.P7207513202774634764

`round(A308764(Δ[A005581(n)]+1)/6)`
-/

namespace A329251.P7207513202774634764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A308764 (f1 (n + 1) - f1 n + 1).toNat : ℚ) / 6)

end

end A329251.P7207513202774634764

/-! ## A329251.P15431036884235726051

`A008615(A308764(∑[n+1]))`
-/

namespace A329251.P15431036884235726051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A308764 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A329251.P15431036884235726051

/-!
# A329252: Let P1 >= 5, P2, P3 be consecutive primes, with P2 - P1 = 2. a(n) = (P1 + P2)/12 for the first occurrence of (P3 - P2)/2 = n.

The programs for A329252, there is no canonical definition to state claims against.
-/

/-! ## A329252.P11981282663063384665

`floor(A308764(∑[n+1]+1)/6)`
-/

namespace A329252.P11981282663063384665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A308764 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) / 6⌋

end

end A329252.P11981282663063384665

/-!
# A329253: The number of Nakayama algebras with a connected cyclic quiver, finite global dimension and n simple modules.

The programs for A329253, there is no canonical definition to state claims against.
-/

/-! ## A329253.P17801424896523026825

`A060404(n+2)-A003239(n+2)`
-/

namespace A329253.P17801424896523026825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060404 (n + 2) - A003239 (n + 2)

end

end A329253.P17801424896523026825

/-! ## A329253.P4895632760729954009

`Δ[Δ[A002264(A047047(n))]]`
-/

namespace A329253.P4895632760729954009
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A047047 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A329253.P4895632760729954009

/-!
# A329254: Smallest palindrome k, not less than n, such that k is also a palindrome in base n.

The programs for A329254, there is no canonical definition to state claims against.
-/

/-! ## A329254.P10648402228101695133

`∩[A271928(n+1), A048410(n)]`
-/

namespace A329254.P10648402228101695133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271928 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048410 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329254.P10648402228101695133

/-! ## A329254.P10549573495680436576

`A000720(record[A143265(3*n+2)])`
-/

namespace A329254.P10549573495680436576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143265 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A329254.P10549573495680436576

/-! ## A329254.P8382788094466812191

`A007306(or(1, A285758(n+1)^n))`
-/

namespace A329254.P8382788094466812191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (Int.lor 1 (A285758 (n + 1) ^ n)).toNat

end

end A329254.P8382788094466812191

/-! ## A329254.P15673925616480291092

`∩[A050783(n+1), A265126(n+1)]`
-/

namespace A329254.P15673925616480291092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329254.P15673925616480291092

/-! ## A329254.P13420322592781642145

`∩[A052426(n+1), A265126(n+1)]`
-/

namespace A329254.P13420322592781642145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052426 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329254.P13420322592781642145

/-!
# A329255: Irregular triangle read by rows: T(n,k) is greatest positive integer <= n that have a partition into k consecutive parts, 1 <= k <= A003056(n), n >= 1.

The programs for A329255, there is no canonical definition to state claims against.
-/

/-! ## A329255.P2595284183258930375

`A190427(A337798(3*n+2))+A000720(n+1)`
-/

namespace A329255.P2595284183258930375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190427 (A337798 (3 * n + 2)).toNat + A000720 (n + 1)

end

end A329255.P2595284183258930375

/-! ## A329255.P15959971923675927794

`A069288(n+1)+A001221(A080506(n+1))`
-/

namespace A329255.P15959971923675927794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069288 (n + 1) + A001221 (A080506 (n + 1)).toNat

end

end A329255.P15959971923675927794

/-! ## A329255.P13996247684584467612

`A064876(A231238(5*n+3)-A080036(n))`
-/

namespace A329255.P13996247684584467612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064876 (A231238 (5 * n + 3) - A080036 n).toNat

end

end A329255.P13996247684584467612

/-! ## A329255.P9551888487222863587

`A134914(lcm(A007951(n+1), A187829(n+1)))`
-/

namespace A329255.P9551888487222863587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134914 (Int.lcm (A007951 (n + 1)) (A187829 (n + 1)))

end

end A329255.P9551888487222863587

/-! ## A329255.P2291292857120883184

`A003056(3*n+4)-A384877(A025487(n+1))`
-/

namespace A329255.P2291292857120883184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (3 * n + 4) - A384877 (A025487 (n + 1)).toNat

end

end A329255.P2291292857120883184

/-!
# A329256: Expansion of e.g.f. exp(Sum_{k>=1} x^(k^2) / (k^2)!).

The programs for A329256, there is no canonical definition to state claims against.
-/

/-! ## A329256.P17399841041630799761

`A025468(n)+A008612(3*(70*C(n, 8)+2*C(n, 4)+1))`
-/

namespace A329256.P17399841041630799761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025468 n + A008612 (3 * (70 * Nat.choose n 8 + 2 * Nat.choose n 4 + 1))

end

end A329256.P17399841041630799761

/-! ## A329256.P10801540341672792554

`A351932(n)+A025465(A061138(n))`
-/

namespace A329256.P10801540341672792554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351932 n + A025465 (A061138 n).toNat

end

end A329256.P10801540341672792554

/-! ## A329256.P13899744297028928580

`A351932(n)+A025465(A063029(n))`
-/

namespace A329256.P13899744297028928580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351932 n + A025465 (A063029 n).toNat

end

end A329256.P13899744297028928580

/-! ## A329256.P871675098702718401

`A351932(A082216(n))+A025465(n)`
-/

namespace A329256.P871675098702718401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351932 (A082216 n).toNat + A025465 n

end

end A329256.P871675098702718401

/-! ## A329256.P13540880194879931467

`A351932(A082216(n))+A025468(n)`
-/

namespace A329256.P13540880194879931467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351932 (A082216 n).toNat + A025468 n

end

end A329256.P13540880194879931467

/-!
# A329257: a(n) is the number of numbers k such that a(n-2*k) = a(n-k) and 0 < n-2*k < n-k < n .

The programs for A329257, there is no canonical definition to state claims against.
-/

/-! ## A329257.P9719455700109041233

`A000120(A065363(A048072(n+1))²)`
-/

namespace A329257.P9719455700109041233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A065363 (A048072 (n + 1)).toNat ^ 2).toNat

end

end A329257.P9719455700109041233

/-! ## A329257.P9336697689657652329

`A005117(A057507(n))%A030717(n+1)`
-/

namespace A329257.P9336697689657652329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005117 (A057507 n).toNat) (A030717 (n + 1))

end

end A329257.P9336697689657652329

/-! ## A329257.P2554056960827605614

`A333325(A358344(n+1))`
-/

namespace A329257.P2554056960827605614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333325 (A358344 (n + 1)).toNat

end

end A329257.P2554056960827605614

/-! ## A329257.P1778024413045718088

`A241913(A267004(n)-n)%3`
-/

namespace A329257.P1778024413045718088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241913 (A267004 n - (n : ℤ)).toNat) 3

end

end A329257.P1778024413045718088

/-! ## A329257.P5772598986108972653

`A160160(A000045(n))%(3-2*char[n²])`
-/

namespace A329257.P5772598986108972653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160160 (A000045 n).toNat) (3 - ((2 * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ))

end

end A329257.P5772598986108972653

/-!
# A329258: Expansion of e.g.f. -log(1 - Sum_{k>=1} x^(k*(k + 1)/2) / (k*(k + 1)/2)!).

The programs for A329258, there is no canonical definition to state claims against.
-/

/-! ## A329258.P13890993245380055134

`A005378(∑[A001710(n)])-A020118(n)`
-/

namespace A329258.P13890993245380055134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005378 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A020118 n

end

end A329258.P13890993245380055134

/-! ## A329258.P8856362610260314580

`A002264(A000142(n)+∑[A001683(n+2)])`
-/

namespace A329258.P8856362610260314580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001683 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A000142 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A329258.P8856362610260314580

/-! ## A329258.P1790293648348352099

`A083382(xor(1, 3*a(n-1)*n²))` with `a(0)=0, a(1)=1`
-/

namespace A329258.P1790293648348352099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A083382 (Int.xor 1 (3 * a (n - 1) * (n ^ 2 : ℤ))).toNat

end

end A329258.P1790293648348352099

/-!
# A329259: Expansion of e.g.f. -log(1 - Sum_{k>=1} x^(k^2) / (k^2)!).

The programs for A329259, there is no canonical definition to state claims against.
-/

/-! ## A329259.P18147843383179733482

`A194698(A000142(n))+A104150(n)`
-/

namespace A329259.P18147843383179733482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194698 (A000142 n).toNat + A104150 n

end

end A329259.P18147843383179733482

/-! ## A329259.P1439388919325755304

`A342696(A001710(n))+A104150(n)`
-/

namespace A329259.P1439388919325755304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342696 (A001710 n).toNat + A104150 n

end

end A329259.P1439388919325755304

/-! ## A329259.P11740352192508065962

`A194698(A104150(n+1))+A104150(n)`
-/

namespace A329259.P11740352192508065962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194698 (A104150 (n + 1)).toNat + A104150 n

end

end A329259.P11740352192508065962

/-! ## A329259.P6575627317510602725

`A342696(A001710(n))-(A342696(n)-A104150(n))`
-/

namespace A329259.P6575627317510602725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342696 (A001710 n).toNat - (A342696 n - A104150 n)

end

end A329259.P6575627317510602725

/-!
# A329260: Expansion of e.g.f. -log(1 - Sum_{k>=0} x^(2^k) / (2^k)!).

The programs for A329260, there is no canonical definition to state claims against.
-/

/-! ## A329260.P11844090022450549760

`A004526(A266089(n)+A068107(n+1))`
-/

namespace A329260.P11844090022450549760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A266089 n + A068107 (n + 1)).toNat

end

end A329260.P11844090022450549760

/-! ## A329260.P5289907970002837499

`A123108(A266089(n)+A068107(n+1))`
-/

namespace A329260.P5289907970002837499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A266089 n + A068107 (n + 1)).toNat

end

end A329260.P5289907970002837499

/-! ## A329260.P10532846662934659739

`A110654(record[A000608(n)%A165534(n+1)])`
-/

namespace A329260.P10532846662934659739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000608 n) (A165534 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A329260.P10532846662934659739

/-!
# A329261: Expansion of e.g.f. -log(1 - Sum_{k>=1} x^prime(k) / prime(k)!).

The programs for A329261, there is no canonical definition to state claims against.
-/

/-! ## A329261.P14188873260945234579

`A033101(A263777(n)+A033094(n+1))`
-/

namespace A329261.P14188873260945234579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033101 (A263777 n + A033094 (n + 1)).toNat

end

end A329261.P14188873260945234579

/-!
# A329262: Prime pairs of the form (30k - 7, 30k + 7).

The programs for A329262, there is no canonical definition to state claims against.
-/

/-! ## A329262.P3585260233791318965

`p?[(n+9)*A016341(n)]`
-/

namespace A329262.P3585260233791318965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 9 : ℤ) * A016341 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A329262.P3585260233791318965

/-! ## A329262.P8759851059632233482

`p?[(n+9)*A016382(n)]`
-/

namespace A329262.P8759851059632233482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 9 : ℤ) * A016382 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A329262.P8759851059632233482

/-! ## A329262.P5713584169890870932

`A132237(A032555(n+2))`
-/

namespace A329262.P5713584169890870932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132237 (A032555 (n + 2)).toNat

end

end A329262.P5713584169890870932

/-! ## A329262.P1889805708469774177

`A132237(A032559(n+2))`
-/

namespace A329262.P1889805708469774177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132237 (A032559 (n + 2)).toNat

end

end A329262.P1889805708469774177

/-!
# A329265: a(n) is the number of solutions of the infinite Diophantine equation Sum_{j>0} j^r*(k_j)^2 = n with k_j integers and r = 3.

The programs for A329265, there is no canonical definition to state claims against.
-/

/-! ## A329265.P12140985542484774224

`A226225(n)+A107393(A097479(n))`
-/

namespace A329265.P12140985542484774224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226225 n + A107393 (A097479 n).toNat

end

end A329265.P12140985542484774224

/-! ## A329265.P3237302797328744299

`A226225(gcd(n, A004247(A185037(n))))`
-/

namespace A329265.P3237302797328744299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226225 (Int.gcd (n : ℤ) (A004247 (A185037 n).toNat))

end

end A329265.P3237302797328744299

/-!
# A329266: a(n) is the number of solutions of the infinite Diophantine equation Sum_{j>0} j^r*(k_j)^2 = n with k_j integers and r = 4.

The programs for A329266, there is no canonical definition to state claims against.
-/

/-! ## A329266.P4635522397538287562

`A028629(4*n)%p?[A048305(n)]`
-/

namespace A329266.P4635522397538287562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048305 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028629 (4 * n)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A329266.P4635522397538287562

/-! ## A329266.P1890446964489527912

`A028629(4*n)/A181370(A181386(n+1))`
-/

namespace A329266.P1890446964489527912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028629 (4 * n) : ℚ) / (A181370 (A181386 (n + 1)).toNat : ℚ)

end

end A329266.P1890446964489527912

/-! ## A329266.P12989170787919702145

`A028629(4*n)+A003982(A008578(n²+1))`
-/

namespace A329266.P12989170787919702145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028629 (4 * n) + A003982 (A008578 (n ^ 2 + 1)).toNat

end

end A329266.P12989170787919702145

/-! ## A329266.P12761972295116840060

`A028629(A008586(n))^A348947(n+1)`
-/

namespace A329266.P12761972295116840060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028629 (A008586 n).toNat : ℚ) ^ (A348947 (n + 1) : ℤ)

end

end A329266.P12761972295116840060

/-! ## A329266.P7913737788599482483

`A028629(4*n)*A295316(A187809(n+2))`
-/

namespace A329266.P7913737788599482483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028629 (4 * n) * A295316 (A187809 (n + 2)).toNat

end

end A329266.P7913737788599482483

/-!
# A329268: Positions of 1 in A309797.

The programs for A329268, there is no canonical definition to state claims against.
-/

/-! ## A329268.P7618375590702954307

`eq[1, A309797(n+1)]+1`
-/

namespace A329268.P7618375590702954307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309797 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A329268.P7618375590702954307

/-! ## A329268.P9170624327213589298

`record[A000027(n+1)/A309797(n+1)]`
-/

namespace A329268.P9170624327213589298
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A309797 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329268.P9170624327213589298

/-! ## A329268.P4389524565214522115

`record[A008619(n)/A309797(A008619(n))]`
-/

namespace A329268.P4389524565214522115
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 n : ℚ) / (A309797 (A008619 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329268.P4389524565214522115

/-! ## A329268.P11740995529223597888

`record[A003602(n+1)/A309797(A003602(n+1))]`
-/

namespace A329268.P11740995529223597888
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003602 (n + 1) : ℚ) / (A309797 (A003602 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329268.P11740995529223597888

/-! ## A329268.P7016575745433231157

`record[A003603(n+1)/A309797(A003603(n+1))]`
-/

namespace A329268.P7016575745433231157
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003603 (n + 1) : ℚ) / (A309797 (A003603 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329268.P7016575745433231157

/-!
# A329269: Integers k such that 8*k + 1 is a prime or a square.

The programs for A329269, the canonical program `A329269.P8670205406742667654` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329269 has offset 1).

The definition of A329269 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A329269.P8670205406742667654

`∪[A005123(n+1), ∑[n]]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A329269

/-- `∪[A005123(n+1), ∑[n]]` -/
def P8670205406742667654.Spec : Prop :=
  ∀ n, (P8670205406742667654.a n : ℤ) = A329269 (n + 1)

theorem P8670205406742667654.correct : P8670205406742667654.Spec := by
  intro n
  simp only [A329269, Nat.add_sub_cancel]

end A329269

/-! ## A329269.P14349442473446941772

`∪[A153762(n+1)+1, ∑[n]]`
-/

namespace A329269.P14349442473446941772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153762 (n + 1) + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A329269.P14349442473446941772

namespace A329269

/-- `∪[A153762(n+1)+1, ∑[n]]` -/
def P14349442473446941772.Spec : Prop :=
  ∀ n, (P14349442473446941772.a n : ℤ) = A329269 (n + 1)

end A329269

/-! ## A329269.P10339564667489235841

`∪[A000217(n), A005123(n+1)]`
-/

namespace A329269.P10339564667489235841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A329269.P10339564667489235841

namespace A329269

/-- `∪[A000217(n), A005123(n+1)]` -/
def P10339564667489235841.Spec : Prop :=
  ∀ n, (P10339564667489235841.a n : ℤ) = A329269 (n + 1)

end A329269

/-! ## A329269.P9292206923725159276

`record[gcd(n, A166405(4*n))]`
-/

namespace A329269.P9292206923725159276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A166405 (4 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329269.P9292206923725159276

namespace A329269

/-- `record[gcd(n, A166405(4*n))]` -/
def P9292206923725159276.Spec : Prop :=
  ∀ n, (P9292206923725159276.a n : ℤ) = A329269 (n + 1)

end A329269

/-!
# A329271: Numbers k such that k multiplied by the product of its divisors contains k as a substring.

The programs for A329271, there is no canonical definition to state claims against.
-/

/-! ## A329271.P10268611329292855506

`∑[dr(A310336(A059502(n)))]`
-/

namespace A329271.P10268611329292855506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A310336 (A059502 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329271.P10268611329292855506

/-! ## A329271.P12300317428321709313

`A253620(n+1)+A253580(A151665(n))`
-/

namespace A329271.P12300317428321709313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253620 (n + 1) + A253580 (A151665 n).toNat

end

end A329271.P12300317428321709313

/-!
# A329272: Number of octic primitive Dirichlet characters modulo n.

The programs for A329272, there is no canonical definition to state claims against.
-/

/-! ## A329272.P18444395612142141514

`∑{d}[n+1, A008683(#)*A247257((n+1)/#)]`
-/

namespace A329272.P18444395612142141514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A247257 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A329272.P18444395612142141514

/-! ## A329272.P7753171781593115037

`A354058(A000217(n+7)+8)`
-/

namespace A329272.P7753171781593115037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354058 (A000217 (n + 7) + 8).toNat

end

end A329272.P7753171781593115037

/-! ## A329272.P13767221512991442338

`A354058(eq[9, A131818(n+1)])`
-/

namespace A329272.P13767221512991442338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354058 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A329272.P13767221512991442338

/-! ## A329272.P3095725354453618039

`xor(A160517(n+1)+A160499(n+1), A160517(n+1))`
-/

namespace A329272.P3095725354453618039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A160517 (n + 1) + A160499 (n + 1)) (A160517 (n + 1))

end

end A329272.P3095725354453618039

/-! ## A329272.P14195134529302486792

`A349797(A085557(n+1))+A160499(n+1)`
-/

namespace A329272.P14195134529302486792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349797 (A085557 (n + 1)).toNat + A160499 (n + 1)

end

end A329272.P14195134529302486792

/-!
# A329273: a(1)=1. If n is prime, a(n)=0; if not, a(n) = (the smallest prime number greater than n) minus (the largest prime number smaller than n) minus 1.

The programs for A329273, the canonical program `A329273.P5366949048814216937` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329273 has offset 1).

The definition of A329273 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A329273.P2516034677302401530

`(A166597(n)-1)*A005171(n+1)`
-/

namespace A329273.P2516034677302401530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A166597 n - 1) * A005171 (n + 1)

end

end A329273.P2516034677302401530

namespace A329273

/-- `(A166597(n)-1)*A005171(n+1)` -/
def P2516034677302401530.Spec : Prop :=
  ∀ n, P2516034677302401530.a n = A329273 (n + 1)

end A329273

/-! ## A329273.P15820538485177981688

`gcd(A129950(n+1), A166597(n))-1`
-/

namespace A329273.P15820538485177981688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A129950 (n + 1)) (A166597 n) : ℤ) - 1

end

end A329273.P15820538485177981688

namespace A329273

/-- `gcd(A129950(n+1), A166597(n))-1` -/
def P15820538485177981688.Spec : Prop :=
  ∀ n, P15820538485177981688.a n = A329273 (n + 1)

end A329273

/-! ## A329273.P12206551751555700130

`A002837(A166597(n))*A005171(n+1)`
-/

namespace A329273.P12206551751555700130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002837 (A166597 n).toNat * A005171 (n + 1)

end

end A329273.P12206551751555700130

namespace A329273

/-- `A002837(A166597(n))*A005171(n+1)` -/
def P12206551751555700130.Spec : Prop :=
  ∀ n, P12206551751555700130.a n = A329273 (n + 1)

end A329273

/-! ## A329273.P15415779001159365059

`A008347(A005171(n+1)*A166597(n))`
-/

namespace A329273.P15415779001159365059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008347 (A005171 (n + 1) * A166597 n).toNat

end

end A329273.P15415779001159365059

namespace A329273

/-- `A008347(A005171(n+1)*A166597(n))` -/
def P15415779001159365059.Spec : Prop :=
  ∀ n, P15415779001159365059.a n = A329273 (n + 1)

end A329273

/-! ## A329273.P8524630580695674313

`A014681(A005171(n+1)*A166597(n))`
-/

namespace A329273.P8524630580695674313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A005171 (n + 1) * A166597 n).toNat

end

end A329273.P8524630580695674313

namespace A329273

/-- `A014681(A005171(n+1)*A166597(n))` -/
def P8524630580695674313.Spec : Prop :=
  ∀ n, P8524630580695674313.a n = A329273 (n + 1)

end A329273

/-! ## A329273.P9576486217587590265

`A235049(A005171(n+1)*A166597(n))`
-/

namespace A329273.P9576486217587590265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A005171 (n + 1) * A166597 n).toNat

end

end A329273.P9576486217587590265

namespace A329273

/-- `A235049(A005171(n+1)*A166597(n))` -/
def P9576486217587590265.Spec : Prop :=
  ∀ n, P9576486217587590265.a n = A329273 (n + 1)

end A329273

/-! ## A329273.P8393298394115825450

`A002837(A166597(n))%A347087(n+1)`
-/

namespace A329273.P8393298394115825450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002837 (A166597 n).toNat) (A347087 (n + 1))

end

end A329273.P8393298394115825450

namespace A329273

/-- `A002837(A166597(n))%A347087(n+1)` -/
def P8393298394115825450.Spec : Prop :=
  ∀ n, P8393298394115825450.a n = A329273 (n + 1)

end A329273

/-! ## A329273.P16507132006829067896

`(A166597(n)-1)%A014641(A040081(n+2))`
-/

namespace A329273.P16507132006829067896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166597 n - 1) (A014641 (A040081 (n + 2)).toNat)

end

end A329273.P16507132006829067896

namespace A329273

/-- `(A166597(n)-1)%A014641(A040081(n+2))` -/
def P16507132006829067896.Spec : Prop :=
  ∀ n, P16507132006829067896.a n = A329273 (n + 1)

end A329273

/-! ## A329273.P8472344451339756689

`A000030(90*A005171(n+1)*A166597(n))`
-/

namespace A329273.P8472344451339756689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (90 * (A005171 (n + 1) * A166597 n)).toNat

end

end A329273.P8472344451339756689

namespace A329273

/-- `A000030(90*A005171(n+1)*A166597(n))` -/
def P8472344451339756689.Spec : Prop :=
  ∀ n, P8472344451339756689.a n = A329273 (n + 1)

end A329273

/-! ## A329273.P10125336095271934804

`A072680(n+1)-A168049(a(A072680(n+1)))` with `a(0)=1`
-/

namespace A329273.P10125336095271934804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A072680 (n + 1) - A168049 (a (A072680 (n + 1)).toNat).toNat

end

end A329273.P10125336095271934804

namespace A329273

/-- `A072680(n+1)-A168049(a(A072680(n+1)))` -/
def P10125336095271934804.Spec : Prop :=
  ∀ n, P10125336095271934804.a n = A329273 (n + 1)

end A329273

/-! ## A329273.P13613378398277960041

`A064722(n+1)+A007920(A066247(n+1)+n+1)`
-/

namespace A329273.P13613378398277960041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064722 (n + 1) + A007920 (A066247 (n + 1) + (n + 1 : ℤ)).toNat

end

end A329273.P13613378398277960041

namespace A329273

/-- `A064722(n+1)+A007920(A066247(n+1)+n+1)` -/
def P13613378398277960041.Spec : Prop :=
  ∀ n, P13613378398277960041.a n = A329273 (n + 1)

end A329273

/-! ## A329273.P5366949048814216937

`A008347(A166597(n))%A014076(A013632(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A329273

/-- `A008347(A166597(n))%A014076(A013632(n))` -/
def P5366949048814216937.Spec : Prop :=
  ∀ n, P5366949048814216937.a n = A329273 (n + 1)

theorem P5366949048814216937.correct : P5366949048814216937.Spec := by
  intro n
  simp only [A329273, Nat.add_sub_cancel]

end A329273

/-! ## A329273.P806518748602354660

`A235049(A166597(n))%A005408(A191558(n+1))`
-/

namespace A329273.P806518748602354660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A235049 (A166597 n).toNat) (A005408 (A191558 (n + 1)).toNat)

end

end A329273.P806518748602354660

namespace A329273

/-- `A235049(A166597(n))%A005408(A191558(n+1))` -/
def P806518748602354660.Spec : Prop :=
  ∀ n, P806518748602354660.a n = A329273 (n + 1)

end A329273

/-!
# A329274: Expansion of 1 / (1 + Sum_{k>=1} phi(k) * log(1 - 2 * x^k) / k), where phi = A000010.

The programs for A329274, there is no canonical definition to state claims against.
-/

/-! ## A329274.P13591874447416554456

`A127757(A092465(n+1))-n`
-/

namespace A329274.P13591874447416554456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 (A092465 (n + 1)).toNat - (n : ℤ)

end

end A329274.P13591874447416554456

/-! ## A329274.P10704122140920846499

`A008615(A018078(2*(n+1))-A126772(n+1))`
-/

namespace A329274.P10704122140920846499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A018078 (2 * (n + 1)) - A126772 (n + 1)).toNat

end

end A329274.P10704122140920846499

/-!
# A329275: Expansion of 1 / (1 + Sum_{k>=1} mu(k) * log(1 - 2 * x^k) / k), where mu = A008683.

The programs for A329275, there is no canonical definition to state claims against.
-/

/-! ## A329275.P4551575186477769034

`A004526(A309861(n)+A027129(n))`
-/

namespace A329275.P4551575186477769034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A309861 n + A027129 n).toNat

end

end A329275.P4551575186477769034

/-! ## A329275.P15524937424715088990

`A110655(2*A027129(n))`
-/

namespace A329275.P15524937424715088990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (2 * A027129 n).toNat

end

end A329275.P15524937424715088990

/-! ## A329275.P443832116113136945

`A110656(4*A027129(n))`
-/

namespace A329275.P443832116113136945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (4 * A027129 n).toNat

end

end A329275.P443832116113136945

/-! ## A329275.P6898385326651465745

`A096125(A027129(n*A102480(n)))`
-/

namespace A329275.P6898385326651465745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096125 (A027129 ((n : ℤ) * A102480 n).toNat).toNat

end

end A329275.P6898385326651465745

/-!
# A329276: Expansion of 1 / (1 - Sum_{k>=1} mu(2*k) * log(1 - 2 * x^k) / (2 * k)), where mu = A008683.

The programs for A329276, there is no canonical definition to state claims against.
-/

/-! ## A329276.P8940466634333691471

`A343756(n)+A343747(A320371(n+1))`
-/

namespace A329276.P8940466634333691471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343756 n + A343747 (A320371 (n + 1)).toNat

end

end A329276.P8940466634333691471

/-! ## A329276.P4531943590009612230

`A343756(n)+A141702(A343756(n+2))`
-/

namespace A329276.P4531943590009612230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343756 n + A141702 (A343756 (n + 2)).toNat

end

end A329276.P4531943590009612230

/-! ## A329276.P11758334287896480337

`A347706(A112060(2*n+3))+A343756(n)`
-/

namespace A329276.P11758334287896480337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347706 (A112060 (2 * n + 3)).toNat + A343756 n

end

end A329276.P11758334287896480337

/-!
# A329277: a(n) is the fixed point reached by iterating Euler's gradus function A275314 starting at n.

The programs for A329277, there is no canonical definition to state claims against.
-/

/-! ## A329277.P242999235820551252

`A275314(A275314(A275314(A275314(n+1))))`
-/

namespace A329277.P242999235820551252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275314 (A275314 (A275314 (A275314 (n + 1)).toNat).toNat).toNat

end

end A329277.P242999235820551252

/-! ## A329277.P7314157964629004729

`A006530(A059975(2*(n+1))*A182522(n))`
-/

namespace A329277.P7314157964629004729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A059975 (2 * (n + 1)) * A182522 n).toNat

end

end A329277.P7314157964629004729

/-! ## A329277.P4785771073259768166

`A006530((2-A341865(n+1)+n)*A182522(n))`
-/

namespace A329277.P4785771073259768166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((2 - A341865 (n + 1) + (n : ℤ)) * A182522 n).toNat

end

end A329277.P4785771073259768166

/-! ## A329277.P468686410040712637

`A006530((∑{d}[n+1, A014963(#)-1]+1)*A182522(n))`
-/

namespace A329277.P468686410040712637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((∑ d ∈ Nat.divisors (f1 n), (A014963 d - 1) + 1) * A182522 n).toNat

end

end A329277.P468686410040712637

/-! ## A329277.P6595437128107204145

`A006530((A036288(n+1)-A001222(n+1))*A182522(n))`
-/

namespace A329277.P6595437128107204145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((A036288 (n + 1) - A001222 (n + 1)) * A182522 n).toNat

end

end A329277.P6595437128107204145

/-!
# A329278: Irregular table read by rows. The n-th row is the permutation of {0, 1, 2, ..., 2^n-1} given by T(n,k) = k(k+1)/2 (mod 2^n).

The programs for A329278, the canonical program `A329278.P202766685788889312` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329278 has offset 0).

The definition of A329278 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A329278.P2046918119870888191

`and(-A331105(n), A000225(A000523(n+1)))`
-/

namespace A329278.P2046918119870888191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A331105 n) (A000225 (A000523 (n + 1)).toNat)

end

end A329278.P2046918119870888191

namespace A329278

/-- `and(-A331105(n), A000225(A000523(n+1)))` -/
def P2046918119870888191.Spec : Prop :=
  ∀ n, P2046918119870888191.a n = A329278 n

end A329278

/-! ## A329278.P13390179754499076079

`A000217(A053645(n+1))%A053644(n+1)`
-/

namespace A329278.P13390179754499076079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (A053645 (n + 1)).toNat) (A053644 (n + 1))

end

end A329278.P13390179754499076079

namespace A329278

/-- `A000217(A053645(n+1))%A053644(n+1)` -/
def P13390179754499076079.Spec : Prop :=
  ∀ n, P13390179754499076079.a n = A329278 n

end A329278

/-! ## A329278.P5337028372265221995

`A000217(A054429(n+1))%A053644(n+1)`
-/

namespace A329278.P5337028372265221995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (A054429 (n + 1)).toNat) (A053644 (n + 1))

end

end A329278.P5337028372265221995

namespace A329278

/-- `A000217(A054429(n+1))%A053644(n+1)` -/
def P5337028372265221995.Spec : Prop :=
  ∀ n, P5337028372265221995.a n = A329278 n

end A329278

/-! ## A329278.P202766685788889312

`A000217(A053644(n+1)+n+1)%A053644(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A329278

/-- `A000217(A053644(n+1)+n+1)%A053644(n+1)` -/
def P202766685788889312.Spec : Prop :=
  ∀ n, P202766685788889312.a n = A329278 n

theorem P202766685788889312.correct : P202766685788889312.Spec := by
  intro n
  simp only [A329278]

end A329278

/-! ## A329278.P12444056380783567436

`A000217(A004754(n+1))%(n+1-A004754(n+1))`
-/

namespace A329278.P12444056380783567436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (A004754 (n + 1)).toNat) ((n + 1 : ℤ) - A004754 (n + 1))

end

end A329278.P12444056380783567436

namespace A329278

/-- `A000217(A004754(n+1))%(n+1-A004754(n+1))` -/
def P12444056380783567436.Spec : Prop :=
  ∀ n, P12444056380783567436.a n = A329278 n

end A329278

/-!
# A329279: Number of distinct tilings of a 2n X 2n square with 1 x n polyominoes.

The programs for A329279, the canonical program `A329279.P3472704594437755099` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329279 has offset 1).

The definition of A329279 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A329279.P3472704594437755099

`∑[record[or(2, n+1)]-a(n-1)]` with `a(0)=1, a(1)=8, a(2)=2`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A329279

/-- `∑[record[or(2, n+1)]-a(n-1)]` -/
def P3472704594437755099.Spec : Prop :=
  ∀ n, P3472704594437755099.a n = A329279 (n + 1)

theorem P3472704594437755099.correct : P3472704594437755099.Spec := by
  intro n
  simp only [A329279, Nat.add_sub_cancel]

end A329279

/-! ## A329279.P1441178979013809259

`Δ[a(n-1)+(n+2)*(floor(n/2)+1)]+1` with `a(0)=0, a(1)=0`
-/

namespace A329279.P1441178979013809259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 (n - 1) + (n + 2 : ℤ) * (⌊(n : ℚ) / 2⌋ + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A329279.P1441178979013809259

namespace A329279

/-- `Δ[a(n-1)+(n+2)*(floor(n/2)+1)]+1` -/
def P1441178979013809259.Spec : Prop :=
  ∀ n, P1441178979013809259.a n = A329279 (n + 1)

end A329279

/-! ## A329279.P17231260867624103918

`∑[A014682(2*char[1]+n+2)]`
-/

namespace A329279.P17231260867624103918
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (2 * (if ∃ j, f2 j = n then 1 else 0) + n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329279.P17231260867624103918

namespace A329279

/-- `∑[A014682(2*char[1]+n+2)]` -/
def P17231260867624103918.Spec : Prop :=
  ∀ n, P17231260867624103918.a n = A329279 (n + 1)

end A329279

/-! ## A329279.P13785991501402872904

`(n+2)²-(n+3)*A123108(n)`
-/

namespace A329279.P13785991501402872904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - (n + 3 : ℤ) * A123108 n

end

end A329279.P13785991501402872904

namespace A329279

/-- `(n+2)²-(n+3)*A123108(n)` -/
def P13785991501402872904.Spec : Prop :=
  ∀ n, P13785991501402872904.a n = A329279 (n + 1)

end A329279

/-! ## A329279.P11986516818412873892

`(n+3)*∑[A000045(a(n-2))]+1` with `a(0)=0, a(1)=2`
-/

namespace A329279.P11986516818412873892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  A000045 (f1 (n - 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A329279.P11986516818412873892

namespace A329279

/-- `(n+3)*∑[A000045(a(n-2))]+1` -/
def P11986516818412873892.Spec : Prop :=
  ∀ n, P11986516818412873892.a n = A329279 (n + 1)

end A329279

/-! ## A329279.P4405782015045403368

`A062545(ceil(n/2))+(n+1)*(ceil(n/2)+1)`
-/

namespace A329279.P4405782015045403368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 ⌈(n : ℚ) / 2⌉.toNat + (n + 1 : ℤ) * (⌈(n : ℚ) / 2⌉ + 1)

end

end A329279.P4405782015045403368

namespace A329279

/-- `A062545(ceil(n/2))+(n+1)*(ceil(n/2)+1)` -/
def P4405782015045403368.Spec : Prop :=
  ∀ n, P4405782015045403368.a n = A329279 (n + 1)

end A329279

/-! ## A329279.P18221433870732003667

`A093353(n+2)+gcd(5, a(n-1))` with `a(0)=1`
-/

namespace A329279.P18221433870732003667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A093353 (n + 2) + (Int.gcd 5 (a (n - 1)) : ℤ)

end

end A329279.P18221433870732003667

namespace A329279

/-- `A093353(n+2)+gcd(5, a(n-1))` -/
def P18221433870732003667.Spec : Prop :=
  ∀ n, P18221433870732003667.a n = A329279 (n + 1)

end A329279

/-! ## A329279.P4911822514849476765

`A178915((n+3)*(ceil(n/2)+1)+1)`
-/

namespace A329279.P4911822514849476765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178915 ((n + 3 : ℤ) * (⌈(n : ℚ) / 2⌉ + 1) + 1).toNat

end

end A329279.P4911822514849476765

namespace A329279

/-- `A178915((n+3)*(ceil(n/2)+1)+1)` -/
def P4911822514849476765.Spec : Prop :=
  ∀ n, P4911822514849476765.a n = A329279 (n + 1)

end A329279

/-! ## A329279.P16369800183168995862

`A321883(A079326(n+3))`
-/

namespace A329279.P16369800183168995862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321883 (A079326 (n + 3)).toNat

end

end A329279.P16369800183168995862

namespace A329279

/-- `A321883(A079326(n+3))` -/
def P16369800183168995862.Spec : Prop :=
  ∀ n, P16369800183168995862.a n = A329279 (n + 1)

end A329279

/-! ## A329279.P7029791242311164587

`A074764(∑[A014682(n+2)])`
-/

namespace A329279.P7029791242311164587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074764 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A329279.P7029791242311164587

namespace A329279

/-- `A074764(∑[A014682(n+2)])` -/
def P7029791242311164587.Spec : Prop :=
  ∀ n, P7029791242311164587.a n = A329279 (n + 1)

end A329279

/-!
# A329288: Table T(n,k) read by antidiagonals: T(n,k) = f(T(n,k-1)) starting with T(n,1)=n, where f(x) = x - 1 + x/gpf(x), that is, f(x) = A269304(x)-2.

The programs for A329288, there is no canonical definition to state claims against.
-/

/-! ## A329288.P2397008012480769152

`A009195(A128227(n))+A002262(n)`
-/

namespace A329288.P2397008012480769152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009195 (A128227 n).toNat + A002262 n

end

end A329288.P2397008012480769152

/-! ## A329288.P9624579151430197754

`A009195(A128227(n))+log2(A059268(n))`
-/

namespace A329288.P9624579151430197754
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A009195 (A128227 n).toNat : ℝ) + Real.logb 2 (A059268 n : ℝ)

end

end A329288.P9624579151430197754

/-! ## A329288.P4001328063035615321

`A025668(n+1)+A009195(A128227(n))`
-/

namespace A329288.P4001328063035615321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025668 (n + 1) + A009195 (A128227 n).toNat

end

end A329288.P4001328063035615321

/-! ## A329288.P16512538970295646506

`A052126(A144328(n+2))+A002262(n)`
-/

namespace A329288.P16512538970295646506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A144328 (n + 2)).toNat + A002262 n

end

end A329288.P16512538970295646506

/-! ## A329288.P13492183929963335253

`or(A002260(n+1), A080344(A128227(n)))`
-/

namespace A329288.P13492183929963335253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002260 (n + 1)) (A080344 (A128227 n).toNat)

end

end A329288.P13492183929963335253

/-! ## A329288.P9699341428427535946

`or(A002260(n+1), A072292(A002260(n+2)))`
-/

namespace A329288.P9699341428427535946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002260 (n + 1)) (A072292 (A002260 (n + 2)).toNat)

end

end A329288.P9699341428427535946

/-! ## A329288.P8979746137925727937

`A025581(A061579(n))+A009195(A128227(n))`
-/

namespace A329288.P8979746137925727937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A061579 n).toNat + A009195 (A128227 n).toNat

end

end A329288.P8979746137925727937

/-! ## A329288.P17084627382639020451

`A163326(A163328(n))+A009195(A128227(n))`
-/

namespace A329288.P17084627382639020451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163326 (A163328 n).toNat + A009195 (A128227 n).toNat

end

end A329288.P17084627382639020451

/-! ## A329288.P5759234763518840247

`or(A002260(n+1), A327407(A303929(n)))`
-/

namespace A329288.P5759234763518840247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002260 (n + 1)) (A327407 (A303929 n).toNat)

end

end A329288.P5759234763518840247

/-!
# A329289: Expansion of g.f. (1 + x) * (1 + x^2) * Product_{k>=1} (1 + x^k).

The programs for A329289, there is no canonical definition to state claims against.
-/

/-! ## A329289.P5674070382620958748

`A329384(n)-a(n-3)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A329289.P5674070382620958748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  A329384 n - a (n - 3)

end

end A329289.P5674070382620958748

/-! ## A329289.P2840234302055537231

`A278814(A006330(n)-log2(gcd(2, n)))`
-/

namespace A329289.P2840234302055537231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278814 (SequenceMachineLib.roundAway ((A006330 n : ℝ) - Real.logb 2 (Nat.gcd 2 n : ℝ))).toNat

end

end A329289.P2840234302055537231

/-! ## A329289.P6636411921530908707

`record[A257639(A171967(A133265(n)))]`
-/

namespace A329289.P6636411921530908707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A171967 (A133265 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329289.P6636411921530908707

/-! ## A329289.P6349104160786943230

`A278814(A006330(n)-A023416(n))`
-/

namespace A329289.P6349104160786943230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278814 (A006330 n - A023416 n).toNat

end

end A329289.P6349104160786943230

/-! ## A329289.P15061213438807591640

`A257639(A238589(2*(n+3)))`
-/

namespace A329289.P15061213438807591640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A238589 (2 * (n + 3))).toNat

end

end A329289.P15061213438807591640

/-!
# A329290: Number of ordered triples (i, j, k) of integers such that n = i^2 + 4*j^2 + 4*k^2.

The programs for A329290, there is no canonical definition to state claims against.
-/

/-! ## A329290.P13227051756382528717

`A133872(n)*A246631(n)`
-/

namespace A329290.P13227051756382528717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 n * A246631 n

end

end A329290.P13227051756382528717

/-! ## A329290.P11086395405480869626

`A212885(n)*A219977(n)`
-/

namespace A329290.P11086395405480869626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212885 n * A219977 n

end

end A329290.P11086395405480869626

/-! ## A329290.P15743397843971599182

`lcm(A116597(n), A212885(n))`
-/

namespace A329290.P15743397843971599182
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A116597 n) (A212885 n)

end

end A329290.P15743397843971599182

/-! ## A329290.P14033053757637798255

`lcm(A128130(n), A246631(n))`
-/

namespace A329290.P14033053757637798255
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A128130 n) (A246631 n)

end

end A329290.P14033053757637798255

/-! ## A329290.P10984342708778548077

`A219977(n)²*A246631(n)`
-/

namespace A329290.P10984342708778548077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219977 n ^ 2 * A246631 n

end

end A329290.P10984342708778548077

/-! ## A329290.P3551223488484983436

`∑[A056594(n)]*A246631(n)`
-/

namespace A329290.P3551223488484983436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A246631 n

end

end A329290.P3551223488484983436

/-! ## A329290.P11409870664607506116

`char[A042948(n)]*A246631(n)`
-/

namespace A329290.P11409870664607506116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A246631 n

end

end A329290.P11409870664607506116

/-! ## A329290.P10840270194042775316

`(1-A132380(n)²)*A246631(n)`
-/

namespace A329290.P10840270194042775316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A132380 n ^ 2) * A246631 n

end

end A329290.P10840270194042775316

/-! ## A329290.P14255604243402279323

`A000035(A008619(n))*A246631(n)`
-/

namespace A329290.P14255604243402279323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A008619 n).toNat * A246631 n

end

end A329290.P14255604243402279323

/-! ## A329290.P6285166474595430470

`A000035(∑[n%2+1])*A246631(n)`
-/

namespace A329290.P6285166474595430470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (∑ j ∈ Finset.range (n + 1), f1 j) * A246631 n

end

end A329290.P6285166474595430470

/-! ## A329290.P15345516137593379150

`(1-A021913(n))*A083703(2*n)`
-/

namespace A329290.P15345516137593379150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A021913 n) * A083703 (2 * n)

end

end A329290.P15345516137593379150

/-! ## A329290.P14662577267646097500

`A021913(n+2)*A083703(2*n)`
-/

namespace A329290.P14662577267646097500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (n + 2) * A083703 (2 * n)

end

end A329290.P14662577267646097500

/-! ## A329290.P15732808029897244716

`A033717(2*n)*A133872(n)`
-/

namespace A329290.P15732808029897244716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033717 (2 * n) * A133872 n

end

end A329290.P15732808029897244716

/-! ## A329290.P1868527248299420368

`∑[A056594(n)]*A033717(2*n)`
-/

namespace A329290.P1868527248299420368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033717 (2 * n)

end

end A329290.P1868527248299420368

/-! ## A329290.P15006950454800576885

`and(char[or(2, n)]-1, A319078(n))`
-/

namespace A329290.P15006950454800576885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - 1) (A319078 n)

end

end A329290.P15006950454800576885

/-! ## A329290.P10944691732548826188

`A133872(n)*A319078(n)`
-/

namespace A329290.P10944691732548826188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 n * A319078 n

end

end A329290.P10944691732548826188

/-! ## A329290.P11033110565895926164

`lcm(A130731(n), A319078(n))`
-/

namespace A329290.P11033110565895926164
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A130731 n) (A319078 n)

end

end A329290.P11033110565895926164

/-! ## A329290.P2403127975274745245

`and(-A057077(n), A319078(n))`
-/

namespace A329290.P2403127975274745245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A057077 n) (A319078 n)

end

end A329290.P2403127975274745245

/-! ## A329290.P7050732714000686683

`and(A057077(n+2), A319078(n))`
-/

namespace A329290.P7050732714000686683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057077 (n + 2)) (A319078 n)

end

end A329290.P7050732714000686683

/-! ## A329290.P10029849649074933690

`A006370(A319078(n)+abs(A319078(n)))`
-/

namespace A329290.P10029849649074933690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A319078 n + |A319078 n|).toNat

end

end A329290.P10029849649074933690

/-!
# A329294: Numbers whose digits are in nondecreasing order in bases 4 and 5.

The programs for A329294, there is no canonical definition to state claims against.
-/

/-! ## A329294.P10017537566787985874

`eq[n, A319653(A319652(n))]`
-/

namespace A329294.P10017537566787985874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319653 (A319652 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A329294.P10017537566787985874

/-! ## A329294.P5095470555532241118

`record[gcd(A319652(n), A319653(n))]`
-/

namespace A329294.P5095470555532241118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A319652 n) (A319653 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329294.P5095470555532241118

/-! ## A329294.P3284181028969624990

`∩[A023746(n+1), A023747(n+1)]`
-/

namespace A329294.P3284181028969624990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023746 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023747 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329294.P3284181028969624990

/-! ## A329294.P1967728772249845163

`eq[A030103(n), A319720(A319653(n))]`
-/

namespace A329294.P1967728772249845163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030103 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319720 (A319653 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A329294.P1967728772249845163

/-! ## A329294.P17540998794765526425

`eq[A030104(A319652(n)), A319722(n)]`
-/

namespace A329294.P17540998794765526425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030104 (A319652 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319722 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A329294.P17540998794765526425

/-!
# A329295: Numbers whose digits are in nondecreasing order in bases 5 and 6.

The programs for A329295, there is no canonical definition to state claims against.
-/

/-! ## A329295.P403825704395330438

`eq[n, A319654(A319653(n))]`
-/

namespace A329295.P403825704395330438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319654 (A319653 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A329295.P403825704395330438

/-! ## A329295.P12729033429160561979

`record[gcd(A319653(n), A319654(n))]`
-/

namespace A329295.P12729033429160561979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A319653 n) (A319654 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329295.P12729033429160561979

/-! ## A329295.P11507378882373881791

`∩[A023747(n+1), A023748(n+1)]`
-/

namespace A329295.P11507378882373881791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023747 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023748 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329295.P11507378882373881791

/-! ## A329295.P11753721209022711185

`eq[A030104(n), A319722(A319654(n))]`
-/

namespace A329295.P11753721209022711185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030104 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319722 (A319654 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A329295.P11753721209022711185

/-! ## A329295.P3972336070102467160

`eq[n, A319653(A319806(n)-A319723(n))]`
-/

namespace A329295.P3972336070102467160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319653 (A319806 n - A319723 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A329295.P3972336070102467160

/-!
# A329296: Numbers whose digits are in nondecreasing order in bases 6 and 7.

The programs for A329296, there is no canonical definition to state claims against.
-/

/-! ## A329296.P6278572104555822133

`eq[n, A319655(A319654(n))]`
-/

namespace A329296.P6278572104555822133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319655 (A319654 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A329296.P6278572104555822133

/-! ## A329296.P17733040523069430442

`record[gcd(n, A319654(A319655(n)))]`
-/

namespace A329296.P17733040523069430442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A319654 (A319655 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329296.P17733040523069430442

/-! ## A329296.P847693408458833491

`∩[A023748(n+1), A023749(n+1)]`
-/

namespace A329296.P847693408458833491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023748 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023749 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329296.P847693408458833491

/-! ## A329296.P1902981212848075425

`eq[A030105(n), A319723(A319655(n))]`
-/

namespace A329296.P1902981212848075425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030105 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319723 (A319655 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A329296.P1902981212848075425

/-! ## A329296.P4964818622118793789

`eq[A165051(n)+n, A319723(A319655(n))]`
-/

namespace A329296.P4964818622118793789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165051 n + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319723 (A319655 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A329296.P4964818622118793789

/-!
# A329297: Numbers whose digits are in nondecreasing order in bases 7 and 8.

The programs for A329297, there is no canonical definition to state claims against.
-/

/-! ## A329297.P5996540557938928032

`∩[A023749(n+1), A023750(n+1)]`
-/

namespace A329297.P5996540557938928032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023749 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023750 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329297.P5996540557938928032

/-! ## A329297.P12964475942672766036

`eq[n, A319656(A319655(n))]`
-/

namespace A329297.P12964475942672766036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319656 (A319655 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A329297.P12964475942672766036

/-! ## A329297.P8435081652239834219

`record[gcd(n, A319655(A319656(n)))]`
-/

namespace A329297.P8435081652239834219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A319655 (A319656 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329297.P8435081652239834219

/-! ## A329297.P6514691467893110919

`eq[A030106(n), A319724(A319656(n))]`
-/

namespace A329297.P6514691467893110919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030106 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319724 (A319656 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A329297.P6514691467893110919

/-! ## A329297.P3287944814577963835

`eq[n, A319655((A319808(n)-A165090(n))/2)]`
-/

namespace A329297.P3287944814577963835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319655 (SequenceMachineLib.roundAway ((A319808 n - A165090 n : ℚ) / 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A329297.P3287944814577963835

/-!
# A329298: Numbers whose digits are in nondecreasing order in bases 8 and 9.

The programs for A329298, there is no canonical definition to state claims against.
-/

/-! ## A329298.P11396027654454448727

`∩[A023750(n+1), A023751(n+1)]`
-/

namespace A329298.P11396027654454448727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023750 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329298.P11396027654454448727

/-! ## A329298.P11258968810391166268

`eq[n, A319657(A319656(n))]`
-/

namespace A329298.P11258968810391166268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319657 (A319656 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A329298.P11258968810391166268

/-! ## A329298.P12320786045130468381

`lt[n-8*floor(n/10), 8]`
-/

namespace A329298.P12320786045130468381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 8 * ⌊(n : ℚ) / 10⌋

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A329298.P12320786045130468381

/-! ## A329298.P17008331997685143018

`eq[1, A244895(A290850(n))]`
-/

namespace A329298.P17008331997685143018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244895 (A290850 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A329298.P17008331997685143018

/-! ## A329298.P15965518617382314794

`eq[A017868(n), A055641(n)]`
-/

namespace A329298.P15965518617382314794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017868 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A329298.P15965518617382314794

/-!
# A329299: Numbers whose digits are in nondecreasing order in bases 9 and 10.

The programs for A329299, there is no canonical definition to state claims against.
-/

/-! ## A329299.P6364034025193997839

`∩[A009994(n+1), A023751(n+1)]`
-/

namespace A329299.P6364034025193997839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329299.P6364034025193997839

/-! ## A329299.P2141180508029524372

`eq[n, A319657(A004185(n))]`
-/

namespace A329299.P2141180508029524372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319657 (A004185 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A329299.P2141180508029524372

/-! ## A329299.P3496806784738781989

`eq[n, A355223(A319657(n))]`
-/

namespace A329299.P3496806784738781989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355223 (A319657 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A329299.P3496806784738781989

/-! ## A329299.P12025324008925202851

`eq[A319657(n), A355222(n)]`
-/

namespace A329299.P12025324008925202851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319657 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355222 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A329299.P12025324008925202851

/-! ## A329299.P16478783058893517833

`record[gcd(A004185(n), A319657(n))]`
-/

namespace A329299.P16478783058893517833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004185 n) (A319657 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329299.P16478783058893517833

/-! ## A329299.P6709317242506059217

`eq[n, A319657(A004086(A004186(n)))]`
-/

namespace A329299.P6709317242506059217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319657 (A004086 (A004186 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A329299.P6709317242506059217

/-! ## A329299.P12939892006562908755

`eq[A005843(n), A070196(A319657(n))]`
-/

namespace A329299.P12939892006562908755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070196 (A319657 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A329299.P12939892006562908755

