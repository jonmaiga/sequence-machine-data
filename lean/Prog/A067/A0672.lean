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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
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
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
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
# A067200: Numbers m such that m^3 + 2 is prime.

The programs for A067200, there is no canonical definition to state claims against.
-/

/-! ## A067200.P3783921589384867171

`(A144953(n+1)-2)^(1/3)`
-/

namespace A067200.P3783921589384867171
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A144953 (n + 1) - 2 : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A067200.P3783921589384867171

/-! ## A067200.P11344694883768066597

`lt[A121842(n), 3]`
-/

namespace A067200.P11344694883768066597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121842 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A067200.P11344694883768066597

/-! ## A067200.P222161992703707743

`eq[1, A008794(A121842(n)+1)]`
-/

namespace A067200.P222161992703707743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 (A121842 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067200.P222161992703707743

/-! ## A067200.P2731102877341108688

`eq[2, A050044(A121842(n)+1)]`
-/

namespace A067200.P2731102877341108688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050044 (A121842 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067200.P2731102877341108688

/-! ## A067200.P3235210909460196864

`eq[A000034(A121842(n)+1), A121842(n)]`
-/

namespace A067200.P3235210909460196864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A121842 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121842 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067200.P3235210909460196864

/-! ## A067200.P1220681315741657933

`eq[A001222(A121842(n)+2), A121842(n)]`
-/

namespace A067200.P1220681315741657933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A121842 n + 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121842 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067200.P1220681315741657933

/-! ## A067200.P14051904532408820853

`eq[A121842(n), A260451(A121842(n)+2)]`
-/

namespace A067200.P14051904532408820853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121842 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260451 (A121842 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067200.P14051904532408820853

/-! ## A067200.P631335058864417269

`eq[A001222(2*A121842(n)), A121842(n)]`
-/

namespace A067200.P631335058864417269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * A121842 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121842 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067200.P631335058864417269

/-!
# A067201: Numbers k such that k^2 + 2 is prime.

The programs for A067201, there is no canonical definition to state claims against.
-/

/-! ## A067201.P7633769197234679028

`sqrt(A392249(n+1)-1)`
-/

namespace A067201.P7633769197234679028
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A392249 (n + 1) - 1 : ℝ)

end

end A067201.P7633769197234679028

/-! ## A067201.P14915397890913845254

`sqrt(A056899(n+1)-2)`
-/

namespace A067201.P14915397890913845254
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A056899 (n + 1) - 2 : ℝ)

end

end A067201.P14915397890913845254

/-! ## A067201.P15793186614703126888

`floor(sqrt(A056899(n+1)))%A002522(n)`
-/

namespace A067201.P15793186614703126888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.sqrt (A056899 (n + 1))) (A002522 n)

end

end A067201.P15793186614703126888

/-! ## A067201.P10577252957970237383

`sqrt(xor(2, A056899(n+1)))*A057427(n)`
-/

namespace A067201.P10577252957970237383
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.xor 2 (A056899 (n + 1)) : ℝ) * (A057427 n : ℝ)

end

end A067201.P10577252957970237383

/-! ## A067201.P18353522095476214802

`∑[A260930(n+1)]-A260930(n+1)`
-/

namespace A067201.P18353522095476214802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260930 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A260930 (n + 1)

end

end A067201.P18353522095476214802

/-! ## A067201.P2733350555216405178

`sqrt(xor(2, A056899(n+1)))%A059100(n)`
-/

namespace A067201.P2733350555216405178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (Int.xor 2 (A056899 (n + 1)) : ℝ))) (A059100 n)

end

end A067201.P2733350555216405178

/-! ## A067201.P4627075217319192780

`record[n*A355449(n)]`
-/

namespace A067201.P4627075217319192780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A355449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067201.P4627075217319192780

/-! ## A067201.P18096819730134599156

`eq[1, A355449(n)]`
-/

namespace A067201.P18096819730134599156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355449 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067201.P18096819730134599156

/-! ## A067201.P18340662111118578350

`filter[A204502(n+1), A355449(#)]`
-/

namespace A067201.P18340662111118578350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204502 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355449 (f1 j).toNat = 1) n)

end

end A067201.P18340662111118578350

/-! ## A067201.P10015567838862899085

`filter[A296515(n+1), A355449(#)]`
-/

namespace A067201.P10015567838862899085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355449 (f1 j).toNat = 1) n)

end

end A067201.P10015567838862899085

/-! ## A067201.P14757693726208821793

`sqrt(xor(2, A056899(n+1))%A261655(n+1))`
-/

namespace A067201.P14757693726208821793
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.tmod (Int.xor 2 (A056899 (n + 1))) (A261655 (n + 1)) : ℝ)

end

end A067201.P14757693726208821793

/-! ## A067201.P7200023294486989445

`filter[A061641(n+1), A355449(#)]`
-/

namespace A067201.P7200023294486989445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061641 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355449 (f1 j).toNat = 1) n)

end

end A067201.P7200023294486989445

/-! ## A067201.P7089561266026098340

`filter[A055264(n), A355449(#)]`
-/

namespace A067201.P7089561266026098340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355449 (f1 j).toNat = 1) n)

end

end A067201.P7089561266026098340

/-! ## A067201.P606623149089069716

`filter[A375852(n+1), A355449(#)]`
-/

namespace A067201.P606623149089069716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375852 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355449 (f1 j).toNat = 1) n)

end

end A067201.P606623149089069716

/-! ## A067201.P18199899384372102691

`filter[A004273(n), A355449(#)]`
-/

namespace A067201.P18199899384372102691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355449 (f1 j).toNat = 1) n)

end

end A067201.P18199899384372102691

/-! ## A067201.P17331010371849476318

`filter[A004274(n), A355449(#)]`
-/

namespace A067201.P17331010371849476318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355449 (f1 j).toNat = 1) n)

end

end A067201.P17331010371849476318

/-! ## A067201.P7172013034759819846

`filter[A004276(n), A355449(#)]`
-/

namespace A067201.P7172013034759819846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355449 (f1 j).toNat = 1) n)

end

end A067201.P7172013034759819846

/-! ## A067201.P15808558298319128560

`filter[A138670(n), A355449(#)]`
-/

namespace A067201.P15808558298319128560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138670 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355449 (f1 j).toNat = 1) n)

end

end A067201.P15808558298319128560

/-! ## A067201.P4610011210032034324

`filter[A047242(n+1), A355449(#)]`
-/

namespace A067201.P4610011210032034324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047242 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355449 (f1 j).toNat = 1) n)

end

end A067201.P4610011210032034324

/-! ## A067201.P7876889088889817355

`filter[A190941(n), A355449(#)]`
-/

namespace A067201.P7876889088889817355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190941 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355449 (f1 j).toNat = 1) n)

end

end A067201.P7876889088889817355

/-!
# A067204: Numbers k such that sigma(sigma(k)) == phi(k) (mod sigma(k)).

The programs for A067204, there is no canonical definition to state claims against.
-/

/-! ## A067204.P15630000311602077275

`A317293(A325698(n+1))-A307687(3*n+1)`
-/

namespace A067204.P15630000311602077275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317293 (A325698 (n + 1)).toNat - A307687 (3 * n + 1)

end

end A067204.P15630000311602077275

/-!
# A067206: Numbers n such that the digits of n end in phi(n).

The programs for A067206, there is no canonical definition to state claims against.
-/

/-! ## A067206.P17155473721963618734

`gcd(7, a(n-1))*A066663(n)` with `a(0)=1`
-/

namespace A067206.P17155473721963618734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Int.gcd 7 (a (n - 1)) : ℤ) * A066663 n

end

end A067206.P17155473721963618734

/-! ## A067206.P3800151937272153280

`A066663(n+1-a(val(n, n+1)))` with `a(0)=1`
-/

namespace A067206.P3800151937272153280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A066663 ((n + 1 : ℤ) - a (SequenceMachineLib.valuation n (n + 1))).toNat

end

end A067206.P3800151937272153280

/-! ## A067206.P8196502663943492415

`A066663(n*a(A028326(n)%2))` with `a(0)=1`
-/

namespace A067206.P8196502663943492415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A066663 ((n : ℤ) * a (Int.tmod (A028326 n) 2).toNat).toNat

end

end A067206.P8196502663943492415

/-! ## A067206.P13600968003134179604

`∪[A066663(n+1), A282672(n+1)]`
-/

namespace A067206.P13600968003134179604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066663 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282672 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A067206.P13600968003134179604

/-! ## A067206.P18373079624092220998

`∪[A066663(n+1), A335805(n+1)]`
-/

namespace A067206.P18373079624092220998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066663 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A067206.P18373079624092220998

/-! ## A067206.P3427705950064758202

`A066663(A028310(n))^A178334(n)`
-/

namespace A067206.P3427705950064758202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066663 (A028310 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A067206.P3427705950064758202

/-! ## A067206.P14923193217885213648

`gcd(A066663(A028310(n)), A151909(n))`
-/

namespace A067206.P14923193217885213648
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A066663 (A028310 n).toNat) (A151909 n)

end

end A067206.P14923193217885213648

/-! ## A067206.P12755170966755443990

`A066663(A028310(n))^abs(A134824(n))`
-/

namespace A067206.P12755170966755443990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066663 (A028310 n).toNat : ℚ) ^ (|A134824 n| : ℤ)

end

end A067206.P12755170966755443990

/-! ## A067206.P2525336626935626460

`A066663(A028310(n))^A011615(n²)`
-/

namespace A067206.P2525336626935626460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066663 (A028310 n).toNat : ℚ) ^ (A011615 (n ^ 2) : ℤ)

end

end A067206.P2525336626935626460

/-! ## A067206.P3008247312459588445

`A066663(A028310(n))^A000225(round(n/(n+1)))`
-/

namespace A067206.P3008247312459588445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066663 (A028310 n).toNat : ℚ) ^ (A000225 (SequenceMachineLib.roundAway ((n : ℚ) / (n + 1 : ℚ))).toNat : ℤ)

end

end A067206.P3008247312459588445

/-!
# A067208: n is prime and remains prime when its leading digit is increased by one.

The programs for A067208, there is no canonical definition to state claims against.
-/

/-! ## A067208.P14711216695572731512

`record[p?[A014963(n+2)-A086862(n+1)]]`
-/

namespace A067208.P14711216695572731512
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2) - A086862 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067208.P14711216695572731512

/-! ## A067208.P4029591427905908243

`p?[A000045(a(A100073(n)²))+2*n+1+n]` with `a(0)=2, a(1)=4, a(2)=1`
-/

namespace A067208.P4029591427905908243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 4, 1] fun n f1 =>
  A000045 (f1 (A100073 n ^ 2).toNat).toNat + (2 * n + 1 + n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067208.P4029591427905908243

/-! ## A067208.P3016376312844852342

`p?[A137735(A008122(n))]`
-/

namespace A067208.P3016376312844852342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (A008122 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067208.P3016376312844852342

/-! ## A067208.P4736124793563360891

`record[p?[A235451(A073731(n))]]`
-/

namespace A067208.P4736124793563360891
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235451 (A073731 (n + 10)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067208.P4736124793563360891

/-! ## A067208.P7469973721862192066

`filter[A130174(n+2), A373338(#)]`
-/

namespace A067208.P7469973721862192066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130174 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373338 (f1 j).toNat = 1) n)

end

end A067208.P7469973721862192066

/-!
# A067209: Number of n X n 0..1 matrices with all row and column sums equal.

The programs for A067209, there is no canonical definition to state claims against.
-/

/-! ## A067209.P9465661908898437868

`A202784(∑[n+1]+n)`
-/

namespace A067209.P9465661908898437868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202784 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A067209.P9465661908898437868

/-! ## A067209.P2892654161043539337

`record[A202784(eq[1, A219347(n)])]`
-/

namespace A067209.P2892654161043539337
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202784 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067209.P2892654161043539337

/-! ## A067209.P7114584591400079703

`record[root(A202784(n), A219347(n))]`
-/

namespace A067209.P7114584591400079703
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A202784 n : ℝ) ^ (1 / (A219347 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067209.P7114584591400079703

/-! ## A067209.P17142137720052340106

`record[A202784(n)/A202784(n+1)]`
-/

namespace A067209.P17142137720052340106
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202784 n : ℚ) / (A202784 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067209.P17142137720052340106

/-! ## A067209.P13278005717597969746

`A355478(n)+A202784(A034856(n+1))`
-/

namespace A067209.P13278005717597969746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355478 n + A202784 (A034856 (n + 1)).toNat

end

end A067209.P13278005717597969746

/-!
# A067210: Number of n X n 0..2 matrices with all row and column sums equal.

The programs for A067210, there is no canonical definition to state claims against.
-/

/-! ## A067210.P15034948855500452772

`A202784(∑[n+3])`
-/

namespace A067210.P15034948855500452772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202784 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A067210.P15034948855500452772

/-! ## A067210.P1354892148620733380

`A202784(A141214(n))+A067156(n+12)`
-/

namespace A067210.P1354892148620733380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202784 (A141214 n).toNat + A067156 (n + 12)

end

end A067210.P1354892148620733380

/-! ## A067210.P6735651645944415700

`A055229(2*n+1)*A202784(A141214(n))`
-/

namespace A067210.P6735651645944415700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055229 (2 * n + 1) * A202784 (A141214 n).toNat

end

end A067210.P6735651645944415700

/-! ## A067210.P9191202485805635492

`A091247(2*(n+2))*A202784(A141214(n))`
-/

namespace A067210.P9191202485805635492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091247 (2 * (n + 2)) * A202784 (A141214 n).toNat

end

end A067210.P9191202485805635492

/-! ## A067210.P5768281344174957916

`A091247(2*(n+2))*A202784(A027379(n+1))`
-/

namespace A067210.P5768281344174957916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091247 (2 * (n + 2)) * A202784 (A027379 (n + 1)).toNat

end

end A067210.P5768281344174957916

/-!
# A067211: Number of n X n 0..3 matrices with all row and column sums equal.

The programs for A067211, there is no canonical definition to state claims against.
-/

/-! ## A067211.P4177006123225463458

`A202784(eq[3, A025581(n)])`
-/

namespace A067211.P4177006123225463458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A067211.P4177006123225463458

/-! ## A067211.P3263013089259723219

`record[A202784(n)*A243148(n)]`
-/

namespace A067211.P3263013089259723219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202784 n * A243148 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067211.P3263013089259723219

/-! ## A067211.P6509269628745109600

`A202784(A141214(n+1)-1)`
-/

namespace A067211.P6509269628745109600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202784 (A141214 (n + 1) - 1).toNat

end

end A067211.P6509269628745109600

/-! ## A067211.P5248874372182623025

`A202784(A161680(n+4)+n)`
-/

namespace A067211.P5248874372182623025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202784 (A161680 (n + 4) + (n : ℤ)).toNat

end

end A067211.P5248874372182623025

/-! ## A067211.P13053893802949478825

`A202784(A000096(n+2)+n+1)`
-/

namespace A067211.P13053893802949478825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202784 (A000096 (n + 2) + (n + 1 : ℤ)).toNat

end

end A067211.P13053893802949478825

/-!
# A067212: Number of n X n 0..4 matrices with all row and column sums equal.

The programs for A067212, there is no canonical definition to state claims against.
-/

/-! ## A067212.P18115562640508582543

`A202784(eq[4, A025581(n)])`
-/

namespace A067212.P18115562640508582543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A067212.P18115562640508582543

/-! ## A067212.P4897120514469058780

`A202784(A027379(n+3)-2)`
-/

namespace A067212.P4897120514469058780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202784 (A027379 (n + 3) - 2).toNat

end

end A067212.P4897120514469058780

/-! ## A067212.P3761551066615625944

`A202784(A179865(n+5)+n)`
-/

namespace A067212.P3761551066615625944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202784 (A179865 (n + 5) + (n : ℤ)).toNat

end

end A067212.P3761551066615625944

/-! ## A067212.P5882438432788434513

`A202784(A000096(n+3)+n+1)`
-/

namespace A067212.P5882438432788434513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202784 (A000096 (n + 3) + (n + 1 : ℤ)).toNat

end

end A067212.P5882438432788434513

/-! ## A067212.P14262800551289948937

`A202784(A008587(n+2)+A000217(n))`
-/

namespace A067212.P14262800551289948937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202784 (A008587 (n + 2) + A000217 n).toNat

end

end A067212.P14262800551289948937

/-!
# A067213: Number of n X n 0..5 matrices with all row and column sums equal.

The programs for A067213, there is no canonical definition to state claims against.
-/

/-! ## A067213.P15191985982617938686

`A202784(Δ[A023551(n+1)])`
-/

namespace A067213.P15191985982617938686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202784 (f1 (n + 1) - f1 n).toNat

end

end A067213.P15191985982617938686

/-!
# A067214: Number of n X n 0..6 matrices with all row and column sums equal.

The programs for A067214, there is no canonical definition to state claims against.
-/

/-! ## A067214.P1217591391528958553

`A202784(A000096(n+5)+n+1)`
-/

namespace A067214.P1217591391528958553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202784 (A000096 (n + 5) + (n + 1 : ℤ)).toNat

end

end A067214.P1217591391528958553

/-!
# A067227: n is prime and remains prime when its leading digit is replaced by each of 2, 4 and 8.

The programs for A067227, there is no canonical definition to state claims against.
-/

/-! ## A067227.P12387722396653155606

`p?[A002024(∑[A044414(n+1)])]`
-/

namespace A067227.P12387722396653155606
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044414 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067227.P12387722396653155606

/-! ## A067227.P10029488324238815260

`p?[A002024(∑[A044415(n+1)])]`
-/

namespace A067227.P10029488324238815260
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044415 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067227.P10029488324238815260

/-! ## A067227.P9333908899485434159

`p?[A002024(∑[A044795(n+1)])]`
-/

namespace A067227.P9333908899485434159
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044795 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067227.P9333908899485434159

/-!
# A067228: Number of rectangular standard Young tableaux with n cells.

The programs for A067228, there is no canonical definition to state claims against.
-/

/-! ## A067228.P3838314662276183064

`A238707(∑[n+1])`
-/

namespace A067228.P3838314662276183064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238707 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A067228.P3838314662276183064

/-! ## A067228.P5678117435205434340

`abs(1-A238707(A000217(n+1)))+1`
-/

namespace A067228.P5678117435205434340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A238707 (A000217 (n + 1)).toNat| + 1

end

end A067228.P5678117435205434340

/-! ## A067228.P15767051618549165499

`A238707(A000217(n+1))%A244302(n)`
-/

namespace A067228.P15767051618549165499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238707 (A000217 (n + 1)).toNat) (A244302 (n + 10))

end

end A067228.P15767051618549165499

/-! ## A067228.P6205603450136731909

`lcm(A000034(n), A238707(A000217(n+1)))`
-/

namespace A067228.P6205603450136731909
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A238707 (A000217 (n + 1)).toNat)

end

end A067228.P6205603450136731909

/-! ## A067228.P8879814994328071595

`A238707(A000217(n+1))+A000007(n+1)`
-/

namespace A067228.P8879814994328071595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238707 (A000217 (n + 1)).toNat + A000007 (n + 1)

end

end A067228.P8879814994328071595

/-! ## A067228.P829186924528942238

`A014963(A000217(n+4))*A238707(A000217(n+1))`
-/

namespace A067228.P829186924528942238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000217 (n + 4)).toNat * A238707 (A000217 (n + 1)).toNat

end

end A067228.P829186924528942238

/-! ## A067228.P2701509931835880657

`A238707(A253145(n))*A337335(A090918(n+1))`
-/

namespace A067228.P2701509931835880657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238707 (A253145 n).toNat * A337335 (A090918 (n + 1)).toNat

end

end A067228.P2701509931835880657

/-!
# A067229: Numbers n such that phi(2n+1) = sigma(n).

The programs for A067229, there is no canonical definition to state claims against.
-/

/-! ## A067229.P6621348453066463014

`eq[A000203(n+1), A000010(2*n+3)]+1`
-/

namespace A067229.P6621348453066463014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A067229.P6621348453066463014

/-! ## A067229.P8586234915688238776

`eq[A014681(A037225(n)), A039653(n)]`
-/

namespace A067229.P8586234915688238776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A037225 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067229.P8586234915688238776

/-! ## A067229.P7659446351853750142

`eq[A028310(A109606(2*n+1)), A039653(n)]`
-/

namespace A067229.P7659446351853750142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A109606 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067229.P7659446351853750142

/-! ## A067229.P8748291171913299246

`eq[A000203(A233583(n+1)), A037225(n)]`
-/

namespace A067229.P8748291171913299246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067229.P8748291171913299246

/-! ## A067229.P16735270713838687621

`eq[A000203(A233583(n+1)), A062570(2*n+1)]`
-/

namespace A067229.P16735270713838687621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062570 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067229.P16735270713838687621

/-!
# A067230: Numbers n such that phi(2n-1) = sigma(n).

The programs for A067230, there is no canonical definition to state claims against.
-/

/-! ## A067230.P17467189933647978915

`eq[A000203(n+1), A000010(2*n+1)]+1`
-/

namespace A067230.P17467189933647978915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A067230.P17467189933647978915

/-! ## A067230.P346658945080091959

`eq[A000203(n+1), A037225(n)]+1`
-/

namespace A067230.P346658945080091959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A067230.P346658945080091959

/-! ## A067230.P8821493353879172011

`eq[A088580(n+1)-1, A037225(n)]+1`
-/

namespace A067230.P8821493353879172011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A067230.P8821493353879172011

/-! ## A067230.P4272686208455498599

`eq[sqrt(A072861(n+1)), A000010(2*n+1)]+1`
-/

namespace A067230.P4272686208455498599
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A072861 (n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n + 1

end

end A067230.P4272686208455498599

/-! ## A067230.P4512552383057470908

`eq[A039653(n+1), A109606(2*n+1)]+1`
-/

namespace A067230.P4512552383057470908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A067230.P4512552383057470908

/-!
# A067231: Number of Young tableaux with n=i*j cells and type i*j matrices with i>=j.

The programs for A067231, there is no canonical definition to state claims against.
-/

/-! ## A067231.P17233589538064512808

`A004739(record[A100861(2*n+1)])`
-/

namespace A067231.P17233589538064512808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100861 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004739 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A067231.P17233589538064512808

/-! ## A067231.P7355870782161575595

`A193592(lcm(12, A211880(n)))`
-/

namespace A067231.P7355870782161575595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (Int.lcm 12 (A211880 n))

end

end A067231.P7355870782161575595

/-! ## A067231.P10861376224909205251

`A193592(xor(4, A231721(n+1)))`
-/

namespace A067231.P10861376224909205251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (Int.xor 4 (A231721 (n + 1))).toNat

end

end A067231.P10861376224909205251

/-! ## A067231.P9648649808533246391

`A096995(A014682(n)+A013610(n))`
-/

namespace A067231.P9648649808533246391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096995 (A014682 n + A013610 n).toNat

end

end A067231.P9648649808533246391

/-!
# A067232: Numbers n such that phi(3n-1) = sigma(n).

The programs for A067232, there is no canonical definition to state claims against.
-/

/-! ## A067232.P16022850733720892112

`eq[A000203(n+1), A000010(3*n+2)]+1`
-/

namespace A067232.P16022850733720892112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A067232.P16022850733720892112

/-! ## A067232.P3663680137624482722

`eq[sqrt(A072861(n+1)), A000010(3*n+2)]+1`
-/

namespace A067232.P3663680137624482722
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A072861 (n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n + 1

end

end A067232.P3663680137624482722

/-! ## A067232.P16873141637609517625

`eq[A274535(n+1)/5, A000010(3*n+2)]+1`
-/

namespace A067232.P16873141637609517625
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274535 (n + 1) : ℚ) / 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n + 1

end

end A067232.P16873141637609517625

/-! ## A067232.P6667053100316242513

`eq[A160664(n+1)-A160664(n), A000010(3*n+2)]+1`
-/

namespace A067232.P6667053100316242513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 (n + 1) - A160664 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A067232.P6667053100316242513

/-! ## A067232.P7101867866889528732

`eq[A000203(n+1), A195459(3*n+2)]+1`
-/

namespace A067232.P7101867866889528732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195459 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A067232.P7101867866889528732

/-!
# A067233: Numbers n such that phi(3n+1) = sigma(n).

The programs for A067233, there is no canonical definition to state claims against.
-/

/-! ## A067233.P14345539700839713861

`eq[A000203(n+1), A000010(2*(n+2)+n)]+1`
-/

namespace A067233.P14345539700839713861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * (n + 2) + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A067233.P14345539700839713861

/-! ## A067233.P14640376158223009380

`eq[A028310(A109606(3*n+1)), A039653(n)]`
-/

namespace A067233.P14640376158223009380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A109606 (3 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067233.P14640376158223009380

/-! ## A067233.P17384251521064310639

`A020725(eq[A039649(3*n+4), A088580(n+1)])`
-/

namespace A067233.P17384251521064310639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A067233.P17384251521064310639

/-! ## A067233.P3453887232860561697

`eq[A039649(3*n+1), A088580(A233583(n+1))]`
-/

namespace A067233.P3453887232860561697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067233.P3453887232860561697

/-! ## A067233.P17481898962901819918

`eq[A039653(A233583(n+1)), A109606(3*n+1)]`
-/

namespace A067233.P17481898962901819918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067233.P17481898962901819918

/-!
# A067236: Numbers n such that gcd(sigma(n), sigma(sigma(n)))=1.

The programs for A067236, the canonical program `A067236.P11489592581938594514` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067236 has offset 1).

The definition of A067236 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 243 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067236.P11489592581938594514

`eq[1, A306682(A000203(n+1))]+1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A067236

/-- `eq[1, A306682(A000203(n+1))]+1` -/
def P11489592581938594514.Spec : Prop :=
  ∀ n, (P11489592581938594514.a n : ℤ) = A067236 (n + 1)

theorem P11489592581938594514.correct : P11489592581938594514.Spec := by
  intro n
  simp only [A067236, Nat.add_sub_cancel]

end A067236

/-! ## A067236.P17177862103936865088

`record[(n+1)/A009194(A001065(n+1)+n+1)]`
-/

namespace A067236.P17177862103936865088
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A009194 (A001065 (n + 1) + (n : ℤ) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067236.P17177862103936865088

namespace A067236

/-- `record[(n+1)/A009194(A001065(n+1)+n+1)]` -/
def P17177862103936865088.Spec : Prop :=
  ∀ n, P17177862103936865088.a n = (A067236 (n + 1) : ℚ)

end A067236

/-! ## A067236.P16051545773495705636

`record[A017666(A000203(n+1))-A001065(n+1)]`
-/

namespace A067236.P16051545773495705636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (A000203 (n + 1)).toNat - A001065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067236.P16051545773495705636

namespace A067236

/-- `record[A017666(A000203(n+1))-A001065(n+1)]` -/
def P16051545773495705636.Spec : Prop :=
  ∀ n, P16051545773495705636.a n = A067236 (n + 1)

end A067236

/-! ## A067236.P1326522279482453655

`record[A000027(n+1)/A009194(A000203(n+1))]`
-/

namespace A067236.P1326522279482453655
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A009194 (A000203 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067236.P1326522279482453655

namespace A067236

/-- `record[A000027(n+1)/A009194(A000203(n+1))]` -/
def P1326522279482453655.Spec : Prop :=
  ∀ n, P1326522279482453655.a n = (A067236 (n + 1) : ℚ)

end A067236

/-! ## A067236.P9359791489434168581

`record[A008619(2*n)/A009194(A000203(n+1))]`
-/

namespace A067236.P9359791489434168581
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 (2 * n) : ℚ) / (A009194 (A000203 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067236.P9359791489434168581

namespace A067236

/-- `record[A008619(2*n)/A009194(A000203(n+1))]` -/
def P9359791489434168581.Spec : Prop :=
  ∀ n, P9359791489434168581.a n = (A067236 (n + 1) : ℚ)

end A067236

/-!
# A067237: Numbers k such that gcd(sigma(k),k) = k/5.

The programs for A067237, there is no canonical definition to state claims against.
-/

/-! ## A067237.P13698587719164335161

`eq[5, A017666(n+1)]+1`
-/

namespace A067237.P13698587719164335161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A067237.P13698587719164335161

/-! ## A067237.P12556318275690915942

`eq[5, A017666(A028310(n))]`
-/

namespace A067237.P12556318275690915942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067237.P12556318275690915942

/-! ## A067237.P17159946742674925283

`A020725(eq[5, A017666(n+1)])`
-/

namespace A067237.P17159946742674925283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A067237.P17159946742674925283

/-! ## A067237.P9163306463720494977

`A065475(eq[5, A017666(n+1)])`
-/

namespace A067237.P9163306463720494977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A067237.P9163306463720494977

/-! ## A067237.P17781660797265851204

`A114637(eq[5, A017666(n+1)])`
-/

namespace A067237.P17781660797265851204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A067237.P17781660797265851204

/-!
# A067239: a(0)=1, a(n) = 8*n*(2*n-1).

The programs for A067239, the canonical program `A067239.P8755021300817404734` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067239 has offset 0).

The definition of A067239 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A067239.P8755021300817404734

`a(n-1)+32*n-24` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A067239

/-- `a(n-1)+32*n-24` -/
def P8755021300817404734.Spec : Prop :=
  ∀ n, P8755021300817404734.a n = A067239 n

theorem P8755021300817404734.correct : P8755021300817404734.Spec := by
  intro n
  simp only [A067239]

end A067239

/-! ## A067239.P2195792589792117007

`∑[a(n-1)+32]` with `a(0)=1, a(1)=7, a(2)=40`
-/

namespace A067239.P2195792589792117007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 7, 40] fun n f1 =>
  f1 (n - 1) + 32

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067239.P2195792589792117007

namespace A067239

/-- `∑[a(n-1)+32]` -/
def P2195792589792117007.Spec : Prop :=
  ∀ n, (P2195792589792117007.a n : ℤ) = A067239 n

end A067239

/-! ## A067239.P5882037326449552291

`xor(1, record[n*xor(3, n-3)])`
-/

namespace A067239.P5882037326449552291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.xor 3 ((n : ℤ) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A067239.P5882037326449552291

namespace A067239

/-- `xor(1, record[n*xor(3, n-3)])` -/
def P5882037326449552291.Spec : Prop :=
  ∀ n, P5882037326449552291.a n = A067239 n

end A067239

/-! ## A067239.P16017656731127323978

`floor(acot(n)+n*record[lcm(8, n)])`
-/

namespace A067239.P16017656731127323978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 8 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) + (n * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ)⌋

end

end A067239.P16017656731127323978

namespace A067239

/-- `floor(acot(n)+n*record[lcm(8, n)])` -/
def P16017656731127323978.Spec : Prop :=
  ∀ n, P16017656731127323978.a n = A067239 n

end A067239

/-! ## A067239.P12753566273505448007

`record[(or(2, n)²-1)^(n%2)]`
-/

namespace A067239.P12753566273505448007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 2 n ^ 2 : ℤ) - 1) ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067239.P12753566273505448007

namespace A067239

/-- `record[(or(2, n)²-1)^(n%2)]` -/
def P12753566273505448007.Spec : Prop :=
  ∀ n, P12753566273505448007.a n = A067239 n

end A067239

/-! ## A067239.P17648606893277014516

`record[or(3, n+1)²-gcd(8, n)]`
-/

namespace A067239.P17648606893277014516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 3 (n + 1) ^ 2 : ℤ) - (Nat.gcd 8 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067239.P17648606893277014516

namespace A067239

/-- `record[or(3, n+1)²-gcd(8, n)]` -/
def P17648606893277014516.Spec : Prop :=
  ∀ n, P17648606893277014516.a n = A067239 n

end A067239

/-! ## A067239.P3446000057871568085

`xor(1, (1-A008574(n))²)`
-/

namespace A067239.P3446000057871568085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((1 - A008574 n) ^ 2)

end

end A067239.P3446000057871568085

namespace A067239

/-- `xor(1, (1-A008574(n))²)` -/
def P3446000057871568085.Spec : Prop :=
  ∀ n, P3446000057871568085.a n = A067239 n

end A067239

/-! ## A067239.P5497022927338855028

`xor(1, xor(1, A111284(n+1))²)`
-/

namespace A067239.P5497022927338855028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A111284 (n + 1)) ^ 2)

end

end A067239.P5497022927338855028

namespace A067239

/-- `xor(1, xor(1, A111284(n+1))²)` -/
def P5497022927338855028.Spec : Prop :=
  ∀ n, P5497022927338855028.a n = A067239 n

end A067239

/-! ## A067239.P18308326736388559668

`(1-4*n)²-A057427(n)`
-/

namespace A067239.P18308326736388559668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (4 * n : ℤ)) ^ 2 - A057427 n

end

end A067239.P18308326736388559668

namespace A067239

/-- `(1-4*n)²-A057427(n)` -/
def P18308326736388559668.Spec : Prop :=
  ∀ n, P18308326736388559668.a n = A067239 n

end A067239

/-! ## A067239.P1463323277615744783

`A152750(n)+A000007(n)`
-/

namespace A067239.P1463323277615744783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152750 n + A000007 n

end

end A067239.P1463323277615744783

namespace A067239

/-- `A152750(n)+A000007(n)` -/
def P1463323277615744783.Spec : Prop :=
  ∀ n, P1463323277615744783.a n = A067239 n

end A067239

/-! ## A067239.P16537702939737924126

`lcm(A022144(n), A060747(n))`
-/

namespace A067239.P16537702939737924126
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A022144 n) (A060747 n)

end

end A067239.P16537702939737924126

namespace A067239

/-- `lcm(A022144(n), A060747(n))` -/
def P16537702939737924126.Spec : Prop :=
  ∀ n, (P16537702939737924126.a n : ℤ) = A067239 n

end A067239

/-! ## A067239.P15277759140433972671

`A008574(n)²-A008590(n)`
-/

namespace A067239.P15277759140433972671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n ^ 2 - A008590 n

end

end A067239.P15277759140433972671

namespace A067239

/-- `A008574(n)²-A008590(n)` -/
def P15277759140433972671.Spec : Prop :=
  ∀ n, P15277759140433972671.a n = A067239 n

end A067239

/-! ## A067239.P2857143035970495311

`A152746(n)+A118239(n+1)`
-/

namespace A067239.P2857143035970495311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152746 n + A118239 (n + 1)

end

end A067239.P2857143035970495311

namespace A067239

/-- `A152746(n)+A118239(n+1)` -/
def P2857143035970495311.Spec : Prop :=
  ∀ n, P2857143035970495311.a n = A067239 n

end A067239

/-! ## A067239.P10963622117195320340

`A318778(n+1)-A195322(n)`
-/

namespace A067239.P10963622117195320340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318778 (n + 1) - A195322 n

end

end A067239.P10963622117195320340

namespace A067239

/-- `A318778(n+1)-A195322(n)` -/
def P10963622117195320340.Spec : Prop :=
  ∀ n, P10963622117195320340.a n = A067239 n

end A067239

/-! ## A067239.P5169465124864161646

`A008574(n)*A111284(n+1)`
-/

namespace A067239.P5169465124864161646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n * A111284 (n + 1)

end

end A067239.P5169465124864161646

namespace A067239

/-- `A008574(n)*A111284(n+1)` -/
def P5169465124864161646.Spec : Prop :=
  ∀ n, P5169465124864161646.a n = A067239 n

end A067239

/-! ## A067239.P3384159483963441956

`A004280(n+1)*A234275(n)`
-/

namespace A067239.P3384159483963441956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (n + 1) * A234275 n

end

end A067239.P3384159483963441956

namespace A067239

/-- `A004280(n+1)*A234275(n)` -/
def P3384159483963441956.Spec : Prop :=
  ∀ n, P3384159483963441956.a n = A067239 n

end A067239

/-! ## A067239.P13248109710273818870

`A118239(n+1)*A123932(n)`
-/

namespace A067239.P13248109710273818870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118239 (n + 1) * A123932 n

end

end A067239.P13248109710273818870

namespace A067239

/-- `A118239(n+1)*A123932(n)` -/
def P13248109710273818870.Spec : Prop :=
  ∀ n, P13248109710273818870.a n = A067239 n

end A067239

/-! ## A067239.P15992611911491188031

`A000007(n)+2*A085250(n)`
-/

namespace A067239.P15992611911491188031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 2 * A085250 n

end

end A067239.P15992611911491188031

namespace A067239

/-- `A000007(n)+2*A085250(n)` -/
def P15992611911491188031.Spec : Prop :=
  ∀ n, P15992611911491188031.a n = A067239 n

end A067239

/-! ## A067239.P4441616903691777435

`A152750(n)+and(1, A004013(n))`
-/

namespace A067239.P4441616903691777435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152750 n + Int.land 1 (A004013 n)

end

end A067239.P4441616903691777435

namespace A067239

/-- `A152750(n)+and(1, A004013(n))` -/
def P4441616903691777435.Spec : Prop :=
  ∀ n, P4441616903691777435.a n = A067239 n

end A067239

/-! ## A067239.P13977548515628909542

`A153794(n)+(A004273(n)+1)²`
-/

namespace A067239.P13977548515628909542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153794 n + (A004273 n + 1) ^ 2

end

end A067239.P13977548515628909542

namespace A067239

/-- `A153794(n)+(A004273(n)+1)²` -/
def P13977548515628909542.Spec : Prop :=
  ∀ n, P13977548515628909542.a n = A067239 n

end A067239

/-!
# A067240: If n = Product_{i} p_i^e_i, a(n) = Sum_{i} (p_i - 1)*p_i^(e_i - 1).

The programs for A067240, the canonical program `A067240.P3266130279275368684` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067240 has offset 1).

The definition of A067240 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067240.P4372016751480548062

`∑{p}[n+1, A000010(#^val(n+1, #))]`
-/

namespace A067240.P4372016751480548062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A000010 (p ^ SequenceMachineLib.valuation (n + 1) p)

end

end A067240.P4372016751480548062

namespace A067240

/-- `∑{p}[n+1, A000010(#^val(n+1, #))]` -/
def P4372016751480548062.Spec : Prop :=
  ∀ n, P4372016751480548062.a n = A067240 (n + 1)

end A067240

/-! ## A067240.P14440727765599191892

`A008475(n+1)-A171453(n+1)`
-/

namespace A067240.P14440727765599191892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (n + 1) - A171453 (n + 1)

end

end A067240.P14440727765599191892

namespace A067240

/-- `A008475(n+1)-A171453(n+1)` -/
def P14440727765599191892.Spec : Prop :=
  ∀ n, P14440727765599191892.a n = A067240 (n + 1)

end A067240

/-! ## A067240.P4483139486616525795

`A080737(n+1)+A002411(n)%2`
-/

namespace A067240.P4483139486616525795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080737 (n + 1) + Int.tmod (A002411 n) 2

end

end A067240.P4483139486616525795

namespace A067240

/-- `A080737(n+1)+A002411(n)%2` -/
def P4483139486616525795.Spec : Prop :=
  ∀ n, P4483139486616525795.a n = A067240 (n + 1)

end A067240

/-! ## A067240.P1769779434013036819

`A159077(n+1)-(A171453(n+1)+1)`
-/

namespace A067240.P1769779434013036819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159077 (n + 1) - (A171453 (n + 1) + 1)

end

end A067240.P1769779434013036819

namespace A067240

/-- `A159077(n+1)-(A171453(n+1)+1)` -/
def P1769779434013036819.Spec : Prop :=
  ∀ n, P1769779434013036819.a n = A067240 (n + 1)

end A067240

/-! ## A067240.P15255539835106021279

`A080737(n+1)+A021913(A006519(n+1))`
-/

namespace A067240.P15255539835106021279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080737 (n + 1) + A021913 (A006519 (n + 1)).toNat

end

end A067240.P15255539835106021279

namespace A067240

/-- `A080737(n+1)+A021913(A006519(n+1))` -/
def P15255539835106021279.Spec : Prop :=
  ∀ n, P15255539835106021279.a n = A067240 (n + 1)

end A067240

/-! ## A067240.P3369227801435210844

`A023443(A159077(n+1)-A171453(n+1))`
-/

namespace A067240.P3369227801435210844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A159077 (n + 1) - A171453 (n + 1)).toNat

end

end A067240.P3369227801435210844

namespace A067240

/-- `A023443(A159077(n+1)-A171453(n+1))` -/
def P3369227801435210844.Spec : Prop :=
  ∀ n, P3369227801435210844.a n = A067240 (n + 1)

end A067240

/-! ## A067240.P3895353919068849131

`A222416(n+1)-(A171453(n+1)+A000007(n))`
-/

namespace A067240.P3895353919068849131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222416 (n + 1) - (A171453 (n + 1) + A000007 n)

end

end A067240.P3895353919068849131

namespace A067240

/-- `A222416(n+1)-(A171453(n+1)+A000007(n))` -/
def P3895353919068849131.Spec : Prop :=
  ∀ n, P3895353919068849131.a n = A067240 (n + 1)

end A067240

/-! ## A067240.P4063945289879067588

`(A171453(n+1)-A222416(n+1))*A057428(n)`
-/

namespace A067240.P4063945289879067588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A171453 (n + 1) - A222416 (n + 1)) * A057428 n

end

end A067240.P4063945289879067588

namespace A067240

/-- `(A171453(n+1)-A222416(n+1))*A057428(n)` -/
def P4063945289879067588.Spec : Prop :=
  ∀ n, P4063945289879067588.a n = A067240 (n + 1)

end A067240

/-! ## A067240.P6406046972530706184

`A078771(n+1)+Δ[A025281(n)]-A171453(n+1)`
-/

namespace A067240.P6406046972530706184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078771 (n + 1) + (f1 (n + 1) - f1 n) - A171453 (n + 1)

end

end A067240.P6406046972530706184

namespace A067240

/-- `A078771(n+1)+Δ[A025281(n)]-A171453(n+1)` -/
def P6406046972530706184.Spec : Prop :=
  ∀ n, P6406046972530706184.a n = A067240 (n + 1)

end A067240

/-! ## A067240.P16635253153761848461

`A001414(n+1)+A078771(n+1)-A171453(n+1)`
-/

namespace A067240.P16635253153761848461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1) + (A078771 (n + 1) - A171453 (n + 1))

end

end A067240.P16635253153761848461

namespace A067240

/-- `A001414(n+1)+A078771(n+1)-A171453(n+1)` -/
def P16635253153761848461.Spec : Prop :=
  ∀ n, P16635253153761848461.a n = A067240 (n + 1)

end A067240

/-! ## A067240.P3266130279275368684

`A008475(n+1)-(A056169(n+1)+A008475(A003557(n+1)))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A067240

/-- `A008475(n+1)-(A056169(n+1)+A008475(A003557(n+1)))` -/
def P3266130279275368684.Spec : Prop :=
  ∀ n, P3266130279275368684.a n = A067240 (n + 1)

theorem P3266130279275368684.correct : P3266130279275368684.Spec := by
  intro n
  simp only [A067240, Nat.add_sub_cancel]

end A067240

/-! ## A067240.P8669774060796918104

`A171453(A064549(n+1))-A171453(n+1)`
-/

namespace A067240.P8669774060796918104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171453 (A064549 (n + 1)).toNat - A171453 (n + 1)

end

end A067240.P8669774060796918104

namespace A067240

/-- `A171453(A064549(n+1))-A171453(n+1)` -/
def P8669774060796918104.Spec : Prop :=
  ∀ n, P8669774060796918104.a n = A067240 (n + 1)

end A067240

/-!
# A067242: Numbers m such that sigma(m+1)+sigma(m-1) = 5*phi(m).

The programs for A067242, there is no canonical definition to state claims against.
-/

/-! ## A067242.P17255992598468497631

`A174165(A365616(2*n)+A035294(n))`
-/

namespace A067242.P17255992598468497631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174165 (A365616 (2 * n) + A035294 n).toNat

end

end A067242.P17255992598468497631

/-!
# A067247: Number of difference sets of subsets of {1,2,...,n}, i.e., the size of {D(A) : A subset [n] }, where D(A)={a_i-a_j : a_i>a_j and a_i,a_j in A}.

The programs for A067247, there is no canonical definition to state claims against.
-/

/-! ## A067247.P8183283907967563675

`A097285(A052542(n))+A000071(n+1)`
-/

namespace A067247.P8183283907967563675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (A052542 n).toNat + A000071 (n + 1)

end

end A067247.P8183283907967563675

/-! ## A067247.P12484576513413424681

`A293137(A125267(n)+n-A293137(n))`
-/

namespace A067247.P12484576513413424681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293137 (A125267 n + ((n : ℤ) - A293137 n)).toNat

end

end A067247.P12484576513413424681

/-! ## A067247.P17951279650872389369

`A293137(n-(A293137(n)-A125267(n)))`
-/

namespace A067247.P17951279650872389369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293137 ((n : ℤ) - (A293137 n - A125267 n)).toNat

end

end A067247.P17951279650872389369

/-! ## A067247.P6844076064556561819

`A108611(A000041(n+2))+A000045(n+2)`
-/

namespace A067247.P6844076064556561819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108611 (A000041 (n + 2)).toNat + A000045 (n + 2)

end

end A067247.P6844076064556561819

/-! ## A067247.P17380326939437269545

`A067085(A153588(n+1))`
-/

namespace A067247.P17380326939437269545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067085 (A153588 (n + 1)).toNat

end

end A067247.P17380326939437269545

/-!
# A067248: Numbers k such that the digits of prime(k) end in k.

The programs for A067248, there is no canonical definition to state claims against.
-/

/-! ## A067248.P14794027942502752471

`A068575(∑[gcd(7, 1-n)])`
-/

namespace A067248.P14794027942502752471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 7 (1 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068575 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A067248.P14794027942502752471

/-! ## A067248.P15836900269808814772

`A068575(A333884(n)+A004273(n))`
-/

namespace A067248.P15836900269808814772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068575 (A333884 n + A004273 n).toNat

end

end A067248.P15836900269808814772

/-!
# A067249: Digits of sigma(n) end in phi(n).

The programs for A067249, there is no canonical definition to state claims against.
-/

/-! ## A067249.P13574420318418723644

`∩[A074452(n+1), A190304(n+1)]`
-/

namespace A067249.P13574420318418723644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067249.P13574420318418723644

/-!
# A067250: Numbers n such that prime(n) = floor(n*log(n*omega(n))).

The programs for A067250, there is no canonical definition to state claims against.
-/

/-! ## A067250.P10135740341675397361

`A003333(eq[A116504(2*n+5), A239930(n+1)])`
-/

namespace A067250.P10135740341675397361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116504 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239930 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003333 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A067250.P10135740341675397361

/-!
# A067251: Numbers with no trailing zeros in decimal representation.

The programs for A067251, the canonical program `A067251.P14650977337189387648` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067251 has offset 1).

The definition of A067251 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A067251.P14650977337189387648

`a(n-1)+a(n-9)-a(n-10)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5, a(5)=6, a(6)=7, a(7)=8, a(8)=9, a(9)=11`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A067251

/-- `a(n-1)+a(n-9)-a(n-10)` -/
def P14650977337189387648.Spec : Prop :=
  ∀ n, P14650977337189387648.a n = A067251 (n + 1)

theorem P14650977337189387648.correct : P14650977337189387648.Spec := by
  intro n
  simp only [A067251, Nat.add_sub_cancel]

end A067251

/-! ## A067251.P1007223993680506790

`comp[10*n]`
-/

namespace A067251.P1007223993680506790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A067251.P1007223993680506790

namespace A067251

/-- `comp[10*n]` -/
def P1007223993680506790.Spec : Prop :=
  ∀ n, (P1007223993680506790.a n : ℤ) = A067251 (n + 1)

end A067251

/-! ## A067251.P14636830881055195587

`lt[n, lcm(10, n)]`
-/

namespace A067251.P14636830881055195587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 10 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A067251.P14636830881055195587

namespace A067251

/-- `lt[n, lcm(10, n)]` -/
def P14636830881055195587.Spec : Prop :=
  ∀ n, (P14636830881055195587.a n : ℤ) = A067251 (n + 1)

end A067251

/-! ## A067251.P3023596540708034222

`lt[0, n*n%10]`
-/

namespace A067251.P3023596540708034222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n % 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A067251.P3023596540708034222

namespace A067251

/-- `lt[0, n*n%10]` -/
def P3023596540708034222.Spec : Prop :=
  ∀ n, (P3023596540708034222.a n : ℤ) = A067251 (n + 1)

end A067251

/-! ## A067251.P3590488773009358487

`∑[C(dr(n), 9)+1]`
-/

namespace A067251.P3590488773009358487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.digitalRoot (n : ℤ)) 9 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067251.P3590488773009358487

namespace A067251

/-- `∑[C(dr(n), 9)+1]` -/
def P3590488773009358487.Spec : Prop :=
  ∀ n, (P3590488773009358487.a n : ℤ) = A067251 (n + 1)

end A067251

/-! ## A067251.P238692514838752290

`ceil(10/(9*acot(n)))`
-/

namespace A067251.P238692514838752290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈10 / (9 * SequenceMachineLib.acot (n : ℝ))⌉

end

end A067251.P238692514838752290

namespace A067251

/-- `ceil(10/(9*acot(n)))` -/
def P238692514838752290.Spec : Prop :=
  ∀ n, P238692514838752290.a n = A067251 (n + 1)

end A067251

/-! ## A067251.P4017823810730859755

`∑[round(cosh(sin(dr(1-n))))]`
-/

namespace A067251.P4017823810730859755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (Real.sin (SequenceMachineLib.digitalRoot (1 - (n : ℤ)) : ℝ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067251.P4017823810730859755

namespace A067251

/-- `∑[round(cosh(sin(dr(1-n))))]` -/
def P4017823810730859755.Spec : Prop :=
  ∀ n, P4017823810730859755.a n = A067251 (n + 1)

end A067251

/-! ## A067251.P11278637645341296115

`∑[char[n-dr(n)]]+n`
-/

namespace A067251.P11278637645341296115
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.digitalRoot (n : ℤ) : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A067251.P11278637645341296115

namespace A067251

/-- `∑[char[n-dr(n)]]+n` -/
def P11278637645341296115.Spec : Prop :=
  ∀ n, (P11278637645341296115.a n : ℤ) = A067251 (n + 1)

end A067251

/-! ## A067251.P13411885229338997608

`comp[a(n-1)+10]+1` with `a(0)=9`
-/

namespace A067251.P13411885229338997608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [9] fun n f1 =>
  f1 (n - 1) + 10

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A067251.P13411885229338997608

namespace A067251

/-- `comp[a(n-1)+10]+1` -/
def P13411885229338997608.Spec : Prop :=
  ∀ n, (P13411885229338997608.a n : ℤ) = A067251 (n + 1)

end A067251

/-! ## A067251.P6418351791016640487

`∑[ceil(2/dr(n+1))]-1`
-/

namespace A067251.P6418351791016640487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A067251.P6418351791016640487

namespace A067251

/-- `∑[ceil(2/dr(n+1))]-1` -/
def P6418351791016640487.Spec : Prop :=
  ∀ n, P6418351791016640487.a n = A067251 (n + 1)

end A067251

/-! ## A067251.P9787534813634556809

`∑[floor(1/dr(n+1))]+n`
-/

namespace A067251.P9787534813634556809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A067251.P9787534813634556809

namespace A067251

/-- `∑[floor(1/dr(n+1))]+n` -/
def P9787534813634556809.Spec : Prop :=
  ∀ n, P9787534813634556809.a n = A067251 (n + 1)

end A067251

/-! ## A067251.P11266539321760875681

`∑[gcd(2, dr(n+1)+dr(n))]`
-/

namespace A067251.P11266539321760875681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (SequenceMachineLib.digitalRoot (n + 1 : ℤ) + SequenceMachineLib.digitalRoot (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067251.P11266539321760875681

namespace A067251

/-- `∑[gcd(2, dr(n+1)+dr(n))]` -/
def P11266539321760875681.Spec : Prop :=
  ∀ n, (P11266539321760875681.a n : ℤ) = A067251 (n + 1)

end A067251

/-! ## A067251.P16491742901394568823

`round(5/(9*acot(2*n+1)))`
-/

namespace A067251.P16491742901394568823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (5 / (9 * SequenceMachineLib.acot (2 * n + 1 : ℝ)))

end

end A067251.P16491742901394568823

namespace A067251

/-- `round(5/(9*acot(2*n+1)))` -/
def P16491742901394568823.Spec : Prop :=
  ∀ n, P16491742901394568823.a n = A067251 (n + 1)

end A067251

/-! ## A067251.P1958485993934720942

`floor(∑[floor(a(n-3))]/3)` with `a(0)=3, a(1)=3, a(2)=3, a(3)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A067251.P1958485993934720942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 3, 3, 4] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3⌋

end

end A067251.P1958485993934720942

namespace A067251

/-- `floor(∑[floor(a(n-3))]/3)` -/
def P1958485993934720942.Spec : Prop :=
  ∀ n, P1958485993934720942.a n = A067251 (n + 1)

end A067251

/-! ## A067251.P2145086236224473608

`record[(n+1)*10^-val(n+1, 10)]`
-/

namespace A067251.P2145086236224473608
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (10 : ℚ) ^ (-(SequenceMachineLib.valuation (n + 1) 10 : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067251.P2145086236224473608

namespace A067251

/-- `record[(n+1)*10^-val(n+1, 10)]` -/
def P2145086236224473608.Spec : Prop :=
  ∀ n, P2145086236224473608.a n = (A067251 (n + 1) : ℚ)

end A067251

/-! ## A067251.P12098927748980180737

`n-floor((a(n-1)/2-n)/4)` with `a(0)=1`
-/

namespace A067251.P12098927748980180737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) - ⌊((a (n - 1) : ℚ) / 2 - (n : ℚ)) / 4⌋

end

end A067251.P12098927748980180737

namespace A067251

/-- `n-floor((a(n-1)/2-n)/4)` -/
def P12098927748980180737.Spec : Prop :=
  ∀ n, P12098927748980180737.a n = A067251 (n + 1)

end A067251

/-! ## A067251.P1061634609944623239

`∪[2*n+1, floor(n/4+n+1)]`
-/

namespace A067251.P1061634609944623239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 4 + (n + 1 : ℚ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A067251.P1061634609944623239

namespace A067251

/-- `∪[2*n+1, floor(n/4+n+1)]` -/
def P1061634609944623239.Spec : Prop :=
  ∀ n, (P1061634609944623239.a n : ℤ) = A067251 (n + 1)

end A067251

/-! ## A067251.P16295747697651931503

`2*n+1-∑[A008683(gcd(n, (n+3)²))²]`
-/

namespace A067251.P16295747697651931503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Nat.gcd n ((n + 3) ^ 2)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067251.P16295747697651931503

namespace A067251

/-- `2*n+1-∑[A008683(gcd(n, (n+3)²))²]` -/
def P16295747697651931503.Spec : Prop :=
  ∀ n, P16295747697651931503.a n = A067251 (n + 1)

end A067251

/-! ## A067251.P3676352217059147993

`A008620(A002264(n))+n`
-/

namespace A067251.P3676352217059147993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A002264 n).toNat + (n : ℤ)

end

end A067251.P3676352217059147993

namespace A067251

/-- `A008620(A002264(n))+n` -/
def P3676352217059147993.Spec : Prop :=
  ∀ n, P3676352217059147993.a n = A067251 (n + 1)

end A067251

/-! ## A067251.P10586086118222742631

`A008620(A093390(n))+n`
-/

namespace A067251.P10586086118222742631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A093390 n).toNat + (n : ℤ)

end

end A067251.P10586086118222742631

namespace A067251

/-- `A008620(A093390(n))+n` -/
def P10586086118222742631.Spec : Prop :=
  ∀ n, P10586086118222742631.a n = A067251 (n + 1)

end A067251

/-!
# A067252: Composite k such that sigma(k)-phi(k) is prime.

The programs for A067252, there is no canonical definition to state claims against.
-/

/-! ## A067252.P10238471299946551466

`∩[A115919(n+1), A034038(n)]`
-/

namespace A067252.P10238471299946551466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034038 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067252.P10238471299946551466

/-! ## A067252.P11709159086217775978

`∩[A057109(n+1), A115919(n+1)]`
-/

namespace A067252.P11709159086217775978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067252.P11709159086217775978

/-! ## A067252.P14037053005692047350

`∩[A069189(n+1), A115919(n+1)]`
-/

namespace A067252.P14037053005692047350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069189 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067252.P14037053005692047350

/-! ## A067252.P10297633852913470591

`∩[A069265(n+1), A115919(n+1)]`
-/

namespace A067252.P10297633852913470591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067252.P10297633852913470591

/-! ## A067252.P12455575621743359400

`∩[A070003(n+1), A115919(n+1)]`
-/

namespace A067252.P12455575621743359400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067252.P12455575621743359400

/-! ## A067252.P11455089853970248984

`∩[A115919(n+1), A122145(n+1)]`
-/

namespace A067252.P11455089853970248984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067252.P11455089853970248984

/-! ## A067252.P9668655579484278201

`∩[A115919(n+1), A226385(n+1)]`
-/

namespace A067252.P9668655579484278201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226385 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067252.P9668655579484278201

/-! ## A067252.P7854899605872754435

`∩[A115919(n+1), A328014(n+1)]`
-/

namespace A067252.P7854899605872754435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328014 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067252.P7854899605872754435

/-! ## A067252.P3520105285677050466

`∩[A115919(n+1), A371013(n+1)]`
-/

namespace A067252.P3520105285677050466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371013 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067252.P3520105285677050466

/-!
# A067255: Irregular triangle read by rows: row n gives exponents in prime factorization of n.

The programs for A067255, there is no canonical definition to state claims against.
-/

/-! ## A067255.P10815045822460107213

`val(A241920(n+1), A000040(A241915(n+1)))`
-/

namespace A067255.P10815045822460107213
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A241920 (n + 1)).toNat (A000040 (A241915 (n + 1)).toNat).toNat

end

end A067255.P10815045822460107213

/-! ## A067255.P11006991887500029987

`val(A241920(n+1), A000040(A241914(n+1)+1))`
-/

namespace A067255.P11006991887500029987
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A241920 (n + 1)).toNat (A000040 (A241914 (n + 1) + 1).toNat).toNat

end

end A067255.P11006991887500029987

/-! ## A067255.P6104996227117080906

`A134363(n+1)+A025466(A067247(n+1))`
-/

namespace A067255.P6104996227117080906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134363 (n + 1) + A025466 (A067247 (n + 1)).toNat

end

end A067255.P6104996227117080906

/-! ## A067255.P8280766912001649091

`A276404(A285246(n))+A134363(n+1)`
-/

namespace A067255.P8280766912001649091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276404 (A285246 n).toNat + A134363 (n + 1)

end

end A067255.P8280766912001649091

/-! ## A067255.P13465938229434707132

`A263087(A162535(n+1)+A118915(3*n+2))`
-/

namespace A067255.P13465938229434707132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263087 (A162535 (n + 1) + A118915 (3 * n + 2)).toNat

end

end A067255.P13465938229434707132

/-!
# A067256: Numbers k such that k, 2*k+1, 3*k+2 are primes.

The programs for A067256, there is no canonical definition to state claims against.
-/

/-! ## A067256.P7492108536712687002

`2*A124486(n+1)-1`
-/

namespace A067256.P7492108536712687002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A124486 (n + 1) - 1

end

end A067256.P7492108536712687002

/-! ## A067256.P17781671569877715152

`A008683(A007528(n+1))+2*A124486(n+1)`
-/

namespace A067256.P17781671569877715152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A007528 (n + 1)).toNat + 2 * A124486 (n + 1)

end

end A067256.P17781671569877715152

/-! ## A067256.P7650852613191138765

`A343785(A016789(n))+2*A124486(n+1)`
-/

namespace A067256.P7650852613191138765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343785 (A016789 n).toNat + 2 * A124486 (n + 1)

end

end A067256.P7650852613191138765

/-! ## A067256.P13084663618575440723

`A008683(A005384(n+1))+2*A124486(n+1)`
-/

namespace A067256.P13084663618575440723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A005384 (n + 1)).toNat + 2 * A124486 (n + 1)

end

end A067256.P13084663618575440723

/-! ## A067256.P6677475597246627040

`p?[floor(A162336(n+1)/3)]`
-/

namespace A067256.P6677475597246627040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A162336 (n + 1) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067256.P6677475597246627040

/-! ## A067256.P8875233644904984442

`∩[A005384(n+1), A023208(n+1)]`
-/

namespace A067256.P8875233644904984442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067256.P8875233644904984442

/-! ## A067256.P17378648929291206374

`∩[A023208(n+1), A246857(n+1)]`
-/

namespace A067256.P17378648929291206374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067256.P17378648929291206374

/-! ## A067256.P8055036589852281643

`∩[A023208(n+1), A348511(n+1)]`
-/

namespace A067256.P8055036589852281643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067256.P8055036589852281643

/-! ## A067256.P8466817651989242834

`∩[A023208(n+1), A364926(n+1)]`
-/

namespace A067256.P8466817651989242834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067256.P8466817651989242834

/-! ## A067256.P8890059083504772552

`A008683(A005385(n+1))+2*A124486(n+1)`
-/

namespace A067256.P8890059083504772552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A005385 (n + 1)).toNat + 2 * A124486 (n + 1)

end

end A067256.P8890059083504772552

/-! ## A067256.P15290957296539772780

`∩[A023208(n+1), A215751(n+1)]`
-/

namespace A067256.P15290957296539772780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067256.P15290957296539772780

/-! ## A067256.P6072279975386174355

`∩[A162338(n+1), A215751(n+1)]`
-/

namespace A067256.P6072279975386174355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067256.P6072279975386174355

/-! ## A067256.P7253457610589072781

`A008683(A000355(n+1))+2*A124486(n+1)`
-/

namespace A067256.P7253457610589072781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A000355 (n + 1)).toNat + 2 * A124486 (n + 1)

end

end A067256.P7253457610589072781

/-! ## A067256.P17721774464429715583

`∩[A023208(n+1), A259973(n+1)]`
-/

namespace A067256.P17721774464429715583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067256.P17721774464429715583

/-! ## A067256.P6444829284219614559

`∩[A023208(n+1), A163778(n+1)]`
-/

namespace A067256.P6444829284219614559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067256.P6444829284219614559

/-! ## A067256.P17162576597103436183

`∩[A162338(n+1), A163778(n+1)]`
-/

namespace A067256.P17162576597103436183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067256.P17162576597103436183

/-! ## A067256.P17667991306168178223

`∩[A023208(n+1), A078762(n+1)]`
-/

namespace A067256.P17667991306168178223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067256.P17667991306168178223

/-! ## A067256.P14082058291472851059

`∩[A023208(n+1), A104635(n+1)]`
-/

namespace A067256.P14082058291472851059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104635 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067256.P14082058291472851059

/-! ## A067256.P15416928929724884259

`∩[A104635(n+1), A162338(n+1)]`
-/

namespace A067256.P15416928929724884259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104635 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067256.P15416928929724884259

/-! ## A067256.P14584781437642236425

`∩[A014109(n+1), A023208(n+1)]`
-/

namespace A067256.P14584781437642236425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067256.P14584781437642236425

/-!
# A067257: Numbers n such that n, 2n+1, 3n+2, 4n+3 are primes.

The programs for A067257, there is no canonical definition to state claims against.
-/

/-! ## A067257.P1917732078629039463

`2*A124487(n+1)-1`
-/

namespace A067257.P1917732078629039463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A124487 (n + 1) - 1

end

end A067257.P1917732078629039463

/-! ## A067257.P9289854269822369438

`A008683(A006512(n+1))+2*A124487(n+1)`
-/

namespace A067257.P9289854269822369438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A006512 (n + 1)).toNat + 2 * A124487 (n + 1)

end

end A067257.P9289854269822369438

/-! ## A067257.P183363466037687605

`A008683(A005384(n+1))+2*A124487(n+1)`
-/

namespace A067257.P183363466037687605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A005384 (n + 1)).toNat + 2 * A124487 (n + 1)

end

end A067257.P183363466037687605

/-! ## A067257.P1381924687854311630

`∩[A007700(n+1), A126955(n+1)]`
-/

namespace A067257.P1381924687854311630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067257.P1381924687854311630

/-! ## A067257.P4144160396920141889

`∩[A007700(n+1), A067256(n+1)]`
-/

namespace A067257.P4144160396920141889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067256 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067257.P4144160396920141889

/-! ## A067257.P5459075020813152193

`∩[A067256(n+1), A126955(n+1)]`
-/

namespace A067257.P5459075020813152193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067256 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067257.P5459075020813152193

/-! ## A067257.P10470018917040170939

`A008683(A005385(n+1))+2*A124487(n+1)`
-/

namespace A067257.P10470018917040170939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A005385 (n + 1)).toNat + 2 * A124487 (n + 1)

end

end A067257.P10470018917040170939

/-! ## A067257.P8198790546483013848

`A008683(A000355(n+1))+2*A124487(n+1)`
-/

namespace A067257.P8198790546483013848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A000355 (n + 1)).toNat + 2 * A124487 (n + 1)

end

end A067257.P8198790546483013848

/-! ## A067257.P12351083660074455741

`∩[A126955(n+1), A215850(n+1)]`
-/

namespace A067257.P12351083660074455741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215850 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067257.P12351083660074455741

/-! ## A067257.P11650816340652875365

`∩[A005384(n+1), A126955(n+1)]`
-/

namespace A067257.P11650816340652875365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067257.P11650816340652875365

/-! ## A067257.P7538801522534473427

`∩[A126955(n+1), A348511(n+1)]`
-/

namespace A067257.P7538801522534473427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067257.P7538801522534473427

/-! ## A067257.P7338275158794866809

`p?[A126955(n+1)]`
-/

namespace A067257.P7338275158794866809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126955 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067257.P7338275158794866809

/-!
# A067258: Numbers n such that n, 2n+1, 3n+2, 4n+3, 5n+4 are primes.

The programs for A067258, there is no canonical definition to state claims against.
-/

/-! ## A067258.P7847879071941796004

`2*A124488(n+1)-1`
-/

namespace A067258.P7847879071941796004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A124488 (n + 1) - 1

end

end A067258.P7847879071941796004

/-! ## A067258.P11272407249669670057

`A008683(A060395(n))+2*A124488(n+1)`
-/

namespace A067258.P11272407249669670057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A060395 n).toNat + 2 * A124488 (n + 1)

end

end A067258.P11272407249669670057

/-! ## A067258.P14095626204713322757

`A106470(A319101(n+1))+2*A124488(n+1)`
-/

namespace A067258.P14095626204713322757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106470 (A319101 (n + 1)).toNat + 2 * A124488 (n + 1)

end

end A067258.P14095626204713322757

/-! ## A067258.P11423853351433236289

`A008683(A045344(n+1))+2*A124488(n+1)`
-/

namespace A067258.P11423853351433236289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A045344 (n + 1)).toNat + 2 * A124488 (n + 1)

end

end A067258.P11423853351433236289

/-! ## A067258.P11911274625792468470

`A008683(A126145(n))+2*A124488(n+1)`
-/

namespace A067258.P11911274625792468470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A126145 n).toNat + 2 * A124488 (n + 1)

end

end A067258.P11911274625792468470

/-! ## A067258.P2183919570144307387

`A008683(A067367(n+1))+2*A124488(n+1)`
-/

namespace A067258.P2183919570144307387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A067367 (n + 1)).toNat + 2 * A124488 (n + 1)

end

end A067258.P2183919570144307387

/-! ## A067258.P8075767109806282430

`∩[A067257(n+1), A138700(n+1)]`
-/

namespace A067258.P8075767109806282430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067257 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067258.P8075767109806282430

/-! ## A067258.P1009222378717180948

`∩[A007700(n+1), A126956(n+1)]`
-/

namespace A067258.P1009222378717180948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126956 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067258.P1009222378717180948

/-! ## A067258.P9040138809225663252

`∩[A007700(n+1), A138700(n+1)]`
-/

namespace A067258.P9040138809225663252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067258.P9040138809225663252

/-! ## A067258.P13584818470214426054

`∩[A126956(n+1), A215850(n+1)]`
-/

namespace A067258.P13584818470214426054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215850 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067258.P13584818470214426054

/-!
# A067259: Cubefree numbers which are not squarefree.

The programs for A067259, the canonical program `A067259.P11996182703076238055` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067259 has offset 1).

The definition of A067259 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067259.P11996182703076238055

`eq[2, A051903(n+1)]+1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A067259

/-- `eq[2, A051903(n+1)]+1` -/
def P11996182703076238055.Spec : Prop :=
  ∀ n, (P11996182703076238055.a n : ℤ) = A067259 (n + 1)

theorem P11996182703076238055.correct : P11996182703076238055.Spec := by
  intro n
  simp only [A067259, Nat.add_sub_cancel]

end A067259

/-! ## A067259.P17370292565731252099

`filter[A336594(n+1), A212793(#)]`
-/

namespace A067259.P17370292565731252099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A067259.P17370292565731252099

namespace A067259

/-- `filter[A336594(n+1), A212793(#)]` -/
def P17370292565731252099.Spec : Prop :=
  ∀ n, P17370292565731252099.a n = A067259 (n + 1)

end A067259

/-! ## A067259.P15921331971768049412

`filter[A336594(n+1), A359429(#)]`
-/

namespace A067259.P15921331971768049412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359429 (f1 j).toNat = 1) n)

end

end A067259.P15921331971768049412

namespace A067259

/-- `filter[A336594(n+1), A359429(#)]` -/
def P15921331971768049412.Spec : Prop :=
  ∀ n, P15921331971768049412.a n = A067259 (n + 1)

end A067259

/-! ## A067259.P5376307030046953155

`filter[A375031(n+1), A212793(#)]`
-/

namespace A067259.P5376307030046953155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A067259.P5376307030046953155

namespace A067259

/-- `filter[A375031(n+1), A212793(#)]` -/
def P5376307030046953155.Spec : Prop :=
  ∀ n, P5376307030046953155.a n = A067259 (n + 1)

end A067259

/-! ## A067259.P12712719939818315640

`filter[A375031(n+1), A355823(#)]`
-/

namespace A067259.P12712719939818315640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355823 (f1 j).toNat = 1) n)

end

end A067259.P12712719939818315640

namespace A067259

/-- `filter[A375031(n+1), A355823(#)]` -/
def P12712719939818315640.Spec : Prop :=
  ∀ n, P12712719939818315640.a n = A067259 (n + 1)

end A067259

/-! ## A067259.P10786525363023877511

`filter[A375031(n+1), A359429(#)]`
-/

namespace A067259.P10786525363023877511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359429 (f1 j).toNat = 1) n)

end

end A067259.P10786525363023877511

namespace A067259

/-- `filter[A375031(n+1), A359429(#)]` -/
def P10786525363023877511.Spec : Prop :=
  ∀ n, P10786525363023877511.a n = A067259 (n + 1)

end A067259

/-! ## A067259.P2010446502419420654

`filter[A038109(n+1), A212793(#)]`
-/

namespace A067259.P2010446502419420654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038109 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A067259.P2010446502419420654

namespace A067259

/-- `filter[A038109(n+1), A212793(#)]` -/
def P2010446502419420654.Spec : Prop :=
  ∀ n, P2010446502419420654.a n = A067259 (n + 1)

end A067259

/-! ## A067259.P7038408265913136405

`filter[A038109(n+1), A359429(#)]`
-/

namespace A067259.P7038408265913136405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038109 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359429 (f1 j).toNat = 1) n)

end

end A067259.P7038408265913136405

namespace A067259

/-- `filter[A038109(n+1), A359429(#)]` -/
def P7038408265913136405.Spec : Prop :=
  ∀ n, P7038408265913136405.a n = A067259 (n + 1)

end A067259

/-! ## A067259.P6180335254806735316

`filter[A369209(n+1), A212793(#)]`
-/

namespace A067259.P6180335254806735316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369209 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A067259.P6180335254806735316

namespace A067259

/-- `filter[A369209(n+1), A212793(#)]` -/
def P6180335254806735316.Spec : Prop :=
  ∀ n, P6180335254806735316.a n = A067259 (n + 1)

end A067259

/-! ## A067259.P11823528542835599189

`filter[A369209(n+1), A359429(#)]`
-/

namespace A067259.P11823528542835599189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369209 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359429 (f1 j).toNat = 1) n)

end

end A067259.P11823528542835599189

namespace A067259

/-- `filter[A369209(n+1), A359429(#)]` -/
def P11823528542835599189.Spec : Prop :=
  ∀ n, P11823528542835599189.a n = A067259 (n + 1)

end A067259

/-! ## A067259.P11739643359201129592

`∩[A013929(n+1), A342393(n+1)]`
-/

namespace A067259.P11739643359201129592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067259.P11739643359201129592

namespace A067259

/-- `∩[A013929(n+1), A342393(n+1)]` -/
def P11739643359201129592.Spec : Prop :=
  ∀ n, (P11739643359201129592.a n : ℤ) = A067259 (n + 1)

end A067259

/-! ## A067259.P5497852373484202291

`filter[A384519(n+1), A212793(#)]`
-/

namespace A067259.P5497852373484202291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A067259.P5497852373484202291

namespace A067259

/-- `filter[A384519(n+1), A212793(#)]` -/
def P5497852373484202291.Spec : Prop :=
  ∀ n, P5497852373484202291.a n = A067259 (n + 1)

end A067259

/-! ## A067259.P4692011625377444056

`filter[A384519(n+1), A359429(#)]`
-/

namespace A067259.P4692011625377444056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359429 (f1 j).toNat = 1) n)

end

end A067259.P4692011625377444056

namespace A067259

/-- `filter[A384519(n+1), A359429(#)]` -/
def P4692011625377444056.Spec : Prop :=
  ∀ n, P4692011625377444056.a n = A067259 (n + 1)

end A067259

/-! ## A067259.P3034456763711517537

`filter[A059269(n+1), A212793(#)]`
-/

namespace A067259.P3034456763711517537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A067259.P3034456763711517537

namespace A067259

/-- `filter[A059269(n+1), A212793(#)]` -/
def P3034456763711517537.Spec : Prop :=
  ∀ n, P3034456763711517537.a n = A067259 (n + 1)

end A067259

/-! ## A067259.P1189529844836861852

`filter[A059269(n+1), A359429(#)]`
-/

namespace A067259.P1189529844836861852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359429 (f1 j).toNat = 1) n)

end

end A067259.P1189529844836861852

namespace A067259

/-- `filter[A059269(n+1), A359429(#)]` -/
def P1189529844836861852.Spec : Prop :=
  ∀ n, P1189529844836861852.a n = A067259 (n + 1)

end A067259

/-! ## A067259.P10377964125829861550

`filter[A048944(n+1), A359429(#)]`
-/

namespace A067259.P10377964125829861550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048944 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359429 (f1 j).toNat = 1) n)

end

end A067259.P10377964125829861550

namespace A067259

/-- `filter[A048944(n+1), A359429(#)]` -/
def P10377964125829861550.Spec : Prop :=
  ∀ n, P10377964125829861550.a n = A067259 (n + 1)

end A067259

/-! ## A067259.P4990728977430068507

`filter[A048944(n+2), A212793(#)]`
-/

namespace A067259.P4990728977430068507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048944 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A067259.P4990728977430068507

namespace A067259

/-- `filter[A048944(n+2), A212793(#)]` -/
def P4990728977430068507.Spec : Prop :=
  ∀ n, P4990728977430068507.a n = A067259 (n + 1)

end A067259

/-! ## A067259.P10384560535637676228

`filter[A368714(n+1), A359429(#)]`
-/

namespace A067259.P10384560535637676228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368714 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359429 (f1 j).toNat = 1) n)

end

end A067259.P10384560535637676228

namespace A067259

/-- `filter[A368714(n+1), A359429(#)]` -/
def P10384560535637676228.Spec : Prop :=
  ∀ n, P10384560535637676228.a n = A067259 (n + 1)

end A067259

/-! ## A067259.P4057950482117321726

`filter[A368714(n+2), A212793(#)]`
-/

namespace A067259.P4057950482117321726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368714 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A067259.P4057950482117321726

namespace A067259

/-- `filter[A368714(n+2), A212793(#)]` -/
def P4057950482117321726.Spec : Prop :=
  ∀ n, P4057950482117321726.a n = A067259 (n + 1)

end A067259

/-! ## A067259.P14016673325917853820

`filter[A177880(n+1), A212793(#)]`
-/

namespace A067259.P14016673325917853820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177880 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A067259.P14016673325917853820

namespace A067259

/-- `filter[A177880(n+1), A212793(#)]` -/
def P14016673325917853820.Spec : Prop :=
  ∀ n, P14016673325917853820.a n = A067259 (n + 1)

end A067259

/-!
# A067261: Numbers n such that sigma(n+1)=3*phi(n).

The programs for A067261, there is no canonical definition to state claims against.
-/

/-! ## A067261.P5897796179677796275

`eq[A039653(n+1)+1, A200905(A028310(n))]`
-/

namespace A067261.P5897796179677796275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200905 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067261.P5897796179677796275

/-! ## A067261.P10788363996982583535

`eq[A200905(A028310(n))+1, A088580(n+1)]`
-/

namespace A067261.P10788363996982583535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200905 (A028310 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067261.P10788363996982583535

/-! ## A067261.P10770052907940780584

`eq[2*A200905(A028310(n)), A074400(n+1)]`
-/

namespace A067261.P10770052907940780584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A200905 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074400 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067261.P10770052907940780584

/-! ## A067261.P10666067838207491645

`eq[A272027(n+1)/3, A200905(A028310(n))]`
-/

namespace A067261.P10666067838207491645
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272027 (n + 1) : ℚ) / 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200905 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A067261.P10666067838207491645

/-! ## A067261.P18192246193118636341

`eq[A239050(n+1)/4, A200905(A028310(n))]`
-/

namespace A067261.P18192246193118636341
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239050 (n + 1) : ℚ) / 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200905 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A067261.P18192246193118636341

/-!
# A067262: Numbers k such that sigma(k+1) = 4*phi(k).

The programs for A067262, there is no canonical definition to state claims against.
-/

/-! ## A067262.P3183768913950543347

`eq[A022144(A225530(n)), A074400(n+1)]`
-/

namespace A067262.P3183768913950543347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 (A225530 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074400 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067262.P3183768913950543347

/-! ## A067262.P13341682373329613928

`eq[A008574(A225530(n)), A097863(n+1)]`
-/

namespace A067262.P13341682373329613928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A225530 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097863 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067262.P13341682373329613928

/-! ## A067262.P16031629356267258940

`eq[A008574(A225530(n)), A284587(n+1)]`
-/

namespace A067262.P16031629356267258940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A225530 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284587 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067262.P16031629356267258940

/-! ## A067262.P11040332938587235618

`eq[A008574(A225530(n)), A034448(n+1)]`
-/

namespace A067262.P11040332938587235618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A225530 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067262.P11040332938587235618

/-! ## A067262.P2841889864090451837

`eq[A008586(A225530(n)), A069934(n+1)]`
-/

namespace A067262.P2841889864090451837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A225530 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069934 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067262.P2841889864090451837

/-!
# A067264: Numbers n such that prime(n+1)-prime(n)=bigomega(n).

The programs for A067264, the canonical program `A067264.P3036750254141973823` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067264 has offset 1).

The definition of A067264 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2890 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067264.P3036750254141973823

`eq[A001222(n+1), A001223(n+1)]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A067264

/-- `eq[A001222(n+1), A001223(n+1)]+1` -/
def P3036750254141973823.Spec : Prop :=
  ∀ n, (P3036750254141973823.a n : ℤ) = A067264 (n + 1)

theorem P3036750254141973823.correct : P3036750254141973823.Spec := by
  intro n
  simp only [A067264, Nat.add_sub_cancel]

end A067264

/-! ## A067264.P12211657431671437961

`eq[A001223(n+1), A144494(n+1)]+1`
-/

namespace A067264.P12211657431671437961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144494 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A067264.P12211657431671437961

namespace A067264

/-- `eq[A001223(n+1), A144494(n+1)]+1` -/
def P12211657431671437961.Spec : Prop :=
  ∀ n, (P12211657431671437961.a n : ℤ) = A067264 (n + 1)

end A067264

/-! ## A067264.P11087606593747414132

`eq[A001222(n+1)+1, A076368(n+2)]+1`
-/

namespace A067264.P11087606593747414132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A067264.P11087606593747414132

namespace A067264

/-- `eq[A001222(n+1)+1, A076368(n+2)]+1` -/
def P11087606593747414132.Spec : Prop :=
  ∀ n, (P11087606593747414132.a n : ℤ) = A067264 (n + 1)

end A067264

/-! ## A067264.P12905086849421379636

`eq[A001222(n+1)+1, A230847(n+2)]+1`
-/

namespace A067264.P12905086849421379636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230847 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A067264.P12905086849421379636

namespace A067264

/-- `eq[A001222(n+1)+1, A230847(n+2)]+1` -/
def P12905086849421379636.Spec : Prop :=
  ∀ n, (P12905086849421379636.a n : ℤ) = A067264 (n + 1)

end A067264

/-! ## A067264.P16610086075383259391

`eq[A001222(A004277(n)), A076368(n+1)]`
-/

namespace A067264.P16610086075383259391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A004277 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067264.P16610086075383259391

namespace A067264

/-- `eq[A001222(A004277(n)), A076368(n+1)]` -/
def P16610086075383259391.Spec : Prop :=
  ∀ n, (P16610086075383259391.a n : ℤ) = A067264 (n + 1)

end A067264

/-! ## A067264.P2602106593260694089

`eq[A001222(A028310(n)), A054541(n+1)]`
-/

namespace A067264.P2602106593260694089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067264.P2602106593260694089

namespace A067264

/-- `eq[A001222(A028310(n)), A054541(n+1)]` -/
def P2602106593260694089.Spec : Prop :=
  ∀ n, (P2602106593260694089.a n : ℤ) = A067264 (n + 1)

end A067264

/-! ## A067264.P7339326595109089993

`eq[A001222(A008486(n)), A076368(n+1)]`
-/

namespace A067264.P7339326595109089993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008486 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067264.P7339326595109089993

namespace A067264

/-- `eq[A001222(A008486(n)), A076368(n+1)]` -/
def P7339326595109089993.Spec : Prop :=
  ∀ n, (P7339326595109089993.a n : ℤ) = A067264 (n + 1)

end A067264

/-! ## A067264.P13925994548534656631

`eq[A001222(A008706(n)), A076368(n+1)]`
-/

namespace A067264.P13925994548534656631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008706 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067264.P13925994548534656631

namespace A067264

/-- `eq[A001222(A008706(n)), A076368(n+1)]` -/
def P13925994548534656631.Spec : Prop :=
  ∀ n, (P13925994548534656631.a n : ℤ) = A067264 (n + 1)

end A067264

/-! ## A067264.P6384115657786790108

`A153152(eq[A001223(n+1), A144494(n+1)])`
-/

namespace A067264.P6384115657786790108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144494 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A067264.P6384115657786790108

namespace A067264

/-- `A153152(eq[A001223(n+1), A144494(n+1)])` -/
def P6384115657786790108.Spec : Prop :=
  ∀ n, P6384115657786790108.a n = A067264 (n + 1)

end A067264

/-! ## A067264.P1462357925437135311

`A181569(eq[A001223(n+1), A144494(n+1)])`
-/

namespace A067264.P1462357925437135311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144494 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181569 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A067264.P1462357925437135311

namespace A067264

/-- `A181569(eq[A001223(n+1), A144494(n+1)])` -/
def P1462357925437135311.Spec : Prop :=
  ∀ n, P1462357925437135311.a n = A067264 (n + 1)

end A067264

/-! ## A067264.P15044046958302314838

`eq[A001222(n+1), A013632(A000040(n+1))]+1`
-/

namespace A067264.P15044046958302314838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (A000040 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A067264.P15044046958302314838

namespace A067264

/-- `eq[A001222(n+1), A013632(A000040(n+1))]+1` -/
def P15044046958302314838.Spec : Prop :=
  ∀ n, (P15044046958302314838.a n : ℤ) = A067264 (n + 1)

end A067264

/-!
# A067266: Numbers n such that omega(n)=M(n) where omega(n) is A001221(n) and M(n) is the Mertens function A002321(n).

The programs for A067266, the canonical program `A067266.P5387669520390554361` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067266 has offset 1).

The definition of A067266 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 312 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067266.P5387669520390554361

`eq[A001221(n+1), A002321(n+1)]+1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A067266

/-- `eq[A001221(n+1), A002321(n+1)]+1` -/
def P5387669520390554361.Spec : Prop :=
  ∀ n, (P5387669520390554361.a n : ℤ) = A067266 (n + 1)

theorem P5387669520390554361.correct : P5387669520390554361.Spec := by
  intro n
  simp only [A067266, Nat.add_sub_cancel]

end A067266

/-! ## A067266.P7606870397932417295

`eq[A143443(n+1)/(n+1), A001221(n+1)]+1`
-/

namespace A067266.P7606870397932417295
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143443 (n + 1) : ℚ) / (n + 1 : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n + 1

end

end A067266.P7606870397932417295

namespace A067266

/-- `eq[A143443(n+1)/(n+1), A001221(n+1)]+1` -/
def P7606870397932417295.Spec : Prop :=
  ∀ n, (P7606870397932417295.a n : ℤ) = A067266 (n + 1)

end A067266

/-! ## A067266.P2214607576514513793

`A020725(eq[A001221(n+1), A002321(n+1)])`
-/

namespace A067266.P2214607576514513793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A067266.P2214607576514513793

namespace A067266

/-- `A020725(eq[A001221(n+1), A002321(n+1)])` -/
def P2214607576514513793.Spec : Prop :=
  ∀ n, P2214607576514513793.a n = A067266 (n + 1)

end A067266

/-!
# A067267: Numbers n such that n, 10*n+1, 10*n+3, 10*n+7 and 10*n+9 are all primes.

The programs for A067267, there is no canonical definition to state claims against.
-/

/-! ## A067267.P1977626652364891698

`p?[A007811(n+1)]`
-/

namespace A067267.P1977626652364891698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067267.P1977626652364891698

/-! ## A067267.P8917608131648433551

`p?[A064975(n+1)-1]`
-/

namespace A067267.P8917608131648433551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064975 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067267.P8917608131648433551

/-! ## A067267.P18312894499255458056

`p?[A115095(n+1)-1]`
-/

namespace A067267.P18312894499255458056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115095 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067267.P18312894499255458056

/-! ## A067267.P15081575021288520578

`p?[floor(A178082(n+1)/2)]`
-/

namespace A067267.P15081575021288520578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A178082 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067267.P15081575021288520578

/-! ## A067267.P13125357227496438965

`p?[ceil(A222960(n+1)/5)]`
-/

namespace A067267.P13125357227496438965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A222960 (n + 1) : ℚ) / 5⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067267.P13125357227496438965

/-! ## A067267.P16844319949406346283

`p?[floor(A007530(n+1)/10)]`
-/

namespace A067267.P16844319949406346283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007530 (n + 1) : ℚ) / 10⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067267.P16844319949406346283

/-! ## A067267.P9495705980989071313

`p?[floor(A090258(n+1)/10)]`
-/

namespace A067267.P9495705980989071313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A090258 (n + 1) : ℚ) / 10⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067267.P9495705980989071313

/-! ## A067267.P10699785871771904133

`p?[3*A014561(n+1)+1]`
-/

namespace A067267.P10699785871771904133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A014561 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067267.P10699785871771904133

/-! ## A067267.P17608416091434912396

`p?[3*A061668(n+1)-2]`
-/

namespace A067267.P17608416091434912396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A061668 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067267.P17608416091434912396

/-! ## A067267.P17924848120548697738

`p?[A112540(n+1)+A014561(n+1)]`
-/

namespace A067267.P17924848120548697738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112540 (n + 1) + A014561 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067267.P17924848120548697738

/-! ## A067267.P14158838631386729537

`p?[A014561(n+1)+A061668(n+1)+A014561(n+1)]`
-/

namespace A067267.P14158838631386729537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014561 (n + 1) + (A061668 (n + 1) + A014561 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067267.P14158838631386729537

/-!
# A067268: Numbers k such that k and k^2+1 have the same number of distinct prime factors.

The programs for A067268, there is no canonical definition to state claims against.
-/

/-! ## A067268.P9303226199233799514

`eq[A001221(n+1), A128428(n+1)]+1`
-/

namespace A067268.P9303226199233799514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128428 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A067268.P9303226199233799514

/-! ## A067268.P1575776260340602203

`eq[∑{p}[n+1, n²%#]%(n+1), ∑{p}[(n+1)²+1, gcd(3, #)]]+1`
-/

namespace A067268.P1575776260340602203
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f2 n), n ^ 2 % p) % (n + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), Nat.gcd 3 p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n + 1

end

end A067268.P1575776260340602203

/-! ## A067268.P18054899114908783874

`eq[A001221((n+1)²+1), A001221(n+1)]+1`
-/

namespace A067268.P18054899114908783874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ((n + 1) ^ 2 + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A067268.P18054899114908783874

/-! ## A067268.P18133255251137810323

`eq[A001221(n²+1), A001221(A000038(n)+n)]`
-/

namespace A067268.P18133255251137810323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n ^ 2 + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067268.P18133255251137810323

/-!
# A067269: Triangular numbers which remain triangular when the most significant digit is moved to the end.

The programs for A067269, there is no canonical definition to state claims against.
-/

/-! ## A067269.P10319590102282829487

`∩[∑[n+1], A352057(n+1)]`
-/

namespace A067269.P10319590102282829487
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352057 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A067269.P10319590102282829487

/-! ## A067269.P16068895724099315034

`A113782(A392006(n+1))`
-/

namespace A067269.P16068895724099315034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113782 (A392006 (n + 1)).toNat

end

end A067269.P16068895724099315034

/-! ## A067269.P16820061582348345083

`A352057(A001222(Δ[5^n]))`
-/

namespace A067269.P16820061582348345083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352057 (A001222 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A067269.P16820061582348345083

/-!
# A067270: Numbers m such that m-th triangular number (A000217) ends in m.

The programs for A067270, there is no canonical definition to state claims against.
-/

/-! ## A067270.P8867342342414418800

`∩[A068408(n+1), A093534(n+1)]`
-/

namespace A067270.P8867342342414418800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068408 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067270.P8867342342414418800

/-! ## A067270.P10261365914934657582

`∩[A033819(n+1), A093534(n+1)]`
-/

namespace A067270.P10261365914934657582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067270.P10261365914934657582

/-! ## A067270.P12475660360419633135

`∩[A068407(n+1), A093534(n+1)]`
-/

namespace A067270.P12475660360419633135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067270.P12475660360419633135

/-! ## A067270.P15681993353757537483

`∩[A029943(n+1), A093534(n+1)]`
-/

namespace A067270.P15681993353757537483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029943 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067270.P15681993353757537483

/-! ## A067270.P16015140156620575972

`∩[A018834(n+1), A093534(n+1)]`
-/

namespace A067270.P16015140156620575972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067270.P16015140156620575972

/-!
# A067271: Numbers n such that the digits of P_7(n), the n-th heptagonal number, end in n.

The programs for A067271, there is no canonical definition to state claims against.
-/

/-! ## A067271.P3249115260480099643

`A143028(lt[A328531(n), A333402(n+1)])`
-/

namespace A067271.P3249115260480099643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328531 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333402 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143028 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A067271.P3249115260480099643

/-!
# A067272: a(n) = 2*10^(n-1) - 1.

The programs for A067272, the canonical program `A067272.P2345950692183081104` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067272 has offset 1).

The definition of A067272 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A067272.P2345950692183081104

`10*a(n-1)+9` with `a(0)=1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A067272

/-- `10*a(n-1)+9` -/
def P2345950692183081104.Spec : Prop :=
  ∀ n, (P2345950692183081104.a n : ℤ) = A067272 (n + 1)

theorem P2345950692183081104.correct : P2345950692183081104.Spec := by
  intro n
  simp only [A067272, Nat.add_sub_cancel]

end A067272

/-! ## A067272.P7660226144984630586

`2*10^n-1`
-/

namespace A067272.P7660226144984630586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * 10 ^ n : ℤ) - 1

end

end A067272.P7660226144984630586

namespace A067272

/-- `2*10^n-1` -/
def P7660226144984630586.Spec : Prop :=
  ∀ n, P7660226144984630586.a n = A067272 (n + 1)

end A067272

/-! ## A067272.P36659991461703094

`∑[10*a(n-1)]` with `a(0)=1, a(1)=18`
-/

namespace A067272.P36659991461703094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 18] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067272.P36659991461703094

namespace A067272

/-- `∑[10*a(n-1)]` -/
def P36659991461703094.Spec : Prop :=
  ∀ n, (P36659991461703094.a n : ℤ) = A067272 (n + 1)

end A067272

/-! ## A067272.P1109956395631798827

`xor(1, 6*floor(10^n/3))`
-/

namespace A067272.P1109956395631798827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (6 * ⌊(10 ^ n : ℚ) / 3⌋)

end

end A067272.P1109956395631798827

namespace A067272

/-- `xor(1, 6*floor(10^n/3))` -/
def P1109956395631798827.Spec : Prop :=
  ∀ n, P1109956395631798827.a n = A067272 (n + 1)

end A067272

/-! ## A067272.P4294026973199512651

`floor(xor(-2, -10^(n+1))/5)`
-/

namespace A067272.P4294026973199512651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.xor (-2) (-(10 ^ (n + 1) : ℤ)) : ℚ) / 5⌋

end

end A067272.P4294026973199512651

namespace A067272

/-- `floor(xor(-2, -10^(n+1))/5)` -/
def P4294026973199512651.Spec : Prop :=
  ∀ n, P4294026973199512651.a n = A067272 (n + 1)

end A067272

/-! ## A067272.P4893370314808643347

`floor(record[10^abs(1-n)-2]/5)`
-/

namespace A067272.P4893370314808643347
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (|1 - (n : ℤ)| : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) / 5⌋

end

end A067272.P4893370314808643347

namespace A067272

/-- `floor(record[10^abs(1-n)-2]/5)` -/
def P4893370314808643347.Spec : Prop :=
  ∀ n, P4893370314808643347.a n = A067272 (n + 1)

end A067272

/-! ## A067272.P18388652452117208539

`ceil(record[10^abs(1-n)-9]/5)`
-/

namespace A067272.P18388652452117208539
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (|1 - (n : ℤ)| : ℤ) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) / 5⌉

end

end A067272.P18388652452117208539

namespace A067272

/-- `ceil(record[10^abs(1-n)-9]/5)` -/
def P18388652452117208539.Spec : Prop :=
  ∀ n, P18388652452117208539.a n = A067272 (n + 1)

end A067272

/-! ## A067272.P9062437745621021937

`A133264(3*n)`
-/

namespace A067272.P9062437745621021937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133264 (3 * n)

end

end A067272.P9062437745621021937

namespace A067272

/-- `A133264(3*n)` -/
def P9062437745621021937.Spec : Prop :=
  ∀ n, P9062437745621021937.a n = A067272 (n + 1)

end A067272

/-! ## A067272.P10416376005264150370

`record[Δ[A322925(n)]]`
-/

namespace A067272.P10416376005264150370
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322925 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067272.P10416376005264150370

namespace A067272

/-- `record[Δ[A322925(n)]]` -/
def P10416376005264150370.Spec : Prop :=
  ∀ n, P10416376005264150370.a n = A067272 (n + 1)

end A067272

/-! ## A067272.P2060264220620377628

`floor(A198970(n)/2)`
-/

namespace A067272.P2060264220620377628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A198970 n : ℚ) / 2⌋

end

end A067272.P2060264220620377628

namespace A067272

/-- `floor(A198970(n)/2)` -/
def P2060264220620377628.Spec : Prop :=
  ∀ n, P2060264220620377628.a n = A067272 (n + 1)

end A067272

/-! ## A067272.P2437780974822113791

`floor(A198973(n)/4)`
-/

namespace A067272.P2437780974822113791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A198973 n : ℚ) / 4⌋

end

end A067272.P2437780974822113791

namespace A067272

/-- `floor(A198973(n)/4)` -/
def P2437780974822113791.Spec : Prop :=
  ∀ n, P2437780974822113791.a n = A067272 (n + 1)

end A067272

/-! ## A067272.P15360089383962070807

`∑[abs(Δ[A093136(n)])]`
-/

namespace A067272.P15360089383962070807
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093136 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067272.P15360089383962070807

namespace A067272

/-- `∑[abs(Δ[A093136(n)])]` -/
def P15360089383962070807.Spec : Prop :=
  ∀ n, P15360089383962070807.a n = A067272 (n + 1)

end A067272

/-! ## A067272.P9398305467465016941

`(A199684(n)-3)/2`
-/

namespace A067272.P9398305467465016941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199684 n - 3 : ℚ) / 2

end

end A067272.P9398305467465016941

namespace A067272

/-- `(A199684(n)-3)/2` -/
def P9398305467465016941.Spec : Prop :=
  ∀ n, P9398305467465016941.a n = (A067272 (n + 1) : ℚ)

end A067272

/-! ## A067272.P9738612564395705601

`(A100412(n)+3)/4`
-/

namespace A067272.P9738612564395705601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100412 n + 3 : ℚ) / 4

end

end A067272.P9738612564395705601

namespace A067272

/-- `(A100412(n)+3)/4` -/
def P9738612564395705601.Spec : Prop :=
  ∀ n, P9738612564395705601.a n = (A067272 (n + 1) : ℚ)

end A067272

/-! ## A067272.P10900710301532046991

`(A199686(n)-4)/3`
-/

namespace A067272.P10900710301532046991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199686 n - 4 : ℚ) / 3

end

end A067272.P10900710301532046991

namespace A067272

/-- `(A199686(n)-4)/3` -/
def P10900710301532046991.Spec : Prop :=
  ∀ n, P10900710301532046991.a n = (A067272 (n + 1) : ℚ)

end A067272

/-! ## A067272.P15414608604474631665

`A331788(9*n+1)`
-/

namespace A067272.P15414608604474631665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331788 (9 * n + 1)

end

end A067272.P15414608604474631665

namespace A067272

/-- `A331788(9*n+1)` -/
def P15414608604474631665.Spec : Prop :=
  ∀ n, P15414608604474631665.a n = A067272 (n + 1)

end A067272

/-! ## A067272.P15749222709936106086

`(A199689(n)-5)/4`
-/

namespace A067272.P15749222709936106086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199689 n - 5 : ℚ) / 4

end

end A067272.P15749222709936106086

namespace A067272

/-- `(A199689(n)-5)/4` -/
def P15749222709936106086.Spec : Prop :=
  ∀ n, P15749222709936106086.a n = (A067272 (n + 1) : ℚ)

end A067272

/-! ## A067272.P5149187927080616539

`(A173833(n+1)-2)/5`
-/

namespace A067272.P5149187927080616539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173833 (n + 1) - 2 : ℚ) / 5

end

end A067272.P5149187927080616539

namespace A067272

/-- `(A173833(n+1)-2)/5` -/
def P5149187927080616539.Spec : Prop :=
  ∀ n, P5149187927080616539.a n = (A067272 (n + 1) : ℚ)

end A067272

/-! ## A067272.P1665906840734940247

`(A099150(n+1)-3)/5`
-/

namespace A067272.P1665906840734940247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099150 (n + 1) - 3 : ℚ) / 5

end

end A067272.P1665906840734940247

namespace A067272

/-- `(A099150(n+1)-3)/5` -/
def P1665906840734940247.Spec : Prop :=
  ∀ n, P1665906840734940247.a n = (A067272 (n + 1) : ℚ)

end A067272

/-!
# A067273: a(n) = n*(a(n-1)*2+1), a(0) = 0.

The programs for A067273, the canonical program `A067273.P3171522677798974503` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067273 has offset 0).

The definition of A067273 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(a(n-1)*2+1)` (program `A067273.P3171522677798974503`, by `A067273.P3171522677798974503.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A067273.P3171522677798974503

`n*(a(n-1)*2+1)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A067273

/-- `n*(a(n-1)*2+1)` -/
def P3171522677798974503.Spec : Prop :=
  ∀ n, (P3171522677798974503.a n : ℤ) = A067273 n

theorem P3171522677798974503.correct : P3171522677798974503.Spec := by
  intro n
  simp only [A067273]

end A067273

/-! ## A067273.P15168595926539283574

`n*or(1, 2*a(n-1))` with `a(0)=0`
-/

namespace A067273.P15168595926539283574
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  n * Nat.lor 1 (2 * a (n - 1))

end

end A067273.P15168595926539283574

namespace A067273

/-- `n*or(1, 2*a(n-1))` -/
def P15168595926539283574.Spec : Prop :=
  ∀ n, (P15168595926539283574.a n : ℤ) = A067273 n

end A067273

/-! ## A067273.P12102470230360346775

`n*xor(1, 2*a(n-1))` with `a(0)=0`
-/

namespace A067273.P12102470230360346775
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  n * Nat.xor 1 (2 * a (n - 1))

end

end A067273.P12102470230360346775

namespace A067273

/-- `n*xor(1, 2*a(n-1))` -/
def P12102470230360346775.Spec : Prop :=
  ∀ n, (P12102470230360346775.a n : ℤ) = A067273 n

end A067273

/-! ## A067273.P2817450631762422349

`n*(3-2*(1-a(n-1)))` with `a(0)=0`
-/

namespace A067273.P2817450631762422349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * (3 - 2 * (1 - a (n - 1)))

end

end A067273.P2817450631762422349

namespace A067273

/-- `n*(3-2*(1-a(n-1)))` -/
def P2817450631762422349.Spec : Prop :=
  ∀ n, P2817450631762422349.a n = A067273 n

end A067273

/-! ## A067273.P16785026295410607138

`2*n*a(xor(-1, -n))+n` with `a(0)=0`
-/

namespace A067273.P16785026295410607138
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  2 * n * a (Int.xor (-1) (-(n : ℤ))).toNat + n

end

end A067273.P16785026295410607138

namespace A067273

/-- `2*n*a(xor(-1, -n))+n` -/
def P16785026295410607138.Spec : Prop :=
  ∀ n, (P16785026295410607138.a n : ℤ) = A067273 n

end A067273

/-! ## A067273.P13141182856515991836

`(a(n-1)+a(n-1)+1)/n^(-1)` with `a(0)=0`
-/

namespace A067273.P13141182856515991836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (a (n - 1) + (a (n - 1) + 1)) / (n : ℚ) ^ (-1 : ℤ)

end

end A067273.P13141182856515991836

namespace A067273

/-- `(a(n-1)+a(n-1)+1)/n^(-1)` -/
def P13141182856515991836.Spec : Prop :=
  ∀ n, P13141182856515991836.a n = (A067273 n : ℚ)

end A067273

/-! ## A067273.P15041013643314834114

`A308876(n)-1`
-/

namespace A067273.P15041013643314834114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308876 n - 1

end

end A067273.P15041013643314834114

namespace A067273

/-- `A308876(n)-1` -/
def P15041013643314834114.Spec : Prop :=
  ∀ n, P15041013643314834114.a n = A067273 n

end A067273

/-! ## A067273.P15664887223951128292

`n/2*A099760(n)`
-/

namespace A067273.P15664887223951128292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A099760 n : ℚ)

end

end A067273.P15664887223951128292

namespace A067273

/-- `n/2*A099760(n)` -/
def P15664887223951128292.Spec : Prop :=
  ∀ n, P15664887223951128292.a n = (A067273 n : ℚ)

end A067273

/-! ## A067273.P3846283198159679737

`a(n-1)*A005843(n)+n` with `a(0)=0`
-/

namespace A067273.P3846283198159679737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) * A005843 n + (n : ℤ)

end

end A067273.P3846283198159679737

namespace A067273

/-- `a(n-1)*A005843(n)+n` -/
def P3846283198159679737.Spec : Prop :=
  ∀ n, P3846283198159679737.a n = A067273 n

end A067273

/-! ## A067273.P18268784420635325393

`a(n-1)*A163300(n)+n` with `a(0)=0`
-/

namespace A067273.P18268784420635325393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) * A163300 n + (n : ℤ)

end

end A067273.P18268784420635325393

namespace A067273

/-- `a(n-1)*A163300(n)+n` -/
def P18268784420635325393.Spec : Prop :=
  ∀ n, P18268784420635325393.a n = A067273 n

end A067273

/-!
# A067274: Number of ordered integer pairs (b,c), with -n<=b<=n, -n<=c<=n, such that both roots of x^2+bx+c=0 are integers.

The programs for A067274, the canonical program `A067274.P13419636423225962887` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067274 has offset 0).

The definition of A067274 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067274.P13419636423225962887

`abs(2-A270383(n))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A067274

/-- `abs(2-A270383(n))` -/
def P13419636423225962887.Spec : Prop :=
  ∀ n, P13419636423225962887.a n = A067274 n

theorem P13419636423225962887.correct : P13419636423225962887.Spec := by
  intro n
  simp only [A067274]

end A067274

/-! ## A067274.P7827609791284985322

`A270383(n)+1-A122553(n)`
-/

namespace A067274.P7827609791284985322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270383 n + (1 - A122553 n)

end

end A067274.P7827609791284985322

namespace A067274

/-- `A270383(n)+1-A122553(n)` -/
def P7827609791284985322.Spec : Prop :=
  ∀ n, P7827609791284985322.a n = A067274 n

end A067274

/-! ## A067274.P15004236801965153857

`A270383(n)-2%A226355(n)`
-/

namespace A067274.P15004236801965153857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270383 n - Int.tmod 2 (A226355 n)

end

end A067274.P15004236801965153857

namespace A067274

/-- `A270383(n)-2%A226355(n)` -/
def P15004236801965153857.Spec : Prop :=
  ∀ n, P15004236801965153857.a n = A067274 n

end A067274

/-! ## A067274.P18406025911208107759

`A270383(n)-and(2, A009945(n))`
-/

namespace A067274.P18406025911208107759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270383 n - Int.land 2 (A009945 n)

end

end A067274.P18406025911208107759

namespace A067274

/-- `A270383(n)-and(2, A009945(n))` -/
def P18406025911208107759.Spec : Prop :=
  ∀ n, P18406025911208107759.a n = A067274 n

end A067274

/-! ## A067274.P12952664553827512342

`A270383(n)-A100484(n+1)%4`
-/

namespace A067274.P12952664553827512342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270383 n - Int.tmod (A100484 (n + 1)) 4

end

end A067274.P12952664553827512342

namespace A067274

/-- `A270383(n)-A100484(n+1)%4` -/
def P12952664553827512342.Spec : Prop :=
  ∀ n, P12952664553827512342.a n = A067274 n

end A067274

/-! ## A067274.P13936925778238899694

`A270383(n)-A132881(A000040(n+1))`
-/

namespace A067274.P13936925778238899694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270383 n - A132881 (A000040 (n + 1)).toNat

end

end A067274.P13936925778238899694

namespace A067274

/-- `A270383(n)-A132881(A000040(n+1))` -/
def P13936925778238899694.Spec : Prop :=
  ∀ n, P13936925778238899694.a n = A067274 n

end A067274

/-! ## A067274.P14438012573943935686

`A270383(n)-A237120(A001316(n))`
-/

namespace A067274.P14438012573943935686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270383 n - A237120 (A001316 n).toNat

end

end A067274.P14438012573943935686

namespace A067274

/-- `A270383(n)-A237120(A001316(n))` -/
def P14438012573943935686.Spec : Prop :=
  ∀ n, P14438012573943935686.a n = A067274 n

end A067274

/-! ## A067274.P9915777379849414482

`A171950(A270383(n))`
-/

namespace A067274.P9915777379849414482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171950 (A270383 n).toNat

end

end A067274.P9915777379849414482

namespace A067274

/-- `A171950(A270383(n))` -/
def P9915777379849414482.Spec : Prop :=
  ∀ n, P9915777379849414482.a n = A067274 n

end A067274

/-!
# A067275: Number of Fibonacci numbers A000045(k), k <= 10^n, which end in 4.

The programs for A067275, the canonical program `A067275.P9874333317425327769` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067275 has offset 0).

The definition of A067275 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A067275.P9874333317425327769

`10*a(n-1)-3` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A067275

/-- `10*a(n-1)-3` -/
def P9874333317425327769.Spec : Prop :=
  ∀ n, P9874333317425327769.a n = A067275 n

theorem P9874333317425327769.correct : P9874333317425327769.Spec := by
  intro n
  simp only [A067275]

end A067275

/-! ## A067275.P15402865351026715994

`∑[round(6*10^(n-2))]`
-/

namespace A067275.P15402865351026715994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (6 * (10 : ℚ) ^ ((n : ℤ) - 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067275.P15402865351026715994

namespace A067275

/-- `∑[round(6*10^(n-2))]` -/
def P15402865351026715994.Spec : Prop :=
  ∀ n, P15402865351026715994.a n = A067275 n

end A067275

/-! ## A067275.P8151316146567782159

`lcm(10, a(n-1))-3` with `a(0)=0, a(1)=1`
-/

namespace A067275.P8151316146567782159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (Int.lcm 10 (a (n - 1)) : ℤ) - 3

end

end A067275.P8151316146567782159

namespace A067275

/-- `lcm(10, a(n-1))-3` -/
def P8151316146567782159.Spec : Prop :=
  ∀ n, P8151316146567782159.a n = A067275 n

end A067275

/-! ## A067275.P13535331969236037422

`∑[A090019(A004273(n)-n)]-1`
-/

namespace A067275.P13535331969236037422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090019 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A067275.P13535331969236037422

namespace A067275

/-- `∑[A090019(A004273(n)-n)]-1` -/
def P13535331969236037422.Spec : Prop :=
  ∀ n, P13535331969236037422.a n = A067275 n

end A067275

/-! ## A067275.P17970946451138082560

`round(A093136(n)/3)`
-/

namespace A067275.P17970946451138082560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A093136 n : ℚ) / 3)

end

end A067275.P17970946451138082560

namespace A067275

/-- `round(A093136(n)/3)` -/
def P17970946451138082560.Spec : Prop :=
  ∀ n, P17970946451138082560.a n = A067275 n

end A067275

/-! ## A067275.P4918346698425454481

`floor(A133473(n)/5)`
-/

namespace A067275.P4918346698425454481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A133473 n : ℚ) / 5⌋

end

end A067275.P4918346698425454481

namespace A067275

/-- `floor(A133473(n)/5)` -/
def P4918346698425454481.Spec : Prop :=
  ∀ n, P4918346698425454481.a n = A067275 n

end A067275

/-! ## A067275.P10067666101130102547

`ceil(A002277(n)/5)`
-/

namespace A067275.P10067666101130102547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002277 n : ℚ) / 5⌉

end

end A067275.P10067666101130102547

namespace A067275

/-- `ceil(A002277(n)/5)` -/
def P10067666101130102547.Spec : Prop :=
  ∀ n, P10067666101130102547.a n = A067275 n

end A067275

/-! ## A067275.P16696928208427106124

`round(A093137(n)/5)`
-/

namespace A067275.P16696928208427106124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A093137 n : ℚ) / 5)

end

end A067275.P16696928208427106124

namespace A067275

/-- `round(A093137(n)/5)` -/
def P16696928208427106124.Spec : Prop :=
  ∀ n, P16696928208427106124.a n = A067275 n

end A067275

/-! ## A067275.P6020241241637881568

`ceil(A002280(n)/10)`
-/

namespace A067275.P6020241241637881568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002280 n : ℚ) / 10⌉

end

end A067275.P6020241241637881568

namespace A067275

/-- `ceil(A002280(n)/10)` -/
def P6020241241637881568.Spec : Prop :=
  ∀ n, P6020241241637881568.a n = A067275 n

end A067275

/-! ## A067275.P6042586134043299103

`ceil(A002283(n)/15)`
-/

namespace A067275.P6042586134043299103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002283 n : ℚ) / 15⌉

end

end A067275.P6042586134043299103

namespace A067275

/-- `ceil(A002283(n)/15)` -/
def P6042586134043299103.Spec : Prop :=
  ∀ n, P6042586134043299103.a n = A067275 n

end A067275

/-! ## A067275.P2448482486871394549

`round(((10^n-A007318(∑[n]))/3+1)/5)`
-/

namespace A067275.P2448482486871394549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((10 ^ n : ℤ) - A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 3 + 1) / 5)

end

end A067275.P2448482486871394549

namespace A067275

/-- `round(((10^n-A007318(∑[n]))/3+1)/5)` -/
def P2448482486871394549.Spec : Prop :=
  ∀ n, P2448482486871394549.a n = A067275 n

end A067275

/-! ## A067275.P5422189787636301823

`∑[A090019(n)]-A090019(n)`
-/

namespace A067275.P5422189787636301823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090019 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A090019 n

end

end A067275.P5422189787636301823

namespace A067275

/-- `∑[A090019(n)]-A090019(n)` -/
def P5422189787636301823.Spec : Prop :=
  ∀ n, P5422189787636301823.a n = A067275 n

end A067275

/-! ## A067275.P6658586747791341386

`∑[A090019(n)]%A093136(n)`
-/

namespace A067275.P6658586747791341386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090019 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A093136 n)

end

end A067275.P6658586747791341386

namespace A067275

/-- `∑[A090019(n)]%A093136(n)` -/
def P6658586747791341386.Spec : Prop :=
  ∀ n, P6658586747791341386.a n = A067275 n

end A067275

/-! ## A067275.P5091183037726525633

`(∑[A093138(n)]-A093136(n))/2`
-/

namespace A067275.P5091183037726525633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093138 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - A093136 n : ℤ) : ℚ) / 2

end

end A067275.P5091183037726525633

namespace A067275

/-- `(∑[A093138(n)]-A093136(n))/2` -/
def P5091183037726525633.Spec : Prop :=
  ∀ n, P5091183037726525633.a n = (A067275 n : ℚ)

end A067275

/-! ## A067275.P8709482101003991699

`round(A198970(n)/60)`
-/

namespace A067275.P8709482101003991699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A198970 n : ℚ) / 60)

end

end A067275.P8709482101003991699

namespace A067275

/-- `round(A198970(n)/60)` -/
def P8709482101003991699.Spec : Prop :=
  ∀ n, P8709482101003991699.a n = A067275 n

end A067275

/-! ## A067275.P18309231751106241857

`round(A198971(n)/75)`
-/

namespace A067275.P18309231751106241857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A198971 n : ℚ) / 75)

end

end A067275.P18309231751106241857

namespace A067275

/-- `round(A198971(n)/75)` -/
def P18309231751106241857.Spec : Prop :=
  ∀ n, P18309231751106241857.a n = A067275 n

end A067275

/-!
# A067278: a(n) = letters(n) + a(n-1); a(0) = 0.

The programs for A067278, there is no canonical definition to state claims against.
-/

/-! ## A067278.P12530678130472284359

`A381128(n+1)-(n+1)`
-/

namespace A067278.P12530678130472284359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381128 (n + 1) - (n + 1 : ℤ)

end

end A067278.P12530678130472284359

/-! ## A067278.P11941206574332458155

`A023443(A381128(n+1)-n)`
-/

namespace A067278.P11941206574332458155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A381128 (n + 1) - (n : ℤ)).toNat

end

end A067278.P11941206574332458155

/-! ## A067278.P8463676876478151566

`∑[A181672(A004277(n))]-1`
-/

namespace A067278.P8463676876478151566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181672 (A004277 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A067278.P8463676876478151566

/-! ## A067278.P17485626036170875722

`∑[A057427(n)*A181672(A004277(n))]`
-/

namespace A067278.P17485626036170875722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A181672 (A004277 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067278.P17485626036170875722

/-! ## A067278.P5767122980510032674

`∑[A178334(n)*A181672(A004277(n))]`
-/

namespace A067278.P5767122980510032674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A181672 (A004277 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067278.P5767122980510032674

/-!
# A067280: Number of terms in continued fraction for sqrt(n), excl. 2nd and higher periods.

The programs for A067280, there is no canonical definition to state claims against.
-/

/-! ## A067280.P9507433487346026764

`A003285(n+1)+1`
-/

namespace A067280.P9507433487346026764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1) + 1

end

end A067280.P9507433487346026764

/-! ## A067280.P6240127247064046396

`A097853(n+1)+Δ[A028391(n)]`
-/

namespace A067280.P6240127247064046396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097853 (n + 1) + (f1 (n + 1) - f1 n)

end

end A067280.P6240127247064046396

/-! ## A067280.P14783633232619044847

`A097853(n+1)+A049240(n+1)`
-/

namespace A067280.P14783633232619044847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097853 (n + 1) + A049240 (n + 1)

end

end A067280.P14783633232619044847

/-! ## A067280.P14356183635343917631

`A097853(n+1)+A275437(n)-1`
-/

namespace A067280.P14356183635343917631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097853 (n + 1) + (A275437 n - 1)

end

end A067280.P14356183635343917631

/-! ## A067280.P18178550351446672794

`A097853(n+1)%A034867(n)+1`
-/

namespace A067280.P18178550351446672794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097853 (n + 1)) (A034867 n) + 1

end

end A067280.P18178550351446672794

/-! ## A067280.P14092289752470752092

`A008624(4*A003285(Δ[n²]-n))`
-/

namespace A067280.P14092289752470752092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (4 * A003285 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat

end

end A067280.P14092289752470752092

/-! ## A067280.P12743456413509132005

`A008612(6*A003285(Δ[n²]-n))`
-/

namespace A067280.P12743456413509132005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (6 * A003285 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat

end

end A067280.P12743456413509132005

/-! ## A067280.P8246987448441041630

`A097853(n+1)+A068717(n+1)²`
-/

namespace A067280.P8246987448441041630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097853 (n + 1) + A068717 (n + 1) ^ 2

end

end A067280.P8246987448441041630

/-! ## A067280.P12176891876857574435

`A028832(n+1)+A028833(n+1)+1`
-/

namespace A067280.P12176891876857574435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028832 (n + 1) + (A028833 (n + 1) + 1)

end

end A067280.P12176891876857574435

/-!
# A067281: Number of permutations of {1,2,3,...,n} where the elements of n are considered indistinguishable if they differ by a power of 2 (for example 3, 12 and 24 are all considered equivalent).

The programs for A067281, there is no canonical definition to state claims against.
-/

/-! ## A067281.P2774657336914604927

`n/val(2*n, 2)*a(n-1)` with `a(0)=1`
-/

namespace A067281.P2774657336914604927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) / (SequenceMachineLib.valuation (2 * n) 2 : ℚ) * a (n - 1)

end

end A067281.P2774657336914604927

/-! ## A067281.P10853729687053746301

`n*a(n-1)/A001511(n)` with `a(0)=1`
-/

namespace A067281.P10853729687053746301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) * a (n - 1) / (A001511 n : ℚ)

end

end A067281.P10853729687053746301

/-! ## A067281.P1023906328540092441

`A000142(n)/∏[A136480(2*n)]`
-/

namespace A067281.P1023906328540092441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A067281.P1023906328540092441

/-! ## A067281.P4559682047373719062

`A302776(A003418(n)+A000142(n))`
-/

namespace A067281.P4559682047373719062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302776 (A003418 n + A000142 n).toNat

end

end A067281.P4559682047373719062

/-! ## A067281.P5920325945764807537

`gcd(A003418(n), A036038(A000110(n)))`
-/

namespace A067281.P5920325945764807537
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003418 n) (A036038 (A000110 n).toNat)

end

end A067281.P5920325945764807537

/-!
# A067283: Numbers n such that the number of divisors of n is floor(log(n)).

The programs for A067283, the canonical program `A067283.P1833396838010038772` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067283 has offset 1).

The definition of A067283 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1202 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067283.P7411858485824574170

`eq[floor(log(n+1)), A000005(n+1)]+1`
-/

namespace A067283.P7411858485824574170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (n + 1 : ℝ)⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A067283.P7411858485824574170

namespace A067283

/-- `eq[floor(log(n+1)), A000005(n+1)]+1` -/
def P7411858485824574170.Spec : Prop :=
  ∀ n, (P7411858485824574170.a n : ℤ) = A067283 (n + 1)

end A067283

/-! ## A067283.P6465479792969117384

`eq[A000005(n+1), A000195(n+1)]+1`
-/

namespace A067283.P6465479792969117384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A067283.P6465479792969117384

namespace A067283

/-- `eq[A000005(n+1), A000195(n+1)]+1` -/
def P6465479792969117384.Spec : Prop :=
  ∀ n, (P6465479792969117384.a n : ℤ) = A067283 (n + 1)

end A067283

/-! ## A067283.P1833396838010038772

`eq[A032741(n+1)+1, A000195(n+1)]+1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A067283

/-- `eq[A032741(n+1)+1, A000195(n+1)]+1` -/
def P1833396838010038772.Spec : Prop :=
  ∀ n, (P1833396838010038772.a n : ℤ) = A067283 (n + 1)

theorem P1833396838010038772.correct : P1833396838010038772.Spec := by
  intro n
  simp only [A067283, Nat.add_sub_cancel]

end A067283

/-! ## A067283.P1575667820312966226

`A020725(eq[A000005(n+1), A000195(n+1)])`
-/

namespace A067283.P1575667820312966226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A067283.P1575667820312966226

namespace A067283

/-- `A020725(eq[A000005(n+1), A000195(n+1)])` -/
def P1575667820312966226.Spec : Prop :=
  ∀ n, P1575667820312966226.a n = A067283 (n + 1)

end A067283

/-! ## A067283.P11165338115197699079

`A065475(eq[A000005(n+1), A000195(n+1)])`
-/

namespace A067283.P11165338115197699079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A067283.P11165338115197699079

namespace A067283

/-- `A065475(eq[A000005(n+1), A000195(n+1)])` -/
def P11165338115197699079.Spec : Prop :=
  ∀ n, P11165338115197699079.a n = A067283 (n + 1)

end A067283

/-!
# A067285: a(n) = smallest integer k such that k is not of the form m + reverse(m) for any m (cf. A067031) and A067030(n) occurs in the 'Reverse and Add' trajectory of k.

The programs for A067285, there is no canonical definition to state claims against.
-/

/-! ## A067285.P5755297978702343120

`A244568(A067030(n))`
-/

namespace A067285.P5755297978702343120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244568 (A067030 n).toNat

end

end A067285.P5755297978702343120

/-! ## A067285.P12068620513542690686

`A244568(lt[A244568(n), A028310(n)])`
-/

namespace A067285.P12068620513542690686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244568 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244568 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A067285.P12068620513542690686

/-! ## A067285.P10001209075521292360

`A244568(lt[A057427(n), A244569(n)])`
-/

namespace A067285.P10001209075521292360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244569 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244568 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A067285.P10001209075521292360

/-! ## A067285.P15782100320498173415

`A244568(lt[A244568(n), 1-A285718(n+1)+n])`
-/

namespace A067285.P15782100320498173415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244568 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A285718 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244568 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A067285.P15782100320498173415

/-! ## A067285.P4371485265717223390

`A244568(∪[A088169(n+1), A323190(n+1)])`
-/

namespace A067285.P4371485265717223390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323190 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244568 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A067285.P4371485265717223390

/-!
# A067286: a(n) = largest integer k such that k is not of the form m + reverse(m) for any m (cf. A067031) and A067030(n) occurs in the 'Reverse and Add' trajectory of k.

The programs for A067286, there is no canonical definition to state claims against.
-/

/-! ## A067286.P18334662356243908321

`A244568(A067034(n)%A078845(n))`
-/

namespace A067286.P18334662356243908321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244568 (Int.tmod (A067034 n) (A078845 n)).toNat

end

end A067286.P18334662356243908321

/-! ## A067286.P18097076627422114003

`A244568(A067034(n))+A033665(A332240(n+4))`
-/

namespace A067286.P18097076627422114003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244568 (A067034 n).toNat + A033665 (A332240 (n + 4)).toNat

end

end A067286.P18097076627422114003

/-! ## A067286.P5510702561658680728

`A244568(A067034(n))+A033665(A068062(n+1))`
-/

namespace A067286.P5510702561658680728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244568 (A067034 n).toNat + A033665 (A068062 (n + 1)).toNat

end

end A067286.P5510702561658680728

/-! ## A067286.P17113713405043433883

`A244568(A067034(n))%A088169(3*n+5)`
-/

namespace A067286.P17113713405043433883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244568 (A067034 n).toNat) (A088169 (3 * n + 5))

end

end A067286.P17113713405043433883

/-! ## A067286.P5219122405041419089

`A244568(A067034(n))+A033665(A088169(n+1))`
-/

namespace A067286.P5219122405041419089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244568 (A067034 n).toNat + A033665 (A088169 (n + 1)).toNat

end

end A067286.P5219122405041419089

/-!
# A067287: n sets a new record for the number of integers k such that k is not of the form m + reverse(m) for any m and n occurs in the 'Reverse and Add' trajectory of k (cf. A067284).

The programs for A067287, there is no canonical definition to state claims against.
-/

/-! ## A067287.P9586490638657652871

`11*A099396(A083334(n))`
-/

namespace A067287.P9586490638657652871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A099396 (A083334 n).toNat

end

end A067287.P9586490638657652871

/-! ## A067287.P1995047407673650038

`11*A033265(A165813(n))`
-/

namespace A067287.P1995047407673650038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A033265 (A165813 n).toNat

end

end A067287.P1995047407673650038

/-! ## A067287.P681575692466372452

`11*eq[1, A297519(A055972(n+2))]`
-/

namespace A067287.P681575692466372452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297519 (A055972 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067287.P681575692466372452

/-! ## A067287.P2313018187070835553

`eq[0, val(n+1, 2)%2]*A054320(A290236(n))`
-/

namespace A067287.P2313018187070835553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) * A054320 (A290236 n).toNat

end

end A067287.P2313018187070835553

/-!
# A067288: Records for the number of integers k such that k is not of the form m + reverse(m) for any m and for some n A067030(n) occurs in the 'Reverse and Add' trajectory of k (cf. A067284).

The programs for A067288, there is no canonical definition to state claims against.
-/

/-! ## A067288.P18200647345639422093

`record[A067284(n)]`
-/

namespace A067288.P18200647345639422093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067284 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067288.P18200647345639422093

/-!
# A067289: Numbers k such that the number of divisors of k is floor(prime(k)/k).

The programs for A067289, the canonical program `A067289.P994081153811343972` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067289 has offset 1).

The definition of A067289 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 440 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067289.P8954963597647948383

`eq[A000005(n+1), A038605(n+1)]+1`
-/

namespace A067289.P8954963597647948383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038605 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A067289.P8954963597647948383

namespace A067289

/-- `eq[A000005(n+1), A038605(n+1)]+1` -/
def P8954963597647948383.Spec : Prop :=
  ∀ n, (P8954963597647948383.a n : ℤ) = A067289 (n + 1)

end A067289

/-! ## A067289.P9522208394435426693

`A020725(eq[A000005(n+1), A038605(n+1)])`
-/

namespace A067289.P9522208394435426693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A067289.P9522208394435426693

namespace A067289

/-- `A020725(eq[A000005(n+1), A038605(n+1)])` -/
def P9522208394435426693.Spec : Prop :=
  ∀ n, P9522208394435426693.a n = A067289 (n + 1)

end A067289

/-! ## A067289.P11464107736585130515

`A065475(eq[A000005(n+1), A038605(n+1)])`
-/

namespace A067289.P11464107736585130515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A067289.P11464107736585130515

namespace A067289

/-- `A065475(eq[A000005(n+1), A038605(n+1)])` -/
def P11464107736585130515.Spec : Prop :=
  ∀ n, P11464107736585130515.a n = A067289 (n + 1)

end A067289

/-! ## A067289.P994081153811343972

`A020725(eq[A032741(n+1)+1, A038605(n+1)])`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A067289

/-- `A020725(eq[A032741(n+1)+1, A038605(n+1)])` -/
def P994081153811343972.Spec : Prop :=
  ∀ n, P994081153811343972.a n = A067289 (n + 1)

theorem P994081153811343972.correct : P994081153811343972.Spec := by
  intro n
  simp only [A067289, Nat.add_sub_cancel]

end A067289

/-! ## A067289.P17022662057930377714

`A065475(eq[A032741(n+1)+1, A038605(n+1)])`
-/

namespace A067289.P17022662057930377714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A067289.P17022662057930377714

namespace A067289

/-- `A065475(eq[A032741(n+1)+1, A038605(n+1)])` -/
def P17022662057930377714.Spec : Prop :=
  ∀ n, P17022662057930377714.a n = A067289 (n + 1)

end A067289

/-! ## A067289.P10673078303457994666

`A020725(eq[A038605(n+1)+1, A334954(n+1)])`
-/

namespace A067289.P10673078303457994666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038605 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A067289.P10673078303457994666

namespace A067289

/-- `A020725(eq[A038605(n+1)+1, A334954(n+1)])` -/
def P10673078303457994666.Spec : Prop :=
  ∀ n, P10673078303457994666.a n = A067289 (n + 1)

end A067289

/-! ## A067289.P3652542724677950693

`A065475(eq[A038605(n+1)+1, A334954(n+1)])`
-/

namespace A067289.P3652542724677950693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038605 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A067289.P3652542724677950693

namespace A067289

/-- `A065475(eq[A038605(n+1)+1, A334954(n+1)])` -/
def P3652542724677950693.Spec : Prop :=
  ∀ n, P3652542724677950693.a n = A067289 (n + 1)

end A067289

/-!
# A067290: Numbers n such that prime(n)

The programs for A067290, the canonical program `A067290.P124068687972599428` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067290 has offset 1).

The definition of A067290 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3427 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067290.P124068687972599428

`lt[A000040(n+1), A038040(n+1)]+1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A067290

/-- `lt[A000040(n+1), A038040(n+1)]+1` -/
def P124068687972599428.Spec : Prop :=
  ∀ n, (P124068687972599428.a n : ℤ) = A067290 (n + 1)

theorem P124068687972599428.correct : P124068687972599428.Spec := by
  intro n
  simp only [A067290, Nat.add_sub_cancel]

end A067290

/-! ## A067290.P16917474811464266050

`lt[A038605(n+1), A000005(n+1)]+1`
-/

namespace A067290.P16917474811464266050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038605 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A067290.P16917474811464266050

namespace A067290

/-- `lt[A038605(n+1), A000005(n+1)]+1` -/
def P16917474811464266050.Spec : Prop :=
  ∀ n, (P16917474811464266050.a n : ℤ) = A067290 (n + 1)

end A067290

/-! ## A067290.P8284358103975198768

`lt[A038605(n+1), A000005(A028310(n))]`
-/

namespace A067290.P8284358103975198768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038605 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A067290.P8284358103975198768

namespace A067290

/-- `lt[A038605(n+1), A000005(A028310(n))]` -/
def P8284358103975198768.Spec : Prop :=
  ∀ n, (P8284358103975198768.a n : ℤ) = A067290 (n + 1)

end A067290

/-! ## A067290.P11473884749407425371

`lt[A008578(n+1), A038040(A028310(n))]`
-/

namespace A067290.P11473884749407425371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A067290.P11473884749407425371

namespace A067290

/-- `lt[A008578(n+1), A038040(A028310(n))]` -/
def P11473884749407425371.Spec : Prop :=
  ∀ n, (P11473884749407425371.a n : ℤ) = A067290 (n + 1)

end A067290

/-! ## A067290.P1993700819096983215

`lt[A182986(n+1), n*A000005(A028310(n))]`
-/

namespace A067290.P1993700819096983215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000005 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A067290.P1993700819096983215

namespace A067290

/-- `lt[A182986(n+1), n*A000005(A028310(n))]` -/
def P1993700819096983215.Spec : Prop :=
  ∀ n, (P1993700819096983215.a n : ℤ) = A067290 (n + 1)

end A067290

/-! ## A067290.P16990864406414654469

`lt[record[A020639(n+2)], A038040(n+1)]+1`
-/

namespace A067290.P16990864406414654469
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n + 1

end

end A067290.P16990864406414654469

namespace A067290

/-- `lt[record[A020639(n+2)], A038040(n+1)]+1` -/
def P16990864406414654469.Spec : Prop :=
  ∀ n, (P16990864406414654469.a n : ℤ) = A067290 (n + 1)

end A067290

/-! ## A067290.P9614155316109471231

`lt[record[A014963(n+2)], A038040(n+1)]+1`
-/

namespace A067290.P9614155316109471231
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n + 1

end

end A067290.P9614155316109471231

namespace A067290

/-- `lt[record[A014963(n+2)], A038040(n+1)]+1` -/
def P9614155316109471231.Spec : Prop :=
  ∀ n, (P9614155316109471231.a n : ℤ) = A067290 (n + 1)

end A067290

/-! ## A067290.P1014007019656621482

`record[A233583(n+1)%A229253(A233583(n+1))]`
-/

namespace A067290.P1014007019656621482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233583 (n + 1)) (A229253 (A233583 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067290.P1014007019656621482

namespace A067290

/-- `record[A233583(n+1)%A229253(A233583(n+1))]` -/
def P1014007019656621482.Spec : Prop :=
  ∀ n, P1014007019656621482.a n = A067290 (n + 1)

end A067290

/-! ## A067290.P8136217729183127730

`lt[n², n*A038592(A032741(n))]`
-/

namespace A067290.P8136217729183127730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A038592 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A067290.P8136217729183127730

namespace A067290

/-- `lt[n², n*A038592(A032741(n))]` -/
def P8136217729183127730.Spec : Prop :=
  ∀ n, (P8136217729183127730.a n : ℤ) = A067290 (n + 1)

end A067290

/-! ## A067290.P10748862076512733603

`lt[n+1, A038592(A032741(n+1))]+1`
-/

namespace A067290.P10748862076512733603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038592 (A032741 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A067290.P10748862076512733603

namespace A067290

/-- `lt[n+1, A038592(A032741(n+1))]+1` -/
def P10748862076512733603.Spec : Prop :=
  ∀ n, (P10748862076512733603.a n : ℤ) = A067290 (n + 1)

end A067290

/-! ## A067290.P17452573910605069674

`lt[A233583(n+1), A038592(A032741(n))]`
-/

namespace A067290.P17452573910605069674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038592 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A067290.P17452573910605069674

namespace A067290

/-- `lt[A233583(n+1), A038592(A032741(n))]` -/
def P17452573910605069674.Spec : Prop :=
  ∀ n, (P17452573910605069674.a n : ℤ) = A067290 (n + 1)

end A067290

/-!
# A067291: Numbers n such that prime(n)>n*tau(n) where tau(n) is the number of divisors of n.

The programs for A067291, the canonical program `A067291.P5863031356185478968` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067291 has offset 1).

The definition of A067291 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6573 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067291.P3891266293724877444

`eq[char[A067290(n+1)], A000007(n)]`
-/

namespace A067291.P3891266293724877444
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067290 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A067291.P3891266293724877444

namespace A067291

/-- `eq[char[A067290(n+1)], A000007(n)]` -/
def P3891266293724877444.Spec : Prop :=
  ∀ n, (P3891266293724877444.a n : ℤ) = A067291 (n + 1)

end A067291

/-! ## A067291.P13798581817170208406

`eq[char[A067290(n+1)], A000038(n)]`
-/

namespace A067291.P13798581817170208406
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067290 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A067291.P13798581817170208406

namespace A067291

/-- `eq[char[A067290(n+1)], A000038(n)]` -/
def P13798581817170208406.Spec : Prop :=
  ∀ n, (P13798581817170208406.a n : ℤ) = A067291 (n + 1)

end A067291

/-! ## A067291.P5863031356185478968

`lt[A038040(n+1), A000040(n+1)]+1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A067291

/-- `lt[A038040(n+1), A000040(n+1)]+1` -/
def P5863031356185478968.Spec : Prop :=
  ∀ n, (P5863031356185478968.a n : ℤ) = A067291 (n + 1)

theorem P5863031356185478968.correct : P5863031356185478968.Spec := by
  intro n
  simp only [A067291, Nat.add_sub_cancel]

end A067291

/-! ## A067291.P6490480216766948049

`lt[A038040(A028310(n)), A008578(n+1)]`
-/

namespace A067291.P6490480216766948049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A067291.P6490480216766948049

namespace A067291

/-- `lt[A038040(A028310(n)), A008578(n+1)]` -/
def P6490480216766948049.Spec : Prop :=
  ∀ n, (P6490480216766948049.a n : ℤ) = A067291 (n + 1)

end A067291

/-! ## A067291.P14154664664469861645

`lt[n*A000005(A028310(n)), A182986(n+1)]`
-/

namespace A067291.P14154664664469861645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000005 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A067291.P14154664664469861645

namespace A067291

/-- `lt[n*A000005(A028310(n)), A182986(n+1)]` -/
def P14154664664469861645.Spec : Prop :=
  ∀ n, (P14154664664469861645.a n : ℤ) = A067291 (n + 1)

end A067291

/-! ## A067291.P14519501898064175870

`lt[A038592(A032741(n)), n+1]`
-/

namespace A067291.P14519501898064175870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038592 (A032741 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A067291.P14519501898064175870

namespace A067291

/-- `lt[A038592(A032741(n)), n+1]` -/
def P14519501898064175870.Spec : Prop :=
  ∀ n, (P14519501898064175870.a n : ℤ) = A067291 (n + 1)

end A067291

/-! ## A067291.P17596846404230470572

`lt[1, A014681(n)/A038592(A032741(n))]`
-/

namespace A067291.P17596846404230470572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014681 n : ℚ) / (A038592 (A032741 n).toNat : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A067291.P17596846404230470572

namespace A067291

/-- `lt[1, A014681(n)/A038592(A032741(n))]` -/
def P17596846404230470572.Spec : Prop :=
  ∀ n, (P17596846404230470572.a n : ℤ) = A067291 (n + 1)

end A067291

/-! ## A067291.P1630149865547505802

`lt[A003279(A032741(n)), A003278(n+1)]`
-/

namespace A067291.P1630149865547505802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003279 (A032741 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003278 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A067291.P1630149865547505802

namespace A067291

/-- `lt[A003279(A032741(n)), A003278(n+1)]` -/
def P1630149865547505802.Spec : Prop :=
  ∀ n, (P1630149865547505802.a n : ℤ) = A067291 (n + 1)

end A067291

/-!
# A067292: a(n) = prime(n)-n*tau(n) where tau(n) is the number of divisors of n.

The programs for A067292, the canonical program `A067292.P16682329909841690686` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067292 has offset 1).

The definition of A067292 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067292.P3681466508212809224

`∑{d}[n+1, A007444(#)-(n+1)]`
-/

namespace A067292.P3681466508212809224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A007444 d - (n + 1 : ℤ))

end

end A067292.P3681466508212809224

namespace A067292

/-- `∑{d}[n+1, A007444(#)-(n+1)]` -/
def P3681466508212809224.Spec : Prop :=
  ∀ n, P3681466508212809224.a n = A067292 (n + 1)

end A067292

/-! ## A067292.P16682329909841690686

`A000040(n+1)-∑{d}[n+1, lcm(#, n+1)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A067292

/-- `A000040(n+1)-∑{d}[n+1, lcm(#, n+1)]` -/
def P16682329909841690686.Spec : Prop :=
  ∀ n, P16682329909841690686.a n = A067292 (n + 1)

theorem P16682329909841690686.correct : P16682329909841690686.Spec := by
  intro n
  simp only [A067292, Nat.add_sub_cancel]

end A067292

/-! ## A067292.P14677659380658725414

`A000040(n+1)-A038040(n+1)`
-/

namespace A067292.P14677659380658725414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A038040 (n + 1)

end

end A067292.P14677659380658725414

namespace A067292

/-- `A000040(n+1)-A038040(n+1)` -/
def P14677659380658725414.Spec : Prop :=
  ∀ n, P14677659380658725414.a n = A067292 (n + 1)

end A067292

/-! ## A067292.P2378365033744585793

`A008864(n+1)-A083271(n+1)`
-/

namespace A067292.P2378365033744585793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - A083271 (n + 1)

end

end A067292.P2378365033744585793

namespace A067292

/-- `A008864(n+1)-A083271(n+1)` -/
def P2378365033744585793.Spec : Prop :=
  ∀ n, P2378365033744585793.a n = A067292 (n + 1)

end A067292

/-! ## A067292.P12393696067469470184

`A001248(n+1)-(A038040(n+1)+A036689(n+1))`
-/

namespace A067292.P12393696067469470184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) - (A038040 (n + 1) + A036689 (n + 1))

end

end A067292.P12393696067469470184

namespace A067292

/-- `A001248(n+1)-(A038040(n+1)+A036689(n+1))` -/
def P12393696067469470184.Spec : Prop :=
  ∀ n, P12393696067469470184.a n = A067292 (n + 1)

end A067292

/-! ## A067292.P17164283528595447047

`A008578(n+2)-A038040(n+1)`
-/

namespace A067292.P17164283528595447047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) - A038040 (n + 1)

end

end A067292.P17164283528595447047

namespace A067292

/-- `A008578(n+2)-A038040(n+1)` -/
def P17164283528595447047.Spec : Prop :=
  ∀ n, P17164283528595447047.a n = A067292 (n + 1)

end A067292

/-! ## A067292.P662994080173228670

`A008578(n+2)-(A094472(n+1)+A065387(n+1))`
-/

namespace A067292.P662994080173228670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) - (A094472 (n + 1) + A065387 (n + 1))

end

end A067292.P662994080173228670

namespace A067292

/-- `A008578(n+2)-(A094472(n+1)+A065387(n+1))` -/
def P662994080173228670.Spec : Prop :=
  ∀ n, P662994080173228670.a n = A067292 (n + 1)

end A067292

/-! ## A067292.P13611842435637881745

`p?[abs(xor(n, -2))]-(n+1)*∏{e}[n+1, #+1]`
-/

namespace A067292.P13611842435637881745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - (((n + 1) * (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)) : ℕ) : ℤ)

end

end A067292.P13611842435637881745

namespace A067292

/-- `p?[abs(xor(n, -2))]-(n+1)*∏{e}[n+1, #+1]` -/
def P13611842435637881745.Spec : Prop :=
  ∀ n, P13611842435637881745.a n = A067292 (n + 1)

end A067292

/-! ## A067292.P394653707402279430

`p?[xor(1, n)+1]-(n+1)*∏{e}[n+1, #+1]`
-/

namespace A067292.P394653707402279430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - (((n + 1) * (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)) : ℕ) : ℤ)

end

end A067292.P394653707402279430

namespace A067292

/-- `p?[xor(1, n)+1]-(n+1)*∏{e}[n+1, #+1]` -/
def P394653707402279430.Spec : Prop :=
  ∀ n, P394653707402279430.a n = A067292 (n + 1)

end A067292

/-! ## A067292.P5493849607776082609

`p?[xor(1, n)+1]-(n+1)*∑{d}[n+1, gcd(n, #)]`
-/

namespace A067292.P5493849607776082609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - (((n + 1) * (∑ d ∈ Nat.divisors (f2 n), Nat.gcd n d) : ℕ) : ℤ)

end

end A067292.P5493849607776082609

namespace A067292

/-- `p?[xor(1, n)+1]-(n+1)*∑{d}[n+1, gcd(n, #)]` -/
def P5493849607776082609.Spec : Prop :=
  ∀ n, P5493849607776082609.a n = A067292 (n + 1)

end A067292

/-! ## A067292.P8373741882012381694

`p?[xor(1, n)+1]-(n+1)*∑{d}[n+1, ceil(1/#)]`
-/

namespace A067292.P8373741882012381694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - (n + 1 : ℤ) * (∑ d ∈ Nat.divisors (f2 n), ⌈1 / (d : ℚ)⌉)

end

end A067292.P8373741882012381694

namespace A067292

/-- `p?[xor(1, n)+1]-(n+1)*∑{d}[n+1, ceil(1/#)]` -/
def P8373741882012381694.Spec : Prop :=
  ∀ n, P8373741882012381694.a n = A067292 (n + 1)

end A067292

/-! ## A067292.P17181957146516287355

`p?[xor(1, n)+1]-(n+1)*∏{p}[n+1, val(n+1, #)+1]`
-/

namespace A067292.P17181957146516287355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - (((n + 1) * (∏ p ∈ Nat.primeFactors (f2 n), (SequenceMachineLib.valuation (n + 1) p + 1)) : ℕ) : ℤ)

end

end A067292.P17181957146516287355

namespace A067292

/-- `p?[xor(1, n)+1]-(n+1)*∏{p}[n+1, val(n+1, #)+1]` -/
def P17181957146516287355.Spec : Prop :=
  ∀ n, P17181957146516287355.a n = A067292 (n + 1)

end A067292

/-! ## A067292.P4896039292487649062

`p?[xor(1, n)+1]-(n+1)*A000005(n+1)`
-/

namespace A067292.P4896039292487649062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - (n + 1 : ℤ) * A000005 (n + 1)

end

end A067292.P4896039292487649062

namespace A067292

/-- `p?[xor(1, n)+1]-(n+1)*A000005(n+1)` -/
def P4896039292487649062.Spec : Prop :=
  ∀ n, P4896039292487649062.a n = A067292 (n + 1)

end A067292

/-! ## A067292.P11099787250240610168

`A000040(n+1)-A394346(n+1)/A007956(n+1)`
-/

namespace A067292.P11099787250240610168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) - (A394346 (n + 1) : ℚ) / (A007956 (n + 1) : ℚ)

end

end A067292.P11099787250240610168

namespace A067292

/-- `A000040(n+1)-A394346(n+1)/A007956(n+1)` -/
def P11099787250240610168.Spec : Prop :=
  ∀ n, P11099787250240610168.a n = (A067292 (n + 1) : ℚ)

end A067292

/-!
# A067293: Numbers k such that prime(k+1)-(k+1)*tau(k+1) = prime(k)-k*tau(k) where tau(k) = A000005(k) is the number of divisors of k.

The programs for A067293, the canonical program `A067293.P1416337670145948277` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067293 has offset 1).

The definition of A067293 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 884 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067293.P1416337670145948277

`∩[A005237(n+1), A068526(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A067293

/-- `∩[A005237(n+1), A068526(n+1)]` -/
def P1416337670145948277.Spec : Prop :=
  ∀ n, (P1416337670145948277.a n : ℤ) = A067293 (n + 1)

theorem P1416337670145948277.correct : P1416337670145948277.Spec := by
  intro n
  simp only [A067293, Nat.add_sub_cancel]

end A067293

/-! ## A067293.P2564207193531914784

`filter[A068526(n+1), A130638(#)]`
-/

namespace A067293.P2564207193531914784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A130638 (f1 j).toNat = 1) n)

end

end A067293.P2564207193531914784

namespace A067293

/-- `filter[A068526(n+1), A130638(#)]` -/
def P2564207193531914784.Spec : Prop :=
  ∀ n, P2564207193531914784.a n = A067293 (n + 1)

end A067293

/-! ## A067293.P6900001785107585427

`∩[A068526(n+1), A140578(n+1)]`
-/

namespace A067293.P6900001785107585427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068526 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067293.P6900001785107585427

namespace A067293

/-- `∩[A068526(n+1), A140578(n+1)]` -/
def P6900001785107585427.Spec : Prop :=
  ∀ n, (P6900001785107585427.a n : ℤ) = A067293 (n + 1)

end A067293

/-!
# A067294: Third column of triangle A028364.

The programs for A067294, the canonical program `A067294.P8664796393436630874` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067294 has offset 0).

The definition of A067294 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067294.P15139899621606459878

`A071724(n+1)+abs(Δ[-(4-6/(n+1))*a(n-1)])` with `a(0)=2`
-/

namespace A067294.P15139899621606459878
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2] fun n f1 =>
  -((4 - 6 / (n + 1 : ℚ)) * f1 (n - 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071724 (n + 1) : ℚ) + |f1 (n + 1) - f1 n|

end

end A067294.P15139899621606459878

namespace A067294

/-- `A071724(n+1)+abs(Δ[-(4-6/(n+1))*a(n-1)])` -/
def P15139899621606459878.Spec : Prop :=
  ∀ n, P15139899621606459878.a n = (A067294 n : ℚ)

end A067294

/-! ## A067294.P8664796393436630874

`A038629(n)+A000108(n+2)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A067294

/-- `A038629(n)+A000108(n+2)` -/
def P8664796393436630874.Spec : Prop :=
  ∀ n, P8664796393436630874.a n = A067294 n

theorem P8664796393436630874.correct : P8664796393436630874.Spec := by
  intro n
  simp only [A067294]

end A067294

/-! ## A067294.P2924924260124915438

`A376161(n)+A220902(n+2)`
-/

namespace A067294.P2924924260124915438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376161 n + A220902 (n + 2)

end

end A067294.P2924924260124915438

namespace A067294

/-- `A376161(n)+A220902(n+2)` -/
def P2924924260124915438.Spec : Prop :=
  ∀ n, P2924924260124915438.a n = A067294 n

end A067294

/-! ## A067294.P9583853028968678067

`A005807(n+1)-A002420(n+1)`
-/

namespace A067294.P9583853028968678067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005807 (n + 1) - A002420 (n + 1)

end

end A067294.P9583853028968678067

namespace A067294

/-- `A005807(n+1)-A002420(n+1)` -/
def P9583853028968678067.Spec : Prop :=
  ∀ n, P9583853028968678067.a n = A067294 n

end A067294

/-! ## A067294.P9038171004593541238

`A005807(n+1)+2*A000108(n)`
-/

namespace A067294.P9038171004593541238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005807 (n + 1) + 2 * A000108 n

end

end A067294.P9038171004593541238

namespace A067294

/-- `A005807(n+1)+2*A000108(n)` -/
def P9038171004593541238.Spec : Prop :=
  ∀ n, P9038171004593541238.a n = A067294 n

end A067294

/-! ## A067294.P8365141186019378680

`2*A376161(n)-A120009(n+1)`
-/

namespace A067294.P8365141186019378680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A376161 n - A120009 (n + 1)

end

end A067294.P8365141186019378680

namespace A067294

/-- `2*A376161(n)-A120009(n+1)` -/
def P8365141186019378680.Spec : Prop :=
  ∀ n, P8365141186019378680.a n = A067294 n

end A067294

/-! ## A067294.P17019877492209723413

`A005807(n+1)+2*A120588(n+1)`
-/

namespace A067294.P17019877492209723413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005807 (n + 1) + 2 * A120588 (n + 1)

end

end A067294.P17019877492209723413

namespace A067294

/-- `A005807(n+1)+2*A120588(n+1)` -/
def P17019877492209723413.Spec : Prop :=
  ∀ n, P17019877492209723413.a n = A067294 n

end A067294

/-! ## A067294.P7107681627374825598

`A120009(n+1)+2*A220902(n+2)`
-/

namespace A067294.P7107681627374825598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120009 (n + 1) + 2 * A220902 (n + 2)

end

end A067294.P7107681627374825598

namespace A067294

/-- `A120009(n+1)+2*A220902(n+2)` -/
def P7107681627374825598.Spec : Prop :=
  ∀ n, P7107681627374825598.a n = A067294 n

end A067294

/-! ## A067294.P3676398660672944985

`A005807(n+1)+2*A089408(2*n+1)`
-/

namespace A067294.P3676398660672944985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005807 (n + 1) + 2 * A089408 (2 * n + 1)

end

end A067294.P3676398660672944985

namespace A067294

/-- `A005807(n+1)+2*A089408(2*n+1)` -/
def P3676398660672944985.Spec : Prop :=
  ∀ n, P3676398660672944985.a n = A067294 n

end A067294

/-! ## A067294.P12711056752795969597

`A026008(2*n+1)+2*A059348(2*(n+1))`
-/

namespace A067294.P12711056752795969597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026008 (2 * n + 1) + 2 * A059348 (2 * (n + 1))

end

end A067294.P12711056752795969597

namespace A067294

/-- `A026008(2*n+1)+2*A059348(2*(n+1))` -/
def P12711056752795969597.Spec : Prop :=
  ∀ n, P12711056752795969597.a n = A067294 n

end A067294

/-! ## A067294.P9097985716580920077

`A005807(n+2)-A382668(n+2)`
-/

namespace A067294.P9097985716580920077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005807 (n + 2) - A382668 (n + 2)

end

end A067294.P9097985716580920077

namespace A067294

/-- `A005807(n+2)-A382668(n+2)` -/
def P9097985716580920077.Spec : Prop :=
  ∀ n, P9097985716580920077.a n = A067294 n

end A067294

/-! ## A067294.P14857832115176659464

`A028378(∑[n+1]+3)`
-/

namespace A067294.P14857832115176659464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028378 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A067294.P14857832115176659464

namespace A067294

/-- `A028378(∑[n+1]+3)` -/
def P14857832115176659464.Spec : Prop :=
  ∀ n, P14857832115176659464.a n = A067294 n

end A067294

/-! ## A067294.P4906662897167784658

`A067323(∑[n+3])`
-/

namespace A067294.P4906662897167784658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067323 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A067294.P4906662897167784658

namespace A067294

/-- `A067323(∑[n+3])` -/
def P4906662897167784658.Spec : Prop :=
  ∀ n, P4906662897167784658.a n = A067294 n

end A067294

/-! ## A067294.P645109007362212163

`A028364(∑[n+2]+3)`
-/

namespace A067294.P645109007362212163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028364 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A067294.P645109007362212163

namespace A067294

/-- `A028364(∑[n+2]+3)` -/
def P645109007362212163.Spec : Prop :=
  ∀ n, P645109007362212163.a n = A067294 n

end A067294

/-! ## A067294.P16802228370469826824

`A028376(∑[n+3]+6)`
-/

namespace A067294.P16802228370469826824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028376 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A067294.P16802228370469826824

namespace A067294

/-- `A028376(∑[n+3]+6)` -/
def P16802228370469826824.Spec : Prop :=
  ∀ n, P16802228370469826824.a n = A067294 n

end A067294

/-!
# A067295: Fourth column of triangle A028364.

The programs for A067295, there is no canonical definition to state claims against.
-/

/-! ## A067295.P3701703082719187874

`A028378(∑[n+2]+5)`
-/

namespace A067295.P3701703082719187874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028378 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A067295.P3701703082719187874

/-! ## A067295.P3383306162607892928

`A067323(∑[n+4]+2)`
-/

namespace A067295.P3383306162607892928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067323 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A067295.P3383306162607892928

/-! ## A067295.P11744166667985371009

`A028364(∑[n+3]+6)`
-/

namespace A067295.P11744166667985371009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028364 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A067295.P11744166667985371009

/-! ## A067295.P16349132747667254770

`A028376(A155212(n)+12)`
-/

namespace A067295.P16349132747667254770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028376 (A155212 n + 12).toNat

end

end A067295.P16349132747667254770

/-! ## A067295.P8876604202321173965

`A028376(A056000(n)+14)`
-/

namespace A067295.P8876604202321173965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028376 (A056000 n + 14).toNat

end

end A067295.P8876604202321173965

/-! ## A067295.P14878201320771399038

`A028376(eq[4, A002262(n)])`
-/

namespace A067295.P14878201320771399038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028376 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A067295.P14878201320771399038

/-!
# A067296: Fifth column of triangle A028364.

The programs for A067296, there is no canonical definition to state claims against.
-/

/-! ## A067296.P17207231999461202173

`A028378(∑[n+2]+n+9)`
-/

namespace A067296.P17207231999461202173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028378 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 9))

end

end A067296.P17207231999461202173

/-! ## A067296.P630358836285674643

`A067323(∑[n+5]+5)`
-/

namespace A067296.P630358836285674643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067323 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A067296.P630358836285674643

/-! ## A067296.P16206930962857406120

`A028364(C(n+5, 2)+4)`
-/

namespace A067296.P16206930962857406120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028364 (Nat.choose (n + 5) 2 + 4)

end

end A067296.P16206930962857406120

/-! ## A067296.P4140443407736416032

`A028364(A145018(n+5))`
-/

namespace A067296.P4140443407736416032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028364 (A145018 (n + 5)).toNat

end

end A067296.P4140443407736416032

/-! ## A067296.P14918381310840123769

`A028364(A155212(n)+12)`
-/

namespace A067296.P14918381310840123769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028364 (A155212 n + 12).toNat

end

end A067296.P14918381310840123769

/-!
# A067297: Convolution of C(2,2; n) := A064340(n) (generalized Catalan numbers) with itself.

The programs for A067297, there is no canonical definition to state claims against.
-/

/-! ## A067297.P11688833381350718198

`A067304(∑[n])`
-/

namespace A067297.P11688833381350718198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067304 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A067297.P11688833381350718198

/-! ## A067297.P8846902981120883583

`record[A067304(n)]`
-/

namespace A067297.P8846902981120883583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067304 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067297.P8846902981120883583

/-! ## A067297.P7571956043362263936

`A067298(∑[n]+n)`
-/

namespace A067297.P7571956043362263936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067298 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A067297.P7571956043362263936

/-! ## A067297.P16012952052859595478

`2/(n+2)*A067302(n)`
-/

namespace A067297.P16012952052859595478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 2 : ℚ) * (A067302 n : ℚ)

end

end A067297.P16012952052859595478

/-! ## A067297.P1126058630535679393

`∪[2*A067321(n), A067320(n)]`
-/

namespace A067297.P1126058630535679393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A067321 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067320 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A067297.P1126058630535679393

/-!
# A067298: Generalized Catalan triangle, based on C(2,2; n) = A064340(n).

The programs for A067298, there is no canonical definition to state claims against.
-/

/-! ## A067298.P15427130790860467909

`A067304(∑[2*n]%comp[∑[n]])`
-/

namespace A067298.P15427130790860467909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067304 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A067298.P15427130790860467909

/-! ## A067298.P1598246948877856399

`A067304(∑[char[∑[n]]]²-(n+1))`
-/

namespace A067298.P1598246948877856399
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067304 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A067298.P1598246948877856399

/-!
# A067299: Second column of triangle A067298.

The programs for A067299, there is no canonical definition to state claims against.
-/

/-! ## A067299.P230055179944286515

`A067298(∑[n+1]+1)`
-/

namespace A067299.P230055179944286515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067298 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A067299.P230055179944286515

/-! ## A067299.P4910714325387867202

`A067304(∑[n+1]+n)`
-/

namespace A067299.P4910714325387867202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067304 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A067299.P4910714325387867202

/-! ## A067299.P14500898102673509574

`A064340(n)+record[A067328(n)]`
-/

namespace A067299.P14500898102673509574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067328 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064340 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067299.P14500898102673509574

/-! ## A067299.P17422388983871385372

`A064340(n+1)+A064340(n)`
-/

namespace A067299.P17422388983871385372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064340 (n + 1) + A064340 n

end

end A067299.P17422388983871385372

/-! ## A067299.P14921663670712598546

`A067327(∑[n])+record[A067328(n)]`
-/

namespace A067299.P14921663670712598546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067328 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067327 (∑ j ∈ Finset.range (n + 1), f1 j) + f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A067299.P14921663670712598546

