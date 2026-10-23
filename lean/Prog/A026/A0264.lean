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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
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
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C009
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
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
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
# A026400: For n >= 1, n n's take places at stage n: the first n takes the least untaken place (l.u.p.) and for 2<=k<=n, the k-th n takes the l.u.p. at least (k-1)*n places past the place of the first n.

The programs for A026400, there is no canonical definition to state claims against.
-/

/-! ## A026400.P9663786714110739454

`A026409(A180004(n+1)%A189564(n+3))`
-/

namespace A026400.P9663786714110739454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026409 (Int.tmod (A180004 (n + 1)) (A189564 (n + 3))).toNat

end

end A026400.P9663786714110739454

/-! ## A026400.P1513279092622847304

`A026409(n+1)-A325678(A243966(n))`
-/

namespace A026400.P1513279092622847304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026409 (n + 1) - A325678 (A243966 n).toNat

end

end A026400.P1513279092622847304

/-! ## A026400.P14171050330932012090

`A026409(n+1)/A005361(A006720(n))`
-/

namespace A026400.P14171050330932012090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026409 (n + 1) : ℚ) / (A005361 (A006720 n).toNat : ℚ)

end

end A026400.P14171050330932012090

/-! ## A026400.P8356599378805465011

`A026409(n+1)/A097876(A172288(n))`
-/

namespace A026400.P8356599378805465011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026409 (n + 1) : ℚ) / (A097876 (A172288 n).toNat : ℚ)

end

end A026400.P8356599378805465011

/-! ## A026400.P11929456543232896427

`gcd(A026409(n+1), A079079(A000716(n)))`
-/

namespace A026400.P11929456543232896427
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A026409 (n + 1)) (A079079 (A000716 n).toNat)

end

end A026400.P11929456543232896427

/-!
# A026401: Position of the first n in A026400.

The programs for A026401, there is no canonical definition to state claims against.
-/

/-! ## A026401.P14175633505007208137

`A026398(A028310(n))+(n+2)%(n+1)`
-/

namespace A026401.P14175633505007208137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026398 (A028310 n).toNat + (((n + 2) % (n + 1) : ℕ) : ℤ)

end

end A026401.P14175633505007208137

/-! ## A026401.P13415073756345450821

`A057427(n)+A026398(A028310(n))`
-/

namespace A026401.P13415073756345450821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A026398 (A028310 n).toNat

end

end A026401.P13415073756345450821

/-! ## A026401.P2268956679250865666

`A026398(A028310(n))-A057428(n)`
-/

namespace A026401.P2268956679250865666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026398 (A028310 n).toNat - A057428 n

end

end A026401.P2268956679250865666

/-! ## A026401.P12099322519715580891

`A026398(A028310(n))%A000124(n)+1`
-/

namespace A026401.P12099322519715580891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026398 (A028310 n).toNat) (A000124 n) + 1

end

end A026401.P12099322519715580891

/-! ## A026401.P3517559730473993691

`A026398(A028310(n))+char[A116966(n)]`
-/

namespace A026401.P3517559730473993691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116966 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026398 (A028310 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A026401.P3517559730473993691

/-! ## A026401.P14236818657047012651

`A026403(n+1)-∑[2*n]`
-/

namespace A026401.P14236818657047012651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026403 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A026401.P14236818657047012651

/-! ## A026401.P13388165665711604187

`A026398(A028310(n))+A002828(n²)`
-/

namespace A026401.P13388165665711604187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026398 (A028310 n).toNat + A002828 (n ^ 2)

end

end A026401.P13388165665711604187

/-!
# A026402: Position of the second n in A026400.

The programs for A026402, there is no canonical definition to state claims against.
-/

/-! ## A026402.P4661089639601849326

`A096231(n)+p?[A324895(n)]`
-/

namespace A026402.P4661089639601849326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324895 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096231 n + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A026402.P4661089639601849326

/-!
# A026403: a(n) = position of the n-th n in A026400.

The programs for A026403, there is no canonical definition to state claims against.
-/

/-! ## A026403.P4466329087810147899

`A026401(n+1)+∑[2*n]`
-/

namespace A026403.P4466329087810147899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026401 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A026403.P4466329087810147899

/-! ## A026403.P13076729192701603377

`A002378(n)+A026401(n+1)`
-/

namespace A026403.P13076729192701603377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n + A026401 (n + 1)

end

end A026403.P13076729192701603377

/-! ## A026403.P979953208837829202

`A026401(n+1)+A000290(n)+n`
-/

namespace A026403.P979953208837829202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026401 (n + 1) + A000290 n + (n : ℤ)

end

end A026403.P979953208837829202

/-! ## A026403.P8795842851540900021

`A000217(n)+A026401(n+1)+A000217(n)`
-/

namespace A026403.P8795842851540900021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + (A026401 (n + 1) + A000217 n)

end

end A026403.P8795842851540900021

/-! ## A026403.P3174420671361924959

`A000027(A026401(n+1)+n²+n)`
-/

namespace A026403.P3174420671361924959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A026401 (n + 1) + (n ^ 2 + n : ℤ)).toNat

end

end A026403.P3174420671361924959

/-! ## A026403.P3266378853989259339

`A061885(∑[n])+A026401(n+1)`
-/

namespace A026403.P3266378853989259339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061885 (∑ j ∈ Finset.range (n + 1), f1 j) + A026401 (n + 1)

end

end A026403.P3266378853989259339

/-! ## A026403.P10689002119984953796

`A028310(A026401(n+1)+n²+n)`
-/

namespace A026403.P10689002119984953796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A026401 (n + 1) + (n ^ 2 + n : ℤ)).toNat

end

end A026403.P10689002119984953796

/-!
# A026405: a(n) = greatest integer not found after first n in A026400.

The programs for A026405, there is no canonical definition to state claims against.
-/

/-! ## A026405.P12899150613662204616

`A034887(A102487(n+2))%A141214(n)`
-/

namespace A026405.P12899150613662204616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034887 (A102487 (n + 2)).toNat) (A141214 n)

end

end A026405.P12899150613662204616

/-! ## A026405.P16151939508228899429

`A098294(A005206(A151660(n)+n))`
-/

namespace A026405.P16151939508228899429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098294 (A005206 (A151660 n + (n : ℤ)).toNat).toNat

end

end A026405.P16151939508228899429

/-! ## A026405.P11924872511011830013

`A098294(or(A005206(n), A151660(n)))`
-/

namespace A026405.P11924872511011830013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098294 (Int.lor (A005206 n) (A151660 n)).toNat

end

end A026405.P11924872511011830013

/-! ## A026405.P3614121705982082984

`A098294(xor(A005206(n), A151660(n)))`
-/

namespace A026405.P3614121705982082984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098294 (Int.xor (A005206 n) (A151660 n)).toNat

end

end A026405.P3614121705982082984

/-! ## A026405.P12567801417554763657

`A226046(A262362(n+2))`
-/

namespace A026405.P12567801417554763657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226046 (A262362 (n + 2)).toNat

end

end A026405.P12567801417554763657

/-!
# A026406: Numbers k such that A026400(k) is odd.

The programs for A026406, there is no canonical definition to state claims against.
-/

/-! ## A026406.P4175847881064696206

`eq[1, A026400(n+1)%2]+1`
-/

namespace A026406.P4175847881064696206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026400 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A026406.P4175847881064696206

/-! ## A026406.P12831723017630555501

`eq[1, A280237(A026400(n+1))]+1`
-/

namespace A026406.P12831723017630555501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280237 (A026400 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A026406.P12831723017630555501

/-! ## A026406.P9149154989637208629

`eq[1, A026400(A000038(n)+n)%2]`
-/

namespace A026406.P9149154989637208629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026400 (A000038 n + (n : ℤ)).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A026406.P9149154989637208629

/-! ## A026406.P15488004477540419797

`eq[1, A026400(xor(n, A000038(n)))%2]`
-/

namespace A026406.P15488004477540419797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026400 (Int.xor (n : ℤ) (A000038 n)).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A026406.P15488004477540419797

/-! ## A026406.P11997748495770648676

`lt[1, 1-A272290(A026400(n+1)+2)]+1`
-/

namespace A026406.P11997748495770648676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A272290 (A026400 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A026406.P11997748495770648676

/-!
# A026407: a(n) = greatest k such that s(j) > 0 for all j < k at end of stage n in forming A026409.

The programs for A026407, there is no canonical definition to state claims against.
-/

/-! ## A026407.P13792742397773664610

`A026410(n+2)-1`
-/

namespace A026407.P13792742397773664610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026410 (n + 2) - 1

end

end A026407.P13792742397773664610

/-! ## A026407.P9887995808190899964

`∑[abs(Δ[A026410(n+1)])]`
-/

namespace A026407.P9887995808190899964
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026410 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026407.P9887995808190899964

/-! ## A026407.P11815551767414863461

`∑[A000027(Δ[A026410(n+1)])]`
-/

namespace A026407.P11815551767414863461
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026410 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026407.P11815551767414863461

/-! ## A026407.P8197824858545786272

`∑[Δ[A026410(n+1)]%A017200(n)]`
-/

namespace A026407.P8197824858545786272
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026410 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A017200 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026407.P8197824858545786272

/-! ## A026407.P7485137874763693213

`∑[A028310(Δ[A026410(n+1)])]`
-/

namespace A026407.P7485137874763693213
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026410 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026407.P7485137874763693213

/-! ## A026407.P7983170953223055684

`A023443(A026410(n+2))`
-/

namespace A026407.P7983170953223055684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A026410 (n + 2)).toNat

end

end A026407.P7983170953223055684

/-!
# A026408: a(n) = s(k), where, at the end of stage n when forming A026409, k is the greatest integer such that s(j) > 0 for all j < k.

The programs for A026408, there is no canonical definition to state claims against.
-/

/-! ## A026408.P1784819648523257858

`A026409(A026407(n+1))`
-/

namespace A026408.P1784819648523257858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026409 (A026407 (n + 1)).toNat

end

end A026408.P1784819648523257858

/-! ## A026408.P18134448580719644959

`A026409(A026410(n+2)-1)`
-/

namespace A026408.P18134448580719644959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026409 (A026410 (n + 2) - 1).toNat

end

end A026408.P18134448580719644959

/-!
# A026409: For n >= 1, n n's take places at stage n: the first takes the least untaken place (l.u.p) and for 2<=k<=n, the k-th n takes the l.u.p. more than n-1 places past the place of the (k-1)st n.

The programs for A026409, there is no canonical definition to state claims against.
-/

/-! ## A026409.P6952980250700337070

`A325678(A243966(n))+A026400(n+1)`
-/

namespace A026409.P6952980250700337070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (A243966 n).toNat + A026400 (n + 1)

end

end A026409.P6952980250700337070

/-! ## A026409.P9975859189957103565

`A005361(A006720(n))*A026400(n+1)`
-/

namespace A026409.P9975859189957103565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A006720 n).toNat * A026400 (n + 1)

end

end A026409.P9975859189957103565

/-! ## A026409.P15901846514313692686

`A026400(n+1)*A097876(A172288(n))`
-/

namespace A026409.P15901846514313692686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026400 (n + 1) * A097876 (A172288 n).toNat

end

end A026409.P15901846514313692686

/-! ## A026409.P2693377039424154323

`A055572(xor(A026400(n+1), A243966(n)))`
-/

namespace A026409.P2693377039424154323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055572 (Int.xor (A026400 (n + 1)) (A243966 n)).toNat

end

end A026409.P2693377039424154323

/-! ## A026409.P9298744079769419010

`A085735(xor(A026400(n+1), A243966(n)))`
-/

namespace A026409.P9298744079769419010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085735 (Int.xor (A026400 (n + 1)) (A243966 n)).toNat

end

end A026409.P9298744079769419010

/-!
# A026410: a(n) = position of the first n in A026409.

The programs for A026410, there is no canonical definition to state claims against.
-/

/-! ## A026410.P5882754959764428639

`A057427(n)+A026407(A028310(n))`
-/

namespace A026410.P5882754959764428639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A026407 (A028310 n).toNat

end

end A026410.P5882754959764428639

/-! ## A026410.P15343525599419671278

`A026407(A028310(n))-A057428(n)`
-/

namespace A026410.P15343525599419671278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026407 (A028310 n).toNat - A057428 n

end

end A026410.P15343525599419671278

/-! ## A026410.P16089151799479635239

`A026407(A028310(n))+1-A000007(n)`
-/

namespace A026410.P16089151799479635239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026407 (A028310 n).toNat + 1 - A000007 n

end

end A026410.P16089151799479635239

/-! ## A026410.P5403873701222054033

`A026407(A028310(n))%A002522(n)+1`
-/

namespace A026410.P5403873701222054033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026407 (A028310 n).toNat) (A002522 n) + 1

end

end A026410.P5403873701222054033

/-! ## A026410.P16803623846234827954

`A026407(A028310(n))+and(1, A106859(n+1))`
-/

namespace A026410.P16803623846234827954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026407 (A028310 n).toNat + Int.land 1 (A106859 (n + 1))

end

end A026410.P16803623846234827954

/-! ## A026410.P11247474342915976932

`A026407(A028310(n))+A001221(A062383(n))`
-/

namespace A026410.P11247474342915976932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026407 (A028310 n).toNat + A001221 (A062383 n).toNat

end

end A026410.P11247474342915976932

/-!
# A026412: a(n) = position of the n-th n in A026409.

The programs for A026412, there is no canonical definition to state claims against.
-/

/-! ## A026412.P8697297346557631392

`∑[∑{e}[lcm(n, 2^n)², #]+1]`
-/

namespace A026412.P8697297346557631392
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (2 ^ n) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026412.P8697297346557631392

/-! ## A026412.P5669846638665837324

`∑[∑[A131961(14*n^3)]]`
-/

namespace A026412.P5669846638665837324
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131961 (14 * n ^ 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026412.P5669846638665837324

/-! ## A026412.P6475024869416747997

`(n+2)²-A098200((n+1)²)`
-/

namespace A026412.P6475024869416747997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - A098200 ((n + 1) ^ 2)

end

end A026412.P6475024869416747997

/-! ## A026412.P2562989456212098945

`∑[A003313(A001589(n))]+1`
-/

namespace A026412.P2562989456212098945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003313 (A001589 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A026412.P2562989456212098945

/-! ## A026412.P911984717412089761

`∑[2*A001222(A007582(n))+1]`
-/

namespace A026412.P911984717412089761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001222 (A007582 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026412.P911984717412089761

/-!
# A026414: a(n) = greatest integer not found after first n in A026409.

The programs for A026414, there is no canonical definition to state claims against.
-/

/-! ## A026414.P7297597349772926145

`A325678(A060016(n+1)+A001399(n))`
-/

namespace A026414.P7297597349772926145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (A060016 (n + 1) + A001399 n).toNat

end

end A026414.P7297597349772926145

/-!
# A026415: Numbers k such that A026409(k) is odd.

The programs for A026415, there is no canonical definition to state claims against.
-/

/-! ## A026415.P16248147035219960119

`eq[1, A026409(n+1)%2]+1`
-/

namespace A026415.P16248147035219960119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026409 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A026415.P16248147035219960119

/-! ## A026415.P15335390030033742221

`eq[2, A000034(A026409(n+1))]+1`
-/

namespace A026415.P15335390030033742221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A026409 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A026415.P15335390030033742221

/-! ## A026415.P10413038435403906820

`eq[1, A026409(A000038(n)+n)%2]`
-/

namespace A026415.P10413038435403906820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026409 (A000038 n + (n : ℤ)).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A026415.P10413038435403906820

/-! ## A026415.P12411958695913146129

`eq[1, A088431(A026409(n+1)²+1)]+1`
-/

namespace A026415.P12411958695913146129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088431 (A026409 (n + 1) ^ 2 + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A026415.P12411958695913146129

/-! ## A026415.P11720503987769732682

`lt[A349444(A054065(n+1)+A007331(n)), n+1]`
-/

namespace A026415.P11720503987769732682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349444 (A054065 (n + 1) + A007331 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A026415.P11720503987769732682

/-!
# A026416: A 2-way classification of integers: a(1) = 1, a(2) = 2 and for n > 2, a(n) is the smallest number not of the form a(i)*a(j) for 1 <= i < j < n.

The programs for A026416, there is no canonical definition to state claims against.
-/

/-! ## A026416.P3788489912689150115

`A123193(n+1)%A247110(n)²`
-/

namespace A026416.P3788489912689150115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123193 (n + 1)) (A247110 (n + 10) ^ 2)

end

end A026416.P3788489912689150115

/-! ## A026416.P14377952893077480789

`(comp[A123240(n+1)-1]+1)%∑[A247110(n)]`
-/

namespace A026416.P14377952893077480789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123240 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247110 (n + 10)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 : ℤ) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A026416.P14377952893077480789

/-! ## A026416.P8819073750083197955

`A123193(A002260(∑[A008574(n)]))`
-/

namespace A026416.P8819073750083197955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123193 (A002260 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A026416.P8819073750083197955

/-! ## A026416.P10277198846114130389

`A123193(A002260(Δ[A005900(n)]))`
-/

namespace A026416.P10277198846114130389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123193 (A002260 (f1 (n + 1) - f1 n).toNat).toNat

end

end A026416.P10277198846114130389

/-! ## A026416.P6858609218100039033

`A123193(A002260(Δ[A006331(n)]))`
-/

namespace A026416.P6858609218100039033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123193 (A002260 (f1 (n + 1) - f1 n).toNat).toNat

end

end A026416.P6858609218100039033

/-! ## A026416.P10412127349105402636

`A001222(A104822(n+1))*A123193(n+1)`
-/

namespace A026416.P10412127349105402636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A104822 (n + 1)).toNat * A123193 (n + 1)

end

end A026416.P10412127349105402636

/-! ## A026416.P15182401390063677952

`A123193(n+1)%A002189(n)`
-/

namespace A026416.P15182401390063677952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123193 (n + 1)) (A002189 n)

end

end A026416.P15182401390063677952

/-! ## A026416.P17656022481359517075

`∪[A008578(n+1), A139586(n+1)]`
-/

namespace A026416.P17656022481359517075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139586 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026416.P17656022481359517075

/-! ## A026416.P11873473118011688398

`∪[A033946(n+1), A139586(n+1)]`
-/

namespace A026416.P11873473118011688398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139586 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026416.P11873473118011688398

/-! ## A026416.P16147128731403892965

`∪[A046022(n+1), A139586(n+1)]`
-/

namespace A026416.P16147128731403892965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139586 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026416.P16147128731403892965

/-!
# A026417: a(n) = least positive integer > a(n-1) and not a(i)*a(j) for 1<=i

The programs for A026417, there is no canonical definition to state claims against.
-/

/-! ## A026417.P928266621755428218

`∪[A026421(n+1), A008349(n)]`
-/

namespace A026417.P928266621755428218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026421 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008349 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026417.P928266621755428218

/-! ## A026417.P17967078238615288493

`∪[A026421(n+1), A022524(n)]`
-/

namespace A026417.P17967078238615288493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026421 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022524 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026417.P17967078238615288493

/-! ## A026417.P2264510384560495078

`A026421(A028310(n))%∑[n+2]`
-/

namespace A026417.P2264510384560495078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026421 (A028310 n).toNat) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A026417.P2264510384560495078

/-! ## A026417.P14099772682442815374

`A026421(A028310(n))-A000038(n)`
-/

namespace A026417.P14099772682442815374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026421 (A028310 n).toNat - A000038 n

end

end A026417.P14099772682442815374

/-! ## A026417.P6732763739615821633

`gcd(A020761(n), A026421(A028310(n)))`
-/

namespace A026417.P6732763739615821633
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A020761 n) (A026421 (A028310 n).toNat)

end

end A026417.P6732763739615821633

/-! ## A026417.P5689590426807281930

`A026421(A028310(n))^abs(A057428(n))`
-/

namespace A026417.P5689590426807281930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026421 (A028310 n).toNat : ℚ) ^ (|A057428 n| : ℤ)

end

end A026417.P5689590426807281930

/-! ## A026417.P15470681066745223370

`A026421(A028310(n))-2*A000007(n)`
-/

namespace A026417.P15470681066745223370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026421 (A028310 n).toNat - 2 * A000007 n

end

end A026417.P15470681066745223370

/-! ## A026417.P18168613106371301783

`A162316(n)%(A026421(A028310(n))-A162316(n))`
-/

namespace A026417.P18168613106371301783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162316 n) (A026421 (A028310 n).toNat - A162316 n)

end

end A026417.P18168613106371301783

/-! ## A026417.P5263173613098848681

`A026421(A123108(2*n))%A058794(n)`
-/

namespace A026417.P5263173613098848681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026421 (A123108 (2 * n)).toNat) (A058794 n)

end

end A026417.P5263173613098848681

/-! ## A026417.P1596350948085992518

`A026421(A123108(2*n))^abs(A057428(n))`
-/

namespace A026417.P1596350948085992518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026421 (A123108 (2 * n)).toNat : ℚ) ^ (|A057428 n| : ℤ)

end

end A026417.P1596350948085992518

/-!
# A026418: Number of ordered trees with n edges and having no branches of length 1.

The programs for A026418, there is no canonical definition to state claims against.
-/

/-! ## A026418.P13594203393863115559

`A101276(∑[n])`
-/

namespace A026418.P13594203393863115559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101276 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A026418.P13594203393863115559

/-! ## A026418.P9094915465043163007

`A101276(A000217(n))+char[21]`
-/

namespace A026418.P9094915465043163007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101276 (A000217 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A026418.P9094915465043163007

/-! ## A026418.P10006872483886351941

`A101276(C(n+1, 2))%A130755(n)`
-/

namespace A026418.P10006872483886351941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101276 (Nat.choose (n + 1) 2)) (A130755 n)

end

end A026418.P10006872483886351941

/-! ## A026418.P8630669471721336463

`A101276(n-Δ[-C(n, 3)])%A130755(n)`
-/

namespace A026418.P8630669471721336463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.choose n 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101276 ((n : ℤ) - (f1 (n + 1) - f1 n)).toNat) (A130755 n)

end

end A026418.P8630669471721336463

/-! ## A026418.P5808698749113733532

`A101276(floor((2*n+1)²/8))%A130755(n)`
-/

namespace A026418.P5808698749113733532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101276 ⌊((2 * n + 1) ^ 2 : ℚ) / 8⌋.toNat) (A130755 n)

end

end A026418.P5808698749113733532

/-!
# A026419: a(n) = least positive integer > a(n-1) and not a(i)*a(j) for 1<=i

The programs for A026419, there is no canonical definition to state claims against.
-/

/-! ## A026419.P7378161626936402575

`A057427(A204657(n+1))+A026505(n+1)`
-/

namespace A026419.P7378161626936402575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A204657 (n + 1)).toNat + A026505 (n + 1)

end

end A026419.P7378161626936402575

/-! ## A026419.P17003666839336513736

`A057427(A097092(n+5))+A026505(n+1)`
-/

namespace A026419.P17003666839336513736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A097092 (n + 5)).toNat + A026505 (n + 1)

end

end A026419.P17003666839336513736

/-! ## A026419.P8412137000393171309

`A157928(A026502(n+1)²)+A026505(n+1)`
-/

namespace A026419.P8412137000393171309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 (A026502 (n + 1) ^ 2).toNat + A026505 (n + 1)

end

end A026419.P8412137000393171309

/-! ## A026419.P10017694235546327261

`A057427(A085150(n+1))+A026505(n+1)`
-/

namespace A026419.P10017694235546327261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A085150 (n + 1)).toNat + A026505 (n + 1)

end

end A026419.P10017694235546327261

/-! ## A026419.P5384799677689352064

`A157928(A026501((n+1)²))+A026505(n+1)`
-/

namespace A026419.P5384799677689352064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 (A026501 ((n + 1) ^ 2)).toNat + A026505 (n + 1)

end

end A026419.P5384799677689352064

/-!
# A026420: a(n) = least positive integer > a(n-1) and not a(i)*a(j) for 1<=i

The programs for A026420, there is no canonical definition to state claims against.
-/

/-! ## A026420.P897019317149199219

`A026479(n+2)%p?[∑[round(sqrt(2*n))!]-1]`
-/

namespace A026420.P897019317149199219
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026479 (n + 2)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A026420.P897019317149199219

/-! ## A026420.P4125057013996860499

`A026479(n+2)%A001262(A001497(n))`
-/

namespace A026420.P4125057013996860499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026479 (n + 2)) (A001262 (A001497 n).toNat)

end

end A026420.P4125057013996860499

/-! ## A026420.P2674627551608814169

`or(A000038(A000045(n)), A026479(n+2))`
-/

namespace A026420.P2674627551608814169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 (A000045 n).toNat) (A026479 (n + 2))

end

end A026420.P2674627551608814169

/-! ## A026420.P14515915381999197532

`A026479(A242474(n+2))`
-/

namespace A026420.P14515915381999197532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026479 (A242474 (n + 2)).toNat

end

end A026420.P14515915381999197532

/-!
# A026421: a(n) = least positive integer > a(n-1) and not a(i)*a(j) for 1<=i

The programs for A026421, there is no canonical definition to state claims against.
-/

/-! ## A026421.P15305268373407772167

`A026417(n+2)`
-/

namespace A026421.P15305268373407772167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026417 (n + 2)

end

end A026421.P15305268373407772167

/-! ## A026421.P13060125795990492109

`record[A026417(A028242(A133265(n)))]`
-/

namespace A026421.P13060125795990492109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026417 (A028242 (A133265 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026421.P13060125795990492109

/-! ## A026421.P15725728040311526950

`record[A026417(A328764(A328764(n)))]`
-/

namespace A026421.P15725728040311526950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026417 (A328764 (A328764 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026421.P15725728040311526950

/-! ## A026421.P5843267440874026978

`record[A026417(A324347(A008611(n)))]`
-/

namespace A026421.P5843267440874026978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026417 (A324347 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026421.P5843267440874026978

/-! ## A026421.P4644733254710506143

`record[A026417(A291769(A008619(n)))]`
-/

namespace A026421.P4644733254710506143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026417 (A291769 (A008619 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026421.P4644733254710506143

/-! ## A026421.P17028043896005651011

`record[A026417(A266977(A052938(n)))]`
-/

namespace A026421.P17028043896005651011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026417 (A266977 (A052938 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026421.P17028043896005651011

/-! ## A026421.P5015136406621840406

`record[A026417(A266977(A154958(n)))]`
-/

namespace A026421.P5015136406621840406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026417 (A266977 (A154958 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026421.P5015136406621840406

/-! ## A026421.P1419995617733408116

`record[A026417(A135227(A000124(n)))]`
-/

namespace A026421.P1419995617733408116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026417 (A135227 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026421.P1419995617733408116

/-! ## A026421.P14570635663298984083

`record[A026417(A274701(A299423(n)))]`
-/

namespace A026421.P14570635663298984083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026417 (A274701 (A299423 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026421.P14570635663298984083

/-!
# A026422: a(n) = least positive integer > a(n-1) and not a(i)*a(j) for 1 <= i <= j < n.

The programs for A026422, the canonical program `A026422.P17430373393506009573` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026422 has offset 1).

The definition of A026422 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026422.P15671098406468651687

`lt[A325126(n+1), 2]+1`
-/

namespace A026422.P15671098406468651687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325126 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A026422.P15671098406468651687

namespace A026422

/-- `lt[A325126(n+1), 2]+1` -/
def P15671098406468651687.Spec : Prop :=
  ∀ n, (P15671098406468651687.a n : ℤ) = A026422 (n + 1)

end A026422

/-! ## A026422.P6408793117298618846

`lt[A349789(n+1), 2]+1`
-/

namespace A026422.P6408793117298618846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349789 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A026422.P6408793117298618846

namespace A026422

/-- `lt[A349789(n+1), 2]+1` -/
def P6408793117298618846.Spec : Prop :=
  ∀ n, (P6408793117298618846.a n : ℤ) = A026422 (n + 1)

end A026422

/-! ## A026422.P7502650056347624362

`comp[A028260(n+2)-1]+1`
-/

namespace A026422.P7502650056347624362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A026422.P7502650056347624362

namespace A026422

/-- `comp[A028260(n+2)-1]+1` -/
def P7502650056347624362.Spec : Prop :=
  ∀ n, (P7502650056347624362.a n : ℤ) = A026422 (n + 1)

end A026422

/-! ## A026422.P9040682356580749156

`record[n*A066829(n+1)+1]`
-/

namespace A026422.P9040682356580749156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A066829 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026422.P9040682356580749156

namespace A026422

/-- `record[n*A066829(n+1)+1]` -/
def P9040682356580749156.Spec : Prop :=
  ∀ n, P9040682356580749156.a n = A026422 (n + 1)

end A026422

/-! ## A026422.P1869073089218913795

`record[(n+1)^A344617(n+1)]`
-/

namespace A026422.P1869073089218913795
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A344617 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026422.P1869073089218913795

namespace A026422

/-- `record[(n+1)^A344617(n+1)]` -/
def P1869073089218913795.Spec : Prop :=
  ∀ n, P1869073089218913795.a n = (A026422 (n + 1) : ℚ)

end A026422

/-! ## A026422.P9066545757407445987

`record[gcd(n+1, A320655(n+1))]`
-/

namespace A026422.P9066545757407445987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A320655 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026422.P9066545757407445987

namespace A026422

/-- `record[gcd(n+1, A320655(n+1))]` -/
def P9066545757407445987.Spec : Prop :=
  ∀ n, (P9066545757407445987.a n : ℤ) = A026422 (n + 1)

end A026422

/-! ## A026422.P14084560824804624894

`record[(n+1)^(A001222(n+1)%2)]`
-/

namespace A026422.P14084560824804624894
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (Int.tmod (A001222 (n + 1)) 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026422.P14084560824804624894

namespace A026422

/-- `record[(n+1)^(A001222(n+1)%2)]` -/
def P14084560824804624894.Spec : Prop :=
  ∀ n, P14084560824804624894.a n = (A026422 (n + 1) : ℚ)

end A026422

/-! ## A026422.P13958324333566722916

`comp[A028260(n+1)%(7*n+1)]`
-/

namespace A026422.P13958324333566722916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028260 (n + 1)) (7 * n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A026422.P13958324333566722916

namespace A026422

/-- `comp[A028260(n+1)%(7*n+1)]` -/
def P13958324333566722916.Spec : Prop :=
  ∀ n, (P13958324333566722916.a n : ℤ) = A026422 (n + 1)

end A026422

/-! ## A026422.P511126756500216105

`eq[1, gcd(2*a(n-1), A001222(n))]` with `a(0)=2, a(1)=1`
-/

namespace A026422.P511126756500216105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  Int.gcd (2 * f2 (n - 1) : ℤ) (A001222 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A026422.P511126756500216105

namespace A026422

/-- `eq[1, gcd(2*a(n-1), A001222(n))]` -/
def P511126756500216105.Spec : Prop :=
  ∀ n, (P511126756500216105.a n : ℤ) = A026422 (n + 1)

end A026422

/-! ## A026422.P17430373393506009573

`A026424(floor(C(n, a(n-1))/2+n))` with `a(0)=1`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A026422

/-- `A026424(floor(C(n, a(n-1))/2+n))` -/
def P17430373393506009573.Spec : Prop :=
  ∀ n, P17430373393506009573.a n = A026422 (n + 1)

theorem P17430373393506009573.correct : P17430373393506009573.Spec := by
  intro n
  simp only [A026422, Nat.add_sub_cancel]

end A026422

/-! ## A026422.P16949003184696918869

`∪[A002001(n), A026424(n+1)]`
-/

namespace A026422.P16949003184696918869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002001 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026422.P16949003184696918869

namespace A026422

/-- `∪[A002001(n), A026424(n+1)]` -/
def P16949003184696918869.Spec : Prop :=
  ∀ n, (P16949003184696918869.a n : ℤ) = A026422 (n + 1)

end A026422

/-! ## A026422.P14888327311333120921

`∪[A026424(n+1), A008349(n)]`
-/

namespace A026422.P14888327311333120921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008349 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026422.P14888327311333120921

namespace A026422

/-- `∪[A026424(n+1), A008349(n)]` -/
def P14888327311333120921.Spec : Prop :=
  ∀ n, (P14888327311333120921.a n : ℤ) = A026422 (n + 1)

end A026422

/-! ## A026422.P13157891708267084958

`∪[A026424(n+1), A016817(n)]`
-/

namespace A026422.P13157891708267084958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016817 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026422.P13157891708267084958

namespace A026422

/-- `∪[A026424(n+1), A016817(n)]` -/
def P13157891708267084958.Spec : Prop :=
  ∀ n, (P13157891708267084958.a n : ℤ) = A026422 (n + 1)

end A026422

/-! ## A026422.P770754007148684727

`A000007(n)+comp[A028260(n+1)]`
-/

namespace A026422.P770754007148684727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A026422.P770754007148684727

namespace A026422

/-- `A000007(n)+comp[A028260(n+1)]` -/
def P770754007148684727.Spec : Prop :=
  ∀ n, P770754007148684727.a n = A026422 (n + 1)

end A026422

/-! ## A026422.P12839353185464702226

`eq[1, A040001(A001222(n+1))]+1`
-/

namespace A026422.P12839353185464702226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A001222 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A026422.P12839353185464702226

namespace A026422

/-- `eq[1, A040001(A001222(n+1))]+1` -/
def P12839353185464702226.Spec : Prop :=
  ∀ n, (P12839353185464702226.a n : ℤ) = A026422 (n + 1)

end A026422

/-! ## A026422.P15475142934332870419

`lt[2, A135561(A001222(n+1)+1)]+1`
-/

namespace A026422.P15475142934332870419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135561 (A001222 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A026422.P15475142934332870419

namespace A026422

/-- `lt[2, A135561(A001222(n+1)+1)]+1` -/
def P15475142934332870419.Spec : Prop :=
  ∀ n, (P15475142934332870419.a n : ℤ) = A026422 (n + 1)

end A026422

/-! ## A026422.P14272222025208538401

`lt[(-n)^∑{e}[n, #], n+1]`
-/

namespace A026422.P14272222025208538401
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-(n : ℤ)) ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A026422.P14272222025208538401

namespace A026422

/-- `lt[(-n)^∑{e}[n, #], n+1]` -/
def P14272222025208538401.Spec : Prop :=
  ∀ n, (P14272222025208538401.a n : ℤ) = A026422 (n + 1)

end A026422

/-! ## A026422.P16710051795285385604

`lt[∏{e}[n, (-n)^#], n+1]`
-/

namespace A026422.P16710051795285385604
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (-(n : ℤ)) ^ Nat.factorization (f2 n) p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A026422.P16710051795285385604

namespace A026422

/-- `lt[∏{e}[n, (-n)^#], n+1]` -/
def P16710051795285385604.Spec : Prop :=
  ∀ n, (P16710051795285385604.a n : ℤ) = A026422 (n + 1)

end A026422

/-! ## A026422.P11096531874196622947

`lt[A165872(n+1), 2]+1`
-/

namespace A026422.P11096531874196622947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165872 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A026422.P11096531874196622947

namespace A026422

/-- `lt[A165872(n+1), 2]+1` -/
def P11096531874196622947.Spec : Prop :=
  ∀ n, (P11096531874196622947.a n : ℤ) = A026422 (n + 1)

end A026422

/-!
# A026423: a(n) = least positive integer > a(n-1) and not a(i)*a(j) for 1<=i<=j<=n, n >= 2.

The programs for A026423, there is no canonical definition to state claims against.
-/

/-! ## A026423.P4369787660274409439

`∪[A026427(n+1), A008349(n)]`
-/

namespace A026423.P4369787660274409439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026427 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008349 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026423.P4369787660274409439

/-! ## A026423.P4471934794358302887

`∪[A026427(n+1), A008376(n)]`
-/

namespace A026423.P4471934794358302887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026427 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008376 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026423.P4471934794358302887

/-! ## A026423.P11501822129443200726

`∪[A026427(n+1), A022524(n)]`
-/

namespace A026423.P11501822129443200726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026427 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022524 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026423.P11501822129443200726

/-! ## A026423.P3630418336472798036

`∪[A026427(n+1), A064305(n)]`
-/

namespace A026423.P3630418336472798036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026427 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064305 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026423.P3630418336472798036

/-! ## A026423.P16972681782515991542

`A026427(A028310(n))-A000038(n)`
-/

namespace A026423.P16972681782515991542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026427 (A028310 n).toNat - A000038 n

end

end A026423.P16972681782515991542

/-! ## A026423.P8459276647117628523

`A026427(A028310(n))%A016789(n)`
-/

namespace A026423.P8459276647117628523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026427 (A028310 n).toNat) (A016789 n)

end

end A026423.P8459276647117628523

/-! ## A026423.P6743479540783450655

`gcd(A020761(n), A026427(A028310(n)))`
-/

namespace A026423.P6743479540783450655
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A020761 n) (A026427 (A028310 n).toNat)

end

end A026423.P6743479540783450655

/-! ## A026423.P1335478602541788742

`record[A026427(A032742(n+1))-A000038(n)]`
-/

namespace A026423.P1335478602541788742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026427 (A032742 (n + 1)).toNat - A000038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026423.P1335478602541788742

/-! ## A026423.P13951552984606220490

`record[A026427(A032742(n+1))%A001504(n)]`
-/

namespace A026423.P13951552984606220490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026427 (A032742 (n + 1)).toNat) (A001504 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026423.P13951552984606220490

/-! ## A026423.P3118690856992298149

`A026427(A123108(2*n))%A058794(n)`
-/

namespace A026423.P3118690856992298149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026427 (A123108 (2 * n)).toNat) (A058794 n)

end

end A026423.P3118690856992298149

/-! ## A026423.P11765540208092657567

`A026427(A123108(2*n))^A001222(A008578(n+1))`
-/

namespace A026423.P11765540208092657567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026427 (A123108 (2 * n)).toNat : ℚ) ^ (A001222 (A008578 (n + 1)).toNat : ℤ)

end

end A026423.P11765540208092657567

/-! ## A026423.P15875011306916875388

`record[A026427(A006949(n))%A026433(n+1)]`
-/

namespace A026423.P15875011306916875388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026427 (A006949 n).toNat) (A026433 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026423.P15875011306916875388

/-! ## A026423.P10759319965205511647

`and(A003261(n+1), A026427(A028310(n)))`
-/

namespace A026423.P10759319965205511647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003261 (n + 1)) (A026427 (A028310 n).toNat)

end

end A026423.P10759319965205511647

/-!
# A026424: Number of prime divisors (counted with multiplicity) is odd; Liouville function lambda(n) (A008836) is negative.

The programs for A026424, the canonical program `A026424.P11341999496382344124` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026424 has offset 1).

The definition of A026424 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026424.P7246533517946548917

`A063745(n+1)/2`
-/

namespace A026424.P7246533517946548917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063745 (n + 1) : ℚ) / 2

end

end A026424.P7246533517946548917

namespace A026424

/-- `A063745(n+1)/2` -/
def P7246533517946548917.Spec : Prop :=
  ∀ n, P7246533517946548917.a n = (A026424 (n + 1) : ℚ)

end A026424

/-! ## A026424.P11341999496382344124

`record[-A061019(n+2)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A026424

/-- `record[-A061019(n+2)]` -/
def P11341999496382344124.Spec : Prop :=
  ∀ n, P11341999496382344124.a n = A026424 (n + 1)

theorem P11341999496382344124.correct : P11341999496382344124.Spec := by
  intro n
  simp only [A026424, Nat.add_sub_cancel]

end A026424

/-! ## A026424.P16738994026114041093

`eq[0, A320655(n+1)]+1`
-/

namespace A026424.P16738994026114041093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320655 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A026424.P16738994026114041093

namespace A026424

/-- `eq[0, A320655(n+1)]+1` -/
def P16738994026114041093.Spec : Prop :=
  ∀ n, (P16738994026114041093.a n : ℤ) = A026424 (n + 1)

end A026424

/-! ## A026424.P7227565352735155661

`lt[0, A066829(n+1)]+1`
-/

namespace A026424.P7227565352735155661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066829 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A026424.P7227565352735155661

namespace A026424

/-- `lt[0, A066829(n+1)]+1` -/
def P7227565352735155661.Spec : Prop :=
  ∀ n, (P7227565352735155661.a n : ℤ) = A026424 (n + 1)

end A026424

/-! ## A026424.P18320806993687133518

`lt[A325126(n+1), 0]+1`
-/

namespace A026424.P18320806993687133518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325126 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A026424.P18320806993687133518

namespace A026424

/-- `lt[A325126(n+1), 0]+1` -/
def P18320806993687133518.Spec : Prop :=
  ∀ n, (P18320806993687133518.a n : ℤ) = A026424 (n + 1)

end A026424

/-! ## A026424.P6832746248878018893

`eq[1, A344617(n+1)]+1`
-/

namespace A026424.P6832746248878018893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344617 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A026424.P6832746248878018893

namespace A026424

/-- `eq[1, A344617(n+1)]+1` -/
def P6832746248878018893.Spec : Prop :=
  ∀ n, (P6832746248878018893.a n : ℤ) = A026424 (n + 1)

end A026424

/-! ## A026424.P6172826207653941242

`lt[A349789(n+1), 0]+1`
-/

namespace A026424.P6172826207653941242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349789 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A026424.P6172826207653941242

namespace A026424

/-- `lt[A349789(n+1), 0]+1` -/
def P6172826207653941242.Spec : Prop :=
  ∀ n, (P6172826207653941242.a n : ℤ) = A026424 (n + 1)

end A026424

/-! ## A026424.P15972951599808111849

`lt[A065043(n+1), 1]+1`
-/

namespace A026424.P15972951599808111849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065043 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A026424.P15972951599808111849

namespace A026424

/-- `lt[A065043(n+1), 1]+1` -/
def P15972951599808111849.Spec : Prop :=
  ∀ n, (P15972951599808111849.a n : ℤ) = A026424 (n + 1)

end A026424

/-! ## A026424.P4238283205485414246

`comp[∪[A028260(n+1), n²]]`
-/

namespace A026424.P4238283205485414246
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A026424.P4238283205485414246

namespace A026424

/-- `comp[∪[A028260(n+1), n²]]` -/
def P4238283205485414246.Spec : Prop :=
  ∀ n, (P4238283205485414246.a n : ℤ) = A026424 (n + 1)

end A026424

/-! ## A026424.P14514862791955073657

`eq[1, A065043(2*(n+1))]+1`
-/

namespace A026424.P14514862791955073657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065043 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A026424.P14514862791955073657

namespace A026424

/-- `eq[1, A065043(2*(n+1))]+1` -/
def P14514862791955073657.Spec : Prop :=
  ∀ n, (P14514862791955073657.a n : ℤ) = A026424 (n + 1)

end A026424

/-! ## A026424.P6882256983058223170

`lt[A344617(2*(n+1)), 1]+1`
-/

namespace A026424.P6882256983058223170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344617 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A026424.P6882256983058223170

namespace A026424

/-- `lt[A344617(2*(n+1)), 1]+1` -/
def P6882256983058223170.Spec : Prop :=
  ∀ n, (P6882256983058223170.a n : ℤ) = A026424 (n + 1)

end A026424

/-! ## A026424.P6409764887451905847

`eq[1, gcd(2, A001222(n+1))]+1`
-/

namespace A026424.P6409764887451905847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A001222 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A026424.P6409764887451905847

namespace A026424

/-- `eq[1, gcd(2, A001222(n+1))]+1` -/
def P6409764887451905847.Spec : Prop :=
  ∀ n, (P6409764887451905847.a n : ℤ) = A026424 (n + 1)

end A026424

/-! ## A026424.P3903222898098707050

`eq[1, and(1, A001222(n+2))]+2`
-/

namespace A026424.P3903222898098707050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A001222 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A026424.P3903222898098707050

namespace A026424

/-- `eq[1, and(1, A001222(n+2))]+2` -/
def P3903222898098707050.Spec : Prop :=
  ∀ n, (P3903222898098707050.a n : ℤ) = A026424 (n + 1)

end A026424

/-! ## A026424.P4366509398129629443

`eq[1, gcd(2*a(n-1), A001222(n))]` with `a(0)=0`
-/

namespace A026424.P4366509398129629443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  Int.gcd (2 * f2 (n - 1) : ℤ) (A001222 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A026424.P4366509398129629443

namespace A026424

/-- `eq[1, gcd(2*a(n-1), A001222(n))]` -/
def P4366509398129629443.Spec : Prop :=
  ∀ n, (P4366509398129629443.a n : ℤ) = A026424 (n + 1)

end A026424

/-! ## A026424.P15632343461082084189

`eq[1, A000035(A001222(n+1))]+1`
-/

namespace A026424.P15632343461082084189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A001222 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A026424.P15632343461082084189

namespace A026424

/-- `eq[1, A000035(A001222(n+1))]+1` -/
def P15632343461082084189.Spec : Prop :=
  ∀ n, (P15632343461082084189.a n : ℤ) = A026424 (n + 1)

end A026424

/-! ## A026424.P14160536181138029620

`∪[A000040(n+1), A046339(n+1)]`
-/

namespace A026424.P14160536181138029620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026424.P14160536181138029620

namespace A026424

/-- `∪[A000040(n+1), A046339(n+1)]` -/
def P14160536181138029620.Spec : Prop :=
  ∀ n, (P14160536181138029620.a n : ℤ) = A026424 (n + 1)

end A026424

/-! ## A026424.P118962153524061641

`∪[A030059(n+1), A046339(n+1)]`
-/

namespace A026424.P118962153524061641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030059 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026424.P118962153524061641

namespace A026424

/-- `∪[A030059(n+1), A046339(n+1)]` -/
def P118962153524061641.Spec : Prop :=
  ∀ n, (P118962153524061641.a n : ℤ) = A026424 (n + 1)

end A026424

/-! ## A026424.P10010911927622591278

`∪[A067019(n+1), A046470(n+1)]`
-/

namespace A026424.P10010911927622591278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046470 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026424.P10010911927622591278

namespace A026424

/-- `∪[A067019(n+1), A046470(n+1)]` -/
def P10010911927622591278.Spec : Prop :=
  ∀ n, (P10010911927622591278.a n : ℤ) = A026424 (n + 1)

end A026424

/-! ## A026424.P14855449158086019133

`∪[A182358(n+1), A046339(n+1)]`
-/

namespace A026424.P14855449158086019133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026424.P14855449158086019133

namespace A026424

/-- `∪[A182358(n+1), A046339(n+1)]` -/
def P14855449158086019133.Spec : Prop :=
  ∀ n, (P14855449158086019133.a n : ℤ) = A026424 (n + 1)

end A026424

/-! ## A026424.P18354088619775538176

`∪[A246551(n+1), A046339(n+1)]`
-/

namespace A026424.P18354088619775538176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026424.P18354088619775538176

namespace A026424

/-- `∪[A246551(n+1), A046339(n+1)]` -/
def P18354088619775538176.Spec : Prop :=
  ∀ n, (P18354088619775538176.a n : ℤ) = A026424 (n + 1)

end A026424

/-!
# A026426: a(n) = least positive integer > a(n-1) and not a(i)*a(j) for 1<=i<=j<=n, n >= 2.

The programs for A026426, there is no canonical definition to state claims against.
-/

/-! ## A026426.P2629384372822735911

`A026506(n+1)+A026492(A133464(n))`
-/

namespace A026426.P2629384372822735911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026506 (n + 1) + A026492 (A133464 n).toNat

end

end A026426.P2629384372822735911

/-! ## A026426.P5761834343661579954

`A026506(n+1)+A026492(A002182(n+1))`
-/

namespace A026426.P5761834343661579954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026506 (n + 1) + A026492 (A002182 (n + 1)).toNat

end

end A026426.P5761834343661579954

/-! ## A026426.P9541334925556155223

`A026506(n+1)+A001222(A084755(n+1))`
-/

namespace A026426.P9541334925556155223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026506 (n + 1) + A001222 (A084755 (n + 1)).toNat

end

end A026426.P9541334925556155223

/-! ## A026426.P10746399380781148966

`A325509(A026472(n+1))+A026506(n+1)`
-/

namespace A026426.P10746399380781148966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325509 (A026472 (n + 1)).toNat + A026506 (n + 1)

end

end A026426.P10746399380781148966

/-! ## A026426.P4071419907473527283

`A067513(A337231(n+1))+A026506(n+1)`
-/

namespace A026426.P4071419907473527283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067513 (A337231 (n + 1)).toNat + A026506 (n + 1)

end

end A026426.P4071419907473527283

/-!
# A026427: a(n) = least positive integer > a(n-1) and not equal to a(i)*a(j) for 1<=i<=j<=n.

The programs for A026427, there is no canonical definition to state claims against.
-/

/-! ## A026427.P18193288230894460325

`A026423(n+2)`
-/

namespace A026427.P18193288230894460325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026423 (n + 2)

end

end A026427.P18193288230894460325

/-! ## A026427.P14218763316043402057

`record[A026423(A014682(A004277(n)))]`
-/

namespace A026427.P14218763316043402057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026423 (A014682 (A004277 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026427.P14218763316043402057

/-! ## A026427.P12370154892411410369

`record[A026423(A008620(A092486(n)))]`
-/

namespace A026427.P12370154892411410369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026423 (A008620 (A092486 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026427.P12370154892411410369

/-! ## A026427.P18421910078075985639

`record[A026423(A133310(A028242(n)))]`
-/

namespace A026427.P18421910078075985639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026423 (A133310 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026427.P18421910078075985639

/-! ## A026427.P12682648068862973893

`record[A026423(A133310(A057979(n)))]`
-/

namespace A026427.P12682648068862973893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026423 (A133310 (A057979 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026427.P12682648068862973893

/-! ## A026427.P5054947020830536067

`record[A026423(A133310(A123108(n)))]`
-/

namespace A026427.P5054947020830536067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026423 (A133310 (A123108 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026427.P5054947020830536067

/-! ## A026427.P13976908052934719837

`record[A026423(A126759(A016825(n)))]`
-/

namespace A026427.P13976908052934719837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026423 (A126759 (A016825 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026427.P13976908052934719837

/-! ## A026427.P4771246816923109498

`record[A026423(A126759(A126759(n)))]`
-/

namespace A026427.P4771246816923109498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026423 (A126759 (A126759 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026427.P4771246816923109498

/-! ## A026427.P2049004517106784041

`record[A026423(A108872(A154958(n)))]`
-/

namespace A026427.P2049004517106784041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026423 (A108872 (A154958 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026427.P2049004517106784041

/-! ## A026427.P10591607387306163586

`record[A026423(A286589(A008574(n)))]`
-/

namespace A026427.P10591607387306163586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026423 (A286589 (A008574 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026427.P10591607387306163586

/-!
# A026428: a(n) = position of n-th prime in A026416.

The programs for A026428, there is no canonical definition to state claims against.
-/

/-! ## A026428.P3141878981809336817

`eq[2, A130285(n+1)]+1`
-/

namespace A026428.P3141878981809336817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130285 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A026428.P3141878981809336817

/-! ## A026428.P10576442814582632523

`eq[2, A000005(A026416(n+1))]+1`
-/

namespace A026428.P10576442814582632523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A026416 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A026428.P10576442814582632523

/-! ## A026428.P14397463769165617477

`record[A005843(n+1)/A130285(n+1)]`
-/

namespace A026428.P14397463769165617477
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (n + 1) : ℚ) / (A130285 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026428.P14397463769165617477

/-! ## A026428.P3445667295664101341

`record[A005843(n+1)/A000005(A026416(n+1))]`
-/

namespace A026428.P3445667295664101341
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (n + 1) : ℚ) / (A000005 (A026416 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026428.P3445667295664101341

/-! ## A026428.P5332229175464254544

`eq[A014963(A026416(n+2)), A026416(n+2)]+2`
-/

namespace A026428.P5332229175464254544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A026416 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026416 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A026428.P5332229175464254544

/-!
# A026429: Position of n-th odd prime in A026417.

The programs for A026429, there is no canonical definition to state claims against.
-/

/-! ## A026429.P14902812267847779692

`eq[2, A000005(A026417(n+1))]+1`
-/

namespace A026429.P14902812267847779692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A026417 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A026429.P14902812267847779692

/-! ## A026429.P8229930420474024965

`record[A005843(n+1)/A000005(A026417(n+1))]`
-/

namespace A026429.P8229930420474024965
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (n + 1) : ℚ) / (A000005 (A026417 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026429.P8229930420474024965

/-! ## A026429.P14140887971856052042

`record[A000027(2*(n+1))/A000005(A026417(n+1))]`
-/

namespace A026429.P14140887971856052042
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (2 * (n + 1)) : ℚ) / (A000005 (A026417 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026429.P14140887971856052042

/-!
# A026430: a(n) is the sum of first n terms of A001285 (Thue-Morse sequence).

The programs for A026430, the canonical program `A026430.P14890685957938381463` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026430 has offset 0).

The definition of A026430 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026430.P4654403379852210456

`floor(3*comp[xor(n, 2*n)]/4)`
-/

namespace A026430.P4654403379852210456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℚ) / 4⌋

end

end A026430.P4654403379852210456

namespace A026430

/-- `floor(3*comp[xor(n, 2*n)]/4)` -/
def P4654403379852210456.Spec : Prop :=
  ∀ n, P4654403379852210456.a n = A026430 n

end A026430

/-! ## A026430.P12739337219200554850

`comp[comp[xor(n, 2*n)]+1+n]`
-/

namespace A026430.P12739337219200554850
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A026430.P12739337219200554850

namespace A026430

/-- `comp[comp[xor(n, 2*n)]+1+n]` -/
def P12739337219200554850.Spec : Prop :=
  ∀ n, (P12739337219200554850.a n : ℤ) = A026430 n

end A026430

/-! ## A026430.P9212842372207320857

`abs(∑[char[xor(n, 2*n)+1]]-2*n)`
-/

namespace A026430.P9212842372207320857
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (2 * n : ℤ)|

end

end A026430.P9212842372207320857

namespace A026430

/-- `abs(∑[char[xor(n, 2*n)+1]]-2*n)` -/
def P9212842372207320857.Spec : Prop :=
  ∀ n, P9212842372207320857.a n = A026430 n

end A026430

/-! ## A026430.P15503340907399554633

`3*n+1-∑[char[xor(n, 2*n)+1]+1]`
-/

namespace A026430.P15503340907399554633
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 1 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A026430.P15503340907399554633

namespace A026430

/-- `3*n+1-∑[char[xor(n, 2*n)+1]+1]` -/
def P15503340907399554633.Spec : Prop :=
  ∀ n, P15503340907399554633.a n = A026430 n

end A026430

/-! ## A026430.P3548570330904523493

`comp[A356133(n+1)]`
-/

namespace A026430.P3548570330904523493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A026430.P3548570330904523493

namespace A026430

/-- `comp[A356133(n+1)]` -/
def P3548570330904523493.Spec : Prop :=
  ∀ n, (P3548570330904523493.a n : ℤ) = A026430 n

end A026430

/-! ## A026430.P9781257586824199703

`A285954(n+1)-1`
-/

namespace A026430.P9781257586824199703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285954 (n + 1) - 1

end

end A026430.P9781257586824199703

namespace A026430

/-- `A285954(n+1)-1` -/
def P9781257586824199703.Spec : Prop :=
  ∀ n, P9781257586824199703.a n = A026430 n

end A026430

/-! ## A026430.P3878995549709462717

`comp[A285953(n+1)-1]`
-/

namespace A026430.P3878995549709462717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285953 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A026430.P3878995549709462717

namespace A026430

/-- `comp[A285953(n+1)-1]` -/
def P3878995549709462717.Spec : Prop :=
  ∀ n, (P3878995549709462717.a n : ℤ) = A026430 n

end A026430

/-! ## A026430.P3740849199216432960

`comp[A181155(n+1)+n]`
-/

namespace A026430.P3740849199216432960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181155 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A026430.P3740849199216432960

namespace A026430

/-- `comp[A181155(n+1)+n]` -/
def P3740849199216432960.Spec : Prop :=
  ∀ n, (P3740849199216432960.a n : ℤ) = A026430 n

end A026430

/-! ## A026430.P14890685957938381463

`floor((A000069(n+1)+n)/2)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A026430

/-- `floor((A000069(n+1)+n)/2)` -/
def P14890685957938381463.Spec : Prop :=
  ∀ n, P14890685957938381463.a n = A026430 n

theorem P14890685957938381463.correct : P14890685957938381463.Spec := by
  intro n
  simp only [A026430]

end A026430

/-! ## A026430.P6160825581504798965

`comp[3*n+1]-A228495(n)`
-/

namespace A026430.P6160825581504798965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - A228495 n

end

end A026430.P6160825581504798965

namespace A026430

/-- `comp[3*n+1]-A228495(n)` -/
def P6160825581504798965.Spec : Prop :=
  ∀ n, P6160825581504798965.a n = A026430 n

end A026430

/-! ## A026430.P6695320825796006603

`3*n+1-A285950(n+1)`
-/

namespace A026430.P6695320825796006603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 1 : ℤ) - A285950 (n + 1)

end

end A026430.P6695320825796006603

namespace A026430

/-- `3*n+1-A285950(n+1)` -/
def P6695320825796006603.Spec : Prop :=
  ∀ n, P6695320825796006603.a n = A026430 n

end A026430

/-! ## A026430.P16965264461174015084

`a(n-1)+n-A161560(n)` with `a(0)=0`
-/

namespace A026430.P16965264461174015084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ((n : ℤ) - A161560 n)

end

end A026430.P16965264461174015084

namespace A026430

/-- `a(n-1)+n-A161560(n)` -/
def P16965264461174015084.Spec : Prop :=
  ∀ n, P16965264461174015084.a n = A026430 n

end A026430

/-! ## A026430.P15187179556351099609

`comp[3*n+2-A000120(n)%2]`
-/

namespace A026430.P15187179556351099609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 2 : ℤ) - Int.tmod (A000120 n) 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A026430.P15187179556351099609

namespace A026430

/-- `comp[3*n+2-A000120(n)%2]` -/
def P15187179556351099609.Spec : Prop :=
  ∀ n, (P15187179556351099609.a n : ℤ) = A026430 n

end A026430

/-! ## A026430.P11382453420804010281

`∑[A000120(abs(1-n))%2+1]-2`
-/

namespace A026430.P11382453420804010281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000120 |1 - (n : ℤ)|.toNat) 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A026430.P11382453420804010281

namespace A026430

/-- `∑[A000120(abs(1-n))%2+1]-2` -/
def P11382453420804010281.Spec : Prop :=
  ∀ n, P11382453420804010281.a n = A026430 n

end A026430

/-! ## A026430.P10865739540181771312

`∑[A001285(n)]-A001285(n)`
-/

namespace A026430.P10865739540181771312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001285 n

end

end A026430.P10865739540181771312

namespace A026430

/-- `∑[A001285(n)]-A001285(n)` -/
def P10865739540181771312.Spec : Prop :=
  ∀ n, P10865739540181771312.a n = A026430 n

end A026430

/-! ## A026430.P9763686002527890376

`A161560(n+1)+A115384(n)`
-/

namespace A026430.P9763686002527890376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161560 (n + 1) + A115384 n

end

end A026430.P9763686002527890376

namespace A026430

/-- `A161560(n+1)+A115384(n)` -/
def P9763686002527890376.Spec : Prop :=
  ∀ n, P9763686002527890376.a n = A026430 n

end A026430

/-! ## A026430.P13662502361240680800

`A000069(n+1)-A159481(n)`
-/

namespace A026430.P13662502361240680800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1) - A159481 n

end

end A026430.P13662502361240680800

namespace A026430

/-- `A000069(n+1)-A159481(n)` -/
def P13662502361240680800.Spec : Prop :=
  ∀ n, P13662502361240680800.a n = A026430 n

end A026430

/-! ## A026430.P9071741012014644293

`A000069(n+1)-(A245710(n+1)+A010060(n+1))`
-/

namespace A026430.P9071741012014644293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1) - (A245710 (n + 1) + A010060 (n + 1))

end

end A026430.P9071741012014644293

namespace A026430

/-- `A000069(n+1)-(A245710(n+1)+A010060(n+1))` -/
def P9071741012014644293.Spec : Prop :=
  ∀ n, P9071741012014644293.a n = A026430 n

end A026430

/-! ## A026430.P647194354405140213

`comp[A285950(2*(n+1))-1]`
-/

namespace A026430.P647194354405140213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285950 (2 * (n + 1)) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A026430.P647194354405140213

namespace A026430

/-- `comp[A285950(2*(n+1))-1]` -/
def P647194354405140213.Spec : Prop :=
  ∀ n, (P647194354405140213.a n : ℤ) = A026430 n

end A026430

/-! ## A026430.P7754919905992547770

`comp[A093505(2*(n+1))+n]`
-/

namespace A026430.P7754919905992547770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093505 (2 * (n + 1)) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A026430.P7754919905992547770

namespace A026430

/-- `comp[A093505(2*(n+1))+n]` -/
def P7754919905992547770.Spec : Prop :=
  ∀ n, (P7754919905992547770.a n : ℤ) = A026430 n

end A026430

/-!
# A026431: a(n) = least positive integer > a(n-1) and not a(i)*a(j)-1 for 1<=i

The programs for A026431, there is no canonical definition to state claims against.
-/

/-! ## A026431.P4294584271363525022

`∪[A000116(n), A026433(n+1)]`
-/

namespace A026431.P4294584271363525022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000116 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026433 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026431.P4294584271363525022

/-! ## A026431.P16737790514367719631

`∪[A000302(n), A026433(n+1)]`
-/

namespace A026431.P16737790514367719631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026433 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026431.P16737790514367719631

/-! ## A026431.P10092199970102579571

`∪[A000648(n), A026433(n+1)]`
-/

namespace A026431.P10092199970102579571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000648 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026433 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026431.P10092199970102579571

/-! ## A026431.P12433436112152061708

`∪[A000984(n), A026433(n+1)]`
-/

namespace A026431.P12433436112152061708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026433 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026431.P12433436112152061708

/-! ## A026431.P13978037241924605705

`∪[A026433(n+1), A001288(n)]`
-/

namespace A026431.P13978037241924605705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001288 (n + 11)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026431.P13978037241924605705

/-! ## A026431.P9991522758778459058

`∪[A001334(n), A026433(n+1)]`
-/

namespace A026431.P9991522758778459058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001334 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026433 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026431.P9991522758778459058

/-! ## A026431.P2820786397347650350

`∪[A001352(n), A026433(n+1)]`
-/

namespace A026431.P2820786397347650350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001352 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026433 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026431.P2820786397347650350

/-! ## A026431.P15348434654308725366

`∪[A001394(n), A026433(n+1)]`
-/

namespace A026431.P15348434654308725366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001394 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026433 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026431.P15348434654308725366

/-! ## A026431.P6715926358285191049

`∪[A026433(n+1), A001781(n)]`
-/

namespace A026431.P6715926358285191049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001781 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026431.P6715926358285191049

/-! ## A026431.P17293725378457851973

`A026433(A028310(n))-A000007(n)`
-/

namespace A026431.P17293725378457851973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026433 (A028310 n).toNat - A000007 n

end

end A026431.P17293725378457851973

/-! ## A026431.P7474432815140572956

`A026433(A028310(n))/A054977(n)`
-/

namespace A026431.P7474432815140572956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026433 (A028310 n).toNat : ℚ) / (A054977 n : ℚ)

end

end A026431.P7474432815140572956

/-! ## A026431.P876865519374176762

`A026433(A000007(n)+n)-A000007(n)`
-/

namespace A026431.P876865519374176762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026433 (A000007 n + (n : ℤ)).toNat - A000007 n

end

end A026431.P876865519374176762

/-! ## A026431.P5589001051451458078

`record[A026433(A032742(n+1))-A056594(n)]`
-/

namespace A026431.P5589001051451458078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026433 (A032742 (n + 1)).toNat - A056594 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026431.P5589001051451458078

/-! ## A026431.P11024663365382591509

`record[A026433(A032742(n+1))-A059841(n)]`
-/

namespace A026431.P11024663365382591509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026433 (A032742 (n + 1)).toNat - A059841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026431.P11024663365382591509

/-! ## A026431.P16283966380293389335

`record[A026433(A032742(n+1))-A276086(n)%2]`
-/

namespace A026431.P16283966380293389335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026433 (A032742 (n + 1)).toNat - Int.tmod (A276086 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026431.P16283966380293389335

/-! ## A026431.P9065985361007198393

`record[A026433(A032742(n+1))-A000035(n+1)]`
-/

namespace A026431.P9065985361007198393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026433 (A032742 (n + 1)).toNat - A000035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026431.P9065985361007198393

/-!
# A026432: a(n) = least positive integer > a(n-1) and not a(i)*a(j)-1 for 1<=i

The programs for A026432, there is no canonical definition to state claims against.
-/

/-! ## A026432.P2015895669924801488

`∪[A000648(n), A026436(n+1)]`
-/

namespace A026432.P2015895669924801488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000648 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026436 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026432.P2015895669924801488

/-! ## A026432.P11035464706311185560

`∪[A001249(n), A026436(n+1)]`
-/

namespace A026432.P11035464706311185560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001249 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026436 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026432.P11035464706311185560

/-! ## A026432.P15561504112592936425

`∪[A001334(n), A026436(n+1)]`
-/

namespace A026432.P15561504112592936425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001334 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026436 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026432.P15561504112592936425

/-! ## A026432.P15054258186701716587

`∪[A001559(n), A026436(n+1)]`
-/

namespace A026432.P15054258186701716587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001559 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026436 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026432.P15054258186701716587

/-! ## A026432.P15464566629600606471

`A026436(A028310(n))%∑[n+2]`
-/

namespace A026432.P15464566629600606471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026436 (A028310 n).toNat) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A026432.P15464566629600606471

/-! ## A026432.P5502906737097681317

`A026436(A028310(n))-A000038(n)`
-/

namespace A026432.P5502906737097681317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026436 (A028310 n).toNat - A000038 n

end

end A026432.P5502906737097681317

/-! ## A026432.P6228932133220747826

`floor(A026436(A028310(n))/A054977(n))`
-/

namespace A026432.P6228932133220747826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A026436 (A028310 n).toNat : ℚ) / (A054977 n : ℚ)⌋

end

end A026432.P6228932133220747826

/-! ## A026432.P5124316310178037358

`A026436(A000007(n)+n)%A026420(n+1)`
-/

namespace A026432.P5124316310178037358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026436 (A000007 n + (n : ℤ)).toNat) (A026420 (n + 1))

end

end A026432.P5124316310178037358

/-! ## A026432.P17886273945810205039

`record[A026436(A328399(n))-A000038(n)]`
-/

namespace A026432.P17886273945810205039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026436 (A328399 n).toNat - A000038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026432.P17886273945810205039

/-! ## A026432.P791674429346974511

`record[A026436(A328399(n))%A016789(n)]`
-/

namespace A026432.P791674429346974511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026436 (A328399 n).toNat) (A016789 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026432.P791674429346974511

/-! ## A026432.P6239325506442901731

`A026436(A028310(n))^and(1, A000051(n))`
-/

namespace A026432.P6239325506442901731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026436 (A028310 n).toNat : ℚ) ^ (Int.land 1 (A000051 n) : ℤ)

end

end A026432.P6239325506442901731

/-!
# A026433: a(n) = least positive integer > a(n-1) and not a(i)*a(j)-1 for 1<=i

The programs for A026433, there is no canonical definition to state claims against.
-/

/-! ## A026433.P15543915721054264513

`A026431(n+2)`
-/

namespace A026433.P15543915721054264513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026431 (n + 2)

end

end A026433.P15543915721054264513

/-! ## A026433.P3608121609029349624

`record[A026431(A028310(n)*A054977(n))]`
-/

namespace A026433.P3608121609029349624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026431 (A028310 n * A054977 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026433.P3608121609029349624

/-! ## A026433.P4677844149750767563

`record[A026431(A266977(abs(1-n)))]`
-/

namespace A026433.P4677844149750767563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026431 (A266977 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026433.P4677844149750767563

/-! ## A026433.P11289478202022094876

`record[A026431(A008619(n)*A054977(n))]`
-/

namespace A026433.P11289478202022094876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026431 (A008619 n * A054977 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026433.P11289478202022094876

/-! ## A026433.P11513949382436758838

`record[A026431(A286626(A286626(n)))]`
-/

namespace A026433.P11513949382436758838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026431 (A286626 (A286626 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026433.P11513949382436758838

/-! ## A026433.P16617194545559445547

`record[A026431(A028920(A005408(n)))]`
-/

namespace A026433.P16617194545559445547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026431 (A028920 (A005408 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026433.P16617194545559445547

/-! ## A026433.P5476267384818931226

`record[A026431(A143182(A000124(n)))]`
-/

namespace A026433.P5476267384818931226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026431 (A143182 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026433.P5476267384818931226

/-! ## A026433.P14751589510284388083

`record[A026431(A028920(A008619(n)))]`
-/

namespace A026433.P14751589510284388083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026431 (A028920 (A008619 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026433.P14751589510284388083

/-!
# A026434: a(n) = least positive integer > a(n-1) and not a(i)*a(j)-1 for 1<=i

The programs for A026434, there is no canonical definition to state claims against.
-/

/-! ## A026434.P4474018944644283437

`(A026419(n+2)-1)%record[A259175(n+1)]`
-/

namespace A026434.P4474018944644283437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259175 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026419 (n + 2) - 1) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A026434.P4474018944644283437

/-! ## A026434.P16941280223023753247

`A026505(n+2)%A239258(n+3)`
-/

namespace A026434.P16941280223023753247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026505 (n + 2)) (A239258 (n + 3))

end

end A026434.P16941280223023753247

/-!
# A026435: a(n) = least positive integer > a(n-1) and not a(i)*a(j)-1 for 1<=i

The programs for A026435, there is no canonical definition to state claims against.
-/

/-! ## A026435.P9774684341513675783

`lt[A349801(A366620(3*(n+1))), A339658(n+1)]`
-/

namespace A026435.P9774684341513675783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349801 (A366620 (3 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339658 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A026435.P9774684341513675783

/-! ## A026435.P2886217305582301601

`lt[A349054(A366620(3*(n+1))), A350355(n+2)]`
-/

namespace A026435.P2886217305582301601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349054 (A366620 (3 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350355 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A026435.P2886217305582301601

/-! ## A026435.P542423190962073880

`lt[A183063(n+1), A174726(A088635(n))]`
-/

namespace A026435.P542423190962073880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174726 (A088635 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A026435.P542423190962073880

/-! ## A026435.P16624920637935020745

`lt[A152202(A007431(n)), A007431(3*n+1)]`
-/

namespace A026435.P16624920637935020745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152202 (A007431 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007431 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A026435.P16624920637935020745

/-! ## A026435.P2659698528837590309

`lt[A046717(A366620(3*(n+1))), A092867(n+1)]`
-/

namespace A026435.P2659698528837590309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046717 (A366620 (3 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092867 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A026435.P2659698528837590309

/-!
# A026436: a(n) = least positive integer > a(n-1) and not a(i)*a(j)-1 for 1<=i

The programs for A026436, there is no canonical definition to state claims against.
-/

/-! ## A026436.P1817636997633478598

`A026432(n+2)`
-/

namespace A026436.P1817636997633478598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026432 (n + 2)

end

end A026436.P1817636997633478598

/-! ## A026436.P4825366915568621970

`record[A026432(A080513(A028242(n)))]`
-/

namespace A026436.P4825366915568621970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026432 (A080513 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026436.P4825366915568621970

/-! ## A026436.P7810662333518772800

`record[A026432(A266977(A008611(n)))]`
-/

namespace A026436.P7810662333518772800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026432 (A266977 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026436.P7810662333518772800

/-! ## A026436.P5700248805395278816

`record[A026432(A266977(A154958(n)))]`
-/

namespace A026436.P5700248805395278816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026432 (A266977 (A154958 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026436.P5700248805395278816

/-! ## A026436.P17301433281220529159

`record[A026432(A141256(A052938(n)))]`
-/

namespace A026436.P17301433281220529159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026432 (A141256 (A052938 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026436.P17301433281220529159

/-! ## A026436.P3091509868861876383

`record[A026432(A141256(A141256(n)))]`
-/

namespace A026436.P3091509868861876383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026432 (A141256 (A141256 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026436.P3091509868861876383

/-!
# A026437: a(n) = least positive integer > a(n-1) and not a(i)*a(j)-1 for 1 <= i <= j < n, n >= 2, with initial terms 1,2.

The programs for A026437, there is no canonical definition to state claims against.
-/

/-! ## A026437.P8782316543831074728

`∪[A000116(n), A026441(n+1)]`
-/

namespace A026437.P8782316543831074728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000116 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026437.P8782316543831074728

/-! ## A026437.P13782788084931357130

`∪[A000117(n), A026441(n+1)]`
-/

namespace A026437.P13782788084931357130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000117 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026437.P13782788084931357130

/-! ## A026437.P14328352560693405399

`∪[A000984(n), A026441(n+1)]`
-/

namespace A026437.P14328352560693405399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026437.P14328352560693405399

/-! ## A026437.P18011621563417372013

`∪[A001334(n), A026441(n+1)]`
-/

namespace A026437.P18011621563417372013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001334 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026437.P18011621563417372013

/-! ## A026437.P7917887923968177420

`∪[A026441(n+1), A002523(n)]`
-/

namespace A026437.P7917887923968177420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002523 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026437.P7917887923968177420

/-! ## A026437.P15859781263350860066

`∪[A026441(n+1), A002604(n)]`
-/

namespace A026437.P15859781263350860066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002604 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026437.P15859781263350860066

/-! ## A026437.P9324694451556442700

`∪[A008340(n), A026441(n+1)]`
-/

namespace A026437.P9324694451556442700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008340 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026437.P9324694451556442700

/-! ## A026437.P1085259204219950796

`∪[A026441(n+1), A016817(n)]`
-/

namespace A026437.P1085259204219950796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016817 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026437.P1085259204219950796

/-! ## A026437.P1454938880448480558

`A026441(A028310(n))-A000007(n)`
-/

namespace A026437.P1454938880448480558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026441 (A028310 n).toNat - A000007 n

end

end A026437.P1454938880448480558

/-! ## A026437.P2466933318211417077

`A026441(A028310(n))/A054977(n)`
-/

namespace A026437.P2466933318211417077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026441 (A028310 n).toNat : ℚ) / (A054977 n : ℚ)

end

end A026437.P2466933318211417077

/-! ## A026437.P1004798436078012983

`A026441(A000007(n)+n)-A000007(n)`
-/

namespace A026437.P1004798436078012983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026441 (A000007 n + (n : ℤ)).toNat - A000007 n

end

end A026437.P1004798436078012983

/-! ## A026437.P997488564687219023

`record[A026441(A032742(n+1))-A284948(n+1)]`
-/

namespace A026437.P997488564687219023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026441 (A032742 (n + 1)).toNat - A284948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026437.P997488564687219023

/-! ## A026437.P17988728050567740446

`record[A026441(A032742(n+1))^A019429(2*n)]`
-/

namespace A026437.P17988728050567740446
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026441 (A032742 (n + 1)).toNat : ℚ) ^ (A019429 (2 * n) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026437.P17988728050567740446

/-! ## A026437.P17405308825367790329

`record[A026441(A032742(n+1))-A000035(n+1)]`
-/

namespace A026437.P17405308825367790329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026441 (A032742 (n + 1)).toNat - A000035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026437.P17405308825367790329

/-! ## A026437.P6733871384009372691

`record[A026441(A032742(n+1))-A045840(2*n+3)]`
-/

namespace A026437.P6733871384009372691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026441 (A032742 (n + 1)).toNat - A045840 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026437.P6733871384009372691

/-!
# A026438: a(n) = least positive integer > a(n-1) and not a(i)*a(j)-1 for 1 <= i <= j < n, n >= 2, with initial terms 1,3.

The programs for A026438, there is no canonical definition to state claims against.
-/

/-! ## A026438.P3749448409893121847

`∪[A026442(n+1), A001249(n)]`
-/

namespace A026438.P3749448409893121847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026442 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001249 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026438.P3749448409893121847

/-! ## A026438.P16280475412767797220

`∪[A001672(n), A026442(n+1)]`
-/

namespace A026438.P16280475412767797220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001672 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026438.P16280475412767797220

/-! ## A026438.P413379364047150060

`A026442(A028310(n))-A000038(n)`
-/

namespace A026438.P413379364047150060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026442 (A028310 n).toNat - A000038 n

end

end A026438.P413379364047150060

/-! ## A026438.P16468217426989548969

`A026442(A028310(n))%A016789(n)`
-/

namespace A026438.P16468217426989548969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026442 (A028310 n).toNat) (A016789 n)

end

end A026438.P16468217426989548969

/-! ## A026438.P3808805037330430005

`record[A026442(A032742(n+1))-A000038(n)]`
-/

namespace A026438.P3808805037330430005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026442 (A032742 (n + 1)).toNat - A000038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026438.P3808805037330430005

/-! ## A026438.P2556248487049972016

`record[A026442(A032742(n+1))%A016789(n)]`
-/

namespace A026438.P2556248487049972016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026442 (A032742 (n + 1)).toNat) (A016789 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026438.P2556248487049972016

/-! ## A026438.P12489870527534254876

`A026442(A065033(2*n))%∑[A007918(n)]`
-/

namespace A026438.P12489870527534254876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026442 (A065033 (2 * n)).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A026438.P12489870527534254876

/-! ## A026438.P12988140162854455619

`A026442(A065033(2*n))^A057979(A058263(n+1))`
-/

namespace A026438.P12988140162854455619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026442 (A065033 (2 * n)).toNat : ℚ) ^ (A057979 (A058263 (n + 1)).toNat : ℤ)

end

end A026438.P12988140162854455619

/-! ## A026438.P14706828317822008539

`record[A026442(A032742(n+1))^A051904(n²+1)]`
-/

namespace A026438.P14706828317822008539
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026442 (A032742 (n + 1)).toNat : ℚ) ^ (A051904 (n ^ 2 + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026438.P14706828317822008539

/-! ## A026438.P10321963630965787025

`record[A026442(A000188(n+1))%A016789(n)]`
-/

namespace A026438.P10321963630965787025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026442 (A000188 (n + 1)).toNat) (A016789 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026438.P10321963630965787025

/-!
# A026439: a(n) = least positive integer > a(n-1) and not a(i)*a(j)-1 for 1 <= i <= j < n, n >= 2, with initial terms 2,3.

The programs for A026439, there is no canonical definition to state claims against.
-/

/-! ## A026439.P8384684316672834571

`eq[A339790(A165886(n)), A377384(n+1)]`
-/

namespace A026439.P8384684316672834571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339790 (A165886 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377384 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A026439.P8384684316672834571

/-! ## A026439.P8236020557008919975

`lt[A351266(A325828(2*n+1)), (3*n)²]`
-/

namespace A026439.P8236020557008919975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351266 (A325828 (2 * n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A026439.P8236020557008919975

/-! ## A026439.P8298472386131992085

`lt[A113315(A084797(n+1)), A006218(n)]`
-/

namespace A026439.P8298472386131992085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113315 (A084797 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A026439.P8298472386131992085

/-! ## A026439.P7114544817516927224

`lt[A173911(n), A117285(A065330(n+1))]`
-/

namespace A026439.P7114544817516927224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173911 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117285 (A065330 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A026439.P7114544817516927224

/-! ## A026439.P11258728403815467587

`lt[A007955(n+1), A019586(A175254(n+2))]`
-/

namespace A026439.P11258728403815467587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019586 (A175254 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A026439.P11258728403815467587

/-!
# A026440: a(n) = least positive integer > a(n-1) and not a(i)*a(j)-1 for 1 <= i <= j < n, n >= 2, with initial terms 1,4.

The programs for A026440, there is no canonical definition to state claims against.
-/

/-! ## A026440.P15093870483197168182

`lt[A033676(n+1), A341595(A162532(2*n+1))]`
-/

namespace A026440.P15093870483197168182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341595 (A162532 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A026440.P15093870483197168182

/-! ## A026440.P13649041680471548608

`A026425(n+2)-a(A081221(A176911(n+1)))` with `a(0)=1`
-/

namespace A026440.P13649041680471548608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026425 (n + 2) - a (A081221 (A176911 (n + 1)).toNat).toNat

end

end A026440.P13649041680471548608

/-! ## A026440.P12330010952491988157

`eq[A068189(A028394(n)), A349378(n+1)]`
-/

namespace A026440.P12330010952491988157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068189 (A028394 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349378 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A026440.P12330010952491988157

/-! ## A026440.P13580055051813395570

`eq[A321527(A321523(n+1)), A349378(n+1)]`
-/

namespace A026440.P13580055051813395570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321527 (A321523 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349378 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A026440.P13580055051813395570

/-! ## A026440.P2126330016729859963

`A026425(n+2)-A131843(A185615(n+1))`
-/

namespace A026440.P2126330016729859963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026425 (n + 2) - A131843 (A185615 (n + 1)).toNat

end

end A026440.P2126330016729859963

/-!
# A026441: a(n) = least positive integer > a(n-1) and not a(i)*a(j)-1 for 1 <= i <= j < n, n >= 2, with initial terms 2,4.

The programs for A026441, there is no canonical definition to state claims against.
-/

/-! ## A026441.P10296039319831797156

`A026437(n+2)`
-/

namespace A026441.P10296039319831797156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026437 (n + 2)

end

end A026441.P10296039319831797156

/-! ## A026441.P5743978965098383465

`record[A026437(A028310(n)*A054977(n))]`
-/

namespace A026441.P5743978965098383465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026437 (A028310 n * A054977 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026441.P5743978965098383465

/-! ## A026441.P17463765121271524637

`record[A026437(A080513(A004442(n)))]`
-/

namespace A026441.P17463765121271524637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026437 (A080513 (A004442 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026441.P17463765121271524637

/-! ## A026441.P13794746153286953011

`record[A026437(A028242(A133265(n)))]`
-/

namespace A026441.P13794746153286953011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026437 (A028242 (A133265 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026441.P13794746153286953011

/-! ## A026441.P2381659951385789792

`record[A026437(A233583(A331742(n)))]`
-/

namespace A026441.P2381659951385789792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026437 (A233583 (A331742 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026441.P2381659951385789792

/-! ## A026441.P5523644894608602399

`record[A026437(A137735(A048448(n)))]`
-/

namespace A026441.P5523644894608602399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026437 (A137735 (A048448 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026441.P5523644894608602399

/-!
# A026442: a(n) = least positive integer > a(n-1) and not a(i)*a(j)-1 for 1 <= i <= j < n, n >= 2, with initial terms 3,4.

The programs for A026442, there is no canonical definition to state claims against.
-/

/-! ## A026442.P10498259070519809599

`A026438(n+2)`
-/

namespace A026442.P10498259070519809599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026438 (n + 2)

end

end A026442.P10498259070519809599

/-! ## A026442.P1200787587142751746

`record[A026438(A266977(abs(1-n)))]`
-/

namespace A026442.P1200787587142751746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026438 (A266977 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026442.P1200787587142751746

/-! ## A026442.P499861755287442046

`record[A026438(A133310(A133310(n)))]`
-/

namespace A026442.P499861755287442046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026438 (A133310 (A133310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026442.P499861755287442046

/-! ## A026442.P17976432156993480112

`record[A026438(A028920(A005408(n)))]`
-/

namespace A026442.P17976432156993480112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026438 (A028920 (A005408 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026442.P17976432156993480112

/-! ## A026442.P10435224520115202816

`∑{e}[A020707(n), A026438(#)]`
-/

namespace A026442.P10435224520115202816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A026438 (Nat.factorization (f1 n).natAbs p)

end

end A026442.P10435224520115202816

/-!
# A026443: a(n) = least positive integer > a(n-1) and not a(i)*a(j)+2 for 1<=i

The programs for A026443, there is no canonical definition to state claims against.
-/

/-! ## A026443.P15399328782368866665

`eq[A007814(A122599(n+1)), A263243(n)]`
-/

namespace A026443.P15399328782368866665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A122599 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263243 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A026443.P15399328782368866665

/-! ## A026443.P5210108836126193222

`∑[A065941(A127907(2*n+3)+5)]`
-/

namespace A026443.P5210108836126193222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065941 (A127907 (2 * n + 3) + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026443.P5210108836126193222

/-! ## A026443.P1202794998506597719

`eq[A011672(n), A341979(A297208(n))]`
-/

namespace A026443.P1202794998506597719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011672 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341979 ((A297208 n).toNat + 59)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A026443.P1202794998506597719

/-!
# A026444: a(n) = least positive integer > a(n-1) and not a(i)*a(j)+2 for 1<=i

The programs for A026444, there is no canonical definition to state claims against.
-/

/-! ## A026444.P14685624881322948452

`A131055(n+1)+record[A358476(n+1)]`
-/

namespace A026444.P14685624881322948452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358476 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131055 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026444.P14685624881322948452

/-! ## A026444.P16859114746000520901

`A214922(A004277(n)+A000034(n))`
-/

namespace A026444.P16859114746000520901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214922 (A004277 n + A000034 n).toNat

end

end A026444.P16859114746000520901

/-! ## A026444.P9352600602874430910

`lt[A159499(n+2), A159494(n+1)]`
-/

namespace A026444.P9352600602874430910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159499 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159494 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A026444.P9352600602874430910

/-! ## A026444.P5498006915799860840

`∑[A185312(A119479(n+1))]`
-/

namespace A026444.P5498006915799860840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185312 (A119479 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026444.P5498006915799860840

/-! ## A026444.P14402685736878877562

`lt[A105524(n), A105523(n)%A306975(n+1)]`
-/

namespace A026444.P14402685736878877562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105524 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105523 n) (A306975 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A026444.P14402685736878877562

/-!
# A026445: a(n) = least positive integer > a(n-1) and not a(i)*a(j)+2 for 1<=i

The programs for A026445, there is no canonical definition to state claims against.
-/

/-! ## A026445.P8338046927910732404

`∑{e}[A005010(n), A026477(#)]`
-/

namespace A026445.P8338046927910732404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005010 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A026477 (Nat.factorization (f1 n).natAbs p)

end

end A026445.P8338046927910732404

/-! ## A026445.P9563684830654498066

`A031285(A089237(n+1)+1)`
-/

namespace A026445.P9563684830654498066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031285 (A089237 (n + 1) + 1).toNat

end

end A026445.P9563684830654498066

/-! ## A026445.P6354566984476550078

`A040001(A292986(2*n+5))+lt[∏{d}[n, -#], n+2]`
-/

namespace A026445.P6354566984476550078
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), (-(d : ℤ))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A292986 (2 * n + 5)).toNat + (SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n : ℤ)

end

end A026445.P6354566984476550078

/-! ## A026445.P2012042288092627346

`A089237(n+1)+A000005(A014210(n))`
-/

namespace A026445.P2012042288092627346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089237 (n + 1) + A000005 (A014210 n).toNat

end

end A026445.P2012042288092627346

/-! ## A026445.P14432037337985043173

`A089237(n+1)+A000122(A016958(n))`
-/

namespace A026445.P14432037337985043173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089237 (n + 1) + A000122 (A016958 n).toNat

end

end A026445.P14432037337985043173

/-!
# A026446: a(n) = least positive integer > a(n-1) and not a(i)*a(j)+2 for 1<=i

The programs for A026446, there is no canonical definition to state claims against.
-/

/-! ## A026446.P16681957905664076820

`lt[A279951(n)², A278922(3*n+4)]`
-/

namespace A026446.P16681957905664076820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279951 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278922 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A026446.P16681957905664076820

/-! ## A026446.P16303960683569808094

`lt[A014682(A339421(n)), A018783(n+1)]`
-/

namespace A026446.P16303960683569808094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A339421 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A026446.P16303960683569808094

/-! ## A026446.P2386584077386071322

`lt[A094967(A065423(n+1)), A340952(n+7)]`
-/

namespace A026446.P2386584077386071322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094967 (A065423 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340952 (n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A026446.P2386584077386071322

/-! ## A026446.P7163708514289093338

`lt[4, a(n-2)+3-floor(n/(xor(n, n+1)+1))]` with `a(0)=3, a(1)=1`
-/

namespace A026446.P7163708514289093338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f2 =>
  f2 (n - 2) + 3 - ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A026446.P7163708514289093338

/-! ## A026446.P8537702338435064397

`∑[gcd(2, ∑[A018690(n+5)])]`
-/

namespace A026446.P8537702338435064397
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018690 (n + 5)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026446.P8537702338435064397

/-!
# A026447: a(n) = least positive integer > a(n-1) and not a(i)*a(j)+2 for 1<=i

The programs for A026447, there is no canonical definition to state claims against.
-/

/-! ## A026447.P6700294802651951210

`eq[1, A347447(2*(n+1))]+3`
-/

namespace A026447.P6700294802651951210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347447 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3

end

end A026447.P6700294802651951210

/-! ## A026447.P12353043515560061747

`lt[A320732(2*(n+1)), 4]+3`
-/

namespace A026447.P12353043515560061747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320732 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 3

end

end A026447.P12353043515560061747

/-! ## A026447.P2296684963977708352

`lt[A327400(2*(n+1)), 4]+3`
-/

namespace A026447.P2296684963977708352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327400 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 3

end

end A026447.P2296684963977708352

/-! ## A026447.P6726810658433692401

`record[(n+3)/A347447(2*n+2)]`
-/

namespace A026447.P6726810658433692401
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / (A347447 (2 * n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026447.P6726810658433692401

/-! ## A026447.P5659959214872641210

`A052938(eq[A158416(n), A347447(n+1)])`
-/

namespace A026447.P5659959214872641210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347447 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A026447.P5659959214872641210

/-!
# A026448: a(n) = least positive integer > a(n-1) and not a(i)*a(j)+2 for i<=1<=j<=n.

The programs for A026448, there is no canonical definition to state claims against.
-/

/-! ## A026448.P6246759092463725844

`eq[A000035(A000292(n)), A127254(n)]`
-/

namespace A026448.P6246759092463725844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A000292 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127254 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A026448.P6246759092463725844

/-! ## A026448.P189385047525620882

`eq[A010873(A000578(n)), A127254(n)]`
-/

namespace A026448.P189385047525620882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A000578 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127254 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A026448.P189385047525620882

/-! ## A026448.P9400444703086521994

`eq[A000035(A105163(n+1)), A254655(n+1)]`
-/

namespace A026448.P9400444703086521994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A105163 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254655 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A026448.P9400444703086521994

/-! ## A026448.P2431325574384505282

`eq[A010137(A178946(n+1)), A254655(n+1)]`
-/

namespace A026448.P2431325574384505282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010137 (A178946 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254655 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A026448.P2431325574384505282

/-! ## A026448.P15785823745927516379

`lt[A127252(2*n), A073575(A277698(n+1))]`
-/

namespace A026448.P15785823745927516379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127252 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073575 (A277698 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A026448.P15785823745927516379

/-!
# A026449: a(n) = least positive integer > a(n-1) and not a(i)*a(j)+2 for i<=1<=j<=n, n >= 2/.

The programs for A026449, there is no canonical definition to state claims against.
-/

/-! ## A026449.P8345630644072571586

`A186729(A211964(n+2))+comp[or(2, n)-1]`
-/

namespace A026449.P8345630644072571586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186729 (A211964 (n + 2)).toNat + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A026449.P8345630644072571586

/-! ## A026449.P16933716229417932568

`A186729(A211964(n+2))+A014601(n)`
-/

namespace A026449.P16933716229417932568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186729 (A211964 (n + 2)).toNat + A014601 n

end

end A026449.P16933716229417932568

/-! ## A026449.P13045563525040208421

`A014601(n)+A107463(A002266(n))^n²`
-/

namespace A026449.P13045563525040208421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n + A107463 (A002266 n).toNat ^ n ^ 2

end

end A026449.P13045563525040208421

/-! ## A026449.P9898527102871632820

`A042964(n+2)-2-A132138(A000032(n))`
-/

namespace A026449.P9898527102871632820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042964 (n + 2) - 2 - A132138 (A000032 n).toNat

end

end A026449.P9898527102871632820

/-! ## A026449.P2130138868210361606

`2*n+A000034(n)-A132138(A000032(n))`
-/

namespace A026449.P2130138868210361606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (A000034 n - A132138 (A000032 n).toNat)

end

end A026449.P2130138868210361606

/-!
# A026451: a(n) = least positive integer > a(n-1) and not a(i)*a(j)+2 for i<=1<=j<=n, n >= 2.

The programs for A026451, there is no canonical definition to state claims against.
-/

/-! ## A026451.P9922705541634508763

`lt[A279861(n+1), A231846(A325969(n+1))]`
-/

namespace A026451.P9922705541634508763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279861 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231846 (A325969 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A026451.P9922705541634508763

/-!
# A026452: a(n) = least positive integer > a(n-1) and not a(i)*a(j)+2 for i<=1<=j<=n.

The programs for A026452, there is no canonical definition to state claims against.
-/

/-! ## A026452.P3769111253727508101

`A254636(A077342(n+1))+3`
-/

namespace A026452.P3769111253727508101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254636 (A077342 (n + 1)).toNat + 3

end

end A026452.P3769111253727508101

/-! ## A026452.P5325688916626747717

`eq[A034574(n+1), A255361(n)]+3`
-/

namespace A026452.P5325688916626747717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255361 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 3

end

end A026452.P5325688916626747717

/-! ## A026452.P8217293648822158584

`record[n+4-A184786(A318810(n+1))]`
-/

namespace A026452.P8217293648822158584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 4 : ℤ) - A184786 (A318810 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026452.P8217293648822158584

/-! ## A026452.P10938111037827407351

`A254636(n+1)%A259428(3*n+2)+3`
-/

namespace A026452.P10938111037827407351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254636 (n + 1)) (A259428 (3 * n + 2)) + 3

end

end A026452.P10938111037827407351

/-! ## A026452.P17305042343892644197

`A254636(n+1)+A151850(∑[A151838(n)])`
-/

namespace A026452.P17305042343892644197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151838 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254636 (n + 1) + A151850 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A026452.P17305042343892644197

/-!
# A026453: a(n) = least positive integer > a(n-1) and not equal to a(i)*a(j)-2 for 1<=i

The programs for A026453, there is no canonical definition to state claims against.
-/

/-! ## A026453.P4744550941646064471

`∪[A000998(n), A026455(n+1)]`
-/

namespace A026453.P4744550941646064471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000998 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026453.P4744550941646064471

/-! ## A026453.P16165715403318757918

`∪[A001334(n), A026455(n+1)]`
-/

namespace A026453.P16165715403318757918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001334 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026453.P16165715403318757918

/-! ## A026453.P3419434047323564129

`∪[A001352(n), A026455(n+1)]`
-/

namespace A026453.P3419434047323564129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001352 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026453.P3419434047323564129

/-! ## A026453.P2175989602408113490

`∪[A026455(n+1), A010970(n)]`
-/

namespace A026453.P2175989602408113490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026455 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010970 (n + 17)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026453.P2175989602408113490

/-! ## A026453.P5755118342563905565

`∪[A017079(n), A026455(n+1)]`
-/

namespace A026453.P5755118342563905565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026453.P5755118342563905565

/-! ## A026453.P15208324128549427473

`A026455(A028310(n))-A000007(n)`
-/

namespace A026453.P15208324128549427473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026455 (A028310 n).toNat - A000007 n

end

end A026453.P15208324128549427473

/-! ## A026453.P5476558368370557362

`A026455(A028310(n))/A054977(n)`
-/

namespace A026453.P5476558368370557362
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026455 (A028310 n).toNat : ℚ) / (A054977 n : ℚ)

end

end A026453.P5476558368370557362

/-! ## A026453.P3948733900579532401

`A026455(A028310(n))/A000038(n)!`
-/

namespace A026453.P3948733900579532401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026455 (A028310 n).toNat : ℚ) / (Nat.factorial (A000038 n).toNat : ℚ)

end

end A026453.P3948733900579532401

/-! ## A026453.P6233914170057177559

`A026455(A000007(n)+n)-A000007(n)`
-/

namespace A026453.P6233914170057177559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026455 (A000007 n + (n : ℤ)).toNat - A000007 n

end

end A026453.P6233914170057177559

/-! ## A026453.P7211782600112645655

`A026455(A000038(n)+n)-A000038(n)`
-/

namespace A026453.P7211782600112645655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026455 (A000038 n + (n : ℤ)).toNat - A000038 n

end

end A026453.P7211782600112645655

/-! ## A026453.P4231255964828995812

`A026455(A000038(n)+n)%A026455(n+1)`
-/

namespace A026453.P4231255964828995812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026455 (A000038 n + (n : ℤ)).toNat) (A026455 (n + 1))

end

end A026453.P4231255964828995812

/-! ## A026453.P7844904997711046684

`record[A026455(A344180(n))-A000007(n)]`
-/

namespace A026453.P7844904997711046684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026455 (A344180 n).toNat - A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026453.P7844904997711046684

/-! ## A026453.P11530533522020401320

`record[A026455(A032742(n+1))-A014149(n)]`
-/

namespace A026453.P11530533522020401320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026455 (A032742 (n + 1)).toNat - A014149 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026453.P11530533522020401320

/-! ## A026453.P7976162397158812056

`record[A026455(A344180(n+1))-A049084(2*(n+1))]`
-/

namespace A026453.P7976162397158812056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026455 (A344180 (n + 1)).toNat - A049084 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026453.P7976162397158812056

/-! ## A026453.P260221073212733808

`A026455(A193739(∑[n]))%(n+1)+n+1`
-/

namespace A026453.P260221073212733808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026455 (A193739 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat) (n + 1 : ℤ) + (n + 1 : ℤ)

end

end A026453.P260221073212733808

/-! ## A026453.P7380988801451145966

`A026455(A193739(∑[n]))-A000007(n)`
-/

namespace A026453.P7380988801451145966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026455 (A193739 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat - A000007 n

end

end A026453.P7380988801451145966

/-! ## A026453.P2951230056640806712

`A026455(A193739(∑[n]))/A054977(n)`
-/

namespace A026453.P2951230056640806712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026455 (A193739 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat : ℚ) / (A054977 n : ℚ)

end

end A026453.P2951230056640806712

/-! ## A026453.P14689543776051309412

`A026455(A193739(∑[n]))-A285982(3*n)`
-/

namespace A026453.P14689543776051309412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026455 (A193739 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat - A285982 (3 * n)

end

end A026453.P14689543776051309412

/-!
# A026454: a(n) = least positive integer > a(n-1) and not equal to a(i)*a(j)-2 for 1<=i

The programs for A026454, there is no canonical definition to state claims against.
-/

/-! ## A026454.P13420934886470568982

`∪[A000998(n), A026458(n+1)]`
-/

namespace A026454.P13420934886470568982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000998 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026454.P13420934886470568982

/-! ## A026454.P5748363325782367064

`∪[A001394(n), A026458(n+1)]`
-/

namespace A026454.P5748363325782367064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001394 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026454.P5748363325782367064

/-! ## A026454.P474137304155350644

`∪[A001655(n), A026458(n+1)]`
-/

namespace A026454.P474137304155350644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001655 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026454.P474137304155350644

/-! ## A026454.P11215229924831324031

`∪[A026458(n+1), A016817(n)]`
-/

namespace A026454.P11215229924831324031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016817 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026454.P11215229924831324031

/-! ## A026454.P13035697669048906841

`A026458(A028310(n))%∑[n+2]`
-/

namespace A026454.P13035697669048906841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026458 (A028310 n).toNat) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A026454.P13035697669048906841

/-! ## A026454.P6048078949593600490

`A026458(A028310(n))-A000038(n)`
-/

namespace A026454.P6048078949593600490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026458 (A028310 n).toNat - A000038 n

end

end A026454.P6048078949593600490

/-! ## A026454.P309617287893349014

`A026458(A028310(n))^A057428(n)²`
-/

namespace A026454.P309617287893349014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026458 (A028310 n).toNat : ℚ) ^ (A057428 n ^ 2 : ℤ)

end

end A026454.P309617287893349014

/-! ## A026454.P9964586686224299175

`A026458(A000038(n)+n)%A026458(n+1)`
-/

namespace A026454.P9964586686224299175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026458 (A000038 n + (n : ℤ)).toNat) (A026458 (n + 1))

end

end A026454.P9964586686224299175

/-! ## A026454.P16107597330273482672

`A026458(A028310(n))^A001222(A002233(n+1))`
-/

namespace A026454.P16107597330273482672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026458 (A028310 n).toNat : ℚ) ^ (A001222 (A002233 (n + 1)).toNat : ℤ)

end

end A026454.P16107597330273482672

/-! ## A026454.P17634718040336780666

`record[A026458(A344180(n))-A000038(n)]`
-/

namespace A026454.P17634718040336780666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026458 (A344180 n).toNat - A000038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026454.P17634718040336780666

/-! ## A026454.P13688951359461665837

`record[A026458(A344180(n))%A016789(n)]`
-/

namespace A026454.P13688951359461665837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026458 (A344180 n).toNat) (A016789 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026454.P13688951359461665837

/-! ## A026454.P11304043786328671292

`gcd(A000038(n²), A026458(A028310(n)))`
-/

namespace A026454.P11304043786328671292
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 (n ^ 2)) (A026458 (A028310 n).toNat)

end

end A026454.P11304043786328671292

/-! ## A026454.P5227973055597453737

`A026458(A137734(n²))%A026351(A026351(n))`
-/

namespace A026454.P5227973055597453737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026458 (A137734 (n ^ 2)).toNat) (A026351 (A026351 n).toNat)

end

end A026454.P5227973055597453737

/-!
# A026455: a(n) = least positive integer < a(n-1) and not a(i)*a(j)-2 for 1<=i

The programs for A026455, there is no canonical definition to state claims against.
-/

/-! ## A026455.P18358080442575207192

`A026453(n+2)`
-/

namespace A026455.P18358080442575207192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026453 (n + 2)

end

end A026455.P18358080442575207192

/-! ## A026455.P14493953007986216816

`record[A026453(xor(n, A000038(n)))]`
-/

namespace A026455.P14493953007986216816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026453 (Int.xor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026455.P14493953007986216816

/-! ## A026455.P18267305325770569141

`record[A026453(A028310(n)*A054977(n))]`
-/

namespace A026455.P18267305325770569141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026453 (A028310 n * A054977 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026455.P18267305325770569141

/-! ## A026455.P12375814394439251488

`record[A026453(A054977(n)*A344180(n))]`
-/

namespace A026455.P12375814394439251488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026453 (A054977 n * A344180 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026455.P12375814394439251488

/-! ## A026455.P17588087126209622641

`A026453(log2(A020707(n)))%A020707(n)`
-/

namespace A026455.P17588087126209622641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026453 (SequenceMachineLib.roundAway (Real.logb 2 (A020707 n : ℝ))).toNat) (A020707 n)

end

end A026455.P17588087126209622641

/-! ## A026455.P5009384028295857660

`record[A026453(A000267(A025840(n)))]`
-/

namespace A026455.P5009384028295857660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026453 (A000267 (A025840 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026455.P5009384028295857660

/-!
# A026456: a(n) = least positive integer < a(n-1) and not a(i)*a(j)-2 for 1<=i

The programs for A026456, there is no canonical definition to state claims against.
-/

/-! ## A026456.P8147293564824442995

`lt[Δ[A343104(n+2)], A343092(3*(n+1))]`
-/

namespace A026456.P8147293564824442995
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343104 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343092 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A026456.P8147293564824442995

/-! ## A026456.P11788924391152860541

`lt[A115408(A000010(n+1)), A325106(2*(n+2))]`
-/

namespace A026456.P11788924391152860541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115408 (A000010 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325106 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A026456.P11788924391152860541

/-! ## A026456.P5734151536069193689

`lt[A112379(3*n+4), A138576(∏{e}[n+1, #+1])]`
-/

namespace A026456.P5734151536069193689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112379 (3 * n + 4)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138576 (∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A026456.P5734151536069193689

/-! ## A026456.P17682315069824164042

`lt[A003106(n), A051712(A182402(n+1))]`
-/

namespace A026456.P17682315069824164042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003106 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051712 (A182402 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A026456.P17682315069824164042

/-! ## A026456.P11523214934305073706

`lt[A108964(A344859(n+3)), A036582(n)]`
-/

namespace A026456.P11523214934305073706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108964 (A344859 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036582 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A026456.P11523214934305073706

/-!
# A026457: a(n) = least positive integer < a(n-1) and not a(i)*a(j)-2 for 1<=i

The programs for A026457, there is no canonical definition to state claims against.
-/

/-! ## A026457.P8411199609450641285

`A053661(n+1)+∏{p}[2^n, #]`
-/

namespace A026457.P8411199609450641285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053661 (n + 1) + ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ)

end

end A026457.P8411199609450641285

/-! ## A026457.P14481667832471296783

`∑[A014675(2*A195024(n))]`
-/

namespace A026457.P14481667832471296783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014675 (2 * A195024 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026457.P14481667832471296783

/-! ## A026457.P1164719051759968326

`A053661(n+1)+A020639(A117633(n))`
-/

namespace A026457.P1164719051759968326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053661 (n + 1) + A020639 (A117633 n).toNat

end

end A026457.P1164719051759968326

/-! ## A026457.P911093584961382526

`A266256(A002790(n))+A053661(n+1)`
-/

namespace A026457.P911093584961382526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266256 (A002790 n).toNat + A053661 (n + 1)

end

end A026457.P911093584961382526

/-!
# A026458: a(n) = least positive integer > a(n-1) and not a(i)*a(j)-2 for 1<=i

The programs for A026458, there is no canonical definition to state claims against.
-/

/-! ## A026458.P8466754592362694656

`A026454(n+2)`
-/

namespace A026458.P8466754592362694656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026454 (n + 2)

end

end A026458.P8466754592362694656

/-! ## A026458.P1524478369408249637

`record[A026454(A080513(A004442(n)))]`
-/

namespace A026458.P1524478369408249637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026454 (A080513 (A004442 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026458.P1524478369408249637

/-! ## A026458.P14950614050206570909

`record[A026454(A103391(A004768(n)))]`
-/

namespace A026458.P14950614050206570909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026454 (A103391 (A004768 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026458.P14950614050206570909

/-! ## A026458.P1591508408115141822

`record[A026454(A080513(A028242(n)))]`
-/

namespace A026458.P1591508408115141822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026454 (A080513 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026458.P1591508408115141822

/-! ## A026458.P15668594751681617205

`record[A026454(A080513(A123108(n)))]`
-/

namespace A026458.P15668594751681617205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026454 (A080513 (A123108 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026458.P15668594751681617205

/-! ## A026458.P11482021595151845817

`record[A026454(A080513(A008624(n)))]`
-/

namespace A026458.P11482021595151845817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026454 (A080513 (A008624 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026458.P11482021595151845817

/-! ## A026458.P5291693324730402811

`record[A026454(A304745(A080513(n)))]`
-/

namespace A026458.P5291693324730402811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026454 (A304745 (A080513 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026458.P5291693324730402811

/-! ## A026458.P14867669359361005057

`record[A026454(A080513(A056753(n)))]`
-/

namespace A026458.P14867669359361005057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026454 (A080513 (A056753 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026458.P14867669359361005057

/-!
# A026460: a(n) = least positive integer > a(n-1) and not a(i)*a(j)-2 for 1<=i<=j<=n, n >= 2.

The programs for A026460, there is no canonical definition to state claims against.
-/

/-! ## A026460.P8396757408990083361

`∪[A000998(n), A026464(n+1)]`
-/

namespace A026460.P8396757408990083361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000998 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026464 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026460.P8396757408990083361

/-! ## A026460.P10409535998407729306

`∪[A001655(n), A026464(n+1)]`
-/

namespace A026460.P10409535998407729306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001655 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026464 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026460.P10409535998407729306

/-! ## A026460.P11624327593188384902

`∪[A008340(n), A026464(n+1)]`
-/

namespace A026460.P11624327593188384902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008340 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026464 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026460.P11624327593188384902

/-! ## A026460.P15084111584156207000

`∪[A017079(n), A026464(n+1)]`
-/

namespace A026460.P15084111584156207000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026464 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026460.P15084111584156207000

/-! ## A026460.P17785995109227991929

`∪[A026464(n+1), A017284(n)]`
-/

namespace A026460.P17785995109227991929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026464 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017284 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026460.P17785995109227991929

/-! ## A026460.P1927684851680814123

`A026464(A028310(n))%∑[n+2]`
-/

namespace A026460.P1927684851680814123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026464 (A028310 n).toNat) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A026460.P1927684851680814123

/-! ## A026460.P9094515561017870823

`A026464(A028310(n))-A000038(n)`
-/

namespace A026460.P9094515561017870823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026464 (A028310 n).toNat - A000038 n

end

end A026460.P9094515561017870823

/-! ## A026460.P5047963593744513944

`A026464(A028310(n))^and(1, A267317(n))`
-/

namespace A026460.P5047963593744513944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026464 (A028310 n).toNat : ℚ) ^ (Int.land 1 (A267317 n) : ℤ)

end

end A026460.P5047963593744513944

/-! ## A026460.P6130452237798637394

`A026464(A028310(n))^A019426(A005843(n))`
-/

namespace A026460.P6130452237798637394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026464 (A028310 n).toNat : ℚ) ^ (A019426 (A005843 n).toNat : ℤ)

end

end A026460.P6130452237798637394

/-! ## A026460.P13597680493187549573

`A026464(A028310(n))^A001221(A000015(n+1))`
-/

namespace A026460.P13597680493187549573
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026464 (A028310 n).toNat : ℚ) ^ (A001221 (A000015 (n + 1)).toNat : ℤ)

end

end A026460.P13597680493187549573

/-! ## A026460.P15743419735125588664

`A026464(A028310(n))^A001221(A000961(n+1))`
-/

namespace A026460.P15743419735125588664
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026464 (A028310 n).toNat : ℚ) ^ (A001221 (A000961 (n + 1)).toNat : ℤ)

end

end A026460.P15743419735125588664

/-! ## A026460.P5852383251673835236

`record[A026464(A344180(n))%A016789(n)]`
-/

namespace A026460.P5852383251673835236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026464 (A344180 n).toNat) (A016789 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026460.P5852383251673835236

/-! ## A026460.P14220248166782712193

`A026464(A028310(n))/A014963(A000217(n+2))`
-/

namespace A026460.P14220248166782712193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026464 (A028310 n).toNat : ℚ) / (A014963 (A000217 (n + 2)).toNat : ℚ)

end

end A026460.P14220248166782712193

/-!
# A026461: a(n) = least positive integer > a(n-1) and not a(i)*a(j)-2 for 1<=i<=j<=n.

The programs for A026461, there is no canonical definition to state claims against.
-/

/-! ## A026461.P1029415946847610886

`lt[A239957(A096895(2*(n+2))), n]`
-/

namespace A026461.P1029415946847610886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239957 (A096895 (2 * (n + 2))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A026461.P1029415946847610886

/-! ## A026461.P13996879108537149576

`lt[A124458(2*n+5), Δ[A091029(n+2)]]`
-/

namespace A026461.P13996879108537149576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124458 (2 * n + 5)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091029 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A026461.P13996879108537149576

/-! ## A026461.P11974635953444301531

`lt[A163671(A358424(n+1)+A057546(n)), 3]+1`
-/

namespace A026461.P11974635953444301531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163671 (A358424 (n + 1) + A057546 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A026461.P11974635953444301531

/-! ## A026461.P2328346713809851836

`A325442(n+1)+A294886(A265791(n+2))`
-/

namespace A026461.P2328346713809851836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325442 (n + 1) + A294886 (A265791 (n + 2)).toNat

end

end A026461.P2328346713809851836

/-! ## A026461.P11273455006130168124

`lt[A162724(n+1), A082043(A002760(n+1))]`
-/

namespace A026461.P11273455006130168124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162724 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082043 (A002760 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A026461.P11273455006130168124

/-!
# A026462: a(n) = least positive integer > a(n-1) and not a(i)*a(j)-2 for 1<=i<=j<=n, n >= 2.

The programs for A026462, there is no canonical definition to state claims against.
-/

/-! ## A026462.P16234380991507434726

`A026440(n+2)-A047789(A303822(2*n+1))`
-/

namespace A026462.P16234380991507434726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026440 (n + 2) - A047789 (A303822 (2 * n + 1)).toNat

end

end A026462.P16234380991507434726

/-! ## A026462.P13106900766196870107

`eq[A068189(A028394(n)), A349378(n+2)]`
-/

namespace A026462.P13106900766196870107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068189 (A028394 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349378 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A026462.P13106900766196870107

/-! ## A026462.P7922552987335589336

`lt[A248137(3*n+5), A346993(A055944(n+2))]`
-/

namespace A026462.P7922552987335589336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248137 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346993 (A055944 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A026462.P7922552987335589336

/-!
# A026464: a(n) = least positive integer > a(n-1) and not a(i)*a(j)-2 for 1<=i<=j<=n.

The programs for A026464, there is no canonical definition to state claims against.
-/

/-! ## A026464.P10233085163323512057

`A026460(n+2)`
-/

namespace A026464.P10233085163323512057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026460 (n + 2)

end

end A026464.P10233085163323512057

/-! ## A026464.P12317551266764573894

`record[A026460(A008619(A092486(n)))]`
-/

namespace A026464.P12317551266764573894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026460 (A008619 (A092486 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026464.P12317551266764573894

/-! ## A026464.P15789476737504933556

`record[A026460(A133310(A133310(n)))]`
-/

namespace A026464.P15789476737504933556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026460 (A133310 (A133310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026464.P15789476737504933556

/-! ## A026464.P7392142633875444224

`record[A026460(A080513(A007599(n)))]`
-/

namespace A026464.P7392142633875444224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026460 (A080513 (A007599 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026464.P7392142633875444224

/-! ## A026464.P11610445831986498023

`record[A026460(A080513(A028242(n)))]`
-/

namespace A026464.P11610445831986498023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026460 (A080513 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026464.P11610445831986498023

/-! ## A026464.P14133665991502244798

`record[A026460(A108872(A344180(n)))]`
-/

namespace A026464.P14133665991502244798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026460 (A108872 (A344180 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026464.P14133665991502244798

/-! ## A026464.P13731651036048451429

`record[A026460(A143182(A133263(n)))]`
-/

namespace A026464.P13731651036048451429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026460 (A143182 (A133263 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026464.P13731651036048451429

/-!
# A026465: Length of n-th run of identical symbols in the Thue-Morse sequence A010060 (or A001285).

The programs for A026465, the canonical program `A026465.P4870457713372314206` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026465 has offset 1).

The definition of A026465 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026465.P6341909492161851769

`a(A339584(n))` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A026465.P6341909492161851769
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1] fun n a =>
  a (A339584 n).toNat

end

end A026465.P6341909492161851769

namespace A026465

/-- `a(A339584(n))` -/
def P6341909492161851769.Spec : Prop :=
  ∀ n, (P6341909492161851769.a n : ℤ) = A026465 (n + 1)

end A026465

/-! ## A026465.P3203155491764938380

`ceil(sqrt(A080426(n+1)))`
-/

namespace A026465.P3203155491764938380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A080426 (n + 1) : ℝ)⌉

end

end A026465.P3203155491764938380

namespace A026465

/-- `ceil(sqrt(A080426(n+1)))` -/
def P3203155491764938380.Spec : Prop :=
  ∀ n, P3203155491764938380.a n = A026465 (n + 1)

end A026465

/-! ## A026465.P4870457713372314206

`A191254(A171947(n+1)+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A026465

/-- `A191254(A171947(n+1)+1)` -/
def P4870457713372314206.Spec : Prop :=
  ∀ n, P4870457713372314206.a n = A026465 (n + 1)

theorem P4870457713372314206.correct : P4870457713372314206.Spec := by
  intro n
  simp only [A026465, Nat.add_sub_cancel]

end A026465

/-! ## A026465.P8558584549597460965

`2-A035263(A285385(n+1))`
-/

namespace A026465.P8558584549597460965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A035263 (A285385 (n + 1)).toNat

end

end A026465.P8558584549597460965

namespace A026465

/-- `2-A035263(A285385(n+1))` -/
def P8558584549597460965.Spec : Prop :=
  ∀ n, P8558584549597460965.a n = A026465 (n + 1)

end A026465

/-!
# A026467: a(n) = least positive integer > a(n-1) and not a(i)^2 + a(j)^2 for 1<=i

The programs for A026467, there is no canonical definition to state claims against.
-/

/-! ## A026467.P9006508718501358660

`lt[A000211(A037214(n)), A353867(n+1)]`
-/

namespace A026467.P9006508718501358660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000211 (A037214 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353867 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A026467.P9006508718501358660

/-! ## A026467.P15664537908575234672

`A335523(n+1)+A333257(A303837(3*n+4))`
-/

namespace A026467.P15664537908575234672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335523 (n + 1) + A333257 (A303837 (3 * n + 4)).toNat

end

end A026467.P15664537908575234672

/-! ## A026467.P14928754893829415811

`lt[A108216(3*n+4), A116861(A141112(3*n+4))]`
-/

namespace A026467.P14928754893829415811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108216 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116861 (A141112 (3 * n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A026467.P14928754893829415811

/-! ## A026467.P12968899000611788241

`lt[A193314(A299537(n+1)), A000330(n)]`
-/

namespace A026467.P12968899000611788241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193314 (A299537 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A026467.P12968899000611788241

/-!
# A026468: a(1) = 1, a(2) = 2; for n >= 3, a(n) = least positive integer > a(n-1) and not a(i)^2 + a(j)^2 for 1<=i<=j<=n-1.

The programs for A026468, there is no canonical definition to state claims against.
-/

/-! ## A026468.P7725925051199960858

`eq[A014019(A037214(n)), A178489(n)]`
-/

namespace A026468.P7725925051199960858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014019 (A037214 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178489 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A026468.P7725925051199960858

/-! ## A026468.P8715334773024194853

`∑[A123275(A053735(A061446(n+1)))]`
-/

namespace A026468.P8715334773024194853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123275 (A053735 (A061446 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026468.P8715334773024194853

/-! ## A026468.P10233148878027926609

`lt[A347801(n), A247367(A321380(2*n))]`
-/

namespace A026468.P10233148878027926609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347801 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247367 (A321380 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A026468.P10233148878027926609

/-! ## A026468.P5474680439028393978

`∑[A225644(A002349(A058223(n)))]`
-/

namespace A026468.P5474680439028393978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225644 (A002349 (A058223 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026468.P5474680439028393978

/-!
# A026469: a(1) = 1; for n > 1, a(n) = least positive integer > a(n-1) and not equal to a(i)^2 + a(j)^2 for 1<=i<=j<=n-1.

The programs for A026469, there is no canonical definition to state claims against.
-/

/-! ## A026469.P5372919574069565517

`lt[A050437(n+1), A050453(A050426(3*n+5))]`
-/

namespace A026469.P5372919574069565517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050453 (A050426 (3 * n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A026469.P5372919574069565517

/-! ## A026469.P16933939084683597929

`lt[A333090(A282562(n+4)), A320893(n+1)]`
-/

namespace A026469.P16933939084683597929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333090 (A282562 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320893 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A026469.P16933939084683597929

/-! ## A026469.P8280934662299546087

`lt[A242994(n+4), A191452(A354114(2*n))]`
-/

namespace A026469.P8280934662299546087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242994 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191452 (A354114 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A026469.P8280934662299546087

/-! ## A026469.P5698223329687146453

`lt[A001263(n+1), A114112(A139755(3*(n+1)))]`
-/

namespace A026469.P5698223329687146453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114112 (A139755 (3 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A026469.P5698223329687146453

/-! ## A026469.P4459062901083684394

`lt[A334076(A233264(2*(n+2))), A173464(n+1)]`
-/

namespace A026469.P4459062901083684394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334076 (A233264 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173464 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A026469.P4459062901083684394

/-!
# A026470: a(n) = least positive integer > a(n-1) and not a(i)^2 + a(j)^2 for 1<=i<=j<=n.

The programs for A026470, there is no canonical definition to state claims against.
-/

/-! ## A026470.P9212995835324678731

`eq[A010052(A009892(n)), A281154(n)]`
-/

namespace A026470.P9212995835324678731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A009892 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281154 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A026470.P9212995835324678731

/-! ## A026470.P3509416833058496753

`eq[A019590(A346447(n+1)), A281154(n)]`
-/

namespace A026470.P3509416833058496753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (A346447 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281154 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A026470.P3509416833058496753

/-! ## A026470.P14725757478555567165

`eq[A019590(A246696(n)), A281154(n)]`
-/

namespace A026470.P14725757478555567165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (A246696 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281154 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A026470.P14725757478555567165

/-!
# A026472: {3, 7} together with the numbers congruent to {1, 2} mod 12.

The programs for A026472, the canonical program `A026472.P3398228534007870591` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026472 has offset 1).

The definition of A026472 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A026472.P3398228534007870591

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=7, a(4)=13, a(5)=14, a(6)=25`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026472

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P3398228534007870591.Spec : Prop :=
  ∀ n, P3398228534007870591.a n = A026472 (n + 1)

theorem P3398228534007870591.correct : P3398228534007870591.Spec := by
  intro n
  simp only [A026472, Nat.add_sub_cancel]

end A026472

/-! ## A026472.P12175035317815324072

`record[A110665(n)+A030118(A030118(n))]`
-/

namespace A026472.P12175035317815324072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110665 n + A030118 (A030118 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026472.P12175035317815324072

namespace A026472

/-- `record[A110665(n)+A030118(A030118(n))]` -/
def P12175035317815324072.Spec : Prop :=
  ∀ n, P12175035317815324072.a n = A026472 (n + 1)

end A026472

/-! ## A026472.P18060181451297549492

`eq[A057979(floor(n/(n%2+1))), A257931(n)]`
-/

namespace A026472.P18060181451297549492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 ⌊(n : ℚ) / ((n % 2 + 1 : ℕ) : ℚ)⌋.toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257931 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A026472.P18060181451297549492

namespace A026472

/-- `eq[A057979(floor(n/(n%2+1))), A257931(n)]` -/
def P18060181451297549492.Spec : Prop :=
  ∀ n, (P18060181451297549492.a n : ℤ) = A026472 (n + 1)

end A026472

/-! ## A026472.P2205081377345920365

`eq[A057979(A028242(n)), A163806(n)]`
-/

namespace A026472.P2205081377345920365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A028242 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163806 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A026472.P2205081377345920365

namespace A026472

/-- `eq[A057979(A028242(n)), A163806(n)]` -/
def P2205081377345920365.Spec : Prop :=
  ∀ n, (P2205081377345920365.a n : ℤ) = A026472 (n + 1)

end A026472

/-! ## A026472.P1403081139875099825

`eq[A057979(A140106(n+1)), A257931(n)]`
-/

namespace A026472.P1403081139875099825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A140106 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257931 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A026472.P1403081139875099825

namespace A026472

/-- `eq[A057979(A140106(n+1)), A257931(n)]` -/
def P1403081139875099825.Spec : Prop :=
  ∀ n, (P1403081139875099825.a n : ℤ) = A026472 (n + 1)

end A026472

/-! ## A026472.P2579664061234854798

`lt[A004485(A004482(n+4)), A004484(n)]`
-/

namespace A026472.P2579664061234854798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004485 (A004482 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004484 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A026472.P2579664061234854798

namespace A026472

/-- `lt[A004485(A004482(n+4)), A004484(n)]` -/
def P2579664061234854798.Spec : Prop :=
  ∀ n, (P2579664061234854798.a n : ℤ) = A026472 (n + 1)

end A026472

/-!
# A026474: a(n) = least positive integer > a(n-1) and not equal to a(i)+a(j) or a(i)+a(j)+a(k) for 1<=i

The programs for A026474, the canonical program `A026474.P150883873465480160` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026474 has offset 1).

The definition of A026474 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A026474.P150883873465480160

`2*a(n-1)-a(n-2)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=15`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026474

/-- `2*a(n-1)-a(n-2)` -/
def P150883873465480160.Spec : Prop :=
  ∀ n, P150883873465480160.a n = A026474 (n + 1)

theorem P150883873465480160.correct : P150883873465480160.Spec := by
  intro n
  simp only [A026474, Nat.add_sub_cancel]

end A026474

/-!
# A026475: a(1)=1, a(2)=3, otherwise a(n) = least positive integer > a(n-1) and not a(i) + a(j) + a(k) for 1 <= i < j < k <= n.

The programs for A026475, there is no canonical definition to state claims against.
-/

/-! ## A026475.P8700066166650382437

`∑[gcd(A119266(2*n+1), A119283(2*n))]`
-/

namespace A026475.P8700066166650382437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A119266 (2 * n + 1)) (A119283 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026475.P8700066166650382437

/-!
# A026476: For n>3, a(n) = 7*n - 21 + 2*(-1)^n.

The programs for A026476, the canonical program `A026476.P8102419790122482585` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026476 has offset 1).

The definition of A026476 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A026476.P8102419790122482585

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=1, a(1)=3, a(2)=4, a(3)=9, a(4)=12, a(5)=23`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026476

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P8102419790122482585.Spec : Prop :=
  ∀ n, P8102419790122482585.a n = A026476 (n + 1)

theorem P8102419790122482585.correct : P8102419790122482585.Spec := by
  intro n
  simp only [A026476, Nat.add_sub_cancel]

end A026476

/-! ## A026476.P9455122100754319755

`ogf((1+2x+3x^3+2x^4+6x^5)/(1-x-x^2+x^3))`
-/

namespace A026476.P9455122100754319755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 0, 3, 2, 6] [1, -1, -1, 1] n

end

end A026476.P9455122100754319755

namespace A026476

/-- `ogf((1+2x+3x^3+2x^4+6x^5)/(1-x-x^2+x^3))` -/
def P9455122100754319755.Spec : Prop :=
  ∀ n, P9455122100754319755.a n = A026476 (n + 1)

end A026476

/-! ## A026476.P13478057085253214120

`∑[A257080(a(n-2))]-n` with `a(0)=1, a(1)=3`
-/

namespace A026476.P13478057085253214120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  A257080 (f1 (n - 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A026476.P13478057085253214120

namespace A026476

/-- `∑[A257080(a(n-2))]-n` -/
def P13478057085253214120.Spec : Prop :=
  ∀ n, P13478057085253214120.a n = A026476 (n + 1)

end A026476

/-! ## A026476.P1239553754200447492

`∑[A118911(A004957(a(n-2)))]` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A026476.P1239553754200447492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1] fun n f1 =>
  A118911 (A004957 (f1 (n - 2)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026476.P1239553754200447492

namespace A026476

/-- `∑[A118911(A004957(a(n-2)))]` -/
def P1239553754200447492.Spec : Prop :=
  ∀ n, P1239553754200447492.a n = A026476 (n + 1)

end A026476

/-! ## A026476.P5180653404357241052

`∑[A115114(A097706(a(n-4)+1)+1)]` with `a(0)=1, a(1)=2, a(2)=1, a(3)=5`
-/

namespace A026476.P5180653404357241052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1, 5] fun n f1 =>
  A115114 (A097706 (f1 (n - 4) + 1).toNat + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026476.P5180653404357241052

namespace A026476

/-- `∑[A115114(A097706(a(n-4)+1)+1)]` -/
def P5180653404357241052.Spec : Prop :=
  ∀ n, P5180653404357241052.a n = A026476 (n + 1)

end A026476

/-! ## A026476.P12012391254185833230

`∑[A000040(A275719(a(n-1)+1)+1)%A275717(n+1)]` with `a(0)=1`
-/

namespace A026476.P12012391254185833230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.tmod (A000040 (A275719 (f1 (n - 1) + 1).toNat + 1).toNat) (A275717 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026476.P12012391254185833230

namespace A026476

/-- `∑[A000040(A275719(a(n-1)+1)+1)%A275717(n+1)]` -/
def P12012391254185833230.Spec : Prop :=
  ∀ n, P12012391254185833230.a n = A026476 (n + 1)

end A026476

/-! ## A026476.P15133260620975014174

`∑[gcd(12, A164073(n+1))]-n`
-/

namespace A026476.P15133260620975014174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 12 (A164073 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A026476.P15133260620975014174

namespace A026476

/-- `∑[gcd(12, A164073(n+1))]-n` -/
def P15133260620975014174.Spec : Prop :=
  ∀ n, P15133260620975014174.a n = A026476 (n + 1)

end A026476

/-!
# A026477: a(1) = 1, a(2) = 2, a(3) = 3; and for n > 3, a(n) = smallest number > a(n-1) and not of the form a(i)*a(j)*a(k) for 1 <= i < j < k < n.

The programs for A026477, there is no canonical definition to state claims against.
-/

/-! ## A026477.P9612660558277575533

`eq[2, A000005(A284539(A000005(n+1)))]+1`
-/

namespace A026477.P9612660558277575533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A284539 (A000005 (n + 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A026477.P9612660558277575533

/-! ## A026477.P17900467674353295933

`eq[A178334(n)², A136523(A032741(n))]`
-/

namespace A026477.P17900467674353295933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136523 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A026477.P17900467674353295933

/-! ## A026477.P5771793916083403770

`A079852(n+1)-A185284(A034507(n+1))`
-/

namespace A026477.P5771793916083403770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079852 (n + 1) - A185284 (A034507 (n + 1)).toNat

end

end A026477.P5771793916083403770

/-! ## A026477.P13615815887992518015

`A084400(n+1)-A185284(A034507(n+1))`
-/

namespace A026477.P13615815887992518015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084400 (n + 1) - A185284 (A034507 (n + 1)).toNat

end

end A026477.P13615815887992518015

/-! ## A026477.P10263423357366968100

`record[A223491(n+1)]-A185284(A034507(n+1))`
-/

namespace A026477.P10263423357366968100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223491 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A185284 (A034507 (n + 1)).toNat

end

end A026477.P10263423357366968100

/-!
# A026478: a(n) = least positive integer > a(n-1) and not of form a(i)*a(j)*a(k) for 1<=i<=j<=k

The programs for A026478, the canonical program `A026478.P3875536101854945334` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026478 has offset 1).

The definition of A026478 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026478.P3875536101854945334

`lt[(A001222(n+1)-1)%3, 1]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A026478

/-- `lt[(A001222(n+1)-1)%3, 1]+1` -/
def P3875536101854945334.Spec : Prop :=
  ∀ n, (P3875536101854945334.a n : ℤ) = A026478 (n + 1)

theorem P3875536101854945334.correct : P3875536101854945334.Spec := by
  intro n
  simp only [A026478, Nat.add_sub_cancel]

end A026478

/-! ## A026478.P5736151531465701147

`eq[2, A321090(A252736(n+1))]+1`
-/

namespace A026478.P5736151531465701147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321090 (A252736 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A026478.P5736151531465701147

namespace A026478

/-- `eq[2, A321090(A252736(n+1))]+1` -/
def P5736151531465701147.Spec : Prop :=
  ∀ n, (P5736151531465701147.a n : ℤ) = A026478 (n + 1)

end A026478

/-! ## A026478.P12201030855000738970

`record[1-n*A014672(A001222(n+1))]`
-/

namespace A026478.P12201030855000738970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ) * A014672 (A001222 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026478.P12201030855000738970

namespace A026478

/-- `record[1-n*A014672(A001222(n+1))]` -/
def P12201030855000738970.Spec : Prop :=
  ∀ n, P12201030855000738970.a n = A026478 (n + 1)

end A026478

/-! ## A026478.P154293781271307632

`record[n+1-A015160(A001222(n+1)+3)]`
-/

namespace A026478.P154293781271307632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A015160 (A001222 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026478.P154293781271307632

namespace A026478

/-- `record[n+1-A015160(A001222(n+1)+3)]` -/
def P154293781271307632.Spec : Prop :=
  ∀ n, P154293781271307632.a n = A026478 (n + 1)

end A026478

/-! ## A026478.P1922082752589923894

`record[(n+1)/A092942(A001222(n+1)+1)]`
-/

namespace A026478.P1922082752589923894
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A092942 (A001222 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026478.P1922082752589923894

namespace A026478

/-- `record[(n+1)/A092942(A001222(n+1)+1)]` -/
def P1922082752589923894.Spec : Prop :=
  ∀ n, P1922082752589923894.a n = (A026478 (n + 1) : ℚ)

end A026478

/-! ## A026478.P8816619433054818941

`record[(n+1)/A142048(2*A001222(n+1))]`
-/

namespace A026478.P8816619433054818941
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A142048 (2 * A001222 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026478.P8816619433054818941

namespace A026478

/-- `record[(n+1)/A142048(2*A001222(n+1))]` -/
def P8816619433054818941.Spec : Prop :=
  ∀ n, P8816619433054818941.a n = (A026478 (n + 1) : ℚ)

end A026478

/-! ## A026478.P11036741740729197599

`record[A054576(A145784(n+1))]`
-/

namespace A026478.P11036741740729197599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A145784 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026478.P11036741740729197599

namespace A026478

/-- `record[A054576(A145784(n+1))]` -/
def P11036741740729197599.Spec : Prop :=
  ∀ n, P11036741740729197599.a n = A026478 (n + 1)

end A026478

/-! ## A026478.P8771369976994908716

`record[(n+1)/A001222(A327423(A001222(n+1)²+1))]`
-/

namespace A026478.P8771369976994908716
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A001222 (A327423 (A001222 (n + 1) ^ 2 + 1).toNat).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026478.P8771369976994908716

namespace A026478

/-- `record[(n+1)/A001222(A327423(A001222(n+1)²+1))]` -/
def P8771369976994908716.Spec : Prop :=
  ∀ n, P8771369976994908716.a n = (A026478 (n + 1) : ℚ)

end A026478

/-! ## A026478.P15687780082183843460

`record[(n+1)/A142048(A001222((n+1)²))]`
-/

namespace A026478.P15687780082183843460
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A142048 (A001222 ((n + 1) ^ 2)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026478.P15687780082183843460

namespace A026478

/-- `record[(n+1)/A142048(A001222((n+1)²))]` -/
def P15687780082183843460.Spec : Prop :=
  ∀ n, P15687780082183843460.a n = (A026478 (n + 1) : ℚ)

end A026478

/-! ## A026478.P11817058597977674727

`lt[A224976(A001222((n+1)²)+1), 2]+1`
-/

namespace A026478.P11817058597977674727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224976 (A001222 ((n + 1) ^ 2) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A026478.P11817058597977674727

namespace A026478

/-- `lt[A224976(A001222((n+1)²)+1), 2]+1` -/
def P11817058597977674727.Spec : Prop :=
  ∀ n, (P11817058597977674727.a n : ℤ) = A026478 (n + 1)

end A026478

/-! ## A026478.P17216590884491130623

`lt[A065518((A001222((n+1)²)+1)²), 2]+1`
-/

namespace A026478.P17216590884491130623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065518 ((A001222 ((n + 1) ^ 2) + 1) ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A026478.P17216590884491130623

namespace A026478

/-- `lt[A065518((A001222((n+1)²)+1)²), 2]+1` -/
def P17216590884491130623.Spec : Prop :=
  ∀ n, (P17216590884491130623.a n : ℤ) = A026478 (n + 1)

end A026478

/-!
# A026479: a(n) = least positive integer > a(n-1) and not a(i)*a(j)*a(k) for 1<=i

The programs for A026479, there is no canonical definition to state claims against.
-/

/-! ## A026479.P12408835440549498282

`∏{e}[2^n, A026420(#)]`
-/

namespace A026479.P12408835440549498282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A026420 (Nat.factorization (f1 n) p)

end

end A026479.P12408835440549498282

/-! ## A026479.P15115909857055615709

`∑[A124766(A084810(n+1))]`
-/

namespace A026479.P15115909857055615709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 (A084810 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026479.P15115909857055615709

/-! ## A026479.P6403063697530445632

`∑[A074265(Δ[A331912(3*(n+1))])]`
-/

namespace A026479.P6403063697530445632
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331912 (3 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074265 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026479.P6403063697530445632

/-! ## A026479.P6771304832915678964

`∑[A154402(Δ[A331912(3*(n+1))])]`
-/

namespace A026479.P6771304832915678964
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331912 (3 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154402 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026479.P6771304832915678964

/-! ## A026479.P17132635804715721364

`lt[A212162(n+2), A212175(A212139(2*(n+1)))]`
-/

namespace A026479.P17132635804715721364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212162 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212175 (A212139 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A026479.P17132635804715721364

/-!
# A026480: a(1) = 1, a(2) = 2, a(3) = 4, and for n > 3, a(n) is the least positive integer > a(n-1) not of form a(i)*a(j)*a(k) for 1 <= i <= j <= k < n.

The programs for A026480, there is no canonical definition to state claims against.
-/

/-! ## A026480.P2062258614638494103

`∑[A169718(A000120(A329931(n+2)))]`
-/

namespace A026480.P2062258614638494103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169718 (A000120 (A329931 (n + 2)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026480.P2062258614638494103

/-! ## A026480.P12950932413770301142

`∑[gcd(A103315(n+1), A318662(n+1))]`
-/

namespace A026480.P12950932413770301142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A103315 (n + 1)) (A318662 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026480.P12950932413770301142

/-! ## A026480.P5897694744746365393

`lt[A142886(2*(n+2)), A030225(n+2)%11]`
-/

namespace A026480.P5897694744746365393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142886 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030225 (n + 2)) 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A026480.P5897694744746365393

/-! ## A026480.P8041926587042939026

`∑[A001221(A098578(A020482(n+2)))]`
-/

namespace A026480.P8041926587042939026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A098578 (A020482 (n + 2)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026480.P8041926587042939026

/-! ## A026480.P14563746644471844000

`lt[∑[A050117(n+2)], A050135(2*n+1)]`
-/

namespace A026480.P14563746644471844000
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050117 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050135 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A026480.P14563746644471844000

/-!
# A026481: a(n) = least positive integer > a(n-1) and not a(i)*a(j)*a(k) for 1<=i

The programs for A026481, there is no canonical definition to state claims against.
-/

/-! ## A026481.P2206148971030087625

`∩[A026417(n+1), A354928(n+1)]`
-/

namespace A026481.P2206148971030087625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A026481.P2206148971030087625

/-! ## A026481.P15564629216035901618

`A026417(n+1)%A280327(n+2)`
-/

namespace A026481.P15564629216035901618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026417 (n + 1)) (A280327 (n + 2))

end

end A026481.P15564629216035901618

/-! ## A026481.P12240300565975002804

`A026417(n+1)+val(A213899(n+1), 2)`
-/

namespace A026481.P12240300565975002804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026417 (n + 1) + (SequenceMachineLib.valuation (A213899 (n + 1)).toNat 2 : ℤ)

end

end A026481.P12240300565975002804

/-! ## A026481.P9302674508151886255

`A026417(n+1)+A000007(A329332(n))`
-/

namespace A026481.P9302674508151886255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026417 (n + 1) + A000007 (A329332 n).toNat

end

end A026481.P9302674508151886255

/-! ## A026481.P9234808203528909006

`A026417(n+1)%A248561(A060192(n))`
-/

namespace A026481.P9234808203528909006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026417 (n + 1)) (A248561 (A060192 n).toNat)

end

end A026481.P9234808203528909006

/-!
# A026482: a(n) = least positive integer > a(n-1) and not equal to a(i)*a(j)*a(k) for 1<=i<=j<=k

The programs for A026482, there is no canonical definition to state claims against.
-/

/-! ## A026482.P7566767913305303425

`eq[A059841(n), A202704(A226602(n))]`
-/

namespace A026482.P7566767913305303425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202704 (A226602 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A026482.P7566767913305303425

/-! ## A026482.P16846136529296464868

`eq[A056624(2*(n+1)), A296133(n+1)]+1`
-/

namespace A026482.P16846136529296464868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056624 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296133 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A026482.P16846136529296464868

/-! ## A026482.P5170605258956413691

`eq[A026741(n), A034699(A219964(n))]`
-/

namespace A026482.P5170605258956413691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A219964 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A026482.P5170605258956413691

/-! ## A026482.P4906707658781982521

`A232803(A028310(n))%A014224(n+1)`
-/

namespace A026482.P4906707658781982521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A232803 (A028310 n).toNat) (A014224 (n + 1))

end

end A026482.P4906707658781982521

/-! ## A026482.P12650886922151402245

`∩[A026417(n+1), A158037(n+1)]`
-/

namespace A026482.P12650886922151402245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A026482.P12650886922151402245

/-!
# A026483: a(n) = least positive integer > a(n-1) and not a(i)*a(j)-a(k) for 1<=i

The programs for A026483, there is no canonical definition to state claims against.
-/

/-! ## A026483.P9858673600019284652

`A026487(A000007(n)+n)+char[1]`
-/

namespace A026483.P9858673600019284652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026487 (A000007 n + (n : ℤ)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A026483.P9858673600019284652

/-! ## A026483.P5067293816135974031

`∪[A006935(n+1), A026487(n+1)]`
-/

namespace A026483.P5067293816135974031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026483.P5067293816135974031

/-! ## A026483.P11567596072149610386

`∪[A007352(n+1), A026487(n+1)]`
-/

namespace A026483.P11567596072149610386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026483.P11567596072149610386

/-! ## A026483.P4991588982419247077

`∪[A026487(n+1), A038537(n+1)]`
-/

namespace A026483.P4991588982419247077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026483.P4991588982419247077

/-! ## A026483.P16528489457140573831

`A063524(n)+A026487(A000007(n)+n)`
-/

namespace A026483.P16528489457140573831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n + A026487 (A000007 n + (n : ℤ)).toNat

end

end A026483.P16528489457140573831

/-! ## A026483.P3929081093711604691

`A026487(A000007(n)+n)*A076677(C(2, n))`
-/

namespace A026483.P3929081093711604691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026487 (A000007 n + (n : ℤ)).toNat * A076677 (Nat.choose 2 n)

end

end A026483.P3929081093711604691

/-! ## A026483.P2767961393134139446

`A026487(A000007(n)+n)*A076678(C(2, n))`
-/

namespace A026483.P2767961393134139446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026487 (A000007 n + (n : ℤ)).toNat * A076678 (Nat.choose 2 n)

end

end A026483.P2767961393134139446

/-! ## A026483.P4308170075101094534

`A026487(A000007(n)+n)*A326793(C(2, n))`
-/

namespace A026483.P4308170075101094534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026487 (A000007 n + (n : ℤ)).toNat * A326793 (Nat.choose 2 n)

end

end A026483.P4308170075101094534

/-! ## A026483.P1183798097728020339

`A000034(A002088(n))*A026487(A000007(n)+n)`
-/

namespace A026483.P1183798097728020339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A002088 n).toNat * A026487 (A000007 n + (n : ℤ)).toNat

end

end A026483.P1183798097728020339

/-!
# A026485: a(n) = least positive integer > a(n-1) and not a(i)*a(j)-a(k) for 1<=i

The programs for A026485, there is no canonical definition to state claims against.
-/

/-! ## A026485.P10999385995555403012

`A307636(n+1)+A173667(A042988(2*n))`
-/

namespace A026485.P10999385995555403012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307636 (n + 1) + A173667 (A042988 (2 * n)).toNat

end

end A026485.P10999385995555403012

/-! ## A026485.P17022096043371419114

`A307636(n+1)+A173667(A038604(2*n+1))`
-/

namespace A026485.P17022096043371419114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307636 (n + 1) + A173667 (A038604 (2 * n + 1)).toNat

end

end A026485.P17022096043371419114

/-!
# A026486: a(n) = least positive integer > a(n-1) and not a(i)*a(j)-a(k) for 1<=i<=j<=k

The programs for A026486, there is no canonical definition to state claims against.
-/

/-! ## A026486.P10798272386219206237

`∑[gcd(A080528(n), A080540(2*(n+1)))]`
-/

namespace A026486.P10798272386219206237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A080528 n) (A080540 (2 * (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026486.P10798272386219206237

/-!
# A026487: a(n) = least positive integer > a(n-1) and not a(i)*a(j)-a(k) for 1<=i

The programs for A026487, there is no canonical definition to state claims against.
-/

/-! ## A026487.P6647678667202279297

`A026483(A065475(n+1))`
-/

namespace A026487.P6647678667202279297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026483 (A065475 (n + 1)).toNat

end

end A026487.P6647678667202279297

/-! ## A026487.P16209993115861920205

`A026483(A181440(n+2))`
-/

namespace A026487.P16209993115861920205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026483 (A181440 (n + 2)).toNat

end

end A026487.P16209993115861920205

/-! ## A026487.P4160180831974936778

`A026483(A184985(n+2))`
-/

namespace A026487.P4160180831974936778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026483 (A184985 (n + 2)).toNat

end

end A026487.P4160180831974936778

/-! ## A026487.P10489292934559964966

`A026483(A103517(n)-n)`
-/

namespace A026487.P10489292934559964966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026483 (A103517 n - (n : ℤ)).toNat

end

end A026487.P10489292934559964966

/-! ## A026487.P107659982661477786

`A026483(A057427(n)+1+n)`
-/

namespace A026487.P107659982661477786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026483 (A057427 n + 1 + (n : ℤ)).toNat

end

end A026487.P107659982661477786

/-! ## A026487.P223880412630271175

`A026483(2-A000007(n)+n)`
-/

namespace A026487.P223880412630271175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026483 (2 - A000007 n + (n : ℤ)).toNat

end

end A026487.P223880412630271175

/-! ## A026487.P17289076342601276403

`A026483(2-(A000007(n)-n))`
-/

namespace A026487.P17289076342601276403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026483 (2 - (A000007 n - (n : ℤ))).toNat

end

end A026487.P17289076342601276403

/-! ## A026487.P4517705913624162296

`A026483(3-A054977(n)+n)`
-/

namespace A026487.P4517705913624162296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026483 (3 - A054977 n + (n : ℤ)).toNat

end

end A026487.P4517705913624162296

/-! ## A026487.P1048228107574064263

`A026483(2/A054977(n)+n)`
-/

namespace A026487.P1048228107574064263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026483 (SequenceMachineLib.roundAway (2 / (A054977 n : ℚ) + (n : ℚ))).toNat

end

end A026487.P1048228107574064263

/-! ## A026487.P17471219428586647469

`record[and(A026483(n+1), A260196(n))]`
-/

namespace A026487.P17471219428586647469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A026483 (n + 1)) (A260196 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026487.P17471219428586647469

/-! ## A026487.P14034461004427312731

`A026483(n+2)/(A000007(n)+1)`
-/

namespace A026487.P14034461004427312731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026483 (n + 2) : ℚ) / (A000007 n + 1 : ℚ)

end

end A026487.P14034461004427312731

/-! ## A026487.P4491044136362220030

`A026483(A008619(A103517(n)))`
-/

namespace A026487.P4491044136362220030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026483 (A008619 (A103517 n).toNat).toNat

end

end A026487.P4491044136362220030

/-! ## A026487.P13044410108328043642

`∩[A026483(n+1), A377721(n+1)]`
-/

namespace A026487.P13044410108328043642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026483 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377721 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A026487.P13044410108328043642

/-!
# A026488: a(n) is the least positive integer > a(n-1) and not a(i)*a(j)-a(k) for 1 <= i <= j <= k <= n, where a(1) = 1.

The programs for A026488, the canonical program `A026488.P17900518215499171744` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026488 has offset 1).

The definition of A026488 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 957 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026488.P17900518215499171744

`a(n-1)+3` with `a(0)=1, a(1)=3, a(2)=4`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026488

/-- `a(n-1)+3` -/
def P17900518215499171744.Spec : Prop :=
  ∀ n, (P17900518215499171744.a n : ℤ) = A026488 (n + 1)

theorem P17900518215499171744.correct : P17900518215499171744.Spec := by
  intro n
  simp only [A026488, Nat.add_sub_cancel]

end A026488

/-!
# A026489: a(n) = least positive integer > a(n-1) and not a(i)*a(j)+a(k) for 1<=i

The programs for A026489, there is no canonical definition to state claims against.
-/

/-! ## A026489.P4321876975535597986

`lt[A165331(A079398(n)), A055017(n)]`
-/

namespace A026489.P4321876975535597986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165331 (A079398 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A026489.P4321876975535597986

/-! ## A026489.P1310634616438123660

`eq[A114226(A339086(n+1)), A214210(n+4)]`
-/

namespace A026489.P1310634616438123660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114226 (A339086 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214210 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A026489.P1310634616438123660

/-!
# A026490: Length of n-th run of identical symbols in A026465.

The programs for A026490, the canonical program `A026490.P17991794138142751536` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026490 has offset 1).

The definition of A026490 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026490.P17991794138142751536

`Δ[A284389(n+1)+and(1, A014689(n+1))]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A026490

/-- `Δ[A284389(n+1)+and(1, A014689(n+1))]` -/
def P17991794138142751536.Spec : Prop :=
  ∀ n, P17991794138142751536.a n = A026490 (n + 1)

theorem P17991794138142751536.correct : P17991794138142751536.Spec := by
  intro n
  simp only [A026490, Nat.add_sub_cancel]

end A026490

/-! ## A026490.P14171532497924021727

`A284393(A284389(n+2)%A284389(n+1)+1)%4`
-/

namespace A026490.P14171532497924021727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284393 (Int.tmod (A284389 (n + 2)) (A284389 (n + 1)) + 1).toNat) 4

end

end A026490.P14171532497924021727

namespace A026490

/-- `A284393(A284389(n+2)%A284389(n+1)+1)%4` -/
def P14171532497924021727.Spec : Prop :=
  ∀ n, P14171532497924021727.a n = A026490 (n + 1)

end A026490

/-! ## A026490.P2340214605266198758

`Δ[A003160(a(n-1)+1)+n]` with `a(0)=1`
-/

namespace A026490.P2340214605266198758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A003160 (f1 (n - 1) + 1).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026490.P2340214605266198758

namespace A026490

/-- `Δ[A003160(a(n-1)+1)+n]` -/
def P2340214605266198758.Spec : Prop :=
  ∀ n, P2340214605266198758.a n = A026490 (n + 1)

end A026490

/-!
# A026491: a(n) = least k > a(n-1) such that A001285(k-1) = A001285(n-1) for n >= 1.

The programs for A026491, the canonical program `A026491.P12269982715676672745` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026491 has offset 0).

The definition of A026491 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026491.P2018260988497567462

`Δ[n²]+val(comp[2*(n+1)]+1, 2)%2`
-/

namespace A026491.P2018260988497567462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((SequenceMachineLib.valuation (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1) 2 % 2 : ℕ) : ℤ)

end

end A026491.P2018260988497567462

namespace A026491

/-- `Δ[n²]+val(comp[2*(n+1)]+1, 2)%2` -/
def P2018260988497567462.Spec : Prop :=
  ∀ n, P2018260988497567462.a n = A026491 n

end A026491

/-! ## A026491.P11733188971413282077

`gcd(2, A316826(n))+2*n`
-/

namespace A026491.P11733188971413282077
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A316826 n) + 2 * n

end

end A026491.P11733188971413282077

namespace A026491

/-- `gcd(2, A316826(n))+2*n` -/
def P11733188971413282077.Spec : Prop :=
  ∀ n, (P11733188971413282077.a n : ℤ) = A026491 n

end A026491

/-! ## A026491.P16125081539362019690

`A285383(n+1)+Δ[n²]`
-/

namespace A026491.P16125081539362019690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285383 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A026491.P16125081539362019690

namespace A026491

/-- `A285383(n+1)+Δ[n²]` -/
def P16125081539362019690.Spec : Prop :=
  ∀ n, P16125081539362019690.a n = A026491 n

end A026491

/-! ## A026491.P11315191716202962162

`char[A003159(n+1)]+Δ[n²]`
-/

namespace A026491.P11315191716202962162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A026491.P11315191716202962162

namespace A026491

/-- `char[A003159(n+1)]+Δ[n²]` -/
def P11315191716202962162.Spec : Prop :=
  ∀ n, P11315191716202962162.a n = A026491 n

end A026491

/-! ## A026491.P12050373018870874985

`2*(n+1)-A284948(n+1)`
-/

namespace A026491.P12050373018870874985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A284948 (n + 1)

end

end A026491.P12050373018870874985

namespace A026491

/-- `2*(n+1)-A284948(n+1)` -/
def P12050373018870874985.Spec : Prop :=
  ∀ n, P12050373018870874985.a n = A026491 n

end A026491

/-! ## A026491.P1988090502799054231

`record[A316828(val(n+1, 2))+n+1]`
-/

namespace A026491.P1988090502799054231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316828 (SequenceMachineLib.valuation (n + 1) 2) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026491.P1988090502799054231

namespace A026491

/-- `record[A316828(val(n+1, 2))+n+1]` -/
def P1988090502799054231.Spec : Prop :=
  ∀ n, P1988090502799054231.a n = A026491 n

end A026491

/-! ## A026491.P499949406050236230

`val(A255177(n), 2)%2+2*n+1`
-/

namespace A026491.P499949406050236230
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A255177 n).toNat 2 % 2 + (2 * n + 1)

end

end A026491.P499949406050236230

namespace A026491

/-- `val(A255177(n), 2)%2+2*n+1` -/
def P499949406050236230.Spec : Prop :=
  ∀ n, (P499949406050236230.a n : ℤ) = A026491 n

end A026491

/-! ## A026491.P10061264041278724167

`A122497(and(n-1, -(n+1))+2)+2*n`
-/

namespace A026491.P10061264041278724167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122497 (Int.land ((n : ℤ) - 1) (-(n + 1 : ℤ)) + 2).toNat + (2 * n : ℤ)

end

end A026491.P10061264041278724167

namespace A026491

/-- `A122497(and(n-1, -(n+1))+2)+2*n` -/
def P10061264041278724167.Spec : Prop :=
  ∀ n, P10061264041278724167.a n = A026491 n

end A026491

/-! ## A026491.P10430958087467338575

`A298468(n)-A004526(n)`
-/

namespace A026491.P10430958087467338575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298468 n - A004526 n

end

end A026491.P10430958087467338575

namespace A026491

/-- `A298468(n)-A004526(n)` -/
def P10430958087467338575.Spec : Prop :=
  ∀ n, P10430958087467338575.a n = A026491 n

end A026491

/-! ## A026491.P4865006169333370324

`A297469(n)-A008486(n)`
-/

namespace A026491.P4865006169333370324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297469 n - A008486 n

end

end A026491.P4865006169333370324

namespace A026491

/-- `A297469(n)-A008486(n)` -/
def P4865006169333370324.Spec : Prop :=
  ∀ n, P4865006169333370324.a n = A026491 n

end A026491

/-! ## A026491.P12148993621018279787

`A298468(n)+1-A008619(n)`
-/

namespace A026491.P12148993621018279787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298468 n + (1 - A008619 n)

end

end A026491.P12148993621018279787

namespace A026491

/-- `A298468(n)+1-A008619(n)` -/
def P12148993621018279787.Spec : Prop :=
  ∀ n, P12148993621018279787.a n = A026491 n

end A026491

/-! ## A026491.P267674593317533889

`A103517(n)-A328979(n+1)`
-/

namespace A026491.P267674593317533889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n - A328979 (n + 1)

end

end A026491.P267674593317533889

namespace A026491

/-- `A103517(n)-A328979(n+1)` -/
def P267674593317533889.Spec : Prop :=
  ∀ n, P267674593317533889.a n = A026491 n

end A026491

/-! ## A026491.P12269982715676672745

`A001468(A022290(n))+2*n`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A026491

/-- `A001468(A022290(n))+2*n` -/
def P12269982715676672745.Spec : Prop :=
  ∀ n, P12269982715676672745.a n = A026491 n

theorem P12269982715676672745.correct : P12269982715676672745.Spec := by
  intro n
  simp only [A026491]

end A026491

/-! ## A026491.P5732139580031975565

`A008458(n)+n-A075326(n)`
-/

namespace A026491.P5732139580031975565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + ((n : ℤ) - A075326 n)

end

end A026491.P5732139580031975565

namespace A026491

/-- `A008458(n)+n-A075326(n)` -/
def P5732139580031975565.Spec : Prop :=
  ∀ n, P5732139580031975565.a n = A026491 n

end A026491

/-! ## A026491.P6656498064314232966

`A005408(n)+val(A000123(2*n), 4)`
-/

namespace A026491.P6656498064314232966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n + (SequenceMachineLib.valuation (A000123 (2 * n)).toNat 4 : ℤ)

end

end A026491.P6656498064314232966

namespace A026491

/-- `A005408(n)+val(A000123(2*n), 4)` -/
def P6656498064314232966.Spec : Prop :=
  ∀ n, P6656498064314232966.a n = A026491 n

end A026491

/-! ## A026491.P136008114181922555

`A056594(A123726(2*n))+2*n+1`
-/

namespace A026491.P136008114181922555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A123726 (2 * n)).toNat + (2 * n + 1 : ℤ)

end

end A026491.P136008114181922555

namespace A026491

/-- `A056594(A123726(2*n))+2*n+1` -/
def P136008114181922555.Spec : Prop :=
  ∀ n, P136008114181922555.a n = A026491 n

end A026491

/-! ## A026491.P1964819302266921496

`record[1-A035263(n+1)+A000265(n+2)]`
-/

namespace A026491.P1964819302266921496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A035263 (n + 1) + A000265 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026491.P1964819302266921496

namespace A026491

/-- `record[1-A035263(n+1)+A000265(n+2)]` -/
def P1964819302266921496.Spec : Prop :=
  ∀ n, P1964819302266921496.a n = A026491 n

end A026491

/-! ## A026491.P8279840123271782068

`record[A035263(2*(n+1))+A000265(n+2)]`
-/

namespace A026491.P8279840123271782068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (2 * (n + 1)) + A000265 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026491.P8279840123271782068

namespace A026491

/-- `record[A035263(2*(n+1))+A000265(n+2)]` -/
def P8279840123271782068.Spec : Prop :=
  ∀ n, P8279840123271782068.a n = A026491 n

end A026491

/-! ## A026491.P12982139888532516203

`2*n+1+char[A214682(n+1)]`
-/

namespace A026491.P12982139888532516203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1 + (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A026491.P12982139888532516203

namespace A026491

/-- `2*n+1+char[A214682(n+1)]` -/
def P12982139888532516203.Spec : Prop :=
  ∀ n, (P12982139888532516203.a n : ℤ) = A026491 n

end A026491

/-!
# A026492: a(n) = t(3n), where t = A001285 (Thue-Morse sequence).

The programs for A026492, the canonical program `A026492.P4581556902622213959` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026492 has offset 0).

The definition of A026492 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026492.P4581556902622213959

`A293162(n)+1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A026492

/-- `A293162(n)+1` -/
def P4581556902622213959.Spec : Prop :=
  ∀ n, P4581556902622213959.a n = A026492 n

theorem P4581556902622213959.correct : P4581556902622213959.Spec := by
  intro n
  simp only [A026492]

end A026492

/-! ## A026492.P9925027544702975816

`A134660(n)%3`
-/

namespace A026492.P9925027544702975816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134660 n) 3

end

end A026492.P9925027544702975816

namespace A026492

/-- `A134660(n)%3` -/
def P9925027544702975816.Spec : Prop :=
  ∀ n, P9925027544702975816.a n = A026492 n

end A026492

/-! ## A026492.P1426847429480513634

`A254379(6*n)+1`
-/

namespace A026492.P1426847429480513634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254379 (6 * n) + 1

end

end A026492.P1426847429480513634

namespace A026492

/-- `A254379(6*n)+1` -/
def P1426847429480513634.Spec : Prop :=
  ∀ n, P1426847429480513634.a n = A026492 n

end A026492

/-! ## A026492.P17191266091247974522

`A316828(6*n)+1`
-/

namespace A026492.P17191266091247974522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316828 (6 * n) + 1

end

end A026492.P17191266091247974522

namespace A026492

/-- `A316828(6*n)+1` -/
def P17191266091247974522.Spec : Prop :=
  ∀ n, P17191266091247974522.a n = A026492 n

end A026492

/-! ## A026492.P12479237772014532578

`A036555(n)%2+1`
-/

namespace A026492.P12479237772014532578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036555 n) 2 + 1

end

end A026492.P12479237772014532578

namespace A026492

/-- `A036555(n)%2+1` -/
def P12479237772014532578.Spec : Prop :=
  ∀ n, P12479237772014532578.a n = A026492 n

end A026492

/-! ## A026492.P1152871104861968098

`char[A036556(n+1)]+1`
-/

namespace A026492.P1152871104861968098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036556 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A026492.P1152871104861968098

namespace A026492

/-- `char[A036556(n+1)]+1` -/
def P1152871104861968098.Spec : Prop :=
  ∀ n, (P1152871104861968098.a n : ℤ) = A026492 n

end A026492

/-! ## A026492.P3453857455351629939

`A000034(A036555(n))`
-/

namespace A026492.P3453857455351629939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A036555 n).toNat

end

end A026492.P3453857455351629939

namespace A026492

/-- `A000034(A036555(n))` -/
def P3453857455351629939.Spec : Prop :=
  ∀ n, P3453857455351629939.a n = A026492 n

end A026492

/-! ## A026492.P15000912092448434567

`A002828(A134660(n))`
-/

namespace A026492.P15000912092448434567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A134660 n).toNat

end

end A026492.P15000912092448434567

namespace A026492

/-- `A002828(A134660(n))` -/
def P15000912092448434567.Spec : Prop :=
  ∀ n, P15000912092448434567.a n = A026492 n

end A026492

/-! ## A026492.P11631345760832328600

`A001285(A318925(n))`
-/

namespace A026492.P11631345760832328600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (A318925 n).toNat

end

end A026492.P11631345760832328600

namespace A026492

/-- `A001285(A318925(n))` -/
def P11631345760832328600.Spec : Prop :=
  ∀ n, P11631345760832328600.a n = A026492 n

end A026492

/-! ## A026492.P11197711228742809994

`A002828(A001316(3*n))`
-/

namespace A026492.P11197711228742809994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A001316 (3 * n)).toNat

end

end A026492.P11197711228742809994

namespace A026492

/-- `A002828(A001316(3*n))` -/
def P11197711228742809994.Spec : Prop :=
  ∀ n, P11197711228742809994.a n = A026492 n

end A026492

/-! ## A026492.P17339689476403992588

`char[eq[A010059(n), A295890(n)]]+1`
-/

namespace A026492.P17339689476403992588
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295890 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + 1

end

end A026492.P17339689476403992588

namespace A026492

/-- `char[eq[A010059(n), A295890(n)]]+1` -/
def P17339689476403992588.Spec : Prop :=
  ∀ n, (P17339689476403992588.a n : ℤ) = A026492 n

end A026492

/-! ## A026492.P14924732368601914588

`A001285(A318921(A318921(n)))`
-/

namespace A026492.P14924732368601914588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (A318921 (A318921 n).toNat).toNat

end

end A026492.P14924732368601914588

namespace A026492

/-- `A001285(A318921(A318921(n)))` -/
def P14924732368601914588.Spec : Prop :=
  ∀ n, P14924732368601914588.a n = A026492 n

end A026492

/-! ## A026492.P1216299447126167832

`A010060(A064680(n)+n)+1`
-/

namespace A026492.P1216299447126167832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A064680 n + (n : ℤ)).toNat + 1

end

end A026492.P1216299447126167832

namespace A026492

/-- `A010060(A064680(n)+n)+1` -/
def P1216299447126167832.Spec : Prop :=
  ∀ n, P1216299447126167832.a n = A026492 n

end A026492

/-! ## A026492.P4466353418364220285

`A010060(3*n)+1`
-/

namespace A026492.P4466353418364220285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (3 * n) + 1

end

end A026492.P4466353418364220285

namespace A026492

/-- `A010060(3*n)+1` -/
def P4466353418364220285.Spec : Prop :=
  ∀ n, P4466353418364220285.a n = A026492 n

end A026492

/-! ## A026492.P15754355290252969664

`A163542(A017533(n))`
-/

namespace A026492.P15754355290252969664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163542 (A017533 n).toNat

end

end A026492.P15754355290252969664

namespace A026492

/-- `A163542(A017533(n))` -/
def P15754355290252969664.Spec : Prop :=
  ∀ n, P15754355290252969664.a n = A026492 n

end A026492

/-! ## A026492.P2239714928086417399

`floor(sqrt(A316830(n+1)))`
-/

namespace A026492.P2239714928086417399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A316830 (n + 1))

end

end A026492.P2239714928086417399

namespace A026492

/-- `floor(sqrt(A316830(n+1)))` -/
def P2239714928086417399.Spec : Prop :=
  ∀ n, P2239714928086417399.a n = A026492 n

end A026492

/-! ## A026492.P7779602905120271373

`A005680(A001316(2*n+n))`
-/

namespace A026492.P7779602905120271373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005680 (A001316 (2 * n + n)).toNat

end

end A026492.P7779602905120271373

namespace A026492

/-- `A005680(A001316(2*n+n))` -/
def P7779602905120271373.Spec : Prop :=
  ∀ n, P7779602905120271373.a n = A026492 n

end A026492

/-! ## A026492.P5845584085593473071

`3-A026498(2*n)`
-/

namespace A026492.P5845584085593473071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A026498 (2 * n)

end

end A026492.P5845584085593473071

namespace A026492

/-- `3-A026498(2*n)` -/
def P5845584085593473071.Spec : Prop :=
  ∀ n, P5845584085593473071.a n = A026492 n

end A026492

/-! ## A026492.P12981958343806084531

`gcd(2, A046818(2*n))`
-/

namespace A026492.P12981958343806084531
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A046818 (2 * n))

end

end A026492.P12981958343806084531

namespace A026492

/-- `gcd(2, A046818(2*n))` -/
def P12981958343806084531.Spec : Prop :=
  ∀ n, (P12981958343806084531.a n : ℤ) = A026492 n

end A026492

/-! ## A026492.P1580883647006526803

`2-A293163(2*n)`
-/

namespace A026492.P1580883647006526803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A293163 (2 * n)

end

end A026492.P1580883647006526803

namespace A026492

/-- `2-A293163(2*n)` -/
def P1580883647006526803.Spec : Prop :=
  ∀ n, P1580883647006526803.a n = A026492 n

end A026492

/-!
# A026494: a(n) = least positive integer > a(n-1) and not a(i)*a(j)+a(k) for 1<=i<=j<=k<=n.

The programs for A026494, there is no canonical definition to state claims against.
-/

/-! ## A026494.P14122661523613524536

`A152950(n+1)-A090002(A213683(n+4))`
-/

namespace A026494.P14122661523613524536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152950 (n + 1) - A090002 (A213683 (n + 4)).toNat

end

end A026494.P14122661523613524536

/-! ## A026494.P10111743653026395913

`∑[A227185(∑[A000149(n)])]`
-/

namespace A026494.P10111743653026395913
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000149 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227185 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026494.P10111743653026395913

/-! ## A026494.P9019732609708040738

`∑[A000120(A092690(n)+1)]`
-/

namespace A026494.P9019732609708040738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A092690 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026494.P9019732609708040738

/-! ## A026494.P1338141395415252465

`A156250(A225859(∑[n+1]))`
-/

namespace A026494.P1338141395415252465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156250 (A225859 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A026494.P1338141395415252465

/-! ## A026494.P18316012510146460109

`∑[char[1]+1+n]-A029837(A095239(n+1))`
-/

namespace A026494.P18316012510146460109
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A029837 (A095239 (n + 1)).toNat

end

end A026494.P18316012510146460109

/-!
# A026496: a(n) = least positive integer > a(n-1) and not a(i)^2 + a(j)^2 + a(k)^2 for 1<=i<=j<=k<=n.

The programs for A026496, there is no canonical definition to state claims against.
-/

/-! ## A026496.P10977610212963256317

`lt[A257653(n), atan(A257678(3*n+2))]`
-/

namespace A026496.P10977610212963256317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257653 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A257678 (3 * n + 2) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A026496.P10977610212963256317

/-! ## A026496.P15288267578314275315

`lt[A257653(n), A257680(A257645(3*n+2))]`
-/

namespace A026496.P15288267578314275315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257653 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257680 (A257645 (3 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A026496.P15288267578314275315

/-! ## A026496.P14135363394993759173

`lt[A257653(n), A001222(A257690(2*n+1))]`
-/

namespace A026496.P14135363394993759173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257653 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A257690 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A026496.P14135363394993759173

/-! ## A026496.P4438099644544441381

`lt[A257653(n), A001511(A007528(3*n+2))]`
-/

namespace A026496.P4438099644544441381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257653 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A007528 (3 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A026496.P4438099644544441381

/-! ## A026496.P7110225179069321448

`lt[tanh(A261904(n)), A321100(n)]`
-/

namespace A026496.P7110225179069321448
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tanh (A261904 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321100 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A026496.P7110225179069321448

/-! ## A026496.P9500089416808946967

`lt[tanh(A261904(n)), A321101(n)]`
-/

namespace A026496.P9500089416808946967
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tanh (A261904 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321101 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A026496.P9500089416808946967

/-! ## A026496.P7494741068658119716

`lt[A257653(n), A257679(A257636(n+1))]`
-/

namespace A026496.P7494741068658119716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257653 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257679 (A257636 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A026496.P7494741068658119716

/-! ## A026496.P11395738223329220670

`lt[A257653(n)*A257663(3*(n+2)), 1]`
-/

namespace A026496.P11395738223329220670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257653 n * A257663 (3 * (n + 2))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A026496.P11395738223329220670

/-! ## A026496.P13775577861725386682

`lt[A257653(n), A020639(A081532(n+1))]`
-/

namespace A026496.P13775577861725386682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257653 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A081532 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A026496.P13775577861725386682

/-! ## A026496.P4228778365668070467

`lt[A257653(n), A257680(A257668(3*n+5))]`
-/

namespace A026496.P4228778365668070467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257653 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257680 (A257668 (3 * n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A026496.P4228778365668070467

/-! ## A026496.P6560600930600496981

`lt[A257653(n), A257679(A257664(3*(n+1)))]`
-/

namespace A026496.P6560600930600496981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257653 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257679 (A257664 (3 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A026496.P6560600930600496981

/-!
# A026498: a(n) = t(1+3n), where t = A001285 (Thue-Morse sequence).

The programs for A026498, the canonical program `A026498.P969753019979248973` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026498 has offset 0).

The definition of A026498 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026498.P969753019979248973

`A293163(n)+1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A026498

/-- `A293163(n)+1` -/
def P969753019979248973.Spec : Prop :=
  ∀ n, P969753019979248973.a n = A026498 n

theorem P969753019979248973.correct : P969753019979248973.Spec := by
  intro n
  simp only [A026498]

end A026498

/-! ## A026498.P3512992940413126343

`gcd(2, A240883(n))`
-/

namespace A026498.P3512992940413126343
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A240883 n)

end

end A026498.P3512992940413126343

namespace A026498

/-- `gcd(2, A240883(n))` -/
def P3512992940413126343.Spec : Prop :=
  ∀ n, (P3512992940413126343.a n : ℤ) = A026498 n

end A026498

/-! ## A026498.P685600647132992898

`and(1, A046818(n))+1`
-/

namespace A026498.P685600647132992898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A046818 n) + 1

end

end A026498.P685600647132992898

namespace A026498

/-- `and(1, A046818(n))+1` -/
def P685600647132992898.Spec : Prop :=
  ∀ n, P685600647132992898.a n = A026498 n

end A026498

/-! ## A026498.P3396357784109073787

`2-A293162(Δ[n²])`
-/

namespace A026498.P3396357784109073787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A293162 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A026498.P3396357784109073787

namespace A026498

/-- `2-A293162(Δ[n²])` -/
def P3396357784109073787.Spec : Prop :=
  ∀ n, P3396357784109073787.a n = A026498 n

end A026498

/-! ## A026498.P12993334157651305437

`A254377(6*n+3)+1`
-/

namespace A026498.P12993334157651305437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254377 (6 * n + 3) + 1

end

end A026498.P12993334157651305437

namespace A026498

/-- `A254377(6*n+3)+1` -/
def P12993334157651305437.Spec : Prop :=
  ∀ n, P12993334157651305437.a n = A026498 n

end A026498

/-! ## A026498.P18411874179685160445

`A001316(3*n+1)%3`
-/

namespace A026498.P18411874179685160445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001316 (3 * n + 1)) 3

end

end A026498.P18411874179685160445

namespace A026498

/-- `A001316(3*n+1)%3` -/
def P18411874179685160445.Spec : Prop :=
  ∀ n, P18411874179685160445.a n = A026498 n

end A026498

/-! ## A026498.P17075958623596258164

`A000034(A046818(n))`
-/

namespace A026498.P17075958623596258164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A046818 n).toNat

end

end A026498.P17075958623596258164

namespace A026498

/-- `A000034(A046818(n))` -/
def P17075958623596258164.Spec : Prop :=
  ∀ n, P17075958623596258164.a n = A026498 n

end A026498

/-! ## A026498.P17334594606889062032

`2-A228495(A016945(n))`
-/

namespace A026498.P17334594606889062032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A228495 (A016945 n).toNat

end

end A026498.P17334594606889062032

namespace A026498

/-- `2-A228495(A016945(n))` -/
def P17334594606889062032.Spec : Prop :=
  ∀ n, P17334594606889062032.a n = A026498 n

end A026498

/-! ## A026498.P12810369330170064219

`A001511(or(2, A240883(n)))`
-/

namespace A026498.P12810369330170064219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (Int.lor 2 (A240883 n)).toNat

end

end A026498.P12810369330170064219

namespace A026498

/-- `A001511(or(2, A240883(n)))` -/
def P12810369330170064219.Spec : Prop :=
  ∀ n, P12810369330170064219.a n = A026498 n

end A026498

/-! ## A026498.P12848022647691581328

`A000035(A046818(n)²)+1`
-/

namespace A026498.P12848022647691581328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A046818 n ^ 2).toNat + 1

end

end A026498.P12848022647691581328

namespace A026498

/-- `A000035(A046818(n)²)+1` -/
def P12848022647691581328.Spec : Prop :=
  ∀ n, P12848022647691581328.a n = A026498 n

end A026498

/-! ## A026498.P3236140974866897678

`A026513((A046818(n)+1)²)`
-/

namespace A026498.P3236140974866897678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026513 ((A046818 n + 1) ^ 2).toNat

end

end A026498.P3236140974866897678

namespace A026498

/-- `A026513((A046818(n)+1)²)` -/
def P3236140974866897678.Spec : Prop :=
  ∀ n, P3236140974866897678.a n = A026498 n

end A026498

/-! ## A026498.P14000755253372089766

`A026513((1-A046818(n))²)`
-/

namespace A026498.P14000755253372089766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026513 ((1 - A046818 n) ^ 2).toNat

end

end A026498.P14000755253372089766

namespace A026498

/-- `A026513((1-A046818(n))²)` -/
def P14000755253372089766.Spec : Prop :=
  ∀ n, P14000755253372089766.a n = A026498 n

end A026498

/-! ## A026498.P7297995646077364293

`A143331(A046818(n)²+2)`
-/

namespace A026498.P7297995646077364293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143331 (A046818 n ^ 2 + 2).toNat

end

end A026498.P7297995646077364293

namespace A026498

/-- `A143331(A046818(n)²+2)` -/
def P7297995646077364293.Spec : Prop :=
  ∀ n, P7297995646077364293.a n = A026498 n

end A026498

/-! ## A026498.P13051606910453088517

`A001511(A240883(n)²+2)`
-/

namespace A026498.P13051606910453088517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A240883 n ^ 2 + 2).toNat

end

end A026498.P13051606910453088517

namespace A026498

/-- `A001511(A240883(n)²+2)` -/
def P13051606910453088517.Spec : Prop :=
  ∀ n, P13051606910453088517.a n = A026498 n

end A026498

/-! ## A026498.P15421327587706248709

`2/A026513(A046818(n)²)`
-/

namespace A026498.P15421327587706248709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A026513 (A046818 n ^ 2).toNat : ℚ)

end

end A026498.P15421327587706248709

namespace A026498

/-- `2/A026513(A046818(n)²)` -/
def P15421327587706248709.Spec : Prop :=
  ∀ n, P15421327587706248709.a n = (A026498 n : ℚ)

end A026498

/-! ## A026498.P9134281644827883756

`A005680(A001316(2*n+1+n))`
-/

namespace A026498.P9134281644827883756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005680 (A001316 (2 * n + 1 + n)).toNat

end

end A026498.P9134281644827883756

namespace A026498

/-- `A005680(A001316(2*n+1+n))` -/
def P9134281644827883756.Spec : Prop :=
  ∀ n, P9134281644827883756.a n = A026498 n

end A026498

/-! ## A026498.P9338869503864748746

`A001285(xor(A007494(n), A010690(n)))`
-/

namespace A026498.P9338869503864748746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (Int.xor (A007494 n) (A010690 n)).toNat

end

end A026498.P9338869503864748746

namespace A026498

/-- `A001285(xor(A007494(n), A010690(n)))` -/
def P9338869503864748746.Spec : Prop :=
  ∀ n, P9338869503864748746.a n = A026498 n

end A026498

/-! ## A026498.P3741612618892641784

`A001285(xor(A007494(n), A071044(n)))`
-/

namespace A026498.P3741612618892641784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (Int.xor (A007494 n) (A071044 n)).toNat

end

end A026498.P3741612618892641784

namespace A026498

/-- `A001285(xor(A007494(n), A071044(n)))` -/
def P3741612618892641784.Spec : Prop :=
  ∀ n, P3741612618892641784.a n = A026498 n

end A026498

/-! ## A026498.P17847856570529310093

`A163542(12*n+5)`
-/

namespace A026498.P17847856570529310093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163542 (12 * n + 5)

end

end A026498.P17847856570529310093

namespace A026498

/-- `A163542(12*n+5)` -/
def P17847856570529310093.Spec : Prop :=
  ∀ n, P17847856570529310093.a n = A026498 n

end A026498

/-! ## A026498.P3563031124394281318

`A010060(3*n+1)+1`
-/

namespace A026498.P3563031124394281318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (3 * n + 1) + 1

end

end A026498.P3563031124394281318

namespace A026498

/-- `A010060(3*n+1)+1` -/
def P3563031124394281318.Spec : Prop :=
  ∀ n, P3563031124394281318.a n = A026498 n

end A026498

