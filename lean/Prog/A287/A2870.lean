import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
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
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B012.C000
import Seq.B013.C000
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
# A287000: Positions of 1 in A286998.

The programs for A287000, there is no canonical definition to state claims against.
-/

/-! ## A287000.P23090490824164628

`eq[3, A305390(n)]+n+1`
-/

namespace A287000.P23090490824164628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305390 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + (n + 1)

end

end A287000.P23090490824164628

/-! ## A287000.P12218184624920887522

`record[xor(3, n)]-∑[A287112(n+1)]`
-/

namespace A287000.P12218184624920887522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A287000.P12218184624920887522

/-! ## A287000.P941779093073943517

`eq[1, A286998(n+1)]+1`
-/

namespace A287000.P941779093073943517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286998 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287000.P941779093073943517

/-! ## A287000.P14554470568437044093

`record[A286998(n+2)+A286998(n+2)+n]`
-/

namespace A287000.P14554470568437044093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286998 (n + 2) + (A286998 (n + 2) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287000.P14554470568437044093

/-! ## A287000.P789365679234902058

`A286999(A287175(n+1))-1`
-/

namespace A287000.P789365679234902058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286999 (A287175 (n + 1)).toNat - 1

end

end A287000.P789365679234902058

/-! ## A287000.P7246048480326193359

`eq[1, A286998(A028310(n))]`
-/

namespace A287000.P7246048480326193359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286998 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287000.P7246048480326193359

/-!
# A287001: Positions of 2 in A286998.

The programs for A287001, there is no canonical definition to state claims against.
-/

/-! ## A287001.P17486609589317547550

`A287113(n+1)+A316326(n+1)+A005843(n)`
-/

namespace A287001.P17486609589317547550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287113 (n + 1) + (A316326 (n + 1) + A005843 n)

end

end A287001.P17486609589317547550

/-! ## A287001.P5401836404152240474

`A140098(A287176(n+1))+n`
-/

namespace A287001.P5401836404152240474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140098 (A287176 (n + 1)).toNat + (n : ℤ)

end

end A287001.P5401836404152240474

/-! ## A287001.P17053296592706266198

`A287113(n+1)+eq[1, A305390(n)]`
-/

namespace A287001.P17053296592706266198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305390 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287113 (n + 1) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A287001.P17053296592706266198

/-! ## A287001.P1203793761005594269

`A287000(A287113(n+1))-2`
-/

namespace A287001.P1203793761005594269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287000 (A287113 (n + 1)).toNat - 2

end

end A287001.P1203793761005594269

/-! ## A287001.P6897196528220267393

`lt[1, A286998(n+1)]+1`
-/

namespace A287001.P6897196528220267393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286998 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A287001.P6897196528220267393

/-! ## A287001.P9219101260521390172

`A184820(A287176(n+1))`
-/

namespace A287001.P9219101260521390172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184820 (A287176 (n + 1)).toNat

end

end A287001.P9219101260521390172

/-! ## A287001.P15078665057715810904

`eq[2, A286998(A028310(n))]`
-/

namespace A287001.P15078665057715810904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286998 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287001.P15078665057715810904

/-! ## A287001.P5217507550496479258

`lt[A287176(n+2)+1-A287176(n+1), 4]+2`
-/

namespace A287001.P5217507550496479258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287176 (n + 2) + 1 - A287176 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A287001.P5217507550496479258

/-!
# A287002: Start with 0 and repeatedly substitute 0->01, 1->20, 2->1.

The programs for A287002, there is no canonical definition to state claims against.
-/

/-! ## A287002.P17156510808618576668

`A287234(A134496(n+1))`
-/

namespace A287002.P17156510808618576668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287234 (A134496 (n + 1)).toNat

end

end A287002.P17156510808618576668

/-! ## A287002.P11600958925169636297

`A287240(A040399((n-1)*7*n)/2+n)`
-/

namespace A287002.P11600958925169636297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287240 (SequenceMachineLib.roundAway ((A040399 (((n : ℤ) - 1) * (7 * n : ℤ)).toNat : ℚ) / 2 + (n : ℚ))).toNat

end

end A287002.P11600958925169636297

/-! ## A287002.P6976079128396300690

`A010873(lt[A010873(n), A357621(2*n+1)])`
-/

namespace A287002.P6976079128396300690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357621 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A287002.P6976079128396300690

/-! ## A287002.P14189452706786855393

`A119346(∑[A357181(4*n)])`
-/

namespace A287002.P14189452706786855393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357181 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119346 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A287002.P14189452706786855393

/-!
# A287003: Positions of 0 in A287002.

The programs for A287003, there is no canonical definition to state claims against.
-/

/-! ## A287003.P9533934330696182110

`eq[1, A287002(n+1)+1]+1`
-/

namespace A287003.P9533934330696182110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287002 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287003.P9533934330696182110

/-! ## A287003.P4942225758770931683

`record[n+1-A287002(n+2)²]+1`
-/

namespace A287003.P4942225758770931683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A287002 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A287003.P4942225758770931683

/-! ## A287003.P8402272955404125223

`record[n+1-A287002(n+1)*A287004(n+1)]`
-/

namespace A287003.P8402272955404125223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A287002 (n + 1) * A287004 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287003.P8402272955404125223

/-! ## A287003.P12589616554869219419

`record[n+1-A287002(n+1)*A287081(n+1)]`
-/

namespace A287003.P12589616554869219419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A287002 (n + 1) * A287081 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287003.P12589616554869219419

/-!
# A287004: Positions of 1 in A287002.

The programs for A287004, there is no canonical definition to state claims against.
-/

/-! ## A287004.P11984258918635812360

`eq[1, A287002(n+1)]+1`
-/

namespace A287004.P11984258918635812360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287002 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287004.P11984258918635812360

/-! ## A287004.P9766074951990944702

`eq[2, a(A287002(n))-2]` with `a(0)=6`
-/

namespace A287004.P9766074951990944702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f2 =>
  f2 (A287002 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287004.P9766074951990944702

/-! ## A287004.P2532198583928450401

`eq[1, A287002(A028310(n))]`
-/

namespace A287004.P2532198583928450401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287002 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287004.P2532198583928450401

/-! ## A287004.P4297069072412889620

`eq[1, A010051(a(A287002(n)))]` with `a(0)=6, a(1)=2`
-/

namespace A287004.P4297069072412889620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [6, 2] fun n f2 =>
  A010051 (f2 (A287002 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287004.P4297069072412889620

/-! ## A287004.P8727580665112845149

`eq[2, A038700(a(A287002(n)))]` with `a(0)=6, a(1)=1`
-/

namespace A287004.P8727580665112845149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [6, 1] fun n f2 =>
  A038700 (f2 (A287002 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287004.P8727580665112845149

/-!
# A287005: Number of connected dominating sets on the n-Moebius ladder.

The programs for A287005, there is no canonical definition to state claims against.
-/

/-! ## A287005.P16890816628122090408

`A286985(n+1)+4*n+2`
-/

namespace A287005.P16890816628122090408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286985 (n + 1) + (4 * n + 2 : ℤ)

end

end A287005.P16890816628122090408

/-!
# A287007: Number of simple (not necessarily connected) graphs on n vertices whose fractional chromatic number equals its (integer) chromatic number.

The programs for A287007, there is no canonical definition to state claims against.
-/

/-! ## A287007.P11548059738702061761

`A243252(n+1)+A287008(n+1)`
-/

namespace A287007.P11548059738702061761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243252 (n + 1) + A287008 (n + 1)

end

end A287007.P11548059738702061761

/-! ## A287007.P3690232000283169422

`A287008(n+1)+A243252(A077168(n))`
-/

namespace A287007.P3690232000283169422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287008 (n + 1) + A243252 (A077168 n).toNat

end

end A287007.P3690232000283169422

/-! ## A287007.P14858901099003315189

`A287008(n+1)+A243252(A331300(n))`
-/

namespace A287007.P14858901099003315189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287008 (n + 1) + A243252 (A331300 n).toNat

end

end A287007.P14858901099003315189

/-! ## A287007.P13229231842615201912

`A287008(n+1)+A243252(A348553(n))`
-/

namespace A287007.P13229231842615201912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287008 (n + 1) + A243252 (A348553 n).toNat

end

end A287007.P13229231842615201912

/-! ## A287007.P4780670998655341774

`A287008(n+1)+A001349(n+1)-A243251(n+1)`
-/

namespace A287007.P4780670998655341774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287008 (n + 1) + (A001349 (n + 1) - A243251 (n + 1))

end

end A287007.P4780670998655341774

/-!
# A287008: Number of disconnected simple graphs on n vertices whose fractional chromatic number equals its chromatic number.

The programs for A287008, there is no canonical definition to state claims against.
-/

/-! ## A287008.P11137945720757637134

`A287007(n+1)-A243252(n+1)`
-/

namespace A287008.P11137945720757637134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287007 (n + 1) - A243252 (n + 1)

end

end A287008.P11137945720757637134

/-! ## A287008.P449811576814700433

`A287007(n+1)-(A001349(n+1)-A243251(n+1))`
-/

namespace A287008.P449811576814700433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287007 (n + 1) - (A001349 (n + 1) - A243251 (n + 1))

end

end A287008.P449811576814700433

/-! ## A287008.P9149934768354275244

`A287007(n+1)-(A128528(n+2)-A243251(n+1))`
-/

namespace A287008.P9149934768354275244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287007 (n + 1) - (A128528 (n + 2) - A243251 (n + 1))

end

end A287008.P9149934768354275244

/-! ## A287008.P16696514863715901538

`A243251(n+1)+A287007(n+1)-A201922(A000124(n))`
-/

namespace A287008.P16696514863715901538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243251 (n + 1) + (A287007 (n + 1) - A201922 (A000124 n).toNat)

end

end A287008.P16696514863715901538

/-! ## A287008.P10204867046728236104

`A287007(n+1)-(A003049(n+1)+A158007(n+1)-A243251(n+1))`
-/

namespace A287008.P10204867046728236104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287007 (n + 1) - (A003049 (n + 1) + (A158007 (n + 1) - A243251 (n + 1)))

end

end A287008.P10204867046728236104

/-!
# A287009: Number of connected simple weakly perfect graphs on n vertices.

The programs for A287009, there is no canonical definition to state claims against.
-/

/-! ## A287009.P13130037792697758816

`A198634(n+1)-A287023(n+1)`
-/

namespace A287009.P13130037792697758816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198634 (n + 1) - A287023 (n + 1)

end

end A287009.P13130037792697758816

/-! ## A287009.P16456117999493700823

`A243252(n+1)-A336644(A000679(n))`
-/

namespace A287009.P16456117999493700823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243252 (n + 1) - A336644 (A000679 n).toNat

end

end A287009.P16456117999493700823

/-! ## A287009.P7717204856751904681

`A243252(n+1)-A326291(A017473(n))`
-/

namespace A287009.P7717204856751904681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243252 (n + 1) - A326291 (A017473 n).toNat

end

end A287009.P7717204856751904681

/-! ## A287009.P18063669485509287154

`A198634(n+1)-A287008(∑[A287022(n)])`
-/

namespace A287009.P18063669485509287154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287022 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198634 (n + 1) - A287008 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A287009.P18063669485509287154

/-!
# A287010: Triangle T(n,m): floor(log(A002110(n))/log(prime(m))).

The programs for A287010, there is no canonical definition to state claims against.
-/

/-! ## A287010.P3183977845633308561

`A001222(A268652(n)+A101695(n+1))`
-/

namespace A287010.P3183977845633308561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A268652 n + A101695 (n + 1)).toNat

end

end A287010.P3183977845633308561

/-! ## A287010.P15280215514779979929

`A238345(n+1)+A001221(A000226(n+3))`
-/

namespace A287010.P15280215514779979929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238345 (n + 1) + A001221 (A000226 (n + 3)).toNat

end

end A287010.P15280215514779979929

/-!
# A287012: Number of time intervals that can be measured off with n ropes and a lighter.

The programs for A287012, there is no canonical definition to state claims against.
-/

/-! ## A287012.P16675036023812387298

`∑[A184416(∑[A052980(n)])]`
-/

namespace A287012.P16675036023812387298
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052980 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184416 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287012.P16675036023812387298

/-! ## A287012.P1651244747451560622

`A066927(A122909(n+1))`
-/

namespace A287012.P1651244747451560622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066927 (A122909 (n + 1)).toNat

end

end A287012.P1651244747451560622

/-!
# A287014: Bell numbers written in base 2.

The programs for A287014, there is no canonical definition to state claims against.
-/

/-! ## A287014.P15156950273146127148

`A007088(A000110(n))`
-/

namespace A287014.P15156950273146127148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A000110 n).toNat

end

end A287014.P15156950273146127148

/-! ## A287014.P17712216068953046978

`A007088(A164863(n))`
-/

namespace A287014.P17712216068953046978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A164863 n).toNat

end

end A287014.P17712216068953046978

/-! ## A287014.P16021658886845980464

`A007088(A164864(n))`
-/

namespace A287014.P16021658886845980464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A164864 n).toNat

end

end A287014.P16021658886845980464

/-! ## A287014.P2179950326604575882

`A007088(A192126(n))`
-/

namespace A287014.P2179950326604575882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A192126 n).toNat

end

end A287014.P2179950326604575882

/-! ## A287014.P6774215433286488252

`A007088(A192127(n))`
-/

namespace A287014.P6774215433286488252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A192127 n).toNat

end

end A287014.P6774215433286488252

/-!
# A287015: Lucas numbers written in base 2.

The programs for A287015, the canonical program `A287015.P2593987207787593327` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287015 has offset 0).

The definition of A287015 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A287015.P2593987207787593327

`A007088(A000032(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A287015

/-- `A007088(A000032(n))` -/
def P2593987207787593327.Spec : Prop :=
  ∀ n, P2593987207787593327.a n = A287015 n

theorem P2593987207787593327.correct : P2593987207787593327.Spec := by
  intro n
  simp only [A287015]

end A287015

/-! ## A287015.P13393099801870664763

`A007088(Δ[Δ[round(ϕ^(n+2))]])`
-/

namespace A287015.P13393099801870664763
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ (n + 2))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (f1 (n + 1) - f1 n).toNat

end

end A287015.P13393099801870664763

namespace A287015

/-- `A007088(Δ[Δ[round(ϕ^(n+2))]])` -/
def P13393099801870664763.Spec : Prop :=
  ∀ n, P13393099801870664763.a n = A287015 n

end A287015

/-! ## A287015.P14252187201795114850

`and(-1, A007088(A329723(n+2)))`
-/

namespace A287015.P14252187201795114850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A007088 (A329723 (n + 2)).toNat)

end

end A287015.P14252187201795114850

namespace A287015

/-- `and(-1, A007088(A329723(n+2)))` -/
def P14252187201795114850.Spec : Prop :=
  ∀ n, P14252187201795114850.a n = A287015 n

end A287015

/-! ## A287015.P8484063919840737321

`and(-1, A007088(A000211(n)-2))`
-/

namespace A287015.P8484063919840737321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A007088 (A000211 n - 2).toNat)

end

end A287015.P8484063919840737321

namespace A287015

/-- `and(-1, A007088(A000211(n)-2))` -/
def P8484063919840737321.Spec : Prop :=
  ∀ n, P8484063919840737321.a n = A287015 n

end A287015

/-! ## A287015.P3270691645551219906

`and(-1, A007088(A127218(2*n)))`
-/

namespace A287015.P3270691645551219906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A007088 (A127218 (2 * n)).toNat)

end

end A287015.P3270691645551219906

namespace A287015

/-- `and(-1, A007088(A127218(2*n)))` -/
def P3270691645551219906.Spec : Prop :=
  ∀ n, P3270691645551219906.a n = A287015 n

end A287015

/-!
# A287016: a(n) = smallest number k such that A071904(n) + k^2 is a perfect square.

The programs for A287016, there is no canonical definition to state claims against.
-/

/-! ## A287016.P6608191769213641215

`A219695(A053726(n+1))`
-/

namespace A287016.P6608191769213641215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219695 (A053726 (n + 1)).toNat

end

end A287016.P6608191769213641215

/-! ## A287016.P3307178083957027509

`A219695(A104275(n+2))`
-/

namespace A287016.P3307178083957027509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219695 (A104275 (n + 2)).toNat

end

end A287016.P3307178083957027509

/-! ## A287016.P5163554744827833783

`A056737(A071904(n+1))/2`
-/

namespace A287016.P5163554744827833783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056737 (A071904 (n + 1)).toNat : ℚ) / 2

end

end A287016.P5163554744827833783

/-! ## A287016.P3013137992112007110

`A056737(sqrt(A062532(n+2)))/2`
-/

namespace A287016.P3013137992112007110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056737 (SequenceMachineLib.roundAway (Real.sqrt (A062532 (n + 2) : ℝ))).toNat : ℚ) / 2

end

end A287016.P3013137992112007110

/-! ## A287016.P13901862774752093315

`A056737(A007921(n+1)+2)/2`
-/

namespace A287016.P13901862774752093315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056737 (A007921 (n + 1) + 2).toNat : ℚ) / 2

end

end A287016.P13901862774752093315

/-! ## A287016.P12971823731979549306

`A056737(2*lt[1, A001222(2*n+1)]+1)/2`
-/

namespace A287016.P12971823731979549306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056737 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) : ℚ) / 2

end

end A287016.P12971823731979549306

/-! ## A287016.P7565034401140776173

`A056737(2*lt[A006530(2*n+1), n]+1)/2`
-/

namespace A287016.P7565034401140776173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056737 (2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) : ℚ) / 2

end

end A287016.P7565034401140776173

/-! ## A287016.P11260271238625164624

`A056737(2*lt[A020639(2*n+1), n]+1)/2`
-/

namespace A287016.P11260271238625164624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056737 (2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) : ℚ) / 2

end

end A287016.P11260271238625164624

/-! ## A287016.P11348537305795580526

`A056737(2*lt[A000010(2*n+1), 2*n]+1)/2`
-/

namespace A287016.P11348537305795580526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056737 (2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) : ℚ) / 2

end

end A287016.P11348537305795580526

/-!
# A287017: Positive numbers k such that (10^(k+2)*109 + 89)/9 is prime.

The programs for A287017, there is no canonical definition to state claims against.
-/

/-! ## A287017.P9570691637322209370

`A006530(xor((99-n)%90+1, A238697(n+4)))`
-/

namespace A287017.P9570691637322209370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.xor (Int.tmod (99 - (n : ℤ)) 90 + 1) (A238697 (n + 4))).toNat

end

end A287017.P9570691637322209370

/-!
# A287018: Primes that can be generated by the concatenation in base 2, in ascending order, of two consecutive integers read in base 10.

The programs for A287018, there is no canonical definition to state claims against.
-/

/-! ## A287018.P1796795097115979462

`∩[A087737(n+1), A226542(n+1)]`
-/

namespace A287018.P1796795097115979462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087737 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A287018.P1796795097115979462

/-! ## A287018.P4503903416491100219

`or(1, p?[A087737(n+1)])`
-/

namespace A287018.P4503903416491100219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087737 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A287018.P4503903416491100219

/-! ## A287018.P10709204055377290524

`∩[A066149(n+1), A087737(n+1)]`
-/

namespace A287018.P10709204055377290524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087737 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A287018.P10709204055377290524

/-! ## A287018.P8338634874251290998

`∩[A015919(n+1), A087737(n+1)]`
-/

namespace A287018.P8338634874251290998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087737 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A287018.P8338634874251290998

/-! ## A287018.P12908878011714878926

`∩[A027697(n+1), A087737(n+1)]`
-/

namespace A287018.P12908878011714878926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027697 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087737 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A287018.P12908878011714878926

/-! ## A287018.P8407537470602294264

`∩[A087737(n+1), A176620(n+1)]`
-/

namespace A287018.P8407537470602294264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087737 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176620 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A287018.P8407537470602294264

/-!
# A287019: Primes that can be generated by the concatenation in base 2, in descending order, of two consecutive integers read in base 10.

The programs for A287019, there is no canonical definition to state claims against.
-/

/-! ## A287019.P293557907491764278

`p?[A277351(n+1)%A097803(n)]`
-/

namespace A287019.P293557907491764278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277351 (n + 1)) (A097803 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A287019.P293557907491764278

/-! ## A287019.P9835244167751027872

`p?[A082662(n+1)+A053645(n+1)]`
-/

namespace A287019.P9835244167751027872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082662 (n + 1) + A053645 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A287019.P9835244167751027872

/-! ## A287019.P15934600157027219731

`p?[A116882(n+1)+A079905(n+1)]`
-/

namespace A287019.P15934600157027219731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116882 (n + 1) + A079905 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A287019.P15934600157027219731

/-! ## A287019.P11408193590802380236

`p?[(n+1)*A000051(A070939(n))-1]`
-/

namespace A287019.P11408193590802380236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000051 (A070939 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A287019.P11408193590802380236

/-! ## A287019.P5413480199592506564

`p?[((n+2)*A076877(n+1)-1)%A097803(n)]`
-/

namespace A287019.P5413480199592506564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 2 : ℤ) * A076877 (n + 1) - 1) (A097803 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A287019.P5413480199592506564

/-!
# A287020: Triangle read by rows: T(n,m) is the number of inequivalent n X m matrices under action of the Klein group, with one-fourth each of 1s, 2s, 3s and 4s (ordered occurrences rounded up/down if n*m != 0 mod 4).

The programs for A287020, there is no canonical definition to state claims against.
-/

/-! ## A287020.P7295833080821988775

`A098372(A000032(∑[n-∑[2^n]%(n+1)]))`
-/

namespace A287020.P7295833080821988775
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (((∑ j ∈ Finset.range (n + 1), f2 j) % (n + 1) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098372 (A000032 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A287020.P7295833080821988775

/-! ## A287020.P16104038809991040365

`A177991(∑[(∑{d}[n+1, #]-(n+1))!])`
-/

namespace A287020.P16104038809991040365
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) - (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177991 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A287020.P16104038809991040365

/-! ## A287020.P15645198107201800520

`A040546(A148988(n))`
-/

namespace A287020.P15645198107201800520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040546 (A148988 n).toNat

end

end A287020.P15645198107201800520

/-! ## A287020.P13355320173785408066

`A178646(A036591(n))`
-/

namespace A287020.P13355320173785408066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178646 (A036591 n).toNat

end

end A287020.P13355320173785408066

/-! ## A287020.P5490567123291025181

`A178646(A036592(n))`
-/

namespace A287020.P5490567123291025181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178646 (A036592 n).toNat

end

end A287020.P5490567123291025181

/-!
# A287021: Triangle read by rows: T(n,m) is the number of inequivalent n X m matrices under action of the Klein group, with one-fifth of 1s, 2s, 3s, 4s and 5s (ordered occurrences rounded up/down if n*m != 0 mod 5).

The programs for A287021, there is no canonical definition to state claims against.
-/

/-! ## A287021.P5525755732416824893

`A156253(C(A074291(n+1), A326547(2*n+3)))`
-/

namespace A287021.P5525755732416824893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156253 (Nat.choose (A074291 (n + 1)).toNat (A326547 (2 * n + 3)).toNat)

end

end A287021.P5525755732416824893

/-!
# A287023: Number of simple disconnected weakly perfect graphs on n vertices.

The programs for A287023, there is no canonical definition to state claims against.
-/

/-! ## A287023.P5861882264620291349

`A198634(n+1)-A287009(n+1)`
-/

namespace A287023.P5861882264620291349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198634 (n + 1) - A287009 (n + 1)

end

end A287023.P5861882264620291349

/-! ## A287023.P7568263112621699561

`A287008(n+1)+A258770(A287022(n))`
-/

namespace A287023.P7568263112621699561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287008 (n + 1) + A258770 (A287022 n).toNat

end

end A287023.P7568263112621699561

/-!
# A287024: Triangle read by rows: T(n,k) is the number of graphs with n vertices with vertex cover number k-1.

The programs for A287024, there is no canonical definition to state claims against.
-/

/-! ## A287024.P6487626919590561668

`A263341(∑[char[∑[n]]]²-n)`
-/

namespace A287024.P6487626919590561668
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263341 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A287024.P6487626919590561668

/-! ## A287024.P10547813148800428916

`or(char[1], A263341(A038722(n+1)))`
-/

namespace A287024.P10547813148800428916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A263341 (A038722 (n + 1)).toNat)

end

end A287024.P10547813148800428916

/-! ## A287024.P4478826742473851127

`or(char[1], A263341(A061579(n)+1))`
-/

namespace A287024.P4478826742473851127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A263341 (A061579 n + 1).toNat)

end

end A287024.P4478826742473851127

/-! ## A287024.P7277327178801790379

`or(char[10^n], A263341(A114327(n)+1+n))`
-/

namespace A287024.P7277327178801790379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A263341 (A114327 n + 1 + (n : ℤ)).toNat)

end

end A287024.P7277327178801790379

/-! ## A287024.P6647910450988699736

`or(char[10^n], A263341(A093995(n+1)-n))`
-/

namespace A287024.P6647910450988699736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A263341 (A093995 (n + 1) - (n : ℤ)).toNat)

end

end A287024.P6647910450988699736

/-! ## A287024.P14715464863817774041

`or(char[10^n], A263341(A002024(n+1)²-n))`
-/

namespace A287024.P14715464863817774041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A263341 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat)

end

end A287024.P14715464863817774041

/-! ## A287024.P7046751703254798967

`A263341(A038722(n+1))+A008683(8*n+4)`
-/

namespace A287024.P7046751703254798967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263341 (A038722 (n + 1)).toNat + A008683 (8 * n + 4)

end

end A287024.P7046751703254798967

/-! ## A287024.P3198736866538871287

`A263341(A061579(n)+1)^(A000040(n+1)%2)`
-/

namespace A287024.P3198736866538871287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263341 (A061579 n + 1).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A287024.P3198736866538871287

/-! ## A287024.P18366322383410678096

`A263341(A038722(n+1))^gcd(2, A000040(n+1))`
-/

namespace A287024.P18366322383410678096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263341 (A038722 (n + 1)).toNat ^ Int.gcd 2 (A000040 (n + 1))

end

end A287024.P18366322383410678096

/-! ## A287024.P5129154731913729640

`A115196(2-A003056(n)+n)`
-/

namespace A287024.P5129154731913729640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115196 (2 - A003056 n + (n : ℤ)).toNat

end

end A287024.P5129154731913729640

/-!
# A287025: Number of simple disconnected well-covered graphs on n nodes.

The programs for A287025, there is no canonical definition to state claims against.
-/

/-! ## A287025.P10684677860339380712

`A222626(n+1)-A222625(n+1)`
-/

namespace A287025.P10684677860339380712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222626 (n + 1) - A222625 (n + 1)

end

end A287025.P10684677860339380712

/-! ## A287025.P11353362647076950910

`and(-n, A319755(A198382(n+1)))`
-/

namespace A287025.P11353362647076950910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-(n : ℤ)) (A319755 (A198382 (n + 1)).toNat)

end

end A287025.P11353362647076950910

/-! ## A287025.P1060259018353381508

`A092659(A344740(n))+A029907(n)`
-/

namespace A287025.P1060259018353381508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092659 (A344740 n).toNat + A029907 n

end

end A287025.P1060259018353381508

/-! ## A287025.P1187050358621027842

`A341518(n+1)+A033183(A150494(n))`
-/

namespace A287025.P1187050358621027842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341518 (n + 1) + A033183 (A150494 n).toNat

end

end A287025.P1187050358621027842

/-!
# A287026: List of pairs of amicable numbers (m, n) with record value of m/n.

The programs for A287026, there is no canonical definition to state claims against.
-/

/-! ## A287026.P18237130627095289543

`A259180(∑[A258647(n)+1])`
-/

namespace A287026.P18237130627095289543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258647 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259180 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A287026.P18237130627095289543

/-! ## A287026.P11871489161651993852

`A259180(∑[A258649(n)+1])`
-/

namespace A287026.P11871489161651993852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258649 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259180 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A287026.P11871489161651993852

/-! ## A287026.P4964079793858341790

`A259933(∑[A258647(n)+1])`
-/

namespace A287026.P4964079793858341790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258647 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259933 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A287026.P4964079793858341790

/-! ## A287026.P465861384384863028

`A259933(∑[A258649(n)+1])`
-/

namespace A287026.P465861384384863028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258649 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259933 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A287026.P465861384384863028

/-!
# A287028: {0->101, 1->010}-transform of the Sturmian word A080764.

The programs for A287028, the canonical program `A287028.P2613971056566659341` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287028 has offset 1).

The definition of A287028 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A287028.P2613971056566659341

`1-A286990(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A287028

/-- `1-A286990(n+1)` -/
def P2613971056566659341.Spec : Prop :=
  ∀ n, P2613971056566659341.a n = A287028 (n + 1)

theorem P2613971056566659341.correct : P2613971056566659341.Spec := by
  intro n
  simp only [A287028, Nat.add_sub_cancel]

end A287028

/-! ## A287028.P11626478594330867117

`char[A187970(n+1)+n]`
-/

namespace A287028.P11626478594330867117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187970 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A287028.P11626478594330867117

namespace A287028

/-- `char[A187970(n+1)+n]` -/
def P11626478594330867117.Spec : Prop :=
  ∀ n, (P11626478594330867117.a n : ℤ) = A287028 (n + 1)

end A287028

/-! ## A287028.P15492555071995660260

`A286685(A133310(n))`
-/

namespace A287028.P15492555071995660260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286685 (A133310 n).toNat

end

end A287028.P15492555071995660260

namespace A287028

/-- `A286685(A133310(n))` -/
def P15492555071995660260.Spec : Prop :=
  ∀ n, P15492555071995660260.a n = A287028 (n + 1)

theorem P15492555071995660260.correct : P15492555071995660260.Spec := by
  intro n
  simp only [A287028, Nat.add_sub_cancel, A287028.P15492555071995660260.a, A287028.P2613971056566659341.a, A133310, A133310.P6888286461156837281.a, A286685, A286685.P666440380006877132.a, A286990, A286990.P5038761849871249141.a, A286688, A286688.P12697212265259802839.f1, A286688.P12697212265259802839.a, A286726, A286726.P13971804869111894166.a, A286907, A286907.P16898303085372787161.a, A080764, A080764.P14301132771463561424.a, A171588, A171588.P4513213665566256217.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A287028

/-! ## A287028.P16463182760756835907

`A286726(A131380(n+1))`
-/

namespace A287028.P16463182760756835907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286726 (A131380 (n + 1)).toNat

end

end A287028.P16463182760756835907

namespace A287028

/-- `A286726(A131380(n+1))` -/
def P16463182760756835907.Spec : Prop :=
  ∀ n, P16463182760756835907.a n = A287028 (n + 1)

end A287028

/-! ## A287028.P14126522485412133648

`A286993(A286990(n+1)+A056619(2*n+1))`
-/

namespace A287028.P14126522485412133648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286993 (A286990 (n + 1) + A056619 (2 * n + 1)).toNat

end

end A287028.P14126522485412133648

namespace A287028

/-- `A286993(A286990(n+1)+A056619(2*n+1))` -/
def P14126522485412133648.Spec : Prop :=
  ∀ n, P14126522485412133648.a n = A287028 (n + 1)

end A287028

/-! ## A287028.P672378997570521934

`A010051(A286990(n+1)+A001359(n+1))`
-/

namespace A287028.P672378997570521934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A286990 (n + 1) + A001359 (n + 1)).toNat

end

end A287028.P672378997570521934

namespace A287028

/-- `A010051(A286990(n+1)+A001359(n+1))` -/
def P672378997570521934.Spec : Prop :=
  ∀ n, P672378997570521934.a n = A287028 (n + 1)

end A287028

/-! ## A287028.P89731349783247273

`A286996(A286990(n+1)+A188383(n+1))`
-/

namespace A287028.P89731349783247273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286996 (A286990 (n + 1) + A188383 (n + 1)).toNat

end

end A287028.P89731349783247273

namespace A287028

/-- `A286996(A286990(n+1)+A188383(n+1))` -/
def P89731349783247273.Spec : Prop :=
  ∀ n, P89731349783247273.a n = A287028 (n + 1)

end A287028

/-! ## A287028.P4616088007939750229

`A049310(A286990(n+1)+A000096(2*(n+2)))`
-/

namespace A287028.P4616088007939750229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 (A286990 (n + 1) + A000096 (2 * (n + 2))).toNat

end

end A287028.P4616088007939750229

namespace A287028

/-- `A049310(A286990(n+1)+A000096(2*(n+2)))` -/
def P4616088007939750229.Spec : Prop :=
  ∀ n, P4616088007939750229.a n = A287028 (n + 1)

end A287028

/-!
# A287029: Row sums of A286800.

The programs for A287029, there is no canonical definition to state claims against.
-/

/-! ## A287029.P9474761007812761871

`Δ[A266195(A289126(n+1))]`
-/

namespace A287029.P9474761007812761871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266195 (A289126 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A287029.P9474761007812761871

/-!
# A287031: Column 1 of A286782.

The programs for A287031, there is no canonical definition to state claims against.
-/

/-! ## A287031.P15747953552534517620

`(2*(n+2)-1)*A286786(n+1)`
-/

namespace A287031.P15747953552534517620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 2) : ℤ) - 1) * A286786 (n + 1)

end

end A287031.P15747953552534517620

/-! ## A287031.P2049929449926045686

`A286782(∑[n+1]+2)`
-/

namespace A287031.P2049929449926045686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286782 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A287031.P2049929449926045686

/-! ## A287031.P16209210209168908388

`(2*n+3)*A286781(∑[n+1]+1)`
-/

namespace A287031.P16209210209168908388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) * A286781 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A287031.P16209210209168908388

/-! ## A287031.P6803865101775633451

`or(n%2, A286782(A000096(n)+3))`
-/

namespace A287031.P6803865101775633451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n % 2 : ℕ) : ℤ) (A286782 (A000096 n + 3).toNat)

end

end A287031.P6803865101775633451

/-! ## A287031.P5697832561997231932

`or(1, A286781(A000124(n+1)))*A005408(n+1)`
-/

namespace A287031.P5697832561997231932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A286781 (A000124 (n + 1)).toNat) * A005408 (n + 1)

end

end A287031.P5697832561997231932

/-!
# A287032: Column 2 of A286782.

The programs for A287032, there is no canonical definition to state claims against.
-/

/-! ## A287032.P5299737492403063278

`(2*(n+3)-1)*A286787(n+2)`
-/

namespace A287032.P5299737492403063278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 3) : ℤ) - 1) * A286787 (n + 2)

end

end A287032.P5299737492403063278

/-! ## A287032.P5846349392050413315

`A286782(∑[n+2]+4)`
-/

namespace A287032.P5846349392050413315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286782 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A287032.P5846349392050413315

/-! ## A287032.P5005223239522495835

`A286782(A167614(n+1))+C(n%2, 3)`
-/

namespace A287032.P5005223239522495835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286782 (A167614 (n + 1)).toNat + (Nat.choose (n % 2) 3 : ℤ)

end

end A287032.P5005223239522495835

/-! ## A287032.P17246758153793014747

`A286782(A167614(n+1))*A304042(n)`
-/

namespace A287032.P17246758153793014747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286782 (A167614 (n + 1)).toNat * A304042 n

end

end A287032.P17246758153793014747

/-! ## A287032.P18374184458491919984

`lcm(A020985(n), A286782(A167614(n+1)))`
-/

namespace A287032.P18374184458491919984
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A286782 (A167614 (n + 1)).toNat)

end

end A287032.P18374184458491919984

/-! ## A287032.P1942083401882457545

`or(A010052(n), A286782(A167614(n+1)))`
-/

namespace A287032.P1942083401882457545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010052 n) (A286782 (A167614 (n + 1)).toNat)

end

end A287032.P1942083401882457545

/-! ## A287032.P5122978815292413552

`∏[A087960(n)]²*A286782(A167614(n+1))`
-/

namespace A287032.P5122978815292413552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) ^ 2 * A286782 (A167614 (n + 1)).toNat

end

end A287032.P5122978815292413552

/-! ## A287032.P15398576560902152366

`A286782(A167614(n+1))%A287033(n+4)`
-/

namespace A287032.P15398576560902152366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286782 (A167614 (n + 1)).toNat) (A287033 (n + 4))

end

end A287032.P15398576560902152366

/-!
# A287033: Column 3 of A286782.

The programs for A287033, there is no canonical definition to state claims against.
-/

/-! ## A287033.P14424005657777806457

`(2*(n+4)-1)*A286788(n+3)`
-/

namespace A287033.P14424005657777806457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 4) : ℤ) - 1) * A286788 (n + 3)

end

end A287033.P14424005657777806457

/-! ## A287033.P14660626621884578714

`A286782(A052905(n)+9)`
-/

namespace A287033.P14660626621884578714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286782 (A052905 n + 9).toNat

end

end A287033.P14660626621884578714

/-! ## A287033.P8361717139910553234

`A286782(A055999(n)+10)`
-/

namespace A287033.P8361717139910553234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286782 (A055999 n + 10).toNat

end

end A287033.P8361717139910553234

/-! ## A287033.P6512876059022096581

`A286782(A167614(n+2)+1)`
-/

namespace A287033.P6512876059022096581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286782 (A167614 (n + 2) + 1).toNat

end

end A287033.P6512876059022096581

/-! ## A287033.P16479404962617895699

`A286782(A166136(n+2)-2)`
-/

namespace A287033.P16479404962617895699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286782 (A166136 (n + 2) - 2).toNat

end

end A287033.P16479404962617895699

/-! ## A287033.P482987206353254642

`A286782(A000096(n+2)+5)`
-/

namespace A287033.P482987206353254642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286782 (A000096 (n + 2) + 5).toNat

end

end A287033.P482987206353254642

/-! ## A287033.P5700687236837815119

`A286782(A166136(n+1)+1+n)`
-/

namespace A287033.P5700687236837815119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286782 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A287033.P5700687236837815119

/-!
# A287034: Column 4 of A286782.

The programs for A287034, there is no canonical definition to state claims against.
-/

/-! ## A287034.P15688051868425543039

`(2*(n+5)-1)*A286789(n+4)`
-/

namespace A287034.P15688051868425543039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 5) : ℤ) - 1) * A286789 (n + 4)

end

end A287034.P15688051868425543039

/-! ## A287034.P4977001715772791707

`A286782(A056000(n)+15)`
-/

namespace A287034.P4977001715772791707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286782 (A056000 n + 15).toNat

end

end A287034.P4977001715772791707

/-! ## A287034.P15048023889636087484

`A286782(eq[6, A131818(n+1)])`
-/

namespace A287034.P15048023889636087484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286782 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A287034.P15048023889636087484

/-!
# A287035: Column 5 of A286782.

The programs for A287035, there is no canonical definition to state claims against.
-/

/-! ## A287035.P1959289564814743173

`(2*(n+6)-1)*A286790(n+5)`
-/

namespace A287035.P1959289564814743173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 6) : ℤ) - 1) * A286790 (n + 5)

end

end A287035.P1959289564814743173

/-! ## A287035.P2681992153071231785

`A286782(A166136(n+4))`
-/

namespace A287035.P2681992153071231785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286782 (A166136 (n + 4)).toNat

end

end A287035.P2681992153071231785

/-! ## A287035.P2788425038283571590

`A286782(A077169(n+6)+1)`
-/

namespace A287035.P2788425038283571590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286782 (A077169 (n + 6) + 1).toNat

end

end A287035.P2788425038283571590

/-! ## A287035.P6195535146254698543

`A286782(A000217(n+5)+6)`
-/

namespace A287035.P6195535146254698543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286782 (A000217 (n + 5) + 6).toNat

end

end A287035.P6195535146254698543

/-! ## A287035.P14368098201109067910

`A286782(A016028(n+8)+3)`
-/

namespace A287035.P14368098201109067910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286782 (A016028 (n + 8) + 3).toNat

end

end A287035.P14368098201109067910

/-! ## A287035.P5592204072129589325

`A286782(A161680(n+6)+6)`
-/

namespace A287035.P5592204072129589325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286782 (A161680 (n + 6) + 6).toNat

end

end A287035.P5592204072129589325

/-! ## A287035.P13197226053911787986

`A286782(eq[7, A131818(n+1)])`
-/

namespace A287035.P13197226053911787986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286782 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A287035.P13197226053911787986

/-!
# A287036: Column 6 of A286782.

The programs for A287036, there is no canonical definition to state claims against.
-/

/-! ## A287036.P15138422302577209383

`(2*(n+7)-1)*A286791(n+6)`
-/

namespace A287036.P15138422302577209383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 7) : ℤ) - 1) * A286791 (n + 6)

end

end A287036.P15138422302577209383

/-! ## A287036.P13768373603647730021

`A286782(A302537(n)+27)`
-/

namespace A287036.P13768373603647730021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286782 (A302537 n + 27).toNat

end

end A287036.P13768373603647730021

/-! ## A287036.P16244106109297973980

`A286782(eq[11, A066657(n)])`
-/

namespace A287036.P16244106109297973980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286782 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A287036.P16244106109297973980

/-! ## A287036.P11443826928287613958

`A286782(A167499(n+5)+2)`
-/

namespace A287036.P11443826928287613958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286782 (A167499 (n + 5) + 2).toNat

end

end A287036.P11443826928287613958

/-! ## A287036.P4422645916466904742

`A286782(eq[8, A131818(n+1)])`
-/

namespace A287036.P4422645916466904742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286782 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A287036.P4422645916466904742

/-! ## A287036.P2330145165282066578

`A286782(A049347(3*n)+A000096(n+5)+7)`
-/

namespace A287036.P2330145165282066578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286782 (A049347 (3 * n) + (A000096 (n + 5) + 7)).toNat

end

end A287036.P2330145165282066578

/-!
# A287037: Column 7 of A286782.

The programs for A287037, there is no canonical definition to state claims against.
-/

/-! ## A287037.P3288926878933946106

`(2*(n+8)-1)*A286792(n+7)`
-/

namespace A287037.P3288926878933946106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 8) : ℤ) - 1) * A286792 (n + 7)

end

end A287037.P3288926878933946106

/-! ## A287037.P9560735818565856796

`A286782(eq[13, A066657(n)])`
-/

namespace A287037.P9560735818565856796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286782 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A287037.P9560735818565856796

/-! ## A287037.P13963288276991795889

`A286782(A052905(n+4)+13)`
-/

namespace A287037.P13963288276991795889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286782 (A052905 (n + 4) + 13).toNat

end

end A287037.P13963288276991795889

/-! ## A287037.P4651738275914682285

`A286782(eq[7, A002262(n)]+1)`
-/

namespace A287037.P4651738275914682285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286782 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A287037.P4651738275914682285

/-! ## A287037.P14017055203502559386

`A286782(eq[9, A131818(n+1)])`
-/

namespace A287037.P14017055203502559386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286782 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A287037.P14017055203502559386

/-! ## A287037.P14330770174629923463

`A286782(eq[7, A144328(n+1)]+1)`
-/

namespace A287037.P14330770174629923463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286782 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A287037.P14330770174629923463

/-!
# A287038: Column 8 of A286782.

The programs for A287038, there is no canonical definition to state claims against.
-/

/-! ## A287038.P5837050164238465729

`(2*(n+9)-1)*A286793(n+8)`
-/

namespace A287038.P5837050164238465729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 9) : ℤ) - 1) * A286793 (n + 8)

end

end A287038.P5837050164238465729

/-! ## A287038.P10187347621794513271

`A286782(eq[17, A066657(n)])`
-/

namespace A287038.P10187347621794513271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286782 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A287038.P10187347621794513271

/-! ## A287038.P5533748854249759351

`A286782(A133263(n+8)+7)`
-/

namespace A287038.P5533748854249759351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286782 (A133263 (n + 8) + 7).toNat

end

end A287038.P5533748854249759351

/-! ## A287038.P457872533481357184

`A286782(eq[10, A131818(n+1)])`
-/

namespace A287038.P457872533481357184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286782 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A287038.P457872533481357184

/-! ## A287038.P12649866802664298393

`A286782(A000217(n+9)-n)`
-/

namespace A287038.P12649866802664298393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286782 (A000217 (n + 9) - (n : ℤ)).toNat

end

end A287038.P12649866802664298393

/-!
# A287039: Row sums of A286782.

The programs for A287039, there is no canonical definition to state claims against.
-/

/-! ## A287039.P11012263379561691427

`(1-2*n)²*A000699(n)`
-/

namespace A287039.P11012263379561691427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (2 * n : ℤ)) ^ 2 * A000699 n

end

end A287039.P11012263379561691427

/-! ## A287039.P10013385961442818505

`abs(A060747(n)*A208975(n))`
-/

namespace A287039.P10013385961442818505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A060747 n * A208975 n|

end

end A287039.P10013385961442818505

/-! ## A287039.P149507566790246763

`abs(A165747(n)*A208975(n))`
-/

namespace A287039.P149507566790246763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A165747 n * A208975 n|

end

end A287039.P149507566790246763

/-! ## A287039.P17490299343218220361

`abs(A208975(n)*A286782(A000217(n)))`
-/

namespace A287039.P17490299343218220361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A208975 n * A286782 (A000217 n).toNat|

end

end A287039.P17490299343218220361

/-! ## A287039.P11607878021736271952

`abs(A208975(n)*A286783(A161680(n)))`
-/

namespace A287039.P11607878021736271952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A208975 n * A286783 (A161680 n).toNat|

end

end A287039.P11607878021736271952

/-! ## A287039.P5229639482352641864

`A000699(n)*A009001(A004273(n)²)`
-/

namespace A287039.P5229639482352641864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000699 n * A009001 (A004273 n ^ 2).toNat

end

end A287039.P5229639482352641864

/-! ## A287039.P6967677232768059016

`A000699(n)/(A033999(n)/A165747(n))²`
-/

namespace A287039.P6967677232768059016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000699 n : ℚ) / ((A033999 n : ℚ) / (A165747 n : ℚ)) ^ 2

end

end A287039.P6967677232768059016

/-!
# A287041: Column 1 of A286783.

The programs for A287041, there is no canonical definition to state claims against.
-/

/-! ## A287041.P9358523544337145105

`A286783(∑[n+1]+2)`
-/

namespace A287041.P9358523544337145105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286783 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A287041.P9358523544337145105

/-! ## A287041.P9204769344901326238

`lcm(A001492(n), A286783(A133263(n+1)))`
-/

namespace A287041.P9204769344901326238
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001492 n) (A286783 (A133263 (n + 1)).toNat)

end

end A287041.P9204769344901326238

/-! ## A287041.P17950414658016978675

`A001492(2*n)*A286783(A133263(n+1))`
-/

namespace A287041.P17950414658016978675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001492 (2 * n) * A286783 (A133263 (n + 1)).toNat

end

end A287041.P17950414658016978675

/-! ## A287041.P11943600566665522020

`A133819(ceil(n/(n+1))+1)*A286783(A133263(n+1))`
-/

namespace A287041.P11943600566665522020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133819 (⌈(n : ℚ) / (n + 1 : ℚ)⌉ + 1).toNat * A286783 (A133263 (n + 1)).toNat

end

end A287041.P11943600566665522020

/-! ## A287041.P17055036557269305509

`A001492(A025438(n))+A286783(A133263(n+1))-1`
-/

namespace A287041.P17055036557269305509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001492 (A025438 n).toNat + (A286783 (A133263 (n + 1)).toNat - 1)

end

end A287041.P17055036557269305509

/-! ## A287041.P7974716756736786199

`A001511(A182572(n+1))*A286783(A133263(n+1))`
-/

namespace A287041.P7974716756736786199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A182572 (n + 1)).toNat * A286783 (A133263 (n + 1)).toNat

end

end A287041.P7974716756736786199

/-! ## A287041.P3901776612620041765

`A001492(A001222(n+1))+A286783(A133263(n+1))-1`
-/

namespace A287041.P3901776612620041765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001492 (A001222 (n + 1)).toNat + (A286783 (A133263 (n + 1)).toNat - 1)

end

end A287041.P3901776612620041765

/-!
# A287042: Column 2 of A286783.

The programs for A287042, there is no canonical definition to state claims against.
-/

/-! ## A287042.P16716989494806326968

`A286783(∑[n+2]+4)`
-/

namespace A287042.P16716989494806326968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286783 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A287042.P16716989494806326968

/-! ## A287042.P12209053370125233834

`or(A000007(n), A286783(A167614(n+1)))`
-/

namespace A287042.P12209053370125233834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A286783 (A167614 (n + 1)).toNat)

end

end A287042.P12209053370125233834

/-! ## A287042.P3278612565660371183

`or(A000038(n), A286783(A167614(n+1)))`
-/

namespace A287042.P3278612565660371183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A286783 (A167614 (n + 1)).toNat)

end

end A287042.P3278612565660371183

/-! ## A287042.P238307069291155062

`or(A003982(n), A286783(A167614(n+1)))`
-/

namespace A287042.P238307069291155062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003982 n) (A286783 (A167614 (n + 1)).toNat)

end

end A287042.P238307069291155062

/-! ## A287042.P11166884240517322642

`A286783(A167614(n+1))+char[1]*A336356(n+4)`
-/

namespace A287042.P11166884240517322642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286783 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A336356 (n + 4)

end

end A287042.P11166884240517322642

/-! ## A287042.P10637905798721278389

`A286783(A167614(n+1))%A287043(n+4)`
-/

namespace A287042.P10637905798721278389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286783 (A167614 (n + 1)).toNat) (A287043 (n + 4))

end

end A287042.P10637905798721278389

/-!
# A287043: Column 3 of A286783.

The programs for A287043, there is no canonical definition to state claims against.
-/

/-! ## A287043.P16777486285404250300

`A286783(A052905(n)+9)`
-/

namespace A287043.P16777486285404250300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286783 (A052905 n + 9).toNat

end

end A287043.P16777486285404250300

/-! ## A287043.P10333927048355220608

`A286783(A055999(n)+10)`
-/

namespace A287043.P10333927048355220608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286783 (A055999 n + 10).toNat

end

end A287043.P10333927048355220608

/-! ## A287043.P15026213232909578304

`A286783(A167614(n+2)+1)`
-/

namespace A287043.P15026213232909578304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286783 (A167614 (n + 2) + 1).toNat

end

end A287043.P15026213232909578304

/-! ## A287043.P16521052680615635706

`A286783(A000096(n+2)+5)`
-/

namespace A287043.P16521052680615635706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286783 (A000096 (n + 2) + 5).toNat

end

end A287043.P16521052680615635706

/-! ## A287043.P13276123015863279755

`A286783(eq[5, A131818(n+1)])`
-/

namespace A287043.P13276123015863279755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286783 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A287043.P13276123015863279755

/-!
# A287044: Column 4 of A286783.

The programs for A287044, there is no canonical definition to state claims against.
-/

/-! ## A287044.P14274724660683745836

`A286783(A167499(n+3))`
-/

namespace A287044.P14274724660683745836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286783 (A167499 (n + 3)).toNat

end

end A287044.P14274724660683745836

/-! ## A287044.P13398470829867312191

`A286783(A155212(n)+13)`
-/

namespace A287044.P13398470829867312191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286783 (A155212 n + 13).toNat

end

end A287044.P13398470829867312191

/-! ## A287044.P15432981731842023236

`A286783(A056000(n)+15)`
-/

namespace A287044.P15432981731842023236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286783 (A056000 n + 15).toNat

end

end A287044.P15432981731842023236

/-! ## A287044.P3976820151144464341

`A286783(A052905(n+1)+10)`
-/

namespace A287044.P3976820151144464341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286783 (A052905 (n + 1) + 10).toNat

end

end A287044.P3976820151144464341

/-! ## A287044.P1861465406320660718

`A286783(eq[6, A131818(n+1)])`
-/

namespace A287044.P1861465406320660718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286783 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A287044.P1861465406320660718

/-!
# A287045: a(n) is the number of size n affine closed terms of variable size 0.

The programs for A287045, there is no canonical definition to state claims against.
-/

/-! ## A287045.P16969894182244360806

`A287040(∑[n]+n)`
-/

namespace A287045.P16969894182244360806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287040 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A287045.P16969894182244360806

/-! ## A287045.P538243452300433183

`record[A287040(gcd(n, A025581(n)))]`
-/

namespace A287045.P538243452300433183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287040 (Int.gcd (n : ℤ) (A025581 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287045.P538243452300433183

/-! ## A287045.P2271185387654099226

`record[A287040(n)/A033185(n+1)]`
-/

namespace A287045.P2271185387654099226
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287040 n : ℚ) / (A033185 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287045.P2271185387654099226

/-! ## A287045.P14566020886851625775

`A178334(n)*A287040(A000096(n))`
-/

namespace A287045.P14566020886851625775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A287040 (A000096 n).toNat

end

end A287045.P14566020886851625775

/-! ## A287045.P13363507474449488962

`A287040(A000096(n))+A000007(n+1)`
-/

namespace A287045.P13363507474449488962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287040 (A000096 n).toNat + A000007 (n + 1)

end

end A287045.P13363507474449488962

/-! ## A287045.P4441865673147741983

`A287040(A000096(n))+A000038(n+1)`
-/

namespace A287045.P4441865673147741983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287040 (A000096 n).toNat + A000038 (n + 1)

end

end A287045.P4441865673147741983

/-! ## A287045.P8502463393099794176

`record[(1-A025581(n))*A287040(n)]`
-/

namespace A287045.P8502463393099794176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A025581 n) * A287040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287045.P8502463393099794176

/-!
# A287046: a(n) is the number of rooted maps with n edges and 6 faces on an orientable surface of genus 1.

The programs for A287046, there is no canonical definition to state claims against.
-/

/-! ## A287046.P346873033614716082

`A269921(A155212(n+1)+15)`
-/

namespace A287046.P346873033614716082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269921 (A155212 (n + 1) + 15).toNat

end

end A287046.P346873033614716082

/-! ## A287046.P3533045907160863132

`A269921(A000096(n+5)-3)`
-/

namespace A287046.P3533045907160863132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269921 (A000096 (n + 5) - 3).toNat

end

end A287046.P3533045907160863132

/-! ## A287046.P12106458672812150031

`A269921(eq[8, A106240(n+1)])`
-/

namespace A287046.P12106458672812150031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106240 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269921 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A287046.P12106458672812150031

/-! ## A287046.P10478503503950828379

`A269921(eq[11, A099375(n)]+2)`
-/

namespace A287046.P10478503503950828379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269921 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A287046.P10478503503950828379

/-! ## A287046.P15439559206447477630

`A269921(Δ[A026054(n+3)]+2)`
-/

namespace A287046.P15439559206447477630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269921 (f1 (n + 1) - f1 n + 2).toNat

end

end A287046.P15439559206447477630

/-!
# A287047: a(n) is the number of rooted maps with n edges and 7 faces on an orientable surface of genus 1.

The programs for A287047, there is no canonical definition to state claims against.
-/

/-! ## A287047.P11624939184758387269

`A269921(A302537(n)+28)`
-/

namespace A287047.P11624939184758387269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269921 (A302537 n + 28).toNat

end

end A287047.P11624939184758387269

/-! ## A287047.P17420110056770813625

`A269921(A052905(n+4))`
-/

namespace A287047.P17420110056770813625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269921 (A052905 (n + 4)).toNat

end

end A287047.P17420110056770813625

/-! ## A287047.P16394476932729399828

`A269921(eq[4, A092921(n)])`
-/

namespace A287047.P16394476932729399828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269921 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A287047.P16394476932729399828

/-! ## A287047.P9106523369648110746

`A269921(A055999(n+4)+1)`
-/

namespace A287047.P9106523369648110746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269921 (A055999 (n + 4) + 1).toNat

end

end A287047.P9106523369648110746

/-! ## A287047.P7845373782988812929

`A269921(A000096(n+5)+n+3)`
-/

namespace A287047.P7845373782988812929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269921 (A000096 (n + 5) + (n + 3 : ℤ)).toNat

end

end A287047.P7845373782988812929

/-!
# A287048: a(n) is the number of rooted maps with n edges and 8 faces on an orientable surface of genus 1.

The programs for A287048, there is no canonical definition to state claims against.
-/

/-! ## A287048.P2241634528167239850

`A269921(eq[9, A131818(n+1)]+1)`
-/

namespace A287048.P2241634528167239850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269921 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A287048.P2241634528167239850

/-! ## A287048.P5173070056304318274

`A269921(Δ[A026054(n+5)])`
-/

namespace A287048.P5173070056304318274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269921 (f1 (n + 1) - f1 n).toNat

end

end A287048.P5173070056304318274

/-! ## A287048.P5342174693486320983

`A269921(A155212(n+4)+2)`
-/

namespace A287048.P5342174693486320983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269921 (A155212 (n + 4) + 2).toNat

end

end A287048.P5342174693486320983

/-! ## A287048.P1054806552808671346

`A269921(A302537(n+2)+14)`
-/

namespace A287048.P1054806552808671346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269921 (A302537 (n + 2) + 14).toNat

end

end A287048.P1054806552808671346

/-! ## A287048.P8689312835545359232

`A269921(A000096(n+6)+n+3)`
-/

namespace A287048.P8689312835545359232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269921 (A000096 (n + 6) + (n + 3 : ℤ)).toNat

end

end A287048.P8689312835545359232

/-!
# A287051: a(0) = 0, a(1) = 1; a(2*n) = gpf(a(n)), a(2*n+1) = a(n) + a(n+1), where gpf(a(n)) is the greatest prime dividing a(n) for a(n) >= 2 and 1 if a(n) = 1 (A006530).

The programs for A287051, there is no canonical definition to state claims against.
-/

/-! ## A287051.P2015700307396391810

`A001222(A260443(n)%A002445(3*(n+1)))`
-/

namespace A287051.P2015700307396391810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.tmod (A260443 n) (A002445 (3 * (n + 1)))).toNat

end

end A287051.P2015700307396391810

/-! ## A287051.P4008274807991832390

`A002487(n)/A227141(A122288(3*n+2))`
-/

namespace A287051.P4008274807991832390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002487 n : ℚ) / (A227141 (A122288 (3 * n + 2)).toNat : ℚ)

end

end A287051.P4008274807991832390

/-! ## A287051.P14070870114849735972

`A002487(n)/A007318(A002487(A166638(n+1)))`
-/

namespace A287051.P14070870114849735972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002487 n : ℚ) / (A007318 (A002487 (A166638 (n + 1)).toNat).toNat : ℚ)

end

end A287051.P14070870114849735972

/-! ## A287051.P12983616738630853656

`A002487(n)-A010893(A029618(n))`
-/

namespace A287051.P12983616738630853656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 n - A010893 ((A029618 n).toNat + 13)

end

end A287051.P12983616738630853656

/-! ## A287051.P966280890497394448

`A002487(n)-A037912(A027642(n))`
-/

namespace A287051.P966280890497394448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 n - A037912 (A027642 n).toNat

end

end A287051.P966280890497394448

/-!
# A287052: Number of perfect matchings in the graph P_2 X P_8 X P_n.

The programs for A287052, there is no canonical definition to state claims against.
-/

/-! ## A287052.P17015421702445743437

`A181206(A055640(n)*A167487(n+5)+1)`
-/

namespace A287052.P17015421702445743437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181206 (A055640 n * A167487 (n + 5) + 1).toNat

end

end A287052.P17015421702445743437

/-!
# A287054: Number of perfect matchings in the graph P_2 X P_10 X P_n.

The programs for A287054, there is no canonical definition to state claims against.
-/

/-! ## A287054.P2754456633160777728

`A181206((A161680(n+10)-9)%A249730(n+5))`
-/

namespace A287054.P2754456633160777728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181206 (Int.tmod (A161680 (n + 10) - 9) (A249730 (n + 5))).toNat

end

end A287054.P2754456633160777728

/-!
# A287055: Numbers n such that uphi(n) = uphi(n+1), where uphi(n) is the unitary totient function (A047994).

The programs for A287055, there is no canonical definition to state claims against.
-/

/-! ## A287055.P2002968361508206105

`eq[A047994(n+1), A047994(n+2)]+1`
-/

namespace A287055.P2002968361508206105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A287055.P2002968361508206105

/-! ## A287055.P15677559528590634112

`A096457(A326403(n+1))`
-/

namespace A287055.P15677559528590634112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096457 (A326403 (n + 1)).toNat

end

end A287055.P15677559528590634112

/-! ## A287055.P13995539469126570176

`A326403(A004902(n+2))`
-/

namespace A287055.P13995539469126570176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326403 (A004902 (n + 2)).toNat

end

end A287055.P13995539469126570176

/-!
# A287057: a(n) = 2*n^2 + n - (n+1) mod 2.

The programs for A287057, the canonical program `A287057.P14987608874529752472` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287057 has offset 1).

The definition of A287057 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(n+1)²+n+1-(n+2)%2` (program `A287057.P14987608874529752472`, by `A287057.P14987608874529752472.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A287057.P14987608874529752472

`2*(n+1)²+n+1-(n+2)%2`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A287057

/-- `2*(n+1)²+n+1-(n+2)%2` -/
def P14987608874529752472.Spec : Prop :=
  ∀ n, P14987608874529752472.a n = A287057 (n + 1)

theorem P14987608874529752472.correct : P14987608874529752472.Spec := by
  intro n
  simp only [A287057, Nat.add_sub_cancel]

end A287057

/-! ## A287057.P9389088843131472425

`∑[record[2*or(2, n)]]-1`
-/

namespace A287057.P9389088843131472425
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.lor 2 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A287057.P9389088843131472425

namespace A287057

/-- `∑[record[2*or(2, n)]]-1` -/
def P9389088843131472425.Spec : Prop :=
  ∀ n, P9389088843131472425.a n = A287057 (n + 1)

end A287057

/-! ## A287057.P12048821276524175051

`or(1, (n+2)*Δ[n²])`
-/

namespace A287057.P12048821276524175051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n + 2 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)))

end

end A287057.P12048821276524175051

namespace A287057

/-- `or(1, (n+2)*Δ[n²])` -/
def P12048821276524175051.Spec : Prop :=
  ∀ n, P12048821276524175051.a n = A287057 (n + 1)

end A287057

/-! ## A287057.P11549509198558446702

`∑[record[or(5, n)-2]]+n`
-/

namespace A287057.P11549509198558446702
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 5 n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A287057.P11549509198558446702

namespace A287057

/-- `∑[record[or(5, n)-2]]+n` -/
def P11549509198558446702.Spec : Prop :=
  ∀ n, P11549509198558446702.a n = A287057 (n + 1)

end A287057

/-! ## A287057.P11268256922615969547

`∑[a(n-2)+8]` with `a(0)=3, a(1)=6, a(2)=12`
-/

namespace A287057.P11268256922615969547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 6, 12] fun n f1 =>
  f1 (n - 2) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287057.P11268256922615969547

namespace A287057

/-- `∑[a(n-2)+8]` -/
def P11268256922615969547.Spec : Prop :=
  ∀ n, (P11268256922615969547.a n : ℤ) = A287057 (n + 1)

end A287057

/-! ## A287057.P15237084589616660862

`or(1, n)+2*(n+1)²`
-/

namespace A287057.P15237084589616660862
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n + 2 * (n + 1) ^ 2

end

end A287057.P15237084589616660862

namespace A287057

/-- `or(1, n)+2*(n+1)²` -/
def P15237084589616660862.Spec : Prop :=
  ∀ n, (P15237084589616660862.a n : ℤ) = A287057 (n + 1)

end A287057

/-! ## A287057.P9756909119827831638

`∑[eq[n+1, or(5, n)]]-1`
-/

namespace A287057.P9756909119827831638
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 5 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A287057.P9756909119827831638

namespace A287057

/-- `∑[eq[n+1, or(5, n)]]-1` -/
def P9756909119827831638.Spec : Prop :=
  ∀ n, P9756909119827831638.a n = A287057 (n + 1)

end A287057

/-! ## A287057.P17876377279082332366

`∑[∑[8-a(n-1)]]` with `a(0)=3, a(1)=3, a(2)=6`
-/

namespace A287057.P17876377279082332366
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 3, 6] fun n f2 =>
  8 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287057.P17876377279082332366

namespace A287057

/-- `∑[∑[8-a(n-1)]]` -/
def P17876377279082332366.Spec : Prop :=
  ∀ n, P17876377279082332366.a n = A287057 (n + 1)

end A287057

/-! ## A287057.P17041430540187659341

`C(2*n+3, 2)-and(1, n)`
-/

namespace A287057.P17041430540187659341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n + 3) 2 : ℤ) - (Nat.land 1 n : ℤ)

end

end A287057.P17041430540187659341

namespace A287057

/-- `C(2*n+3, 2)-and(1, n)` -/
def P17041430540187659341.Spec : Prop :=
  ∀ n, P17041430540187659341.a n = A287057 (n + 1)

end A287057

/-! ## A287057.P6539291239635034896

`or(1, n+1)*or(3, 2*n)`
-/

namespace A287057.P6539291239635034896
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n + 1) * Nat.lor 3 (2 * n)

end

end A287057.P6539291239635034896

namespace A287057

/-- `or(1, n+1)*or(3, 2*n)` -/
def P6539291239635034896.Spec : Prop :=
  ∀ n, (P6539291239635034896.a n : ℤ) = A287057 (n + 1)

end A287057

/-! ## A287057.P5939097650823662596

`ogf((3+3x+3x^2-x^3)/(1-2x+2x^3-x^4))`
-/

namespace A287057.P5939097650823662596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 3, 3, -1] [1, -2, 0, 2, -1] n

end

end A287057.P5939097650823662596

namespace A287057

/-- `ogf((3+3x+3x^2-x^3)/(1-2x+2x^3-x^4))` -/
def P5939097650823662596.Spec : Prop :=
  ∀ n, P5939097650823662596.a n = A287057 (n + 1)

end A287057

/-! ## A287057.P14871551942223377637

`∑[xor(1, n)+3*(n+1)]-1`
-/

namespace A287057.P14871551942223377637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 3 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A287057.P14871551942223377637

namespace A287057

/-- `∑[xor(1, n)+3*(n+1)]-1` -/
def P14871551942223377637.Spec : Prop :=
  ∀ n, P14871551942223377637.a n = A287057 (n + 1)

end A287057

/-! ## A287057.P2143362204236156112

`(n+1)*(2*n+3)-and(1, n)`
-/

namespace A287057.P2143362204236156112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (2 * n + 3) : ℤ) - (Nat.land 1 n : ℤ)

end

end A287057.P2143362204236156112

namespace A287057

/-- `(n+1)*(2*n+3)-and(1, n)` -/
def P2143362204236156112.Spec : Prop :=
  ∀ n, P2143362204236156112.a n = A287057 (n + 1)

theorem P2143362204236156112.correct : P2143362204236156112.Spec := by
  intro n
  simp only [A287057, Nat.add_sub_cancel, A287057.P2143362204236156112.a, A287057.P14987608874529752472.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A287057

/-! ## A287057.P14516998945649167213

`and(1, n+1)+(n+2)*Δ[n²]`
-/

namespace A287057.P14516998945649167213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 (n + 1) : ℤ) + (n + 2 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A287057.P14516998945649167213

namespace A287057

/-- `and(1, n+1)+(n+2)*Δ[n²]` -/
def P14516998945649167213.Spec : Prop :=
  ∀ n, P14516998945649167213.a n = A287057 (n + 1)

end A287057

/-! ## A287057.P1415827278584648562

`2*(n+1)²+∑[(-1)^n]+n`
-/

namespace A287057.P1415827278584648562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) ^ 2 : ℤ) + (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ))

end

end A287057.P1415827278584648562

namespace A287057

/-- `2*(n+1)²+∑[(-1)^n]+n` -/
def P1415827278584648562.Spec : Prop :=
  ∀ n, P1415827278584648562.a n = A287057 (n + 1)

end A287057

/-! ## A287057.P7824295327409601378

`xor((2*n+1)*(n+2), (n+1)%2)`
-/

namespace A287057.P7824295327409601378
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor ((2 * n + 1) * (n + 2)) ((n + 1) % 2)

end

end A287057.P7824295327409601378

namespace A287057

/-- `xor((2*n+1)*(n+2), (n+1)%2)` -/
def P7824295327409601378.Spec : Prop :=
  ∀ n, (P7824295327409601378.a n : ℤ) = A287057 (n + 1)

end A287057

/-! ## A287057.P2454429959037913741

`xor((2*n+1)*(n+2), and(1, n+1))`
-/

namespace A287057.P2454429959037913741
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor ((2 * n + 1) * (n + 2)) (Nat.land 1 (n + 1))

end

end A287057.P2454429959037913741

namespace A287057

/-- `xor((2*n+1)*(n+2), and(1, n+1))` -/
def P2454429959037913741.Spec : Prop :=
  ∀ n, (P2454429959037913741.a n : ℤ) = A287057 (n + 1)

end A287057

/-! ## A287057.P10391894597379442725

`(and(1, n+1)/(n+2)+2*n+1)*(n+2)`
-/

namespace A287057.P10391894597379442725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.land 1 (n + 1) : ℚ) / (n + 2 : ℚ) + (2 * n + 1 : ℚ)) * (n + 2 : ℚ)

end

end A287057.P10391894597379442725

namespace A287057

/-- `(and(1, n+1)/(n+2)+2*n+1)*(n+2)` -/
def P10391894597379442725.Spec : Prop :=
  ∀ n, P10391894597379442725.a n = (A287057 (n + 1) : ℚ)

end A287057

/-! ## A287057.P7020089358517734328

`abs((2*n+1)²+2*n+1-a(n-1))` with `a(0)=3`
-/

namespace A287057.P7020089358517734328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  |((2 * n + 1) ^ 2 : ℤ) + ((2 * n + 1 : ℤ) - a (n - 1))|

end

end A287057.P7020089358517734328

namespace A287057

/-- `abs((2*n+1)²+2*n+1-a(n-1))` -/
def P7020089358517734328.Spec : Prop :=
  ∀ n, P7020089358517734328.a n = A287057 (n + 1)

end A287057

/-! ## A287057.P13847390567160299285

`floor((2*n+1)²+2*n+1-a(n-1))` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A287057.P13847390567160299285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ((2 * n + 1) ^ 2 : ℤ) + ((2 * n + 1 : ℤ) - a (n - 1))

end

end A287057.P13847390567160299285

namespace A287057

/-- `floor((2*n+1)²+2*n+1-a(n-1))` -/
def P13847390567160299285.Spec : Prop :=
  ∀ n, P13847390567160299285.a n = A287057 (n + 1)

end A287057

/-!
# A287059: Least numbers k > 1 such that k'' = n*k', where k' and k'' are the first and the second arithmetic derivatives of k.

The programs for A287059, there is no canonical definition to state claims against.
-/

/-! ## A287059.P337048907169249152

`A322118(∑[∑{e}[n+1, #]+1])+A048143(n)`
-/

namespace A287059.P337048907169249152
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322118 (∑ j ∈ Finset.range (n + 1), f1 j) + A048143 n

end

end A287059.P337048907169249152

/-!
# A287060: Primes a(n) such that a(1) = 2, a(2) = 3, and a(n) is the smallest prime greater than a(n-1) such that (a(n) - 1)/2 is not divisible by a(m) for all m < n.

The programs for A287060, there is no canonical definition to state claims against.
-/

/-! ## A287060.P1674492319574309540

`A141123(record[A007862(n+1)])`
-/

namespace A287060.P1674492319574309540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141123 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A287060.P1674492319574309540

/-! ## A287060.P7741976977619156931

`record[A141123(A342507(or(1, n²)+1))]`
-/

namespace A287060.P7741976977619156931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141123 (A342507 (Nat.lor 1 (n ^ 2) + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287060.P7741976977619156931

/-! ## A287060.P15489214269398248288

`p?[A378162(n+1)]`
-/

namespace A287060.P15489214269398248288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378162 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A287060.P15489214269398248288

/-! ## A287060.P8259191078214669728

`filter[A378162(n+2), A010051(#)]`
-/

namespace A287060.P8259191078214669728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378162 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A287060.P8259191078214669728

/-!
# A287061: Numbers k such that (10^(k+3)*6319 + 863)/9 is prime (k > 0).

The programs for A287061, there is no canonical definition to state claims against.
-/

/-! ## A287061.P3420082910249783195

`p?[A008771(n)-A339769(n)]`
-/

namespace A287061.P3420082910249783195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008771 n - A339769 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A287061.P3420082910249783195

/-!
# A287063: Number of dominating sets in the n-crown graph (for n > 1).

The programs for A287063, the canonical program `A287063.P3435463384913548596` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287063 has offset 1).

The definition of A287063 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A287063.P3435463384913548596

`4^(n+1)-2^(n+1)*(n+3)+(n+1)²+n+1+3`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A287063

/-- `4^(n+1)-2^(n+1)*(n+3)+(n+1)²+n+1+3` -/
def P3435463384913548596.Spec : Prop :=
  ∀ n, P3435463384913548596.a n = A287063 (n + 1)

theorem P3435463384913548596.correct : P3435463384913548596.Spec := by
  intro n
  simp only [A287063, Nat.add_sub_cancel]

end A287063

/-!
# A287065: Number of dominating sets on the n X n rook graph.

The programs for A287065, there is no canonical definition to state claims against.
-/

/-! ## A287065.P12763839214226568584

`A287274(∑[4*n]+1)`
-/

namespace A287065.P12763839214226568584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287274 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A287065.P12763839214226568584

/-! ## A287065.P11485709753655730262

`or(1, A287274(A001844(n)))`
-/

namespace A287065.P11485709753655730262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A287274 (A001844 n).toNat)

end

end A287065.P11485709753655730262

/-! ## A287065.P9078708786737794609

`record[gcd(A114327(n), A287274(n+1))]`
-/

namespace A287065.P9078708786737794609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A287274 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287065.P9078708786737794609

/-! ## A287065.P9803884855510944223

`2*A055601(n+1)-A048291(n+1)`
-/

namespace A287065.P9803884855510944223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055601 (n + 1) - A048291 (n + 1)

end

end A287065.P9803884855510944223

/-! ## A287065.P9236108289420460167

`A287274(A001844(n))+A185284(n)`
-/

namespace A287065.P9236108289420460167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287274 (A001844 n).toNat + A185284 n

end

end A287065.P9236108289420460167

/-!
# A287066: Start with 1 and repeatedly substitute 0->01, 1->12, 2->0.

The programs for A287066, there is no canonical definition to state claims against.
-/

/-! ## A287066.P11487729794844558881

`A080843(A277726(3*n+2)-A295561(2*n+1))`
-/

namespace A287066.P11487729794844558881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080843 (A277726 (3 * n + 2) - A295561 (2 * n + 1)).toNat

end

end A287066.P11487729794844558881

/-! ## A287066.P17579401752503320122

`A151551(A048166(n+1))%3`
-/

namespace A287066.P17579401752503320122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151551 (A048166 (n + 1)).toNat) 3

end

end A287066.P17579401752503320122

/-! ## A287066.P17853043594156490747

`A151551(eq[0, (n+1)%A034444(n+1)]+1)%3`
-/

namespace A287066.P17853043594156490747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A034444 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151551 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)) 3

end

end A287066.P17853043594156490747

/-! ## A287066.P16196580617277611298

`A238548(or(1, 3*n))%3`
-/

namespace A287066.P16196580617277611298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238548 (Nat.lor 1 (3 * n))) 3

end

end A287066.P16196580617277611298

/-!
# A287067: Positions of 0 in A287066.

The programs for A287067, there is no canonical definition to state claims against.
-/

/-! ## A287067.P16261826222697667590

`A057988(n+1)-(n+1)`
-/

namespace A287067.P16261826222697667590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057988 (n + 1) - (n + 1 : ℤ)

end

end A287067.P16261826222697667590

/-! ## A287067.P1877718020562206291

`A287068(A057987(n+1))-A057987(n+1)`
-/

namespace A287067.P1877718020562206291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287068 (A057987 (n + 1)).toNat - A057987 (n + 1)

end

end A287067.P1877718020562206291

/-! ## A287067.P10660163633755945807

`A057986(A057987(n+1))%A057988(n+1)`
-/

namespace A287067.P10660163633755945807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057986 (A057987 (n + 1)).toNat) (A057988 (n + 1))

end

end A287067.P10660163633755945807

/-! ## A287067.P12827176342708792566

`eq[0, A287066(n+1)]+1`
-/

namespace A287067.P12827176342708792566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287066 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287067.P12827176342708792566

/-! ## A287067.P16487422086744799756

`eq[1, A287066(A028310(n))+1]`
-/

namespace A287067.P16487422086744799756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287066 (A028310 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287067.P16487422086744799756

/-! ## A287067.P16236486175621706643

`lt[1, A057985(n+1)]-n`
-/

namespace A287067.P16236486175621706643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057985 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - (n : ℤ)

end

end A287067.P16236486175621706643

/-! ## A287067.P17162532374859046492

`eq[1, A000931(a(A057985(n)))]-1-n` with `a(0)=2, a(1)=2`
-/

namespace A287067.P17162532374859046492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f2 =>
  A000931 (f2 (A057985 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1 - (n : ℤ)

end

end A287067.P17162532374859046492

/-!
# A287068: Positions of 1 in A287066.

The programs for A287068, there is no canonical definition to state claims against.
-/

/-! ## A287068.P7965666792782781929

`eq[1, A287066(n+1)]+1`
-/

namespace A287068.P7965666792782781929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287066 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287068.P7965666792782781929

/-! ## A287068.P5472660885637366406

`eq[1, A287066(A000038(n)+n)]`
-/

namespace A287068.P5472660885637366406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287066 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287068.P5472660885637366406

/-! ## A287068.P5500348864235700469

`record[(n+1)/gcd(A002378(n), A287066(n+1))]`
-/

namespace A287068.P5500348864235700469
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (A002378 n) (A287066 (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287068.P5500348864235700469

/-! ## A287068.P4582799824041709549

`eq[A057427(n), A287066(A028310(n))]`
-/

namespace A287068.P4582799824041709549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287066 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A287068.P4582799824041709549

/-! ## A287068.P10720697116638811371

`record[A001057(A287066(n+1)+2*n)]`
-/

namespace A287068.P10720697116638811371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A287066 (n + 1) + (2 * n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287068.P10720697116638811371

/-!
# A287069: Positions of 2 in A287066.

The programs for A287069, there is no canonical definition to state claims against.
-/

/-! ## A287069.P16129045408627592575

`A057986(n+1)+1+n`
-/

namespace A287069.P16129045408627592575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057986 (n + 1) + 1 + (n : ℤ)

end

end A287069.P16129045408627592575

/-! ## A287069.P9255219240425330898

`(A287067(A287068(n+1))+n+1)/2`
-/

namespace A287069.P9255219240425330898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287067 (A287068 (n + 1)).toNat + (n + 1 : ℤ) : ℚ) / 2

end

end A287069.P9255219240425330898

/-! ## A287069.P1343772885021685205

`lt[A057985(n+1), 1]+n+2`
-/

namespace A287069.P1343772885021685205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057985 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + (n + 2)

end

end A287069.P1343772885021685205

/-! ## A287069.P15038020680073705051

`eq[2, A287066(n+1)]+1`
-/

namespace A287069.P15038020680073705051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287066 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287069.P15038020680073705051

/-! ## A287069.P17252431762444315919

`record[(n+1)*A287066(n+2)-n]`
-/

namespace A287069.P17252431762444315919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A287066 (n + 2) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287069.P17252431762444315919

/-! ## A287069.P12771415633450028932

`eq[2, A287066(A028310(n))]`
-/

namespace A287069.P12771415633450028932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287066 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287069.P12771415633450028932

/-!
# A287072: Start with 0 and repeatedly substitute 0->01, 1->21, 2->0.

The programs for A287072, the canonical program `A287072.P6282913887168030122` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287072 has offset 1).

The definition of A287072 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7548 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A287072.P17756040710187739646

`4-Δ[A287073(n+1)]`
-/

namespace A287072.P17756040710187739646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287073 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - (f1 (n + 1) - f1 n)

end

end A287072.P17756040710187739646

namespace A287072

/-- `4-Δ[A287073(n+1)]` -/
def P17756040710187739646.Spec : Prop :=
  ∀ n, P17756040710187739646.a n = A287072 (n + 1)

end A287072

/-! ## A287072.P2714856821795360466

`A068527(Δ[A287073(n+1)])`
-/

namespace A287072.P2714856821795360466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287073 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (f1 (n + 1) - f1 n).toNat

end

end A287072.P2714856821795360466

namespace A287072

/-- `A068527(Δ[A287073(n+1)])` -/
def P2714856821795360466.Spec : Prop :=
  ∀ n, P2714856821795360466.a n = A287072 (n + 1)

end A287072

/-! ## A287072.P14525573410655366941

`A287104(Δ[A287073(n+1)]!)`
-/

namespace A287072.P14525573410655366941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287073 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287104 (Nat.factorial (f1 (n + 1) - f1 n).toNat)

end

end A287072.P14525573410655366941

namespace A287072

/-- `A287104(Δ[A287073(n+1)]!)` -/
def P14525573410655366941.Spec : Prop :=
  ∀ n, P14525573410655366941.a n = A287072 (n + 1)

end A287072

/-! ## A287072.P447746425220260597

`A057985(2^Δ[A287073(n+1)])`
-/

namespace A287072.P447746425220260597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287073 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057985 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ))).toNat

end

end A287072.P447746425220260597

namespace A287072

/-- `A057985(2^Δ[A287073(n+1)])` -/
def P447746425220260597.Spec : Prop :=
  ∀ n, P447746425220260597.a n = A287072 (n + 1)

end A287072

/-! ## A287072.P6282913887168030122

`2-A287104(A287106(n+1)-n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A287072

/-- `2-A287104(A287106(n+1)-n+1)` -/
def P6282913887168030122.Spec : Prop :=
  ∀ n, P6282913887168030122.a n = A287072 (n + 1)

theorem P6282913887168030122.correct : P6282913887168030122.Spec := by
  intro n
  simp only [A287072, Nat.add_sub_cancel]

end A287072

/-! ## A287072.P2489378817793270949

`A287104(A287107(n+1)+3)`
-/

namespace A287072.P2489378817793270949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287104 (A287107 (n + 1) + 3).toNat

end

end A287072.P2489378817793270949

namespace A287072

/-- `A287104(A287107(n+1)+3)` -/
def P2489378817793270949.Spec : Prop :=
  ∀ n, P2489378817793270949.a n = A287072 (n + 1)

end A287072

/-! ## A287072.P17003753013586822545

`A007877(A004742(n+1))`
-/

namespace A287072.P17003753013586822545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007877 (A004742 (n + 1)).toNat

end

end A287072.P17003753013586822545

namespace A287072

/-- `A007877(A004742(n+1))` -/
def P17003753013586822545.Spec : Prop :=
  ∀ n, P17003753013586822545.a n = A287072 (n + 1)

end A287072

/-! ## A287072.P4740421411526577320

`sqrt(record[A048735(n)²]%8)`
-/

namespace A287072.P4740421411526577320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048735 n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 8 : ℝ)

end

end A287072.P4740421411526577320

namespace A287072

/-- `sqrt(record[A048735(n)²]%8)` -/
def P4740421411526577320.Spec : Prop :=
  ∀ n, P4740421411526577320.a n = (A287072 (n + 1) : ℝ)

end A287072

/-! ## A287072.P1080328660522200163

`A010873(record[A163618(2*n+1)-A010873(n+1)])`
-/

namespace A287072.P1080328660522200163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163618 (2 * n + 1) - A010873 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A287072.P1080328660522200163

namespace A287072

/-- `A010873(record[A163618(2*n+1)-A010873(n+1)])` -/
def P1080328660522200163.Spec : Prop :=
  ∀ n, P1080328660522200163.a n = A287072 (n + 1)

end A287072

/-! ## A287072.P6753640919529684682

`dr((2-record[A000032(and(2*(n+2), n+1))])%3)`
-/

namespace A287072.P6753640919529684682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.land (2 * (n + 2)) (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (2 - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 3)

end

end A287072.P6753640919529684682

namespace A287072

/-- `dr((2-record[A000032(and(2*(n+2), n+1))])%3)` -/
def P6753640919529684682.Spec : Prop :=
  ∀ n, (P6753640919529684682.a n : ℤ) = A287072 (n + 1)

end A287072

/-!
# A287073: Positions of 0 in A287072.

The programs for A287073, the canonical program `A287073.P14749507163745126481` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287073 has offset 1).

The definition of A287073 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4302 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A287073.P2058265280110294298

`A287107(n+1)-A054082(A064579(n+1))`
-/

namespace A287073.P2058265280110294298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287107 (n + 1) - A054082 (A064579 (n + 1)).toNat

end

end A287073.P2058265280110294298

namespace A287073

/-- `A287107(n+1)-A054082(A064579(n+1))` -/
def P2058265280110294298.Spec : Prop :=
  ∀ n, P2058265280110294298.a n = A287073 (n + 1)

end A287073

/-! ## A287073.P13785129309459638018

`A287107(n+1)-A001511(2*n+5)-n`
-/

namespace A287073.P13785129309459638018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287107 (n + 1) - A001511 (2 * n + 5) - (n : ℤ)

end

end A287073.P13785129309459638018

namespace A287073

/-- `A287107(n+1)-A001511(2*n+5)-n` -/
def P13785129309459638018.Spec : Prop :=
  ∀ n, P13785129309459638018.a n = A287073 (n + 1)

end A287073

/-! ## A287073.P14749507163745126481

`A287074(A287106(n+1))-A287106(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A287073

/-- `A287074(A287106(n+1))-A287106(n+1)` -/
def P14749507163745126481.Spec : Prop :=
  ∀ n, P14749507163745126481.a n = A287073 (n + 1)

theorem P14749507163745126481.correct : P14749507163745126481.Spec := by
  intro n
  simp only [A287073, Nat.add_sub_cancel]

end A287073

/-! ## A287073.P10300402790378847265

`A287105(A287106(n+1))-A287107(n+1)`
-/

namespace A287073.P10300402790378847265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287105 (A287106 (n + 1)).toNat - A287107 (n + 1)

end

end A287073.P10300402790378847265

namespace A287073

/-- `A287105(A287106(n+1))-A287107(n+1)` -/
def P10300402790378847265.Spec : Prop :=
  ∀ n, P10300402790378847265.a n = A287073 (n + 1)

end A287073

/-! ## A287073.P2407129432136513150

`eq[1, A287072(n+1)+1]+1`
-/

namespace A287073.P2407129432136513150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287072 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287073.P2407129432136513150

namespace A287073

/-- `eq[1, A287072(n+1)+1]+1` -/
def P2407129432136513150.Spec : Prop :=
  ∀ n, (P2407129432136513150.a n : ℤ) = A287073 (n + 1)

end A287073

/-! ## A287073.P5508988228640247891

`record[n+1-A000217(n*A287072(n+1))]`
-/

namespace A287073.P5508988228640247891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000217 ((n : ℤ) * A287072 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287073.P5508988228640247891

namespace A287073

/-- `record[n+1-A000217(n*A287072(n+1))]` -/
def P5508988228640247891.Spec : Prop :=
  ∀ n, P5508988228640247891.a n = A287073 (n + 1)

end A287073

/-! ## A287073.P4460089703559358965

`A287107(n+1)-(A287104(A287105(n+1)+1)+n)`
-/

namespace A287073.P4460089703559358965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287107 (n + 1) - (A287104 (A287105 (n + 1) + 1).toNat + (n : ℤ))

end

end A287073.P4460089703559358965

namespace A287073

/-- `A287107(n+1)-(A287104(A287105(n+1)+1)+n)` -/
def P4460089703559358965.Spec : Prop :=
  ∀ n, P4460089703559358965.a n = A287073 (n + 1)

end A287073

/-! ## A287073.P1402225755305830076

`eq[2, A287104(n+1)]-n`
-/

namespace A287073.P1402225755305830076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287104 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A287073.P1402225755305830076

namespace A287073

/-- `eq[2, A287104(n+1)]-n` -/
def P1402225755305830076.Spec : Prop :=
  ∀ n, P1402225755305830076.a n = A287073 (n + 1)

end A287073

/-!
# A287074: Positions of 1 in A287072.

The programs for A287074, the canonical program `A287074.P10152371220635534099` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287074 has offset 1).

The definition of A287074 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4301 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A287074.P10152371220635534099

`eq[1, A287072(n+1)]+1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A287074

/-- `eq[1, A287072(n+1)]+1` -/
def P10152371220635534099.Spec : Prop :=
  ∀ n, (P10152371220635534099.a n : ℤ) = A287074 (n + 1)

theorem P10152371220635534099.correct : P10152371220635534099.Spec := by
  intro n
  simp only [A287074, Nat.add_sub_cancel]

end A287074

/-! ## A287074.P2629801114880913411

`A287106(n+1)+A287072(A287106(n+1)+1)`
-/

namespace A287074.P2629801114880913411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287106 (n + 1) + A287072 (A287106 (n + 1) + 1).toNat

end

end A287074.P2629801114880913411

namespace A287074

/-- `A287106(n+1)+A287072(A287106(n+1)+1)` -/
def P2629801114880913411.Spec : Prop :=
  ∀ n, P2629801114880913411.a n = A287074 (n + 1)

end A287074

/-! ## A287074.P15014455778262866179

`A076905(A287075(n+1))`
-/

namespace A287074.P15014455778262866179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076905 (A287075 (n + 1)).toNat

end

end A287074.P15014455778262866179

namespace A287074

/-- `A076905(A287075(n+1))` -/
def P15014455778262866179.Spec : Prop :=
  ∀ n, P15014455778262866179.a n = A287074 (n + 1)

end A287074

/-! ## A287074.P7496875063389779925

`(A287106(A287075(n+1)+1)+n)%A287075(n+1)`
-/

namespace A287074.P7496875063389779925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287106 (A287075 (n + 1) + 1).toNat + (n : ℤ)) (A287075 (n + 1))

end

end A287074.P7496875063389779925

namespace A287074

/-- `(A287106(A287075(n+1)+1)+n)%A287075(n+1)` -/
def P7496875063389779925.Spec : Prop :=
  ∀ n, P7496875063389779925.a n = A287074 (n + 1)

end A287074

/-! ## A287074.P17597871092617659778

`record[(n+1)*A287072(A287073(n+2)+1)-n]`
-/

namespace A287074.P17597871092617659778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A287072 (A287073 (n + 2) + 1).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287074.P17597871092617659778

namespace A287074

/-- `record[(n+1)*A287072(A287073(n+2)+1)-n]` -/
def P17597871092617659778.Spec : Prop :=
  ∀ n, P17597871092617659778.a n = A287074 (n + 1)

end A287074

/-! ## A287074.P4959289185580096056

`record[(n+1)*A287104(A287107(n+2)+1)+1]`
-/

namespace A287074.P4959289185580096056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A287104 (A287107 (n + 2) + 1).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287074.P4959289185580096056

namespace A287074

/-- `record[(n+1)*A287104(A287107(n+2)+1)+1]` -/
def P4959289185580096056.Spec : Prop :=
  ∀ n, P4959289185580096056.a n = A287074 (n + 1)

end A287074

/-!
# A287075: Positions of 2 in A287072.

The programs for A287075, the canonical program `A287075.P10517102401792539073` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287075 has offset 1).

The definition of A287075 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7548 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A287075.P16585593840053079054

`A287105(n+1)+n`
-/

namespace A287075.P16585593840053079054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287105 (n + 1) + (n : ℤ)

end

end A287075.P16585593840053079054

namespace A287075

/-- `A287105(n+1)+n` -/
def P16585593840053079054.Spec : Prop :=
  ∀ n, P16585593840053079054.a n = A287075 (n + 1)

theorem P16585593840053079054.correct : P16585593840053079054.Spec := by
  intro n
  simp only [A287075, Nat.add_sub_cancel, A287075.P16585593840053079054.a, A287075.P10517102401792539073.a, A287073, A287073.P14749507163745126481.a, A287074, A287074.P10152371220635534099.f1, A287074.P10152371220635534099.f2, A287074.P10152371220635534099.a, A287105, A287105.P8825308527181193328.a, A287072, A287072.P6282913887168030122.a, A287106, A287106.P12211031677089213963.f1, A287106.P12211031677089213963.f2, A287106.P12211031677089213963.a, A287104, A287104.P16075678606677278216.f1, A287104.P16075678606677278216.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A287075

/-! ## A287075.P17534403253773838694

`∑[4-A287104(n+1)]+n`
-/

namespace A287075.P17534403253773838694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A287104 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A287075.P17534403253773838694

namespace A287075

/-- `∑[4-A287104(n+1)]+n` -/
def P17534403253773838694.Spec : Prop :=
  ∀ n, P17534403253773838694.a n = A287075 (n + 1)

end A287075

/-! ## A287075.P10517102401792539073

`A287073(A287074(n+1)-n)-2`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A287075

/-- `A287073(A287074(n+1)-n)-2` -/
def P10517102401792539073.Spec : Prop :=
  ∀ n, P10517102401792539073.a n = A287075 (n + 1)

theorem P10517102401792539073.correct : P10517102401792539073.Spec := by
  intro n
  simp only [A287075, Nat.add_sub_cancel]

end A287075

/-! ## A287075.P4682425472696083223

`eq[A287072(A287073(n+1)), A287104(n+1)]+n+1`
-/

namespace A287075.P4682425472696083223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287072 (A287073 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287104 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + (n + 1)

end

end A287075.P4682425472696083223

namespace A287075

/-- `eq[A287072(A287073(n+1)), A287104(n+1)]+n+1` -/
def P4682425472696083223.Spec : Prop :=
  ∀ n, (P4682425472696083223.a n : ℤ) = A287075 (n + 1)

end A287075

/-! ## A287075.P18389472203147325877

`eq[A057985(A057986(n+1)), A287104(n+1)]+n+1`
-/

namespace A287075.P18389472203147325877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057985 (A057986 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287104 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + (n + 1)

end

end A287075.P18389472203147325877

namespace A287075

/-- `eq[A057985(A057986(n+1)), A287104(n+1)]+n+1` -/
def P18389472203147325877.Spec : Prop :=
  ∀ n, (P18389472203147325877.a n : ℤ) = A287075 (n + 1)

end A287075

/-!
# A287076: a(n) = least k > n with the same sum of digits as n in some base b > 1.

The programs for A287076, there is no canonical definition to state claims against.
-/

/-! ## A287076.P16503331408551718150

`A230300(n+1)+A213729(A331579(n+1))`
-/

namespace A287076.P16503331408551718150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230300 (n + 1) + A213729 (A331579 (n + 1)).toNat

end

end A287076.P16503331408551718150

/-!
# A287077: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 237", based on the 5-celled von Neumann neighborhood.

The programs for A287077, there is no canonical definition to state claims against.
-/

/-! ## A287077.P13322142110627284174

`A007088(A287079(n))`
-/

namespace A287077.P13322142110627284174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287079 n).toNat

end

end A287077.P13322142110627284174

/-!
# A287078: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 237", based on the 5-celled von Neumann neighborhood.

The programs for A287078, there is no canonical definition to state claims against.
-/

/-! ## A287078.P1063922993408973241

`A007088(A287080(n))`
-/

namespace A287078.P1063922993408973241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287080 n).toNat

end

end A287078.P1063922993408973241

/-! ## A287078.P12859037753073118554

`A185544(2*A287080(n))`
-/

namespace A287078.P12859037753073118554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A287080 n).toNat

end

end A287078.P12859037753073118554

/-!
# A287081: Positions of 2 in A287002.

The programs for A287081, there is no canonical definition to state claims against.
-/

/-! ## A287081.P15601704546821919577

`A287004(A287004(n+1)-(n+1))+1`
-/

namespace A287081.P15601704546821919577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287004 (A287004 (n + 1) - (n + 1 : ℤ)).toNat + 1

end

end A287081.P15601704546821919577

/-! ## A287081.P13019694943837952296

`eq[2, A287002(n+1)]+1`
-/

namespace A287081.P13019694943837952296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287002 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287081.P13019694943837952296

/-! ## A287081.P18041707744960270546

`eq[2, A287002(A028310(n))]`
-/

namespace A287081.P18041707744960270546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287002 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287081.P18041707744960270546

/-! ## A287081.P1442090639523019161

`eq[1, A125573(a(A287002(n)))]` with `a(0)=6`
-/

namespace A287081.P1442090639523019161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f2 =>
  A125573 (f2 (A287002 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287081.P1442090639523019161

/-! ## A287081.P16526005158930070030

`eq[1, A228815(a(A287002(n)))]` with `a(0)=6, a(1)=6`
-/

namespace A287081.P16526005158930070030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [6, 6] fun n f2 =>
  A228815 (f2 (A287002 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287081.P16526005158930070030

/-!
# A287082: Number of edge covers on the n-web graph.

The programs for A287082, the canonical program `A287082.P11070237791014130741` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287082 has offset 1).

The definition of A287082 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A287082.P11070237791014130741

`6*a(n-1)+8*a(n-2)` with `a(0)=6, a(1)=52`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A287082

/-- `6*a(n-1)+8*a(n-2)` -/
def P11070237791014130741.Spec : Prop :=
  ∀ n, (P11070237791014130741.a n : ℤ) = A287082 (n + 1)

theorem P11070237791014130741.correct : P11070237791014130741.Spec := by
  intro n
  simp only [A287082, Nat.add_sub_cancel]

end A287082

/-! ## A287082.P12089857200150837222

`(3-sqrt(17))^(n+1)+(3+sqrt(17))^(n+1)`
-/

namespace A287082.P12089857200150837222
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (3 - Real.sqrt (17 : ℝ)) ^ (n + 1) + (3 + Real.sqrt (17 : ℝ)) ^ (n + 1)

end

end A287082.P12089857200150837222

namespace A287082

/-- `(3-sqrt(17))^(n+1)+(3+sqrt(17))^(n+1)` -/
def P12089857200150837222.Spec : Prop :=
  ∀ n, P12089857200150837222.a n = (A287082 (n + 1) : ℝ)

theorem P12089857200150837222.correct : P12089857200150837222.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A287082, Nat.add_sub_cancel, A287082.P12089857200150837222.a, A287082.P11070237791014130741.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A287082, Nat.add_sub_cancel, A287082.P12089857200150837222.a, A287082.P11070237791014130741.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A287082

/-! ## A287082.P6386436812915894018

`ogf((6+16x)/(1-6x-8x^2))`
-/

namespace A287082.P6386436812915894018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 16] [1, -6, -8] n

end

end A287082.P6386436812915894018

namespace A287082

/-- `ogf((6+16x)/(1-6x-8x^2))` -/
def P6386436812915894018.Spec : Prop :=
  ∀ n, P6386436812915894018.a n = A287082 (n + 1)

end A287082

/-! ## A287082.P15782082995113914780

`2^(n+1)*A206776(n+1)`
-/

namespace A287082.P15782082995113914780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) * A206776 (n + 1)

end

end A287082.P15782082995113914780

namespace A287082

/-- `2^(n+1)*A206776(n+1)` -/
def P15782082995113914780.Spec : Prop :=
  ∀ n, P15782082995113914780.a n = A287082 (n + 1)

end A287082

/-! ## A287082.P12137476382692866834

`(A124805(n+1)-1)*2^(n+1)`
-/

namespace A287082.P12137476382692866834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A124805 (n + 1) - 1) * (2 ^ (n + 1) : ℤ)

end

end A287082.P12137476382692866834

namespace A287082

/-- `(A124805(n+1)-1)*2^(n+1)` -/
def P12137476382692866834.Spec : Prop :=
  ∀ n, P12137476382692866834.a n = A287082 (n + 1)

end A287082

/-! ## A287082.P11102791587667377801

`(A052955(2*n)+1)*(A124805(n+1)-1)`
-/

namespace A287082.P11102791587667377801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052955 (2 * n) + 1) * (A124805 (n + 1) - 1)

end

end A287082.P11102791587667377801

namespace A287082

/-- `(A052955(2*n)+1)*(A124805(n+1)-1)` -/
def P11102791587667377801.Spec : Prop :=
  ∀ n, P11102791587667377801.a n = A287082 (n + 1)

end A287082

/-! ## A287082.P10084427004832873209

`A189800(2*(n+1))/A189800(n+1)`
-/

namespace A287082.P10084427004832873209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189800 (2 * (n + 1)) : ℚ) / (A189800 (n + 1) : ℚ)

end

end A287082.P10084427004832873209

namespace A287082

/-- `A189800(2*(n+1))/A189800(n+1)` -/
def P10084427004832873209.Spec : Prop :=
  ∀ n, P10084427004832873209.a n = (A287082 (n + 1) : ℚ)

end A287082

/-!
# A287084: 

The programs for A287084, there is no canonical definition to state claims against.
-/

/-! ## A287084.P16002180596141911279

`A284308(A000096(n+7)-6)`
-/

namespace A287084.P16002180596141911279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284308 (A000096 (n + 7) - 6).toNat

end

end A287084.P16002180596141911279

/-!
# A287086: Start with 0 and repeatedly substitute 0->01, 1->22, 2->0.

The programs for A287086, there is no canonical definition to state claims against.
-/

/-! ## A287086.P1578712340542647228

`and(A047589(n+1), A287356(A008619(n)))`
-/

namespace A287086.P1578712340542647228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A047589 (n + 1)) (A287356 (A008619 n).toNat)

end

end A287086.P1578712340542647228

/-! ## A287086.P4352251731480642242

`and(A285622(n+1), A287356(A008619(n)))`
-/

namespace A287086.P4352251731480642242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A285622 (n + 1)) (A287356 (A008619 n).toNat)

end

end A287086.P4352251731480642242

/-! ## A287086.P874098940201852892

`and(A047589(n+1), A287356(A110654(n+1)))`
-/

namespace A287086.P874098940201852892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A047589 (n + 1)) (A287356 (A110654 (n + 1)).toNat)

end

end A287086.P874098940201852892

/-! ## A287086.P7893659686906556164

`and(A285622(n+1), A287356(A110654(n+1)))`
-/

namespace A287086.P7893659686906556164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A285622 (n + 1)) (A287356 (A110654 (n + 1)).toNat)

end

end A287086.P7893659686906556164

/-! ## A287086.P13131900260372986241

`and(A047589(n+1), A287356(A065033(n+1)))`
-/

namespace A287086.P13131900260372986241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A047589 (n + 1)) (A287356 (A065033 (n + 1)).toNat)

end

end A287086.P13131900260372986241

/-! ## A287086.P1081272723229316660

`and(A285622(n+1), A287356(A065033(n+1)))`
-/

namespace A287086.P1081272723229316660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A285622 (n + 1)) (A287356 (A065033 (n + 1)).toNat)

end

end A287086.P1081272723229316660

/-! ## A287086.P15362133475361673872

`A287356(record[A287356(n+2)+n]+n+1)`
-/

namespace A287086.P15362133475361673872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287356 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287356 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ) + 1).toNat

end

end A287086.P15362133475361673872

/-! ## A287086.P4219663925165257596

`and(A125996(n+1), A287356(A008619(n)))`
-/

namespace A287086.P4219663925165257596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A125996 (n + 1)) (A287356 (A008619 n).toNat)

end

end A287086.P4219663925165257596

/-!
# A287087: Positions of 0 in A287086.

The programs for A287087, there is no canonical definition to state claims against.
-/

/-! ## A287087.P2720749421834849452

`A287359(n+1)-(n+1)`
-/

namespace A287087.P2720749421834849452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287359 (n + 1) - (n + 1 : ℤ)

end

end A287087.P2720749421834849452

/-! ## A287087.P12648081286134033480

`(A287357(n+1)-(n+1))/2`
-/

namespace A287087.P12648081286134033480
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287357 (n + 1) - (n + 1 : ℤ) : ℚ) / 2

end

end A287087.P12648081286134033480

/-! ## A287087.P9369803240523683004

`A287357(n+1)%A287359(n+1)`
-/

namespace A287087.P9369803240523683004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287357 (n + 1)) (A287359 (n + 1))

end

end A287087.P9369803240523683004

/-! ## A287087.P248959433171551114

`A287089(2*(n+1))/2-(n+1)`
-/

namespace A287087.P248959433171551114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287089 (2 * (n + 1)) : ℚ) / 2 - (n + 1 : ℚ)

end

end A287087.P248959433171551114

/-! ## A287087.P9883055793377876226

`lt[1, A287356(n+1)]-n`
-/

namespace A287087.P9883055793377876226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287356 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - (n : ℤ)

end

end A287087.P9883055793377876226

/-! ## A287087.P5587355666481149813

`A110654(A287357(n+1)-(n+1))`
-/

namespace A287087.P5587355666481149813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A287357 (n + 1) - (n + 1 : ℤ)).toNat

end

end A287087.P5587355666481149813

/-! ## A287087.P6142851731086184842

`A008619(A287357(n+1)-(n+2))`
-/

namespace A287087.P6142851731086184842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A287357 (n + 1) - (n + 2 : ℤ)).toNat

end

end A287087.P6142851731086184842

/-! ## A287087.P10485835288960955739

`A110654(A287357(n+1))-A008619(n)`
-/

namespace A287087.P10485835288960955739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A287357 (n + 1)).toNat - A008619 n

end

end A287087.P10485835288960955739

/-! ## A287087.P14714648981116678635

`eq[2, A287086(2*n+1)]-n`
-/

namespace A287087.P14714648981116678635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287086 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A287087.P14714648981116678635

/-!
# A287088: Positions of 1 in A287086.

The programs for A287088, there is no canonical definition to state claims against.
-/

/-! ## A287088.P2401818499302352186

`2*A287358(n+1)`
-/

namespace A287088.P2401818499302352186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A287358 (n + 1)

end

end A287088.P2401818499302352186

/-! ## A287088.P15605685547575192652

`A287358(A000027(n+1))+A287358(n+1)`
-/

namespace A287088.P15605685547575192652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287358 (A000027 (n + 1)).toNat + A287358 (n + 1)

end

end A287088.P15605685547575192652

/-! ## A287088.P14437986496170118140

`A004277(A287358(n+1))`
-/

namespace A287088.P14437986496170118140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A287358 (n + 1)).toNat

end

end A287088.P14437986496170118140

/-! ## A287088.P7126245985136682507

`A005843(eq[1, A287356(n+1)]+1)`
-/

namespace A287088.P7126245985136682507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287356 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A287088.P7126245985136682507

/-! ## A287088.P9388778821358082166

`eq[1, A287086(n+1)]+1`
-/

namespace A287088.P9388778821358082166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287086 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287088.P9388778821358082166

/-! ## A287088.P3740009677751750566

`A287358(n+1)+A287358(n+1)+A287356(A287357(n+1))`
-/

namespace A287088.P3740009677751750566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287358 (n + 1) + (A287358 (n + 1) + A287356 (A287357 (n + 1)).toNat)

end

end A287088.P3740009677751750566

/-! ## A287088.P5403674493978348955

`A287358(n+1)+A287358((n+1)%A100930(n+1))`
-/

namespace A287088.P5403674493978348955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287358 (n + 1) + A287358 (Int.tmod (n + 1 : ℤ) (A100930 (n + 1))).toNat

end

end A287088.P5403674493978348955

/-!
# A287089: Positions of 2 in A287086.

The programs for A287089, there is no canonical definition to state claims against.
-/

/-! ## A287089.P17215176154870593819

`A287357(A008619(n))+A110654(n)`
-/

namespace A287089.P17215176154870593819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287357 (A008619 n).toNat + A110654 n

end

end A287089.P17215176154870593819

/-! ## A287089.P5331333312731289802

`A287357(A110654(n+1))+A110654(n)`
-/

namespace A287089.P5331333312731289802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287357 (A110654 (n + 1)).toNat + A110654 n

end

end A287089.P5331333312731289802

/-! ## A287089.P13221316420962602705

`eq[2, A287086(n+1)]+1`
-/

namespace A287089.P13221316420962602705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287086 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287089.P13221316420962602705

/-! ## A287089.P13848844288726885055

`eq[2, A287356(A065033(n))]`
-/

namespace A287089.P13848844288726885055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287356 (A065033 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287089.P13848844288726885055

/-! ## A287089.P3360778769703579457

`eq[1, A003984(a(A287086(n)))]` with `a(0)=24`
-/

namespace A287089.P3360778769703579457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [24] fun n f2 =>
  A003984 (f2 (A287086 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287089.P3360778769703579457

/-!
# A287090: Expansion of Product_{k>=1} 1/(1 - x^k)^(k^2*(k+1)^2/4).

The programs for A287090, there is no canonical definition to state claims against.
-/

/-! ## A287090.P1090064936727131262

`A374633(A374618(n))+A317020(n)`
-/

namespace A287090.P1090064936727131262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374633 (A374618 n).toNat + A317020 n

end

end A287090.P1090064936727131262

/-!
# A287091: Expansion of Product_{k>=1} 1/(1 - x^((2*k-1)^3)).

The programs for A287091, the canonical program `A287091.P14879557112610420772` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287091 has offset 0).

The definition of A287091 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A287091.P3472489356867624792

`dr(A093485(A166590(n+3))+floor(n/27))`
-/

namespace A287091.P3472489356867624792
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A093485 (A166590 (n + 3)).toNat + ⌊(n : ℚ) / 27⌋)

end

end A287091.P3472489356867624792

namespace A287091

/-- `dr(A093485(A166590(n+3))+floor(n/27))` -/
def P3472489356867624792.Spec : Prop :=
  ∀ n, (P3472489356867624792.a n : ℤ) = A287091 n

end A287091

/-! ## A287091.P15552271889522373184

`ceil((A357658(n+2)+A292665(n+1))/63)`
-/

namespace A287091.P15552271889522373184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A357658 (n + 2) + A292665 (n + 1) : ℚ) / 63⌉

end

end A287091.P15552271889522373184

namespace A287091

/-- `ceil((A357658(n+2)+A292665(n+1))/63)` -/
def P15552271889522373184.Spec : Prop :=
  ∀ n, P15552271889522373184.a n = A287091 n

end A287091

/-! ## A287091.P14879557112610420772

`ceil(A008620(A053799(n))/A008458(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A287091

/-- `ceil(A008620(A053799(n))/A008458(n))` -/
def P14879557112610420772.Spec : Prop :=
  ∀ n, P14879557112610420772.a n = A287091 n

theorem P14879557112610420772.correct : P14879557112610420772.Spec := by
  intro n
  simp only [A287091]

end A287091

/-! ## A287091.P6983089175199268034

`A043562(∑[A114099(n)²])`
-/

namespace A287091.P6983089175199268034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A287091.P6983089175199268034

namespace A287091

/-- `A043562(∑[A114099(n)²])` -/
def P6983089175199268034.Spec : Prop :=
  ∀ n, P6983089175199268034.a n = A287091 n

end A287091

/-! ## A287091.P4727131600374778031

`A055642(∑[A114099(n)²])`
-/

namespace A287091.P4727131600374778031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A287091.P4727131600374778031

namespace A287091

/-- `A055642(∑[A114099(n)²])` -/
def P4727131600374778031.Spec : Prop :=
  ∀ n, P4727131600374778031.a n = A287091 n

end A287091

/-! ## A287091.P10840253218186184130

`A055642(A301876(floor(n/9)))`
-/

namespace A287091.P10840253218186184130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A301876 ⌊(n : ℚ) / 9⌋.toNat).toNat

end

end A287091.P10840253218186184130

namespace A287091

/-- `A055642(A301876(floor(n/9)))` -/
def P10840253218186184130.Spec : Prop :=
  ∀ n, P10840253218186184130.a n = A287091 n

end A287091

/-! ## A287091.P10933998397540892033

`ceil((A028552(n²)+1)/A079908(3*n))`
-/

namespace A287091.P10933998397540892033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A028552 (n ^ 2) + 1 : ℚ) / (A079908 (3 * n) : ℚ)⌉

end

end A287091.P10933998397540892033

namespace A287091

/-- `ceil((A028552(n²)+1)/A079908(3*n))` -/
def P10933998397540892033.Spec : Prop :=
  ∀ n, P10933998397540892033.a n = A287091 n

end A287091

/-! ## A287091.P15475738145504144694

`ceil(A184421(n+1)/36)`
-/

namespace A287091.P15475738145504144694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A184421 (n + 1) : ℚ) / 36⌉

end

end A287091.P15475738145504144694

namespace A287091

/-- `ceil(A184421(n+1)/36)` -/
def P15475738145504144694.Spec : Prop :=
  ∀ n, P15475738145504144694.a n = A287091 n

end A287091

/-!
# A287092: Strobogrammatic nonpalindromic numbers.

The programs for A287092, there is no canonical definition to state claims against.
-/

/-! ## A287092.P13139015117062134245

`∩[A000787(n+1), A039434(n+1)]`
-/

namespace A287092.P13139015117062134245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039434 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A287092.P13139015117062134245

/-! ## A287092.P2134537368161109337

`∩[A039434(n+1), A259984(n+1)-1]`
-/

namespace A287092.P2134537368161109337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039434 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259984 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A287092.P2134537368161109337

/-! ## A287092.P6191229173433064809

`∩[A039434(n+1), A260196(n+2)+A259984(n+1)]`
-/

namespace A287092.P6191229173433064809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039434 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A259984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A287092.P6191229173433064809

/-! ## A287092.P10272038650831895794

`∩[A000787(n+1), A011536(n+1)]`
-/

namespace A287092.P10272038650831895794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011536 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A287092.P10272038650831895794

/-! ## A287092.P13484186567139189819

`∩[A000787(n+1), A011539(n+1)]`
-/

namespace A287092.P13484186567139189819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A287092.P13484186567139189819

/-!
# A287094: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 241", based on the 5-celled von Neumann neighborhood.

The programs for A287094, there is no canonical definition to state claims against.
-/

/-! ## A287094.P4707891339931842560

`A007088(A287096(n))`
-/

namespace A287094.P4707891339931842560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287096 n).toNat

end

end A287094.P4707891339931842560

/-! ## A287094.P1047174128697930643

`A185544(2*A287096(n))`
-/

namespace A287094.P1047174128697930643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A287096 n).toNat

end

end A287094.P1047174128697930643

/-! ## A287094.P9682221365626494485

`A007088(A288704(n)-A184955(2*n+1))`
-/

namespace A287094.P9682221365626494485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288704 n - A184955 (2 * n + 1)).toNat

end

end A287094.P9682221365626494485

/-! ## A287094.P507873622257505523

`A185544(2*(A288704(n)-A184955(2*n+1)))`
-/

namespace A287094.P507873622257505523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * (A288704 n - A184955 (2 * n + 1))).toNat

end

end A287094.P507873622257505523

/-!
# A287095: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 241", based on the 5-celled von Neumann neighborhood.

The programs for A287095, there is no canonical definition to state claims against.
-/

/-! ## A287095.P15462783862894789255

`A007088(A287097(n))`
-/

namespace A287095.P15462783862894789255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287097 n).toNat

end

end A287095.P15462783862894789255

/-! ## A287095.P12045733417892122485

`A185544(2*A287097(n))`
-/

namespace A287095.P12045733417892122485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A287097 n).toNat

end

end A287095.P12045733417892122485

/-! ## A287095.P10516152644056931530

`A288702(n^C(n, floor(n/7)))`
-/

namespace A287095.P10516152644056931530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288702 (n ^ Nat.choose n ⌊(n : ℚ) / 7⌋.toNat)

end

end A287095.P10516152644056931530

/-!
# A287096: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 241", based on the 5-celled von Neumann neighborhood.

The programs for A287096, there is no canonical definition to state claims against.
-/

/-! ## A287096.P6272103283696519200

`A288704(n)-A184955(2*n+1)`
-/

namespace A287096.P6272103283696519200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288704 n - A184955 (2 * n + 1)

end

end A287096.P6272103283696519200

/-! ## A287096.P17402064837901438136

`A288704(n)-A058348(A133263(n))`
-/

namespace A287096.P17402064837901438136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288704 n - A058348 (A133263 n).toNat

end

end A287096.P17402064837901438136

/-! ## A287096.P9560154662328015804

`A288704(n)-A272668(A288679(n))`
-/

namespace A287096.P9560154662328015804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288704 n - A272668 (A288679 n).toNat

end

end A287096.P9560154662328015804

/-! ## A287096.P3585550617194790858

`abs(A288704(n)-A184955(A005408(n)))`
-/

namespace A287096.P3585550617194790858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A288704 n - A184955 (A005408 n).toNat|

end

end A287096.P3585550617194790858

/-!
# A287097: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 241", based on the 5-celled von Neumann neighborhood.

The programs for A287097, there is no canonical definition to state claims against.
-/

/-! ## A287097.P14451333120303060309

`A284042(A160371(n!))`
-/

namespace A287097.P14451333120303060309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284042 (A160371 (Nat.factorial n)).toNat

end

end A287097.P14451333120303060309

/-! ## A287097.P18250032210102435432

`A288705(A004890(n+1))`
-/

namespace A287097.P18250032210102435432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288705 (A004890 (n + 1)).toNat

end

end A287097.P18250032210102435432

/-! ## A287097.P5848252478617793612

`A288705(A004901(n+1))`
-/

namespace A287097.P5848252478617793612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288705 (A004901 (n + 1)).toNat

end

end A287097.P5848252478617793612

/-!
# A287099: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 243", based on the 5-celled von Neumann neighborhood.

The programs for A287099, there is no canonical definition to state claims against.
-/

/-! ## A287099.P4016385997589014903

`A007088(A287101(n))`
-/

namespace A287099.P4016385997589014903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287101 n).toNat

end

end A287099.P4016385997589014903

/-! ## A287099.P11519567726542600011

`A007088(A287189(n))`
-/

namespace A287099.P11519567726542600011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287189 n).toNat

end

end A287099.P11519567726542600011

/-! ## A287099.P16264460057269882201

`A007088(or(2^n, A288771(n)))`
-/

namespace A287099.P16264460057269882201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor (2 ^ n : ℤ) (A288771 n)).toNat

end

end A287099.P16264460057269882201

/-! ## A287099.P12435351084058966191

`A007088(or(2^n, A288804(n)))`
-/

namespace A287099.P12435351084058966191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor (2 ^ n : ℤ) (A288804 n)).toNat

end

end A287099.P12435351084058966191

/-! ## A287099.P4221720305334089557

`A007088(or(A282659(n), A286502(n)))`
-/

namespace A287099.P4221720305334089557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor (A282659 n) (A286502 n)).toNat

end

end A287099.P4221720305334089557

