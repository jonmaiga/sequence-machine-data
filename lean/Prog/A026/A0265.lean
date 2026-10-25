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
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C001
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
# A026500: For n >= 3, a(n) = least positive integer > a(n-1) and not a(i)^2 + a(j)^2 + a(k)^2 for 1<=i<=j<=k<=n.

The programs for A026500, there is no canonical definition to state claims against.
-/

/-! ## A026500.P11208394755474467780

`∑[A284011(A097581(n+1))/2]`
-/

namespace A026500.P11208394755474467780
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284011 (A097581 (n + 1)).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026500.P11208394755474467780

/-! ## A026500.P72915029465967320

`lt[A165779(n+1), A181822(2*(n+1))]+1`
-/

namespace A026500.P72915029465967320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165779 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181822 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A026500.P72915029465967320

/-! ## A026500.P5040563502209818440

`∑[A003056(A284011(A097581(n+1)))]`
-/

namespace A026500.P5040563502209818440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A284011 (A097581 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026500.P5040563502209818440

/-! ## A026500.P5916728844147102321

`A004525(∑[A284011(A097581(n+1))])`
-/

namespace A026500.P5916728844147102321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284011 (A097581 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A026500.P5916728844147102321

/-! ## A026500.P18366779820164699120

`A038572(∑[A284011(A097581(n+1))])`
-/

namespace A026500.P18366779820164699120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284011 (A097581 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A026500.P18366779820164699120

/-!
# A026501: a(n) = least positive integer > a(n-1) and not a(j)*a(k) + a(k)*a(i) + a(i)*a(j) for 1<=i

The programs for A026501, there is no canonical definition to state claims against.
-/

/-! ## A026501.P14384343763091053580

`A000926(n+1)-A210715(∑[A185284(n)])`
-/

namespace A026501.P14384343763091053580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000926 (n + 1) - A210715 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A026501.P14384343763091053580

/-! ## A026501.P2538748574113530272

`record[A000926(n+1)-A034501(n+1)]`
-/

namespace A026501.P2538748574113530272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000926 (n + 1) - A034501 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026501.P2538748574113530272

/-! ## A026501.P16879754973600171427

`record[A000926(n+1)-A034523(n+1)]`
-/

namespace A026501.P16879754973600171427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000926 (n + 1) - A034523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026501.P16879754973600171427

/-! ## A026501.P3479806338423120208

`record[eq[0, A290870(n+1)]+1-A034501(n+1)]`
-/

namespace A026501.P3479806338423120208
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290870 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1 : ℤ) - A034501 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026501.P3479806338423120208

/-! ## A026501.P6182699901442401211

`record[eq[0, A290870(n+1)]+1-A034523(n+1)]`
-/

namespace A026501.P6182699901442401211
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290870 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1 : ℤ) - A034523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026501.P6182699901442401211

/-!
# A026503: a(n) = least positive integer > a(n-1) and not a(j)*a(k) + a(k)*a(i) + a(i)*a(j) for 1<=i

The programs for A026503, there is no canonical definition to state claims against.
-/

/-! ## A026503.P1955680584977113109

`lt[A049345(A114699(n)), A110657(n)]`
-/

namespace A026503.P1955680584977113109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049345 (A114699 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A026503.P1955680584977113109

/-! ## A026503.P7134365639496854451

`lt[A070211(A280698(n+1)), A166044(n)]`
-/

namespace A026503.P7134365639496854451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070211 (A280698 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166044 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A026503.P7134365639496854451

/-! ## A026503.P1189469145226636767

`lt[A073145(n), A064663(A000292(n+1))]`
-/

namespace A026503.P1189469145226636767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073145 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064663 (A000292 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A026503.P1189469145226636767

/-! ## A026503.P8830745971633436545

`record[A297996(n+1)-A242718(n+1)]`
-/

namespace A026503.P8830745971633436545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297996 (n + 1) - A242718 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026503.P8830745971633436545

/-! ## A026503.P2693551437315727830

`lt[tan(A195836(2*n+3)), A195840(n+1)]`
-/

namespace A026503.P2693551437315727830
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (A195836 (2 * n + 3) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195840 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A026503.P2693551437315727830

/-!
# A026504: a(n) = least positive integer > a(n-1) and not a(j)*a(k) + a(k)*a(i) + a(i)*a(j) for 1<=i<=j<=k<=n.

The programs for A026504, there is no canonical definition to state claims against.
-/

/-! ## A026504.P18313246665112082508

`lt[A339721(n+1), A114327(A213598(n))]`
-/

namespace A026504.P18313246665112082508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339721 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 (A213598 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A026504.P18313246665112082508

/-! ## A026504.P15038398702825710535

`lt[A347229(n+1), A347231(A347188(n+1))]`
-/

namespace A026504.P15038398702825710535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347231 (A347188 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A026504.P15038398702825710535

/-! ## A026504.P1908618351076667472

`lt[A008836(n+1), A030214(A280773(n+1))]`
-/

namespace A026504.P1908618351076667472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030214 (A280773 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A026504.P1908618351076667472

/-!
# A026505: a(n) is the least positive integer > a(n-1) and not a(j)*a(k) + a(k)*a(i) + a(i)*a(j) for 1 <= i < j < k <= n.

The programs for A026505, there is no canonical definition to state claims against.
-/

/-! ## A026505.P3618707430532544746

`A057428(A204657(n+1))+A026419(n+1)`
-/

namespace A026505.P3618707430532544746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A204657 (n + 1)).toNat + A026419 (n + 1)

end

end A026505.P3618707430532544746

/-! ## A026505.P14850422399546404242

`A057428(A097092(n+5))+A026419(n+1)`
-/

namespace A026505.P14850422399546404242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A097092 (n + 5)).toNat + A026419 (n + 1)

end

end A026505.P14850422399546404242

/-! ## A026505.P9300138761526050225

`A026419(n+1)-A157928(A026502(n+1)²)`
-/

namespace A026505.P9300138761526050225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026419 (n + 1) - A157928 (A026502 (n + 1) ^ 2).toNat

end

end A026505.P9300138761526050225

/-! ## A026505.P17093821655237021770

`(A026419(n+1)-A057427(A204657(n+1)))%A003171(n+1)`
-/

namespace A026505.P17093821655237021770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026419 (n + 1) - A057427 (A204657 (n + 1)).toNat) (A003171 (n + 1))

end

end A026505.P17093821655237021770

/-! ## A026505.P11363270969473520279

`A057428(A085150(n+1))+A026419(n+1)`
-/

namespace A026505.P11363270969473520279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A085150 (n + 1)).toNat + A026419 (n + 1)

end

end A026505.P11363270969473520279

/-!
# A026506: a(n) = least positive integer > a(n-1) and not a(j)*a(k) + a(k)*a(i) + a(i)*a(j) for 1<=i<=j<=k<=n.

The programs for A026506, there is no canonical definition to state claims against.
-/

/-! ## A026506.P3214593243005342054

`A026426(n+1)-A057427(A001523(n))`
-/

namespace A026506.P3214593243005342054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026426 (n + 1) - A057427 (A001523 n).toNat

end

end A026506.P3214593243005342054

/-! ## A026506.P11089078390544981062

`A026426(n+1)-A001065(A002385(n+1))`
-/

namespace A026506.P11089078390544981062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026426 (n + 1) - A001065 (A002385 (n + 1)).toNat

end

end A026506.P11089078390544981062

/-! ## A026506.P15009727041525111579

`A026426(n+1)-A001222(A084755(n+1))`
-/

namespace A026506.P15009727041525111579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026426 (n + 1) - A001222 (A084755 (n + 1)).toNat

end

end A026506.P15009727041525111579

/-! ## A026506.P11586901342926237797

`A026426(n+1)-A032741(A056210(n+1))`
-/

namespace A026506.P11586901342926237797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026426 (n + 1) - A032741 (A056210 (n + 1)).toNat

end

end A026506.P11586901342926237797

/-! ## A026506.P2881657120068117614

`A026426(n+1)+A008836(A309354(n+3))`
-/

namespace A026506.P2881657120068117614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026426 (n + 1) + A008836 (A309354 (n + 3)).toNat

end

end A026506.P2881657120068117614

/-!
# A026508: a(n) = least positive integer > a(n-1) and not (a(i)+a(j))^2 - a(k)^2 for 1<=i<=j<=k<=n.

The programs for A026508, there is no canonical definition to state claims against.
-/

/-! ## A026508.P18214005839315726271

`∑[A001221(A102131(n+1)-2^n)]`
-/

namespace A026508.P18214005839315726271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A102131 (n + 1) - (2 ^ n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026508.P18214005839315726271

/-! ## A026508.P3328649302510102459

`lt[A346871(n+1), dr(A193258(2*(n+2)))]`
-/

namespace A026508.P3328649302510102459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346871 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A193258 (2 * (n + 2)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A026508.P3328649302510102459

/-! ## A026508.P17517140904606059932

`∑[A007913(A078314(A250266(n)))]`
-/

namespace A026508.P17517140904606059932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A078314 (A250266 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026508.P17517140904606059932

/-! ## A026508.P15565654165754693563

`∑[A087802(A028263(A003512(n+1)))]`
-/

namespace A026508.P15565654165754693563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087802 (A028263 (A003512 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026508.P15565654165754693563

/-!
# A026509: a(n) = least positive integer > a(n-1) and not (a(i)+a(j))^2 - a(k)^2 for 1<=i

The programs for A026509, there is no canonical definition to state claims against.
-/

/-! ## A026509.P9358337850498215861

`∑[A156264(A090835(n+2))]`
-/

namespace A026509.P9358337850498215861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156264 (A090835 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026509.P9358337850498215861

/-!
# A026510: a(n) = least positive integer > a(n-1) and not (a(i)+a(j))^2 - a(k)^2 for 1<=i<=j<=k<=n.

The programs for A026510, there is no canonical definition to state claims against.
-/

/-! ## A026510.P17182000702813876332

`∑[A030312(∑[A286796(n)])]`
-/

namespace A026510.P17182000702813876332
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286796 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030312 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026510.P17182000702813876332

/-! ## A026510.P6342845877263690466

`eq[C(2, n+2), A245536(A253563(n))]`
-/

namespace A026510.P6342845877263690466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245536 (A253563 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A026510.P6342845877263690466

/-! ## A026510.P6377325477409298380

`eq[A000007(n), A245536(A253563(n))]`
-/

namespace A026510.P6377325477409298380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245536 (A253563 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A026510.P6377325477409298380

/-! ## A026510.P1269191453008254873

`eq[A000038(n), A245536(A253563(n))]`
-/

namespace A026510.P1269191453008254873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245536 (A253563 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A026510.P1269191453008254873

/-! ## A026510.P15385974714854542809

`eq[A151622(n), A245536(A253563(n))]`
-/

namespace A026510.P15385974714854542809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151622 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245536 (A253563 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A026510.P15385974714854542809

/-!
# A026513: a(n) = t(2+3n), where t = A001285 (Thue-Morse sequence).

The programs for A026513, the canonical program `A026513.P8673088029594760325` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026513 has offset 0).

The definition of A026513 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026513.P8673088029594760325

`A293164(n)+1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A026513

/-- `A293164(n)+1` -/
def P8673088029594760325.Spec : Prop :=
  ∀ n, P8673088029594760325.a n = A026513 n

theorem P8673088029594760325.correct : P8673088029594760325.Spec := by
  intro n
  simp only [A026513]

end A026513

/-! ## A026513.P11967772691841273538

`gcd(2, A046819(n)+1)`
-/

namespace A026513.P11967772691841273538
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A046819 n + 1)

end

end A026513.P11967772691841273538

namespace A026513

/-- `gcd(2, A046819(n)+1)` -/
def P11967772691841273538.Spec : Prop :=
  ∀ n, (P11967772691841273538.a n : ℤ) = A026513 n

end A026513

/-! ## A026513.P4773440865576432731

`2-A228495(6*n+5)`
-/

namespace A026513.P4773440865576432731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A228495 (6 * n + 5)

end

end A026513.P4773440865576432731

namespace A026513

/-- `2-A228495(6*n+5)` -/
def P4773440865576432731.Spec : Prop :=
  ∀ n, P4773440865576432731.a n = A026513 n

end A026513

/-! ## A026513.P14718587472079138057

`A001316(3*n+2)%3`
-/

namespace A026513.P14718587472079138057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001316 (3 * n + 2)) 3

end

end A026513.P14718587472079138057

namespace A026513

/-- `A001316(3*n+2)%3` -/
def P14718587472079138057.Spec : Prop :=
  ∀ n, P14718587472079138057.a n = A026513 n

end A026513

/-! ## A026513.P10419931469605910547

`A305422(3*n+2)%2+1`
-/

namespace A026513.P10419931469605910547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305422 (3 * n + 2)) 2 + 1

end

end A026513.P10419931469605910547

namespace A026513

/-- `A305422(3*n+2)%2+1` -/
def P10419931469605910547.Spec : Prop :=
  ∀ n, P10419931469605910547.a n = A026513 n

end A026513

/-! ## A026513.P994194381020509051

`A000034(A046819(n))`
-/

namespace A026513.P994194381020509051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A046819 n).toNat

end

end A026513.P994194381020509051

namespace A026513

/-- `A000034(A046819(n))` -/
def P994194381020509051.Spec : Prop :=
  ∀ n, P994194381020509051.a n = A026513 n

end A026513

/-! ## A026513.P13809645608822973312

`A000035(A046819(n)²)+1`
-/

namespace A026513.P13809645608822973312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A046819 n ^ 2).toNat + 1

end

end A026513.P13809645608822973312

namespace A026513

/-- `A000035(A046819(n)²)+1` -/
def P13809645608822973312.Spec : Prop :=
  ∀ n, P13809645608822973312.a n = A026513 n

end A026513

/-! ## A026513.P4657584478557677662

`A005680(A001316(2*n+n+2))`
-/

namespace A026513.P4657584478557677662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005680 (A001316 (2 * n + (n + 2))).toNat

end

end A026513.P4657584478557677662

namespace A026513

/-- `A005680(A001316(2*n+n+2))` -/
def P4657584478557677662.Spec : Prop :=
  ∀ n, P4657584478557677662.a n = A026513 n

end A026513

/-! ## A026513.P5246335074331622352

`A010059(A173732(n))+1`
-/

namespace A026513.P5246335074331622352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (A173732 n).toNat + 1

end

end A026513.P5246335074331622352

namespace A026513

/-- `A010059(A173732(n))+1` -/
def P5246335074331622352.Spec : Prop :=
  ∀ n, P5246335074331622352.a n = A026513 n

end A026513

/-! ## A026513.P1672715807460502229

`A010060(3*n+2)+1`
-/

namespace A026513.P1672715807460502229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (3 * n + 2) + 1

end

end A026513.P1672715807460502229

namespace A026513

/-- `A010060(3*n+2)+1` -/
def P1672715807460502229.Spec : Prop :=
  ∀ n, P1672715807460502229.a n = A026513 n

end A026513

/-! ## A026513.P11784730036150762493

`A163542(A017629(n))`
-/

namespace A026513.P11784730036150762493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163542 (A017629 n).toNat

end

end A026513.P11784730036150762493

namespace A026513

/-- `A163542(A017629(n))` -/
def P11784730036150762493.Spec : Prop :=
  ∀ n, P11784730036150762493.a n = A026513 n

end A026513

/-! ## A026513.P1122952187965067669

`A026498(A047485(n+1))`
-/

namespace A026513.P1122952187965067669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026498 (A047485 (n + 1)).toNat

end

end A026513.P1122952187965067669

namespace A026513

/-- `A026498(A047485(n+1))` -/
def P1122952187965067669.Spec : Prop :=
  ∀ n, P1122952187965067669.a n = A026513 n

end A026513

/-! ## A026513.P122943840658318589

`A026498(A047557(n+1))`
-/

namespace A026513.P122943840658318589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026498 (A047557 (n + 1)).toNat

end

end A026513.P122943840658318589

namespace A026513

/-- `A026498(A047557(n+1))` -/
def P122943840658318589.Spec : Prop :=
  ∀ n, P122943840658318589.a n = A026513 n

end A026513

/-! ## A026513.P1844070683492548186

`A026498(Δ[n²])`
-/

namespace A026513.P1844070683492548186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026498 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A026513.P1844070683492548186

namespace A026513

/-- `A026498(Δ[n²])` -/
def P1844070683492548186.Spec : Prop :=
  ∀ n, P1844070683492548186.a n = A026513 n

end A026513

/-! ## A026513.P3427011365731459836

`A293163(Δ[n²])+1`
-/

namespace A026513.P3427011365731459836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293163 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A026513.P3427011365731459836

namespace A026513

/-- `A293163(Δ[n²])+1` -/
def P3427011365731459836.Spec : Prop :=
  ∀ n, P3427011365731459836.a n = A026513 n

end A026513

/-! ## A026513.P12948431753506304844

`2-A293164(Δ[n²])`
-/

namespace A026513.P12948431753506304844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A293164 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A026513.P12948431753506304844

namespace A026513

/-- `2-A293164(Δ[n²])` -/
def P12948431753506304844.Spec : Prop :=
  ∀ n, P12948431753506304844.a n = A026513 n

end A026513

/-! ## A026513.P2090839934181474285

`A026498(2*n+1)!`
-/

namespace A026513.P2090839934181474285
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A026498 (2 * n + 1)).toNat

end

end A026513.P2090839934181474285

namespace A026513

/-- `A026498(2*n+1)!` -/
def P2090839934181474285.Spec : Prop :=
  ∀ n, (P2090839934181474285.a n : ℤ) = A026513 n

end A026513

/-! ## A026513.P5019112970039104353

`and(1, A046818(2*n+1))+1`
-/

namespace A026513.P5019112970039104353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A046818 (2 * n + 1)) + 1

end

end A026513.P5019112970039104353

namespace A026513

/-- `and(1, A046818(2*n+1))+1` -/
def P5019112970039104353.Spec : Prop :=
  ∀ n, P5019112970039104353.a n = A026513 n

end A026513

/-! ## A026513.P6948588495423254839

`A000034(A046818(2*n+1))`
-/

namespace A026513.P6948588495423254839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A046818 (2 * n + 1)).toNat

end

end A026513.P6948588495423254839

namespace A026513

/-- `A000034(A046818(2*n+1))` -/
def P6948588495423254839.Spec : Prop :=
  ∀ n, P6948588495423254839.a n = A026513 n

end A026513

/-! ## A026513.P7402988252453960342

`A001285(A006257(2*n+n+2))`
-/

namespace A026513.P7402988252453960342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (A006257 (2 * n + (n + 2))).toNat

end

end A026513.P7402988252453960342

namespace A026513

/-- `A001285(A006257(2*n+n+2))` -/
def P7402988252453960342.Spec : Prop :=
  ∀ n, P7402988252453960342.a n = A026513 n

end A026513

/-!
# A026514: a(n) = least positive integer > a(n-1) and not (a(i)+a(j))^2 + a(k)^2 for 1<=i<=j<=k<=n.

The programs for A026514, there is no canonical definition to state claims against.
-/

/-! ## A026514.P5122929527494510689

`lt[A084402(n+1), A084401(A005235(n+1))]`
-/

namespace A026514.P5122929527494510689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084402 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084401 (A005235 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A026514.P5122929527494510689

/-! ## A026514.P1041528149073610897

`lt[A300219(n+1), A218320(A025011(n+1))]`
-/

namespace A026514.P1041528149073610897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300219 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218320 (A025011 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A026514.P1041528149073610897

/-! ## A026514.P460457564785613331

`lt[A008482(n), A258651(A335513(2*n+5))]`
-/

namespace A026514.P460457564785613331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008482 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258651 (A335513 (2 * n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A026514.P460457564785613331

/-! ## A026514.P10517091419897783340

`lt[A202394(A162507(2*(n+3))), 1]`
-/

namespace A026514.P10517091419897783340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202394 (A162507 (2 * (n + 3))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A026514.P10517091419897783340

/-! ## A026514.P608291260089972687

`lt[A120730(n), A010436(A027748(n+1))]`
-/

namespace A026514.P608291260089972687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120730 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010436 (A027748 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A026514.P608291260089972687

/-!
# A026515: a(n) = length of n-th run of identical symbols in A026513.

The programs for A026515, the canonical program `A026515.P8276323896044920095` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026515 has offset 1).

The definition of A026515 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3337 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026515.P8276323896044920095

`Δ[eq[A101660(n), A285383(n+1)]]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A026515

/-- `Δ[eq[A101660(n), A285383(n+1)]]` -/
def P8276323896044920095.Spec : Prop :=
  ∀ n, P8276323896044920095.a n = A026515 (n + 1)

theorem P8276323896044920095.correct : P8276323896044920095.Spec := by
  intro n
  simp only [A026515, Nat.add_sub_cancel]

end A026515

/-!
# A026516: a(n) = least positive integer > a(n-1) and not (a(i)+a(j))^2 + a(k)^2 for 1<=i<=j<=k<=n.

The programs for A026516, there is no canonical definition to state claims against.
-/

/-! ## A026516.P11694727805558292615

`∑[A050873(A006530(A084338(n+1)))]`
-/

namespace A026516.P11694727805558292615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (A006530 (A084338 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026516.P11694727805558292615

/-! ## A026516.P9434150210481447066

`lt[A339704(n+1), A293616(2*(n+2))²]`
-/

namespace A026516.P9434150210481447066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293616 (2 * (n + 2)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A026516.P9434150210481447066

/-! ## A026516.P13620764641173096994

`lt[A007427(n+1), A284099(A141214(n))]`
-/

namespace A026516.P13620764641173096994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007427 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284099 (A141214 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A026516.P13620764641173096994

/-! ## A026516.P16078804517535522891

`lt[A008836(n+1), A284099(A141214(n))]`
-/

namespace A026516.P16078804517535522891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284099 (A141214 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A026516.P16078804517535522891

/-! ## A026516.P12061028340812372451

`lt[A339717(n+1), A284099(A141214(n))]`
-/

namespace A026516.P12061028340812372451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339717 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284099 (A141214 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A026516.P12061028340812372451

/-!
# A026517: a(n) = t(5n), where t = A001285 (Thue-Morse sequence).

The programs for A026517, the canonical program `A026517.P14581879115746617932` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026517 has offset 0).

The definition of A026517 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026517.P14581879115746617932

`A046820(n)%2+1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A026517

/-- `A046820(n)%2+1` -/
def P14581879115746617932.Spec : Prop :=
  ∀ n, P14581879115746617932.a n = A026517 n

theorem P14581879115746617932.correct : P14581879115746617932.Spec := by
  intro n
  simp only [A026517]

end A026517

/-! ## A026517.P4692388511982566134

`A001316(5*n)%3`
-/

namespace A026517.P4692388511982566134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001316 (5 * n)) 3

end

end A026517.P4692388511982566134

namespace A026517

/-- `A001316(5*n)%3` -/
def P4692388511982566134.Spec : Prop :=
  ∀ n, P4692388511982566134.a n = A026517 n

end A026517

/-! ## A026517.P9890425425912958248

`A000034(A046820(n))`
-/

namespace A026517.P9890425425912958248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A046820 n).toNat

end

end A026517.P9890425425912958248

namespace A026517

/-- `A000034(A046820(n))` -/
def P9890425425912958248.Spec : Prop :=
  ∀ n, P9890425425912958248.a n = A026517 n

end A026517

/-! ## A026517.P17000353388502839948

`A316828(A008592(n))+1`
-/

namespace A026517.P17000353388502839948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316828 (A008592 n).toNat + 1

end

end A026517.P17000353388502839948

namespace A026517

/-- `A316828(A008592(n))+1` -/
def P17000353388502839948.Spec : Prop :=
  ∀ n, P17000353388502839948.a n = A026517 n

end A026517

/-! ## A026517.P9971339881611063851

`A000034(A010060(A047215(n))+n)`
-/

namespace A026517.P9971339881611063851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A010060 (A047215 n).toNat + (n : ℤ)).toNat

end

end A026517.P9971339881611063851

namespace A026517

/-- `A000034(A010060(A047215(n))+n)` -/
def P9971339881611063851.Spec : Prop :=
  ∀ n, P9971339881611063851.a n = A026517 n

end A026517

/-! ## A026517.P3523482984044329054

`A000034(n-A010060(A047215(n)))`
-/

namespace A026517.P3523482984044329054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 ((n : ℤ) - A010060 (A047215 n).toNat).toNat

end

end A026517.P3523482984044329054

namespace A026517

/-- `A000034(n-A010060(A047215(n)))` -/
def P3523482984044329054.Spec : Prop :=
  ∀ n, P3523482984044329054.a n = A026517 n

end A026517

/-! ## A026517.P11368394124050945475

`3-A026535(2*n)`
-/

namespace A026517.P11368394124050945475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A026535 (2 * n)

end

end A026517.P11368394124050945475

namespace A026517

/-- `3-A026535(2*n)` -/
def P11368394124050945475.Spec : Prop :=
  ∀ n, P11368394124050945475.a n = A026517 n

end A026517

/-! ## A026517.P8611375143647110842

`gcd(2, A046821(2*n))`
-/

namespace A026517.P8611375143647110842
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A046821 (2 * n))

end

end A026517.P8611375143647110842

namespace A026517

/-- `gcd(2, A046821(2*n))` -/
def P8611375143647110842.Spec : Prop :=
  ∀ n, (P8611375143647110842.a n : ℤ) = A026517 n

end A026517

/-! ## A026517.P540689491221156770

`A000034(A046821(2*n)+1)`
-/

namespace A026517.P540689491221156770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A046821 (2 * n) + 1).toNat

end

end A026517.P540689491221156770

namespace A026517

/-- `A000034(A046821(2*n)+1)` -/
def P540689491221156770.Spec : Prop :=
  ∀ n, P540689491221156770.a n = A026517 n

end A026517

/-! ## A026517.P10752966760297280634

`A014695((A046821(2*n)+1)²)`
-/

namespace A026517.P10752966760297280634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014695 ((A046821 (2 * n) + 1) ^ 2).toNat

end

end A026517.P10752966760297280634

namespace A026517

/-- `A014695((A046821(2*n)+1)²)` -/
def P10752966760297280634.Spec : Prop :=
  ∀ n, P10752966760297280634.a n = A026517 n

end A026517

/-! ## A026517.P3816657784613492908

`A000034((1-A046821(2*n))²)`
-/

namespace A026517.P3816657784613492908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 ((1 - A046821 (2 * n)) ^ 2).toNat

end

end A026517.P3816657784613492908

namespace A026517

/-- `A000034((1-A046821(2*n))²)` -/
def P3816657784613492908.Spec : Prop :=
  ∀ n, P3816657784613492908.a n = A026517 n

end A026517

/-! ## A026517.P16564351273644921475

`A014695((1-A046821(2*n))²)`
-/

namespace A026517.P16564351273644921475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014695 ((1 - A046821 (2 * n)) ^ 2).toNat

end

end A026517.P16564351273644921475

namespace A026517

/-- `A014695((1-A046821(2*n))²)` -/
def P16564351273644921475.Spec : Prop :=
  ∀ n, P16564351273644921475.a n = A026517 n

end A026517

/-! ## A026517.P17873905071861674131

`2/A014695(A046821(2*n)²)`
-/

namespace A026517.P17873905071861674131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A014695 (A046821 (2 * n) ^ 2).toNat : ℚ)

end

end A026517.P17873905071861674131

namespace A026517

/-- `2/A014695(A046821(2*n)²)` -/
def P17873905071861674131.Spec : Prop :=
  ∀ n, P17873905071861674131.a n = (A026517 n : ℚ)

end A026517

/-! ## A026517.P18410334516970904159

`A010060(5*n)+1`
-/

namespace A026517.P18410334516970904159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (5 * n) + 1

end

end A026517.P18410334516970904159

namespace A026517

/-- `A010060(5*n)+1` -/
def P18410334516970904159.Spec : Prop :=
  ∀ n, P18410334516970904159.a n = A026517 n

end A026517

/-! ## A026517.P351768206391156691

`ceil(atan(A268726(2*n+3*n)+1))`
-/

namespace A026517.P351768206391156691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (A268726 (2 * n + 3 * n) + 1 : ℝ)⌉

end

end A026517.P351768206391156691

namespace A026517

/-- `ceil(atan(A268726(2*n+3*n)+1))` -/
def P351768206391156691.Spec : Prop :=
  ∀ n, P351768206391156691.a n = A026517 n

end A026517

/-! ## A026517.P8274995235112899381

`A163542(A215145(n))`
-/

namespace A026517.P8274995235112899381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163542 (A215145 n).toNat

end

end A026517.P8274995235112899381

namespace A026517

/-- `A163542(A215145(n))` -/
def P8274995235112899381.Spec : Prop :=
  ∀ n, P8274995235112899381.a n = A026517 n

end A026517

/-! ## A026517.P3539859795065755112

`2-A010060(xor(1, A008587(n)))`
-/

namespace A026517.P3539859795065755112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A010060 (Int.xor 1 (A008587 n)).toNat

end

end A026517.P3539859795065755112

namespace A026517

/-- `2-A010060(xor(1, A008587(n)))` -/
def P3539859795065755112.Spec : Prop :=
  ∀ n, P3539859795065755112.a n = A026517 n

end A026517

/-! ## A026517.P8592336103589899720

`A001285(5*n)`
-/

namespace A026517.P8592336103589899720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (5 * n)

end

end A026517.P8592336103589899720

namespace A026517

/-- `A001285(5*n)` -/
def P8592336103589899720.Spec : Prop :=
  ∀ n, P8592336103589899720.a n = A026517 n

end A026517

/-! ## A026517.P5949060060079894602

`2-A010059(5*n)`
-/

namespace A026517.P5949060060079894602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A010059 (5 * n)

end

end A026517.P5949060060079894602

namespace A026517

/-- `2-A010059(5*n)` -/
def P5949060060079894602.Spec : Prop :=
  ∀ n, P5949060060079894602.a n = A026517 n

end A026517

/-! ## A026517.P3390305353816588918

`A000120(5*n)%2+1`
-/

namespace A026517.P3390305353816588918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000120 (5 * n)) 2 + 1

end

end A026517.P3390305353816588918

namespace A026517

/-- `A000120(5*n)%2+1` -/
def P3390305353816588918.Spec : Prop :=
  ∀ n, P3390305353816588918.a n = A026517 n

end A026517

/-!
# A026519: Irregular triangular array T read by rows: T(n, k) = T(n-1, k-2) + T(n-1, k) if (n mod 2) = 0, otherwise T(n-1, k-2) + T(n-1, k-1) + T(n-1, k), with T(n, 0) = T(n, 2*n) = 1, T(n, 1) = T(n, 2*n-1) = floor((n+1)/2).

The programs for A026519, there is no canonical definition to state claims against.
-/

/-! ## A026519.P960663433293347076

`A342010(A247644(n+1)%A171674(2*n+3))`
-/

namespace A026519.P960663433293347076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342010 (Int.tmod (A247644 (n + 1)) (A171674 (2 * n + 3))).toNat

end

end A026519.P960663433293347076

/-! ## A026519.P12823399490209460112

`A001462(A226048(n)%A117416(n))`
-/

namespace A026519.P12823399490209460112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (Int.tmod (A226048 n) (A117416 n)).toNat

end

end A026519.P12823399490209460112

/-! ## A026519.P6989416202049837912

`A342010(A247644(n+1))%A035033(2*n+3)`
-/

namespace A026519.P6989416202049837912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342010 (A247644 (n + 1)).toNat) (A035033 (2 * n + 3))

end

end A026519.P6989416202049837912

/-! ## A026519.P2028637297583389083

`A342010(A247644(n+1))^A161127(A292477(2*(n+1)))`
-/

namespace A026519.P2028637297583389083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342010 (A247644 (n + 1)).toNat : ℚ) ^ (A161127 (A292477 (2 * (n + 1))).toNat : ℤ)

end

end A026519.P2028637297583389083

/-! ## A026519.P17035941175605396098

`A354226(A247644(n+1))`
-/

namespace A026519.P17035941175605396098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354226 (A247644 (n + 1)).toNat

end

end A026519.P17035941175605396098

/-!
# A026520: a(n) = T(n,n), T given by A026519. Also a(n) = number of integer strings s(0), ..., s(n), counted by T, such that s(n) = 0.

The programs for A026520, there is no canonical definition to state claims against.
-/

/-! ## A026520.P16335834929204953210

`A026537(n)+A026537(A124625(n))`
-/

namespace A026520.P16335834929204953210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026537 n + A026537 (A124625 n).toNat

end

end A026520.P16335834929204953210

/-! ## A026520.P5724411388706331229

`A026553(n+1)-A026537(n+1)`
-/

namespace A026520.P5724411388706331229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026553 (n + 1) - A026537 (n + 1)

end

end A026520.P5724411388706331229

/-! ## A026520.P11123472314251394255

`2*A026531(n)-A026532(n+1)`
-/

namespace A026520.P11123472314251394255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026531 n - A026532 (n + 1)

end

end A026520.P11123472314251394255

/-! ## A026520.P6656893735389434959

`A026519(∑[2*n])`
-/

namespace A026520.P6656893735389434959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026519 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A026520.P6656893735389434959

/-! ## A026520.P13037174073463042110

`A026519(n²+n)%A063766(n)`
-/

namespace A026520.P13037174073463042110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026519 (n ^ 2 + n)) (A063766 n)

end

end A026520.P13037174073463042110

/-! ## A026520.P12254706928461397188

`A026519(n²)*A026519(A002378(n))`
-/

namespace A026520.P12254706928461397188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026519 (n ^ 2) * A026519 (A002378 n).toNat

end

end A026520.P12254706928461397188

/-! ## A026520.P14999684050481322036

`A026519(A002378(n))%A026291(n+2)`
-/

namespace A026520.P14999684050481322036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026519 (A002378 n).toNat) (A026291 (n + 2))

end

end A026520.P14999684050481322036

/-! ## A026520.P88720346305777224

`A026519(A002378(n))/A026519(A026519(n)²)`
-/

namespace A026520.P88720346305777224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026519 (A002378 n).toNat : ℚ) / (A026519 (A026519 n ^ 2).toNat : ℚ)

end

end A026520.P88720346305777224

/-!
# A026521: a(n) = T(n, n-1), T given by A026519. Also a(n) = number of integer strings s(0), ..., s(n), counted by T, such that s(n) = 1.

The programs for A026521, there is no canonical definition to state claims against.
-/

/-! ## A026521.P6182005212333542044

`A026537(n+2)/2`
-/

namespace A026521.P6182005212333542044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026537 (n + 2) : ℚ) / 2

end

end A026521.P6182005212333542044

/-! ## A026521.P4122070762727044224

`record[A026537(n)]/A020639(A004277(n))`
-/

namespace A026521.P4122070762727044224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026537 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A020639 (A004277 n).toNat : ℚ)

end

end A026521.P4122070762727044224

/-! ## A026521.P8183016438197979018

`A026554(n+2)-A026538(n+2)`
-/

namespace A026521.P8183016438197979018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026554 (n + 2) - A026538 (n + 2)

end

end A026521.P8183016438197979018

/-! ## A026521.P15971713576452819898

`A026548(n+2)-A026532(n+2)`
-/

namespace A026521.P15971713576452819898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026548 (n + 2) - A026532 (n + 2)

end

end A026521.P15971713576452819898

/-! ## A026521.P14914708308702097196

`record[A026537(n)]/A014963(A137688(n))`
-/

namespace A026521.P14914708308702097196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026537 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A014963 (A137688 n).toNat : ℚ)

end

end A026521.P14914708308702097196

/-! ## A026521.P15750399602884879641

`A026519((n+1)²+n)`
-/

namespace A026521.P15750399602884879641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026519 ((n + 1) ^ 2 + n)

end

end A026521.P15750399602884879641

/-! ## A026521.P6003188160820884646

`A026536((n+2)*(n+3))/2`
-/

namespace A026521.P6003188160820884646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026536 ((n + 2) * (n + 3)) : ℚ) / 2

end

end A026521.P6003188160820884646

/-!
# A026522: a(n) = T(n, n-2), where T is given by A026519. Also number of integer strings s(0), ..., s(n), counted by T, such that s(n) = 2.

The programs for A026522, there is no canonical definition to state claims against.
-/

/-! ## A026522.P1863146043318372752

`A026519(∑[2*(n+2)])`
-/

namespace A026522.P1863146043318372752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026519 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A026522.P1863146043318372752

/-! ## A026522.P2876824938918285335

`record[A026519(A014616(n+1))]`
-/

namespace A026522.P2876824938918285335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026519 (A014616 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026522.P2876824938918285335

/-! ## A026522.P2483008590142873308

`record[A026519(A193422(n+1))]`
-/

namespace A026522.P2483008590142873308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026519 (A193422 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026522.P2483008590142873308

/-! ## A026522.P811401601260745938

`record[A026519(2*n)/A091597(n)]`
-/

namespace A026522.P811401601260745938
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026519 (2 * n) : ℚ) / (A091597 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026522.P811401601260745938

/-! ## A026522.P9455734805831682805

`record[gcd(A026519(n+4), A026519(n))]`
-/

namespace A026522.P9455734805831682805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A026519 (n + 4)) (A026519 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026522.P9455734805831682805

/-!
# A026523: a(n) = T(n, n-3), T given by A026519. Also a(n) = number of integer strings s(0), ..., s(n), counted by T, such that s(n) = 3.

The programs for A026523, there is no canonical definition to state claims against.
-/

/-! ## A026523.P14688905130629383891

`A026539(n+4)-A026521(n+3)`
-/

namespace A026523.P14688905130629383891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026539 (n + 4) - A026521 (n + 3)

end

end A026523.P14688905130629383891

/-! ## A026523.P1382202195280987242

`A026539(A028242(2*(n+2))+1)%A026521(n+3)`
-/

namespace A026523.P1382202195280987242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026539 (A028242 (2 * (n + 2)) + 1).toNat) (A026521 (n + 3))

end

end A026523.P1382202195280987242

/-! ## A026523.P3104778654577324188

`A026556(n+4)-A026540(n+4)`
-/

namespace A026523.P3104778654577324188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026556 (n + 4) - A026540 (n + 4)

end

end A026523.P3104778654577324188

/-! ## A026523.P6267429442927811906

`A026519((n+3)²+n)`
-/

namespace A026523.P6267429442927811906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026519 ((n + 3) ^ 2 + n)

end

end A026523.P6267429442927811906

/-! ## A026523.P2956814533614292544

`record[A026519(2*n+1)/A091597(n+1)]`
-/

namespace A026523.P2956814533614292544
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026519 (2 * n + 1) : ℚ) / (A091597 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026523.P2956814533614292544

/-!
# A026524: a(n) = T(n, n-4), T given by A026519. Also a(n) = number of integer strings s(0), ..., s(n), counted by T, such that s(n) = 4.

The programs for A026524, there is no canonical definition to state claims against.
-/

/-! ## A026524.P824339104988571484

`A026540(n+5)-A026522(n+4)`
-/

namespace A026524.P824339104988571484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026540 (n + 5) - A026522 (n + 4)

end

end A026524.P824339104988571484

/-! ## A026524.P7370538074299906103

`A026557(n+5)-A026541(n+5)`
-/

namespace A026524.P7370538074299906103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026557 (n + 5) - A026541 (n + 5)

end

end A026524.P7370538074299906103

/-! ## A026524.P8638680435709931337

`A026519((n+4)²+n)`
-/

namespace A026524.P8638680435709931337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026519 ((n + 4) ^ 2 + n)

end

end A026524.P8638680435709931337

/-! ## A026524.P14388583376265762101

`record[A026519(2*n)/A091597(n+1)]`
-/

namespace A026524.P14388583376265762101
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026519 (2 * n) : ℚ) / (A091597 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026524.P14388583376265762101

/-!
# A026525: a(n) = T(2*n, n), where T is given by A026519.

The programs for A026525, there is no canonical definition to state claims against.
-/

/-! ## A026525.P4208018207956138581

`A026530(2*n)`
-/

namespace A026525.P4208018207956138581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026530 (2 * n)

end

end A026525.P4208018207956138581

/-! ## A026525.P16501719949475748907

`A026547(2*n)`
-/

namespace A026525.P16501719949475748907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026547 (2 * n)

end

end A026525.P16501719949475748907

/-! ## A026525.P7301364684273957578

`gcd(A000038(n), A026530(A004277(n)))`
-/

namespace A026525.P7301364684273957578
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A026530 (A004277 n).toNat)

end

end A026525.P7301364684273957578

/-! ## A026525.P3675932077576594878

`or(A000007(n), A026547(A005843(n)))`
-/

namespace A026525.P3675932077576594878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A026547 (A005843 n).toNat)

end

end A026525.P3675932077576594878

/-! ## A026525.P10711892099830337873

`or(A026530(A005843(n)), A089012(n+10))`
-/

namespace A026525.P10711892099830337873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A026530 (A005843 n).toNat) (A089012 (n + 10))

end

end A026525.P10711892099830337873

/-! ## A026525.P3947623096166279884

`A026536((2*n)²+n)`
-/

namespace A026525.P3947623096166279884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026536 ((2 * n) ^ 2 + n)

end

end A026525.P3947623096166279884

/-! ## A026525.P15747540263223934287

`A026519(A007742(n))`
-/

namespace A026525.P15747540263223934287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026519 (A007742 n).toNat

end

end A026525.P15747540263223934287

/-! ## A026525.P7652130229618078379

`A026519(A033954(n))`
-/

namespace A026525.P7652130229618078379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026519 (A033954 n).toNat

end

end A026525.P7652130229618078379

/-! ## A026525.P7471964532530830874

`A026519(A182868(n)+1)`
-/

namespace A026525.P7471964532530830874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026519 (A182868 n + 1).toNat

end

end A026525.P7471964532530830874

/-! ## A026525.P13663632287053880542

`A026519(A033951(n)-1)`
-/

namespace A026525.P13663632287053880542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026519 (A033951 n - 1).toNat

end

end A026525.P13663632287053880542

/-!
# A026526: a(n) = T(2n,n-1), T given by A026519.

The programs for A026526, there is no canonical definition to state claims against.
-/

/-! ## A026526.P12049051186037307759

`A026536(Δ[A051662(n)])`
-/

namespace A026526.P12049051186037307759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051662 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026536 (f1 (n + 1) - f1 n).toNat

end

end A026526.P12049051186037307759

/-! ## A026526.P6286457612010048837

`record[A026536(A308217(n))]`
-/

namespace A026526.P6286457612010048837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026536 (A308217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026526.P6286457612010048837

/-! ## A026526.P1841209855208760908

`A026519(A033951(n+1))`
-/

namespace A026526.P1841209855208760908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026519 (A033951 (n + 1)).toNat

end

end A026526.P1841209855208760908

/-! ## A026526.P3561850069234434419

`A026519(A182868(n+1))`
-/

namespace A026526.P3561850069234434419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026519 (A182868 (n + 1)).toNat

end

end A026526.P3561850069234434419

/-! ## A026526.P5570804935557287141

`A026536(A103517(n)²+n)`
-/

namespace A026526.P5570804935557287141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026536 (A103517 n ^ 2 + (n : ℤ)).toNat

end

end A026526.P5570804935557287141

/-! ## A026526.P17655490668300812339

`A026519(A033954(n+1)+1)`
-/

namespace A026526.P17655490668300812339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026519 (A033954 (n + 1) + 1).toNat

end

end A026526.P17655490668300812339

/-! ## A026526.P13964730748679295595

`A026519(A007742(n+1)-1)`
-/

namespace A026526.P13964730748679295595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026519 (A007742 (n + 1) - 1).toNat

end

end A026526.P13964730748679295595

/-! ## A026526.P2783389607354056682

`A026536(A007742(n+1)-1)`
-/

namespace A026526.P2783389607354056682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026536 (A007742 (n + 1) - 1).toNat

end

end A026526.P2783389607354056682

/-! ## A026526.P1509374482503643773

`A026536(A185669(n+1)-1)`
-/

namespace A026526.P1509374482503643773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026536 (A185669 (n + 1) - 1).toNat

end

end A026526.P1509374482503643773

/-! ## A026526.P11638781600122855307

`A026536(A308217(2*n+1))`
-/

namespace A026526.P11638781600122855307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026536 (A308217 (2 * n + 1)).toNat

end

end A026526.P11638781600122855307

/-!
# A026527: a(n) = T(2*n, n-2), where T is given by A026519.

The programs for A026527, there is no canonical definition to state claims against.
-/

/-! ## A026527.P8664354922328898118

`A026536(A185669(n+2))`
-/

namespace A026527.P8664354922328898118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026536 (A185669 (n + 2)).toNat

end

end A026527.P8664354922328898118

/-! ## A026527.P10426732096676774425

`A026536(A033951(n+2)+1)`
-/

namespace A026527.P10426732096676774425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026536 (A033951 (n + 2) + 1).toNat

end

end A026527.P10426732096676774425

/-! ## A026527.P1701183155349170297

`A026536(A182868(n+2)-1)`
-/

namespace A026527.P1701183155349170297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026536 (A182868 (n + 2) - 1).toNat

end

end A026527.P1701183155349170297

/-! ## A026527.P17025159602576087151

`A026519(A184635(n+2)+n)`
-/

namespace A026527.P17025159602576087151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026519 (A184635 (n + 2) + (n : ℤ)).toNat

end

end A026527.P17025159602576087151

/-! ## A026527.P8759595579034847495

`A026536(A184635(n+2)+n)`
-/

namespace A026527.P8759595579034847495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026536 (A184635 (n + 2) + (n : ℤ)).toNat

end

end A026527.P8759595579034847495

/-!
# A026528: a(n) = T(2*n-1, n-1), T given by A026519.

The programs for A026528, there is no canonical definition to state claims against.
-/

/-! ## A026528.P5781314570050690250

`A026530(Δ[n²])`
-/

namespace A026528.P5781314570050690250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026530 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A026528.P5781314570050690250

/-! ## A026528.P2641953013873432874

`A026563(Δ[n²])`
-/

namespace A026528.P2641953013873432874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026563 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A026528.P2641953013873432874

/-! ## A026528.P4619893172661563583

`record[A026563(n*n%2)]`
-/

namespace A026528.P4619893172661563583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026563 (n * (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026528.P4619893172661563583

/-! ## A026528.P10220264812297756448

`or(char[10], A026530(2*n+1))`
-/

namespace A026528.P10220264812297756448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A026530 (2 * n + 1))

end

end A026528.P10220264812297756448

/-! ## A026528.P6087695381536012605

`record[A026563((n+1)/2^val(n+1, 2))]`
-/

namespace A026528.P6087695381536012605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026563 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026528.P6087695381536012605

/-! ## A026528.P513542068334666513

`record[A026563(A026741(n))]`
-/

namespace A026528.P513542068334666513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026563 (A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026528.P513542068334666513

/-! ## A026528.P9644157305577587519

`record[A026563(A000265(n+1))]`
-/

namespace A026528.P9644157305577587519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026563 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026528.P9644157305577587519

/-! ## A026528.P1633352107145785850

`record[A026563(A014681(n)+1)]`
-/

namespace A026528.P1633352107145785850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026563 (A014681 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026528.P1633352107145785850

/-! ## A026528.P16426923652767242623

`record[A026563(A131380(n)+1)]`
-/

namespace A026528.P16426923652767242623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026563 (A131380 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026528.P16426923652767242623

/-! ## A026528.P4480566423948030219

`record[A026530(gcd(n, A000096(n)))]`
-/

namespace A026528.P4480566423948030219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026530 (Int.gcd (n : ℤ) (A000096 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026528.P4480566423948030219

/-! ## A026528.P310711407263137720

`record[gcd(A026530(n), A026563(n))]`
-/

namespace A026528.P310711407263137720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A026530 n) (A026563 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026528.P310711407263137720

/-! ## A026528.P14981012725474392094

`record[A026563(and(n, A022998(n)))]`
-/

namespace A026528.P14981012725474392094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026563 (Int.land (n : ℤ) (A022998 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026528.P14981012725474392094

/-! ## A026528.P7180758814644722520

`record[A026563(A022998(n+1)-n)]`
-/

namespace A026528.P7180758814644722520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026563 (A022998 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026528.P7180758814644722520

/-! ## A026528.P15783609592145870935

`gcd(A000038(n), A026530(A004277(n)+1))`
-/

namespace A026528.P15783609592145870935
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A026530 (A004277 n + 1).toNat)

end

end A026528.P15783609592145870935

/-! ## A026528.P1231749335584373541

`(A026563(2*n+1)+A026530(2*n+1))/2`
-/

namespace A026528.P1231749335584373541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026563 (2 * n + 1) + A026530 (2 * n + 1) : ℚ) / 2

end

end A026528.P1231749335584373541

/-! ## A026528.P8383070514149206303

`record[A026563(A158405(n+1))]`
-/

namespace A026528.P8383070514149206303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026563 (A158405 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026528.P8383070514149206303

/-! ## A026528.P5341917177813705518

`gcd(A026563(2*n+1)*A026563(n+1), A026563(2*n+1))`
-/

namespace A026528.P5341917177813705518
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A026563 (2 * n + 1) * A026563 (n + 1)) (A026563 (2 * n + 1))

end

end A026528.P5341917177813705518

/-!
# A026529: a(n) = T(2*n-1, n-2), where T is given by A026519.

The programs for A026529, there is no canonical definition to state claims against.
-/

/-! ## A026529.P13216248961511583951

`A026559(n+2)-A026526(n+2)`
-/

namespace A026529.P13216248961511583951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026559 (n + 2) - A026526 (n + 2)

end

end A026529.P13216248961511583951

/-! ## A026529.P12415942412141306358

`A026559(round(sqrt((n+2)²+1)))%A026526(n+2)`
-/

namespace A026529.P12415942412141306358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026559 (SequenceMachineLib.roundAway (Real.sqrt ((n + 2) ^ 2 + 1 : ℝ))).toNat) (A026526 (n + 2))

end

end A026529.P12415942412141306358

/-! ## A026529.P7044653647571144078

`A026519(∑[8*n+9])`
-/

namespace A026529.P7044653647571144078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026519 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A026529.P7044653647571144078

/-! ## A026529.P14634056389659981847

`A026552(∑[8*n+9])`
-/

namespace A026529.P14634056389659981847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026552 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A026529.P14634056389659981847

/-! ## A026529.P11089798708063603247

`record[A026552(A308217(n)+n)]`
-/

namespace A026529.P11089798708063603247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026552 (A308217 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026529.P11089798708063603247

/-!
# A026530: a(n) = T(n, floor(n/2)), T given by A026519.

The programs for A026530, there is no canonical definition to state claims against.
-/

/-! ## A026530.P10946178647466019534

`A026519(A035608(n))`
-/

namespace A026530.P10946178647466019534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026519 (A035608 n).toNat

end

end A026530.P10946178647466019534

/-! ## A026530.P2920761708428505745

`A026519(A074377(n))`
-/

namespace A026530.P2920761708428505745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026519 (A074377 n).toNat

end

end A026530.P2920761708428505745

/-! ## A026530.P6536816974516213518

`A026519(A074378(n))`
-/

namespace A026530.P6536816974516213518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026519 (A074378 n).toNat

end

end A026530.P6536816974516213518

/-! ## A026530.P16438973718663822868

`A026519(A156859(n))`
-/

namespace A026530.P16438973718663822868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026519 (A156859 n).toNat

end

end A026530.P16438973718663822868

/-! ## A026530.P3046156682278780413

`A026519(∑[A014601(n)])`
-/

namespace A026530.P3046156682278780413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026519 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A026530.P3046156682278780413

/-!
# A026531: a(n) = T(n,0) + T(n,1) + ... + T(n,n), T given by A026519.

The programs for A026531, there is no canonical definition to state claims against.
-/

/-! ## A026531.P16457239682661639565

`A026564(n+1)-Δ[A026550(n)]`
-/

namespace A026531.P16457239682661639565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026550 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026564 (n + 1) - (f1 (n + 1) - f1 n)

end

end A026531.P16457239682661639565

/-! ## A026531.P12300137892744443733

`A026564(n+1)-A026548(n+1)`
-/

namespace A026531.P12300137892744443733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026564 (n + 1) - A026548 (n + 1)

end

end A026531.P12300137892744443733

/-! ## A026531.P1784020141442010662

`(A026532(n+1)+A026520(n))/2`
-/

namespace A026531.P1784020141442010662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026532 (n + 1) + A026520 n : ℚ) / 2

end

end A026531.P1784020141442010662

/-! ## A026531.P60456830250568057

`A026533(n)+A026550(n)-A026566(n)`
-/

namespace A026531.P60456830250568057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026533 n + (A026550 n - A026566 n)

end

end A026531.P60456830250568057

/-! ## A026531.P13291748181382759752

`A026533(n)+∑[A026548(n)]-A026566(n)`
-/

namespace A026531.P13291748181382759752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026548 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026533 n + (∑ j ∈ Finset.range (n + 1), f1 j - A026566 n)

end

end A026531.P13291748181382759752

/-! ## A026531.P12703384882819293028

`A026564(n)-Δ[A026550(n)-A026564(n)]`
-/

namespace A026531.P12703384882819293028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026550 n - A026564 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026564 n - (f1 (n + 1) - f1 n)

end

end A026531.P12703384882819293028

/-! ## A026531.P11653727083327387205

`Δ[A026566(n)-A026550(n)]`
-/

namespace A026531.P11653727083327387205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026566 n - A026550 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026531.P11653727083327387205

/-! ## A026531.P3489615298731879633

`Δ[∑[A026564(n)]-A026550(n)]`
-/

namespace A026531.P3489615298731879633
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026564 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A026550 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026531.P3489615298731879633

/-!
# A026532: Ratios of successive terms are 3, 2, 3, 2, 3, 2, 3, 2, ...

The programs for A026532, the canonical program `A026532.P11644222334377413788` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026532 has offset 1).

The definition of A026532 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A026532.P11644222334377413788

`1/2*(5+(-1)^(n+1))*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026532

/-- `1/2*(5+(-1)^(n+1))*a(n-1)` -/
def P11644222334377413788.Spec : Prop :=
  ∀ n, P11644222334377413788.a n = (A026532 (n + 1) : ℚ)

end A026532

/-! ## A026532.P2509457357592207402

`1/4*(3-(-1)^(n+1))*6^floor((n+1)/2)`
-/

namespace A026532.P2509457357592207402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 4 * (3 - (-1) ^ (n + 1) : ℚ) * (6 : ℚ) ^ (⌊(n + 1 : ℚ) / 2⌋ : ℤ)

end

end A026532.P2509457357592207402

namespace A026532

/-- `1/4*(3-(-1)^(n+1))*6^floor((n+1)/2)` -/
def P2509457357592207402.Spec : Prop :=
  ∀ n, P2509457357592207402.a n = (A026532 (n + 1) : ℚ)

end A026532

/-! ## A026532.P5649316118683484671

`ogf((1+3x)/(1-6x^2))`
-/

namespace A026532.P5649316118683484671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, 0, -6] n

end

end A026532.P5649316118683484671

namespace A026532

/-- `ogf((1+3x)/(1-6x^2))` -/
def P5649316118683484671.Spec : Prop :=
  ∀ n, P5649316118683484671.a n = A026532 (n + 1)

end A026532

/-! ## A026532.P10728226934461346937

`∏[n%2+2]/2`
-/

namespace A026532.P10728226934461346937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A026532.P10728226934461346937

namespace A026532

/-- `∏[n%2+2]/2` -/
def P10728226934461346937.Spec : Prop :=
  ∀ n, P10728226934461346937.a n = (A026532 (n + 1) : ℚ)

end A026532

/-! ## A026532.P6209513566182610831

`∏[4-gcd(2, n)]/2`
-/

namespace A026532.P6209513566182610831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - (Nat.gcd 2 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A026532.P6209513566182610831

namespace A026532

/-- `∏[4-gcd(2, n)]/2` -/
def P6209513566182610831.Spec : Prop :=
  ∀ n, P6209513566182610831.a n = (A026532 (n + 1) : ℚ)

end A026532

/-! ## A026532.P17879194279591577097

`∏[and(1, n)+2]/2`
-/

namespace A026532.P17879194279591577097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A026532.P17879194279591577097

namespace A026532

/-- `∏[and(1, n)+2]/2` -/
def P17879194279591577097.Spec : Prop :=
  ∀ n, P17879194279591577097.a n = (A026532 (n + 1) : ℚ)

end A026532

/-! ## A026532.P10679561525634126256

`∏[5-a(n-1)]` with `a(0)=1, a(1)=3`
-/

namespace A026532.P10679561525634126256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  5 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A026532.P10679561525634126256

namespace A026532

/-- `∏[5-a(n-1)]` -/
def P10679561525634126256.Spec : Prop :=
  ∀ n, P10679561525634126256.a n = A026532 (n + 1)

end A026532

/-! ## A026532.P12931913134748498367

`∏[3-and(1, n-1)]/2`
-/

namespace A026532.P12931913134748498367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - Int.land 1 ((n : ℤ) - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A026532.P12931913134748498367

namespace A026532

/-- `∏[3-and(1, n-1)]/2` -/
def P12931913134748498367.Spec : Prop :=
  ∀ n, P12931913134748498367.a n = (A026532 (n + 1) : ℚ)

end A026532

/-! ## A026532.P7027591111458466230

`∏[n+3-or(1, n)]/2`
-/

namespace A026532.P7027591111458466230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - (Nat.lor 1 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A026532.P7027591111458466230

namespace A026532

/-- `∏[n+3-or(1, n)]/2` -/
def P7027591111458466230.Spec : Prop :=
  ∀ n, P7027591111458466230.a n = (A026532 (n + 1) : ℚ)

end A026532

/-! ## A026532.P10452429758654190685

`a(n-2)/(1-5/6)` with `a(0)=1, a(1)=3`
-/

namespace A026532.P10452429758654190685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) / (1 - (5 : ℚ) / 6)

end

end A026532.P10452429758654190685

namespace A026532

/-- `a(n-2)/(1-5/6)` -/
def P10452429758654190685.Spec : Prop :=
  ∀ n, P10452429758654190685.a n = (A026532 (n + 1) : ℚ)

end A026532

/-! ## A026532.P14672851275135734257

`∏[gcd(n+1, n+3)+1]/2`
-/

namespace A026532.P14672851275135734257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (n + 3) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A026532.P14672851275135734257

namespace A026532

/-- `∏[gcd(n+1, n+3)+1]/2` -/
def P14672851275135734257.Spec : Prop :=
  ∀ n, P14672851275135734257.a n = (A026532 (n + 1) : ℚ)

end A026532

/-! ## A026532.P17282418621341956249

`∏[or(1, n-1)-(n-3)]/2`
-/

namespace A026532.P17282418621341956249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n : ℤ) - 1) - ((n : ℤ) - 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A026532.P17282418621341956249

namespace A026532

/-- `∏[or(1, n-1)-(n-3)]/2` -/
def P17282418621341956249.Spec : Prop :=
  ∀ n, P17282418621341956249.a n = (A026532 (n + 1) : ℚ)

end A026532

/-! ## A026532.P11622806323796326199

`a(n-2)+lcm(5, a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A026532.P11622806323796326199
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) + Nat.lcm 5 (a (n - 2))

end

end A026532.P11622806323796326199

namespace A026532

/-- `a(n-2)+lcm(5, a(n-2))` -/
def P11622806323796326199.Spec : Prop :=
  ∀ n, (P11622806323796326199.a n : ℤ) = A026532 (n + 1)

end A026532

/-! ## A026532.P14979477803483687022

`∏[dr(A040352(n))]`
-/

namespace A026532.P14979477803483687022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A040352 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A026532.P14979477803483687022

namespace A026532

/-- `∏[dr(A040352(n))]` -/
def P14979477803483687022.Spec : Prop :=
  ∀ n, (P14979477803483687022.a n : ℤ) = A026532 (n + 1)

end A026532

/-! ## A026532.P2597538859532791692

`record[∏[A167373(n)]]`
-/

namespace A026532.P2597538859532791692
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167373 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026532.P2597538859532791692

namespace A026532

/-- `record[∏[A167373(n)]]` -/
def P2597538859532791692.Spec : Prop :=
  ∀ n, P2597538859532791692.a n = A026532 (n + 1)

end A026532

/-! ## A026532.P16878413828603966319

`∏[A186181(2*n)]`
-/

namespace A026532.P16878413828603966319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186181 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A026532.P16878413828603966319

namespace A026532

/-- `∏[A186181(2*n)]` -/
def P16878413828603966319.Spec : Prop :=
  ∀ n, P16878413828603966319.a n = A026532 (n + 1)

end A026532

/-! ## A026532.P15982427929716106933

`∏[A010693(n)]/2`
-/

namespace A026532.P15982427929716106933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010693 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A026532.P15982427929716106933

namespace A026532

/-- `∏[A010693(n)]/2` -/
def P15982427929716106933.Spec : Prop :=
  ∀ n, P15982427929716106933.a n = (A026532 (n + 1) : ℚ)

end A026532

/-! ## A026532.P4076702909128674175

`A026549(n+1)/2`
-/

namespace A026532.P4076702909128674175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026549 (n + 1) : ℚ) / 2

end

end A026532.P4076702909128674175

namespace A026532

/-- `A026549(n+1)/2` -/
def P4076702909128674175.Spec : Prop :=
  ∀ n, P4076702909128674175.a n = (A026532 (n + 1) : ℚ)

end A026532

/-! ## A026532.P11276366077915575099

`∏[dr(A040372(2*n))]`
-/

namespace A026532.P11276366077915575099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A040372 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A026532.P11276366077915575099

namespace A026532

/-- `∏[dr(A040372(2*n))]` -/
def P11276366077915575099.Spec : Prop :=
  ∀ n, (P11276366077915575099.a n : ℤ) = A026532 (n + 1)

end A026532

/-!
# A026533: a(n) = Sum_{i=0..n} Sum_{j=0..i} T(i,j), T given by A026519.

The programs for A026533, there is no canonical definition to state claims against.
-/

/-! ## A026533.P11432239735747858484

`∑[A026531(n)]`
-/

namespace A026533.P11432239735747858484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026531 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026533.P11432239735747858484

/-! ## A026533.P17170270177038102294

`A026531(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A026533.P17170270177038102294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026531 n + a (A023443 n).toNat

end

end A026533.P17170270177038102294

/-! ## A026533.P12781309339373516765

`∑[(A026532(n+1)+A026520(n))/2]`
-/

namespace A026533.P12781309339373516765
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026532 (n + 1) + A026520 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026533.P12781309339373516765

/-! ## A026533.P15809664725927517143

`A026531(n)+A026566(n)-A026550(n)`
-/

namespace A026533.P15809664725927517143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026531 n + (A026566 n - A026550 n)

end

end A026533.P15809664725927517143

/-! ## A026533.P5143895261855202444

`A026566(n+1)-A026550(n+1)`
-/

namespace A026533.P5143895261855202444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026566 (n + 1) - A026550 (n + 1)

end

end A026533.P5143895261855202444

/-!
# A026534: a(n) = Sum_{i=0..2*n} Sum_{j=0..n-1} A026519(j, i).

The programs for A026534, the canonical program `A026534.P5983129732525761038` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026534 has offset 1).

The definition of A026534 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A026534.P5983129732525761038

`1/60*(6^((n+2)/2)*((4*sqrt(6)-9)*(-1)^(n+1)+4*sqrt(6)+9)-48)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026534

/-- `1/60*(6^((n+2)/2)*((4*sqrt(6)-9)*(-1)^(n+1)+4*sqrt(6)+9)-48)` -/
def P5983129732525761038.Spec : Prop :=
  ∀ n, P5983129732525761038.a n = (A026534 (n + 1) : ℝ)

end A026534

/-! ## A026534.P14166071093898868665

`∑[ogf((1+3x)/(1-6x^2))]`
-/

namespace A026534.P14166071093898868665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, 0, -6] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026534.P14166071093898868665

namespace A026534

/-- `∑[ogf((1+3x)/(1-6x^2))]` -/
def P14166071093898868665.Spec : Prop :=
  ∀ n, P14166071093898868665.a n = A026534 (n + 1)

end A026534

/-! ## A026534.P9356262183371623411

`ogf((1+3x)/(1-x-6x^2+6x^3))`
-/

namespace A026534.P9356262183371623411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, -1, -6, 6] n

end

end A026534.P9356262183371623411

namespace A026534

/-- `ogf((1+3x)/(1-x-6x^2+6x^3))` -/
def P9356262183371623411.Spec : Prop :=
  ∀ n, P9356262183371623411.a n = A026534 (n + 1)

end A026534

/-! ## A026534.P5881604266464069726

`∑[6*a(n-2)]` with `a(0)=1, a(1)=3`
-/

namespace A026534.P5881604266464069726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  6 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026534.P5881604266464069726

namespace A026534

/-- `∑[6*a(n-2)]` -/
def P5881604266464069726.Spec : Prop :=
  ∀ n, (P5881604266464069726.a n : ℤ) = A026534 (n + 1)

end A026534

/-! ## A026534.P7516620262775611082

`∑[∏[n%2+2]/2]`
-/

namespace A026534.P7516620262775611082
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026534.P7516620262775611082

namespace A026534

/-- `∑[∏[n%2+2]/2]` -/
def P7516620262775611082.Spec : Prop :=
  ∀ n, P7516620262775611082.a n = (A026534 (n + 1) : ℚ)

end A026534

/-! ## A026534.P7599895645622806064

`∑[∏[and(1, n)+2]/2]`
-/

namespace A026534.P7599895645622806064
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026534.P7599895645622806064

namespace A026534

/-- `∑[∏[and(1, n)+2]/2]` -/
def P7599895645622806064.Spec : Prop :=
  ∀ n, P7599895645622806064.a n = (A026534 (n + 1) : ℚ)

end A026534

/-! ## A026534.P7186154574668831589

`∑[∏[xor(2, and(1, n))]/2]`
-/

namespace A026534.P7186154574668831589
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (Nat.land 1 n)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026534.P7186154574668831589

namespace A026534

/-- `∑[∏[xor(2, and(1, n))]/2]` -/
def P7186154574668831589.Spec : Prop :=
  ∀ n, P7186154574668831589.a n = (A026534 (n + 1) : ℚ)

end A026534

/-! ## A026534.P14471029047815056791

`6*a(n-2)+4` with `a(0)=1, a(1)=4`
-/

namespace A026534.P14471029047815056791
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  6 * a (n - 2) + 4

end

end A026534.P14471029047815056791

namespace A026534

/-- `6*a(n-2)+4` -/
def P14471029047815056791.Spec : Prop :=
  ∀ n, (P14471029047815056791.a n : ℤ) = A026534 (n + 1)

end A026534

/-! ## A026534.P11731619639145484257

`4-(a(n-2)-7*a(n-2))` with `a(0)=1, a(1)=4`
-/

namespace A026534.P11731619639145484257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  4 - (a (n - 2) - 7 * a (n - 2))

end

end A026534.P11731619639145484257

namespace A026534

/-- `4-(a(n-2)-7*a(n-2))` -/
def P11731619639145484257.Spec : Prop :=
  ∀ n, P11731619639145484257.a n = A026534 (n + 1)

end A026534

/-! ## A026534.P11067599182990958170

`∑[A026532(n+1)]`
-/

namespace A026534.P11067599182990958170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026534.P11067599182990958170

namespace A026534

/-- `∑[A026532(n+1)]` -/
def P11067599182990958170.Spec : Prop :=
  ∀ n, P11067599182990958170.a n = A026534 (n + 1)

end A026534

/-! ## A026534.P16513608600468831030

`∑[∏[A186181(2*n)]]`
-/

namespace A026534.P16513608600468831030
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186181 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026534.P16513608600468831030

namespace A026534

/-- `∑[∏[A186181(2*n)]]` -/
def P16513608600468831030.Spec : Prop :=
  ∀ n, P16513608600468831030.a n = A026534 (n + 1)

end A026534

/-! ## A026534.P14935649308170156922

`∑[∏[A010693(n)]/2]`
-/

namespace A026534.P14935649308170156922
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010693 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026534.P14935649308170156922

namespace A026534

/-- `∑[∏[A010693(n)]/2]` -/
def P14935649308170156922.Spec : Prop :=
  ∀ n, P14935649308170156922.a n = (A026534 (n + 1) : ℚ)

end A026534

/-! ## A026534.P15561025845864926136

`∑[A026549(n+1)/2]`
-/

namespace A026534.P15561025845864926136
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026549 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026534.P15561025845864926136

namespace A026534

/-- `∑[A026549(n+1)/2]` -/
def P15561025845864926136.Spec : Prop :=
  ∀ n, P15561025845864926136.a n = (A026534 (n + 1) : ℚ)

end A026534

/-! ## A026534.P5922691369612724984

`∑[(A164560(n+1)+1)/2]`
-/

namespace A026534.P5922691369612724984
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164560 (n + 1) + 1 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026534.P5922691369612724984

namespace A026534

/-- `∑[(A164560(n+1)+1)/2]` -/
def P5922691369612724984.Spec : Prop :=
  ∀ n, P5922691369612724984.a n = (A026534 (n + 1) : ℚ)

end A026534

/-! ## A026534.P17514666674083999878

`∑[∏[A020639(A008486(n))]]`
-/

namespace A026534.P17514666674083999878
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008486 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026534.P17514666674083999878

namespace A026534

/-- `∑[∏[A020639(A008486(n))]]` -/
def P17514666674083999878.Spec : Prop :=
  ∀ n, P17514666674083999878.a n = A026534 (n + 1)

end A026534

/-! ## A026534.P2820318404234600665

`∑[∏[A006530(A071044(n))]]`
-/

namespace A026534.P2820318404234600665
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A071044 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026534.P2820318404234600665

namespace A026534

/-- `∑[∏[A006530(A071044(n))]]` -/
def P2820318404234600665.Spec : Prop :=
  ∀ n, P2820318404234600665.a n = A026534 (n + 1)

end A026534

/-! ## A026534.P4944575101724605480

`∑[∏[A164358(n*A164358(n))]]`
-/

namespace A026534.P4944575101724605480
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164358 ((n : ℤ) * A164358 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026534.P4944575101724605480

namespace A026534

/-- `∑[∏[A164358(n*A164358(n))]]` -/
def P4944575101724605480.Spec : Prop :=
  ∀ n, P4944575101724605480.a n = A026534 (n + 1)

end A026534

/-! ## A026534.P724228575012401563

`∑[A258439(n+1)*A258439(n)]`
-/

namespace A026534.P724228575012401563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258439 (n + 1) * A258439 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026534.P724228575012401563

namespace A026534

/-- `∑[A258439(n+1)*A258439(n)]` -/
def P724228575012401563.Spec : Prop :=
  ∀ n, P724228575012401563.a n = A026534 (n + 1)

end A026534

/-! ## A026534.P17234862131231665006

`A329114(n+2)+A329114(n+3)`
-/

namespace A026534.P17234862131231665006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329114 (n + 2) + A329114 (n + 3)

end

end A026534.P17234862131231665006

namespace A026534

/-- `A329114(n+2)+A329114(n+3)` -/
def P17234862131231665006.Spec : Prop :=
  ∀ n, P17234862131231665006.a n = A026534 (n + 1)

end A026534

/-! ## A026534.P3212215324503027623

`(A026551(n)-1)/2`
-/

namespace A026534.P3212215324503027623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026551 n - 1 : ℚ) / 2

end

end A026534.P3212215324503027623

namespace A026534

/-- `(A026551(n)-1)/2` -/
def P3212215324503027623.Spec : Prop :=
  ∀ n, P3212215324503027623.a n = (A026534 (n + 1) : ℚ)

end A026534

/-!
# A026535: a(n) = t(1+5n) where t = A001285 (Thue-Morse sequence).

The programs for A026535, the canonical program `A026535.P3473713263889247215` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026535 has offset 0).

The definition of A026535 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026535.P7193638842319541541

`gcd(2, A046821(n)+1)`
-/

namespace A026535.P7193638842319541541
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A046821 n + 1)

end

end A026535.P7193638842319541541

namespace A026535

/-- `gcd(2, A046821(n)+1)` -/
def P7193638842319541541.Spec : Prop :=
  ∀ n, (P7193638842319541541.a n : ℤ) = A026535 n

end A026535

/-! ## A026535.P3473713263889247215

`A001316(5*n+1)%3`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A026535

/-- `A001316(5*n+1)%3` -/
def P3473713263889247215.Spec : Prop :=
  ∀ n, P3473713263889247215.a n = A026535 n

theorem P3473713263889247215.correct : P3473713263889247215.Spec := by
  intro n
  simp only [A026535]

end A026535

/-! ## A026535.P9989629223536088245

`A000034(A046821(n))`
-/

namespace A026535.P9989629223536088245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A046821 n).toNat

end

end A026535.P9989629223536088245

namespace A026535

/-- `A000034(A046821(n))` -/
def P9989629223536088245.Spec : Prop :=
  ∀ n, P9989629223536088245.a n = A026535 n

end A026535

/-! ## A026535.P623203884522618389

`A014695(A046821(n)²)`
-/

namespace A026535.P623203884522618389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014695 (A046821 n ^ 2).toNat

end

end A026535.P623203884522618389

namespace A026535

/-- `A014695(A046821(n)²)` -/
def P623203884522618389.Spec : Prop :=
  ∀ n, P623203884522618389.a n = A026535 n

end A026535

/-! ## A026535.P15318521213163425136

`A014695(2*A046821(n))`
-/

namespace A026535.P15318521213163425136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014695 (2 * A046821 n).toNat

end

end A026535.P15318521213163425136

namespace A026535

/-- `A014695(2*A046821(n))` -/
def P15318521213163425136.Spec : Prop :=
  ∀ n, P15318521213163425136.a n = A026535 n

end A026535

/-! ## A026535.P9133102127741226632

`A014695(A046821(n)+A046821(n)-1)`
-/

namespace A026535.P9133102127741226632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014695 (A046821 n + (A046821 n - 1)).toNat

end

end A026535.P9133102127741226632

namespace A026535

/-- `A014695(A046821(n)+A046821(n)-1)` -/
def P9133102127741226632.Spec : Prop :=
  ∀ n, P9133102127741226632.a n = A026535 n

end A026535

/-! ## A026535.P386231749323125420

`A010060(5*n+1)+1`
-/

namespace A026535.P386231749323125420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (5 * n + 1) + 1

end

end A026535.P386231749323125420

namespace A026535

/-- `A010060(5*n+1)+1` -/
def P386231749323125420.Spec : Prop :=
  ∀ n, P386231749323125420.a n = A026535 n

end A026535

/-! ## A026535.P4801421534663715751

`A163542(5*(4*n+1))`
-/

namespace A026535.P4801421534663715751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163542 (5 * (4 * n + 1))

end

end A026535.P4801421534663715751

namespace A026535

/-- `A163542(5*(4*n+1))` -/
def P4801421534663715751.Spec : Prop :=
  ∀ n, P4801421534663715751.a n = A026535 n

end A026535

/-! ## A026535.P6759967054655481593

`A001285(5*n+1)`
-/

namespace A026535.P6759967054655481593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (5 * n + 1)

end

end A026535.P6759967054655481593

namespace A026535

/-- `A001285(5*n+1)` -/
def P6759967054655481593.Spec : Prop :=
  ∀ n, P6759967054655481593.a n = A026535 n

end A026535

/-! ## A026535.P16753902154251089648

`2-A010059(5*n+1)`
-/

namespace A026535.P16753902154251089648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A010059 (5 * n + 1)

end

end A026535.P16753902154251089648

namespace A026535

/-- `2-A010059(5*n+1)` -/
def P16753902154251089648.Spec : Prop :=
  ∀ n, P16753902154251089648.a n = A026535 n

end A026535

/-! ## A026535.P13517137711426329655

`A000120(5*n+1)%2+1`
-/

namespace A026535.P13517137711426329655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000120 (5 * n + 1)) 2 + 1

end

end A026535.P13517137711426329655

namespace A026535

/-- `A000120(5*n+1)%2+1` -/
def P13517137711426329655.Spec : Prop :=
  ∀ n, P13517137711426329655.a n = A026535 n

end A026535

/-! ## A026535.P14043650311969394975

`gcd(10, A000069(4*n+2+n))`
-/

namespace A026535.P14043650311969394975
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 10 (A000069 (4 * n + 2 + n))

end

end A026535.P14043650311969394975

namespace A026535

/-- `gcd(10, A000069(4*n+2+n))` -/
def P14043650311969394975.Spec : Prop :=
  ∀ n, (P14043650311969394975.a n : ℤ) = A026535 n

end A026535

/-! ## A026535.P5443641186996779121

`A040001(A000069(5*n+2))`
-/

namespace A026535.P5443641186996779121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A000069 (5 * n + 2)).toNat

end

end A026535.P5443641186996779121

namespace A026535

/-- `A040001(A000069(5*n+2))` -/
def P5443641186996779121.Spec : Prop :=
  ∀ n, P5443641186996779121.a n = A026535 n

end A026535

/-! ## A026535.P7391853482978455778

`(A000120(A016873(n)-1)%2)²+1`
-/

namespace A026535.P7391853482978455778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000120 (A016873 n - 1).toNat) 2 ^ 2 + 1

end

end A026535.P7391853482978455778

namespace A026535

/-- `(A000120(A016873(n)-1)%2)²+1` -/
def P7391853482978455778.Spec : Prop :=
  ∀ n, P7391853482978455778.a n = A026535 n

end A026535

/-! ## A026535.P7474817561607741727

`A277822(A017101(n)+2*n)`
-/

namespace A026535.P7474817561607741727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277822 (A017101 n + (2 * n : ℤ)).toNat

end

end A026535.P7474817561607741727

namespace A026535

/-- `A277822(A017101(n)+2*n)` -/
def P7474817561607741727.Spec : Prop :=
  ∀ n, P7474817561607741727.a n = A026535 n

end A026535

/-! ## A026535.P9609850322691371842

`A010059(10*n+3)+1`
-/

namespace A026535.P9609850322691371842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (10 * n + 3) + 1

end

end A026535.P9609850322691371842

namespace A026535

/-- `A010059(10*n+3)+1` -/
def P9609850322691371842.Spec : Prop :=
  ∀ n, P9609850322691371842.a n = A026535 n

end A026535

/-! ## A026535.P17666140318427811858

`A000069(10*n+4)%5`
-/

namespace A026535.P17666140318427811858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000069 (10 * n + 4)) 5

end

end A026535.P17666140318427811858

namespace A026535

/-- `A000069(10*n+4)%5` -/
def P17666140318427811858.Spec : Prop :=
  ∀ n, P17666140318427811858.a n = A026535 n

end A026535

/-! ## A026535.P8886019944671152677

`gcd(6, A005836(10*n+4))`
-/

namespace A026535.P8886019944671152677
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (A005836 (10 * n + 4))

end

end A026535.P8886019944671152677

namespace A026535

/-- `gcd(6, A005836(10*n+4))` -/
def P8886019944671152677.Spec : Prop :=
  ∀ n, (P8886019944671152677.a n : ℤ) = A026535 n

end A026535

/-! ## A026535.P4792364928490669521

`A048896(A017293(n))%3`
-/

namespace A026535.P4792364928490669521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048896 (A017293 n).toNat) 3

end

end A026535.P4792364928490669521

namespace A026535

/-- `A048896(A017293(n))%3` -/
def P4792364928490669521.Spec : Prop :=
  ∀ n, P4792364928490669521.a n = A026535 n

end A026535

/-! ## A026535.P11015896082220014960

`A277822(5*(4*n+1))`
-/

namespace A026535.P11015896082220014960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277822 (5 * (4 * n + 1))

end

end A026535.P11015896082220014960

namespace A026535

/-- `A277822(5*(4*n+1))` -/
def P11015896082220014960.Spec : Prop :=
  ∀ n, P11015896082220014960.a n = A026535 n

end A026535

/-!
# A026536: Irregular triangular array T read by rows: T(i,0 ) = T(i,2i) = 1 for i >= 0; T(i,1) = T(i,2i-1) = floor(i/2) for i >= 1; for even n >= 2, T(i,j) = T(i-1,j-2) + T(i-1,j-1) + T(i-1,j) for j = 2..2i-2, for odd n >= 3, T(i,j) = T(i-1,j-2) + T(i-1,j) for j = 2..2i-2.

The programs for A026536, there is no canonical definition to state claims against.
-/

/-! ## A026536.P10918891627368153148

`or(A024996(n), A257000(A293642(n)))`
-/

namespace A026536.P10918891627368153148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A024996 n) (A257000 (A293642 n).toNat)

end

end A026536.P10918891627368153148

/-! ## A026536.P14043337152671266773

`A257000(A097331(n))+A024996(n)`
-/

namespace A026536.P14043337152671266773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257000 (A097331 n).toNat + A024996 n

end

end A026536.P14043337152671266773

/-! ## A026536.P11015708914908740985

`A024996(n)^A368280(A368300(n+2))`
-/

namespace A026536.P11015708914908740985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024996 n : ℚ) ^ (A368280 (A368300 (n + 2)).toNat : ℤ)

end

end A026536.P11015708914908740985

/-! ## A026536.P12263918079795557892

`or(A024996(n), A030315(A124669(n+1)))`
-/

namespace A026536.P12263918079795557892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A024996 n) (A030315 (A124669 (n + 1)).toNat)

end

end A026536.P12263918079795557892

/-! ## A026536.P1787096865814224230

`or(A024996(n), A200246(A252695(n+4)))`
-/

namespace A026536.P1787096865814224230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A024996 n) (A200246 (A252695 (n + 4)).toNat)

end

end A026536.P1787096865814224230

/-!
# A026537: a(n) = T(n,n), T given by A026536. Also a(n) = number of integer strings s(0), ..., s(n), counted by T, such that s(n)=0.

The programs for A026537, there is no canonical definition to state claims against.
-/

/-! ## A026537.P14412782511919678477

`2*A026548(n)-A026549(n)`
-/

namespace A026537.P14412782511919678477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026548 n - A026549 n

end

end A026537.P14412782511919678477

/-! ## A026537.P12688322392400928869

`A026536(∑[2*n])`
-/

namespace A026537.P12688322392400928869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026536 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A026537.P12688322392400928869

/-! ## A026537.P15362004016740264024

`lcm(A000034(n), A026536(n²+n))`
-/

namespace A026537.P15362004016740264024
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A026536 (n ^ 2 + n))

end

end A026537.P15362004016740264024

/-! ## A026537.P17500551876203030248

`A026536(n²+n)%A051426(n+1)`
-/

namespace A026537.P17500551876203030248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026536 (n ^ 2 + n)) (A051426 (n + 1))

end

end A026537.P17500551876203030248

/-! ## A026537.P10285671367095780884

`A026536(n²)*A026536(A002378(n))`
-/

namespace A026537.P10285671367095780884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026536 (n ^ 2) * A026536 (A002378 n).toNat

end

end A026537.P10285671367095780884

/-! ## A026537.P2906253372396372931

`lcm(A026536(A002378(n)), A294932(n+1))`
-/

namespace A026537.P2906253372396372931
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A026536 (A002378 n).toNat) (A294932 (n + 1))

end

end A026537.P2906253372396372931

/-! ## A026537.P6918376612562442282

`A001222(A045370(n+1))*A026536(n*C(n+1, n))`
-/

namespace A026537.P6918376612562442282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A045370 (n + 1)).toNat * A026536 (n * Nat.choose (n + 1) n)

end

end A026537.P6918376612562442282

/-! ## A026537.P5860679436365258458

`A026536(A002378(n))/A026536(A294932(n+1)²)`
-/

namespace A026537.P5860679436365258458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026536 (A002378 n).toNat : ℚ) / (A026536 (A294932 (n + 1) ^ 2).toNat : ℚ)

end

end A026537.P5860679436365258458

/-! ## A026537.P16700797993537481079

`A026536(A002378(n))/A026536(A026536(n)²)`
-/

namespace A026537.P16700797993537481079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026536 (A002378 n).toNat : ℚ) / (A026536 (A026536 n ^ 2).toNat : ℚ)

end

end A026537.P16700797993537481079

/-!
# A026538: a(n) = T(n,n-1), T given by A026536. Also a(n) = number of integer strings s(0), ..., s(n), counted by T, such that s(n) = 1.

The programs for A026538, there is no canonical definition to state claims against.
-/

/-! ## A026538.P7381128256463648922

`A026536((n+1)²+n)`
-/

namespace A026538.P7381128256463648922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026536 ((n + 1) ^ 2 + n)

end

end A026538.P7381128256463648922

/-! ## A026538.P324056883729510302

`lcm(A026536(A028387(n)), 1-4/2)`
-/

namespace A026538.P324056883729510302
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A026536 (A028387 n).toNat) (SequenceMachineLib.roundAway (1 - (4 : ℚ) / 2))

end

end A026538.P324056883729510302

/-! ## A026538.P12663113369786430653

`A026536(A028387(n))%A042222(n)`
-/

namespace A026538.P12663113369786430653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026536 (A028387 n).toNat) (A042222 n)

end

end A026538.P12663113369786430653

/-! ## A026538.P17143973695803377470

`A026536(A002061(n+2))%A056413(n+1)`
-/

namespace A026538.P17143973695803377470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026536 (A002061 (n + 2)).toNat) (A056413 (n + 1))

end

end A026538.P17143973695803377470

/-! ## A026538.P3122084380234408393

`A026536(A028387(n))*A322674(A001316(n))`
-/

namespace A026538.P3122084380234408393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026536 (A028387 n).toNat * A322674 (A001316 n).toNat

end

end A026538.P3122084380234408393

/-! ## A026538.P8036624147615782310

`A026536(A028387(n))*A322674(A161680(n))`
-/

namespace A026538.P8036624147615782310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026536 (A028387 n).toNat * A322674 (A161680 n).toNat

end

end A026538.P8036624147615782310

/-!
# A026539: a(n) = T(n,n-2), T given by A026536. Also a(n) = number of integer strings s(0), ..., s(n), counted by T, such that s(n) = 2.

The programs for A026539, there is no canonical definition to state claims against.
-/

/-! ## A026539.P75642744029414881

`A026536(∑[2*(n+2)])`
-/

namespace A026539.P75642744029414881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026536 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A026539.P75642744029414881

/-! ## A026539.P9460779150690121582

`A026536(A028552(n+1))%A069294(n+2)`
-/

namespace A026539.P9460779150690121582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026536 (A028552 (n + 1)).toNat) (A069294 (n + 2))

end

end A026539.P9460779150690121582

/-! ## A026539.P648566470533471465

`A026536(A028552(n+1))/gcd(n, A003215(n))`
-/

namespace A026539.P648566470533471465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026536 (A028552 (n + 1)).toNat : ℚ) / (Int.gcd (n : ℤ) (A003215 n) : ℚ)

end

end A026539.P648566470533471465

/-! ## A026539.P14936227234807780178

`A026536(A028552(n+1))+A010051(A002378(n)+4)`
-/

namespace A026539.P14936227234807780178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026536 (A028552 (n + 1)).toNat + A010051 (A002378 n + 4).toNat

end

end A026539.P14936227234807780178

/-! ## A026539.P1303147068875781370

`A026536(A028552(n+1))%A112000(n)`
-/

namespace A026539.P1303147068875781370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026536 (A028552 (n + 1)).toNat) (A112000 n)

end

end A026539.P1303147068875781370

/-!
# A026540: a(n) = T(n,n-3), T given by A026536. Also number of integer strings s(0), ..., s(n), counted by T, such that s(n) = 3.

The programs for A026540, there is no canonical definition to state claims against.
-/

/-! ## A026540.P10289195521621982327

`A026536((n+3)²+n)`
-/

namespace A026540.P10289195521621982327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026536 ((n + 3) ^ 2 + n)

end

end A026540.P10289195521621982327

/-! ## A026540.P14815074779274276208

`record[A026536(∑[A092535(n)])]`
-/

namespace A026540.P14815074779274276208
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092535 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026536 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026540.P14815074779274276208

/-! ## A026540.P11496472555445182659

`record[A026536(∑[A004278(n+1)]-1)]`
-/

namespace A026540.P11496472555445182659
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004278 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026536 (∑ j ∈ Finset.range (n + 1), f2 j - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026540.P11496472555445182659

/-! ## A026540.P16483715510456597468

`record[A026536(2*n+3)/A098473(n)]`
-/

namespace A026540.P16483715510456597468
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026536 (2 * n + 3) : ℚ) / (A098473 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026540.P16483715510456597468

/-! ## A026540.P5744786954696300413

`record[A026536(2*n+1)/A107230(n+1)]`
-/

namespace A026540.P5744786954696300413
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026536 (2 * n + 1) : ℚ) / (A107230 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026540.P5744786954696300413

/-!
# A026541: a(n) = T(n,n-4), T given by A026536. Also a(n) = number of integer strings s(0), ..., s(n), counted by T, such that s(n) = 4.

The programs for A026541, there is no canonical definition to state claims against.
-/

/-! ## A026541.P9626675242857172957

`A026536((n+5)²-(n+1))`
-/

namespace A026541.P9626675242857172957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026536 ((n + 5) ^ 2 - (n + 1))

end

end A026541.P9626675242857172957

/-! ## A026541.P4399863952112154866

`record[A026536(A027689(n))]`
-/

namespace A026541.P4399863952112154866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026536 (A027689 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026541.P4399863952112154866

/-! ## A026541.P12156755933375865727

`record[A026536(A002061(n)+3)]`
-/

namespace A026541.P12156755933375865727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026536 (A002061 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026541.P12156755933375865727

/-! ## A026541.P1547377029383665954

`record[A026536(∑[A004278(n+1)])]`
-/

namespace A026541.P1547377029383665954
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004278 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026536 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026541.P1547377029383665954

/-! ## A026541.P15327977164198457927

`record[A026536(A005843(∑[n]+2))]`
-/

namespace A026541.P15327977164198457927
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026536 (A005843 (∑ j ∈ Finset.range (n + 1), f2 j + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026541.P15327977164198457927

/-! ## A026541.P1923056080587150806

`record[A026536(2*n)/A107230(n+1)]`
-/

namespace A026541.P1923056080587150806
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026536 (2 * n) : ℚ) / (A107230 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026541.P1923056080587150806

/-! ## A026541.P9080302688548412846

`record[A026536(A004275(A000096(n)))]`
-/

namespace A026541.P9080302688548412846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026536 (A004275 (A000096 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026541.P9080302688548412846

/-!
# A026542: Expansion of 1/((1-2*x)*(1-6*x)*(1-7*x)*(1-11*x)).

The programs for A026542, the canonical program `A026542.P1113381856411554348` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026542 has offset 0).

The definition of A026542 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A026542.P1113381856411554348

`(11^(n+3)-9*7^(n+3)+9*6^(n+3)-2^(n+3))/180`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026542

/-- `(11^(n+3)-9*7^(n+3)+9*6^(n+3)-2^(n+3))/180` -/
def P1113381856411554348.Spec : Prop :=
  ∀ n, P1113381856411554348.a n = (A026542 n : ℚ)

end A026542

/-! ## A026542.P16281272658493600778

`A016314(n)+6*a(n-1)` with `a(0)=1`
-/

namespace A026542.P16281272658493600778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016314 n + 6 * a (n - 1)

end

end A026542.P16281272658493600778

namespace A026542

/-- `A016314(n)+6*a(n-1)` -/
def P16281272658493600778.Spec : Prop :=
  ∀ n, P16281272658493600778.a n = A026542 n

end A026542

/-! ## A026542.P2635197161812377076

`a(n-1)+A020573(n)+a(n-1)` with `a(0)=1`
-/

namespace A026542.P2635197161812377076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A020573 n + a (n - 1))

end

end A026542.P2635197161812377076

namespace A026542

/-- `a(n-1)+A020573(n)+a(n-1)` -/
def P2635197161812377076.Spec : Prop :=
  ∀ n, P2635197161812377076.a n = A026542 n

end A026542

/-! ## A026542.P11469639543333141621

`2*A021244(n)-A021174(n)`
-/

namespace A026542.P11469639543333141621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021244 n - A021174 n

end

end A026542.P11469639543333141621

namespace A026542

/-- `2*A021244(n)-A021174(n)` -/
def P11469639543333141621.Spec : Prop :=
  ∀ n, P11469639543333141621.a n = A026542 n

end A026542

/-! ## A026542.P15041843082606718450

`2*A025941(n)-A025937(n)`
-/

namespace A026542.P15041843082606718450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025941 n - A025937 n

end

end A026542.P15041843082606718450

namespace A026542

/-- `2*A025941(n)-A025937(n)` -/
def P15041843082606718450.Spec : Prop :=
  ∀ n, P15041843082606718450.a n = A026542 n

end A026542

/-! ## A026542.P17939476989774483488

`A021229(n)+A021294(n)-A021174(n)`
-/

namespace A026542.P17939476989774483488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021229 n + (A021294 n - A021174 n)

end

end A026542.P17939476989774483488

namespace A026542

/-- `A021229(n)+A021294(n)-A021174(n)` -/
def P17939476989774483488.Spec : Prop :=
  ∀ n, P17939476989774483488.a n = A026542 n

end A026542

/-! ## A026542.P4230960075788319582

`A025995(n)+A025995(n)-A025990(n)`
-/

namespace A026542.P4230960075788319582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025995 n + (A025995 n - A025990 n)

end

end A026542.P4230960075788319582

namespace A026542

/-- `A025995(n)+A025995(n)-A025990(n)` -/
def P4230960075788319582.Spec : Prop :=
  ∀ n, P4230960075788319582.a n = A026542 n

end A026542

/-! ## A026542.P11859044671122372895

`Δ[A021244(n)-A021204(n)]`
-/

namespace A026542.P11859044671122372895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021244 n - A021204 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026542.P11859044671122372895

namespace A026542

/-- `Δ[A021244(n)-A021204(n)]` -/
def P11859044671122372895.Spec : Prop :=
  ∀ n, P11859044671122372895.a n = A026542 n

end A026542

/-! ## A026542.P7702103372503624240

`2*A025995(n)-A025990(n)`
-/

namespace A026542.P7702103372503624240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025995 n - A025990 n

end

end A026542.P7702103372503624240

namespace A026542

/-- `2*A025995(n)-A025990(n)` -/
def P7702103372503624240.Spec : Prop :=
  ∀ n, P7702103372503624240.a n = A026542 n

end A026542

/-!
# A026543: Expansion of 1/((1-2*x)*(1-6*x)*(1-7*x)*(1-12*x)).

The programs for A026543, there is no canonical definition to state claims against.
-/

/-! ## A026543.P12940855692309786908

`a(n-1)+A020577(n)+a(n-1)` with `a(0)=1`
-/

namespace A026543.P12940855692309786908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A020577 n + a (n - 1))

end

end A026543.P12940855692309786908

/-! ## A026543.P8841826059768336941

`Δ[A021254(n)-A021214(n)]`
-/

namespace A026543.P8841826059768336941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021254 n - A021214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026543.P8841826059768336941

/-! ## A026543.P17304444909363136791

`2*A016315(n)-A016304(n)`
-/

namespace A026543.P17304444909363136791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016315 n - A016304 n

end

end A026543.P17304444909363136791

/-! ## A026543.P16197554257621898305

`2*A025996(n)-A025991(n)`
-/

namespace A026543.P16197554257621898305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025996 n - A025991 n

end

end A026543.P16197554257621898305

/-! ## A026543.P10403739905871911134

`A016315(n+1)-A016309(n+1)`
-/

namespace A026543.P10403739905871911134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016315 (n + 1) - A016309 (n + 1)

end

end A026543.P10403739905871911134

/-! ## A026543.P2463693659136287446

`A021214(n)+A021254(n)-A021174(n)`
-/

namespace A026543.P2463693659136287446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021214 n + (A021254 n - A021174 n)

end

end A026543.P2463693659136287446

/-!
# A026545: a(n) = T(2n-1, n-1), T given by A026536.

The programs for A026545, there is no canonical definition to state claims against.
-/

/-! ## A026545.P12655433877673239904

`A026547(Δ[n²])`
-/

namespace A026545.P12655433877673239904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026547 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A026545.P12655433877673239904

/-! ## A026545.P15907907374977567200

`or(A000007(n), A026547(A005408(n)))`
-/

namespace A026545.P15907907374977567200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A026547 (A005408 n).toNat)

end

end A026545.P15907907374977567200

/-! ## A026545.P7544762031329709304

`A026547(A005408(n))+A000007(n+1)`
-/

namespace A026545.P7544762031329709304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026547 (A005408 n).toNat + A000007 (n + 1)

end

end A026545.P7544762031329709304

/-! ## A026545.P1994212260772027900

`or(A000007(n), A026547(A005843(n)+1))`
-/

namespace A026545.P1994212260772027900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A026547 (A005843 n + 1).toNat)

end

end A026545.P1994212260772027900

/-! ## A026545.P7713309403215987655

`A026547(A005408(n))+A008683(4*4*(n+1))`
-/

namespace A026545.P7713309403215987655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026547 (A005408 n).toNat + A008683 (4 * (4 * (n + 1)))

end

end A026545.P7713309403215987655

/-! ## A026545.P12176319210812718734

`A026547(A005408(n+1))-Δ[A026547(2*n+1)]`
-/

namespace A026545.P12176319210812718734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026547 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026547 (A005408 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A026545.P12176319210812718734

/-! ## A026545.P3860417481328243764

`A026547(A005408(n))%Δ[A036544(n)]`
-/

namespace A026545.P3860417481328243764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036544 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026547 (A005408 n).toNat) (f1 (n + 1) - f1 n)

end

end A026545.P3860417481328243764

/-! ## A026545.P16564768442792120826

`A073424(A166573(n+1))+A026547(A005408(n))`
-/

namespace A026545.P16564768442792120826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (A166573 (n + 1)).toNat + A026547 (A005408 n).toNat

end

end A026545.P16564768442792120826

/-! ## A026545.P1868952640777980813

`A026536((2*n+1)²+n)`
-/

namespace A026545.P1868952640777980813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026536 ((2 * n + 1) ^ 2 + n)

end

end A026545.P1868952640777980813

/-!
# A026546: a(n) = T(2n-1,n-2), T given by A026536.

The programs for A026546, there is no canonical definition to state claims against.
-/

/-! ## A026546.P8767687664340121592

`A026536(∑[A004768(n)])`
-/

namespace A026546.P8767687664340121592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004768 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026536 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A026546.P8767687664340121592

/-! ## A026546.P14015846250232288857

`A026536(A343560(n+2))`
-/

namespace A026546.P14015846250232288857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026536 (A343560 (n + 2)).toNat

end

end A026546.P14015846250232288857

/-! ## A026546.P11237185882762486531

`A026536(∑[A004769(n)-2])`
-/

namespace A026546.P11237185882762486531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004769 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026536 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A026546.P11237185882762486531

/-! ## A026546.P4303146762832743417

`A026536(∑[A004769(n)]+4)`
-/

namespace A026546.P4303146762832743417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004769 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026536 (∑ j ∈ Finset.range (n + 1), f1 j + 4).toNat

end

end A026546.P4303146762832743417

/-! ## A026546.P16494347093382226122

`record[A026536(A308217(n)+n)]`
-/

namespace A026546.P16494347093382226122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026536 (A308217 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026546.P16494347093382226122

/-!
# A026547: a(n) = T(n, floor(n/2)), T given by A026536.

The programs for A026547, there is no canonical definition to state claims against.
-/

/-! ## A026547.P150825856299612856

`A026536(A035608(n))`
-/

namespace A026547.P150825856299612856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026536 (A035608 n).toNat

end

end A026547.P150825856299612856

/-! ## A026547.P17209827771702220376

`A026536(A074377(n))`
-/

namespace A026547.P17209827771702220376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026536 (A074377 n).toNat

end

end A026547.P17209827771702220376

/-! ## A026547.P9400976600068742868

`A026536(A074378(n))`
-/

namespace A026547.P9400976600068742868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026536 (A074378 n).toNat

end

end A026547.P9400976600068742868

/-! ## A026547.P14892399367977403001

`A026536(A156859(n))`
-/

namespace A026547.P14892399367977403001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026536 (A156859 n).toNat

end

end A026547.P14892399367977403001

/-! ## A026547.P6413337480545653324

`A026536(∑[A014601(n)])`
-/

namespace A026547.P6413337480545653324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026536 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A026547.P6413337480545653324

/-! ## A026547.P13981211432356538749

`A026536(A123108(n)+n²)`
-/

namespace A026547.P13981211432356538749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026536 (A123108 n + (n ^ 2 : ℤ)).toNat

end

end A026547.P13981211432356538749

/-! ## A026547.P15977631522581940891

`A026536((n+1)²-A008619(n))`
-/

namespace A026547.P15977631522581940891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026536 (((n + 1) ^ 2 : ℤ) - A008619 n).toNat

end

end A026547.P15977631522581940891

/-! ## A026547.P115411196507962139

`A026536((2*n+1)*A065033(n))`
-/

namespace A026547.P115411196507962139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026536 ((2 * n + 1 : ℤ) * A065033 n).toNat

end

end A026547.P115411196507962139

/-! ## A026547.P1393581188321153098

`A026536(record[n/A098473(2*n+1)])`
-/

namespace A026547.P1393581188321153098
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A098473 (2 * n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026536 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A026547.P1393581188321153098

/-!
# A026548: a(n) = T(n,0) + T(n,1) + ... + T(n,n), T given by A026536.

The programs for A026548, there is no canonical definition to state claims against.
-/

/-! ## A026548.P17358532440004153311

`A026531(n)-n%2*a(n-1)` with `a(0)=1`
-/

namespace A026548.P17358532440004153311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026531 n - ((n % 2 : ℕ) : ℤ) * a (n - 1)

end

end A026548.P17358532440004153311

/-! ## A026548.P981459760069547044

`(A026549(n)+A026537(n))/2`
-/

namespace A026548.P981459760069547044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026549 n + A026537 n : ℚ) / 2

end

end A026548.P981459760069547044

/-! ## A026548.P526329414819486225

`A026537(n)+A014682(A026549(n)-A026537(n))`
-/

namespace A026548.P526329414819486225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026537 n + A014682 (A026549 n - A026537 n).toNat

end

end A026548.P526329414819486225

/-! ## A026548.P5698587664919305236

`A014682(A026549(n)+A026537(n))`
-/

namespace A026548.P5698587664919305236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A026549 n + A026537 n).toNat

end

end A026548.P5698587664919305236

/-! ## A026548.P4974454946299452187

`A304529(A026549(n)+A026537(n))`
-/

namespace A026548.P4974454946299452187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304529 (A026549 n + A026537 n).toNat

end

end A026548.P4974454946299452187

/-!
# A026549: Ratios of successive terms are 2, 3, 2, 3, 2, 3, 2, 3, ...

The programs for A026549, the canonical program `A026549.P5486993898927830943` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026549 has offset 0).

The definition of A026549 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A026549.P5486993898927830943

`6*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026549

/-- `6*a(n-2)` -/
def P5486993898927830943.Spec : Prop :=
  ∀ n, (P5486993898927830943.a n : ℤ) = A026549 n

theorem P5486993898927830943.correct : P5486993898927830943.Spec := by
  intro n
  simp only [A026549]

end A026549

/-! ## A026549.P5506250015259784279

`1/2*(3-(-1)^n)*6^floor(n/2)`
-/

namespace A026549.P5506250015259784279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (3 - (-1) ^ n : ℚ) * (6 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

end

end A026549.P5506250015259784279

namespace A026549

/-- `1/2*(3-(-1)^n)*6^floor(n/2)` -/
def P5506250015259784279.Spec : Prop :=
  ∀ n, P5506250015259784279.a n = (A026549 n : ℚ)

end A026549

/-! ## A026549.P4492400813491043632

`ogf((1+2x)/(1-6x^2))`
-/

namespace A026549.P4492400813491043632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, 0, -6] n

end

end A026549.P4492400813491043632

namespace A026549

/-- `ogf((1+2x)/(1-6x^2))` -/
def P4492400813491043632.Spec : Prop :=
  ∀ n, P4492400813491043632.a n = A026549 n

end A026549

/-! ## A026549.P5432111669214780865

`∏[(n-1)%2+2]`
-/

namespace A026549.P5432111669214780865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - 1) 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A026549.P5432111669214780865

namespace A026549

/-- `∏[(n-1)%2+2]` -/
def P5432111669214780865.Spec : Prop :=
  ∀ n, P5432111669214780865.a n = A026549 n

end A026549

/-! ## A026549.P15889140890300497925

`∏[2-(1-n)%2]`
-/

namespace A026549.P15889140890300497925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.tmod (1 - (n : ℤ)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A026549.P15889140890300497925

namespace A026549

/-- `∏[2-(1-n)%2]` -/
def P15889140890300497925.Spec : Prop :=
  ∀ n, P15889140890300497925.a n = A026549 n

end A026549

/-! ## A026549.P2848752771250537212

`∏[5-a(n-1)]` with `a(0)=1, a(1)=2`
-/

namespace A026549.P2848752771250537212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  5 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A026549.P2848752771250537212

namespace A026549

/-- `∏[5-a(n-1)]` -/
def P2848752771250537212.Spec : Prop :=
  ∀ n, P2848752771250537212.a n = A026549 n

end A026549

/-! ## A026549.P15570801521382160463

`∏[or(3, (n+2)²)%(n+2)]`
-/

namespace A026549.P15570801521382160463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 ((n + 2) ^ 2) % (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A026549.P15570801521382160463

namespace A026549

/-- `∏[or(3, (n+2)²)%(n+2)]` -/
def P15570801521382160463.Spec : Prop :=
  ∀ n, (P15570801521382160463.a n : ℤ) = A026549 n

end A026549

/-! ## A026549.P13848420829034848870

`a(n-2)/(1-5/6)` with `a(0)=1, a(1)=2`
-/

namespace A026549.P13848420829034848870
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) / (1 - (5 : ℚ) / 6)

end

end A026549.P13848420829034848870

namespace A026549

/-- `a(n-2)/(1-5/6)` -/
def P13848420829034848870.Spec : Prop :=
  ∀ n, P13848420829034848870.a n = (A026549 n : ℚ)

end A026549

/-! ## A026549.P11526950940412804774

`a(n-2)+lcm(5, a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A026549.P11526950940412804774
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + Nat.lcm 5 (a (n - 2))

end

end A026549.P11526950940412804774

namespace A026549

/-- `a(n-2)+lcm(5, a(n-2))` -/
def P11526950940412804774.Spec : Prop :=
  ∀ n, (P11526950940412804774.a n : ℤ) = A026549 n

end A026549

/-! ## A026549.P650999471450804557

`record[A100851(n)]`
-/

namespace A026549.P650999471450804557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100851 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026549.P650999471450804557

namespace A026549

/-- `record[A100851(n)]` -/
def P650999471450804557.Spec : Prop :=
  ∀ n, P650999471450804557.a n = A026549 n

end A026549

/-! ## A026549.P17002805623948942284

`∏[A158478(n+1)]`
-/

namespace A026549.P17002805623948942284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158478 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A026549.P17002805623948942284

namespace A026549

/-- `∏[A158478(n+1)]` -/
def P17002805623948942284.Spec : Prop :=
  ∀ n, P17002805623948942284.a n = A026549 n

end A026549

/-! ## A026549.P7536892228455441069

`∏[∑[A359738(2*n)]]`
-/

namespace A026549.P7536892228455441069
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359738 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A026549.P7536892228455441069

namespace A026549

/-- `∏[∑[A359738(2*n)]]` -/
def P7536892228455441069.Spec : Prop :=
  ∀ n, P7536892228455441069.a n = A026549 n

end A026549

/-! ## A026549.P383838920963370359

`∏[A000705(a(n-1))]` with `a(0)=1`
-/

namespace A026549.P383838920963370359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A000705 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A026549.P383838920963370359

namespace A026549

/-- `∏[A000705(a(n-1))]` -/
def P383838920963370359.Spec : Prop :=
  ∀ n, P383838920963370359.a n = A026549 n

end A026549

/-! ## A026549.P11988398702156393699

`∏[A002175(a(n-1))]` with `a(0)=1`
-/

namespace A026549.P11988398702156393699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A002175 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A026549.P11988398702156393699

namespace A026549

/-- `∏[A002175(a(n-1))]` -/
def P11988398702156393699.Spec : Prop :=
  ∀ n, P11988398702156393699.a n = A026549 n

end A026549

/-! ## A026549.P5904781687633286324

`∏[A003589(a(n-1))]` with `a(0)=1`
-/

namespace A026549.P5904781687633286324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A003589 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A026549.P5904781687633286324

namespace A026549

/-- `∏[A003589(a(n-1))]` -/
def P5904781687633286324.Spec : Prop :=
  ∀ n, P5904781687633286324.a n = A026549 n

end A026549

/-! ## A026549.P16694358956171026104

`∏[A004596(a(n-1))]` with `a(0)=1`
-/

namespace A026549.P16694358956171026104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A004596 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A026549.P16694358956171026104

namespace A026549

/-- `∏[A004596(a(n-1))]` -/
def P16694358956171026104.Spec : Prop :=
  ∀ n, P16694358956171026104.a n = A026549 n

end A026549

/-! ## A026549.P18365613634512019270

`∏[A006047(a(n-1))]` with `a(0)=1`
-/

namespace A026549.P18365613634512019270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A006047 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A026549.P18365613634512019270

namespace A026549

/-- `∏[A006047(a(n-1))]` -/
def P18365613634512019270.Spec : Prop :=
  ∀ n, P18365613634512019270.a n = A026549 n

end A026549

/-! ## A026549.P9064510530681333893

`∏[A007978(a(n-1))]` with `a(0)=1`
-/

namespace A026549.P9064510530681333893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A007978 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A026549.P9064510530681333893

namespace A026549

/-- `∏[A007978(a(n-1))]` -/
def P9064510530681333893.Spec : Prop :=
  ∀ n, P9064510530681333893.a n = A026549 n

end A026549

/-! ## A026549.P729024461397931552

`∏[A012960(a(n-1))]` with `a(0)=1`
-/

namespace A026549.P729024461397931552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A012960 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A026549.P729024461397931552

namespace A026549

/-- `∏[A012960(a(n-1))]` -/
def P729024461397931552.Spec : Prop :=
  ∀ n, P729024461397931552.a n = A026549 n

end A026549

/-!
# A026550: a(n) = Sum_{i=0..n} Sum_{j=0..i} T(i,j), T given by A026536.

The programs for A026550, there is no canonical definition to state claims against.
-/

/-! ## A026550.P4769885023033090523

`∑[A026548(n)]`
-/

namespace A026550.P4769885023033090523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026548 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026550.P4769885023033090523

/-! ## A026550.P3438054283965520798

`A026548(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A026550.P3438054283965520798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026548 n + a (A023443 n).toNat

end

end A026550.P3438054283965520798

/-! ## A026550.P15882501899969083210

`∑[(A026549(n)+A026537(n))/2]`
-/

namespace A026550.P15882501899969083210
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026549 n + A026537 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026550.P15882501899969083210

/-! ## A026550.P18311187017577012591

`A026548(n)+a(n-A000045(gcd(n, n+1)))` with `a(0)=1`
-/

namespace A026550.P18311187017577012591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026548 n + a ((n : ℤ) - A000045 (Nat.gcd n (n + 1))).toNat

end

end A026550.P18311187017577012591

/-! ## A026550.P9929419467191528439

`A026531(n)+A026566(n)-A026533(n)`
-/

namespace A026550.P9929419467191528439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026531 n + (A026566 n - A026533 n)

end

end A026550.P9929419467191528439

/-!
# A026551: Expansion of 3*(1+2*x-2*x^2)/((1-x)*(1-6*x^2)).

The programs for A026551, the canonical program `A026551.P5913624096478906761` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026551 has offset 0).

The definition of A026551 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((3+6x-6x^2)/(1-x-6x^2+6x^3))` (program `A026551.P5913624096478906761`, by `A026551.P5913624096478906761.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A026551.P5913624096478906761

`ogf((3+6x-6x^2)/(1-x-6x^2+6x^3))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026551

/-- `ogf((3+6x-6x^2)/(1-x-6x^2+6x^3))` -/
def P5913624096478906761.Spec : Prop :=
  ∀ n, P5913624096478906761.a n = A026551 n

theorem P5913624096478906761.correct : P5913624096478906761.Spec := by
  intro n
  simp only [A026551]

end A026551

/-! ## A026551.P10577967104764527957

`∑[∏[n%2+2]]+1`
-/

namespace A026551.P10577967104764527957
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A026551.P10577967104764527957

namespace A026551

/-- `∑[∏[n%2+2]]+1` -/
def P10577967104764527957.Spec : Prop :=
  ∀ n, (P10577967104764527957.a n : ℤ) = A026551 n

end A026551

/-! ## A026551.P11977078664871824735

`∑[∏[4-gcd(2, n)]]+1`
-/

namespace A026551.P11977078664871824735
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - (Nat.gcd 2 n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A026551.P11977078664871824735

namespace A026551

/-- `∑[∏[4-gcd(2, n)]]+1` -/
def P11977078664871824735.Spec : Prop :=
  ∀ n, P11977078664871824735.a n = A026551 n

end A026551

/-! ## A026551.P11233838826476970610

`∑[∏[and(1, n)+2]]+1`
-/

namespace A026551.P11233838826476970610
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A026551.P11233838826476970610

namespace A026551

/-- `∑[∏[and(1, n)+2]]+1` -/
def P11233838826476970610.Spec : Prop :=
  ∀ n, (P11233838826476970610.a n : ℤ) = A026551 n

end A026551

/-! ## A026551.P16002301553157029090

`6*a(n-2)+3` with `a(0)=3, a(1)=9`
-/

namespace A026551.P16002301553157029090
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 9] fun n a =>
  6 * a (n - 2) + 3

end

end A026551.P16002301553157029090

namespace A026551

/-- `6*a(n-2)+3` -/
def P16002301553157029090.Spec : Prop :=
  ∀ n, (P16002301553157029090.a n : ℤ) = A026551 n

end A026551

/-! ## A026551.P15509281176001002705

`∑[6*a(n-2)]` with `a(0)=3, a(1)=6, a(2)=12`
-/

namespace A026551.P15509281176001002705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 6, 12] fun n f1 =>
  6 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026551.P15509281176001002705

namespace A026551

/-- `∑[6*a(n-2)]` -/
def P15509281176001002705.Spec : Prop :=
  ∀ n, (P15509281176001002705.a n : ℤ) = A026551 n

end A026551

/-! ## A026551.P4290717645512366139

`∑[∏[char[2*n+1]+2]]+1`
-/

namespace A026551.P4290717645512366139
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f3 j = n then 1 else 0) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A026551.P4290717645512366139

namespace A026551

/-- `∑[∏[char[2*n+1]+2]]+1` -/
def P4290717645512366139.Spec : Prop :=
  ∀ n, (P4290717645512366139.a n : ℤ) = A026551 n

end A026551

/-! ## A026551.P14219830179424735366

`(A026534(n+3)-1)/3`
-/

namespace A026551.P14219830179424735366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026534 (n + 3) - 1 : ℚ) / 3

end

end A026551.P14219830179424735366

namespace A026551

/-- `(A026534(n+3)-1)/3` -/
def P14219830179424735366.Spec : Prop :=
  ∀ n, P14219830179424735366.a n = (A026551 n : ℚ)

end A026551

/-! ## A026551.P10094796993977139739

`ceil((∑[2*∏[A010693(n)]]+1)/2)`
-/

namespace A026551.P10094796993977139739
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010693 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / 2⌉

end

end A026551.P10094796993977139739

namespace A026551

/-- `ceil((∑[2*∏[A010693(n)]]+1)/2)` -/
def P10094796993977139739.Spec : Prop :=
  ∀ n, P10094796993977139739.a n = A026551 n

end A026551

/-! ## A026551.P7457035133554099812

`∑[A026565(2*n+1)/A026565(n)]`
-/

namespace A026551.P7457035133554099812
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026565 (2 * n + 1) : ℚ) / (A026565 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026551.P7457035133554099812

namespace A026551

/-- `∑[A026565(2*n+1)/A026565(n)]` -/
def P7457035133554099812.Spec : Prop :=
  ∀ n, P7457035133554099812.a n = (A026551 n : ℚ)

end A026551

/-!
# A026552: Irregular triangular array T read by rows: T(n, 0) = T(n, 2*n) = 1, T(n, 1) = T(n, 2*n-1) = floor(n/2 + 1), for even n >= 2, T(n, k) = T(n-1, k-2) + T(n-1, k-1) + T(n-1, k), otherwise T(n, k) = T(n-1, k-2) + T(n-1, k).

The programs for A026552, there is no canonical definition to state claims against.
-/

/-! ## A026552.P5945808322673549019

`A117707(∑{d}[A247644(n+1), #])`
-/

namespace A026552.P5945808322673549019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A026552.P5945808322673549019

/-! ## A026552.P3921223297710755034

`A086833(A161127(n+1)+1)`
-/

namespace A026552.P3921223297710755034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086833 (A161127 (n + 1) + 1).toNat

end

end A026552.P3921223297710755034

/-! ## A026552.P16057222111938351470

`A007828(A306234(n+1))+1`
-/

namespace A026552.P16057222111938351470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007828 (A306234 (n + 1)).toNat + 1

end

end A026552.P16057222111938351470

/-! ## A026552.P6040070257232757620

`A342845(A008587(A247644(n+1))²)`
-/

namespace A026552.P6040070257232757620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342845 (A008587 (A247644 (n + 1)).toNat ^ 2).toNat

end

end A026552.P6040070257232757620

/-! ## A026552.P11810551898701376463

`A001222(lcm(7, A001405(A247644(n+1))))`
-/

namespace A026552.P11810551898701376463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lcm 7 (A001405 (A247644 (n + 1)).toNat))

end

end A026552.P11810551898701376463

/-!
# A026553: a(n) = T(n,n), T given by A026552. Also a(n) is the number of integer strings s(0),...,s(n) counted by T, such that s(n)=0.

The programs for A026553, there is no canonical definition to state claims against.
-/

/-! ## A026553.P16870197137267243288

`2*A026564(n)-A026565(n)`
-/

namespace A026553.P16870197137267243288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026564 n - A026565 n

end

end A026553.P16870197137267243288

/-! ## A026553.P14233814043402693312

`A026552(∑[2*n])`
-/

namespace A026553.P14233814043402693312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026552 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A026553.P14233814043402693312

/-! ## A026553.P4184834205424626115

`A026552(n²+n)%or(n, Δ[5^n])`
-/

namespace A026553.P4184834205424626115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026552 (n ^ 2 + n)) (Int.lor (n : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ)))

end

end A026553.P4184834205424626115

/-! ## A026553.P15582011839062839124

`A026552(n²+n)%A063766(n)`
-/

namespace A026553.P15582011839062839124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026552 (n ^ 2 + n)) (A063766 n)

end

end A026553.P15582011839062839124

/-! ## A026553.P174788341839960579

`A026552(n²+n)+A000034(2*n)-1`
-/

namespace A026553.P174788341839960579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026552 (n ^ 2 + n) + A000034 (2 * n) - 1

end

end A026553.P174788341839960579

/-! ## A026553.P3735766054507715402

`lcm(A026552(A002378(n)), A033999(n))`
-/

namespace A026553.P3735766054507715402
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A026552 (A002378 n).toNat) (A033999 n)

end

end A026553.P3735766054507715402

/-! ## A026553.P14212598504043318528

`A026552(n²)*A026552(A002378(n))`
-/

namespace A026553.P14212598504043318528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026552 (n ^ 2) * A026552 (A002378 n).toNat

end

end A026553.P14212598504043318528

/-! ## A026553.P5716091477226800858

`A026552(A002378(n))*A033999(2*n)`
-/

namespace A026553.P5716091477226800858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026552 (A002378 n).toNat * A033999 (2 * n)

end

end A026553.P5716091477226800858

/-! ## A026553.P10812335353563564260

`A026552(A002378(n))%A026291(n+2)`
-/

namespace A026553.P10812335353563564260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026552 (A002378 n).toNat) (A026291 (n + 2))

end

end A026553.P10812335353563564260

/-! ## A026553.P14284164531627886596

`A026552(A002378(n))*A180281(A000124(n))`
-/

namespace A026553.P14284164531627886596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026552 (A002378 n).toNat * A180281 (A000124 n).toNat

end

end A026553.P14284164531627886596

/-!
# A026554: a(n) = T(n,n-1), T given by A026552. Also a(n) is the number of integer strings s(0),...,s(n) counted by T, such that s(n)=1.

The programs for A026554, there is no canonical definition to state claims against.
-/

/-! ## A026554.P1965633858698937301

`A026520(n+2)/2`
-/

namespace A026554.P1965633858698937301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026520 (n + 2) : ℚ) / 2

end

end A026554.P1965633858698937301

/-! ## A026554.P4038637407103116075

`record[A026520(n)/gcd(2, A026537(n))]`
-/

namespace A026554.P4038637407103116075
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026520 n : ℚ) / (Int.gcd 2 (A026537 n) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026554.P4038637407103116075

/-! ## A026554.P453145380338109218

`record[A026520(n)/A020639(A004277(n))]`
-/

namespace A026554.P453145380338109218
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026520 n : ℚ) / (A020639 (A004277 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026554.P453145380338109218

/-! ## A026554.P2441407598545648688

`A026531(n+2)-A026565(n+1)`
-/

namespace A026554.P2441407598545648688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026531 (n + 2) - A026565 (n + 1)

end

end A026554.P2441407598545648688

/-! ## A026554.P11432182650638595233

`A026552((n+1)²+n)`
-/

namespace A026554.P11432182650638595233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026552 ((n + 1) ^ 2 + n)

end

end A026554.P11432182650638595233

/-! ## A026554.P15457379875194613127

`record[A026552(∑[A028242(n)])]`
-/

namespace A026554.P15457379875194613127
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026552 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026554.P15457379875194613127

/-! ## A026554.P15363307648820918241

`record[A026552(∑[A123108(n)])]`
-/

namespace A026554.P15363307648820918241
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026552 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026554.P15363307648820918241

/-! ## A026554.P10699560950759434500

`record[A026552(A008642(n)+1)]`
-/

namespace A026554.P10699560950759434500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026552 (A008642 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026554.P10699560950759434500

/-! ## A026554.P12344320501588405855

`record[A026552(A144873(n)+1)]`
-/

namespace A026554.P12344320501588405855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026552 (A144873 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026554.P12344320501588405855

/-! ## A026554.P11637681641575499414

`record[A026552(record[A144873(n)-n])]`
-/

namespace A026554.P11637681641575499414
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144873 n - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026552 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026554.P11637681641575499414

/-! ## A026554.P6244243834350520078

`record[A026552(2*n+1)/A013609(n)]`
-/

namespace A026554.P6244243834350520078
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026552 (2 * n + 1) : ℚ) / (A013609 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026554.P6244243834350520078

/-! ## A026554.P18111940912167918552

`record[A026552(2*n+1)/A140303(n)]`
-/

namespace A026554.P18111940912167918552
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026552 (2 * n + 1) : ℚ) / (A140303 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026554.P18111940912167918552

/-! ## A026554.P15797017904003400788

`record[gcd(A026552(2*n+1), A297328(n))]`
-/

namespace A026554.P15797017904003400788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A026552 (2 * n + 1)) (A297328 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026554.P15797017904003400788

/-! ## A026554.P3279522308984951642

`record[A026552(2*n+1)/A286159(n+2)]`
-/

namespace A026554.P3279522308984951642
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026552 (2 * n + 1) : ℚ) / (A286159 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026554.P3279522308984951642

/-!
# A026555: a(n) = T(n, n-2), T given by A026552. Also a(n) = number of integer strings s(0), ..., s(n) counted by T, such that s(n) = 2.

The programs for A026555, there is no canonical definition to state claims against.
-/

/-! ## A026555.P15555745282675218804

`A026552(∑[2*(n+2)])`
-/

namespace A026555.P15555745282675218804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026552 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A026555.P15555745282675218804

/-! ## A026555.P3343528820113064949

`record[A026552(A144873(n))]`
-/

namespace A026555.P3343528820113064949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026552 (A144873 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026555.P3343528820113064949

/-! ## A026555.P6530161631198630449

`record[A026552(2*n)/A140303(n)]`
-/

namespace A026555.P6530161631198630449
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026552 (2 * n) : ℚ) / (A140303 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026555.P6530161631198630449

/-! ## A026555.P1956257070862633604

`record[gcd(A026552(2*n), A297328(n))]`
-/

namespace A026555.P1956257070862633604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A026552 (2 * n)) (A297328 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026555.P1956257070862633604

/-! ## A026555.P4252480770552816925

`record[A026552(2*n)/A013609(n+1)]`
-/

namespace A026555.P4252480770552816925
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026552 (2 * n) : ℚ) / (A013609 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026555.P4252480770552816925

/-! ## A026555.P7861827914640845117

`record[A026552(2*n)/A286159(n+2)]`
-/

namespace A026555.P7861827914640845117
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026552 (2 * n) : ℚ) / (A286159 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026555.P7861827914640845117

/-!
# A026556: a(n) = T(n, n-3), T given by A026552. Also a(n) = number of integer strings s(0), ..., s(n) counted by T, such that s(n) = 3.

The programs for A026556, there is no canonical definition to state claims against.
-/

/-! ## A026556.P12326685156664462644

`A026552((n+3)²+n)`
-/

namespace A026556.P12326685156664462644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026552 ((n + 3) ^ 2 + n)

end

end A026556.P12326685156664462644

/-! ## A026556.P16767883243570395778

`record[A026552(comp[2*(n+1)])/A140303(n)]`
-/

namespace A026556.P16767883243570395778
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026552 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n) : ℚ) / (A140303 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026556.P16767883243570395778

/-! ## A026556.P174499620135905652

`record[A026552(A014681(n+1)+A008642(2*n))]`
-/

namespace A026556.P174499620135905652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026552 (A014681 (n + 1) + A008642 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026556.P174499620135905652

/-! ## A026556.P502424968666010273

`A026552(A000290(n+3)+n)%A065025(n+1)`
-/

namespace A026556.P502424968666010273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026552 (A000290 (n + 3) + (n : ℤ)).toNat) (A065025 (n + 1))

end

end A026556.P502424968666010273

/-!
# A026557: a(n) = T(n, n-4), T given by A026552. Also a(n) = number of integer strings s(0),...,s(n) counted by T, such that s(n)=4.

The programs for A026557, there is no canonical definition to state claims against.
-/

/-! ## A026557.P2093244164070026827

`A026552((n+5)²-(n+1))`
-/

namespace A026557.P2093244164070026827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026552 ((n + 5) ^ 2 - (n + 1))

end

end A026557.P2093244164070026827

/-! ## A026557.P13367052995077343127

`record[A026552(A027689(n))]`
-/

namespace A026557.P13367052995077343127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026552 (A027689 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026557.P13367052995077343127

/-! ## A026557.P15497954643249747661

`record[A026552(2*A133263(n))]`
-/

namespace A026557.P15497954643249747661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026552 (2 * A133263 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026557.P15497954643249747661

/-! ## A026557.P385540810634278674

`record[A026552(∑[A004278(n+1)])]`
-/

namespace A026557.P385540810634278674
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004278 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026552 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026557.P385540810634278674

/-! ## A026557.P15805236042992149025

`record[A026552(A005843(∑[n]+2))]`
-/

namespace A026557.P15805236042992149025
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026552 (A005843 (∑ j ∈ Finset.range (n + 1), f2 j + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026557.P15805236042992149025

/-!
# A026558: a(n) = T(2*n, n), where T is given by A026552.

The programs for A026558, there is no canonical definition to state claims against.
-/

/-! ## A026558.P18366908083570090403

`A026563(2*n)`
-/

namespace A026558.P18366908083570090403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026563 (2 * n)

end

end A026558.P18366908083570090403

/-! ## A026558.P15132245151352273348

`record[A026563(and(n, n+1))]`
-/

namespace A026558.P15132245151352273348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026563 (Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026558.P15132245151352273348

/-! ## A026558.P14703638429876164

`record[A026563((n-1)^(n%2))]`
-/

namespace A026558.P14703638429876164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026563 (((n : ℤ) - 1) ^ (n % 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026558.P14703638429876164

/-! ## A026558.P3325724563261159419

`record[A026563(A014681(n))]`
-/

namespace A026558.P3325724563261159419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026563 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026558.P3325724563261159419

/-! ## A026558.P15510308645018020125

`record[A026563(A131380(n))]`
-/

namespace A026558.P15510308645018020125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026563 (A131380 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026558.P15510308645018020125

/-! ## A026558.P7207775925975267136

`record[A026563(A026741(n)+1)]`
-/

namespace A026558.P7207775925975267136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026563 (A026741 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026558.P7207775925975267136

/-! ## A026558.P17372124735008799070

`record[A026563(A022998(n)-n)]`
-/

namespace A026558.P17372124735008799070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026563 (A022998 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026558.P17372124735008799070

/-! ## A026558.P11599864412907549069

`record[A026563(A000265(n+1)-1)]`
-/

namespace A026558.P11599864412907549069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026563 (A000265 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026558.P11599864412907549069

/-! ## A026558.P5560311933629342336

`record[A026563(n)/A006519(n+1)]`
-/

namespace A026558.P5560311933629342336
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026563 n : ℚ) / (A006519 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026558.P5560311933629342336

/-! ## A026558.P7120529273540430377

`record[A026563(A158405(n+1)-1)]`
-/

namespace A026558.P7120529273540430377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026563 (A158405 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026558.P7120529273540430377

/-!
# A026559: a(n) = T(2*n, n-1), where T is given by A026552.

The programs for A026559, there is no canonical definition to state claims against.
-/

/-! ## A026559.P5777248702327974199

`A026552((2*(n+1))²+n)`
-/

namespace A026559.P5777248702327974199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026552 ((2 * (n + 1)) ^ 2 + n)

end

end A026559.P5777248702327974199

/-! ## A026559.P17889107289970089063

`record[A026552(A308217(n))]`
-/

namespace A026559.P17889107289970089063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026552 (A308217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026559.P17889107289970089063

/-! ## A026559.P12845388151486952138

`record[A026552(A142717(n+1)+A008619(n))]`
-/

namespace A026559.P12845388151486952138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026552 (A142717 (n + 1) + A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026559.P12845388151486952138

/-! ## A026559.P4100505675805083958

`A026552(A308217(2*n+1))%A027274(n+2)`
-/

namespace A026559.P4100505675805083958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026552 (A308217 (2 * n + 1)).toNat) (A027274 (n + 2))

end

end A026559.P4100505675805083958

/-! ## A026559.P1596296603630814124

`lcm(A010684(2*n), A026552(A308217(2*n+1)))`
-/

namespace A026559.P1596296603630814124
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010684 (2 * n)) (A026552 (A308217 (2 * n + 1)).toNat)

end

end A026559.P1596296603630814124

/-! ## A026559.P15643579792932389503

`A026552(A308217(2*n+1))^gcd(2, A000040(n+1))`
-/

namespace A026559.P15643579792932389503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026552 (A308217 (2 * n + 1)).toNat ^ Int.gcd 2 (A000040 (n + 1))

end

end A026559.P15643579792932389503

/-!
# A026560: a(n) = T(2*n, n-2), where T is given by A026552.

The programs for A026560, there is no canonical definition to state claims against.
-/

/-! ## A026560.P9000290036257413974

`A026552((2*(n+2))²+n)`
-/

namespace A026560.P9000290036257413974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026552 ((2 * (n + 2)) ^ 2 + n)

end

end A026560.P9000290036257413974

/-! ## A026560.P4138678511809569254

`record[A026552(A308217(n)+1)]`
-/

namespace A026560.P4138678511809569254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026552 (A308217 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026560.P4138678511809569254

/-!
# A026561: Expansion of 1/((1-2x)(1-6x)(1-8x)(1-9x)).

The programs for A026561, the canonical program `A026561.P15216908254015800815` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026561 has offset 0).

The definition of A026561 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026561.P15216908254015800815

`A020579(n)+2*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A026561

/-- `A020579(n)+2*a(n-1)` -/
def P15216908254015800815.Spec : Prop :=
  ∀ n, P15216908254015800815.a n = A026561 n

theorem P15216908254015800815.correct : P15216908254015800815.Spec := by
  intro n
  simp only [A026561]

end A026561

/-! ## A026561.P796135851724444473

`A016316(n)+6*a(n-1)` with `a(0)=1`
-/

namespace A026561.P796135851724444473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016316 n + 6 * a (n - 1)

end

end A026561.P796135851724444473

namespace A026561

/-- `A016316(n)+6*a(n-1)` -/
def P796135851724444473.Spec : Prop :=
  ∀ n, P796135851724444473.a n = A026561 n

end A026561

/-! ## A026561.P15321915399918972261

`Δ[A021194(n)-A021184(n)]`
-/

namespace A026561.P15321915399918972261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021194 n - A021184 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026561.P15321915399918972261

namespace A026561

/-- `Δ[A021194(n)-A021184(n)]` -/
def P15321915399918972261.Spec : Prop :=
  ∀ n, P15321915399918972261.a n = A026561 n

end A026561

/-! ## A026561.P1399154404959823945

`2*A025948(n)-A025938(n)`
-/

namespace A026561.P1399154404959823945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025948 n - A025938 n

end

end A026561.P1399154404959823945

namespace A026561

/-- `2*A025948(n)-A025938(n)` -/
def P1399154404959823945.Spec : Prop :=
  ∀ n, P1399154404959823945.a n = A026561 n

end A026561

/-! ## A026561.P14384840767565311339

`2*A025976(n)-A025967(n)`
-/

namespace A026561.P14384840767565311339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025976 n - A025967 n

end

end A026561.P14384840767565311339

namespace A026561

/-- `2*A025976(n)-A025967(n)` -/
def P14384840767565311339.Spec : Prop :=
  ∀ n, P14384840767565311339.a n = A026561 n

end A026561

/-! ## A026561.P6535819113122792242

`A016306(n+1)-A016305(n+1)`
-/

namespace A026561.P6535819113122792242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016306 (n + 1) - A016305 (n + 1)

end

end A026561.P6535819113122792242

namespace A026561

/-- `A016306(n+1)-A016305(n+1)` -/
def P6535819113122792242.Spec : Prop :=
  ∀ n, P6535819113122792242.a n = A026561 n

end A026561

/-! ## A026561.P18124510177984756699

`A025948(n)+A028080(n)-A025952(n)`
-/

namespace A026561.P18124510177984756699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025948 n + (A028080 n - A025952 n)

end

end A026561.P18124510177984756699

namespace A026561

/-- `A025948(n)+A028080(n)-A025952(n)` -/
def P18124510177984756699.Spec : Prop :=
  ∀ n, P18124510177984756699.a n = A026561 n

end A026561

/-!
# A026562: Expansion of 1/((1-2*x)*(1-6*x)*(1-8*x)*(1-10*x)).

The programs for A026562, there is no canonical definition to state claims against.
-/

/-! ## A026562.P5140227166962634131

`2^n*A021344(n)`
-/

namespace A026562.P5140227166962634131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A021344 n

end

end A026562.P5140227166962634131

/-! ## A026562.P5215874093788508681

`A020584(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A026562.P5215874093788508681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020584 n + 2 * a (n - 1)

end

end A026562.P5215874093788508681

/-! ## A026562.P17551196515426884680

`∑[A016753(n)]*A000079(n)`
-/

namespace A026562.P17551196515426884680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016753 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000079 n

end

end A026562.P17551196515426884680

/-! ## A026562.P10747834518269127346

`∑[A016753(n)]*A016116(2*n)`
-/

namespace A026562.P10747834518269127346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016753 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A016116 (2 * n)

end

end A026562.P10747834518269127346

/-! ## A026562.P16253404540181930913

`∑[A245019(n+2)/2]*A000079(n)`
-/

namespace A026562.P16253404540181930913
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245019 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A000079 n : ℚ)

end

end A026562.P16253404540181930913

/-! ## A026562.P4423746533939054124

`∑[A005059(n+2)-A005061(n+2)]*A000079(n)`
-/

namespace A026562.P4423746533939054124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005059 (n + 2) - A005061 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000079 n

end

end A026562.P4423746533939054124

/-!
# A026563: a(n) = T(n, floor(n/2)), where T is given by A026552.

The programs for A026563, there is no canonical definition to state claims against.
-/

/-! ## A026563.P4901037857709770593

`A026552(A035608(n))`
-/

namespace A026563.P4901037857709770593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026552 (A035608 n).toNat

end

end A026563.P4901037857709770593

/-! ## A026563.P13102975889374864623

`A026552(A074377(n))`
-/

namespace A026563.P13102975889374864623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026552 (A074377 n).toNat

end

end A026563.P13102975889374864623

/-! ## A026563.P6762630759136900349

`A026552(A074378(n))`
-/

namespace A026563.P6762630759136900349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026552 (A074378 n).toNat

end

end A026563.P6762630759136900349

/-! ## A026563.P10245686055867268858

`A026552(A156859(n))`
-/

namespace A026563.P10245686055867268858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026552 (A156859 n).toNat

end

end A026563.P10245686055867268858

/-! ## A026563.P13308104200222574615

`A026552(∑[A042948(n)])`
-/

namespace A026563.P13308104200222574615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026552 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A026563.P13308104200222574615

/-! ## A026563.P12477815361438109757

`A026552(A004526(n)+n²)`
-/

namespace A026563.P12477815361438109757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026552 (A004526 n + (n ^ 2 : ℤ)).toNat

end

end A026563.P12477815361438109757

/-! ## A026563.P2397510026846333953

`A026552(A014682(n)+n²)`
-/

namespace A026563.P2397510026846333953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026552 (A014682 n + (n ^ 2 : ℤ)).toNat

end

end A026563.P2397510026846333953

/-! ## A026563.P7647779383272763173

`A026552(A123108(n)+n²)`
-/

namespace A026563.P7647779383272763173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026552 (A123108 n + (n ^ 2 : ℤ)).toNat

end

end A026563.P7647779383272763173

/-! ## A026563.P16240163074481140884

`A026552(∑[n*A010684(n)])`
-/

namespace A026563.P16240163074481140884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A010684 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026552 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A026563.P16240163074481140884

/-! ## A026563.P12498941784463913197

`A026552(∑[∑[A010684(n)]-1])`
-/

namespace A026563.P12498941784463913197
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026552 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A026563.P12498941784463913197

/-!
# A026564: a(n) = Sum_{j=0..n} T(n, j), where T is given by A026552.

The programs for A026564, there is no canonical definition to state claims against.
-/

/-! ## A026564.P7564470205424064918

`(A026565(n)+A026553(n))/2`
-/

namespace A026564.P7564470205424064918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026565 n + A026553 n : ℚ) / 2

end

end A026564.P7564470205424064918

/-! ## A026564.P2931309351155018653

`A014682(A026565(n)+A026553(n))`
-/

namespace A026564.P2931309351155018653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A026565 n + A026553 n).toNat

end

end A026564.P2931309351155018653

/-! ## A026564.P585831527334323298

`A014682(A026565(n)+A026552(∑[2*n]))`
-/

namespace A026564.P585831527334323298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A026565 n + A026552 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A026564.P585831527334323298

/-! ## A026564.P6444255689751579460

`A014682(A026565(n)+A026552(n²+n)%A063766(n))`
-/

namespace A026564.P6444255689751579460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A026565 n + Int.tmod (A026552 (n ^ 2 + n)) (A063766 n)).toNat

end

end A026564.P6444255689751579460

/-! ## A026564.P6446233316697905515

`A014682(A026565(n)+A026552(n²+n)^A057428(n)²)`
-/

namespace A026564.P6446233316697905515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (SequenceMachineLib.roundAway ((A026565 n : ℚ) + (A026552 (n ^ 2 + n) : ℚ) ^ (A057428 n ^ 2 : ℤ))).toNat

end

end A026564.P6446233316697905515

/-!
# A026565: a(n) = 6*a(n-2), starting with 1, 3, 9.

The programs for A026565, the canonical program `A026565.P9861676584698251468` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026565 has offset 0).

The definition of A026565 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-2)` (program `A026565.P9861676584698251468`, by `A026565.P9861676584698251468.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A026565.P9861676584698251468

`6*a(n-2)` with `a(0)=1, a(1)=3, a(2)=9`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026565

/-- `6*a(n-2)` -/
def P9861676584698251468.Spec : Prop :=
  ∀ n, (P9861676584698251468.a n : ℤ) = A026565 n

theorem P9861676584698251468.correct : P9861676584698251468.Spec := by
  intro n
  simp only [A026565]

end A026565

/-! ## A026565.P11820779184110041538

`ogf((1+3x+3x^2)/(1-6x^2))`
-/

namespace A026565.P11820779184110041538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 3] [1, 0, -6] n

end

end A026565.P11820779184110041538

namespace A026565

/-- `ogf((1+3x+3x^2)/(1-6x^2))` -/
def P11820779184110041538.Spec : Prop :=
  ∀ n, P11820779184110041538.a n = A026565 n

end A026565

/-! ## A026565.P18254220461714979301

`∏[5-a(n-1)]` with `a(0)=1, a(1)=3, a(2)=3`
-/

namespace A026565.P18254220461714979301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 3] fun n f1 =>
  5 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A026565.P18254220461714979301

namespace A026565

/-- `∏[5-a(n-1)]` -/
def P18254220461714979301.Spec : Prop :=
  ∀ n, P18254220461714979301.a n = A026565 n

end A026565

/-! ## A026565.P17543915712945831427

`a(n-2)/(1-5/6)` with `a(0)=1, a(1)=3, a(2)=9`
-/

namespace A026565.P17543915712945831427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3, 9] fun n a =>
  a (n - 2) / (1 - (5 : ℚ) / 6)

end

end A026565.P17543915712945831427

namespace A026565

/-- `a(n-2)/(1-5/6)` -/
def P17543915712945831427.Spec : Prop :=
  ∀ n, P17543915712945831427.a n = (A026565 n : ℚ)

end A026565

/-! ## A026565.P7852122815780845243

`a(n-1)+a(n-1)+and(and(1, n)-1, a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A026565.P7852122815780845243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) + (a (n - 1) + Int.land ((Nat.land 1 n : ℤ) - 1) (a (n - 1)))

end

end A026565.P7852122815780845243

namespace A026565

/-- `a(n-1)+a(n-1)+and(and(1, n)-1, a(n-1))` -/
def P7852122815780845243.Spec : Prop :=
  ∀ n, P7852122815780845243.a n = A026565 n

end A026565

/-! ## A026565.P2504556980355690910

`A100852(A165157(n))`
-/

namespace A026565.P2504556980355690910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100852 (A165157 n).toNat

end

end A026565.P2504556980355690910

namespace A026565

/-- `A100852(A165157(n))` -/
def P2504556980355690910.Spec : Prop :=
  ∀ n, P2504556980355690910.a n = A026565 n

end A026565

/-! ## A026565.P17003359102022944728

`A056449(n)*A074323(n)`
-/

namespace A026565.P17003359102022944728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056449 n * A074323 n

end

end A026565.P17003359102022944728

namespace A026565

/-- `A056449(n)*A074323(n)` -/
def P17003359102022944728.Spec : Prop :=
  ∀ n, P17003359102022944728.a n = A026565 n

end A026565

/-! ## A026565.P17945490725584816911

`∏[A020639(A267048(n+1))]`
-/

namespace A026565.P17945490725584816911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A267048 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A026565.P17945490725584816911

namespace A026565

/-- `∏[A020639(A267048(n+1))]` -/
def P17945490725584816911.Spec : Prop :=
  ∀ n, P17945490725584816911.a n = A026565 n

end A026565

/-! ## A026565.P18000752665395676179

`2*A026564(n)-A026553(n)`
-/

namespace A026565.P18000752665395676179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026564 n - A026553 n

end

end A026565.P18000752665395676179

namespace A026565

/-- `2*A026564(n)-A026553(n)` -/
def P18000752665395676179.Spec : Prop :=
  ∀ n, P18000752665395676179.a n = A026565 n

end A026565

/-! ## A026565.P11716297082238279672

`floor(A026549(n)+A026549(n)/2)`
-/

namespace A026565.P11716297082238279672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A026549 n : ℚ) + (A026549 n : ℚ) / 2⌋

end

end A026565.P11716297082238279672

namespace A026565

/-- `floor(A026549(n)+A026549(n)/2)` -/
def P11716297082238279672.Spec : Prop :=
  ∀ n, P11716297082238279672.a n = A026565 n

end A026565

/-! ## A026565.P13729599072309173396

`A100852(eq[A004736(n+2), A035214(n+3)])`
-/

namespace A026565.P13729599072309173396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100852 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A026565.P13729599072309173396

namespace A026565

/-- `A100852(eq[A004736(n+2), A035214(n+3)])` -/
def P13729599072309173396.Spec : Prop :=
  ∀ n, P13729599072309173396.a n = A026565 n

end A026565

/-! ## A026565.P9060308802708288981

`A029744(2*n+1)/A029744(n+2)*A038754(n+1)`
-/

namespace A026565.P9060308802708288981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029744 (2 * n + 1) : ℚ) / (A029744 (n + 2) : ℚ) * (A038754 (n + 1) : ℚ)

end

end A026565.P9060308802708288981

namespace A026565

/-- `A029744(2*n+1)/A029744(n+2)*A038754(n+1)` -/
def P9060308802708288981.Spec : Prop :=
  ∀ n, P9060308802708288981.a n = (A026565 n : ℚ)

end A026565

/-! ## A026565.P12684355749277844619

`floor(A026532(n+2)/2)`
-/

namespace A026565.P12684355749277844619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A026532 (n + 2) : ℚ) / 2⌋

end

end A026565.P12684355749277844619

namespace A026565

/-- `floor(A026532(n+2)/2)` -/
def P12684355749277844619.Spec : Prop :=
  ∀ n, P12684355749277844619.a n = A026565 n

end A026565

/-! ## A026565.P3363700132882813820

`floor(∏[A020639(3*(n+1))]/2)`
-/

namespace A026565.P3363700132882813820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌋

end

end A026565.P3363700132882813820

namespace A026565

/-- `floor(∏[A020639(3*(n+1))]/2)` -/
def P3363700132882813820.Spec : Prop :=
  ∀ n, P3363700132882813820.a n = A026565 n

end A026565

/-! ## A026565.P3944070168819781042

`A026532(n+2)/(A049084(2*(n+1))+2)`
-/

namespace A026565.P3944070168819781042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026532 (n + 2) : ℚ) / (A049084 (2 * (n + 1)) + 2 : ℚ)

end

end A026565.P3944070168819781042

namespace A026565

/-- `A026532(n+2)/(A049084(2*(n+1))+2)` -/
def P3944070168819781042.Spec : Prop :=
  ∀ n, P3944070168819781042.a n = (A026565 n : ℚ)

end A026565

/-! ## A026565.P5139935444197213161

`A027276(n)/(n+1)`
-/

namespace A026565.P5139935444197213161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027276 n : ℚ) / (n + 1 : ℚ)

end

end A026565.P5139935444197213161

namespace A026565

/-- `A027276(n)/(n+1)` -/
def P5139935444197213161.Spec : Prop :=
  ∀ n, P5139935444197213161.a n = (A026565 n : ℚ)

end A026565

/-! ## A026565.P3305429296937381984

`A130505(n)/A182522(n)`
-/

namespace A026565.P3305429296937381984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130505 n : ℚ) / (A182522 n : ℚ)

end

end A026565.P3305429296937381984

namespace A026565

/-- `A130505(n)/A182522(n)` -/
def P3305429296937381984.Spec : Prop :=
  ∀ n, P3305429296937381984.a n = (A026565 n : ℚ)

end A026565

/-! ## A026565.P15126688873742972908

`A247936(A116940(n))`
-/

namespace A026565.P15126688873742972908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247936 (A116940 n).toNat

end

end A026565.P15126688873742972908

namespace A026565

/-- `A247936(A116940(n))` -/
def P15126688873742972908.Spec : Prop :=
  ∀ n, P15126688873742972908.a n = A026565 n

end A026565

/-! ## A026565.P16044692579830180827

`A155118(A080827(n+2))`
-/

namespace A026565.P16044692579830180827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155118 (A080827 (n + 2)).toNat

end

end A026565.P16044692579830180827

namespace A026565

/-- `A155118(A080827(n+2))` -/
def P16044692579830180827.Spec : Prop :=
  ∀ n, P16044692579830180827.a n = A026565 n

end A026565

/-!
# A026566: a(n) = Sum{T(i,j)}, 0<=j<=i, 0<=i<=n, T given by A026552.

The programs for A026566, there is no canonical definition to state claims against.
-/

/-! ## A026566.P4782810832091260932

`∑[A026564(n)]`
-/

namespace A026566.P4782810832091260932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026564 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026566.P4782810832091260932

/-! ## A026566.P12582914127952041656

`A026564(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A026566.P12582914127952041656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026564 n + a (A023443 n).toNat

end

end A026566.P12582914127952041656

/-! ## A026566.P16811521733931200924

`∑[(A026565(n)+A026553(n))/2]`
-/

namespace A026566.P16811521733931200924
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026565 n + A026553 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026566.P16811521733931200924

/-! ## A026566.P7165442490395583858

`A026564(n)+a(n-1)-A000007(n)` with `a(0)=1`
-/

namespace A026566.P7165442490395583858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026564 n + a (n - 1) - A000007 n

end

end A026566.P7165442490395583858

/-! ## A026566.P16250749895328021017

`A026533(n)+A026550(n)-A026531(n)`
-/

namespace A026566.P16250749895328021017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026533 n + (A026550 n - A026531 n)

end

end A026566.P16250749895328021017

/-!
# A026567: a(n) = Sum_{i=0..2*n} Sum_{j=0..i} T(i, j), where T is given by A026552.

The programs for A026567, the canonical program `A026567.P12840231256313437065` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026567 has offset 0).

The definition of A026567 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A026567.P12840231256313437065

`6*a(n-2)+7` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026567

/-- `6*a(n-2)+7` -/
def P12840231256313437065.Spec : Prop :=
  ∀ n, (P12840231256313437065.a n : ℤ) = A026567 n

theorem P12840231256313437065.correct : P12840231256313437065.Spec := by
  intro n
  simp only [A026567]

end A026567

/-! ## A026567.P11576348550488522502

`∑[ogf((1+3x+3x^2)/(1-6x^2))]`
-/

namespace A026567.P11576348550488522502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 3] [1, 0, -6] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026567.P11576348550488522502

namespace A026567

/-- `∑[ogf((1+3x+3x^2)/(1-6x^2))]` -/
def P11576348550488522502.Spec : Prop :=
  ∀ n, P11576348550488522502.a n = A026567 n

end A026567

/-! ## A026567.P14166477285706214221

`ogf((1+3x+3x^2)/(1-x-6x^2+6x^3))`
-/

namespace A026567.P14166477285706214221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 3] [1, -1, -6, 6] n

end

end A026567.P14166477285706214221

namespace A026567

/-- `ogf((1+3x+3x^2)/(1-x-6x^2+6x^3))` -/
def P14166477285706214221.Spec : Prop :=
  ∀ n, P14166477285706214221.a n = A026567 n

end A026567

/-! ## A026567.P538043264683205744

`∑[6*a(n-2)]` with `a(0)=1, a(1)=3, a(2)=9`
-/

namespace A026567.P538043264683205744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 9] fun n f1 =>
  6 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026567.P538043264683205744

namespace A026567

/-- `∑[6*a(n-2)]` -/
def P538043264683205744.Spec : Prop :=
  ∀ n, (P538043264683205744.a n : ℤ) = A026567 n

end A026567

/-! ## A026567.P15409516838961426933

`∑[A026565(n)]`
-/

namespace A026567.P15409516838961426933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026567.P15409516838961426933

namespace A026567

/-- `∑[A026565(n)]` -/
def P15409516838961426933.Spec : Prop :=
  ∀ n, P15409516838961426933.a n = A026567 n

end A026567

/-! ## A026567.P13063869911560352089

`∑[A100852(A165157(n))]`
-/

namespace A026567.P13063869911560352089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100852 (A165157 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026567.P13063869911560352089

namespace A026567

/-- `∑[A100852(A165157(n))]` -/
def P13063869911560352089.Spec : Prop :=
  ∀ n, P13063869911560352089.a n = A026567 n

end A026567

/-! ## A026567.P4489585188677166938

`∑[∏[A020639(A267048(n+1))]]`
-/

namespace A026567.P4489585188677166938
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A267048 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026567.P4489585188677166938

namespace A026567

/-- `∑[∏[A020639(A267048(n+1))]]` -/
def P4489585188677166938.Spec : Prop :=
  ∀ n, P4489585188677166938.a n = A026567 n

end A026567

/-! ## A026567.P10620782157492169613

`7-(a(n-2)-7*a(n-2))` with `a(0)=1, a(1)=4`
-/

namespace A026567.P10620782157492169613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  7 - (a (n - 2) - 7 * a (n - 2))

end

end A026567.P10620782157492169613

namespace A026567

/-- `7-(a(n-2)-7*a(n-2))` -/
def P10620782157492169613.Spec : Prop :=
  ∀ n, P10620782157492169613.a n = A026567 n

end A026567

/-! ## A026567.P1492908487461336060

`A026534(n+2)/2-1`
-/

namespace A026567.P1492908487461336060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026534 (n + 2) : ℚ) / 2 - 1

end

end A026567.P1492908487461336060

namespace A026567

/-- `A026534(n+2)/2-1` -/
def P1492908487461336060.Spec : Prop :=
  ∀ n, P1492908487461336060.a n = (A026567 n : ℚ)

end A026567

/-! ## A026567.P10948105862249745046

`∑[floor(∏[A020639(3*(n+1))]/2)]`
-/

namespace A026567.P10948105862249745046
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (3 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∏ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026567.P10948105862249745046

namespace A026567

/-- `∑[floor(∏[A020639(3*(n+1))]/2)]` -/
def P10948105862249745046.Spec : Prop :=
  ∀ n, P10948105862249745046.a n = A026567 n

end A026567

/-! ## A026567.P2091682629971913454

`A026534(n+1)+A026551(n)-A026565(n+1)`
-/

namespace A026567.P2091682629971913454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026534 (n + 1) + (A026551 n - A026565 (n + 1))

end

end A026567.P2091682629971913454

namespace A026567

/-- `A026534(n+1)+A026551(n)-A026565(n+1)` -/
def P2091682629971913454.Spec : Prop :=
  ∀ n, P2091682629971913454.a n = A026567 n

end A026567

/-! ## A026567.P16660484242765788497

`∑[A027276(n)/(n+1)]`
-/

namespace A026567.P16660484242765788497
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027276 n : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026567.P16660484242765788497

namespace A026567

/-- `∑[A027276(n)/(n+1)]` -/
def P16660484242765788497.Spec : Prop :=
  ∀ n, P16660484242765788497.a n = (A026567 n : ℚ)

end A026567

/-! ## A026567.P2530942302040116299

`∑[A036561(∑[or(1, n)])]-1`
-/

namespace A026567.P2530942302040116299
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A026567.P2530942302040116299

namespace A026567

/-- `∑[A036561(∑[or(1, n)])]-1` -/
def P2530942302040116299.Spec : Prop :=
  ∀ n, P2530942302040116299.a n = A026567 n

end A026567

/-! ## A026567.P11850751674130674103

`∑[A155118(A080827(n+2))]`
-/

namespace A026567.P11850751674130674103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155118 (A080827 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026567.P11850751674130674103

namespace A026567

/-- `∑[A155118(A080827(n+2))]` -/
def P11850751674130674103.Spec : Prop :=
  ∀ n, P11850751674130674103.a n = A026567 n

end A026567

/-! ## A026567.P6187628734994649660

`∑[A036561(A004525((n+1)²))]-1`
-/

namespace A026567.P6187628734994649660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 (A004525 ((n + 1) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A026567.P6187628734994649660

namespace A026567

/-- `∑[A036561(A004525((n+1)²))]-1` -/
def P6187628734994649660.Spec : Prop :=
  ∀ n, P6187628734994649660.a n = A026567 n

end A026567

/-!
# A026568: Irregular triangular array T read by rows: T(i,0) = T(i,2i) = 1 for i >= 0; T(i,1) = T(i,2i-1) = [ (i+1)/2 ] for i >= 1; and for i >= 2 and 2 <=j <= i - 2, T(i,j) = T(i-1,j-2) + T(i-1,j-1) + T(i-1,j) if i + j is even, T(i,j) = T(i-1,j-2) + T(i-1,j) if i + j is odd.

The programs for A026568, there is no canonical definition to state claims against.
-/

/-! ## A026568.P14909620581586404189

`A225644(A030101(A015718(n+1)*A084600(n)))`
-/

namespace A026568.P14909620581586404189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225644 (A030101 (A015718 (n + 1) * A084600 n).toNat).toNat

end

end A026568.P14909620581586404189

/-! ## A026568.P6262485458878914589

`A196169(lcm(2, A350733(n)))`
-/

namespace A026568.P6262485458878914589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196169 (Int.lcm 2 (A350733 n))

end

end A026568.P6262485458878914589

/-! ## A026568.P4354744445143632155

`or(A010054(A249163(n)), A026519(n))`
-/

namespace A026568.P4354744445143632155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 (A249163 n).toNat) (A026519 n)

end

end A026568.P4354744445143632155

/-! ## A026568.P7097471999128739458

`A082647(A069675(n+1)*A269742(n+1))`
-/

namespace A026568.P7097471999128739458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082647 (A069675 (n + 1) * A269742 (n + 1)).toNat

end

end A026568.P7097471999128739458

/-! ## A026568.P10876550966733908513

`A082647(lcm(A069675(n+1), A269742(n+1)))`
-/

namespace A026568.P10876550966733908513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082647 (Int.lcm (A069675 (n + 1)) (A269742 (n + 1)))

end

end A026568.P10876550966733908513

/-!
# A026569: a(n) = T(n,n), T given by A026568. Also a(n) = number of integer strings s(0),...,s(n) counted by T, such that s(n)=0.

The programs for A026569, there is no canonical definition to state claims against.
-/

/-! ## A026569.P4200716213221336540

`∑[A026585(n)]`
-/

namespace A026569.P4200716213221336540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026585 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026569.P4200716213221336540

/-! ## A026569.P18242020272115858388

`2*A026580(n)-A026581(n)`
-/

namespace A026569.P18242020272115858388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026580 n - A026581 n

end

end A026569.P18242020272115858388

/-! ## A026569.P10424427242302508571

`2*A026598(n)-A026599(n)`
-/

namespace A026569.P10424427242302508571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026598 n - A026599 n

end

end A026569.P10424427242302508571

/-! ## A026569.P17197093179530028660

`A026568(∑[2*n]+1)`
-/

namespace A026569.P17197093179530028660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026568 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A026569.P17197093179530028660

/-! ## A026569.P5277271195987835589

`∑[A026584(∑[2*n]+1)]`
-/

namespace A026569.P5277271195987835589
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026584 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026569.P5277271195987835589

/-! ## A026569.P3227439763185704330

`lcm(A026568(n²+1+n), A057077(n))`
-/

namespace A026569.P3227439763185704330
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A026568 (n ^ 2 + 1 + n)) (A057077 n)

end

end A026569.P3227439763185704330

/-!
# A026570: a(n) = A026568(n,n-1), also a(n) = number of integer strings s(0),...,s(n) counted by A026568 such that s(n)=1.

The programs for A026570, there is no canonical definition to state claims against.
-/

/-! ## A026570.P10189740453978515575

`A026585(n+2)/2`
-/

namespace A026570.P10189740453978515575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026585 (n + 2) : ℚ) / 2

end

end A026570.P10189740453978515575

/-! ## A026570.P8370951993283767239

`(A026569(n+2)-A026569(n+1))/2`
-/

namespace A026570.P8370951993283767239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026569 (n + 2) - A026569 (n + 1) : ℚ) / 2

end

end A026570.P8370951993283767239

/-! ## A026570.P9130379906394904463

`2*A026569(n)-A090344(n)`
-/

namespace A026570.P9130379906394904463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026569 n - A090344 n

end

end A026570.P9130379906394904463

/-! ## A026570.P9650689816426930400

`ceil(record[A026585(n)/2])`
-/

namespace A026570.P9650689816426930400
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026585 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉

end

end A026570.P9650689816426930400

/-! ## A026570.P16819527797296413574

`Δ[A026569(n+1)/2]`
-/

namespace A026570.P16819527797296413574
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026569 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026570.P16819527797296413574

/-! ## A026570.P870312484621871724

`Δ[A307557(n)]-a(n-1)` with `a(0)=1`
-/

namespace A026570.P870312484621871724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307557 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n - a (n - 1)

end

end A026570.P870312484621871724

/-! ## A026570.P2954505320154813089

`A307557(n+1)-A026569(n+1)`
-/

namespace A026570.P2954505320154813089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307557 (n + 1) - A026569 (n + 1)

end

end A026570.P2954505320154813089

/-! ## A026570.P12773188335652381598

`A026568(∑[2*(n+1)])`
-/

namespace A026570.P12773188335652381598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026568 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A026570.P12773188335652381598

/-! ## A026570.P6229740135483228987

`A026584(∑[2*(n+1)])`
-/

namespace A026570.P6229740135483228987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026584 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A026570.P6229740135483228987

/-!
# A026571: a(n) = T(n,n-2), T given by A026568. Also a(n) = number of integer strings s(0), ..., s(n) counted by T, such that s(n) = 2.

The programs for A026571, there is no canonical definition to state claims against.
-/

/-! ## A026571.P12121356092769740208

`∑[A026587(n+2)]`
-/

namespace A026571.P12121356092769740208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026587 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026571.P12121356092769740208

/-! ## A026571.P16117733087887693773

`A026569(n+2)-A090344(n+2)`
-/

namespace A026571.P16117733087887693773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026569 (n + 2) - A090344 (n + 2)

end

end A026571.P16117733087887693773

/-! ## A026571.P17477890404338417066

`A026570(n+3)-A026569(n+2)`
-/

namespace A026571.P17477890404338417066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026570 (n + 3) - A026569 (n + 2)

end

end A026571.P17477890404338417066

/-! ## A026571.P5760235068236697694

`Δ[Δ[A307557(n+1)]]-A307557(n+1)`
-/

namespace A026571.P5760235068236697694
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307557 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A307557 (n + 1)

end

end A026571.P5760235068236697694

/-! ## A026571.P1442232352138814875

`A026568((n+3)²-n)`
-/

namespace A026571.P1442232352138814875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026568 ((n + 3) ^ 2 - n)

end

end A026571.P1442232352138814875

/-! ## A026571.P17054905716350562152

`∑[A026584((n+3)²-n)]`
-/

namespace A026571.P17054905716350562152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026584 ((n + 3) ^ 2 - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026571.P17054905716350562152

/-! ## A026571.P10141567240699951397

`record[A026568(A265611(n)+1)]`
-/

namespace A026571.P10141567240699951397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026568 (A265611 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026571.P10141567240699951397

/-! ## A026571.P3541760295821881612

`A245825((n+1)²+(n+2)²)`
-/

namespace A026571.P3541760295821881612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245825 ((n + 1) ^ 2 + (n + 2) ^ 2)

end

end A026571.P3541760295821881612

/-!
# A026572: a(n) = T(n,n-3), T given by A026568. Also a(n) = number of integer strings s(0),...,s(n) counted by T, such that s(n)=3.

The programs for A026572, there is no canonical definition to state claims against.
-/

/-! ## A026572.P17820325275403338110

`A026568((n+2)*(n+5))`
-/

namespace A026572.P17820325275403338110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026568 ((n + 2) * (n + 5))

end

end A026572.P17820325275403338110

/-! ## A026572.P12594169871043284757

`A026584((n+2)*(n+5))`
-/

namespace A026572.P12594169871043284757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026584 ((n + 2) * (n + 5))

end

end A026572.P12594169871043284757

/-! ## A026572.P4306168596641581976

`record[A026568(A265611(n))]`
-/

namespace A026572.P4306168596641581976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026568 (A265611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026572.P4306168596641581976

/-! ## A026572.P10838729224787856275

`record[A026584(A265611(n+2))]`
-/

namespace A026572.P10838729224787856275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026584 (A265611 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026572.P10838729224787856275

/-! ## A026572.P18191030592162548081

`A245825(A005408((n+2)²))`
-/

namespace A026572.P18191030592162548081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245825 (A005408 ((n + 2) ^ 2)).toNat

end

end A026572.P18191030592162548081

/-!
# A026573: a(n)=T(n,n-4), T given by A026568. Also a(n) = number of integer strings s(0),...,s(n) counted by T, such that s(n)=4.

The programs for A026573, there is no canonical definition to state claims against.
-/

/-! ## A026573.P463198068131850958

`∑[A026589(n+4)]`
-/

namespace A026573.P463198068131850958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026589 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026573.P463198068131850958

/-! ## A026573.P18257653181623384958

`∑[record[A026584(n²+5+n)]]`
-/

namespace A026573.P18257653181623384958
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026584 (n ^ 2 + 5 + n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026573.P18257653181623384958

/-! ## A026573.P8702899740096045872

`record[A026568(A027690(n))]`
-/

namespace A026573.P8702899740096045872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026568 (A027690 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026573.P8702899740096045872

/-! ## A026573.P920339735441368072

`A026568(A014209(n+3))`
-/

namespace A026573.P920339735441368072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026568 (A014209 (n + 3)).toNat

end

end A026573.P920339735441368072

/-! ## A026573.P17797383334609806645

`A026568(A027690(n+4))`
-/

namespace A026573.P17797383334609806645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026568 (A027690 (n + 4)).toNat

end

end A026573.P17797383334609806645

/-! ## A026573.P2603555603184507673

`A026568(Δ[A026046(n+6)]-4)`
-/

namespace A026573.P2603555603184507673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026046 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026568 (f1 (n + 1) - f1 n - 4).toNat

end

end A026573.P2603555603184507673

/-! ## A026573.P14878121395554327914

`A026568(A000217(n+5)+A055999(n)+10)`
-/

namespace A026573.P14878121395554327914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026568 (A000217 (n + 5) + (A055999 n + 10)).toNat

end

end A026573.P14878121395554327914

/-!
# A026574: T(2n,n), T given by A026568.

The programs for A026574, there is no canonical definition to state claims against.
-/

/-! ## A026574.P544511921624904420

`A026579(2*n)`
-/

namespace A026574.P544511921624904420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026579 (2 * n)

end

end A026574.P544511921624904420

/-! ## A026574.P12190460352701826958

`A026579(A005843(n))+char[A031969(n+1)]`
-/

namespace A026574.P12190460352701826958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031969 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026579 (A005843 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A026574.P12190460352701826958

/-! ## A026574.P182233805786306749

`A026579(A005843(n))+char[A071519(n+1)]`
-/

namespace A026574.P182233805786306749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071519 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026579 (A005843 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A026574.P182233805786306749

/-! ## A026574.P17116047275290004209

`A026579(A005843(n))+char[A162859(n+1)]`
-/

namespace A026574.P17116047275290004209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162859 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026579 (A005843 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A026574.P17116047275290004209

/-! ## A026574.P16901033647590186166

`A026579(A005843(n))+char[A294661(n+1)]`
-/

namespace A026574.P16901033647590186166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294661 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026579 (A005843 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A026574.P16901033647590186166

/-! ## A026574.P12724485920675135642

`A026579(A005843(n))/A007318(∑[n])`
-/

namespace A026574.P12724485920675135642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026579 (A005843 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A026574.P12724485920675135642

/-! ## A026574.P17755189741205998699

`A026579(A005843(n))%A103971(n+1)`
-/

namespace A026574.P17755189741205998699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026579 (A005843 n).toNat) (A103971 (n + 1))

end

end A026574.P17755189741205998699

/-! ## A026574.P11117784601744597821

`A026568((2*n)²+n+1)`
-/

namespace A026574.P11117784601744597821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026568 ((2 * n) ^ 2 + (n + 1))

end

end A026574.P11117784601744597821

/-!
# A026575: T(2n,n-1), T given by A026568.

The programs for A026575, there is no canonical definition to state claims against.
-/

/-! ## A026575.P10590460349404837835

`A026568(∑[8*n+5])`
-/

namespace A026575.P10590460349404837835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026568 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A026575.P10590460349404837835

/-! ## A026575.P14157258050494250226

`record[A026568(Δ[A213779(n+1)])]`
-/

namespace A026575.P14157258050494250226
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213779 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026568 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026575.P14157258050494250226

/-!
# A026576: T(2n,n-2), T given by A026568.

The programs for A026576, there is no canonical definition to state claims against.
-/

/-! ## A026576.P10164752482908760227

`A026593(n+3)-A026574(n+2)`
-/

namespace A026576.P10164752482908760227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026593 (n + 3) - A026574 (n + 2)

end

end A026576.P10164752482908760227

/-! ## A026576.P6305760114192510022

`A026593(C(n+1, n)+2)%A026574(n+2)`
-/

namespace A026576.P6305760114192510022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026593 (Nat.choose (n + 1) n + 2)) (A026574 (n + 2))

end

end A026576.P6305760114192510022

/-! ## A026576.P1395234774095488868

`A026593(floor(sqrt((n+1)²+1))+2)%A026574(n+2)`
-/

namespace A026576.P1395234774095488868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026593 (Nat.sqrt ((n + 1) ^ 2 + 1) + 2)) (A026574 (n + 2))

end

end A026576.P1395234774095488868

/-! ## A026576.P7485990921771788891

`A026568(A016754(n+2)-n)`
-/

namespace A026576.P7485990921771788891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026568 (A016754 (n + 2) - (n : ℤ)).toNat

end

end A026576.P7485990921771788891

/-! ## A026576.P16614037489361426871

`A026568(A174114(2*n+5)+2)`
-/

namespace A026576.P16614037489361426871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026568 (A174114 (2 * n + 5) + 2).toNat

end

end A026576.P16614037489361426871

/-!
# A026577: T(2n-1,n-1), T given by A026568.

The programs for A026577, there is no canonical definition to state claims against.
-/

/-! ## A026577.P3256802685942104321

`A026579(Δ[n²])`
-/

namespace A026577.P3256802685942104321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026579 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A026577.P3256802685942104321

/-! ## A026577.P18173889781899157285

`gcd(floor(2^-n), A026579(2*n+1))`
-/

namespace A026577.P18173889781899157285
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊(2 : ℚ) ^ (-(n : ℤ) : ℤ)⌋ (A026579 (2 * n + 1))

end

end A026577.P18173889781899157285

/-! ## A026577.P10656248070759664747

`record[A026579(A093178(n))]`
-/

namespace A026577.P10656248070759664747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026579 (A093178 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026577.P10656248070759664747

/-! ## A026577.P16776511411609313113

`A026579(2*n+1)*A057427(A005378(n))`
-/

namespace A026577.P16776511411609313113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026579 (2 * n + 1) * A057427 (A005378 n).toNat

end

end A026577.P16776511411609313113

/-! ## A026577.P12000390979863113797

`A026579(2*n+1)²/A026579(A093178(2*n+1))`
-/

namespace A026577.P12000390979863113797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026579 (2 * n + 1) ^ 2 : ℚ) / (A026579 (A093178 (2 * n + 1)).toNat : ℚ)

end

end A026577.P12000390979863113797

/-! ## A026577.P6987105894733079420

`A026568(A054552(n+1))`
-/

namespace A026577.P6987105894733079420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026568 (A054552 (n + 1)).toNat

end

end A026577.P6987105894733079420

/-! ## A026577.P17369257018140041264

`A026568(A054556(n+2))`
-/

namespace A026577.P17369257018140041264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026568 (A054556 (n + 2)).toNat

end

end A026577.P17369257018140041264

/-! ## A026577.P11452485333761003846

`A026568(A069894(n)+n)`
-/

namespace A026577.P11452485333761003846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026568 (A069894 n + (n : ℤ)).toNat

end

end A026577.P11452485333761003846

/-! ## A026577.P13252213364220831010

`A026568(A017089(∑[n])+n)`
-/

namespace A026577.P13252213364220831010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026568 (A017089 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)).toNat

end

end A026577.P13252213364220831010

/-! ## A026577.P5671135006322132951

`A026568(∑[A017089(n)]-n)`
-/

namespace A026577.P5671135006322132951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026568 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A026577.P5671135006322132951

/-!
# A026578: T(2n-1,n-2), T given by A026568.

The programs for A026578, there is no canonical definition to state claims against.
-/

/-! ## A026578.P16438107129680928103

`A026568(A001107(n+2))`
-/

namespace A026578.P16438107129680928103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026568 (A001107 (n + 2)).toNat

end

end A026578.P16438107129680928103

/-! ## A026578.P7613755152169028788

`A026568(∑[A004768(n)]+1)`
-/

namespace A026578.P7613755152169028788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004768 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026568 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A026578.P7613755152169028788

/-! ## A026578.P4678587925426504358

`record[A026568(A272266(n+1))]`
-/

namespace A026578.P4678587925426504358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026568 (A272266 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026578.P4678587925426504358

/-! ## A026578.P7484622168235455778

`A026568(A343560(n+2)+1)`
-/

namespace A026578.P7484622168235455778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026568 (A343560 (n + 2) + 1).toNat

end

end A026578.P7484622168235455778

/-! ## A026578.P17748593306142968844

`A026568(A069894(n+1)+n)`
-/

namespace A026578.P17748593306142968844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026568 (A069894 (n + 1) + (n : ℤ)).toNat

end

end A026578.P17748593306142968844

/-!
# A026579: T(n,[ n/2 ]), T given by A026568.

The programs for A026579, there is no canonical definition to state claims against.
-/

/-! ## A026579.P16616543603256147565

`A026568(A266883(n))`
-/

namespace A026579.P16616543603256147565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026568 (A266883 n).toNat

end

end A026579.P16616543603256147565

/-! ## A026579.P7594547394918898528

`A026568(A317186(n))`
-/

namespace A026579.P7594547394918898528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026568 (A317186 n).toNat

end

end A026579.P7594547394918898528

/-! ## A026579.P17586451067483103962

`A026568(A035608(n)+1)`
-/

namespace A026579.P17586451067483103962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026568 (A035608 n + 1).toNat

end

end A026579.P17586451067483103962

/-! ## A026579.P11753322240093870401

`A026568(A074377(n)+1)`
-/

namespace A026579.P11753322240093870401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026568 (A074377 n + 1).toNat

end

end A026579.P11753322240093870401

/-! ## A026579.P5773444447974938228

`A026568(A074378(n)+1)`
-/

namespace A026579.P5773444447974938228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026568 (A074378 n + 1).toNat

end

end A026579.P5773444447974938228

/-! ## A026579.P216455832350845136

`A026568(A174114(n+1))`
-/

namespace A026579.P216455832350845136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026568 (A174114 (n + 1)).toNat

end

end A026579.P216455832350845136

/-! ## A026579.P13254385099558001543

`A026568(A267682(n+1))`
-/

namespace A026579.P13254385099558001543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026568 (A267682 (n + 1)).toNat

end

end A026579.P13254385099558001543

/-! ## A026579.P11047130382671573339

`A026568(A008619(n)+n²)`
-/

namespace A026579.P11047130382671573339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026568 (A008619 n + (n ^ 2 : ℤ)).toNat

end

end A026579.P11047130382671573339

/-! ## A026579.P11038695364163542205

`A026568((n+1)²-A004526(n))`
-/

namespace A026579.P11038695364163542205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026568 (((n + 1) ^ 2 : ℤ) - A004526 n).toNat

end

end A026579.P11038695364163542205

/-! ## A026579.P13966462870494955857

`A026568((n+1)²-A007494(n))`
-/

namespace A026579.P13966462870494955857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026568 (((n + 1) ^ 2 : ℤ) - A007494 n).toNat

end

end A026579.P13966462870494955857

/-! ## A026579.P4187715177781360304

`A026568(A000982(n)+∑[n+1])`
-/

namespace A026579.P4187715177781360304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026568 (A000982 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A026579.P4187715177781360304

/-!
# A026580: T(n,0) + T(n,1) + ... + T(n,n), T given by A026568.

The programs for A026580, there is no canonical definition to state claims against.
-/

/-! ## A026580.P3037100927506303577

`(A026581(n)+A026569(n))/2`
-/

namespace A026580.P3037100927506303577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026581 n + A026569 n : ℚ) / 2

end

end A026580.P3037100927506303577

/-! ## A026580.P11116011049275377190

`(A026569(n)+A344236(n+1)+A344236(n))/2`
-/

namespace A026580.P11116011049275377190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026569 n + (A344236 (n + 1) + A344236 n) : ℚ) / 2

end

end A026580.P11116011049275377190

/-! ## A026580.P2836140569543580674

`(A026581(n)+A026569(n))*2^A008683(A020484(n))`
-/

namespace A026580.P2836140569543580674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026581 n + A026569 n : ℚ) * (2 : ℚ) ^ (A008683 (A020484 n).toNat : ℤ)

end

end A026580.P2836140569543580674

/-! ## A026580.P6082530708043096682

`(A026569(n)+Δ[A026599(n)/2])/2`
-/

namespace A026580.P6082530708043096682
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026599 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A026569 n : ℚ) + (f1 (n + 1) - f1 n)) / 2

end

end A026580.P6082530708043096682

/-! ## A026580.P2332286398394952985

`(A026569(n)+A026597(n+1)/2)/2`
-/

namespace A026580.P2332286398394952985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A026569 n : ℚ) + (A026597 (n + 1) : ℚ) / 2) / 2

end

end A026580.P2332286398394952985

/-! ## A026580.P11654801437473752005

`(A026569(n)+abs(A122112(n+1)/2))/2`
-/

namespace A026580.P11654801437473752005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A026569 n : ℚ) + |(A122112 (n + 1) : ℚ) / 2|) / 2

end

end A026580.P11654801437473752005

/-! ## A026580.P6175266731924590987

`(A026569(n)+(∑[A159612(n+1)]+1)/2)/2`
-/

namespace A026580.P6175266731924590987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159612 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A026569 n : ℚ) + ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / 2) / 2

end

end A026580.P6175266731924590987

/-! ## A026580.P18175060118620674856

`(A026569(n)+A027281(n)/(n+1))/2`
-/

namespace A026580.P18175060118620674856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A026569 n : ℚ) + (A027281 n : ℚ) / (n + 1 : ℚ)) / 2

end

end A026580.P18175060118620674856

/-!
# A026581: Expansion of (1 + 2*x) / (1 - x - 4*x^2).

The programs for A026581, the canonical program `A026581.P1232774146462448162` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026581 has offset 0).

The definition of A026581 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x)/(1-x-4x^2))` (program `A026581.P1232774146462448162`, by `A026581.P1232774146462448162.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A026581.P1232774146462448162

`ogf((1+2x)/(1-x-4x^2))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026581

/-- `ogf((1+2x)/(1-x-4x^2))` -/
def P1232774146462448162.Spec : Prop :=
  ∀ n, P1232774146462448162.a n = A026581 n

theorem P1232774146462448162.correct : P1232774146462448162.Spec := by
  intro n
  simp only [A026581]

end A026581

/-! ## A026581.P8662498452128429561

`a(n-1)+4*a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A026581.P8662498452128429561
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) + 4 * a (n - 2)

end

end A026581.P8662498452128429561

namespace A026581

/-- `a(n-1)+4*a(n-2)` -/
def P8662498452128429561.Spec : Prop :=
  ∀ n, (P8662498452128429561.a n : ℤ) = A026581 n

end A026581

/-! ## A026581.P2716532131376456062

`a(n-1)+lcm(4, a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A026581.P2716532131376456062
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) + Nat.lcm 4 (a (n - 2))

end

end A026581.P2716532131376456062

namespace A026581

/-- `a(n-1)+lcm(4, a(n-2))` -/
def P2716532131376456062.Spec : Prop :=
  ∀ n, (P2716532131376456062.a n : ℤ) = A026581 n

end A026581

/-! ## A026581.P13601472336390332873

`a(n-1)+a(n-2)/(1/2)²` with `a(0)=1, a(1)=3`
-/

namespace A026581.P13601472336390332873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) + a (n - 2) / ((1 : ℚ) / 2) ^ 2

end

end A026581.P13601472336390332873

namespace A026581

/-- `a(n-1)+a(n-2)/(1/2)²` -/
def P13601472336390332873.Spec : Prop :=
  ∀ n, P13601472336390332873.a n = (A026581 n : ℚ)

end A026581

/-! ## A026581.P7669335223942728993

`4-(4*(1-a(n-2))-a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A026581.P7669335223942728993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  4 - (4 * (1 - a (n - 2)) - a (n - 1))

end

end A026581.P7669335223942728993

namespace A026581

/-- `4-(4*(1-a(n-2))-a(n-1))` -/
def P7669335223942728993.Spec : Prop :=
  ∀ n, P7669335223942728993.a n = A026581 n

end A026581

/-! ## A026581.P6308758598004287170

`a(n-2)+a(n-2)+a(n-2)+a(n-1)+a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A026581.P6308758598004287170
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) + (a (n - 2) + (a (n - 2) + (a (n - 1) + a (n - 2))))

end

end A026581.P6308758598004287170

namespace A026581

/-- `a(n-2)+a(n-2)+a(n-2)+a(n-1)+a(n-2)` -/
def P6308758598004287170.Spec : Prop :=
  ∀ n, (P6308758598004287170.a n : ℤ) = A026581 n

end A026581

/-! ## A026581.P2047187151407661376

`A277236(n)-a(n-1)` with `a(0)=1`
-/

namespace A026581.P2047187151407661376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A277236 n - a (n - 1)

end

end A026581.P2047187151407661376

namespace A026581

/-- `A277236(n)-a(n-1)` -/
def P2047187151407661376.Spec : Prop :=
  ∀ n, P2047187151407661376.a n = A026581 n

end A026581

/-! ## A026581.P15785467004622138913

`A259290(n-1)-a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A026581.P15785467004622138913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A259290 (n - 1) - a (n - 1)

end

end A026581.P15785467004622138913

namespace A026581

/-- `A259290(n-1)-a(n-1)` -/
def P15785467004622138913.Spec : Prop :=
  ∀ n, P15785467004622138913.a n = A026581 n

end A026581

/-! ## A026581.P7461791080225520051

`A183774(n)-A026597(n)`
-/

namespace A026581.P7461791080225520051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183774 n - A026597 n

end

end A026581.P7461791080225520051

namespace A026581

/-- `A183774(n)-A026597(n)` -/
def P7461791080225520051.Spec : Prop :=
  ∀ n, P7461791080225520051.a n = A026581 n

end A026581

/-! ## A026581.P14488939093988862076

`A344236(n+1)+A344236(n)`
-/

namespace A026581.P14488939093988862076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344236 (n + 1) + A344236 n

end

end A026581.P14488939093988862076

namespace A026581

/-- `A344236(n+1)+A344236(n)` -/
def P14488939093988862076.Spec : Prop :=
  ∀ n, P14488939093988862076.a n = A026581 n

end A026581

/-! ## A026581.P10371129675131227947

`A344261(n+1)+A344261(n)`
-/

namespace A026581.P10371129675131227947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344261 (n + 1) + A344261 n

end

end A026581.P10371129675131227947

namespace A026581

/-- `A344261(n+1)+A344261(n)` -/
def P10371129675131227947.Spec : Prop :=
  ∀ n, P10371129675131227947.a n = A026581 n

end A026581

/-! ## A026581.P1051664716974081113

`2*A026597(n)-A006131(n)`
-/

namespace A026581.P1051664716974081113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026597 n - A006131 n

end

end A026581.P1051664716974081113

namespace A026581

/-- `2*A026597(n)-A006131(n)` -/
def P1051664716974081113.Spec : Prop :=
  ∀ n, P1051664716974081113.a n = A026581 n

end A026581

/-! ## A026581.P16208966194562158112

`2*A026580(n)-A026569(n)`
-/

namespace A026581.P16208966194562158112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026580 n - A026569 n

end

end A026581.P16208966194562158112

namespace A026581

/-- `2*A026580(n)-A026569(n)` -/
def P16208966194562158112.Spec : Prop :=
  ∀ n, P16208966194562158112.a n = A026581 n

end A026581

/-! ## A026581.P17700447542628438820

`A026596(n+1)-A026585(n+1)/2`
-/

namespace A026581.P17700447542628438820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026596 (n + 1) : ℚ) - (A026585 (n + 1) : ℚ) / 2

end

end A026581.P17700447542628438820

namespace A026581

/-- `A026596(n+1)-A026585(n+1)/2` -/
def P17700447542628438820.Spec : Prop :=
  ∀ n, P17700447542628438820.a n = (A026581 n : ℚ)

end A026581

/-! ## A026581.P7409931012112483591

`A006131(n+1)-A052923(n+1)/2`
-/

namespace A026581.P7409931012112483591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006131 (n + 1) : ℚ) - (A052923 (n + 1) : ℚ) / 2

end

end A026581.P7409931012112483591

namespace A026581

/-- `A006131(n+1)-A052923(n+1)/2` -/
def P7409931012112483591.Spec : Prop :=
  ∀ n, P7409931012112483591.a n = (A026581 n : ℚ)

end A026581

/-! ## A026581.P9217645811393044662

`A006131(n)-(A052923(n)-A026597(n))`
-/

namespace A026581.P9217645811393044662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006131 n - (A052923 n - A026597 n)

end

end A026581.P9217645811393044662

namespace A026581

/-- `A006131(n)-(A052923(n)-A026597(n))` -/
def P9217645811393044662.Spec : Prop :=
  ∀ n, P9217645811393044662.a n = A026581 n

end A026581

/-! ## A026581.P13243928682896290014

`Δ[A026599(n)/2]`
-/

namespace A026581.P13243928682896290014
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026599 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026581.P13243928682896290014

namespace A026581

/-- `Δ[A026599(n)/2]` -/
def P13243928682896290014.Spec : Prop :=
  ∀ n, P13243928682896290014.a n = (A026581 n : ℚ)

end A026581

/-! ## A026581.P17310408381020786351

`A026597(n+1)/2`
-/

namespace A026581.P17310408381020786351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026597 (n + 1) : ℚ) / 2

end

end A026581.P17310408381020786351

namespace A026581

/-- `A026597(n+1)/2` -/
def P17310408381020786351.Spec : Prop :=
  ∀ n, P17310408381020786351.a n = (A026581 n : ℚ)

end A026581

/-! ## A026581.P189400613281756954

`abs(A122112(n+1)/2)`
-/

namespace A026581.P189400613281756954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A122112 (n + 1) : ℚ) / 2|

end

end A026581.P189400613281756954

namespace A026581

/-- `abs(A122112(n+1)/2)` -/
def P189400613281756954.Spec : Prop :=
  ∀ n, P189400613281756954.a n = (A026581 n : ℚ)

end A026581

/-! ## A026581.P719453170383942158

`(∑[A159612(n+1)]+1)/2`
-/

namespace A026581.P719453170383942158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159612 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / 2

end

end A026581.P719453170383942158

namespace A026581

/-- `(∑[A159612(n+1)]+1)/2` -/
def P719453170383942158.Spec : Prop :=
  ∀ n, P719453170383942158.a n = (A026581 n : ℚ)

end A026581

/-!
# A026582: a(n) = Sum{T(i,j)}, 0<=j<=i, 0<=i<=n, T given by A026568.

The programs for A026582, there is no canonical definition to state claims against.
-/

/-! ## A026582.P11003582687647751237

`∑[A026580(n)]`
-/

namespace A026582.P11003582687647751237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026580 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026582.P11003582687647751237

/-! ## A026582.P6592663914671834843

`∑[(A026581(n)+A026569(n))/2]`
-/

namespace A026582.P6592663914671834843
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026581 n + A026569 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026582.P6592663914671834843

/-! ## A026582.P1112758600448722643

`∑[(A026569(n)+A344236(n+1)+A344236(n))/2]`
-/

namespace A026582.P1112758600448722643
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026569 n + (A344236 (n + 1) + A344236 n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026582.P1112758600448722643

/-! ## A026582.P12946951849354700761

`∑[(A026569(n)+Δ[A026599(n)/2])/2]`
-/

namespace A026582.P12946951849354700761
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026599 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A026569 n : ℚ) + (f2 (n + 1) - f2 n)) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026582.P12946951849354700761

/-! ## A026582.P201722569050726666

`∑[(A026569(n)+A026597(n+1)/2)/2]`
-/

namespace A026582.P201722569050726666
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A026569 n : ℚ) + (A026597 (n + 1) : ℚ) / 2) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026582.P201722569050726666

/-! ## A026582.P10776684625127819809

`∑[(A026569(n)+abs(A122112(n+1)/2))/2]`
-/

namespace A026582.P10776684625127819809
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A026569 n : ℚ) + |(A122112 (n + 1) : ℚ) / 2|) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026582.P10776684625127819809

/-! ## A026582.P3421511248774341255

`∑[(A026569(n)+(∑[A159612(n+1)]+1)/2)/2]`
-/

namespace A026582.P3421511248774341255
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159612 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A026569 n : ℚ) + ((∑ j ∈ Finset.range (n + 1), f2 j + 1 : ℤ) : ℚ) / 2) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026582.P3421511248774341255

/-! ## A026582.P17976943660473492953

`∑[(A026569(n)+A027281(n)/(n+1))/2]`
-/

namespace A026582.P17976943660473492953
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A026569 n : ℚ) + (A027281 n : ℚ) / (n + 1 : ℚ)) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026582.P17976943660473492953

/-!
# A026583: a(n) = Sum{T(i,j)}, 0<=j<=i, 0<=i<=2n, T given by A026568.

The programs for A026583, the canonical program `A026583.P6073551460822357640` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026583 has offset 0).

The definition of A026583 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 245 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026583.P12607411497828744481

`ogf((1+2x)/(1-2x-3x^2+4x^3))`
-/

namespace A026583.P12607411497828744481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -2, -3, 4] n

end

end A026583.P12607411497828744481

namespace A026583

/-- `ogf((1+2x)/(1-2x-3x^2+4x^3))` -/
def P12607411497828744481.Spec : Prop :=
  ∀ n, P12607411497828744481.a n = A026583 n

end A026583

/-! ## A026583.P6073551460822357640

`∑[a(n-1)+4*a(n-2)]` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026583

/-- `∑[a(n-1)+4*a(n-2)]` -/
def P6073551460822357640.Spec : Prop :=
  ∀ n, (P6073551460822357640.a n : ℤ) = A026583 n

theorem P6073551460822357640.correct : P6073551460822357640.Spec := by
  intro n
  simp only [A026583]

end A026583

/-! ## A026583.P2027162694052137209

`∑[a(n-1)+lcm(4, a(n-2))]` with `a(0)=1, a(1)=3`
-/

namespace A026583.P2027162694052137209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 (n - 1) + Nat.lcm 4 (f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026583.P2027162694052137209

namespace A026583

/-- `∑[a(n-1)+lcm(4, a(n-2))]` -/
def P2027162694052137209.Spec : Prop :=
  ∀ n, (P2027162694052137209.a n : ℤ) = A026583 n

end A026583

/-! ## A026583.P10970387355368083760

`4*a(n-2)+a(n-1)+3` with `a(0)=1, a(1)=4`
-/

namespace A026583.P10970387355368083760
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  4 * a (n - 2) + (a (n - 1) + 3)

end

end A026583.P10970387355368083760

namespace A026583

/-- `4*a(n-2)+a(n-1)+3` -/
def P10970387355368083760.Spec : Prop :=
  ∀ n, (P10970387355368083760.a n : ℤ) = A026583 n

end A026583

/-! ## A026583.P15265185559993944547

`∑[a(n-1)+a(n-2)/(1/2)²]` with `a(0)=1, a(1)=3`
-/

namespace A026583.P15265185559993944547
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 (n - 1) + f1 (n - 2) / ((1 : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026583.P15265185559993944547

namespace A026583

/-- `∑[a(n-1)+a(n-2)/(1/2)²]` -/
def P15265185559993944547.Spec : Prop :=
  ∀ n, P15265185559993944547.a n = (A026583 n : ℚ)

end A026583

/-! ## A026583.P10585685542192449523

`∑[4-(4*(1-a(n-2))-a(n-1))]` with `a(0)=1, a(1)=3`
-/

namespace A026583.P10585685542192449523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  4 - (4 * (1 - f1 (n - 2)) - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026583.P10585685542192449523

namespace A026583

/-- `∑[4-(4*(1-a(n-2))-a(n-1))]` -/
def P10585685542192449523.Spec : Prop :=
  ∀ n, P10585685542192449523.a n = A026583 n

end A026583

/-! ## A026583.P17132451892664835831

`3-(a(n-2)-5*a(n-2)-a(n-1))` with `a(0)=1, a(1)=4`
-/

namespace A026583.P17132451892664835831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  3 - (a (n - 2) - 5 * a (n - 2) - a (n - 1))

end

end A026583.P17132451892664835831

namespace A026583

/-- `3-(a(n-2)-5*a(n-2)-a(n-1))` -/
def P17132451892664835831.Spec : Prop :=
  ∀ n, P17132451892664835831.a n = A026583 n

end A026583

/-! ## A026583.P1786580560778322029

`∑[A026581(n)]`
-/

namespace A026583.P1786580560778322029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026583.P1786580560778322029

namespace A026583

/-- `∑[A026581(n)]` -/
def P1786580560778322029.Spec : Prop :=
  ∀ n, P1786580560778322029.a n = A026583 n

end A026583

/-! ## A026583.P14276396109865976268

`A277236(n)+a(n-2)` with `a(0)=1, a(1)=4`
-/

namespace A026583.P14276396109865976268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  A277236 n + a (n - 2)

end

end A026583.P14276396109865976268

namespace A026583

/-- `A277236(n)+a(n-2)` -/
def P14276396109865976268.Spec : Prop :=
  ∀ n, P14276396109865976268.a n = A026583 n

end A026583

/-! ## A026583.P5704759439937941463

`∑[A344236(n+1)+A344236(n)]`
-/

namespace A026583.P5704759439937941463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344236 (n + 1) + A344236 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026583.P5704759439937941463

namespace A026583

/-- `∑[A344236(n+1)+A344236(n)]` -/
def P5704759439937941463.Spec : Prop :=
  ∀ n, P5704759439937941463.a n = A026583 n

end A026583

/-! ## A026583.P8531663627581549255

`∑[A344261(n+1)+A344261(n)]`
-/

namespace A026583.P8531663627581549255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344261 (n + 1) + A344261 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026583.P8531663627581549255

namespace A026583

/-- `∑[A344261(n+1)+A344261(n)]` -/
def P8531663627581549255.Spec : Prop :=
  ∀ n, P8531663627581549255.a n = A026583 n

end A026583

/-! ## A026583.P2800439886860983152

`∑[2*A026597(n)-A006131(n)]`
-/

namespace A026583.P2800439886860983152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026597 n - A006131 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026583.P2800439886860983152

namespace A026583

/-- `∑[2*A026597(n)-A006131(n)]` -/
def P2800439886860983152.Spec : Prop :=
  ∀ n, P2800439886860983152.a n = A026583 n

end A026583

/-! ## A026583.P12247802283796255279

`∑[Δ[A026599(n)]/2]`
-/

namespace A026583.P12247802283796255279
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026599 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026583.P12247802283796255279

namespace A026583

/-- `∑[Δ[A026599(n)]/2]` -/
def P12247802283796255279.Spec : Prop :=
  ∀ n, P12247802283796255279.a n = (A026583 n : ℚ)

end A026583

/-! ## A026583.P5972487565033569532

`floor(A026599(n+1)/2)`
-/

namespace A026583.P5972487565033569532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A026599 (n + 1) : ℚ) / 2⌋

end

end A026583.P5972487565033569532

namespace A026583

/-- `floor(A026599(n+1)/2)` -/
def P5972487565033569532.Spec : Prop :=
  ∀ n, P5972487565033569532.a n = A026583 n

end A026583

/-! ## A026583.P11095971002694036271

`∑[A026597(n+1)/2]`
-/

namespace A026583.P11095971002694036271
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026597 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026583.P11095971002694036271

namespace A026583

/-- `∑[A026597(n+1)/2]` -/
def P11095971002694036271.Spec : Prop :=
  ∀ n, P11095971002694036271.a n = (A026583 n : ℚ)

end A026583

/-! ## A026583.P9505548599758122543

`∑[abs(A122112(n+1)/2)]`
-/

namespace A026583.P9505548599758122543
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A122112 (n + 1) : ℚ) / 2|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026583.P9505548599758122543

namespace A026583

/-- `∑[abs(A122112(n+1)/2)]` -/
def P9505548599758122543.Spec : Prop :=
  ∀ n, P9505548599758122543.a n = (A026583 n : ℚ)

end A026583

/-! ## A026583.P9147457197768208825

`∑[3*A006131(n)]-A102446(n)`
-/

namespace A026583.P9147457197768208825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A006131 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A102446 n

end

end A026583.P9147457197768208825

namespace A026583

/-- `∑[3*A006131(n)]-A102446(n)` -/
def P9147457197768208825.Spec : Prop :=
  ∀ n, P9147457197768208825.a n = A026583 n

end A026583

/-! ## A026583.P15810508169412712507

`∑[A027281(n)/(n+1)]`
-/

namespace A026583.P15810508169412712507
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027281 n : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026583.P15810508169412712507

namespace A026583

/-- `∑[A027281(n)/(n+1)]` -/
def P15810508169412712507.Spec : Prop :=
  ∀ n, P15810508169412712507.a n = (A026583 n : ℚ)

end A026583

/-! ## A026583.P12384805455747377972

`∑[A208764(∑[n+1])]`
-/

namespace A026583.P12384805455747377972
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208764 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026583.P12384805455747377972

namespace A026583

/-- `∑[A208764(∑[n+1])]` -/
def P12384805455747377972.Spec : Prop :=
  ∀ n, P12384805455747377972.a n = A026583 n

end A026583

/-! ## A026583.P8926249544149573063

`∑[A208766(∑[n+1])]`
-/

namespace A026583.P8926249544149573063
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208766 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026583.P8926249544149573063

namespace A026583

/-- `∑[A208766(∑[n+1])]` -/
def P8926249544149573063.Spec : Prop :=
  ∀ n, P8926249544149573063.a n = A026583 n

end A026583

/-!
# A026584: Irregular triangular array T read by rows: T(i,0) = T(i,2i) = 1 for i >= 0; T(i,1) = T(i,2i-1) = floor(i/2) for i >= 1; and for i >= 2 and j = 2..2i-2, T(i,j) = T(i-1,j-2) + T(i-1,j-1) + T(i-1,j) if i+j is odd, and T(i,j) = T(i-1,j-2) + T(i-1,j) if i+j is even.

The programs for A026584, there is no canonical definition to state claims against.
-/

/-! ## A026584.P245418479496298946

`A134023(6^A026536(n))`
-/

namespace A026584.P245418479496298946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134023 (SequenceMachineLib.roundAway ((6 : ℚ) ^ (A026536 n : ℤ))).toNat

end

end A026584.P245418479496298946

/-! ## A026584.P15633392137550277454

`A000120(A035603(A026536(n)))`
-/

namespace A026584.P15633392137550277454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A035603 (A026536 n).toNat).toNat

end

end A026584.P15633392137550277454

/-! ## A026584.P15716282349476771994

`A001222(A000108(2*A026536(n)))`
-/

namespace A026584.P15716282349476771994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000108 (2 * A026536 n).toNat).toNat

end

end A026584.P15716282349476771994

/-! ## A026584.P6653477272660745259

`A352514(A329816(n))+A071542(A026536(n))`
-/

namespace A026584.P6653477272660745259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352514 (A329816 n).toNat + A071542 (A026536 n).toNat

end

end A026584.P6653477272660745259

/-! ## A026584.P5499955369411638061

`A037828(15^A026536(n))`
-/

namespace A026584.P5499955369411638061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037828 (SequenceMachineLib.roundAway ((15 : ℚ) ^ (A026536 n : ℤ))).toNat

end

end A026584.P5499955369411638061

/-!
# A026585: a(n) = T(n,n), T given by A026584. Also a(n) is the number of integer strings s(0), ..., s(n) counted by T, such that s(n)=0.

The programs for A026585, there is no canonical definition to state claims against.
-/

/-! ## A026585.P12290631387767027037

`2*A026596(n)-A026597(n)`
-/

namespace A026585.P12290631387767027037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026596 n - A026597 n

end

end A026585.P12290631387767027037

/-! ## A026585.P17931329369292058130

`A026584(∑[2*n]+1)`
-/

namespace A026585.P17931329369292058130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026584 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A026585.P17931329369292058130

/-! ## A026585.P14725197042608623029

`and(1, n)!*A026584(n²+1+n)`
-/

namespace A026585.P14725197042608623029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Nat.land 1 n) : ℤ) * A026584 (n ^ 2 + 1 + n)

end

end A026585.P14725197042608623029

/-! ## A026585.P6198435480415246701

`A026584(n²+1+n)+char[A036377(n)]`
-/

namespace A026585.P6198435480415246701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036377 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026584 (n ^ 2 + 1 + n) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A026585.P6198435480415246701

/-! ## A026585.P248168347334431114

`char[A061579(n)]*A026584(n²+1+n)`
-/

namespace A026585.P248168347334431114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A026584 (n ^ 2 + 1 + n)

end

end A026585.P248168347334431114

/-! ## A026585.P9277838117097308453

`char[A338246(n)]*A026584(n²+1+n)`
-/

namespace A026585.P9277838117097308453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338246 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A026584 (n ^ 2 + 1 + n)

end

end A026585.P9277838117097308453

/-! ## A026585.P6281029947558255479

`lcm(Δ[A028242(n)], A026584(n²+1+n))`
-/

namespace A026585.P6281029947558255479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A026584 (n ^ 2 + 1 + n))

end

end A026585.P6281029947558255479

/-! ## A026585.P16373589869277101398

`A026584(n²+1+n)/A007318(∑[n+1])`
-/

namespace A026585.P16373589869277101398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026584 (n ^ 2 + 1 + n) : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A026585.P16373589869277101398

/-! ## A026585.P14528977413817562622

`A026584(A002378(n)+1)%A000032(2*n)`
-/

namespace A026585.P14528977413817562622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026584 (A002378 n + 1).toNat) (A000032 (2 * n))

end

end A026585.P14528977413817562622

/-! ## A026585.P17073228589262197883

`A026584(or(1, A002378(n)))*A059841(2*n)`
-/

namespace A026585.P17073228589262197883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026584 (Int.lor 1 (A002378 n)).toNat * A059841 (2 * n)

end

end A026585.P17073228589262197883

/-! ## A026585.P6330084919532866695

`A026584(or(1, A002378(n)))%A000032(2*n)`
-/

namespace A026585.P6330084919532866695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026584 (Int.lor 1 (A002378 n)).toNat) (A000032 (2 * n))

end

end A026585.P6330084919532866695

/-! ## A026585.P17322996568915075374

`A026584(A002378(n)+1)^A070750(n+1)²`
-/

namespace A026585.P17322996568915075374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026584 (A002378 n + 1).toNat : ℚ) ^ (A070750 (n + 1) ^ 2 : ℤ)

end

end A026585.P17322996568915075374

/-! ## A026585.P18246684509092122876

`A007318(A000217(n))*A026584(n²+1+n)`
-/

namespace A026585.P18246684509092122876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A026584 (n ^ 2 + 1 + n)

end

end A026585.P18246684509092122876

/-! ## A026585.P4355641820863520070

`A026584(or(1, A002378(n)))^A070750(n+1)^2`
-/

namespace A026585.P4355641820863520070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026584 (Int.lor 1 (A002378 n)).toNat : ℚ) ^ (A070750 (n + 1) ^ 2 : ℤ)

end

end A026585.P4355641820863520070

/-! ## A026585.P17215724821253484537

`A001222(A008578(n+2))*A026584(n²+1+n)`
-/

namespace A026585.P17215724821253484537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008578 (n + 2)).toNat * A026584 (n ^ 2 + 1 + n)

end

end A026585.P17215724821253484537

/-! ## A026585.P9064136447520259980

`A007318(A000096(n))*A026584(A002378(n)+1)`
-/

namespace A026585.P9064136447520259980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000096 n).toNat * A026584 (A002378 n + 1).toNat

end

end A026585.P9064136447520259980

/-! ## A026585.P780052226418086296

`A001222(A053001(n+3))*A026584(A002378(n)+1)`
-/

namespace A026585.P780052226418086296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A053001 (n + 3)).toNat * A026584 (A002378 n + 1).toNat

end

end A026585.P780052226418086296

/-!
# A026586: Number of labeled essential directed acyclic graphs (DAGs).

The programs for A026586, there is no canonical definition to state claims against.
-/

/-! ## A026586.P13180458796527463122

`A028310(A190838(2*(n+2))%A246865(n))`
-/

namespace A026586.P13180458796527463122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A190838 (2 * (n + 2))) (A246865 n)).toNat

end

end A026586.P13180458796527463122

/-! ## A026586.P4532251026486454645

`A340976(A307228(n))+A004773(A208207(n))`
-/

namespace A026586.P4532251026486454645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340976 (A307228 n).toNat + A004773 (A208207 n).toNat

end

end A026586.P4532251026486454645

/-!
# A026587: a(n) = T(n, n-2), T given by A026584. Also a(n) = number of integer strings s(0),...,s(n) counted by T, such that s(n)=2.

The programs for A026587, there is no canonical definition to state claims against.
-/

/-! ## A026587.P8296758226810974478

`Δ[Δ[A307557(n+1)]-A307557(n+1)]`
-/

namespace A026587.P8296758226810974478
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307557 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A307557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026587.P8296758226810974478

/-! ## A026587.P13723716308857575011

`A026584((n+3)²-n)`
-/

namespace A026587.P13723716308857575011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026584 ((n + 3) ^ 2 - n)

end

end A026587.P13723716308857575011

/-! ## A026587.P15539807718410668946

`A351539(A000040(n+1))+A026584(A028387(n+1))`
-/

namespace A026587.P15539807718410668946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351539 (A000040 (n + 1)).toNat + A026584 (A028387 (n + 1)).toNat

end

end A026587.P15539807718410668946

/-! ## A026587.P5369216252398121424

`A001222(A154765(n+1))*A026584(A028387(n+1))`
-/

namespace A026587.P5369216252398121424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A154765 (n + 1)).toNat * A026584 (A028387 (n + 1)).toNat

end

end A026587.P5369216252398121424

/-! ## A026587.P8891276154494680072

`A001222(A351528(n+1))*A026584(A028387(n+1))`
-/

namespace A026587.P8891276154494680072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A351528 (n + 1)).toNat * A026584 (A028387 (n + 1)).toNat

end

end A026587.P8891276154494680072

/-! ## A026587.P13756758493923441016

`Δ[A245825(∑[A008574(n)])]`
-/

namespace A026587.P13756758493923441016
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245825 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026587.P13756758493923441016

/-!
# A026589: a(n) = T(n,n-4), T given by A026584. Also a(n) = number of integer strings s(0),...,s(n) counted by T, such that s(n)=4.

The programs for A026589, there is no canonical definition to state claims against.
-/

/-! ## A026589.P2042054881255774426

`Δ[A026572(n+4)-A026571(n+3)]`
-/

namespace A026589.P2042054881255774426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026572 (n + 4) - A026571 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026589.P2042054881255774426

/-! ## A026589.P13495477609863608464

`Δ[A026572(n+4)]-A026587(n+4)`
-/

namespace A026589.P13495477609863608464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026572 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026587 (n + 4)

end

end A026589.P13495477609863608464

/-! ## A026589.P14664986405229293594

`record[A026584(n²+5+n)]`
-/

namespace A026589.P14664986405229293594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026584 (n ^ 2 + 5 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026589.P14664986405229293594

/-! ## A026589.P11918114183409221274

`A026584((n+4)²+n+1)`
-/

namespace A026589.P11918114183409221274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026584 ((n + 4) ^ 2 + (n + 1))

end

end A026589.P11918114183409221274

/-! ## A026589.P17450076923849537084

`A245825(A099776(n+2)+1)`
-/

namespace A026589.P17450076923849537084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245825 (A099776 (n + 2) + 1).toNat

end

end A026589.P17450076923849537084

/-! ## A026589.P16823178530483686394

`A245825(A033537(n+1)+n+7)`
-/

namespace A026589.P16823178530483686394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245825 (A033537 (n + 1) + (n + 7 : ℤ)).toNat

end

end A026589.P16823178530483686394

/-!
# A026590: a(n) = T(2*n, n), where T is given by A026584.

The programs for A026590, there is no canonical definition to state claims against.
-/

/-! ## A026590.P2676167317234460590

`A026595(2*n)`
-/

namespace A026590.P2676167317234460590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026595 (2 * n)

end

end A026590.P2676167317234460590

/-! ## A026590.P15115838533725946554

`A026595(A005843(n))^floor(atan(n))`
-/

namespace A026590.P15115838533725946554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026595 (A005843 n).toNat : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ)

end

end A026590.P15115838533725946554

/-! ## A026590.P11767481860888535345

`lcm(A026595(A005843(n)), A130151(n))`
-/

namespace A026590.P11767481860888535345
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A026595 (A005843 n).toNat) (A130151 n)

end

end A026590.P11767481860888535345

/-! ## A026590.P16350636290100862539

`A026595(A005843(n))+val(A087289(n), 2)`
-/

namespace A026590.P16350636290100862539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026595 (A005843 n).toNat + (SequenceMachineLib.valuation (A087289 n).toNat 2 : ℤ)

end

end A026590.P16350636290100862539

/-! ## A026590.P8776010100494789556

`A105570(∏{p}[n+1, #])+A026595(A005843(n))`
-/

namespace A026590.P8776010100494789556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (∏ p ∈ Nat.primeFactors (f1 n), p) + A026595 (A005843 n).toNat

end

end A026590.P8776010100494789556

/-! ## A026590.P18126887277636274992

`A105570((n%2)^(n+1))+A026595(A005843(n))`
-/

namespace A026590.P18126887277636274992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 ((n % 2) ^ (n + 1)) + A026595 (A005843 n).toNat

end

end A026590.P18126887277636274992

/-! ## A026590.P1185735874742410677

`A026595(A005843(n))^(A006530(xor(n, n+1)+1)-1)`
-/

namespace A026590.P1185735874742410677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026595 (A005843 n).toNat : ℚ) ^ (A006530 (Nat.xor n (n + 1) + 1) - 1 : ℤ)

end

end A026590.P1185735874742410677

/-! ## A026590.P10877185053682952317

`A105570(A008578(n+1))+A026595(A005843(n))`
-/

namespace A026590.P10877185053682952317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (A008578 (n + 1)).toNat + A026595 (A005843 n).toNat

end

end A026590.P10877185053682952317

/-! ## A026590.P5011449866629046629

`A105570(A048161(n+1))+A026595(A005843(n))`
-/

namespace A026590.P5011449866629046629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (A048161 (n + 1)).toNat + A026595 (A005843 n).toNat

end

end A026590.P5011449866629046629

/-! ## A026590.P18173388262500902370

`A105570(A062324(n+1))+A026595(A005843(n))`
-/

namespace A026590.P18173388262500902370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (A062324 (n + 1)).toNat + A026595 (A005843 n).toNat

end

end A026590.P18173388262500902370

/-! ## A026590.P8560953147168126675

`A105570(A062326(n+1))+A026595(A005843(n))`
-/

namespace A026590.P8560953147168126675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (A062326 (n + 1)).toNat + A026595 (A005843 n).toNat

end

end A026590.P8560953147168126675

/-! ## A026590.P1019344307256417997

`A105570(A244452(n+1))+A026595(A005843(n))`
-/

namespace A026590.P1019344307256417997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (A244452 (n + 1)).toNat + A026595 (A005843 n).toNat

end

end A026590.P1019344307256417997

/-!
# A026591: a(n) = T(2*n, n-1), where T is given by A026584.

The programs for A026591, there is no canonical definition to state claims against.
-/

/-! ## A026591.P18199224382840785380

`A026584(∑[8*n+5])`
-/

namespace A026591.P18199224382840785380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026584 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A026591.P18199224382840785380

/-! ## A026591.P6670789703013447299

`A185014(3*n)+A026584(A074378(2*n+2))`
-/

namespace A026591.P6670789703013447299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185014 (3 * n) + A026584 (A074378 (2 * n + 2)).toNat

end

end A026591.P6670789703013447299

/-! ## A026591.P6804920855214912189

`A000142(C(2, n+2))*A026584(A103517(n)²+1+n)`
-/

namespace A026591.P6804920855214912189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (Nat.choose 2 (n + 2)) * A026584 (A103517 n ^ 2 + 1 + (n : ℤ)).toNat

end

end A026591.P6804920855214912189

/-! ## A026591.P2296802723388921621

`A000027(A026584(∑[a(n-1)+8]))` with `a(0)=5`
-/

namespace A026591.P2296802723388921621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A026584 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A026591.P2296802723388921621

/-!
# A026592: a(n) = T(2*n, n-2), where T is given by A026584.

The programs for A026592, there is no canonical definition to state claims against.
-/

/-! ## A026592.P609030951664792359

`A026584((2*n+5)²-n)`
-/

namespace A026592.P609030951664792359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026584 ((2 * n + 5) ^ 2 - n)

end

end A026592.P609030951664792359

/-! ## A026592.P13125233082347856546

`record[A026584(A059100(n)-A057979(n))]`
-/

namespace A026592.P13125233082347856546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026584 (A059100 n - A057979 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026592.P13125233082347856546

/-!
# A026593: a(n) = T(2*n-1, n-1), where T is given by A026584.

The programs for A026593, there is no canonical definition to state claims against.
-/

/-! ## A026593.P4367000393390161462

`A026595(Δ[n²])`
-/

namespace A026593.P4367000393390161462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026595 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A026593.P4367000393390161462

/-! ## A026593.P8601175247765463558

`val(4*n+2, 2)*A026595(2*n+1)`
-/

namespace A026593.P8601175247765463558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (4 * n + 2) 2 : ℤ) * A026595 (2 * n + 1)

end

end A026593.P8601175247765463558

/-! ## A026593.P2224334542075709740

`lcm(A026595(2*n+1), A130151(n))`
-/

namespace A026593.P2224334542075709740
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A026595 (2 * n + 1)) (A130151 n)

end

end A026593.P2224334542075709740

/-! ## A026593.P3291597479550917257

`A026595(2*n+1)+A000007(n+1)`
-/

namespace A026593.P3291597479550917257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026595 (2 * n + 1) + A000007 (n + 1)

end

end A026593.P3291597479550917257

/-! ## A026593.P4973017614270740602

`A026595(2*n+1)+A000038(n+1)`
-/

namespace A026593.P4973017614270740602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026595 (2 * n + 1) + A000038 (n + 1)

end

end A026593.P4973017614270740602

/-! ## A026593.P15929563045279090322

`A130151(n+1)²*A026595(2*n+1)`
-/

namespace A026593.P15929563045279090322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130151 (n + 1) ^ 2 * A026595 (2 * n + 1)

end

end A026593.P15929563045279090322

/-! ## A026593.P2689451605129008796

`A026595(2*n+1)+val(A087289(n+1), 2)`
-/

namespace A026593.P2689451605129008796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026595 (2 * n + 1) + (SequenceMachineLib.valuation (A087289 (n + 1)).toNat 2 : ℤ)

end

end A026593.P2689451605129008796

/-! ## A026593.P10477774708296981851

`floor(atan(A005843(n+1)))*A026595(2*n+1)`
-/

namespace A026593.P10477774708296981851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A005843 (n + 1) : ℝ)⌋ * A026595 (2 * n + 1)

end

end A026593.P10477774708296981851

/-! ## A026593.P18078609805076129369

`A105570(A008578(n+2))+A026595(2*n+1)`
-/

namespace A026593.P18078609805076129369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (A008578 (n + 2)).toNat + A026595 (2 * n + 1)

end

end A026593.P18078609805076129369

/-! ## A026593.P14428707292281300350

`A105570(A048161(n+2))+A026595(2*n+1)`
-/

namespace A026593.P14428707292281300350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (A048161 (n + 2)).toNat + A026595 (2 * n + 1)

end

end A026593.P14428707292281300350

/-! ## A026593.P11042554095132774523

`A105570(A062324(n+2))+A026595(2*n+1)`
-/

namespace A026593.P11042554095132774523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (A062324 (n + 2)).toNat + A026595 (2 * n + 1)

end

end A026593.P11042554095132774523

/-! ## A026593.P6826153826236635614

`A105570(A062326(n+2))+A026595(2*n+1)`
-/

namespace A026593.P6826153826236635614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (A062326 (n + 2)).toNat + A026595 (2 * n + 1)

end

end A026593.P6826153826236635614

/-! ## A026593.P11437836783248823751

`A026595(2*n+1)*A026595(A014963(2*(n+1)))`
-/

namespace A026593.P11437836783248823751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026595 (2 * n + 1) * A026595 (A014963 (2 * (n + 1))).toNat

end

end A026593.P11437836783248823751

/-! ## A026593.P10480870894007930579

`A026595(2*n+1)*A130151(2*n)*A130151(2*n)`
-/

namespace A026593.P10480870894007930579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026595 (2 * n + 1) * A130151 (2 * n) * A130151 (2 * n)

end

end A026593.P10480870894007930579

/-! ## A026593.P14235590262742483744

`A026595(2*n+1)+A271220(2*(n+1))-A271220(n+2)`
-/

namespace A026593.P14235590262742483744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026595 (2 * n + 1) + (A271220 (2 * (n + 1)) - A271220 (n + 2))

end

end A026593.P14235590262742483744

/-! ## A026593.P9617535354447187040

`A105570(A244452(n+2))+A026595(2*n+1)`
-/

namespace A026593.P9617535354447187040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (A244452 (n + 2)).toNat + A026595 (2 * n + 1)

end

end A026593.P9617535354447187040

/-!
# A026594: a(n) = T(2*n-1, n-2), where T is given by A026584.

The programs for A026594, there is no canonical definition to state claims against.
-/

/-! ## A026594.P7998793397701495831

`A026584((2*n+3)²+n+1)`
-/

namespace A026594.P7998793397701495831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026584 ((2 * n + 3) ^ 2 + (n + 1))

end

end A026594.P7998793397701495831

/-! ## A026594.P17924782251953195213

`round(sqrt(A026584((n+3+n)²+1+n)²+1))`
-/

namespace A026594.P17924782251953195213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A026584 ((n + 3 + n) ^ 2 + 1 + n) ^ 2 + 1 : ℝ))

end

end A026594.P17924782251953195213

/-! ## A026594.P6488265958285437106

`record[A026584(A057979(n)+n²)]`
-/

namespace A026594.P6488265958285437106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026584 (A057979 n + (n ^ 2 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026594.P6488265958285437106

/-! ## A026594.P4536507924262618156

`and(-1, A026584(A001107(n+2)))`
-/

namespace A026594.P4536507924262618156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A026584 (A001107 (n + 2)).toNat)

end

end A026594.P4536507924262618156

/-!
# A026595: a(n) = T(n, floor(n/2)), where T is given by A026584.

The programs for A026595, there is no canonical definition to state claims against.
-/

/-! ## A026595.P12431830274099408662

`A026584(A266883(n))`
-/

namespace A026595.P12431830274099408662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026584 (A266883 n).toNat

end

end A026595.P12431830274099408662

/-! ## A026595.P7937622300703120165

`A026584(A317186(n))`
-/

namespace A026595.P7937622300703120165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026584 (A317186 n).toNat

end

end A026595.P7937622300703120165

/-! ## A026595.P836845525576940153

`A026584(A035608(n)+1)`
-/

namespace A026595.P836845525576940153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026584 (A035608 n + 1).toNat

end

end A026595.P836845525576940153

/-! ## A026595.P16787102785813304294

`A026584(A074377(n)+1)`
-/

namespace A026595.P16787102785813304294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026584 (A074377 n + 1).toNat

end

end A026595.P16787102785813304294

/-! ## A026595.P2979073498788438076

`A026584(A074378(n)+1)`
-/

namespace A026595.P2979073498788438076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026584 (A074378 n + 1).toNat

end

end A026595.P2979073498788438076

/-! ## A026595.P9000812275003939331

`A026584(A174114(n+1))`
-/

namespace A026595.P9000812275003939331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026584 (A174114 (n + 1)).toNat

end

end A026595.P9000812275003939331

/-! ## A026595.P6396554524976151509

`A026584(A267682(n+1))`
-/

namespace A026595.P6396554524976151509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026584 (A267682 (n + 1)).toNat

end

end A026595.P6396554524976151509

/-! ## A026595.P14741446585872598312

`A026584(A008619(n)+n²)`
-/

namespace A026595.P14741446585872598312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026584 (A008619 n + (n ^ 2 : ℤ)).toNat

end

end A026595.P14741446585872598312

/-! ## A026595.P13209571289586529123

`A026584(A065033(n+1)+n²)`
-/

namespace A026595.P13209571289586529123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026584 (A065033 (n + 1) + (n ^ 2 : ℤ)).toNat

end

end A026595.P13209571289586529123

/-!
# A026596: Row sums of A026584.

The programs for A026596, there is no canonical definition to state claims against.
-/

/-! ## A026596.P14612794978039827362

`abs(Δ[A026598(abs(1-n))])`
-/

namespace A026596.P14612794978039827362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026598 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A026596.P14612794978039827362

/-! ## A026596.P15158392917957011214

`(A026597(n)+A026585(n))/2`
-/

namespace A026596.P15158392917957011214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026597 n + A026585 n : ℚ) / 2

end

end A026596.P15158392917957011214

/-! ## A026596.P4024271383268603549

`(A026585(n)+A102446(n)-A052923(n))/2`
-/

namespace A026596.P4024271383268603549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026585 n + (A102446 n - A052923 n) : ℚ) / 2

end

end A026596.P4024271383268603549

/-! ## A026596.P1336372533200169016

`(A026585(n)+gcd(A000038(n), A122112(n)))/2`
-/

namespace A026596.P1336372533200169016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026585 n + (Int.gcd (A000038 n) (A122112 n) : ℤ) : ℚ) / 2

end

end A026596.P1336372533200169016

/-! ## A026596.P10026583343386364948

`(A026585(n)+2*A006131(n)-A052923(n))/2`
-/

namespace A026596.P10026583343386364948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026585 n + (2 * A006131 n - A052923 n) : ℚ) / 2

end

end A026596.P10026583343386364948

/-!
# A026597: Expansion of (1+x)/(1-x-4*x^2).

The programs for A026597, the canonical program `A026597.P17476102495159940638` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026597 has offset 0).

The definition of A026597 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x)/(1-x-4x^2))` (program `A026597.P17476102495159940638`, by `A026597.P17476102495159940638.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A026597.P17476102495159940638

`ogf((1+x)/(1-x-4x^2))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026597

/-- `ogf((1+x)/(1-x-4x^2))` -/
def P17476102495159940638.Spec : Prop :=
  ∀ n, P17476102495159940638.a n = A026597 n

theorem P17476102495159940638.correct : P17476102495159940638.Spec := by
  intro n
  simp only [A026597]

end A026597

/-! ## A026597.P8903552607154285484

`a(n-1)+4*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A026597.P8903552607154285484
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + 4 * a (n - 2)

end

end A026597.P8903552607154285484

namespace A026597

/-- `a(n-1)+4*a(n-2)` -/
def P8903552607154285484.Spec : Prop :=
  ∀ n, (P8903552607154285484.a n : ℤ) = A026597 n

end A026597

/-! ## A026597.P8753506918293869589

`4*a(n-2)-floor(-a(n-1))` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A026597.P8753506918293869589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  4 * a (n - 2) - (-a (n - 1))

end

end A026597.P8753506918293869589

namespace A026597

/-- `4*a(n-2)-floor(-a(n-1))` -/
def P8753506918293869589.Spec : Prop :=
  ∀ n, P8753506918293869589.a n = A026597 n

end A026597

/-! ## A026597.P1613655979366618942

`abs(Δ[4*a(n-2)-a(n-1)])` with `a(0)=0, a(1)=1`
-/

namespace A026597.P1613655979366618942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  4 * f1 (n - 2) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A026597.P1613655979366618942

namespace A026597

/-- `abs(Δ[4*a(n-2)-a(n-1)])` -/
def P1613655979366618942.Spec : Prop :=
  ∀ n, P1613655979366618942.a n = A026597 n

end A026597

/-! ## A026597.P7676188663134199135

`a(n-1)+a(n-2)/(1/2)²` with `a(0)=1, a(1)=2`
-/

namespace A026597.P7676188663134199135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + a (n - 2) / ((1 : ℚ) / 2) ^ 2

end

end A026597.P7676188663134199135

namespace A026597

/-- `a(n-1)+a(n-2)/(1/2)²` -/
def P7676188663134199135.Spec : Prop :=
  ∀ n, P7676188663134199135.a n = (A026597 n : ℚ)

end A026597

/-! ## A026597.P3783070472520827114

`4-(4*(1-a(n-2))-a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A026597.P3783070472520827114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  4 - (4 * (1 - a (n - 2)) - a (n - 1))

end

end A026597.P3783070472520827114

namespace A026597

/-- `4-(4*(1-a(n-2))-a(n-1))` -/
def P3783070472520827114.Spec : Prop :=
  ∀ n, P3783070472520827114.a n = A026597 n

end A026597

/-! ## A026597.P7294805735746202454

`a(n-2)+a(n-2)+a(n-2)+a(n-1)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A026597.P7294805735746202454
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + (a (n - 2) + (a (n - 2) + (a (n - 1) + a (n - 2))))

end

end A026597.P7294805735746202454

namespace A026597

/-- `a(n-2)+a(n-2)+a(n-2)+a(n-1)+a(n-2)` -/
def P7294805735746202454.Spec : Prop :=
  ∀ n, (P7294805735746202454.a n : ℤ) = A026597 n

end A026597

/-! ## A026597.P16008218418393958189

`abs(A122112(n))`
-/

namespace A026597.P16008218418393958189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A122112 n|

end

end A026597.P16008218418393958189

namespace A026597

/-- `abs(A122112(n))` -/
def P16008218418393958189.Spec : Prop :=
  ∀ n, P16008218418393958189.a n = A026597 n

end A026597

/-! ## A026597.P5627147177381047379

`A159612(n)+a(n-1)` with `a(0)=1`
-/

namespace A026597.P5627147177381047379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A159612 n + a (n - 1)

end

end A026597.P5627147177381047379

namespace A026597

/-- `A159612(n)+a(n-1)` -/
def P5627147177381047379.Spec : Prop :=
  ∀ n, P5627147177381047379.a n = A026597 n

end A026597

/-! ## A026597.P8424486087329624243

`A277236(n)-(a(n-1)+a(n-1))` with `a(0)=1`
-/

namespace A026597.P8424486087329624243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A277236 n - (a (n - 1) + a (n - 1))

end

end A026597.P8424486087329624243

namespace A026597

/-- `A277236(n)-(a(n-1)+a(n-1))` -/
def P8424486087329624243.Spec : Prop :=
  ∀ n, P8424486087329624243.a n = A026597 n

end A026597

/-! ## A026597.P2748592398776511345

`A102446(n)-A052923(n)`
-/

namespace A026597.P2748592398776511345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102446 n - A052923 n

end

end A026597.P2748592398776511345

namespace A026597

/-- `A102446(n)-A052923(n)` -/
def P2748592398776511345.Spec : Prop :=
  ∀ n, P2748592398776511345.a n = A026597 n

end A026597

/-! ## A026597.P3293184526573858737

`A183774(n)-A026581(n)`
-/

namespace A026597.P3293184526573858737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183774 n - A026581 n

end

end A026597.P3293184526573858737

namespace A026597

/-- `A183774(n)-A026581(n)` -/
def P3293184526573858737.Spec : Prop :=
  ∀ n, P3293184526573858737.a n = A026597 n

end A026597

/-! ## A026597.P10071431707988502578

`A033999(n)*A122112(n)`
-/

namespace A026597.P10071431707988502578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A122112 n

end

end A026597.P10071431707988502578

namespace A026597

/-- `A033999(n)*A122112(n)` -/
def P10071431707988502578.Spec : Prop :=
  ∀ n, P10071431707988502578.a n = A026597 n

end A026597

/-! ## A026597.P13861831038193963136

`gcd(A000038(n), A122112(n))`
-/

namespace A026597.P13861831038193963136
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A122112 n)

end

end A026597.P13861831038193963136

namespace A026597

/-- `gcd(A000038(n), A122112(n))` -/
def P13861831038193963136.Spec : Prop :=
  ∀ n, (P13861831038193963136.a n : ℤ) = A026597 n

end A026597

/-! ## A026597.P12203044129130553846

`lcm(A000034(n), A122112(n))`
-/

namespace A026597.P12203044129130553846
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A122112 n)

end

end A026597.P12203044129130553846

namespace A026597

/-- `lcm(A000034(n), A122112(n))` -/
def P12203044129130553846.Spec : Prop :=
  ∀ n, (P12203044129130553846.a n : ℤ) = A026597 n

end A026597

/-! ## A026597.P12993126403552442076

`(A026581(n)+A006131(n))/2`
-/

namespace A026597.P12993126403552442076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026581 n + A006131 n : ℚ) / 2

end

end A026597.P12993126403552442076

namespace A026597

/-- `(A026581(n)+A006131(n))/2` -/
def P12993126403552442076.Spec : Prop :=
  ∀ n, P12993126403552442076.a n = (A026597 n : ℚ)

end A026597

/-! ## A026597.P12202944287609184242

`2*A026596(n)-A026585(n)`
-/

namespace A026597.P12202944287609184242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026596 n - A026585 n

end

end A026597.P12202944287609184242

namespace A026597

/-- `2*A026596(n)-A026585(n)` -/
def P12202944287609184242.Spec : Prop :=
  ∀ n, P12202944287609184242.a n = A026597 n

end A026597

/-! ## A026597.P16222555583155071082

`2*A006131(n)-A052923(n)`
-/

namespace A026597.P16222555583155071082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006131 n - A052923 n

end

end A026597.P16222555583155071082

namespace A026597

/-- `2*A006131(n)-A052923(n)` -/
def P16222555583155071082.Spec : Prop :=
  ∀ n, P16222555583155071082.a n = A026597 n

end A026597

/-! ## A026597.P14475142062577208086

`A122112(n)/A087960(2*n)`
-/

namespace A026597.P14475142062577208086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122112 n : ℚ) / (A087960 (2 * n) : ℚ)

end

end A026597.P14475142062577208086

namespace A026597

/-- `A122112(n)/A087960(2*n)` -/
def P14475142062577208086.Spec : Prop :=
  ∀ n, P14475142062577208086.a n = (A026597 n : ℚ)

end A026597

/-! ## A026597.P11913174086031301716

`A026581(n)+A052923(n)-A006131(n)`
-/

namespace A026597.P11913174086031301716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026581 n + (A052923 n - A006131 n)

end

end A026597.P11913174086031301716

namespace A026597

/-- `A026581(n)+A052923(n)-A006131(n)` -/
def P11913174086031301716.Spec : Prop :=
  ∀ n, P11913174086031301716.a n = A026597 n

end A026597

/-!
# A026598: a(n) = Sum_{i=0..n} Sum_{j=0..i} T(i,j), T given by A026584.

The programs for A026598, there is no canonical definition to state claims against.
-/

/-! ## A026598.P9028317421532134622

`∑[A026596(n)]`
-/

namespace A026598.P9028317421532134622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026596 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026598.P9028317421532134622

/-! ## A026598.P5435309951989373761

`(A026599(n)+A026569(n))/2`
-/

namespace A026598.P5435309951989373761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026599 n + A026569 n : ℚ) / 2

end

end A026598.P5435309951989373761

/-! ## A026598.P17710812482564420185

`(A026569(n)+∑[A026597(n)])/2`
-/

namespace A026598.P17710812482564420185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026597 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A026569 n + ∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A026598.P17710812482564420185

/-! ## A026598.P8649419170516320654

`∑[(A026597(n)+A026585(n))/2]`
-/

namespace A026598.P8649419170516320654
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026597 n + A026585 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026598.P8649419170516320654

/-! ## A026598.P1276181981673382053

`a(n-1)+A026596(n)%A001671(n)` with `a(0)=1, a(1)=2`
-/

namespace A026598.P1276181981673382053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + Int.tmod (A026596 n) (A001671 n)

end

end A026598.P1276181981673382053

/-! ## A026598.P6120855241627146497

`a(n-1)+and(1, A164291(n+2))*A026596(n)` with `a(0)=1, a(1)=2`
-/

namespace A026598.P6120855241627146497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + Int.land 1 (A164291 (n + 2)) * A026596 n

end

end A026598.P6120855241627146497

/-!
# A026599: a(n) = Sum_{j=0..2*i, i=0..n} A026584(i,j).

The programs for A026599, the canonical program `A026599.P2253976392170343130` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026599 has offset 0).

The definition of A026599 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A026599.P2253976392170343130

`2*a(n-1)+3*a(n-2)-4*a(n-3)` with `a(0)=1, a(1)=3, a(2)=9`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026599

/-- `2*a(n-1)+3*a(n-2)-4*a(n-3)` -/
def P2253976392170343130.Spec : Prop :=
  ∀ n, P2253976392170343130.a n = A026599 n

theorem P2253976392170343130.correct : P2253976392170343130.Spec := by
  intro n
  simp only [A026599]

end A026599

/-! ## A026599.P13102124775087964537

`ogf((1+x)/(1-2x-3x^2+4x^3))`
-/

namespace A026599.P13102124775087964537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -2, -3, 4] n

end

end A026599.P13102124775087964537

namespace A026599

/-- `ogf((1+x)/(1-2x-3x^2+4x^3))` -/
def P13102124775087964537.Spec : Prop :=
  ∀ n, P13102124775087964537.a n = A026599 n

end A026599

/-! ## A026599.P7704080277166253432

`∑[a(n-1)+4*a(n-2)]` with `a(0)=1, a(1)=2`
-/

namespace A026599.P7704080277166253432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 1) + 4 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026599.P7704080277166253432

namespace A026599

/-- `∑[a(n-1)+4*a(n-2)]` -/
def P7704080277166253432.Spec : Prop :=
  ∀ n, (P7704080277166253432.a n : ℤ) = A026599 n

end A026599

/-! ## A026599.P3552298728023459220

`4*a(n-2)+a(n-1)+2` with `a(0)=1, a(1)=3`
-/

namespace A026599.P3552298728023459220
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  4 * a (n - 2) + (a (n - 1) + 2)

end

end A026599.P3552298728023459220

namespace A026599

/-- `4*a(n-2)+a(n-1)+2` -/
def P3552298728023459220.Spec : Prop :=
  ∀ n, (P3552298728023459220.a n : ℤ) = A026599 n

end A026599

/-! ## A026599.P11790468734870087993

`lcm(4, a(n-2))+a(n-1)+2` with `a(0)=1, a(1)=3`
-/

namespace A026599.P11790468734870087993
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  Nat.lcm 4 (a (n - 2)) + (a (n - 1) + 2)

end

end A026599.P11790468734870087993

namespace A026599

/-- `lcm(4, a(n-2))+a(n-1)+2` -/
def P11790468734870087993.Spec : Prop :=
  ∀ n, (P11790468734870087993.a n : ℤ) = A026599 n

end A026599

/-! ## A026599.P10669012149089127894

`∑[abs(Δ[4*a(n-2)-a(n-1)])]` with `a(0)=0, a(1)=1`
-/

namespace A026599.P10669012149089127894
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  4 * f2 (n - 2) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026599.P10669012149089127894

namespace A026599

/-- `∑[abs(Δ[4*a(n-2)-a(n-1)])]` -/
def P10669012149089127894.Spec : Prop :=
  ∀ n, P10669012149089127894.a n = A026599 n

end A026599

/-! ## A026599.P16660675397019760548

`or(3, 4*a(n-2))-(1-a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A026599.P16660675397019760548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  Int.lor 3 (4 * a (n - 2)) - (1 - a (n - 1))

end

end A026599.P16660675397019760548

namespace A026599

/-- `or(3, 4*a(n-2))-(1-a(n-1))` -/
def P16660675397019760548.Spec : Prop :=
  ∀ n, P16660675397019760548.a n = A026599 n

end A026599

/-! ## A026599.P9455053779052130257

`xor(3, 4*a(n-2))-(1-a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A026599.P9455053779052130257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  Int.xor 3 (4 * a (n - 2)) - (1 - a (n - 1))

end

end A026599.P9455053779052130257

namespace A026599

/-- `xor(3, 4*a(n-2))-(1-a(n-1))` -/
def P9455053779052130257.Spec : Prop :=
  ∀ n, P9455053779052130257.a n = A026599 n

end A026599

/-! ## A026599.P959569136676598126

`∑[5*a(n-2)-(a(n-2)-a(n-1))]` with `a(0)=1, a(1)=2`
-/

namespace A026599.P959569136676598126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  5 * f1 (n - 2) - (f1 (n - 2) - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026599.P959569136676598126

namespace A026599

/-- `∑[5*a(n-2)-(a(n-2)-a(n-1))]` -/
def P959569136676598126.Spec : Prop :=
  ∀ n, P959569136676598126.a n = A026599 n

end A026599

/-! ## A026599.P9492325116659157722

`∑[A026597(n)]`
-/

namespace A026599.P9492325116659157722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026597 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026599.P9492325116659157722

namespace A026599

/-- `∑[A026597(n)]` -/
def P9492325116659157722.Spec : Prop :=
  ∀ n, P9492325116659157722.a n = A026599 n

end A026599

/-! ## A026599.P12432024189323406231

`∑[abs(A122112(n))]`
-/

namespace A026599.P12432024189323406231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A122112 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026599.P12432024189323406231

namespace A026599

/-- `∑[abs(A122112(n))]` -/
def P12432024189323406231.Spec : Prop :=
  ∀ n, P12432024189323406231.a n = A026599 n

end A026599

/-! ## A026599.P2829388826854833946

`∑[A102446(n)]-A006131(n)`
-/

namespace A026599.P2829388826854833946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102446 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A006131 n

end

end A026599.P2829388826854833946

namespace A026599

/-- `∑[A102446(n)]-A006131(n)` -/
def P2829388826854833946.Spec : Prop :=
  ∀ n, P2829388826854833946.a n = A026599 n

end A026599

/-! ## A026599.P16771896559206921409

`floor(A026581(n+1)/2)`
-/

namespace A026599.P16771896559206921409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A026581 (n + 1) : ℚ) / 2⌋

end

end A026599.P16771896559206921409

namespace A026599

/-- `floor(A026581(n+1)/2)` -/
def P16771896559206921409.Spec : Prop :=
  ∀ n, P16771896559206921409.a n = A026599 n

end A026599

/-! ## A026599.P9751728611071354340

`∑[A159612(n+2)/4]`
-/

namespace A026599.P9751728611071354340
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159612 (n + 2) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026599.P9751728611071354340

namespace A026599

/-- `∑[A159612(n+2)/4]` -/
def P9751728611071354340.Spec : Prop :=
  ∀ n, P9751728611071354340.a n = (A026599 n : ℚ)

end A026599

/-! ## A026599.P16147129470168253746

`∑[A027286(n)/(n+1)]`
-/

namespace A026599.P16147129470168253746
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027286 n : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026599.P16147129470168253746

namespace A026599

/-- `∑[A027286(n)/(n+1)]` -/
def P16147129470168253746.Spec : Prop :=
  ∀ n, P16147129470168253746.a n = (A026599 n : ℚ)

end A026599

/-! ## A026599.P2159137242322051785

`∑[A208763(∑[n+1])]`
-/

namespace A026599.P2159137242322051785
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208763 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026599.P2159137242322051785

namespace A026599

/-- `∑[A208763(∑[n+1])]` -/
def P2159137242322051785.Spec : Prop :=
  ∀ n, P2159137242322051785.a n = A026599 n

end A026599

/-! ## A026599.P14451134746339301202

`∑[A208765(∑[n+1])]`
-/

namespace A026599.P14451134746339301202
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208765 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026599.P14451134746339301202

namespace A026599

/-- `∑[A208765(∑[n+1])]` -/
def P14451134746339301202.Spec : Prop :=
  ∀ n, P14451134746339301202.a n = A026599 n

end A026599

/-! ## A026599.P13133095931582990378

`∑[A208915(∑[n+1])]`
-/

namespace A026599.P13133095931582990378
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208915 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026599.P13133095931582990378

namespace A026599

/-- `∑[A208915(∑[n+1])]` -/
def P13133095931582990378.Spec : Prop :=
  ∀ n, P13133095931582990378.a n = A026599 n

end A026599

/-! ## A026599.P15447410264902817425

`∑[A208919(∑[n+1])]`
-/

namespace A026599.P15447410264902817425
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208919 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026599.P15447410264902817425

namespace A026599

/-- `∑[A208919(∑[n+1])]` -/
def P15447410264902817425.Spec : Prop :=
  ∀ n, P15447410264902817425.a n = A026599 n

end A026599

